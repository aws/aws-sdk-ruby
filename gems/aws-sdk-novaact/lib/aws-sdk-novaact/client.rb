# frozen_string_literal: true

# This is generated code!

require_relative 'plugins/endpoint'
require 'smithy-client/plugins/checksum_required'
require 'smithy-client/plugins/content_length'
require 'smithy-client/plugins/default_params'
require 'smithy-client/plugins/host_prefix'
require 'smithy-client/plugins/idempotency_token'
require 'smithy-client/plugins/logging'
require 'smithy-client/plugins/transport'
require 'smithy-client/plugins/pageable_response'
require 'smithy-client/plugins/param_converter'
require 'smithy-client/plugins/param_validator'
require 'smithy-client/plugins/protocol'
require 'smithy-client/plugins/raise_response_errors'
require 'smithy-client/plugins/request_compression'
require 'smithy-client/plugins/resolve_auth'
require 'smithy-client/plugins/response_target'
require 'smithy-client/plugins/sign_requests'
require 'smithy-client/plugins/transfer_encoding'
require 'aws-sdk-core/plugins/global_configuration'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/invocation_id'
require 'aws-sdk-core/plugins/recursion_detection'
require 'aws-sdk-core/plugins/retry_errors'
require 'aws-sdk-core/plugins/stub_responses'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'
require 'aws-sdk-core/rest_json'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:novaact)

module Aws::NovaAct
  # An API client for Aws::NovaAct.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AmazonNovaAgentsDataPlane
    @identifier = :novaact

    add_plugin(::Aws::NovaAct::Plugins::Endpoint)
    add_plugin(Smithy::Client::Plugins::ChecksumRequired)
    add_plugin(Smithy::Client::Plugins::ContentLength)
    add_plugin(Smithy::Client::Plugins::DefaultParams)
    add_plugin(Smithy::Client::Plugins::HostPrefix)
    add_plugin(Smithy::Client::Plugins::IdempotencyToken)
    add_plugin(Smithy::Client::Plugins::Logging)
    add_plugin(Smithy::Client::Plugins::Transport)
    add_plugin(Smithy::Client::Plugins::PageableResponse)
    add_plugin(Smithy::Client::Plugins::ParamConverter)
    add_plugin(Smithy::Client::Plugins::ParamValidator)
    add_plugin(Smithy::Client::Plugins::Protocol)
    add_plugin(Smithy::Client::Plugins::RaiseResponseErrors)
    add_plugin(Smithy::Client::Plugins::RequestCompression)
    add_plugin(Smithy::Client::Plugins::ResolveAuth)
    add_plugin(Smithy::Client::Plugins::ResponseTarget)
    add_plugin(Smithy::Client::Plugins::SignRequests)
    add_plugin(Smithy::Client::Plugins::TransferEncoding)
    add_plugin(Aws::Core::Plugins::GlobalConfiguration)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::InvocationId)
    add_plugin(Aws::Core::Plugins::RecursionDetection)
    add_plugin(Aws::Core::Plugins::RetryErrors)
    add_plugin(Aws::Core::Plugins::StubResponses)
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
    # @option options [Numeric] :connect_timeout
    #  The number of seconds to wait when opening a connection before timing out.
    #  Defaults to `nil`, which uses the transport's default; the default
    #  Net::HTTP transport uses 60 seconds.
    # @option options [Boolean] :convert_params (true)
    #  When `true`, request parameters are coerced into the required types.
    # @option options [#identity] :credentials_provider
    #  The credentials provider used to resolve credentials. Any object that responds to `#identity`
    #  and returns a {Aws::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  The endpoint to send requests to.
    #  The endpoint should be a URI formatted like "http://example.com:123"'
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::NovaAct::EndpointProvider)
    #  An object that provides an endpoint to use for the request.
    # @option options [URI::HTTP, String] :http_proxy
    #  A proxy to send requests through. Formatted like 'http://proxy.com:123'.
    # @option options [Boolean] :http_wire_trace
    #  When `true`, HTTP wire trace output is sent to the configured logger.
    # @option options [Smithy::Client::LogFormatter] :log_formatter (Aws::Log::Formatter.default)
    #  The log formatter used by the logger.
    # @option options [Symbol] :log_level (:info)
    #  The log level to send messages to the logger at.
    # @option options [Logger] :logger
    #  The Logger instance to send log messages to. If this option is not set, logging is disabled.
    # @option options [Integer] :max_attempts (3)
    #  The maximum number attempts that will be made for a single request, including
    #  the initial attempt.
    # @option options [String] :profile (default)
    #  Used when loading credentials from the shared config file and credentials file
    #  at ~/.aws/config and ~/.aws/credentials, respectively.  When not specified, 'default' is used.
    # @option options [Symbol, Object] :protocol
    #  The protocol used for request serialization and response deserialization. Defaults to the service default protocol. May be a Symbol naming a supported protocol, or a custom object implementing the protocol interface.
    #  Supported protocols: +:rest_json+ (defaults to +:rest_json+).
    # @option options [Boolean] :raise_response_errors (true)
    #  When `true`, response errors are raised. When `false`, the error is placed on the
    #  output in the {Smithy::Client::Response#error error accessor}.
    # @option options [Numeric] :read_timeout
    #  The number of seconds to wait for data to be read before timing out.
    #  Defaults to `nil`, which uses the transport's default; the default
    #  Net::HTTP transport uses 60 seconds.
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
    # @option options [String] :retry_mode (standard)
    #  Specifies which retry algorithm to use. Values are:
    #
    #  * `standard` - A standardized set of retry rules across the AWS SDKs.
    #    This includes support for retry quotas, which limit the number of
    #    unsuccessful retries a client can make. This is the default
    #    value if no retry mode is provided.
    #
    #  * `adaptive` - A retry mode that includes all the functionality of
    #    `standard` mode along with automatic client side throttling.
    # @option options [Object] :retry_strategy
    #  The retry strategy used by the client. If not provided, a default strategy is built
    #  based on `:retry_mode` — either `Standard` or `Adaptive`.
    #
    #  A custom strategy must respond to:
    #  * `#acquire_initial_retry_token` - returns a token
    #  * `#refresh_retry_token(token, error_info)` - returns a token or nil
    #  * `#record_success(token)` - records a successful request
    #  * `#request_bookkeeping(error_info = nil)` - updates internal state
    # @option options [String] :sdk_ua_app_id
    #  A unique and opaque application ID that is appended to the User-Agent header as app/sdk_ua_app_id.
    #  It should have a maximum length of 50. This variable is sourced from environment variable
    #  `AWS_SDK_UA_APP_ID` or the shared config profile attribute `sdk_ua_app_id`.
    # @option options [String] :secret_access_key
    # @option options [String] :session_token
    # @option options [String] :ssl_ca_bundle
    #  The path to a CA certificate bundle file in PEM format used to verify peer
    #  certificates. Defaults to `nil`, which uses the transport's default trust store.
    # @option options [String] :ssl_ca_directory
    #  The path to a directory of CA certificates in PEM format used to verify peer
    #  certificates. Defaults to `nil`, which uses the transport's default trust store.
    # @option options [OpenSSL::X509::Store] :ssl_ca_store
    #  An in-memory TLS trust store used to verify peer certificates. Defaults to `nil`,
    #  which uses the transport's default trust store.
    # @option options [Boolean] :ssl_verify_peer (true)
    #  When `true` (default), the peer's TLS certificate is verified. Disable only
    #  for debugging, as it is insecure.
    # @option options [Boolean] :stub_responses
    #  When `true`, the client will return stubbed responses instead of networking requests.
    #  By default fake responses are generated and returned. You can specify the response data
    #  to return or errors to raise by calling {Smithy::Client::Stubs#stub_responses}.
    # @option options [Smithy::Client::NetHTTP::Transport] :transport
    #  The transport used to send requests. Defaults to an HTTP/1.1 transport based on
    #  Net::HTTP ({Smithy::Client::NetHTTP::Transport}), constructed with the resolved
    #  common client transport options. Supply a custom object responding to
    #  `#transmit(request, sink)` and `#transmit_background(request, sink)` (both push
    #  the response into the sink; see {Smithy::Client::Transport}) to swap the transport,
    #  or a directly-constructed `NetHTTP::Transport` to set Net::HTTP-specific knobs. A
    #  caller-supplied transport instance is used as-is.
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

    # <p>Creates a new AI task (act) within a session that can interact with tools and perform specific actions.</p>
    # @param [Hash, Types::CreateActRequest] params
    # @option params [String] :workflow_definition_name
    #   <p>The name of the workflow definition containing the session.</p>
    # @option params [String] :workflow_run_id
    #   <p>The unique identifier of the workflow run containing the session.</p>
    # @option params [String] :session_id
    #   <p>The unique identifier of the session to create the act in.</p>
    # @option params [String] :task
    #   <p>The task description that defines what the act should accomplish.</p>
    # @option params [Array<Types::ToolSpec>] :tool_specs
    #   <p>A list of tool specifications that the act can invoke to complete its task.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workflow_definition_name: "WorkflowDefinitionName", # required
    #     workflow_run_id: "UuidString", # required
    #     session_id: "UuidString", # required
    #     task: "Task", # required
    #     tool_specs: [
    #       {
    #         name: "ToolName", # required
    #         description: "ToolDescription", # required
    #         input_schema: { # required
    #           # One of:
    #           json: ""null""
    #         }
    #       }
    #     ],
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_act(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     act_id: "UuidString", # required
    #     status: "RUNNING" # One of: ["RUNNING", "PENDING_CLIENT_ACTION", "PENDING_HUMAN_ACTION", "SUCCEEDED", "FAILED", "TIMED_OUT"], # required
    #   }
    # @return [Types::CreateActResponse]
    def create_act(params = {}, options = {})
      request = build_request(:create_act, params)
      request.send_request(options)
    end

    # <p>Creates a new session context within a workflow run to manage conversation state and acts.</p>
    # @param [Hash, Types::CreateSessionRequest] params
    # @option params [String] :workflow_definition_name
    #   <p>The name of the workflow definition containing the workflow run.</p>
    # @option params [String] :workflow_run_id
    #   <p>The unique identifier of the workflow run to create the session in.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workflow_definition_name: "WorkflowDefinitionName", # required
    #     workflow_run_id: "UuidString", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_session(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     session_id: "UuidString", # required
    #   }
    # @return [Types::CreateSessionResponse]
    def create_session(params = {}, options = {})
      request = build_request(:create_session, params)
      request.send_request(options)
    end

    # <p>Creates a new workflow definition template that can be used to execute multiple workflow runs.</p>
    # @param [Hash, Types::CreateWorkflowDefinitionRequest] params
    # @option params [String] :name
    #   <p>The name of the workflow definition. Must be unique within your account and region.</p>
    # @option params [String] :description
    #   <p>An optional description of the workflow definition's purpose and functionality.</p>
    # @option params [Types::WorkflowExportConfig] :export_config
    #   <p>Configuration for exporting workflow execution data to Amazon Simple Storage Service.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "WorkflowDefinitionName", # required
    #     description: "WorkflowDescription",
    #     export_config: {
    #       s3_bucket_name: "S3BucketName", # required
    #       s3_key_prefix: "S3KeyPrefix"
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_workflow_definition(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "ACTIVE" # One of: ["ACTIVE", "DELETING"], # required
    #   }
    # @return [Types::CreateWorkflowDefinitionResponse]
    def create_workflow_definition(params = {}, options = {})
      request = build_request(:create_workflow_definition, params)
      request.send_request(options)
    end

    # <p>Creates a new execution instance of a workflow definition with specified parameters.</p>
    # @param [Hash, Types::CreateWorkflowRunRequest] params
    # @option params [String] :workflow_definition_name
    #   <p>The name of the workflow definition to execute.</p>
    # @option params [String] :model_id
    #   <p>The ID of the AI model to use for workflow execution.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    # @option params [String] :log_group_name
    #   <p>The CloudWatch log group name for storing workflow execution logs.</p>
    # @option params [Types::ClientInfo] :client_info
    #   <p>Information about the client making the request, including compatibility version and SDK version.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workflow_definition_name: "WorkflowDefinitionName", # required
    #     model_id: "ModelId", # required
    #     client_token: "ClientToken",
    #     log_group_name: "CloudWatchLogGroupName",
    #     client_info: { # required
    #       compatibility_version: 1, # required
    #       sdk_version: "NonBlankString"
    #     }
    #   }
    #   options = {}
    #   response = client.create_workflow_run(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workflow_run_id: "UuidString", # required
    #     status: "RUNNING" # One of: ["RUNNING", "SUCCEEDED", "FAILED", "TIMED_OUT", "DELETING"], # required
    #   }
    # @return [Types::CreateWorkflowRunResponse]
    def create_workflow_run(params = {}, options = {})
      request = build_request(:create_workflow_run, params)
      request.send_request(options)
    end

    # <p>Deletes a workflow definition and all associated resources. This operation cannot be undone.</p>
    # @param [Hash, Types::DeleteWorkflowDefinitionRequest] params
    # @option params [String] :workflow_definition_name
    #   <p>The name of the workflow definition to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workflow_definition_name: "WorkflowDefinitionName", # required
    #   }
    #   options = {}
    #   response = client.delete_workflow_definition(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "ACTIVE" # One of: ["ACTIVE", "DELETING"], # required
    #   }
    # @return [Types::DeleteWorkflowDefinitionResponse]
    def delete_workflow_definition(params = {}, options = {})
      request = build_request(:delete_workflow_definition, params)
      request.send_request(options)
    end

    # <p>Terminates and cleans up a workflow run, stopping all associated acts and sessions.</p>
    # @param [Hash, Types::DeleteWorkflowRunRequest] params
    # @option params [String] :workflow_definition_name
    #   <p>The name of the workflow definition containing the workflow run.</p>
    # @option params [String] :workflow_run_id
    #   <p>The unique identifier of the workflow run to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workflow_definition_name: "WorkflowDefinitionName", # required
    #     workflow_run_id: "UuidString", # required
    #   }
    #   options = {}
    #   response = client.delete_workflow_run(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "RUNNING" # One of: ["RUNNING", "SUCCEEDED", "FAILED", "TIMED_OUT", "DELETING"], # required
    #   }
    # @return [Types::DeleteWorkflowRunResponse]
    def delete_workflow_run(params = {}, options = {})
      request = build_request(:delete_workflow_run, params)
      request.send_request(options)
    end

    # <p>Retrieves the details and configuration of a specific workflow definition.</p>
    # @param [Hash, Types::GetWorkflowDefinitionRequest] params
    # @option params [String] :workflow_definition_name
    #   <p>The name of the workflow definition to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workflow_definition_name: "WorkflowDefinitionName", # required
    #   }
    #   options = {}
    #   response = client.get_workflow_definition(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "WorkflowDefinitionName", # required
    #     arn: "WorkflowDefinitionArn", # required
    #     created_at: Time.now, # required
    #     description: "WorkflowDescription",
    #     export_config: {
    #       s3_bucket_name: "S3BucketName", # required
    #       s3_key_prefix: "S3KeyPrefix"
    #     },
    #     status: "ACTIVE" # One of: ["ACTIVE", "DELETING"], # required
    #   }
    # @return [Types::GetWorkflowDefinitionResponse]
    def get_workflow_definition(params = {}, options = {})
      request = build_request(:get_workflow_definition, params)
      request.send_request(options)
    end

    # <p>Retrieves the current state, configuration, and execution details of a workflow run.</p>
    # @param [Hash, Types::GetWorkflowRunRequest] params
    # @option params [String] :workflow_definition_name
    #   <p>The name of the workflow definition containing the workflow run.</p>
    # @option params [String] :workflow_run_id
    #   <p>The unique identifier of the workflow run to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workflow_definition_name: "WorkflowDefinitionName", # required
    #     workflow_run_id: "UuidString", # required
    #   }
    #   options = {}
    #   response = client.get_workflow_run(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workflow_run_arn: "WorkflowRunArn", # required
    #     workflow_run_id: "UuidString", # required
    #     status: "RUNNING" # One of: ["RUNNING", "SUCCEEDED", "FAILED", "TIMED_OUT", "DELETING"], # required
    #     started_at: Time.now, # required
    #     ended_at: Time.now,
    #     model_id: "ModelId", # required
    #     log_group_name: "CloudWatchLogGroupName"
    #   }
    # @return [Types::GetWorkflowRunResponse]
    def get_workflow_run(params = {}, options = {})
      request = build_request(:get_workflow_run, params)
      request.send_request(options)
    end

    # <p>Executes the next step of an act, processing tool call results and returning new tool calls if needed.</p>
    # @param [Hash, Types::InvokeActStepRequest] params
    # @option params [String] :workflow_definition_name
    #   <p>The name of the workflow definition containing the act.</p>
    # @option params [String] :workflow_run_id
    #   <p>The unique identifier of the workflow run containing the act.</p>
    # @option params [String] :session_id
    #   <p>The unique identifier of the session containing the act.</p>
    # @option params [String] :act_id
    #   <p>The unique identifier of the act to invoke the next step for.</p>
    # @option params [Array<Types::CallResult>] :call_results
    #   <p>The results from previous tool calls that the act requested.</p>
    # @option params [String] :previous_step_id
    #   <p>The identifier of the previous step, used for tracking execution flow.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workflow_definition_name: "WorkflowDefinitionName", # required
    #     workflow_run_id: "UuidString", # required
    #     session_id: "UuidString", # required
    #     act_id: "UuidString", # required
    #     call_results: [ # required
    #       {
    #         call_id: "CallId",
    #         content: [{ # required
    #           # One of:
    #           text: "String"
    #         }]
    #       }
    #     ],
    #     previous_step_id: "UuidString"
    #   }
    #   options = {}
    #   response = client.invoke_act_step(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     calls: [ # required
    #       {
    #         call_id: "CallId", # required
    #         input: ""null"", # required
    #         name: "String", # required
    #       }
    #     ],
    #     step_id: "UuidString", # required
    #   }
    # @return [Types::InvokeActStepResponse]
    def invoke_act_step(params = {}, options = {})
      request = build_request(:invoke_act_step, params)
      request.send_request(options)
    end

    # <p>Lists all acts within a specific session with their current status and execution details.</p>
    # @param [Hash, Types::ListActsRequest] params
    # @option params [String] :workflow_definition_name
    #   <p>The name of the workflow definition containing the session.</p>
    # @option params [String] :workflow_run_id
    #   <p>The unique identifier of the workflow run containing the session.</p>
    # @option params [String] :session_id
    #   <p>The unique identifier of the session to list acts for.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of acts to return in a single response.</p>
    # @option params [String] :next_token
    #   <p>The token for retrieving the next page of results.</p>
    # @option params [String] :sort_order
    #   <p>The sort order for the returned acts (ascending or descending).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workflow_definition_name: "WorkflowDefinitionName", # required
    #     workflow_run_id: "UuidString",
    #     session_id: "UuidString",
    #     max_results: 1,
    #     next_token: "NextToken",
    #     sort_order: "Ascending" # One of: ["Ascending", "Descending"]
    #   }
    #   options = {}
    #   response = client.list_acts(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     act_summaries: [ # required
    #       {
    #         workflow_run_id: "UuidString", # required
    #         session_id: "UuidString", # required
    #         act_id: "UuidString", # required
    #         status: "RUNNING" # One of: ["RUNNING", "PENDING_CLIENT_ACTION", "PENDING_HUMAN_ACTION", "SUCCEEDED", "FAILED", "TIMED_OUT"], # required
    #         started_at: Time.now, # required
    #         ended_at: Time.now,
    #         trace_location: {
    #           location_type: "S3" # One of: ["S3"], # required
    #           location: "NonBlankString", # required
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListActsResponse]
    def list_acts(params = {}, options = {})
      request = build_request(:list_acts, params)
      request.send_request(options)
    end

    # <p>Lists all available AI models that can be used for workflow execution, including their status and compatibility information.</p>
    # @param [Hash, Types::ListModelsRequest] params
    # @option params [Integer] :client_compatibility_version
    #   <p>The client compatibility version to filter models by compatibility.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_compatibility_version: 1, # required
    #   }
    #   options = {}
    #   response = client.list_models(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     model_summaries: [ # required
    #       {
    #         model_id: "ModelId", # required
    #         model_lifecycle: { # required
    #           status: "ACTIVE" # One of: ["ACTIVE", "LEGACY", "DEPRECATED", "PREVIEW"], # required
    #         },
    #         minimum_compatibility_version: 1, # required
    #       }
    #     ],
    #     model_aliases: [ # required
    #       {
    #         alias_name: "ModelId", # required
    #         latest_model_id: "ModelId", # required
    #         resolved_model_id: "ModelId"
    #       }
    #     ],
    #     compatibility_information: { # required
    #       client_compatibility_version: 1, # required
    #       supported_model_ids: ["ModelId"], # required
    #       message: "NonBlankString"
    #     }
    #   }
    # @return [Types::ListModelsResponse]
    def list_models(params = {}, options = {})
      request = build_request(:list_models, params)
      request.send_request(options)
    end

    # <p>Lists all sessions within a specific workflow run.</p>
    # @param [Hash, Types::ListSessionsRequest] params
    # @option params [String] :workflow_definition_name
    #   <p>The name of the workflow definition containing the workflow run.</p>
    # @option params [String] :workflow_run_id
    #   <p>The unique identifier of the workflow run to list sessions for.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of sessions to return in a single response.</p>
    # @option params [String] :next_token
    #   <p>The token for retrieving the next page of results.</p>
    # @option params [String] :sort_order
    #   <p>The sort order for the returned sessions (ascending or descending).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workflow_definition_name: "WorkflowDefinitionName", # required
    #     workflow_run_id: "UuidString", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #     sort_order: "Ascending" # One of: ["Ascending", "Descending"]
    #   }
    #   options = {}
    #   response = client.list_sessions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     session_summaries: [ # required
    #       {
    #         session_id: "UuidString", # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListSessionsResponse]
    def list_sessions(params = {}, options = {})
      request = build_request(:list_sessions, params)
      request.send_request(options)
    end

    # <p>Lists all workflow definitions in your account with optional filtering and pagination.</p>
    # @param [Hash, Types::ListWorkflowDefinitionsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of workflow definitions to return in a single response.</p>
    # @option params [String] :next_token
    #   <p>The token for retrieving the next page of results.</p>
    # @option params [String] :sort_order
    #   <p>The sort order for the returned workflow definitions (ascending or descending).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken",
    #     sort_order: "Ascending" # One of: ["Ascending", "Descending"]
    #   }
    #   options = {}
    #   response = client.list_workflow_definitions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workflow_definition_summaries: [ # required
    #       {
    #         workflow_definition_arn: "WorkflowDefinitionArn", # required
    #         workflow_definition_name: "WorkflowDefinitionName", # required
    #         created_at: Time.now, # required
    #         status: "ACTIVE" # One of: ["ACTIVE", "DELETING"], # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListWorkflowDefinitionsResponse]
    def list_workflow_definitions(params = {}, options = {})
      request = build_request(:list_workflow_definitions, params)
      request.send_request(options)
    end

    # <p>Lists all workflow runs for a specific workflow definition with optional filtering and pagination.</p>
    # @param [Hash, Types::ListWorkflowRunsRequest] params
    # @option params [String] :workflow_definition_name
    #   <p>The name of the workflow definition to list workflow runs for.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of workflow runs to return in a single response.</p>
    # @option params [String] :next_token
    #   <p>The token for retrieving the next page of results.</p>
    # @option params [String] :sort_order
    #   <p>The sort order for the returned workflow runs (ascending or descending).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workflow_definition_name: "WorkflowDefinitionName", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #     sort_order: "Ascending" # One of: ["Ascending", "Descending"]
    #   }
    #   options = {}
    #   response = client.list_workflow_runs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workflow_run_summaries: [ # required
    #       {
    #         workflow_run_arn: "WorkflowRunArn", # required
    #         workflow_run_id: "UuidString", # required
    #         status: "RUNNING" # One of: ["RUNNING", "SUCCEEDED", "FAILED", "TIMED_OUT", "DELETING"], # required
    #         started_at: Time.now, # required
    #         ended_at: Time.now,
    #         trace_location: {
    #           location_type: "S3" # One of: ["S3"], # required
    #           location: "NonBlankString", # required
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListWorkflowRunsResponse]
    def list_workflow_runs(params = {}, options = {})
      request = build_request(:list_workflow_runs, params)
      request.send_request(options)
    end

    # <p>Updates an existing act's configuration, status, or error information.</p>
    # @param [Hash, Types::UpdateActRequest] params
    # @option params [String] :workflow_definition_name
    #   <p>The name of the workflow definition containing the act.</p>
    # @option params [String] :workflow_run_id
    #   <p>The unique identifier of the workflow run containing the act.</p>
    # @option params [String] :session_id
    #   <p>The unique identifier of the session containing the act.</p>
    # @option params [String] :act_id
    #   <p>The unique identifier of the act to update.</p>
    # @option params [String] :status
    #   <p>The new status to set for the act.</p>
    # @option params [Types::ActError] :error
    #   <p>Error information to associate with the act, if applicable.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workflow_definition_name: "WorkflowDefinitionName", # required
    #     workflow_run_id: "UuidString", # required
    #     session_id: "UuidString", # required
    #     act_id: "UuidString", # required
    #     status: "RUNNING" # One of: ["RUNNING", "PENDING_CLIENT_ACTION", "PENDING_HUMAN_ACTION", "SUCCEEDED", "FAILED", "TIMED_OUT"], # required
    #     error: {
    #       message: "SensitiveString", # required
    #       type: "String"
    #     }
    #   }
    #   options = {}
    #   response = client.update_act(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateActResponse]
    def update_act(params = {}, options = {})
      request = build_request(:update_act, params)
      request.send_request(options)
    end

    # <p>Updates the configuration or state of an active workflow run.</p>
    # @param [Hash, Types::UpdateWorkflowRunRequest] params
    # @option params [String] :workflow_definition_name
    #   <p>The name of the workflow definition containing the workflow run.</p>
    # @option params [String] :workflow_run_id
    #   <p>The unique identifier of the workflow run to update.</p>
    # @option params [String] :status
    #   <p>The new status to set for the workflow run.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workflow_definition_name: "WorkflowDefinitionName", # required
    #     workflow_run_id: "UuidString", # required
    #     status: "RUNNING" # One of: ["RUNNING", "SUCCEEDED", "FAILED", "TIMED_OUT", "DELETING"], # required
    #   }
    #   options = {}
    #   response = client.update_workflow_run(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateWorkflowRunResponse]
    def update_workflow_run(params = {}, options = {})
      request = build_request(:update_workflow_run, params)
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
      context[:gem_name] = 'aws-sdk-novaact'
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

      # @api private
      def protocols
        {
          rest_json: Aws::Core::RestJson
        }
      end
    end
  end
end
