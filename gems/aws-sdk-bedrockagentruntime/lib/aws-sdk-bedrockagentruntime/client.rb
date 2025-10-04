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
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/rest_json_protocol'
require 'aws-sdk-core/plugins/sigv4'

module Aws::BedrockAgentRuntime
  # An API client for Aws::BedrockAgentRuntime.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AmazonBedrockAgentRunTimeService

    add_plugin(::Aws::BedrockAgentRuntime::Plugins::Endpoint)
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
    add_plugin(Aws::Core::Plugins::RegionalEndpoints)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::RestJsonProtocol)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::BedrockAgentRuntime::EndpointProvider)
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

    # <p>Creates a new invocation within a session. An invocation groups the related invocation steps that store the content from a conversation. For more information about sessions, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/sessions.html">Store and retrieve conversation history and context with Amazon Bedrock sessions</a>.</p> <p>Related APIs</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_ListInvocations.html">ListInvocations</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_ListSessions.html">ListSessions</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_GetSession.html">GetSession</a> </p> </li> </ul>
    # @param [Hash, Types::CreateInvocationRequest] params
    # @option params [String] :invocation_id
    #   <p>A unique identifier for the invocation in UUID format.</p>
    # @option params [String] :description
    #   <p>A description for the interactions in the invocation. For example, "User asking about weather in Seattle".</p>
    # @option params [String] :session_identifier
    #   <p>The unique identifier for the associated session for the invocation. You can specify either the session's <code>sessionId</code> or its Amazon Resource Name (ARN). </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     invocation_id: "Uuid",
    #     description: "InvocationDescription",
    #     session_identifier: "SessionIdentifier", # required
    #   }
    #   options = {}
    #   response = client.create_invocation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     session_id: "Uuid", # required
    #     invocation_id: "Uuid", # required
    #     created_at: Time.now, # required
    #   }
    # @return [Types::CreateInvocationResponse]
    def create_invocation(params = {}, options = {})
      request = build_request(:create_invocation, params)
      request.send_request(options)
    end

    # <p>Creates a session to temporarily store conversations for generative AI (GenAI) applications built with open-source frameworks such as LangGraph and LlamaIndex. Sessions enable you to save the state of conversations at checkpoints, with the added security and infrastructure of Amazon Web Services. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/sessions.html">Store and retrieve conversation history and context with Amazon Bedrock sessions</a>.</p> <p>By default, Amazon Bedrock uses Amazon Web Services-managed keys for session encryption, including session metadata, or you can use your own KMS key. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/session-encryption.html">Amazon Bedrock session encryption</a>.</p> <note> <p> You use a session to store state and conversation history for generative AI applications built with open-source frameworks. For Amazon Bedrock Agents, the service automatically manages conversation context and associates them with the agent-specific sessionId you specify in the <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html">InvokeAgent</a> API operation. </p> </note> <p>Related APIs:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_ListSessions.html">ListSessions</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_GetSession.html">GetSession</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_EndSession.html">EndSession</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_DeleteSession.html">DeleteSession</a> </p> </li> </ul>
    # @param [Hash, Types::CreateSessionRequest] params
    # @option params [Hash<String, String>] :session_metadata
    #   <p>A map of key-value pairs containing attributes to be persisted across the session. For example, the user's ID, their language preference, and the type of device they are using.</p>
    # @option params [String] :encryption_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key to use to encrypt the session data. The user or role creating the session must have permission to use the key. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/session-encryption.html">Amazon Bedrock session encryption</a>. </p>
    # @option params [Hash<String, String>] :tags
    #   <p>Specify the key-value pairs for the tags that you want to attach to the session.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     session_metadata: {
    #       "SessionMetadataKey" => "SessionMetadataValue"
    #     },
    #     encryption_key_arn: "KmsKeyArn",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_session(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     session_id: "Uuid", # required
    #     session_arn: "SessionArn", # required
    #     session_status: "ACTIVE" # One of: ["ACTIVE", "EXPIRED", "ENDED"], # required
    #     created_at: Time.now, # required
    #   }
    # @return [Types::CreateSessionResponse]
    def create_session(params = {}, options = {})
      request = build_request(:create_session, params)
      request.send_request(options)
    end

    # <p>Deletes memory from the specified memory identifier.</p>
    # @param [Hash, Types::DeleteAgentMemoryRequest] params
    # @option params [String] :agent_id
    #   <p>The unique identifier of the agent to which the alias belongs.</p>
    # @option params [String] :agent_alias_id
    #   <p>The unique identifier of an alias of an agent.</p>
    # @option params [String] :memory_id
    #   <p>The unique identifier of the memory.</p>
    # @option params [String] :session_id
    #   <p>The unique session identifier of the memory.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_id: "AgentId", # required
    #     agent_alias_id: "AgentAliasId", # required
    #     memory_id: "MemoryId",
    #     session_id: "SessionId"
    #   }
    #   options = {}
    #   response = client.delete_agent_memory(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteAgentMemoryResponse]
    def delete_agent_memory(params = {}, options = {})
      request = build_request(:delete_agent_memory, params)
      request.send_request(options)
    end

    # <p>Deletes a session that you ended. You can't delete a session with an <code>ACTIVE</code> status. To delete an active session, you must first end it with the <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_EndSession.html">EndSession</a> API operation. For more information about sessions, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/sessions.html">Store and retrieve conversation history and context with Amazon Bedrock sessions</a>.</p>
    # @param [Hash, Types::DeleteSessionRequest] params
    # @option params [String] :session_identifier
    #   <p>The unique identifier for the session to be deleted. You can specify either the session's <code>sessionId</code> or its Amazon Resource Name (ARN).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     session_identifier: "SessionIdentifier", # required
    #   }
    #   options = {}
    #   response = client.delete_session(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteSessionResponse]
    def delete_session(params = {}, options = {})
      request = build_request(:delete_session, params)
      request.send_request(options)
    end

    # <p>Ends the session. After you end a session, you can still access its content but you can’t add to it. To delete the session and it's content, you use the DeleteSession API operation. For more information about sessions, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/sessions.html">Store and retrieve conversation history and context with Amazon Bedrock sessions</a>.</p>
    # @param [Hash, Types::EndSessionRequest] params
    # @option params [String] :session_identifier
    #   <p>The unique identifier for the session to end. You can specify either the session's <code>sessionId</code> or its Amazon Resource Name (ARN).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     session_identifier: "SessionIdentifier", # required
    #   }
    #   options = {}
    #   response = client.end_session(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     session_id: "Uuid", # required
    #     session_arn: "SessionArn", # required
    #     session_status: "ACTIVE" # One of: ["ACTIVE", "EXPIRED", "ENDED"], # required
    #   }
    # @return [Types::EndSessionResponse]
    def end_session(params = {}, options = {})
      request = build_request(:end_session, params)
      request.send_request(options)
    end

    # <p>Generates an SQL query from a natural language query. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-generate-query.html">Generate a query for structured data</a> in the Amazon Bedrock User Guide.</p>
    # @param [Hash, Types::GenerateQueryRequest] params
    # @option params [Types::QueryGenerationInput] :query_generation_input
    #   <p>Specifies information about a natural language query to transform into SQL.</p>
    # @option params [Types::TransformationConfiguration] :transformation_configuration
    #   <p>Specifies configurations for transforming the natural language query into SQL.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     query_generation_input: { # required
    #       type: "TEXT" # One of: ["TEXT"], # required
    #       text: "String", # required
    #     },
    #     transformation_configuration: { # required
    #       mode: "TEXT_TO_SQL" # One of: ["TEXT_TO_SQL"], # required
    #       text_to_sql_configuration: {
    #         type: "KNOWLEDGE_BASE" # One of: ["KNOWLEDGE_BASE"], # required
    #         knowledge_base_configuration: {
    #           knowledge_base_arn: "KnowledgeBaseArn", # required
    #         }
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.generate_query(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     queries: [
    #       {
    #         type: "REDSHIFT_SQL" # One of: ["REDSHIFT_SQL"],
    #         sql: "String"
    #       }
    #     ]
    #   }
    # @return [Types::GenerateQueryResponse]
    def generate_query(params = {}, options = {})
      request = build_request(:generate_query, params)
      request.send_request(options)
    end

    # <p>Gets the sessions stored in the memory of the agent.</p>
    # @param [Hash, Types::GetAgentMemoryRequest] params
    # @option params [String] :next_token
    #   <p>If the total number of results is greater than the maxItems value provided in the request, enter the token returned in the <code>nextToken</code> field in the response in this field to return the next batch of results.</p>
    # @option params [Integer] :max_items
    #   <p>The maximum number of items to return in the response. If the total number of results is greater than this value, use the token returned in the response in the <code>nextToken</code> field when making another request to return the next batch of results.</p>
    # @option params [String] :agent_id
    #   <p>The unique identifier of the agent to which the alias belongs.</p>
    # @option params [String] :agent_alias_id
    #   <p>The unique identifier of an alias of an agent.</p>
    # @option params [String] :memory_type
    #   <p>The type of memory.</p>
    # @option params [String] :memory_id
    #   <p>The unique identifier of the memory. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_items: 1,
    #     agent_id: "AgentId", # required
    #     agent_alias_id: "AgentAliasId", # required
    #     memory_type: "SESSION_SUMMARY" # One of: ["SESSION_SUMMARY"], # required
    #     memory_id: "MemoryId", # required
    #   }
    #   options = {}
    #   response = client.get_agent_memory(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     memory_contents: [{
    #       # One of:
    #       session_summary: {
    #         memory_id: "MemoryId",
    #         session_id: "SessionId",
    #         session_start_time: Time.now,
    #         session_expiry_time: Time.now,
    #         summary_text: "SummaryText"
    #       }
    #     }]
    #   }
    # @return [Types::GetAgentMemoryResponse]
    def get_agent_memory(params = {}, options = {})
      request = build_request(:get_agent_memory, params)
      request.send_request(options)
    end

    # <p>Retrieves the flow definition snapshot used for a flow execution. The snapshot represents the flow metadata and definition as it existed at the time the execution was started. Note that even if the flow is edited after an execution starts, the snapshot connected to the execution remains unchanged.</p> <note> <p>Flow executions is in preview release for Amazon Bedrock and is subject to change.</p> </note>
    # @param [Hash, Types::GetExecutionFlowSnapshotRequest] params
    # @option params [String] :flow_identifier
    #   <p>The unique identifier of the flow.</p>
    # @option params [String] :flow_alias_identifier
    #   <p>The unique identifier of the flow alias used for the flow execution.</p>
    # @option params [String] :execution_identifier
    #   <p>The unique identifier of the flow execution.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     flow_identifier: "FlowIdentifier", # required
    #     flow_alias_identifier: "FlowAliasIdentifier", # required
    #     execution_identifier: "FlowExecutionIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_execution_flow_snapshot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     flow_identifier: "FlowIdentifier", # required
    #     flow_alias_identifier: "FlowAliasIdentifier", # required
    #     flow_version: "Version", # required
    #     execution_role_arn: "FlowExecutionRoleArn", # required
    #     definition: "String", # required
    #     customer_encryption_key_arn: "KmsKeyArn"
    #   }
    # @return [Types::GetExecutionFlowSnapshotResponse]
    def get_execution_flow_snapshot(params = {}, options = {})
      request = build_request(:get_execution_flow_snapshot, params)
      request.send_request(options)
    end

    # <p>Retrieves details about a specific flow execution, including its status, start and end times, and any errors that occurred during execution.</p>
    # @param [Hash, Types::GetFlowExecutionRequest] params
    # @option params [String] :flow_identifier
    #   <p>The unique identifier of the flow.</p>
    # @option params [String] :flow_alias_identifier
    #   <p>The unique identifier of the flow alias used for the execution.</p>
    # @option params [String] :execution_identifier
    #   <p>The unique identifier of the flow execution to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     flow_identifier: "FlowIdentifier", # required
    #     flow_alias_identifier: "FlowAliasIdentifier", # required
    #     execution_identifier: "FlowExecutionIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_flow_execution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     execution_arn: "FlowExecutionIdentifier", # required
    #     status: "Running" # One of: ["Running", "Succeeded", "Failed", "TimedOut", "Aborted"], # required
    #     started_at: Time.now, # required
    #     ended_at: Time.now,
    #     errors: [
    #       {
    #         node_name: "NodeName",
    #         error: "ExecutionTimedOut" # One of: ["ExecutionTimedOut"],
    #         message: "String"
    #       }
    #     ],
    #     flow_alias_identifier: "FlowAliasIdentifier", # required
    #     flow_identifier: "FlowIdentifier", # required
    #     flow_version: "Version", # required
    #   }
    # @return [Types::GetFlowExecutionResponse]
    def get_flow_execution(params = {}, options = {})
      request = build_request(:get_flow_execution, params)
      request.send_request(options)
    end

    # <p>Retrieves the details of a specific invocation step within an invocation in a session. For more information about sessions, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/sessions.html">Store and retrieve conversation history and context with Amazon Bedrock sessions</a>.</p>
    # @param [Hash, Types::GetInvocationStepRequest] params
    # @option params [String] :invocation_identifier
    #   <p>The unique identifier for the invocation in UUID format.</p>
    # @option params [String] :invocation_step_id
    #   <p>The unique identifier (in UUID format) for the specific invocation step to retrieve.</p>
    # @option params [String] :session_identifier
    #   <p>The unique identifier for the invocation step's associated session. You can specify either the session's <code>sessionId</code> or its Amazon Resource Name (ARN).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     invocation_identifier: "InvocationIdentifier", # required
    #     invocation_step_id: "Uuid", # required
    #     session_identifier: "SessionIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_invocation_step(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     invocation_step: { # required
    #       session_id: "Uuid", # required
    #       invocation_id: "Uuid", # required
    #       invocation_step_id: "Uuid", # required
    #       invocation_step_time: Time.now, # required
    #       payload: { # required
    #         # One of:
    #         content_blocks: [{
    #           # One of:
    #           text: "String",
    #           image: {
    #             format: "png" # One of: ["png", "jpeg", "gif", "webp"], # required
    #             source: { # required
    #               # One of:
    #               bytes: "data",
    #               s3_location: {
    #                 uri: "S3Uri", # required
    #               }
    #             }
    #           }
    #         }]
    #       }
    #     }
    #   }
    # @return [Types::GetInvocationStepResponse]
    def get_invocation_step(params = {}, options = {})
      request = build_request(:get_invocation_step, params)
      request.send_request(options)
    end

    # <p>Retrieves details about a specific session. For more information about sessions, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/sessions.html">Store and retrieve conversation history and context with Amazon Bedrock sessions</a>.</p>
    # @param [Hash, Types::GetSessionRequest] params
    # @option params [String] :session_identifier
    #   <p>A unique identifier for the session to retrieve. You can specify either the session's <code>sessionId</code> or its Amazon Resource Name (ARN).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     session_identifier: "SessionIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_session(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     session_id: "Uuid", # required
    #     session_arn: "SessionArn", # required
    #     session_status: "ACTIVE" # One of: ["ACTIVE", "EXPIRED", "ENDED"], # required
    #     created_at: Time.now, # required
    #     last_updated_at: Time.now, # required
    #     session_metadata: {
    #       "SessionMetadataKey" => "SessionMetadataValue"
    #     },
    #     encryption_key_arn: "KmsKeyArn"
    #   }
    # @return [Types::GetSessionResponse]
    def get_session(params = {}, options = {})
      request = build_request(:get_session, params)
      request.send_request(options)
    end

    # <note> </note> <p>Sends a prompt for the agent to process and respond to. Note the following fields for the request:</p> <ul> <li> <p>To continue the same conversation with an agent, use the same <code>sessionId</code> value in the request.</p> </li> <li> <p>To activate trace enablement, turn <code>enableTrace</code> to <code>true</code>. Trace enablement helps you follow the agent's reasoning process that led it to the information it processed, the actions it took, and the final result it yielded. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/agents-test.html#trace-events">Trace enablement</a>.</p> </li> <li> <p>End a conversation by setting <code>endSession</code> to <code>true</code>.</p> </li> <li> <p>In the <code>sessionState</code> object, you can include attributes for the session or prompt or, if you configured an action group to return control, results from invocation of the action group.</p> </li> </ul> <p>The response contains both <b>chunk</b> and <b>trace</b> attributes.</p> <p>The final response is returned in the <code>bytes</code> field of the <code>chunk</code> object. The <code>InvokeAgent</code> returns one chunk for the entire interaction.</p> <ul> <li> <p>The <code>attribution</code> object contains citations for parts of the response.</p> </li> <li> <p>If you set <code>enableTrace</code> to <code>true</code> in the request, you can trace the agent's steps and reasoning process that led it to the response.</p> </li> <li> <p>If the action predicted was configured to return control, the response returns parameters for the action, elicited from the user, in the <code>returnControl</code> field.</p> </li> <li> <p>Errors are also surfaced in the response.</p> </li> </ul>
    # @param [Hash, Types::InvokeAgentRequest] params
    # @option params [Types::SessionState] :session_state
    #   <p>Contains parameters that specify various attributes of the session. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/agents-session-state.html">Control session context</a>.</p> <note> <p>If you include <code>returnControlInvocationResults</code> in the <code>sessionState</code> field, the <code>inputText</code> field will be ignored.</p> </note>
    # @option params [String] :agent_id
    #   <p>The unique identifier of the agent to use.</p>
    # @option params [String] :agent_alias_id
    #   <p>The alias of the agent to use.</p>
    # @option params [String] :session_id
    #   <p>The unique identifier of the session. Use the same value across requests to continue the same conversation.</p>
    # @option params [Boolean] :end_session
    #   <p>Specifies whether to end the session with the agent or not.</p>
    # @option params [Boolean] :enable_trace
    #   <p>Specifies whether to turn on the trace or not to track the agent's reasoning process. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/agents-test.html#trace-events">Trace enablement</a>.</p>
    # @option params [String] :input_text
    #   <p>The prompt text to send the agent.</p> <note> <p>If you include <code>returnControlInvocationResults</code> in the <code>sessionState</code> field, the <code>inputText</code> field will be ignored.</p> </note>
    # @option params [String] :memory_id
    #   <p>The unique identifier of the agent memory.</p>
    # @option params [Types::BedrockModelConfigurations] :bedrock_model_configurations
    #   <p>Model performance settings for the request.</p>
    # @option params [Types::StreamingConfigurations] :streaming_configurations
    #   <p> Specifies the configurations for streaming. </p> <note> <p>To use agent streaming, you need permissions to perform the <code>bedrock:InvokeModelWithResponseStream</code> action.</p> </note>
    # @option params [Types::PromptCreationConfigurations] :prompt_creation_configurations
    #   <p>Specifies parameters that control how the service populates the agent prompt for an <code>InvokeAgent</code> request. You can control which aspects of previous invocations in the same agent session the service uses to populate the agent prompt. This gives you more granular control over the contextual history that is used to process the current request.</p>
    # @option params [String] :source_arn
    #   <p>The ARN of the resource making the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     session_state: {
    #       session_attributes: {
    #         "String" => "String"
    #       },
    #       prompt_session_attributes: {
    #         "String" => "String"
    #       },
    #       return_control_invocation_results: [{
    #         # One of:
    #         api_result: {
    #           action_group: "String", # required
    #           http_method: "String",
    #           api_path: "ApiPath",
    #           confirmation_state: "CONFIRM" # One of: ["CONFIRM", "DENY"],
    #           response_state: "FAILURE" # One of: ["FAILURE", "REPROMPT"],
    #           http_status_code: 1,
    #           response_body: {
    #             "String" => {
    #               body: "String",
    #               images: [
    #                 {
    #                   format: "png" # One of: ["png", "jpeg", "gif", "webp"], # required
    #                   source: { # required
    #                     # One of:
    #                     bytes: "data"
    #                   }
    #                 }
    #               ]
    #             }
    #           },
    #           agent_id: "String"
    #         },
    #         function_result: {
    #           action_group: "String", # required
    #           confirmation_state: "CONFIRM" # One of: ["CONFIRM", "DENY"],
    #           function: "String",
    #           response_body: {
    #             "String" => {
    #               body: "String",
    #               images: [
    #                 {
    #                   format: "png" # One of: ["png", "jpeg", "gif", "webp"], # required
    #                   source: { # required
    #                     # One of:
    #                     bytes: "data"
    #                   }
    #                 }
    #               ]
    #             }
    #           },
    #           response_state: "FAILURE" # One of: ["FAILURE", "REPROMPT"],
    #           agent_id: "String"
    #         }
    #       }],
    #       invocation_id: "String",
    #       files: [
    #         {
    #           name: "String", # required
    #           source: { # required
    #             source_type: "S3" # One of: ["S3", "BYTE_CONTENT"], # required
    #             s3_location: {
    #               uri: "S3Uri", # required
    #             },
    #             byte_content: {
    #               media_type: "MimeType", # required
    #               data: "data", # required
    #             }
    #           },
    #           use_case: "CODE_INTERPRETER" # One of: ["CODE_INTERPRETER", "CHAT"], # required
    #         }
    #       ],
    #       knowledge_base_configurations: [
    #         {
    #           knowledge_base_id: "KnowledgeBaseId", # required
    #           retrieval_configuration: { # required
    #             vector_search_configuration: { # required
    #               number_of_results: 1,
    #               override_search_type: "HYBRID" # One of: ["HYBRID", "SEMANTIC"],
    #               filter: {
    #                 # One of:
    #                 equals: {
    #                   key: "FilterKey", # required
    #                   value: ""null"", # required
    #                 },
    #                 not_equals: {
    #                   key: "FilterKey", # required
    #                   value: ""null"", # required
    #                 },
    #                 greater_than: {
    #                   key: "FilterKey", # required
    #                   value: ""null"", # required
    #                 },
    #                 greater_than_or_equals: {
    #                   key: "FilterKey", # required
    #                   value: ""null"", # required
    #                 },
    #                 less_than: {
    #                   key: "FilterKey", # required
    #                   value: ""null"", # required
    #                 },
    #                 less_than_or_equals: {
    #                   key: "FilterKey", # required
    #                   value: ""null"", # required
    #                 },
    #                 in: {
    #                   key: "FilterKey", # required
    #                   value: ""null"", # required
    #                 },
    #                 not_in: {
    #                   key: "FilterKey", # required
    #                   value: ""null"", # required
    #                 },
    #                 starts_with: {
    #                   key: "FilterKey", # required
    #                   value: ""null"", # required
    #                 },
    #                 list_contains: {
    #                   key: "FilterKey", # required
    #                   value: ""null"", # required
    #                 },
    #                 string_contains: {
    #                   key: "FilterKey", # required
    #                   value: ""null"", # required
    #                 },
    #                 and_all: [{
    #                   # recursive RetrievalFilter
    #                 }],
    #                 or_all: [{
    #                   # recursive RetrievalFilter
    #                 }]
    #               },
    #               reranking_configuration: {
    #                 type: "BEDROCK_RERANKING_MODEL" # One of: ["BEDROCK_RERANKING_MODEL"], # required
    #                 bedrock_reranking_configuration: {
    #                   model_configuration: { # required
    #                     model_arn: "BedrockRerankingModelArn", # required
    #                     additional_model_request_fields: {
    #                       "AdditionalModelRequestFieldsKey" => ""null""
    #                     }
    #                   },
    #                   number_of_reranked_results: 1,
    #                   metadata_configuration: {
    #                     selection_mode: "SELECTIVE" # One of: ["SELECTIVE", "ALL"], # required
    #                     selective_mode_configuration: {
    #                       # One of:
    #                       fields_to_include: [
    #                         {
    #                           field_name: "String", # required
    #                         }
    #                       ],
    #                       fields_to_exclude: [
    #                         {
    #                           field_name: "String", # required
    #                         }
    #                       ]
    #                     }
    #                   }
    #                 }
    #               },
    #               implicit_filter_configuration: {
    #                 metadata_attributes: [ # required
    #                   {
    #                     key: "String", # required
    #                     type: "STRING" # One of: ["STRING", "NUMBER", "BOOLEAN", "STRING_LIST"], # required
    #                     description: "String", # required
    #                   }
    #                 ],
    #                 model_arn: "BedrockModelArn", # required
    #               }
    #             }
    #           }
    #         }
    #       ],
    #       conversation_history: {
    #         messages: [
    #           {
    #             role: "user" # One of: ["user", "assistant"], # required
    #             content: [{ # required
    #               # One of:
    #               text: "String"
    #             }]
    #           }
    #         ]
    #       }
    #     },
    #     agent_id: "AgentId", # required
    #     agent_alias_id: "AgentAliasId", # required
    #     session_id: "SessionId", # required
    #     end_session: false,
    #     enable_trace: false,
    #     input_text: "InputText",
    #     memory_id: "MemoryId",
    #     bedrock_model_configurations: {
    #       performance_config: {
    #         latency: "standard" # One of: ["standard", "optimized"]
    #       }
    #     },
    #     streaming_configurations: {
    #       stream_final_response: false,
    #       apply_guardrail_interval: 1
    #     },
    #     prompt_creation_configurations: {
    #       previous_conversation_turns_to_include: 1,
    #       exclude_previous_thinking_steps: false
    #     },
    #     source_arn: "AWSResourceARN"
    #   }
    #   options = {}
    #   response = client.invoke_agent(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     completion: { # required
    #       # One of:
    #       chunk: {
    #         bytes: "data",
    #         attribution: {
    #           citations: [
    #             {
    #               generated_response_part: {
    #                 text_response_part: {
    #                   text: "String",
    #                   span: {
    #                     start: 1,
    #                     end: 1
    #                   }
    #                 }
    #               },
    #               retrieved_references: [
    #                 {
    #                   content: {
    #                     type: "TEXT" # One of: ["TEXT", "IMAGE", "ROW"],
    #                     text: "String",
    #                     byte_content: "String",
    #                     row: [
    #                       {
    #                         column_name: "String",
    #                         column_value: "String",
    #                         type: "BLOB" # One of: ["BLOB", "BOOLEAN", "DOUBLE", "NULL", "LONG", "STRING"]
    #                       }
    #                     ]
    #                   },
    #                   location: {
    #                     type: "S3" # One of: ["S3", "WEB", "CONFLUENCE", "SALESFORCE", "SHAREPOINT", "CUSTOM", "KENDRA", "SQL"], # required
    #                     s3_location: {
    #                       uri: "String"
    #                     },
    #                     web_location: {
    #                       url: "String"
    #                     },
    #                     confluence_location: {
    #                       url: "String"
    #                     },
    #                     salesforce_location: {
    #                       url: "String"
    #                     },
    #                     share_point_location: {
    #                       url: "String"
    #                     },
    #                     custom_document_location: {
    #                       id: "String"
    #                     },
    #                     kendra_document_location: {
    #                       uri: "String"
    #                     },
    #                     sql_location: {
    #                       query: "String"
    #                     }
    #                   },
    #                   metadata: {
    #                     "RetrievalResultMetadataKey" => ""null""
    #                   }
    #                 }
    #               ]
    #             }
    #           ]
    #         }
    #       },
    #       trace: {
    #         session_id: "SessionId",
    #         trace: {
    #           # One of:
    #           guardrail_trace: {
    #             action: "INTERVENED" # One of: ["INTERVENED", "NONE"],
    #             trace_id: "TraceId",
    #             input_assessments: [
    #               {
    #                 topic_policy: {
    #                   topics: [
    #                     {
    #                       name: "String",
    #                       type: "DENY" # One of: ["DENY"],
    #                       action: "BLOCKED" # One of: ["BLOCKED"]
    #                     }
    #                   ]
    #                 },
    #                 content_policy: {
    #                   filters: [
    #                     {
    #                       type: "INSULTS" # One of: ["INSULTS", "HATE", "SEXUAL", "VIOLENCE", "MISCONDUCT", "PROMPT_ATTACK"],
    #                       confidence: "NONE" # One of: ["NONE", "LOW", "MEDIUM", "HIGH"],
    #                       action: "BLOCKED" # One of: ["BLOCKED"]
    #                     }
    #                   ]
    #                 },
    #                 word_policy: {
    #                   custom_words: [
    #                     {
    #                       match: "String",
    #                       action: "BLOCKED" # One of: ["BLOCKED"]
    #                     }
    #                   ],
    #                   managed_word_lists: [
    #                     {
    #                       match: "String",
    #                       type: "PROFANITY" # One of: ["PROFANITY"],
    #                       action: "BLOCKED" # One of: ["BLOCKED"]
    #                     }
    #                   ]
    #                 },
    #                 sensitive_information_policy: {
    #                   pii_entities: [
    #                     {
    #                       type: "ADDRESS" # One of: ["ADDRESS", "AGE", "AWS_ACCESS_KEY", "AWS_SECRET_KEY", "CA_HEALTH_NUMBER", "CA_SOCIAL_INSURANCE_NUMBER", "CREDIT_DEBIT_CARD_CVV", "CREDIT_DEBIT_CARD_EXPIRY", "CREDIT_DEBIT_CARD_NUMBER", "DRIVER_ID", "EMAIL", "INTERNATIONAL_BANK_ACCOUNT_NUMBER", "IP_ADDRESS", "LICENSE_PLATE", "MAC_ADDRESS", "NAME", "PASSWORD", "PHONE", "PIN", "SWIFT_CODE", "UK_NATIONAL_HEALTH_SERVICE_NUMBER", "UK_NATIONAL_INSURANCE_NUMBER", "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER", "URL", "USERNAME", "US_BANK_ACCOUNT_NUMBER", "US_BANK_ROUTING_NUMBER", "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER", "US_PASSPORT_NUMBER", "US_SOCIAL_SECURITY_NUMBER", "VEHICLE_IDENTIFICATION_NUMBER"],
    #                       match: "String",
    #                       action: "BLOCKED" # One of: ["BLOCKED", "ANONYMIZED"]
    #                     }
    #                   ],
    #                   regexes: [
    #                     {
    #                       name: "String",
    #                       regex: "String",
    #                       match: "String",
    #                       action: "BLOCKED" # One of: ["BLOCKED", "ANONYMIZED"]
    #                     }
    #                   ]
    #                 }
    #               }
    #             ],
    #             output_assessments: [
    #               {
    #                 topic_policy: {
    #                   topics: [
    #                     {
    #                       name: "String",
    #                       type: "DENY" # One of: ["DENY"],
    #                       action: "BLOCKED" # One of: ["BLOCKED"]
    #                     }
    #                   ]
    #                 },
    #                 content_policy: {
    #                   filters: [
    #                     {
    #                       type: "INSULTS" # One of: ["INSULTS", "HATE", "SEXUAL", "VIOLENCE", "MISCONDUCT", "PROMPT_ATTACK"],
    #                       confidence: "NONE" # One of: ["NONE", "LOW", "MEDIUM", "HIGH"],
    #                       action: "BLOCKED" # One of: ["BLOCKED"]
    #                     }
    #                   ]
    #                 },
    #                 word_policy: {
    #                   custom_words: [
    #                     {
    #                       match: "String",
    #                       action: "BLOCKED" # One of: ["BLOCKED"]
    #                     }
    #                   ],
    #                   managed_word_lists: [
    #                     {
    #                       match: "String",
    #                       type: "PROFANITY" # One of: ["PROFANITY"],
    #                       action: "BLOCKED" # One of: ["BLOCKED"]
    #                     }
    #                   ]
    #                 },
    #                 sensitive_information_policy: {
    #                   pii_entities: [
    #                     {
    #                       type: "ADDRESS" # One of: ["ADDRESS", "AGE", "AWS_ACCESS_KEY", "AWS_SECRET_KEY", "CA_HEALTH_NUMBER", "CA_SOCIAL_INSURANCE_NUMBER", "CREDIT_DEBIT_CARD_CVV", "CREDIT_DEBIT_CARD_EXPIRY", "CREDIT_DEBIT_CARD_NUMBER", "DRIVER_ID", "EMAIL", "INTERNATIONAL_BANK_ACCOUNT_NUMBER", "IP_ADDRESS", "LICENSE_PLATE", "MAC_ADDRESS", "NAME", "PASSWORD", "PHONE", "PIN", "SWIFT_CODE", "UK_NATIONAL_HEALTH_SERVICE_NUMBER", "UK_NATIONAL_INSURANCE_NUMBER", "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER", "URL", "USERNAME", "US_BANK_ACCOUNT_NUMBER", "US_BANK_ROUTING_NUMBER", "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER", "US_PASSPORT_NUMBER", "US_SOCIAL_SECURITY_NUMBER", "VEHICLE_IDENTIFICATION_NUMBER"],
    #                       match: "String",
    #                       action: "BLOCKED" # One of: ["BLOCKED", "ANONYMIZED"]
    #                     }
    #                   ],
    #                   regexes: [
    #                     {
    #                       name: "String",
    #                       regex: "String",
    #                       match: "String",
    #                       action: "BLOCKED" # One of: ["BLOCKED", "ANONYMIZED"]
    #                     }
    #                   ]
    #                 }
    #               }
    #             ],
    #             metadata: {
    #               start_time: Time.now,
    #               end_time: Time.now,
    #               total_time_ms: 1,
    #               operation_total_time_ms: 1,
    #               client_request_id: "String",
    #               usage: {
    #                 input_tokens: 1,
    #                 output_tokens: 1
    #               }
    #             }
    #           },
    #           pre_processing_trace: {
    #             # One of:
    #             model_invocation_input: {
    #               trace_id: "TraceId",
    #               text: "PromptText",
    #               type: "PRE_PROCESSING" # One of: ["PRE_PROCESSING", "ORCHESTRATION", "KNOWLEDGE_BASE_RESPONSE_GENERATION", "POST_PROCESSING", "ROUTING_CLASSIFIER"],
    #               override_lambda: "LambdaArn",
    #               prompt_creation_mode: "DEFAULT" # One of: ["DEFAULT", "OVERRIDDEN"],
    #               inference_configuration: {
    #                 temperature: 1.0,
    #                 top_p: 1.0,
    #                 top_k: 1,
    #                 maximum_length: 1,
    #                 stop_sequences: ["String"]
    #               },
    #               parser_mode: "DEFAULT" # One of: ["DEFAULT", "OVERRIDDEN"],
    #               foundation_model: "ModelIdentifier"
    #             },
    #             model_invocation_output: {
    #               trace_id: "TraceId",
    #               parsed_response: {
    #                 rationale: "RationaleString",
    #                 is_valid: false
    #               },
    #               raw_response: {
    #                 content: "String"
    #               },
    #               metadata: {
    #                 start_time: Time.now,
    #                 end_time: Time.now,
    #                 total_time_ms: 1,
    #                 operation_total_time_ms: 1,
    #                 client_request_id: "String",
    #                 usage: {
    #                   input_tokens: 1,
    #                   output_tokens: 1
    #                 }
    #               },
    #               reasoning_content: {
    #                 # One of:
    #                 reasoning_text: {
    #                   text: "String", # required
    #                   signature: "String"
    #                 },
    #                 redacted_content: "data"
    #               }
    #             }
    #           },
    #           orchestration_trace: {
    #             # One of:
    #             rationale: {
    #               trace_id: "TraceId",
    #               text: "RationaleString"
    #             },
    #             invocation_input: {
    #               trace_id: "TraceId",
    #               invocation_type: "ACTION_GROUP" # One of: ["ACTION_GROUP", "KNOWLEDGE_BASE", "FINISH", "ACTION_GROUP_CODE_INTERPRETER", "AGENT_COLLABORATOR"],
    #               action_group_invocation_input: {
    #                 action_group_name: "ActionGroupName",
    #                 verb: "Verb",
    #                 api_path: "ApiPath",
    #                 parameters: [
    #                   {
    #                     name: "String",
    #                     type: "String",
    #                     value: "String"
    #                   }
    #                 ],
    #                 request_body: {
    #                   content: {
    #                     "String" => [
    #                       {
    #                         name: "String",
    #                         type: "String",
    #                         value: "String"
    #                       }
    #                     ]
    #                   }
    #                 },
    #                 function: "Function",
    #                 execution_type: "LAMBDA" # One of: ["LAMBDA", "RETURN_CONTROL"],
    #                 invocation_id: "String"
    #               },
    #               knowledge_base_lookup_input: {
    #                 text: "KnowledgeBaseLookupInputString",
    #                 knowledge_base_id: "TraceKnowledgeBaseId"
    #               },
    #               code_interpreter_invocation_input: {
    #                 code: "String",
    #                 files: ["String"]
    #               },
    #               agent_collaborator_invocation_input: {
    #                 agent_collaborator_name: "String",
    #                 agent_collaborator_alias_arn: "AgentAliasArn",
    #                 input: {
    #                   type: "TEXT" # One of: ["TEXT", "RETURN_CONTROL"],
    #                   text: "AgentCollaboratorPayloadString",
    #                   return_control_results: {
    #                     invocation_id: "String",
    #                     return_control_invocation_results: [{
    #                       # One of:
    #                       api_result: {
    #                         action_group: "String", # required
    #                         http_method: "String",
    #                         api_path: "ApiPath",
    #                         confirmation_state: "CONFIRM" # One of: ["CONFIRM", "DENY"],
    #                         response_state: "FAILURE" # One of: ["FAILURE", "REPROMPT"],
    #                         http_status_code: 1,
    #                         response_body: {
    #                           "String" => {
    #                             body: "String",
    #                             images: [
    #                               {
    #                                 format: "png" # One of: ["png", "jpeg", "gif", "webp"], # required
    #                                 source: { # required
    #                                   # One of:
    #                                   bytes: "data"
    #                                 }
    #                               }
    #                             ]
    #                           }
    #                         },
    #                         agent_id: "String"
    #                       },
    #                       function_result: {
    #                         action_group: "String", # required
    #                         confirmation_state: "CONFIRM" # One of: ["CONFIRM", "DENY"],
    #                         function: "String",
    #                         response_body: {
    #                           "String" => {
    #                             body: "String",
    #                             images: [
    #                               {
    #                                 format: "png" # One of: ["png", "jpeg", "gif", "webp"], # required
    #                                 source: { # required
    #                                   # One of:
    #                                   bytes: "data"
    #                                 }
    #                               }
    #                             ]
    #                           }
    #                         },
    #                         response_state: "FAILURE" # One of: ["FAILURE", "REPROMPT"],
    #                         agent_id: "String"
    #                       }
    #                     }]
    #                   }
    #                 }
    #               }
    #             },
    #             observation: {
    #               trace_id: "TraceId",
    #               type: "ACTION_GROUP" # One of: ["ACTION_GROUP", "AGENT_COLLABORATOR", "KNOWLEDGE_BASE", "FINISH", "ASK_USER", "REPROMPT"],
    #               action_group_invocation_output: {
    #                 text: "ActionGroupOutputString",
    #                 metadata: {
    #                   start_time: Time.now,
    #                   end_time: Time.now,
    #                   total_time_ms: 1,
    #                   operation_total_time_ms: 1,
    #                   client_request_id: "String",
    #                   usage: {
    #                     input_tokens: 1,
    #                     output_tokens: 1
    #                   }
    #                 }
    #               },
    #               agent_collaborator_invocation_output: {
    #                 agent_collaborator_name: "String",
    #                 agent_collaborator_alias_arn: "AgentAliasArn",
    #                 output: {
    #                   type: "TEXT" # One of: ["TEXT", "RETURN_CONTROL"],
    #                   text: "AgentCollaboratorPayloadString",
    #                   return_control_payload: {
    #                     invocation_inputs: [{
    #                       # One of:
    #                       api_invocation_input: {
    #                         action_group: "String", # required
    #                         http_method: "String",
    #                         api_path: "ApiPath",
    #                         parameters: [
    #                           {
    #                             name: "String",
    #                             type: "String",
    #                             value: "String"
    #                           }
    #                         ],
    #                         request_body: {
    #                           content: {
    #                             "String" => {
    #                               properties: [
    #                                 {
    #                                   name: "String",
    #                                   type: "String",
    #                                   value: "String"
    #                                 }
    #                               ]
    #                             }
    #                           }
    #                         },
    #                         action_invocation_type: "RESULT" # One of: ["RESULT", "USER_CONFIRMATION", "USER_CONFIRMATION_AND_RESULT"],
    #                         agent_id: "String",
    #                         collaborator_name: "Name"
    #                       },
    #                       function_invocation_input: {
    #                         action_group: "String", # required
    #                         parameters: [
    #                           {
    #                             name: "String",
    #                             type: "String",
    #                             value: "String"
    #                           }
    #                         ],
    #                         function: "String",
    #                         action_invocation_type: "RESULT" # One of: ["RESULT", "USER_CONFIRMATION", "USER_CONFIRMATION_AND_RESULT"],
    #                         agent_id: "String",
    #                         collaborator_name: "Name"
    #                       }
    #                     }],
    #                     invocation_id: "String"
    #                   }
    #                 },
    #                 metadata: {
    #                   start_time: Time.now,
    #                   end_time: Time.now,
    #                   total_time_ms: 1,
    #                   operation_total_time_ms: 1,
    #                   client_request_id: "String",
    #                   usage: {
    #                     input_tokens: 1,
    #                     output_tokens: 1
    #                   }
    #                 }
    #               },
    #               knowledge_base_lookup_output: {
    #                 retrieved_references: [
    #                   {
    #                     content: {
    #                       type: "TEXT" # One of: ["TEXT", "IMAGE", "ROW"],
    #                       text: "String",
    #                       byte_content: "String",
    #                       row: [
    #                         {
    #                           column_name: "String",
    #                           column_value: "String",
    #                           type: "BLOB" # One of: ["BLOB", "BOOLEAN", "DOUBLE", "NULL", "LONG", "STRING"]
    #                         }
    #                       ]
    #                     },
    #                     location: {
    #                       type: "S3" # One of: ["S3", "WEB", "CONFLUENCE", "SALESFORCE", "SHAREPOINT", "CUSTOM", "KENDRA", "SQL"], # required
    #                       s3_location: {
    #                         uri: "String"
    #                       },
    #                       web_location: {
    #                         url: "String"
    #                       },
    #                       confluence_location: {
    #                         url: "String"
    #                       },
    #                       salesforce_location: {
    #                         url: "String"
    #                       },
    #                       share_point_location: {
    #                         url: "String"
    #                       },
    #                       custom_document_location: {
    #                         id: "String"
    #                       },
    #                       kendra_document_location: {
    #                         uri: "String"
    #                       },
    #                       sql_location: {
    #                         query: "String"
    #                       }
    #                     },
    #                     metadata: {
    #                       "RetrievalResultMetadataKey" => ""null""
    #                     }
    #                   }
    #                 ],
    #                 metadata: {
    #                   start_time: Time.now,
    #                   end_time: Time.now,
    #                   total_time_ms: 1,
    #                   operation_total_time_ms: 1,
    #                   client_request_id: "String",
    #                   usage: {
    #                     input_tokens: 1,
    #                     output_tokens: 1
    #                   }
    #                 }
    #               },
    #               final_response: {
    #                 text: "FinalResponseString",
    #                 metadata: {
    #                   start_time: Time.now,
    #                   end_time: Time.now,
    #                   total_time_ms: 1,
    #                   operation_total_time_ms: 1,
    #                   client_request_id: "String",
    #                   usage: {
    #                     input_tokens: 1,
    #                     output_tokens: 1
    #                   }
    #                 }
    #               },
    #               reprompt_response: {
    #                 text: "String",
    #                 source: "ACTION_GROUP" # One of: ["ACTION_GROUP", "KNOWLEDGE_BASE", "PARSER"]
    #               },
    #               code_interpreter_invocation_output: {
    #                 execution_output: "String",
    #                 execution_error: "String",
    #                 files: ["String"],
    #                 execution_timeout: false,
    #                 metadata: {
    #                   start_time: Time.now,
    #                   end_time: Time.now,
    #                   total_time_ms: 1,
    #                   operation_total_time_ms: 1,
    #                   client_request_id: "String",
    #                   usage: {
    #                     input_tokens: 1,
    #                     output_tokens: 1
    #                   }
    #                 }
    #               }
    #             },
    #             model_invocation_input: {
    #               trace_id: "TraceId",
    #               text: "PromptText",
    #               type: "PRE_PROCESSING" # One of: ["PRE_PROCESSING", "ORCHESTRATION", "KNOWLEDGE_BASE_RESPONSE_GENERATION", "POST_PROCESSING", "ROUTING_CLASSIFIER"],
    #               override_lambda: "LambdaArn",
    #               prompt_creation_mode: "DEFAULT" # One of: ["DEFAULT", "OVERRIDDEN"],
    #               inference_configuration: {
    #                 temperature: 1.0,
    #                 top_p: 1.0,
    #                 top_k: 1,
    #                 maximum_length: 1,
    #                 stop_sequences: ["String"]
    #               },
    #               parser_mode: "DEFAULT" # One of: ["DEFAULT", "OVERRIDDEN"],
    #               foundation_model: "ModelIdentifier"
    #             },
    #             model_invocation_output: {
    #               trace_id: "TraceId",
    #               raw_response: {
    #                 content: "String"
    #               },
    #               metadata: {
    #                 start_time: Time.now,
    #                 end_time: Time.now,
    #                 total_time_ms: 1,
    #                 operation_total_time_ms: 1,
    #                 client_request_id: "String",
    #                 usage: {
    #                   input_tokens: 1,
    #                   output_tokens: 1
    #                 }
    #               },
    #               reasoning_content: {
    #                 # One of:
    #                 reasoning_text: {
    #                   text: "String", # required
    #                   signature: "String"
    #                 },
    #                 redacted_content: "data"
    #               }
    #             }
    #           },
    #           post_processing_trace: {
    #             # One of:
    #             model_invocation_input: {
    #               trace_id: "TraceId",
    #               text: "PromptText",
    #               type: "PRE_PROCESSING" # One of: ["PRE_PROCESSING", "ORCHESTRATION", "KNOWLEDGE_BASE_RESPONSE_GENERATION", "POST_PROCESSING", "ROUTING_CLASSIFIER"],
    #               override_lambda: "LambdaArn",
    #               prompt_creation_mode: "DEFAULT" # One of: ["DEFAULT", "OVERRIDDEN"],
    #               inference_configuration: {
    #                 temperature: 1.0,
    #                 top_p: 1.0,
    #                 top_k: 1,
    #                 maximum_length: 1,
    #                 stop_sequences: ["String"]
    #               },
    #               parser_mode: "DEFAULT" # One of: ["DEFAULT", "OVERRIDDEN"],
    #               foundation_model: "ModelIdentifier"
    #             },
    #             model_invocation_output: {
    #               trace_id: "TraceId",
    #               parsed_response: {
    #                 text: "OutputString"
    #               },
    #               raw_response: {
    #                 content: "String"
    #               },
    #               metadata: {
    #                 start_time: Time.now,
    #                 end_time: Time.now,
    #                 total_time_ms: 1,
    #                 operation_total_time_ms: 1,
    #                 client_request_id: "String",
    #                 usage: {
    #                   input_tokens: 1,
    #                   output_tokens: 1
    #                 }
    #               },
    #               reasoning_content: {
    #                 # One of:
    #                 reasoning_text: {
    #                   text: "String", # required
    #                   signature: "String"
    #                 },
    #                 redacted_content: "data"
    #               }
    #             }
    #           },
    #           routing_classifier_trace: {
    #             # One of:
    #             invocation_input: {
    #               trace_id: "TraceId",
    #               invocation_type: "ACTION_GROUP" # One of: ["ACTION_GROUP", "KNOWLEDGE_BASE", "FINISH", "ACTION_GROUP_CODE_INTERPRETER", "AGENT_COLLABORATOR"],
    #               action_group_invocation_input: {
    #                 action_group_name: "ActionGroupName",
    #                 verb: "Verb",
    #                 api_path: "ApiPath",
    #                 parameters: [
    #                   {
    #                     name: "String",
    #                     type: "String",
    #                     value: "String"
    #                   }
    #                 ],
    #                 request_body: {
    #                   content: {
    #                     "String" => [
    #                       {
    #                         name: "String",
    #                         type: "String",
    #                         value: "String"
    #                       }
    #                     ]
    #                   }
    #                 },
    #                 function: "Function",
    #                 execution_type: "LAMBDA" # One of: ["LAMBDA", "RETURN_CONTROL"],
    #                 invocation_id: "String"
    #               },
    #               knowledge_base_lookup_input: {
    #                 text: "KnowledgeBaseLookupInputString",
    #                 knowledge_base_id: "TraceKnowledgeBaseId"
    #               },
    #               code_interpreter_invocation_input: {
    #                 code: "String",
    #                 files: ["String"]
    #               },
    #               agent_collaborator_invocation_input: {
    #                 agent_collaborator_name: "String",
    #                 agent_collaborator_alias_arn: "AgentAliasArn",
    #                 input: {
    #                   type: "TEXT" # One of: ["TEXT", "RETURN_CONTROL"],
    #                   text: "AgentCollaboratorPayloadString",
    #                   return_control_results: {
    #                     invocation_id: "String",
    #                     return_control_invocation_results: [{
    #                       # One of:
    #                       api_result: {
    #                         action_group: "String", # required
    #                         http_method: "String",
    #                         api_path: "ApiPath",
    #                         confirmation_state: "CONFIRM" # One of: ["CONFIRM", "DENY"],
    #                         response_state: "FAILURE" # One of: ["FAILURE", "REPROMPT"],
    #                         http_status_code: 1,
    #                         response_body: {
    #                           "String" => {
    #                             body: "String",
    #                             images: [
    #                               {
    #                                 format: "png" # One of: ["png", "jpeg", "gif", "webp"], # required
    #                                 source: { # required
    #                                   # One of:
    #                                   bytes: "data"
    #                                 }
    #                               }
    #                             ]
    #                           }
    #                         },
    #                         agent_id: "String"
    #                       },
    #                       function_result: {
    #                         action_group: "String", # required
    #                         confirmation_state: "CONFIRM" # One of: ["CONFIRM", "DENY"],
    #                         function: "String",
    #                         response_body: {
    #                           "String" => {
    #                             body: "String",
    #                             images: [
    #                               {
    #                                 format: "png" # One of: ["png", "jpeg", "gif", "webp"], # required
    #                                 source: { # required
    #                                   # One of:
    #                                   bytes: "data"
    #                                 }
    #                               }
    #                             ]
    #                           }
    #                         },
    #                         response_state: "FAILURE" # One of: ["FAILURE", "REPROMPT"],
    #                         agent_id: "String"
    #                       }
    #                     }]
    #                   }
    #                 }
    #               }
    #             },
    #             observation: {
    #               trace_id: "TraceId",
    #               type: "ACTION_GROUP" # One of: ["ACTION_GROUP", "AGENT_COLLABORATOR", "KNOWLEDGE_BASE", "FINISH", "ASK_USER", "REPROMPT"],
    #               action_group_invocation_output: {
    #                 text: "ActionGroupOutputString",
    #                 metadata: {
    #                   start_time: Time.now,
    #                   end_time: Time.now,
    #                   total_time_ms: 1,
    #                   operation_total_time_ms: 1,
    #                   client_request_id: "String",
    #                   usage: {
    #                     input_tokens: 1,
    #                     output_tokens: 1
    #                   }
    #                 }
    #               },
    #               agent_collaborator_invocation_output: {
    #                 agent_collaborator_name: "String",
    #                 agent_collaborator_alias_arn: "AgentAliasArn",
    #                 output: {
    #                   type: "TEXT" # One of: ["TEXT", "RETURN_CONTROL"],
    #                   text: "AgentCollaboratorPayloadString",
    #                   return_control_payload: {
    #                     invocation_inputs: [{
    #                       # One of:
    #                       api_invocation_input: {
    #                         action_group: "String", # required
    #                         http_method: "String",
    #                         api_path: "ApiPath",
    #                         parameters: [
    #                           {
    #                             name: "String",
    #                             type: "String",
    #                             value: "String"
    #                           }
    #                         ],
    #                         request_body: {
    #                           content: {
    #                             "String" => {
    #                               properties: [
    #                                 {
    #                                   name: "String",
    #                                   type: "String",
    #                                   value: "String"
    #                                 }
    #                               ]
    #                             }
    #                           }
    #                         },
    #                         action_invocation_type: "RESULT" # One of: ["RESULT", "USER_CONFIRMATION", "USER_CONFIRMATION_AND_RESULT"],
    #                         agent_id: "String",
    #                         collaborator_name: "Name"
    #                       },
    #                       function_invocation_input: {
    #                         action_group: "String", # required
    #                         parameters: [
    #                           {
    #                             name: "String",
    #                             type: "String",
    #                             value: "String"
    #                           }
    #                         ],
    #                         function: "String",
    #                         action_invocation_type: "RESULT" # One of: ["RESULT", "USER_CONFIRMATION", "USER_CONFIRMATION_AND_RESULT"],
    #                         agent_id: "String",
    #                         collaborator_name: "Name"
    #                       }
    #                     }],
    #                     invocation_id: "String"
    #                   }
    #                 },
    #                 metadata: {
    #                   start_time: Time.now,
    #                   end_time: Time.now,
    #                   total_time_ms: 1,
    #                   operation_total_time_ms: 1,
    #                   client_request_id: "String",
    #                   usage: {
    #                     input_tokens: 1,
    #                     output_tokens: 1
    #                   }
    #                 }
    #               },
    #               knowledge_base_lookup_output: {
    #                 retrieved_references: [
    #                   {
    #                     content: {
    #                       type: "TEXT" # One of: ["TEXT", "IMAGE", "ROW"],
    #                       text: "String",
    #                       byte_content: "String",
    #                       row: [
    #                         {
    #                           column_name: "String",
    #                           column_value: "String",
    #                           type: "BLOB" # One of: ["BLOB", "BOOLEAN", "DOUBLE", "NULL", "LONG", "STRING"]
    #                         }
    #                       ]
    #                     },
    #                     location: {
    #                       type: "S3" # One of: ["S3", "WEB", "CONFLUENCE", "SALESFORCE", "SHAREPOINT", "CUSTOM", "KENDRA", "SQL"], # required
    #                       s3_location: {
    #                         uri: "String"
    #                       },
    #                       web_location: {
    #                         url: "String"
    #                       },
    #                       confluence_location: {
    #                         url: "String"
    #                       },
    #                       salesforce_location: {
    #                         url: "String"
    #                       },
    #                       share_point_location: {
    #                         url: "String"
    #                       },
    #                       custom_document_location: {
    #                         id: "String"
    #                       },
    #                       kendra_document_location: {
    #                         uri: "String"
    #                       },
    #                       sql_location: {
    #                         query: "String"
    #                       }
    #                     },
    #                     metadata: {
    #                       "RetrievalResultMetadataKey" => ""null""
    #                     }
    #                   }
    #                 ],
    #                 metadata: {
    #                   start_time: Time.now,
    #                   end_time: Time.now,
    #                   total_time_ms: 1,
    #                   operation_total_time_ms: 1,
    #                   client_request_id: "String",
    #                   usage: {
    #                     input_tokens: 1,
    #                     output_tokens: 1
    #                   }
    #                 }
    #               },
    #               final_response: {
    #                 text: "FinalResponseString",
    #                 metadata: {
    #                   start_time: Time.now,
    #                   end_time: Time.now,
    #                   total_time_ms: 1,
    #                   operation_total_time_ms: 1,
    #                   client_request_id: "String",
    #                   usage: {
    #                     input_tokens: 1,
    #                     output_tokens: 1
    #                   }
    #                 }
    #               },
    #               reprompt_response: {
    #                 text: "String",
    #                 source: "ACTION_GROUP" # One of: ["ACTION_GROUP", "KNOWLEDGE_BASE", "PARSER"]
    #               },
    #               code_interpreter_invocation_output: {
    #                 execution_output: "String",
    #                 execution_error: "String",
    #                 files: ["String"],
    #                 execution_timeout: false,
    #                 metadata: {
    #                   start_time: Time.now,
    #                   end_time: Time.now,
    #                   total_time_ms: 1,
    #                   operation_total_time_ms: 1,
    #                   client_request_id: "String",
    #                   usage: {
    #                     input_tokens: 1,
    #                     output_tokens: 1
    #                   }
    #                 }
    #               }
    #             },
    #             model_invocation_input: {
    #               trace_id: "TraceId",
    #               text: "PromptText",
    #               type: "PRE_PROCESSING" # One of: ["PRE_PROCESSING", "ORCHESTRATION", "KNOWLEDGE_BASE_RESPONSE_GENERATION", "POST_PROCESSING", "ROUTING_CLASSIFIER"],
    #               override_lambda: "LambdaArn",
    #               prompt_creation_mode: "DEFAULT" # One of: ["DEFAULT", "OVERRIDDEN"],
    #               inference_configuration: {
    #                 temperature: 1.0,
    #                 top_p: 1.0,
    #                 top_k: 1,
    #                 maximum_length: 1,
    #                 stop_sequences: ["String"]
    #               },
    #               parser_mode: "DEFAULT" # One of: ["DEFAULT", "OVERRIDDEN"],
    #               foundation_model: "ModelIdentifier"
    #             },
    #             model_invocation_output: {
    #               trace_id: "TraceId",
    #               raw_response: {
    #                 content: "String"
    #               },
    #               metadata: {
    #                 start_time: Time.now,
    #                 end_time: Time.now,
    #                 total_time_ms: 1,
    #                 operation_total_time_ms: 1,
    #                 client_request_id: "String",
    #                 usage: {
    #                   input_tokens: 1,
    #                   output_tokens: 1
    #                 }
    #               }
    #             }
    #           },
    #           failure_trace: {
    #             trace_id: "TraceId",
    #             failure_reason: "FailureReasonString",
    #             failure_code: 1,
    #             metadata: {
    #               start_time: Time.now,
    #               end_time: Time.now,
    #               total_time_ms: 1,
    #               operation_total_time_ms: 1,
    #               client_request_id: "String",
    #               usage: {
    #                 input_tokens: 1,
    #                 output_tokens: 1
    #               }
    #             }
    #           },
    #           custom_orchestration_trace: {
    #             trace_id: "TraceId",
    #             event: {
    #               text: "String"
    #             }
    #           }
    #         },
    #         caller_chain: [{
    #           # One of:
    #           agent_alias_arn: "AgentAliasArn"
    #         }],
    #         event_time: Time.now,
    #         collaborator_name: "Name",
    #         agent_id: "AgentId",
    #         agent_alias_id: "AgentAliasId",
    #         agent_version: "AgentVersion"
    #       },
    #       return_control: {
    #         invocation_inputs: [{
    #           # One of:
    #           api_invocation_input: {
    #             action_group: "String", # required
    #             http_method: "String",
    #             api_path: "ApiPath",
    #             parameters: [
    #               {
    #                 name: "String",
    #                 type: "String",
    #                 value: "String"
    #               }
    #             ],
    #             request_body: {
    #               content: {
    #                 "String" => {
    #                   properties: [
    #                     {
    #                       name: "String",
    #                       type: "String",
    #                       value: "String"
    #                     }
    #                   ]
    #                 }
    #               }
    #             },
    #             action_invocation_type: "RESULT" # One of: ["RESULT", "USER_CONFIRMATION", "USER_CONFIRMATION_AND_RESULT"],
    #             agent_id: "String",
    #             collaborator_name: "Name"
    #           },
    #           function_invocation_input: {
    #             action_group: "String", # required
    #             parameters: [
    #               {
    #                 name: "String",
    #                 type: "String",
    #                 value: "String"
    #               }
    #             ],
    #             function: "String",
    #             action_invocation_type: "RESULT" # One of: ["RESULT", "USER_CONFIRMATION", "USER_CONFIRMATION_AND_RESULT"],
    #             agent_id: "String",
    #             collaborator_name: "Name"
    #           }
    #         }],
    #         invocation_id: "String"
    #       },
    #       internal_server_exception: {
    #         message: "NonBlankString",
    #         reason: "String"
    #       },
    #       validation_exception: {
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
    #       access_denied_exception: {
    #         message: "NonBlankString"
    #       },
    #       conflict_exception: {
    #         message: "NonBlankString"
    #       },
    #       dependency_failed_exception: {
    #         message: "NonBlankString",
    #         resource_name: "NonBlankString"
    #       },
    #       bad_gateway_exception: {
    #         message: "NonBlankString",
    #         resource_name: "NonBlankString"
    #       },
    #       model_not_ready_exception: {
    #         message: "NonBlankString"
    #       },
    #       files: {
    #         files: [
    #           {
    #             name: "String",
    #             type: "MimeType",
    #             bytes: "data"
    #           }
    #         ]
    #       }
    #     },
    #     content_type: "MimeType", # required
    #     session_id: "SessionId", # required
    #     memory_id: "MemoryId"
    #   }
    # @return [Types::InvokeAgentResponse]
    def invoke_agent(params = {}, options = {})
      request = build_request(:invoke_agent, params)
      request.send_request(options)
    end

    # <p>Invokes an alias of a flow to run the inputs that you specify and return the output of each node as a stream. If there's an error, the error is returned. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/flows-test.html">Test a flow in Amazon Bedrock</a> in the <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html">Amazon Bedrock User Guide</a>.</p> <note> <p>The CLI doesn't support streaming operations in Amazon Bedrock, including <code>InvokeFlow</code>.</p> </note>
    # @param [Hash, Types::InvokeFlowRequest] params
    # @option params [String] :flow_identifier
    #   <p>The unique identifier of the flow.</p>
    # @option params [String] :flow_alias_identifier
    #   <p>The unique identifier of the flow alias.</p>
    # @option params [Array<Types::FlowInput>] :inputs
    #   <p>A list of objects, each containing information about an input into the flow.</p>
    # @option params [Boolean] :enable_trace
    #   <p>Specifies whether to return the trace for the flow or not. Traces track inputs and outputs for nodes in the flow. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/flows-trace.html">Track each step in your prompt flow by viewing its trace in Amazon Bedrock</a>.</p>
    # @option params [Types::ModelPerformanceConfiguration] :model_performance_configuration
    #   <p>Model performance settings for the request.</p>
    # @option params [String] :execution_id
    #   <p>The unique identifier for the current flow execution. If you don't provide a value, Amazon Bedrock creates the identifier for you. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     flow_identifier: "FlowIdentifier", # required
    #     flow_alias_identifier: "FlowAliasIdentifier", # required
    #     inputs: [ # required
    #       {
    #         node_name: "NodeName", # required
    #         node_output_name: "NodeOutputName",
    #         content: { # required
    #           # One of:
    #           document: ""null""
    #         },
    #         node_input_name: "NodeInputName"
    #       }
    #     ],
    #     enable_trace: false,
    #     model_performance_configuration: {
    #       performance_config: {
    #         latency: "standard" # One of: ["standard", "optimized"]
    #       }
    #     },
    #     execution_id: "FlowExecutionId"
    #   }
    #   options = {}
    #   response = client.invoke_flow(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     response_stream: { # required
    #       # One of:
    #       flow_output_event: {
    #         node_name: "NodeName", # required
    #         node_type: "FlowInputNode" # One of: ["FlowInputNode", "FlowOutputNode", "LambdaFunctionNode", "KnowledgeBaseNode", "PromptNode", "ConditionNode", "LexNode"], # required
    #         content: { # required
    #           # One of:
    #           document: ""null""
    #         }
    #       },
    #       flow_completion_event: {
    #         completion_reason: "SUCCESS" # One of: ["SUCCESS", "INPUT_REQUIRED"], # required
    #       },
    #       flow_trace_event: {
    #         trace: { # required
    #           # One of:
    #           node_input_trace: {
    #             node_name: "NodeName", # required
    #             timestamp: Time.now, # required
    #             fields: [ # required
    #               {
    #                 node_input_name: "NodeInputName", # required
    #                 content: { # required
    #                   # One of:
    #                   document: ""null""
    #                 },
    #                 source: {
    #                   node_name: "NodeName", # required
    #                   output_field_name: "FlowNodeOutputName", # required
    #                   expression: "FlowNodeInputExpression", # required
    #                 },
    #                 type: "String" # One of: ["String", "Number", "Boolean", "Object", "Array"],
    #                 category: "LoopCondition" # One of: ["LoopCondition", "ReturnValueToLoopStart", "ExitLoop"],
    #                 execution_chain: [
    #                   {
    #                     node_name: "NodeName", # required
    #                     index: 1,
    #                     type: "Iterator" # One of: ["Iterator", "Loop"], # required
    #                   }
    #                 ]
    #               }
    #             ]
    #           },
    #           node_output_trace: {
    #             node_name: "NodeName", # required
    #             timestamp: Time.now, # required
    #             fields: [ # required
    #               {
    #                 node_output_name: "NodeOutputName", # required
    #                 content: { # required
    #                   # One of:
    #                   document: ""null""
    #                 },
    #                 next: [
    #                   {
    #                     node_name: "NodeName", # required
    #                     input_field_name: "FlowNodeInputName", # required
    #                   }
    #                 ],
    #                 type: "String" # One of: ["String", "Number", "Boolean", "Object", "Array"]
    #               }
    #             ]
    #           },
    #           condition_node_result_trace: {
    #             node_name: "NodeName", # required
    #             timestamp: Time.now, # required
    #             satisfied_conditions: [ # required
    #               {
    #                 condition_name: "String", # required
    #               }
    #             ]
    #           },
    #           node_action_trace: {
    #             node_name: "NodeName", # required
    #             timestamp: Time.now, # required
    #             request_id: "String", # required
    #             service_name: "String", # required
    #             operation_name: "String", # required
    #             operation_request: ""null"",
    #             operation_response: ""null""
    #           },
    #           node_dependency_trace: {
    #             node_name: "NodeName", # required
    #             timestamp: Time.now, # required
    #             trace_elements: { # required
    #               # One of:
    #               agent_traces: [
    #                 {
    #                   session_id: "SessionId",
    #                   trace: {
    #                     # One of:
    #                     guardrail_trace: {
    #                       action: "INTERVENED" # One of: ["INTERVENED", "NONE"],
    #                       trace_id: "TraceId",
    #                       input_assessments: [
    #                         {
    #                           topic_policy: {
    #                             topics: [
    #                               {
    #                                 name: "String",
    #                                 type: "DENY" # One of: ["DENY"],
    #                                 action: "BLOCKED" # One of: ["BLOCKED"]
    #                               }
    #                             ]
    #                           },
    #                           content_policy: {
    #                             filters: [
    #                               {
    #                                 type: "INSULTS" # One of: ["INSULTS", "HATE", "SEXUAL", "VIOLENCE", "MISCONDUCT", "PROMPT_ATTACK"],
    #                                 confidence: "NONE" # One of: ["NONE", "LOW", "MEDIUM", "HIGH"],
    #                                 action: "BLOCKED" # One of: ["BLOCKED"]
    #                               }
    #                             ]
    #                           },
    #                           word_policy: {
    #                             custom_words: [
    #                               {
    #                                 match: "String",
    #                                 action: "BLOCKED" # One of: ["BLOCKED"]
    #                               }
    #                             ],
    #                             managed_word_lists: [
    #                               {
    #                                 match: "String",
    #                                 type: "PROFANITY" # One of: ["PROFANITY"],
    #                                 action: "BLOCKED" # One of: ["BLOCKED"]
    #                               }
    #                             ]
    #                           },
    #                           sensitive_information_policy: {
    #                             pii_entities: [
    #                               {
    #                                 type: "ADDRESS" # One of: ["ADDRESS", "AGE", "AWS_ACCESS_KEY", "AWS_SECRET_KEY", "CA_HEALTH_NUMBER", "CA_SOCIAL_INSURANCE_NUMBER", "CREDIT_DEBIT_CARD_CVV", "CREDIT_DEBIT_CARD_EXPIRY", "CREDIT_DEBIT_CARD_NUMBER", "DRIVER_ID", "EMAIL", "INTERNATIONAL_BANK_ACCOUNT_NUMBER", "IP_ADDRESS", "LICENSE_PLATE", "MAC_ADDRESS", "NAME", "PASSWORD", "PHONE", "PIN", "SWIFT_CODE", "UK_NATIONAL_HEALTH_SERVICE_NUMBER", "UK_NATIONAL_INSURANCE_NUMBER", "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER", "URL", "USERNAME", "US_BANK_ACCOUNT_NUMBER", "US_BANK_ROUTING_NUMBER", "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER", "US_PASSPORT_NUMBER", "US_SOCIAL_SECURITY_NUMBER", "VEHICLE_IDENTIFICATION_NUMBER"],
    #                                 match: "String",
    #                                 action: "BLOCKED" # One of: ["BLOCKED", "ANONYMIZED"]
    #                               }
    #                             ],
    #                             regexes: [
    #                               {
    #                                 name: "String",
    #                                 regex: "String",
    #                                 match: "String",
    #                                 action: "BLOCKED" # One of: ["BLOCKED", "ANONYMIZED"]
    #                               }
    #                             ]
    #                           }
    #                         }
    #                       ],
    #                       output_assessments: [
    #                         {
    #                           topic_policy: {
    #                             topics: [
    #                               {
    #                                 name: "String",
    #                                 type: "DENY" # One of: ["DENY"],
    #                                 action: "BLOCKED" # One of: ["BLOCKED"]
    #                               }
    #                             ]
    #                           },
    #                           content_policy: {
    #                             filters: [
    #                               {
    #                                 type: "INSULTS" # One of: ["INSULTS", "HATE", "SEXUAL", "VIOLENCE", "MISCONDUCT", "PROMPT_ATTACK"],
    #                                 confidence: "NONE" # One of: ["NONE", "LOW", "MEDIUM", "HIGH"],
    #                                 action: "BLOCKED" # One of: ["BLOCKED"]
    #                               }
    #                             ]
    #                           },
    #                           word_policy: {
    #                             custom_words: [
    #                               {
    #                                 match: "String",
    #                                 action: "BLOCKED" # One of: ["BLOCKED"]
    #                               }
    #                             ],
    #                             managed_word_lists: [
    #                               {
    #                                 match: "String",
    #                                 type: "PROFANITY" # One of: ["PROFANITY"],
    #                                 action: "BLOCKED" # One of: ["BLOCKED"]
    #                               }
    #                             ]
    #                           },
    #                           sensitive_information_policy: {
    #                             pii_entities: [
    #                               {
    #                                 type: "ADDRESS" # One of: ["ADDRESS", "AGE", "AWS_ACCESS_KEY", "AWS_SECRET_KEY", "CA_HEALTH_NUMBER", "CA_SOCIAL_INSURANCE_NUMBER", "CREDIT_DEBIT_CARD_CVV", "CREDIT_DEBIT_CARD_EXPIRY", "CREDIT_DEBIT_CARD_NUMBER", "DRIVER_ID", "EMAIL", "INTERNATIONAL_BANK_ACCOUNT_NUMBER", "IP_ADDRESS", "LICENSE_PLATE", "MAC_ADDRESS", "NAME", "PASSWORD", "PHONE", "PIN", "SWIFT_CODE", "UK_NATIONAL_HEALTH_SERVICE_NUMBER", "UK_NATIONAL_INSURANCE_NUMBER", "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER", "URL", "USERNAME", "US_BANK_ACCOUNT_NUMBER", "US_BANK_ROUTING_NUMBER", "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER", "US_PASSPORT_NUMBER", "US_SOCIAL_SECURITY_NUMBER", "VEHICLE_IDENTIFICATION_NUMBER"],
    #                                 match: "String",
    #                                 action: "BLOCKED" # One of: ["BLOCKED", "ANONYMIZED"]
    #                               }
    #                             ],
    #                             regexes: [
    #                               {
    #                                 name: "String",
    #                                 regex: "String",
    #                                 match: "String",
    #                                 action: "BLOCKED" # One of: ["BLOCKED", "ANONYMIZED"]
    #                               }
    #                             ]
    #                           }
    #                         }
    #                       ],
    #                       metadata: {
    #                         start_time: Time.now,
    #                         end_time: Time.now,
    #                         total_time_ms: 1,
    #                         operation_total_time_ms: 1,
    #                         client_request_id: "String",
    #                         usage: {
    #                           input_tokens: 1,
    #                           output_tokens: 1
    #                         }
    #                       }
    #                     },
    #                     pre_processing_trace: {
    #                       # One of:
    #                       model_invocation_input: {
    #                         trace_id: "TraceId",
    #                         text: "PromptText",
    #                         type: "PRE_PROCESSING" # One of: ["PRE_PROCESSING", "ORCHESTRATION", "KNOWLEDGE_BASE_RESPONSE_GENERATION", "POST_PROCESSING", "ROUTING_CLASSIFIER"],
    #                         override_lambda: "LambdaArn",
    #                         prompt_creation_mode: "DEFAULT" # One of: ["DEFAULT", "OVERRIDDEN"],
    #                         inference_configuration: {
    #                           temperature: 1.0,
    #                           top_p: 1.0,
    #                           top_k: 1,
    #                           maximum_length: 1,
    #                           stop_sequences: ["String"]
    #                         },
    #                         parser_mode: "DEFAULT" # One of: ["DEFAULT", "OVERRIDDEN"],
    #                         foundation_model: "ModelIdentifier"
    #                       },
    #                       model_invocation_output: {
    #                         trace_id: "TraceId",
    #                         parsed_response: {
    #                           rationale: "RationaleString",
    #                           is_valid: false
    #                         },
    #                         raw_response: {
    #                           content: "String"
    #                         },
    #                         metadata: {
    #                           start_time: Time.now,
    #                           end_time: Time.now,
    #                           total_time_ms: 1,
    #                           operation_total_time_ms: 1,
    #                           client_request_id: "String",
    #                           usage: {
    #                             input_tokens: 1,
    #                             output_tokens: 1
    #                           }
    #                         },
    #                         reasoning_content: {
    #                           # One of:
    #                           reasoning_text: {
    #                             text: "String", # required
    #                             signature: "String"
    #                           },
    #                           redacted_content: "data"
    #                         }
    #                       }
    #                     },
    #                     orchestration_trace: {
    #                       # One of:
    #                       rationale: {
    #                         trace_id: "TraceId",
    #                         text: "RationaleString"
    #                       },
    #                       invocation_input: {
    #                         trace_id: "TraceId",
    #                         invocation_type: "ACTION_GROUP" # One of: ["ACTION_GROUP", "KNOWLEDGE_BASE", "FINISH", "ACTION_GROUP_CODE_INTERPRETER", "AGENT_COLLABORATOR"],
    #                         action_group_invocation_input: {
    #                           action_group_name: "ActionGroupName",
    #                           verb: "Verb",
    #                           api_path: "ApiPath",
    #                           parameters: [
    #                             {
    #                               name: "String",
    #                               type: "String",
    #                               value: "String"
    #                             }
    #                           ],
    #                           request_body: {
    #                             content: {
    #                               "String" => [
    #                                 {
    #                                   name: "String",
    #                                   type: "String",
    #                                   value: "String"
    #                                 }
    #                               ]
    #                             }
    #                           },
    #                           function: "Function",
    #                           execution_type: "LAMBDA" # One of: ["LAMBDA", "RETURN_CONTROL"],
    #                           invocation_id: "String"
    #                         },
    #                         knowledge_base_lookup_input: {
    #                           text: "KnowledgeBaseLookupInputString",
    #                           knowledge_base_id: "TraceKnowledgeBaseId"
    #                         },
    #                         code_interpreter_invocation_input: {
    #                           code: "String",
    #                           files: ["String"]
    #                         },
    #                         agent_collaborator_invocation_input: {
    #                           agent_collaborator_name: "String",
    #                           agent_collaborator_alias_arn: "AgentAliasArn",
    #                           input: {
    #                             type: "TEXT" # One of: ["TEXT", "RETURN_CONTROL"],
    #                             text: "AgentCollaboratorPayloadString",
    #                             return_control_results: {
    #                               invocation_id: "String",
    #                               return_control_invocation_results: [{
    #                                 # One of:
    #                                 api_result: {
    #                                   action_group: "String", # required
    #                                   http_method: "String",
    #                                   api_path: "ApiPath",
    #                                   confirmation_state: "CONFIRM" # One of: ["CONFIRM", "DENY"],
    #                                   response_state: "FAILURE" # One of: ["FAILURE", "REPROMPT"],
    #                                   http_status_code: 1,
    #                                   response_body: {
    #                                     "String" => {
    #                                       body: "String",
    #                                       images: [
    #                                         {
    #                                           format: "png" # One of: ["png", "jpeg", "gif", "webp"], # required
    #                                           source: { # required
    #                                             # One of:
    #                                             bytes: "data"
    #                                           }
    #                                         }
    #                                       ]
    #                                     }
    #                                   },
    #                                   agent_id: "String"
    #                                 },
    #                                 function_result: {
    #                                   action_group: "String", # required
    #                                   confirmation_state: "CONFIRM" # One of: ["CONFIRM", "DENY"],
    #                                   function: "String",
    #                                   response_body: {
    #                                     "String" => {
    #                                       body: "String",
    #                                       images: [
    #                                         {
    #                                           format: "png" # One of: ["png", "jpeg", "gif", "webp"], # required
    #                                           source: { # required
    #                                             # One of:
    #                                             bytes: "data"
    #                                           }
    #                                         }
    #                                       ]
    #                                     }
    #                                   },
    #                                   response_state: "FAILURE" # One of: ["FAILURE", "REPROMPT"],
    #                                   agent_id: "String"
    #                                 }
    #                               }]
    #                             }
    #                           }
    #                         }
    #                       },
    #                       observation: {
    #                         trace_id: "TraceId",
    #                         type: "ACTION_GROUP" # One of: ["ACTION_GROUP", "AGENT_COLLABORATOR", "KNOWLEDGE_BASE", "FINISH", "ASK_USER", "REPROMPT"],
    #                         action_group_invocation_output: {
    #                           text: "ActionGroupOutputString",
    #                           metadata: {
    #                             start_time: Time.now,
    #                             end_time: Time.now,
    #                             total_time_ms: 1,
    #                             operation_total_time_ms: 1,
    #                             client_request_id: "String",
    #                             usage: {
    #                               input_tokens: 1,
    #                               output_tokens: 1
    #                             }
    #                           }
    #                         },
    #                         agent_collaborator_invocation_output: {
    #                           agent_collaborator_name: "String",
    #                           agent_collaborator_alias_arn: "AgentAliasArn",
    #                           output: {
    #                             type: "TEXT" # One of: ["TEXT", "RETURN_CONTROL"],
    #                             text: "AgentCollaboratorPayloadString",
    #                             return_control_payload: {
    #                               invocation_inputs: [{
    #                                 # One of:
    #                                 api_invocation_input: {
    #                                   action_group: "String", # required
    #                                   http_method: "String",
    #                                   api_path: "ApiPath",
    #                                   parameters: [
    #                                     {
    #                                       name: "String",
    #                                       type: "String",
    #                                       value: "String"
    #                                     }
    #                                   ],
    #                                   request_body: {
    #                                     content: {
    #                                       "String" => {
    #                                         properties: [
    #                                           {
    #                                             name: "String",
    #                                             type: "String",
    #                                             value: "String"
    #                                           }
    #                                         ]
    #                                       }
    #                                     }
    #                                   },
    #                                   action_invocation_type: "RESULT" # One of: ["RESULT", "USER_CONFIRMATION", "USER_CONFIRMATION_AND_RESULT"],
    #                                   agent_id: "String",
    #                                   collaborator_name: "Name"
    #                                 },
    #                                 function_invocation_input: {
    #                                   action_group: "String", # required
    #                                   parameters: [
    #                                     {
    #                                       name: "String",
    #                                       type: "String",
    #                                       value: "String"
    #                                     }
    #                                   ],
    #                                   function: "String",
    #                                   action_invocation_type: "RESULT" # One of: ["RESULT", "USER_CONFIRMATION", "USER_CONFIRMATION_AND_RESULT"],
    #                                   agent_id: "String",
    #                                   collaborator_name: "Name"
    #                                 }
    #                               }],
    #                               invocation_id: "String"
    #                             }
    #                           },
    #                           metadata: {
    #                             start_time: Time.now,
    #                             end_time: Time.now,
    #                             total_time_ms: 1,
    #                             operation_total_time_ms: 1,
    #                             client_request_id: "String",
    #                             usage: {
    #                               input_tokens: 1,
    #                               output_tokens: 1
    #                             }
    #                           }
    #                         },
    #                         knowledge_base_lookup_output: {
    #                           retrieved_references: [
    #                             {
    #                               content: {
    #                                 type: "TEXT" # One of: ["TEXT", "IMAGE", "ROW"],
    #                                 text: "String",
    #                                 byte_content: "String",
    #                                 row: [
    #                                   {
    #                                     column_name: "String",
    #                                     column_value: "String",
    #                                     type: "BLOB" # One of: ["BLOB", "BOOLEAN", "DOUBLE", "NULL", "LONG", "STRING"]
    #                                   }
    #                                 ]
    #                               },
    #                               location: {
    #                                 type: "S3" # One of: ["S3", "WEB", "CONFLUENCE", "SALESFORCE", "SHAREPOINT", "CUSTOM", "KENDRA", "SQL"], # required
    #                                 s3_location: {
    #                                   uri: "String"
    #                                 },
    #                                 web_location: {
    #                                   url: "String"
    #                                 },
    #                                 confluence_location: {
    #                                   url: "String"
    #                                 },
    #                                 salesforce_location: {
    #                                   url: "String"
    #                                 },
    #                                 share_point_location: {
    #                                   url: "String"
    #                                 },
    #                                 custom_document_location: {
    #                                   id: "String"
    #                                 },
    #                                 kendra_document_location: {
    #                                   uri: "String"
    #                                 },
    #                                 sql_location: {
    #                                   query: "String"
    #                                 }
    #                               },
    #                               metadata: {
    #                                 "RetrievalResultMetadataKey" => ""null""
    #                               }
    #                             }
    #                           ],
    #                           metadata: {
    #                             start_time: Time.now,
    #                             end_time: Time.now,
    #                             total_time_ms: 1,
    #                             operation_total_time_ms: 1,
    #                             client_request_id: "String",
    #                             usage: {
    #                               input_tokens: 1,
    #                               output_tokens: 1
    #                             }
    #                           }
    #                         },
    #                         final_response: {
    #                           text: "FinalResponseString",
    #                           metadata: {
    #                             start_time: Time.now,
    #                             end_time: Time.now,
    #                             total_time_ms: 1,
    #                             operation_total_time_ms: 1,
    #                             client_request_id: "String",
    #                             usage: {
    #                               input_tokens: 1,
    #                               output_tokens: 1
    #                             }
    #                           }
    #                         },
    #                         reprompt_response: {
    #                           text: "String",
    #                           source: "ACTION_GROUP" # One of: ["ACTION_GROUP", "KNOWLEDGE_BASE", "PARSER"]
    #                         },
    #                         code_interpreter_invocation_output: {
    #                           execution_output: "String",
    #                           execution_error: "String",
    #                           files: ["String"],
    #                           execution_timeout: false,
    #                           metadata: {
    #                             start_time: Time.now,
    #                             end_time: Time.now,
    #                             total_time_ms: 1,
    #                             operation_total_time_ms: 1,
    #                             client_request_id: "String",
    #                             usage: {
    #                               input_tokens: 1,
    #                               output_tokens: 1
    #                             }
    #                           }
    #                         }
    #                       },
    #                       model_invocation_input: {
    #                         trace_id: "TraceId",
    #                         text: "PromptText",
    #                         type: "PRE_PROCESSING" # One of: ["PRE_PROCESSING", "ORCHESTRATION", "KNOWLEDGE_BASE_RESPONSE_GENERATION", "POST_PROCESSING", "ROUTING_CLASSIFIER"],
    #                         override_lambda: "LambdaArn",
    #                         prompt_creation_mode: "DEFAULT" # One of: ["DEFAULT", "OVERRIDDEN"],
    #                         inference_configuration: {
    #                           temperature: 1.0,
    #                           top_p: 1.0,
    #                           top_k: 1,
    #                           maximum_length: 1,
    #                           stop_sequences: ["String"]
    #                         },
    #                         parser_mode: "DEFAULT" # One of: ["DEFAULT", "OVERRIDDEN"],
    #                         foundation_model: "ModelIdentifier"
    #                       },
    #                       model_invocation_output: {
    #                         trace_id: "TraceId",
    #                         raw_response: {
    #                           content: "String"
    #                         },
    #                         metadata: {
    #                           start_time: Time.now,
    #                           end_time: Time.now,
    #                           total_time_ms: 1,
    #                           operation_total_time_ms: 1,
    #                           client_request_id: "String",
    #                           usage: {
    #                             input_tokens: 1,
    #                             output_tokens: 1
    #                           }
    #                         },
    #                         reasoning_content: {
    #                           # One of:
    #                           reasoning_text: {
    #                             text: "String", # required
    #                             signature: "String"
    #                           },
    #                           redacted_content: "data"
    #                         }
    #                       }
    #                     },
    #                     post_processing_trace: {
    #                       # One of:
    #                       model_invocation_input: {
    #                         trace_id: "TraceId",
    #                         text: "PromptText",
    #                         type: "PRE_PROCESSING" # One of: ["PRE_PROCESSING", "ORCHESTRATION", "KNOWLEDGE_BASE_RESPONSE_GENERATION", "POST_PROCESSING", "ROUTING_CLASSIFIER"],
    #                         override_lambda: "LambdaArn",
    #                         prompt_creation_mode: "DEFAULT" # One of: ["DEFAULT", "OVERRIDDEN"],
    #                         inference_configuration: {
    #                           temperature: 1.0,
    #                           top_p: 1.0,
    #                           top_k: 1,
    #                           maximum_length: 1,
    #                           stop_sequences: ["String"]
    #                         },
    #                         parser_mode: "DEFAULT" # One of: ["DEFAULT", "OVERRIDDEN"],
    #                         foundation_model: "ModelIdentifier"
    #                       },
    #                       model_invocation_output: {
    #                         trace_id: "TraceId",
    #                         parsed_response: {
    #                           text: "OutputString"
    #                         },
    #                         raw_response: {
    #                           content: "String"
    #                         },
    #                         metadata: {
    #                           start_time: Time.now,
    #                           end_time: Time.now,
    #                           total_time_ms: 1,
    #                           operation_total_time_ms: 1,
    #                           client_request_id: "String",
    #                           usage: {
    #                             input_tokens: 1,
    #                             output_tokens: 1
    #                           }
    #                         },
    #                         reasoning_content: {
    #                           # One of:
    #                           reasoning_text: {
    #                             text: "String", # required
    #                             signature: "String"
    #                           },
    #                           redacted_content: "data"
    #                         }
    #                       }
    #                     },
    #                     routing_classifier_trace: {
    #                       # One of:
    #                       invocation_input: {
    #                         trace_id: "TraceId",
    #                         invocation_type: "ACTION_GROUP" # One of: ["ACTION_GROUP", "KNOWLEDGE_BASE", "FINISH", "ACTION_GROUP_CODE_INTERPRETER", "AGENT_COLLABORATOR"],
    #                         action_group_invocation_input: {
    #                           action_group_name: "ActionGroupName",
    #                           verb: "Verb",
    #                           api_path: "ApiPath",
    #                           parameters: [
    #                             {
    #                               name: "String",
    #                               type: "String",
    #                               value: "String"
    #                             }
    #                           ],
    #                           request_body: {
    #                             content: {
    #                               "String" => [
    #                                 {
    #                                   name: "String",
    #                                   type: "String",
    #                                   value: "String"
    #                                 }
    #                               ]
    #                             }
    #                           },
    #                           function: "Function",
    #                           execution_type: "LAMBDA" # One of: ["LAMBDA", "RETURN_CONTROL"],
    #                           invocation_id: "String"
    #                         },
    #                         knowledge_base_lookup_input: {
    #                           text: "KnowledgeBaseLookupInputString",
    #                           knowledge_base_id: "TraceKnowledgeBaseId"
    #                         },
    #                         code_interpreter_invocation_input: {
    #                           code: "String",
    #                           files: ["String"]
    #                         },
    #                         agent_collaborator_invocation_input: {
    #                           agent_collaborator_name: "String",
    #                           agent_collaborator_alias_arn: "AgentAliasArn",
    #                           input: {
    #                             type: "TEXT" # One of: ["TEXT", "RETURN_CONTROL"],
    #                             text: "AgentCollaboratorPayloadString",
    #                             return_control_results: {
    #                               invocation_id: "String",
    #                               return_control_invocation_results: [{
    #                                 # One of:
    #                                 api_result: {
    #                                   action_group: "String", # required
    #                                   http_method: "String",
    #                                   api_path: "ApiPath",
    #                                   confirmation_state: "CONFIRM" # One of: ["CONFIRM", "DENY"],
    #                                   response_state: "FAILURE" # One of: ["FAILURE", "REPROMPT"],
    #                                   http_status_code: 1,
    #                                   response_body: {
    #                                     "String" => {
    #                                       body: "String",
    #                                       images: [
    #                                         {
    #                                           format: "png" # One of: ["png", "jpeg", "gif", "webp"], # required
    #                                           source: { # required
    #                                             # One of:
    #                                             bytes: "data"
    #                                           }
    #                                         }
    #                                       ]
    #                                     }
    #                                   },
    #                                   agent_id: "String"
    #                                 },
    #                                 function_result: {
    #                                   action_group: "String", # required
    #                                   confirmation_state: "CONFIRM" # One of: ["CONFIRM", "DENY"],
    #                                   function: "String",
    #                                   response_body: {
    #                                     "String" => {
    #                                       body: "String",
    #                                       images: [
    #                                         {
    #                                           format: "png" # One of: ["png", "jpeg", "gif", "webp"], # required
    #                                           source: { # required
    #                                             # One of:
    #                                             bytes: "data"
    #                                           }
    #                                         }
    #                                       ]
    #                                     }
    #                                   },
    #                                   response_state: "FAILURE" # One of: ["FAILURE", "REPROMPT"],
    #                                   agent_id: "String"
    #                                 }
    #                               }]
    #                             }
    #                           }
    #                         }
    #                       },
    #                       observation: {
    #                         trace_id: "TraceId",
    #                         type: "ACTION_GROUP" # One of: ["ACTION_GROUP", "AGENT_COLLABORATOR", "KNOWLEDGE_BASE", "FINISH", "ASK_USER", "REPROMPT"],
    #                         action_group_invocation_output: {
    #                           text: "ActionGroupOutputString",
    #                           metadata: {
    #                             start_time: Time.now,
    #                             end_time: Time.now,
    #                             total_time_ms: 1,
    #                             operation_total_time_ms: 1,
    #                             client_request_id: "String",
    #                             usage: {
    #                               input_tokens: 1,
    #                               output_tokens: 1
    #                             }
    #                           }
    #                         },
    #                         agent_collaborator_invocation_output: {
    #                           agent_collaborator_name: "String",
    #                           agent_collaborator_alias_arn: "AgentAliasArn",
    #                           output: {
    #                             type: "TEXT" # One of: ["TEXT", "RETURN_CONTROL"],
    #                             text: "AgentCollaboratorPayloadString",
    #                             return_control_payload: {
    #                               invocation_inputs: [{
    #                                 # One of:
    #                                 api_invocation_input: {
    #                                   action_group: "String", # required
    #                                   http_method: "String",
    #                                   api_path: "ApiPath",
    #                                   parameters: [
    #                                     {
    #                                       name: "String",
    #                                       type: "String",
    #                                       value: "String"
    #                                     }
    #                                   ],
    #                                   request_body: {
    #                                     content: {
    #                                       "String" => {
    #                                         properties: [
    #                                           {
    #                                             name: "String",
    #                                             type: "String",
    #                                             value: "String"
    #                                           }
    #                                         ]
    #                                       }
    #                                     }
    #                                   },
    #                                   action_invocation_type: "RESULT" # One of: ["RESULT", "USER_CONFIRMATION", "USER_CONFIRMATION_AND_RESULT"],
    #                                   agent_id: "String",
    #                                   collaborator_name: "Name"
    #                                 },
    #                                 function_invocation_input: {
    #                                   action_group: "String", # required
    #                                   parameters: [
    #                                     {
    #                                       name: "String",
    #                                       type: "String",
    #                                       value: "String"
    #                                     }
    #                                   ],
    #                                   function: "String",
    #                                   action_invocation_type: "RESULT" # One of: ["RESULT", "USER_CONFIRMATION", "USER_CONFIRMATION_AND_RESULT"],
    #                                   agent_id: "String",
    #                                   collaborator_name: "Name"
    #                                 }
    #                               }],
    #                               invocation_id: "String"
    #                             }
    #                           },
    #                           metadata: {
    #                             start_time: Time.now,
    #                             end_time: Time.now,
    #                             total_time_ms: 1,
    #                             operation_total_time_ms: 1,
    #                             client_request_id: "String",
    #                             usage: {
    #                               input_tokens: 1,
    #                               output_tokens: 1
    #                             }
    #                           }
    #                         },
    #                         knowledge_base_lookup_output: {
    #                           retrieved_references: [
    #                             {
    #                               content: {
    #                                 type: "TEXT" # One of: ["TEXT", "IMAGE", "ROW"],
    #                                 text: "String",
    #                                 byte_content: "String",
    #                                 row: [
    #                                   {
    #                                     column_name: "String",
    #                                     column_value: "String",
    #                                     type: "BLOB" # One of: ["BLOB", "BOOLEAN", "DOUBLE", "NULL", "LONG", "STRING"]
    #                                   }
    #                                 ]
    #                               },
    #                               location: {
    #                                 type: "S3" # One of: ["S3", "WEB", "CONFLUENCE", "SALESFORCE", "SHAREPOINT", "CUSTOM", "KENDRA", "SQL"], # required
    #                                 s3_location: {
    #                                   uri: "String"
    #                                 },
    #                                 web_location: {
    #                                   url: "String"
    #                                 },
    #                                 confluence_location: {
    #                                   url: "String"
    #                                 },
    #                                 salesforce_location: {
    #                                   url: "String"
    #                                 },
    #                                 share_point_location: {
    #                                   url: "String"
    #                                 },
    #                                 custom_document_location: {
    #                                   id: "String"
    #                                 },
    #                                 kendra_document_location: {
    #                                   uri: "String"
    #                                 },
    #                                 sql_location: {
    #                                   query: "String"
    #                                 }
    #                               },
    #                               metadata: {
    #                                 "RetrievalResultMetadataKey" => ""null""
    #                               }
    #                             }
    #                           ],
    #                           metadata: {
    #                             start_time: Time.now,
    #                             end_time: Time.now,
    #                             total_time_ms: 1,
    #                             operation_total_time_ms: 1,
    #                             client_request_id: "String",
    #                             usage: {
    #                               input_tokens: 1,
    #                               output_tokens: 1
    #                             }
    #                           }
    #                         },
    #                         final_response: {
    #                           text: "FinalResponseString",
    #                           metadata: {
    #                             start_time: Time.now,
    #                             end_time: Time.now,
    #                             total_time_ms: 1,
    #                             operation_total_time_ms: 1,
    #                             client_request_id: "String",
    #                             usage: {
    #                               input_tokens: 1,
    #                               output_tokens: 1
    #                             }
    #                           }
    #                         },
    #                         reprompt_response: {
    #                           text: "String",
    #                           source: "ACTION_GROUP" # One of: ["ACTION_GROUP", "KNOWLEDGE_BASE", "PARSER"]
    #                         },
    #                         code_interpreter_invocation_output: {
    #                           execution_output: "String",
    #                           execution_error: "String",
    #                           files: ["String"],
    #                           execution_timeout: false,
    #                           metadata: {
    #                             start_time: Time.now,
    #                             end_time: Time.now,
    #                             total_time_ms: 1,
    #                             operation_total_time_ms: 1,
    #                             client_request_id: "String",
    #                             usage: {
    #                               input_tokens: 1,
    #                               output_tokens: 1
    #                             }
    #                           }
    #                         }
    #                       },
    #                       model_invocation_input: {
    #                         trace_id: "TraceId",
    #                         text: "PromptText",
    #                         type: "PRE_PROCESSING" # One of: ["PRE_PROCESSING", "ORCHESTRATION", "KNOWLEDGE_BASE_RESPONSE_GENERATION", "POST_PROCESSING", "ROUTING_CLASSIFIER"],
    #                         override_lambda: "LambdaArn",
    #                         prompt_creation_mode: "DEFAULT" # One of: ["DEFAULT", "OVERRIDDEN"],
    #                         inference_configuration: {
    #                           temperature: 1.0,
    #                           top_p: 1.0,
    #                           top_k: 1,
    #                           maximum_length: 1,
    #                           stop_sequences: ["String"]
    #                         },
    #                         parser_mode: "DEFAULT" # One of: ["DEFAULT", "OVERRIDDEN"],
    #                         foundation_model: "ModelIdentifier"
    #                       },
    #                       model_invocation_output: {
    #                         trace_id: "TraceId",
    #                         raw_response: {
    #                           content: "String"
    #                         },
    #                         metadata: {
    #                           start_time: Time.now,
    #                           end_time: Time.now,
    #                           total_time_ms: 1,
    #                           operation_total_time_ms: 1,
    #                           client_request_id: "String",
    #                           usage: {
    #                             input_tokens: 1,
    #                             output_tokens: 1
    #                           }
    #                         }
    #                       }
    #                     },
    #                     failure_trace: {
    #                       trace_id: "TraceId",
    #                       failure_reason: "FailureReasonString",
    #                       failure_code: 1,
    #                       metadata: {
    #                         start_time: Time.now,
    #                         end_time: Time.now,
    #                         total_time_ms: 1,
    #                         operation_total_time_ms: 1,
    #                         client_request_id: "String",
    #                         usage: {
    #                           input_tokens: 1,
    #                           output_tokens: 1
    #                         }
    #                       }
    #                     },
    #                     custom_orchestration_trace: {
    #                       trace_id: "TraceId",
    #                       event: {
    #                         text: "String"
    #                       }
    #                     }
    #                   },
    #                   caller_chain: [{
    #                     # One of:
    #                     agent_alias_arn: "AgentAliasArn"
    #                   }],
    #                   event_time: Time.now,
    #                   collaborator_name: "Name",
    #                   agent_id: "AgentId",
    #                   agent_alias_id: "AgentAliasId",
    #                   agent_version: "AgentVersion"
    #                 }
    #               ]
    #             }
    #           }
    #         }
    #       },
    #       internal_server_exception: {
    #         message: "NonBlankString",
    #         reason: "String"
    #       },
    #       validation_exception: {
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
    #       access_denied_exception: {
    #         message: "NonBlankString"
    #       },
    #       conflict_exception: {
    #         message: "NonBlankString"
    #       },
    #       dependency_failed_exception: {
    #         message: "NonBlankString",
    #         resource_name: "NonBlankString"
    #       },
    #       bad_gateway_exception: {
    #         message: "NonBlankString",
    #         resource_name: "NonBlankString"
    #       },
    #       flow_multi_turn_input_request_event: {
    #         node_name: "NodeName", # required
    #         node_type: "FlowInputNode" # One of: ["FlowInputNode", "FlowOutputNode", "LambdaFunctionNode", "KnowledgeBaseNode", "PromptNode", "ConditionNode", "LexNode"], # required
    #         content: { # required
    #           # One of:
    #           document: ""null""
    #         }
    #       }
    #     },
    #     execution_id: "FlowExecutionId"
    #   }
    # @return [Types::InvokeFlowResponse]
    def invoke_flow(params = {}, options = {})
      request = build_request(:invoke_flow, params)
      request.send_request(options)
    end

    # <p> Invokes an inline Amazon Bedrock agent using the configurations you provide with the request. </p> <ul> <li> <p>Specify the following fields for security purposes.</p> <ul> <li> <p>(Optional) <code>customerEncryptionKeyArn</code> – The Amazon Resource Name (ARN) of a KMS key to encrypt the creation of the agent.</p> </li> <li> <p>(Optional) <code>idleSessionTTLinSeconds</code> – Specify the number of seconds for which the agent should maintain session information. After this time expires, the subsequent <code>InvokeInlineAgent</code> request begins a new session.</p> </li> </ul> </li> <li> <p>To override the default prompt behavior for agent orchestration and to use advanced prompts, include a <code>promptOverrideConfiguration</code> object. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/advanced-prompts.html">Advanced prompts</a>.</p> </li> <li> <p>The agent instructions will not be honored if your agent has only one knowledge base, uses default prompts, has no action group, and user input is disabled.</p> </li> </ul> <note> </note>
    # @param [Hash, Types::InvokeInlineAgentRequest] params
    # @option params [String] :customer_encryption_key_arn
    #   <p> The Amazon Resource Name (ARN) of the Amazon Web Services KMS key to use to encrypt your inline agent. </p>
    # @option params [String] :foundation_model
    #   <p> The <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/model-ids.html#model-ids-arns">model identifier (ID)</a> of the model to use for orchestration by the inline agent. For example, <code>meta.llama3-1-70b-instruct-v1:0</code>. </p>
    # @option params [String] :instruction
    #   <p> The instructions that tell the inline agent what it should do and how it should interact with users. </p>
    # @option params [Integer] :idle_session_ttl_in_seconds
    #   <p> The number of seconds for which the inline agent should maintain session information. After this time expires, the subsequent <code>InvokeInlineAgent</code> request begins a new session. </p> <p>A user interaction remains active for the amount of time specified. If no conversation occurs during this time, the session expires and the data provided before the timeout is deleted.</p>
    # @option params [Array<Types::AgentActionGroup>] :action_groups
    #   <p> A list of action groups with each action group defining the action the inline agent needs to carry out. </p>
    # @option params [Array<Types::KnowledgeBase>] :knowledge_bases
    #   <p> Contains information of the knowledge bases to associate with. </p>
    # @option params [Types::GuardrailConfigurationWithArn] :guardrail_configuration
    #   <p> The <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/guardrails.html">guardrails</a> to assign to the inline agent. </p>
    # @option params [Types::PromptOverrideConfiguration] :prompt_override_configuration
    #   <p> Configurations for advanced prompts used to override the default prompts to enhance the accuracy of the inline agent. </p>
    # @option params [String] :agent_collaboration
    #   <p> Defines how the inline collaborator agent handles information across multiple collaborator agents to coordinate a final response. The inline collaborator agent can also be the supervisor. </p>
    # @option params [Array<Types::CollaboratorConfiguration>] :collaborator_configurations
    #   <p> Settings for an inline agent collaborator called with <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeInlineAgent.html">InvokeInlineAgent</a>. </p>
    # @option params [String] :agent_name
    #   <p>The name for the agent.</p>
    # @option params [String] :session_id
    #   <p> The unique identifier of the session. Use the same value across requests to continue the same conversation. </p>
    # @option params [Boolean] :end_session
    #   <p> Specifies whether to end the session with the inline agent or not. </p>
    # @option params [Boolean] :enable_trace
    #   <p> Specifies whether to turn on the trace or not to track the agent's reasoning process. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/trace-events.html">Using trace</a>. </p>
    # @option params [String] :input_text
    #   <p> The prompt text to send to the agent. </p> <note> <p>If you include <code>returnControlInvocationResults</code> in the <code>sessionState</code> field, the <code>inputText</code> field will be ignored.</p> </note>
    # @option params [Types::StreamingConfigurations] :streaming_configurations
    #   <p> Specifies the configurations for streaming. </p> <note> <p>To use agent streaming, you need permissions to perform the <code>bedrock:InvokeModelWithResponseStream</code> action.</p> </note>
    # @option params [Types::PromptCreationConfigurations] :prompt_creation_configurations
    #   <p>Specifies parameters that control how the service populates the agent prompt for an <code>InvokeInlineAgent</code> request. You can control which aspects of previous invocations in the same agent session the service uses to populate the agent prompt. This gives you more granular control over the contextual history that is used to process the current request.</p>
    # @option params [Types::InlineSessionState] :inline_session_state
    #   <p> Parameters that specify the various attributes of a sessions. You can include attributes for the session or prompt or, if you configured an action group to return control, results from invocation of the action group. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/agents-session-state.html">Control session context</a>. </p> <note> <p>If you include <code>returnControlInvocationResults</code> in the <code>sessionState</code> field, the <code>inputText</code> field will be ignored.</p> </note>
    # @option params [Array<Types::Collaborator>] :collaborators
    #   <p> List of collaborator inline agents. </p>
    # @option params [Types::InlineBedrockModelConfigurations] :bedrock_model_configurations
    #   <p>Model settings for the request.</p>
    # @option params [String] :orchestration_type
    #   <p>Specifies the type of orchestration strategy for the agent. This is set to DEFAULT orchestration type, by default. </p>
    # @option params [Types::CustomOrchestration] :custom_orchestration
    #   <p>Contains details of the custom orchestration configured for the agent. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     customer_encryption_key_arn: "KmsKeyArn",
    #     foundation_model: "ModelIdentifier", # required
    #     instruction: "Instruction", # required
    #     idle_session_ttl_in_seconds: 1,
    #     action_groups: [
    #       {
    #         action_group_name: "ResourceName", # required
    #         description: "ResourceDescription",
    #         parent_action_group_signature: "AMAZON.UserInput" # One of: ["AMAZON.UserInput", "AMAZON.CodeInterpreter", "ANTHROPIC.Computer", "ANTHROPIC.Bash", "ANTHROPIC.TextEditor"],
    #         action_group_executor: {
    #           # One of:
    #           lambda: "LambdaResourceArn",
    #           custom_control: "RETURN_CONTROL" # One of: ["RETURN_CONTROL"]
    #         },
    #         api_schema: {
    #           # One of:
    #           s3: {
    #             s3_bucket_name: "S3BucketName",
    #             s3_object_key: "S3ObjectKey"
    #           },
    #           payload: "Payload"
    #         },
    #         function_schema: {
    #           # One of:
    #           functions: [
    #             {
    #               name: "ResourceName", # required
    #               description: "FunctionDescription",
    #               parameters: {
    #                 "ParameterName" => {
    #                   description: "ParameterDescription",
    #                   type: "string" # One of: ["string", "number", "integer", "boolean", "array"], # required
    #                   required: false
    #                 }
    #               },
    #               require_confirmation: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #             }
    #           ]
    #         },
    #         parent_action_group_signature_params: {
    #           "String" => "String"
    #         }
    #       }
    #     ],
    #     knowledge_bases: [
    #       {
    #         knowledge_base_id: "KnowledgeBaseId", # required
    #         description: "ResourceDescription", # required
    #         retrieval_configuration: {
    #           vector_search_configuration: { # required
    #             number_of_results: 1,
    #             override_search_type: "HYBRID" # One of: ["HYBRID", "SEMANTIC"],
    #             filter: {
    #               # One of:
    #               equals: {
    #                 key: "FilterKey", # required
    #                 value: ""null"", # required
    #               },
    #               not_equals: {
    #                 key: "FilterKey", # required
    #                 value: ""null"", # required
    #               },
    #               greater_than: {
    #                 key: "FilterKey", # required
    #                 value: ""null"", # required
    #               },
    #               greater_than_or_equals: {
    #                 key: "FilterKey", # required
    #                 value: ""null"", # required
    #               },
    #               less_than: {
    #                 key: "FilterKey", # required
    #                 value: ""null"", # required
    #               },
    #               less_than_or_equals: {
    #                 key: "FilterKey", # required
    #                 value: ""null"", # required
    #               },
    #               in: {
    #                 key: "FilterKey", # required
    #                 value: ""null"", # required
    #               },
    #               not_in: {
    #                 key: "FilterKey", # required
    #                 value: ""null"", # required
    #               },
    #               starts_with: {
    #                 key: "FilterKey", # required
    #                 value: ""null"", # required
    #               },
    #               list_contains: {
    #                 key: "FilterKey", # required
    #                 value: ""null"", # required
    #               },
    #               string_contains: {
    #                 key: "FilterKey", # required
    #                 value: ""null"", # required
    #               },
    #               and_all: [{
    #                 # recursive RetrievalFilter
    #               }],
    #               or_all: [{
    #                 # recursive RetrievalFilter
    #               }]
    #             },
    #             reranking_configuration: {
    #               type: "BEDROCK_RERANKING_MODEL" # One of: ["BEDROCK_RERANKING_MODEL"], # required
    #               bedrock_reranking_configuration: {
    #                 model_configuration: { # required
    #                   model_arn: "BedrockRerankingModelArn", # required
    #                   additional_model_request_fields: {
    #                     "AdditionalModelRequestFieldsKey" => ""null""
    #                   }
    #                 },
    #                 number_of_reranked_results: 1,
    #                 metadata_configuration: {
    #                   selection_mode: "SELECTIVE" # One of: ["SELECTIVE", "ALL"], # required
    #                   selective_mode_configuration: {
    #                     # One of:
    #                     fields_to_include: [
    #                       {
    #                         field_name: "String", # required
    #                       }
    #                     ],
    #                     fields_to_exclude: [
    #                       {
    #                         field_name: "String", # required
    #                       }
    #                     ]
    #                   }
    #                 }
    #               }
    #             },
    #             implicit_filter_configuration: {
    #               metadata_attributes: [ # required
    #                 {
    #                   key: "String", # required
    #                   type: "STRING" # One of: ["STRING", "NUMBER", "BOOLEAN", "STRING_LIST"], # required
    #                   description: "String", # required
    #                 }
    #               ],
    #               model_arn: "BedrockModelArn", # required
    #             }
    #           }
    #         }
    #       }
    #     ],
    #     guardrail_configuration: {
    #       guardrail_identifier: "GuardrailIdentifierWithArn", # required
    #       guardrail_version: "GuardrailVersion", # required
    #     },
    #     prompt_override_configuration: {
    #       prompt_configurations: [ # required
    #         {
    #           prompt_type: "PRE_PROCESSING" # One of: ["PRE_PROCESSING", "ORCHESTRATION", "KNOWLEDGE_BASE_RESPONSE_GENERATION", "POST_PROCESSING", "ROUTING_CLASSIFIER"],
    #           prompt_creation_mode: "DEFAULT" # One of: ["DEFAULT", "OVERRIDDEN"],
    #           prompt_state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #           base_prompt_template: "BasePromptTemplate",
    #           inference_configuration: {
    #             temperature: 1.0,
    #             top_p: 1.0,
    #             top_k: 1,
    #             maximum_length: 1,
    #             stop_sequences: ["String"]
    #           },
    #           parser_mode: "DEFAULT" # One of: ["DEFAULT", "OVERRIDDEN"],
    #           foundation_model: "ModelIdentifier",
    #           additional_model_request_fields: ""null""
    #         }
    #       ],
    #       override_lambda: "LambdaResourceArn"
    #     },
    #     agent_collaboration: "SUPERVISOR" # One of: ["SUPERVISOR", "SUPERVISOR_ROUTER", "DISABLED"],
    #     collaborator_configurations: [
    #       {
    #         collaborator_name: "Name", # required
    #         collaborator_instruction: "CollaborationInstruction", # required
    #         agent_alias_arn: "AgentAliasArn",
    #         relay_conversation_history: "TO_COLLABORATOR" # One of: ["TO_COLLABORATOR", "DISABLED"]
    #       }
    #     ],
    #     agent_name: "Name",
    #     session_id: "SessionId", # required
    #     end_session: false,
    #     enable_trace: false,
    #     input_text: "InputText",
    #     streaming_configurations: {
    #       stream_final_response: false,
    #       apply_guardrail_interval: 1
    #     },
    #     prompt_creation_configurations: {
    #       previous_conversation_turns_to_include: 1,
    #       exclude_previous_thinking_steps: false
    #     },
    #     inline_session_state: {
    #       session_attributes: {
    #         "String" => "String"
    #       },
    #       prompt_session_attributes: {
    #         "String" => "String"
    #       },
    #       return_control_invocation_results: [{
    #         # One of:
    #         api_result: {
    #           action_group: "String", # required
    #           http_method: "String",
    #           api_path: "ApiPath",
    #           confirmation_state: "CONFIRM" # One of: ["CONFIRM", "DENY"],
    #           response_state: "FAILURE" # One of: ["FAILURE", "REPROMPT"],
    #           http_status_code: 1,
    #           response_body: {
    #             "String" => {
    #               body: "String",
    #               images: [
    #                 {
    #                   format: "png" # One of: ["png", "jpeg", "gif", "webp"], # required
    #                   source: { # required
    #                     # One of:
    #                     bytes: "data"
    #                   }
    #                 }
    #               ]
    #             }
    #           },
    #           agent_id: "String"
    #         },
    #         function_result: {
    #           action_group: "String", # required
    #           confirmation_state: "CONFIRM" # One of: ["CONFIRM", "DENY"],
    #           function: "String",
    #           response_body: {
    #             "String" => {
    #               body: "String",
    #               images: [
    #                 {
    #                   format: "png" # One of: ["png", "jpeg", "gif", "webp"], # required
    #                   source: { # required
    #                     # One of:
    #                     bytes: "data"
    #                   }
    #                 }
    #               ]
    #             }
    #           },
    #           response_state: "FAILURE" # One of: ["FAILURE", "REPROMPT"],
    #           agent_id: "String"
    #         }
    #       }],
    #       invocation_id: "String",
    #       files: [
    #         {
    #           name: "String", # required
    #           source: { # required
    #             source_type: "S3" # One of: ["S3", "BYTE_CONTENT"], # required
    #             s3_location: {
    #               uri: "S3Uri", # required
    #             },
    #             byte_content: {
    #               media_type: "MimeType", # required
    #               data: "data", # required
    #             }
    #           },
    #           use_case: "CODE_INTERPRETER" # One of: ["CODE_INTERPRETER", "CHAT"], # required
    #         }
    #       ],
    #       conversation_history: {
    #         messages: [
    #           {
    #             role: "user" # One of: ["user", "assistant"], # required
    #             content: [{ # required
    #               # One of:
    #               text: "String"
    #             }]
    #           }
    #         ]
    #       }
    #     },
    #     collaborators: [
    #       {
    #         customer_encryption_key_arn: "KmsKeyArn",
    #         foundation_model: "ModelIdentifier", # required
    #         instruction: "Instruction", # required
    #         idle_session_ttl_in_seconds: 1,
    #         action_groups: [
    #           {
    #             action_group_name: "ResourceName", # required
    #             description: "ResourceDescription",
    #             parent_action_group_signature: "AMAZON.UserInput" # One of: ["AMAZON.UserInput", "AMAZON.CodeInterpreter", "ANTHROPIC.Computer", "ANTHROPIC.Bash", "ANTHROPIC.TextEditor"],
    #             action_group_executor: {
    #               # One of:
    #               lambda: "LambdaResourceArn",
    #               custom_control: "RETURN_CONTROL" # One of: ["RETURN_CONTROL"]
    #             },
    #             api_schema: {
    #               # One of:
    #               s3: {
    #                 s3_bucket_name: "S3BucketName",
    #                 s3_object_key: "S3ObjectKey"
    #               },
    #               payload: "Payload"
    #             },
    #             function_schema: {
    #               # One of:
    #               functions: [
    #                 {
    #                   name: "ResourceName", # required
    #                   description: "FunctionDescription",
    #                   parameters: {
    #                     "ParameterName" => {
    #                       description: "ParameterDescription",
    #                       type: "string" # One of: ["string", "number", "integer", "boolean", "array"], # required
    #                       required: false
    #                     }
    #                   },
    #                   require_confirmation: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #                 }
    #               ]
    #             },
    #             parent_action_group_signature_params: {
    #               "String" => "String"
    #             }
    #           }
    #         ],
    #         knowledge_bases: [
    #           {
    #             knowledge_base_id: "KnowledgeBaseId", # required
    #             description: "ResourceDescription", # required
    #             retrieval_configuration: {
    #               vector_search_configuration: { # required
    #                 number_of_results: 1,
    #                 override_search_type: "HYBRID" # One of: ["HYBRID", "SEMANTIC"],
    #                 filter: {
    #                   # One of:
    #                   equals: {
    #                     key: "FilterKey", # required
    #                     value: ""null"", # required
    #                   },
    #                   not_equals: {
    #                     key: "FilterKey", # required
    #                     value: ""null"", # required
    #                   },
    #                   greater_than: {
    #                     key: "FilterKey", # required
    #                     value: ""null"", # required
    #                   },
    #                   greater_than_or_equals: {
    #                     key: "FilterKey", # required
    #                     value: ""null"", # required
    #                   },
    #                   less_than: {
    #                     key: "FilterKey", # required
    #                     value: ""null"", # required
    #                   },
    #                   less_than_or_equals: {
    #                     key: "FilterKey", # required
    #                     value: ""null"", # required
    #                   },
    #                   in: {
    #                     key: "FilterKey", # required
    #                     value: ""null"", # required
    #                   },
    #                   not_in: {
    #                     key: "FilterKey", # required
    #                     value: ""null"", # required
    #                   },
    #                   starts_with: {
    #                     key: "FilterKey", # required
    #                     value: ""null"", # required
    #                   },
    #                   list_contains: {
    #                     key: "FilterKey", # required
    #                     value: ""null"", # required
    #                   },
    #                   string_contains: {
    #                     key: "FilterKey", # required
    #                     value: ""null"", # required
    #                   },
    #                   and_all: [{
    #                     # recursive RetrievalFilter
    #                   }],
    #                   or_all: [{
    #                     # recursive RetrievalFilter
    #                   }]
    #                 },
    #                 reranking_configuration: {
    #                   type: "BEDROCK_RERANKING_MODEL" # One of: ["BEDROCK_RERANKING_MODEL"], # required
    #                   bedrock_reranking_configuration: {
    #                     model_configuration: { # required
    #                       model_arn: "BedrockRerankingModelArn", # required
    #                       additional_model_request_fields: {
    #                         "AdditionalModelRequestFieldsKey" => ""null""
    #                       }
    #                     },
    #                     number_of_reranked_results: 1,
    #                     metadata_configuration: {
    #                       selection_mode: "SELECTIVE" # One of: ["SELECTIVE", "ALL"], # required
    #                       selective_mode_configuration: {
    #                         # One of:
    #                         fields_to_include: [
    #                           {
    #                             field_name: "String", # required
    #                           }
    #                         ],
    #                         fields_to_exclude: [
    #                           {
    #                             field_name: "String", # required
    #                           }
    #                         ]
    #                       }
    #                     }
    #                   }
    #                 },
    #                 implicit_filter_configuration: {
    #                   metadata_attributes: [ # required
    #                     {
    #                       key: "String", # required
    #                       type: "STRING" # One of: ["STRING", "NUMBER", "BOOLEAN", "STRING_LIST"], # required
    #                       description: "String", # required
    #                     }
    #                   ],
    #                   model_arn: "BedrockModelArn", # required
    #                 }
    #               }
    #             }
    #           }
    #         ],
    #         guardrail_configuration: {
    #           guardrail_identifier: "GuardrailIdentifierWithArn", # required
    #           guardrail_version: "GuardrailVersion", # required
    #         },
    #         prompt_override_configuration: {
    #           prompt_configurations: [ # required
    #             {
    #               prompt_type: "PRE_PROCESSING" # One of: ["PRE_PROCESSING", "ORCHESTRATION", "KNOWLEDGE_BASE_RESPONSE_GENERATION", "POST_PROCESSING", "ROUTING_CLASSIFIER"],
    #               prompt_creation_mode: "DEFAULT" # One of: ["DEFAULT", "OVERRIDDEN"],
    #               prompt_state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #               base_prompt_template: "BasePromptTemplate",
    #               inference_configuration: {
    #                 temperature: 1.0,
    #                 top_p: 1.0,
    #                 top_k: 1,
    #                 maximum_length: 1,
    #                 stop_sequences: ["String"]
    #               },
    #               parser_mode: "DEFAULT" # One of: ["DEFAULT", "OVERRIDDEN"],
    #               foundation_model: "ModelIdentifier",
    #               additional_model_request_fields: ""null""
    #             }
    #           ],
    #           override_lambda: "LambdaResourceArn"
    #         },
    #         agent_collaboration: "SUPERVISOR" # One of: ["SUPERVISOR", "SUPERVISOR_ROUTER", "DISABLED"],
    #         collaborator_configurations: [
    #           {
    #             collaborator_name: "Name", # required
    #             collaborator_instruction: "CollaborationInstruction", # required
    #             agent_alias_arn: "AgentAliasArn",
    #             relay_conversation_history: "TO_COLLABORATOR" # One of: ["TO_COLLABORATOR", "DISABLED"]
    #           }
    #         ],
    #         agent_name: "Name"
    #       }
    #     ],
    #     bedrock_model_configurations: {
    #       performance_config: {
    #         latency: "standard" # One of: ["standard", "optimized"]
    #       }
    #     },
    #     orchestration_type: "DEFAULT" # One of: ["DEFAULT", "CUSTOM_ORCHESTRATION"],
    #     custom_orchestration: {
    #       executor: {
    #         # One of:
    #         lambda: "LambdaArn"
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.invoke_inline_agent(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     completion: { # required
    #       # One of:
    #       chunk: {
    #         bytes: "data",
    #         attribution: {
    #           citations: [
    #             {
    #               generated_response_part: {
    #                 text_response_part: {
    #                   text: "String",
    #                   span: {
    #                     start: 1,
    #                     end: 1
    #                   }
    #                 }
    #               },
    #               retrieved_references: [
    #                 {
    #                   content: {
    #                     type: "TEXT" # One of: ["TEXT", "IMAGE", "ROW"],
    #                     text: "String",
    #                     byte_content: "String",
    #                     row: [
    #                       {
    #                         column_name: "String",
    #                         column_value: "String",
    #                         type: "BLOB" # One of: ["BLOB", "BOOLEAN", "DOUBLE", "NULL", "LONG", "STRING"]
    #                       }
    #                     ]
    #                   },
    #                   location: {
    #                     type: "S3" # One of: ["S3", "WEB", "CONFLUENCE", "SALESFORCE", "SHAREPOINT", "CUSTOM", "KENDRA", "SQL"], # required
    #                     s3_location: {
    #                       uri: "String"
    #                     },
    #                     web_location: {
    #                       url: "String"
    #                     },
    #                     confluence_location: {
    #                       url: "String"
    #                     },
    #                     salesforce_location: {
    #                       url: "String"
    #                     },
    #                     share_point_location: {
    #                       url: "String"
    #                     },
    #                     custom_document_location: {
    #                       id: "String"
    #                     },
    #                     kendra_document_location: {
    #                       uri: "String"
    #                     },
    #                     sql_location: {
    #                       query: "String"
    #                     }
    #                   },
    #                   metadata: {
    #                     "RetrievalResultMetadataKey" => ""null""
    #                   }
    #                 }
    #               ]
    #             }
    #           ]
    #         }
    #       },
    #       trace: {
    #         session_id: "SessionId",
    #         trace: {
    #           # One of:
    #           guardrail_trace: {
    #             action: "INTERVENED" # One of: ["INTERVENED", "NONE"],
    #             trace_id: "TraceId",
    #             input_assessments: [
    #               {
    #                 topic_policy: {
    #                   topics: [
    #                     {
    #                       name: "String",
    #                       type: "DENY" # One of: ["DENY"],
    #                       action: "BLOCKED" # One of: ["BLOCKED"]
    #                     }
    #                   ]
    #                 },
    #                 content_policy: {
    #                   filters: [
    #                     {
    #                       type: "INSULTS" # One of: ["INSULTS", "HATE", "SEXUAL", "VIOLENCE", "MISCONDUCT", "PROMPT_ATTACK"],
    #                       confidence: "NONE" # One of: ["NONE", "LOW", "MEDIUM", "HIGH"],
    #                       action: "BLOCKED" # One of: ["BLOCKED"]
    #                     }
    #                   ]
    #                 },
    #                 word_policy: {
    #                   custom_words: [
    #                     {
    #                       match: "String",
    #                       action: "BLOCKED" # One of: ["BLOCKED"]
    #                     }
    #                   ],
    #                   managed_word_lists: [
    #                     {
    #                       match: "String",
    #                       type: "PROFANITY" # One of: ["PROFANITY"],
    #                       action: "BLOCKED" # One of: ["BLOCKED"]
    #                     }
    #                   ]
    #                 },
    #                 sensitive_information_policy: {
    #                   pii_entities: [
    #                     {
    #                       type: "ADDRESS" # One of: ["ADDRESS", "AGE", "AWS_ACCESS_KEY", "AWS_SECRET_KEY", "CA_HEALTH_NUMBER", "CA_SOCIAL_INSURANCE_NUMBER", "CREDIT_DEBIT_CARD_CVV", "CREDIT_DEBIT_CARD_EXPIRY", "CREDIT_DEBIT_CARD_NUMBER", "DRIVER_ID", "EMAIL", "INTERNATIONAL_BANK_ACCOUNT_NUMBER", "IP_ADDRESS", "LICENSE_PLATE", "MAC_ADDRESS", "NAME", "PASSWORD", "PHONE", "PIN", "SWIFT_CODE", "UK_NATIONAL_HEALTH_SERVICE_NUMBER", "UK_NATIONAL_INSURANCE_NUMBER", "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER", "URL", "USERNAME", "US_BANK_ACCOUNT_NUMBER", "US_BANK_ROUTING_NUMBER", "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER", "US_PASSPORT_NUMBER", "US_SOCIAL_SECURITY_NUMBER", "VEHICLE_IDENTIFICATION_NUMBER"],
    #                       match: "String",
    #                       action: "BLOCKED" # One of: ["BLOCKED", "ANONYMIZED"]
    #                     }
    #                   ],
    #                   regexes: [
    #                     {
    #                       name: "String",
    #                       regex: "String",
    #                       match: "String",
    #                       action: "BLOCKED" # One of: ["BLOCKED", "ANONYMIZED"]
    #                     }
    #                   ]
    #                 }
    #               }
    #             ],
    #             output_assessments: [
    #               {
    #                 topic_policy: {
    #                   topics: [
    #                     {
    #                       name: "String",
    #                       type: "DENY" # One of: ["DENY"],
    #                       action: "BLOCKED" # One of: ["BLOCKED"]
    #                     }
    #                   ]
    #                 },
    #                 content_policy: {
    #                   filters: [
    #                     {
    #                       type: "INSULTS" # One of: ["INSULTS", "HATE", "SEXUAL", "VIOLENCE", "MISCONDUCT", "PROMPT_ATTACK"],
    #                       confidence: "NONE" # One of: ["NONE", "LOW", "MEDIUM", "HIGH"],
    #                       action: "BLOCKED" # One of: ["BLOCKED"]
    #                     }
    #                   ]
    #                 },
    #                 word_policy: {
    #                   custom_words: [
    #                     {
    #                       match: "String",
    #                       action: "BLOCKED" # One of: ["BLOCKED"]
    #                     }
    #                   ],
    #                   managed_word_lists: [
    #                     {
    #                       match: "String",
    #                       type: "PROFANITY" # One of: ["PROFANITY"],
    #                       action: "BLOCKED" # One of: ["BLOCKED"]
    #                     }
    #                   ]
    #                 },
    #                 sensitive_information_policy: {
    #                   pii_entities: [
    #                     {
    #                       type: "ADDRESS" # One of: ["ADDRESS", "AGE", "AWS_ACCESS_KEY", "AWS_SECRET_KEY", "CA_HEALTH_NUMBER", "CA_SOCIAL_INSURANCE_NUMBER", "CREDIT_DEBIT_CARD_CVV", "CREDIT_DEBIT_CARD_EXPIRY", "CREDIT_DEBIT_CARD_NUMBER", "DRIVER_ID", "EMAIL", "INTERNATIONAL_BANK_ACCOUNT_NUMBER", "IP_ADDRESS", "LICENSE_PLATE", "MAC_ADDRESS", "NAME", "PASSWORD", "PHONE", "PIN", "SWIFT_CODE", "UK_NATIONAL_HEALTH_SERVICE_NUMBER", "UK_NATIONAL_INSURANCE_NUMBER", "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER", "URL", "USERNAME", "US_BANK_ACCOUNT_NUMBER", "US_BANK_ROUTING_NUMBER", "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER", "US_PASSPORT_NUMBER", "US_SOCIAL_SECURITY_NUMBER", "VEHICLE_IDENTIFICATION_NUMBER"],
    #                       match: "String",
    #                       action: "BLOCKED" # One of: ["BLOCKED", "ANONYMIZED"]
    #                     }
    #                   ],
    #                   regexes: [
    #                     {
    #                       name: "String",
    #                       regex: "String",
    #                       match: "String",
    #                       action: "BLOCKED" # One of: ["BLOCKED", "ANONYMIZED"]
    #                     }
    #                   ]
    #                 }
    #               }
    #             ],
    #             metadata: {
    #               start_time: Time.now,
    #               end_time: Time.now,
    #               total_time_ms: 1,
    #               operation_total_time_ms: 1,
    #               client_request_id: "String",
    #               usage: {
    #                 input_tokens: 1,
    #                 output_tokens: 1
    #               }
    #             }
    #           },
    #           pre_processing_trace: {
    #             # One of:
    #             model_invocation_input: {
    #               trace_id: "TraceId",
    #               text: "PromptText",
    #               type: "PRE_PROCESSING" # One of: ["PRE_PROCESSING", "ORCHESTRATION", "KNOWLEDGE_BASE_RESPONSE_GENERATION", "POST_PROCESSING", "ROUTING_CLASSIFIER"],
    #               override_lambda: "LambdaArn",
    #               prompt_creation_mode: "DEFAULT" # One of: ["DEFAULT", "OVERRIDDEN"],
    #               inference_configuration: {
    #                 temperature: 1.0,
    #                 top_p: 1.0,
    #                 top_k: 1,
    #                 maximum_length: 1,
    #                 stop_sequences: ["String"]
    #               },
    #               parser_mode: "DEFAULT" # One of: ["DEFAULT", "OVERRIDDEN"],
    #               foundation_model: "ModelIdentifier"
    #             },
    #             model_invocation_output: {
    #               trace_id: "TraceId",
    #               parsed_response: {
    #                 rationale: "RationaleString",
    #                 is_valid: false
    #               },
    #               raw_response: {
    #                 content: "String"
    #               },
    #               metadata: {
    #                 start_time: Time.now,
    #                 end_time: Time.now,
    #                 total_time_ms: 1,
    #                 operation_total_time_ms: 1,
    #                 client_request_id: "String",
    #                 usage: {
    #                   input_tokens: 1,
    #                   output_tokens: 1
    #                 }
    #               },
    #               reasoning_content: {
    #                 # One of:
    #                 reasoning_text: {
    #                   text: "String", # required
    #                   signature: "String"
    #                 },
    #                 redacted_content: "data"
    #               }
    #             }
    #           },
    #           orchestration_trace: {
    #             # One of:
    #             rationale: {
    #               trace_id: "TraceId",
    #               text: "RationaleString"
    #             },
    #             invocation_input: {
    #               trace_id: "TraceId",
    #               invocation_type: "ACTION_GROUP" # One of: ["ACTION_GROUP", "KNOWLEDGE_BASE", "FINISH", "ACTION_GROUP_CODE_INTERPRETER", "AGENT_COLLABORATOR"],
    #               action_group_invocation_input: {
    #                 action_group_name: "ActionGroupName",
    #                 verb: "Verb",
    #                 api_path: "ApiPath",
    #                 parameters: [
    #                   {
    #                     name: "String",
    #                     type: "String",
    #                     value: "String"
    #                   }
    #                 ],
    #                 request_body: {
    #                   content: {
    #                     "String" => [
    #                       {
    #                         name: "String",
    #                         type: "String",
    #                         value: "String"
    #                       }
    #                     ]
    #                   }
    #                 },
    #                 function: "Function",
    #                 execution_type: "LAMBDA" # One of: ["LAMBDA", "RETURN_CONTROL"],
    #                 invocation_id: "String"
    #               },
    #               knowledge_base_lookup_input: {
    #                 text: "KnowledgeBaseLookupInputString",
    #                 knowledge_base_id: "TraceKnowledgeBaseId"
    #               },
    #               code_interpreter_invocation_input: {
    #                 code: "String",
    #                 files: ["String"]
    #               },
    #               agent_collaborator_invocation_input: {
    #                 agent_collaborator_name: "String",
    #                 agent_collaborator_alias_arn: "AgentAliasArn",
    #                 input: {
    #                   type: "TEXT" # One of: ["TEXT", "RETURN_CONTROL"],
    #                   text: "AgentCollaboratorPayloadString",
    #                   return_control_results: {
    #                     invocation_id: "String",
    #                     return_control_invocation_results: [{
    #                       # One of:
    #                       api_result: {
    #                         action_group: "String", # required
    #                         http_method: "String",
    #                         api_path: "ApiPath",
    #                         confirmation_state: "CONFIRM" # One of: ["CONFIRM", "DENY"],
    #                         response_state: "FAILURE" # One of: ["FAILURE", "REPROMPT"],
    #                         http_status_code: 1,
    #                         response_body: {
    #                           "String" => {
    #                             body: "String",
    #                             images: [
    #                               {
    #                                 format: "png" # One of: ["png", "jpeg", "gif", "webp"], # required
    #                                 source: { # required
    #                                   # One of:
    #                                   bytes: "data"
    #                                 }
    #                               }
    #                             ]
    #                           }
    #                         },
    #                         agent_id: "String"
    #                       },
    #                       function_result: {
    #                         action_group: "String", # required
    #                         confirmation_state: "CONFIRM" # One of: ["CONFIRM", "DENY"],
    #                         function: "String",
    #                         response_body: {
    #                           "String" => {
    #                             body: "String",
    #                             images: [
    #                               {
    #                                 format: "png" # One of: ["png", "jpeg", "gif", "webp"], # required
    #                                 source: { # required
    #                                   # One of:
    #                                   bytes: "data"
    #                                 }
    #                               }
    #                             ]
    #                           }
    #                         },
    #                         response_state: "FAILURE" # One of: ["FAILURE", "REPROMPT"],
    #                         agent_id: "String"
    #                       }
    #                     }]
    #                   }
    #                 }
    #               }
    #             },
    #             observation: {
    #               trace_id: "TraceId",
    #               type: "ACTION_GROUP" # One of: ["ACTION_GROUP", "AGENT_COLLABORATOR", "KNOWLEDGE_BASE", "FINISH", "ASK_USER", "REPROMPT"],
    #               action_group_invocation_output: {
    #                 text: "ActionGroupOutputString",
    #                 metadata: {
    #                   start_time: Time.now,
    #                   end_time: Time.now,
    #                   total_time_ms: 1,
    #                   operation_total_time_ms: 1,
    #                   client_request_id: "String",
    #                   usage: {
    #                     input_tokens: 1,
    #                     output_tokens: 1
    #                   }
    #                 }
    #               },
    #               agent_collaborator_invocation_output: {
    #                 agent_collaborator_name: "String",
    #                 agent_collaborator_alias_arn: "AgentAliasArn",
    #                 output: {
    #                   type: "TEXT" # One of: ["TEXT", "RETURN_CONTROL"],
    #                   text: "AgentCollaboratorPayloadString",
    #                   return_control_payload: {
    #                     invocation_inputs: [{
    #                       # One of:
    #                       api_invocation_input: {
    #                         action_group: "String", # required
    #                         http_method: "String",
    #                         api_path: "ApiPath",
    #                         parameters: [
    #                           {
    #                             name: "String",
    #                             type: "String",
    #                             value: "String"
    #                           }
    #                         ],
    #                         request_body: {
    #                           content: {
    #                             "String" => {
    #                               properties: [
    #                                 {
    #                                   name: "String",
    #                                   type: "String",
    #                                   value: "String"
    #                                 }
    #                               ]
    #                             }
    #                           }
    #                         },
    #                         action_invocation_type: "RESULT" # One of: ["RESULT", "USER_CONFIRMATION", "USER_CONFIRMATION_AND_RESULT"],
    #                         agent_id: "String",
    #                         collaborator_name: "Name"
    #                       },
    #                       function_invocation_input: {
    #                         action_group: "String", # required
    #                         parameters: [
    #                           {
    #                             name: "String",
    #                             type: "String",
    #                             value: "String"
    #                           }
    #                         ],
    #                         function: "String",
    #                         action_invocation_type: "RESULT" # One of: ["RESULT", "USER_CONFIRMATION", "USER_CONFIRMATION_AND_RESULT"],
    #                         agent_id: "String",
    #                         collaborator_name: "Name"
    #                       }
    #                     }],
    #                     invocation_id: "String"
    #                   }
    #                 },
    #                 metadata: {
    #                   start_time: Time.now,
    #                   end_time: Time.now,
    #                   total_time_ms: 1,
    #                   operation_total_time_ms: 1,
    #                   client_request_id: "String",
    #                   usage: {
    #                     input_tokens: 1,
    #                     output_tokens: 1
    #                   }
    #                 }
    #               },
    #               knowledge_base_lookup_output: {
    #                 retrieved_references: [
    #                   {
    #                     content: {
    #                       type: "TEXT" # One of: ["TEXT", "IMAGE", "ROW"],
    #                       text: "String",
    #                       byte_content: "String",
    #                       row: [
    #                         {
    #                           column_name: "String",
    #                           column_value: "String",
    #                           type: "BLOB" # One of: ["BLOB", "BOOLEAN", "DOUBLE", "NULL", "LONG", "STRING"]
    #                         }
    #                       ]
    #                     },
    #                     location: {
    #                       type: "S3" # One of: ["S3", "WEB", "CONFLUENCE", "SALESFORCE", "SHAREPOINT", "CUSTOM", "KENDRA", "SQL"], # required
    #                       s3_location: {
    #                         uri: "String"
    #                       },
    #                       web_location: {
    #                         url: "String"
    #                       },
    #                       confluence_location: {
    #                         url: "String"
    #                       },
    #                       salesforce_location: {
    #                         url: "String"
    #                       },
    #                       share_point_location: {
    #                         url: "String"
    #                       },
    #                       custom_document_location: {
    #                         id: "String"
    #                       },
    #                       kendra_document_location: {
    #                         uri: "String"
    #                       },
    #                       sql_location: {
    #                         query: "String"
    #                       }
    #                     },
    #                     metadata: {
    #                       "RetrievalResultMetadataKey" => ""null""
    #                     }
    #                   }
    #                 ],
    #                 metadata: {
    #                   start_time: Time.now,
    #                   end_time: Time.now,
    #                   total_time_ms: 1,
    #                   operation_total_time_ms: 1,
    #                   client_request_id: "String",
    #                   usage: {
    #                     input_tokens: 1,
    #                     output_tokens: 1
    #                   }
    #                 }
    #               },
    #               final_response: {
    #                 text: "FinalResponseString",
    #                 metadata: {
    #                   start_time: Time.now,
    #                   end_time: Time.now,
    #                   total_time_ms: 1,
    #                   operation_total_time_ms: 1,
    #                   client_request_id: "String",
    #                   usage: {
    #                     input_tokens: 1,
    #                     output_tokens: 1
    #                   }
    #                 }
    #               },
    #               reprompt_response: {
    #                 text: "String",
    #                 source: "ACTION_GROUP" # One of: ["ACTION_GROUP", "KNOWLEDGE_BASE", "PARSER"]
    #               },
    #               code_interpreter_invocation_output: {
    #                 execution_output: "String",
    #                 execution_error: "String",
    #                 files: ["String"],
    #                 execution_timeout: false,
    #                 metadata: {
    #                   start_time: Time.now,
    #                   end_time: Time.now,
    #                   total_time_ms: 1,
    #                   operation_total_time_ms: 1,
    #                   client_request_id: "String",
    #                   usage: {
    #                     input_tokens: 1,
    #                     output_tokens: 1
    #                   }
    #                 }
    #               }
    #             },
    #             model_invocation_input: {
    #               trace_id: "TraceId",
    #               text: "PromptText",
    #               type: "PRE_PROCESSING" # One of: ["PRE_PROCESSING", "ORCHESTRATION", "KNOWLEDGE_BASE_RESPONSE_GENERATION", "POST_PROCESSING", "ROUTING_CLASSIFIER"],
    #               override_lambda: "LambdaArn",
    #               prompt_creation_mode: "DEFAULT" # One of: ["DEFAULT", "OVERRIDDEN"],
    #               inference_configuration: {
    #                 temperature: 1.0,
    #                 top_p: 1.0,
    #                 top_k: 1,
    #                 maximum_length: 1,
    #                 stop_sequences: ["String"]
    #               },
    #               parser_mode: "DEFAULT" # One of: ["DEFAULT", "OVERRIDDEN"],
    #               foundation_model: "ModelIdentifier"
    #             },
    #             model_invocation_output: {
    #               trace_id: "TraceId",
    #               raw_response: {
    #                 content: "String"
    #               },
    #               metadata: {
    #                 start_time: Time.now,
    #                 end_time: Time.now,
    #                 total_time_ms: 1,
    #                 operation_total_time_ms: 1,
    #                 client_request_id: "String",
    #                 usage: {
    #                   input_tokens: 1,
    #                   output_tokens: 1
    #                 }
    #               },
    #               reasoning_content: {
    #                 # One of:
    #                 reasoning_text: {
    #                   text: "String", # required
    #                   signature: "String"
    #                 },
    #                 redacted_content: "data"
    #               }
    #             }
    #           },
    #           post_processing_trace: {
    #             # One of:
    #             model_invocation_input: {
    #               trace_id: "TraceId",
    #               text: "PromptText",
    #               type: "PRE_PROCESSING" # One of: ["PRE_PROCESSING", "ORCHESTRATION", "KNOWLEDGE_BASE_RESPONSE_GENERATION", "POST_PROCESSING", "ROUTING_CLASSIFIER"],
    #               override_lambda: "LambdaArn",
    #               prompt_creation_mode: "DEFAULT" # One of: ["DEFAULT", "OVERRIDDEN"],
    #               inference_configuration: {
    #                 temperature: 1.0,
    #                 top_p: 1.0,
    #                 top_k: 1,
    #                 maximum_length: 1,
    #                 stop_sequences: ["String"]
    #               },
    #               parser_mode: "DEFAULT" # One of: ["DEFAULT", "OVERRIDDEN"],
    #               foundation_model: "ModelIdentifier"
    #             },
    #             model_invocation_output: {
    #               trace_id: "TraceId",
    #               parsed_response: {
    #                 text: "OutputString"
    #               },
    #               raw_response: {
    #                 content: "String"
    #               },
    #               metadata: {
    #                 start_time: Time.now,
    #                 end_time: Time.now,
    #                 total_time_ms: 1,
    #                 operation_total_time_ms: 1,
    #                 client_request_id: "String",
    #                 usage: {
    #                   input_tokens: 1,
    #                   output_tokens: 1
    #                 }
    #               },
    #               reasoning_content: {
    #                 # One of:
    #                 reasoning_text: {
    #                   text: "String", # required
    #                   signature: "String"
    #                 },
    #                 redacted_content: "data"
    #               }
    #             }
    #           },
    #           routing_classifier_trace: {
    #             # One of:
    #             invocation_input: {
    #               trace_id: "TraceId",
    #               invocation_type: "ACTION_GROUP" # One of: ["ACTION_GROUP", "KNOWLEDGE_BASE", "FINISH", "ACTION_GROUP_CODE_INTERPRETER", "AGENT_COLLABORATOR"],
    #               action_group_invocation_input: {
    #                 action_group_name: "ActionGroupName",
    #                 verb: "Verb",
    #                 api_path: "ApiPath",
    #                 parameters: [
    #                   {
    #                     name: "String",
    #                     type: "String",
    #                     value: "String"
    #                   }
    #                 ],
    #                 request_body: {
    #                   content: {
    #                     "String" => [
    #                       {
    #                         name: "String",
    #                         type: "String",
    #                         value: "String"
    #                       }
    #                     ]
    #                   }
    #                 },
    #                 function: "Function",
    #                 execution_type: "LAMBDA" # One of: ["LAMBDA", "RETURN_CONTROL"],
    #                 invocation_id: "String"
    #               },
    #               knowledge_base_lookup_input: {
    #                 text: "KnowledgeBaseLookupInputString",
    #                 knowledge_base_id: "TraceKnowledgeBaseId"
    #               },
    #               code_interpreter_invocation_input: {
    #                 code: "String",
    #                 files: ["String"]
    #               },
    #               agent_collaborator_invocation_input: {
    #                 agent_collaborator_name: "String",
    #                 agent_collaborator_alias_arn: "AgentAliasArn",
    #                 input: {
    #                   type: "TEXT" # One of: ["TEXT", "RETURN_CONTROL"],
    #                   text: "AgentCollaboratorPayloadString",
    #                   return_control_results: {
    #                     invocation_id: "String",
    #                     return_control_invocation_results: [{
    #                       # One of:
    #                       api_result: {
    #                         action_group: "String", # required
    #                         http_method: "String",
    #                         api_path: "ApiPath",
    #                         confirmation_state: "CONFIRM" # One of: ["CONFIRM", "DENY"],
    #                         response_state: "FAILURE" # One of: ["FAILURE", "REPROMPT"],
    #                         http_status_code: 1,
    #                         response_body: {
    #                           "String" => {
    #                             body: "String",
    #                             images: [
    #                               {
    #                                 format: "png" # One of: ["png", "jpeg", "gif", "webp"], # required
    #                                 source: { # required
    #                                   # One of:
    #                                   bytes: "data"
    #                                 }
    #                               }
    #                             ]
    #                           }
    #                         },
    #                         agent_id: "String"
    #                       },
    #                       function_result: {
    #                         action_group: "String", # required
    #                         confirmation_state: "CONFIRM" # One of: ["CONFIRM", "DENY"],
    #                         function: "String",
    #                         response_body: {
    #                           "String" => {
    #                             body: "String",
    #                             images: [
    #                               {
    #                                 format: "png" # One of: ["png", "jpeg", "gif", "webp"], # required
    #                                 source: { # required
    #                                   # One of:
    #                                   bytes: "data"
    #                                 }
    #                               }
    #                             ]
    #                           }
    #                         },
    #                         response_state: "FAILURE" # One of: ["FAILURE", "REPROMPT"],
    #                         agent_id: "String"
    #                       }
    #                     }]
    #                   }
    #                 }
    #               }
    #             },
    #             observation: {
    #               trace_id: "TraceId",
    #               type: "ACTION_GROUP" # One of: ["ACTION_GROUP", "AGENT_COLLABORATOR", "KNOWLEDGE_BASE", "FINISH", "ASK_USER", "REPROMPT"],
    #               action_group_invocation_output: {
    #                 text: "ActionGroupOutputString",
    #                 metadata: {
    #                   start_time: Time.now,
    #                   end_time: Time.now,
    #                   total_time_ms: 1,
    #                   operation_total_time_ms: 1,
    #                   client_request_id: "String",
    #                   usage: {
    #                     input_tokens: 1,
    #                     output_tokens: 1
    #                   }
    #                 }
    #               },
    #               agent_collaborator_invocation_output: {
    #                 agent_collaborator_name: "String",
    #                 agent_collaborator_alias_arn: "AgentAliasArn",
    #                 output: {
    #                   type: "TEXT" # One of: ["TEXT", "RETURN_CONTROL"],
    #                   text: "AgentCollaboratorPayloadString",
    #                   return_control_payload: {
    #                     invocation_inputs: [{
    #                       # One of:
    #                       api_invocation_input: {
    #                         action_group: "String", # required
    #                         http_method: "String",
    #                         api_path: "ApiPath",
    #                         parameters: [
    #                           {
    #                             name: "String",
    #                             type: "String",
    #                             value: "String"
    #                           }
    #                         ],
    #                         request_body: {
    #                           content: {
    #                             "String" => {
    #                               properties: [
    #                                 {
    #                                   name: "String",
    #                                   type: "String",
    #                                   value: "String"
    #                                 }
    #                               ]
    #                             }
    #                           }
    #                         },
    #                         action_invocation_type: "RESULT" # One of: ["RESULT", "USER_CONFIRMATION", "USER_CONFIRMATION_AND_RESULT"],
    #                         agent_id: "String",
    #                         collaborator_name: "Name"
    #                       },
    #                       function_invocation_input: {
    #                         action_group: "String", # required
    #                         parameters: [
    #                           {
    #                             name: "String",
    #                             type: "String",
    #                             value: "String"
    #                           }
    #                         ],
    #                         function: "String",
    #                         action_invocation_type: "RESULT" # One of: ["RESULT", "USER_CONFIRMATION", "USER_CONFIRMATION_AND_RESULT"],
    #                         agent_id: "String",
    #                         collaborator_name: "Name"
    #                       }
    #                     }],
    #                     invocation_id: "String"
    #                   }
    #                 },
    #                 metadata: {
    #                   start_time: Time.now,
    #                   end_time: Time.now,
    #                   total_time_ms: 1,
    #                   operation_total_time_ms: 1,
    #                   client_request_id: "String",
    #                   usage: {
    #                     input_tokens: 1,
    #                     output_tokens: 1
    #                   }
    #                 }
    #               },
    #               knowledge_base_lookup_output: {
    #                 retrieved_references: [
    #                   {
    #                     content: {
    #                       type: "TEXT" # One of: ["TEXT", "IMAGE", "ROW"],
    #                       text: "String",
    #                       byte_content: "String",
    #                       row: [
    #                         {
    #                           column_name: "String",
    #                           column_value: "String",
    #                           type: "BLOB" # One of: ["BLOB", "BOOLEAN", "DOUBLE", "NULL", "LONG", "STRING"]
    #                         }
    #                       ]
    #                     },
    #                     location: {
    #                       type: "S3" # One of: ["S3", "WEB", "CONFLUENCE", "SALESFORCE", "SHAREPOINT", "CUSTOM", "KENDRA", "SQL"], # required
    #                       s3_location: {
    #                         uri: "String"
    #                       },
    #                       web_location: {
    #                         url: "String"
    #                       },
    #                       confluence_location: {
    #                         url: "String"
    #                       },
    #                       salesforce_location: {
    #                         url: "String"
    #                       },
    #                       share_point_location: {
    #                         url: "String"
    #                       },
    #                       custom_document_location: {
    #                         id: "String"
    #                       },
    #                       kendra_document_location: {
    #                         uri: "String"
    #                       },
    #                       sql_location: {
    #                         query: "String"
    #                       }
    #                     },
    #                     metadata: {
    #                       "RetrievalResultMetadataKey" => ""null""
    #                     }
    #                   }
    #                 ],
    #                 metadata: {
    #                   start_time: Time.now,
    #                   end_time: Time.now,
    #                   total_time_ms: 1,
    #                   operation_total_time_ms: 1,
    #                   client_request_id: "String",
    #                   usage: {
    #                     input_tokens: 1,
    #                     output_tokens: 1
    #                   }
    #                 }
    #               },
    #               final_response: {
    #                 text: "FinalResponseString",
    #                 metadata: {
    #                   start_time: Time.now,
    #                   end_time: Time.now,
    #                   total_time_ms: 1,
    #                   operation_total_time_ms: 1,
    #                   client_request_id: "String",
    #                   usage: {
    #                     input_tokens: 1,
    #                     output_tokens: 1
    #                   }
    #                 }
    #               },
    #               reprompt_response: {
    #                 text: "String",
    #                 source: "ACTION_GROUP" # One of: ["ACTION_GROUP", "KNOWLEDGE_BASE", "PARSER"]
    #               },
    #               code_interpreter_invocation_output: {
    #                 execution_output: "String",
    #                 execution_error: "String",
    #                 files: ["String"],
    #                 execution_timeout: false,
    #                 metadata: {
    #                   start_time: Time.now,
    #                   end_time: Time.now,
    #                   total_time_ms: 1,
    #                   operation_total_time_ms: 1,
    #                   client_request_id: "String",
    #                   usage: {
    #                     input_tokens: 1,
    #                     output_tokens: 1
    #                   }
    #                 }
    #               }
    #             },
    #             model_invocation_input: {
    #               trace_id: "TraceId",
    #               text: "PromptText",
    #               type: "PRE_PROCESSING" # One of: ["PRE_PROCESSING", "ORCHESTRATION", "KNOWLEDGE_BASE_RESPONSE_GENERATION", "POST_PROCESSING", "ROUTING_CLASSIFIER"],
    #               override_lambda: "LambdaArn",
    #               prompt_creation_mode: "DEFAULT" # One of: ["DEFAULT", "OVERRIDDEN"],
    #               inference_configuration: {
    #                 temperature: 1.0,
    #                 top_p: 1.0,
    #                 top_k: 1,
    #                 maximum_length: 1,
    #                 stop_sequences: ["String"]
    #               },
    #               parser_mode: "DEFAULT" # One of: ["DEFAULT", "OVERRIDDEN"],
    #               foundation_model: "ModelIdentifier"
    #             },
    #             model_invocation_output: {
    #               trace_id: "TraceId",
    #               raw_response: {
    #                 content: "String"
    #               },
    #               metadata: {
    #                 start_time: Time.now,
    #                 end_time: Time.now,
    #                 total_time_ms: 1,
    #                 operation_total_time_ms: 1,
    #                 client_request_id: "String",
    #                 usage: {
    #                   input_tokens: 1,
    #                   output_tokens: 1
    #                 }
    #               }
    #             }
    #           },
    #           failure_trace: {
    #             trace_id: "TraceId",
    #             failure_reason: "FailureReasonString",
    #             failure_code: 1,
    #             metadata: {
    #               start_time: Time.now,
    #               end_time: Time.now,
    #               total_time_ms: 1,
    #               operation_total_time_ms: 1,
    #               client_request_id: "String",
    #               usage: {
    #                 input_tokens: 1,
    #                 output_tokens: 1
    #               }
    #             }
    #           },
    #           custom_orchestration_trace: {
    #             trace_id: "TraceId",
    #             event: {
    #               text: "String"
    #             }
    #           }
    #         },
    #         caller_chain: [{
    #           # One of:
    #           agent_alias_arn: "AgentAliasArn"
    #         }],
    #         event_time: Time.now,
    #         collaborator_name: "Name"
    #       },
    #       return_control: {
    #         invocation_inputs: [{
    #           # One of:
    #           api_invocation_input: {
    #             action_group: "String", # required
    #             http_method: "String",
    #             api_path: "ApiPath",
    #             parameters: [
    #               {
    #                 name: "String",
    #                 type: "String",
    #                 value: "String"
    #               }
    #             ],
    #             request_body: {
    #               content: {
    #                 "String" => {
    #                   properties: [
    #                     {
    #                       name: "String",
    #                       type: "String",
    #                       value: "String"
    #                     }
    #                   ]
    #                 }
    #               }
    #             },
    #             action_invocation_type: "RESULT" # One of: ["RESULT", "USER_CONFIRMATION", "USER_CONFIRMATION_AND_RESULT"],
    #             agent_id: "String",
    #             collaborator_name: "Name"
    #           },
    #           function_invocation_input: {
    #             action_group: "String", # required
    #             parameters: [
    #               {
    #                 name: "String",
    #                 type: "String",
    #                 value: "String"
    #               }
    #             ],
    #             function: "String",
    #             action_invocation_type: "RESULT" # One of: ["RESULT", "USER_CONFIRMATION", "USER_CONFIRMATION_AND_RESULT"],
    #             agent_id: "String",
    #             collaborator_name: "Name"
    #           }
    #         }],
    #         invocation_id: "String"
    #       },
    #       internal_server_exception: {
    #         message: "NonBlankString",
    #         reason: "String"
    #       },
    #       validation_exception: {
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
    #       access_denied_exception: {
    #         message: "NonBlankString"
    #       },
    #       conflict_exception: {
    #         message: "NonBlankString"
    #       },
    #       dependency_failed_exception: {
    #         message: "NonBlankString",
    #         resource_name: "NonBlankString"
    #       },
    #       bad_gateway_exception: {
    #         message: "NonBlankString",
    #         resource_name: "NonBlankString"
    #       },
    #       files: {
    #         files: [
    #           {
    #             name: "String",
    #             type: "MimeType",
    #             bytes: "data"
    #           }
    #         ]
    #       }
    #     },
    #     content_type: "MimeType", # required
    #     session_id: "SessionId", # required
    #   }
    # @return [Types::InvokeInlineAgentResponse]
    def invoke_inline_agent(params = {}, options = {})
      request = build_request(:invoke_inline_agent, params)
      request.send_request(options)
    end

    # <p>Lists events that occurred during a flow execution. Events provide detailed information about the execution progress, including node inputs and outputs, flow inputs and outputs, condition results, and failure events.</p> <note> <p>Flow executions is in preview release for Amazon Bedrock and is subject to change.</p> </note>
    # @param [Hash, Types::ListFlowExecutionEventsRequest] params
    # @option params [String] :flow_identifier
    #   <p>The unique identifier of the flow.</p>
    # @option params [String] :flow_alias_identifier
    #   <p>The unique identifier of the flow alias used for the execution.</p>
    # @option params [String] :execution_identifier
    #   <p>The unique identifier of the flow execution.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of events to return in a single response. If more events exist than the specified maxResults value, a token is included in the response so that the remaining results can be retrieved.</p>
    # @option params [String] :next_token
    #   <p>A token to retrieve the next set of results. This value is returned in the response if more results are available.</p>
    # @option params [String] :event_type
    #   <p>The type of events to retrieve. Specify <code>Node</code> for node-level events or <code>Flow</code> for flow-level events.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     flow_identifier: "FlowIdentifier", # required
    #     flow_alias_identifier: "FlowAliasIdentifier", # required
    #     execution_identifier: "FlowExecutionIdentifier", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #     event_type: "Node" # One of: ["Node", "Flow"], # required
    #   }
    #   options = {}
    #   response = client.list_flow_execution_events(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     flow_execution_events: [{ # required
    #       # One of:
    #       flow_input_event: {
    #         node_name: "NodeName", # required
    #         timestamp: Time.now, # required
    #         fields: [ # required
    #           {
    #             name: "NodeInputName", # required
    #             content: { # required
    #               # One of:
    #               document: ""null""
    #             }
    #           }
    #         ]
    #       },
    #       flow_output_event: {
    #         node_name: "NodeName", # required
    #         timestamp: Time.now, # required
    #         fields: [ # required
    #           {
    #             name: "NodeOutputName", # required
    #             content: { # required
    #               # One of:
    #               document: ""null""
    #             }
    #           }
    #         ]
    #       },
    #       node_input_event: {
    #         node_name: "NodeName", # required
    #         timestamp: Time.now, # required
    #         fields: [ # required
    #           {
    #             name: "NodeInputName", # required
    #             content: { # required
    #               # One of:
    #               document: ""null""
    #             },
    #             source: {
    #               node_name: "NodeName", # required
    #               output_field_name: "FlowNodeOutputName", # required
    #               expression: "FlowNodeInputExpression", # required
    #             },
    #             type: "String" # One of: ["String", "Number", "Boolean", "Object", "Array"],
    #             category: "LoopCondition" # One of: ["LoopCondition", "ReturnValueToLoopStart", "ExitLoop"],
    #             execution_chain: [
    #               {
    #                 node_name: "NodeName", # required
    #                 index: 1,
    #                 type: "Iterator" # One of: ["Iterator", "Loop"], # required
    #               }
    #             ]
    #           }
    #         ]
    #       },
    #       node_output_event: {
    #         node_name: "NodeName", # required
    #         timestamp: Time.now, # required
    #         fields: [ # required
    #           {
    #             name: "NodeOutputName", # required
    #             content: { # required
    #               # One of:
    #               document: ""null""
    #             },
    #             next: [
    #               {
    #                 node_name: "NodeName", # required
    #                 input_field_name: "FlowNodeInputName", # required
    #               }
    #             ],
    #             type: "String" # One of: ["String", "Number", "Boolean", "Object", "Array"]
    #           }
    #         ]
    #       },
    #       condition_result_event: {
    #         node_name: "NodeName", # required
    #         timestamp: Time.now, # required
    #         satisfied_conditions: [ # required
    #           {
    #             condition_name: "String", # required
    #           }
    #         ]
    #       },
    #       node_failure_event: {
    #         node_name: "NodeName", # required
    #         timestamp: Time.now, # required
    #         error_code: "VALIDATION" # One of: ["VALIDATION", "DEPENDENCY_FAILED", "BAD_GATEWAY", "INTERNAL_SERVER"], # required
    #         error_message: "String", # required
    #       },
    #       flow_failure_event: {
    #         timestamp: Time.now, # required
    #         error_code: "VALIDATION" # One of: ["VALIDATION", "INTERNAL_SERVER", "NODE_EXECUTION_FAILED"], # required
    #         error_message: "String", # required
    #       },
    #       node_action_event: {
    #         node_name: "NodeName", # required
    #         timestamp: Time.now, # required
    #         request_id: "String", # required
    #         service_name: "String", # required
    #         operation_name: "String", # required
    #         operation_request: ""null"",
    #         operation_response: ""null""
    #       },
    #       node_dependency_event: {
    #         node_name: "NodeName", # required
    #         timestamp: Time.now, # required
    #         trace_elements: { # required
    #           # One of:
    #           agent_traces: [
    #             {
    #               session_id: "SessionId",
    #               trace: {
    #                 # One of:
    #                 guardrail_trace: {
    #                   action: "INTERVENED" # One of: ["INTERVENED", "NONE"],
    #                   trace_id: "TraceId",
    #                   input_assessments: [
    #                     {
    #                       topic_policy: {
    #                         topics: [
    #                           {
    #                             name: "String",
    #                             type: "DENY" # One of: ["DENY"],
    #                             action: "BLOCKED" # One of: ["BLOCKED"]
    #                           }
    #                         ]
    #                       },
    #                       content_policy: {
    #                         filters: [
    #                           {
    #                             type: "INSULTS" # One of: ["INSULTS", "HATE", "SEXUAL", "VIOLENCE", "MISCONDUCT", "PROMPT_ATTACK"],
    #                             confidence: "NONE" # One of: ["NONE", "LOW", "MEDIUM", "HIGH"],
    #                             action: "BLOCKED" # One of: ["BLOCKED"]
    #                           }
    #                         ]
    #                       },
    #                       word_policy: {
    #                         custom_words: [
    #                           {
    #                             match: "String",
    #                             action: "BLOCKED" # One of: ["BLOCKED"]
    #                           }
    #                         ],
    #                         managed_word_lists: [
    #                           {
    #                             match: "String",
    #                             type: "PROFANITY" # One of: ["PROFANITY"],
    #                             action: "BLOCKED" # One of: ["BLOCKED"]
    #                           }
    #                         ]
    #                       },
    #                       sensitive_information_policy: {
    #                         pii_entities: [
    #                           {
    #                             type: "ADDRESS" # One of: ["ADDRESS", "AGE", "AWS_ACCESS_KEY", "AWS_SECRET_KEY", "CA_HEALTH_NUMBER", "CA_SOCIAL_INSURANCE_NUMBER", "CREDIT_DEBIT_CARD_CVV", "CREDIT_DEBIT_CARD_EXPIRY", "CREDIT_DEBIT_CARD_NUMBER", "DRIVER_ID", "EMAIL", "INTERNATIONAL_BANK_ACCOUNT_NUMBER", "IP_ADDRESS", "LICENSE_PLATE", "MAC_ADDRESS", "NAME", "PASSWORD", "PHONE", "PIN", "SWIFT_CODE", "UK_NATIONAL_HEALTH_SERVICE_NUMBER", "UK_NATIONAL_INSURANCE_NUMBER", "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER", "URL", "USERNAME", "US_BANK_ACCOUNT_NUMBER", "US_BANK_ROUTING_NUMBER", "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER", "US_PASSPORT_NUMBER", "US_SOCIAL_SECURITY_NUMBER", "VEHICLE_IDENTIFICATION_NUMBER"],
    #                             match: "String",
    #                             action: "BLOCKED" # One of: ["BLOCKED", "ANONYMIZED"]
    #                           }
    #                         ],
    #                         regexes: [
    #                           {
    #                             name: "String",
    #                             regex: "String",
    #                             match: "String",
    #                             action: "BLOCKED" # One of: ["BLOCKED", "ANONYMIZED"]
    #                           }
    #                         ]
    #                       }
    #                     }
    #                   ],
    #                   output_assessments: [
    #                     {
    #                       topic_policy: {
    #                         topics: [
    #                           {
    #                             name: "String",
    #                             type: "DENY" # One of: ["DENY"],
    #                             action: "BLOCKED" # One of: ["BLOCKED"]
    #                           }
    #                         ]
    #                       },
    #                       content_policy: {
    #                         filters: [
    #                           {
    #                             type: "INSULTS" # One of: ["INSULTS", "HATE", "SEXUAL", "VIOLENCE", "MISCONDUCT", "PROMPT_ATTACK"],
    #                             confidence: "NONE" # One of: ["NONE", "LOW", "MEDIUM", "HIGH"],
    #                             action: "BLOCKED" # One of: ["BLOCKED"]
    #                           }
    #                         ]
    #                       },
    #                       word_policy: {
    #                         custom_words: [
    #                           {
    #                             match: "String",
    #                             action: "BLOCKED" # One of: ["BLOCKED"]
    #                           }
    #                         ],
    #                         managed_word_lists: [
    #                           {
    #                             match: "String",
    #                             type: "PROFANITY" # One of: ["PROFANITY"],
    #                             action: "BLOCKED" # One of: ["BLOCKED"]
    #                           }
    #                         ]
    #                       },
    #                       sensitive_information_policy: {
    #                         pii_entities: [
    #                           {
    #                             type: "ADDRESS" # One of: ["ADDRESS", "AGE", "AWS_ACCESS_KEY", "AWS_SECRET_KEY", "CA_HEALTH_NUMBER", "CA_SOCIAL_INSURANCE_NUMBER", "CREDIT_DEBIT_CARD_CVV", "CREDIT_DEBIT_CARD_EXPIRY", "CREDIT_DEBIT_CARD_NUMBER", "DRIVER_ID", "EMAIL", "INTERNATIONAL_BANK_ACCOUNT_NUMBER", "IP_ADDRESS", "LICENSE_PLATE", "MAC_ADDRESS", "NAME", "PASSWORD", "PHONE", "PIN", "SWIFT_CODE", "UK_NATIONAL_HEALTH_SERVICE_NUMBER", "UK_NATIONAL_INSURANCE_NUMBER", "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER", "URL", "USERNAME", "US_BANK_ACCOUNT_NUMBER", "US_BANK_ROUTING_NUMBER", "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER", "US_PASSPORT_NUMBER", "US_SOCIAL_SECURITY_NUMBER", "VEHICLE_IDENTIFICATION_NUMBER"],
    #                             match: "String",
    #                             action: "BLOCKED" # One of: ["BLOCKED", "ANONYMIZED"]
    #                           }
    #                         ],
    #                         regexes: [
    #                           {
    #                             name: "String",
    #                             regex: "String",
    #                             match: "String",
    #                             action: "BLOCKED" # One of: ["BLOCKED", "ANONYMIZED"]
    #                           }
    #                         ]
    #                       }
    #                     }
    #                   ],
    #                   metadata: {
    #                     start_time: Time.now,
    #                     end_time: Time.now,
    #                     total_time_ms: 1,
    #                     operation_total_time_ms: 1,
    #                     client_request_id: "String",
    #                     usage: {
    #                       input_tokens: 1,
    #                       output_tokens: 1
    #                     }
    #                   }
    #                 },
    #                 pre_processing_trace: {
    #                   # One of:
    #                   model_invocation_input: {
    #                     trace_id: "TraceId",
    #                     text: "PromptText",
    #                     type: "PRE_PROCESSING" # One of: ["PRE_PROCESSING", "ORCHESTRATION", "KNOWLEDGE_BASE_RESPONSE_GENERATION", "POST_PROCESSING", "ROUTING_CLASSIFIER"],
    #                     override_lambda: "LambdaArn",
    #                     prompt_creation_mode: "DEFAULT" # One of: ["DEFAULT", "OVERRIDDEN"],
    #                     inference_configuration: {
    #                       temperature: 1.0,
    #                       top_p: 1.0,
    #                       top_k: 1,
    #                       maximum_length: 1,
    #                       stop_sequences: ["String"]
    #                     },
    #                     parser_mode: "DEFAULT" # One of: ["DEFAULT", "OVERRIDDEN"],
    #                     foundation_model: "ModelIdentifier"
    #                   },
    #                   model_invocation_output: {
    #                     trace_id: "TraceId",
    #                     parsed_response: {
    #                       rationale: "RationaleString",
    #                       is_valid: false
    #                     },
    #                     raw_response: {
    #                       content: "String"
    #                     },
    #                     metadata: {
    #                       start_time: Time.now,
    #                       end_time: Time.now,
    #                       total_time_ms: 1,
    #                       operation_total_time_ms: 1,
    #                       client_request_id: "String",
    #                       usage: {
    #                         input_tokens: 1,
    #                         output_tokens: 1
    #                       }
    #                     },
    #                     reasoning_content: {
    #                       # One of:
    #                       reasoning_text: {
    #                         text: "String", # required
    #                         signature: "String"
    #                       },
    #                       redacted_content: "data"
    #                     }
    #                   }
    #                 },
    #                 orchestration_trace: {
    #                   # One of:
    #                   rationale: {
    #                     trace_id: "TraceId",
    #                     text: "RationaleString"
    #                   },
    #                   invocation_input: {
    #                     trace_id: "TraceId",
    #                     invocation_type: "ACTION_GROUP" # One of: ["ACTION_GROUP", "KNOWLEDGE_BASE", "FINISH", "ACTION_GROUP_CODE_INTERPRETER", "AGENT_COLLABORATOR"],
    #                     action_group_invocation_input: {
    #                       action_group_name: "ActionGroupName",
    #                       verb: "Verb",
    #                       api_path: "ApiPath",
    #                       parameters: [
    #                         {
    #                           name: "String",
    #                           type: "String",
    #                           value: "String"
    #                         }
    #                       ],
    #                       request_body: {
    #                         content: {
    #                           "String" => [
    #                             {
    #                               name: "String",
    #                               type: "String",
    #                               value: "String"
    #                             }
    #                           ]
    #                         }
    #                       },
    #                       function: "Function",
    #                       execution_type: "LAMBDA" # One of: ["LAMBDA", "RETURN_CONTROL"],
    #                       invocation_id: "String"
    #                     },
    #                     knowledge_base_lookup_input: {
    #                       text: "KnowledgeBaseLookupInputString",
    #                       knowledge_base_id: "TraceKnowledgeBaseId"
    #                     },
    #                     code_interpreter_invocation_input: {
    #                       code: "String",
    #                       files: ["String"]
    #                     },
    #                     agent_collaborator_invocation_input: {
    #                       agent_collaborator_name: "String",
    #                       agent_collaborator_alias_arn: "AgentAliasArn",
    #                       input: {
    #                         type: "TEXT" # One of: ["TEXT", "RETURN_CONTROL"],
    #                         text: "AgentCollaboratorPayloadString",
    #                         return_control_results: {
    #                           invocation_id: "String",
    #                           return_control_invocation_results: [{
    #                             # One of:
    #                             api_result: {
    #                               action_group: "String", # required
    #                               http_method: "String",
    #                               api_path: "ApiPath",
    #                               confirmation_state: "CONFIRM" # One of: ["CONFIRM", "DENY"],
    #                               response_state: "FAILURE" # One of: ["FAILURE", "REPROMPT"],
    #                               http_status_code: 1,
    #                               response_body: {
    #                                 "String" => {
    #                                   body: "String",
    #                                   images: [
    #                                     {
    #                                       format: "png" # One of: ["png", "jpeg", "gif", "webp"], # required
    #                                       source: { # required
    #                                         # One of:
    #                                         bytes: "data"
    #                                       }
    #                                     }
    #                                   ]
    #                                 }
    #                               },
    #                               agent_id: "String"
    #                             },
    #                             function_result: {
    #                               action_group: "String", # required
    #                               confirmation_state: "CONFIRM" # One of: ["CONFIRM", "DENY"],
    #                               function: "String",
    #                               response_body: {
    #                                 "String" => {
    #                                   body: "String",
    #                                   images: [
    #                                     {
    #                                       format: "png" # One of: ["png", "jpeg", "gif", "webp"], # required
    #                                       source: { # required
    #                                         # One of:
    #                                         bytes: "data"
    #                                       }
    #                                     }
    #                                   ]
    #                                 }
    #                               },
    #                               response_state: "FAILURE" # One of: ["FAILURE", "REPROMPT"],
    #                               agent_id: "String"
    #                             }
    #                           }]
    #                         }
    #                       }
    #                     }
    #                   },
    #                   observation: {
    #                     trace_id: "TraceId",
    #                     type: "ACTION_GROUP" # One of: ["ACTION_GROUP", "AGENT_COLLABORATOR", "KNOWLEDGE_BASE", "FINISH", "ASK_USER", "REPROMPT"],
    #                     action_group_invocation_output: {
    #                       text: "ActionGroupOutputString",
    #                       metadata: {
    #                         start_time: Time.now,
    #                         end_time: Time.now,
    #                         total_time_ms: 1,
    #                         operation_total_time_ms: 1,
    #                         client_request_id: "String",
    #                         usage: {
    #                           input_tokens: 1,
    #                           output_tokens: 1
    #                         }
    #                       }
    #                     },
    #                     agent_collaborator_invocation_output: {
    #                       agent_collaborator_name: "String",
    #                       agent_collaborator_alias_arn: "AgentAliasArn",
    #                       output: {
    #                         type: "TEXT" # One of: ["TEXT", "RETURN_CONTROL"],
    #                         text: "AgentCollaboratorPayloadString",
    #                         return_control_payload: {
    #                           invocation_inputs: [{
    #                             # One of:
    #                             api_invocation_input: {
    #                               action_group: "String", # required
    #                               http_method: "String",
    #                               api_path: "ApiPath",
    #                               parameters: [
    #                                 {
    #                                   name: "String",
    #                                   type: "String",
    #                                   value: "String"
    #                                 }
    #                               ],
    #                               request_body: {
    #                                 content: {
    #                                   "String" => {
    #                                     properties: [
    #                                       {
    #                                         name: "String",
    #                                         type: "String",
    #                                         value: "String"
    #                                       }
    #                                     ]
    #                                   }
    #                                 }
    #                               },
    #                               action_invocation_type: "RESULT" # One of: ["RESULT", "USER_CONFIRMATION", "USER_CONFIRMATION_AND_RESULT"],
    #                               agent_id: "String",
    #                               collaborator_name: "Name"
    #                             },
    #                             function_invocation_input: {
    #                               action_group: "String", # required
    #                               parameters: [
    #                                 {
    #                                   name: "String",
    #                                   type: "String",
    #                                   value: "String"
    #                                 }
    #                               ],
    #                               function: "String",
    #                               action_invocation_type: "RESULT" # One of: ["RESULT", "USER_CONFIRMATION", "USER_CONFIRMATION_AND_RESULT"],
    #                               agent_id: "String",
    #                               collaborator_name: "Name"
    #                             }
    #                           }],
    #                           invocation_id: "String"
    #                         }
    #                       },
    #                       metadata: {
    #                         start_time: Time.now,
    #                         end_time: Time.now,
    #                         total_time_ms: 1,
    #                         operation_total_time_ms: 1,
    #                         client_request_id: "String",
    #                         usage: {
    #                           input_tokens: 1,
    #                           output_tokens: 1
    #                         }
    #                       }
    #                     },
    #                     knowledge_base_lookup_output: {
    #                       retrieved_references: [
    #                         {
    #                           content: {
    #                             type: "TEXT" # One of: ["TEXT", "IMAGE", "ROW"],
    #                             text: "String",
    #                             byte_content: "String",
    #                             row: [
    #                               {
    #                                 column_name: "String",
    #                                 column_value: "String",
    #                                 type: "BLOB" # One of: ["BLOB", "BOOLEAN", "DOUBLE", "NULL", "LONG", "STRING"]
    #                               }
    #                             ]
    #                           },
    #                           location: {
    #                             type: "S3" # One of: ["S3", "WEB", "CONFLUENCE", "SALESFORCE", "SHAREPOINT", "CUSTOM", "KENDRA", "SQL"], # required
    #                             s3_location: {
    #                               uri: "String"
    #                             },
    #                             web_location: {
    #                               url: "String"
    #                             },
    #                             confluence_location: {
    #                               url: "String"
    #                             },
    #                             salesforce_location: {
    #                               url: "String"
    #                             },
    #                             share_point_location: {
    #                               url: "String"
    #                             },
    #                             custom_document_location: {
    #                               id: "String"
    #                             },
    #                             kendra_document_location: {
    #                               uri: "String"
    #                             },
    #                             sql_location: {
    #                               query: "String"
    #                             }
    #                           },
    #                           metadata: {
    #                             "RetrievalResultMetadataKey" => ""null""
    #                           }
    #                         }
    #                       ],
    #                       metadata: {
    #                         start_time: Time.now,
    #                         end_time: Time.now,
    #                         total_time_ms: 1,
    #                         operation_total_time_ms: 1,
    #                         client_request_id: "String",
    #                         usage: {
    #                           input_tokens: 1,
    #                           output_tokens: 1
    #                         }
    #                       }
    #                     },
    #                     final_response: {
    #                       text: "FinalResponseString",
    #                       metadata: {
    #                         start_time: Time.now,
    #                         end_time: Time.now,
    #                         total_time_ms: 1,
    #                         operation_total_time_ms: 1,
    #                         client_request_id: "String",
    #                         usage: {
    #                           input_tokens: 1,
    #                           output_tokens: 1
    #                         }
    #                       }
    #                     },
    #                     reprompt_response: {
    #                       text: "String",
    #                       source: "ACTION_GROUP" # One of: ["ACTION_GROUP", "KNOWLEDGE_BASE", "PARSER"]
    #                     },
    #                     code_interpreter_invocation_output: {
    #                       execution_output: "String",
    #                       execution_error: "String",
    #                       files: ["String"],
    #                       execution_timeout: false,
    #                       metadata: {
    #                         start_time: Time.now,
    #                         end_time: Time.now,
    #                         total_time_ms: 1,
    #                         operation_total_time_ms: 1,
    #                         client_request_id: "String",
    #                         usage: {
    #                           input_tokens: 1,
    #                           output_tokens: 1
    #                         }
    #                       }
    #                     }
    #                   },
    #                   model_invocation_input: {
    #                     trace_id: "TraceId",
    #                     text: "PromptText",
    #                     type: "PRE_PROCESSING" # One of: ["PRE_PROCESSING", "ORCHESTRATION", "KNOWLEDGE_BASE_RESPONSE_GENERATION", "POST_PROCESSING", "ROUTING_CLASSIFIER"],
    #                     override_lambda: "LambdaArn",
    #                     prompt_creation_mode: "DEFAULT" # One of: ["DEFAULT", "OVERRIDDEN"],
    #                     inference_configuration: {
    #                       temperature: 1.0,
    #                       top_p: 1.0,
    #                       top_k: 1,
    #                       maximum_length: 1,
    #                       stop_sequences: ["String"]
    #                     },
    #                     parser_mode: "DEFAULT" # One of: ["DEFAULT", "OVERRIDDEN"],
    #                     foundation_model: "ModelIdentifier"
    #                   },
    #                   model_invocation_output: {
    #                     trace_id: "TraceId",
    #                     raw_response: {
    #                       content: "String"
    #                     },
    #                     metadata: {
    #                       start_time: Time.now,
    #                       end_time: Time.now,
    #                       total_time_ms: 1,
    #                       operation_total_time_ms: 1,
    #                       client_request_id: "String",
    #                       usage: {
    #                         input_tokens: 1,
    #                         output_tokens: 1
    #                       }
    #                     },
    #                     reasoning_content: {
    #                       # One of:
    #                       reasoning_text: {
    #                         text: "String", # required
    #                         signature: "String"
    #                       },
    #                       redacted_content: "data"
    #                     }
    #                   }
    #                 },
    #                 post_processing_trace: {
    #                   # One of:
    #                   model_invocation_input: {
    #                     trace_id: "TraceId",
    #                     text: "PromptText",
    #                     type: "PRE_PROCESSING" # One of: ["PRE_PROCESSING", "ORCHESTRATION", "KNOWLEDGE_BASE_RESPONSE_GENERATION", "POST_PROCESSING", "ROUTING_CLASSIFIER"],
    #                     override_lambda: "LambdaArn",
    #                     prompt_creation_mode: "DEFAULT" # One of: ["DEFAULT", "OVERRIDDEN"],
    #                     inference_configuration: {
    #                       temperature: 1.0,
    #                       top_p: 1.0,
    #                       top_k: 1,
    #                       maximum_length: 1,
    #                       stop_sequences: ["String"]
    #                     },
    #                     parser_mode: "DEFAULT" # One of: ["DEFAULT", "OVERRIDDEN"],
    #                     foundation_model: "ModelIdentifier"
    #                   },
    #                   model_invocation_output: {
    #                     trace_id: "TraceId",
    #                     parsed_response: {
    #                       text: "OutputString"
    #                     },
    #                     raw_response: {
    #                       content: "String"
    #                     },
    #                     metadata: {
    #                       start_time: Time.now,
    #                       end_time: Time.now,
    #                       total_time_ms: 1,
    #                       operation_total_time_ms: 1,
    #                       client_request_id: "String",
    #                       usage: {
    #                         input_tokens: 1,
    #                         output_tokens: 1
    #                       }
    #                     },
    #                     reasoning_content: {
    #                       # One of:
    #                       reasoning_text: {
    #                         text: "String", # required
    #                         signature: "String"
    #                       },
    #                       redacted_content: "data"
    #                     }
    #                   }
    #                 },
    #                 routing_classifier_trace: {
    #                   # One of:
    #                   invocation_input: {
    #                     trace_id: "TraceId",
    #                     invocation_type: "ACTION_GROUP" # One of: ["ACTION_GROUP", "KNOWLEDGE_BASE", "FINISH", "ACTION_GROUP_CODE_INTERPRETER", "AGENT_COLLABORATOR"],
    #                     action_group_invocation_input: {
    #                       action_group_name: "ActionGroupName",
    #                       verb: "Verb",
    #                       api_path: "ApiPath",
    #                       parameters: [
    #                         {
    #                           name: "String",
    #                           type: "String",
    #                           value: "String"
    #                         }
    #                       ],
    #                       request_body: {
    #                         content: {
    #                           "String" => [
    #                             {
    #                               name: "String",
    #                               type: "String",
    #                               value: "String"
    #                             }
    #                           ]
    #                         }
    #                       },
    #                       function: "Function",
    #                       execution_type: "LAMBDA" # One of: ["LAMBDA", "RETURN_CONTROL"],
    #                       invocation_id: "String"
    #                     },
    #                     knowledge_base_lookup_input: {
    #                       text: "KnowledgeBaseLookupInputString",
    #                       knowledge_base_id: "TraceKnowledgeBaseId"
    #                     },
    #                     code_interpreter_invocation_input: {
    #                       code: "String",
    #                       files: ["String"]
    #                     },
    #                     agent_collaborator_invocation_input: {
    #                       agent_collaborator_name: "String",
    #                       agent_collaborator_alias_arn: "AgentAliasArn",
    #                       input: {
    #                         type: "TEXT" # One of: ["TEXT", "RETURN_CONTROL"],
    #                         text: "AgentCollaboratorPayloadString",
    #                         return_control_results: {
    #                           invocation_id: "String",
    #                           return_control_invocation_results: [{
    #                             # One of:
    #                             api_result: {
    #                               action_group: "String", # required
    #                               http_method: "String",
    #                               api_path: "ApiPath",
    #                               confirmation_state: "CONFIRM" # One of: ["CONFIRM", "DENY"],
    #                               response_state: "FAILURE" # One of: ["FAILURE", "REPROMPT"],
    #                               http_status_code: 1,
    #                               response_body: {
    #                                 "String" => {
    #                                   body: "String",
    #                                   images: [
    #                                     {
    #                                       format: "png" # One of: ["png", "jpeg", "gif", "webp"], # required
    #                                       source: { # required
    #                                         # One of:
    #                                         bytes: "data"
    #                                       }
    #                                     }
    #                                   ]
    #                                 }
    #                               },
    #                               agent_id: "String"
    #                             },
    #                             function_result: {
    #                               action_group: "String", # required
    #                               confirmation_state: "CONFIRM" # One of: ["CONFIRM", "DENY"],
    #                               function: "String",
    #                               response_body: {
    #                                 "String" => {
    #                                   body: "String",
    #                                   images: [
    #                                     {
    #                                       format: "png" # One of: ["png", "jpeg", "gif", "webp"], # required
    #                                       source: { # required
    #                                         # One of:
    #                                         bytes: "data"
    #                                       }
    #                                     }
    #                                   ]
    #                                 }
    #                               },
    #                               response_state: "FAILURE" # One of: ["FAILURE", "REPROMPT"],
    #                               agent_id: "String"
    #                             }
    #                           }]
    #                         }
    #                       }
    #                     }
    #                   },
    #                   observation: {
    #                     trace_id: "TraceId",
    #                     type: "ACTION_GROUP" # One of: ["ACTION_GROUP", "AGENT_COLLABORATOR", "KNOWLEDGE_BASE", "FINISH", "ASK_USER", "REPROMPT"],
    #                     action_group_invocation_output: {
    #                       text: "ActionGroupOutputString",
    #                       metadata: {
    #                         start_time: Time.now,
    #                         end_time: Time.now,
    #                         total_time_ms: 1,
    #                         operation_total_time_ms: 1,
    #                         client_request_id: "String",
    #                         usage: {
    #                           input_tokens: 1,
    #                           output_tokens: 1
    #                         }
    #                       }
    #                     },
    #                     agent_collaborator_invocation_output: {
    #                       agent_collaborator_name: "String",
    #                       agent_collaborator_alias_arn: "AgentAliasArn",
    #                       output: {
    #                         type: "TEXT" # One of: ["TEXT", "RETURN_CONTROL"],
    #                         text: "AgentCollaboratorPayloadString",
    #                         return_control_payload: {
    #                           invocation_inputs: [{
    #                             # One of:
    #                             api_invocation_input: {
    #                               action_group: "String", # required
    #                               http_method: "String",
    #                               api_path: "ApiPath",
    #                               parameters: [
    #                                 {
    #                                   name: "String",
    #                                   type: "String",
    #                                   value: "String"
    #                                 }
    #                               ],
    #                               request_body: {
    #                                 content: {
    #                                   "String" => {
    #                                     properties: [
    #                                       {
    #                                         name: "String",
    #                                         type: "String",
    #                                         value: "String"
    #                                       }
    #                                     ]
    #                                   }
    #                                 }
    #                               },
    #                               action_invocation_type: "RESULT" # One of: ["RESULT", "USER_CONFIRMATION", "USER_CONFIRMATION_AND_RESULT"],
    #                               agent_id: "String",
    #                               collaborator_name: "Name"
    #                             },
    #                             function_invocation_input: {
    #                               action_group: "String", # required
    #                               parameters: [
    #                                 {
    #                                   name: "String",
    #                                   type: "String",
    #                                   value: "String"
    #                                 }
    #                               ],
    #                               function: "String",
    #                               action_invocation_type: "RESULT" # One of: ["RESULT", "USER_CONFIRMATION", "USER_CONFIRMATION_AND_RESULT"],
    #                               agent_id: "String",
    #                               collaborator_name: "Name"
    #                             }
    #                           }],
    #                           invocation_id: "String"
    #                         }
    #                       },
    #                       metadata: {
    #                         start_time: Time.now,
    #                         end_time: Time.now,
    #                         total_time_ms: 1,
    #                         operation_total_time_ms: 1,
    #                         client_request_id: "String",
    #                         usage: {
    #                           input_tokens: 1,
    #                           output_tokens: 1
    #                         }
    #                       }
    #                     },
    #                     knowledge_base_lookup_output: {
    #                       retrieved_references: [
    #                         {
    #                           content: {
    #                             type: "TEXT" # One of: ["TEXT", "IMAGE", "ROW"],
    #                             text: "String",
    #                             byte_content: "String",
    #                             row: [
    #                               {
    #                                 column_name: "String",
    #                                 column_value: "String",
    #                                 type: "BLOB" # One of: ["BLOB", "BOOLEAN", "DOUBLE", "NULL", "LONG", "STRING"]
    #                               }
    #                             ]
    #                           },
    #                           location: {
    #                             type: "S3" # One of: ["S3", "WEB", "CONFLUENCE", "SALESFORCE", "SHAREPOINT", "CUSTOM", "KENDRA", "SQL"], # required
    #                             s3_location: {
    #                               uri: "String"
    #                             },
    #                             web_location: {
    #                               url: "String"
    #                             },
    #                             confluence_location: {
    #                               url: "String"
    #                             },
    #                             salesforce_location: {
    #                               url: "String"
    #                             },
    #                             share_point_location: {
    #                               url: "String"
    #                             },
    #                             custom_document_location: {
    #                               id: "String"
    #                             },
    #                             kendra_document_location: {
    #                               uri: "String"
    #                             },
    #                             sql_location: {
    #                               query: "String"
    #                             }
    #                           },
    #                           metadata: {
    #                             "RetrievalResultMetadataKey" => ""null""
    #                           }
    #                         }
    #                       ],
    #                       metadata: {
    #                         start_time: Time.now,
    #                         end_time: Time.now,
    #                         total_time_ms: 1,
    #                         operation_total_time_ms: 1,
    #                         client_request_id: "String",
    #                         usage: {
    #                           input_tokens: 1,
    #                           output_tokens: 1
    #                         }
    #                       }
    #                     },
    #                     final_response: {
    #                       text: "FinalResponseString",
    #                       metadata: {
    #                         start_time: Time.now,
    #                         end_time: Time.now,
    #                         total_time_ms: 1,
    #                         operation_total_time_ms: 1,
    #                         client_request_id: "String",
    #                         usage: {
    #                           input_tokens: 1,
    #                           output_tokens: 1
    #                         }
    #                       }
    #                     },
    #                     reprompt_response: {
    #                       text: "String",
    #                       source: "ACTION_GROUP" # One of: ["ACTION_GROUP", "KNOWLEDGE_BASE", "PARSER"]
    #                     },
    #                     code_interpreter_invocation_output: {
    #                       execution_output: "String",
    #                       execution_error: "String",
    #                       files: ["String"],
    #                       execution_timeout: false,
    #                       metadata: {
    #                         start_time: Time.now,
    #                         end_time: Time.now,
    #                         total_time_ms: 1,
    #                         operation_total_time_ms: 1,
    #                         client_request_id: "String",
    #                         usage: {
    #                           input_tokens: 1,
    #                           output_tokens: 1
    #                         }
    #                       }
    #                     }
    #                   },
    #                   model_invocation_input: {
    #                     trace_id: "TraceId",
    #                     text: "PromptText",
    #                     type: "PRE_PROCESSING" # One of: ["PRE_PROCESSING", "ORCHESTRATION", "KNOWLEDGE_BASE_RESPONSE_GENERATION", "POST_PROCESSING", "ROUTING_CLASSIFIER"],
    #                     override_lambda: "LambdaArn",
    #                     prompt_creation_mode: "DEFAULT" # One of: ["DEFAULT", "OVERRIDDEN"],
    #                     inference_configuration: {
    #                       temperature: 1.0,
    #                       top_p: 1.0,
    #                       top_k: 1,
    #                       maximum_length: 1,
    #                       stop_sequences: ["String"]
    #                     },
    #                     parser_mode: "DEFAULT" # One of: ["DEFAULT", "OVERRIDDEN"],
    #                     foundation_model: "ModelIdentifier"
    #                   },
    #                   model_invocation_output: {
    #                     trace_id: "TraceId",
    #                     raw_response: {
    #                       content: "String"
    #                     },
    #                     metadata: {
    #                       start_time: Time.now,
    #                       end_time: Time.now,
    #                       total_time_ms: 1,
    #                       operation_total_time_ms: 1,
    #                       client_request_id: "String",
    #                       usage: {
    #                         input_tokens: 1,
    #                         output_tokens: 1
    #                       }
    #                     }
    #                   }
    #                 },
    #                 failure_trace: {
    #                   trace_id: "TraceId",
    #                   failure_reason: "FailureReasonString",
    #                   failure_code: 1,
    #                   metadata: {
    #                     start_time: Time.now,
    #                     end_time: Time.now,
    #                     total_time_ms: 1,
    #                     operation_total_time_ms: 1,
    #                     client_request_id: "String",
    #                     usage: {
    #                       input_tokens: 1,
    #                       output_tokens: 1
    #                     }
    #                   }
    #                 },
    #                 custom_orchestration_trace: {
    #                   trace_id: "TraceId",
    #                   event: {
    #                     text: "String"
    #                   }
    #                 }
    #               },
    #               caller_chain: [{
    #                 # One of:
    #                 agent_alias_arn: "AgentAliasArn"
    #               }],
    #               event_time: Time.now,
    #               collaborator_name: "Name",
    #               agent_id: "AgentId",
    #               agent_alias_id: "AgentAliasId",
    #               agent_version: "AgentVersion"
    #             }
    #           ]
    #         }
    #       }
    #     }],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListFlowExecutionEventsResponse]
    def list_flow_execution_events(params = {}, options = {})
      request = build_request(:list_flow_execution_events, params)
      request.send_request(options)
    end

    # <p>Lists all executions of a flow. Results can be paginated and include summary information about each execution, such as status, start and end times, and the execution's Amazon Resource Name (ARN).</p> <note> <p>Flow executions is in preview release for Amazon Bedrock and is subject to change.</p> </note>
    # @param [Hash, Types::ListFlowExecutionsRequest] params
    # @option params [String] :flow_identifier
    #   <p>The unique identifier of the flow to list executions for.</p>
    # @option params [String] :flow_alias_identifier
    #   <p>The unique identifier of the flow alias to list executions for.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of flow executions to return in a single response. If more executions exist than the specified <code>maxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p>
    # @option params [String] :next_token
    #   <p>A token to retrieve the next set of results. This value is returned in the response if more results are available.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     flow_identifier: "FlowIdentifier", # required
    #     flow_alias_identifier: "FlowAliasIdentifier",
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_flow_executions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     flow_execution_summaries: [ # required
    #       {
    #         execution_arn: "FlowExecutionIdentifier", # required
    #         flow_alias_identifier: "FlowAliasIdentifier", # required
    #         flow_identifier: "FlowIdentifier", # required
    #         flow_version: "Version", # required
    #         status: "Running" # One of: ["Running", "Succeeded", "Failed", "TimedOut", "Aborted"], # required
    #         created_at: Time.now, # required
    #         ended_at: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListFlowExecutionsResponse]
    def list_flow_executions(params = {}, options = {})
      request = build_request(:list_flow_executions, params)
      request.send_request(options)
    end

    # <p>Lists all invocation steps associated with a session and optionally, an invocation within the session. For more information about sessions, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/sessions.html">Store and retrieve conversation history and context with Amazon Bedrock sessions</a>.</p>
    # @param [Hash, Types::ListInvocationStepsRequest] params
    # @option params [String] :invocation_identifier
    #   <p>The unique identifier (in UUID format) for the invocation to list invocation steps for.</p>
    # @option params [String] :next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, enter the token returned in the <code>nextToken</code> field in the response in this field to return the next batch of results. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response. If the total number of results is greater than this value, use the token returned in the response in the <code>nextToken</code> field when making another request to return the next batch of results.</p>
    # @option params [String] :session_identifier
    #   <p>The unique identifier for the session associated with the invocation steps. You can specify either the session's <code>sessionId</code> or its Amazon Resource Name (ARN).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     invocation_identifier: "InvocationIdentifier",
    #     next_token: "NextToken",
    #     max_results: 1,
    #     session_identifier: "SessionIdentifier", # required
    #   }
    #   options = {}
    #   response = client.list_invocation_steps(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     invocation_step_summaries: [ # required
    #       {
    #         session_id: "Uuid", # required
    #         invocation_id: "Uuid", # required
    #         invocation_step_id: "Uuid", # required
    #         invocation_step_time: Time.now, # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListInvocationStepsResponse]
    def list_invocation_steps(params = {}, options = {})
      request = build_request(:list_invocation_steps, params)
      request.send_request(options)
    end

    # <p>Lists all invocations associated with a specific session. For more information about sessions, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/sessions.html">Store and retrieve conversation history and context with Amazon Bedrock sessions</a>.</p>
    # @param [Hash, Types::ListInvocationsRequest] params
    # @option params [String] :next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, enter the token returned in the <code>nextToken</code> field in the response in this field to return the next batch of results. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response. If the total number of results is greater than this value, use the token returned in the response in the <code>nextToken</code> field when making another request to return the next batch of results.</p>
    # @option params [String] :session_identifier
    #   <p>The unique identifier for the session to list invocations for. You can specify either the session's <code>sessionId</code> or its Amazon Resource Name (ARN).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     session_identifier: "SessionIdentifier", # required
    #   }
    #   options = {}
    #   response = client.list_invocations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     invocation_summaries: [ # required
    #       {
    #         session_id: "Uuid", # required
    #         invocation_id: "Uuid", # required
    #         created_at: Time.now, # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListInvocationsResponse]
    def list_invocations(params = {}, options = {})
      request = build_request(:list_invocations, params)
      request.send_request(options)
    end

    # <p>Lists all sessions in your Amazon Web Services account. For more information about sessions, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/sessions.html">Store and retrieve conversation history and context with Amazon Bedrock sessions</a>.</p>
    # @param [Hash, Types::ListSessionsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response. If the total number of results is greater than this value, use the token returned in the response in the <code>nextToken</code> field when making another request to return the next batch of results.</p>
    # @option params [String] :next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, enter the token returned in the <code>nextToken</code> field in the response in this field to return the next batch of results. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_sessions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     session_summaries: [ # required
    #       {
    #         session_id: "Uuid", # required
    #         session_arn: "SessionArn", # required
    #         session_status: "ACTIVE" # One of: ["ACTIVE", "EXPIRED", "ENDED"], # required
    #         created_at: Time.now, # required
    #         last_updated_at: Time.now, # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListSessionsResponse]
    def list_sessions(params = {}, options = {})
      request = build_request(:list_sessions, params)
      request.send_request(options)
    end

    # <p>List all the tags for the resource you specify.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource for which to list tags.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "TaggableResourcesArn", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Optimizes a prompt for the task that you specify. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management-optimize.html">Optimize a prompt</a> in the <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html">Amazon Bedrock User Guide</a>.</p>
    # @param [Hash, Types::OptimizePromptRequest] params
    # @option params [Types::InputPrompt] :input
    #   <p>Contains the prompt to optimize.</p>
    # @option params [String] :target_model_id
    #   <p>The unique identifier of the model that you want to optimize the prompt for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     input: { # required
    #       # One of:
    #       text_prompt: {
    #         text: "String", # required
    #       }
    #     },
    #     target_model_id: "String", # required
    #   }
    #   options = {}
    #   response = client.optimize_prompt(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     optimized_prompt: { # required
    #       # One of:
    #       optimized_prompt_event: {
    #         optimized_prompt: {
    #           # One of:
    #           text_prompt: {
    #             text: "String", # required
    #           }
    #         }
    #       },
    #       analyze_prompt_event: {
    #         message: "String"
    #       },
    #       internal_server_exception: {
    #         message: "NonBlankString",
    #         reason: "String"
    #       },
    #       throttling_exception: {
    #         message: "NonBlankString"
    #       },
    #       validation_exception: {
    #         message: "NonBlankString"
    #       },
    #       dependency_failed_exception: {
    #         message: "NonBlankString",
    #         resource_name: "NonBlankString"
    #       },
    #       access_denied_exception: {
    #         message: "NonBlankString"
    #       },
    #       bad_gateway_exception: {
    #         message: "NonBlankString",
    #         resource_name: "NonBlankString"
    #       }
    #     }
    #   }
    # @return [Types::OptimizePromptResponse]
    def optimize_prompt(params = {}, options = {})
      request = build_request(:optimize_prompt, params)
      request.send_request(options)
    end

    # <p>Add an invocation step to an invocation in a session. An invocation step stores fine-grained state checkpoints, including text and images, for each interaction. For more information about sessions, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/sessions.html">Store and retrieve conversation history and context with Amazon Bedrock sessions</a>.</p> <p>Related APIs:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_GetInvocationStep.html">GetInvocationStep</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_ListInvocationSteps.html">ListInvocationSteps</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_ListInvocations.html">ListInvocations</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_ListInvocations.html">ListSessions</a> </p> </li> </ul>
    # @param [Hash, Types::PutInvocationStepRequest] params
    # @option params [String] :session_identifier
    #   <p>The unique identifier for the session to add the invocation step to. You can specify either the session's <code>sessionId</code> or its Amazon Resource Name (ARN).</p>
    # @option params [String] :invocation_identifier
    #   <p>The unique identifier (in UUID format) of the invocation to add the invocation step to.</p>
    # @option params [Time] :invocation_step_time
    #   <p>The timestamp for when the invocation step occurred.</p>
    # @option params [Types::InvocationStepPayload] :payload
    #   <p>The payload for the invocation step, including text and images for the interaction.</p>
    # @option params [String] :invocation_step_id
    #   <p>The unique identifier of the invocation step in UUID format.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     session_identifier: "SessionIdentifier", # required
    #     invocation_identifier: "InvocationIdentifier", # required
    #     invocation_step_time: Time.now, # required
    #     payload: { # required
    #       # One of:
    #       content_blocks: [{
    #         # One of:
    #         text: "String",
    #         image: {
    #           format: "png" # One of: ["png", "jpeg", "gif", "webp"], # required
    #           source: { # required
    #             # One of:
    #             bytes: "data",
    #             s3_location: {
    #               uri: "S3Uri", # required
    #             }
    #           }
    #         }
    #       }]
    #     },
    #     invocation_step_id: "Uuid"
    #   }
    #   options = {}
    #   response = client.put_invocation_step(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     invocation_step_id: "Uuid", # required
    #   }
    # @return [Types::PutInvocationStepResponse]
    def put_invocation_step(params = {}, options = {})
      request = build_request(:put_invocation_step, params)
      request.send_request(options)
    end

    # <p>Reranks the relevance of sources based on queries. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/rerank.html">Improve the relevance of query responses with a reranker model</a>.</p>
    # @param [Hash, Types::RerankRequest] params
    # @option params [Array<Types::RerankQuery>] :queries
    #   <p>An array of objects, each of which contains information about a query to submit to the reranker model.</p>
    # @option params [Array<Types::RerankSource>] :sources
    #   <p>An array of objects, each of which contains information about the sources to rerank.</p>
    # @option params [Types::RerankingConfiguration] :reranking_configuration
    #   <p>Contains configurations for reranking.</p>
    # @option params [String] :next_token
    #   <p>If the total number of results was greater than could fit in a response, a token is returned in the <code>nextToken</code> field. You can enter that token in this field to return the next batch of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     queries: [ # required
    #       {
    #         type: "TEXT" # One of: ["TEXT"], # required
    #         text_query: { # required
    #           text: "String"
    #         }
    #       }
    #     ],
    #     sources: [ # required
    #       {
    #         type: "INLINE" # One of: ["INLINE"], # required
    #         inline_document_source: { # required
    #           type: "TEXT" # One of: ["TEXT", "JSON"], # required
    #           text_document: {
    #             text: "String"
    #           },
    #           json_document: ""null""
    #         }
    #       }
    #     ],
    #     reranking_configuration: { # required
    #       type: "BEDROCK_RERANKING_MODEL" # One of: ["BEDROCK_RERANKING_MODEL"], # required
    #       bedrock_reranking_configuration: { # required
    #         number_of_results: 1,
    #         model_configuration: { # required
    #           model_arn: "BedrockModelArn", # required
    #           additional_model_request_fields: {
    #             "AdditionalModelRequestFieldsKey" => ""null""
    #           }
    #         }
    #       }
    #     },
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.rerank(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     results: [ # required
    #       {
    #         index: 1, # required
    #         relevance_score: 1.0, # required
    #         document: {
    #           type: "TEXT" # One of: ["TEXT", "JSON"], # required
    #           text_document: {
    #             text: "String"
    #           },
    #           json_document: ""null""
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::RerankResponse]
    def rerank(params = {}, options = {})
      request = build_request(:rerank, params)
      request.send_request(options)
    end

    # <p>Queries a knowledge base and retrieves information from it.</p>
    # @param [Hash, Types::RetrieveRequest] params
    # @option params [String] :knowledge_base_id
    #   <p>The unique identifier of the knowledge base to query.</p>
    # @option params [Types::KnowledgeBaseQuery] :retrieval_query
    #   <p>Contains the query to send the knowledge base.</p>
    # @option params [Types::KnowledgeBaseRetrievalConfiguration] :retrieval_configuration
    #   <p>Contains configurations for the knowledge base query and retrieval process. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/kb-test-config.html">Query configurations</a>.</p>
    # @option params [Types::GuardrailConfiguration] :guardrail_configuration
    #   <p>Guardrail settings.</p>
    # @option params [String] :next_token
    #   <p>If there are more results than can fit in the response, the response returns a <code>nextToken</code>. Use this token in the <code>nextToken</code> field of another request to retrieve the next batch of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     knowledge_base_id: "KnowledgeBaseId", # required
    #     retrieval_query: { # required
    #       text: "String", # required
    #     },
    #     retrieval_configuration: {
    #       vector_search_configuration: { # required
    #         number_of_results: 1,
    #         override_search_type: "HYBRID" # One of: ["HYBRID", "SEMANTIC"],
    #         filter: {
    #           # One of:
    #           equals: {
    #             key: "FilterKey", # required
    #             value: ""null"", # required
    #           },
    #           not_equals: {
    #             key: "FilterKey", # required
    #             value: ""null"", # required
    #           },
    #           greater_than: {
    #             key: "FilterKey", # required
    #             value: ""null"", # required
    #           },
    #           greater_than_or_equals: {
    #             key: "FilterKey", # required
    #             value: ""null"", # required
    #           },
    #           less_than: {
    #             key: "FilterKey", # required
    #             value: ""null"", # required
    #           },
    #           less_than_or_equals: {
    #             key: "FilterKey", # required
    #             value: ""null"", # required
    #           },
    #           in: {
    #             key: "FilterKey", # required
    #             value: ""null"", # required
    #           },
    #           not_in: {
    #             key: "FilterKey", # required
    #             value: ""null"", # required
    #           },
    #           starts_with: {
    #             key: "FilterKey", # required
    #             value: ""null"", # required
    #           },
    #           list_contains: {
    #             key: "FilterKey", # required
    #             value: ""null"", # required
    #           },
    #           string_contains: {
    #             key: "FilterKey", # required
    #             value: ""null"", # required
    #           },
    #           and_all: [{
    #             # recursive RetrievalFilter
    #           }],
    #           or_all: [{
    #             # recursive RetrievalFilter
    #           }]
    #         },
    #         reranking_configuration: {
    #           type: "BEDROCK_RERANKING_MODEL" # One of: ["BEDROCK_RERANKING_MODEL"], # required
    #           bedrock_reranking_configuration: {
    #             model_configuration: { # required
    #               model_arn: "BedrockRerankingModelArn", # required
    #               additional_model_request_fields: {
    #                 "AdditionalModelRequestFieldsKey" => ""null""
    #               }
    #             },
    #             number_of_reranked_results: 1,
    #             metadata_configuration: {
    #               selection_mode: "SELECTIVE" # One of: ["SELECTIVE", "ALL"], # required
    #               selective_mode_configuration: {
    #                 # One of:
    #                 fields_to_include: [
    #                   {
    #                     field_name: "String", # required
    #                   }
    #                 ],
    #                 fields_to_exclude: [
    #                   {
    #                     field_name: "String", # required
    #                   }
    #                 ]
    #               }
    #             }
    #           }
    #         },
    #         implicit_filter_configuration: {
    #           metadata_attributes: [ # required
    #             {
    #               key: "String", # required
    #               type: "STRING" # One of: ["STRING", "NUMBER", "BOOLEAN", "STRING_LIST"], # required
    #               description: "String", # required
    #             }
    #           ],
    #           model_arn: "BedrockModelArn", # required
    #         }
    #       }
    #     },
    #     guardrail_configuration: {
    #       guardrail_id: "String", # required
    #       guardrail_version: "String", # required
    #     },
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.retrieve(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     retrieval_results: [ # required
    #       {
    #         content: { # required
    #           type: "TEXT" # One of: ["TEXT", "IMAGE", "ROW"],
    #           text: "String",
    #           byte_content: "String",
    #           row: [
    #             {
    #               column_name: "String",
    #               column_value: "String",
    #               type: "BLOB" # One of: ["BLOB", "BOOLEAN", "DOUBLE", "NULL", "LONG", "STRING"]
    #             }
    #           ]
    #         },
    #         location: {
    #           type: "S3" # One of: ["S3", "WEB", "CONFLUENCE", "SALESFORCE", "SHAREPOINT", "CUSTOM", "KENDRA", "SQL"], # required
    #           s3_location: {
    #             uri: "String"
    #           },
    #           web_location: {
    #             url: "String"
    #           },
    #           confluence_location: {
    #             url: "String"
    #           },
    #           salesforce_location: {
    #             url: "String"
    #           },
    #           share_point_location: {
    #             url: "String"
    #           },
    #           custom_document_location: {
    #             id: "String"
    #           },
    #           kendra_document_location: {
    #             uri: "String"
    #           },
    #           sql_location: {
    #             query: "String"
    #           }
    #         },
    #         score: 1.0,
    #         metadata: {
    #           "RetrievalResultMetadataKey" => ""null""
    #         }
    #       }
    #     ],
    #     guardrail_action: "INTERVENED" # One of: ["INTERVENED", "NONE"],
    #     next_token: "NextToken"
    #   }
    # @return [Types::RetrieveResponse]
    def retrieve(params = {}, options = {})
      request = build_request(:retrieve, params)
      request.send_request(options)
    end

    # <p>Queries a knowledge base and generates responses based on the retrieved results and using the specified foundation model or <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/cross-region-inference.html">inference profile</a>. The response only cites sources that are relevant to the query.</p>
    # @param [Hash, Types::RetrieveAndGenerateRequest] params
    # @option params [String] :session_id
    #   <p>The unique identifier of the session. When you first make a <code>RetrieveAndGenerate</code> request, Amazon Bedrock automatically generates this value. You must reuse this value for all subsequent requests in the same conversational session. This value allows Amazon Bedrock to maintain context and knowledge from previous interactions. You can't explicitly set the <code>sessionId</code> yourself.</p>
    # @option params [Types::RetrieveAndGenerateInput] :input
    #   <p>Contains the query to be made to the knowledge base.</p>
    # @option params [Types::RetrieveAndGenerateConfiguration] :retrieve_and_generate_configuration
    #   <p>Contains configurations for the knowledge base query and retrieval process. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/kb-test-config.html">Query configurations</a>.</p>
    # @option params [Types::RetrieveAndGenerateSessionConfiguration] :session_configuration
    #   <p>Contains details about the session with the knowledge base.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     session_id: "SessionId",
    #     input: { # required
    #       text: "String", # required
    #     },
    #     retrieve_and_generate_configuration: {
    #       type: "KNOWLEDGE_BASE" # One of: ["KNOWLEDGE_BASE", "EXTERNAL_SOURCES"], # required
    #       knowledge_base_configuration: {
    #         knowledge_base_id: "KnowledgeBaseId", # required
    #         model_arn: "BedrockModelArn", # required
    #         retrieval_configuration: {
    #           vector_search_configuration: { # required
    #             number_of_results: 1,
    #             override_search_type: "HYBRID" # One of: ["HYBRID", "SEMANTIC"],
    #             filter: {
    #               # One of:
    #               equals: {
    #                 key: "FilterKey", # required
    #                 value: ""null"", # required
    #               },
    #               not_equals: {
    #                 key: "FilterKey", # required
    #                 value: ""null"", # required
    #               },
    #               greater_than: {
    #                 key: "FilterKey", # required
    #                 value: ""null"", # required
    #               },
    #               greater_than_or_equals: {
    #                 key: "FilterKey", # required
    #                 value: ""null"", # required
    #               },
    #               less_than: {
    #                 key: "FilterKey", # required
    #                 value: ""null"", # required
    #               },
    #               less_than_or_equals: {
    #                 key: "FilterKey", # required
    #                 value: ""null"", # required
    #               },
    #               in: {
    #                 key: "FilterKey", # required
    #                 value: ""null"", # required
    #               },
    #               not_in: {
    #                 key: "FilterKey", # required
    #                 value: ""null"", # required
    #               },
    #               starts_with: {
    #                 key: "FilterKey", # required
    #                 value: ""null"", # required
    #               },
    #               list_contains: {
    #                 key: "FilterKey", # required
    #                 value: ""null"", # required
    #               },
    #               string_contains: {
    #                 key: "FilterKey", # required
    #                 value: ""null"", # required
    #               },
    #               and_all: [{
    #                 # recursive RetrievalFilter
    #               }],
    #               or_all: [{
    #                 # recursive RetrievalFilter
    #               }]
    #             },
    #             reranking_configuration: {
    #               type: "BEDROCK_RERANKING_MODEL" # One of: ["BEDROCK_RERANKING_MODEL"], # required
    #               bedrock_reranking_configuration: {
    #                 model_configuration: { # required
    #                   model_arn: "BedrockRerankingModelArn", # required
    #                   additional_model_request_fields: {
    #                     "AdditionalModelRequestFieldsKey" => ""null""
    #                   }
    #                 },
    #                 number_of_reranked_results: 1,
    #                 metadata_configuration: {
    #                   selection_mode: "SELECTIVE" # One of: ["SELECTIVE", "ALL"], # required
    #                   selective_mode_configuration: {
    #                     # One of:
    #                     fields_to_include: [
    #                       {
    #                         field_name: "String", # required
    #                       }
    #                     ],
    #                     fields_to_exclude: [
    #                       {
    #                         field_name: "String", # required
    #                       }
    #                     ]
    #                   }
    #                 }
    #               }
    #             },
    #             implicit_filter_configuration: {
    #               metadata_attributes: [ # required
    #                 {
    #                   key: "String", # required
    #                   type: "STRING" # One of: ["STRING", "NUMBER", "BOOLEAN", "STRING_LIST"], # required
    #                   description: "String", # required
    #                 }
    #               ],
    #               model_arn: "BedrockModelArn", # required
    #             }
    #           }
    #         },
    #         generation_configuration: {
    #           prompt_template: {
    #             text_prompt_template: "TextPromptTemplate"
    #           },
    #           guardrail_configuration: {
    #             guardrail_id: "String", # required
    #             guardrail_version: "String", # required
    #           },
    #           inference_config: {
    #             text_inference_config: {
    #               temperature: 1.0,
    #               top_p: 1.0,
    #               max_tokens: 1,
    #               stop_sequences: ["String"]
    #             }
    #           },
    #           additional_model_request_fields: {
    #             "AdditionalModelRequestFieldsKey" => ""null""
    #           },
    #           performance_config: {
    #             latency: "standard" # One of: ["standard", "optimized"]
    #           }
    #         },
    #         orchestration_configuration: {
    #           prompt_template: {
    #             text_prompt_template: "TextPromptTemplate"
    #           },
    #           inference_config: {
    #             text_inference_config: {
    #               temperature: 1.0,
    #               top_p: 1.0,
    #               max_tokens: 1,
    #               stop_sequences: ["String"]
    #             }
    #           },
    #           additional_model_request_fields: {
    #             "AdditionalModelRequestFieldsKey" => ""null""
    #           },
    #           query_transformation_configuration: {
    #             type: "QUERY_DECOMPOSITION" # One of: ["QUERY_DECOMPOSITION"], # required
    #           },
    #           performance_config: {
    #             latency: "standard" # One of: ["standard", "optimized"]
    #           }
    #         }
    #       },
    #       external_sources_configuration: {
    #         model_arn: "BedrockModelArn", # required
    #         sources: [ # required
    #           {
    #             source_type: "S3" # One of: ["S3", "BYTE_CONTENT"], # required
    #             s3_location: {
    #               uri: "S3Uri", # required
    #             },
    #             byte_content: {
    #               identifier: "Identifier", # required
    #               content_type: "ContentType", # required
    #               data: "data", # required
    #             }
    #           }
    #         ],
    #         generation_configuration: {
    #           prompt_template: {
    #             text_prompt_template: "TextPromptTemplate"
    #           },
    #           guardrail_configuration: {
    #             guardrail_id: "String", # required
    #             guardrail_version: "String", # required
    #           },
    #           inference_config: {
    #             text_inference_config: {
    #               temperature: 1.0,
    #               top_p: 1.0,
    #               max_tokens: 1,
    #               stop_sequences: ["String"]
    #             }
    #           },
    #           additional_model_request_fields: {
    #             "AdditionalModelRequestFieldsKey" => ""null""
    #           },
    #           performance_config: {
    #             latency: "standard" # One of: ["standard", "optimized"]
    #           }
    #         }
    #       }
    #     },
    #     session_configuration: {
    #       kms_key_arn: "KmsKeyArn", # required
    #     }
    #   }
    #   options = {}
    #   response = client.retrieve_and_generate(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     session_id: "SessionId", # required
    #     output: { # required
    #       text: "String", # required
    #     },
    #     citations: [
    #       {
    #         generated_response_part: {
    #           text_response_part: {
    #             text: "String",
    #             span: {
    #               start: 1,
    #               end: 1
    #             }
    #           }
    #         },
    #         retrieved_references: [
    #           {
    #             content: {
    #               type: "TEXT" # One of: ["TEXT", "IMAGE", "ROW"],
    #               text: "String",
    #               byte_content: "String",
    #               row: [
    #                 {
    #                   column_name: "String",
    #                   column_value: "String",
    #                   type: "BLOB" # One of: ["BLOB", "BOOLEAN", "DOUBLE", "NULL", "LONG", "STRING"]
    #                 }
    #               ]
    #             },
    #             location: {
    #               type: "S3" # One of: ["S3", "WEB", "CONFLUENCE", "SALESFORCE", "SHAREPOINT", "CUSTOM", "KENDRA", "SQL"], # required
    #               s3_location: {
    #                 uri: "String"
    #               },
    #               web_location: {
    #                 url: "String"
    #               },
    #               confluence_location: {
    #                 url: "String"
    #               },
    #               salesforce_location: {
    #                 url: "String"
    #               },
    #               share_point_location: {
    #                 url: "String"
    #               },
    #               custom_document_location: {
    #                 id: "String"
    #               },
    #               kendra_document_location: {
    #                 uri: "String"
    #               },
    #               sql_location: {
    #                 query: "String"
    #               }
    #             },
    #             metadata: {
    #               "RetrievalResultMetadataKey" => ""null""
    #             }
    #           }
    #         ]
    #       }
    #     ],
    #     guardrail_action: "INTERVENED" # One of: ["INTERVENED", "NONE"]
    #   }
    # @return [Types::RetrieveAndGenerateResponse]
    def retrieve_and_generate(params = {}, options = {})
      request = build_request(:retrieve_and_generate, params)
      request.send_request(options)
    end

    # <p>Queries a knowledge base and generates responses based on the retrieved results, with output in streaming format.</p> <note> <p>The CLI doesn't support streaming operations in Amazon Bedrock, including <code>InvokeModelWithResponseStream</code>.</p> </note> <p>This operation requires permission for the <code> bedrock:RetrieveAndGenerate</code> action.</p>
    # @param [Hash, Types::RetrieveAndGenerateStreamRequest] params
    # @option params [String] :session_id
    #   <p>The unique identifier of the session. When you first make a <code>RetrieveAndGenerate</code> request, Amazon Bedrock automatically generates this value. You must reuse this value for all subsequent requests in the same conversational session. This value allows Amazon Bedrock to maintain context and knowledge from previous interactions. You can't explicitly set the <code>sessionId</code> yourself.</p>
    # @option params [Types::RetrieveAndGenerateInput] :input
    #   <p>Contains the query to be made to the knowledge base.</p>
    # @option params [Types::RetrieveAndGenerateConfiguration] :retrieve_and_generate_configuration
    #   <p>Contains configurations for the knowledge base query and retrieval process. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/kb-test-config.html">Query configurations</a>.</p>
    # @option params [Types::RetrieveAndGenerateSessionConfiguration] :session_configuration
    #   <p>Contains details about the session with the knowledge base.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     session_id: "SessionId",
    #     input: { # required
    #       text: "String", # required
    #     },
    #     retrieve_and_generate_configuration: {
    #       type: "KNOWLEDGE_BASE" # One of: ["KNOWLEDGE_BASE", "EXTERNAL_SOURCES"], # required
    #       knowledge_base_configuration: {
    #         knowledge_base_id: "KnowledgeBaseId", # required
    #         model_arn: "BedrockModelArn", # required
    #         retrieval_configuration: {
    #           vector_search_configuration: { # required
    #             number_of_results: 1,
    #             override_search_type: "HYBRID" # One of: ["HYBRID", "SEMANTIC"],
    #             filter: {
    #               # One of:
    #               equals: {
    #                 key: "FilterKey", # required
    #                 value: ""null"", # required
    #               },
    #               not_equals: {
    #                 key: "FilterKey", # required
    #                 value: ""null"", # required
    #               },
    #               greater_than: {
    #                 key: "FilterKey", # required
    #                 value: ""null"", # required
    #               },
    #               greater_than_or_equals: {
    #                 key: "FilterKey", # required
    #                 value: ""null"", # required
    #               },
    #               less_than: {
    #                 key: "FilterKey", # required
    #                 value: ""null"", # required
    #               },
    #               less_than_or_equals: {
    #                 key: "FilterKey", # required
    #                 value: ""null"", # required
    #               },
    #               in: {
    #                 key: "FilterKey", # required
    #                 value: ""null"", # required
    #               },
    #               not_in: {
    #                 key: "FilterKey", # required
    #                 value: ""null"", # required
    #               },
    #               starts_with: {
    #                 key: "FilterKey", # required
    #                 value: ""null"", # required
    #               },
    #               list_contains: {
    #                 key: "FilterKey", # required
    #                 value: ""null"", # required
    #               },
    #               string_contains: {
    #                 key: "FilterKey", # required
    #                 value: ""null"", # required
    #               },
    #               and_all: [{
    #                 # recursive RetrievalFilter
    #               }],
    #               or_all: [{
    #                 # recursive RetrievalFilter
    #               }]
    #             },
    #             reranking_configuration: {
    #               type: "BEDROCK_RERANKING_MODEL" # One of: ["BEDROCK_RERANKING_MODEL"], # required
    #               bedrock_reranking_configuration: {
    #                 model_configuration: { # required
    #                   model_arn: "BedrockRerankingModelArn", # required
    #                   additional_model_request_fields: {
    #                     "AdditionalModelRequestFieldsKey" => ""null""
    #                   }
    #                 },
    #                 number_of_reranked_results: 1,
    #                 metadata_configuration: {
    #                   selection_mode: "SELECTIVE" # One of: ["SELECTIVE", "ALL"], # required
    #                   selective_mode_configuration: {
    #                     # One of:
    #                     fields_to_include: [
    #                       {
    #                         field_name: "String", # required
    #                       }
    #                     ],
    #                     fields_to_exclude: [
    #                       {
    #                         field_name: "String", # required
    #                       }
    #                     ]
    #                   }
    #                 }
    #               }
    #             },
    #             implicit_filter_configuration: {
    #               metadata_attributes: [ # required
    #                 {
    #                   key: "String", # required
    #                   type: "STRING" # One of: ["STRING", "NUMBER", "BOOLEAN", "STRING_LIST"], # required
    #                   description: "String", # required
    #                 }
    #               ],
    #               model_arn: "BedrockModelArn", # required
    #             }
    #           }
    #         },
    #         generation_configuration: {
    #           prompt_template: {
    #             text_prompt_template: "TextPromptTemplate"
    #           },
    #           guardrail_configuration: {
    #             guardrail_id: "String", # required
    #             guardrail_version: "String", # required
    #           },
    #           inference_config: {
    #             text_inference_config: {
    #               temperature: 1.0,
    #               top_p: 1.0,
    #               max_tokens: 1,
    #               stop_sequences: ["String"]
    #             }
    #           },
    #           additional_model_request_fields: {
    #             "AdditionalModelRequestFieldsKey" => ""null""
    #           },
    #           performance_config: {
    #             latency: "standard" # One of: ["standard", "optimized"]
    #           }
    #         },
    #         orchestration_configuration: {
    #           prompt_template: {
    #             text_prompt_template: "TextPromptTemplate"
    #           },
    #           inference_config: {
    #             text_inference_config: {
    #               temperature: 1.0,
    #               top_p: 1.0,
    #               max_tokens: 1,
    #               stop_sequences: ["String"]
    #             }
    #           },
    #           additional_model_request_fields: {
    #             "AdditionalModelRequestFieldsKey" => ""null""
    #           },
    #           query_transformation_configuration: {
    #             type: "QUERY_DECOMPOSITION" # One of: ["QUERY_DECOMPOSITION"], # required
    #           },
    #           performance_config: {
    #             latency: "standard" # One of: ["standard", "optimized"]
    #           }
    #         }
    #       },
    #       external_sources_configuration: {
    #         model_arn: "BedrockModelArn", # required
    #         sources: [ # required
    #           {
    #             source_type: "S3" # One of: ["S3", "BYTE_CONTENT"], # required
    #             s3_location: {
    #               uri: "S3Uri", # required
    #             },
    #             byte_content: {
    #               identifier: "Identifier", # required
    #               content_type: "ContentType", # required
    #               data: "data", # required
    #             }
    #           }
    #         ],
    #         generation_configuration: {
    #           prompt_template: {
    #             text_prompt_template: "TextPromptTemplate"
    #           },
    #           guardrail_configuration: {
    #             guardrail_id: "String", # required
    #             guardrail_version: "String", # required
    #           },
    #           inference_config: {
    #             text_inference_config: {
    #               temperature: 1.0,
    #               top_p: 1.0,
    #               max_tokens: 1,
    #               stop_sequences: ["String"]
    #             }
    #           },
    #           additional_model_request_fields: {
    #             "AdditionalModelRequestFieldsKey" => ""null""
    #           },
    #           performance_config: {
    #             latency: "standard" # One of: ["standard", "optimized"]
    #           }
    #         }
    #       }
    #     },
    #     session_configuration: {
    #       kms_key_arn: "KmsKeyArn", # required
    #     }
    #   }
    #   options = {}
    #   response = client.retrieve_and_generate_stream(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     stream: { # required
    #       # One of:
    #       output: {
    #         text: "String", # required
    #       },
    #       citation: {
    #         citation: {
    #           generated_response_part: {
    #             text_response_part: {
    #               text: "String",
    #               span: {
    #                 start: 1,
    #                 end: 1
    #               }
    #             }
    #           },
    #           retrieved_references: [
    #             {
    #               content: {
    #                 type: "TEXT" # One of: ["TEXT", "IMAGE", "ROW"],
    #                 text: "String",
    #                 byte_content: "String",
    #                 row: [
    #                   {
    #                     column_name: "String",
    #                     column_value: "String",
    #                     type: "BLOB" # One of: ["BLOB", "BOOLEAN", "DOUBLE", "NULL", "LONG", "STRING"]
    #                   }
    #                 ]
    #               },
    #               location: {
    #                 type: "S3" # One of: ["S3", "WEB", "CONFLUENCE", "SALESFORCE", "SHAREPOINT", "CUSTOM", "KENDRA", "SQL"], # required
    #                 s3_location: {
    #                   uri: "String"
    #                 },
    #                 web_location: {
    #                   url: "String"
    #                 },
    #                 confluence_location: {
    #                   url: "String"
    #                 },
    #                 salesforce_location: {
    #                   url: "String"
    #                 },
    #                 share_point_location: {
    #                   url: "String"
    #                 },
    #                 custom_document_location: {
    #                   id: "String"
    #                 },
    #                 kendra_document_location: {
    #                   uri: "String"
    #                 },
    #                 sql_location: {
    #                   query: "String"
    #                 }
    #               },
    #               metadata: {
    #                 "RetrievalResultMetadataKey" => ""null""
    #               }
    #             }
    #           ]
    #         },
    #         generated_response_part: {
    #           text_response_part: {
    #             text: "String",
    #             span: {
    #               start: 1,
    #               end: 1
    #             }
    #           }
    #         },
    #         retrieved_references: [
    #           {
    #             content: {
    #               type: "TEXT" # One of: ["TEXT", "IMAGE", "ROW"],
    #               text: "String",
    #               byte_content: "String",
    #               row: [
    #                 {
    #                   column_name: "String",
    #                   column_value: "String",
    #                   type: "BLOB" # One of: ["BLOB", "BOOLEAN", "DOUBLE", "NULL", "LONG", "STRING"]
    #                 }
    #               ]
    #             },
    #             location: {
    #               type: "S3" # One of: ["S3", "WEB", "CONFLUENCE", "SALESFORCE", "SHAREPOINT", "CUSTOM", "KENDRA", "SQL"], # required
    #               s3_location: {
    #                 uri: "String"
    #               },
    #               web_location: {
    #                 url: "String"
    #               },
    #               confluence_location: {
    #                 url: "String"
    #               },
    #               salesforce_location: {
    #                 url: "String"
    #               },
    #               share_point_location: {
    #                 url: "String"
    #               },
    #               custom_document_location: {
    #                 id: "String"
    #               },
    #               kendra_document_location: {
    #                 uri: "String"
    #               },
    #               sql_location: {
    #                 query: "String"
    #               }
    #             },
    #             metadata: {
    #               "RetrievalResultMetadataKey" => ""null""
    #             }
    #           }
    #         ]
    #       },
    #       guardrail: {
    #         action: "INTERVENED" # One of: ["INTERVENED", "NONE"]
    #       },
    #       internal_server_exception: {
    #         message: "NonBlankString",
    #         reason: "String"
    #       },
    #       validation_exception: {
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
    #       access_denied_exception: {
    #         message: "NonBlankString"
    #       },
    #       conflict_exception: {
    #         message: "NonBlankString"
    #       },
    #       dependency_failed_exception: {
    #         message: "NonBlankString",
    #         resource_name: "NonBlankString"
    #       },
    #       bad_gateway_exception: {
    #         message: "NonBlankString",
    #         resource_name: "NonBlankString"
    #       }
    #     },
    #     session_id: "SessionId", # required
    #   }
    # @return [Types::RetrieveAndGenerateStreamResponse]
    def retrieve_and_generate_stream(params = {}, options = {})
      request = build_request(:retrieve_and_generate_stream, params)
      request.send_request(options)
    end

    # <p>Starts an execution of an Amazon Bedrock flow. Unlike flows that run until completion or time out after five minutes, flow executions let you run flows asynchronously for longer durations. Flow executions also yield control so that your application can perform other tasks.</p> <p>This operation returns an Amazon Resource Name (ARN) that you can use to track and manage your flow execution.</p> <note> <p>Flow executions is in preview release for Amazon Bedrock and is subject to change.</p> </note>
    # @param [Hash, Types::StartFlowExecutionRequest] params
    # @option params [String] :flow_identifier
    #   <p>The unique identifier of the flow to execute.</p>
    # @option params [String] :flow_alias_identifier
    #   <p>The unique identifier of the flow alias to use for the flow execution.</p>
    # @option params [String] :flow_execution_name
    #   <p>The unique name for the flow execution. If you don't provide one, a system-generated name is used.</p>
    # @option params [Array<Types::FlowInput>] :inputs
    #   <p>The input data required for the flow execution. This must match the input schema defined in the flow.</p>
    # @option params [Types::ModelPerformanceConfiguration] :model_performance_configuration
    #   <p>The performance settings for the foundation model used in the flow execution.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     flow_identifier: "FlowIdentifier", # required
    #     flow_alias_identifier: "FlowAliasIdentifier", # required
    #     flow_execution_name: "FlowExecutionName",
    #     inputs: [ # required
    #       {
    #         node_name: "NodeName", # required
    #         node_output_name: "NodeOutputName",
    #         content: { # required
    #           # One of:
    #           document: ""null""
    #         },
    #         node_input_name: "NodeInputName"
    #       }
    #     ],
    #     model_performance_configuration: {
    #       performance_config: {
    #         latency: "standard" # One of: ["standard", "optimized"]
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.start_flow_execution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     execution_arn: "FlowExecutionIdentifier"
    #   }
    # @return [Types::StartFlowExecutionResponse]
    def start_flow_execution(params = {}, options = {})
      request = build_request(:start_flow_execution, params)
      request.send_request(options)
    end

    # <p>Stops an Amazon Bedrock flow's execution. This operation prevents further processing of the flow and changes the execution status to <code>Aborted</code>.</p>
    # @param [Hash, Types::StopFlowExecutionRequest] params
    # @option params [String] :flow_identifier
    #   <p>The unique identifier of the flow.</p>
    # @option params [String] :flow_alias_identifier
    #   <p>The unique identifier of the flow alias used for the execution.</p>
    # @option params [String] :execution_identifier
    #   <p>The unique identifier of the flow execution to stop.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     flow_identifier: "FlowIdentifier", # required
    #     flow_alias_identifier: "FlowAliasIdentifier", # required
    #     execution_identifier: "FlowExecutionIdentifier", # required
    #   }
    #   options = {}
    #   response = client.stop_flow_execution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     execution_arn: "FlowExecutionIdentifier",
    #     status: "Running" # One of: ["Running", "Succeeded", "Failed", "TimedOut", "Aborted"], # required
    #   }
    # @return [Types::StopFlowExecutionResponse]
    def stop_flow_execution(params = {}, options = {})
      request = build_request(:stop_flow_execution, params)
      request.send_request(options)
    end

    # <p>Associate tags with a resource. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html">Tagging resources</a> in the Amazon Bedrock User Guide.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to tag.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>An object containing key-value pairs that define the tags to attach to the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "TaggableResourcesArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::TagResourceResponse]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Remove tags from a resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource from which to remove tags.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>A list of keys of the tags to remove from the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "TaggableResourcesArn", # required
    #     tag_keys: ["TagKey"], # required
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UntagResourceResponse]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Updates the metadata or encryption settings of a session. For more information about sessions, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/sessions.html">Store and retrieve conversation history and context with Amazon Bedrock sessions</a>.</p>
    # @param [Hash, Types::UpdateSessionRequest] params
    # @option params [Hash<String, String>] :session_metadata
    #   <p>A map of key-value pairs containing attributes to be persisted across the session. For example the user's ID, their language preference, and the type of device they are using.</p>
    # @option params [String] :session_identifier
    #   <p>The unique identifier of the session to modify. You can specify either the session's <code>sessionId</code> or its Amazon Resource Name (ARN).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     session_metadata: {
    #       "SessionMetadataKey" => "SessionMetadataValue"
    #     },
    #     session_identifier: "SessionIdentifier", # required
    #   }
    #   options = {}
    #   response = client.update_session(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     session_id: "Uuid", # required
    #     session_arn: "SessionArn", # required
    #     session_status: "ACTIVE" # One of: ["ACTIVE", "EXPIRED", "ENDED"], # required
    #     created_at: Time.now, # required
    #     last_updated_at: Time.now, # required
    #   }
    # @return [Types::UpdateSessionResponse]
    def update_session(params = {}, options = {})
      request = build_request(:update_session, params)
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
      context[:gem_name] = 'aws-sdk-bedrockagentruntime'
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
