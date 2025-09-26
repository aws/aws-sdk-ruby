# frozen_string_literal: true

# This is generated code!

require_relative 'plugins/endpoint'
require 'smithy-client/plugins/checksum_required'
require 'smithy-client/plugins/content_length'
require 'smithy-client/plugins/default_params'
require 'smithy-client/plugins/host_prefix'
require 'smithy-client/plugins/idempotency_token'
require 'smithy-client/plugins/logging'
require 'smithy-client/plugins/net_http'
require 'smithy-client/plugins/pageable_response'
require 'smithy-client/plugins/param_converter'
require 'smithy-client/plugins/param_validator'
require 'smithy-client/plugins/raise_response_errors'
require 'smithy-client/plugins/request_compression'
require 'smithy-client/plugins/resolve_auth'
require 'smithy-client/plugins/response_target'
require 'smithy-client/plugins/retry_errors'
require 'smithy-client/plugins/stub_responses'
require 'aws-sdk-core/plugins/sigv4'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/json_rpc_protocol'

module Aws::ApplicationDiscoveryService
  # An API client for Aws::ApplicationDiscoveryService.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AWSPoseidonServiceV20151101

    add_plugin(::Aws::ApplicationDiscoveryService::Plugins::Endpoint)
    add_plugin(Smithy::Client::Plugins::ChecksumRequired)
    add_plugin(Smithy::Client::Plugins::ContentLength)
    add_plugin(Smithy::Client::Plugins::DefaultParams)
    add_plugin(Smithy::Client::Plugins::HostPrefix)
    add_plugin(Smithy::Client::Plugins::IdempotencyToken)
    add_plugin(Smithy::Client::Plugins::Logging)
    add_plugin(Smithy::Client::Plugins::NetHTTP)
    add_plugin(Smithy::Client::Plugins::PageableResponse)
    add_plugin(Smithy::Client::Plugins::ParamConverter)
    add_plugin(Smithy::Client::Plugins::ParamValidator)
    add_plugin(Smithy::Client::Plugins::RaiseResponseErrors)
    add_plugin(Smithy::Client::Plugins::RequestCompression)
    add_plugin(Smithy::Client::Plugins::ResolveAuth)
    add_plugin(Smithy::Client::Plugins::ResponseTarget)
    add_plugin(Smithy::Client::Plugins::RetryErrors)
    add_plugin(Smithy::Client::Plugins::StubResponses)
    add_plugin(Aws::Core::Plugins::SigV4)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::JsonRpcProtocol)

    # @param options [Hash] Client options
    # @option options [String] :access_key_id
    # @option options [String] :account_id
    # @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #  When true, the request will sleep until there is sufficient client side capacity to retry
    #  the request. When false, the request will raise a `CapacityNotAvailableError` and will
    #  not retry instead of sleeping.
    # @option options [#resolve(context)] :auth_resolver (AuthResolver.new)
    #  An object that resolves authentication schemes for request signing
    # @option options [Boolean] :convert_params (true)
    #  When `true`, request parameters are coerced into the required types.
    # @option options [#identity] :credentials_provider
    #  The credentials provider used to resolve credentials. Any object that responds to `#identity`
    #  and returns a {Aws::Core::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  Custom Endpoint
    # @option options [Aws::ApplicationDiscoveryService::EndpointProvider] :endpoint_provider
    #  The endpoint provider used to resolve endpoints. Any object that responds to `#resolve(parameters)`.
    # @option options [String] :http_ca_file
    #  The path to a CA certification file in PEM format. Defaults to `nil` which uses
    #  the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ca_file Net::HTTP#ca_file}.
    # @option options [String] :http_ca_path
    #  The path of to CA directory containing certification files in PEM format. Defaults to
    #  `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ca_path Net::HTTP#ca_path}.
    # @option options [OpenSSL::X509::Certificate] :http_cert
    #  Sets the OpenSSL::X509::Certificate object to be used for client certification. Defaults
    #  to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-cert Net::HTTP#cert}.
    # @option options [OpenSSL::X509::Store] :http_cert_store
    #  Sets the OpenSSL::X509::Store to be used for verifying peer certificate. Defaults to
    #  `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-cert_store Net::HTTP#cert_store}.
    # @option options [Numeric] :http_continue_timeout
    #  Sets the continue timeout value, which is the number of seconds to wait for an
    #  expected 100 Continue response. If the HTTP object does not receive a response
    #  in this many seconds it sends the request body. Defaults to `nil` which uses the
    #  Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-continue_timeout Net::HTTP#continue_timeout}.
    # @option options [Boolean] :http_debug_output
    #  When `true`, Net::HTTP debug output will be sent to the configured logger.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#method-i-set_debug_output Net::HTTP#set_debug_output}.
    # @option options [Numeric] :http_keep_alive_timeout
    #  The number of seconds to keep the connection open after a request is sent. If a
    #  new request is made during the given interval, the still-open connection is used;
    #  otherwise the connection will have been closed and a new connection is opened.
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-keep_alive_timeout Net::HTTP#keep_alive_timeout}.
    # @option options [OpenSSL::PKey::RSA, OpenSSL::PKey::DSA] :http_key
    #  Sets the OpenSSL::PKey object to be used for client private key. Defaults to `nil` which
    #  uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-key Net::HTTP#key}.
    # @option options [Numeric] :http_open_timeout
    #  The number of seconds to wait for a connection to open. If the connection is not
    #  made in the given interval, an exception is raised. Defaults to `nil` which uses
    #  the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-open_timeout Net::HTTP#open_timeout}.
    # @option options [URI::HTTP, String] :http_proxy
    #  A proxy to send requests through. Formatted like 'http://proxy.com:123'.
    # @option options [Numeric] :http_read_timeout
    #  The number of seconds to wait for one block to be read (via one read(2) call).
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-read_timeout Net::HTTP#read_timeout}.
    # @option options [Numeric] :http_ssl_timeout
    #  Sets the SSL timeout seconds. Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ssl_timeout Net::HTTP#ssl_timeout}.
    # @option options [Integer] :http_verify_mode (OpenSSL::SSL::VERIFY_PEER)
    #  Sets the verify mode for SSL. Defaults to `OpenSSL::SSL::VERIFY_PEER`.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-verify_mode Net::HTTP#verify_mode}.
    # @option options [Numeric] :http_write_timeout
    #  The number of seconds to wait for one block to be written (via one write(2) call).
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-write_timeout Net::HTTP#write_timeout}.
    # @option options [Smithy::Client::LogFormatter] :log_formatter (Aws::Log::Formatter.default)
    #  The log formatter used by the logger.
    # @option options [Symbol] :log_level (:info)
    #  The log level to send messages to the logger at.
    # @option options [Logger] :logger
    #  The Logger instance to send log messages to. If this option is not set, logging is disabled.
    # @option options [String] :profile (default)
    #  Used when loading credentials from the shared config file and credentials file
    #  at ~/.aws/config and ~/.aws/credentials, respectively.  When not specified, 'default' is used.
    # @option options [Boolean] :raise_response_errors (true)
    #  When `true`, response errors are raised. When `false`, the error is placed on the
    #  output in the {Smithy::Client::Response#error error accessor}.
    # @option options [String] :region
    #  TODO
    # @option options [Integer] :request_min_compression_size_bytes (10240)
    #  The minimum size in bytes that triggers compression for request bodies.
    #  The value must be non-negative integer value between 0 and 10,485,780 bytes inclusive.
    # @option options [lambda] :retry_backoff (Smithy::Client::Retry::EXPONENTIAL_BACKOFF)
    #  A callable object that calculates a backoff delay for a retry attempt. The callable
    #  should accept a single argument, `attempts`, that represents the number of attempts
    #  that have been made. Used in the `standard` and `adaptive` retry strategies.
    # @option options [Integer] :retry_max_attempts (3)
    #  The maximum number attempts that will be made for a single request, including
    #  the initial attempt. Used in the `standard` and `adaptive` retry strategies.
    # @option options [String, Class] :retry_strategy ('standard')
    #  The retry strategy to use when retrying errors. This can be one of the following:
    #  * `standard` - A standardized retry strategy used by the AWS SDKs. This includes support
    #    for retry quotas, which limit the number of unsuccessful retries a client can make.
    #  * `adaptive` - An experimental retry strategy that includes all the functionality of the
    #    `standard` strategy along with automatic client side throttling. This is a provisional
    #    strategy that may change behavior in the future.
    #  * Any instance of a class that implements the following methods:
    #    - `acquire_initial_retry_token(token_scope)`
    #    - `refresh_retry_token(retry_token, error_info)`
    #    - `record_success(retry_token)`
    # @option options [String] :sdk_ua_app_id
    #  A unique and opaque application ID that is appended to the User-Agent header as app/sdk_ua_app_id.
    #  It should have a maximum length of 50. This variable is sourced from environment variable
    #  `AWS_SDK_UA_APP_ID` or the shared config profile attribute `sdk_ua_app_id`.
    # @option options [String] :secret_access_key
    # @option options [String] :session_token
    # @option options [Boolean] :stub_responses
    #  When `true`, the client will return stubbed responses instead of networking requests.
    #  By default fake responses are generated and returned. You can specify the response data
    #  to return or errors to raise by calling {Stubs#stub_responses}.
    #  @see Stubs
    # @option options [Boolean] :use_dual_stack_endpoint
    #  TODO
    # @option options [Boolean] :use_fips_endpoint
    #  TODO
    # @option options [Boolean] :validate_params (true)
    #  When `true`, request parameters are validated before sending the request.
    def initialize(*options)
      super
    end

    # <p>Associates one or more configuration items with an application.</p>
    # @param [Hash, Types::AssociateConfigurationItemsToApplicationRequest] params
    # @option params [String] :application_configuration_id
    #   <p>The configuration ID of an application with which items are to be associated.</p>
    # @option params [Array<String>] :configuration_ids
    #   <p>The ID of each configuration item to be associated with an application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_configuration_id: "ApplicationId", # required
    #     configuration_ids: ["ConfigurationId"], # required
    #   }
    #   options = {}
    #   response = client.associate_configuration_items_to_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AssociateConfigurationItemsToApplicationResponse]
    def associate_configuration_items_to_application(params = {}, options = {})
      request = build_request(:associate_configuration_items_to_application, params)
      request.send_request(options)
    end

    # <p>
    #       Deletes one or more agents or collectors as specified by ID. Deleting an agent or collector does not 
    #       delete the previously discovered data. 
    #       To delete the data collected, use <code>StartBatchDeleteConfigurationTask</code>.
    #       
    #     </p>
    # @param [Hash, Types::BatchDeleteAgentsRequest] params
    # @option params [Array<Types::DeleteAgent>] :delete_agents
    #   <p>
    #         The list of agents to delete.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     delete_agents: [ # required
    #       {
    #         agent_id: "AgentId", # required
    #         force: false
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_delete_agents(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     errors: [
    #       {
    #         agent_id: "AgentId", # required
    #         error_message: "String", # required
    #         error_code: "NOT_FOUND" # One of: ["NOT_FOUND", "INTERNAL_SERVER_ERROR", "AGENT_IN_USE"], # required
    #       }
    #     ]
    #   }
    # @return [Types::BatchDeleteAgentsResponse]
    def batch_delete_agents(params = {}, options = {})
      request = build_request(:batch_delete_agents, params)
      request.send_request(options)
    end

    # <p>Deletes one or more import tasks, each identified by their import ID. Each import task has
    #       a number of records that can identify servers or applications. </p>
    #          <p>Amazon Web Services Application Discovery Service has built-in matching logic that will identify when
    #       discovered servers match existing entries that you've previously discovered, the information
    #       for the already-existing discovered server is updated. When you delete an import task that
    #       contains records that were used to match, the information in those matched records that comes
    #       from the deleted records will also be deleted.</p>
    # @param [Hash, Types::BatchDeleteImportDataRequest] params
    # @option params [Array<String>] :import_task_ids
    #   <p>The IDs for the import tasks that you want to delete.</p>
    # @option params [Boolean] :delete_history
    #   <p>
    #         Set to <code>true</code> to remove the deleted import task from 
    #         <a>DescribeImportTasks</a>.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     import_task_ids: ["ImportTaskIdentifier"], # required
    #     delete_history: false
    #   }
    #   options = {}
    #   response = client.batch_delete_import_data(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     errors: [
    #       {
    #         import_task_id: "ImportTaskIdentifier",
    #         error_code: "NOT_FOUND" # One of: ["NOT_FOUND", "INTERNAL_SERVER_ERROR", "OVER_LIMIT"],
    #         error_description: "BatchDeleteImportDataErrorDescription"
    #       }
    #     ]
    #   }
    # @return [Types::BatchDeleteImportDataResponse]
    def batch_delete_import_data(params = {}, options = {})
      request = build_request(:batch_delete_import_data, params)
      request.send_request(options)
    end

    # <p>Creates an application with the given name and description.</p>
    # @param [Hash, Types::CreateApplicationRequest] params
    # @option params [String] :name
    #   <p>The name of the application to be created.</p>
    # @option params [String] :description
    #   <p>The description of the application to be created.</p>
    # @option params [String] :wave
    #   <p>The name of the migration wave of the application to be created.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ApplicationName", # required
    #     description: "ApplicationDescription",
    #     wave: "ApplicationWave"
    #   }
    #   options = {}
    #   response = client.create_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     configuration_id: "String"
    #   }
    # @return [Types::CreateApplicationResponse]
    def create_application(params = {}, options = {})
      request = build_request(:create_application, params)
      request.send_request(options)
    end

    # <p>Creates one or more tags for configuration items. Tags are metadata that help you
    #       categorize IT assets. This API accepts a list of multiple configuration items.</p>
    #          <important>
    #             <p>Do not store sensitive information (like personal data) in tags.</p>
    #          </important>
    # @param [Hash, Types::CreateTagsRequest] params
    # @option params [Array<String>] :configuration_ids
    #   <p>A list of configuration items that you want to tag.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Tags that you want to associate with one or more configuration items. Specify the tags
    #         that you want to create in a <i>key</i>-<i>value</i> format. For
    #         example:</p>
    #            <p>
    #               <code>{"key": "serverType", "value": "webServer"}</code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configuration_ids: ["ConfigurationId"], # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_tags(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CreateTagsResponse]
    def create_tags(params = {}, options = {})
      request = build_request(:create_tags, params)
      request.send_request(options)
    end

    # <p>Deletes a list of applications and their associations with configuration
    #       items.</p>
    # @param [Hash, Types::DeleteApplicationsRequest] params
    # @option params [Array<String>] :configuration_ids
    #   <p>Configuration ID of an application to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configuration_ids: ["ApplicationId"], # required
    #   }
    #   options = {}
    #   response = client.delete_applications(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteApplicationsResponse]
    def delete_applications(params = {}, options = {})
      request = build_request(:delete_applications, params)
      request.send_request(options)
    end

    # <p>Deletes the association between configuration items and one or more tags. This API
    #       accepts a list of multiple configuration items.</p>
    # @param [Hash, Types::DeleteTagsRequest] params
    # @option params [Array<String>] :configuration_ids
    #   <p>A list of configuration items with tags that you want to delete.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Tags that you want to delete from one or more configuration items. Specify the tags
    #         that you want to delete in a <i>key</i>-<i>value</i> format. For
    #         example:</p>
    #            <p>
    #               <code>{"key": "serverType", "value": "webServer"}</code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configuration_ids: ["ConfigurationId"], # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.delete_tags(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteTagsResponse]
    def delete_tags(params = {}, options = {})
      request = build_request(:delete_tags, params)
      request.send_request(options)
    end

    # <p>Lists agents or collectors as specified by ID or other filters. All agents/collectors
    #       associated with your user can be listed if you call <code>DescribeAgents</code> as is
    #       without passing any parameters.</p>
    # @param [Hash, Types::DescribeAgentsRequest] params
    # @option params [Array<String>] :agent_ids
    #   <p>The agent or the collector IDs for which you want information. If you specify no IDs,
    #         the system returns information about all agents/collectors associated with your user.</p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>You can filter the request using various logical operators and a
    #           <i>key</i>-<i>value</i> format. For example: </p>
    #            <p>
    #               <code>{"key": "collectionStatus", "value": "STARTED"}</code>
    #            </p>
    # @option params [Integer] :max_results
    #   <p>The total number of agents/collectors to return in a single page of output. The maximum
    #         value is 100.</p>
    # @option params [String] :next_token
    #   <p>Token to retrieve the next set of results. For example, if you previously specified 100
    #         IDs for <code>DescribeAgentsRequest$agentIds</code> but set
    #           <code>DescribeAgentsRequest$maxResults</code> to 10, you received a set of 10 results along
    #         with a token. Use that token in this query to get the next set of 10.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_ids: ["AgentId"],
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["FilterValue"], # required
    #         condition: "Condition", # required
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.describe_agents(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     agents_info: [
    #       {
    #         agent_id: "AgentId",
    #         host_name: "String",
    #         agent_network_info_list: [
    #           {
    #             ip_address: "String",
    #             mac_address: "String"
    #           }
    #         ],
    #         connector_id: "String",
    #         version: "String",
    #         health: "HEALTHY" # One of: ["HEALTHY", "UNHEALTHY", "RUNNING", "UNKNOWN", "BLACKLISTED", "SHUTDOWN"],
    #         last_health_ping_time: "String",
    #         collection_status: "String",
    #         agent_type: "String",
    #         registered_time: "String"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeAgentsResponse]
    def describe_agents(params = {}, options = {})
      request = build_request(:describe_agents, params)
      request.send_request(options)
    end

    # <p>
    #         Takes a unique deletion task identifier as input and returns metadata about a configuration deletion task.</p>
    # @param [Hash, Types::DescribeBatchDeleteConfigurationTaskRequest] params
    # @option params [String] :task_id
    #   <p>
    #           The ID of the task to delete.
    #         </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     task_id: "UUID", # required
    #   }
    #   options = {}
    #   response = client.describe_batch_delete_configuration_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     task: {
    #       task_id: "UUID",
    #       status: "INITIALIZING" # One of: ["INITIALIZING", "VALIDATING", "DELETING", "COMPLETED", "FAILED"],
    #       start_time: Time.now,
    #       end_time: Time.now,
    #       configuration_type: "SERVER" # One of: ["SERVER"],
    #       requested_configurations: ["ConfigurationId"],
    #       deleted_configurations: ["ConfigurationId"],
    #       failed_configurations: [
    #         {
    #           configuration_id: "ConfigurationId",
    #           error_status_code: 1,
    #           error_message: "ErrorMessage"
    #         }
    #       ],
    #       deletion_warnings: [
    #         {
    #           configuration_id: "ConfigurationId",
    #           warning_code: 1,
    #           warning_text: "WarningText"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::DescribeBatchDeleteConfigurationTaskResponse]
    def describe_batch_delete_configuration_task(params = {}, options = {})
      request = build_request(:describe_batch_delete_configuration_task, params)
      request.send_request(options)
    end

    # <p>Retrieves attributes for a list of configuration item IDs.</p>
    #          <note>
    #             <p>All of the supplied IDs must be for the same asset type from one of the
    #         following:</p>
    #             <ul>
    #                <li>
    #                   <p>server</p>
    #                </li>
    #                <li>
    #                   <p>application</p>
    #                </li>
    #                <li>
    #                   <p>process</p>
    #                </li>
    #                <li>
    #                   <p>connection</p>
    #                </li>
    #             </ul>
    #             <p>Output fields are specific to the asset type specified. For example, the output for a
    #           <i>server</i> configuration item includes a list of attributes about the
    #         server, such as host name, operating system, number of network cards, etc.</p>
    #             <p>For a complete list of outputs for each asset type, see <a href="https://docs.aws.amazon.com/application-discovery/latest/userguide/discovery-api-queries.html#DescribeConfigurations">Using the DescribeConfigurations Action</a> in the <i>Amazon Web Services Application
    #           Discovery Service User Guide</i>.</p>
    #          </note>
    # @param [Hash, Types::DescribeConfigurationsRequest] params
    # @option params [Array<String>] :configuration_ids
    #   <p>One or more configuration IDs.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configuration_ids: ["ConfigurationId"], # required
    #   }
    #   options = {}
    #   response = client.describe_configurations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     configurations: [
    #       {
    #         "String" => "String"
    #       }
    #     ]
    #   }
    # @return [Types::DescribeConfigurationsResponse]
    def describe_configurations(params = {}, options = {})
      request = build_request(:describe_configurations, params)
      request.send_request(options)
    end

    # <p>Lists exports as specified by ID. All continuous exports associated with your user
    #       can be listed if you call <code>DescribeContinuousExports</code> as is without passing
    #       any parameters.</p>
    # @param [Hash, Types::DescribeContinuousExportsRequest] params
    # @option params [Array<String>] :export_ids
    #   <p>The unique IDs assigned to the exports.</p>
    # @option params [Integer] :max_results
    #   <p>A number between 1 and 100 specifying the maximum number of continuous export
    #         descriptions returned.</p>
    # @option params [String] :next_token
    #   <p>The token from the previous call to <code>DescribeExportTasks</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     export_ids: ["ConfigurationsExportId"],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.describe_continuous_exports(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     descriptions: [
    #       {
    #         export_id: "ConfigurationsExportId",
    #         status: "START_IN_PROGRESS" # One of: ["START_IN_PROGRESS", "START_FAILED", "ACTIVE", "ERROR", "STOP_IN_PROGRESS", "STOP_FAILED", "INACTIVE"],
    #         status_detail: "StringMax255",
    #         s3_bucket: "S3Bucket",
    #         start_time: Time.now,
    #         stop_time: Time.now,
    #         data_source: "AGENT" # One of: ["AGENT"],
    #         schema_storage_config: {
    #           "DatabaseName" => "String"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeContinuousExportsResponse]
    def describe_continuous_exports(params = {}, options = {})
      request = build_request(:describe_continuous_exports, params)
      request.send_request(options)
    end

    # <p>
    #             <code>DescribeExportConfigurations</code> is deprecated. Use <a href="https://docs.aws.amazon.com/application-discovery/latest/APIReference/API_DescribeExportTasks.html">DescribeExportTasks</a>, instead.</p>
    # @param [Hash, Types::DescribeExportConfigurationsRequest] params
    # @option params [Array<String>] :export_ids
    #   <p>A list of continuous export IDs to search for.</p>
    # @option params [Integer] :max_results
    #   <p>A number between 1 and 100 specifying the maximum number of continuous export
    #         descriptions returned.</p>
    # @option params [String] :next_token
    #   <p>The token from the previous call to describe-export-tasks.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     export_ids: ["ConfigurationsExportId"],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.describe_export_configurations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     exports_info: [
    #       {
    #         export_id: "ConfigurationsExportId", # required
    #         export_status: "FAILED" # One of: ["FAILED", "SUCCEEDED", "IN_PROGRESS"], # required
    #         status_message: "ExportStatusMessage", # required
    #         configurations_download_url: "ConfigurationsDownloadUrl",
    #         export_request_time: Time.now, # required
    #         is_truncated: false,
    #         requested_start_time: Time.now,
    #         requested_end_time: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @deprecated
    # @return [Types::DescribeExportConfigurationsResponse]
    def describe_export_configurations(params = {}, options = {})
      request = build_request(:describe_export_configurations, params)
      request.send_request(options)
    end

    # <p>Retrieve status of one or more export tasks. You can retrieve the status of up to 100
    #       export tasks.</p>
    # @param [Hash, Types::DescribeExportTasksRequest] params
    # @option params [Array<String>] :export_ids
    #   <p>One or more unique identifiers used to query the status of an export request.</p>
    # @option params [Array<Types::ExportFilter>] :filters
    #   <p>One or more filters.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AgentId</code> - ID of the agent whose collected data will be
    #             exported</p>
    #               </li>
    #            </ul>
    # @option params [Integer] :max_results
    #   <p>The maximum number of volume results returned by <code>DescribeExportTasks</code> in
    #         paginated output. When this parameter is used, <code>DescribeExportTasks</code> only returns
    #           <code>maxResults</code> results in a single page along with a <code>nextToken</code>
    #         response element.</p>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #           <code>DescribeExportTasks</code> request where <code>maxResults</code> was used and the
    #         results exceeded the value of that parameter. Pagination continues from the end of the
    #         previous results that returned the <code>nextToken</code> value. This value is null when there
    #         are no more results to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     export_ids: ["ConfigurationsExportId"],
    #     filters: [
    #       {
    #         name: "FilterName", # required
    #         values: ["FilterValue"], # required
    #         condition: "Condition", # required
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.describe_export_tasks(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     exports_info: [
    #       {
    #         export_id: "ConfigurationsExportId", # required
    #         export_status: "FAILED" # One of: ["FAILED", "SUCCEEDED", "IN_PROGRESS"], # required
    #         status_message: "ExportStatusMessage", # required
    #         configurations_download_url: "ConfigurationsDownloadUrl",
    #         export_request_time: Time.now, # required
    #         is_truncated: false,
    #         requested_start_time: Time.now,
    #         requested_end_time: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeExportTasksResponse]
    def describe_export_tasks(params = {}, options = {})
      request = build_request(:describe_export_tasks, params)
      request.send_request(options)
    end

    # <p>Returns an array of import tasks for your account, including status information, times,
    #       IDs, the Amazon S3 Object URL for the import file, and more.</p>
    # @param [Hash, Types::DescribeImportTasksRequest] params
    # @option params [Array<Types::ImportTaskFilter>] :filters
    #   <p>An array of name-value pairs that you provide to filter the results for the
    #           <code>DescribeImportTask</code> request to a specific subset of results. Currently, wildcard
    #         values aren't supported for filters.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that you want this request to return, up to 100.</p>
    # @option params [String] :next_token
    #   <p>The token to request a specific page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: [
    #       {
    #         name: "IMPORT_TASK_ID" # One of: ["IMPORT_TASK_ID", "STATUS", "NAME", "FILE_CLASSIFICATION"],
    #         values: ["ImportTaskFilterValue"]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.describe_import_tasks(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     tasks: [
    #       {
    #         import_task_id: "ImportTaskIdentifier",
    #         client_request_token: "ClientRequestToken",
    #         name: "ImportTaskName",
    #         import_url: "ImportURL",
    #         status: "IMPORT_IN_PROGRESS" # One of: ["IMPORT_IN_PROGRESS", "IMPORT_COMPLETE", "IMPORT_COMPLETE_WITH_ERRORS", "IMPORT_FAILED", "IMPORT_FAILED_SERVER_LIMIT_EXCEEDED", "IMPORT_FAILED_RECORD_LIMIT_EXCEEDED", "IMPORT_FAILED_UNSUPPORTED_FILE_TYPE", "DELETE_IN_PROGRESS", "DELETE_COMPLETE", "DELETE_FAILED", "DELETE_FAILED_LIMIT_EXCEEDED", "INTERNAL_ERROR"],
    #         import_request_time: Time.now,
    #         import_completion_time: Time.now,
    #         import_deleted_time: Time.now,
    #         file_classification: "MODELIZEIT_EXPORT" # One of: ["MODELIZEIT_EXPORT", "RVTOOLS_EXPORT", "VMWARE_NSX_EXPORT", "IMPORT_TEMPLATE"],
    #         server_import_success: 1,
    #         server_import_failure: 1,
    #         application_import_success: 1,
    #         application_import_failure: 1,
    #         errors_and_failed_entries_zip: "S3PresignedUrl"
    #       }
    #     ]
    #   }
    # @return [Types::DescribeImportTasksResponse]
    def describe_import_tasks(params = {}, options = {})
      request = build_request(:describe_import_tasks, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of configuration items that have tags as specified by the key-value
    #       pairs, name and value, passed to the optional parameter <code>filters</code>.</p>
    #          <p>There are three valid tag filter names:</p>
    #          <ul>
    #             <li>
    #                <p>tagKey</p>
    #             </li>
    #             <li>
    #                <p>tagValue</p>
    #             </li>
    #             <li>
    #                <p>configurationId</p>
    #             </li>
    #          </ul>
    #          <p>Also, all configuration items associated with your user that have tags can be
    #       listed if you call <code>DescribeTags</code> as is without passing any parameters.</p>
    # @param [Hash, Types::DescribeTagsRequest] params
    # @option params [Array<Types::TagFilter>] :filters
    #   <p>You can filter the list using a <i>key</i>-<i>value</i>
    #         format. You can separate these items by using logical operators. Allowed filters include
    #           <code>tagKey</code>, <code>tagValue</code>, and <code>configurationId</code>. </p>
    # @option params [Integer] :max_results
    #   <p>The total number of items to return in a single page of output. The maximum value is
    #         100.</p>
    # @option params [String] :next_token
    #   <p>A token to start the list. Use this token to get the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: [
    #       {
    #         name: "FilterName", # required
    #         values: ["FilterValue"], # required
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.describe_tags(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: [
    #       {
    #         configuration_type: "SERVER" # One of: ["SERVER", "PROCESS", "CONNECTION", "APPLICATION"],
    #         configuration_id: "ConfigurationId",
    #         key: "TagKey",
    #         value: "TagValue",
    #         time_of_creation: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeTagsResponse]
    def describe_tags(params = {}, options = {})
      request = build_request(:describe_tags, params)
      request.send_request(options)
    end

    # <p>Disassociates one or more configuration items from an application.</p>
    # @param [Hash, Types::DisassociateConfigurationItemsFromApplicationRequest] params
    # @option params [String] :application_configuration_id
    #   <p>Configuration ID of an application from which each item is disassociated.</p>
    # @option params [Array<String>] :configuration_ids
    #   <p>Configuration ID of each item to be disassociated from an application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_configuration_id: "ApplicationId", # required
    #     configuration_ids: ["ConfigurationId"], # required
    #   }
    #   options = {}
    #   response = client.disassociate_configuration_items_from_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisassociateConfigurationItemsFromApplicationResponse]
    def disassociate_configuration_items_from_application(params = {}, options = {})
      request = build_request(:disassociate_configuration_items_from_application, params)
      request.send_request(options)
    end

    # <p>Deprecated. Use <code>StartExportTask</code> instead.</p>
    #          <p>Exports all discovered configuration data to an Amazon S3 bucket or an application that
    #       enables you to view and evaluate the data. Data includes tags and tag associations, processes,
    #       connections, servers, and system performance. This API returns an export ID that you can query
    #       using the <i>DescribeExportConfigurations</i> API. The system imposes a limit of
    #       two configuration exports in six hours.</p>
    # @param [Hash, Smithy::Schema::EmptyStructure] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.export_configurations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     export_id: "ConfigurationsExportId"
    #   }
    # @deprecated
    # @return [Types::ExportConfigurationsResponse]
    def export_configurations(params = {}, options = {})
      request = build_request(:export_configurations, params)
      request.send_request(options)
    end

    # <p>Retrieves a short summary of discovered assets.</p>
    #          <p>This API operation takes no request parameters and is called as is at the command
    #       prompt as shown in the example.</p>
    # @param [Hash, Types::GetDiscoverySummaryRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_discovery_summary(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     servers: 1,
    #     applications: 1,
    #     servers_mapped_to_applications: 1,
    #     servers_mappedto_tags: 1,
    #     agent_summary: {
    #       active_agents: 1, # required
    #       healthy_agents: 1, # required
    #       black_listed_agents: 1, # required
    #       shutdown_agents: 1, # required
    #       unhealthy_agents: 1, # required
    #       total_agents: 1, # required
    #       unknown_agents: 1, # required
    #     },
    #     connector_summary: {
    #       active_connectors: 1, # required
    #       healthy_connectors: 1, # required
    #       black_listed_connectors: 1, # required
    #       shutdown_connectors: 1, # required
    #       unhealthy_connectors: 1, # required
    #       total_connectors: 1, # required
    #       unknown_connectors: 1, # required
    #     },
    #     me_collector_summary: {
    #       active_me_collectors: 1, # required
    #       healthy_me_collectors: 1, # required
    #       deny_listed_me_collectors: 1, # required
    #       shutdown_me_collectors: 1, # required
    #       unhealthy_me_collectors: 1, # required
    #       total_me_collectors: 1, # required
    #       unknown_me_collectors: 1, # required
    #     },
    #     agentless_collector_summary: {
    #       active_agentless_collectors: 1, # required
    #       healthy_agentless_collectors: 1, # required
    #       deny_listed_agentless_collectors: 1, # required
    #       shutdown_agentless_collectors: 1, # required
    #       unhealthy_agentless_collectors: 1, # required
    #       total_agentless_collectors: 1, # required
    #       unknown_agentless_collectors: 1, # required
    #     }
    #   }
    # @return [Types::GetDiscoverySummaryResponse]
    def get_discovery_summary(params = {}, options = {})
      request = build_request(:get_discovery_summary, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of configuration items as specified by the value passed to the
    #       required parameter <code>configurationType</code>. Optional filtering may be applied to refine
    #       search results.</p>
    # @param [Hash, Types::ListConfigurationsRequest] params
    # @option params [String] :configuration_type
    #   <p>A valid configuration identified by Application Discovery Service. </p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>You can filter the request using various logical operators and a
    #           <i>key</i>-<i>value</i> format. For example: </p>
    #            <p>
    #               <code>{"key": "serverType", "value": "webServer"}</code>
    #            </p>
    #            <p>For a complete list of filter options and guidance about using them with this action,
    #         see <a href="https://docs.aws.amazon.com/application-discovery/latest/userguide/discovery-api-queries.html#ListConfigurations">Using the ListConfigurations Action</a> in the <i>Amazon Web Services Application Discovery
    #           Service User Guide</i>.</p>
    # @option params [Integer] :max_results
    #   <p>The total number of items to return. The maximum value is 100.</p>
    # @option params [String] :next_token
    #   <p>Token to retrieve the next set of results. For example, if a previous call to
    #         ListConfigurations returned 100 items, but you set
    #           <code>ListConfigurationsRequest$maxResults</code> to 10, you received a set of 10 results
    #         along with a token. Use that token in this query to get the next set of 10.</p>
    # @option params [Array<Types::OrderByElement>] :order_by
    #   <p>Certain filter criteria return output that can be sorted in ascending or descending
    #         order. For a list of output characteristics for each filter, see <a href="https://docs.aws.amazon.com/application-discovery/latest/userguide/discovery-api-queries.html#ListConfigurations">Using the ListConfigurations Action</a> in the <i>Amazon Web Services Application Discovery
    #           Service User Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configuration_type: "SERVER" # One of: ["SERVER", "PROCESS", "CONNECTION", "APPLICATION"], # required
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["FilterValue"], # required
    #         condition: "Condition", # required
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken",
    #     order_by: [
    #       {
    #         field_name: "OrderByElementFieldName", # required
    #         sort_order: "ASC" # One of: ["ASC", "DESC"]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.list_configurations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     configurations: [
    #       {
    #         "String" => "String"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListConfigurationsResponse]
    def list_configurations(params = {}, options = {})
      request = build_request(:list_configurations, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of servers that are one network hop away from a specified
    #       server.</p>
    # @param [Hash, Types::ListServerNeighborsRequest] params
    # @option params [String] :configuration_id
    #   <p>Configuration ID of the server for which neighbors are being listed.</p>
    # @option params [Boolean] :port_information_needed
    #   <p>Flag to indicate if port and protocol information is needed as part of the
    #         response.</p>
    # @option params [Array<String>] :neighbor_configuration_ids
    #   <p>List of configuration IDs to test for one-hop-away.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to return in a single page of output.</p>
    # @option params [String] :next_token
    #   <p>Token to retrieve the next set of results. For example, if you previously specified 100
    #         IDs for <code>ListServerNeighborsRequest$neighborConfigurationIds</code> but set
    #           <code>ListServerNeighborsRequest$maxResults</code> to 10, you received a set of 10 results
    #         along with a token. Use that token in this query to get the next set of 10.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configuration_id: "ConfigurationId", # required
    #     port_information_needed: false,
    #     neighbor_configuration_ids: ["ConfigurationId"],
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_server_neighbors(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     neighbors: [ # required
    #       {
    #         source_server_id: "ConfigurationId", # required
    #         destination_server_id: "ConfigurationId", # required
    #         destination_port: 1,
    #         transport_protocol: "String",
    #         connections_count: 1, # required
    #       }
    #     ],
    #     next_token: "String",
    #     known_dependency_count: 1
    #   }
    # @return [Types::ListServerNeighborsResponse]
    def list_server_neighbors(params = {}, options = {})
      request = build_request(:list_server_neighbors, params)
      request.send_request(options)
    end

    # <p>
    #         Takes a list of configurationId as input and starts an asynchronous deletion 
    #         task to remove the configurationItems. Returns a unique deletion task identifier.
    #       </p>
    # @param [Hash, Types::StartBatchDeleteConfigurationTaskRequest] params
    # @option params [String] :configuration_type
    #   <p>
    #           The type of configuration item to delete. Supported types are: SERVER.
    #         </p>
    # @option params [Array<String>] :configuration_ids
    #   <p>
    #           The list of configuration IDs that will be deleted by the task.
    #         </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configuration_type: "SERVER" # One of: ["SERVER"], # required
    #     configuration_ids: ["ConfigurationId"], # required
    #   }
    #   options = {}
    #   response = client.start_batch_delete_configuration_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     task_id: "UUID"
    #   }
    # @return [Types::StartBatchDeleteConfigurationTaskResponse]
    def start_batch_delete_configuration_task(params = {}, options = {})
      request = build_request(:start_batch_delete_configuration_task, params)
      request.send_request(options)
    end

    # <p>Start the continuous flow of agent's discovered data into Amazon Athena.</p>
    # @param [Hash, Types::StartContinuousExportRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.start_continuous_export(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     export_id: "ConfigurationsExportId",
    #     s3_bucket: "S3Bucket",
    #     start_time: Time.now,
    #     data_source: "AGENT" # One of: ["AGENT"],
    #     schema_storage_config: {
    #       "DatabaseName" => "String"
    #     }
    #   }
    # @return [Types::StartContinuousExportResponse]
    def start_continuous_export(params = {}, options = {})
      request = build_request(:start_continuous_export, params)
      request.send_request(options)
    end

    # <p>Instructs the specified agents to start collecting data.</p>
    # @param [Hash, Types::StartDataCollectionByAgentIdsRequest] params
    # @option params [Array<String>] :agent_ids
    #   <p>The IDs of the agents from which to start collecting data. If you send a request to an
    #         agent ID that you do not have permission to contact, according to your Amazon Web Services account, the
    #         service does not throw an exception. Instead, it returns the error in the
    #           <i>Description</i> field. If you send a request to multiple agents and you do
    #         not have permission to contact some of those agents, the system does not throw an exception.
    #         Instead, the system shows <code>Failed</code> in the <i>Description</i>
    #         field.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_ids: ["AgentId"], # required
    #   }
    #   options = {}
    #   response = client.start_data_collection_by_agent_ids(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     agents_configuration_status: [
    #       {
    #         agent_id: "String",
    #         operation_succeeded: false,
    #         description: "String"
    #       }
    #     ]
    #   }
    # @return [Types::StartDataCollectionByAgentIdsResponse]
    def start_data_collection_by_agent_ids(params = {}, options = {})
      request = build_request(:start_data_collection_by_agent_ids, params)
      request.send_request(options)
    end

    # <p>Begins the export of a discovered data report to an Amazon S3 bucket managed by Amazon Web Services.</p>
    #          <note>
    #             <p>Exports might provide an estimate of fees and savings based on certain information 
    #       that you provide. Fee estimates do not include any taxes that might apply. 
    #       Your actual fees and savings depend on a variety of factors, including your actual usage of Amazon Web Services 
    #       services, which might vary from the estimates provided in this report.</p>
    #          </note>
    #          <p>If you do not specify <code>preferences</code> or <code>agentIds</code> in the filter, a
    #       summary of all servers, applications, tags, and performance is generated. This data is an
    #       aggregation of all server data collected through on-premises tooling, file import, application
    #       grouping and applying tags.</p>
    #          <p>If you specify <code>agentIds</code> in a filter, the task exports up to 72 hours of
    #       detailed data collected by the identified Application Discovery Agent, including network,
    #       process, and performance details. A time range for exported agent data may be set by using
    #         <code>startTime</code> and <code>endTime</code>. Export of detailed agent data is limited to
    #       five concurrently running exports. 
    #       Export of detailed agent data is limited to two exports per day.</p>
    #          <p>If you enable <code>ec2RecommendationsPreferences</code> in <code>preferences</code> 
    #       , an
    #       Amazon EC2 instance matching the characteristics of each server in Application Discovery Service is generated. 
    #       Changing the attributes of the <code>ec2RecommendationsPreferences</code> changes the
    #       criteria of the recommendation.</p>
    # @param [Hash, Types::StartExportTaskRequest] params
    # @option params [Array<String>] :export_data_format
    #   <p>The file format for the returned export data. Default value is <code>CSV</code>.
    #           <b>Note:</b>
    #               <i>The</i>
    #               <code>GRAPHML</code>
    #               <i>option has been deprecated.</i>
    #            </p>
    # @option params [Array<Types::ExportFilter>] :filters
    #   <p>If a filter is present, it selects the single <code>agentId</code> of the Application
    #         Discovery Agent for which data is exported. The <code>agentId</code> can be found in the
    #         results of the <code>DescribeAgents</code> API or CLI. If no filter is present,
    #           <code>startTime</code> and <code>endTime</code> are ignored and exported data includes both
    #         Amazon Web Services Application Discovery Service Agentless Collector collectors data and summary data from Application Discovery
    #         Agent agents. </p>
    # @option params [Time] :start_time
    #   <p>The start timestamp for exported data from the single Application Discovery Agent
    #         selected in the filters. If no value is specified, data is exported starting from the first
    #         data collected by the agent.</p>
    # @option params [Time] :end_time
    #   <p>The end timestamp for exported data from the single Application Discovery Agent
    #         selected in the filters. If no value is specified, exported data includes the most recent data
    #         collected by the agent.</p>
    # @option params [Types::ExportPreferences] :preferences
    #   <p>
    #         Indicates the type of data that needs to be exported. Only one 
    #         <a href="https://docs.aws.amazon.com/application-discovery/latest/APIReference/API_ExportPreferences.html">ExportPreferences</a> can be enabled at any time.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     export_data_format: ["CSV" # One of: ["CSV"]],
    #     filters: [
    #       {
    #         name: "FilterName", # required
    #         values: ["FilterValue"], # required
    #         condition: "Condition", # required
    #       }
    #     ],
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     preferences: {
    #       # One of:
    #       ec2_recommendations_preferences: {
    #         enabled: false,
    #         cpu_performance_metric_basis: {
    #           name: "UsageMetricBasisName",
    #           percentage_adjust: 1.0
    #         },
    #         ram_performance_metric_basis: {
    #           name: "UsageMetricBasisName",
    #           percentage_adjust: 1.0
    #         },
    #         tenancy: "DEDICATED" # One of: ["DEDICATED", "SHARED"],
    #         excluded_instance_types: ["EC2InstanceType"],
    #         preferred_region: "UserPreferredRegion",
    #         reserved_instance_options: {
    #           purchasing_option: "ALL_UPFRONT" # One of: ["ALL_UPFRONT", "PARTIAL_UPFRONT", "NO_UPFRONT"], # required
    #           offering_class: "STANDARD" # One of: ["STANDARD", "CONVERTIBLE"], # required
    #           term_length: "ONE_YEAR" # One of: ["ONE_YEAR", "THREE_YEAR"], # required
    #         }
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.start_export_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     export_id: "ConfigurationsExportId"
    #   }
    # @return [Types::StartExportTaskResponse]
    def start_export_task(params = {}, options = {})
      request = build_request(:start_export_task, params)
      request.send_request(options)
    end

    # <p>Starts an import task, which allows you to import details of your on-premises environment
    #       directly into Amazon Web Services Migration Hub without having to use the Amazon Web Services Application Discovery
    #       Service (Application Discovery Service) tools such as the Amazon Web Services Application Discovery Service Agentless Collector
    #       or Application Discovery Agent. This gives you the option to
    #       perform migration assessment and planning directly from your imported data, including the
    #       ability to group your devices as applications and track their migration status.</p>
    #          <p>To start an import request, do this:</p>
    #          <ol>
    #             <li>
    #                <p>Download the specially formatted comma separated value (CSV) import template, which
    #           you can find here: <a href="https://s3.us-west-2.amazonaws.com/templates-7cffcf56-bd96-4b1c-b45b-a5b42f282e46/import_template.csv">https://s3.us-west-2.amazonaws.com/templates-7cffcf56-bd96-4b1c-b45b-a5b42f282e46/import_template.csv</a>.</p>
    #             </li>
    #             <li>
    #                <p>Fill out the template with your server and application data.</p>
    #             </li>
    #             <li>
    #                <p>Upload your import file to an Amazon S3 bucket, and make a note of it's Object URL.
    #           Your import file must be in the CSV format.</p>
    #             </li>
    #             <li>
    #                <p>Use the console or the <code>StartImportTask</code> command with the Amazon Web Services CLI or one
    #           of the Amazon Web Services SDKs to import the records from your file.</p>
    #             </li>
    #          </ol>
    #          <p>For more information, including step-by-step procedures, see <a href="https://docs.aws.amazon.com/application-discovery/latest/userguide/discovery-import.html">Migration Hub
    #         Import</a> in the <i>Amazon Web Services Application Discovery Service User
    #       Guide</i>.</p>
    #          <note>
    #             <p>There are limits to the number of import tasks you can create (and delete) in an Amazon Web Services
    #         account. For more information, see <a href="https://docs.aws.amazon.com/application-discovery/latest/userguide/ads_service_limits.html">Amazon Web Services Application
    #           Discovery Service Limits</a> in the <i>Amazon Web Services Application Discovery Service User
    #           Guide</i>.</p>
    #          </note>
    # @param [Hash, Types::StartImportTaskRequest] params
    # @option params [String] :client_request_token
    #   <p>Optional. A unique token that you can provide to prevent the same import request from
    #         occurring more than once. If you don't provide a token, a token is automatically
    #         generated.</p>
    #            <p>Sending more than one <code>StartImportTask</code> request with the same client request
    #         token will return information about the original import task with that client request
    #         token.</p>
    # @option params [String] :name
    #   <p>A descriptive name for this request. You can use this name to filter future requests
    #         related to this import task, such as identifying applications and servers that were included
    #         in this import task. We recommend that you use a meaningful name for each import task.</p>
    # @option params [String] :import_url
    #   <p>The URL for your import file that you've uploaded to Amazon S3.</p>
    #            <note>
    #               <p>If you're using the Amazon Web Services CLI, this URL is structured as follows:
    #             <code>s3://BucketName/ImportFileName.CSV</code>
    #               </p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_request_token: "ClientRequestToken",
    #     name: "ImportTaskName", # required
    #     import_url: "ImportURL", # required
    #   }
    #   options = {}
    #   response = client.start_import_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     task: {
    #       import_task_id: "ImportTaskIdentifier",
    #       client_request_token: "ClientRequestToken",
    #       name: "ImportTaskName",
    #       import_url: "ImportURL",
    #       status: "IMPORT_IN_PROGRESS" # One of: ["IMPORT_IN_PROGRESS", "IMPORT_COMPLETE", "IMPORT_COMPLETE_WITH_ERRORS", "IMPORT_FAILED", "IMPORT_FAILED_SERVER_LIMIT_EXCEEDED", "IMPORT_FAILED_RECORD_LIMIT_EXCEEDED", "IMPORT_FAILED_UNSUPPORTED_FILE_TYPE", "DELETE_IN_PROGRESS", "DELETE_COMPLETE", "DELETE_FAILED", "DELETE_FAILED_LIMIT_EXCEEDED", "INTERNAL_ERROR"],
    #       import_request_time: Time.now,
    #       import_completion_time: Time.now,
    #       import_deleted_time: Time.now,
    #       file_classification: "MODELIZEIT_EXPORT" # One of: ["MODELIZEIT_EXPORT", "RVTOOLS_EXPORT", "VMWARE_NSX_EXPORT", "IMPORT_TEMPLATE"],
    #       server_import_success: 1,
    #       server_import_failure: 1,
    #       application_import_success: 1,
    #       application_import_failure: 1,
    #       errors_and_failed_entries_zip: "S3PresignedUrl"
    #     }
    #   }
    # @return [Types::StartImportTaskResponse]
    def start_import_task(params = {}, options = {})
      request = build_request(:start_import_task, params)
      request.send_request(options)
    end

    # <p>Stop the continuous flow of agent's discovered data into Amazon Athena.</p>
    # @param [Hash, Types::StopContinuousExportRequest] params
    # @option params [String] :export_id
    #   <p>The unique ID assigned to this export.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     export_id: "ConfigurationsExportId", # required
    #   }
    #   options = {}
    #   response = client.stop_continuous_export(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     start_time: Time.now,
    #     stop_time: Time.now
    #   }
    # @return [Types::StopContinuousExportResponse]
    def stop_continuous_export(params = {}, options = {})
      request = build_request(:stop_continuous_export, params)
      request.send_request(options)
    end

    # <p>Instructs the specified agents to stop collecting data.</p>
    # @param [Hash, Types::StopDataCollectionByAgentIdsRequest] params
    # @option params [Array<String>] :agent_ids
    #   <p>The IDs of the agents from which to stop collecting data.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_ids: ["AgentId"], # required
    #   }
    #   options = {}
    #   response = client.stop_data_collection_by_agent_ids(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     agents_configuration_status: [
    #       {
    #         agent_id: "String",
    #         operation_succeeded: false,
    #         description: "String"
    #       }
    #     ]
    #   }
    # @return [Types::StopDataCollectionByAgentIdsResponse]
    def stop_data_collection_by_agent_ids(params = {}, options = {})
      request = build_request(:stop_data_collection_by_agent_ids, params)
      request.send_request(options)
    end

    # <p>Updates metadata about an application.</p>
    # @param [Hash, Types::UpdateApplicationRequest] params
    # @option params [String] :configuration_id
    #   <p>Configuration ID of the application to be updated.</p>
    # @option params [String] :name
    #   <p>New name of the application to be updated.</p>
    # @option params [String] :description
    #   <p>New description of the application to be updated.</p>
    # @option params [String] :wave
    #   <p>The new migration wave of the application that you want to update.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configuration_id: "ApplicationId", # required
    #     name: "ApplicationName",
    #     description: "ApplicationDescription",
    #     wave: "ApplicationWave"
    #   }
    #   options = {}
    #   response = client.update_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateApplicationResponse]
    def update_application(params = {}, options = {})
      request = build_request(:update_application, params)
      request.send_request(options)
    end

    # Polls an API operation until a resource enters a desired state.
    #
    # ## Basic Usage
    #
    # A waiter will call an API operation until:
    #
    # * It is successful
    # * It enters a terminal state
    # * It reaches the maximum wait time allowed
    #
    # In between attempts, the waiter will sleep.
    #
    #     # polls in a loop, sleeping between attempts
    #     client.wait_until(waiter_name, params, options)
    #
    # ## Configuration
    #
    # You must configure the maximum amount of time in seconds a
    # waiter should wait for. You may also configure the minimum
    # and maximum amount of time in seconds to delay between
    # retries. You can pass these configuration as the final
    # arguments hash.
    #
    #     weather = Weather::Client.new
    #
    #     # poll for a maximum of 25 seconds
    #     weather.wait_until(:forecast_exists, { forecast_id: '1' }, {
    #       max_wait_time: 25,
    #       min_delay: 2,
    #       max_delay: 10
    #     })
    #
    # ## Handling Errors
    #
    # When a waiter is unsuccessful, it will raise an error.
    # All the failure errors extend from
    # {Smithy::Client::Waiters::WaiterFailed}.
    #
    #     weather = Weather::Client.new
    #     begin
    #       weather.wait_until(:forecast_exists, { forecast_id: '1' }, max_wait_time: 60)
    #     rescue Smithy::Client::Waiters::WaiterFailed
    #       # resource did not enter the desired state in time
    #     end
    #
    # @param [Symbol] waiter_name
    # @param [Hash] params ({})
    # @param [Hash] options ({})
    # @option options [Integer] :max_wait_time
    # @option options [Integer] :min_delay
    # @option options [Integer] :max_delay
    # @return [nil] Returns `nil` if the waiter was successful.
    # @raise [FailureStateError] Raised when the waiter terminates
    #   because the waiter has entered a state that it will not transition
    #   out of, preventing success.
    # @raise [MaxWaitTimeExceededError] Raised when the configured
    #   maximum wait time is reached and the waiter is not yet successful.
    # @raise [UnexpectedError] Raised when an error that is not
    #   expected is encountered while polling for a resource.
    # @raise [NoSuchWaiterError] Raised when you request to wait
    #   for an unknown state.
    def wait_until(waiter_name, params = {}, options = {})
      waiter(waiter_name, options).wait(params)
    end

    # @api private
    def build_request(operation_name, params)
      handlers = @handlers.for(operation_name)
      context = Smithy::Client::HandlerContext.new(
        operation_name: operation_name,
        operation: config.service.operation(operation_name),
        client: self,
        config: config,
        params: params
      )
      context[:gem_name] = 'aws-sdk-applicationdiscoveryservice'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {}
    end

    class << self
      # @api private
      attr_reader :identifier

      # @api private
      def auth_parameters
        AuthParameters
      end

      # @api private
      def auth_resolver
        AuthResolver
      end

      # @api private
      def errors_module
        Errors
      end
    end
  end
end
