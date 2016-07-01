# WARNING ABOUT GENERATED CODE
#
# The AWS SDK for Ruby is largely generated from JSON service definitions. Edits
# made against this file will be lost the next time the SDK updates.  To resolve
# an issue with generated code, a change is likely needed in the generator or
# in one of the service JSON definitions.
#
# * https://github.com/aws/aws-sdk-ruby/tree/master/gems/aws-sdk-code-generator
# * https://github.com/aws/aws-sdk-ruby/tree/master/apis
#
# Open a GitHub issue if you have questions before making changes.  Pull
# requests against this file will be automatically closed.
#
# WARNING ABOUT GENERATED CODE
module Aws
  module ApplicationDiscoveryService
    class Client < Seahorse::Client::Base

      include Aws::ClientStubs
      include Aws::ClientWaiters

      @identifier = :applicationdiscoveryservice

      set_api(ClientApi::API)

      add_plugin(Seahorse::Client::Plugins::ContentLength)
      add_plugin(Aws::Plugins::Logging)
      add_plugin(Aws::Plugins::ParamConverter)
      add_plugin(Aws::Plugins::ParamValidator)
      add_plugin(Aws::Plugins::UserAgent)
      add_plugin(Aws::Plugins::RetryErrors)
      add_plugin(Aws::Plugins::GlobalConfiguration)
      add_plugin(Aws::Plugins::RegionalEndpoint)
      add_plugin(Aws::Plugins::RequestSigner)
      add_plugin(Aws::Plugins::ResponsePaging)
      add_plugin(Aws::Plugins::StubResponses)
      add_plugin(Aws::Plugins::Protocols::JsonRpc)

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
      # @param [Hash] params ({})
      # @param [Hash] options ({})
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
      # @param [Hash] params ({})
      # @param [Hash] options ({})
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
      # @param [Hash] params ({})
      # @param [Hash] options ({})
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
      # @param [Hash] params ({})
      # @param [Hash] options ({})
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
      # @param [Hash] params ({})
      # @param [Hash] options ({})
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
      # @param [Hash] params ({})
      # @param [Hash] options ({})
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
      # @param [Hash] params ({})
      # @param [Hash] options ({})
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
      # @param [Hash] params ({})
      # @param [Hash] options ({})
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
      # @param [Hash] params ({})
      # @param [Hash] options ({})
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
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def stop_data_collection_by_agent_ids(params = {}, options = {})
        req = build_request(:stop_data_collection_by_agent_ids, params)
        req.send_request(options)
      end

      # @!endgroup

      # @param [Symbol] waiter_name
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      # @option options [Integer] :max_attempts
      # @option options [Integer] :delay
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def wait_until(waiter_name, params = {}, options = {})
        w = waiter(waiter_name, options)
        yield(w.waiter) if block_given? # deprecated
        w.wait(params)
      end

      def waiter_names
        waiters.keys
      end

      private

      # @param [Symbol] waiter_name
      # @param [Hash] options ({})
      def waiter(waiter_name, options = {})
        waiter_class = waiters[waiter_name]
        if waiter_class
          waiter_class.new(options.merge(client: self))
        else
          raise Aws::Waiters::Errors::NoSuchWaiterError.new(waiter_name, waiters.keys)
        end
      end

      def waiters
        {}
      end

      # @api private
      class << self

        attr_reader :identifier

        def errors_module
          Errors
        end

      end
    end
  end
end
