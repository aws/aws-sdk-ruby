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
require 'smithy-client/plugins/sign_requests'
require 'smithy-client/plugins/stub_responses'
require 'aws-sdk-core/plugins/global_configuration'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/rest_json_protocol'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:resourcegroups)

module Aws::ResourceGroups
  # An API client for Aws::ResourceGroups.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::Ardi
    @identifier = :resourcegroups

    add_plugin(::Aws::ResourceGroups::Plugins::Endpoint)
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
    add_plugin(Smithy::Client::Plugins::SignRequests)
    add_plugin(Smithy::Client::Plugins::StubResponses)
    add_plugin(Aws::Core::Plugins::GlobalConfiguration)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::RestJsonProtocol)
    add_plugin(Aws::Core::Plugins::RegionalEndpoints)
    add_plugin(Aws::Core::Plugins::SigV4)

    # @param options [Hash] Client options
    # @option options [String] :access_key_id
    # @option options [String] :account_id
    # @option options [String] :account_id_endpoint_mode
    #  The account ID endpoint mode to use. This can be one of the following values:
    #  * `preferred` - (default) Use the account ID endpoint if available, otherwise use the standard endpoint.
    #  * `disabled` - Never use the account ID endpoint, only use the standard endpoint.
    #  * `required` - Always use the account ID endpoint. If the account ID cannot be retrieved from credentials, an error is raised.
    # @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #  When true, the request will sleep until there is sufficient client side capacity to retry
    #  the request. When false, the request will raise a `CapacityNotAvailableError` and will
    #  not retry instead of sleeping.
    # @option options [#resolve(context)] :auth_resolver (AuthResolver.new)
    #  An object that resolves authentication schemes for request signing.
    # @option options [Array<String>] :auth_scheme_preference
    #  An ordered list of preferred authentication schemes to use when making a request.
    #  The items in the list must be a fully qualified scheme IDs, such as `smithy.api#httpBearerAuth`.
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
    #  The endpoint to send requests to.
    #  The endpoint should be a URI formatted like "http://example.com:123"'
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::ResourceGroups::EndpointProvider)
    #  An object that provides an endpoint to use for the request.
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
    #  The AWS region to connect to. The configured `:region` is used to determine the service `:endpoint`.
    #  When not provided, a default region is searched for in the following locations:
    #  * `Aws.config[:region]`
    #  * `ENV['AWS_REGION']`
    #  * `ENV['AWS_DEFAULT_REGION']`
    #  * `~/.aws/credentials` as `region` under a profile
    #  * `~/.aws/config` as `region` under a profile
    # @option options [Integer] :request_min_compression_size_bytes (10240)
    #  The minimum size in bytes that triggers compression for request bodies.
    #  The value must be non-negative integer value between 0 and 10,485,780 bytes inclusive.
    # @option options [#call(attempts)] :retry_backoff (Smithy::Client::Retry::ExponentialBackoff.new)
    #  A callable object that calculates a backoff delay for a retry attempt. The callable
    #  should accept a single argument, `attempts`, that represents the number of attempts
    #  that have been made. Used in the `standard` and `adaptive` retry strategies.
    # @option options :retry_base_delay (2)
    #  The base delay, in seconds, used to calculate the exponential backoff for
    #  retry attempts. This option is ignored if a custom `retry_backoff` is provided.
    #  Used in the `standard` and `adaptive` retry strategies.
    # @option options [Integer] :retry_max_attempts (3)
    #  The maximum number attempts that will be made for a single request, including
    #  the initial attempt. Used in the `standard` and `adaptive` retry strategies.
    # @option options :retry_max_delay (20)
    #  The maximum delay, in seconds, between retry attempts. This option is ignored
    #  if a custom `retry_backoff` is provided. Used in the `standard` and `adaptive`
    #  retry strategies.
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
    #  to return or errors to raise by calling {Smithy::Client::Stubs#stub_responses}.
    # @option options [Boolean] :use_dualstack_endpoint
    #  When set to `true`, dualstack enabled endpoints (with `.aws` TLD) will be used if available.
    #  This option can also be configured in the following locations:
    #  * `ENV['AWS_USE_DUALSTACK_ENDPOINT']`
    #  * `~/.aws/credentials` as `use_dualstack_endpoint` under a profile
    #  * `~/.aws/config` as `use_dualstack_endpoint` under a profile
    # @option options [Boolean] :use_fips_endpoint
    #  When set to `true`, FIPS compatible endpoints will be used if available.
    #  This option can also be configured in the following locations:
    #  * `ENV['AWS_USE_FIPS_ENDPOINT']`
    #  * `~/.aws/credentials` as `use_fips_endpoint` under a profile
    #  * `~/.aws/config` as `use_fips_endpoint` under a profile
    # @option options [Boolean] :validate_params (true)
    #  When `true`, request parameters are validated before sending the request.
    def initialize(*options)
      super
    end

    # <p>Cancels the specified tag-sync task. </p>
    #          <p>
    #             <b>Minimum permissions</b>
    #          </p>
    #          <p>To run this command, you must have the following permissions:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>resource-groups:CancelTagSyncTask</code> on the application group</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>resource-groups:DeleteGroup</code>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::CancelTagSyncTaskInput] params
    # @option params [String] :task_arn
    #   <p>The Amazon resource name (ARN) of the tag-sync task. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     task_arn: "TagSyncTaskArn", # required
    #   }
    #   options = {}
    #   response = client.cancel_tag_sync_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def cancel_tag_sync_task(params = {}, options = {})
      request = build_request(:cancel_tag_sync_task, params)
      request.send_request(options)
    end

    # <p>Creates a resource group with the specified name and description. You can optionally
    #             include either a resource query or a service configuration. For more information about
    #             constructing a resource query, see <a href="https://docs.aws.amazon.com/ARG/latest/userguide/getting_started-query.html">Build queries and groups in
    #                 Resource Groups</a> in the <i>Resource Groups User Guide</i>. For more information
    #             about service-linked groups and service configurations, see <a href="https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html">Service configurations for Resource Groups</a>.</p>
    #          <p>
    #             <b>Minimum permissions</b>
    #          </p>
    #          <p>To run this command, you must have the following permissions:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>resource-groups:CreateGroup</code>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::CreateGroupInput] params
    # @option params [String] :name
    #   <p>The name of the group, which is the identifier of the group in other operations. You
    #               can't change the name of a resource group after you create it. A resource group name can
    #               consist of letters, numbers, hyphens, periods, and underscores. The name cannot start
    #               with <code>AWS</code>, <code>aws</code>, or any other possible capitalization; these are
    #               reserved. A resource group name must be unique within each Amazon Web Services Region in your Amazon Web Services
    #               account.</p>
    # @option params [String] :description
    #   <p>The description of the resource group. Descriptions can consist of letters, numbers,
    #               hyphens, underscores, periods, and spaces.</p>
    # @option params [Types::ResourceQuery] :resource_query
    #   <p>The resource query that determines which Amazon Web Services resources are members of this group.
    #               For more information about resource queries, see <a href="https://docs.aws.amazon.com/ARG/latest/userguide/gettingstarted-query.html#gettingstarted-query-cli-tag">Create
    #                   a tag-based group in Resource Groups</a>. </p>
    #            <note>
    #               <p>A resource group can contain either a <code>ResourceQuery</code> or a
    #                       <code>Configuration</code>, but not both.</p>
    #            </note>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to add to the group. A tag is key-value pair string.</p>
    # @option params [Array<Types::GroupConfigurationItem>] :configuration
    #   <p>A configuration associates the resource group with an Amazon Web Services service and specifies how
    #               the service can interact with the resources in the group. A configuration is an array of
    #                   <a>GroupConfigurationItem</a> elements. For details about the syntax of
    #               service configurations, see <a href="https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html">Service configurations for Resource Groups</a>.</p>
    #            <note>
    #               <p>A resource group can contain either a <code>Configuration</code> or a
    #                       <code>ResourceQuery</code>, but not both.</p>
    #            </note>
    # @option params [Integer] :criticality
    #   <p>The critical rank of the application group on a scale of 1 to 10, with a 
    #               rank of 1 being the most critical, and a rank of 10 being least critical.</p>
    # @option params [String] :owner
    #   <p>A name, email address or other identifier for the person or group 
    #               who is considered as the owner of this application group within your organization. </p>
    # @option params [String] :display_name
    #   <p>The name of the application group, which you can change at any time. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "CreateGroupName", # required
    #     description: "Description",
    #     resource_query: {
    #       type: "TAG_FILTERS_1_0" # One of: ["TAG_FILTERS_1_0", "CLOUDFORMATION_STACK_1_0"], # required
    #       query: "Query", # required
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     configuration: [
    #       {
    #         type: "GroupConfigurationType", # required
    #         parameters: [
    #           {
    #             name: "GroupConfigurationParameterName", # required
    #             values: ["GroupConfigurationParameterValue"]
    #           }
    #         ]
    #       }
    #     ],
    #     criticality: 1,
    #     owner: "Owner",
    #     display_name: "DisplayName"
    #   }
    #   options = {}
    #   response = client.create_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     group: {
    #       group_arn: "GroupArnV2", # required
    #       name: "GroupName", # required
    #       description: "Description",
    #       criticality: 1,
    #       owner: "Owner",
    #       display_name: "DisplayName",
    #       application_tag: {
    #         "ApplicationTagKey" => "ApplicationArn"
    #       }
    #     },
    #     resource_query: {
    #       type: "TAG_FILTERS_1_0" # One of: ["TAG_FILTERS_1_0", "CLOUDFORMATION_STACK_1_0"], # required
    #       query: "Query", # required
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     group_configuration: {
    #       configuration: [
    #         {
    #           type: "GroupConfigurationType", # required
    #           parameters: [
    #             {
    #               name: "GroupConfigurationParameterName", # required
    #               values: ["GroupConfigurationParameterValue"]
    #             }
    #           ]
    #         }
    #       ],
    #       proposed_configuration: [
    #         {
    #           type: "GroupConfigurationType", # required
    #           parameters: [
    #             {
    #               name: "GroupConfigurationParameterName", # required
    #               values: ["GroupConfigurationParameterValue"]
    #             }
    #           ]
    #         }
    #       ],
    #       status: "UPDATING" # One of: ["UPDATING", "UPDATE_COMPLETE", "UPDATE_FAILED"],
    #       failure_reason: "GroupConfigurationFailureReason"
    #     }
    #   }
    # @return [Types::CreateGroupOutput]
    def create_group(params = {}, options = {})
      request = build_request(:create_group, params)
      request.send_request(options)
    end

    # <p>Deletes the specified resource group. Deleting a resource group does not delete any
    #             resources that are members of the group; it only deletes the group structure.</p>
    #          <p>
    #             <b>Minimum permissions</b>
    #          </p>
    #          <p>To run this command, you must have the following permissions:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>resource-groups:DeleteGroup</code>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::DeleteGroupInput] params
    # @option params [String] :group_name
    #   <p>Deprecated - don't use this parameter. Use <code>Group</code> instead.</p>
    # @option params [String] :group
    #   <p>The name or the Amazon resource name (ARN) of the resource group to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     group_name: "GroupName",
    #     group: "GroupStringV2"
    #   }
    #   options = {}
    #   response = client.delete_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     group: {
    #       group_arn: "GroupArnV2", # required
    #       name: "GroupName", # required
    #       description: "Description",
    #       criticality: 1,
    #       owner: "Owner",
    #       display_name: "DisplayName",
    #       application_tag: {
    #         "ApplicationTagKey" => "ApplicationArn"
    #       }
    #     }
    #   }
    # @return [Types::DeleteGroupOutput]
    def delete_group(params = {}, options = {})
      request = build_request(:delete_group, params)
      request.send_request(options)
    end

    # <p>Retrieves the current status of optional features in Resource Groups.</p>
    # @param [Hash, Smithy::Schema::EmptyStructure] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_account_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     account_settings: {
    #       group_lifecycle_events_desired_status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"],
    #       group_lifecycle_events_status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE", "IN_PROGRESS", "ERROR"],
    #       group_lifecycle_events_status_message: "GroupLifecycleEventsStatusMessage"
    #     }
    #   }
    # @return [Types::GetAccountSettingsOutput]
    def get_account_settings(params = {}, options = {})
      request = build_request(:get_account_settings, params)
      request.send_request(options)
    end

    # <p>Returns information about a specified resource group.</p>
    #          <p>
    #             <b>Minimum permissions</b>
    #          </p>
    #          <p>To run this command, you must have the following permissions:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>resource-groups:GetGroup</code>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::GetGroupInput] params
    # @option params [String] :group_name
    #   <p>Deprecated - don't use this parameter. Use <code>Group</code> instead.</p>
    # @option params [String] :group
    #   <p>The name or the Amazon resource name (ARN) of the resource group to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     group_name: "GroupName",
    #     group: "GroupStringV2"
    #   }
    #   options = {}
    #   response = client.get_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     group: {
    #       group_arn: "GroupArnV2", # required
    #       name: "GroupName", # required
    #       description: "Description",
    #       criticality: 1,
    #       owner: "Owner",
    #       display_name: "DisplayName",
    #       application_tag: {
    #         "ApplicationTagKey" => "ApplicationArn"
    #       }
    #     }
    #   }
    # @return [Types::GetGroupOutput]
    def get_group(params = {}, options = {})
      request = build_request(:get_group, params)
      request.send_request(options)
    end

    # <p>Retrieves the service configuration associated with the specified resource group. For
    #             details about the service configuration syntax, see <a href="https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html">Service configurations for Resource Groups</a>.</p>
    #          <p>
    #             <b>Minimum permissions</b>
    #          </p>
    #          <p>To run this command, you must have the following permissions:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>resource-groups:GetGroupConfiguration</code>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::GetGroupConfigurationInput] params
    # @option params [String] :group
    #   <p>The name or the Amazon resource name (ARN) of the resource group for which you want to retrive the service
    #               configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     group: "GroupString"
    #   }
    #   options = {}
    #   response = client.get_group_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     group_configuration: {
    #       configuration: [
    #         {
    #           type: "GroupConfigurationType", # required
    #           parameters: [
    #             {
    #               name: "GroupConfigurationParameterName", # required
    #               values: ["GroupConfigurationParameterValue"]
    #             }
    #           ]
    #         }
    #       ],
    #       proposed_configuration: [
    #         {
    #           type: "GroupConfigurationType", # required
    #           parameters: [
    #             {
    #               name: "GroupConfigurationParameterName", # required
    #               values: ["GroupConfigurationParameterValue"]
    #             }
    #           ]
    #         }
    #       ],
    #       status: "UPDATING" # One of: ["UPDATING", "UPDATE_COMPLETE", "UPDATE_FAILED"],
    #       failure_reason: "GroupConfigurationFailureReason"
    #     }
    #   }
    # @return [Types::GetGroupConfigurationOutput]
    def get_group_configuration(params = {}, options = {})
      request = build_request(:get_group_configuration, params)
      request.send_request(options)
    end

    # <p>Retrieves the resource query associated with the specified resource group. For more
    #             information about resource queries, see <a href="https://docs.aws.amazon.com/ARG/latest/userguide/gettingstarted-query.html#gettingstarted-query-cli-tag">Create
    #                 a tag-based group in Resource Groups</a>.</p>
    #          <p>
    #             <b>Minimum permissions</b>
    #          </p>
    #          <p>To run this command, you must have the following permissions:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>resource-groups:GetGroupQuery</code>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::GetGroupQueryInput] params
    # @option params [String] :group_name
    #   <p>Don't use this parameter. Use <code>Group</code> instead.</p>
    # @option params [String] :group
    #   <p>The name or the Amazon resource name (ARN) of the resource group to query.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     group_name: "GroupName",
    #     group: "GroupString"
    #   }
    #   options = {}
    #   response = client.get_group_query(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     group_query: {
    #       group_name: "GroupName", # required
    #       resource_query: { # required
    #         type: "TAG_FILTERS_1_0" # One of: ["TAG_FILTERS_1_0", "CLOUDFORMATION_STACK_1_0"], # required
    #         query: "Query", # required
    #       }
    #     }
    #   }
    # @return [Types::GetGroupQueryOutput]
    def get_group_query(params = {}, options = {})
      request = build_request(:get_group_query, params)
      request.send_request(options)
    end

    # <p>Returns information about a specified tag-sync task. </p>
    #          <p>
    #             <b>Minimum permissions</b>
    #          </p>
    #          <p>To run this command, you must have the following permissions:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>resource-groups:GetTagSyncTask</code> on the application group</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::GetTagSyncTaskInput] params
    # @option params [String] :task_arn
    #   <p>The Amazon resource name (ARN) of the tag-sync task. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     task_arn: "TagSyncTaskArn", # required
    #   }
    #   options = {}
    #   response = client.get_tag_sync_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     group_arn: "GroupArnV2",
    #     group_name: "GroupName",
    #     task_arn: "TagSyncTaskArn",
    #     tag_key: "TagKey",
    #     tag_value: "TagValue",
    #     resource_query: {
    #       type: "TAG_FILTERS_1_0" # One of: ["TAG_FILTERS_1_0", "CLOUDFORMATION_STACK_1_0"], # required
    #       query: "Query", # required
    #     },
    #     role_arn: "RoleArn",
    #     status: "ACTIVE" # One of: ["ACTIVE", "ERROR"],
    #     error_message: "ErrorMessage",
    #     created_at: Time.now
    #   }
    # @return [Types::GetTagSyncTaskOutput]
    def get_tag_sync_task(params = {}, options = {})
      request = build_request(:get_tag_sync_task, params)
      request.send_request(options)
    end

    # <p>Returns a list of tags that are associated with a resource group, specified by an
    #             Amazon resource name (ARN).</p>
    #          <p>
    #             <b>Minimum permissions</b>
    #          </p>
    #          <p>To run this command, you must have the following permissions:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>resource-groups:GetTags</code>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::GetTagsInput] params
    # @option params [String] :arn
    #   <p>The Amazon resource name (ARN) of the resource group whose tags you want to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "GroupArnV2", # required
    #   }
    #   options = {}
    #   response = client.get_tags(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "GroupArnV2",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::GetTagsOutput]
    def get_tags(params = {}, options = {})
      request = build_request(:get_tags, params)
      request.send_request(options)
    end

    # <p>Adds the specified resources to the specified group.</p>
    #          <important>
    #             <p>You can only use this operation with the following groups:</p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <code>AWS::EC2::HostManagement</code>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <code>AWS::EC2::CapacityReservationPool</code>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <code>AWS::ResourceGroups::ApplicationGroup</code>
    #                   </p>
    #                </li>
    #             </ul>
    #             <p>Other resource group types and resource types are not currently supported by this
    #                 operation.</p>
    #          </important>
    #          <p>
    #             <b>Minimum permissions</b>
    #          </p>
    #          <p>To run this command, you must have the following permissions:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>resource-groups:GroupResources</code>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::GroupResourcesInput] params
    # @option params [String] :group
    #   <p>The name or the Amazon resource name (ARN) of the resource group to add resources to.</p>
    # @option params [Array<String>] :resource_arns
    #   <p>The list of Amazon resource names (ARNs) of the resources to be added to the group. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     group: "GroupStringV2", # required
    #     resource_arns: ["ResourceArn"], # required
    #   }
    #   options = {}
    #   response = client.group_resources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     succeeded: ["ResourceArn"],
    #     failed: [
    #       {
    #         resource_arn: "ResourceArn",
    #         error_message: "ErrorMessage",
    #         error_code: "ErrorCode"
    #       }
    #     ],
    #     pending: [
    #       {
    #         resource_arn: "ResourceArn"
    #       }
    #     ]
    #   }
    # @return [Types::GroupResourcesOutput]
    def group_resources(params = {}, options = {})
      request = build_request(:group_resources, params)
      request.send_request(options)
    end

    # <p>Returns a list of Amazon resource names (ARNs) of the resources that are members of a specified resource
    #             group.</p>
    #          <p>
    #             <b>Minimum permissions</b>
    #          </p>
    #          <p>To run this command, you must have the following permissions:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>resource-groups:ListGroupResources</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>cloudformation:DescribeStacks</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>cloudformation:ListStackResources</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>tag:GetResources</code>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::ListGroupResourcesInput] params
    # @option params [String] :group_name
    #   <important>
    #               <p>
    #                  <i>
    #                     <b>Deprecated - don't use this parameter. Use the
    #                               <code>Group</code> request field instead.</b>
    #                  </i>
    #               </p>
    #            </important>
    # @option params [String] :group
    #   <p>The name or the Amazon resource name (ARN) of the resource group. </p>
    # @option params [Array<Types::ResourceFilter>] :filters
    #   <p>Filters, formatted as <a>ResourceFilter</a> objects, that you want to apply
    #               to a <code>ListGroupResources</code> operation. Filters the results to include only
    #               those of the specified resource types.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>resource-type</code> - Filter resources by their type. Specify up to
    #                       five resource types in the format <code>AWS::ServiceCode::ResourceType</code>.
    #                       For example, <code>AWS::EC2::Instance</code>, or <code>AWS::S3::Bucket</code>.
    #                   </p>
    #               </li>
    #            </ul>
    #            <p>When you specify a <code>resource-type</code> filter for
    #                   <code>ListGroupResources</code>, Resource Groups validates your filter resource types
    #               against the types that are defined in the query associated with the group. For example,
    #               if a group contains only S3 buckets because its query specifies only that resource type,
    #               but your <code>resource-type</code> filter includes EC2 instances, AWS Resource Groups does not
    #               filter for EC2 instances. In this case, a <code>ListGroupResources</code> request
    #               returns a <code>BadRequestException</code> error with a message similar to the
    #               following:</p>
    #            <p>
    #               <code>The resource types specified as filters in the request are not
    #               valid.</code>
    #            </p>
    #            <p>The error includes a list of resource types that failed the validation because they
    #               are not part of the query associated with the group. This validation doesn't occur when
    #               the group query specifies <code>AWS::AllSupported</code>, because a group based on such
    #               a query can contain any of the allowed resource types for the query type (tag-based or
    #               Amazon CloudFront stack-based queries).</p>
    # @option params [Integer] :max_results
    #   <p>The total number of results that you want included on each page of the 
    #   response. If you do not include this parameter, it defaults to a value that is specific to the 
    #   operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> 
    #   response element is present and has a value (is not null). Include that value as the 
    #   <code>NextToken</code> request parameter in the next call to the operation to get the next part 
    #   of the results. Note that the service might return fewer results than the maximum even when there 
    #   are more results available. You should check <code>NextToken</code> after every operation to 
    #   ensure that you receive all of the results.</p>
    # @option params [String] :next_token
    #   <p>The parameter for receiving additional results if you receive a
    #   <code>NextToken</code> response in a previous request. A <code>NextToken</code> response 
    #   indicates that more output is available. Set this parameter to the value provided by a previous 
    #   call's <code>NextToken</code> response to indicate where the output should continue from.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     group_name: "GroupName",
    #     group: "GroupStringV2",
    #     filters: [
    #       {
    #         name: "resource-type" # One of: ["resource-type"], # required
    #         values: ["ResourceFilterValue"], # required
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_group_resources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resources: [
    #       {
    #         identifier: {
    #           resource_arn: "ResourceArn",
    #           resource_type: "ResourceType"
    #         },
    #         status: {
    #           name: "PENDING" # One of: ["PENDING"]
    #         }
    #       }
    #     ],
    #     resource_identifiers: [
    #       {
    #         resource_arn: "ResourceArn",
    #         resource_type: "ResourceType"
    #       }
    #     ],
    #     next_token: "NextToken",
    #     query_errors: [
    #       {
    #         error_code: "CLOUDFORMATION_STACK_INACTIVE" # One of: ["CLOUDFORMATION_STACK_INACTIVE", "CLOUDFORMATION_STACK_NOT_EXISTING", "CLOUDFORMATION_STACK_UNASSUMABLE_ROLE", "RESOURCE_TYPE_NOT_SUPPORTED"],
    #         message: "QueryErrorMessage"
    #       }
    #     ]
    #   }
    # @return [Types::ListGroupResourcesOutput]
    def list_group_resources(params = {}, options = {})
      request = build_request(:list_group_resources, params)
      request.send_request(options)
    end

    # <p>Returns the status of the last grouping or ungrouping action for 
    #             each resource in the specified application group. </p>
    # @param [Hash, Types::ListGroupingStatusesInput] params
    # @option params [String] :group
    #   <p>The application group identifier, expressed as an Amazon resource name (ARN) or the application group name. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of resources and their statuses returned in the 
    #               response. </p>
    # @option params [Array<Types::ListGroupingStatusesFilter>] :filters
    #   <p>The filter name and value pair that is used to return more 
    #               specific results from a list of resources. </p>
    # @option params [String] :next_token
    #   <p>The parameter for receiving additional results if you receive a 
    #               <code>NextToken</code> response in a previous request. A <code>NextToken</code> 
    #               response indicates that more output is available. Set this parameter to the 
    #               value provided by a previous call's <code>NextToken</code> response to indicate 
    #               where the output should continue from. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     group: "GroupStringV2", # required
    #     max_results: 1,
    #     filters: [
    #       {
    #         name: "status" # One of: ["status", "resource-arn"], # required
    #         values: ["ListGroupingStatusesFilterValue"], # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_grouping_statuses(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     group: "GroupStringV2",
    #     grouping_statuses: [
    #       {
    #         resource_arn: "ResourceArn",
    #         action: "GROUP" # One of: ["GROUP", "UNGROUP"],
    #         status: "SUCCESS" # One of: ["SUCCESS", "FAILED", "IN_PROGRESS", "SKIPPED"],
    #         error_message: "ErrorMessage",
    #         error_code: "ErrorCode",
    #         updated_at: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListGroupingStatusesOutput]
    def list_grouping_statuses(params = {}, options = {})
      request = build_request(:list_grouping_statuses, params)
      request.send_request(options)
    end

    # <p>Returns a list of existing Resource Groups in your account.</p>
    #          <p>
    #             <b>Minimum permissions</b>
    #          </p>
    #          <p>To run this command, you must have the following permissions:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>resource-groups:ListGroups</code>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::ListGroupsInput] params
    # @option params [Array<Types::GroupFilter>] :filters
    #   <p>Filters, formatted as <a>GroupFilter</a> objects, that you want to apply to
    #               a <code>ListGroups</code> operation.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>resource-type</code> - Filter the results to include only those resource groups that have the specified
    #                       resource type in their <code>ResourceTypeFilter</code>. For example, <code>AWS::EC2::Instance</code> would
    #                       return any resource group with a <code>ResourceTypeFilter</code> that includes
    #                       <code>AWS::EC2::Instance</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>configuration-type</code> - Filter the results to include only those
    #                       groups that have the specified configuration types attached. The current
    #                       supported values are:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>AWS::ResourceGroups::ApplicationGroup</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>AWS::AppRegistry::Application</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>AWS::AppRegistry::ApplicationResourceGroup</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>AWS::CloudFormation::Stack</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>AWS::EC2::CapacityReservationPool</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>AWS::EC2::HostManagement</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>AWS::NetworkFirewall::RuleGroup</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    # @option params [Integer] :max_results
    #   <p>The total number of results that you want included on each page of the 
    #   response. If you do not include this parameter, it defaults to a value that is specific to the 
    #   operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> 
    #   response element is present and has a value (is not null). Include that value as the 
    #   <code>NextToken</code> request parameter in the next call to the operation to get the next part 
    #   of the results. Note that the service might return fewer results than the maximum even when there 
    #   are more results available. You should check <code>NextToken</code> after every operation to 
    #   ensure that you receive all of the results.</p>
    # @option params [String] :next_token
    #   <p>The parameter for receiving additional results if you receive a
    #   <code>NextToken</code> response in a previous request. A <code>NextToken</code> response 
    #   indicates that more output is available. Set this parameter to the value provided by a previous 
    #   call's <code>NextToken</code> response to indicate where the output should continue from.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: [
    #       {
    #         name: "resource-type" # One of: ["resource-type", "configuration-type", "owner", "display-name", "criticality"], # required
    #         values: ["GroupFilterValue"], # required
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     group_identifiers: [
    #       {
    #         group_name: "GroupName",
    #         group_arn: "GroupArn",
    #         description: "Description",
    #         criticality: 1,
    #         owner: "Owner",
    #         display_name: "DisplayName"
    #       }
    #     ],
    #     groups: [
    #       {
    #         group_arn: "GroupArnV2", # required
    #         name: "GroupName", # required
    #         description: "Description",
    #         criticality: 1,
    #         owner: "Owner",
    #         display_name: "DisplayName",
    #         application_tag: {
    #           "ApplicationTagKey" => "ApplicationArn"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListGroupsOutput]
    def list_groups(params = {}, options = {})
      request = build_request(:list_groups, params)
      request.send_request(options)
    end

    # <p>Returns a list of tag-sync tasks. </p>
    #          <p>
    #             <b>Minimum permissions</b>
    #          </p>
    #          <p>To run this command, you must have the following permissions:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>resource-groups:ListTagSyncTasks</code> with the group passed in the filters as the resource 
    #                     or * if using no filters </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::ListTagSyncTasksInput] params
    # @option params [Array<Types::ListTagSyncTasksFilter>] :filters
    #   <p>The Amazon resource name (ARN) or name of the application group for which you want to return a 
    #               list of tag-sync tasks. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be included in the response. </p>
    # @option params [String] :next_token
    #   <p>The parameter for receiving additional results if you receive a 
    #               <code>NextToken</code> response in a previous request. A <code>NextToken</code> 
    #               response indicates that more output is available. Set this parameter to the 
    #               value provided by a previous call's <code>NextToken</code> response to indicate 
    #               where the output should continue from. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: [
    #       {
    #         group_arn: "GroupArnV2",
    #         group_name: "GroupName"
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_tag_sync_tasks(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tag_sync_tasks: [
    #       {
    #         group_arn: "GroupArnV2",
    #         group_name: "GroupName",
    #         task_arn: "TagSyncTaskArn",
    #         tag_key: "TagKey",
    #         tag_value: "TagValue",
    #         resource_query: {
    #           type: "TAG_FILTERS_1_0" # One of: ["TAG_FILTERS_1_0", "CLOUDFORMATION_STACK_1_0"], # required
    #           query: "Query", # required
    #         },
    #         role_arn: "RoleArn",
    #         status: "ACTIVE" # One of: ["ACTIVE", "ERROR"],
    #         error_message: "ErrorMessage",
    #         created_at: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListTagSyncTasksOutput]
    def list_tag_sync_tasks(params = {}, options = {})
      request = build_request(:list_tag_sync_tasks, params)
      request.send_request(options)
    end

    # <p>Attaches a service configuration to the specified group. This occurs asynchronously,
    #             and can take time to complete. You can use <a>GetGroupConfiguration</a> to
    #             check the status of the update.</p>
    #          <p>
    #             <b>Minimum permissions</b>
    #          </p>
    #          <p>To run this command, you must have the following permissions:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>resource-groups:PutGroupConfiguration</code>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::PutGroupConfigurationInput] params
    # @option params [String] :group
    #   <p>The name or Amazon resource name (ARN) of the resource group with the configuration that you want to
    #               update.</p>
    # @option params [Array<Types::GroupConfigurationItem>] :configuration
    #   <p>The new configuration to associate with the specified group. A configuration
    #               associates the resource group with an Amazon Web Services service and specifies how the service can
    #               interact with the resources in the group. A configuration is an array of <a>GroupConfigurationItem</a> elements.</p>
    #            <p>For information about the syntax of a service configuration, see <a href="https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html">Service configurations for
    #                   Resource Groups</a>.</p>
    #            <note>
    #               <p>A resource group can contain either a <code>Configuration</code> or a
    #                       <code>ResourceQuery</code>, but not both.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     group: "GroupString",
    #     configuration: [
    #       {
    #         type: "GroupConfigurationType", # required
    #         parameters: [
    #           {
    #             name: "GroupConfigurationParameterName", # required
    #             values: ["GroupConfigurationParameterValue"]
    #           }
    #         ]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.put_group_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutGroupConfigurationOutput]
    def put_group_configuration(params = {}, options = {})
      request = build_request(:put_group_configuration, params)
      request.send_request(options)
    end

    # <p>Returns a list of Amazon Web Services resource identifiers that matches the specified query. The
    #             query uses the same format as a resource query in a <a>CreateGroup</a> or
    #                 <a>UpdateGroupQuery</a> operation.</p>
    #          <p>
    #             <b>Minimum permissions</b>
    #          </p>
    #          <p>To run this command, you must have the following permissions:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>resource-groups:SearchResources</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>cloudformation:DescribeStacks</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>cloudformation:ListStackResources</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>tag:GetResources</code>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::SearchResourcesInput] params
    # @option params [Types::ResourceQuery] :resource_query
    #   <p>The search query, using the same formats that are supported for resource group
    #               definition. For more information, see <a>CreateGroup</a>.</p>
    # @option params [Integer] :max_results
    #   <p>The total number of results that you want included on each page of the 
    #   response. If you do not include this parameter, it defaults to a value that is specific to the 
    #   operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> 
    #   response element is present and has a value (is not null). Include that value as the 
    #   <code>NextToken</code> request parameter in the next call to the operation to get the next part 
    #   of the results. Note that the service might return fewer results than the maximum even when there 
    #   are more results available. You should check <code>NextToken</code> after every operation to 
    #   ensure that you receive all of the results.</p>
    # @option params [String] :next_token
    #   <p>The parameter for receiving additional results if you receive a
    #   <code>NextToken</code> response in a previous request. A <code>NextToken</code> response 
    #   indicates that more output is available. Set this parameter to the value provided by a previous 
    #   call's <code>NextToken</code> response to indicate where the output should continue from.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_query: { # required
    #       type: "TAG_FILTERS_1_0" # One of: ["TAG_FILTERS_1_0", "CLOUDFORMATION_STACK_1_0"], # required
    #       query: "Query", # required
    #     },
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.search_resources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_identifiers: [
    #       {
    #         resource_arn: "ResourceArn",
    #         resource_type: "ResourceType"
    #       }
    #     ],
    #     next_token: "NextToken",
    #     query_errors: [
    #       {
    #         error_code: "CLOUDFORMATION_STACK_INACTIVE" # One of: ["CLOUDFORMATION_STACK_INACTIVE", "CLOUDFORMATION_STACK_NOT_EXISTING", "CLOUDFORMATION_STACK_UNASSUMABLE_ROLE", "RESOURCE_TYPE_NOT_SUPPORTED"],
    #         message: "QueryErrorMessage"
    #       }
    #     ]
    #   }
    # @return [Types::SearchResourcesOutput]
    def search_resources(params = {}, options = {})
      request = build_request(:search_resources, params)
      request.send_request(options)
    end

    # <p>Creates a new tag-sync task to onboard and sync resources tagged with a specific tag key-value pair to an 
    #             application. To start a tag-sync task, you need a <a href="https://docs.aws.amazon.com/servicecatalog/latest/arguide/app-tag-sync.html#tag-sync-role">resource tagging role</a>. 
    #             The resource tagging role grants permissions to tag and untag applications resources and must include a 
    #         trust policy that allows Resource Groups to assume the role and perform resource tagging tasks on your behalf. </p>
    #          <p>For instructions on creating a tag-sync task, see <a href="https://docs.aws.amazon.com/servicecatalog/latest/arguide/app-tag-sync.html#create-tag-sync">Create a tag-sync 
    #             using the Resource Groups API</a> in the <i>Amazon Web Services Service Catalog AppRegistry Administrator Guide</i>.  </p>
    #          <p>
    #             <b>Minimum permissions</b>
    #          </p>
    #          <p>To run this command, you must have the following permissions:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>resource-groups:StartTagSyncTask</code> on the application group</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>resource-groups:CreateGroup</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>iam:PassRole</code> on the role provided in the request </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::StartTagSyncTaskInput] params
    # @option params [String] :group
    #   <p>The Amazon resource name (ARN) or name of the application group for which you want to create a tag-sync task. </p>
    # @option params [String] :tag_key
    #   <p>The tag key. Resources tagged with this tag key-value pair will be added to 
    #               the application. If a resource with this tag is later untagged, the tag-sync task removes
    #               the resource from the application. </p>
    #            <p>When using the <code>TagKey</code> parameter, you must also specify the <code>TagValue</code> parameter. If you specify a tag key-value pair, 
    #               you can't use the <code>ResourceQuery</code> parameter. </p>
    # @option params [String] :tag_value
    #   <p>The tag value. Resources tagged with this tag key-value pair will be added to 
    #               the application. If a resource with this tag is later untagged, the tag-sync task removes
    #               the resource from the application. </p>
    #            <p>When using the <code>TagValue</code> parameter, you must also specify the <code>TagKey</code> parameter. If you specify a tag key-value pair, 
    #               you can't use the <code>ResourceQuery</code> parameter. </p>
    # @option params [Types::ResourceQuery] :resource_query
    #   <p>The query you can use to create the tag-sync task. With this method, all resources matching the query 
    #               are added to the specified application group. A
    #               <code>ResourceQuery</code> specifies both a query <code>Type</code> and a
    #                   <code>Query</code> string as JSON string objects. For more information on defining a resource query for a 
    #                   tag-sync task, see the tag-based query type in <a href="https://docs.aws.amazon.com/ARG/latest/userguide/gettingstarted-query.html#getting_started-query_types">
    #                       Types of resource group queries</a> in <i>Resource Groups User Guide</i>. </p>
    #            <p>When using the <code>ResourceQuery</code> parameter, you cannot use the <code>TagKey</code> and <code>TagValue</code> parameters. </p>
    #            <p>When you combine all of the elements together into a single string, any double quotes
    #               that are embedded inside another double quote pair must be escaped by preceding the
    #               embedded double quote with a backslash character (\). For example, a complete
    #               <code>ResourceQuery</code> parameter must be formatted like the following CLI
    #               parameter example:</p>
    #            <p>
    #               <code>--resource-query
    #               '{"Type":"TAG_FILTERS_1_0","Query":"{\"ResourceTypeFilters\":[\"AWS::AllSupported\"],\"TagFilters\":[{\"Key\":\"Stage\",\"Values\":[\"Test\"]}]}"}'</code>
    #            </p>
    #            <p>In the preceding example, all of the double quote characters in the value part of the
    #               <code>Query</code> element must be escaped because the value itself is surrounded by
    #               double quotes. For more information, see <a href="https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-parameters-quoting-strings.html">Quoting
    #                   strings</a> in the <i>Command Line Interface User Guide</i>.</p>
    #            <p>For the complete list of resource types that you can use in the array value for
    #               <code>ResourceTypeFilters</code>, see <a href="https://docs.aws.amazon.com/ARG/latest/userguide/supported-resources.html">Resources
    #                   you can use with Resource Groups and Tag Editor</a> in the
    #               <i>Resource Groups User Guide</i>. For example:</p>
    #            <p>
    #               <code>"ResourceTypeFilters":["AWS::S3::Bucket", "AWS::EC2::Instance"]</code>
    #            </p>
    # @option params [String] :role_arn
    #   <p>The Amazon resource name (ARN) of the role assumed by the service to tag and untag resources on your behalf.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     group: "GroupStringV2", # required
    #     tag_key: "TagKey",
    #     tag_value: "TagValue",
    #     resource_query: {
    #       type: "TAG_FILTERS_1_0" # One of: ["TAG_FILTERS_1_0", "CLOUDFORMATION_STACK_1_0"], # required
    #       query: "Query", # required
    #     },
    #     role_arn: "RoleArn", # required
    #   }
    #   options = {}
    #   response = client.start_tag_sync_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     group_arn: "GroupArnV2",
    #     group_name: "GroupName",
    #     task_arn: "TagSyncTaskArn",
    #     tag_key: "TagKey",
    #     tag_value: "TagValue",
    #     resource_query: {
    #       type: "TAG_FILTERS_1_0" # One of: ["TAG_FILTERS_1_0", "CLOUDFORMATION_STACK_1_0"], # required
    #       query: "Query", # required
    #     },
    #     role_arn: "RoleArn"
    #   }
    # @return [Types::StartTagSyncTaskOutput]
    def start_tag_sync_task(params = {}, options = {})
      request = build_request(:start_tag_sync_task, params)
      request.send_request(options)
    end

    # <p>Adds tags to a resource group with the specified Amazon resource name (ARN). Existing tags on a resource
    #             group are not changed if they are not specified in the request parameters.</p>
    #          <important>
    #             <p>Do not store personally identifiable information (PII) or other confidential or
    #                 sensitive information in tags. We use tags to provide you with billing and
    #                 administration services. Tags are not intended to be used for private or sensitive
    #                 data.</p>
    #          </important>
    #          <p>
    #             <b>Minimum permissions</b>
    #          </p>
    #          <p>To run this command, you must have the following permissions:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>resource-groups:Tag</code>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::TagInput] params
    # @option params [String] :arn
    #   <p>The Amazon resource name (ARN) of the resource group to which to add tags.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to add to the specified resource group. A tag is a string-to-string map of
    #               key-value pairs.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "GroupArnV2", # required
    #     tags: { # required
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.tag(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "GroupArnV2",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::TagOutput]
    def tag(params = {}, options = {})
      request = build_request(:tag, params)
      request.send_request(options)
    end

    # <p>Removes the specified resources from the specified group. This operation works only
    #             with static groups that you populated using the <a>GroupResources</a>
    #             operation. It doesn't work with any resource groups that are automatically populated by
    #             tag-based or CloudFormation stack-based queries.</p>
    #          <p>
    #             <b>Minimum permissions</b>
    #          </p>
    #          <p>To run this command, you must have the following permissions:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>resource-groups:UngroupResources</code>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::UngroupResourcesInput] params
    # @option params [String] :group
    #   <p>The name or the Amazon resource name (ARN) of the resource group from which to remove the resources.</p>
    # @option params [Array<String>] :resource_arns
    #   <p>The Amazon resource names (ARNs) of the resources to be removed from the group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     group: "GroupStringV2", # required
    #     resource_arns: ["ResourceArn"], # required
    #   }
    #   options = {}
    #   response = client.ungroup_resources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     succeeded: ["ResourceArn"],
    #     failed: [
    #       {
    #         resource_arn: "ResourceArn",
    #         error_message: "ErrorMessage",
    #         error_code: "ErrorCode"
    #       }
    #     ],
    #     pending: [
    #       {
    #         resource_arn: "ResourceArn"
    #       }
    #     ]
    #   }
    # @return [Types::UngroupResourcesOutput]
    def ungroup_resources(params = {}, options = {})
      request = build_request(:ungroup_resources, params)
      request.send_request(options)
    end

    # <p>Deletes tags from a specified resource group.</p>
    #          <p>
    #             <b>Minimum permissions</b>
    #          </p>
    #          <p>To run this command, you must have the following permissions:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>resource-groups:Untag</code>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::UntagInput] params
    # @option params [String] :arn
    #   <p>The Amazon resource name (ARN) of the resource group from which to remove tags. The command removed both the
    #               specified keys and any values associated with those keys.</p>
    # @option params [Array<String>] :keys
    #   <p>The keys of the tags to be removed.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "GroupArnV2", # required
    #     keys: ["TagKey"], # required
    #   }
    #   options = {}
    #   response = client.untag(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "GroupArnV2",
    #     keys: ["TagKey"]
    #   }
    # @return [Types::UntagOutput]
    def untag(params = {}, options = {})
      request = build_request(:untag, params)
      request.send_request(options)
    end

    # <p>Turns on or turns off optional features in Resource Groups.</p>
    #          <p>The preceding example shows that the request to turn on group lifecycle events is
    #                 <code>IN_PROGRESS</code>. You can call the <a>GetAccountSettings</a>
    #             operation to check for completion by looking for <code>GroupLifecycleEventsStatus</code>
    #             to change to <code>ACTIVE</code>.</p>
    # @param [Hash, Types::UpdateAccountSettingsInput] params
    # @option params [String] :group_lifecycle_events_desired_status
    #   <p>Specifies whether you want to turn <a href="https://docs.aws.amazon.com/ARG/latest/userguide/monitor-groups.html">group lifecycle events</a> on or off.</p>
    #            <p>You can't turn on group lifecycle events if your resource groups quota is greater than 2,000. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     group_lifecycle_events_desired_status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"]
    #   }
    #   options = {}
    #   response = client.update_account_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     account_settings: {
    #       group_lifecycle_events_desired_status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"],
    #       group_lifecycle_events_status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE", "IN_PROGRESS", "ERROR"],
    #       group_lifecycle_events_status_message: "GroupLifecycleEventsStatusMessage"
    #     }
    #   }
    # @return [Types::UpdateAccountSettingsOutput]
    def update_account_settings(params = {}, options = {})
      request = build_request(:update_account_settings, params)
      request.send_request(options)
    end

    # <p>Updates the description for an existing group. You cannot update the name of a
    #             resource group.</p>
    #          <p>
    #             <b>Minimum permissions</b>
    #          </p>
    #          <p>To run this command, you must have the following permissions:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>resource-groups:UpdateGroup</code>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::UpdateGroupInput] params
    # @option params [String] :group_name
    #   <p>Don't use this parameter. Use <code>Group</code> instead.</p>
    # @option params [String] :group
    #   <p>The name or the ARN of the resource group to update.</p>
    # @option params [String] :description
    #   <p>The new description that you want to update the resource group with. Descriptions can
    #               contain letters, numbers, hyphens, underscores, periods, and spaces.</p>
    # @option params [Integer] :criticality
    #   <p>The critical rank of the application group on a scale of 1 to 10, with a 
    #               rank of 1 being the most critical, and a rank of 10 being least critical.</p>
    # @option params [String] :owner
    #   <p>A name, email address or other identifier for the person or group 
    #               who is considered as the owner of this application group within your organization. </p>
    # @option params [String] :display_name
    #   <p>The name of the application group, which you can change at any time. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     group_name: "GroupName",
    #     group: "GroupStringV2",
    #     description: "Description",
    #     criticality: 1,
    #     owner: "Owner",
    #     display_name: "DisplayName"
    #   }
    #   options = {}
    #   response = client.update_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     group: {
    #       group_arn: "GroupArnV2", # required
    #       name: "GroupName", # required
    #       description: "Description",
    #       criticality: 1,
    #       owner: "Owner",
    #       display_name: "DisplayName",
    #       application_tag: {
    #         "ApplicationTagKey" => "ApplicationArn"
    #       }
    #     }
    #   }
    # @return [Types::UpdateGroupOutput]
    def update_group(params = {}, options = {})
      request = build_request(:update_group, params)
      request.send_request(options)
    end

    # <p>Updates the resource query of a group. For more information about resource queries,
    #             see <a href="https://docs.aws.amazon.com/ARG/latest/userguide/gettingstarted-query.html#gettingstarted-query-cli-tag">Create a tag-based group in Resource Groups</a>.</p>
    #          <p>
    #             <b>Minimum permissions</b>
    #          </p>
    #          <p>To run this command, you must have the following permissions:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>resource-groups:UpdateGroupQuery</code>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::UpdateGroupQueryInput] params
    # @option params [String] :group_name
    #   <p>Don't use this parameter. Use <code>Group</code> instead.</p>
    # @option params [String] :group
    #   <p>The name or the Amazon resource name (ARN) of the resource group to query.</p>
    # @option params [Types::ResourceQuery] :resource_query
    #   <p>The resource query to determine which Amazon Web Services resources are members of this resource
    #               group.</p>
    #            <note>
    #               <p>A resource group can contain either a <code>Configuration</code> or a
    #                       <code>ResourceQuery</code>, but not both.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     group_name: "GroupName",
    #     group: "GroupString",
    #     resource_query: { # required
    #       type: "TAG_FILTERS_1_0" # One of: ["TAG_FILTERS_1_0", "CLOUDFORMATION_STACK_1_0"], # required
    #       query: "Query", # required
    #     }
    #   }
    #   options = {}
    #   response = client.update_group_query(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     group_query: {
    #       group_name: "GroupName", # required
    #       resource_query: { # required
    #         type: "TAG_FILTERS_1_0" # One of: ["TAG_FILTERS_1_0", "CLOUDFORMATION_STACK_1_0"], # required
    #         query: "Query", # required
    #       }
    #     }
    #   }
    # @return [Types::UpdateGroupQueryOutput]
    def update_group_query(params = {}, options = {})
      request = build_request(:update_group_query, params)
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
      context[:gem_name] = 'aws-sdk-resourcegroups'
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
