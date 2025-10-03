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
require 'aws-sdk-core/plugins/sigv4'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/json_rpc_protocol'

module Aws::SWF
  # An API client for Aws::SWF.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::SimpleWorkflowService

    add_plugin(::Aws::SWF::Plugins::Endpoint)
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
    #  Custom Endpoint
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::SWF::EndpointProvider)
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

    # <p>Returns the number of closed workflow executions within the given domain that meet the
    #       specified filtering criteria.</p>
    #          <note>
    #             <p>This operation is eventually consistent. The results are best effort and may not
    #         exactly reflect recent updates and changes.</p>
    #          </note>
    #          <p>
    #             <b>Access Control</b>
    #          </p>
    #          <p>You can use IAM policies to control this action's access to Amazon SWF resources as
    #       follows:</p>
    #          <ul>
    #             <li>
    #                <p>Use a <code>Resource</code> element with the domain name to limit the action to
    #           only specified domains.</p>
    #             </li>
    #             <li>
    #                <p>Use an <code>Action</code> element to allow or deny permission to call this
    #           action.</p>
    #             </li>
    #             <li>
    #                <p>Constrain the following parameters by using a <code>Condition</code> element with
    #           the appropriate keys.</p>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <code>tagFilter.tag</code>: String constraint. The key is
    #                 <code>swf:tagFilter.tag</code>.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>typeFilter.name</code>: String constraint. The key is
    #                 <code>swf:typeFilter.name</code>.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>typeFilter.version</code>: String constraint. The key is
    #                 <code>swf:typeFilter.version</code>.</p>
    #                   </li>
    #                </ul>
    #             </li>
    #          </ul>
    #          <p>If the caller doesn't have sufficient permissions to invoke the action, or the
    #       parameter values fall outside the specified constraints, the action fails. The associated
    #       event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>.
    #       For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF
    #         Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    # @param [Hash, Types::CountClosedWorkflowExecutionsInput] params
    # @option params [String] :domain
    #   <p>The name of the domain containing the workflow executions to count.</p>
    # @option params [Types::ExecutionTimeFilter] :start_time_filter
    #   <p>If specified, only workflow executions that meet the start time criteria of the filter
    #         are counted.</p>
    #            <note>
    #               <p>
    #                  <code>startTimeFilter</code> and <code>closeTimeFilter</code> are mutually exclusive. You
    #           must specify one of these in a request but not both.</p>
    #            </note>
    # @option params [Types::ExecutionTimeFilter] :close_time_filter
    #   <p>If specified, only workflow executions that meet the close time criteria of the filter
    #         are counted.</p>
    #            <note>
    #               <p>
    #                  <code>startTimeFilter</code> and <code>closeTimeFilter</code> are mutually exclusive. You
    #           must specify one of these in a request but not both.</p>
    #            </note>
    # @option params [Types::WorkflowExecutionFilter] :execution_filter
    #   <p>If specified, only workflow executions matching the <code>WorkflowId</code> in the
    #         filter are counted.</p>
    #            <note>
    #               <p>
    #                  <code>closeStatusFilter</code>, <code>executionFilter</code>, <code>typeFilter</code> and
    #             <code>tagFilter</code> are mutually exclusive. You can specify at most one of these in a
    #           request.</p>
    #            </note>
    # @option params [Types::WorkflowTypeFilter] :type_filter
    #   <p>If specified, indicates the type of the workflow executions to be counted.</p>
    #            <note>
    #               <p>
    #                  <code>closeStatusFilter</code>, <code>executionFilter</code>, <code>typeFilter</code> and
    #             <code>tagFilter</code> are mutually exclusive. You can specify at most one of these in a
    #           request.</p>
    #            </note>
    # @option params [Types::TagFilter] :tag_filter
    #   <p>If specified, only executions that have a tag that matches the filter are
    #         counted.</p>
    #            <note>
    #               <p>
    #                  <code>closeStatusFilter</code>, <code>executionFilter</code>, <code>typeFilter</code> and
    #             <code>tagFilter</code> are mutually exclusive. You can specify at most one of these in a
    #           request.</p>
    #            </note>
    # @option params [Types::CloseStatusFilter] :close_status_filter
    #   <p>If specified, only workflow executions that match this close status are counted. This
    #         filter has an affect only if <code>executionStatus</code> is specified as
    #         <code>CLOSED</code>.</p>
    #            <note>
    #               <p>
    #                  <code>closeStatusFilter</code>, <code>executionFilter</code>, <code>typeFilter</code> and
    #             <code>tagFilter</code> are mutually exclusive. You can specify at most one of these in a
    #           request.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain: "DomainName", # required
    #     start_time_filter: {
    #       oldest_date: Time.now, # required
    #       latest_date: Time.now
    #     },
    #     close_time_filter: {
    #       oldest_date: Time.now, # required
    #       latest_date: Time.now
    #     },
    #     execution_filter: {
    #       workflow_id: "WorkflowId", # required
    #     },
    #     type_filter: {
    #       name: "Name", # required
    #       version: "VersionOptional"
    #     },
    #     tag_filter: {
    #       tag: "Tag", # required
    #     },
    #     close_status_filter: {
    #       status: "COMPLETED" # One of: ["COMPLETED", "FAILED", "CANCELED", "TERMINATED", "CONTINUED_AS_NEW", "TIMED_OUT"], # required
    #     }
    #   }
    #   options = {}
    #   response = client.count_closed_workflow_executions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     count: 1, # required
    #     truncated: false
    #   }
    # @return [Types::CountClosedWorkflowExecutionsOutput]
    def count_closed_workflow_executions(params = {}, options = {})
      request = build_request(:count_closed_workflow_executions, params)
      request.send_request(options)
    end

    # <p>Returns the number of open workflow executions within the given domain that meet the
    #       specified filtering criteria.</p>
    #          <note>
    #             <p>This operation is eventually consistent. The results are best effort and may not
    #         exactly reflect recent updates and changes.</p>
    #          </note>
    #          <p>
    #             <b>Access Control</b>
    #          </p>
    #          <p>You can use IAM policies to control this action's access to Amazon SWF resources as
    #       follows:</p>
    #          <ul>
    #             <li>
    #                <p>Use a <code>Resource</code> element with the domain name to limit the action to
    #           only specified domains.</p>
    #             </li>
    #             <li>
    #                <p>Use an <code>Action</code> element to allow or deny permission to call this
    #           action.</p>
    #             </li>
    #             <li>
    #                <p>Constrain the following parameters by using a <code>Condition</code> element with
    #           the appropriate keys.</p>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <code>tagFilter.tag</code>: String constraint. The key is
    #                 <code>swf:tagFilter.tag</code>.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>typeFilter.name</code>: String constraint. The key is
    #                 <code>swf:typeFilter.name</code>.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>typeFilter.version</code>: String constraint. The key is
    #                 <code>swf:typeFilter.version</code>.</p>
    #                   </li>
    #                </ul>
    #             </li>
    #          </ul>
    #          <p>If the caller doesn't have sufficient permissions to invoke the action, or the
    #       parameter values fall outside the specified constraints, the action fails. The associated
    #       event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>.
    #       For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF
    #         Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    # @param [Hash, Types::CountOpenWorkflowExecutionsInput] params
    # @option params [String] :domain
    #   <p>The name of the domain containing the workflow executions to count.</p>
    # @option params [Types::ExecutionTimeFilter] :start_time_filter
    #   <p>Specifies the start time criteria that workflow executions must meet in order to be
    #         counted.</p>
    # @option params [Types::WorkflowTypeFilter] :type_filter
    #   <p>Specifies the type of the workflow executions to be counted.</p>
    #            <note>
    #               <p>
    #                  <code>executionFilter</code>, <code>typeFilter</code> and <code>tagFilter</code> are
    #           mutually exclusive. You can specify at most one of these in a request.</p>
    #            </note>
    # @option params [Types::TagFilter] :tag_filter
    #   <p>If specified, only executions that have a tag that matches the filter are
    #         counted.</p>
    #            <note>
    #               <p>
    #                  <code>executionFilter</code>, <code>typeFilter</code> and <code>tagFilter</code> are
    #           mutually exclusive. You can specify at most one of these in a request.</p>
    #            </note>
    # @option params [Types::WorkflowExecutionFilter] :execution_filter
    #   <p>If specified, only workflow executions matching the <code>WorkflowId</code> in the
    #         filter are counted.</p>
    #            <note>
    #               <p>
    #                  <code>executionFilter</code>, <code>typeFilter</code> and <code>tagFilter</code> are
    #           mutually exclusive. You can specify at most one of these in a request.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain: "DomainName", # required
    #     start_time_filter: { # required
    #       oldest_date: Time.now, # required
    #       latest_date: Time.now
    #     },
    #     type_filter: {
    #       name: "Name", # required
    #       version: "VersionOptional"
    #     },
    #     tag_filter: {
    #       tag: "Tag", # required
    #     },
    #     execution_filter: {
    #       workflow_id: "WorkflowId", # required
    #     }
    #   }
    #   options = {}
    #   response = client.count_open_workflow_executions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     count: 1, # required
    #     truncated: false
    #   }
    # @return [Types::CountOpenWorkflowExecutionsOutput]
    def count_open_workflow_executions(params = {}, options = {})
      request = build_request(:count_open_workflow_executions, params)
      request.send_request(options)
    end

    # <p>Returns the estimated number of activity tasks in the specified task list. The count
    #       returned is an approximation and isn't guaranteed to be exact. If you specify a task list that
    #       no activity task was ever scheduled in then <code>0</code> is returned.</p>
    #          <p>
    #             <b>Access Control</b>
    #          </p>
    #          <p>You can use IAM policies to control this action's access to Amazon SWF resources as
    #       follows:</p>
    #          <ul>
    #             <li>
    #                <p>Use a <code>Resource</code> element with the domain name to limit the action to
    #           only specified domains.</p>
    #             </li>
    #             <li>
    #                <p>Use an <code>Action</code> element to allow or deny permission to call this
    #           action.</p>
    #             </li>
    #             <li>
    #                <p>Constrain the <code>taskList.name</code> parameter by using a
    #             <code>Condition</code> element with the <code>swf:taskList.name</code> key to allow the
    #           action to access only certain task lists.</p>
    #             </li>
    #          </ul>
    #          <p>If the caller doesn't have sufficient permissions to invoke the action, or the
    #       parameter values fall outside the specified constraints, the action fails. The associated
    #       event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>.
    #       For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF
    #         Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    # @param [Hash, Types::CountPendingActivityTasksInput] params
    # @option params [String] :domain
    #   <p>The name of the domain that contains the task list.</p>
    # @option params [Types::TaskList] :task_list
    #   <p>The name of the task list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain: "DomainName", # required
    #     task_list: { # required
    #       name: "Name", # required
    #     }
    #   }
    #   options = {}
    #   response = client.count_pending_activity_tasks(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     count: 1, # required
    #     truncated: false
    #   }
    # @return [Types::CountPendingActivityTasksOutput]
    def count_pending_activity_tasks(params = {}, options = {})
      request = build_request(:count_pending_activity_tasks, params)
      request.send_request(options)
    end

    # <p>Returns the estimated number of decision tasks in the specified task list. The count
    #       returned is an approximation and isn't guaranteed to be exact. If you specify a task list that
    #       no decision task was ever scheduled in then <code>0</code> is returned.</p>
    #          <p>
    #             <b>Access Control</b>
    #          </p>
    #          <p>You can use IAM policies to control this action's access to Amazon SWF resources as
    #       follows:</p>
    #          <ul>
    #             <li>
    #                <p>Use a <code>Resource</code> element with the domain name to limit the action to
    #           only specified domains.</p>
    #             </li>
    #             <li>
    #                <p>Use an <code>Action</code> element to allow or deny permission to call this
    #           action.</p>
    #             </li>
    #             <li>
    #                <p>Constrain the <code>taskList.name</code> parameter by using a
    #             <code>Condition</code> element with the <code>swf:taskList.name</code> key to allow the
    #           action to access only certain task lists.</p>
    #             </li>
    #          </ul>
    #          <p>If the caller doesn't have sufficient permissions to invoke the action, or the
    #       parameter values fall outside the specified constraints, the action fails. The associated
    #       event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>.
    #       For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF
    #         Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    # @param [Hash, Types::CountPendingDecisionTasksInput] params
    # @option params [String] :domain
    #   <p>The name of the domain that contains the task list.</p>
    # @option params [Types::TaskList] :task_list
    #   <p>The name of the task list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain: "DomainName", # required
    #     task_list: { # required
    #       name: "Name", # required
    #     }
    #   }
    #   options = {}
    #   response = client.count_pending_decision_tasks(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     count: 1, # required
    #     truncated: false
    #   }
    # @return [Types::CountPendingDecisionTasksOutput]
    def count_pending_decision_tasks(params = {}, options = {})
      request = build_request(:count_pending_decision_tasks, params)
      request.send_request(options)
    end

    # <p>Deletes the specified <i>activity type</i>.</p>
    #          <p>Note: Prior to deletion, activity types must first be <b>deprecated</b>. </p>
    #          <p>
    #          After an activity type has been deleted, you cannot schedule new activities of that type. Activities that started before the type was deleted will continue to run.
    #      </p>
    #          <p>
    #             <b>Access Control</b>
    #          </p>
    #          <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p>
    #          <ul>
    #             <li>
    #                <p>Use a <code>Resource</code> element with the domain name to limit the action to
    #             only specified domains.</p>
    #             </li>
    #             <li>
    #                <p>Use an <code>Action</code> element to allow or deny permission to call this
    #             action.</p>
    #             </li>
    #             <li>
    #                <p>Constrain the following parameters by using a <code>Condition</code> element with
    #             the appropriate keys.</p>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <code>activityType.name</code>: String constraint. The key is
    #                 <code>swf:activityType.name</code>.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>activityType.version</code>: String constraint. The key is
    #                 <code>swf:activityType.version</code>.</p>
    #                   </li>
    #                </ul>
    #             </li>
    #          </ul>
    #          <p>If the caller doesn't have sufficient permissions to invoke the action, or the
    #         parameter values fall outside the specified constraints, the action fails. The associated
    #         event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>.
    #         For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF
    #         Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    # @param [Hash, Types::DeleteActivityTypeInput] params
    # @option params [String] :domain
    #   <p>The name of the domain in which the activity type is registered.</p>
    # @option params [Types::ActivityType] :activity_type
    #   <p>The activity type to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain: "DomainName", # required
    #     activity_type: { # required
    #       name: "Name", # required
    #       version: "Version", # required
    #     }
    #   }
    #   options = {}
    #   response = client.delete_activity_type(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_activity_type(params = {}, options = {})
      request = build_request(:delete_activity_type, params)
      request.send_request(options)
    end

    # <p>Deletes the specified <i>workflow type</i>.</p>
    #          <p>Note: Prior to deletion, workflow types must first be <b>deprecated</b>.</p>
    #          <p>
    #          After a workflow type has been deleted, you cannot create new executions of that type. Executions that
    #       started before the type was deleted will continue to run.
    #      </p>
    #          <p>
    #             <b>Access Control</b>
    #          </p>
    #          <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p>
    #          <ul>
    #             <li>
    #                <p>Use a <code>Resource</code> element with the domain name to limit the action to
    #             only specified domains.</p>
    #             </li>
    #             <li>
    #                <p>Use an <code>Action</code> element to allow or deny permission to call this
    #             action.</p>
    #             </li>
    #             <li>
    #                <p>Constrain the following parameters by using a <code>Condition</code> element with
    #             the appropriate keys.</p>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <code>workflowType.name</code>: String constraint. The key is
    #                 <code>swf:workflowType.name</code>.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>workflowType.version</code>: String constraint. The key is
    #                 <code>swf:workflowType.version</code>.</p>
    #                   </li>
    #                </ul>
    #             </li>
    #          </ul>
    #          <p>If the caller doesn't have sufficient permissions to invoke the action, or the
    #         parameter values fall outside the specified constraints, the action fails. The associated
    #         event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>.
    #         For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF
    #         Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    # @param [Hash, Types::DeleteWorkflowTypeInput] params
    # @option params [String] :domain
    #   <p>The name of the domain in which the workflow type is registered.</p>
    # @option params [Types::WorkflowType] :workflow_type
    #   <p>The workflow type to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain: "DomainName", # required
    #     workflow_type: { # required
    #       name: "Name", # required
    #       version: "Version", # required
    #     }
    #   }
    #   options = {}
    #   response = client.delete_workflow_type(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_workflow_type(params = {}, options = {})
      request = build_request(:delete_workflow_type, params)
      request.send_request(options)
    end

    # <p>Deprecates the specified <i>activity type</i>. After an activity type has
    #       been deprecated, you cannot create new tasks of that activity type. Tasks of this type that
    #       were scheduled before the type was deprecated continue to run.</p>
    #          <p>
    #             <b>Access Control</b>
    #          </p>
    #          <p>You can use IAM policies to control this action's access to Amazon SWF resources as
    #       follows:</p>
    #          <ul>
    #             <li>
    #                <p>Use a <code>Resource</code> element with the domain name to limit the action to
    #           only specified domains.</p>
    #             </li>
    #             <li>
    #                <p>Use an <code>Action</code> element to allow or deny permission to call this
    #           action.</p>
    #             </li>
    #             <li>
    #                <p>Constrain the following parameters by using a <code>Condition</code> element with
    #           the appropriate keys.</p>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <code>activityType.name</code>: String constraint. The key is
    #                 <code>swf:activityType.name</code>.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>activityType.version</code>: String constraint. The key is
    #                 <code>swf:activityType.version</code>.</p>
    #                   </li>
    #                </ul>
    #             </li>
    #          </ul>
    #          <p>If the caller doesn't have sufficient permissions to invoke the action, or the
    #       parameter values fall outside the specified constraints, the action fails. The associated
    #       event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>.
    #       For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF
    #         Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    # @param [Hash, Types::DeprecateActivityTypeInput] params
    # @option params [String] :domain
    #   <p>The name of the domain in which the activity type is registered.</p>
    # @option params [Types::ActivityType] :activity_type
    #   <p>The activity type to deprecate.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain: "DomainName", # required
    #     activity_type: { # required
    #       name: "Name", # required
    #       version: "Version", # required
    #     }
    #   }
    #   options = {}
    #   response = client.deprecate_activity_type(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def deprecate_activity_type(params = {}, options = {})
      request = build_request(:deprecate_activity_type, params)
      request.send_request(options)
    end

    # <p>Deprecates the specified domain. After a domain has been deprecated it cannot be used
    #       to create new workflow executions or register new types. However, you can still use visibility
    #       actions on this domain. Deprecating a domain also deprecates all activity and workflow types
    #       registered in the domain. Executions that were started before the domain was deprecated
    #       continues to run.</p>
    #          <note>
    #             <p>This operation is eventually consistent. The results are best effort and may not
    #         exactly reflect recent updates and changes.</p>
    #          </note>
    #          <p>
    #             <b>Access Control</b>
    #          </p>
    #          <p>You can use IAM policies to control this action's access to Amazon SWF resources as
    #       follows:</p>
    #          <ul>
    #             <li>
    #                <p>Use a <code>Resource</code> element with the domain name to limit the action to
    #           only specified domains.</p>
    #             </li>
    #             <li>
    #                <p>Use an <code>Action</code> element to allow or deny permission to call this
    #           action.</p>
    #             </li>
    #             <li>
    #                <p>You cannot use an IAM policy to constrain this action's parameters.</p>
    #             </li>
    #          </ul>
    #          <p>If the caller doesn't have sufficient permissions to invoke the action, or the
    #       parameter values fall outside the specified constraints, the action fails. The associated
    #       event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>.
    #       For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF
    #         Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    # @param [Hash, Types::DeprecateDomainInput] params
    # @option params [String] :name
    #   <p>The name of the domain to deprecate.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "DomainName", # required
    #   }
    #   options = {}
    #   response = client.deprecate_domain(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def deprecate_domain(params = {}, options = {})
      request = build_request(:deprecate_domain, params)
      request.send_request(options)
    end

    # <p>Deprecates the specified <i>workflow type</i>. After a workflow type has
    #       been deprecated, you cannot create new executions of that type. Executions that were started
    #       before the type was deprecated continues to run. A deprecated workflow type may still be used
    #       when calling visibility actions.</p>
    #          <note>
    #             <p>This operation is eventually consistent. The results are best effort and may not
    #         exactly reflect recent updates and changes.</p>
    #          </note>
    #          <p>
    #             <b>Access Control</b>
    #          </p>
    #          <p>You can use IAM policies to control this action's access to Amazon SWF resources as
    #       follows:</p>
    #          <ul>
    #             <li>
    #                <p>Use a <code>Resource</code> element with the domain name to limit the action to
    #           only specified domains.</p>
    #             </li>
    #             <li>
    #                <p>Use an <code>Action</code> element to allow or deny permission to call this
    #           action.</p>
    #             </li>
    #             <li>
    #                <p>Constrain the following parameters by using a <code>Condition</code> element with
    #           the appropriate keys.</p>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <code>workflowType.name</code>: String constraint. The key is
    #                 <code>swf:workflowType.name</code>.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>workflowType.version</code>: String constraint. The key is
    #                 <code>swf:workflowType.version</code>.</p>
    #                   </li>
    #                </ul>
    #             </li>
    #          </ul>
    #          <p>If the caller doesn't have sufficient permissions to invoke the action, or the
    #       parameter values fall outside the specified constraints, the action fails. The associated
    #       event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>.
    #       For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF
    #         Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    # @param [Hash, Types::DeprecateWorkflowTypeInput] params
    # @option params [String] :domain
    #   <p>The name of the domain in which the workflow type is registered.</p>
    # @option params [Types::WorkflowType] :workflow_type
    #   <p>The workflow type to deprecate.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain: "DomainName", # required
    #     workflow_type: { # required
    #       name: "Name", # required
    #       version: "Version", # required
    #     }
    #   }
    #   options = {}
    #   response = client.deprecate_workflow_type(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def deprecate_workflow_type(params = {}, options = {})
      request = build_request(:deprecate_workflow_type, params)
      request.send_request(options)
    end

    # <p>Returns information about the specified activity type. This includes configuration
    #       settings provided when the type was registered and other general information about the
    #       type.</p>
    #          <p>
    #             <b>Access Control</b>
    #          </p>
    #          <p>You can use IAM policies to control this action's access to Amazon SWF resources as
    #       follows:</p>
    #          <ul>
    #             <li>
    #                <p>Use a <code>Resource</code> element with the domain name to limit the action to
    #           only specified domains.</p>
    #             </li>
    #             <li>
    #                <p>Use an <code>Action</code> element to allow or deny permission to call this
    #           action.</p>
    #             </li>
    #             <li>
    #                <p>Constrain the following parameters by using a <code>Condition</code> element with
    #           the appropriate keys.</p>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <code>activityType.name</code>: String constraint. The key is
    #                 <code>swf:activityType.name</code>.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>activityType.version</code>: String constraint. The key is
    #                 <code>swf:activityType.version</code>.</p>
    #                   </li>
    #                </ul>
    #             </li>
    #          </ul>
    #          <p>If the caller doesn't have sufficient permissions to invoke the action, or the
    #       parameter values fall outside the specified constraints, the action fails. The associated
    #       event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>.
    #       For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF
    #         Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    # @param [Hash, Types::DescribeActivityTypeInput] params
    # @option params [String] :domain
    #   <p>The name of the domain in which the activity type is registered.</p>
    # @option params [Types::ActivityType] :activity_type
    #   <p>The activity type to get information about. Activity types are identified by the
    #           <code>name</code> and <code>version</code> that were supplied when the activity was
    #         registered.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain: "DomainName", # required
    #     activity_type: { # required
    #       name: "Name", # required
    #       version: "Version", # required
    #     }
    #   }
    #   options = {}
    #   response = client.describe_activity_type(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     type_info: { # required
    #       activity_type: { # required
    #         name: "Name", # required
    #         version: "Version", # required
    #       },
    #       status: "REGISTERED" # One of: ["REGISTERED", "DEPRECATED"], # required
    #       description: "Description",
    #       creation_date: Time.now, # required
    #       deprecation_date: Time.now
    #     },
    #     configuration: { # required
    #       default_task_start_to_close_timeout: "DurationInSecondsOptional",
    #       default_task_heartbeat_timeout: "DurationInSecondsOptional",
    #       default_task_list: {
    #         name: "Name", # required
    #       },
    #       default_task_priority: "TaskPriority",
    #       default_task_schedule_to_start_timeout: "DurationInSecondsOptional",
    #       default_task_schedule_to_close_timeout: "DurationInSecondsOptional"
    #     }
    #   }
    # @return [Types::DescribeActivityTypeOutput]
    def describe_activity_type(params = {}, options = {})
      request = build_request(:describe_activity_type, params)
      request.send_request(options)
    end

    # <p>Returns information about the specified domain, including description and
    #       status.</p>
    #          <p>
    #             <b>Access Control</b>
    #          </p>
    #          <p>You can use IAM policies to control this action's access to Amazon SWF resources as
    #       follows:</p>
    #          <ul>
    #             <li>
    #                <p>Use a <code>Resource</code> element with the domain name to limit the action to
    #           only specified domains.</p>
    #             </li>
    #             <li>
    #                <p>Use an <code>Action</code> element to allow or deny permission to call this
    #           action.</p>
    #             </li>
    #             <li>
    #                <p>You cannot use an IAM policy to constrain this action's parameters.</p>
    #             </li>
    #          </ul>
    #          <p>If the caller doesn't have sufficient permissions to invoke the action, or the
    #       parameter values fall outside the specified constraints, the action fails. The associated
    #       event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>.
    #       For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF
    #         Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    # @param [Hash, Types::DescribeDomainInput] params
    # @option params [String] :name
    #   <p>The name of the domain to describe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "DomainName", # required
    #   }
    #   options = {}
    #   response = client.describe_domain(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_info: { # required
    #       name: "DomainName", # required
    #       status: "REGISTERED" # One of: ["REGISTERED", "DEPRECATED"], # required
    #       description: "Description",
    #       arn: "Arn"
    #     },
    #     configuration: { # required
    #       workflow_execution_retention_period_in_days: "DurationInDays", # required
    #     }
    #   }
    # @return [Types::DescribeDomainOutput]
    def describe_domain(params = {}, options = {})
      request = build_request(:describe_domain, params)
      request.send_request(options)
    end

    # <p>Returns information about the specified workflow execution including its type and some
    #       statistics.</p>
    #          <note>
    #             <p>This operation is eventually consistent. The results are best effort and may not
    #         exactly reflect recent updates and changes.</p>
    #          </note>
    #          <p>
    #             <b>Access Control</b>
    #          </p>
    #          <p>You can use IAM policies to control this action's access to Amazon SWF resources as
    #       follows:</p>
    #          <ul>
    #             <li>
    #                <p>Use a <code>Resource</code> element with the domain name to limit the action to
    #           only specified domains.</p>
    #             </li>
    #             <li>
    #                <p>Use an <code>Action</code> element to allow or deny permission to call this
    #           action.</p>
    #             </li>
    #             <li>
    #                <p>You cannot use an IAM policy to constrain this action's parameters.</p>
    #             </li>
    #          </ul>
    #          <p>If the caller doesn't have sufficient permissions to invoke the action, or the
    #       parameter values fall outside the specified constraints, the action fails. The associated
    #       event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>.
    #       For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF
    #         Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    # @param [Hash, Types::DescribeWorkflowExecutionInput] params
    # @option params [String] :domain
    #   <p>The name of the domain containing the workflow execution.</p>
    # @option params [Types::WorkflowExecution] :execution
    #   <p>The workflow execution to describe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain: "DomainName", # required
    #     execution: { # required
    #       workflow_id: "WorkflowId", # required
    #       run_id: "WorkflowRunId", # required
    #     }
    #   }
    #   options = {}
    #   response = client.describe_workflow_execution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     execution_info: { # required
    #       execution: { # required
    #         workflow_id: "WorkflowId", # required
    #         run_id: "WorkflowRunId", # required
    #       },
    #       workflow_type: { # required
    #         name: "Name", # required
    #         version: "Version", # required
    #       },
    #       start_timestamp: Time.now, # required
    #       close_timestamp: Time.now,
    #       execution_status: "OPEN" # One of: ["OPEN", "CLOSED"], # required
    #       close_status: "COMPLETED" # One of: ["COMPLETED", "FAILED", "CANCELED", "TERMINATED", "CONTINUED_AS_NEW", "TIMED_OUT"],
    #       parent: {
    #         workflow_id: "WorkflowId", # required
    #         run_id: "WorkflowRunId", # required
    #       },
    #       tag_list: ["Tag"],
    #       cancel_requested: false
    #     },
    #     execution_configuration: { # required
    #       task_start_to_close_timeout: "DurationInSeconds", # required
    #       execution_start_to_close_timeout: "DurationInSeconds", # required
    #       task_list: { # required
    #         name: "Name", # required
    #       },
    #       task_priority: "TaskPriority",
    #       child_policy: "TERMINATE" # One of: ["TERMINATE", "REQUEST_CANCEL", "ABANDON"], # required
    #       lambda_role: "Arn"
    #     },
    #     open_counts: { # required
    #       open_activity_tasks: 1, # required
    #       open_decision_tasks: 1, # required
    #       open_timers: 1, # required
    #       open_child_workflow_executions: 1, # required
    #       open_lambda_functions: 1
    #     },
    #     latest_activity_task_timestamp: Time.now,
    #     latest_execution_context: "Data"
    #   }
    # @return [Types::DescribeWorkflowExecutionOutput]
    def describe_workflow_execution(params = {}, options = {})
      request = build_request(:describe_workflow_execution, params)
      request.send_request(options)
    end

    # <p>Returns information about the specified <i>workflow type</i>. This
    #       includes configuration settings specified when the type was registered and other information
    #       such as creation date, current status, etc.</p>
    #          <p>
    #             <b>Access Control</b>
    #          </p>
    #          <p>You can use IAM policies to control this action's access to Amazon SWF resources as
    #       follows:</p>
    #          <ul>
    #             <li>
    #                <p>Use a <code>Resource</code> element with the domain name to limit the action to
    #           only specified domains.</p>
    #             </li>
    #             <li>
    #                <p>Use an <code>Action</code> element to allow or deny permission to call this
    #           action.</p>
    #             </li>
    #             <li>
    #                <p>Constrain the following parameters by using a <code>Condition</code> element with
    #           the appropriate keys.</p>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <code>workflowType.name</code>: String constraint. The key is
    #                 <code>swf:workflowType.name</code>.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>workflowType.version</code>: String constraint. The key is
    #                 <code>swf:workflowType.version</code>.</p>
    #                   </li>
    #                </ul>
    #             </li>
    #          </ul>
    #          <p>If the caller doesn't have sufficient permissions to invoke the action, or the
    #       parameter values fall outside the specified constraints, the action fails. The associated
    #       event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>.
    #       For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF
    #         Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    # @param [Hash, Types::DescribeWorkflowTypeInput] params
    # @option params [String] :domain
    #   <p>The name of the domain in which this workflow type is registered.</p>
    # @option params [Types::WorkflowType] :workflow_type
    #   <p>The workflow type to describe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain: "DomainName", # required
    #     workflow_type: { # required
    #       name: "Name", # required
    #       version: "Version", # required
    #     }
    #   }
    #   options = {}
    #   response = client.describe_workflow_type(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     type_info: { # required
    #       workflow_type: { # required
    #         name: "Name", # required
    #         version: "Version", # required
    #       },
    #       status: "REGISTERED" # One of: ["REGISTERED", "DEPRECATED"], # required
    #       description: "Description",
    #       creation_date: Time.now, # required
    #       deprecation_date: Time.now
    #     },
    #     configuration: { # required
    #       default_task_start_to_close_timeout: "DurationInSecondsOptional",
    #       default_execution_start_to_close_timeout: "DurationInSecondsOptional",
    #       default_task_list: {
    #         name: "Name", # required
    #       },
    #       default_task_priority: "TaskPriority",
    #       default_child_policy: "TERMINATE" # One of: ["TERMINATE", "REQUEST_CANCEL", "ABANDON"],
    #       default_lambda_role: "Arn"
    #     }
    #   }
    # @return [Types::DescribeWorkflowTypeOutput]
    def describe_workflow_type(params = {}, options = {})
      request = build_request(:describe_workflow_type, params)
      request.send_request(options)
    end

    # <p>Returns the history of the specified workflow execution. The results may be split into
    #       multiple pages. To retrieve subsequent pages, make the call again using the
    #         <code>nextPageToken</code> returned by the initial call.</p>
    #          <note>
    #             <p>This operation is eventually consistent. The results are best effort and may not
    #         exactly reflect recent updates and changes.</p>
    #          </note>
    #          <p>
    #             <b>Access Control</b>
    #          </p>
    #          <p>You can use IAM policies to control this action's access to Amazon SWF resources as
    #       follows:</p>
    #          <ul>
    #             <li>
    #                <p>Use a <code>Resource</code> element with the domain name to limit the action to
    #           only specified domains.</p>
    #             </li>
    #             <li>
    #                <p>Use an <code>Action</code> element to allow or deny permission to call this
    #           action.</p>
    #             </li>
    #             <li>
    #                <p>You cannot use an IAM policy to constrain this action's parameters.</p>
    #             </li>
    #          </ul>
    #          <p>If the caller doesn't have sufficient permissions to invoke the action, or the
    #       parameter values fall outside the specified constraints, the action fails. The associated
    #       event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>.
    #       For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF
    #         Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    # @param [Hash, Types::GetWorkflowExecutionHistoryInput] params
    # @option params [String] :domain
    #   <p>The name of the domain containing the workflow execution.</p>
    # @option params [Types::WorkflowExecution] :execution
    #   <p>Specifies the workflow execution for which to return the history.</p>
    # @option params [String] :next_page_token
    #   <p>If <code>NextPageToken</code> is returned there are more results
    #         available.  The value of <code>NextPageToken</code> is a unique pagination token for each page. Make the call again using 
    #         the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires 
    #         after 24 hours. Using an expired pagination token will return a <code>400</code> error: "<code>Specified token has 
    #         exceeded its maximum lifetime</code>". </p>
    #            <p>The configured <code>maximumPageSize</code> determines how many results can be returned
    #         in a single call. </p>
    # @option params [Integer] :maximum_page_size
    #   <p>The maximum number of results that are returned per call.
    #     Use <code>nextPageToken</code> to obtain further pages of results. </p>
    # @option params [Boolean] :reverse_order
    #   <p>When set to <code>true</code>, returns the events in reverse order. By default the
    #         results are returned in ascending order of the <code>eventTimeStamp</code> of the
    #         events.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain: "DomainName", # required
    #     execution: { # required
    #       workflow_id: "WorkflowId", # required
    #       run_id: "WorkflowRunId", # required
    #     },
    #     next_page_token: "PageToken",
    #     maximum_page_size: 1,
    #     reverse_order: false
    #   }
    #   options = {}
    #   response = client.get_workflow_execution_history(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     events: [ # required
    #       {
    #         event_timestamp: Time.now, # required
    #         event_type: "WorkflowExecutionStarted" # One of: ["WorkflowExecutionStarted", "WorkflowExecutionCancelRequested", "WorkflowExecutionCompleted", "CompleteWorkflowExecutionFailed", "WorkflowExecutionFailed", "FailWorkflowExecutionFailed", "WorkflowExecutionTimedOut", "WorkflowExecutionCanceled", "CancelWorkflowExecutionFailed", "WorkflowExecutionContinuedAsNew", "ContinueAsNewWorkflowExecutionFailed", "WorkflowExecutionTerminated", "DecisionTaskScheduled", "DecisionTaskStarted", "DecisionTaskCompleted", "DecisionTaskTimedOut", "ActivityTaskScheduled", "ScheduleActivityTaskFailed", "ActivityTaskStarted", "ActivityTaskCompleted", "ActivityTaskFailed", "ActivityTaskTimedOut", "ActivityTaskCanceled", "ActivityTaskCancelRequested", "RequestCancelActivityTaskFailed", "WorkflowExecutionSignaled", "MarkerRecorded", "RecordMarkerFailed", "TimerStarted", "StartTimerFailed", "TimerFired", "TimerCanceled", "CancelTimerFailed", "StartChildWorkflowExecutionInitiated", "StartChildWorkflowExecutionFailed", "ChildWorkflowExecutionStarted", "ChildWorkflowExecutionCompleted", "ChildWorkflowExecutionFailed", "ChildWorkflowExecutionTimedOut", "ChildWorkflowExecutionCanceled", "ChildWorkflowExecutionTerminated", "SignalExternalWorkflowExecutionInitiated", "SignalExternalWorkflowExecutionFailed", "ExternalWorkflowExecutionSignaled", "RequestCancelExternalWorkflowExecutionInitiated", "RequestCancelExternalWorkflowExecutionFailed", "ExternalWorkflowExecutionCancelRequested", "LambdaFunctionScheduled", "LambdaFunctionStarted", "LambdaFunctionCompleted", "LambdaFunctionFailed", "LambdaFunctionTimedOut", "ScheduleLambdaFunctionFailed", "StartLambdaFunctionFailed"], # required
    #         event_id: 1, # required
    #         workflow_execution_started_event_attributes: {
    #           input: "Data",
    #           execution_start_to_close_timeout: "DurationInSecondsOptional",
    #           task_start_to_close_timeout: "DurationInSecondsOptional",
    #           child_policy: "TERMINATE" # One of: ["TERMINATE", "REQUEST_CANCEL", "ABANDON"], # required
    #           task_list: { # required
    #             name: "Name", # required
    #           },
    #           task_priority: "TaskPriority",
    #           workflow_type: { # required
    #             name: "Name", # required
    #             version: "Version", # required
    #           },
    #           tag_list: ["Tag"],
    #           continued_execution_run_id: "WorkflowRunIdOptional",
    #           parent_workflow_execution: {
    #             workflow_id: "WorkflowId", # required
    #             run_id: "WorkflowRunId", # required
    #           },
    #           parent_initiated_event_id: 1,
    #           lambda_role: "Arn"
    #         },
    #         workflow_execution_completed_event_attributes: {
    #           result: "Data",
    #           decision_task_completed_event_id: 1, # required
    #         },
    #         complete_workflow_execution_failed_event_attributes: {
    #           cause: "UNHANDLED_DECISION" # One of: ["UNHANDLED_DECISION", "OPERATION_NOT_PERMITTED"], # required
    #           decision_task_completed_event_id: 1, # required
    #         },
    #         workflow_execution_failed_event_attributes: {
    #           reason: "FailureReason",
    #           details: "Data",
    #           decision_task_completed_event_id: 1, # required
    #         },
    #         fail_workflow_execution_failed_event_attributes: {
    #           cause: "UNHANDLED_DECISION" # One of: ["UNHANDLED_DECISION", "OPERATION_NOT_PERMITTED"], # required
    #           decision_task_completed_event_id: 1, # required
    #         },
    #         workflow_execution_timed_out_event_attributes: {
    #           timeout_type: "START_TO_CLOSE" # One of: ["START_TO_CLOSE"], # required
    #           child_policy: "TERMINATE" # One of: ["TERMINATE", "REQUEST_CANCEL", "ABANDON"], # required
    #         },
    #         workflow_execution_canceled_event_attributes: {
    #           details: "Data",
    #           decision_task_completed_event_id: 1, # required
    #         },
    #         cancel_workflow_execution_failed_event_attributes: {
    #           cause: "UNHANDLED_DECISION" # One of: ["UNHANDLED_DECISION", "OPERATION_NOT_PERMITTED"], # required
    #           decision_task_completed_event_id: 1, # required
    #         },
    #         workflow_execution_continued_as_new_event_attributes: {
    #           input: "Data",
    #           decision_task_completed_event_id: 1, # required
    #           new_execution_run_id: "WorkflowRunId", # required
    #           execution_start_to_close_timeout: "DurationInSecondsOptional",
    #           task_list: { # required
    #             name: "Name", # required
    #           },
    #           task_priority: "TaskPriority",
    #           task_start_to_close_timeout: "DurationInSecondsOptional",
    #           child_policy: "TERMINATE" # One of: ["TERMINATE", "REQUEST_CANCEL", "ABANDON"], # required
    #           tag_list: ["Tag"],
    #           workflow_type: { # required
    #             name: "Name", # required
    #             version: "Version", # required
    #           },
    #           lambda_role: "Arn"
    #         },
    #         continue_as_new_workflow_execution_failed_event_attributes: {
    #           cause: "UNHANDLED_DECISION" # One of: ["UNHANDLED_DECISION", "WORKFLOW_TYPE_DEPRECATED", "WORKFLOW_TYPE_DOES_NOT_EXIST", "DEFAULT_EXECUTION_START_TO_CLOSE_TIMEOUT_UNDEFINED", "DEFAULT_TASK_START_TO_CLOSE_TIMEOUT_UNDEFINED", "DEFAULT_TASK_LIST_UNDEFINED", "DEFAULT_CHILD_POLICY_UNDEFINED", "CONTINUE_AS_NEW_WORKFLOW_EXECUTION_RATE_EXCEEDED", "OPERATION_NOT_PERMITTED"], # required
    #           decision_task_completed_event_id: 1, # required
    #         },
    #         workflow_execution_terminated_event_attributes: {
    #           reason: "TerminateReason",
    #           details: "Data",
    #           child_policy: "TERMINATE" # One of: ["TERMINATE", "REQUEST_CANCEL", "ABANDON"], # required
    #           cause: "CHILD_POLICY_APPLIED" # One of: ["CHILD_POLICY_APPLIED", "EVENT_LIMIT_EXCEEDED", "OPERATOR_INITIATED"]
    #         },
    #         workflow_execution_cancel_requested_event_attributes: {
    #           external_workflow_execution: {
    #             workflow_id: "WorkflowId", # required
    #             run_id: "WorkflowRunId", # required
    #           },
    #           external_initiated_event_id: 1,
    #           cause: "CHILD_POLICY_APPLIED" # One of: ["CHILD_POLICY_APPLIED"]
    #         },
    #         decision_task_scheduled_event_attributes: {
    #           task_list: { # required
    #             name: "Name", # required
    #           },
    #           task_priority: "TaskPriority",
    #           start_to_close_timeout: "DurationInSecondsOptional",
    #           schedule_to_start_timeout: "DurationInSecondsOptional"
    #         },
    #         decision_task_started_event_attributes: {
    #           identity: "Identity",
    #           scheduled_event_id: 1, # required
    #         },
    #         decision_task_completed_event_attributes: {
    #           execution_context: "Data",
    #           scheduled_event_id: 1, # required
    #           started_event_id: 1, # required
    #           task_list: {
    #             name: "Name", # required
    #           },
    #           task_list_schedule_to_start_timeout: "DurationInSecondsOptional"
    #         },
    #         decision_task_timed_out_event_attributes: {
    #           timeout_type: "START_TO_CLOSE" # One of: ["START_TO_CLOSE", "SCHEDULE_TO_START"], # required
    #           scheduled_event_id: 1, # required
    #           started_event_id: 1, # required
    #         },
    #         activity_task_scheduled_event_attributes: {
    #           activity_type: { # required
    #             name: "Name", # required
    #             version: "Version", # required
    #           },
    #           activity_id: "ActivityId", # required
    #           input: "Data",
    #           control: "Data",
    #           schedule_to_start_timeout: "DurationInSecondsOptional",
    #           schedule_to_close_timeout: "DurationInSecondsOptional",
    #           start_to_close_timeout: "DurationInSecondsOptional",
    #           task_list: { # required
    #             name: "Name", # required
    #           },
    #           task_priority: "TaskPriority",
    #           decision_task_completed_event_id: 1, # required
    #           heartbeat_timeout: "DurationInSecondsOptional"
    #         },
    #         activity_task_started_event_attributes: {
    #           identity: "Identity",
    #           scheduled_event_id: 1, # required
    #         },
    #         activity_task_completed_event_attributes: {
    #           result: "Data",
    #           scheduled_event_id: 1, # required
    #           started_event_id: 1, # required
    #         },
    #         activity_task_failed_event_attributes: {
    #           reason: "FailureReason",
    #           details: "Data",
    #           scheduled_event_id: 1, # required
    #           started_event_id: 1, # required
    #         },
    #         activity_task_timed_out_event_attributes: {
    #           timeout_type: "START_TO_CLOSE" # One of: ["START_TO_CLOSE", "SCHEDULE_TO_START", "SCHEDULE_TO_CLOSE", "HEARTBEAT"], # required
    #           scheduled_event_id: 1, # required
    #           started_event_id: 1, # required
    #           details: "LimitedData"
    #         },
    #         activity_task_canceled_event_attributes: {
    #           details: "Data",
    #           scheduled_event_id: 1, # required
    #           started_event_id: 1, # required
    #           latest_cancel_requested_event_id: 1
    #         },
    #         activity_task_cancel_requested_event_attributes: {
    #           decision_task_completed_event_id: 1, # required
    #           activity_id: "ActivityId", # required
    #         },
    #         workflow_execution_signaled_event_attributes: {
    #           signal_name: "SignalName", # required
    #           input: "Data",
    #           external_workflow_execution: {
    #             workflow_id: "WorkflowId", # required
    #             run_id: "WorkflowRunId", # required
    #           },
    #           external_initiated_event_id: 1
    #         },
    #         marker_recorded_event_attributes: {
    #           marker_name: "MarkerName", # required
    #           details: "Data",
    #           decision_task_completed_event_id: 1, # required
    #         },
    #         record_marker_failed_event_attributes: {
    #           marker_name: "MarkerName", # required
    #           cause: "OPERATION_NOT_PERMITTED" # One of: ["OPERATION_NOT_PERMITTED"], # required
    #           decision_task_completed_event_id: 1, # required
    #         },
    #         timer_started_event_attributes: {
    #           timer_id: "TimerId", # required
    #           control: "Data",
    #           start_to_fire_timeout: "DurationInSeconds", # required
    #           decision_task_completed_event_id: 1, # required
    #         },
    #         timer_fired_event_attributes: {
    #           timer_id: "TimerId", # required
    #           started_event_id: 1, # required
    #         },
    #         timer_canceled_event_attributes: {
    #           timer_id: "TimerId", # required
    #           started_event_id: 1, # required
    #           decision_task_completed_event_id: 1, # required
    #         },
    #         start_child_workflow_execution_initiated_event_attributes: {
    #           workflow_id: "WorkflowId", # required
    #           workflow_type: { # required
    #             name: "Name", # required
    #             version: "Version", # required
    #           },
    #           control: "Data",
    #           input: "Data",
    #           execution_start_to_close_timeout: "DurationInSecondsOptional",
    #           task_list: { # required
    #             name: "Name", # required
    #           },
    #           task_priority: "TaskPriority",
    #           decision_task_completed_event_id: 1, # required
    #           child_policy: "TERMINATE" # One of: ["TERMINATE", "REQUEST_CANCEL", "ABANDON"], # required
    #           task_start_to_close_timeout: "DurationInSecondsOptional",
    #           tag_list: ["Tag"],
    #           lambda_role: "Arn"
    #         },
    #         child_workflow_execution_started_event_attributes: {
    #           workflow_execution: { # required
    #             workflow_id: "WorkflowId", # required
    #             run_id: "WorkflowRunId", # required
    #           },
    #           workflow_type: { # required
    #             name: "Name", # required
    #             version: "Version", # required
    #           },
    #           initiated_event_id: 1, # required
    #         },
    #         child_workflow_execution_completed_event_attributes: {
    #           workflow_execution: { # required
    #             workflow_id: "WorkflowId", # required
    #             run_id: "WorkflowRunId", # required
    #           },
    #           workflow_type: { # required
    #             name: "Name", # required
    #             version: "Version", # required
    #           },
    #           result: "Data",
    #           initiated_event_id: 1, # required
    #           started_event_id: 1, # required
    #         },
    #         child_workflow_execution_failed_event_attributes: {
    #           workflow_execution: { # required
    #             workflow_id: "WorkflowId", # required
    #             run_id: "WorkflowRunId", # required
    #           },
    #           workflow_type: { # required
    #             name: "Name", # required
    #             version: "Version", # required
    #           },
    #           reason: "FailureReason",
    #           details: "Data",
    #           initiated_event_id: 1, # required
    #           started_event_id: 1, # required
    #         },
    #         child_workflow_execution_timed_out_event_attributes: {
    #           workflow_execution: { # required
    #             workflow_id: "WorkflowId", # required
    #             run_id: "WorkflowRunId", # required
    #           },
    #           workflow_type: { # required
    #             name: "Name", # required
    #             version: "Version", # required
    #           },
    #           timeout_type: "START_TO_CLOSE" # One of: ["START_TO_CLOSE"], # required
    #           initiated_event_id: 1, # required
    #           started_event_id: 1, # required
    #         },
    #         child_workflow_execution_canceled_event_attributes: {
    #           workflow_execution: { # required
    #             workflow_id: "WorkflowId", # required
    #             run_id: "WorkflowRunId", # required
    #           },
    #           workflow_type: { # required
    #             name: "Name", # required
    #             version: "Version", # required
    #           },
    #           details: "Data",
    #           initiated_event_id: 1, # required
    #           started_event_id: 1, # required
    #         },
    #         child_workflow_execution_terminated_event_attributes: {
    #           workflow_execution: { # required
    #             workflow_id: "WorkflowId", # required
    #             run_id: "WorkflowRunId", # required
    #           },
    #           workflow_type: { # required
    #             name: "Name", # required
    #             version: "Version", # required
    #           },
    #           initiated_event_id: 1, # required
    #           started_event_id: 1, # required
    #         },
    #         signal_external_workflow_execution_initiated_event_attributes: {
    #           workflow_id: "WorkflowId", # required
    #           run_id: "WorkflowRunIdOptional",
    #           signal_name: "SignalName", # required
    #           input: "Data",
    #           decision_task_completed_event_id: 1, # required
    #           control: "Data"
    #         },
    #         external_workflow_execution_signaled_event_attributes: {
    #           workflow_execution: { # required
    #             workflow_id: "WorkflowId", # required
    #             run_id: "WorkflowRunId", # required
    #           },
    #           initiated_event_id: 1, # required
    #         },
    #         signal_external_workflow_execution_failed_event_attributes: {
    #           workflow_id: "WorkflowId", # required
    #           run_id: "WorkflowRunIdOptional",
    #           cause: "UNKNOWN_EXTERNAL_WORKFLOW_EXECUTION" # One of: ["UNKNOWN_EXTERNAL_WORKFLOW_EXECUTION", "SIGNAL_EXTERNAL_WORKFLOW_EXECUTION_RATE_EXCEEDED", "OPERATION_NOT_PERMITTED"], # required
    #           initiated_event_id: 1, # required
    #           decision_task_completed_event_id: 1, # required
    #           control: "Data"
    #         },
    #         external_workflow_execution_cancel_requested_event_attributes: {
    #           workflow_execution: { # required
    #             workflow_id: "WorkflowId", # required
    #             run_id: "WorkflowRunId", # required
    #           },
    #           initiated_event_id: 1, # required
    #         },
    #         request_cancel_external_workflow_execution_initiated_event_attributes: {
    #           workflow_id: "WorkflowId", # required
    #           run_id: "WorkflowRunIdOptional",
    #           decision_task_completed_event_id: 1, # required
    #           control: "Data"
    #         },
    #         request_cancel_external_workflow_execution_failed_event_attributes: {
    #           workflow_id: "WorkflowId", # required
    #           run_id: "WorkflowRunIdOptional",
    #           cause: "UNKNOWN_EXTERNAL_WORKFLOW_EXECUTION" # One of: ["UNKNOWN_EXTERNAL_WORKFLOW_EXECUTION", "REQUEST_CANCEL_EXTERNAL_WORKFLOW_EXECUTION_RATE_EXCEEDED", "OPERATION_NOT_PERMITTED"], # required
    #           initiated_event_id: 1, # required
    #           decision_task_completed_event_id: 1, # required
    #           control: "Data"
    #         },
    #         schedule_activity_task_failed_event_attributes: {
    #           activity_type: { # required
    #             name: "Name", # required
    #             version: "Version", # required
    #           },
    #           activity_id: "ActivityId", # required
    #           cause: "ACTIVITY_TYPE_DEPRECATED" # One of: ["ACTIVITY_TYPE_DEPRECATED", "ACTIVITY_TYPE_DOES_NOT_EXIST", "ACTIVITY_ID_ALREADY_IN_USE", "OPEN_ACTIVITIES_LIMIT_EXCEEDED", "ACTIVITY_CREATION_RATE_EXCEEDED", "DEFAULT_SCHEDULE_TO_CLOSE_TIMEOUT_UNDEFINED", "DEFAULT_TASK_LIST_UNDEFINED", "DEFAULT_SCHEDULE_TO_START_TIMEOUT_UNDEFINED", "DEFAULT_START_TO_CLOSE_TIMEOUT_UNDEFINED", "DEFAULT_HEARTBEAT_TIMEOUT_UNDEFINED", "OPERATION_NOT_PERMITTED"], # required
    #           decision_task_completed_event_id: 1, # required
    #         },
    #         request_cancel_activity_task_failed_event_attributes: {
    #           activity_id: "ActivityId", # required
    #           cause: "ACTIVITY_ID_UNKNOWN" # One of: ["ACTIVITY_ID_UNKNOWN", "OPERATION_NOT_PERMITTED"], # required
    #           decision_task_completed_event_id: 1, # required
    #         },
    #         start_timer_failed_event_attributes: {
    #           timer_id: "TimerId", # required
    #           cause: "TIMER_ID_ALREADY_IN_USE" # One of: ["TIMER_ID_ALREADY_IN_USE", "OPEN_TIMERS_LIMIT_EXCEEDED", "TIMER_CREATION_RATE_EXCEEDED", "OPERATION_NOT_PERMITTED"], # required
    #           decision_task_completed_event_id: 1, # required
    #         },
    #         cancel_timer_failed_event_attributes: {
    #           timer_id: "TimerId", # required
    #           cause: "TIMER_ID_UNKNOWN" # One of: ["TIMER_ID_UNKNOWN", "OPERATION_NOT_PERMITTED"], # required
    #           decision_task_completed_event_id: 1, # required
    #         },
    #         start_child_workflow_execution_failed_event_attributes: {
    #           workflow_type: { # required
    #             name: "Name", # required
    #             version: "Version", # required
    #           },
    #           cause: "WORKFLOW_TYPE_DOES_NOT_EXIST" # One of: ["WORKFLOW_TYPE_DOES_NOT_EXIST", "WORKFLOW_TYPE_DEPRECATED", "OPEN_CHILDREN_LIMIT_EXCEEDED", "OPEN_WORKFLOWS_LIMIT_EXCEEDED", "CHILD_CREATION_RATE_EXCEEDED", "WORKFLOW_ALREADY_RUNNING", "DEFAULT_EXECUTION_START_TO_CLOSE_TIMEOUT_UNDEFINED", "DEFAULT_TASK_LIST_UNDEFINED", "DEFAULT_TASK_START_TO_CLOSE_TIMEOUT_UNDEFINED", "DEFAULT_CHILD_POLICY_UNDEFINED", "OPERATION_NOT_PERMITTED"], # required
    #           workflow_id: "WorkflowId", # required
    #           initiated_event_id: 1, # required
    #           decision_task_completed_event_id: 1, # required
    #           control: "Data"
    #         },
    #         lambda_function_scheduled_event_attributes: {
    #           id: "FunctionId", # required
    #           name: "FunctionName", # required
    #           control: "Data",
    #           input: "FunctionInput",
    #           start_to_close_timeout: "DurationInSecondsOptional",
    #           decision_task_completed_event_id: 1, # required
    #         },
    #         lambda_function_started_event_attributes: {
    #           scheduled_event_id: 1, # required
    #         },
    #         lambda_function_completed_event_attributes: {
    #           scheduled_event_id: 1, # required
    #           started_event_id: 1, # required
    #           result: "Data"
    #         },
    #         lambda_function_failed_event_attributes: {
    #           scheduled_event_id: 1, # required
    #           started_event_id: 1, # required
    #           reason: "FailureReason",
    #           details: "Data"
    #         },
    #         lambda_function_timed_out_event_attributes: {
    #           scheduled_event_id: 1, # required
    #           started_event_id: 1, # required
    #           timeout_type: "START_TO_CLOSE" # One of: ["START_TO_CLOSE"]
    #         },
    #         schedule_lambda_function_failed_event_attributes: {
    #           id: "FunctionId", # required
    #           name: "FunctionName", # required
    #           cause: "ID_ALREADY_IN_USE" # One of: ["ID_ALREADY_IN_USE", "OPEN_LAMBDA_FUNCTIONS_LIMIT_EXCEEDED", "LAMBDA_FUNCTION_CREATION_RATE_EXCEEDED", "LAMBDA_SERVICE_NOT_AVAILABLE_IN_REGION"], # required
    #           decision_task_completed_event_id: 1, # required
    #         },
    #         start_lambda_function_failed_event_attributes: {
    #           scheduled_event_id: 1,
    #           cause: "ASSUME_ROLE_FAILED" # One of: ["ASSUME_ROLE_FAILED"],
    #           message: "CauseMessage"
    #         }
    #       }
    #     ],
    #     next_page_token: "PageToken"
    #   }
    # @return [Types::GetWorkflowExecutionHistoryOutput]
    def get_workflow_execution_history(params = {}, options = {})
      request = build_request(:get_workflow_execution_history, params)
      request.send_request(options)
    end

    # <p>Returns information about all activities registered in the specified domain that match
    #       the specified name and registration status. The result includes information like creation
    #       date, current status of the activity, etc. The results may be split into multiple pages. To
    #       retrieve subsequent pages, make the call again using the <code>nextPageToken</code> returned
    #       by the initial call.</p>
    #          <p>
    #             <b>Access Control</b>
    #          </p>
    #          <p>You can use IAM policies to control this action's access to Amazon SWF resources as
    #       follows:</p>
    #          <ul>
    #             <li>
    #                <p>Use a <code>Resource</code> element with the domain name to limit the action to
    #           only specified domains.</p>
    #             </li>
    #             <li>
    #                <p>Use an <code>Action</code> element to allow or deny permission to call this
    #           action.</p>
    #             </li>
    #             <li>
    #                <p>You cannot use an IAM policy to constrain this action's parameters.</p>
    #             </li>
    #          </ul>
    #          <p>If the caller doesn't have sufficient permissions to invoke the action, or the
    #       parameter values fall outside the specified constraints, the action fails. The associated
    #       event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>.
    #       For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF
    #         Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    # @param [Hash, Types::ListActivityTypesInput] params
    # @option params [String] :domain
    #   <p>The name of the domain in which the activity types have been registered.</p>
    # @option params [String] :name
    #   <p>If specified, only lists the activity types that have this name.</p>
    # @option params [String] :registration_status
    #   <p>Specifies the registration status of the activity types to list.</p>
    # @option params [String] :next_page_token
    #   <p>If <code>NextPageToken</code> is returned there are more results
    #         available.  The value of <code>NextPageToken</code> is a unique pagination token for each page. Make the call again using 
    #         the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires 
    #         after 24 hours. Using an expired pagination token will return a <code>400</code> error: "<code>Specified token has 
    #         exceeded its maximum lifetime</code>". </p>
    #            <p>The configured <code>maximumPageSize</code> determines how many results can be returned
    #         in a single call. </p>
    # @option params [Integer] :maximum_page_size
    #   <p>The maximum number of results that are returned per call.
    #     Use <code>nextPageToken</code> to obtain further pages of results. </p>
    # @option params [Boolean] :reverse_order
    #   <p>When set to <code>true</code>, returns the results in reverse order. By default, the
    #         results are returned in ascending alphabetical order by <code>name</code> of the activity
    #         types.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain: "DomainName", # required
    #     name: "Name",
    #     registration_status: "REGISTERED" # One of: ["REGISTERED", "DEPRECATED"], # required
    #     next_page_token: "PageToken",
    #     maximum_page_size: 1,
    #     reverse_order: false
    #   }
    #   options = {}
    #   response = client.list_activity_types(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     type_infos: [ # required
    #       {
    #         activity_type: { # required
    #           name: "Name", # required
    #           version: "Version", # required
    #         },
    #         status: "REGISTERED" # One of: ["REGISTERED", "DEPRECATED"], # required
    #         description: "Description",
    #         creation_date: Time.now, # required
    #         deprecation_date: Time.now
    #       }
    #     ],
    #     next_page_token: "PageToken"
    #   }
    # @return [Types::ListActivityTypesOutput]
    def list_activity_types(params = {}, options = {})
      request = build_request(:list_activity_types, params)
      request.send_request(options)
    end

    # <p>Returns a list of closed workflow executions in the specified domain that meet the
    #       filtering criteria. The results may be split into multiple pages. To retrieve subsequent
    #       pages, make the call again using the nextPageToken returned by the initial call.</p>
    #          <note>
    #             <p>This operation is eventually consistent. The results are best effort and may not
    #         exactly reflect recent updates and changes.</p>
    #          </note>
    #          <p>
    #             <b>Access Control</b>
    #          </p>
    #          <p>You can use IAM policies to control this action's access to Amazon SWF resources as
    #       follows:</p>
    #          <ul>
    #             <li>
    #                <p>Use a <code>Resource</code> element with the domain name to limit the action to
    #           only specified domains.</p>
    #             </li>
    #             <li>
    #                <p>Use an <code>Action</code> element to allow or deny permission to call this
    #           action.</p>
    #             </li>
    #             <li>
    #                <p>Constrain the following parameters by using a <code>Condition</code> element with
    #           the appropriate keys.</p>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <code>tagFilter.tag</code>: String constraint. The key is
    #                 <code>swf:tagFilter.tag</code>.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>typeFilter.name</code>: String constraint. The key is
    #                 <code>swf:typeFilter.name</code>.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>typeFilter.version</code>: String constraint. The key is
    #                 <code>swf:typeFilter.version</code>.</p>
    #                   </li>
    #                </ul>
    #             </li>
    #          </ul>
    #          <p>If the caller doesn't have sufficient permissions to invoke the action, or the
    #       parameter values fall outside the specified constraints, the action fails. The associated
    #       event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>.
    #       For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF
    #         Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    # @param [Hash, Types::ListClosedWorkflowExecutionsInput] params
    # @option params [String] :domain
    #   <p>The name of the domain that contains the workflow executions to list.</p>
    # @option params [Types::ExecutionTimeFilter] :start_time_filter
    #   <p>If specified, the workflow executions are included in the returned results based on
    #         whether their start times are within the range specified by this filter. Also, if this
    #         parameter is specified, the returned results are ordered by their start times.</p>
    #            <note>
    #               <p>
    #                  <code>startTimeFilter</code> and <code>closeTimeFilter</code> are mutually exclusive. You
    #           must specify one of these in a request but not both.</p>
    #            </note>
    # @option params [Types::ExecutionTimeFilter] :close_time_filter
    #   <p>If specified, the workflow executions are included in the returned results based on
    #         whether their close times are within the range specified by this filter. Also, if this
    #         parameter is specified, the returned results are ordered by their close times.</p>
    #            <note>
    #               <p>
    #                  <code>startTimeFilter</code> and <code>closeTimeFilter</code> are mutually exclusive. You
    #           must specify one of these in a request but not both.</p>
    #            </note>
    # @option params [Types::WorkflowExecutionFilter] :execution_filter
    #   <p>If specified, only workflow executions matching the workflow ID specified in the filter
    #         are returned.</p>
    #            <note>
    #               <p>
    #                  <code>closeStatusFilter</code>, <code>executionFilter</code>, <code>typeFilter</code> and
    #             <code>tagFilter</code> are mutually exclusive. You can specify at most one of these in a
    #           request.</p>
    #            </note>
    # @option params [Types::CloseStatusFilter] :close_status_filter
    #   <p>If specified, only workflow executions that match this <i>close
    #           status</i> are listed. For example, if TERMINATED is specified, then only TERMINATED
    #         workflow executions are listed.</p>
    #            <note>
    #               <p>
    #                  <code>closeStatusFilter</code>, <code>executionFilter</code>, <code>typeFilter</code> and
    #             <code>tagFilter</code> are mutually exclusive. You can specify at most one of these in a
    #           request.</p>
    #            </note>
    # @option params [Types::WorkflowTypeFilter] :type_filter
    #   <p>If specified, only executions of the type specified in the filter are
    #         returned.</p>
    #            <note>
    #               <p>
    #                  <code>closeStatusFilter</code>, <code>executionFilter</code>, <code>typeFilter</code> and
    #             <code>tagFilter</code> are mutually exclusive. You can specify at most one of these in a
    #           request.</p>
    #            </note>
    # @option params [Types::TagFilter] :tag_filter
    #   <p>If specified, only executions that have the matching tag are listed.</p>
    #            <note>
    #               <p>
    #                  <code>closeStatusFilter</code>, <code>executionFilter</code>, <code>typeFilter</code> and
    #             <code>tagFilter</code> are mutually exclusive. You can specify at most one of these in a
    #           request.</p>
    #            </note>
    # @option params [String] :next_page_token
    #   <p>If <code>NextPageToken</code> is returned there are more results
    #         available.  The value of <code>NextPageToken</code> is a unique pagination token for each page. Make the call again using 
    #         the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires 
    #         after 24 hours. Using an expired pagination token will return a <code>400</code> error: "<code>Specified token has 
    #         exceeded its maximum lifetime</code>". </p>
    #            <p>The configured <code>maximumPageSize</code> determines how many results can be returned
    #         in a single call. </p>
    # @option params [Integer] :maximum_page_size
    #   <p>The maximum number of results that are returned per call.
    #     Use <code>nextPageToken</code> to obtain further pages of results. </p>
    # @option params [Boolean] :reverse_order
    #   <p>When set to <code>true</code>, returns the results in reverse order. By default the
    #         results are returned in descending order of the start or the close time of the
    #         executions.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain: "DomainName", # required
    #     start_time_filter: {
    #       oldest_date: Time.now, # required
    #       latest_date: Time.now
    #     },
    #     close_time_filter: {
    #       oldest_date: Time.now, # required
    #       latest_date: Time.now
    #     },
    #     execution_filter: {
    #       workflow_id: "WorkflowId", # required
    #     },
    #     close_status_filter: {
    #       status: "COMPLETED" # One of: ["COMPLETED", "FAILED", "CANCELED", "TERMINATED", "CONTINUED_AS_NEW", "TIMED_OUT"], # required
    #     },
    #     type_filter: {
    #       name: "Name", # required
    #       version: "VersionOptional"
    #     },
    #     tag_filter: {
    #       tag: "Tag", # required
    #     },
    #     next_page_token: "PageToken",
    #     maximum_page_size: 1,
    #     reverse_order: false
    #   }
    #   options = {}
    #   response = client.list_closed_workflow_executions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     execution_infos: [ # required
    #       {
    #         execution: { # required
    #           workflow_id: "WorkflowId", # required
    #           run_id: "WorkflowRunId", # required
    #         },
    #         workflow_type: { # required
    #           name: "Name", # required
    #           version: "Version", # required
    #         },
    #         start_timestamp: Time.now, # required
    #         close_timestamp: Time.now,
    #         execution_status: "OPEN" # One of: ["OPEN", "CLOSED"], # required
    #         close_status: "COMPLETED" # One of: ["COMPLETED", "FAILED", "CANCELED", "TERMINATED", "CONTINUED_AS_NEW", "TIMED_OUT"],
    #         parent: {
    #           workflow_id: "WorkflowId", # required
    #           run_id: "WorkflowRunId", # required
    #         },
    #         tag_list: ["Tag"],
    #         cancel_requested: false
    #       }
    #     ],
    #     next_page_token: "PageToken"
    #   }
    # @return [Types::ListClosedWorkflowExecutionsOutput]
    def list_closed_workflow_executions(params = {}, options = {})
      request = build_request(:list_closed_workflow_executions, params)
      request.send_request(options)
    end

    # <p>Returns the list of domains registered in the account. The results may be split into
    #       multiple pages. To retrieve subsequent pages, make the call again using the nextPageToken
    #       returned by the initial call.</p>
    #          <note>
    #             <p>This operation is eventually consistent. The results are best effort and may not
    #         exactly reflect recent updates and changes.</p>
    #          </note>
    #          <p>
    #             <b>Access Control</b>
    #          </p>
    #          <p>You can use IAM policies to control this action's access to Amazon SWF resources as
    #       follows:</p>
    #          <ul>
    #             <li>
    #                <p>Use a <code>Resource</code> element with the domain name to limit the action to
    #           only specified domains. The element must be set to
    #             <code>arn:aws:swf::AccountID:domain/*</code>, where <i>AccountID</i> is
    #           the account ID, with no dashes.</p>
    #             </li>
    #             <li>
    #                <p>Use an <code>Action</code> element to allow or deny permission to call this
    #           action.</p>
    #             </li>
    #             <li>
    #                <p>You cannot use an IAM policy to constrain this action's parameters.</p>
    #             </li>
    #          </ul>
    #          <p>If the caller doesn't have sufficient permissions to invoke the action, or the
    #       parameter values fall outside the specified constraints, the action fails. The associated
    #       event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>.
    #       For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF
    #         Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    # @param [Hash, Types::ListDomainsInput] params
    # @option params [String] :next_page_token
    #   <p>If <code>NextPageToken</code> is returned there are more results
    #         available.  The value of <code>NextPageToken</code> is a unique pagination token for each page. Make the call again using 
    #         the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires 
    #         after 24 hours. Using an expired pagination token will return a <code>400</code> error: "<code>Specified token has 
    #         exceeded its maximum lifetime</code>". </p>
    #            <p>The configured <code>maximumPageSize</code> determines how many results can be returned
    #         in a single call. </p>
    # @option params [String] :registration_status
    #   <p>Specifies the registration status of the domains to list.</p>
    # @option params [Integer] :maximum_page_size
    #   <p>The maximum number of results that are returned per call.
    #     Use <code>nextPageToken</code> to obtain further pages of results. </p>
    # @option params [Boolean] :reverse_order
    #   <p>When set to <code>true</code>, returns the results in reverse order. By default, the
    #         results are returned in ascending alphabetical order by <code>name</code> of the
    #         domains.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_page_token: "PageToken",
    #     registration_status: "REGISTERED" # One of: ["REGISTERED", "DEPRECATED"], # required
    #     maximum_page_size: 1,
    #     reverse_order: false
    #   }
    #   options = {}
    #   response = client.list_domains(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_infos: [ # required
    #       {
    #         name: "DomainName", # required
    #         status: "REGISTERED" # One of: ["REGISTERED", "DEPRECATED"], # required
    #         description: "Description",
    #         arn: "Arn"
    #       }
    #     ],
    #     next_page_token: "PageToken"
    #   }
    # @return [Types::ListDomainsOutput]
    def list_domains(params = {}, options = {})
      request = build_request(:list_domains, params)
      request.send_request(options)
    end

    # <p>Returns a list of open workflow executions in the specified domain that meet the
    #       filtering criteria. The results may be split into multiple pages. To retrieve subsequent
    #       pages, make the call again using the nextPageToken returned by the initial call.</p>
    #          <note>
    #             <p>This operation is eventually consistent. The results are best effort and may not
    #         exactly reflect recent updates and changes.</p>
    #          </note>
    #          <p>
    #             <b>Access Control</b>
    #          </p>
    #          <p>You can use IAM policies to control this action's access to Amazon SWF resources as
    #       follows:</p>
    #          <ul>
    #             <li>
    #                <p>Use a <code>Resource</code> element with the domain name to limit the action to
    #           only specified domains.</p>
    #             </li>
    #             <li>
    #                <p>Use an <code>Action</code> element to allow or deny permission to call this
    #           action.</p>
    #             </li>
    #             <li>
    #                <p>Constrain the following parameters by using a <code>Condition</code> element with
    #           the appropriate keys.</p>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <code>tagFilter.tag</code>: String constraint. The key is
    #                 <code>swf:tagFilter.tag</code>.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>typeFilter.name</code>: String constraint. The key is
    #                 <code>swf:typeFilter.name</code>.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>typeFilter.version</code>: String constraint. The key is
    #                 <code>swf:typeFilter.version</code>.</p>
    #                   </li>
    #                </ul>
    #             </li>
    #          </ul>
    #          <p>If the caller doesn't have sufficient permissions to invoke the action, or the
    #       parameter values fall outside the specified constraints, the action fails. The associated
    #       event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>.
    #       For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF
    #         Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    # @param [Hash, Types::ListOpenWorkflowExecutionsInput] params
    # @option params [String] :domain
    #   <p>The name of the domain that contains the workflow executions to list.</p>
    # @option params [Types::ExecutionTimeFilter] :start_time_filter
    #   <p>Workflow executions are included in the returned results based on whether their start
    #         times are within the range specified by this filter.</p>
    # @option params [Types::WorkflowTypeFilter] :type_filter
    #   <p>If specified, only executions of the type specified in the filter are
    #         returned.</p>
    #            <note>
    #               <p>
    #                  <code>executionFilter</code>, <code>typeFilter</code> and <code>tagFilter</code> are
    #           mutually exclusive. You can specify at most one of these in a request.</p>
    #            </note>
    # @option params [Types::TagFilter] :tag_filter
    #   <p>If specified, only executions that have the matching tag are listed.</p>
    #            <note>
    #               <p>
    #                  <code>executionFilter</code>, <code>typeFilter</code> and <code>tagFilter</code> are
    #           mutually exclusive. You can specify at most one of these in a request.</p>
    #            </note>
    # @option params [String] :next_page_token
    #   <p>If <code>NextPageToken</code> is returned there are more results
    #         available.  The value of <code>NextPageToken</code> is a unique pagination token for each page. Make the call again using 
    #         the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires 
    #         after 24 hours. Using an expired pagination token will return a <code>400</code> error: "<code>Specified token has 
    #         exceeded its maximum lifetime</code>". </p>
    #            <p>The configured <code>maximumPageSize</code> determines how many results can be returned
    #         in a single call. </p>
    # @option params [Integer] :maximum_page_size
    #   <p>The maximum number of results that are returned per call.
    #     Use <code>nextPageToken</code> to obtain further pages of results. </p>
    # @option params [Boolean] :reverse_order
    #   <p>When set to <code>true</code>, returns the results in reverse order. By default the
    #         results are returned in descending order of the start time of the executions.</p>
    # @option params [Types::WorkflowExecutionFilter] :execution_filter
    #   <p>If specified, only workflow executions matching the workflow ID specified in the filter
    #         are returned.</p>
    #            <note>
    #               <p>
    #                  <code>executionFilter</code>, <code>typeFilter</code> and <code>tagFilter</code> are
    #           mutually exclusive. You can specify at most one of these in a request.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain: "DomainName", # required
    #     start_time_filter: { # required
    #       oldest_date: Time.now, # required
    #       latest_date: Time.now
    #     },
    #     type_filter: {
    #       name: "Name", # required
    #       version: "VersionOptional"
    #     },
    #     tag_filter: {
    #       tag: "Tag", # required
    #     },
    #     next_page_token: "PageToken",
    #     maximum_page_size: 1,
    #     reverse_order: false,
    #     execution_filter: {
    #       workflow_id: "WorkflowId", # required
    #     }
    #   }
    #   options = {}
    #   response = client.list_open_workflow_executions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     execution_infos: [ # required
    #       {
    #         execution: { # required
    #           workflow_id: "WorkflowId", # required
    #           run_id: "WorkflowRunId", # required
    #         },
    #         workflow_type: { # required
    #           name: "Name", # required
    #           version: "Version", # required
    #         },
    #         start_timestamp: Time.now, # required
    #         close_timestamp: Time.now,
    #         execution_status: "OPEN" # One of: ["OPEN", "CLOSED"], # required
    #         close_status: "COMPLETED" # One of: ["COMPLETED", "FAILED", "CANCELED", "TERMINATED", "CONTINUED_AS_NEW", "TIMED_OUT"],
    #         parent: {
    #           workflow_id: "WorkflowId", # required
    #           run_id: "WorkflowRunId", # required
    #         },
    #         tag_list: ["Tag"],
    #         cancel_requested: false
    #       }
    #     ],
    #     next_page_token: "PageToken"
    #   }
    # @return [Types::ListOpenWorkflowExecutionsOutput]
    def list_open_workflow_executions(params = {}, options = {})
      request = build_request(:list_open_workflow_executions, params)
      request.send_request(options)
    end

    # <p>List tags for a given domain.</p>
    # @param [Hash, Types::ListTagsForResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) for the Amazon SWF domain.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: [
    #       {
    #         key: "ResourceTagKey", # required
    #         value: "ResourceTagValue"
    #       }
    #     ]
    #   }
    # @return [Types::ListTagsForResourceOutput]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Returns information about workflow types in the specified domain. The results may be
    #       split into multiple pages that can be retrieved by making the call repeatedly.</p>
    #          <p>
    #             <b>Access Control</b>
    #          </p>
    #          <p>You can use IAM policies to control this action's access to Amazon SWF resources as
    #       follows:</p>
    #          <ul>
    #             <li>
    #                <p>Use a <code>Resource</code> element with the domain name to limit the action to
    #           only specified domains.</p>
    #             </li>
    #             <li>
    #                <p>Use an <code>Action</code> element to allow or deny permission to call this
    #           action.</p>
    #             </li>
    #             <li>
    #                <p>You cannot use an IAM policy to constrain this action's parameters.</p>
    #             </li>
    #          </ul>
    #          <p>If the caller doesn't have sufficient permissions to invoke the action, or the
    #       parameter values fall outside the specified constraints, the action fails. The associated
    #       event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>.
    #       For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF
    #         Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    # @param [Hash, Types::ListWorkflowTypesInput] params
    # @option params [String] :domain
    #   <p>The name of the domain in which the workflow types have been registered.</p>
    # @option params [String] :name
    #   <p>If specified, lists the workflow type with this name.</p>
    # @option params [String] :registration_status
    #   <p>Specifies the registration status of the workflow types to list.</p>
    # @option params [String] :next_page_token
    #   <p>If <code>NextPageToken</code> is returned there are more results
    #         available.  The value of <code>NextPageToken</code> is a unique pagination token for each page. Make the call again using 
    #         the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires 
    #         after 24 hours. Using an expired pagination token will return a <code>400</code> error: "<code>Specified token has 
    #         exceeded its maximum lifetime</code>". </p>
    #            <p>The configured <code>maximumPageSize</code> determines how many results can be returned
    #         in a single call. </p>
    # @option params [Integer] :maximum_page_size
    #   <p>The maximum number of results that are returned per call.
    #     Use <code>nextPageToken</code> to obtain further pages of results. </p>
    # @option params [Boolean] :reverse_order
    #   <p>When set to <code>true</code>, returns the results in reverse order. By default the
    #         results are returned in ascending alphabetical order of the <code>name</code> of the workflow
    #         types.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain: "DomainName", # required
    #     name: "Name",
    #     registration_status: "REGISTERED" # One of: ["REGISTERED", "DEPRECATED"], # required
    #     next_page_token: "PageToken",
    #     maximum_page_size: 1,
    #     reverse_order: false
    #   }
    #   options = {}
    #   response = client.list_workflow_types(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     type_infos: [ # required
    #       {
    #         workflow_type: { # required
    #           name: "Name", # required
    #           version: "Version", # required
    #         },
    #         status: "REGISTERED" # One of: ["REGISTERED", "DEPRECATED"], # required
    #         description: "Description",
    #         creation_date: Time.now, # required
    #         deprecation_date: Time.now
    #       }
    #     ],
    #     next_page_token: "PageToken"
    #   }
    # @return [Types::ListWorkflowTypesOutput]
    def list_workflow_types(params = {}, options = {})
      request = build_request(:list_workflow_types, params)
      request.send_request(options)
    end

    # <p>Used by workers to get an <a>ActivityTask</a> from the specified activity
    #         <code>taskList</code>. This initiates a long poll, where the service holds the HTTP
    #       connection open and responds as soon as a task becomes available. The maximum time the service
    #       holds on to the request before responding is 60 seconds. If no task is available within 60
    #       seconds, the poll returns an empty result. An empty result, in this context, means that an
    #       ActivityTask is returned, but that the value of taskToken is an empty string. If a task is
    #       returned, the worker should use its type to identify and process it correctly.</p>
    #          <important>
    #             <p>Workers should set their client side socket timeout to at least 70 seconds (10
    #         seconds higher than the maximum time service may hold the poll request).</p>
    #          </important>
    #          <p>
    #             <b>Access Control</b>
    #          </p>
    #          <p>You can use IAM policies to control this action's access to Amazon SWF resources as
    #       follows:</p>
    #          <ul>
    #             <li>
    #                <p>Use a <code>Resource</code> element with the domain name to limit the action to
    #           only specified domains.</p>
    #             </li>
    #             <li>
    #                <p>Use an <code>Action</code> element to allow or deny permission to call this
    #           action.</p>
    #             </li>
    #             <li>
    #                <p>Constrain the <code>taskList.name</code> parameter by using a
    #             <code>Condition</code> element with the <code>swf:taskList.name</code> key to allow the
    #           action to access only certain task lists.</p>
    #             </li>
    #          </ul>
    #          <p>If the caller doesn't have sufficient permissions to invoke the action, or the
    #       parameter values fall outside the specified constraints, the action fails. The associated
    #       event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>.
    #       For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF
    #         Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    # @param [Hash, Types::PollForActivityTaskInput] params
    # @option params [String] :domain
    #   <p>The name of the domain that contains the task lists being polled.</p>
    # @option params [Types::TaskList] :task_list
    #   <p>Specifies the task list to poll for activity tasks.</p>
    #            <p>The specified string must not start or end with whitespace. It must not contain a
    #           <code>:</code> (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any
    #         control characters (<code>\u0000-\u001f</code> | <code>\u007f-\u009f</code>). Also, it must
    #         <i>not</i> be the literal string <code>arn</code>.</p>
    # @option params [String] :identity
    #   <p>Identity of the worker making the request, recorded in the
    #           <code>ActivityTaskStarted</code> event in the workflow history. This enables diagnostic
    #         tracing when problems arise. The form of this identity is user defined.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain: "DomainName", # required
    #     task_list: { # required
    #       name: "Name", # required
    #     },
    #     identity: "Identity"
    #   }
    #   options = {}
    #   response = client.poll_for_activity_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     task_token: "TaskToken", # required
    #     activity_id: "ActivityId", # required
    #     started_event_id: 1, # required
    #     workflow_execution: { # required
    #       workflow_id: "WorkflowId", # required
    #       run_id: "WorkflowRunId", # required
    #     },
    #     activity_type: { # required
    #       name: "Name", # required
    #       version: "Version", # required
    #     },
    #     input: "Data"
    #   }
    # @return [Types::PollForActivityTaskOutput]
    def poll_for_activity_task(params = {}, options = {})
      request = build_request(:poll_for_activity_task, params)
      request.send_request(options)
    end

    # <p>Used by deciders to get a <a>DecisionTask</a> from the specified decision
    #         <code>taskList</code>. A decision task may be returned for any open workflow execution that
    #       is using the specified task list. The task includes a paginated view of the history of the
    #       workflow execution. The decider should use the workflow type and the history to determine how
    #       to properly handle the task.</p>
    #          <p>This action initiates a long poll, where the service holds the HTTP connection open and
    #       responds as soon a task becomes available. If no decision task is available in the specified
    #       task list before the timeout of 60 seconds expires, an empty result is returned. An empty
    #       result, in this context, means that a DecisionTask is returned, but that the value of
    #       taskToken is an empty string.</p>
    #          <important>
    #             <p>Deciders should set their client side socket timeout to at least 70 seconds (10
    #         seconds higher than the timeout).</p>
    #          </important>
    #          <important>
    #             <p>Because the number of workflow history events for a single workflow execution might
    #         be very large, the result returned might be split up across a number of pages. To retrieve
    #         subsequent pages, make additional calls to <code>PollForDecisionTask</code> using the
    #           <code>nextPageToken</code> returned by the initial call. Note that you do
    #           <i>not</i> call <code>GetWorkflowExecutionHistory</code> with this
    #           <code>nextPageToken</code>. Instead, call <code>PollForDecisionTask</code>
    #         again.</p>
    #          </important>
    #          <p>
    #             <b>Access Control</b>
    #          </p>
    #          <p>You can use IAM policies to control this action's access to Amazon SWF resources as
    #       follows:</p>
    #          <ul>
    #             <li>
    #                <p>Use a <code>Resource</code> element with the domain name to limit the action to
    #           only specified domains.</p>
    #             </li>
    #             <li>
    #                <p>Use an <code>Action</code> element to allow or deny permission to call this
    #           action.</p>
    #             </li>
    #             <li>
    #                <p>Constrain the <code>taskList.name</code> parameter by using a
    #             <code>Condition</code> element with the <code>swf:taskList.name</code> key to allow the
    #           action to access only certain task lists.</p>
    #             </li>
    #          </ul>
    #          <p>If the caller doesn't have sufficient permissions to invoke the action, or the
    #       parameter values fall outside the specified constraints, the action fails. The associated
    #       event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>.
    #       For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF
    #         Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    # @param [Hash, Types::PollForDecisionTaskInput] params
    # @option params [String] :domain
    #   <p>The name of the domain containing the task lists to poll.</p>
    # @option params [Types::TaskList] :task_list
    #   <p>Specifies the task list to poll for decision tasks.</p>
    #            <p>The specified string must not contain a
    #           <code>:</code> (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any
    #         control characters (<code>\u0000-\u001f</code> | <code>\u007f-\u009f</code>). Also, it must
    #         <i>not</i> be the literal string <code>arn</code>.</p>
    # @option params [String] :identity
    #   <p>Identity of the decider making the request, which is recorded in the
    #         DecisionTaskStarted event in the workflow history. This enables diagnostic tracing when
    #         problems arise. The form of this identity is user defined.</p>
    # @option params [String] :next_page_token
    #   <p>If <code>NextPageToken</code> is returned there are more results
    #         available.  The value of <code>NextPageToken</code> is a unique pagination token for each page. Make the call again using 
    #         the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires 
    #         after 24 hours. Using an expired pagination token will return a <code>400</code> error: "<code>Specified token has 
    #         exceeded its maximum lifetime</code>". </p>
    #            <p>The configured <code>maximumPageSize</code> determines how many results can be returned
    #         in a single call. </p>
    #            <note>
    #               <p>The <code>nextPageToken</code> returned by this action cannot be used with <a>GetWorkflowExecutionHistory</a> to get the next page. You must call <a>PollForDecisionTask</a> again (with the <code>nextPageToken</code>) to retrieve
    #           the next page of history records. Calling <a>PollForDecisionTask</a> with a
    #             <code>nextPageToken</code> doesn't return a new decision task.</p>
    #            </note>
    # @option params [Integer] :maximum_page_size
    #   <p>The maximum number of results that are returned per call.
    #     Use <code>nextPageToken</code> to obtain further pages of results. </p>
    #            <p>This
    #         is an upper limit only; the actual number of results returned per call may be fewer than the
    #         specified maximum.</p>
    # @option params [Boolean] :reverse_order
    #   <p>When set to <code>true</code>, returns the events in reverse order. By default the
    #         results are returned in ascending order of the <code>eventTimestamp</code> of the
    #         events.</p>
    # @option params [Boolean] :start_at_previous_started_event
    #   <p>When set to <code>true</code>, returns the events with <code>eventTimestamp</code> greater than or equal to <code>eventTimestamp</code> of the most recent <code>DecisionTaskStarted</code> event. By default, this parameter is set to <code>false</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain: "DomainName", # required
    #     task_list: { # required
    #       name: "Name", # required
    #     },
    #     identity: "Identity",
    #     next_page_token: "PageToken",
    #     maximum_page_size: 1,
    #     reverse_order: false,
    #     start_at_previous_started_event: false
    #   }
    #   options = {}
    #   response = client.poll_for_decision_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     task_token: "TaskToken", # required
    #     started_event_id: 1, # required
    #     workflow_execution: { # required
    #       workflow_id: "WorkflowId", # required
    #       run_id: "WorkflowRunId", # required
    #     },
    #     workflow_type: { # required
    #       name: "Name", # required
    #       version: "Version", # required
    #     },
    #     events: [ # required
    #       {
    #         event_timestamp: Time.now, # required
    #         event_type: "WorkflowExecutionStarted" # One of: ["WorkflowExecutionStarted", "WorkflowExecutionCancelRequested", "WorkflowExecutionCompleted", "CompleteWorkflowExecutionFailed", "WorkflowExecutionFailed", "FailWorkflowExecutionFailed", "WorkflowExecutionTimedOut", "WorkflowExecutionCanceled", "CancelWorkflowExecutionFailed", "WorkflowExecutionContinuedAsNew", "ContinueAsNewWorkflowExecutionFailed", "WorkflowExecutionTerminated", "DecisionTaskScheduled", "DecisionTaskStarted", "DecisionTaskCompleted", "DecisionTaskTimedOut", "ActivityTaskScheduled", "ScheduleActivityTaskFailed", "ActivityTaskStarted", "ActivityTaskCompleted", "ActivityTaskFailed", "ActivityTaskTimedOut", "ActivityTaskCanceled", "ActivityTaskCancelRequested", "RequestCancelActivityTaskFailed", "WorkflowExecutionSignaled", "MarkerRecorded", "RecordMarkerFailed", "TimerStarted", "StartTimerFailed", "TimerFired", "TimerCanceled", "CancelTimerFailed", "StartChildWorkflowExecutionInitiated", "StartChildWorkflowExecutionFailed", "ChildWorkflowExecutionStarted", "ChildWorkflowExecutionCompleted", "ChildWorkflowExecutionFailed", "ChildWorkflowExecutionTimedOut", "ChildWorkflowExecutionCanceled", "ChildWorkflowExecutionTerminated", "SignalExternalWorkflowExecutionInitiated", "SignalExternalWorkflowExecutionFailed", "ExternalWorkflowExecutionSignaled", "RequestCancelExternalWorkflowExecutionInitiated", "RequestCancelExternalWorkflowExecutionFailed", "ExternalWorkflowExecutionCancelRequested", "LambdaFunctionScheduled", "LambdaFunctionStarted", "LambdaFunctionCompleted", "LambdaFunctionFailed", "LambdaFunctionTimedOut", "ScheduleLambdaFunctionFailed", "StartLambdaFunctionFailed"], # required
    #         event_id: 1, # required
    #         workflow_execution_started_event_attributes: {
    #           input: "Data",
    #           execution_start_to_close_timeout: "DurationInSecondsOptional",
    #           task_start_to_close_timeout: "DurationInSecondsOptional",
    #           child_policy: "TERMINATE" # One of: ["TERMINATE", "REQUEST_CANCEL", "ABANDON"], # required
    #           task_list: { # required
    #             name: "Name", # required
    #           },
    #           task_priority: "TaskPriority",
    #           workflow_type: { # required
    #             name: "Name", # required
    #             version: "Version", # required
    #           },
    #           tag_list: ["Tag"],
    #           continued_execution_run_id: "WorkflowRunIdOptional",
    #           parent_workflow_execution: {
    #             workflow_id: "WorkflowId", # required
    #             run_id: "WorkflowRunId", # required
    #           },
    #           parent_initiated_event_id: 1,
    #           lambda_role: "Arn"
    #         },
    #         workflow_execution_completed_event_attributes: {
    #           result: "Data",
    #           decision_task_completed_event_id: 1, # required
    #         },
    #         complete_workflow_execution_failed_event_attributes: {
    #           cause: "UNHANDLED_DECISION" # One of: ["UNHANDLED_DECISION", "OPERATION_NOT_PERMITTED"], # required
    #           decision_task_completed_event_id: 1, # required
    #         },
    #         workflow_execution_failed_event_attributes: {
    #           reason: "FailureReason",
    #           details: "Data",
    #           decision_task_completed_event_id: 1, # required
    #         },
    #         fail_workflow_execution_failed_event_attributes: {
    #           cause: "UNHANDLED_DECISION" # One of: ["UNHANDLED_DECISION", "OPERATION_NOT_PERMITTED"], # required
    #           decision_task_completed_event_id: 1, # required
    #         },
    #         workflow_execution_timed_out_event_attributes: {
    #           timeout_type: "START_TO_CLOSE" # One of: ["START_TO_CLOSE"], # required
    #           child_policy: "TERMINATE" # One of: ["TERMINATE", "REQUEST_CANCEL", "ABANDON"], # required
    #         },
    #         workflow_execution_canceled_event_attributes: {
    #           details: "Data",
    #           decision_task_completed_event_id: 1, # required
    #         },
    #         cancel_workflow_execution_failed_event_attributes: {
    #           cause: "UNHANDLED_DECISION" # One of: ["UNHANDLED_DECISION", "OPERATION_NOT_PERMITTED"], # required
    #           decision_task_completed_event_id: 1, # required
    #         },
    #         workflow_execution_continued_as_new_event_attributes: {
    #           input: "Data",
    #           decision_task_completed_event_id: 1, # required
    #           new_execution_run_id: "WorkflowRunId", # required
    #           execution_start_to_close_timeout: "DurationInSecondsOptional",
    #           task_list: { # required
    #             name: "Name", # required
    #           },
    #           task_priority: "TaskPriority",
    #           task_start_to_close_timeout: "DurationInSecondsOptional",
    #           child_policy: "TERMINATE" # One of: ["TERMINATE", "REQUEST_CANCEL", "ABANDON"], # required
    #           tag_list: ["Tag"],
    #           workflow_type: { # required
    #             name: "Name", # required
    #             version: "Version", # required
    #           },
    #           lambda_role: "Arn"
    #         },
    #         continue_as_new_workflow_execution_failed_event_attributes: {
    #           cause: "UNHANDLED_DECISION" # One of: ["UNHANDLED_DECISION", "WORKFLOW_TYPE_DEPRECATED", "WORKFLOW_TYPE_DOES_NOT_EXIST", "DEFAULT_EXECUTION_START_TO_CLOSE_TIMEOUT_UNDEFINED", "DEFAULT_TASK_START_TO_CLOSE_TIMEOUT_UNDEFINED", "DEFAULT_TASK_LIST_UNDEFINED", "DEFAULT_CHILD_POLICY_UNDEFINED", "CONTINUE_AS_NEW_WORKFLOW_EXECUTION_RATE_EXCEEDED", "OPERATION_NOT_PERMITTED"], # required
    #           decision_task_completed_event_id: 1, # required
    #         },
    #         workflow_execution_terminated_event_attributes: {
    #           reason: "TerminateReason",
    #           details: "Data",
    #           child_policy: "TERMINATE" # One of: ["TERMINATE", "REQUEST_CANCEL", "ABANDON"], # required
    #           cause: "CHILD_POLICY_APPLIED" # One of: ["CHILD_POLICY_APPLIED", "EVENT_LIMIT_EXCEEDED", "OPERATOR_INITIATED"]
    #         },
    #         workflow_execution_cancel_requested_event_attributes: {
    #           external_workflow_execution: {
    #             workflow_id: "WorkflowId", # required
    #             run_id: "WorkflowRunId", # required
    #           },
    #           external_initiated_event_id: 1,
    #           cause: "CHILD_POLICY_APPLIED" # One of: ["CHILD_POLICY_APPLIED"]
    #         },
    #         decision_task_scheduled_event_attributes: {
    #           task_list: { # required
    #             name: "Name", # required
    #           },
    #           task_priority: "TaskPriority",
    #           start_to_close_timeout: "DurationInSecondsOptional",
    #           schedule_to_start_timeout: "DurationInSecondsOptional"
    #         },
    #         decision_task_started_event_attributes: {
    #           identity: "Identity",
    #           scheduled_event_id: 1, # required
    #         },
    #         decision_task_completed_event_attributes: {
    #           execution_context: "Data",
    #           scheduled_event_id: 1, # required
    #           started_event_id: 1, # required
    #           task_list: {
    #             name: "Name", # required
    #           },
    #           task_list_schedule_to_start_timeout: "DurationInSecondsOptional"
    #         },
    #         decision_task_timed_out_event_attributes: {
    #           timeout_type: "START_TO_CLOSE" # One of: ["START_TO_CLOSE", "SCHEDULE_TO_START"], # required
    #           scheduled_event_id: 1, # required
    #           started_event_id: 1, # required
    #         },
    #         activity_task_scheduled_event_attributes: {
    #           activity_type: { # required
    #             name: "Name", # required
    #             version: "Version", # required
    #           },
    #           activity_id: "ActivityId", # required
    #           input: "Data",
    #           control: "Data",
    #           schedule_to_start_timeout: "DurationInSecondsOptional",
    #           schedule_to_close_timeout: "DurationInSecondsOptional",
    #           start_to_close_timeout: "DurationInSecondsOptional",
    #           task_list: { # required
    #             name: "Name", # required
    #           },
    #           task_priority: "TaskPriority",
    #           decision_task_completed_event_id: 1, # required
    #           heartbeat_timeout: "DurationInSecondsOptional"
    #         },
    #         activity_task_started_event_attributes: {
    #           identity: "Identity",
    #           scheduled_event_id: 1, # required
    #         },
    #         activity_task_completed_event_attributes: {
    #           result: "Data",
    #           scheduled_event_id: 1, # required
    #           started_event_id: 1, # required
    #         },
    #         activity_task_failed_event_attributes: {
    #           reason: "FailureReason",
    #           details: "Data",
    #           scheduled_event_id: 1, # required
    #           started_event_id: 1, # required
    #         },
    #         activity_task_timed_out_event_attributes: {
    #           timeout_type: "START_TO_CLOSE" # One of: ["START_TO_CLOSE", "SCHEDULE_TO_START", "SCHEDULE_TO_CLOSE", "HEARTBEAT"], # required
    #           scheduled_event_id: 1, # required
    #           started_event_id: 1, # required
    #           details: "LimitedData"
    #         },
    #         activity_task_canceled_event_attributes: {
    #           details: "Data",
    #           scheduled_event_id: 1, # required
    #           started_event_id: 1, # required
    #           latest_cancel_requested_event_id: 1
    #         },
    #         activity_task_cancel_requested_event_attributes: {
    #           decision_task_completed_event_id: 1, # required
    #           activity_id: "ActivityId", # required
    #         },
    #         workflow_execution_signaled_event_attributes: {
    #           signal_name: "SignalName", # required
    #           input: "Data",
    #           external_workflow_execution: {
    #             workflow_id: "WorkflowId", # required
    #             run_id: "WorkflowRunId", # required
    #           },
    #           external_initiated_event_id: 1
    #         },
    #         marker_recorded_event_attributes: {
    #           marker_name: "MarkerName", # required
    #           details: "Data",
    #           decision_task_completed_event_id: 1, # required
    #         },
    #         record_marker_failed_event_attributes: {
    #           marker_name: "MarkerName", # required
    #           cause: "OPERATION_NOT_PERMITTED" # One of: ["OPERATION_NOT_PERMITTED"], # required
    #           decision_task_completed_event_id: 1, # required
    #         },
    #         timer_started_event_attributes: {
    #           timer_id: "TimerId", # required
    #           control: "Data",
    #           start_to_fire_timeout: "DurationInSeconds", # required
    #           decision_task_completed_event_id: 1, # required
    #         },
    #         timer_fired_event_attributes: {
    #           timer_id: "TimerId", # required
    #           started_event_id: 1, # required
    #         },
    #         timer_canceled_event_attributes: {
    #           timer_id: "TimerId", # required
    #           started_event_id: 1, # required
    #           decision_task_completed_event_id: 1, # required
    #         },
    #         start_child_workflow_execution_initiated_event_attributes: {
    #           workflow_id: "WorkflowId", # required
    #           workflow_type: { # required
    #             name: "Name", # required
    #             version: "Version", # required
    #           },
    #           control: "Data",
    #           input: "Data",
    #           execution_start_to_close_timeout: "DurationInSecondsOptional",
    #           task_list: { # required
    #             name: "Name", # required
    #           },
    #           task_priority: "TaskPriority",
    #           decision_task_completed_event_id: 1, # required
    #           child_policy: "TERMINATE" # One of: ["TERMINATE", "REQUEST_CANCEL", "ABANDON"], # required
    #           task_start_to_close_timeout: "DurationInSecondsOptional",
    #           tag_list: ["Tag"],
    #           lambda_role: "Arn"
    #         },
    #         child_workflow_execution_started_event_attributes: {
    #           workflow_execution: { # required
    #             workflow_id: "WorkflowId", # required
    #             run_id: "WorkflowRunId", # required
    #           },
    #           workflow_type: { # required
    #             name: "Name", # required
    #             version: "Version", # required
    #           },
    #           initiated_event_id: 1, # required
    #         },
    #         child_workflow_execution_completed_event_attributes: {
    #           workflow_execution: { # required
    #             workflow_id: "WorkflowId", # required
    #             run_id: "WorkflowRunId", # required
    #           },
    #           workflow_type: { # required
    #             name: "Name", # required
    #             version: "Version", # required
    #           },
    #           result: "Data",
    #           initiated_event_id: 1, # required
    #           started_event_id: 1, # required
    #         },
    #         child_workflow_execution_failed_event_attributes: {
    #           workflow_execution: { # required
    #             workflow_id: "WorkflowId", # required
    #             run_id: "WorkflowRunId", # required
    #           },
    #           workflow_type: { # required
    #             name: "Name", # required
    #             version: "Version", # required
    #           },
    #           reason: "FailureReason",
    #           details: "Data",
    #           initiated_event_id: 1, # required
    #           started_event_id: 1, # required
    #         },
    #         child_workflow_execution_timed_out_event_attributes: {
    #           workflow_execution: { # required
    #             workflow_id: "WorkflowId", # required
    #             run_id: "WorkflowRunId", # required
    #           },
    #           workflow_type: { # required
    #             name: "Name", # required
    #             version: "Version", # required
    #           },
    #           timeout_type: "START_TO_CLOSE" # One of: ["START_TO_CLOSE"], # required
    #           initiated_event_id: 1, # required
    #           started_event_id: 1, # required
    #         },
    #         child_workflow_execution_canceled_event_attributes: {
    #           workflow_execution: { # required
    #             workflow_id: "WorkflowId", # required
    #             run_id: "WorkflowRunId", # required
    #           },
    #           workflow_type: { # required
    #             name: "Name", # required
    #             version: "Version", # required
    #           },
    #           details: "Data",
    #           initiated_event_id: 1, # required
    #           started_event_id: 1, # required
    #         },
    #         child_workflow_execution_terminated_event_attributes: {
    #           workflow_execution: { # required
    #             workflow_id: "WorkflowId", # required
    #             run_id: "WorkflowRunId", # required
    #           },
    #           workflow_type: { # required
    #             name: "Name", # required
    #             version: "Version", # required
    #           },
    #           initiated_event_id: 1, # required
    #           started_event_id: 1, # required
    #         },
    #         signal_external_workflow_execution_initiated_event_attributes: {
    #           workflow_id: "WorkflowId", # required
    #           run_id: "WorkflowRunIdOptional",
    #           signal_name: "SignalName", # required
    #           input: "Data",
    #           decision_task_completed_event_id: 1, # required
    #           control: "Data"
    #         },
    #         external_workflow_execution_signaled_event_attributes: {
    #           workflow_execution: { # required
    #             workflow_id: "WorkflowId", # required
    #             run_id: "WorkflowRunId", # required
    #           },
    #           initiated_event_id: 1, # required
    #         },
    #         signal_external_workflow_execution_failed_event_attributes: {
    #           workflow_id: "WorkflowId", # required
    #           run_id: "WorkflowRunIdOptional",
    #           cause: "UNKNOWN_EXTERNAL_WORKFLOW_EXECUTION" # One of: ["UNKNOWN_EXTERNAL_WORKFLOW_EXECUTION", "SIGNAL_EXTERNAL_WORKFLOW_EXECUTION_RATE_EXCEEDED", "OPERATION_NOT_PERMITTED"], # required
    #           initiated_event_id: 1, # required
    #           decision_task_completed_event_id: 1, # required
    #           control: "Data"
    #         },
    #         external_workflow_execution_cancel_requested_event_attributes: {
    #           workflow_execution: { # required
    #             workflow_id: "WorkflowId", # required
    #             run_id: "WorkflowRunId", # required
    #           },
    #           initiated_event_id: 1, # required
    #         },
    #         request_cancel_external_workflow_execution_initiated_event_attributes: {
    #           workflow_id: "WorkflowId", # required
    #           run_id: "WorkflowRunIdOptional",
    #           decision_task_completed_event_id: 1, # required
    #           control: "Data"
    #         },
    #         request_cancel_external_workflow_execution_failed_event_attributes: {
    #           workflow_id: "WorkflowId", # required
    #           run_id: "WorkflowRunIdOptional",
    #           cause: "UNKNOWN_EXTERNAL_WORKFLOW_EXECUTION" # One of: ["UNKNOWN_EXTERNAL_WORKFLOW_EXECUTION", "REQUEST_CANCEL_EXTERNAL_WORKFLOW_EXECUTION_RATE_EXCEEDED", "OPERATION_NOT_PERMITTED"], # required
    #           initiated_event_id: 1, # required
    #           decision_task_completed_event_id: 1, # required
    #           control: "Data"
    #         },
    #         schedule_activity_task_failed_event_attributes: {
    #           activity_type: { # required
    #             name: "Name", # required
    #             version: "Version", # required
    #           },
    #           activity_id: "ActivityId", # required
    #           cause: "ACTIVITY_TYPE_DEPRECATED" # One of: ["ACTIVITY_TYPE_DEPRECATED", "ACTIVITY_TYPE_DOES_NOT_EXIST", "ACTIVITY_ID_ALREADY_IN_USE", "OPEN_ACTIVITIES_LIMIT_EXCEEDED", "ACTIVITY_CREATION_RATE_EXCEEDED", "DEFAULT_SCHEDULE_TO_CLOSE_TIMEOUT_UNDEFINED", "DEFAULT_TASK_LIST_UNDEFINED", "DEFAULT_SCHEDULE_TO_START_TIMEOUT_UNDEFINED", "DEFAULT_START_TO_CLOSE_TIMEOUT_UNDEFINED", "DEFAULT_HEARTBEAT_TIMEOUT_UNDEFINED", "OPERATION_NOT_PERMITTED"], # required
    #           decision_task_completed_event_id: 1, # required
    #         },
    #         request_cancel_activity_task_failed_event_attributes: {
    #           activity_id: "ActivityId", # required
    #           cause: "ACTIVITY_ID_UNKNOWN" # One of: ["ACTIVITY_ID_UNKNOWN", "OPERATION_NOT_PERMITTED"], # required
    #           decision_task_completed_event_id: 1, # required
    #         },
    #         start_timer_failed_event_attributes: {
    #           timer_id: "TimerId", # required
    #           cause: "TIMER_ID_ALREADY_IN_USE" # One of: ["TIMER_ID_ALREADY_IN_USE", "OPEN_TIMERS_LIMIT_EXCEEDED", "TIMER_CREATION_RATE_EXCEEDED", "OPERATION_NOT_PERMITTED"], # required
    #           decision_task_completed_event_id: 1, # required
    #         },
    #         cancel_timer_failed_event_attributes: {
    #           timer_id: "TimerId", # required
    #           cause: "TIMER_ID_UNKNOWN" # One of: ["TIMER_ID_UNKNOWN", "OPERATION_NOT_PERMITTED"], # required
    #           decision_task_completed_event_id: 1, # required
    #         },
    #         start_child_workflow_execution_failed_event_attributes: {
    #           workflow_type: { # required
    #             name: "Name", # required
    #             version: "Version", # required
    #           },
    #           cause: "WORKFLOW_TYPE_DOES_NOT_EXIST" # One of: ["WORKFLOW_TYPE_DOES_NOT_EXIST", "WORKFLOW_TYPE_DEPRECATED", "OPEN_CHILDREN_LIMIT_EXCEEDED", "OPEN_WORKFLOWS_LIMIT_EXCEEDED", "CHILD_CREATION_RATE_EXCEEDED", "WORKFLOW_ALREADY_RUNNING", "DEFAULT_EXECUTION_START_TO_CLOSE_TIMEOUT_UNDEFINED", "DEFAULT_TASK_LIST_UNDEFINED", "DEFAULT_TASK_START_TO_CLOSE_TIMEOUT_UNDEFINED", "DEFAULT_CHILD_POLICY_UNDEFINED", "OPERATION_NOT_PERMITTED"], # required
    #           workflow_id: "WorkflowId", # required
    #           initiated_event_id: 1, # required
    #           decision_task_completed_event_id: 1, # required
    #           control: "Data"
    #         },
    #         lambda_function_scheduled_event_attributes: {
    #           id: "FunctionId", # required
    #           name: "FunctionName", # required
    #           control: "Data",
    #           input: "FunctionInput",
    #           start_to_close_timeout: "DurationInSecondsOptional",
    #           decision_task_completed_event_id: 1, # required
    #         },
    #         lambda_function_started_event_attributes: {
    #           scheduled_event_id: 1, # required
    #         },
    #         lambda_function_completed_event_attributes: {
    #           scheduled_event_id: 1, # required
    #           started_event_id: 1, # required
    #           result: "Data"
    #         },
    #         lambda_function_failed_event_attributes: {
    #           scheduled_event_id: 1, # required
    #           started_event_id: 1, # required
    #           reason: "FailureReason",
    #           details: "Data"
    #         },
    #         lambda_function_timed_out_event_attributes: {
    #           scheduled_event_id: 1, # required
    #           started_event_id: 1, # required
    #           timeout_type: "START_TO_CLOSE" # One of: ["START_TO_CLOSE"]
    #         },
    #         schedule_lambda_function_failed_event_attributes: {
    #           id: "FunctionId", # required
    #           name: "FunctionName", # required
    #           cause: "ID_ALREADY_IN_USE" # One of: ["ID_ALREADY_IN_USE", "OPEN_LAMBDA_FUNCTIONS_LIMIT_EXCEEDED", "LAMBDA_FUNCTION_CREATION_RATE_EXCEEDED", "LAMBDA_SERVICE_NOT_AVAILABLE_IN_REGION"], # required
    #           decision_task_completed_event_id: 1, # required
    #         },
    #         start_lambda_function_failed_event_attributes: {
    #           scheduled_event_id: 1,
    #           cause: "ASSUME_ROLE_FAILED" # One of: ["ASSUME_ROLE_FAILED"],
    #           message: "CauseMessage"
    #         }
    #       }
    #     ],
    #     next_page_token: "PageToken",
    #     previous_started_event_id: 1
    #   }
    # @return [Types::PollForDecisionTaskOutput]
    def poll_for_decision_task(params = {}, options = {})
      request = build_request(:poll_for_decision_task, params)
      request.send_request(options)
    end

    # <p>Used by activity workers to report to the service that the <a>ActivityTask</a> represented by the specified <code>taskToken</code> is still making progress. The worker
    #       can also specify details of the progress, for example percent complete, using the
    #         <code>details</code> parameter. This action can also be used by the worker as a mechanism to
    #       check if cancellation is being requested for the activity task. If a cancellation is being
    #       attempted for the specified task, then the boolean <code>cancelRequested</code> flag returned
    #       by the service is set to <code>true</code>.</p>
    #          <p>This action resets the <code>taskHeartbeatTimeout</code> clock. The
    #         <code>taskHeartbeatTimeout</code> is specified in <a>RegisterActivityType</a>.</p>
    #          <p>This action doesn't in itself create an event in the workflow execution history.
    #       However, if the task times out, the workflow execution history contains a
    #         <code>ActivityTaskTimedOut</code> event that contains the information from the last
    #       heartbeat generated by the activity worker.</p>
    #          <note>
    #             <p>The <code>taskStartToCloseTimeout</code> of an activity type is the maximum duration
    #         of an activity task, regardless of the number of <a>RecordActivityTaskHeartbeat</a> requests received. The <code>taskStartToCloseTimeout</code> is also specified in <a>RegisterActivityType</a>.</p>
    #          </note>
    #          <note>
    #             <p>This operation is only useful for long-lived activities to report liveliness of the
    #         task and to determine if a cancellation is being attempted.</p>
    #          </note>
    #          <important>
    #             <p>If the <code>cancelRequested</code> flag returns <code>true</code>, a cancellation is
    #         being attempted. If the worker can cancel the activity, it should respond with <a>RespondActivityTaskCanceled</a>. Otherwise, it should ignore the cancellation
    #         request.</p>
    #          </important>
    #          <p>
    #             <b>Access Control</b>
    #          </p>
    #          <p>You can use IAM policies to control this action's access to Amazon SWF resources as
    #       follows:</p>
    #          <ul>
    #             <li>
    #                <p>Use a <code>Resource</code> element with the domain name to limit the action to
    #           only specified domains.</p>
    #             </li>
    #             <li>
    #                <p>Use an <code>Action</code> element to allow or deny permission to call this
    #           action.</p>
    #             </li>
    #             <li>
    #                <p>You cannot use an IAM policy to constrain this action's parameters.</p>
    #             </li>
    #          </ul>
    #          <p>If the caller doesn't have sufficient permissions to invoke the action, or the
    #       parameter values fall outside the specified constraints, the action fails. The associated
    #       event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>.
    #       For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF
    #         Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    # @param [Hash, Types::RecordActivityTaskHeartbeatInput] params
    # @option params [String] :task_token
    #   <p>The <code>taskToken</code> of the <a>ActivityTask</a>.</p>
    #            <important>
    #               <p>
    #                  <code>taskToken</code> is generated by the service and should be treated as an opaque value.
    #           If the task is passed to another process, its <code>taskToken</code> must also be passed.
    #           This enables it to provide its progress and respond with results. </p>
    #            </important>
    # @option params [String] :details
    #   <p>If specified, contains details about the progress of the task.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     task_token: "TaskToken", # required
    #     details: "LimitedData"
    #   }
    #   options = {}
    #   response = client.record_activity_task_heartbeat(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cancel_requested: false, # required
    #   }
    # @return [Types::RecordActivityTaskHeartbeatOutput]
    def record_activity_task_heartbeat(params = {}, options = {})
      request = build_request(:record_activity_task_heartbeat, params)
      request.send_request(options)
    end

    # <p>Registers a new <i>activity type</i> along with its configuration
    #       settings in the specified domain.</p>
    #          <important>
    #             <p>A <code>TypeAlreadyExists</code> fault is returned if the type already exists in the
    #         domain. You cannot change any configuration settings of the type after its registration, and
    #         it must be registered as a new version.</p>
    #          </important>
    #          <p>
    #             <b>Access Control</b>
    #          </p>
    #          <p>You can use IAM policies to control this action's access to Amazon SWF resources as
    #       follows:</p>
    #          <ul>
    #             <li>
    #                <p>Use a <code>Resource</code> element with the domain name to limit the action to
    #           only specified domains.</p>
    #             </li>
    #             <li>
    #                <p>Use an <code>Action</code> element to allow or deny permission to call this
    #           action.</p>
    #             </li>
    #             <li>
    #                <p>Constrain the following parameters by using a <code>Condition</code> element with
    #           the appropriate keys.</p>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <code>defaultTaskList.name</code>: String constraint. The key is
    #                 <code>swf:defaultTaskList.name</code>.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>name</code>: String constraint. The key is <code>swf:name</code>.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>version</code>: String constraint. The key is
    #               <code>swf:version</code>.</p>
    #                   </li>
    #                </ul>
    #             </li>
    #          </ul>
    #          <p>If the caller doesn't have sufficient permissions to invoke the action, or the
    #       parameter values fall outside the specified constraints, the action fails. The associated
    #       event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>.
    #       For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF
    #         Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    # @param [Hash, Types::RegisterActivityTypeInput] params
    # @option params [String] :domain
    #   <p>The name of the domain in which this activity is to be registered.</p>
    # @option params [String] :name
    #   <p>The name of the activity type within the domain.</p>
    #            <p>The specified string must not contain a
    #           <code>:</code> (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any
    #         control characters (<code>\u0000-\u001f</code> | <code>\u007f-\u009f</code>). Also, it must
    #         <i>not</i> be the literal string <code>arn</code>.</p>
    # @option params [String] :version
    #   <p>The version of the activity type.</p>
    #            <note>
    #               <p>The activity type consists of the name and version, the combination of which must be
    #           unique within the domain.</p>
    #            </note>
    #            <p>The specified string must not contain a
    #           <code>:</code> (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any
    #         control characters (<code>\u0000-\u001f</code> | <code>\u007f-\u009f</code>). Also, it must
    #         <i>not</i> be the literal string <code>arn</code>.</p>
    # @option params [String] :description
    #   <p>A textual description of the activity type.</p>
    # @option params [String] :default_task_start_to_close_timeout
    #   <p>If set, specifies the default maximum duration that a worker can take to process tasks
    #         of this activity type. This default can be overridden when scheduling an activity task using
    #         the <code>ScheduleActivityTask</code>
    #               <a>Decision</a>.</p>
    #            <p>The duration is specified in seconds, an integer greater than or equal to
    #           <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>
    # @option params [String] :default_task_heartbeat_timeout
    #   <p>If set, specifies the default maximum time before which a worker processing a task of
    #         this type must report progress by calling <a>RecordActivityTaskHeartbeat</a>. If
    #         the timeout is exceeded, the activity task is automatically timed out. This default can be
    #         overridden when scheduling an activity task using the <code>ScheduleActivityTask</code>
    #               <a>Decision</a>. If the activity worker subsequently attempts to record a heartbeat
    #         or returns a result, the activity worker receives an <code>UnknownResource</code> fault. In
    #         this case, Amazon SWF no longer considers the activity task to be valid; the activity worker should
    #         clean up the activity task.</p>
    #            <p>The duration is specified in seconds, an integer greater than or equal to
    #           <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>
    # @option params [Types::TaskList] :default_task_list
    #   <p>If set, specifies the default task list to use for scheduling tasks of this activity
    #         type. This default task list is used if a task list isn't provided when a task is scheduled
    #         through the <code>ScheduleActivityTask</code>
    #               <a>Decision</a>.</p>
    # @option params [String] :default_task_priority
    #   <p>The default task priority to assign to the activity type. If not assigned, then
    #           <code>0</code> is used. Valid values are integers that range from Java's
    #           <code>Integer.MIN_VALUE</code> (-2147483648) to <code>Integer.MAX_VALUE</code> (2147483647).
    #         Higher numbers indicate higher priority.</p>
    #            <p>For more information about setting task priority, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html">Setting Task
    #           Priority</a> in the <i>in the
    #         <i>Amazon SWF Developer Guide</i>.</i>.</p>
    # @option params [String] :default_task_schedule_to_start_timeout
    #   <p>If set, specifies the default maximum duration that a task of this activity type can
    #         wait before being assigned to a worker. This default can be overridden when scheduling an
    #         activity task using the <code>ScheduleActivityTask</code>
    #               <a>Decision</a>.</p>
    #            <p>The duration is specified in seconds, an integer greater than or equal to
    #           <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>
    # @option params [String] :default_task_schedule_to_close_timeout
    #   <p>If set, specifies the default maximum duration for a task of this activity type. This
    #         default can be overridden when scheduling an activity task using the
    #           <code>ScheduleActivityTask</code>
    #               <a>Decision</a>.</p>
    #            <p>The duration is specified in seconds, an integer greater than or equal to
    #           <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain: "DomainName", # required
    #     name: "Name", # required
    #     version: "Version", # required
    #     description: "Description",
    #     default_task_start_to_close_timeout: "DurationInSecondsOptional",
    #     default_task_heartbeat_timeout: "DurationInSecondsOptional",
    #     default_task_list: {
    #       name: "Name", # required
    #     },
    #     default_task_priority: "TaskPriority",
    #     default_task_schedule_to_start_timeout: "DurationInSecondsOptional",
    #     default_task_schedule_to_close_timeout: "DurationInSecondsOptional"
    #   }
    #   options = {}
    #   response = client.register_activity_type(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def register_activity_type(params = {}, options = {})
      request = build_request(:register_activity_type, params)
      request.send_request(options)
    end

    # <p>Registers a new domain.</p>
    #          <p>
    #             <b>Access Control</b>
    #          </p>
    #          <p>You can use IAM policies to control this action's access to Amazon SWF resources as
    #       follows:</p>
    #          <ul>
    #             <li>
    #                <p>You cannot use an IAM policy to control domain access for this action. The name of
    #           the domain being registered is available as the resource of this action.</p>
    #             </li>
    #             <li>
    #                <p>Use an <code>Action</code> element to allow or deny permission to call this
    #           action.</p>
    #             </li>
    #             <li>
    #                <p>You cannot use an IAM policy to constrain this action's parameters.</p>
    #             </li>
    #          </ul>
    #          <p>If the caller doesn't have sufficient permissions to invoke the action, or the
    #       parameter values fall outside the specified constraints, the action fails. The associated
    #       event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>.
    #       For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF
    #         Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    # @param [Hash, Types::RegisterDomainInput] params
    # @option params [String] :name
    #   <p>Name of the domain to register. The name must be unique in the region that the domain
    #         is registered in.</p>
    #            <p>The specified string must not start or end with whitespace. It must not contain a
    #           <code>:</code> (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any
    #         control characters (<code>\u0000-\u001f</code> | <code>\u007f-\u009f</code>). Also, it must
    #         <i>not</i> be the literal string <code>arn</code>.</p>
    # @option params [String] :description
    #   <p>A text description of the domain.</p>
    # @option params [String] :workflow_execution_retention_period_in_days
    #   <p>The duration (in days) that records and histories of workflow executions on the domain
    #         should be kept by the service. After the retention period, the workflow execution isn't
    #         available in the results of visibility calls.</p>
    #            <p>If you pass the value <code>NONE</code> or <code>0</code> (zero), then the workflow
    #         execution history isn't retained. As soon as the workflow execution completes, the execution
    #         record and its history are deleted.</p>
    #            <p>The maximum workflow execution retention period is 90 days. For more information about
    #         Amazon SWF service limits, see: <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dg-limits.html">Amazon SWF Service Limits</a> in the
    #           <i>Amazon SWF Developer Guide</i>.</p>
    # @option params [Array<Types::ResourceTag>] :tags
    #   <p>Tags to be added when registering a domain.</p>
    #            <p>Tags may only contain unicode letters, digits, whitespace, or these symbols: <code>_ . : / = + - @</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "DomainName", # required
    #     description: "Description",
    #     workflow_execution_retention_period_in_days: "DurationInDays", # required
    #     tags: [
    #       {
    #         key: "ResourceTagKey", # required
    #         value: "ResourceTagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.register_domain(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def register_domain(params = {}, options = {})
      request = build_request(:register_domain, params)
      request.send_request(options)
    end

    # <p>Registers a new <i>workflow type</i> and its configuration settings in
    #       the specified domain.</p>
    #          <p>The retention period for the workflow history is set by the <a>RegisterDomain</a> action.</p>
    #          <important>
    #             <p>If the type already exists, then a <code>TypeAlreadyExists</code> fault is returned.
    #         You cannot change the configuration settings of a workflow type once it is registered and it
    #         must be registered as a new version.</p>
    #          </important>
    #          <p>
    #             <b>Access Control</b>
    #          </p>
    #          <p>You can use IAM policies to control this action's access to Amazon SWF resources as
    #       follows:</p>
    #          <ul>
    #             <li>
    #                <p>Use a <code>Resource</code> element with the domain name to limit the action to
    #           only specified domains.</p>
    #             </li>
    #             <li>
    #                <p>Use an <code>Action</code> element to allow or deny permission to call this
    #           action.</p>
    #             </li>
    #             <li>
    #                <p>Constrain the following parameters by using a <code>Condition</code> element with
    #           the appropriate keys.</p>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <code>defaultTaskList.name</code>: String constraint. The key is
    #                 <code>swf:defaultTaskList.name</code>.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>name</code>: String constraint. The key is <code>swf:name</code>.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>version</code>: String constraint. The key is
    #               <code>swf:version</code>.</p>
    #                   </li>
    #                </ul>
    #             </li>
    #          </ul>
    #          <p>If the caller doesn't have sufficient permissions to invoke the action, or the
    #       parameter values fall outside the specified constraints, the action fails. The associated
    #       event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>.
    #       For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF
    #         Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    # @param [Hash, Types::RegisterWorkflowTypeInput] params
    # @option params [String] :domain
    #   <p>The name of the domain in which to register the workflow type.</p>
    # @option params [String] :name
    #   <p>The name of the workflow type.</p>
    #            <p>The specified string must not contain a
    #           <code>:</code> (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any
    #         control characters (<code>\u0000-\u001f</code> | <code>\u007f-\u009f</code>). Also, it must
    #         <i>not</i> be the literal string <code>arn</code>.</p>
    # @option params [String] :version
    #   <p>The version of the workflow type.</p>
    #            <note>
    #               <p>The workflow type consists of the name and version, the combination of which must be
    #           unique within the domain. To get a list of all currently registered workflow types, use the
    #             <a>ListWorkflowTypes</a> action.</p>
    #            </note>
    #            <p>The specified string must not contain a
    #           <code>:</code> (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any
    #         control characters (<code>\u0000-\u001f</code> | <code>\u007f-\u009f</code>). Also, it must
    #         <i>not</i> be the literal string <code>arn</code>.</p>
    # @option params [String] :description
    #   <p>Textual description of the workflow type.</p>
    # @option params [String] :default_task_start_to_close_timeout
    #   <p>If set, specifies the default maximum duration of decision tasks for this workflow
    #         type. This default can be overridden when starting a workflow execution using the <a>StartWorkflowExecution</a> action or the <code>StartChildWorkflowExecution</code>
    #               <a>Decision</a>.</p>
    #            <p>The duration is specified in seconds, an integer greater than or equal to
    #           <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>
    # @option params [String] :default_execution_start_to_close_timeout
    #   <p>If set, specifies the default maximum duration for executions of this workflow type.
    #         You can override this default when starting an execution through the <a>StartWorkflowExecution</a> Action or <code>StartChildWorkflowExecution</code>
    #               <a>Decision</a>.</p>
    #            <p>The duration is specified in seconds; an integer greater than or equal to 0. Unlike
    #         some of the other timeout parameters in Amazon SWF, you cannot specify a value of "NONE" for
    #           <code>defaultExecutionStartToCloseTimeout</code>; there is a one-year max limit on the time
    #         that a workflow execution can run. Exceeding this limit always causes the workflow execution
    #         to time out.</p>
    # @option params [Types::TaskList] :default_task_list
    #   <p>If set, specifies the default task list to use for scheduling decision tasks for
    #         executions of this workflow type. This default is used only if a task list isn't provided when
    #         starting the execution through the <a>StartWorkflowExecution</a> Action or
    #           <code>StartChildWorkflowExecution</code>
    #               <a>Decision</a>.</p>
    # @option params [String] :default_task_priority
    #   <p>The default task priority to assign to the workflow type. If not assigned, then
    #           <code>0</code> is used. Valid values are integers that range from Java's
    #           <code>Integer.MIN_VALUE</code> (-2147483648) to <code>Integer.MAX_VALUE</code> (2147483647).
    #         Higher numbers indicate higher priority.</p>
    #            <p>For more information about setting task priority, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html">Setting Task
    #           Priority</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    # @option params [String] :default_child_policy
    #   <p>If set, specifies the default policy to use for the child workflow executions when a
    #         workflow execution of this type is terminated, by calling the <a>TerminateWorkflowExecution</a> action explicitly or due to an expired timeout. This
    #         default can be overridden when starting a workflow execution using the <a>StartWorkflowExecution</a> action or the <code>StartChildWorkflowExecution</code>
    #               <a>Decision</a>.</p>
    #            <p>The supported child policies are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>TERMINATE</code> – The child executions are terminated.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>REQUEST_CANCEL</code> – A request to cancel is attempted for each child
    #             execution by recording a <code>WorkflowExecutionCancelRequested</code> event in its
    #             history. It is up to the decider to take appropriate actions when it receives an execution
    #             history with this event.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ABANDON</code> – No action is taken. The child executions continue to
    #             run.</p>
    #               </li>
    #            </ul>
    # @option params [String] :default_lambda_role
    #   <p>The default IAM role attached to this workflow type.</p>
    #            <note>
    #               <p>Executions of this workflow type need IAM roles to invoke Lambda functions. If you
    #           don't specify an IAM role when you start this workflow type, the default Lambda role is
    #           attached to the execution. For more information, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/lambda-task.html">https://docs.aws.amazon.com/amazonswf/latest/developerguide/lambda-task.html</a> in the
    #             <i>Amazon SWF Developer Guide</i>.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain: "DomainName", # required
    #     name: "Name", # required
    #     version: "Version", # required
    #     description: "Description",
    #     default_task_start_to_close_timeout: "DurationInSecondsOptional",
    #     default_execution_start_to_close_timeout: "DurationInSecondsOptional",
    #     default_task_list: {
    #       name: "Name", # required
    #     },
    #     default_task_priority: "TaskPriority",
    #     default_child_policy: "TERMINATE" # One of: ["TERMINATE", "REQUEST_CANCEL", "ABANDON"],
    #     default_lambda_role: "Arn"
    #   }
    #   options = {}
    #   response = client.register_workflow_type(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def register_workflow_type(params = {}, options = {})
      request = build_request(:register_workflow_type, params)
      request.send_request(options)
    end

    # <p>Records a <code>WorkflowExecutionCancelRequested</code> event in the currently running
    #       workflow execution identified by the given domain, workflowId, and runId. This logically
    #       requests the cancellation of the workflow execution as a whole. It is up to the decider to
    #       take appropriate actions when it receives an execution history with this event.</p>
    #          <note>
    #             <p>If the runId isn't specified, the <code>WorkflowExecutionCancelRequested</code> event
    #         is recorded in the history of the current open workflow execution with the specified
    #         workflowId in the domain.</p>
    #          </note>
    #          <note>
    #             <p>Because this action allows the workflow to properly clean up and gracefully close, it
    #         should be used instead of <a>TerminateWorkflowExecution</a> when
    #         possible.</p>
    #          </note>
    #          <p>
    #             <b>Access Control</b>
    #          </p>
    #          <p>You can use IAM policies to control this action's access to Amazon SWF resources as
    #       follows:</p>
    #          <ul>
    #             <li>
    #                <p>Use a <code>Resource</code> element with the domain name to limit the action to
    #           only specified domains.</p>
    #             </li>
    #             <li>
    #                <p>Use an <code>Action</code> element to allow or deny permission to call this
    #           action.</p>
    #             </li>
    #             <li>
    #                <p>You cannot use an IAM policy to constrain this action's parameters.</p>
    #             </li>
    #          </ul>
    #          <p>If the caller doesn't have sufficient permissions to invoke the action, or the
    #       parameter values fall outside the specified constraints, the action fails. The associated
    #       event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>.
    #       For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF
    #         Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    # @param [Hash, Types::RequestCancelWorkflowExecutionInput] params
    # @option params [String] :domain
    #   <p>The name of the domain containing the workflow execution to cancel.</p>
    # @option params [String] :workflow_id
    #   <p>The workflowId of the workflow execution to cancel.</p>
    # @option params [String] :run_id
    #   <p>The runId of the workflow execution to cancel.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain: "DomainName", # required
    #     workflow_id: "WorkflowId", # required
    #     run_id: "WorkflowRunIdOptional"
    #   }
    #   options = {}
    #   response = client.request_cancel_workflow_execution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def request_cancel_workflow_execution(params = {}, options = {})
      request = build_request(:request_cancel_workflow_execution, params)
      request.send_request(options)
    end

    # <p>Used by workers to tell the service that the <a>ActivityTask</a> identified
    #       by the <code>taskToken</code> was successfully canceled. Additional <code>details</code> can
    #       be provided using the <code>details</code> argument.</p>
    #          <p>These <code>details</code> (if provided) appear in the
    #         <code>ActivityTaskCanceled</code> event added to the workflow history.</p>
    #          <important>
    #             <p>Only use this operation if the <code>canceled</code> flag of a <a>RecordActivityTaskHeartbeat</a> request returns <code>true</code> and if the
    #         activity can be safely undone or abandoned.</p>
    #          </important>
    #          <p>A task is considered open from the time that it is scheduled until it is closed.
    #       Therefore a task is reported as open while a worker is processing it. A task is closed after
    #       it has been specified in a call to <a>RespondActivityTaskCompleted</a>,
    #       RespondActivityTaskCanceled, <a>RespondActivityTaskFailed</a>, or the task has
    #         <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dg-basic.html#swf-dev-timeout-types">timed
    #         out</a>.</p>
    #          <p>
    #             <b>Access Control</b>
    #          </p>
    #          <p>You can use IAM policies to control this action's access to Amazon SWF resources as
    #       follows:</p>
    #          <ul>
    #             <li>
    #                <p>Use a <code>Resource</code> element with the domain name to limit the action to
    #           only specified domains.</p>
    #             </li>
    #             <li>
    #                <p>Use an <code>Action</code> element to allow or deny permission to call this
    #           action.</p>
    #             </li>
    #             <li>
    #                <p>You cannot use an IAM policy to constrain this action's parameters.</p>
    #             </li>
    #          </ul>
    #          <p>If the caller doesn't have sufficient permissions to invoke the action, or the
    #       parameter values fall outside the specified constraints, the action fails. The associated
    #       event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>.
    #       For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF
    #         Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    # @param [Hash, Types::RespondActivityTaskCanceledInput] params
    # @option params [String] :task_token
    #   <p>The <code>taskToken</code> of the <a>ActivityTask</a>.</p>
    #            <important>
    #               <p>
    #                  <code>taskToken</code> is generated by the service and should be treated as an opaque value.
    #           If the task is passed to another process, its <code>taskToken</code> must also be passed.
    #           This enables it to provide its progress and respond with results.</p>
    #            </important>
    # @option params [String] :details
    #   <p> Information about the cancellation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     task_token: "TaskToken", # required
    #     details: "Data"
    #   }
    #   options = {}
    #   response = client.respond_activity_task_canceled(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def respond_activity_task_canceled(params = {}, options = {})
      request = build_request(:respond_activity_task_canceled, params)
      request.send_request(options)
    end

    # <p>Used by workers to tell the service that the <a>ActivityTask</a> identified
    #       by the <code>taskToken</code> completed successfully with a <code>result</code> (if provided).
    #       The <code>result</code> appears in the <code>ActivityTaskCompleted</code> event in the
    #       workflow history.</p>
    #          <important>
    #             <p>If the requested task doesn't complete successfully, use <a>RespondActivityTaskFailed</a> instead. If the worker finds that the task is
    #         canceled through the <code>canceled</code> flag returned by <a>RecordActivityTaskHeartbeat</a>, it should cancel the task, clean up and then call
    #           <a>RespondActivityTaskCanceled</a>.</p>
    #          </important>
    #          <p>A task is considered open from the time that it is scheduled until it is closed.
    #       Therefore a task is reported as open while a worker is processing it. A task is closed after
    #       it has been specified in a call to RespondActivityTaskCompleted, <a>RespondActivityTaskCanceled</a>, <a>RespondActivityTaskFailed</a>, or the
    #       task has <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dg-basic.html#swf-dev-timeout-types">timed
    #         out</a>.</p>
    #          <p>
    #             <b>Access Control</b>
    #          </p>
    #          <p>You can use IAM policies to control this action's access to Amazon SWF resources as
    #       follows:</p>
    #          <ul>
    #             <li>
    #                <p>Use a <code>Resource</code> element with the domain name to limit the action to
    #           only specified domains.</p>
    #             </li>
    #             <li>
    #                <p>Use an <code>Action</code> element to allow or deny permission to call this
    #           action.</p>
    #             </li>
    #             <li>
    #                <p>You cannot use an IAM policy to constrain this action's parameters.</p>
    #             </li>
    #          </ul>
    #          <p>If the caller doesn't have sufficient permissions to invoke the action, or the
    #       parameter values fall outside the specified constraints, the action fails. The associated
    #       event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>.
    #       For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF
    #         Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    # @param [Hash, Types::RespondActivityTaskCompletedInput] params
    # @option params [String] :task_token
    #   <p>The <code>taskToken</code> of the <a>ActivityTask</a>.</p>
    #            <important>
    #               <p>
    #                  <code>taskToken</code> is generated by the service and should be treated as an opaque value.
    #           If the task is passed to another process, its <code>taskToken</code> must also be passed.
    #           This enables it to provide its progress and respond with results.</p>
    #            </important>
    # @option params [String] :result
    #   <p>The result of the activity task. It is a free form string that is implementation
    #         specific.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     task_token: "TaskToken", # required
    #     result: "Data"
    #   }
    #   options = {}
    #   response = client.respond_activity_task_completed(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def respond_activity_task_completed(params = {}, options = {})
      request = build_request(:respond_activity_task_completed, params)
      request.send_request(options)
    end

    # <p>Used by workers to tell the service that the <a>ActivityTask</a> identified
    #       by the <code>taskToken</code> has failed with <code>reason</code> (if specified). The
    #         <code>reason</code> and <code>details</code> appear in the <code>ActivityTaskFailed</code>
    #       event added to the workflow history.</p>
    #          <p>A task is considered open from the time that it is scheduled until it is closed.
    #       Therefore a task is reported as open while a worker is processing it. A task is closed after
    #       it has been specified in a call to <a>RespondActivityTaskCompleted</a>, <a>RespondActivityTaskCanceled</a>, RespondActivityTaskFailed, or the task has <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dg-basic.html#swf-dev-timeout-types">timed
    #         out</a>.</p>
    #          <p>
    #             <b>Access Control</b>
    #          </p>
    #          <p>You can use IAM policies to control this action's access to Amazon SWF resources as
    #       follows:</p>
    #          <ul>
    #             <li>
    #                <p>Use a <code>Resource</code> element with the domain name to limit the action to
    #           only specified domains.</p>
    #             </li>
    #             <li>
    #                <p>Use an <code>Action</code> element to allow or deny permission to call this
    #           action.</p>
    #             </li>
    #             <li>
    #                <p>You cannot use an IAM policy to constrain this action's parameters.</p>
    #             </li>
    #          </ul>
    #          <p>If the caller doesn't have sufficient permissions to invoke the action, or the
    #       parameter values fall outside the specified constraints, the action fails. The associated
    #       event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>.
    #       For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF
    #         Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    # @param [Hash, Types::RespondActivityTaskFailedInput] params
    # @option params [String] :task_token
    #   <p>The <code>taskToken</code> of the <a>ActivityTask</a>.</p>
    #            <important>
    #               <p>
    #                  <code>taskToken</code> is generated by the service and should be treated as an opaque value.
    #           If the task is passed to another process, its <code>taskToken</code> must also be passed.
    #           This enables it to provide its progress and respond with results.</p>
    #            </important>
    # @option params [String] :reason
    #   <p>Description of the error that may assist in diagnostics.</p>
    # @option params [String] :details
    #   <p> Detailed information about the failure.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     task_token: "TaskToken", # required
    #     reason: "FailureReason",
    #     details: "Data"
    #   }
    #   options = {}
    #   response = client.respond_activity_task_failed(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def respond_activity_task_failed(params = {}, options = {})
      request = build_request(:respond_activity_task_failed, params)
      request.send_request(options)
    end

    # <p>Used by deciders to tell the service that the <a>DecisionTask</a> identified
    #       by the <code>taskToken</code> has successfully completed. The <code>decisions</code> argument
    #       specifies the list of decisions made while processing the task.</p>
    #          <p>A <code>DecisionTaskCompleted</code> event is added to the workflow history. The
    #         <code>executionContext</code> specified is attached to the event in the workflow execution
    #       history.</p>
    #          <p>
    #             <b>Access Control</b>
    #          </p>
    #          <p>If an IAM policy grants permission to use <code>RespondDecisionTaskCompleted</code>, it
    #       can express permissions for the list of decisions in the <code>decisions</code> parameter.
    #       Each of the decisions has one or more parameters, much like a regular API call. To allow for
    #       policies to be as readable as possible, you can express permissions on decisions as if they
    #       were actual API calls, including applying conditions to some parameters. For more information,
    #       see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using
    #         IAM to Manage Access to Amazon SWF Workflows</a> in the
    #       <i>Amazon SWF Developer Guide</i>.</p>
    # @param [Hash, Types::RespondDecisionTaskCompletedInput] params
    # @option params [String] :task_token
    #   <p>The <code>taskToken</code> from the <a>DecisionTask</a>.</p>
    #            <important>
    #               <p>
    #                  <code>taskToken</code> is generated by the service and should be treated as an opaque value.
    #           If the task is passed to another process, its <code>taskToken</code> must also be passed.
    #           This enables it to provide its progress and respond with results.</p>
    #            </important>
    # @option params [Array<Types::Decision>] :decisions
    #   <p>The list of decisions (possibly empty) made by the decider while processing this
    #         decision task. See the docs for the <a>Decision</a> structure for
    #         details.</p>
    # @option params [String] :execution_context
    #   <p>User defined context to add to workflow execution.</p>
    # @option params [Types::TaskList] :task_list
    #   <p>The task list to use for the future decision tasks of this workflow execution. This list overrides the original task list you specified while starting the workflow execution. </p>
    # @option params [String] :task_list_schedule_to_start_timeout
    #   <p>Specifies a timeout (in seconds) for the task list override. When this parameter is missing, the task list override is permanent. This parameter makes it possible to temporarily override the task list. If a decision task scheduled on the override task list is not started within the timeout, the decision task will time out. Amazon SWF will revert the override and schedule a new decision task to the original task list.</p>
    #            <p>If a decision task scheduled on the override task list is started within the timeout, but not completed within the start-to-close timeout, Amazon SWF will also revert the override and schedule a new decision task to the original task list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     task_token: "TaskToken", # required
    #     decisions: [
    #       {
    #         decision_type: "ScheduleActivityTask" # One of: ["ScheduleActivityTask", "RequestCancelActivityTask", "CompleteWorkflowExecution", "FailWorkflowExecution", "CancelWorkflowExecution", "ContinueAsNewWorkflowExecution", "RecordMarker", "StartTimer", "CancelTimer", "SignalExternalWorkflowExecution", "RequestCancelExternalWorkflowExecution", "StartChildWorkflowExecution", "ScheduleLambdaFunction"], # required
    #         schedule_activity_task_decision_attributes: {
    #           activity_type: { # required
    #             name: "Name", # required
    #             version: "Version", # required
    #           },
    #           activity_id: "ActivityId", # required
    #           control: "Data",
    #           input: "Data",
    #           schedule_to_close_timeout: "DurationInSecondsOptional",
    #           task_list: {
    #             name: "Name", # required
    #           },
    #           task_priority: "TaskPriority",
    #           schedule_to_start_timeout: "DurationInSecondsOptional",
    #           start_to_close_timeout: "DurationInSecondsOptional",
    #           heartbeat_timeout: "DurationInSecondsOptional"
    #         },
    #         request_cancel_activity_task_decision_attributes: {
    #           activity_id: "ActivityId", # required
    #         },
    #         complete_workflow_execution_decision_attributes: {
    #           result: "Data"
    #         },
    #         fail_workflow_execution_decision_attributes: {
    #           reason: "FailureReason",
    #           details: "Data"
    #         },
    #         cancel_workflow_execution_decision_attributes: {
    #           details: "Data"
    #         },
    #         continue_as_new_workflow_execution_decision_attributes: {
    #           input: "Data",
    #           execution_start_to_close_timeout: "DurationInSecondsOptional",
    #           task_list: {
    #             name: "Name", # required
    #           },
    #           task_priority: "TaskPriority",
    #           task_start_to_close_timeout: "DurationInSecondsOptional",
    #           child_policy: "TERMINATE" # One of: ["TERMINATE", "REQUEST_CANCEL", "ABANDON"],
    #           tag_list: ["Tag"],
    #           workflow_type_version: "Version",
    #           lambda_role: "Arn"
    #         },
    #         record_marker_decision_attributes: {
    #           marker_name: "MarkerName", # required
    #           details: "Data"
    #         },
    #         start_timer_decision_attributes: {
    #           timer_id: "TimerId", # required
    #           control: "Data",
    #           start_to_fire_timeout: "DurationInSeconds", # required
    #         },
    #         cancel_timer_decision_attributes: {
    #           timer_id: "TimerId", # required
    #         },
    #         signal_external_workflow_execution_decision_attributes: {
    #           workflow_id: "WorkflowId", # required
    #           run_id: "WorkflowRunIdOptional",
    #           signal_name: "SignalName", # required
    #           input: "Data",
    #           control: "Data"
    #         },
    #         request_cancel_external_workflow_execution_decision_attributes: {
    #           workflow_id: "WorkflowId", # required
    #           run_id: "WorkflowRunIdOptional",
    #           control: "Data"
    #         },
    #         start_child_workflow_execution_decision_attributes: {
    #           workflow_type: { # required
    #             name: "Name", # required
    #             version: "Version", # required
    #           },
    #           workflow_id: "WorkflowId", # required
    #           control: "Data",
    #           input: "Data",
    #           execution_start_to_close_timeout: "DurationInSecondsOptional",
    #           task_list: {
    #             name: "Name", # required
    #           },
    #           task_priority: "TaskPriority",
    #           task_start_to_close_timeout: "DurationInSecondsOptional",
    #           child_policy: "TERMINATE" # One of: ["TERMINATE", "REQUEST_CANCEL", "ABANDON"],
    #           tag_list: ["Tag"],
    #           lambda_role: "Arn"
    #         },
    #         schedule_lambda_function_decision_attributes: {
    #           id: "FunctionId", # required
    #           name: "FunctionName", # required
    #           control: "Data",
    #           input: "FunctionInput",
    #           start_to_close_timeout: "DurationInSecondsOptional"
    #         }
    #       }
    #     ],
    #     execution_context: "Data",
    #     task_list: {
    #       name: "Name", # required
    #     },
    #     task_list_schedule_to_start_timeout: "DurationInSecondsOptional"
    #   }
    #   options = {}
    #   response = client.respond_decision_task_completed(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def respond_decision_task_completed(params = {}, options = {})
      request = build_request(:respond_decision_task_completed, params)
      request.send_request(options)
    end

    # <p>Records a <code>WorkflowExecutionSignaled</code> event in the workflow execution
    #       history and creates a decision task for the workflow execution identified by the given domain,
    #       workflowId and runId. The event is recorded with the specified user defined signalName and
    #       input (if provided).</p>
    #          <note>
    #             <p>If a runId isn't specified, then the <code>WorkflowExecutionSignaled</code> event is
    #         recorded in the history of the current open workflow with the matching workflowId in the
    #         domain.</p>
    #          </note>
    #          <note>
    #             <p>If the specified workflow execution isn't open, this method fails with
    #           <code>UnknownResource</code>.</p>
    #          </note>
    #          <p>
    #             <b>Access Control</b>
    #          </p>
    #          <p>You can use IAM policies to control this action's access to Amazon SWF resources as
    #       follows:</p>
    #          <ul>
    #             <li>
    #                <p>Use a <code>Resource</code> element with the domain name to limit the action to
    #           only specified domains.</p>
    #             </li>
    #             <li>
    #                <p>Use an <code>Action</code> element to allow or deny permission to call this
    #           action.</p>
    #             </li>
    #             <li>
    #                <p>You cannot use an IAM policy to constrain this action's parameters.</p>
    #             </li>
    #          </ul>
    #          <p>If the caller doesn't have sufficient permissions to invoke the action, or the
    #       parameter values fall outside the specified constraints, the action fails. The associated
    #       event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>.
    #       For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF
    #         Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    # @param [Hash, Types::SignalWorkflowExecutionInput] params
    # @option params [String] :domain
    #   <p>The name of the domain containing the workflow execution to signal.</p>
    # @option params [String] :workflow_id
    #   <p>The workflowId of the workflow execution to signal.</p>
    # @option params [String] :run_id
    #   <p>The runId of the workflow execution to signal.</p>
    # @option params [String] :signal_name
    #   <p>The name of the signal. This name must be meaningful to the target workflow.</p>
    # @option params [String] :input
    #   <p>Data to attach to the <code>WorkflowExecutionSignaled</code> event in the target
    #         workflow execution's history.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain: "DomainName", # required
    #     workflow_id: "WorkflowId", # required
    #     run_id: "WorkflowRunIdOptional",
    #     signal_name: "SignalName", # required
    #     input: "Data"
    #   }
    #   options = {}
    #   response = client.signal_workflow_execution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def signal_workflow_execution(params = {}, options = {})
      request = build_request(:signal_workflow_execution, params)
      request.send_request(options)
    end

    # <p>Starts an execution of the workflow type in the specified domain using the provided
    #         <code>workflowId</code> and input data.</p>
    #          <p>This action returns the newly started workflow execution.</p>
    #          <p>
    #             <b>Access Control</b>
    #          </p>
    #          <p>You can use IAM policies to control this action's access to Amazon SWF resources as
    #       follows:</p>
    #          <ul>
    #             <li>
    #                <p>Use a <code>Resource</code> element with the domain name to limit the action to
    #           only specified domains.</p>
    #             </li>
    #             <li>
    #                <p>Use an <code>Action</code> element to allow or deny permission to call this
    #           action.</p>
    #             </li>
    #             <li>
    #                <p>Constrain the following parameters by using a <code>Condition</code> element with
    #           the appropriate keys.</p>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <code>tagList.member.0</code>: The key is <code>swf:tagList.member.0</code>.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>tagList.member.1</code>: The key is <code>swf:tagList.member.1</code>.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>tagList.member.2</code>: The key is <code>swf:tagList.member.2</code>.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>tagList.member.3</code>: The key is <code>swf:tagList.member.3</code>.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>tagList.member.4</code>: The key is <code>swf:tagList.member.4</code>.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>taskList</code>: String constraint. The key is
    #               <code>swf:taskList.name</code>.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>workflowType.name</code>: String constraint. The key is
    #                 <code>swf:workflowType.name</code>.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>workflowType.version</code>: String constraint. The key is
    #                 <code>swf:workflowType.version</code>.</p>
    #                   </li>
    #                </ul>
    #             </li>
    #          </ul>
    #          <p>If the caller doesn't have sufficient permissions to invoke the action, or the
    #       parameter values fall outside the specified constraints, the action fails. The associated
    #       event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>.
    #       For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF
    #         Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    # @param [Hash, Types::StartWorkflowExecutionInput] params
    # @option params [String] :domain
    #   <p>The name of the domain in which the workflow execution is created.</p>
    #            <p>The specified string must not contain a
    #           <code>:</code> (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any
    #         control characters (<code>\u0000-\u001f</code> | <code>\u007f-\u009f</code>). Also, it must
    #         <i>not</i> be the literal string <code>arn</code>.</p>
    # @option params [String] :workflow_id
    #   <p>The user defined identifier associated with the workflow execution. You can use this to
    #         associate a custom identifier with the workflow execution. You may specify the same identifier
    #         if a workflow execution is logically a <i>restart</i> of a previous execution.
    #         You cannot have two open workflow executions with the same <code>workflowId</code> at the same
    #         time within the same domain.</p>
    #            <p>The specified string must not contain a
    #           <code>:</code> (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any
    #         control characters (<code>\u0000-\u001f</code> | <code>\u007f-\u009f</code>). Also, it must
    #         <i>not</i> be the literal string <code>arn</code>.</p>
    # @option params [Types::WorkflowType] :workflow_type
    #   <p>The type of the workflow to start.</p>
    # @option params [Types::TaskList] :task_list
    #   <p>The task list to use for the decision tasks generated for this workflow execution. This
    #         overrides the <code>defaultTaskList</code> specified when registering the workflow
    #         type.</p>
    #            <note>
    #               <p>A task list for this workflow execution must be specified either as a default for the
    #           workflow type or through this parameter. If neither this parameter is set nor a default task
    #           list was specified at registration time then a fault is returned.</p>
    #            </note>
    #            <p>The specified string must not contain a
    #           <code>:</code> (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any
    #         control characters (<code>\u0000-\u001f</code> | <code>\u007f-\u009f</code>). Also, it must
    #         <i>not</i> be the literal string <code>arn</code>.</p>
    # @option params [String] :task_priority
    #   <p>The task priority to use for this workflow execution. This overrides any default
    #         priority that was assigned when the workflow type was registered. If not set, then the default
    #         task priority for the workflow type is used. Valid values are integers that range from Java's
    #           <code>Integer.MIN_VALUE</code> (-2147483648) to <code>Integer.MAX_VALUE</code> (2147483647).
    #         Higher numbers indicate higher priority.</p>
    #            <p>For more information about setting task priority, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html">Setting Task
    #           Priority</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    # @option params [String] :input
    #   <p>The input for the workflow execution. This is a free form string which should be
    #         meaningful to the workflow you are starting. This <code>input</code> is made available to the
    #         new workflow execution in the <code>WorkflowExecutionStarted</code> history event.</p>
    # @option params [String] :execution_start_to_close_timeout
    #   <p>The total duration for this workflow execution. This overrides the
    #         defaultExecutionStartToCloseTimeout specified when registering the workflow type.</p>
    #            <p>The duration is specified in seconds; an integer greater than or equal to
    #           <code>0</code>. Exceeding this limit causes the workflow execution to time out. Unlike some
    #         of the other timeout parameters in Amazon SWF, you cannot specify a value of "NONE" for this
    #         timeout; there is a one-year max limit on the time that a workflow execution can
    #         run.</p>
    #            <note>
    #               <p>An execution start-to-close timeout must be specified either through this parameter
    #           or as a default when the workflow type is registered. If neither this parameter nor a
    #           default execution start-to-close timeout is specified, a fault is returned.</p>
    #            </note>
    # @option params [Array<String>] :tag_list
    #   <p>The list of tags to associate with the workflow execution. You can specify a maximum of
    #         5 tags. You can list workflow executions with a specific tag by calling <a>ListOpenWorkflowExecutions</a> or <a>ListClosedWorkflowExecutions</a> and
    #         specifying a <a>TagFilter</a>.</p>
    # @option params [String] :task_start_to_close_timeout
    #   <p>Specifies the maximum duration of decision tasks for this workflow execution. This
    #         parameter overrides the <code>defaultTaskStartToCloseTimout</code> specified when registering
    #         the workflow type using <a>RegisterWorkflowType</a>.</p>
    #            <p>The duration is specified in seconds, an integer greater than or equal to
    #           <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>
    #            <note>
    #               <p>A task start-to-close timeout for this workflow execution must be specified either as
    #           a default for the workflow type or through this parameter. If neither this parameter is set
    #           nor a default task start-to-close timeout was specified at registration time then a fault is
    #           returned.</p>
    #            </note>
    # @option params [String] :child_policy
    #   <p>If set, specifies the policy to use for the child workflow executions of this workflow
    #         execution if it is terminated, by calling the <a>TerminateWorkflowExecution</a>
    #         action explicitly or due to an expired timeout. This policy overrides the default child policy
    #         specified when registering the workflow type using <a>RegisterWorkflowType</a>.</p>
    #            <p>The supported child policies are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>TERMINATE</code> – The child executions are terminated.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>REQUEST_CANCEL</code> – A request to cancel is attempted for each child
    #             execution by recording a <code>WorkflowExecutionCancelRequested</code> event in its
    #             history. It is up to the decider to take appropriate actions when it receives an execution
    #             history with this event.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ABANDON</code> – No action is taken. The child executions continue to
    #             run.</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>A child policy for this workflow execution must be specified either as a default for
    #           the workflow type or through this parameter. If neither this parameter is set nor a default
    #           child policy was specified at registration time then a fault is returned.</p>
    #            </note>
    # @option params [String] :lambda_role
    #   <p>The IAM role to attach to this workflow execution.</p>
    #            <note>
    #               <p>Executions of this workflow type need IAM roles to invoke Lambda functions. If you
    #           don't attach an IAM role, any attempt to schedule a Lambda task fails. This results in a
    #             <code>ScheduleLambdaFunctionFailed</code> history event. For more information, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/lambda-task.html">https://docs.aws.amazon.com/amazonswf/latest/developerguide/lambda-task.html</a> in the
    #             <i>Amazon SWF Developer Guide</i>.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain: "DomainName", # required
    #     workflow_id: "WorkflowId", # required
    #     workflow_type: { # required
    #       name: "Name", # required
    #       version: "Version", # required
    #     },
    #     task_list: {
    #       name: "Name", # required
    #     },
    #     task_priority: "TaskPriority",
    #     input: "Data",
    #     execution_start_to_close_timeout: "DurationInSecondsOptional",
    #     tag_list: ["Tag"],
    #     task_start_to_close_timeout: "DurationInSecondsOptional",
    #     child_policy: "TERMINATE" # One of: ["TERMINATE", "REQUEST_CANCEL", "ABANDON"],
    #     lambda_role: "Arn"
    #   }
    #   options = {}
    #   response = client.start_workflow_execution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     run_id: "WorkflowRunId"
    #   }
    # @return [Types::StartWorkflowExecutionOutput]
    def start_workflow_execution(params = {}, options = {})
      request = build_request(:start_workflow_execution, params)
      request.send_request(options)
    end

    # <p>Add a tag to a Amazon SWF domain.</p>
    #          <note>
    #             <p>Amazon SWF supports a maximum of 50 tags per resource.</p>
    #          </note>
    # @param [Hash, Types::TagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) for the Amazon SWF domain.</p>
    # @option params [Array<Types::ResourceTag>] :tags
    #   <p>The list of tags to add to a domain. </p>
    #            <p>Tags may only contain unicode letters, digits, whitespace, or these symbols: <code>_ . : / = + - @</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
    #     tags: [ # required
    #       {
    #         key: "ResourceTagKey", # required
    #         value: "ResourceTagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Records a <code>WorkflowExecutionTerminated</code> event and forces closure of the
    #       workflow execution identified by the given domain, runId, and workflowId. The child policy,
    #       registered with the workflow type or specified when starting this execution, is applied to any
    #       open child workflow executions of this workflow execution.</p>
    #          <important>
    #             <p>If the identified workflow execution was in progress, it is terminated
    #         immediately.</p>
    #          </important>
    #          <note>
    #             <p>If a runId isn't specified, then the <code>WorkflowExecutionTerminated</code> event
    #         is recorded in the history of the current open workflow with the matching workflowId in the
    #         domain.</p>
    #          </note>
    #          <note>
    #             <p>You should consider using <a>RequestCancelWorkflowExecution</a> action
    #         instead because it allows the workflow to gracefully close while <a>TerminateWorkflowExecution</a> doesn't.</p>
    #          </note>
    #          <p>
    #             <b>Access Control</b>
    #          </p>
    #          <p>You can use IAM policies to control this action's access to Amazon SWF resources as
    #       follows:</p>
    #          <ul>
    #             <li>
    #                <p>Use a <code>Resource</code> element with the domain name to limit the action to
    #           only specified domains.</p>
    #             </li>
    #             <li>
    #                <p>Use an <code>Action</code> element to allow or deny permission to call this
    #           action.</p>
    #             </li>
    #             <li>
    #                <p>You cannot use an IAM policy to constrain this action's parameters.</p>
    #             </li>
    #          </ul>
    #          <p>If the caller doesn't have sufficient permissions to invoke the action, or the
    #       parameter values fall outside the specified constraints, the action fails. The associated
    #       event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>.
    #       For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF
    #         Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    # @param [Hash, Types::TerminateWorkflowExecutionInput] params
    # @option params [String] :domain
    #   <p>The domain of the workflow execution to terminate.</p>
    # @option params [String] :workflow_id
    #   <p>The workflowId of the workflow execution to terminate.</p>
    # @option params [String] :run_id
    #   <p>The runId of the workflow execution to terminate.</p>
    # @option params [String] :reason
    #   <p> A descriptive reason for terminating the workflow execution.</p>
    # @option params [String] :details
    #   <p> Details for terminating the workflow execution.</p>
    # @option params [String] :child_policy
    #   <p>If set, specifies the policy to use for the child workflow executions of the workflow
    #         execution being terminated. This policy overrides the child policy specified for the workflow
    #         execution at registration time or when starting the execution.</p>
    #            <p>The supported child policies are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>TERMINATE</code> – The child executions are terminated.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>REQUEST_CANCEL</code> – A request to cancel is attempted for each child
    #             execution by recording a <code>WorkflowExecutionCancelRequested</code> event in its
    #             history. It is up to the decider to take appropriate actions when it receives an execution
    #             history with this event.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ABANDON</code> – No action is taken. The child executions continue to
    #             run.</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>A child policy for this workflow execution must be specified either as a default for
    #           the workflow type or through this parameter. If neither this parameter is set nor a default
    #           child policy was specified at registration time then a fault is returned.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain: "DomainName", # required
    #     workflow_id: "WorkflowId", # required
    #     run_id: "WorkflowRunIdOptional",
    #     reason: "TerminateReason",
    #     details: "Data",
    #     child_policy: "TERMINATE" # One of: ["TERMINATE", "REQUEST_CANCEL", "ABANDON"]
    #   }
    #   options = {}
    #   response = client.terminate_workflow_execution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def terminate_workflow_execution(params = {}, options = {})
      request = build_request(:terminate_workflow_execution, params)
      request.send_request(options)
    end

    # <p>Undeprecates a previously deprecated <i>activity type</i>. After an activity type has
    #       been undeprecated, you can create new tasks of that activity type.</p>
    #          <note>
    #             <p>This operation is eventually consistent. The results are best effort and may not
    #         exactly reflect recent updates and changes.</p>
    #          </note>
    #          <p>
    #             <b>Access Control</b>
    #          </p>
    #          <p>You can use IAM policies to control this action's access to Amazon SWF resources as
    #       follows:</p>
    #          <ul>
    #             <li>
    #                <p>Use a <code>Resource</code> element with the domain name to limit the action to
    #           only specified domains.</p>
    #             </li>
    #             <li>
    #                <p>Use an <code>Action</code> element to allow or deny permission to call this
    #           action.</p>
    #             </li>
    #             <li>
    #                <p>Constrain the following parameters by using a <code>Condition</code> element with
    #           the appropriate keys.</p>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <code>activityType.name</code>: String constraint. The key is
    #               <code>swf:activityType.name</code>.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>activityType.version</code>: String constraint. The key is
    #               <code>swf:activityType.version</code>.</p>
    #                   </li>
    #                </ul>
    #             </li>
    #          </ul>
    #          <p>If the caller doesn't have sufficient permissions to invoke the action, or the
    #       parameter values fall outside the specified constraints, the action fails. The associated
    #       event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>.
    #       For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF
    #         Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    # @param [Hash, Types::UndeprecateActivityTypeInput] params
    # @option params [String] :domain
    #   <p>The name of the domain of the deprecated activity type.</p>
    # @option params [Types::ActivityType] :activity_type
    #   <p>The activity type to undeprecate.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain: "DomainName", # required
    #     activity_type: { # required
    #       name: "Name", # required
    #       version: "Version", # required
    #     }
    #   }
    #   options = {}
    #   response = client.undeprecate_activity_type(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def undeprecate_activity_type(params = {}, options = {})
      request = build_request(:undeprecate_activity_type, params)
      request.send_request(options)
    end

    # <p>Undeprecates a previously deprecated domain. After a domain has been undeprecated it can be used
    #       to create new workflow executions or register new types.</p>
    #          <note>
    #             <p>This operation is eventually consistent. The results are best effort and may not
    #         exactly reflect recent updates and changes.</p>
    #          </note>
    #          <p>
    #             <b>Access Control</b>
    #          </p>
    #          <p>You can use IAM policies to control this action's access to Amazon SWF resources as
    #       follows:</p>
    #          <ul>
    #             <li>
    #                <p>Use a <code>Resource</code> element with the domain name to limit the action to
    #           only specified domains.</p>
    #             </li>
    #             <li>
    #                <p>Use an <code>Action</code> element to allow or deny permission to call this
    #           action.</p>
    #             </li>
    #             <li>
    #                <p>You cannot use an IAM policy to constrain this action's parameters.</p>
    #             </li>
    #          </ul>
    #          <p>If the caller doesn't have sufficient permissions to invoke the action, or the
    #       parameter values fall outside the specified constraints, the action fails. The associated
    #       event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>.
    #       For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF
    #         Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    # @param [Hash, Types::UndeprecateDomainInput] params
    # @option params [String] :name
    #   <p>The name of the domain of the deprecated workflow type.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "DomainName", # required
    #   }
    #   options = {}
    #   response = client.undeprecate_domain(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def undeprecate_domain(params = {}, options = {})
      request = build_request(:undeprecate_domain, params)
      request.send_request(options)
    end

    # <p>Undeprecates a previously deprecated <i>workflow type</i>. After a workflow type has
    #       been undeprecated, you can create new executions of that type. </p>
    #          <note>
    #             <p>This operation is eventually consistent. The results are best effort and may not
    #         exactly reflect recent updates and changes.</p>
    #          </note>
    #          <p>
    #             <b>Access Control</b>
    #          </p>
    #          <p>You can use IAM policies to control this action's access to Amazon SWF resources as
    #       follows:</p>
    #          <ul>
    #             <li>
    #                <p>Use a <code>Resource</code> element with the domain name to limit the action to
    #           only specified domains.</p>
    #             </li>
    #             <li>
    #                <p>Use an <code>Action</code> element to allow or deny permission to call this
    #           action.</p>
    #             </li>
    #             <li>
    #                <p>Constrain the following parameters by using a <code>Condition</code> element with
    #           the appropriate keys.</p>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <code>workflowType.name</code>: String constraint. The key is
    #               <code>swf:workflowType.name</code>.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>workflowType.version</code>: String constraint. The key is
    #               <code>swf:workflowType.version</code>.</p>
    #                   </li>
    #                </ul>
    #             </li>
    #          </ul>
    #          <p>If the caller doesn't have sufficient permissions to invoke the action, or the
    #       parameter values fall outside the specified constraints, the action fails. The associated
    #       event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>.
    #       For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF
    #         Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    # @param [Hash, Types::UndeprecateWorkflowTypeInput] params
    # @option params [String] :domain
    #   <p>The name of the domain of the deprecated workflow type.</p>
    # @option params [Types::WorkflowType] :workflow_type
    #   <p>The name of the domain of the deprecated workflow type.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain: "DomainName", # required
    #     workflow_type: { # required
    #       name: "Name", # required
    #       version: "Version", # required
    #     }
    #   }
    #   options = {}
    #   response = client.undeprecate_workflow_type(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def undeprecate_workflow_type(params = {}, options = {})
      request = build_request(:undeprecate_workflow_type, params)
      request.send_request(options)
    end

    # <p>Remove a tag from a Amazon SWF domain.</p>
    # @param [Hash, Types::UntagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) for the Amazon SWF domain.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The list of tags to remove from the Amazon SWF domain.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
    #     tag_keys: ["ResourceTagKey"], # required
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
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
      context[:gem_name] = 'aws-sdk-swf'
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
