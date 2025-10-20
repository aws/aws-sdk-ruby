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
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/rest_json_protocol'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'

module Aws::BedrockAgentCore
  # An API client for Aws::BedrockAgentCore.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AmazonBedrockAgentCore
    @identifier = :bedrockagentcore

    add_plugin(::Aws::BedrockAgentCore::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::BedrockAgentCore::EndpointProvider)
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

    # <p>Creates an event in an AgentCore Memory resource. Events represent interactions or activities that occur within a session and are associated with specific actors.</p> <p>To use this operation, you must have the <code>bedrock-agentcore:CreateEvent</code> permission.</p> <p>This operation is subject to request rate limiting.</p>
    # @param [Hash, Types::CreateEventInput] params
    # @option params [String] :memory_id
    #   <p>The identifier of the AgentCore Memory resource in which to create the event.</p>
    # @option params [String] :actor_id
    #   <p>The identifier of the actor associated with this event. An actor represents an entity that participates in sessions and generates events.</p>
    # @option params [String] :session_id
    #   <p>The identifier of the session in which this event occurs. A session represents a sequence of related events.</p>
    # @option params [Time] :event_timestamp
    #   <p>The timestamp when the event occurred. If not specified, the current time is used.</p>
    # @option params [Array<Types::PayloadType>] :payload
    #   <p>The content payload of the event. This can include conversational data or binary content.</p>
    # @option params [Types::Branch] :branch
    #   <p>The branch information for this event. Branches allow for organizing events into different conversation threads or paths.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure that the operation completes no more than one time. If this token matches a previous request, AgentCore ignores the request, but does not return an error.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     memory_id: "MemoryId", # required
    #     actor_id: "ActorId", # required
    #     session_id: "SessionId",
    #     event_timestamp: Time.now, # required
    #     payload: [{ # required
    #       # One of:
    #       conversational: {
    #         content: { # required
    #           # One of:
    #           text: "SensitiveString"
    #         },
    #         role: "ASSISTANT" # One of: ["ASSISTANT", "USER", "TOOL", "OTHER"], # required
    #       },
    #       blob: ""null""
    #     }],
    #     branch: {
    #       root_event_id: "EventId",
    #       name: "BranchName", # required
    #     },
    #     client_token: "String"
    #   }
    #   options = {}
    #   response = client.create_event(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     event: { # required
    #       memory_id: "MemoryId", # required
    #       actor_id: "ActorId", # required
    #       session_id: "SessionId", # required
    #       event_id: "EventId", # required
    #       event_timestamp: Time.now, # required
    #       payload: [{ # required
    #         # One of:
    #         conversational: {
    #           content: { # required
    #             # One of:
    #             text: "SensitiveString"
    #           },
    #           role: "ASSISTANT" # One of: ["ASSISTANT", "USER", "TOOL", "OTHER"], # required
    #         },
    #         blob: ""null""
    #       }],
    #       branch: {
    #         root_event_id: "EventId",
    #         name: "BranchName", # required
    #       }
    #     }
    #   }
    # @return [Types::CreateEventOutput]
    def create_event(params = {}, options = {})
      request = build_request(:create_event, params)
      request.send_request(options)
    end

    # <p>Deletes an event from an AgentCore Memory resource. When you delete an event, it is permanently removed.</p> <p>To use this operation, you must have the <code>bedrock-agentcore:DeleteEvent</code> permission.</p>
    # @param [Hash, Types::DeleteEventInput] params
    # @option params [String] :memory_id
    #   <p>The identifier of the AgentCore Memory resource from which to delete the event.</p>
    # @option params [String] :session_id
    #   <p>The identifier of the session containing the event to delete.</p>
    # @option params [String] :event_id
    #   <p>The identifier of the event to delete.</p>
    # @option params [String] :actor_id
    #   <p>The identifier of the actor associated with the event to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     memory_id: "MemoryId", # required
    #     session_id: "SessionId", # required
    #     event_id: "EventId", # required
    #     actor_id: "ActorId", # required
    #   }
    #   options = {}
    #   response = client.delete_event(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     event_id: "EventId", # required
    #   }
    # @return [Types::DeleteEventOutput]
    def delete_event(params = {}, options = {})
      request = build_request(:delete_event, params)
      request.send_request(options)
    end

    # <p>Deletes a memory record from an AgentCore Memory resource. When you delete a memory record, it is permanently removed.</p> <p>To use this operation, you must have the <code>bedrock-agentcore:DeleteMemoryRecord</code> permission.</p>
    # @param [Hash, Types::DeleteMemoryRecordInput] params
    # @option params [String] :memory_id
    #   <p>The identifier of the AgentCore Memory resource from which to delete the memory record.</p>
    # @option params [String] :memory_record_id
    #   <p>The identifier of the memory record to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     memory_id: "MemoryId", # required
    #     memory_record_id: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_memory_record(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     memory_record_id: "String", # required
    #   }
    # @return [Types::DeleteMemoryRecordOutput]
    def delete_memory_record(params = {}, options = {})
      request = build_request(:delete_memory_record, params)
      request.send_request(options)
    end

    # <p>Retrieves detailed information about a specific browser session in Amazon Bedrock. This operation returns the session's configuration, current status, associated streams, and metadata.</p> <p>To get a browser session, you must specify both the browser identifier and the session ID. The response includes information about the session's viewport configuration, timeout settings, and stream endpoints.</p> <p>The following operations are related to <code>GetBrowserSession</code>:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/API_StartBrowserSession.html">StartBrowserSession</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/API_ListBrowserSessions.html">ListBrowserSessions</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/API_StopBrowserSession.html">StopBrowserSession</a> </p> </li> </ul>
    # @param [Hash, Types::GetBrowserSessionRequest] params
    # @option params [String] :browser_identifier
    #   <p>The unique identifier of the browser associated with the session.</p>
    # @option params [String] :session_id
    #   <p>The unique identifier of the browser session to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     browser_identifier: "String", # required
    #     session_id: "BrowserSessionId", # required
    #   }
    #   options = {}
    #   response = client.get_browser_session(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     browser_identifier: "String", # required
    #     session_id: "BrowserSessionId", # required
    #     name: "Name",
    #     created_at: Time.now, # required
    #     view_port: {
    #       width: 1, # required
    #       height: 1, # required
    #     },
    #     session_timeout_seconds: 1,
    #     status: "READY" # One of: ["READY", "TERMINATED"],
    #     streams: {
    #       automation_stream: { # required
    #         stream_endpoint: "BrowserStreamEndpoint", # required
    #         stream_status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #       },
    #       live_view_stream: {
    #         stream_endpoint: "BrowserStreamEndpoint"
    #       }
    #     },
    #     session_replay_artifact: "String",
    #     last_updated_at: Time.now
    #   }
    # @return [Types::GetBrowserSessionResponse]
    def get_browser_session(params = {}, options = {})
      request = build_request(:get_browser_session, params)
      request.send_request(options)
    end

    # <p>Retrieves detailed information about a specific code interpreter session in Amazon Bedrock. This operation returns the session's configuration, current status, and metadata.</p> <p>To get a code interpreter session, you must specify both the code interpreter identifier and the session ID. The response includes information about the session's timeout settings and current status.</p> <p>The following operations are related to <code>GetCodeInterpreterSession</code>:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/API_StartCodeInterpreterSession.html">StartCodeInterpreterSession</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/API_ListCodeInterpreterSessions.html">ListCodeInterpreterSessions</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/API_StopCodeInterpreterSession.html">StopCodeInterpreterSession</a> </p> </li> </ul>
    # @param [Hash, Types::GetCodeInterpreterSessionRequest] params
    # @option params [String] :code_interpreter_identifier
    #   <p>The unique identifier of the code interpreter associated with the session.</p>
    # @option params [String] :session_id
    #   <p>The unique identifier of the code interpreter session to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     code_interpreter_identifier: "String", # required
    #     session_id: "CodeInterpreterSessionId", # required
    #   }
    #   options = {}
    #   response = client.get_code_interpreter_session(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     code_interpreter_identifier: "String", # required
    #     session_id: "CodeInterpreterSessionId", # required
    #     name: "Name",
    #     created_at: Time.now, # required
    #     session_timeout_seconds: 1,
    #     status: "READY" # One of: ["READY", "TERMINATED"]
    #   }
    # @return [Types::GetCodeInterpreterSessionResponse]
    def get_code_interpreter_session(params = {}, options = {})
      request = build_request(:get_code_interpreter_session, params)
      request.send_request(options)
    end

    # <p>Retrieves information about a specific event in an AgentCore Memory resource.</p> <p>To use this operation, you must have the <code>bedrock-agentcore:GetEvent</code> permission.</p>
    # @param [Hash, Types::GetEventInput] params
    # @option params [String] :memory_id
    #   <p>The identifier of the AgentCore Memory resource containing the event.</p>
    # @option params [String] :session_id
    #   <p>The identifier of the session containing the event.</p>
    # @option params [String] :actor_id
    #   <p>The identifier of the actor associated with the event.</p>
    # @option params [String] :event_id
    #   <p>The identifier of the event to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     memory_id: "MemoryId", # required
    #     session_id: "SessionId", # required
    #     actor_id: "ActorId", # required
    #     event_id: "EventId", # required
    #   }
    #   options = {}
    #   response = client.get_event(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     event: { # required
    #       memory_id: "MemoryId", # required
    #       actor_id: "ActorId", # required
    #       session_id: "SessionId", # required
    #       event_id: "EventId", # required
    #       event_timestamp: Time.now, # required
    #       payload: [{ # required
    #         # One of:
    #         conversational: {
    #           content: { # required
    #             # One of:
    #             text: "SensitiveString"
    #           },
    #           role: "ASSISTANT" # One of: ["ASSISTANT", "USER", "TOOL", "OTHER"], # required
    #         },
    #         blob: ""null""
    #       }],
    #       branch: {
    #         root_event_id: "EventId",
    #         name: "BranchName", # required
    #       }
    #     }
    #   }
    # @return [Types::GetEventOutput]
    def get_event(params = {}, options = {})
      request = build_request(:get_event, params)
      request.send_request(options)
    end

    # <p>Retrieves a specific memory record from an AgentCore Memory resource.</p> <p>To use this operation, you must have the <code>bedrock-agentcore:GetMemoryRecord</code> permission.</p>
    # @param [Hash, Types::GetMemoryRecordInput] params
    # @option params [String] :memory_id
    #   <p>The identifier of the AgentCore Memory resource containing the memory record.</p>
    # @option params [String] :memory_record_id
    #   <p>The identifier of the memory record to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     memory_id: "MemoryId", # required
    #     memory_record_id: "String", # required
    #   }
    #   options = {}
    #   response = client.get_memory_record(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     memory_record: { # required
    #       memory_record_id: "MemoryRecordId", # required
    #       content: { # required
    #         # One of:
    #         text: "SensitiveString"
    #       },
    #       memory_strategy_id: "MemoryStrategyId", # required
    #       namespaces: ["Namespace"], # required
    #       created_at: Time.now, # required
    #     }
    #   }
    # @return [Types::GetMemoryRecordOutput]
    def get_memory_record(params = {}, options = {})
      request = build_request(:get_memory_record, params)
      request.send_request(options)
    end

    # <p>Retrieves an API Key associated with an API Key Credential Provider</p>
    # @param [Hash, Types::GetResourceApiKeyRequest] params
    # @option params [String] :workload_identity_token
    #   <p>The identity token of the workload you want to get the API Key of.</p>
    # @option params [String] :resource_credential_provider_name
    #   <p>The credential provider name of the resource you are retrieving the API Key of.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workload_identity_token: "WorkloadIdentityTokenType", # required
    #     resource_credential_provider_name: "CredentialProviderName", # required
    #   }
    #   options = {}
    #   response = client.get_resource_api_key(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     api_key: "ApiKeyType", # required
    #   }
    # @return [Types::GetResourceApiKeyResponse]
    def get_resource_api_key(params = {}, options = {})
      request = build_request(:get_resource_api_key, params)
      request.send_request(options)
    end

    # <p>Returns the OAuth 2.0 token of the provided resource</p>
    # @param [Hash, Types::GetResourceOauth2TokenRequest] params
    # @option params [String] :workload_identity_token
    #   <p>The identity token of the workload you want to retrive the Oauth2 Token of.</p>
    # @option params [String] :resource_credential_provider_name
    #   <p>Reference to the credential provider</p>
    # @option params [Array<String>] :scopes
    #   <p>The OAuth scopes requested</p>
    # @option params [String] :oauth2_flow
    #   <p>The type of flow to be performed</p>
    # @option params [String] :resource_oauth2_return_url
    #   <p>Callback url to redirect after token retrieval completes. Should be one of the provideded urls during WorkloadIdentity creation</p>
    # @option params [Boolean] :force_authentication
    #   <p>If true, always initiate a new 3LO flow</p>
    # @option params [Hash<String, String>] :custom_parameters
    #   <p>Gives the ability to send extra/custom parameters to the resource credentials provider during the authorization process. Standard OAuth2 flow parameters will not be overriden.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workload_identity_token: "WorkloadIdentityTokenType", # required
    #     resource_credential_provider_name: "CredentialProviderName", # required
    #     scopes: ["ScopeType"], # required
    #     oauth2_flow: "USER_FEDERATION" # One of: ["USER_FEDERATION", "M2M"], # required
    #     resource_oauth2_return_url: "ResourceOauth2ReturnUrlType",
    #     force_authentication: false,
    #     custom_parameters: {
    #       "CustomRequestKeyType" => "CustomRequestValueType"
    #     }
    #   }
    #   options = {}
    #   response = client.get_resource_oauth2_token(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     authorization_url: "String",
    #     access_token: "AccessTokenType"
    #   }
    # @return [Types::GetResourceOauth2TokenResponse]
    def get_resource_oauth2_token(params = {}, options = {})
      request = build_request(:get_resource_oauth2_token, params)
      request.send_request(options)
    end

    # <p>Obtains an Workload access token for agentic workloads not acting on behalf of user.</p>
    # @param [Hash, Types::GetWorkloadAccessTokenRequest] params
    # @option params [String] :workload_name
    #   <p>Unique identifier for the registered agent</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workload_name: "WorkloadIdentityNameType", # required
    #   }
    #   options = {}
    #   response = client.get_workload_access_token(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workload_access_token: "WorkloadIdentityTokenType", # required
    #   }
    # @return [Types::GetWorkloadAccessTokenResponse]
    def get_workload_access_token(params = {}, options = {})
      request = build_request(:get_workload_access_token, params)
      request.send_request(options)
    end

    # <p>Obtains an Workload access token for agentic workloads acting on behalf of user with JWT token</p>
    # @param [Hash, Types::GetWorkloadAccessTokenForJWTRequest] params
    # @option params [String] :workload_name
    #   <p>Unique identifier for the registered agent</p>
    # @option params [String] :user_token
    #   <p>OAuth2 token issued by the user's identity provider</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workload_name: "WorkloadIdentityNameType", # required
    #     user_token: "UserTokenType", # required
    #   }
    #   options = {}
    #   response = client.get_workload_access_token_for_jwt(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workload_access_token: "WorkloadIdentityTokenType", # required
    #   }
    # @return [Types::GetWorkloadAccessTokenForJWTResponse]
    def get_workload_access_token_for_jwt(params = {}, options = {})
      request = build_request(:get_workload_access_token_for_jwt, params)
      request.send_request(options)
    end

    # <p>Obtains an Workload access token for agentic workloads acting on behalf of user with User Id.</p>
    # @param [Hash, Types::GetWorkloadAccessTokenForUserIdRequest] params
    # @option params [String] :workload_name
    #   <p>The name of the worklaod you want to get the access token of.</p>
    # @option params [String] :user_id
    #   <p>The user id of the user you are retrieving the access token for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workload_name: "WorkloadIdentityNameType", # required
    #     user_id: "UserIdType", # required
    #   }
    #   options = {}
    #   response = client.get_workload_access_token_for_user_id(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workload_access_token: "WorkloadIdentityTokenType", # required
    #   }
    # @return [Types::GetWorkloadAccessTokenForUserIdResponse]
    def get_workload_access_token_for_user_id(params = {}, options = {})
      request = build_request(:get_workload_access_token_for_user_id, params)
      request.send_request(options)
    end

    # <p>Sends a request to an agent or tool hosted in an Amazon Bedrock AgentCore Runtime and receives responses in real-time. </p> <p>To invoke an agent you must specify the AgentCore Runtime ARN and provide a payload containing your request. You can optionally specify a qualifier to target a specific version or endpoint of the agent.</p> <p>This operation supports streaming responses, allowing you to receive partial responses as they become available. We recommend using pagination to ensure that the operation returns quickly and successfully when processing large responses.</p> <p>For example code, see <a href="https://docs.aws.amazon.com/bedrock-agentcore/latest/devguide/runtime-invoke-agent.html">Invoke an AgentCore Runtime agent</a>. </p> <p>If you're integrating your agent with OAuth, you can't use the Amazon Web Services SDK to call <code>InvokeAgentRuntime</code>. Instead, make a HTTPS request to <code>InvokeAgentRuntime</code>. For an example, see <a href="https://docs.aws.amazon.com/bedrock-agentcore/latest/devguide/runtime-oauth.html">Authenticate and authorize with Inbound Auth and Outbound Auth</a>.</p> <p>To use this operation, you must have the <code>bedrock-agentcore:InvokeAgentRuntime</code> permission.</p>
    # @param [Hash, Types::InvokeAgentRuntimeRequest] params
    # @option params [String] :content_type
    #   <p>The MIME type of the input data in the payload. This tells the agent runtime how to interpret the payload data. Common values include application/json for JSON data.</p>
    # @option params [String] :accept
    #   <p>The desired MIME type for the response from the agent runtime. This tells the agent runtime what format to use for the response data. Common values include application/json for JSON data.</p>
    # @option params [String] :mcp_session_id
    #   <p>The identifier of the MCP session.</p>
    # @option params [String] :runtime_session_id
    #   <p>The identifier of the runtime session.</p>
    # @option params [String] :mcp_protocol_version
    #   <p>The version of the MCP protocol being used.</p>
    # @option params [String] :runtime_user_id
    #   <p>The identifier of the runtime user.</p>
    # @option params [String] :trace_id
    #   <p>The trace identifier for request tracking.</p>
    # @option params [String] :trace_parent
    #   <p>The parent trace information for distributed tracing.</p>
    # @option params [String] :trace_state
    #   <p>The trace state information for distributed tracing.</p>
    # @option params [String] :baggage
    #   <p>Additional context information for distributed tracing.</p>
    # @option params [String] :agent_runtime_arn
    #   <p>The Amazon Web Services Resource Name (ARN) of the agent runtime to invoke. The ARN uniquely identifies the agent runtime resource in Amazon Bedrock.</p>
    # @option params [String] :qualifier
    #   <p>The qualifier to use for the agent runtime. This can be a version number or an endpoint name that points to a specific version. If not specified, Amazon Bedrock uses the default version of the agent runtime.</p>
    # @option params [String] :payload
    #   <p>The input data to send to the agent runtime. The format of this data depends on the specific agent configuration and must match the specified content type. For most agents, this is a JSON object containing the user's request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     content_type: "MimeType",
    #     accept: "MimeType",
    #     mcp_session_id: "StringType",
    #     runtime_session_id: "SessionType",
    #     mcp_protocol_version: "StringType",
    #     runtime_user_id: "StringType",
    #     trace_id: "String",
    #     trace_parent: "String",
    #     trace_state: "String",
    #     baggage: "String",
    #     agent_runtime_arn: "String", # required
    #     qualifier: "String",
    #     payload: "data", # required
    #   }
    #   options = {}
    #   response = client.invoke_agent_runtime(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     runtime_session_id: "SessionId",
    #     mcp_session_id: "SessionId",
    #     mcp_protocol_version: "String",
    #     trace_id: "String",
    #     trace_parent: "String",
    #     trace_state: "String",
    #     baggage: "String",
    #     content_type: "String", # required
    #     response: File.read("source_file"),
    #     status_code: 1
    #   }
    # @return [Types::InvokeAgentRuntimeResponse]
    def invoke_agent_runtime(params = {}, options = {})
      request = build_request(:invoke_agent_runtime, params)
      request.send_request(options)
    end

    # <p>Executes code within an active code interpreter session in Amazon Bedrock. This operation processes the provided code, runs it in a secure environment, and returns the execution results including output, errors, and generated visualizations.</p> <p>To execute code, you must specify the code interpreter identifier, session ID, and the code to run in the arguments parameter. The operation returns a stream containing the execution results, which can include text output, error messages, and data visualizations.</p> <p>This operation is subject to request rate limiting based on your account's service quotas.</p> <p>The following operations are related to <code>InvokeCodeInterpreter</code>:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/API_StartCodeInterpreterSession.html">StartCodeInterpreterSession</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/API_GetCodeInterpreterSession.html">GetCodeInterpreterSession</a> </p> </li> </ul>
    # @param [Hash, Types::InvokeCodeInterpreterRequest] params
    # @option params [String] :code_interpreter_identifier
    #   <p>The unique identifier of the code interpreter associated with the session. This must match the identifier used when creating the session with <code>StartCodeInterpreterSession</code>.</p>
    # @option params [String] :session_id
    #   <p>The unique identifier of the code interpreter session to use. This must be an active session created with <code>StartCodeInterpreterSession</code>. If the session has expired or been stopped, the request will fail.</p>
    # @option params [String] :name
    #   <p>The name of the code interpreter to invoke.</p>
    # @option params [Types::ToolArguments] :arguments
    #   <p>The arguments for the code interpreter. This includes the code to execute and any additional parameters such as the programming language, whether to clear the execution context, and other execution options. The structure of this parameter depends on the specific code interpreter being used.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     code_interpreter_identifier: "String", # required
    #     session_id: "CodeInterpreterSessionId",
    #     name: "executeCode" # One of: ["executeCode", "executeCommand", "readFiles", "listFiles", "removeFiles", "writeFiles", "startCommandExecution", "getTask", "stopTask"], # required
    #     arguments: {
    #       code: "MaxLenString",
    #       language: "python" # One of: ["python", "javascript", "typescript"],
    #       clear_context: false,
    #       command: "MaxLenString",
    #       path: "MaxLenString",
    #       paths: ["MaxLenString"],
    #       content: [
    #         {
    #           path: "MaxLenString", # required
    #           text: "MaxLenString",
    #           blob: "data"
    #         }
    #       ],
    #       directory_path: "MaxLenString",
    #       task_id: "MaxLenString"
    #     }
    #   }
    #   options = {}
    #   response = client.invoke_code_interpreter(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     session_id: "CodeInterpreterSessionId",
    #     stream: { # required
    #       # One of:
    #       result: {
    #         content: [ # required
    #           {
    #             type: "text" # One of: ["text", "image", "resource", "resource_link"], # required
    #             text: "String",
    #             data: "data",
    #             mime_type: "String",
    #             uri: "String",
    #             name: "String",
    #             description: "String",
    #             size: 1,
    #             resource: {
    #               type: "text" # One of: ["text", "blob"], # required
    #               uri: "String",
    #               mime_type: "String",
    #               text: "String",
    #               blob: "data"
    #             }
    #           }
    #         ],
    #         structured_content: {
    #           task_id: "String",
    #           task_status: "submitted" # One of: ["submitted", "working", "completed", "canceled", "failed"],
    #           stdout: "String",
    #           stderr: "String",
    #           exit_code: 1,
    #           execution_time: 1.0
    #         },
    #         is_error: false
    #       },
    #       access_denied_exception: {
    #         message: "NonBlankString"
    #       },
    #       conflict_exception: {
    #         message: "NonBlankString"
    #       },
    #       internal_server_exception: {
    #         message: "NonBlankString"
    #       },
    #       resource_not_found_exception: {
    #         message: "NonBlankString"
    #       },
    #       service_quota_exceeded_exception: {
    #         message: "NonBlankString"
    #       },
    #       throttling_exception: {
    #         message: "NonBlankString"
    #       },
    #       validation_exception: {
    #         message: "String", # required
    #         reason: "CannotParse" # One of: ["CannotParse", "FieldValidationFailed", "IdempotentParameterMismatchException", "EventInOtherSession", "ResourceConflict"], # required
    #         field_list: [
    #           {
    #             name: "String", # required
    #             message: "String", # required
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @return [Types::InvokeCodeInterpreterResponse]
    def invoke_code_interpreter(params = {}, options = {})
      request = build_request(:invoke_code_interpreter, params)
      request.send_request(options)
    end

    # <p>Lists all actors in an AgentCore Memory resource. We recommend using pagination to ensure that the operation returns quickly and successfully.</p> <p>To use this operation, you must have the <code>bedrock-agentcore:ListActors</code> permission.</p>
    # @param [Hash, Types::ListActorsInput] params
    # @option params [String] :memory_id
    #   <p>The identifier of the AgentCore Memory resource for which to list actors.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. Minimum value of 1, maximum value of 100. Default is 20.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     memory_id: "MemoryId", # required
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_actors(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     actor_summaries: [ # required
    #       {
    #         actor_id: "ActorId", # required
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListActorsOutput]
    def list_actors(params = {}, options = {})
      request = build_request(:list_actors, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of browser sessions in Amazon Bedrock that match the specified criteria. This operation returns summary information about each session, including identifiers, status, and timestamps.</p> <p>You can filter the results by browser identifier and session status. The operation supports pagination to handle large result sets efficiently.</p> <p>We recommend using pagination to ensure that the operation returns quickly and successfully when retrieving large numbers of sessions.</p> <p>The following operations are related to <code>ListBrowserSessions</code>:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/API_StartBrowserSession.html">StartBrowserSession</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/API_GetBrowserSession.html">GetBrowserSession</a> </p> </li> </ul>
    # @param [Hash, Types::ListBrowserSessionsRequest] params
    # @option params [String] :browser_identifier
    #   <p>The unique identifier of the browser to list sessions for. If specified, only sessions for this browser are returned. If not specified, sessions for all browsers are returned.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. The default value is 10. Valid values range from 1 to 100. To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results. If not specified, Amazon Bedrock returns the first page of results.</p>
    # @option params [String] :status
    #   <p>The status of the browser sessions to list. Valid values include ACTIVE, STOPPING, and STOPPED. If not specified, sessions with any status are returned.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     browser_identifier: "String", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #     status: "READY" # One of: ["READY", "TERMINATED"]
    #   }
    #   options = {}
    #   response = client.list_browser_sessions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [ # required
    #       {
    #         browser_identifier: "String", # required
    #         session_id: "BrowserSessionId", # required
    #         name: "Name",
    #         status: "READY" # One of: ["READY", "TERMINATED"], # required
    #         created_at: Time.now, # required
    #         last_updated_at: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListBrowserSessionsResponse]
    def list_browser_sessions(params = {}, options = {})
      request = build_request(:list_browser_sessions, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of code interpreter sessions in Amazon Bedrock that match the specified criteria. This operation returns summary information about each session, including identifiers, status, and timestamps.</p> <p>You can filter the results by code interpreter identifier and session status. The operation supports pagination to handle large result sets efficiently.</p> <p>We recommend using pagination to ensure that the operation returns quickly and successfully when retrieving large numbers of sessions.</p> <p>The following operations are related to <code>ListCodeInterpreterSessions</code>:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/API_StartCodeInterpreterSession.html">StartCodeInterpreterSession</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/API_GetCodeInterpreterSession.html">GetCodeInterpreterSession</a> </p> </li> </ul>
    # @param [Hash, Types::ListCodeInterpreterSessionsRequest] params
    # @option params [String] :code_interpreter_identifier
    #   <p>The unique identifier of the code interpreter to list sessions for. If specified, only sessions for this code interpreter are returned. If not specified, sessions for all code interpreters are returned.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. The default value is 10. Valid values range from 1 to 100. To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results. If not specified, Amazon Bedrock returns the first page of results.</p>
    # @option params [String] :status
    #   <p>The status of the code interpreter sessions to list. Valid values include ACTIVE, STOPPING, and STOPPED. If not specified, sessions with any status are returned.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     code_interpreter_identifier: "String", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #     status: "READY" # One of: ["READY", "TERMINATED"]
    #   }
    #   options = {}
    #   response = client.list_code_interpreter_sessions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [ # required
    #       {
    #         code_interpreter_identifier: "String", # required
    #         session_id: "CodeInterpreterSessionId", # required
    #         name: "Name",
    #         status: "READY" # One of: ["READY", "TERMINATED"], # required
    #         created_at: Time.now, # required
    #         last_updated_at: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListCodeInterpreterSessionsResponse]
    def list_code_interpreter_sessions(params = {}, options = {})
      request = build_request(:list_code_interpreter_sessions, params)
      request.send_request(options)
    end

    # <p>Lists events in an AgentCore Memory resource based on specified criteria. We recommend using pagination to ensure that the operation returns quickly and successfully.</p> <p>To use this operation, you must have the <code>bedrock-agentcore:ListEvents</code> permission.</p>
    # @param [Hash, Types::ListEventsInput] params
    # @option params [String] :memory_id
    #   <p>The identifier of the AgentCore Memory resource for which to list events.</p>
    # @option params [String] :session_id
    #   <p>The identifier of the session for which to list events. If specified, only events from this session are returned.</p>
    # @option params [String] :actor_id
    #   <p>The identifier of the actor for which to list events. If specified, only events from this actor are returned.</p>
    # @option params [Boolean] :include_payloads
    #   <p>Specifies whether to include event payloads in the response. Set to true to include payloads, or false to exclude them.</p>
    # @option params [Types::FilterInput] :filter
    #   <p>Filter criteria to apply when listing events.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. Minimum value of 1, maximum value of 100. Default is 20.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     memory_id: "MemoryId", # required
    #     session_id: "SessionId", # required
    #     actor_id: "ActorId", # required
    #     include_payloads: false,
    #     filter: {
    #       branch: {
    #         name: "BranchName", # required
    #         include_parent_branches: false
    #       }
    #     },
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_events(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     events: [ # required
    #       {
    #         memory_id: "MemoryId", # required
    #         actor_id: "ActorId", # required
    #         session_id: "SessionId", # required
    #         event_id: "EventId", # required
    #         event_timestamp: Time.now, # required
    #         payload: [{ # required
    #           # One of:
    #           conversational: {
    #             content: { # required
    #               # One of:
    #               text: "SensitiveString"
    #             },
    #             role: "ASSISTANT" # One of: ["ASSISTANT", "USER", "TOOL", "OTHER"], # required
    #           },
    #           blob: ""null""
    #         }],
    #         branch: {
    #           root_event_id: "EventId",
    #           name: "BranchName", # required
    #         }
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListEventsOutput]
    def list_events(params = {}, options = {})
      request = build_request(:list_events, params)
      request.send_request(options)
    end

    # <p>Lists memory records in an AgentCore Memory resource based on specified criteria. We recommend using pagination to ensure that the operation returns quickly and successfully.</p> <p>To use this operation, you must have the <code>bedrock-agentcore:ListMemoryRecords</code> permission.</p>
    # @param [Hash, Types::ListMemoryRecordsInput] params
    # @option params [String] :memory_id
    #   <p>The identifier of the AgentCore Memory resource for which to list memory records.</p>
    # @option params [String] :namespace
    #   <p>The namespace to filter memory records by. If specified, only memory records in this namespace are returned.</p>
    # @option params [String] :memory_strategy_id
    #   <p>The memory strategy identifier to filter memory records by. If specified, only memory records with this strategy ID are returned.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. Minimum value of 1, maximum value of 100. Default is 20.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     memory_id: "MemoryId", # required
    #     namespace: "Namespace", # required
    #     memory_strategy_id: "MemoryStrategyId",
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_memory_records(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     memory_record_summaries: [ # required
    #       {
    #         memory_record_id: "MemoryRecordId", # required
    #         content: { # required
    #           # One of:
    #           text: "SensitiveString"
    #         },
    #         memory_strategy_id: "MemoryStrategyId", # required
    #         namespaces: ["Namespace"], # required
    #         created_at: Time.now, # required
    #         score: 1.0
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListMemoryRecordsOutput]
    def list_memory_records(params = {}, options = {})
      request = build_request(:list_memory_records, params)
      request.send_request(options)
    end

    # <p>Lists sessions in an AgentCore Memory resource based on specified criteria. We recommend using pagination to ensure that the operation returns quickly and successfully.</p> <p>To use this operation, you must have the <code>bedrock-agentcore:ListSessions</code> permission.</p>
    # @param [Hash, Types::ListSessionsInput] params
    # @option params [String] :memory_id
    #   <p>The identifier of the AgentCore Memory resource for which to list sessions.</p>
    # @option params [String] :actor_id
    #   <p>The identifier of the actor for which to list sessions. If specified, only sessions involving this actor are returned.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. Minimum value of 1, maximum value of 100. Default is 20.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     memory_id: "MemoryId", # required
    #     actor_id: "ActorId", # required
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_sessions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     session_summaries: [ # required
    #       {
    #         session_id: "SessionId", # required
    #         actor_id: "ActorId", # required
    #         created_at: Time.now, # required
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListSessionsOutput]
    def list_sessions(params = {}, options = {})
      request = build_request(:list_sessions, params)
      request.send_request(options)
    end

    # <p>Searches for and retrieves memory records from an AgentCore Memory resource based on specified search criteria. We recommend using pagination to ensure that the operation returns quickly and successfully.</p> <p>To use this operation, you must have the <code>bedrock-agentcore:RetrieveMemoryRecords</code> permission.</p>
    # @param [Hash, Types::RetrieveMemoryRecordsInput] params
    # @option params [String] :memory_id
    #   <p>The identifier of the AgentCore Memory resource from which to retrieve memory records.</p>
    # @option params [String] :namespace
    #   <p>The namespace to filter memory records by. If specified, only memory records in this namespace are searched.</p>
    # @option params [Types::SearchCriteria] :search_criteria
    #   <p>The search criteria to use for finding relevant memory records. This includes the search query, memory strategy ID, and other search parameters.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. Minimum value of 1, maximum value of 100. Default is 20.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     memory_id: "MemoryId", # required
    #     namespace: "Namespace", # required
    #     search_criteria: { # required
    #       search_query: "SensitiveString", # required
    #       memory_strategy_id: "MemoryStrategyId",
    #       top_k: 1
    #     },
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.retrieve_memory_records(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     memory_record_summaries: [ # required
    #       {
    #         memory_record_id: "MemoryRecordId", # required
    #         content: { # required
    #           # One of:
    #           text: "SensitiveString"
    #         },
    #         memory_strategy_id: "MemoryStrategyId", # required
    #         namespaces: ["Namespace"], # required
    #         created_at: Time.now, # required
    #         score: 1.0
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::RetrieveMemoryRecordsOutput]
    def retrieve_memory_records(params = {}, options = {})
      request = build_request(:retrieve_memory_records, params)
      request.send_request(options)
    end

    # <p>Creates and initializes a browser session in Amazon Bedrock. The session enables agents to navigate and interact with web content, extract information from websites, and perform web-based tasks as part of their response generation.</p> <p>To create a session, you must specify a browser identifier and a name. You can also configure the viewport dimensions to control the visible area of web content. The session remains active until it times out or you explicitly stop it using the <code>StopBrowserSession</code> operation.</p> <p>The following operations are related to <code>StartBrowserSession</code>:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/API_GetBrowserSession.html">GetBrowserSession</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/API_UpdateBrowserStream.html">UpdateBrowserStream</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/API_StopBrowserSession.html">StopBrowserSession</a> </p> </li> </ul>
    # @param [Hash, Types::StartBrowserSessionRequest] params
    # @option params [String] :browser_identifier
    #   <p>The unique identifier of the browser to use for this session. This identifier specifies which browser environment to initialize for the session.</p>
    # @option params [String] :name
    #   <p>The name of the browser session. This name helps you identify and manage the session. The name does not need to be unique.</p>
    # @option params [Integer] :session_timeout_seconds
    #   <p>The time in seconds after which the session automatically terminates if there is no activity. The default value is 3600 seconds (1 hour). The minimum allowed value is 60 seconds, and the maximum allowed value is 28800 seconds (8 hours).</p>
    # @option params [Types::ViewPort] :view_port
    #   <p>The dimensions of the browser viewport for this session. This determines the visible area of the web content and affects how web pages are rendered. If not specified, Amazon Bedrock uses a default viewport size.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, Amazon Bedrock ignores the request, but does not return an error. This parameter helps prevent the creation of duplicate sessions if there are temporary network issues.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     browser_identifier: "String", # required
    #     name: "Name",
    #     session_timeout_seconds: 1,
    #     view_port: {
    #       width: 1, # required
    #       height: 1, # required
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.start_browser_session(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     browser_identifier: "String", # required
    #     session_id: "BrowserSessionId", # required
    #     created_at: Time.now, # required
    #     streams: {
    #       automation_stream: { # required
    #         stream_endpoint: "BrowserStreamEndpoint", # required
    #         stream_status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #       },
    #       live_view_stream: {
    #         stream_endpoint: "BrowserStreamEndpoint"
    #       }
    #     }
    #   }
    # @return [Types::StartBrowserSessionResponse]
    def start_browser_session(params = {}, options = {})
      request = build_request(:start_browser_session, params)
      request.send_request(options)
    end

    # <p>Creates and initializes a code interpreter session in Amazon Bedrock. The session enables agents to execute code as part of their response generation, supporting programming languages such as Python for data analysis, visualization, and computation tasks.</p> <p>To create a session, you must specify a code interpreter identifier and a name. The session remains active until it times out or you explicitly stop it using the <code>StopCodeInterpreterSession</code> operation.</p> <p>The following operations are related to <code>StartCodeInterpreterSession</code>:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/API_InvokeCodeInterpreter.html">InvokeCodeInterpreter</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/API_GetCodeInterpreterSession.html">GetCodeInterpreterSession</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/API_StopCodeInterpreterSession.html">StopCodeInterpreterSession</a> </p> </li> </ul>
    # @param [Hash, Types::StartCodeInterpreterSessionRequest] params
    # @option params [String] :code_interpreter_identifier
    #   <p>The unique identifier of the code interpreter to use for this session. This identifier specifies which code interpreter environment to initialize for the session.</p>
    # @option params [String] :name
    #   <p>The name of the code interpreter session. This name helps you identify and manage the session. The name does not need to be unique.</p>
    # @option params [Integer] :session_timeout_seconds
    #   <p>The time in seconds after which the session automatically terminates if there is no activity. The default value is 3600 seconds (1 hour). The minimum allowed value is 60 seconds, and the maximum allowed value is 28800 seconds (8 hours).</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, Amazon Bedrock ignores the request, but does not return an error. This parameter helps prevent the creation of duplicate sessions if there are temporary network issues.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     code_interpreter_identifier: "String", # required
    #     name: "Name",
    #     session_timeout_seconds: 1,
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.start_code_interpreter_session(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     code_interpreter_identifier: "String", # required
    #     session_id: "CodeInterpreterSessionId", # required
    #     created_at: Time.now, # required
    #   }
    # @return [Types::StartCodeInterpreterSessionResponse]
    def start_code_interpreter_session(params = {}, options = {})
      request = build_request(:start_code_interpreter_session, params)
      request.send_request(options)
    end

    # <p>Terminates an active browser session in Amazon Bedrock. This operation stops the session, releases associated resources, and makes the session unavailable for further use.</p> <p>To stop a browser session, you must specify both the browser identifier and the session ID. Once stopped, a session cannot be restarted; you must create a new session using <code>StartBrowserSession</code>.</p> <p>The following operations are related to <code>StopBrowserSession</code>:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/API_StartBrowserSession.html">StartBrowserSession</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/API_GetBrowserSession.html">GetBrowserSession</a> </p> </li> </ul>
    # @param [Hash, Types::StopBrowserSessionRequest] params
    # @option params [String] :browser_identifier
    #   <p>The unique identifier of the browser associated with the session.</p>
    # @option params [String] :session_id
    #   <p>The unique identifier of the browser session to stop.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, Amazon Bedrock ignores the request, but does not return an error.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     browser_identifier: "String", # required
    #     session_id: "BrowserSessionId", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.stop_browser_session(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     browser_identifier: "String", # required
    #     session_id: "BrowserSessionId", # required
    #     last_updated_at: Time.now, # required
    #   }
    # @return [Types::StopBrowserSessionResponse]
    def stop_browser_session(params = {}, options = {})
      request = build_request(:stop_browser_session, params)
      request.send_request(options)
    end

    # <p>Terminates an active code interpreter session in Amazon Bedrock. This operation stops the session, releases associated resources, and makes the session unavailable for further use.</p> <p>To stop a code interpreter session, you must specify both the code interpreter identifier and the session ID. Once stopped, a session cannot be restarted; you must create a new session using <code>StartCodeInterpreterSession</code>.</p> <p>The following operations are related to <code>StopCodeInterpreterSession</code>:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/API_StartCodeInterpreterSession.html">StartCodeInterpreterSession</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/API_GetCodeInterpreterSession.html">GetCodeInterpreterSession</a> </p> </li> </ul>
    # @param [Hash, Types::StopCodeInterpreterSessionRequest] params
    # @option params [String] :code_interpreter_identifier
    #   <p>The unique identifier of the code interpreter associated with the session.</p>
    # @option params [String] :session_id
    #   <p>The unique identifier of the code interpreter session to stop.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, Amazon Bedrock ignores the request, but does not return an error.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     code_interpreter_identifier: "String", # required
    #     session_id: "CodeInterpreterSessionId", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.stop_code_interpreter_session(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     code_interpreter_identifier: "String", # required
    #     session_id: "CodeInterpreterSessionId", # required
    #     last_updated_at: Time.now, # required
    #   }
    # @return [Types::StopCodeInterpreterSessionResponse]
    def stop_code_interpreter_session(params = {}, options = {})
      request = build_request(:stop_code_interpreter_session, params)
      request.send_request(options)
    end

    # <p>Updates a browser stream. To use this operation, you must have permissions to perform the bedrock:UpdateBrowserStream action.</p>
    # @param [Hash, Types::UpdateBrowserStreamRequest] params
    # @option params [String] :browser_identifier
    #   <p>The identifier of the browser.</p>
    # @option params [String] :session_id
    #   <p>The identifier of the browser session.</p>
    # @option params [Types::StreamUpdate] :stream_update
    #   <p>The update to apply to the browser stream.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure that the operation completes no more than one time. If this token matches a previous request, Amazon Bedrock ignores the request, but does not return an error.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     browser_identifier: "String", # required
    #     session_id: "BrowserSessionId", # required
    #     stream_update: { # required
    #       # One of:
    #       automation_stream_update: {
    #         stream_status: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #       }
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.update_browser_stream(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     browser_identifier: "String", # required
    #     session_id: "BrowserSessionId", # required
    #     streams: { # required
    #       automation_stream: { # required
    #         stream_endpoint: "BrowserStreamEndpoint", # required
    #         stream_status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #       },
    #       live_view_stream: {
    #         stream_endpoint: "BrowserStreamEndpoint"
    #       }
    #     },
    #     updated_at: Time.now, # required
    #   }
    # @return [Types::UpdateBrowserStreamResponse]
    def update_browser_stream(params = {}, options = {})
      request = build_request(:update_browser_stream, params)
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
      context[:gem_name] = 'aws-sdk-bedrockagentcore'
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
