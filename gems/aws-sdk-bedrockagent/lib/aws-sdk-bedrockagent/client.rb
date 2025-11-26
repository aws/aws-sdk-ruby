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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:bedrockagent)

module Aws::BedrockAgent
  # An API client for Aws::BedrockAgent.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AmazonBedrockAgentBuildTimeLambda
    @identifier = :bedrockagent

    add_plugin(::Aws::BedrockAgent::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::BedrockAgent::EndpointProvider)
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

    # <p>Makes an agent a collaborator for another agent.</p>
    # @param [Hash, Types::AssociateAgentCollaboratorRequest] params
    # @option params [String] :agent_id
    #   <p>The agent's ID.</p>
    # @option params [String] :agent_version
    #   <p>An agent version.</p>
    # @option params [Types::AgentDescriptor] :agent_descriptor
    #   <p>The alias of the collaborator agent.</p>
    # @option params [String] :collaborator_name
    #   <p>A name for the collaborator.</p>
    # @option params [String] :collaboration_instruction
    #   <p>Instruction for the collaborator.</p>
    # @option params [String] :relay_conversation_history
    #   <p>A relay conversation history for the collaborator.</p>
    # @option params [String] :client_token
    #   <p>A client token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_id: "Id", # required
    #     agent_version: "DraftVersion", # required
    #     agent_descriptor: { # required
    #       alias_arn: "AgentAliasArn"
    #     },
    #     collaborator_name: "Name", # required
    #     collaboration_instruction: "CollaborationInstruction", # required
    #     relay_conversation_history: "TO_COLLABORATOR" # One of: ["TO_COLLABORATOR", "DISABLED"],
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.associate_agent_collaborator(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     agent_collaborator: { # required
    #       agent_id: "Id", # required
    #       agent_version: "Version", # required
    #       agent_descriptor: { # required
    #         alias_arn: "AgentAliasArn"
    #       },
    #       collaborator_id: "Id", # required
    #       collaboration_instruction: "CollaborationInstruction", # required
    #       collaborator_name: "Name", # required
    #       created_at: Time.now, # required
    #       last_updated_at: Time.now, # required
    #       relay_conversation_history: "TO_COLLABORATOR" # One of: ["TO_COLLABORATOR", "DISABLED"],
    #       client_token: "ClientToken"
    #     }
    #   }
    # @return [Types::AssociateAgentCollaboratorResponse]
    def associate_agent_collaborator(params = {}, options = {})
      request = build_request(:associate_agent_collaborator, params)
      request.send_request(options)
    end

    # <p>Associates a knowledge base with an agent. If a knowledge base is associated and its <code>indexState</code> is set to <code>Enabled</code>, the agent queries the knowledge base for information to augment its response to the user.</p>
    # @param [Hash, Types::AssociateAgentKnowledgeBaseRequest] params
    # @option params [String] :agent_id
    #   <p>The unique identifier of the agent with which you want to associate the knowledge base.</p>
    # @option params [String] :agent_version
    #   <p>The version of the agent with which you want to associate the knowledge base.</p>
    # @option params [String] :knowledge_base_id
    #   <p>The unique identifier of the knowledge base to associate with the agent.</p>
    # @option params [String] :description
    #   <p>A description of what the agent should use the knowledge base for.</p>
    # @option params [String] :knowledge_base_state
    #   <p>Specifies whether to use the knowledge base or not when sending an <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html">InvokeAgent</a> request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_id: "Id", # required
    #     agent_version: "DraftVersion", # required
    #     knowledge_base_id: "Id", # required
    #     description: "Description", # required
    #     knowledge_base_state: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #   }
    #   options = {}
    #   response = client.associate_agent_knowledge_base(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     agent_knowledge_base: { # required
    #       agent_id: "Id", # required
    #       agent_version: "Version", # required
    #       knowledge_base_id: "Id", # required
    #       description: "Description", # required
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       knowledge_base_state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #     }
    #   }
    # @return [Types::AssociateAgentKnowledgeBaseResponse]
    def associate_agent_knowledge_base(params = {}, options = {})
      request = build_request(:associate_agent_knowledge_base, params)
      request.send_request(options)
    end

    # <p>Creates an agent that orchestrates interactions between foundation models, data sources, software applications, user conversations, and APIs to carry out tasks to help customers.</p> <ul> <li> <p>Specify the following fields for security purposes.</p> <ul> <li> <p> <code>agentResourceRoleArn</code> – The Amazon Resource Name (ARN) of the role with permissions to invoke API operations on an agent.</p> </li> <li> <p>(Optional) <code>customerEncryptionKeyArn</code> – The Amazon Resource Name (ARN) of a KMS key to encrypt the creation of the agent.</p> </li> <li> <p>(Optional) <code>idleSessionTTLinSeconds</code> – Specify the number of seconds for which the agent should maintain session information. After this time expires, the subsequent <code>InvokeAgent</code> request begins a new session.</p> </li> </ul> </li> <li> <p>To enable your agent to retain conversational context across multiple sessions, include a <code>memoryConfiguration</code> object. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/agents-configure-memory.html">Configure memory</a>.</p> </li> <li> <p>To override the default prompt behavior for agent orchestration and to use advanced prompts, include a <code>promptOverrideConfiguration</code> object. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/advanced-prompts.html">Advanced prompts</a>.</p> </li> <li> <p>If your agent fails to be created, the response returns a list of <code>failureReasons</code> alongside a list of <code>recommendedActions</code> for you to troubleshoot.</p> </li> <li> <p>The agent instructions will not be honored if your agent has only one knowledge base, uses default prompts, has no action group, and user input is disabled.</p> </li> </ul>
    # @param [Hash, Types::CreateAgentRequest] params
    # @option params [String] :agent_name
    #   <p>A name for the agent that you create.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, Amazon Bedrock ignores the request, but does not return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    # @option params [String] :instruction
    #   <p>Instructions that tell the agent what it should do and how it should interact with users.</p>
    # @option params [String] :foundation_model
    #   <p>The identifier for the model that you want to be used for orchestration by the agent you create.</p> <p>The <code>modelId</code> to provide depends on the type of model or throughput that you use:</p> <ul> <li> <p>If you use a base model, specify the model ID or its ARN. For a list of model IDs for base models, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/model-ids.html#model-ids-arns">Amazon Bedrock base model IDs (on-demand throughput)</a> in the Amazon Bedrock User Guide.</p> </li> <li> <p>If you use an inference profile, specify the inference profile ID or its ARN. For a list of inference profile IDs, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/cross-region-inference-support.html">Supported Regions and models for cross-region inference</a> in the Amazon Bedrock User Guide.</p> </li> <li> <p>If you use a provisioned model, specify the ARN of the Provisioned Throughput. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/prov-thru-use.html">Run inference using a Provisioned Throughput</a> in the Amazon Bedrock User Guide.</p> </li> <li> <p>If you use a custom model, first purchase Provisioned Throughput for it. Then specify the ARN of the resulting provisioned model. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-use.html">Use a custom model in Amazon Bedrock</a> in the Amazon Bedrock User Guide.</p> </li> <li> <p>If you use an <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-import-model.html">imported model</a>, specify the ARN of the imported model. You can get the model ARN from a successful call to <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_CreateModelImportJob.html">CreateModelImportJob</a> or from the Imported models page in the Amazon Bedrock console.</p> </li> </ul>
    # @option params [String] :description
    #   <p>A description of the agent.</p>
    # @option params [String] :orchestration_type
    #   <p> Specifies the type of orchestration strategy for the agent. This is set to <code>DEFAULT</code> orchestration type, by default. </p>
    # @option params [Types::CustomOrchestration] :custom_orchestration
    #   <p> Contains details of the custom orchestration configured for the agent. </p>
    # @option params [Integer] :idle_session_ttl_in_seconds
    #   <p>The number of seconds for which Amazon Bedrock keeps information about a user's conversation with the agent.</p> <p>A user interaction remains active for the amount of time specified. If no conversation occurs during this time, the session expires and Amazon Bedrock deletes any data provided before the timeout.</p>
    # @option params [String] :agent_resource_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role with permissions to invoke API operations on the agent.</p>
    # @option params [String] :customer_encryption_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key with which to encrypt the agent.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Any tags that you want to attach to the agent.</p>
    # @option params [Types::PromptOverrideConfiguration] :prompt_override_configuration
    #   <p>Contains configurations to override prompts in different parts of an agent sequence. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/advanced-prompts.html">Advanced prompts</a>.</p>
    # @option params [Types::GuardrailConfiguration] :guardrail_configuration
    #   <p>The unique Guardrail configuration assigned to the agent when it is created.</p>
    # @option params [Types::MemoryConfiguration] :memory_configuration
    #   <p> Contains the details of the memory configured for the agent.</p>
    # @option params [String] :agent_collaboration
    #   <p>The agent's collaboration role.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_name: "Name", # required
    #     client_token: "ClientToken",
    #     instruction: "Instruction",
    #     foundation_model: "ModelIdentifier",
    #     description: "Description",
    #     orchestration_type: "DEFAULT" # One of: ["DEFAULT", "CUSTOM_ORCHESTRATION"],
    #     custom_orchestration: {
    #       executor: {
    #         # One of:
    #         lambda: "LambdaArn"
    #       }
    #     },
    #     idle_session_ttl_in_seconds: 1,
    #     agent_resource_role_arn: "AgentRoleArn",
    #     customer_encryption_key_arn: "KmsKeyArn",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     prompt_override_configuration: {
    #       prompt_configurations: [ # required
    #         {
    #           prompt_type: "PRE_PROCESSING" # One of: ["PRE_PROCESSING", "ORCHESTRATION", "POST_PROCESSING", "KNOWLEDGE_BASE_RESPONSE_GENERATION", "MEMORY_SUMMARIZATION"],
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
    #       override_lambda: "LambdaArn"
    #     },
    #     guardrail_configuration: {
    #       guardrail_identifier: "GuardrailIdentifier",
    #       guardrail_version: "GuardrailVersion"
    #     },
    #     memory_configuration: {
    #       enabled_memory_types: ["SESSION_SUMMARY" # One of: ["SESSION_SUMMARY"]], # required
    #       storage_days: 1,
    #       session_summary_configuration: {
    #         max_recent_sessions: 1
    #       }
    #     },
    #     agent_collaboration: "SUPERVISOR" # One of: ["SUPERVISOR", "SUPERVISOR_ROUTER", "DISABLED"]
    #   }
    #   options = {}
    #   response = client.create_agent(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     agent: { # required
    #       agent_id: "Id", # required
    #       agent_name: "Name", # required
    #       agent_arn: "AgentArn", # required
    #       agent_version: "DraftVersion", # required
    #       client_token: "ClientToken",
    #       instruction: "Instruction",
    #       agent_status: "CREATING" # One of: ["CREATING", "PREPARING", "PREPARED", "NOT_PREPARED", "DELETING", "FAILED", "VERSIONING", "UPDATING"], # required
    #       foundation_model: "ModelIdentifier",
    #       description: "Description",
    #       orchestration_type: "DEFAULT" # One of: ["DEFAULT", "CUSTOM_ORCHESTRATION"],
    #       custom_orchestration: {
    #         executor: {
    #           # One of:
    #           lambda: "LambdaArn"
    #         }
    #       },
    #       idle_session_ttl_in_seconds: 1, # required
    #       agent_resource_role_arn: "AgentRoleArn", # required
    #       customer_encryption_key_arn: "KmsKeyArn",
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       prepared_at: Time.now,
    #       failure_reasons: ["FailureReason"],
    #       recommended_actions: ["RecommendedAction"],
    #       prompt_override_configuration: {
    #         prompt_configurations: [ # required
    #           {
    #             prompt_type: "PRE_PROCESSING" # One of: ["PRE_PROCESSING", "ORCHESTRATION", "POST_PROCESSING", "KNOWLEDGE_BASE_RESPONSE_GENERATION", "MEMORY_SUMMARIZATION"],
    #             prompt_creation_mode: "DEFAULT" # One of: ["DEFAULT", "OVERRIDDEN"],
    #             prompt_state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #             base_prompt_template: "BasePromptTemplate",
    #             inference_configuration: {
    #               temperature: 1.0,
    #               top_p: 1.0,
    #               top_k: 1,
    #               maximum_length: 1,
    #               stop_sequences: ["String"]
    #             },
    #             parser_mode: "DEFAULT" # One of: ["DEFAULT", "OVERRIDDEN"],
    #             foundation_model: "ModelIdentifier",
    #             additional_model_request_fields: ""null""
    #           }
    #         ],
    #         override_lambda: "LambdaArn"
    #       },
    #       guardrail_configuration: {
    #         guardrail_identifier: "GuardrailIdentifier",
    #         guardrail_version: "GuardrailVersion"
    #       },
    #       memory_configuration: {
    #         enabled_memory_types: ["SESSION_SUMMARY" # One of: ["SESSION_SUMMARY"]], # required
    #         storage_days: 1,
    #         session_summary_configuration: {
    #           max_recent_sessions: 1
    #         }
    #       },
    #       agent_collaboration: "SUPERVISOR" # One of: ["SUPERVISOR", "SUPERVISOR_ROUTER", "DISABLED"]
    #     }
    #   }
    # @return [Types::CreateAgentResponse]
    def create_agent(params = {}, options = {})
      request = build_request(:create_agent, params)
      request.send_request(options)
    end

    # <p>Creates an action group for an agent. An action group represents the actions that an agent can carry out for the customer by defining the APIs that an agent can call and the logic for calling them.</p> <p>To allow your agent to request the user for additional information when trying to complete a task, add an action group with the <code>parentActionGroupSignature</code> field set to <code>AMAZON.UserInput</code>. </p> <p>To allow your agent to generate, run, and troubleshoot code when trying to complete a task, add an action group with the <code>parentActionGroupSignature</code> field set to <code>AMAZON.CodeInterpreter</code>. </p> <p>You must leave the <code>description</code>, <code>apiSchema</code>, and <code>actionGroupExecutor</code> fields blank for this action group. During orchestration, if your agent determines that it needs to invoke an API in an action group, but doesn't have enough information to complete the API request, it will invoke this action group instead and return an <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_Observation.html">Observation</a> reprompting the user for more information.</p>
    # @param [Hash, Types::CreateAgentActionGroupRequest] params
    # @option params [String] :agent_id
    #   <p>The unique identifier of the agent for which to create the action group.</p>
    # @option params [String] :agent_version
    #   <p>The version of the agent for which to create the action group.</p>
    # @option params [String] :action_group_name
    #   <p>The name to give the action group.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, Amazon Bedrock ignores the request, but does not return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    # @option params [String] :description
    #   <p>A description of the action group.</p>
    # @option params [String] :parent_action_group_signature
    #   <p>Specify a built-in or computer use action for this action group. If you specify a value, you must leave the <code>description</code>, <code>apiSchema</code>, and <code>actionGroupExecutor</code> fields empty for this action group. </p> <ul> <li> <p>To allow your agent to request the user for additional information when trying to complete a task, set this field to <code>AMAZON.UserInput</code>. </p> </li> <li> <p>To allow your agent to generate, run, and troubleshoot code when trying to complete a task, set this field to <code>AMAZON.CodeInterpreter</code>.</p> </li> <li> <p>To allow your agent to use an Anthropic computer use tool, specify one of the following values. </p> <important> <p> Computer use is a new Anthropic Claude model capability (in beta) available with Anthropic Claude 3.7 Sonnet and Claude 3.5 Sonnet v2 only. When operating computer use functionality, we recommend taking additional security precautions, such as executing computer actions in virtual environments with restricted data access and limited internet connectivity. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/agents-computer-use.html">Configure an Amazon Bedrock Agent to complete tasks with computer use tools</a>. </p> </important> <ul> <li> <p> <code>ANTHROPIC.Computer</code> - Gives the agent permission to use the mouse and keyboard and take screenshots.</p> </li> <li> <p> <code>ANTHROPIC.TextEditor</code> - Gives the agent permission to view, create and edit files.</p> </li> <li> <p> <code>ANTHROPIC.Bash</code> - Gives the agent permission to run commands in a bash shell.</p> </li> </ul> </li> </ul>
    # @option params [Hash<String, String>] :parent_action_group_signature_params
    #   <p>The configuration settings for a computer use action.</p> <important> <p> Computer use is a new Anthropic Claude model capability (in beta) available with Anthropic Claude 3.7 Sonnet and Claude 3.5 Sonnet v2 only. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/agents-computer-use.html">Configure an Amazon Bedrock Agent to complete tasks with computer use tools</a>. </p> </important>
    # @option params [Types::ActionGroupExecutor] :action_group_executor
    #   <p>The Amazon Resource Name (ARN) of the Lambda function containing the business logic that is carried out upon invoking the action or the custom control method for handling the information elicited from the user.</p>
    # @option params [Types::APISchema] :api_schema
    #   <p>Contains either details about the S3 object containing the OpenAPI schema for the action group or the JSON or YAML-formatted payload defining the schema. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/agents-api-schema.html">Action group OpenAPI schemas</a>.</p>
    # @option params [String] :action_group_state
    #   <p>Specifies whether the action group is available for the agent to invoke or not when sending an <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html">InvokeAgent</a> request.</p>
    # @option params [Types::FunctionSchema] :function_schema
    #   <p>Contains details about the function schema for the action group or the JSON or YAML-formatted payload defining the schema.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_id: "Id", # required
    #     agent_version: "DraftVersion", # required
    #     action_group_name: "Name", # required
    #     client_token: "ClientToken",
    #     description: "Description",
    #     parent_action_group_signature: "AMAZON.UserInput" # One of: ["AMAZON.UserInput", "AMAZON.CodeInterpreter", "ANTHROPIC.Computer", "ANTHROPIC.Bash", "ANTHROPIC.TextEditor"],
    #     parent_action_group_signature_params: {
    #       "String" => "String"
    #     },
    #     action_group_executor: {
    #       # One of:
    #       lambda: "LambdaArn",
    #       custom_control: "RETURN_CONTROL" # One of: ["RETURN_CONTROL"]
    #     },
    #     api_schema: {
    #       # One of:
    #       s3: {
    #         s3_bucket_name: "S3BucketName",
    #         s3_object_key: "S3ObjectKey"
    #       },
    #       payload: "Payload"
    #     },
    #     action_group_state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     function_schema: {
    #       # One of:
    #       functions: [
    #         {
    #           name: "Name", # required
    #           description: "FunctionDescription",
    #           parameters: {
    #             "Name" => {
    #               description: "ParameterDescription",
    #               type: "string" # One of: ["string", "number", "integer", "boolean", "array"], # required
    #               required: false
    #             }
    #           },
    #           require_confirmation: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.create_agent_action_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     agent_action_group: { # required
    #       agent_id: "Id", # required
    #       agent_version: "Version", # required
    #       action_group_id: "Id", # required
    #       action_group_name: "Name", # required
    #       client_token: "ClientToken",
    #       description: "Description",
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       parent_action_signature: "AMAZON.UserInput" # One of: ["AMAZON.UserInput", "AMAZON.CodeInterpreter", "ANTHROPIC.Computer", "ANTHROPIC.Bash", "ANTHROPIC.TextEditor"],
    #       parent_action_group_signature_params: {
    #         "String" => "String"
    #       },
    #       action_group_executor: {
    #         # One of:
    #         lambda: "LambdaArn",
    #         custom_control: "RETURN_CONTROL" # One of: ["RETURN_CONTROL"]
    #       },
    #       api_schema: {
    #         # One of:
    #         s3: {
    #           s3_bucket_name: "S3BucketName",
    #           s3_object_key: "S3ObjectKey"
    #         },
    #         payload: "Payload"
    #       },
    #       function_schema: {
    #         # One of:
    #         functions: [
    #           {
    #             name: "Name", # required
    #             description: "FunctionDescription",
    #             parameters: {
    #               "Name" => {
    #                 description: "ParameterDescription",
    #                 type: "string" # One of: ["string", "number", "integer", "boolean", "array"], # required
    #                 required: false
    #               }
    #             },
    #             require_confirmation: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #           }
    #         ]
    #       },
    #       action_group_state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #     }
    #   }
    # @return [Types::CreateAgentActionGroupResponse]
    def create_agent_action_group(params = {}, options = {})
      request = build_request(:create_agent_action_group, params)
      request.send_request(options)
    end

    # <p>Creates an alias of an agent that can be used to deploy the agent.</p>
    # @param [Hash, Types::CreateAgentAliasRequest] params
    # @option params [String] :agent_id
    #   <p>The unique identifier of the agent.</p>
    # @option params [String] :agent_alias_name
    #   <p>The name of the alias.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, Amazon Bedrock ignores the request, but does not return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    # @option params [String] :description
    #   <p>A description of the alias of the agent.</p>
    # @option params [Array<Types::AgentAliasRoutingConfigurationListItem>] :routing_configuration
    #   <p>Contains details about the routing configuration of the alias.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Any tags that you want to attach to the alias of the agent.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_id: "Id", # required
    #     agent_alias_name: "Name", # required
    #     client_token: "ClientToken",
    #     description: "Description",
    #     routing_configuration: [
    #       {
    #         agent_version: "Version",
    #         provisioned_throughput: "ProvisionedModelIdentifier"
    #       }
    #     ],
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_agent_alias(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     agent_alias: { # required
    #       agent_id: "Id", # required
    #       agent_alias_id: "AgentAliasId", # required
    #       agent_alias_name: "Name", # required
    #       agent_alias_arn: "AgentAliasArn", # required
    #       client_token: "ClientToken",
    #       description: "Description",
    #       routing_configuration: [ # required
    #         {
    #           agent_version: "Version",
    #           provisioned_throughput: "ProvisionedModelIdentifier"
    #         }
    #       ],
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       agent_alias_history_events: [
    #         {
    #           routing_configuration: [
    #             {
    #               agent_version: "Version",
    #               provisioned_throughput: "ProvisionedModelIdentifier"
    #             }
    #           ],
    #           end_date: Time.now,
    #           start_date: Time.now
    #         }
    #       ],
    #       agent_alias_status: "CREATING" # One of: ["CREATING", "PREPARED", "FAILED", "UPDATING", "DELETING", "DISSOCIATED"], # required
    #       failure_reasons: ["FailureReason"],
    #       alias_invocation_state: "ACCEPT_INVOCATIONS" # One of: ["ACCEPT_INVOCATIONS", "REJECT_INVOCATIONS"]
    #     }
    #   }
    # @return [Types::CreateAgentAliasResponse]
    def create_agent_alias(params = {}, options = {})
      request = build_request(:create_agent_alias, params)
      request.send_request(options)
    end

    # <p>Connects a knowledge base to a data source. You specify the configuration for the specific data source service in the <code>dataSourceConfiguration</code> field.</p> <important> <p>You can't change the <code>chunkingConfiguration</code> after you create the data source connector.</p> </important>
    # @param [Hash, Types::CreateDataSourceRequest] params
    # @option params [String] :knowledge_base_id
    #   <p>The unique identifier of the knowledge base to which to add the data source.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, Amazon Bedrock ignores the request, but does not return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    # @option params [String] :name
    #   <p>The name of the data source.</p>
    # @option params [String] :description
    #   <p>A description of the data source.</p>
    # @option params [Types::DataSourceConfiguration] :data_source_configuration
    #   <p>The connection configuration for the data source.</p>
    # @option params [String] :data_deletion_policy
    #   <p>The data deletion policy for the data source.</p> <p>You can set the data deletion policy to:</p> <ul> <li> <p>DELETE: Deletes all data from your data source that’s converted into vector embeddings upon deletion of a knowledge base or data source resource. Note that the <b>vector store itself is not deleted</b>, only the data. This flag is ignored if an Amazon Web Services account is deleted.</p> </li> <li> <p>RETAIN: Retains all data from your data source that’s converted into vector embeddings upon deletion of a knowledge base or data source resource. Note that the <b>vector store itself is not deleted</b> if you delete a knowledge base or data source resource.</p> </li> </ul>
    # @option params [Types::ServerSideEncryptionConfiguration] :server_side_encryption_configuration
    #   <p>Contains details about the server-side encryption for the data source.</p>
    # @option params [Types::VectorIngestionConfiguration] :vector_ingestion_configuration
    #   <p>Contains details about how to ingest the documents in the data source.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     knowledge_base_id: "Id", # required
    #     client_token: "ClientToken",
    #     name: "Name", # required
    #     description: "Description",
    #     data_source_configuration: { # required
    #       type: "S3" # One of: ["S3", "WEB", "CONFLUENCE", "SALESFORCE", "SHAREPOINT", "CUSTOM", "REDSHIFT_METADATA"], # required
    #       s3_configuration: {
    #         bucket_arn: "S3BucketArn", # required
    #         inclusion_prefixes: ["S3Prefix"],
    #         bucket_owner_account_id: "BucketOwnerAccountId"
    #       },
    #       web_configuration: {
    #         source_configuration: { # required
    #           url_configuration: { # required
    #             seed_urls: [
    #               {
    #                 url: "Url"
    #               }
    #             ]
    #           }
    #         },
    #         crawler_configuration: {
    #           crawler_limits: {
    #             rate_limit: 1,
    #             max_pages: 1
    #           },
    #           inclusion_filters: ["FilterPattern"],
    #           exclusion_filters: ["FilterPattern"],
    #           scope: "HOST_ONLY" # One of: ["HOST_ONLY", "SUBDOMAINS"],
    #           user_agent: "UserAgent",
    #           user_agent_header: "UserAgentHeader"
    #         }
    #       },
    #       confluence_configuration: {
    #         source_configuration: { # required
    #           host_url: "HttpsUrl", # required
    #           host_type: "SAAS" # One of: ["SAAS"], # required
    #           auth_type: "BASIC" # One of: ["BASIC", "OAUTH2_CLIENT_CREDENTIALS"], # required
    #           credentials_secret_arn: "SecretArn", # required
    #         },
    #         crawler_configuration: {
    #           filter_configuration: {
    #             type: "PATTERN" # One of: ["PATTERN"], # required
    #             pattern_object_filter: {
    #               filters: [ # required
    #                 {
    #                   object_type: "FilteredObjectType", # required
    #                   inclusion_filters: ["FilterPattern"],
    #                   exclusion_filters: ["FilterPattern"]
    #                 }
    #               ]
    #             }
    #           }
    #         }
    #       },
    #       salesforce_configuration: {
    #         source_configuration: { # required
    #           host_url: "HttpsUrl", # required
    #           auth_type: "OAUTH2_CLIENT_CREDENTIALS" # One of: ["OAUTH2_CLIENT_CREDENTIALS"], # required
    #           credentials_secret_arn: "SecretArn", # required
    #         },
    #         crawler_configuration: {
    #           filter_configuration: {
    #             type: "PATTERN" # One of: ["PATTERN"], # required
    #             pattern_object_filter: {
    #               filters: [ # required
    #                 {
    #                   object_type: "FilteredObjectType", # required
    #                   inclusion_filters: ["FilterPattern"],
    #                   exclusion_filters: ["FilterPattern"]
    #                 }
    #               ]
    #             }
    #           }
    #         }
    #       },
    #       share_point_configuration: {
    #         source_configuration: { # required
    #           tenant_id: "Microsoft365TenantId",
    #           domain: "SharePointDomain", # required
    #           site_urls: ["HttpsUrl"], # required
    #           host_type: "ONLINE" # One of: ["ONLINE"], # required
    #           auth_type: "OAUTH2_CLIENT_CREDENTIALS" # One of: ["OAUTH2_CLIENT_CREDENTIALS", "OAUTH2_SHAREPOINT_APP_ONLY_CLIENT_CREDENTIALS"], # required
    #           credentials_secret_arn: "SecretArn", # required
    #         },
    #         crawler_configuration: {
    #           filter_configuration: {
    #             type: "PATTERN" # One of: ["PATTERN"], # required
    #             pattern_object_filter: {
    #               filters: [ # required
    #                 {
    #                   object_type: "FilteredObjectType", # required
    #                   inclusion_filters: ["FilterPattern"],
    #                   exclusion_filters: ["FilterPattern"]
    #                 }
    #               ]
    #             }
    #           }
    #         }
    #       }
    #     },
    #     data_deletion_policy: "RETAIN" # One of: ["RETAIN", "DELETE"],
    #     server_side_encryption_configuration: {
    #       kms_key_arn: "KmsKeyArn"
    #     },
    #     vector_ingestion_configuration: {
    #       chunking_configuration: {
    #         chunking_strategy: "FIXED_SIZE" # One of: ["FIXED_SIZE", "NONE", "HIERARCHICAL", "SEMANTIC"], # required
    #         fixed_size_chunking_configuration: {
    #           max_tokens: 1, # required
    #           overlap_percentage: 1, # required
    #         },
    #         hierarchical_chunking_configuration: {
    #           level_configurations: [ # required
    #             {
    #               max_tokens: 1, # required
    #             }
    #           ],
    #           overlap_tokens: 1, # required
    #         },
    #         semantic_chunking_configuration: {
    #           max_tokens: 1, # required
    #           buffer_size: 1, # required
    #           breakpoint_percentile_threshold: 1, # required
    #         }
    #       },
    #       custom_transformation_configuration: {
    #         intermediate_storage: { # required
    #           s3_location: { # required
    #             uri: "S3BucketUri", # required
    #           }
    #         },
    #         transformations: [ # required
    #           {
    #             transformation_function: { # required
    #               transformation_lambda_configuration: { # required
    #                 lambda_arn: "LambdaArn", # required
    #               }
    #             },
    #             step_to_apply: "POST_CHUNKING" # One of: ["POST_CHUNKING"], # required
    #           }
    #         ]
    #       },
    #       parsing_configuration: {
    #         parsing_strategy: "BEDROCK_FOUNDATION_MODEL" # One of: ["BEDROCK_FOUNDATION_MODEL", "BEDROCK_DATA_AUTOMATION"], # required
    #         bedrock_foundation_model_configuration: {
    #           model_arn: "BedrockModelArn", # required
    #           parsing_prompt: {
    #             parsing_prompt_text: "ParsingPromptText", # required
    #           },
    #           parsing_modality: "MULTIMODAL" # One of: ["MULTIMODAL"]
    #         },
    #         bedrock_data_automation_configuration: {
    #           parsing_modality: "MULTIMODAL" # One of: ["MULTIMODAL"]
    #         }
    #       },
    #       context_enrichment_configuration: {
    #         type: "BEDROCK_FOUNDATION_MODEL" # One of: ["BEDROCK_FOUNDATION_MODEL"], # required
    #         bedrock_foundation_model_configuration: {
    #           enrichment_strategy_configuration: { # required
    #             method: "CHUNK_ENTITY_EXTRACTION" # One of: ["CHUNK_ENTITY_EXTRACTION"], # required
    #           },
    #           model_arn: "BedrockModelArn", # required
    #         }
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_data_source(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     data_source: { # required
    #       knowledge_base_id: "Id", # required
    #       data_source_id: "Id", # required
    #       name: "Name", # required
    #       status: "AVAILABLE" # One of: ["AVAILABLE", "DELETING", "DELETE_UNSUCCESSFUL"], # required
    #       description: "Description",
    #       data_source_configuration: { # required
    #         type: "S3" # One of: ["S3", "WEB", "CONFLUENCE", "SALESFORCE", "SHAREPOINT", "CUSTOM", "REDSHIFT_METADATA"], # required
    #         s3_configuration: {
    #           bucket_arn: "S3BucketArn", # required
    #           inclusion_prefixes: ["S3Prefix"],
    #           bucket_owner_account_id: "BucketOwnerAccountId"
    #         },
    #         web_configuration: {
    #           source_configuration: { # required
    #             url_configuration: { # required
    #               seed_urls: [
    #                 {
    #                   url: "Url"
    #                 }
    #               ]
    #             }
    #           },
    #           crawler_configuration: {
    #             crawler_limits: {
    #               rate_limit: 1,
    #               max_pages: 1
    #             },
    #             inclusion_filters: ["FilterPattern"],
    #             exclusion_filters: ["FilterPattern"],
    #             scope: "HOST_ONLY" # One of: ["HOST_ONLY", "SUBDOMAINS"],
    #             user_agent: "UserAgent",
    #             user_agent_header: "UserAgentHeader"
    #           }
    #         },
    #         confluence_configuration: {
    #           source_configuration: { # required
    #             host_url: "HttpsUrl", # required
    #             host_type: "SAAS" # One of: ["SAAS"], # required
    #             auth_type: "BASIC" # One of: ["BASIC", "OAUTH2_CLIENT_CREDENTIALS"], # required
    #             credentials_secret_arn: "SecretArn", # required
    #           },
    #           crawler_configuration: {
    #             filter_configuration: {
    #               type: "PATTERN" # One of: ["PATTERN"], # required
    #               pattern_object_filter: {
    #                 filters: [ # required
    #                   {
    #                     object_type: "FilteredObjectType", # required
    #                     inclusion_filters: ["FilterPattern"],
    #                     exclusion_filters: ["FilterPattern"]
    #                   }
    #                 ]
    #               }
    #             }
    #           }
    #         },
    #         salesforce_configuration: {
    #           source_configuration: { # required
    #             host_url: "HttpsUrl", # required
    #             auth_type: "OAUTH2_CLIENT_CREDENTIALS" # One of: ["OAUTH2_CLIENT_CREDENTIALS"], # required
    #             credentials_secret_arn: "SecretArn", # required
    #           },
    #           crawler_configuration: {
    #             filter_configuration: {
    #               type: "PATTERN" # One of: ["PATTERN"], # required
    #               pattern_object_filter: {
    #                 filters: [ # required
    #                   {
    #                     object_type: "FilteredObjectType", # required
    #                     inclusion_filters: ["FilterPattern"],
    #                     exclusion_filters: ["FilterPattern"]
    #                   }
    #                 ]
    #               }
    #             }
    #           }
    #         },
    #         share_point_configuration: {
    #           source_configuration: { # required
    #             tenant_id: "Microsoft365TenantId",
    #             domain: "SharePointDomain", # required
    #             site_urls: ["HttpsUrl"], # required
    #             host_type: "ONLINE" # One of: ["ONLINE"], # required
    #             auth_type: "OAUTH2_CLIENT_CREDENTIALS" # One of: ["OAUTH2_CLIENT_CREDENTIALS", "OAUTH2_SHAREPOINT_APP_ONLY_CLIENT_CREDENTIALS"], # required
    #             credentials_secret_arn: "SecretArn", # required
    #           },
    #           crawler_configuration: {
    #             filter_configuration: {
    #               type: "PATTERN" # One of: ["PATTERN"], # required
    #               pattern_object_filter: {
    #                 filters: [ # required
    #                   {
    #                     object_type: "FilteredObjectType", # required
    #                     inclusion_filters: ["FilterPattern"],
    #                     exclusion_filters: ["FilterPattern"]
    #                   }
    #                 ]
    #               }
    #             }
    #           }
    #         }
    #       },
    #       server_side_encryption_configuration: {
    #         kms_key_arn: "KmsKeyArn"
    #       },
    #       vector_ingestion_configuration: {
    #         chunking_configuration: {
    #           chunking_strategy: "FIXED_SIZE" # One of: ["FIXED_SIZE", "NONE", "HIERARCHICAL", "SEMANTIC"], # required
    #           fixed_size_chunking_configuration: {
    #             max_tokens: 1, # required
    #             overlap_percentage: 1, # required
    #           },
    #           hierarchical_chunking_configuration: {
    #             level_configurations: [ # required
    #               {
    #                 max_tokens: 1, # required
    #               }
    #             ],
    #             overlap_tokens: 1, # required
    #           },
    #           semantic_chunking_configuration: {
    #             max_tokens: 1, # required
    #             buffer_size: 1, # required
    #             breakpoint_percentile_threshold: 1, # required
    #           }
    #         },
    #         custom_transformation_configuration: {
    #           intermediate_storage: { # required
    #             s3_location: { # required
    #               uri: "S3BucketUri", # required
    #             }
    #           },
    #           transformations: [ # required
    #             {
    #               transformation_function: { # required
    #                 transformation_lambda_configuration: { # required
    #                   lambda_arn: "LambdaArn", # required
    #                 }
    #               },
    #               step_to_apply: "POST_CHUNKING" # One of: ["POST_CHUNKING"], # required
    #             }
    #           ]
    #         },
    #         parsing_configuration: {
    #           parsing_strategy: "BEDROCK_FOUNDATION_MODEL" # One of: ["BEDROCK_FOUNDATION_MODEL", "BEDROCK_DATA_AUTOMATION"], # required
    #           bedrock_foundation_model_configuration: {
    #             model_arn: "BedrockModelArn", # required
    #             parsing_prompt: {
    #               parsing_prompt_text: "ParsingPromptText", # required
    #             },
    #             parsing_modality: "MULTIMODAL" # One of: ["MULTIMODAL"]
    #           },
    #           bedrock_data_automation_configuration: {
    #             parsing_modality: "MULTIMODAL" # One of: ["MULTIMODAL"]
    #           }
    #         },
    #         context_enrichment_configuration: {
    #           type: "BEDROCK_FOUNDATION_MODEL" # One of: ["BEDROCK_FOUNDATION_MODEL"], # required
    #           bedrock_foundation_model_configuration: {
    #             enrichment_strategy_configuration: { # required
    #               method: "CHUNK_ENTITY_EXTRACTION" # One of: ["CHUNK_ENTITY_EXTRACTION"], # required
    #             },
    #             model_arn: "BedrockModelArn", # required
    #           }
    #         }
    #       },
    #       data_deletion_policy: "RETAIN" # One of: ["RETAIN", "DELETE"],
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       failure_reasons: ["FailureReason"]
    #     }
    #   }
    # @return [Types::CreateDataSourceResponse]
    def create_data_source(params = {}, options = {})
      request = build_request(:create_data_source, params)
      request.send_request(options)
    end

    # <p>Creates a prompt flow that you can use to send an input through various steps to yield an output. Configure nodes, each of which corresponds to a step of the flow, and create connections between the nodes to create paths to different outputs. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/flows-how-it-works.html">How it works</a> and <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/flows-create.html">Create a flow in Amazon Bedrock</a> in the Amazon Bedrock User Guide.</p>
    # @param [Hash, Types::CreateFlowRequest] params
    # @option params [String] :name
    #   <p>A name for the flow.</p>
    # @option params [String] :description
    #   <p>A description for the flow.</p>
    # @option params [String] :execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the service role with permissions to create and manage a flow. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/flows-permissions.html">Create a service role for flows in Amazon Bedrock</a> in the Amazon Bedrock User Guide.</p>
    # @option params [String] :customer_encryption_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key to encrypt the flow.</p>
    # @option params [Types::FlowDefinition] :definition
    #   <p>A definition of the nodes and connections between nodes in the flow.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, Amazon Bedrock ignores the request, but does not return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Any tags that you want to attach to the flow. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/tagging.html">Tagging resources in Amazon Bedrock</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "FlowName", # required
    #     description: "FlowDescription",
    #     execution_role_arn: "FlowExecutionRoleArn", # required
    #     customer_encryption_key_arn: "KmsKeyArn",
    #     definition: {
    #       nodes: [
    #         {
    #           name: "FlowNodeName", # required
    #           type: "Input" # One of: ["Input", "Output", "KnowledgeBase", "Condition", "Lex", "Prompt", "LambdaFunction", "Storage", "Agent", "Retrieval", "Iterator", "Collector", "InlineCode", "Loop", "LoopInput", "LoopController"], # required
    #           configuration: {
    #             # One of:
    #             input: {
    #             },
    #             output: {
    #             },
    #             knowledge_base: {
    #               knowledge_base_id: "FlowKnowledgeBaseId", # required
    #               model_id: "KnowledgeBaseModelIdentifier",
    #               guardrail_configuration: {
    #                 guardrail_identifier: "GuardrailIdentifier",
    #                 guardrail_version: "GuardrailVersion"
    #               },
    #               number_of_results: 1,
    #               prompt_template: {
    #                 text_prompt_template: "KnowledgeBaseTextPrompt"
    #               },
    #               inference_configuration: {
    #                 # One of:
    #                 text: {
    #                   temperature: 1.0,
    #                   top_p: 1.0,
    #                   max_tokens: 1,
    #                   stop_sequences: ["String"]
    #                 }
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
    #               orchestration_configuration: {
    #                 prompt_template: {
    #                   text_prompt_template: "KnowledgeBaseTextPrompt"
    #                 },
    #                 inference_config: {
    #                   # One of:
    #                   text: {
    #                     temperature: 1.0,
    #                     top_p: 1.0,
    #                     max_tokens: 1,
    #                     stop_sequences: ["String"]
    #                   }
    #                 },
    #                 additional_model_request_fields: {
    #                   "AdditionalModelRequestFieldsKey" => ""null""
    #                 },
    #                 performance_config: {
    #                   latency: "standard" # One of: ["standard", "optimized"]
    #                 }
    #               }
    #             },
    #             condition: {
    #               conditions: [ # required
    #                 {
    #                   name: "FlowConditionName", # required
    #                   expression: "FlowConditionExpression"
    #                 }
    #               ]
    #             },
    #             lex: {
    #               bot_alias_arn: "FlowLexBotAliasArn", # required
    #               locale_id: "FlowLexBotLocaleId", # required
    #             },
    #             prompt: {
    #               source_configuration: { # required
    #                 # One of:
    #                 resource: {
    #                   prompt_arn: "FlowPromptArn", # required
    #                 },
    #                 inline: {
    #                   template_type: "TEXT" # One of: ["TEXT", "CHAT"], # required
    #                   template_configuration: { # required
    #                     # One of:
    #                     text: {
    #                       text: "TextPrompt", # required
    #                       cache_point: {
    #                         type: "default" # One of: ["default"], # required
    #                       },
    #                       input_variables: [
    #                         {
    #                           name: "PromptInputVariableName"
    #                         }
    #                       ]
    #                     },
    #                     chat: {
    #                       messages: [ # required
    #                         {
    #                           role: "user" # One of: ["user", "assistant"], # required
    #                           content: [{ # required
    #                             # One of:
    #                             text: "String",
    #                             cache_point: {
    #                               type: "default" # One of: ["default"], # required
    #                             }
    #                           }]
    #                         }
    #                       ],
    #                       system: [{
    #                         # One of:
    #                         text: "NonEmptyString",
    #                         cache_point: {
    #                           type: "default" # One of: ["default"], # required
    #                         }
    #                       }],
    #                       input_variables: [
    #                         {
    #                           name: "PromptInputVariableName"
    #                         }
    #                       ],
    #                       tool_configuration: {
    #                         tools: [{ # required
    #                           # One of:
    #                           tool_spec: {
    #                             name: "ToolName", # required
    #                             description: "NonEmptyString",
    #                             input_schema: { # required
    #                               # One of:
    #                               json: ""null""
    #                             }
    #                           },
    #                           cache_point: {
    #                             type: "default" # One of: ["default"], # required
    #                           }
    #                         }],
    #                         tool_choice: {
    #                           # One of:
    #                           auto: {
    #                           },
    #                           any: {
    #                           },
    #                           tool: {
    #                             name: "ToolName", # required
    #                           }
    #                         }
    #                       }
    #                     }
    #                   },
    #                   model_id: "FlowPromptModelIdentifier", # required
    #                   inference_configuration: {
    #                     # One of:
    #                     text: {
    #                       temperature: 1.0,
    #                       top_p: 1.0,
    #                       max_tokens: 1,
    #                       stop_sequences: ["String"]
    #                     }
    #                   },
    #                   additional_model_request_fields: ""null""
    #                 }
    #               },
    #               guardrail_configuration: {
    #                 guardrail_identifier: "GuardrailIdentifier",
    #                 guardrail_version: "GuardrailVersion"
    #               }
    #             },
    #             lambda_function: {
    #               lambda_arn: "FlowLambdaArn", # required
    #             },
    #             storage: {
    #               service_configuration: { # required
    #                 # One of:
    #                 s3: {
    #                   bucket_name: "FlowS3BucketName", # required
    #                 }
    #               }
    #             },
    #             agent: {
    #               agent_alias_arn: "FlowAgentAliasArn", # required
    #             },
    #             retrieval: {
    #               service_configuration: { # required
    #                 # One of:
    #                 s3: {
    #                   bucket_name: "FlowS3BucketName", # required
    #                 }
    #               }
    #             },
    #             iterator: {
    #             },
    #             collector: {
    #             },
    #             inline_code: {
    #               code: "InlineCode", # required
    #               language: "Python_3" # One of: ["Python_3"], # required
    #             },
    #             loop: {
    #               definition: { # required
    #                 # recursive FlowDefinition
    #               }
    #             },
    #             loop_input: {
    #             },
    #             loop_controller: {
    #               continue_condition: { # required
    #                 name: "FlowConditionName", # required
    #                 expression: "FlowConditionExpression"
    #               },
    #               max_iterations: 1
    #             }
    #           },
    #           inputs: [
    #             {
    #               name: "FlowNodeInputName", # required
    #               type: "String" # One of: ["String", "Number", "Boolean", "Object", "Array"], # required
    #               expression: "FlowNodeInputExpression", # required
    #               category: "LoopCondition" # One of: ["LoopCondition", "ReturnValueToLoopStart", "ExitLoop"]
    #             }
    #           ],
    #           outputs: [
    #             {
    #               name: "FlowNodeOutputName", # required
    #               type: "String" # One of: ["String", "Number", "Boolean", "Object", "Array"], # required
    #             }
    #           ]
    #         }
    #       ],
    #       connections: [
    #         {
    #           type: "Data" # One of: ["Data", "Conditional"], # required
    #           name: "FlowConnectionName", # required
    #           source: "FlowNodeName", # required
    #           target: "FlowNodeName", # required
    #           configuration: {
    #             # One of:
    #             data: {
    #               source_output: "FlowNodeOutputName", # required
    #               target_input: "FlowNodeInputName", # required
    #             },
    #             conditional: {
    #               condition: "FlowConditionName", # required
    #             }
    #           }
    #         }
    #       ]
    #     },
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_flow(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "FlowName", # required
    #     description: "FlowDescription",
    #     execution_role_arn: "FlowExecutionRoleArn", # required
    #     customer_encryption_key_arn: "KmsKeyArn",
    #     id: "FlowId", # required
    #     arn: "FlowArn", # required
    #     status: "Failed" # One of: ["Failed", "Prepared", "Preparing", "NotPrepared"], # required
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #     version: "DraftVersion", # required
    #     definition: {
    #       nodes: [
    #         {
    #           name: "FlowNodeName", # required
    #           type: "Input" # One of: ["Input", "Output", "KnowledgeBase", "Condition", "Lex", "Prompt", "LambdaFunction", "Storage", "Agent", "Retrieval", "Iterator", "Collector", "InlineCode", "Loop", "LoopInput", "LoopController"], # required
    #           configuration: {
    #             # One of:
    #             input: {
    #             },
    #             output: {
    #             },
    #             knowledge_base: {
    #               knowledge_base_id: "FlowKnowledgeBaseId", # required
    #               model_id: "KnowledgeBaseModelIdentifier",
    #               guardrail_configuration: {
    #                 guardrail_identifier: "GuardrailIdentifier",
    #                 guardrail_version: "GuardrailVersion"
    #               },
    #               number_of_results: 1,
    #               prompt_template: {
    #                 text_prompt_template: "KnowledgeBaseTextPrompt"
    #               },
    #               inference_configuration: {
    #                 # One of:
    #                 text: {
    #                   temperature: 1.0,
    #                   top_p: 1.0,
    #                   max_tokens: 1,
    #                   stop_sequences: ["String"]
    #                 }
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
    #               orchestration_configuration: {
    #                 prompt_template: {
    #                   text_prompt_template: "KnowledgeBaseTextPrompt"
    #                 },
    #                 inference_config: {
    #                   # One of:
    #                   text: {
    #                     temperature: 1.0,
    #                     top_p: 1.0,
    #                     max_tokens: 1,
    #                     stop_sequences: ["String"]
    #                   }
    #                 },
    #                 additional_model_request_fields: {
    #                   "AdditionalModelRequestFieldsKey" => ""null""
    #                 },
    #                 performance_config: {
    #                   latency: "standard" # One of: ["standard", "optimized"]
    #                 }
    #               }
    #             },
    #             condition: {
    #               conditions: [ # required
    #                 {
    #                   name: "FlowConditionName", # required
    #                   expression: "FlowConditionExpression"
    #                 }
    #               ]
    #             },
    #             lex: {
    #               bot_alias_arn: "FlowLexBotAliasArn", # required
    #               locale_id: "FlowLexBotLocaleId", # required
    #             },
    #             prompt: {
    #               source_configuration: { # required
    #                 # One of:
    #                 resource: {
    #                   prompt_arn: "FlowPromptArn", # required
    #                 },
    #                 inline: {
    #                   template_type: "TEXT" # One of: ["TEXT", "CHAT"], # required
    #                   template_configuration: { # required
    #                     # One of:
    #                     text: {
    #                       text: "TextPrompt", # required
    #                       cache_point: {
    #                         type: "default" # One of: ["default"], # required
    #                       },
    #                       input_variables: [
    #                         {
    #                           name: "PromptInputVariableName"
    #                         }
    #                       ]
    #                     },
    #                     chat: {
    #                       messages: [ # required
    #                         {
    #                           role: "user" # One of: ["user", "assistant"], # required
    #                           content: [{ # required
    #                             # One of:
    #                             text: "String",
    #                             cache_point: {
    #                               type: "default" # One of: ["default"], # required
    #                             }
    #                           }]
    #                         }
    #                       ],
    #                       system: [{
    #                         # One of:
    #                         text: "NonEmptyString",
    #                         cache_point: {
    #                           type: "default" # One of: ["default"], # required
    #                         }
    #                       }],
    #                       input_variables: [
    #                         {
    #                           name: "PromptInputVariableName"
    #                         }
    #                       ],
    #                       tool_configuration: {
    #                         tools: [{ # required
    #                           # One of:
    #                           tool_spec: {
    #                             name: "ToolName", # required
    #                             description: "NonEmptyString",
    #                             input_schema: { # required
    #                               # One of:
    #                               json: ""null""
    #                             }
    #                           },
    #                           cache_point: {
    #                             type: "default" # One of: ["default"], # required
    #                           }
    #                         }],
    #                         tool_choice: {
    #                           # One of:
    #                           auto: {
    #                           },
    #                           any: {
    #                           },
    #                           tool: {
    #                             name: "ToolName", # required
    #                           }
    #                         }
    #                       }
    #                     }
    #                   },
    #                   model_id: "FlowPromptModelIdentifier", # required
    #                   inference_configuration: {
    #                     # One of:
    #                     text: {
    #                       temperature: 1.0,
    #                       top_p: 1.0,
    #                       max_tokens: 1,
    #                       stop_sequences: ["String"]
    #                     }
    #                   },
    #                   additional_model_request_fields: ""null""
    #                 }
    #               },
    #               guardrail_configuration: {
    #                 guardrail_identifier: "GuardrailIdentifier",
    #                 guardrail_version: "GuardrailVersion"
    #               }
    #             },
    #             lambda_function: {
    #               lambda_arn: "FlowLambdaArn", # required
    #             },
    #             storage: {
    #               service_configuration: { # required
    #                 # One of:
    #                 s3: {
    #                   bucket_name: "FlowS3BucketName", # required
    #                 }
    #               }
    #             },
    #             agent: {
    #               agent_alias_arn: "FlowAgentAliasArn", # required
    #             },
    #             retrieval: {
    #               service_configuration: { # required
    #                 # One of:
    #                 s3: {
    #                   bucket_name: "FlowS3BucketName", # required
    #                 }
    #               }
    #             },
    #             iterator: {
    #             },
    #             collector: {
    #             },
    #             inline_code: {
    #               code: "InlineCode", # required
    #               language: "Python_3" # One of: ["Python_3"], # required
    #             },
    #             loop: {
    #               definition: { # required
    #                 # recursive FlowDefinition
    #               }
    #             },
    #             loop_input: {
    #             },
    #             loop_controller: {
    #               continue_condition: { # required
    #                 name: "FlowConditionName", # required
    #                 expression: "FlowConditionExpression"
    #               },
    #               max_iterations: 1
    #             }
    #           },
    #           inputs: [
    #             {
    #               name: "FlowNodeInputName", # required
    #               type: "String" # One of: ["String", "Number", "Boolean", "Object", "Array"], # required
    #               expression: "FlowNodeInputExpression", # required
    #               category: "LoopCondition" # One of: ["LoopCondition", "ReturnValueToLoopStart", "ExitLoop"]
    #             }
    #           ],
    #           outputs: [
    #             {
    #               name: "FlowNodeOutputName", # required
    #               type: "String" # One of: ["String", "Number", "Boolean", "Object", "Array"], # required
    #             }
    #           ]
    #         }
    #       ],
    #       connections: [
    #         {
    #           type: "Data" # One of: ["Data", "Conditional"], # required
    #           name: "FlowConnectionName", # required
    #           source: "FlowNodeName", # required
    #           target: "FlowNodeName", # required
    #           configuration: {
    #             # One of:
    #             data: {
    #               source_output: "FlowNodeOutputName", # required
    #               target_input: "FlowNodeInputName", # required
    #             },
    #             conditional: {
    #               condition: "FlowConditionName", # required
    #             }
    #           }
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::CreateFlowResponse]
    def create_flow(params = {}, options = {})
      request = build_request(:create_flow, params)
      request.send_request(options)
    end

    # <p>Creates an alias of a flow for deployment. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/flows-deploy.html">Deploy a flow in Amazon Bedrock</a> in the Amazon Bedrock User Guide.</p>
    # @param [Hash, Types::CreateFlowAliasRequest] params
    # @option params [String] :name
    #   <p>A name for the alias.</p>
    # @option params [String] :description
    #   <p>A description for the alias.</p>
    # @option params [Array<Types::FlowAliasRoutingConfigurationListItem>] :routing_configuration
    #   <p>Contains information about the version to which to map the alias.</p>
    # @option params [Types::FlowAliasConcurrencyConfiguration] :concurrency_configuration
    #   <p>The configuration that specifies how nodes in the flow are executed in parallel.</p>
    # @option params [String] :flow_identifier
    #   <p>The unique identifier of the flow for which to create an alias.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, Amazon Bedrock ignores the request, but does not return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Any tags that you want to attach to the alias of the flow. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/tagging.html">Tagging resources in Amazon Bedrock</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "Name", # required
    #     description: "Description",
    #     routing_configuration: [ # required
    #       {
    #         flow_version: "Version"
    #       }
    #     ],
    #     concurrency_configuration: {
    #       type: "Automatic" # One of: ["Automatic", "Manual"], # required
    #       max_concurrency: 1
    #     },
    #     flow_identifier: "FlowIdentifier", # required
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_flow_alias(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "Name", # required
    #     description: "Description",
    #     routing_configuration: [ # required
    #       {
    #         flow_version: "Version"
    #       }
    #     ],
    #     concurrency_configuration: {
    #       type: "Automatic" # One of: ["Automatic", "Manual"], # required
    #       max_concurrency: 1
    #     },
    #     flow_id: "FlowId", # required
    #     id: "FlowAliasId", # required
    #     arn: "FlowAliasArn", # required
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #   }
    # @return [Types::CreateFlowAliasResponse]
    def create_flow_alias(params = {}, options = {})
      request = build_request(:create_flow_alias, params)
      request.send_request(options)
    end

    # <p>Creates a version of the flow that you can deploy. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/flows-deploy.html">Deploy a flow in Amazon Bedrock</a> in the Amazon Bedrock User Guide.</p>
    # @param [Hash, Types::CreateFlowVersionRequest] params
    # @option params [String] :flow_identifier
    #   <p>The unique identifier of the flow that you want to create a version of.</p>
    # @option params [String] :description
    #   <p>A description of the version of the flow.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, Amazon Bedrock ignores the request, but does not return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     flow_identifier: "FlowIdentifier", # required
    #     description: "FlowDescription",
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_flow_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "FlowName", # required
    #     description: "FlowDescription",
    #     execution_role_arn: "FlowExecutionRoleArn", # required
    #     customer_encryption_key_arn: "KmsKeyArn",
    #     id: "FlowId", # required
    #     arn: "FlowArn", # required
    #     status: "Failed" # One of: ["Failed", "Prepared", "Preparing", "NotPrepared"], # required
    #     created_at: Time.now, # required
    #     version: "NumericalVersion", # required
    #     definition: {
    #       nodes: [
    #         {
    #           name: "FlowNodeName", # required
    #           type: "Input" # One of: ["Input", "Output", "KnowledgeBase", "Condition", "Lex", "Prompt", "LambdaFunction", "Storage", "Agent", "Retrieval", "Iterator", "Collector", "InlineCode", "Loop", "LoopInput", "LoopController"], # required
    #           configuration: {
    #             # One of:
    #             input: {
    #             },
    #             output: {
    #             },
    #             knowledge_base: {
    #               knowledge_base_id: "FlowKnowledgeBaseId", # required
    #               model_id: "KnowledgeBaseModelIdentifier",
    #               guardrail_configuration: {
    #                 guardrail_identifier: "GuardrailIdentifier",
    #                 guardrail_version: "GuardrailVersion"
    #               },
    #               number_of_results: 1,
    #               prompt_template: {
    #                 text_prompt_template: "KnowledgeBaseTextPrompt"
    #               },
    #               inference_configuration: {
    #                 # One of:
    #                 text: {
    #                   temperature: 1.0,
    #                   top_p: 1.0,
    #                   max_tokens: 1,
    #                   stop_sequences: ["String"]
    #                 }
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
    #               orchestration_configuration: {
    #                 prompt_template: {
    #                   text_prompt_template: "KnowledgeBaseTextPrompt"
    #                 },
    #                 inference_config: {
    #                   # One of:
    #                   text: {
    #                     temperature: 1.0,
    #                     top_p: 1.0,
    #                     max_tokens: 1,
    #                     stop_sequences: ["String"]
    #                   }
    #                 },
    #                 additional_model_request_fields: {
    #                   "AdditionalModelRequestFieldsKey" => ""null""
    #                 },
    #                 performance_config: {
    #                   latency: "standard" # One of: ["standard", "optimized"]
    #                 }
    #               }
    #             },
    #             condition: {
    #               conditions: [ # required
    #                 {
    #                   name: "FlowConditionName", # required
    #                   expression: "FlowConditionExpression"
    #                 }
    #               ]
    #             },
    #             lex: {
    #               bot_alias_arn: "FlowLexBotAliasArn", # required
    #               locale_id: "FlowLexBotLocaleId", # required
    #             },
    #             prompt: {
    #               source_configuration: { # required
    #                 # One of:
    #                 resource: {
    #                   prompt_arn: "FlowPromptArn", # required
    #                 },
    #                 inline: {
    #                   template_type: "TEXT" # One of: ["TEXT", "CHAT"], # required
    #                   template_configuration: { # required
    #                     # One of:
    #                     text: {
    #                       text: "TextPrompt", # required
    #                       cache_point: {
    #                         type: "default" # One of: ["default"], # required
    #                       },
    #                       input_variables: [
    #                         {
    #                           name: "PromptInputVariableName"
    #                         }
    #                       ]
    #                     },
    #                     chat: {
    #                       messages: [ # required
    #                         {
    #                           role: "user" # One of: ["user", "assistant"], # required
    #                           content: [{ # required
    #                             # One of:
    #                             text: "String",
    #                             cache_point: {
    #                               type: "default" # One of: ["default"], # required
    #                             }
    #                           }]
    #                         }
    #                       ],
    #                       system: [{
    #                         # One of:
    #                         text: "NonEmptyString",
    #                         cache_point: {
    #                           type: "default" # One of: ["default"], # required
    #                         }
    #                       }],
    #                       input_variables: [
    #                         {
    #                           name: "PromptInputVariableName"
    #                         }
    #                       ],
    #                       tool_configuration: {
    #                         tools: [{ # required
    #                           # One of:
    #                           tool_spec: {
    #                             name: "ToolName", # required
    #                             description: "NonEmptyString",
    #                             input_schema: { # required
    #                               # One of:
    #                               json: ""null""
    #                             }
    #                           },
    #                           cache_point: {
    #                             type: "default" # One of: ["default"], # required
    #                           }
    #                         }],
    #                         tool_choice: {
    #                           # One of:
    #                           auto: {
    #                           },
    #                           any: {
    #                           },
    #                           tool: {
    #                             name: "ToolName", # required
    #                           }
    #                         }
    #                       }
    #                     }
    #                   },
    #                   model_id: "FlowPromptModelIdentifier", # required
    #                   inference_configuration: {
    #                     # One of:
    #                     text: {
    #                       temperature: 1.0,
    #                       top_p: 1.0,
    #                       max_tokens: 1,
    #                       stop_sequences: ["String"]
    #                     }
    #                   },
    #                   additional_model_request_fields: ""null""
    #                 }
    #               },
    #               guardrail_configuration: {
    #                 guardrail_identifier: "GuardrailIdentifier",
    #                 guardrail_version: "GuardrailVersion"
    #               }
    #             },
    #             lambda_function: {
    #               lambda_arn: "FlowLambdaArn", # required
    #             },
    #             storage: {
    #               service_configuration: { # required
    #                 # One of:
    #                 s3: {
    #                   bucket_name: "FlowS3BucketName", # required
    #                 }
    #               }
    #             },
    #             agent: {
    #               agent_alias_arn: "FlowAgentAliasArn", # required
    #             },
    #             retrieval: {
    #               service_configuration: { # required
    #                 # One of:
    #                 s3: {
    #                   bucket_name: "FlowS3BucketName", # required
    #                 }
    #               }
    #             },
    #             iterator: {
    #             },
    #             collector: {
    #             },
    #             inline_code: {
    #               code: "InlineCode", # required
    #               language: "Python_3" # One of: ["Python_3"], # required
    #             },
    #             loop: {
    #               definition: { # required
    #                 # recursive FlowDefinition
    #               }
    #             },
    #             loop_input: {
    #             },
    #             loop_controller: {
    #               continue_condition: { # required
    #                 name: "FlowConditionName", # required
    #                 expression: "FlowConditionExpression"
    #               },
    #               max_iterations: 1
    #             }
    #           },
    #           inputs: [
    #             {
    #               name: "FlowNodeInputName", # required
    #               type: "String" # One of: ["String", "Number", "Boolean", "Object", "Array"], # required
    #               expression: "FlowNodeInputExpression", # required
    #               category: "LoopCondition" # One of: ["LoopCondition", "ReturnValueToLoopStart", "ExitLoop"]
    #             }
    #           ],
    #           outputs: [
    #             {
    #               name: "FlowNodeOutputName", # required
    #               type: "String" # One of: ["String", "Number", "Boolean", "Object", "Array"], # required
    #             }
    #           ]
    #         }
    #       ],
    #       connections: [
    #         {
    #           type: "Data" # One of: ["Data", "Conditional"], # required
    #           name: "FlowConnectionName", # required
    #           source: "FlowNodeName", # required
    #           target: "FlowNodeName", # required
    #           configuration: {
    #             # One of:
    #             data: {
    #               source_output: "FlowNodeOutputName", # required
    #               target_input: "FlowNodeInputName", # required
    #             },
    #             conditional: {
    #               condition: "FlowConditionName", # required
    #             }
    #           }
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::CreateFlowVersionResponse]
    def create_flow_version(params = {}, options = {})
      request = build_request(:create_flow_version, params)
      request.send_request(options)
    end

    # <p>Creates a knowledge base. A knowledge base contains your data sources so that Large Language Models (LLMs) can use your data. To create a knowledge base, you must first set up your data sources and configure a supported vector store. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/knowlege-base-prereq.html">Set up a knowledge base</a>.</p> <note> <p>If you prefer to let Amazon Bedrock create and manage a vector store for you in Amazon OpenSearch Service, use the console. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-create">Create a knowledge base</a>.</p> </note> <ul> <li> <p>Provide the <code>name</code> and an optional <code>description</code>.</p> </li> <li> <p>Provide the Amazon Resource Name (ARN) with permissions to create a knowledge base in the <code>roleArn</code> field.</p> </li> <li> <p>Provide the embedding model to use in the <code>embeddingModelArn</code> field in the <code>knowledgeBaseConfiguration</code> object.</p> </li> <li> <p>Provide the configuration for your vector store in the <code>storageConfiguration</code> object.</p> <ul> <li> <p>For an Amazon OpenSearch Service database, use the <code>opensearchServerlessConfiguration</code> object. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-setup-oss.html">Create a vector store in Amazon OpenSearch Service</a>.</p> </li> <li> <p>For an Amazon Aurora database, use the <code>RdsConfiguration</code> object. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-setup-rds.html">Create a vector store in Amazon Aurora</a>.</p> </li> <li> <p>For a Pinecone database, use the <code>pineconeConfiguration</code> object. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-setup-pinecone.html">Create a vector store in Pinecone</a>.</p> </li> <li> <p>For a Redis Enterprise Cloud database, use the <code>redisEnterpriseCloudConfiguration</code> object. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-setup-redis.html">Create a vector store in Redis Enterprise Cloud</a>.</p> </li> </ul> </li> </ul>
    # @param [Hash, Types::CreateKnowledgeBaseRequest] params
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, Amazon Bedrock ignores the request, but does not return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    # @option params [String] :name
    #   <p>A name for the knowledge base.</p>
    # @option params [String] :description
    #   <p>A description of the knowledge base.</p>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role with permissions to invoke API operations on the knowledge base.</p>
    # @option params [Types::KnowledgeBaseConfiguration] :knowledge_base_configuration
    #   <p>Contains details about the embeddings model used for the knowledge base.</p>
    # @option params [Types::StorageConfiguration] :storage_configuration
    #   <p>Contains details about the configuration of the vector database used for the knowledge base.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Specify the key-value pairs for the tags that you want to attach to your knowledge base in this object.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken",
    #     name: "Name", # required
    #     description: "Description",
    #     role_arn: "KnowledgeBaseRoleArn", # required
    #     knowledge_base_configuration: { # required
    #       type: "VECTOR" # One of: ["VECTOR", "KENDRA", "SQL"], # required
    #       vector_knowledge_base_configuration: {
    #         embedding_model_arn: "BedrockEmbeddingModelArn", # required
    #         embedding_model_configuration: {
    #           bedrock_embedding_model_configuration: {
    #             dimensions: 1,
    #             embedding_data_type: "FLOAT32" # One of: ["FLOAT32", "BINARY"]
    #           }
    #         },
    #         supplemental_data_storage_configuration: {
    #           storage_locations: [ # required
    #             {
    #               type: "S3" # One of: ["S3"], # required
    #               s3_location: {
    #                 uri: "S3BucketUri", # required
    #               }
    #             }
    #           ]
    #         }
    #       },
    #       kendra_knowledge_base_configuration: {
    #         kendra_index_arn: "KendraIndexArn", # required
    #       },
    #       sql_knowledge_base_configuration: {
    #         type: "REDSHIFT" # One of: ["REDSHIFT"], # required
    #         redshift_configuration: {
    #           storage_configurations: [ # required
    #             {
    #               type: "REDSHIFT" # One of: ["REDSHIFT", "AWS_DATA_CATALOG"], # required
    #               aws_data_catalog_configuration: {
    #                 table_names: ["AwsDataCatalogTableName"], # required
    #               },
    #               redshift_configuration: {
    #                 database_name: "RedshiftDatabase", # required
    #               }
    #             }
    #           ],
    #           query_engine_configuration: { # required
    #             type: "SERVERLESS" # One of: ["SERVERLESS", "PROVISIONED"], # required
    #             serverless_configuration: {
    #               workgroup_arn: "WorkgroupArn", # required
    #               auth_configuration: { # required
    #                 type: "IAM" # One of: ["IAM", "USERNAME_PASSWORD"], # required
    #                 username_password_secret_arn: "SecretArn"
    #               }
    #             },
    #             provisioned_configuration: {
    #               cluster_identifier: "RedshiftClusterIdentifier", # required
    #               auth_configuration: { # required
    #                 type: "IAM" # One of: ["IAM", "USERNAME_PASSWORD", "USERNAME"], # required
    #                 database_user: "String",
    #                 username_password_secret_arn: "SecretArn"
    #               }
    #             }
    #           },
    #           query_generation_configuration: {
    #             execution_timeout_seconds: 1,
    #             generation_context: {
    #               tables: [
    #                 {
    #                   name: "QueryGenerationTableName", # required
    #                   description: "DescriptionString",
    #                   inclusion: "INCLUDE" # One of: ["INCLUDE", "EXCLUDE"],
    #                   columns: [
    #                     {
    #                       name: "QueryGenerationColumnName",
    #                       description: "DescriptionString",
    #                       inclusion: "INCLUDE" # One of: ["INCLUDE", "EXCLUDE"]
    #                     }
    #                   ]
    #                 }
    #               ],
    #               curated_queries: [
    #                 {
    #                   natural_language: "NaturalLanguageString", # required
    #                   sql: "SqlString", # required
    #                 }
    #               ]
    #             }
    #           }
    #         }
    #       }
    #     },
    #     storage_configuration: {
    #       type: "OPENSEARCH_SERVERLESS" # One of: ["OPENSEARCH_SERVERLESS", "PINECONE", "REDIS_ENTERPRISE_CLOUD", "RDS", "MONGO_DB_ATLAS", "NEPTUNE_ANALYTICS", "OPENSEARCH_MANAGED_CLUSTER", "S3_VECTORS"], # required
    #       opensearch_serverless_configuration: {
    #         collection_arn: "OpenSearchServerlessCollectionArn", # required
    #         vector_index_name: "OpenSearchServerlessIndexName", # required
    #         field_mapping: { # required
    #           vector_field: "FieldName", # required
    #           text_field: "FieldName", # required
    #           metadata_field: "FieldName", # required
    #         }
    #       },
    #       opensearch_managed_cluster_configuration: {
    #         domain_endpoint: "OpenSearchManagedClusterDomainEndpoint", # required
    #         domain_arn: "OpenSearchManagedClusterDomainArn", # required
    #         vector_index_name: "OpenSearchManagedClusterIndexName", # required
    #         field_mapping: { # required
    #           vector_field: "FieldName", # required
    #           text_field: "FieldName", # required
    #           metadata_field: "FieldName", # required
    #         }
    #       },
    #       pinecone_configuration: {
    #         connection_string: "PineconeConnectionString", # required
    #         credentials_secret_arn: "SecretArn", # required
    #         namespace: "PineconeNamespace",
    #         field_mapping: { # required
    #           text_field: "FieldName", # required
    #           metadata_field: "FieldName", # required
    #         }
    #       },
    #       redis_enterprise_cloud_configuration: {
    #         endpoint: "RedisEnterpriseCloudEndpoint", # required
    #         vector_index_name: "RedisEnterpriseCloudIndexName", # required
    #         credentials_secret_arn: "SecretArn", # required
    #         field_mapping: { # required
    #           vector_field: "FieldName", # required
    #           text_field: "FieldName", # required
    #           metadata_field: "FieldName", # required
    #         }
    #       },
    #       rds_configuration: {
    #         resource_arn: "RdsArn", # required
    #         credentials_secret_arn: "SecretArn", # required
    #         database_name: "RdsDatabaseName", # required
    #         table_name: "RdsTableName", # required
    #         field_mapping: { # required
    #           primary_key_field: "ColumnName", # required
    #           vector_field: "ColumnName", # required
    #           text_field: "ColumnName", # required
    #           metadata_field: "ColumnName", # required
    #           custom_metadata_field: "ColumnName"
    #         }
    #       },
    #       mongo_db_atlas_configuration: {
    #         endpoint: "MongoDbAtlasEndpoint", # required
    #         database_name: "MongoDbAtlasDatabaseName", # required
    #         collection_name: "MongoDbAtlasCollectionName", # required
    #         vector_index_name: "MongoDbAtlasIndexName", # required
    #         credentials_secret_arn: "SecretArn", # required
    #         field_mapping: { # required
    #           vector_field: "FieldName", # required
    #           text_field: "FieldName", # required
    #           metadata_field: "FieldName", # required
    #         },
    #         endpoint_service_name: "MongoDbAtlasEndpointServiceName",
    #         text_index_name: "MongoDbAtlasIndexName"
    #       },
    #       neptune_analytics_configuration: {
    #         graph_arn: "GraphArn", # required
    #         field_mapping: { # required
    #           text_field: "FieldName", # required
    #           metadata_field: "FieldName", # required
    #         }
    #       },
    #       s3_vectors_configuration: {
    #         vector_bucket_arn: "VectorBucketArn",
    #         index_arn: "IndexArn",
    #         index_name: "IndexName"
    #       }
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_knowledge_base(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     knowledge_base: { # required
    #       knowledge_base_id: "Id", # required
    #       name: "Name", # required
    #       knowledge_base_arn: "KnowledgeBaseArn", # required
    #       description: "Description",
    #       role_arn: "KnowledgeBaseRoleArn", # required
    #       knowledge_base_configuration: { # required
    #         type: "VECTOR" # One of: ["VECTOR", "KENDRA", "SQL"], # required
    #         vector_knowledge_base_configuration: {
    #           embedding_model_arn: "BedrockEmbeddingModelArn", # required
    #           embedding_model_configuration: {
    #             bedrock_embedding_model_configuration: {
    #               dimensions: 1,
    #               embedding_data_type: "FLOAT32" # One of: ["FLOAT32", "BINARY"]
    #             }
    #           },
    #           supplemental_data_storage_configuration: {
    #             storage_locations: [ # required
    #               {
    #                 type: "S3" # One of: ["S3"], # required
    #                 s3_location: {
    #                   uri: "S3BucketUri", # required
    #                 }
    #               }
    #             ]
    #           }
    #         },
    #         kendra_knowledge_base_configuration: {
    #           kendra_index_arn: "KendraIndexArn", # required
    #         },
    #         sql_knowledge_base_configuration: {
    #           type: "REDSHIFT" # One of: ["REDSHIFT"], # required
    #           redshift_configuration: {
    #             storage_configurations: [ # required
    #               {
    #                 type: "REDSHIFT" # One of: ["REDSHIFT", "AWS_DATA_CATALOG"], # required
    #                 aws_data_catalog_configuration: {
    #                   table_names: ["AwsDataCatalogTableName"], # required
    #                 },
    #                 redshift_configuration: {
    #                   database_name: "RedshiftDatabase", # required
    #                 }
    #               }
    #             ],
    #             query_engine_configuration: { # required
    #               type: "SERVERLESS" # One of: ["SERVERLESS", "PROVISIONED"], # required
    #               serverless_configuration: {
    #                 workgroup_arn: "WorkgroupArn", # required
    #                 auth_configuration: { # required
    #                   type: "IAM" # One of: ["IAM", "USERNAME_PASSWORD"], # required
    #                   username_password_secret_arn: "SecretArn"
    #                 }
    #               },
    #               provisioned_configuration: {
    #                 cluster_identifier: "RedshiftClusterIdentifier", # required
    #                 auth_configuration: { # required
    #                   type: "IAM" # One of: ["IAM", "USERNAME_PASSWORD", "USERNAME"], # required
    #                   database_user: "String",
    #                   username_password_secret_arn: "SecretArn"
    #                 }
    #               }
    #             },
    #             query_generation_configuration: {
    #               execution_timeout_seconds: 1,
    #               generation_context: {
    #                 tables: [
    #                   {
    #                     name: "QueryGenerationTableName", # required
    #                     description: "DescriptionString",
    #                     inclusion: "INCLUDE" # One of: ["INCLUDE", "EXCLUDE"],
    #                     columns: [
    #                       {
    #                         name: "QueryGenerationColumnName",
    #                         description: "DescriptionString",
    #                         inclusion: "INCLUDE" # One of: ["INCLUDE", "EXCLUDE"]
    #                       }
    #                     ]
    #                   }
    #                 ],
    #                 curated_queries: [
    #                   {
    #                     natural_language: "NaturalLanguageString", # required
    #                     sql: "SqlString", # required
    #                   }
    #                 ]
    #               }
    #             }
    #           }
    #         }
    #       },
    #       storage_configuration: {
    #         type: "OPENSEARCH_SERVERLESS" # One of: ["OPENSEARCH_SERVERLESS", "PINECONE", "REDIS_ENTERPRISE_CLOUD", "RDS", "MONGO_DB_ATLAS", "NEPTUNE_ANALYTICS", "OPENSEARCH_MANAGED_CLUSTER", "S3_VECTORS"], # required
    #         opensearch_serverless_configuration: {
    #           collection_arn: "OpenSearchServerlessCollectionArn", # required
    #           vector_index_name: "OpenSearchServerlessIndexName", # required
    #           field_mapping: { # required
    #             vector_field: "FieldName", # required
    #             text_field: "FieldName", # required
    #             metadata_field: "FieldName", # required
    #           }
    #         },
    #         opensearch_managed_cluster_configuration: {
    #           domain_endpoint: "OpenSearchManagedClusterDomainEndpoint", # required
    #           domain_arn: "OpenSearchManagedClusterDomainArn", # required
    #           vector_index_name: "OpenSearchManagedClusterIndexName", # required
    #           field_mapping: { # required
    #             vector_field: "FieldName", # required
    #             text_field: "FieldName", # required
    #             metadata_field: "FieldName", # required
    #           }
    #         },
    #         pinecone_configuration: {
    #           connection_string: "PineconeConnectionString", # required
    #           credentials_secret_arn: "SecretArn", # required
    #           namespace: "PineconeNamespace",
    #           field_mapping: { # required
    #             text_field: "FieldName", # required
    #             metadata_field: "FieldName", # required
    #           }
    #         },
    #         redis_enterprise_cloud_configuration: {
    #           endpoint: "RedisEnterpriseCloudEndpoint", # required
    #           vector_index_name: "RedisEnterpriseCloudIndexName", # required
    #           credentials_secret_arn: "SecretArn", # required
    #           field_mapping: { # required
    #             vector_field: "FieldName", # required
    #             text_field: "FieldName", # required
    #             metadata_field: "FieldName", # required
    #           }
    #         },
    #         rds_configuration: {
    #           resource_arn: "RdsArn", # required
    #           credentials_secret_arn: "SecretArn", # required
    #           database_name: "RdsDatabaseName", # required
    #           table_name: "RdsTableName", # required
    #           field_mapping: { # required
    #             primary_key_field: "ColumnName", # required
    #             vector_field: "ColumnName", # required
    #             text_field: "ColumnName", # required
    #             metadata_field: "ColumnName", # required
    #             custom_metadata_field: "ColumnName"
    #           }
    #         },
    #         mongo_db_atlas_configuration: {
    #           endpoint: "MongoDbAtlasEndpoint", # required
    #           database_name: "MongoDbAtlasDatabaseName", # required
    #           collection_name: "MongoDbAtlasCollectionName", # required
    #           vector_index_name: "MongoDbAtlasIndexName", # required
    #           credentials_secret_arn: "SecretArn", # required
    #           field_mapping: { # required
    #             vector_field: "FieldName", # required
    #             text_field: "FieldName", # required
    #             metadata_field: "FieldName", # required
    #           },
    #           endpoint_service_name: "MongoDbAtlasEndpointServiceName",
    #           text_index_name: "MongoDbAtlasIndexName"
    #         },
    #         neptune_analytics_configuration: {
    #           graph_arn: "GraphArn", # required
    #           field_mapping: { # required
    #             text_field: "FieldName", # required
    #             metadata_field: "FieldName", # required
    #           }
    #         },
    #         s3_vectors_configuration: {
    #           vector_bucket_arn: "VectorBucketArn",
    #           index_arn: "IndexArn",
    #           index_name: "IndexName"
    #         }
    #       },
    #       status: "CREATING" # One of: ["CREATING", "ACTIVE", "DELETING", "UPDATING", "FAILED", "DELETE_UNSUCCESSFUL"], # required
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       failure_reasons: ["FailureReason"]
    #     }
    #   }
    # @return [Types::CreateKnowledgeBaseResponse]
    def create_knowledge_base(params = {}, options = {})
      request = build_request(:create_knowledge_base, params)
      request.send_request(options)
    end

    # <p>Creates a prompt in your prompt library that you can add to a flow. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management.html">Prompt management in Amazon Bedrock</a>, <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management-create.html">Create a prompt using Prompt management</a> and <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/flows.html">Prompt flows in Amazon Bedrock</a> in the Amazon Bedrock User Guide.</p>
    # @param [Hash, Types::CreatePromptRequest] params
    # @option params [String] :name
    #   <p>A name for the prompt.</p>
    # @option params [String] :description
    #   <p>A description for the prompt.</p>
    # @option params [String] :customer_encryption_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key to encrypt the prompt.</p>
    # @option params [String] :default_variant
    #   <p>The name of the default variant for the prompt. This value must match the <code>name</code> field in the relevant <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_PromptVariant.html">PromptVariant</a> object.</p>
    # @option params [Array<Types::PromptVariant>] :variants
    #   <p>A list of objects, each containing details about a variant of the prompt.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, Amazon Bedrock ignores the request, but does not return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Any tags that you want to attach to the prompt. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/tagging.html">Tagging resources in Amazon Bedrock</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "PromptName", # required
    #     description: "PromptDescription",
    #     customer_encryption_key_arn: "KmsKeyArn",
    #     default_variant: "PromptVariantName",
    #     variants: [
    #       {
    #         name: "PromptVariantName", # required
    #         template_type: "TEXT" # One of: ["TEXT", "CHAT"], # required
    #         template_configuration: { # required
    #           # One of:
    #           text: {
    #             text: "TextPrompt", # required
    #             cache_point: {
    #               type: "default" # One of: ["default"], # required
    #             },
    #             input_variables: [
    #               {
    #                 name: "PromptInputVariableName"
    #               }
    #             ]
    #           },
    #           chat: {
    #             messages: [ # required
    #               {
    #                 role: "user" # One of: ["user", "assistant"], # required
    #                 content: [{ # required
    #                   # One of:
    #                   text: "String",
    #                   cache_point: {
    #                     type: "default" # One of: ["default"], # required
    #                   }
    #                 }]
    #               }
    #             ],
    #             system: [{
    #               # One of:
    #               text: "NonEmptyString",
    #               cache_point: {
    #                 type: "default" # One of: ["default"], # required
    #               }
    #             }],
    #             input_variables: [
    #               {
    #                 name: "PromptInputVariableName"
    #               }
    #             ],
    #             tool_configuration: {
    #               tools: [{ # required
    #                 # One of:
    #                 tool_spec: {
    #                   name: "ToolName", # required
    #                   description: "NonEmptyString",
    #                   input_schema: { # required
    #                     # One of:
    #                     json: ""null""
    #                   }
    #                 },
    #                 cache_point: {
    #                   type: "default" # One of: ["default"], # required
    #                 }
    #               }],
    #               tool_choice: {
    #                 # One of:
    #                 auto: {
    #                 },
    #                 any: {
    #                 },
    #                 tool: {
    #                   name: "ToolName", # required
    #                 }
    #               }
    #             }
    #           }
    #         },
    #         model_id: "PromptModelIdentifier",
    #         inference_configuration: {
    #           # One of:
    #           text: {
    #             temperature: 1.0,
    #             top_p: 1.0,
    #             max_tokens: 1,
    #             stop_sequences: ["String"]
    #           }
    #         },
    #         metadata: [
    #           {
    #             key: "PromptMetadataKey", # required
    #             value: "PromptMetadataValue", # required
    #           }
    #         ],
    #         additional_model_request_fields: ""null"",
    #         gen_ai_resource: {
    #           # One of:
    #           agent: {
    #             agent_identifier: "AgentAliasArn", # required
    #           }
    #         }
    #       }
    #     ],
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_prompt(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "PromptName", # required
    #     description: "PromptDescription",
    #     customer_encryption_key_arn: "KmsKeyArn",
    #     default_variant: "PromptVariantName",
    #     variants: [
    #       {
    #         name: "PromptVariantName", # required
    #         template_type: "TEXT" # One of: ["TEXT", "CHAT"], # required
    #         template_configuration: { # required
    #           # One of:
    #           text: {
    #             text: "TextPrompt", # required
    #             cache_point: {
    #               type: "default" # One of: ["default"], # required
    #             },
    #             input_variables: [
    #               {
    #                 name: "PromptInputVariableName"
    #               }
    #             ]
    #           },
    #           chat: {
    #             messages: [ # required
    #               {
    #                 role: "user" # One of: ["user", "assistant"], # required
    #                 content: [{ # required
    #                   # One of:
    #                   text: "String",
    #                   cache_point: {
    #                     type: "default" # One of: ["default"], # required
    #                   }
    #                 }]
    #               }
    #             ],
    #             system: [{
    #               # One of:
    #               text: "NonEmptyString",
    #               cache_point: {
    #                 type: "default" # One of: ["default"], # required
    #               }
    #             }],
    #             input_variables: [
    #               {
    #                 name: "PromptInputVariableName"
    #               }
    #             ],
    #             tool_configuration: {
    #               tools: [{ # required
    #                 # One of:
    #                 tool_spec: {
    #                   name: "ToolName", # required
    #                   description: "NonEmptyString",
    #                   input_schema: { # required
    #                     # One of:
    #                     json: ""null""
    #                   }
    #                 },
    #                 cache_point: {
    #                   type: "default" # One of: ["default"], # required
    #                 }
    #               }],
    #               tool_choice: {
    #                 # One of:
    #                 auto: {
    #                 },
    #                 any: {
    #                 },
    #                 tool: {
    #                   name: "ToolName", # required
    #                 }
    #               }
    #             }
    #           }
    #         },
    #         model_id: "PromptModelIdentifier",
    #         inference_configuration: {
    #           # One of:
    #           text: {
    #             temperature: 1.0,
    #             top_p: 1.0,
    #             max_tokens: 1,
    #             stop_sequences: ["String"]
    #           }
    #         },
    #         metadata: [
    #           {
    #             key: "PromptMetadataKey", # required
    #             value: "PromptMetadataValue", # required
    #           }
    #         ],
    #         additional_model_request_fields: ""null"",
    #         gen_ai_resource: {
    #           # One of:
    #           agent: {
    #             agent_identifier: "AgentAliasArn", # required
    #           }
    #         }
    #       }
    #     ],
    #     id: "PromptId", # required
    #     arn: "PromptArn", # required
    #     version: "Version", # required
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #   }
    # @return [Types::CreatePromptResponse]
    def create_prompt(params = {}, options = {})
      request = build_request(:create_prompt, params)
      request.send_request(options)
    end

    # <p>Creates a static snapshot of your prompt that can be deployed to production. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management-deploy.html">Deploy prompts using Prompt management by creating versions</a> in the Amazon Bedrock User Guide.</p>
    # @param [Hash, Types::CreatePromptVersionRequest] params
    # @option params [String] :prompt_identifier
    #   <p>The unique identifier of the prompt that you want to create a version of.</p>
    # @option params [String] :description
    #   <p>A description for the version of the prompt.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, Amazon Bedrock ignores the request, but does not return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Any tags that you want to attach to the version of the prompt. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/tagging.html">Tagging resources in Amazon Bedrock</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     prompt_identifier: "PromptIdentifier", # required
    #     description: "PromptDescription",
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_prompt_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "PromptName", # required
    #     description: "PromptDescription",
    #     customer_encryption_key_arn: "KmsKeyArn",
    #     default_variant: "PromptVariantName",
    #     variants: [
    #       {
    #         name: "PromptVariantName", # required
    #         template_type: "TEXT" # One of: ["TEXT", "CHAT"], # required
    #         template_configuration: { # required
    #           # One of:
    #           text: {
    #             text: "TextPrompt", # required
    #             cache_point: {
    #               type: "default" # One of: ["default"], # required
    #             },
    #             input_variables: [
    #               {
    #                 name: "PromptInputVariableName"
    #               }
    #             ]
    #           },
    #           chat: {
    #             messages: [ # required
    #               {
    #                 role: "user" # One of: ["user", "assistant"], # required
    #                 content: [{ # required
    #                   # One of:
    #                   text: "String",
    #                   cache_point: {
    #                     type: "default" # One of: ["default"], # required
    #                   }
    #                 }]
    #               }
    #             ],
    #             system: [{
    #               # One of:
    #               text: "NonEmptyString",
    #               cache_point: {
    #                 type: "default" # One of: ["default"], # required
    #               }
    #             }],
    #             input_variables: [
    #               {
    #                 name: "PromptInputVariableName"
    #               }
    #             ],
    #             tool_configuration: {
    #               tools: [{ # required
    #                 # One of:
    #                 tool_spec: {
    #                   name: "ToolName", # required
    #                   description: "NonEmptyString",
    #                   input_schema: { # required
    #                     # One of:
    #                     json: ""null""
    #                   }
    #                 },
    #                 cache_point: {
    #                   type: "default" # One of: ["default"], # required
    #                 }
    #               }],
    #               tool_choice: {
    #                 # One of:
    #                 auto: {
    #                 },
    #                 any: {
    #                 },
    #                 tool: {
    #                   name: "ToolName", # required
    #                 }
    #               }
    #             }
    #           }
    #         },
    #         model_id: "PromptModelIdentifier",
    #         inference_configuration: {
    #           # One of:
    #           text: {
    #             temperature: 1.0,
    #             top_p: 1.0,
    #             max_tokens: 1,
    #             stop_sequences: ["String"]
    #           }
    #         },
    #         metadata: [
    #           {
    #             key: "PromptMetadataKey", # required
    #             value: "PromptMetadataValue", # required
    #           }
    #         ],
    #         additional_model_request_fields: ""null"",
    #         gen_ai_resource: {
    #           # One of:
    #           agent: {
    #             agent_identifier: "AgentAliasArn", # required
    #           }
    #         }
    #       }
    #     ],
    #     id: "PromptId", # required
    #     arn: "PromptArn", # required
    #     version: "Version", # required
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #   }
    # @return [Types::CreatePromptVersionResponse]
    def create_prompt_version(params = {}, options = {})
      request = build_request(:create_prompt_version, params)
      request.send_request(options)
    end

    # <p>Deletes an agent.</p>
    # @param [Hash, Types::DeleteAgentRequest] params
    # @option params [String] :agent_id
    #   <p>The unique identifier of the agent to delete.</p>
    # @option params [Boolean] :skip_resource_in_use_check
    #   <p>By default, this value is <code>false</code> and deletion is stopped if the resource is in use. If you set it to <code>true</code>, the resource will be deleted even if the resource is in use.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_id: "Id", # required
    #     skip_resource_in_use_check: false
    #   }
    #   options = {}
    #   response = client.delete_agent(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     agent_id: "Id", # required
    #     agent_status: "CREATING" # One of: ["CREATING", "PREPARING", "PREPARED", "NOT_PREPARED", "DELETING", "FAILED", "VERSIONING", "UPDATING"], # required
    #   }
    # @return [Types::DeleteAgentResponse]
    def delete_agent(params = {}, options = {})
      request = build_request(:delete_agent, params)
      request.send_request(options)
    end

    # <p>Deletes an action group in an agent.</p>
    # @param [Hash, Types::DeleteAgentActionGroupRequest] params
    # @option params [String] :agent_id
    #   <p>The unique identifier of the agent that the action group belongs to.</p>
    # @option params [String] :agent_version
    #   <p>The version of the agent that the action group belongs to.</p>
    # @option params [String] :action_group_id
    #   <p>The unique identifier of the action group to delete.</p>
    # @option params [Boolean] :skip_resource_in_use_check
    #   <p>By default, this value is <code>false</code> and deletion is stopped if the resource is in use. If you set it to <code>true</code>, the resource will be deleted even if the resource is in use.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_id: "Id", # required
    #     agent_version: "DraftVersion", # required
    #     action_group_id: "Id", # required
    #     skip_resource_in_use_check: false
    #   }
    #   options = {}
    #   response = client.delete_agent_action_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteAgentActionGroupResponse]
    def delete_agent_action_group(params = {}, options = {})
      request = build_request(:delete_agent_action_group, params)
      request.send_request(options)
    end

    # <p>Deletes an alias of an agent.</p>
    # @param [Hash, Types::DeleteAgentAliasRequest] params
    # @option params [String] :agent_id
    #   <p>The unique identifier of the agent that the alias belongs to.</p>
    # @option params [String] :agent_alias_id
    #   <p>The unique identifier of the alias to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_id: "Id", # required
    #     agent_alias_id: "AgentAliasId", # required
    #   }
    #   options = {}
    #   response = client.delete_agent_alias(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     agent_id: "Id", # required
    #     agent_alias_id: "AgentAliasId", # required
    #     agent_alias_status: "CREATING" # One of: ["CREATING", "PREPARED", "FAILED", "UPDATING", "DELETING", "DISSOCIATED"], # required
    #   }
    # @return [Types::DeleteAgentAliasResponse]
    def delete_agent_alias(params = {}, options = {})
      request = build_request(:delete_agent_alias, params)
      request.send_request(options)
    end

    # <p>Deletes a version of an agent.</p>
    # @param [Hash, Types::DeleteAgentVersionRequest] params
    # @option params [String] :agent_id
    #   <p>The unique identifier of the agent that the version belongs to.</p>
    # @option params [String] :agent_version
    #   <p>The version of the agent to delete.</p>
    # @option params [Boolean] :skip_resource_in_use_check
    #   <p>By default, this value is <code>false</code> and deletion is stopped if the resource is in use. If you set it to <code>true</code>, the resource will be deleted even if the resource is in use.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_id: "Id", # required
    #     agent_version: "NumericalVersion", # required
    #     skip_resource_in_use_check: false
    #   }
    #   options = {}
    #   response = client.delete_agent_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     agent_id: "Id", # required
    #     agent_version: "NumericalVersion", # required
    #     agent_status: "CREATING" # One of: ["CREATING", "PREPARING", "PREPARED", "NOT_PREPARED", "DELETING", "FAILED", "VERSIONING", "UPDATING"], # required
    #   }
    # @return [Types::DeleteAgentVersionResponse]
    def delete_agent_version(params = {}, options = {})
      request = build_request(:delete_agent_version, params)
      request.send_request(options)
    end

    # <p>Deletes a data source from a knowledge base.</p>
    # @param [Hash, Types::DeleteDataSourceRequest] params
    # @option params [String] :knowledge_base_id
    #   <p>The unique identifier of the knowledge base from which to delete the data source.</p>
    # @option params [String] :data_source_id
    #   <p>The unique identifier of the data source to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     knowledge_base_id: "Id", # required
    #     data_source_id: "Id", # required
    #   }
    #   options = {}
    #   response = client.delete_data_source(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     knowledge_base_id: "Id", # required
    #     data_source_id: "Id", # required
    #     status: "AVAILABLE" # One of: ["AVAILABLE", "DELETING", "DELETE_UNSUCCESSFUL"], # required
    #   }
    # @return [Types::DeleteDataSourceResponse]
    def delete_data_source(params = {}, options = {})
      request = build_request(:delete_data_source, params)
      request.send_request(options)
    end

    # <p>Deletes a flow.</p>
    # @param [Hash, Types::DeleteFlowRequest] params
    # @option params [String] :flow_identifier
    #   <p>The unique identifier of the flow.</p>
    # @option params [Boolean] :skip_resource_in_use_check
    #   <p>By default, this value is <code>false</code> and deletion is stopped if the resource is in use. If you set it to <code>true</code>, the resource will be deleted even if the resource is in use.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     flow_identifier: "FlowIdentifier", # required
    #     skip_resource_in_use_check: false
    #   }
    #   options = {}
    #   response = client.delete_flow(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "FlowId", # required
    #   }
    # @return [Types::DeleteFlowResponse]
    def delete_flow(params = {}, options = {})
      request = build_request(:delete_flow, params)
      request.send_request(options)
    end

    # <p>Deletes an alias of a flow.</p>
    # @param [Hash, Types::DeleteFlowAliasRequest] params
    # @option params [String] :flow_identifier
    #   <p>The unique identifier of the flow that the alias belongs to.</p>
    # @option params [String] :alias_identifier
    #   <p>The unique identifier of the alias to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     flow_identifier: "FlowIdentifier", # required
    #     alias_identifier: "FlowAliasIdentifier", # required
    #   }
    #   options = {}
    #   response = client.delete_flow_alias(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     flow_id: "FlowId", # required
    #     id: "FlowAliasId", # required
    #   }
    # @return [Types::DeleteFlowAliasResponse]
    def delete_flow_alias(params = {}, options = {})
      request = build_request(:delete_flow_alias, params)
      request.send_request(options)
    end

    # <p>Deletes a version of a flow.</p>
    # @param [Hash, Types::DeleteFlowVersionRequest] params
    # @option params [String] :flow_identifier
    #   <p>The unique identifier of the flow whose version that you want to delete</p>
    # @option params [String] :flow_version
    #   <p>The version of the flow that you want to delete.</p>
    # @option params [Boolean] :skip_resource_in_use_check
    #   <p>By default, this value is <code>false</code> and deletion is stopped if the resource is in use. If you set it to <code>true</code>, the resource will be deleted even if the resource is in use.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     flow_identifier: "FlowIdentifier", # required
    #     flow_version: "NumericalVersion", # required
    #     skip_resource_in_use_check: false
    #   }
    #   options = {}
    #   response = client.delete_flow_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "Id", # required
    #     version: "NumericalVersion", # required
    #   }
    # @return [Types::DeleteFlowVersionResponse]
    def delete_flow_version(params = {}, options = {})
      request = build_request(:delete_flow_version, params)
      request.send_request(options)
    end

    # <p>Deletes a knowledge base. Before deleting a knowledge base, you should disassociate the knowledge base from any agents that it is associated with by making a <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_DisassociateAgentKnowledgeBase.html">DisassociateAgentKnowledgeBase</a> request.</p>
    # @param [Hash, Types::DeleteKnowledgeBaseRequest] params
    # @option params [String] :knowledge_base_id
    #   <p>The unique identifier of the knowledge base to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     knowledge_base_id: "Id", # required
    #   }
    #   options = {}
    #   response = client.delete_knowledge_base(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     knowledge_base_id: "Id", # required
    #     status: "CREATING" # One of: ["CREATING", "ACTIVE", "DELETING", "UPDATING", "FAILED", "DELETE_UNSUCCESSFUL"], # required
    #   }
    # @return [Types::DeleteKnowledgeBaseResponse]
    def delete_knowledge_base(params = {}, options = {})
      request = build_request(:delete_knowledge_base, params)
      request.send_request(options)
    end

    # <p>Deletes documents from a data source and syncs the changes to the knowledge base that is connected to it. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/kb-direct-ingestion.html">Ingest changes directly into a knowledge base</a> in the Amazon Bedrock User Guide.</p>
    # @param [Hash, Types::DeleteKnowledgeBaseDocumentsRequest] params
    # @option params [String] :knowledge_base_id
    #   <p>The unique identifier of the knowledge base that is connected to the data source.</p>
    # @option params [String] :data_source_id
    #   <p>The unique identifier of the data source that contains the documents.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, Amazon Bedrock ignores the request, but does not return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    # @option params [Array<Types::DocumentIdentifier>] :document_identifiers
    #   <p>A list of objects, each of which contains information to identify a document to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     knowledge_base_id: "Id", # required
    #     data_source_id: "Id", # required
    #     client_token: "ClientToken",
    #     document_identifiers: [ # required
    #       {
    #         data_source_type: "CUSTOM" # One of: ["CUSTOM", "S3"], # required
    #         s3: {
    #           uri: "S3BucketUri", # required
    #         },
    #         custom: {
    #           id: "String", # required
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.delete_knowledge_base_documents(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     document_details: [
    #       {
    #         knowledge_base_id: "Id", # required
    #         data_source_id: "Id", # required
    #         status: "INDEXED" # One of: ["INDEXED", "PARTIALLY_INDEXED", "PENDING", "FAILED", "METADATA_PARTIALLY_INDEXED", "METADATA_UPDATE_FAILED", "IGNORED", "NOT_FOUND", "STARTING", "IN_PROGRESS", "DELETING", "DELETE_IN_PROGRESS"], # required
    #         identifier: { # required
    #           data_source_type: "CUSTOM" # One of: ["CUSTOM", "S3"], # required
    #           s3: {
    #             uri: "S3BucketUri", # required
    #           },
    #           custom: {
    #             id: "String", # required
    #           }
    #         },
    #         status_reason: "String",
    #         updated_at: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::DeleteKnowledgeBaseDocumentsResponse]
    def delete_knowledge_base_documents(params = {}, options = {})
      request = build_request(:delete_knowledge_base_documents, params)
      request.send_request(options)
    end

    # <p>Deletes a prompt or a version of it, depending on whether you include the <code>promptVersion</code> field or not. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management-manage.html#prompt-management-delete.html">Delete prompts from the Prompt management tool</a> and <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management-deploy.html#prompt-management-versions-delete.html">Delete a version of a prompt from the Prompt management tool</a> in the Amazon Bedrock User Guide.</p>
    # @param [Hash, Types::DeletePromptRequest] params
    # @option params [String] :prompt_identifier
    #   <p>The unique identifier of the prompt.</p>
    # @option params [String] :prompt_version
    #   <p>The version of the prompt to delete. To delete the prompt, omit this field.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     prompt_identifier: "PromptIdentifier", # required
    #     prompt_version: "NumericalVersion"
    #   }
    #   options = {}
    #   response = client.delete_prompt(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "PromptId", # required
    #     version: "NumericalVersion"
    #   }
    # @return [Types::DeletePromptResponse]
    def delete_prompt(params = {}, options = {})
      request = build_request(:delete_prompt, params)
      request.send_request(options)
    end

    # <p>Disassociates an agent collaborator.</p>
    # @param [Hash, Types::DisassociateAgentCollaboratorRequest] params
    # @option params [String] :agent_id
    #   <p>An agent ID.</p>
    # @option params [String] :agent_version
    #   <p>The agent's version.</p>
    # @option params [String] :collaborator_id
    #   <p>The collaborator's ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_id: "Id", # required
    #     agent_version: "DraftVersion", # required
    #     collaborator_id: "Id", # required
    #   }
    #   options = {}
    #   response = client.disassociate_agent_collaborator(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisassociateAgentCollaboratorResponse]
    def disassociate_agent_collaborator(params = {}, options = {})
      request = build_request(:disassociate_agent_collaborator, params)
      request.send_request(options)
    end

    # <p>Disassociates a knowledge base from an agent.</p>
    # @param [Hash, Types::DisassociateAgentKnowledgeBaseRequest] params
    # @option params [String] :agent_id
    #   <p>The unique identifier of the agent from which to disassociate the knowledge base.</p>
    # @option params [String] :agent_version
    #   <p>The version of the agent from which to disassociate the knowledge base.</p>
    # @option params [String] :knowledge_base_id
    #   <p>The unique identifier of the knowledge base to disassociate.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_id: "Id", # required
    #     agent_version: "DraftVersion", # required
    #     knowledge_base_id: "Id", # required
    #   }
    #   options = {}
    #   response = client.disassociate_agent_knowledge_base(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisassociateAgentKnowledgeBaseResponse]
    def disassociate_agent_knowledge_base(params = {}, options = {})
      request = build_request(:disassociate_agent_knowledge_base, params)
      request.send_request(options)
    end

    # <p>Gets information about an agent.</p>
    # @param [Hash, Types::GetAgentRequest] params
    # @option params [String] :agent_id
    #   <p>The unique identifier of the agent.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_id: "Id", # required
    #   }
    #   options = {}
    #   response = client.get_agent(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     agent: { # required
    #       agent_id: "Id", # required
    #       agent_name: "Name", # required
    #       agent_arn: "AgentArn", # required
    #       agent_version: "DraftVersion", # required
    #       client_token: "ClientToken",
    #       instruction: "Instruction",
    #       agent_status: "CREATING" # One of: ["CREATING", "PREPARING", "PREPARED", "NOT_PREPARED", "DELETING", "FAILED", "VERSIONING", "UPDATING"], # required
    #       foundation_model: "ModelIdentifier",
    #       description: "Description",
    #       orchestration_type: "DEFAULT" # One of: ["DEFAULT", "CUSTOM_ORCHESTRATION"],
    #       custom_orchestration: {
    #         executor: {
    #           # One of:
    #           lambda: "LambdaArn"
    #         }
    #       },
    #       idle_session_ttl_in_seconds: 1, # required
    #       agent_resource_role_arn: "AgentRoleArn", # required
    #       customer_encryption_key_arn: "KmsKeyArn",
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       prepared_at: Time.now,
    #       failure_reasons: ["FailureReason"],
    #       recommended_actions: ["RecommendedAction"],
    #       prompt_override_configuration: {
    #         prompt_configurations: [ # required
    #           {
    #             prompt_type: "PRE_PROCESSING" # One of: ["PRE_PROCESSING", "ORCHESTRATION", "POST_PROCESSING", "KNOWLEDGE_BASE_RESPONSE_GENERATION", "MEMORY_SUMMARIZATION"],
    #             prompt_creation_mode: "DEFAULT" # One of: ["DEFAULT", "OVERRIDDEN"],
    #             prompt_state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #             base_prompt_template: "BasePromptTemplate",
    #             inference_configuration: {
    #               temperature: 1.0,
    #               top_p: 1.0,
    #               top_k: 1,
    #               maximum_length: 1,
    #               stop_sequences: ["String"]
    #             },
    #             parser_mode: "DEFAULT" # One of: ["DEFAULT", "OVERRIDDEN"],
    #             foundation_model: "ModelIdentifier",
    #             additional_model_request_fields: ""null""
    #           }
    #         ],
    #         override_lambda: "LambdaArn"
    #       },
    #       guardrail_configuration: {
    #         guardrail_identifier: "GuardrailIdentifier",
    #         guardrail_version: "GuardrailVersion"
    #       },
    #       memory_configuration: {
    #         enabled_memory_types: ["SESSION_SUMMARY" # One of: ["SESSION_SUMMARY"]], # required
    #         storage_days: 1,
    #         session_summary_configuration: {
    #           max_recent_sessions: 1
    #         }
    #       },
    #       agent_collaboration: "SUPERVISOR" # One of: ["SUPERVISOR", "SUPERVISOR_ROUTER", "DISABLED"]
    #     }
    #   }
    # @return [Types::GetAgentResponse]
    def get_agent(params = {}, options = {})
      request = build_request(:get_agent, params)
      request.send_request(options)
    end

    # <p>Gets information about an action group for an agent.</p>
    # @param [Hash, Types::GetAgentActionGroupRequest] params
    # @option params [String] :agent_id
    #   <p>The unique identifier of the agent that the action group belongs to.</p>
    # @option params [String] :agent_version
    #   <p>The version of the agent that the action group belongs to.</p>
    # @option params [String] :action_group_id
    #   <p>The unique identifier of the action group for which to get information.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_id: "Id", # required
    #     agent_version: "Version", # required
    #     action_group_id: "Id", # required
    #   }
    #   options = {}
    #   response = client.get_agent_action_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     agent_action_group: { # required
    #       agent_id: "Id", # required
    #       agent_version: "Version", # required
    #       action_group_id: "Id", # required
    #       action_group_name: "Name", # required
    #       client_token: "ClientToken",
    #       description: "Description",
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       parent_action_signature: "AMAZON.UserInput" # One of: ["AMAZON.UserInput", "AMAZON.CodeInterpreter", "ANTHROPIC.Computer", "ANTHROPIC.Bash", "ANTHROPIC.TextEditor"],
    #       parent_action_group_signature_params: {
    #         "String" => "String"
    #       },
    #       action_group_executor: {
    #         # One of:
    #         lambda: "LambdaArn",
    #         custom_control: "RETURN_CONTROL" # One of: ["RETURN_CONTROL"]
    #       },
    #       api_schema: {
    #         # One of:
    #         s3: {
    #           s3_bucket_name: "S3BucketName",
    #           s3_object_key: "S3ObjectKey"
    #         },
    #         payload: "Payload"
    #       },
    #       function_schema: {
    #         # One of:
    #         functions: [
    #           {
    #             name: "Name", # required
    #             description: "FunctionDescription",
    #             parameters: {
    #               "Name" => {
    #                 description: "ParameterDescription",
    #                 type: "string" # One of: ["string", "number", "integer", "boolean", "array"], # required
    #                 required: false
    #               }
    #             },
    #             require_confirmation: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #           }
    #         ]
    #       },
    #       action_group_state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #     }
    #   }
    # @return [Types::GetAgentActionGroupResponse]
    def get_agent_action_group(params = {}, options = {})
      request = build_request(:get_agent_action_group, params)
      request.send_request(options)
    end

    # <p>Gets information about an alias of an agent.</p>
    # @param [Hash, Types::GetAgentAliasRequest] params
    # @option params [String] :agent_id
    #   <p>The unique identifier of the agent to which the alias to get information belongs.</p>
    # @option params [String] :agent_alias_id
    #   <p>The unique identifier of the alias for which to get information.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_id: "Id", # required
    #     agent_alias_id: "AgentAliasId", # required
    #   }
    #   options = {}
    #   response = client.get_agent_alias(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     agent_alias: { # required
    #       agent_id: "Id", # required
    #       agent_alias_id: "AgentAliasId", # required
    #       agent_alias_name: "Name", # required
    #       agent_alias_arn: "AgentAliasArn", # required
    #       client_token: "ClientToken",
    #       description: "Description",
    #       routing_configuration: [ # required
    #         {
    #           agent_version: "Version",
    #           provisioned_throughput: "ProvisionedModelIdentifier"
    #         }
    #       ],
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       agent_alias_history_events: [
    #         {
    #           routing_configuration: [
    #             {
    #               agent_version: "Version",
    #               provisioned_throughput: "ProvisionedModelIdentifier"
    #             }
    #           ],
    #           end_date: Time.now,
    #           start_date: Time.now
    #         }
    #       ],
    #       agent_alias_status: "CREATING" # One of: ["CREATING", "PREPARED", "FAILED", "UPDATING", "DELETING", "DISSOCIATED"], # required
    #       failure_reasons: ["FailureReason"],
    #       alias_invocation_state: "ACCEPT_INVOCATIONS" # One of: ["ACCEPT_INVOCATIONS", "REJECT_INVOCATIONS"]
    #     }
    #   }
    # @return [Types::GetAgentAliasResponse]
    def get_agent_alias(params = {}, options = {})
      request = build_request(:get_agent_alias, params)
      request.send_request(options)
    end

    # <p>Retrieves information about an agent's collaborator.</p>
    # @param [Hash, Types::GetAgentCollaboratorRequest] params
    # @option params [String] :agent_id
    #   <p>The agent's ID.</p>
    # @option params [String] :agent_version
    #   <p>The agent's version.</p>
    # @option params [String] :collaborator_id
    #   <p>The collaborator's ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_id: "Id", # required
    #     agent_version: "Version", # required
    #     collaborator_id: "Id", # required
    #   }
    #   options = {}
    #   response = client.get_agent_collaborator(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     agent_collaborator: { # required
    #       agent_id: "Id", # required
    #       agent_version: "Version", # required
    #       agent_descriptor: { # required
    #         alias_arn: "AgentAliasArn"
    #       },
    #       collaborator_id: "Id", # required
    #       collaboration_instruction: "CollaborationInstruction", # required
    #       collaborator_name: "Name", # required
    #       created_at: Time.now, # required
    #       last_updated_at: Time.now, # required
    #       relay_conversation_history: "TO_COLLABORATOR" # One of: ["TO_COLLABORATOR", "DISABLED"],
    #       client_token: "ClientToken"
    #     }
    #   }
    # @return [Types::GetAgentCollaboratorResponse]
    def get_agent_collaborator(params = {}, options = {})
      request = build_request(:get_agent_collaborator, params)
      request.send_request(options)
    end

    # <p>Gets information about a knowledge base associated with an agent.</p>
    # @param [Hash, Types::GetAgentKnowledgeBaseRequest] params
    # @option params [String] :agent_id
    #   <p>The unique identifier of the agent with which the knowledge base is associated.</p>
    # @option params [String] :agent_version
    #   <p>The version of the agent with which the knowledge base is associated.</p>
    # @option params [String] :knowledge_base_id
    #   <p>The unique identifier of the knowledge base associated with the agent.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_id: "Id", # required
    #     agent_version: "Version", # required
    #     knowledge_base_id: "Id", # required
    #   }
    #   options = {}
    #   response = client.get_agent_knowledge_base(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     agent_knowledge_base: { # required
    #       agent_id: "Id", # required
    #       agent_version: "Version", # required
    #       knowledge_base_id: "Id", # required
    #       description: "Description", # required
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       knowledge_base_state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #     }
    #   }
    # @return [Types::GetAgentKnowledgeBaseResponse]
    def get_agent_knowledge_base(params = {}, options = {})
      request = build_request(:get_agent_knowledge_base, params)
      request.send_request(options)
    end

    # <p>Gets details about a version of an agent.</p>
    # @param [Hash, Types::GetAgentVersionRequest] params
    # @option params [String] :agent_id
    #   <p>The unique identifier of the agent.</p>
    # @option params [String] :agent_version
    #   <p>The version of the agent.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_id: "Id", # required
    #     agent_version: "NumericalVersion", # required
    #   }
    #   options = {}
    #   response = client.get_agent_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     agent_version: { # required
    #       agent_id: "Id", # required
    #       agent_name: "Name", # required
    #       agent_arn: "AgentArn", # required
    #       version: "NumericalVersion", # required
    #       instruction: "Instruction",
    #       agent_status: "CREATING" # One of: ["CREATING", "PREPARING", "PREPARED", "NOT_PREPARED", "DELETING", "FAILED", "VERSIONING", "UPDATING"], # required
    #       foundation_model: "ModelIdentifier",
    #       description: "Description",
    #       idle_session_ttl_in_seconds: 1, # required
    #       agent_resource_role_arn: "AgentRoleArn", # required
    #       customer_encryption_key_arn: "KmsKeyArn",
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       failure_reasons: ["FailureReason"],
    #       recommended_actions: ["RecommendedAction"],
    #       prompt_override_configuration: {
    #         prompt_configurations: [ # required
    #           {
    #             prompt_type: "PRE_PROCESSING" # One of: ["PRE_PROCESSING", "ORCHESTRATION", "POST_PROCESSING", "KNOWLEDGE_BASE_RESPONSE_GENERATION", "MEMORY_SUMMARIZATION"],
    #             prompt_creation_mode: "DEFAULT" # One of: ["DEFAULT", "OVERRIDDEN"],
    #             prompt_state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #             base_prompt_template: "BasePromptTemplate",
    #             inference_configuration: {
    #               temperature: 1.0,
    #               top_p: 1.0,
    #               top_k: 1,
    #               maximum_length: 1,
    #               stop_sequences: ["String"]
    #             },
    #             parser_mode: "DEFAULT" # One of: ["DEFAULT", "OVERRIDDEN"],
    #             foundation_model: "ModelIdentifier",
    #             additional_model_request_fields: ""null""
    #           }
    #         ],
    #         override_lambda: "LambdaArn"
    #       },
    #       guardrail_configuration: {
    #         guardrail_identifier: "GuardrailIdentifier",
    #         guardrail_version: "GuardrailVersion"
    #       },
    #       memory_configuration: {
    #         enabled_memory_types: ["SESSION_SUMMARY" # One of: ["SESSION_SUMMARY"]], # required
    #         storage_days: 1,
    #         session_summary_configuration: {
    #           max_recent_sessions: 1
    #         }
    #       },
    #       agent_collaboration: "SUPERVISOR" # One of: ["SUPERVISOR", "SUPERVISOR_ROUTER", "DISABLED"]
    #     }
    #   }
    # @return [Types::GetAgentVersionResponse]
    def get_agent_version(params = {}, options = {})
      request = build_request(:get_agent_version, params)
      request.send_request(options)
    end

    # <p>Gets information about a data source.</p>
    # @param [Hash, Types::GetDataSourceRequest] params
    # @option params [String] :knowledge_base_id
    #   <p>The unique identifier of the knowledge base for the data source.</p>
    # @option params [String] :data_source_id
    #   <p>The unique identifier of the data source.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     knowledge_base_id: "Id", # required
    #     data_source_id: "Id", # required
    #   }
    #   options = {}
    #   response = client.get_data_source(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     data_source: { # required
    #       knowledge_base_id: "Id", # required
    #       data_source_id: "Id", # required
    #       name: "Name", # required
    #       status: "AVAILABLE" # One of: ["AVAILABLE", "DELETING", "DELETE_UNSUCCESSFUL"], # required
    #       description: "Description",
    #       data_source_configuration: { # required
    #         type: "S3" # One of: ["S3", "WEB", "CONFLUENCE", "SALESFORCE", "SHAREPOINT", "CUSTOM", "REDSHIFT_METADATA"], # required
    #         s3_configuration: {
    #           bucket_arn: "S3BucketArn", # required
    #           inclusion_prefixes: ["S3Prefix"],
    #           bucket_owner_account_id: "BucketOwnerAccountId"
    #         },
    #         web_configuration: {
    #           source_configuration: { # required
    #             url_configuration: { # required
    #               seed_urls: [
    #                 {
    #                   url: "Url"
    #                 }
    #               ]
    #             }
    #           },
    #           crawler_configuration: {
    #             crawler_limits: {
    #               rate_limit: 1,
    #               max_pages: 1
    #             },
    #             inclusion_filters: ["FilterPattern"],
    #             exclusion_filters: ["FilterPattern"],
    #             scope: "HOST_ONLY" # One of: ["HOST_ONLY", "SUBDOMAINS"],
    #             user_agent: "UserAgent",
    #             user_agent_header: "UserAgentHeader"
    #           }
    #         },
    #         confluence_configuration: {
    #           source_configuration: { # required
    #             host_url: "HttpsUrl", # required
    #             host_type: "SAAS" # One of: ["SAAS"], # required
    #             auth_type: "BASIC" # One of: ["BASIC", "OAUTH2_CLIENT_CREDENTIALS"], # required
    #             credentials_secret_arn: "SecretArn", # required
    #           },
    #           crawler_configuration: {
    #             filter_configuration: {
    #               type: "PATTERN" # One of: ["PATTERN"], # required
    #               pattern_object_filter: {
    #                 filters: [ # required
    #                   {
    #                     object_type: "FilteredObjectType", # required
    #                     inclusion_filters: ["FilterPattern"],
    #                     exclusion_filters: ["FilterPattern"]
    #                   }
    #                 ]
    #               }
    #             }
    #           }
    #         },
    #         salesforce_configuration: {
    #           source_configuration: { # required
    #             host_url: "HttpsUrl", # required
    #             auth_type: "OAUTH2_CLIENT_CREDENTIALS" # One of: ["OAUTH2_CLIENT_CREDENTIALS"], # required
    #             credentials_secret_arn: "SecretArn", # required
    #           },
    #           crawler_configuration: {
    #             filter_configuration: {
    #               type: "PATTERN" # One of: ["PATTERN"], # required
    #               pattern_object_filter: {
    #                 filters: [ # required
    #                   {
    #                     object_type: "FilteredObjectType", # required
    #                     inclusion_filters: ["FilterPattern"],
    #                     exclusion_filters: ["FilterPattern"]
    #                   }
    #                 ]
    #               }
    #             }
    #           }
    #         },
    #         share_point_configuration: {
    #           source_configuration: { # required
    #             tenant_id: "Microsoft365TenantId",
    #             domain: "SharePointDomain", # required
    #             site_urls: ["HttpsUrl"], # required
    #             host_type: "ONLINE" # One of: ["ONLINE"], # required
    #             auth_type: "OAUTH2_CLIENT_CREDENTIALS" # One of: ["OAUTH2_CLIENT_CREDENTIALS", "OAUTH2_SHAREPOINT_APP_ONLY_CLIENT_CREDENTIALS"], # required
    #             credentials_secret_arn: "SecretArn", # required
    #           },
    #           crawler_configuration: {
    #             filter_configuration: {
    #               type: "PATTERN" # One of: ["PATTERN"], # required
    #               pattern_object_filter: {
    #                 filters: [ # required
    #                   {
    #                     object_type: "FilteredObjectType", # required
    #                     inclusion_filters: ["FilterPattern"],
    #                     exclusion_filters: ["FilterPattern"]
    #                   }
    #                 ]
    #               }
    #             }
    #           }
    #         }
    #       },
    #       server_side_encryption_configuration: {
    #         kms_key_arn: "KmsKeyArn"
    #       },
    #       vector_ingestion_configuration: {
    #         chunking_configuration: {
    #           chunking_strategy: "FIXED_SIZE" # One of: ["FIXED_SIZE", "NONE", "HIERARCHICAL", "SEMANTIC"], # required
    #           fixed_size_chunking_configuration: {
    #             max_tokens: 1, # required
    #             overlap_percentage: 1, # required
    #           },
    #           hierarchical_chunking_configuration: {
    #             level_configurations: [ # required
    #               {
    #                 max_tokens: 1, # required
    #               }
    #             ],
    #             overlap_tokens: 1, # required
    #           },
    #           semantic_chunking_configuration: {
    #             max_tokens: 1, # required
    #             buffer_size: 1, # required
    #             breakpoint_percentile_threshold: 1, # required
    #           }
    #         },
    #         custom_transformation_configuration: {
    #           intermediate_storage: { # required
    #             s3_location: { # required
    #               uri: "S3BucketUri", # required
    #             }
    #           },
    #           transformations: [ # required
    #             {
    #               transformation_function: { # required
    #                 transformation_lambda_configuration: { # required
    #                   lambda_arn: "LambdaArn", # required
    #                 }
    #               },
    #               step_to_apply: "POST_CHUNKING" # One of: ["POST_CHUNKING"], # required
    #             }
    #           ]
    #         },
    #         parsing_configuration: {
    #           parsing_strategy: "BEDROCK_FOUNDATION_MODEL" # One of: ["BEDROCK_FOUNDATION_MODEL", "BEDROCK_DATA_AUTOMATION"], # required
    #           bedrock_foundation_model_configuration: {
    #             model_arn: "BedrockModelArn", # required
    #             parsing_prompt: {
    #               parsing_prompt_text: "ParsingPromptText", # required
    #             },
    #             parsing_modality: "MULTIMODAL" # One of: ["MULTIMODAL"]
    #           },
    #           bedrock_data_automation_configuration: {
    #             parsing_modality: "MULTIMODAL" # One of: ["MULTIMODAL"]
    #           }
    #         },
    #         context_enrichment_configuration: {
    #           type: "BEDROCK_FOUNDATION_MODEL" # One of: ["BEDROCK_FOUNDATION_MODEL"], # required
    #           bedrock_foundation_model_configuration: {
    #             enrichment_strategy_configuration: { # required
    #               method: "CHUNK_ENTITY_EXTRACTION" # One of: ["CHUNK_ENTITY_EXTRACTION"], # required
    #             },
    #             model_arn: "BedrockModelArn", # required
    #           }
    #         }
    #       },
    #       data_deletion_policy: "RETAIN" # One of: ["RETAIN", "DELETE"],
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       failure_reasons: ["FailureReason"]
    #     }
    #   }
    # @return [Types::GetDataSourceResponse]
    def get_data_source(params = {}, options = {})
      request = build_request(:get_data_source, params)
      request.send_request(options)
    end

    # <p>Retrieves information about a flow. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/flows-manage.html">Manage a flow in Amazon Bedrock</a> in the Amazon Bedrock User Guide.</p>
    # @param [Hash, Types::GetFlowRequest] params
    # @option params [String] :flow_identifier
    #   <p>The unique identifier of the flow.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     flow_identifier: "FlowIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_flow(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "FlowName", # required
    #     description: "FlowDescription",
    #     execution_role_arn: "FlowExecutionRoleArn", # required
    #     customer_encryption_key_arn: "KmsKeyArn",
    #     id: "FlowId", # required
    #     arn: "FlowArn", # required
    #     status: "Failed" # One of: ["Failed", "Prepared", "Preparing", "NotPrepared"], # required
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #     version: "DraftVersion", # required
    #     definition: {
    #       nodes: [
    #         {
    #           name: "FlowNodeName", # required
    #           type: "Input" # One of: ["Input", "Output", "KnowledgeBase", "Condition", "Lex", "Prompt", "LambdaFunction", "Storage", "Agent", "Retrieval", "Iterator", "Collector", "InlineCode", "Loop", "LoopInput", "LoopController"], # required
    #           configuration: {
    #             # One of:
    #             input: {
    #             },
    #             output: {
    #             },
    #             knowledge_base: {
    #               knowledge_base_id: "FlowKnowledgeBaseId", # required
    #               model_id: "KnowledgeBaseModelIdentifier",
    #               guardrail_configuration: {
    #                 guardrail_identifier: "GuardrailIdentifier",
    #                 guardrail_version: "GuardrailVersion"
    #               },
    #               number_of_results: 1,
    #               prompt_template: {
    #                 text_prompt_template: "KnowledgeBaseTextPrompt"
    #               },
    #               inference_configuration: {
    #                 # One of:
    #                 text: {
    #                   temperature: 1.0,
    #                   top_p: 1.0,
    #                   max_tokens: 1,
    #                   stop_sequences: ["String"]
    #                 }
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
    #               orchestration_configuration: {
    #                 prompt_template: {
    #                   text_prompt_template: "KnowledgeBaseTextPrompt"
    #                 },
    #                 inference_config: {
    #                   # One of:
    #                   text: {
    #                     temperature: 1.0,
    #                     top_p: 1.0,
    #                     max_tokens: 1,
    #                     stop_sequences: ["String"]
    #                   }
    #                 },
    #                 additional_model_request_fields: {
    #                   "AdditionalModelRequestFieldsKey" => ""null""
    #                 },
    #                 performance_config: {
    #                   latency: "standard" # One of: ["standard", "optimized"]
    #                 }
    #               }
    #             },
    #             condition: {
    #               conditions: [ # required
    #                 {
    #                   name: "FlowConditionName", # required
    #                   expression: "FlowConditionExpression"
    #                 }
    #               ]
    #             },
    #             lex: {
    #               bot_alias_arn: "FlowLexBotAliasArn", # required
    #               locale_id: "FlowLexBotLocaleId", # required
    #             },
    #             prompt: {
    #               source_configuration: { # required
    #                 # One of:
    #                 resource: {
    #                   prompt_arn: "FlowPromptArn", # required
    #                 },
    #                 inline: {
    #                   template_type: "TEXT" # One of: ["TEXT", "CHAT"], # required
    #                   template_configuration: { # required
    #                     # One of:
    #                     text: {
    #                       text: "TextPrompt", # required
    #                       cache_point: {
    #                         type: "default" # One of: ["default"], # required
    #                       },
    #                       input_variables: [
    #                         {
    #                           name: "PromptInputVariableName"
    #                         }
    #                       ]
    #                     },
    #                     chat: {
    #                       messages: [ # required
    #                         {
    #                           role: "user" # One of: ["user", "assistant"], # required
    #                           content: [{ # required
    #                             # One of:
    #                             text: "String",
    #                             cache_point: {
    #                               type: "default" # One of: ["default"], # required
    #                             }
    #                           }]
    #                         }
    #                       ],
    #                       system: [{
    #                         # One of:
    #                         text: "NonEmptyString",
    #                         cache_point: {
    #                           type: "default" # One of: ["default"], # required
    #                         }
    #                       }],
    #                       input_variables: [
    #                         {
    #                           name: "PromptInputVariableName"
    #                         }
    #                       ],
    #                       tool_configuration: {
    #                         tools: [{ # required
    #                           # One of:
    #                           tool_spec: {
    #                             name: "ToolName", # required
    #                             description: "NonEmptyString",
    #                             input_schema: { # required
    #                               # One of:
    #                               json: ""null""
    #                             }
    #                           },
    #                           cache_point: {
    #                             type: "default" # One of: ["default"], # required
    #                           }
    #                         }],
    #                         tool_choice: {
    #                           # One of:
    #                           auto: {
    #                           },
    #                           any: {
    #                           },
    #                           tool: {
    #                             name: "ToolName", # required
    #                           }
    #                         }
    #                       }
    #                     }
    #                   },
    #                   model_id: "FlowPromptModelIdentifier", # required
    #                   inference_configuration: {
    #                     # One of:
    #                     text: {
    #                       temperature: 1.0,
    #                       top_p: 1.0,
    #                       max_tokens: 1,
    #                       stop_sequences: ["String"]
    #                     }
    #                   },
    #                   additional_model_request_fields: ""null""
    #                 }
    #               },
    #               guardrail_configuration: {
    #                 guardrail_identifier: "GuardrailIdentifier",
    #                 guardrail_version: "GuardrailVersion"
    #               }
    #             },
    #             lambda_function: {
    #               lambda_arn: "FlowLambdaArn", # required
    #             },
    #             storage: {
    #               service_configuration: { # required
    #                 # One of:
    #                 s3: {
    #                   bucket_name: "FlowS3BucketName", # required
    #                 }
    #               }
    #             },
    #             agent: {
    #               agent_alias_arn: "FlowAgentAliasArn", # required
    #             },
    #             retrieval: {
    #               service_configuration: { # required
    #                 # One of:
    #                 s3: {
    #                   bucket_name: "FlowS3BucketName", # required
    #                 }
    #               }
    #             },
    #             iterator: {
    #             },
    #             collector: {
    #             },
    #             inline_code: {
    #               code: "InlineCode", # required
    #               language: "Python_3" # One of: ["Python_3"], # required
    #             },
    #             loop: {
    #               definition: { # required
    #                 # recursive FlowDefinition
    #               }
    #             },
    #             loop_input: {
    #             },
    #             loop_controller: {
    #               continue_condition: { # required
    #                 name: "FlowConditionName", # required
    #                 expression: "FlowConditionExpression"
    #               },
    #               max_iterations: 1
    #             }
    #           },
    #           inputs: [
    #             {
    #               name: "FlowNodeInputName", # required
    #               type: "String" # One of: ["String", "Number", "Boolean", "Object", "Array"], # required
    #               expression: "FlowNodeInputExpression", # required
    #               category: "LoopCondition" # One of: ["LoopCondition", "ReturnValueToLoopStart", "ExitLoop"]
    #             }
    #           ],
    #           outputs: [
    #             {
    #               name: "FlowNodeOutputName", # required
    #               type: "String" # One of: ["String", "Number", "Boolean", "Object", "Array"], # required
    #             }
    #           ]
    #         }
    #       ],
    #       connections: [
    #         {
    #           type: "Data" # One of: ["Data", "Conditional"], # required
    #           name: "FlowConnectionName", # required
    #           source: "FlowNodeName", # required
    #           target: "FlowNodeName", # required
    #           configuration: {
    #             # One of:
    #             data: {
    #               source_output: "FlowNodeOutputName", # required
    #               target_input: "FlowNodeInputName", # required
    #             },
    #             conditional: {
    #               condition: "FlowConditionName", # required
    #             }
    #           }
    #         }
    #       ]
    #     },
    #     validations: [
    #       {
    #         message: "NonBlankString", # required
    #         severity: "Warning" # One of: ["Warning", "Error"], # required
    #         details: {
    #           # One of:
    #           cyclic_connection: {
    #             connection: "FlowConnectionName", # required
    #           },
    #           duplicate_connections: {
    #             source: "FlowNodeName", # required
    #             target: "FlowNodeName", # required
    #           },
    #           duplicate_condition_expression: {
    #             node: "FlowNodeName", # required
    #             expression: "FlowConditionExpression", # required
    #           },
    #           unreachable_node: {
    #             node: "FlowNodeName", # required
    #           },
    #           unknown_connection_source: {
    #             connection: "FlowConnectionName", # required
    #           },
    #           unknown_connection_source_output: {
    #             connection: "FlowConnectionName", # required
    #           },
    #           unknown_connection_target: {
    #             connection: "FlowConnectionName", # required
    #           },
    #           unknown_connection_target_input: {
    #             connection: "FlowConnectionName", # required
    #           },
    #           unknown_connection_condition: {
    #             connection: "FlowConnectionName", # required
    #           },
    #           malformed_condition_expression: {
    #             node: "FlowNodeName", # required
    #             condition: "FlowConditionName", # required
    #             cause: "ErrorMessage", # required
    #           },
    #           malformed_node_input_expression: {
    #             node: "FlowNodeName", # required
    #             input: "FlowNodeInputName", # required
    #             cause: "ErrorMessage", # required
    #           },
    #           mismatched_node_input_type: {
    #             node: "FlowNodeName", # required
    #             input: "FlowNodeInputName", # required
    #             expected_type: "String" # One of: ["String", "Number", "Boolean", "Object", "Array"], # required
    #           },
    #           mismatched_node_output_type: {
    #             node: "FlowNodeName", # required
    #             output: "FlowNodeOutputName", # required
    #             expected_type: "String" # One of: ["String", "Number", "Boolean", "Object", "Array"], # required
    #           },
    #           incompatible_connection_data_type: {
    #             connection: "FlowConnectionName", # required
    #           },
    #           missing_connection_configuration: {
    #             connection: "FlowConnectionName", # required
    #           },
    #           missing_default_condition: {
    #             node: "FlowNodeName", # required
    #           },
    #           missing_ending_nodes: {
    #           },
    #           missing_node_configuration: {
    #             node: "FlowNodeName", # required
    #           },
    #           missing_node_input: {
    #             node: "FlowNodeName", # required
    #             input: "FlowNodeInputName", # required
    #           },
    #           missing_node_output: {
    #             node: "FlowNodeName", # required
    #             output: "FlowNodeOutputName", # required
    #           },
    #           missing_starting_nodes: {
    #           },
    #           multiple_node_input_connections: {
    #             node: "FlowNodeName", # required
    #             input: "FlowNodeInputName", # required
    #           },
    #           unfulfilled_node_input: {
    #             node: "FlowNodeName", # required
    #             input: "FlowNodeInputName", # required
    #           },
    #           unsatisfied_connection_conditions: {
    #             connection: "FlowConnectionName", # required
    #           },
    #           unspecified: {
    #           },
    #           unknown_node_input: {
    #             node: "FlowNodeName", # required
    #             input: "FlowNodeInputName", # required
    #           },
    #           unknown_node_output: {
    #             node: "FlowNodeName", # required
    #             output: "FlowNodeOutputName", # required
    #           },
    #           missing_loop_input_node: {
    #             loop_node: "FlowNodeName", # required
    #           },
    #           missing_loop_controller_node: {
    #             loop_node: "FlowNodeName", # required
    #           },
    #           multiple_loop_input_nodes: {
    #             loop_node: "FlowNodeName", # required
    #           },
    #           multiple_loop_controller_nodes: {
    #             loop_node: "FlowNodeName", # required
    #           },
    #           loop_incompatible_node_type: {
    #             node: "FlowNodeName", # required
    #             incompatible_node_type: "Input" # One of: ["Input", "Condition", "Iterator", "Collector"], # required
    #             incompatible_node_name: "FlowNodeName", # required
    #           },
    #           invalid_loop_boundary: {
    #             connection: "FlowConnectionName", # required
    #             source: "FlowNodeName", # required
    #             target: "FlowNodeName", # required
    #           }
    #         },
    #         type: "CyclicConnection" # One of: ["CyclicConnection", "DuplicateConnections", "DuplicateConditionExpression", "UnreachableNode", "UnknownConnectionSource", "UnknownConnectionSourceOutput", "UnknownConnectionTarget", "UnknownConnectionTargetInput", "UnknownConnectionCondition", "MalformedConditionExpression", "MalformedNodeInputExpression", "MismatchedNodeInputType", "MismatchedNodeOutputType", "IncompatibleConnectionDataType", "MissingConnectionConfiguration", "MissingDefaultCondition", "MissingEndingNodes", "MissingNodeConfiguration", "MissingNodeInput", "MissingNodeOutput", "MissingStartingNodes", "MultipleNodeInputConnections", "UnfulfilledNodeInput", "UnsatisfiedConnectionConditions", "Unspecified", "UnknownNodeInput", "UnknownNodeOutput", "MissingLoopInputNode", "MissingLoopControllerNode", "MultipleLoopInputNodes", "MultipleLoopControllerNodes", "LoopIncompatibleNodeType", "InvalidLoopBoundary"]
    #       }
    #     ]
    #   }
    # @return [Types::GetFlowResponse]
    def get_flow(params = {}, options = {})
      request = build_request(:get_flow, params)
      request.send_request(options)
    end

    # <p>Retrieves information about a flow. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/flows-deploy.html">Deploy a flow in Amazon Bedrock</a> in the Amazon Bedrock User Guide.</p>
    # @param [Hash, Types::GetFlowAliasRequest] params
    # @option params [String] :flow_identifier
    #   <p>The unique identifier of the flow that the alias belongs to.</p>
    # @option params [String] :alias_identifier
    #   <p>The unique identifier of the alias for which to retrieve information.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     flow_identifier: "FlowIdentifier", # required
    #     alias_identifier: "FlowAliasIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_flow_alias(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "Name", # required
    #     description: "Description",
    #     routing_configuration: [ # required
    #       {
    #         flow_version: "Version"
    #       }
    #     ],
    #     concurrency_configuration: {
    #       type: "Automatic" # One of: ["Automatic", "Manual"], # required
    #       max_concurrency: 1
    #     },
    #     flow_id: "FlowId", # required
    #     id: "FlowAliasId", # required
    #     arn: "FlowAliasArn", # required
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #   }
    # @return [Types::GetFlowAliasResponse]
    def get_flow_alias(params = {}, options = {})
      request = build_request(:get_flow_alias, params)
      request.send_request(options)
    end

    # <p>Retrieves information about a version of a flow. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/flows-deploy.html">Deploy a flow in Amazon Bedrock</a> in the Amazon Bedrock User Guide.</p>
    # @param [Hash, Types::GetFlowVersionRequest] params
    # @option params [String] :flow_identifier
    #   <p>The unique identifier of the flow for which to get information.</p>
    # @option params [String] :flow_version
    #   <p>The version of the flow for which to get information.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     flow_identifier: "FlowIdentifier", # required
    #     flow_version: "NumericalVersion", # required
    #   }
    #   options = {}
    #   response = client.get_flow_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "FlowName", # required
    #     description: "FlowDescription",
    #     execution_role_arn: "FlowExecutionRoleArn", # required
    #     customer_encryption_key_arn: "KmsKeyArn",
    #     id: "FlowId", # required
    #     arn: "FlowArn", # required
    #     status: "Failed" # One of: ["Failed", "Prepared", "Preparing", "NotPrepared"], # required
    #     created_at: Time.now, # required
    #     version: "NumericalVersion", # required
    #     definition: {
    #       nodes: [
    #         {
    #           name: "FlowNodeName", # required
    #           type: "Input" # One of: ["Input", "Output", "KnowledgeBase", "Condition", "Lex", "Prompt", "LambdaFunction", "Storage", "Agent", "Retrieval", "Iterator", "Collector", "InlineCode", "Loop", "LoopInput", "LoopController"], # required
    #           configuration: {
    #             # One of:
    #             input: {
    #             },
    #             output: {
    #             },
    #             knowledge_base: {
    #               knowledge_base_id: "FlowKnowledgeBaseId", # required
    #               model_id: "KnowledgeBaseModelIdentifier",
    #               guardrail_configuration: {
    #                 guardrail_identifier: "GuardrailIdentifier",
    #                 guardrail_version: "GuardrailVersion"
    #               },
    #               number_of_results: 1,
    #               prompt_template: {
    #                 text_prompt_template: "KnowledgeBaseTextPrompt"
    #               },
    #               inference_configuration: {
    #                 # One of:
    #                 text: {
    #                   temperature: 1.0,
    #                   top_p: 1.0,
    #                   max_tokens: 1,
    #                   stop_sequences: ["String"]
    #                 }
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
    #               orchestration_configuration: {
    #                 prompt_template: {
    #                   text_prompt_template: "KnowledgeBaseTextPrompt"
    #                 },
    #                 inference_config: {
    #                   # One of:
    #                   text: {
    #                     temperature: 1.0,
    #                     top_p: 1.0,
    #                     max_tokens: 1,
    #                     stop_sequences: ["String"]
    #                   }
    #                 },
    #                 additional_model_request_fields: {
    #                   "AdditionalModelRequestFieldsKey" => ""null""
    #                 },
    #                 performance_config: {
    #                   latency: "standard" # One of: ["standard", "optimized"]
    #                 }
    #               }
    #             },
    #             condition: {
    #               conditions: [ # required
    #                 {
    #                   name: "FlowConditionName", # required
    #                   expression: "FlowConditionExpression"
    #                 }
    #               ]
    #             },
    #             lex: {
    #               bot_alias_arn: "FlowLexBotAliasArn", # required
    #               locale_id: "FlowLexBotLocaleId", # required
    #             },
    #             prompt: {
    #               source_configuration: { # required
    #                 # One of:
    #                 resource: {
    #                   prompt_arn: "FlowPromptArn", # required
    #                 },
    #                 inline: {
    #                   template_type: "TEXT" # One of: ["TEXT", "CHAT"], # required
    #                   template_configuration: { # required
    #                     # One of:
    #                     text: {
    #                       text: "TextPrompt", # required
    #                       cache_point: {
    #                         type: "default" # One of: ["default"], # required
    #                       },
    #                       input_variables: [
    #                         {
    #                           name: "PromptInputVariableName"
    #                         }
    #                       ]
    #                     },
    #                     chat: {
    #                       messages: [ # required
    #                         {
    #                           role: "user" # One of: ["user", "assistant"], # required
    #                           content: [{ # required
    #                             # One of:
    #                             text: "String",
    #                             cache_point: {
    #                               type: "default" # One of: ["default"], # required
    #                             }
    #                           }]
    #                         }
    #                       ],
    #                       system: [{
    #                         # One of:
    #                         text: "NonEmptyString",
    #                         cache_point: {
    #                           type: "default" # One of: ["default"], # required
    #                         }
    #                       }],
    #                       input_variables: [
    #                         {
    #                           name: "PromptInputVariableName"
    #                         }
    #                       ],
    #                       tool_configuration: {
    #                         tools: [{ # required
    #                           # One of:
    #                           tool_spec: {
    #                             name: "ToolName", # required
    #                             description: "NonEmptyString",
    #                             input_schema: { # required
    #                               # One of:
    #                               json: ""null""
    #                             }
    #                           },
    #                           cache_point: {
    #                             type: "default" # One of: ["default"], # required
    #                           }
    #                         }],
    #                         tool_choice: {
    #                           # One of:
    #                           auto: {
    #                           },
    #                           any: {
    #                           },
    #                           tool: {
    #                             name: "ToolName", # required
    #                           }
    #                         }
    #                       }
    #                     }
    #                   },
    #                   model_id: "FlowPromptModelIdentifier", # required
    #                   inference_configuration: {
    #                     # One of:
    #                     text: {
    #                       temperature: 1.0,
    #                       top_p: 1.0,
    #                       max_tokens: 1,
    #                       stop_sequences: ["String"]
    #                     }
    #                   },
    #                   additional_model_request_fields: ""null""
    #                 }
    #               },
    #               guardrail_configuration: {
    #                 guardrail_identifier: "GuardrailIdentifier",
    #                 guardrail_version: "GuardrailVersion"
    #               }
    #             },
    #             lambda_function: {
    #               lambda_arn: "FlowLambdaArn", # required
    #             },
    #             storage: {
    #               service_configuration: { # required
    #                 # One of:
    #                 s3: {
    #                   bucket_name: "FlowS3BucketName", # required
    #                 }
    #               }
    #             },
    #             agent: {
    #               agent_alias_arn: "FlowAgentAliasArn", # required
    #             },
    #             retrieval: {
    #               service_configuration: { # required
    #                 # One of:
    #                 s3: {
    #                   bucket_name: "FlowS3BucketName", # required
    #                 }
    #               }
    #             },
    #             iterator: {
    #             },
    #             collector: {
    #             },
    #             inline_code: {
    #               code: "InlineCode", # required
    #               language: "Python_3" # One of: ["Python_3"], # required
    #             },
    #             loop: {
    #               definition: { # required
    #                 # recursive FlowDefinition
    #               }
    #             },
    #             loop_input: {
    #             },
    #             loop_controller: {
    #               continue_condition: { # required
    #                 name: "FlowConditionName", # required
    #                 expression: "FlowConditionExpression"
    #               },
    #               max_iterations: 1
    #             }
    #           },
    #           inputs: [
    #             {
    #               name: "FlowNodeInputName", # required
    #               type: "String" # One of: ["String", "Number", "Boolean", "Object", "Array"], # required
    #               expression: "FlowNodeInputExpression", # required
    #               category: "LoopCondition" # One of: ["LoopCondition", "ReturnValueToLoopStart", "ExitLoop"]
    #             }
    #           ],
    #           outputs: [
    #             {
    #               name: "FlowNodeOutputName", # required
    #               type: "String" # One of: ["String", "Number", "Boolean", "Object", "Array"], # required
    #             }
    #           ]
    #         }
    #       ],
    #       connections: [
    #         {
    #           type: "Data" # One of: ["Data", "Conditional"], # required
    #           name: "FlowConnectionName", # required
    #           source: "FlowNodeName", # required
    #           target: "FlowNodeName", # required
    #           configuration: {
    #             # One of:
    #             data: {
    #               source_output: "FlowNodeOutputName", # required
    #               target_input: "FlowNodeInputName", # required
    #             },
    #             conditional: {
    #               condition: "FlowConditionName", # required
    #             }
    #           }
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetFlowVersionResponse]
    def get_flow_version(params = {}, options = {})
      request = build_request(:get_flow_version, params)
      request.send_request(options)
    end

    # <p>Gets information about a data ingestion job. Data sources are ingested into your knowledge base so that Large Language Models (LLMs) can use your data.</p>
    # @param [Hash, Types::GetIngestionJobRequest] params
    # @option params [String] :knowledge_base_id
    #   <p>The unique identifier of the knowledge base for the data ingestion job you want to get information on.</p>
    # @option params [String] :data_source_id
    #   <p>The unique identifier of the data source for the data ingestion job you want to get information on.</p>
    # @option params [String] :ingestion_job_id
    #   <p>The unique identifier of the data ingestion job you want to get information on.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     knowledge_base_id: "Id", # required
    #     data_source_id: "Id", # required
    #     ingestion_job_id: "Id", # required
    #   }
    #   options = {}
    #   response = client.get_ingestion_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ingestion_job: { # required
    #       knowledge_base_id: "Id", # required
    #       data_source_id: "Id", # required
    #       ingestion_job_id: "Id", # required
    #       description: "Description",
    #       status: "STARTING" # One of: ["STARTING", "IN_PROGRESS", "COMPLETE", "FAILED", "STOPPING", "STOPPED"], # required
    #       statistics: {
    #         number_of_documents_scanned: 1,
    #         number_of_metadata_documents_scanned: 1,
    #         number_of_new_documents_indexed: 1,
    #         number_of_modified_documents_indexed: 1,
    #         number_of_metadata_documents_modified: 1,
    #         number_of_documents_deleted: 1,
    #         number_of_documents_failed: 1
    #       },
    #       failure_reasons: ["FailureReason"],
    #       started_at: Time.now, # required
    #       updated_at: Time.now, # required
    #     }
    #   }
    # @return [Types::GetIngestionJobResponse]
    def get_ingestion_job(params = {}, options = {})
      request = build_request(:get_ingestion_job, params)
      request.send_request(options)
    end

    # <p>Gets information about a knoweldge base.</p>
    # @param [Hash, Types::GetKnowledgeBaseRequest] params
    # @option params [String] :knowledge_base_id
    #   <p>The unique identifier of the knowledge base you want to get information on.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     knowledge_base_id: "Id", # required
    #   }
    #   options = {}
    #   response = client.get_knowledge_base(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     knowledge_base: { # required
    #       knowledge_base_id: "Id", # required
    #       name: "Name", # required
    #       knowledge_base_arn: "KnowledgeBaseArn", # required
    #       description: "Description",
    #       role_arn: "KnowledgeBaseRoleArn", # required
    #       knowledge_base_configuration: { # required
    #         type: "VECTOR" # One of: ["VECTOR", "KENDRA", "SQL"], # required
    #         vector_knowledge_base_configuration: {
    #           embedding_model_arn: "BedrockEmbeddingModelArn", # required
    #           embedding_model_configuration: {
    #             bedrock_embedding_model_configuration: {
    #               dimensions: 1,
    #               embedding_data_type: "FLOAT32" # One of: ["FLOAT32", "BINARY"]
    #             }
    #           },
    #           supplemental_data_storage_configuration: {
    #             storage_locations: [ # required
    #               {
    #                 type: "S3" # One of: ["S3"], # required
    #                 s3_location: {
    #                   uri: "S3BucketUri", # required
    #                 }
    #               }
    #             ]
    #           }
    #         },
    #         kendra_knowledge_base_configuration: {
    #           kendra_index_arn: "KendraIndexArn", # required
    #         },
    #         sql_knowledge_base_configuration: {
    #           type: "REDSHIFT" # One of: ["REDSHIFT"], # required
    #           redshift_configuration: {
    #             storage_configurations: [ # required
    #               {
    #                 type: "REDSHIFT" # One of: ["REDSHIFT", "AWS_DATA_CATALOG"], # required
    #                 aws_data_catalog_configuration: {
    #                   table_names: ["AwsDataCatalogTableName"], # required
    #                 },
    #                 redshift_configuration: {
    #                   database_name: "RedshiftDatabase", # required
    #                 }
    #               }
    #             ],
    #             query_engine_configuration: { # required
    #               type: "SERVERLESS" # One of: ["SERVERLESS", "PROVISIONED"], # required
    #               serverless_configuration: {
    #                 workgroup_arn: "WorkgroupArn", # required
    #                 auth_configuration: { # required
    #                   type: "IAM" # One of: ["IAM", "USERNAME_PASSWORD"], # required
    #                   username_password_secret_arn: "SecretArn"
    #                 }
    #               },
    #               provisioned_configuration: {
    #                 cluster_identifier: "RedshiftClusterIdentifier", # required
    #                 auth_configuration: { # required
    #                   type: "IAM" # One of: ["IAM", "USERNAME_PASSWORD", "USERNAME"], # required
    #                   database_user: "String",
    #                   username_password_secret_arn: "SecretArn"
    #                 }
    #               }
    #             },
    #             query_generation_configuration: {
    #               execution_timeout_seconds: 1,
    #               generation_context: {
    #                 tables: [
    #                   {
    #                     name: "QueryGenerationTableName", # required
    #                     description: "DescriptionString",
    #                     inclusion: "INCLUDE" # One of: ["INCLUDE", "EXCLUDE"],
    #                     columns: [
    #                       {
    #                         name: "QueryGenerationColumnName",
    #                         description: "DescriptionString",
    #                         inclusion: "INCLUDE" # One of: ["INCLUDE", "EXCLUDE"]
    #                       }
    #                     ]
    #                   }
    #                 ],
    #                 curated_queries: [
    #                   {
    #                     natural_language: "NaturalLanguageString", # required
    #                     sql: "SqlString", # required
    #                   }
    #                 ]
    #               }
    #             }
    #           }
    #         }
    #       },
    #       storage_configuration: {
    #         type: "OPENSEARCH_SERVERLESS" # One of: ["OPENSEARCH_SERVERLESS", "PINECONE", "REDIS_ENTERPRISE_CLOUD", "RDS", "MONGO_DB_ATLAS", "NEPTUNE_ANALYTICS", "OPENSEARCH_MANAGED_CLUSTER", "S3_VECTORS"], # required
    #         opensearch_serverless_configuration: {
    #           collection_arn: "OpenSearchServerlessCollectionArn", # required
    #           vector_index_name: "OpenSearchServerlessIndexName", # required
    #           field_mapping: { # required
    #             vector_field: "FieldName", # required
    #             text_field: "FieldName", # required
    #             metadata_field: "FieldName", # required
    #           }
    #         },
    #         opensearch_managed_cluster_configuration: {
    #           domain_endpoint: "OpenSearchManagedClusterDomainEndpoint", # required
    #           domain_arn: "OpenSearchManagedClusterDomainArn", # required
    #           vector_index_name: "OpenSearchManagedClusterIndexName", # required
    #           field_mapping: { # required
    #             vector_field: "FieldName", # required
    #             text_field: "FieldName", # required
    #             metadata_field: "FieldName", # required
    #           }
    #         },
    #         pinecone_configuration: {
    #           connection_string: "PineconeConnectionString", # required
    #           credentials_secret_arn: "SecretArn", # required
    #           namespace: "PineconeNamespace",
    #           field_mapping: { # required
    #             text_field: "FieldName", # required
    #             metadata_field: "FieldName", # required
    #           }
    #         },
    #         redis_enterprise_cloud_configuration: {
    #           endpoint: "RedisEnterpriseCloudEndpoint", # required
    #           vector_index_name: "RedisEnterpriseCloudIndexName", # required
    #           credentials_secret_arn: "SecretArn", # required
    #           field_mapping: { # required
    #             vector_field: "FieldName", # required
    #             text_field: "FieldName", # required
    #             metadata_field: "FieldName", # required
    #           }
    #         },
    #         rds_configuration: {
    #           resource_arn: "RdsArn", # required
    #           credentials_secret_arn: "SecretArn", # required
    #           database_name: "RdsDatabaseName", # required
    #           table_name: "RdsTableName", # required
    #           field_mapping: { # required
    #             primary_key_field: "ColumnName", # required
    #             vector_field: "ColumnName", # required
    #             text_field: "ColumnName", # required
    #             metadata_field: "ColumnName", # required
    #             custom_metadata_field: "ColumnName"
    #           }
    #         },
    #         mongo_db_atlas_configuration: {
    #           endpoint: "MongoDbAtlasEndpoint", # required
    #           database_name: "MongoDbAtlasDatabaseName", # required
    #           collection_name: "MongoDbAtlasCollectionName", # required
    #           vector_index_name: "MongoDbAtlasIndexName", # required
    #           credentials_secret_arn: "SecretArn", # required
    #           field_mapping: { # required
    #             vector_field: "FieldName", # required
    #             text_field: "FieldName", # required
    #             metadata_field: "FieldName", # required
    #           },
    #           endpoint_service_name: "MongoDbAtlasEndpointServiceName",
    #           text_index_name: "MongoDbAtlasIndexName"
    #         },
    #         neptune_analytics_configuration: {
    #           graph_arn: "GraphArn", # required
    #           field_mapping: { # required
    #             text_field: "FieldName", # required
    #             metadata_field: "FieldName", # required
    #           }
    #         },
    #         s3_vectors_configuration: {
    #           vector_bucket_arn: "VectorBucketArn",
    #           index_arn: "IndexArn",
    #           index_name: "IndexName"
    #         }
    #       },
    #       status: "CREATING" # One of: ["CREATING", "ACTIVE", "DELETING", "UPDATING", "FAILED", "DELETE_UNSUCCESSFUL"], # required
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       failure_reasons: ["FailureReason"]
    #     }
    #   }
    # @return [Types::GetKnowledgeBaseResponse]
    def get_knowledge_base(params = {}, options = {})
      request = build_request(:get_knowledge_base, params)
      request.send_request(options)
    end

    # <p>Retrieves specific documents from a data source that is connected to a knowledge base. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/kb-direct-ingestion.html">Ingest changes directly into a knowledge base</a> in the Amazon Bedrock User Guide.</p>
    # @param [Hash, Types::GetKnowledgeBaseDocumentsRequest] params
    # @option params [String] :knowledge_base_id
    #   <p>The unique identifier of the knowledge base that is connected to the data source.</p>
    # @option params [String] :data_source_id
    #   <p>The unique identifier of the data source that contains the documents.</p>
    # @option params [Array<Types::DocumentIdentifier>] :document_identifiers
    #   <p>A list of objects, each of which contains information to identify a document for which to retrieve information.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     knowledge_base_id: "Id", # required
    #     data_source_id: "Id", # required
    #     document_identifiers: [ # required
    #       {
    #         data_source_type: "CUSTOM" # One of: ["CUSTOM", "S3"], # required
    #         s3: {
    #           uri: "S3BucketUri", # required
    #         },
    #         custom: {
    #           id: "String", # required
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.get_knowledge_base_documents(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     document_details: [
    #       {
    #         knowledge_base_id: "Id", # required
    #         data_source_id: "Id", # required
    #         status: "INDEXED" # One of: ["INDEXED", "PARTIALLY_INDEXED", "PENDING", "FAILED", "METADATA_PARTIALLY_INDEXED", "METADATA_UPDATE_FAILED", "IGNORED", "NOT_FOUND", "STARTING", "IN_PROGRESS", "DELETING", "DELETE_IN_PROGRESS"], # required
    #         identifier: { # required
    #           data_source_type: "CUSTOM" # One of: ["CUSTOM", "S3"], # required
    #           s3: {
    #             uri: "S3BucketUri", # required
    #           },
    #           custom: {
    #             id: "String", # required
    #           }
    #         },
    #         status_reason: "String",
    #         updated_at: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::GetKnowledgeBaseDocumentsResponse]
    def get_knowledge_base_documents(params = {}, options = {})
      request = build_request(:get_knowledge_base_documents, params)
      request.send_request(options)
    end

    # <p>Retrieves information about the working draft (<code>DRAFT</code> version) of a prompt or a version of it, depending on whether you include the <code>promptVersion</code> field or not. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management-manage.html#prompt-management-view.html">View information about prompts using Prompt management</a> and <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management-deploy.html#prompt-management-versions-view.html">View information about a version of your prompt</a> in the Amazon Bedrock User Guide.</p>
    # @param [Hash, Types::GetPromptRequest] params
    # @option params [String] :prompt_identifier
    #   <p>The unique identifier of the prompt.</p>
    # @option params [String] :prompt_version
    #   <p>The version of the prompt about which you want to retrieve information. Omit this field to return information about the working draft of the prompt.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     prompt_identifier: "PromptIdentifier", # required
    #     prompt_version: "Version"
    #   }
    #   options = {}
    #   response = client.get_prompt(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "PromptName", # required
    #     description: "PromptDescription",
    #     customer_encryption_key_arn: "KmsKeyArn",
    #     default_variant: "PromptVariantName",
    #     variants: [
    #       {
    #         name: "PromptVariantName", # required
    #         template_type: "TEXT" # One of: ["TEXT", "CHAT"], # required
    #         template_configuration: { # required
    #           # One of:
    #           text: {
    #             text: "TextPrompt", # required
    #             cache_point: {
    #               type: "default" # One of: ["default"], # required
    #             },
    #             input_variables: [
    #               {
    #                 name: "PromptInputVariableName"
    #               }
    #             ]
    #           },
    #           chat: {
    #             messages: [ # required
    #               {
    #                 role: "user" # One of: ["user", "assistant"], # required
    #                 content: [{ # required
    #                   # One of:
    #                   text: "String",
    #                   cache_point: {
    #                     type: "default" # One of: ["default"], # required
    #                   }
    #                 }]
    #               }
    #             ],
    #             system: [{
    #               # One of:
    #               text: "NonEmptyString",
    #               cache_point: {
    #                 type: "default" # One of: ["default"], # required
    #               }
    #             }],
    #             input_variables: [
    #               {
    #                 name: "PromptInputVariableName"
    #               }
    #             ],
    #             tool_configuration: {
    #               tools: [{ # required
    #                 # One of:
    #                 tool_spec: {
    #                   name: "ToolName", # required
    #                   description: "NonEmptyString",
    #                   input_schema: { # required
    #                     # One of:
    #                     json: ""null""
    #                   }
    #                 },
    #                 cache_point: {
    #                   type: "default" # One of: ["default"], # required
    #                 }
    #               }],
    #               tool_choice: {
    #                 # One of:
    #                 auto: {
    #                 },
    #                 any: {
    #                 },
    #                 tool: {
    #                   name: "ToolName", # required
    #                 }
    #               }
    #             }
    #           }
    #         },
    #         model_id: "PromptModelIdentifier",
    #         inference_configuration: {
    #           # One of:
    #           text: {
    #             temperature: 1.0,
    #             top_p: 1.0,
    #             max_tokens: 1,
    #             stop_sequences: ["String"]
    #           }
    #         },
    #         metadata: [
    #           {
    #             key: "PromptMetadataKey", # required
    #             value: "PromptMetadataValue", # required
    #           }
    #         ],
    #         additional_model_request_fields: ""null"",
    #         gen_ai_resource: {
    #           # One of:
    #           agent: {
    #             agent_identifier: "AgentAliasArn", # required
    #           }
    #         }
    #       }
    #     ],
    #     id: "PromptId", # required
    #     arn: "PromptArn", # required
    #     version: "Version", # required
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #   }
    # @return [Types::GetPromptResponse]
    def get_prompt(params = {}, options = {})
      request = build_request(:get_prompt, params)
      request.send_request(options)
    end

    # <p>Ingests documents directly into the knowledge base that is connected to the data source. The <code>dataSourceType</code> specified in the content for each document must match the type of the data source that you specify in the header. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/kb-direct-ingestion.html">Ingest changes directly into a knowledge base</a> in the Amazon Bedrock User Guide.</p>
    # @param [Hash, Types::IngestKnowledgeBaseDocumentsRequest] params
    # @option params [String] :knowledge_base_id
    #   <p>The unique identifier of the knowledge base to ingest the documents into.</p>
    # @option params [String] :data_source_id
    #   <p>The unique identifier of the data source connected to the knowledge base that you're adding documents to.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, Amazon Bedrock ignores the request, but does not return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    # @option params [Array<Types::KnowledgeBaseDocument>] :documents
    #   <p>A list of objects, each of which contains information about the documents to add.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     knowledge_base_id: "Id", # required
    #     data_source_id: "Id", # required
    #     client_token: "ClientToken",
    #     documents: [ # required
    #       {
    #         metadata: {
    #           type: "IN_LINE_ATTRIBUTE" # One of: ["IN_LINE_ATTRIBUTE", "S3_LOCATION"], # required
    #           inline_attributes: [
    #             {
    #               key: "Key", # required
    #               value: { # required
    #                 type: "BOOLEAN" # One of: ["BOOLEAN", "NUMBER", "STRING", "STRING_LIST"], # required
    #                 number_value: 1.0,
    #                 boolean_value: false,
    #                 string_value: "StringValue",
    #                 string_list_value: ["StringValue"]
    #               }
    #             }
    #           ],
    #           s3_location: {
    #             uri: "S3ObjectUri", # required
    #             bucket_owner_account_id: "BucketOwnerAccountId"
    #           }
    #         },
    #         content: { # required
    #           data_source_type: "CUSTOM" # One of: ["CUSTOM", "S3"], # required
    #           custom: {
    #             custom_document_identifier: { # required
    #               id: "String", # required
    #             },
    #             source_type: "IN_LINE" # One of: ["IN_LINE", "S3_LOCATION"], # required
    #             s3_location: {
    #               uri: "S3ObjectUri", # required
    #               bucket_owner_account_id: "BucketOwnerAccountId"
    #             },
    #             inline_content: {
    #               type: "BYTE" # One of: ["BYTE", "TEXT"], # required
    #               byte_content: {
    #                 mime_type: "String", # required
    #                 data: "data", # required
    #               },
    #               text_content: {
    #                 data: "Data", # required
    #               }
    #             }
    #           },
    #           s3: {
    #             s3_location: { # required
    #               uri: "S3BucketUri", # required
    #             }
    #           }
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.ingest_knowledge_base_documents(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     document_details: [
    #       {
    #         knowledge_base_id: "Id", # required
    #         data_source_id: "Id", # required
    #         status: "INDEXED" # One of: ["INDEXED", "PARTIALLY_INDEXED", "PENDING", "FAILED", "METADATA_PARTIALLY_INDEXED", "METADATA_UPDATE_FAILED", "IGNORED", "NOT_FOUND", "STARTING", "IN_PROGRESS", "DELETING", "DELETE_IN_PROGRESS"], # required
    #         identifier: { # required
    #           data_source_type: "CUSTOM" # One of: ["CUSTOM", "S3"], # required
    #           s3: {
    #             uri: "S3BucketUri", # required
    #           },
    #           custom: {
    #             id: "String", # required
    #           }
    #         },
    #         status_reason: "String",
    #         updated_at: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::IngestKnowledgeBaseDocumentsResponse]
    def ingest_knowledge_base_documents(params = {}, options = {})
      request = build_request(:ingest_knowledge_base_documents, params)
      request.send_request(options)
    end

    # <p>Lists the action groups for an agent and information about each one.</p>
    # @param [Hash, Types::ListAgentActionGroupsRequest] params
    # @option params [String] :agent_id
    #   <p>The unique identifier of the agent.</p>
    # @option params [String] :agent_version
    #   <p>The version of the agent.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response. If the total number of results is greater than this value, use the token returned in the response in the <code>nextToken</code> field when making another request to return the next batch of results.</p>
    # @option params [String] :next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, enter the token returned in the <code>nextToken</code> field in the response in this field to return the next batch of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_id: "Id", # required
    #     agent_version: "Version", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_agent_action_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     action_group_summaries: [ # required
    #       {
    #         action_group_id: "Id", # required
    #         action_group_name: "Name", # required
    #         action_group_state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #         description: "Description",
    #         updated_at: Time.now, # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAgentActionGroupsResponse]
    def list_agent_action_groups(params = {}, options = {})
      request = build_request(:list_agent_action_groups, params)
      request.send_request(options)
    end

    # <p>Lists the aliases of an agent and information about each one.</p>
    # @param [Hash, Types::ListAgentAliasesRequest] params
    # @option params [String] :agent_id
    #   <p>The unique identifier of the agent.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response. If the total number of results is greater than this value, use the token returned in the response in the <code>nextToken</code> field when making another request to return the next batch of results.</p>
    # @option params [String] :next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, enter the token returned in the <code>nextToken</code> field in the response in this field to return the next batch of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_id: "Id", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_agent_aliases(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     agent_alias_summaries: [ # required
    #       {
    #         agent_alias_id: "AgentAliasId", # required
    #         agent_alias_name: "Name", # required
    #         description: "Description",
    #         routing_configuration: [
    #           {
    #             agent_version: "Version",
    #             provisioned_throughput: "ProvisionedModelIdentifier"
    #           }
    #         ],
    #         agent_alias_status: "CREATING" # One of: ["CREATING", "PREPARED", "FAILED", "UPDATING", "DELETING", "DISSOCIATED"], # required
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #         alias_invocation_state: "ACCEPT_INVOCATIONS" # One of: ["ACCEPT_INVOCATIONS", "REJECT_INVOCATIONS"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAgentAliasesResponse]
    def list_agent_aliases(params = {}, options = {})
      request = build_request(:list_agent_aliases, params)
      request.send_request(options)
    end

    # <p>Retrieve a list of an agent's collaborators.</p>
    # @param [Hash, Types::ListAgentCollaboratorsRequest] params
    # @option params [String] :agent_id
    #   <p>The agent's ID.</p>
    # @option params [String] :agent_version
    #   <p>The agent's version.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of agent collaborators to return in one page of results.</p>
    # @option params [String] :next_token
    #   <p>Specify the pagination token from a previous request to retrieve the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_id: "Id", # required
    #     agent_version: "Version", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_agent_collaborators(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     agent_collaborator_summaries: [ # required
    #       {
    #         agent_id: "Id", # required
    #         agent_version: "Version", # required
    #         collaborator_id: "Id", # required
    #         agent_descriptor: { # required
    #           alias_arn: "AgentAliasArn"
    #         },
    #         collaboration_instruction: "CollaborationInstruction", # required
    #         relay_conversation_history: "TO_COLLABORATOR" # One of: ["TO_COLLABORATOR", "DISABLED"], # required
    #         collaborator_name: "Name", # required
    #         created_at: Time.now, # required
    #         last_updated_at: Time.now, # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAgentCollaboratorsResponse]
    def list_agent_collaborators(params = {}, options = {})
      request = build_request(:list_agent_collaborators, params)
      request.send_request(options)
    end

    # <p>Lists knowledge bases associated with an agent and information about each one.</p>
    # @param [Hash, Types::ListAgentKnowledgeBasesRequest] params
    # @option params [String] :agent_id
    #   <p>The unique identifier of the agent for which to return information about knowledge bases associated with it.</p>
    # @option params [String] :agent_version
    #   <p>The version of the agent for which to return information about knowledge bases associated with it.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response. If the total number of results is greater than this value, use the token returned in the response in the <code>nextToken</code> field when making another request to return the next batch of results.</p>
    # @option params [String] :next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, enter the token returned in the <code>nextToken</code> field in the response in this field to return the next batch of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_id: "Id", # required
    #     agent_version: "Version", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_agent_knowledge_bases(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     agent_knowledge_base_summaries: [ # required
    #       {
    #         knowledge_base_id: "Id", # required
    #         description: "Description",
    #         knowledge_base_state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #         updated_at: Time.now, # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAgentKnowledgeBasesResponse]
    def list_agent_knowledge_bases(params = {}, options = {})
      request = build_request(:list_agent_knowledge_bases, params)
      request.send_request(options)
    end

    # <p>Lists the versions of an agent and information about each version.</p>
    # @param [Hash, Types::ListAgentVersionsRequest] params
    # @option params [String] :agent_id
    #   <p>The unique identifier of the agent.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response. If the total number of results is greater than this value, use the token returned in the response in the <code>nextToken</code> field when making another request to return the next batch of results.</p>
    # @option params [String] :next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, enter the token returned in the <code>nextToken</code> field in the response in this field to return the next batch of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_id: "Id", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_agent_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     agent_version_summaries: [ # required
    #       {
    #         agent_name: "Name", # required
    #         agent_status: "CREATING" # One of: ["CREATING", "PREPARING", "PREPARED", "NOT_PREPARED", "DELETING", "FAILED", "VERSIONING", "UPDATING"], # required
    #         agent_version: "Version", # required
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #         description: "Description",
    #         guardrail_configuration: {
    #           guardrail_identifier: "GuardrailIdentifier",
    #           guardrail_version: "GuardrailVersion"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAgentVersionsResponse]
    def list_agent_versions(params = {}, options = {})
      request = build_request(:list_agent_versions, params)
      request.send_request(options)
    end

    # <p>Lists the agents belonging to an account and information about each agent.</p>
    # @param [Hash, Types::ListAgentsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response. If the total number of results is greater than this value, use the token returned in the response in the <code>nextToken</code> field when making another request to return the next batch of results.</p>
    # @option params [String] :next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, enter the token returned in the <code>nextToken</code> field in the response in this field to return the next batch of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_agents(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     agent_summaries: [ # required
    #       {
    #         agent_id: "Id", # required
    #         agent_name: "Name", # required
    #         agent_status: "CREATING" # One of: ["CREATING", "PREPARING", "PREPARED", "NOT_PREPARED", "DELETING", "FAILED", "VERSIONING", "UPDATING"], # required
    #         description: "Description",
    #         updated_at: Time.now, # required
    #         latest_agent_version: "Version",
    #         guardrail_configuration: {
    #           guardrail_identifier: "GuardrailIdentifier",
    #           guardrail_version: "GuardrailVersion"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAgentsResponse]
    def list_agents(params = {}, options = {})
      request = build_request(:list_agents, params)
      request.send_request(options)
    end

    # <p>Lists the data sources in a knowledge base and information about each one.</p>
    # @param [Hash, Types::ListDataSourcesRequest] params
    # @option params [String] :knowledge_base_id
    #   <p>The unique identifier of the knowledge base for which to return a list of information.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response. If the total number of results is greater than this value, use the token returned in the response in the <code>nextToken</code> field when making another request to return the next batch of results.</p>
    # @option params [String] :next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, enter the token returned in the <code>nextToken</code> field in the response in this field to return the next batch of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     knowledge_base_id: "Id", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_data_sources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     data_source_summaries: [ # required
    #       {
    #         knowledge_base_id: "Id", # required
    #         data_source_id: "Id", # required
    #         name: "Name", # required
    #         status: "AVAILABLE" # One of: ["AVAILABLE", "DELETING", "DELETE_UNSUCCESSFUL"], # required
    #         description: "Description",
    #         updated_at: Time.now, # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListDataSourcesResponse]
    def list_data_sources(params = {}, options = {})
      request = build_request(:list_data_sources, params)
      request.send_request(options)
    end

    # <p>Returns a list of aliases for a flow.</p>
    # @param [Hash, Types::ListFlowAliasesRequest] params
    # @option params [String] :flow_identifier
    #   <p>The unique identifier of the flow for which aliases are being returned.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response. If the total number of results is greater than this value, use the token returned in the response in the <code>nextToken</code> field when making another request to return the next batch of results.</p>
    # @option params [String] :next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, enter the token returned in the <code>nextToken</code> field in the response in this field to return the next batch of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     flow_identifier: "FlowIdentifier", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_flow_aliases(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     flow_alias_summaries: [ # required
    #       {
    #         name: "Name", # required
    #         description: "Description",
    #         routing_configuration: [ # required
    #           {
    #             flow_version: "Version"
    #           }
    #         ],
    #         concurrency_configuration: {
    #           type: "Automatic" # One of: ["Automatic", "Manual"], # required
    #           max_concurrency: 1
    #         },
    #         flow_id: "FlowId", # required
    #         id: "FlowAliasId", # required
    #         arn: "FlowAliasArn", # required
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListFlowAliasesResponse]
    def list_flow_aliases(params = {}, options = {})
      request = build_request(:list_flow_aliases, params)
      request.send_request(options)
    end

    # <p>Returns a list of information about each flow. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/flows-deploy.html">Deploy a flow in Amazon Bedrock</a> in the Amazon Bedrock User Guide.</p>
    # @param [Hash, Types::ListFlowVersionsRequest] params
    # @option params [String] :flow_identifier
    #   <p>The unique identifier of the flow.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response. If the total number of results is greater than this value, use the token returned in the response in the <code>nextToken</code> field when making another request to return the next batch of results.</p>
    # @option params [String] :next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, enter the token returned in the <code>nextToken</code> field in the response in this field to return the next batch of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     flow_identifier: "FlowIdentifier", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_flow_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     flow_version_summaries: [ # required
    #       {
    #         id: "FlowId", # required
    #         arn: "FlowArn", # required
    #         status: "Failed" # One of: ["Failed", "Prepared", "Preparing", "NotPrepared"], # required
    #         created_at: Time.now, # required
    #         version: "NumericalVersion", # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListFlowVersionsResponse]
    def list_flow_versions(params = {}, options = {})
      request = build_request(:list_flow_versions, params)
      request.send_request(options)
    end

    # <p>Returns a list of flows and information about each flow. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/flows-manage.html">Manage a flow in Amazon Bedrock</a> in the Amazon Bedrock User Guide.</p>
    # @param [Hash, Types::ListFlowsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response. If the total number of results is greater than this value, use the token returned in the response in the <code>nextToken</code> field when making another request to return the next batch of results.</p>
    # @option params [String] :next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, enter the token returned in the <code>nextToken</code> field in the response in this field to return the next batch of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_flows(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     flow_summaries: [ # required
    #       {
    #         name: "FlowName", # required
    #         description: "FlowDescription",
    #         id: "FlowId", # required
    #         arn: "FlowArn", # required
    #         status: "Failed" # One of: ["Failed", "Prepared", "Preparing", "NotPrepared"], # required
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #         version: "DraftVersion", # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListFlowsResponse]
    def list_flows(params = {}, options = {})
      request = build_request(:list_flows, params)
      request.send_request(options)
    end

    # <p>Lists the data ingestion jobs for a data source. The list also includes information about each job.</p>
    # @param [Hash, Types::ListIngestionJobsRequest] params
    # @option params [String] :knowledge_base_id
    #   <p>The unique identifier of the knowledge base for the list of data ingestion jobs.</p>
    # @option params [String] :data_source_id
    #   <p>The unique identifier of the data source for the list of data ingestion jobs.</p>
    # @option params [Array<Types::IngestionJobFilter>] :filters
    #   <p>Contains information about the filters for filtering the data.</p>
    # @option params [Types::IngestionJobSortBy] :sort_by
    #   <p>Contains details about how to sort the data.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response. If the total number of results is greater than this value, use the token returned in the response in the <code>nextToken</code> field when making another request to return the next batch of results.</p>
    # @option params [String] :next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, enter the token returned in the <code>nextToken</code> field in the response in this field to return the next batch of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     knowledge_base_id: "Id", # required
    #     data_source_id: "Id", # required
    #     filters: [
    #       {
    #         attribute: "STATUS" # One of: ["STATUS"], # required
    #         operator: "EQ" # One of: ["EQ"], # required
    #         values: ["IngestionJobFilterValue"], # required
    #       }
    #     ],
    #     sort_by: {
    #       attribute: "STATUS" # One of: ["STATUS", "STARTED_AT"], # required
    #       order: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"], # required
    #     },
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_ingestion_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ingestion_job_summaries: [ # required
    #       {
    #         knowledge_base_id: "Id", # required
    #         data_source_id: "Id", # required
    #         ingestion_job_id: "Id", # required
    #         description: "Description",
    #         status: "STARTING" # One of: ["STARTING", "IN_PROGRESS", "COMPLETE", "FAILED", "STOPPING", "STOPPED"], # required
    #         started_at: Time.now, # required
    #         updated_at: Time.now, # required
    #         statistics: {
    #           number_of_documents_scanned: 1,
    #           number_of_metadata_documents_scanned: 1,
    #           number_of_new_documents_indexed: 1,
    #           number_of_modified_documents_indexed: 1,
    #           number_of_metadata_documents_modified: 1,
    #           number_of_documents_deleted: 1,
    #           number_of_documents_failed: 1
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListIngestionJobsResponse]
    def list_ingestion_jobs(params = {}, options = {})
      request = build_request(:list_ingestion_jobs, params)
      request.send_request(options)
    end

    # <p>Retrieves all the documents contained in a data source that is connected to a knowledge base. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/kb-direct-ingestion.html">Ingest changes directly into a knowledge base</a> in the Amazon Bedrock User Guide.</p>
    # @param [Hash, Types::ListKnowledgeBaseDocumentsRequest] params
    # @option params [String] :knowledge_base_id
    #   <p>The unique identifier of the knowledge base that is connected to the data source.</p>
    # @option params [String] :data_source_id
    #   <p>The unique identifier of the data source that contains the documents.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response. If the total number of results is greater than this value, use the token returned in the response in the <code>nextToken</code> field when making another request to return the next batch of results.</p>
    # @option params [String] :next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, enter the token returned in the <code>nextToken</code> field in the response in this field to return the next batch of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     knowledge_base_id: "Id", # required
    #     data_source_id: "Id", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_knowledge_base_documents(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     document_details: [ # required
    #       {
    #         knowledge_base_id: "Id", # required
    #         data_source_id: "Id", # required
    #         status: "INDEXED" # One of: ["INDEXED", "PARTIALLY_INDEXED", "PENDING", "FAILED", "METADATA_PARTIALLY_INDEXED", "METADATA_UPDATE_FAILED", "IGNORED", "NOT_FOUND", "STARTING", "IN_PROGRESS", "DELETING", "DELETE_IN_PROGRESS"], # required
    #         identifier: { # required
    #           data_source_type: "CUSTOM" # One of: ["CUSTOM", "S3"], # required
    #           s3: {
    #             uri: "S3BucketUri", # required
    #           },
    #           custom: {
    #             id: "String", # required
    #           }
    #         },
    #         status_reason: "String",
    #         updated_at: Time.now
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListKnowledgeBaseDocumentsResponse]
    def list_knowledge_base_documents(params = {}, options = {})
      request = build_request(:list_knowledge_base_documents, params)
      request.send_request(options)
    end

    # <p>Lists the knowledge bases in an account. The list also includesinformation about each knowledge base.</p>
    # @param [Hash, Types::ListKnowledgeBasesRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response. If the total number of results is greater than this value, use the token returned in the response in the <code>nextToken</code> field when making another request to return the next batch of results.</p>
    # @option params [String] :next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, enter the token returned in the <code>nextToken</code> field in the response in this field to return the next batch of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_knowledge_bases(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     knowledge_base_summaries: [ # required
    #       {
    #         knowledge_base_id: "Id", # required
    #         name: "Name", # required
    #         description: "Description",
    #         status: "CREATING" # One of: ["CREATING", "ACTIVE", "DELETING", "UPDATING", "FAILED", "DELETE_UNSUCCESSFUL"], # required
    #         updated_at: Time.now, # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListKnowledgeBasesResponse]
    def list_knowledge_bases(params = {}, options = {})
      request = build_request(:list_knowledge_bases, params)
      request.send_request(options)
    end

    # <p>Returns either information about the working draft (<code>DRAFT</code> version) of each prompt in an account, or information about of all versions of a prompt, depending on whether you include the <code>promptIdentifier</code> field or not. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management-manage.html#prompt-management-view.html">View information about prompts using Prompt management</a> in the Amazon Bedrock User Guide.</p>
    # @param [Hash, Types::ListPromptsRequest] params
    # @option params [String] :prompt_identifier
    #   <p>The unique identifier of the prompt for whose versions you want to return information. Omit this field to list information about all prompts in an account.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response. If the total number of results is greater than this value, use the token returned in the response in the <code>nextToken</code> field when making another request to return the next batch of results.</p>
    # @option params [String] :next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, enter the token returned in the <code>nextToken</code> field in the response in this field to return the next batch of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     prompt_identifier: "PromptIdentifier",
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_prompts(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     prompt_summaries: [ # required
    #       {
    #         name: "PromptName", # required
    #         description: "PromptDescription",
    #         id: "PromptId", # required
    #         arn: "PromptArn", # required
    #         version: "Version", # required
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListPromptsResponse]
    def list_prompts(params = {}, options = {})
      request = build_request(:list_prompts, params)
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

    # <p>Creates a <code>DRAFT</code> version of the agent that can be used for internal testing.</p>
    # @param [Hash, Types::PrepareAgentRequest] params
    # @option params [String] :agent_id
    #   <p>The unique identifier of the agent for which to create a <code>DRAFT</code> version.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_id: "Id", # required
    #   }
    #   options = {}
    #   response = client.prepare_agent(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     agent_id: "Id", # required
    #     agent_status: "CREATING" # One of: ["CREATING", "PREPARING", "PREPARED", "NOT_PREPARED", "DELETING", "FAILED", "VERSIONING", "UPDATING"], # required
    #     agent_version: "Version", # required
    #     prepared_at: Time.now, # required
    #   }
    # @return [Types::PrepareAgentResponse]
    def prepare_agent(params = {}, options = {})
      request = build_request(:prepare_agent, params)
      request.send_request(options)
    end

    # <p>Prepares the <code>DRAFT</code> version of a flow so that it can be invoked. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/flows-test.html">Test a flow in Amazon Bedrock</a> in the Amazon Bedrock User Guide.</p>
    # @param [Hash, Types::PrepareFlowRequest] params
    # @option params [String] :flow_identifier
    #   <p>The unique identifier of the flow.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     flow_identifier: "FlowIdentifier", # required
    #   }
    #   options = {}
    #   response = client.prepare_flow(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "FlowId", # required
    #     status: "Failed" # One of: ["Failed", "Prepared", "Preparing", "NotPrepared"], # required
    #   }
    # @return [Types::PrepareFlowResponse]
    def prepare_flow(params = {}, options = {})
      request = build_request(:prepare_flow, params)
      request.send_request(options)
    end

    # <p>Begins a data ingestion job. Data sources are ingested into your knowledge base so that Large Language Models (LLMs) can use your data.</p>
    # @param [Hash, Types::StartIngestionJobRequest] params
    # @option params [String] :knowledge_base_id
    #   <p>The unique identifier of the knowledge base for the data ingestion job.</p>
    # @option params [String] :data_source_id
    #   <p>The unique identifier of the data source you want to ingest into your knowledge base.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, Amazon Bedrock ignores the request, but does not return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    # @option params [String] :description
    #   <p>A description of the data ingestion job.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     knowledge_base_id: "Id", # required
    #     data_source_id: "Id", # required
    #     client_token: "ClientToken",
    #     description: "Description"
    #   }
    #   options = {}
    #   response = client.start_ingestion_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ingestion_job: { # required
    #       knowledge_base_id: "Id", # required
    #       data_source_id: "Id", # required
    #       ingestion_job_id: "Id", # required
    #       description: "Description",
    #       status: "STARTING" # One of: ["STARTING", "IN_PROGRESS", "COMPLETE", "FAILED", "STOPPING", "STOPPED"], # required
    #       statistics: {
    #         number_of_documents_scanned: 1,
    #         number_of_metadata_documents_scanned: 1,
    #         number_of_new_documents_indexed: 1,
    #         number_of_modified_documents_indexed: 1,
    #         number_of_metadata_documents_modified: 1,
    #         number_of_documents_deleted: 1,
    #         number_of_documents_failed: 1
    #       },
    #       failure_reasons: ["FailureReason"],
    #       started_at: Time.now, # required
    #       updated_at: Time.now, # required
    #     }
    #   }
    # @return [Types::StartIngestionJobResponse]
    def start_ingestion_job(params = {}, options = {})
      request = build_request(:start_ingestion_job, params)
      request.send_request(options)
    end

    # <p>Stops a currently running data ingestion job. You can send a <code>StartIngestionJob</code> request again to ingest the rest of your data when you are ready.</p>
    # @param [Hash, Types::StopIngestionJobRequest] params
    # @option params [String] :knowledge_base_id
    #   <p>The unique identifier of the knowledge base for the data ingestion job you want to stop.</p>
    # @option params [String] :data_source_id
    #   <p>The unique identifier of the data source for the data ingestion job you want to stop.</p>
    # @option params [String] :ingestion_job_id
    #   <p>The unique identifier of the data ingestion job you want to stop.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     knowledge_base_id: "Id", # required
    #     data_source_id: "Id", # required
    #     ingestion_job_id: "Id", # required
    #   }
    #   options = {}
    #   response = client.stop_ingestion_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ingestion_job: { # required
    #       knowledge_base_id: "Id", # required
    #       data_source_id: "Id", # required
    #       ingestion_job_id: "Id", # required
    #       description: "Description",
    #       status: "STARTING" # One of: ["STARTING", "IN_PROGRESS", "COMPLETE", "FAILED", "STOPPING", "STOPPED"], # required
    #       statistics: {
    #         number_of_documents_scanned: 1,
    #         number_of_metadata_documents_scanned: 1,
    #         number_of_new_documents_indexed: 1,
    #         number_of_modified_documents_indexed: 1,
    #         number_of_metadata_documents_modified: 1,
    #         number_of_documents_deleted: 1,
    #         number_of_documents_failed: 1
    #       },
    #       failure_reasons: ["FailureReason"],
    #       started_at: Time.now, # required
    #       updated_at: Time.now, # required
    #     }
    #   }
    # @return [Types::StopIngestionJobResponse]
    def stop_ingestion_job(params = {}, options = {})
      request = build_request(:stop_ingestion_job, params)
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

    # <p>Updates the configuration of an agent.</p>
    # @param [Hash, Types::UpdateAgentRequest] params
    # @option params [String] :agent_id
    #   <p>The unique identifier of the agent.</p>
    # @option params [String] :agent_name
    #   <p>Specifies a new name for the agent.</p>
    # @option params [String] :instruction
    #   <p>Specifies new instructions that tell the agent what it should do and how it should interact with users.</p>
    # @option params [String] :foundation_model
    #   <p>The identifier for the model that you want to be used for orchestration by the agent you create.</p> <p>The <code>modelId</code> to provide depends on the type of model or throughput that you use:</p> <ul> <li> <p>If you use a base model, specify the model ID or its ARN. For a list of model IDs for base models, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/model-ids.html#model-ids-arns">Amazon Bedrock base model IDs (on-demand throughput)</a> in the Amazon Bedrock User Guide.</p> </li> <li> <p>If you use an inference profile, specify the inference profile ID or its ARN. For a list of inference profile IDs, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/cross-region-inference-support.html">Supported Regions and models for cross-region inference</a> in the Amazon Bedrock User Guide.</p> </li> <li> <p>If you use a provisioned model, specify the ARN of the Provisioned Throughput. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/prov-thru-use.html">Run inference using a Provisioned Throughput</a> in the Amazon Bedrock User Guide.</p> </li> <li> <p>If you use a custom model, first purchase Provisioned Throughput for it. Then specify the ARN of the resulting provisioned model. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-use.html">Use a custom model in Amazon Bedrock</a> in the Amazon Bedrock User Guide.</p> </li> <li> <p>If you use an <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-import-model.html">imported model</a>, specify the ARN of the imported model. You can get the model ARN from a successful call to <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_CreateModelImportJob.html">CreateModelImportJob</a> or from the Imported models page in the Amazon Bedrock console.</p> </li> </ul>
    # @option params [String] :description
    #   <p>Specifies a new description of the agent.</p>
    # @option params [String] :orchestration_type
    #   <p> Specifies the type of orchestration strategy for the agent. This is set to <code>DEFAULT</code> orchestration type, by default. </p>
    # @option params [Types::CustomOrchestration] :custom_orchestration
    #   <p> Contains details of the custom orchestration configured for the agent. </p>
    # @option params [Integer] :idle_session_ttl_in_seconds
    #   <p>The number of seconds for which Amazon Bedrock keeps information about a user's conversation with the agent.</p> <p>A user interaction remains active for the amount of time specified. If no conversation occurs during this time, the session expires and Amazon Bedrock deletes any data provided before the timeout.</p>
    # @option params [String] :agent_resource_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role with permissions to invoke API operations on the agent.</p>
    # @option params [String] :customer_encryption_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key with which to encrypt the agent.</p>
    # @option params [Types::PromptOverrideConfiguration] :prompt_override_configuration
    #   <p>Contains configurations to override prompts in different parts of an agent sequence. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/advanced-prompts.html">Advanced prompts</a>.</p>
    # @option params [Types::GuardrailConfiguration] :guardrail_configuration
    #   <p>The unique Guardrail configuration assigned to the agent when it is updated.</p>
    # @option params [Types::MemoryConfiguration] :memory_configuration
    #   <p>Specifies the new memory configuration for the agent. </p>
    # @option params [String] :agent_collaboration
    #   <p>The agent's collaboration role.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_id: "Id", # required
    #     agent_name: "Name", # required
    #     instruction: "Instruction",
    #     foundation_model: "ModelIdentifier", # required
    #     description: "Description",
    #     orchestration_type: "DEFAULT" # One of: ["DEFAULT", "CUSTOM_ORCHESTRATION"],
    #     custom_orchestration: {
    #       executor: {
    #         # One of:
    #         lambda: "LambdaArn"
    #       }
    #     },
    #     idle_session_ttl_in_seconds: 1,
    #     agent_resource_role_arn: "AgentRoleArn", # required
    #     customer_encryption_key_arn: "KmsKeyArn",
    #     prompt_override_configuration: {
    #       prompt_configurations: [ # required
    #         {
    #           prompt_type: "PRE_PROCESSING" # One of: ["PRE_PROCESSING", "ORCHESTRATION", "POST_PROCESSING", "KNOWLEDGE_BASE_RESPONSE_GENERATION", "MEMORY_SUMMARIZATION"],
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
    #       override_lambda: "LambdaArn"
    #     },
    #     guardrail_configuration: {
    #       guardrail_identifier: "GuardrailIdentifier",
    #       guardrail_version: "GuardrailVersion"
    #     },
    #     memory_configuration: {
    #       enabled_memory_types: ["SESSION_SUMMARY" # One of: ["SESSION_SUMMARY"]], # required
    #       storage_days: 1,
    #       session_summary_configuration: {
    #         max_recent_sessions: 1
    #       }
    #     },
    #     agent_collaboration: "SUPERVISOR" # One of: ["SUPERVISOR", "SUPERVISOR_ROUTER", "DISABLED"]
    #   }
    #   options = {}
    #   response = client.update_agent(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     agent: { # required
    #       agent_id: "Id", # required
    #       agent_name: "Name", # required
    #       agent_arn: "AgentArn", # required
    #       agent_version: "DraftVersion", # required
    #       client_token: "ClientToken",
    #       instruction: "Instruction",
    #       agent_status: "CREATING" # One of: ["CREATING", "PREPARING", "PREPARED", "NOT_PREPARED", "DELETING", "FAILED", "VERSIONING", "UPDATING"], # required
    #       foundation_model: "ModelIdentifier",
    #       description: "Description",
    #       orchestration_type: "DEFAULT" # One of: ["DEFAULT", "CUSTOM_ORCHESTRATION"],
    #       custom_orchestration: {
    #         executor: {
    #           # One of:
    #           lambda: "LambdaArn"
    #         }
    #       },
    #       idle_session_ttl_in_seconds: 1, # required
    #       agent_resource_role_arn: "AgentRoleArn", # required
    #       customer_encryption_key_arn: "KmsKeyArn",
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       prepared_at: Time.now,
    #       failure_reasons: ["FailureReason"],
    #       recommended_actions: ["RecommendedAction"],
    #       prompt_override_configuration: {
    #         prompt_configurations: [ # required
    #           {
    #             prompt_type: "PRE_PROCESSING" # One of: ["PRE_PROCESSING", "ORCHESTRATION", "POST_PROCESSING", "KNOWLEDGE_BASE_RESPONSE_GENERATION", "MEMORY_SUMMARIZATION"],
    #             prompt_creation_mode: "DEFAULT" # One of: ["DEFAULT", "OVERRIDDEN"],
    #             prompt_state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #             base_prompt_template: "BasePromptTemplate",
    #             inference_configuration: {
    #               temperature: 1.0,
    #               top_p: 1.0,
    #               top_k: 1,
    #               maximum_length: 1,
    #               stop_sequences: ["String"]
    #             },
    #             parser_mode: "DEFAULT" # One of: ["DEFAULT", "OVERRIDDEN"],
    #             foundation_model: "ModelIdentifier",
    #             additional_model_request_fields: ""null""
    #           }
    #         ],
    #         override_lambda: "LambdaArn"
    #       },
    #       guardrail_configuration: {
    #         guardrail_identifier: "GuardrailIdentifier",
    #         guardrail_version: "GuardrailVersion"
    #       },
    #       memory_configuration: {
    #         enabled_memory_types: ["SESSION_SUMMARY" # One of: ["SESSION_SUMMARY"]], # required
    #         storage_days: 1,
    #         session_summary_configuration: {
    #           max_recent_sessions: 1
    #         }
    #       },
    #       agent_collaboration: "SUPERVISOR" # One of: ["SUPERVISOR", "SUPERVISOR_ROUTER", "DISABLED"]
    #     }
    #   }
    # @return [Types::UpdateAgentResponse]
    def update_agent(params = {}, options = {})
      request = build_request(:update_agent, params)
      request.send_request(options)
    end

    # <p>Updates the configuration for an action group for an agent.</p>
    # @param [Hash, Types::UpdateAgentActionGroupRequest] params
    # @option params [String] :agent_id
    #   <p>The unique identifier of the agent for which to update the action group.</p>
    # @option params [String] :agent_version
    #   <p>The unique identifier of the agent version for which to update the action group.</p>
    # @option params [String] :action_group_id
    #   <p>The unique identifier of the action group.</p>
    # @option params [String] :action_group_name
    #   <p>Specifies a new name for the action group.</p>
    # @option params [String] :description
    #   <p>Specifies a new name for the action group.</p>
    # @option params [String] :parent_action_group_signature
    #   <p>Update the built-in or computer use action for this action group. If you specify a value, you must leave the <code>description</code>, <code>apiSchema</code>, and <code>actionGroupExecutor</code> fields empty for this action group. </p> <ul> <li> <p>To allow your agent to request the user for additional information when trying to complete a task, set this field to <code>AMAZON.UserInput</code>. </p> </li> <li> <p>To allow your agent to generate, run, and troubleshoot code when trying to complete a task, set this field to <code>AMAZON.CodeInterpreter</code>.</p> </li> <li> <p>To allow your agent to use an Anthropic computer use tool, specify one of the following values. </p> <important> <p> Computer use is a new Anthropic Claude model capability (in beta) available with Anthropic Claude 3.7 Sonnet and Claude 3.5 Sonnet v2 only. When operating computer use functionality, we recommend taking additional security precautions, such as executing computer actions in virtual environments with restricted data access and limited internet connectivity. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/agents-computer-use.html">Configure an Amazon Bedrock Agent to complete tasks with computer use tools</a>. </p> </important> <ul> <li> <p> <code>ANTHROPIC.Computer</code> - Gives the agent permission to use the mouse and keyboard and take screenshots.</p> </li> <li> <p> <code>ANTHROPIC.TextEditor</code> - Gives the agent permission to view, create and edit files.</p> </li> <li> <p> <code>ANTHROPIC.Bash</code> - Gives the agent permission to run commands in a bash shell.</p> </li> </ul> </li> </ul> <p>During orchestration, if your agent determines that it needs to invoke an API in an action group, but doesn't have enough information to complete the API request, it will invoke this action group instead and return an <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_Observation.html">Observation</a> reprompting the user for more information.</p>
    # @option params [Hash<String, String>] :parent_action_group_signature_params
    #   <p>The configuration settings for a computer use action.</p> <important> <p> Computer use is a new Anthropic Claude model capability (in beta) available with Claude 3.7 Sonnet and Claude 3.5 Sonnet v2 only. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/agents-computer-use.html">Configure an Amazon Bedrock Agent to complete tasks with computer use tools</a>. </p> </important>
    # @option params [Types::ActionGroupExecutor] :action_group_executor
    #   <p>The Amazon Resource Name (ARN) of the Lambda function containing the business logic that is carried out upon invoking the action.</p>
    # @option params [String] :action_group_state
    #   <p>Specifies whether the action group is available for the agent to invoke or not when sending an <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html">InvokeAgent</a> request.</p>
    # @option params [Types::APISchema] :api_schema
    #   <p>Contains either details about the S3 object containing the OpenAPI schema for the action group or the JSON or YAML-formatted payload defining the schema. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/agents-api-schema.html">Action group OpenAPI schemas</a>.</p>
    # @option params [Types::FunctionSchema] :function_schema
    #   <p>Contains details about the function schema for the action group or the JSON or YAML-formatted payload defining the schema.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_id: "Id", # required
    #     agent_version: "DraftVersion", # required
    #     action_group_id: "Id", # required
    #     action_group_name: "Name", # required
    #     description: "Description",
    #     parent_action_group_signature: "AMAZON.UserInput" # One of: ["AMAZON.UserInput", "AMAZON.CodeInterpreter", "ANTHROPIC.Computer", "ANTHROPIC.Bash", "ANTHROPIC.TextEditor"],
    #     parent_action_group_signature_params: {
    #       "String" => "String"
    #     },
    #     action_group_executor: {
    #       # One of:
    #       lambda: "LambdaArn",
    #       custom_control: "RETURN_CONTROL" # One of: ["RETURN_CONTROL"]
    #     },
    #     action_group_state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     api_schema: {
    #       # One of:
    #       s3: {
    #         s3_bucket_name: "S3BucketName",
    #         s3_object_key: "S3ObjectKey"
    #       },
    #       payload: "Payload"
    #     },
    #     function_schema: {
    #       # One of:
    #       functions: [
    #         {
    #           name: "Name", # required
    #           description: "FunctionDescription",
    #           parameters: {
    #             "Name" => {
    #               description: "ParameterDescription",
    #               type: "string" # One of: ["string", "number", "integer", "boolean", "array"], # required
    #               required: false
    #             }
    #           },
    #           require_confirmation: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.update_agent_action_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     agent_action_group: { # required
    #       agent_id: "Id", # required
    #       agent_version: "Version", # required
    #       action_group_id: "Id", # required
    #       action_group_name: "Name", # required
    #       client_token: "ClientToken",
    #       description: "Description",
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       parent_action_signature: "AMAZON.UserInput" # One of: ["AMAZON.UserInput", "AMAZON.CodeInterpreter", "ANTHROPIC.Computer", "ANTHROPIC.Bash", "ANTHROPIC.TextEditor"],
    #       parent_action_group_signature_params: {
    #         "String" => "String"
    #       },
    #       action_group_executor: {
    #         # One of:
    #         lambda: "LambdaArn",
    #         custom_control: "RETURN_CONTROL" # One of: ["RETURN_CONTROL"]
    #       },
    #       api_schema: {
    #         # One of:
    #         s3: {
    #           s3_bucket_name: "S3BucketName",
    #           s3_object_key: "S3ObjectKey"
    #         },
    #         payload: "Payload"
    #       },
    #       function_schema: {
    #         # One of:
    #         functions: [
    #           {
    #             name: "Name", # required
    #             description: "FunctionDescription",
    #             parameters: {
    #               "Name" => {
    #                 description: "ParameterDescription",
    #                 type: "string" # One of: ["string", "number", "integer", "boolean", "array"], # required
    #                 required: false
    #               }
    #             },
    #             require_confirmation: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #           }
    #         ]
    #       },
    #       action_group_state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #     }
    #   }
    # @return [Types::UpdateAgentActionGroupResponse]
    def update_agent_action_group(params = {}, options = {})
      request = build_request(:update_agent_action_group, params)
      request.send_request(options)
    end

    # <p>Updates configurations for an alias of an agent.</p>
    # @param [Hash, Types::UpdateAgentAliasRequest] params
    # @option params [String] :agent_id
    #   <p>The unique identifier of the agent.</p>
    # @option params [String] :agent_alias_id
    #   <p>The unique identifier of the alias.</p>
    # @option params [String] :agent_alias_name
    #   <p>Specifies a new name for the alias.</p>
    # @option params [String] :description
    #   <p>Specifies a new description for the alias.</p>
    # @option params [Array<Types::AgentAliasRoutingConfigurationListItem>] :routing_configuration
    #   <p>Contains details about the routing configuration of the alias.</p>
    # @option params [String] :alias_invocation_state
    #   <p>The invocation state for the agent alias. To pause the agent alias, set the value to <code>REJECT_INVOCATIONS</code>. To start the agent alias running again, set the value to <code>ACCEPT_INVOCATIONS</code>. Use the <code>GetAgentAlias</code>, or <code>ListAgentAliases</code>, operation to get the invocation state of an agent alias.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_id: "Id", # required
    #     agent_alias_id: "AgentAliasId", # required
    #     agent_alias_name: "Name", # required
    #     description: "Description",
    #     routing_configuration: [
    #       {
    #         agent_version: "Version",
    #         provisioned_throughput: "ProvisionedModelIdentifier"
    #       }
    #     ],
    #     alias_invocation_state: "ACCEPT_INVOCATIONS" # One of: ["ACCEPT_INVOCATIONS", "REJECT_INVOCATIONS"]
    #   }
    #   options = {}
    #   response = client.update_agent_alias(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     agent_alias: { # required
    #       agent_id: "Id", # required
    #       agent_alias_id: "AgentAliasId", # required
    #       agent_alias_name: "Name", # required
    #       agent_alias_arn: "AgentAliasArn", # required
    #       client_token: "ClientToken",
    #       description: "Description",
    #       routing_configuration: [ # required
    #         {
    #           agent_version: "Version",
    #           provisioned_throughput: "ProvisionedModelIdentifier"
    #         }
    #       ],
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       agent_alias_history_events: [
    #         {
    #           routing_configuration: [
    #             {
    #               agent_version: "Version",
    #               provisioned_throughput: "ProvisionedModelIdentifier"
    #             }
    #           ],
    #           end_date: Time.now,
    #           start_date: Time.now
    #         }
    #       ],
    #       agent_alias_status: "CREATING" # One of: ["CREATING", "PREPARED", "FAILED", "UPDATING", "DELETING", "DISSOCIATED"], # required
    #       failure_reasons: ["FailureReason"],
    #       alias_invocation_state: "ACCEPT_INVOCATIONS" # One of: ["ACCEPT_INVOCATIONS", "REJECT_INVOCATIONS"]
    #     }
    #   }
    # @return [Types::UpdateAgentAliasResponse]
    def update_agent_alias(params = {}, options = {})
      request = build_request(:update_agent_alias, params)
      request.send_request(options)
    end

    # <p>Updates an agent's collaborator.</p>
    # @param [Hash, Types::UpdateAgentCollaboratorRequest] params
    # @option params [String] :agent_id
    #   <p>The agent's ID.</p>
    # @option params [String] :agent_version
    #   <p>The agent's version.</p>
    # @option params [String] :collaborator_id
    #   <p>The collaborator's ID.</p>
    # @option params [Types::AgentDescriptor] :agent_descriptor
    #   <p>An agent descriptor for the agent collaborator.</p>
    # @option params [String] :collaborator_name
    #   <p>The collaborator's name.</p>
    # @option params [String] :collaboration_instruction
    #   <p>Instruction for the collaborator.</p>
    # @option params [String] :relay_conversation_history
    #   <p>A relay conversation history for the collaborator.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_id: "Id", # required
    #     agent_version: "DraftVersion", # required
    #     collaborator_id: "Id", # required
    #     agent_descriptor: { # required
    #       alias_arn: "AgentAliasArn"
    #     },
    #     collaborator_name: "Name", # required
    #     collaboration_instruction: "CollaborationInstruction", # required
    #     relay_conversation_history: "TO_COLLABORATOR" # One of: ["TO_COLLABORATOR", "DISABLED"]
    #   }
    #   options = {}
    #   response = client.update_agent_collaborator(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     agent_collaborator: { # required
    #       agent_id: "Id", # required
    #       agent_version: "Version", # required
    #       agent_descriptor: { # required
    #         alias_arn: "AgentAliasArn"
    #       },
    #       collaborator_id: "Id", # required
    #       collaboration_instruction: "CollaborationInstruction", # required
    #       collaborator_name: "Name", # required
    #       created_at: Time.now, # required
    #       last_updated_at: Time.now, # required
    #       relay_conversation_history: "TO_COLLABORATOR" # One of: ["TO_COLLABORATOR", "DISABLED"],
    #       client_token: "ClientToken"
    #     }
    #   }
    # @return [Types::UpdateAgentCollaboratorResponse]
    def update_agent_collaborator(params = {}, options = {})
      request = build_request(:update_agent_collaborator, params)
      request.send_request(options)
    end

    # <p>Updates the configuration for a knowledge base that has been associated with an agent.</p>
    # @param [Hash, Types::UpdateAgentKnowledgeBaseRequest] params
    # @option params [String] :agent_id
    #   <p>The unique identifier of the agent associated with the knowledge base that you want to update.</p>
    # @option params [String] :agent_version
    #   <p>The version of the agent associated with the knowledge base that you want to update.</p>
    # @option params [String] :knowledge_base_id
    #   <p>The unique identifier of the knowledge base that has been associated with an agent.</p>
    # @option params [String] :description
    #   <p>Specifies a new description for the knowledge base associated with an agent.</p>
    # @option params [String] :knowledge_base_state
    #   <p>Specifies whether the agent uses the knowledge base or not when sending an <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html">InvokeAgent</a> request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_id: "Id", # required
    #     agent_version: "DraftVersion", # required
    #     knowledge_base_id: "Id", # required
    #     description: "Description",
    #     knowledge_base_state: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #   }
    #   options = {}
    #   response = client.update_agent_knowledge_base(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     agent_knowledge_base: { # required
    #       agent_id: "Id", # required
    #       agent_version: "Version", # required
    #       knowledge_base_id: "Id", # required
    #       description: "Description", # required
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       knowledge_base_state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #     }
    #   }
    # @return [Types::UpdateAgentKnowledgeBaseResponse]
    def update_agent_knowledge_base(params = {}, options = {})
      request = build_request(:update_agent_knowledge_base, params)
      request.send_request(options)
    end

    # <p>Updates the configurations for a data source connector.</p> <important> <p>You can't change the <code>chunkingConfiguration</code> after you create the data source connector. Specify the existing <code>chunkingConfiguration</code>.</p> </important>
    # @param [Hash, Types::UpdateDataSourceRequest] params
    # @option params [String] :knowledge_base_id
    #   <p>The unique identifier of the knowledge base for the data source.</p>
    # @option params [String] :data_source_id
    #   <p>The unique identifier of the data source.</p>
    # @option params [String] :name
    #   <p>Specifies a new name for the data source.</p>
    # @option params [String] :description
    #   <p>Specifies a new description for the data source.</p>
    # @option params [Types::DataSourceConfiguration] :data_source_configuration
    #   <p>The connection configuration for the data source that you want to update.</p>
    # @option params [String] :data_deletion_policy
    #   <p>The data deletion policy for the data source that you want to update.</p>
    # @option params [Types::ServerSideEncryptionConfiguration] :server_side_encryption_configuration
    #   <p>Contains details about server-side encryption of the data source.</p>
    # @option params [Types::VectorIngestionConfiguration] :vector_ingestion_configuration
    #   <p>Contains details about how to ingest the documents in the data source.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     knowledge_base_id: "Id", # required
    #     data_source_id: "Id", # required
    #     name: "Name", # required
    #     description: "Description",
    #     data_source_configuration: { # required
    #       type: "S3" # One of: ["S3", "WEB", "CONFLUENCE", "SALESFORCE", "SHAREPOINT", "CUSTOM", "REDSHIFT_METADATA"], # required
    #       s3_configuration: {
    #         bucket_arn: "S3BucketArn", # required
    #         inclusion_prefixes: ["S3Prefix"],
    #         bucket_owner_account_id: "BucketOwnerAccountId"
    #       },
    #       web_configuration: {
    #         source_configuration: { # required
    #           url_configuration: { # required
    #             seed_urls: [
    #               {
    #                 url: "Url"
    #               }
    #             ]
    #           }
    #         },
    #         crawler_configuration: {
    #           crawler_limits: {
    #             rate_limit: 1,
    #             max_pages: 1
    #           },
    #           inclusion_filters: ["FilterPattern"],
    #           exclusion_filters: ["FilterPattern"],
    #           scope: "HOST_ONLY" # One of: ["HOST_ONLY", "SUBDOMAINS"],
    #           user_agent: "UserAgent",
    #           user_agent_header: "UserAgentHeader"
    #         }
    #       },
    #       confluence_configuration: {
    #         source_configuration: { # required
    #           host_url: "HttpsUrl", # required
    #           host_type: "SAAS" # One of: ["SAAS"], # required
    #           auth_type: "BASIC" # One of: ["BASIC", "OAUTH2_CLIENT_CREDENTIALS"], # required
    #           credentials_secret_arn: "SecretArn", # required
    #         },
    #         crawler_configuration: {
    #           filter_configuration: {
    #             type: "PATTERN" # One of: ["PATTERN"], # required
    #             pattern_object_filter: {
    #               filters: [ # required
    #                 {
    #                   object_type: "FilteredObjectType", # required
    #                   inclusion_filters: ["FilterPattern"],
    #                   exclusion_filters: ["FilterPattern"]
    #                 }
    #               ]
    #             }
    #           }
    #         }
    #       },
    #       salesforce_configuration: {
    #         source_configuration: { # required
    #           host_url: "HttpsUrl", # required
    #           auth_type: "OAUTH2_CLIENT_CREDENTIALS" # One of: ["OAUTH2_CLIENT_CREDENTIALS"], # required
    #           credentials_secret_arn: "SecretArn", # required
    #         },
    #         crawler_configuration: {
    #           filter_configuration: {
    #             type: "PATTERN" # One of: ["PATTERN"], # required
    #             pattern_object_filter: {
    #               filters: [ # required
    #                 {
    #                   object_type: "FilteredObjectType", # required
    #                   inclusion_filters: ["FilterPattern"],
    #                   exclusion_filters: ["FilterPattern"]
    #                 }
    #               ]
    #             }
    #           }
    #         }
    #       },
    #       share_point_configuration: {
    #         source_configuration: { # required
    #           tenant_id: "Microsoft365TenantId",
    #           domain: "SharePointDomain", # required
    #           site_urls: ["HttpsUrl"], # required
    #           host_type: "ONLINE" # One of: ["ONLINE"], # required
    #           auth_type: "OAUTH2_CLIENT_CREDENTIALS" # One of: ["OAUTH2_CLIENT_CREDENTIALS", "OAUTH2_SHAREPOINT_APP_ONLY_CLIENT_CREDENTIALS"], # required
    #           credentials_secret_arn: "SecretArn", # required
    #         },
    #         crawler_configuration: {
    #           filter_configuration: {
    #             type: "PATTERN" # One of: ["PATTERN"], # required
    #             pattern_object_filter: {
    #               filters: [ # required
    #                 {
    #                   object_type: "FilteredObjectType", # required
    #                   inclusion_filters: ["FilterPattern"],
    #                   exclusion_filters: ["FilterPattern"]
    #                 }
    #               ]
    #             }
    #           }
    #         }
    #       }
    #     },
    #     data_deletion_policy: "RETAIN" # One of: ["RETAIN", "DELETE"],
    #     server_side_encryption_configuration: {
    #       kms_key_arn: "KmsKeyArn"
    #     },
    #     vector_ingestion_configuration: {
    #       chunking_configuration: {
    #         chunking_strategy: "FIXED_SIZE" # One of: ["FIXED_SIZE", "NONE", "HIERARCHICAL", "SEMANTIC"], # required
    #         fixed_size_chunking_configuration: {
    #           max_tokens: 1, # required
    #           overlap_percentage: 1, # required
    #         },
    #         hierarchical_chunking_configuration: {
    #           level_configurations: [ # required
    #             {
    #               max_tokens: 1, # required
    #             }
    #           ],
    #           overlap_tokens: 1, # required
    #         },
    #         semantic_chunking_configuration: {
    #           max_tokens: 1, # required
    #           buffer_size: 1, # required
    #           breakpoint_percentile_threshold: 1, # required
    #         }
    #       },
    #       custom_transformation_configuration: {
    #         intermediate_storage: { # required
    #           s3_location: { # required
    #             uri: "S3BucketUri", # required
    #           }
    #         },
    #         transformations: [ # required
    #           {
    #             transformation_function: { # required
    #               transformation_lambda_configuration: { # required
    #                 lambda_arn: "LambdaArn", # required
    #               }
    #             },
    #             step_to_apply: "POST_CHUNKING" # One of: ["POST_CHUNKING"], # required
    #           }
    #         ]
    #       },
    #       parsing_configuration: {
    #         parsing_strategy: "BEDROCK_FOUNDATION_MODEL" # One of: ["BEDROCK_FOUNDATION_MODEL", "BEDROCK_DATA_AUTOMATION"], # required
    #         bedrock_foundation_model_configuration: {
    #           model_arn: "BedrockModelArn", # required
    #           parsing_prompt: {
    #             parsing_prompt_text: "ParsingPromptText", # required
    #           },
    #           parsing_modality: "MULTIMODAL" # One of: ["MULTIMODAL"]
    #         },
    #         bedrock_data_automation_configuration: {
    #           parsing_modality: "MULTIMODAL" # One of: ["MULTIMODAL"]
    #         }
    #       },
    #       context_enrichment_configuration: {
    #         type: "BEDROCK_FOUNDATION_MODEL" # One of: ["BEDROCK_FOUNDATION_MODEL"], # required
    #         bedrock_foundation_model_configuration: {
    #           enrichment_strategy_configuration: { # required
    #             method: "CHUNK_ENTITY_EXTRACTION" # One of: ["CHUNK_ENTITY_EXTRACTION"], # required
    #           },
    #           model_arn: "BedrockModelArn", # required
    #         }
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_data_source(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     data_source: { # required
    #       knowledge_base_id: "Id", # required
    #       data_source_id: "Id", # required
    #       name: "Name", # required
    #       status: "AVAILABLE" # One of: ["AVAILABLE", "DELETING", "DELETE_UNSUCCESSFUL"], # required
    #       description: "Description",
    #       data_source_configuration: { # required
    #         type: "S3" # One of: ["S3", "WEB", "CONFLUENCE", "SALESFORCE", "SHAREPOINT", "CUSTOM", "REDSHIFT_METADATA"], # required
    #         s3_configuration: {
    #           bucket_arn: "S3BucketArn", # required
    #           inclusion_prefixes: ["S3Prefix"],
    #           bucket_owner_account_id: "BucketOwnerAccountId"
    #         },
    #         web_configuration: {
    #           source_configuration: { # required
    #             url_configuration: { # required
    #               seed_urls: [
    #                 {
    #                   url: "Url"
    #                 }
    #               ]
    #             }
    #           },
    #           crawler_configuration: {
    #             crawler_limits: {
    #               rate_limit: 1,
    #               max_pages: 1
    #             },
    #             inclusion_filters: ["FilterPattern"],
    #             exclusion_filters: ["FilterPattern"],
    #             scope: "HOST_ONLY" # One of: ["HOST_ONLY", "SUBDOMAINS"],
    #             user_agent: "UserAgent",
    #             user_agent_header: "UserAgentHeader"
    #           }
    #         },
    #         confluence_configuration: {
    #           source_configuration: { # required
    #             host_url: "HttpsUrl", # required
    #             host_type: "SAAS" # One of: ["SAAS"], # required
    #             auth_type: "BASIC" # One of: ["BASIC", "OAUTH2_CLIENT_CREDENTIALS"], # required
    #             credentials_secret_arn: "SecretArn", # required
    #           },
    #           crawler_configuration: {
    #             filter_configuration: {
    #               type: "PATTERN" # One of: ["PATTERN"], # required
    #               pattern_object_filter: {
    #                 filters: [ # required
    #                   {
    #                     object_type: "FilteredObjectType", # required
    #                     inclusion_filters: ["FilterPattern"],
    #                     exclusion_filters: ["FilterPattern"]
    #                   }
    #                 ]
    #               }
    #             }
    #           }
    #         },
    #         salesforce_configuration: {
    #           source_configuration: { # required
    #             host_url: "HttpsUrl", # required
    #             auth_type: "OAUTH2_CLIENT_CREDENTIALS" # One of: ["OAUTH2_CLIENT_CREDENTIALS"], # required
    #             credentials_secret_arn: "SecretArn", # required
    #           },
    #           crawler_configuration: {
    #             filter_configuration: {
    #               type: "PATTERN" # One of: ["PATTERN"], # required
    #               pattern_object_filter: {
    #                 filters: [ # required
    #                   {
    #                     object_type: "FilteredObjectType", # required
    #                     inclusion_filters: ["FilterPattern"],
    #                     exclusion_filters: ["FilterPattern"]
    #                   }
    #                 ]
    #               }
    #             }
    #           }
    #         },
    #         share_point_configuration: {
    #           source_configuration: { # required
    #             tenant_id: "Microsoft365TenantId",
    #             domain: "SharePointDomain", # required
    #             site_urls: ["HttpsUrl"], # required
    #             host_type: "ONLINE" # One of: ["ONLINE"], # required
    #             auth_type: "OAUTH2_CLIENT_CREDENTIALS" # One of: ["OAUTH2_CLIENT_CREDENTIALS", "OAUTH2_SHAREPOINT_APP_ONLY_CLIENT_CREDENTIALS"], # required
    #             credentials_secret_arn: "SecretArn", # required
    #           },
    #           crawler_configuration: {
    #             filter_configuration: {
    #               type: "PATTERN" # One of: ["PATTERN"], # required
    #               pattern_object_filter: {
    #                 filters: [ # required
    #                   {
    #                     object_type: "FilteredObjectType", # required
    #                     inclusion_filters: ["FilterPattern"],
    #                     exclusion_filters: ["FilterPattern"]
    #                   }
    #                 ]
    #               }
    #             }
    #           }
    #         }
    #       },
    #       server_side_encryption_configuration: {
    #         kms_key_arn: "KmsKeyArn"
    #       },
    #       vector_ingestion_configuration: {
    #         chunking_configuration: {
    #           chunking_strategy: "FIXED_SIZE" # One of: ["FIXED_SIZE", "NONE", "HIERARCHICAL", "SEMANTIC"], # required
    #           fixed_size_chunking_configuration: {
    #             max_tokens: 1, # required
    #             overlap_percentage: 1, # required
    #           },
    #           hierarchical_chunking_configuration: {
    #             level_configurations: [ # required
    #               {
    #                 max_tokens: 1, # required
    #               }
    #             ],
    #             overlap_tokens: 1, # required
    #           },
    #           semantic_chunking_configuration: {
    #             max_tokens: 1, # required
    #             buffer_size: 1, # required
    #             breakpoint_percentile_threshold: 1, # required
    #           }
    #         },
    #         custom_transformation_configuration: {
    #           intermediate_storage: { # required
    #             s3_location: { # required
    #               uri: "S3BucketUri", # required
    #             }
    #           },
    #           transformations: [ # required
    #             {
    #               transformation_function: { # required
    #                 transformation_lambda_configuration: { # required
    #                   lambda_arn: "LambdaArn", # required
    #                 }
    #               },
    #               step_to_apply: "POST_CHUNKING" # One of: ["POST_CHUNKING"], # required
    #             }
    #           ]
    #         },
    #         parsing_configuration: {
    #           parsing_strategy: "BEDROCK_FOUNDATION_MODEL" # One of: ["BEDROCK_FOUNDATION_MODEL", "BEDROCK_DATA_AUTOMATION"], # required
    #           bedrock_foundation_model_configuration: {
    #             model_arn: "BedrockModelArn", # required
    #             parsing_prompt: {
    #               parsing_prompt_text: "ParsingPromptText", # required
    #             },
    #             parsing_modality: "MULTIMODAL" # One of: ["MULTIMODAL"]
    #           },
    #           bedrock_data_automation_configuration: {
    #             parsing_modality: "MULTIMODAL" # One of: ["MULTIMODAL"]
    #           }
    #         },
    #         context_enrichment_configuration: {
    #           type: "BEDROCK_FOUNDATION_MODEL" # One of: ["BEDROCK_FOUNDATION_MODEL"], # required
    #           bedrock_foundation_model_configuration: {
    #             enrichment_strategy_configuration: { # required
    #               method: "CHUNK_ENTITY_EXTRACTION" # One of: ["CHUNK_ENTITY_EXTRACTION"], # required
    #             },
    #             model_arn: "BedrockModelArn", # required
    #           }
    #         }
    #       },
    #       data_deletion_policy: "RETAIN" # One of: ["RETAIN", "DELETE"],
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       failure_reasons: ["FailureReason"]
    #     }
    #   }
    # @return [Types::UpdateDataSourceResponse]
    def update_data_source(params = {}, options = {})
      request = build_request(:update_data_source, params)
      request.send_request(options)
    end

    # <p>Modifies a flow. Include both fields that you want to keep and fields that you want to change. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/flows-how-it-works.html">How it works</a> and <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/flows-create.html">Create a flow in Amazon Bedrock</a> in the Amazon Bedrock User Guide.</p>
    # @param [Hash, Types::UpdateFlowRequest] params
    # @option params [String] :name
    #   <p>A name for the flow.</p>
    # @option params [String] :description
    #   <p>A description for the flow.</p>
    # @option params [String] :execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the service role with permissions to create and manage a flow. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/flows-permissions.html">Create a service role for flows in Amazon Bedrock</a> in the Amazon Bedrock User Guide.</p>
    # @option params [String] :customer_encryption_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key to encrypt the flow.</p>
    # @option params [Types::FlowDefinition] :definition
    #   <p>A definition of the nodes and the connections between the nodes in the flow.</p>
    # @option params [String] :flow_identifier
    #   <p>The unique identifier of the flow.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "FlowName", # required
    #     description: "FlowDescription",
    #     execution_role_arn: "FlowExecutionRoleArn", # required
    #     customer_encryption_key_arn: "KmsKeyArn",
    #     definition: {
    #       nodes: [
    #         {
    #           name: "FlowNodeName", # required
    #           type: "Input" # One of: ["Input", "Output", "KnowledgeBase", "Condition", "Lex", "Prompt", "LambdaFunction", "Storage", "Agent", "Retrieval", "Iterator", "Collector", "InlineCode", "Loop", "LoopInput", "LoopController"], # required
    #           configuration: {
    #             # One of:
    #             input: {
    #             },
    #             output: {
    #             },
    #             knowledge_base: {
    #               knowledge_base_id: "FlowKnowledgeBaseId", # required
    #               model_id: "KnowledgeBaseModelIdentifier",
    #               guardrail_configuration: {
    #                 guardrail_identifier: "GuardrailIdentifier",
    #                 guardrail_version: "GuardrailVersion"
    #               },
    #               number_of_results: 1,
    #               prompt_template: {
    #                 text_prompt_template: "KnowledgeBaseTextPrompt"
    #               },
    #               inference_configuration: {
    #                 # One of:
    #                 text: {
    #                   temperature: 1.0,
    #                   top_p: 1.0,
    #                   max_tokens: 1,
    #                   stop_sequences: ["String"]
    #                 }
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
    #               orchestration_configuration: {
    #                 prompt_template: {
    #                   text_prompt_template: "KnowledgeBaseTextPrompt"
    #                 },
    #                 inference_config: {
    #                   # One of:
    #                   text: {
    #                     temperature: 1.0,
    #                     top_p: 1.0,
    #                     max_tokens: 1,
    #                     stop_sequences: ["String"]
    #                   }
    #                 },
    #                 additional_model_request_fields: {
    #                   "AdditionalModelRequestFieldsKey" => ""null""
    #                 },
    #                 performance_config: {
    #                   latency: "standard" # One of: ["standard", "optimized"]
    #                 }
    #               }
    #             },
    #             condition: {
    #               conditions: [ # required
    #                 {
    #                   name: "FlowConditionName", # required
    #                   expression: "FlowConditionExpression"
    #                 }
    #               ]
    #             },
    #             lex: {
    #               bot_alias_arn: "FlowLexBotAliasArn", # required
    #               locale_id: "FlowLexBotLocaleId", # required
    #             },
    #             prompt: {
    #               source_configuration: { # required
    #                 # One of:
    #                 resource: {
    #                   prompt_arn: "FlowPromptArn", # required
    #                 },
    #                 inline: {
    #                   template_type: "TEXT" # One of: ["TEXT", "CHAT"], # required
    #                   template_configuration: { # required
    #                     # One of:
    #                     text: {
    #                       text: "TextPrompt", # required
    #                       cache_point: {
    #                         type: "default" # One of: ["default"], # required
    #                       },
    #                       input_variables: [
    #                         {
    #                           name: "PromptInputVariableName"
    #                         }
    #                       ]
    #                     },
    #                     chat: {
    #                       messages: [ # required
    #                         {
    #                           role: "user" # One of: ["user", "assistant"], # required
    #                           content: [{ # required
    #                             # One of:
    #                             text: "String",
    #                             cache_point: {
    #                               type: "default" # One of: ["default"], # required
    #                             }
    #                           }]
    #                         }
    #                       ],
    #                       system: [{
    #                         # One of:
    #                         text: "NonEmptyString",
    #                         cache_point: {
    #                           type: "default" # One of: ["default"], # required
    #                         }
    #                       }],
    #                       input_variables: [
    #                         {
    #                           name: "PromptInputVariableName"
    #                         }
    #                       ],
    #                       tool_configuration: {
    #                         tools: [{ # required
    #                           # One of:
    #                           tool_spec: {
    #                             name: "ToolName", # required
    #                             description: "NonEmptyString",
    #                             input_schema: { # required
    #                               # One of:
    #                               json: ""null""
    #                             }
    #                           },
    #                           cache_point: {
    #                             type: "default" # One of: ["default"], # required
    #                           }
    #                         }],
    #                         tool_choice: {
    #                           # One of:
    #                           auto: {
    #                           },
    #                           any: {
    #                           },
    #                           tool: {
    #                             name: "ToolName", # required
    #                           }
    #                         }
    #                       }
    #                     }
    #                   },
    #                   model_id: "FlowPromptModelIdentifier", # required
    #                   inference_configuration: {
    #                     # One of:
    #                     text: {
    #                       temperature: 1.0,
    #                       top_p: 1.0,
    #                       max_tokens: 1,
    #                       stop_sequences: ["String"]
    #                     }
    #                   },
    #                   additional_model_request_fields: ""null""
    #                 }
    #               },
    #               guardrail_configuration: {
    #                 guardrail_identifier: "GuardrailIdentifier",
    #                 guardrail_version: "GuardrailVersion"
    #               }
    #             },
    #             lambda_function: {
    #               lambda_arn: "FlowLambdaArn", # required
    #             },
    #             storage: {
    #               service_configuration: { # required
    #                 # One of:
    #                 s3: {
    #                   bucket_name: "FlowS3BucketName", # required
    #                 }
    #               }
    #             },
    #             agent: {
    #               agent_alias_arn: "FlowAgentAliasArn", # required
    #             },
    #             retrieval: {
    #               service_configuration: { # required
    #                 # One of:
    #                 s3: {
    #                   bucket_name: "FlowS3BucketName", # required
    #                 }
    #               }
    #             },
    #             iterator: {
    #             },
    #             collector: {
    #             },
    #             inline_code: {
    #               code: "InlineCode", # required
    #               language: "Python_3" # One of: ["Python_3"], # required
    #             },
    #             loop: {
    #               definition: { # required
    #                 # recursive FlowDefinition
    #               }
    #             },
    #             loop_input: {
    #             },
    #             loop_controller: {
    #               continue_condition: { # required
    #                 name: "FlowConditionName", # required
    #                 expression: "FlowConditionExpression"
    #               },
    #               max_iterations: 1
    #             }
    #           },
    #           inputs: [
    #             {
    #               name: "FlowNodeInputName", # required
    #               type: "String" # One of: ["String", "Number", "Boolean", "Object", "Array"], # required
    #               expression: "FlowNodeInputExpression", # required
    #               category: "LoopCondition" # One of: ["LoopCondition", "ReturnValueToLoopStart", "ExitLoop"]
    #             }
    #           ],
    #           outputs: [
    #             {
    #               name: "FlowNodeOutputName", # required
    #               type: "String" # One of: ["String", "Number", "Boolean", "Object", "Array"], # required
    #             }
    #           ]
    #         }
    #       ],
    #       connections: [
    #         {
    #           type: "Data" # One of: ["Data", "Conditional"], # required
    #           name: "FlowConnectionName", # required
    #           source: "FlowNodeName", # required
    #           target: "FlowNodeName", # required
    #           configuration: {
    #             # One of:
    #             data: {
    #               source_output: "FlowNodeOutputName", # required
    #               target_input: "FlowNodeInputName", # required
    #             },
    #             conditional: {
    #               condition: "FlowConditionName", # required
    #             }
    #           }
    #         }
    #       ]
    #     },
    #     flow_identifier: "FlowIdentifier", # required
    #   }
    #   options = {}
    #   response = client.update_flow(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "FlowName", # required
    #     description: "FlowDescription",
    #     execution_role_arn: "FlowExecutionRoleArn", # required
    #     customer_encryption_key_arn: "KmsKeyArn",
    #     id: "FlowId", # required
    #     arn: "FlowArn", # required
    #     status: "Failed" # One of: ["Failed", "Prepared", "Preparing", "NotPrepared"], # required
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #     version: "DraftVersion", # required
    #     definition: {
    #       nodes: [
    #         {
    #           name: "FlowNodeName", # required
    #           type: "Input" # One of: ["Input", "Output", "KnowledgeBase", "Condition", "Lex", "Prompt", "LambdaFunction", "Storage", "Agent", "Retrieval", "Iterator", "Collector", "InlineCode", "Loop", "LoopInput", "LoopController"], # required
    #           configuration: {
    #             # One of:
    #             input: {
    #             },
    #             output: {
    #             },
    #             knowledge_base: {
    #               knowledge_base_id: "FlowKnowledgeBaseId", # required
    #               model_id: "KnowledgeBaseModelIdentifier",
    #               guardrail_configuration: {
    #                 guardrail_identifier: "GuardrailIdentifier",
    #                 guardrail_version: "GuardrailVersion"
    #               },
    #               number_of_results: 1,
    #               prompt_template: {
    #                 text_prompt_template: "KnowledgeBaseTextPrompt"
    #               },
    #               inference_configuration: {
    #                 # One of:
    #                 text: {
    #                   temperature: 1.0,
    #                   top_p: 1.0,
    #                   max_tokens: 1,
    #                   stop_sequences: ["String"]
    #                 }
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
    #               orchestration_configuration: {
    #                 prompt_template: {
    #                   text_prompt_template: "KnowledgeBaseTextPrompt"
    #                 },
    #                 inference_config: {
    #                   # One of:
    #                   text: {
    #                     temperature: 1.0,
    #                     top_p: 1.0,
    #                     max_tokens: 1,
    #                     stop_sequences: ["String"]
    #                   }
    #                 },
    #                 additional_model_request_fields: {
    #                   "AdditionalModelRequestFieldsKey" => ""null""
    #                 },
    #                 performance_config: {
    #                   latency: "standard" # One of: ["standard", "optimized"]
    #                 }
    #               }
    #             },
    #             condition: {
    #               conditions: [ # required
    #                 {
    #                   name: "FlowConditionName", # required
    #                   expression: "FlowConditionExpression"
    #                 }
    #               ]
    #             },
    #             lex: {
    #               bot_alias_arn: "FlowLexBotAliasArn", # required
    #               locale_id: "FlowLexBotLocaleId", # required
    #             },
    #             prompt: {
    #               source_configuration: { # required
    #                 # One of:
    #                 resource: {
    #                   prompt_arn: "FlowPromptArn", # required
    #                 },
    #                 inline: {
    #                   template_type: "TEXT" # One of: ["TEXT", "CHAT"], # required
    #                   template_configuration: { # required
    #                     # One of:
    #                     text: {
    #                       text: "TextPrompt", # required
    #                       cache_point: {
    #                         type: "default" # One of: ["default"], # required
    #                       },
    #                       input_variables: [
    #                         {
    #                           name: "PromptInputVariableName"
    #                         }
    #                       ]
    #                     },
    #                     chat: {
    #                       messages: [ # required
    #                         {
    #                           role: "user" # One of: ["user", "assistant"], # required
    #                           content: [{ # required
    #                             # One of:
    #                             text: "String",
    #                             cache_point: {
    #                               type: "default" # One of: ["default"], # required
    #                             }
    #                           }]
    #                         }
    #                       ],
    #                       system: [{
    #                         # One of:
    #                         text: "NonEmptyString",
    #                         cache_point: {
    #                           type: "default" # One of: ["default"], # required
    #                         }
    #                       }],
    #                       input_variables: [
    #                         {
    #                           name: "PromptInputVariableName"
    #                         }
    #                       ],
    #                       tool_configuration: {
    #                         tools: [{ # required
    #                           # One of:
    #                           tool_spec: {
    #                             name: "ToolName", # required
    #                             description: "NonEmptyString",
    #                             input_schema: { # required
    #                               # One of:
    #                               json: ""null""
    #                             }
    #                           },
    #                           cache_point: {
    #                             type: "default" # One of: ["default"], # required
    #                           }
    #                         }],
    #                         tool_choice: {
    #                           # One of:
    #                           auto: {
    #                           },
    #                           any: {
    #                           },
    #                           tool: {
    #                             name: "ToolName", # required
    #                           }
    #                         }
    #                       }
    #                     }
    #                   },
    #                   model_id: "FlowPromptModelIdentifier", # required
    #                   inference_configuration: {
    #                     # One of:
    #                     text: {
    #                       temperature: 1.0,
    #                       top_p: 1.0,
    #                       max_tokens: 1,
    #                       stop_sequences: ["String"]
    #                     }
    #                   },
    #                   additional_model_request_fields: ""null""
    #                 }
    #               },
    #               guardrail_configuration: {
    #                 guardrail_identifier: "GuardrailIdentifier",
    #                 guardrail_version: "GuardrailVersion"
    #               }
    #             },
    #             lambda_function: {
    #               lambda_arn: "FlowLambdaArn", # required
    #             },
    #             storage: {
    #               service_configuration: { # required
    #                 # One of:
    #                 s3: {
    #                   bucket_name: "FlowS3BucketName", # required
    #                 }
    #               }
    #             },
    #             agent: {
    #               agent_alias_arn: "FlowAgentAliasArn", # required
    #             },
    #             retrieval: {
    #               service_configuration: { # required
    #                 # One of:
    #                 s3: {
    #                   bucket_name: "FlowS3BucketName", # required
    #                 }
    #               }
    #             },
    #             iterator: {
    #             },
    #             collector: {
    #             },
    #             inline_code: {
    #               code: "InlineCode", # required
    #               language: "Python_3" # One of: ["Python_3"], # required
    #             },
    #             loop: {
    #               definition: { # required
    #                 # recursive FlowDefinition
    #               }
    #             },
    #             loop_input: {
    #             },
    #             loop_controller: {
    #               continue_condition: { # required
    #                 name: "FlowConditionName", # required
    #                 expression: "FlowConditionExpression"
    #               },
    #               max_iterations: 1
    #             }
    #           },
    #           inputs: [
    #             {
    #               name: "FlowNodeInputName", # required
    #               type: "String" # One of: ["String", "Number", "Boolean", "Object", "Array"], # required
    #               expression: "FlowNodeInputExpression", # required
    #               category: "LoopCondition" # One of: ["LoopCondition", "ReturnValueToLoopStart", "ExitLoop"]
    #             }
    #           ],
    #           outputs: [
    #             {
    #               name: "FlowNodeOutputName", # required
    #               type: "String" # One of: ["String", "Number", "Boolean", "Object", "Array"], # required
    #             }
    #           ]
    #         }
    #       ],
    #       connections: [
    #         {
    #           type: "Data" # One of: ["Data", "Conditional"], # required
    #           name: "FlowConnectionName", # required
    #           source: "FlowNodeName", # required
    #           target: "FlowNodeName", # required
    #           configuration: {
    #             # One of:
    #             data: {
    #               source_output: "FlowNodeOutputName", # required
    #               target_input: "FlowNodeInputName", # required
    #             },
    #             conditional: {
    #               condition: "FlowConditionName", # required
    #             }
    #           }
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::UpdateFlowResponse]
    def update_flow(params = {}, options = {})
      request = build_request(:update_flow, params)
      request.send_request(options)
    end

    # <p>Modifies the alias of a flow. Include both fields that you want to keep and ones that you want to change. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/flows-deploy.html">Deploy a flow in Amazon Bedrock</a> in the Amazon Bedrock User Guide.</p>
    # @param [Hash, Types::UpdateFlowAliasRequest] params
    # @option params [String] :name
    #   <p>The name of the alias.</p>
    # @option params [String] :description
    #   <p>A description for the alias.</p>
    # @option params [Array<Types::FlowAliasRoutingConfigurationListItem>] :routing_configuration
    #   <p>Contains information about the version to which to map the alias.</p>
    # @option params [Types::FlowAliasConcurrencyConfiguration] :concurrency_configuration
    #   <p>The configuration that specifies how nodes in the flow are executed in parallel.</p>
    # @option params [String] :flow_identifier
    #   <p>The unique identifier of the flow.</p>
    # @option params [String] :alias_identifier
    #   <p>The unique identifier of the alias.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "Name", # required
    #     description: "Description",
    #     routing_configuration: [ # required
    #       {
    #         flow_version: "Version"
    #       }
    #     ],
    #     concurrency_configuration: {
    #       type: "Automatic" # One of: ["Automatic", "Manual"], # required
    #       max_concurrency: 1
    #     },
    #     flow_identifier: "FlowIdentifier", # required
    #     alias_identifier: "FlowAliasIdentifier", # required
    #   }
    #   options = {}
    #   response = client.update_flow_alias(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "Name", # required
    #     description: "Description",
    #     routing_configuration: [ # required
    #       {
    #         flow_version: "Version"
    #       }
    #     ],
    #     concurrency_configuration: {
    #       type: "Automatic" # One of: ["Automatic", "Manual"], # required
    #       max_concurrency: 1
    #     },
    #     flow_id: "FlowId", # required
    #     id: "FlowAliasId", # required
    #     arn: "FlowAliasArn", # required
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #   }
    # @return [Types::UpdateFlowAliasResponse]
    def update_flow_alias(params = {}, options = {})
      request = build_request(:update_flow_alias, params)
      request.send_request(options)
    end

    # <p>Updates the configuration of a knowledge base with the fields that you specify. Because all fields will be overwritten, you must include the same values for fields that you want to keep the same.</p> <p>You can change the following fields:</p> <ul> <li> <p> <code>name</code> </p> </li> <li> <p> <code>description</code> </p> </li> <li> <p> <code>roleArn</code> </p> </li> </ul> <p>You can't change the <code>knowledgeBaseConfiguration</code> or <code>storageConfiguration</code> fields, so you must specify the same configurations as when you created the knowledge base. You can send a <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_GetKnowledgeBase.html">GetKnowledgeBase</a> request and copy the same configurations.</p>
    # @param [Hash, Types::UpdateKnowledgeBaseRequest] params
    # @option params [String] :knowledge_base_id
    #   <p>The unique identifier of the knowledge base to update.</p>
    # @option params [String] :name
    #   <p>Specifies a new name for the knowledge base.</p>
    # @option params [String] :description
    #   <p>Specifies a new description for the knowledge base.</p>
    # @option params [String] :role_arn
    #   <p>Specifies a different Amazon Resource Name (ARN) of the IAM role with permissions to invoke API operations on the knowledge base.</p>
    # @option params [Types::KnowledgeBaseConfiguration] :knowledge_base_configuration
    #   <p>Specifies the configuration for the embeddings model used for the knowledge base. You must use the same configuration as when the knowledge base was created.</p>
    # @option params [Types::StorageConfiguration] :storage_configuration
    #   <p>Specifies the configuration for the vector store used for the knowledge base. You must use the same configuration as when the knowledge base was created.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     knowledge_base_id: "Id", # required
    #     name: "Name", # required
    #     description: "Description",
    #     role_arn: "KnowledgeBaseRoleArn", # required
    #     knowledge_base_configuration: { # required
    #       type: "VECTOR" # One of: ["VECTOR", "KENDRA", "SQL"], # required
    #       vector_knowledge_base_configuration: {
    #         embedding_model_arn: "BedrockEmbeddingModelArn", # required
    #         embedding_model_configuration: {
    #           bedrock_embedding_model_configuration: {
    #             dimensions: 1,
    #             embedding_data_type: "FLOAT32" # One of: ["FLOAT32", "BINARY"]
    #           }
    #         },
    #         supplemental_data_storage_configuration: {
    #           storage_locations: [ # required
    #             {
    #               type: "S3" # One of: ["S3"], # required
    #               s3_location: {
    #                 uri: "S3BucketUri", # required
    #               }
    #             }
    #           ]
    #         }
    #       },
    #       kendra_knowledge_base_configuration: {
    #         kendra_index_arn: "KendraIndexArn", # required
    #       },
    #       sql_knowledge_base_configuration: {
    #         type: "REDSHIFT" # One of: ["REDSHIFT"], # required
    #         redshift_configuration: {
    #           storage_configurations: [ # required
    #             {
    #               type: "REDSHIFT" # One of: ["REDSHIFT", "AWS_DATA_CATALOG"], # required
    #               aws_data_catalog_configuration: {
    #                 table_names: ["AwsDataCatalogTableName"], # required
    #               },
    #               redshift_configuration: {
    #                 database_name: "RedshiftDatabase", # required
    #               }
    #             }
    #           ],
    #           query_engine_configuration: { # required
    #             type: "SERVERLESS" # One of: ["SERVERLESS", "PROVISIONED"], # required
    #             serverless_configuration: {
    #               workgroup_arn: "WorkgroupArn", # required
    #               auth_configuration: { # required
    #                 type: "IAM" # One of: ["IAM", "USERNAME_PASSWORD"], # required
    #                 username_password_secret_arn: "SecretArn"
    #               }
    #             },
    #             provisioned_configuration: {
    #               cluster_identifier: "RedshiftClusterIdentifier", # required
    #               auth_configuration: { # required
    #                 type: "IAM" # One of: ["IAM", "USERNAME_PASSWORD", "USERNAME"], # required
    #                 database_user: "String",
    #                 username_password_secret_arn: "SecretArn"
    #               }
    #             }
    #           },
    #           query_generation_configuration: {
    #             execution_timeout_seconds: 1,
    #             generation_context: {
    #               tables: [
    #                 {
    #                   name: "QueryGenerationTableName", # required
    #                   description: "DescriptionString",
    #                   inclusion: "INCLUDE" # One of: ["INCLUDE", "EXCLUDE"],
    #                   columns: [
    #                     {
    #                       name: "QueryGenerationColumnName",
    #                       description: "DescriptionString",
    #                       inclusion: "INCLUDE" # One of: ["INCLUDE", "EXCLUDE"]
    #                     }
    #                   ]
    #                 }
    #               ],
    #               curated_queries: [
    #                 {
    #                   natural_language: "NaturalLanguageString", # required
    #                   sql: "SqlString", # required
    #                 }
    #               ]
    #             }
    #           }
    #         }
    #       }
    #     },
    #     storage_configuration: {
    #       type: "OPENSEARCH_SERVERLESS" # One of: ["OPENSEARCH_SERVERLESS", "PINECONE", "REDIS_ENTERPRISE_CLOUD", "RDS", "MONGO_DB_ATLAS", "NEPTUNE_ANALYTICS", "OPENSEARCH_MANAGED_CLUSTER", "S3_VECTORS"], # required
    #       opensearch_serverless_configuration: {
    #         collection_arn: "OpenSearchServerlessCollectionArn", # required
    #         vector_index_name: "OpenSearchServerlessIndexName", # required
    #         field_mapping: { # required
    #           vector_field: "FieldName", # required
    #           text_field: "FieldName", # required
    #           metadata_field: "FieldName", # required
    #         }
    #       },
    #       opensearch_managed_cluster_configuration: {
    #         domain_endpoint: "OpenSearchManagedClusterDomainEndpoint", # required
    #         domain_arn: "OpenSearchManagedClusterDomainArn", # required
    #         vector_index_name: "OpenSearchManagedClusterIndexName", # required
    #         field_mapping: { # required
    #           vector_field: "FieldName", # required
    #           text_field: "FieldName", # required
    #           metadata_field: "FieldName", # required
    #         }
    #       },
    #       pinecone_configuration: {
    #         connection_string: "PineconeConnectionString", # required
    #         credentials_secret_arn: "SecretArn", # required
    #         namespace: "PineconeNamespace",
    #         field_mapping: { # required
    #           text_field: "FieldName", # required
    #           metadata_field: "FieldName", # required
    #         }
    #       },
    #       redis_enterprise_cloud_configuration: {
    #         endpoint: "RedisEnterpriseCloudEndpoint", # required
    #         vector_index_name: "RedisEnterpriseCloudIndexName", # required
    #         credentials_secret_arn: "SecretArn", # required
    #         field_mapping: { # required
    #           vector_field: "FieldName", # required
    #           text_field: "FieldName", # required
    #           metadata_field: "FieldName", # required
    #         }
    #       },
    #       rds_configuration: {
    #         resource_arn: "RdsArn", # required
    #         credentials_secret_arn: "SecretArn", # required
    #         database_name: "RdsDatabaseName", # required
    #         table_name: "RdsTableName", # required
    #         field_mapping: { # required
    #           primary_key_field: "ColumnName", # required
    #           vector_field: "ColumnName", # required
    #           text_field: "ColumnName", # required
    #           metadata_field: "ColumnName", # required
    #           custom_metadata_field: "ColumnName"
    #         }
    #       },
    #       mongo_db_atlas_configuration: {
    #         endpoint: "MongoDbAtlasEndpoint", # required
    #         database_name: "MongoDbAtlasDatabaseName", # required
    #         collection_name: "MongoDbAtlasCollectionName", # required
    #         vector_index_name: "MongoDbAtlasIndexName", # required
    #         credentials_secret_arn: "SecretArn", # required
    #         field_mapping: { # required
    #           vector_field: "FieldName", # required
    #           text_field: "FieldName", # required
    #           metadata_field: "FieldName", # required
    #         },
    #         endpoint_service_name: "MongoDbAtlasEndpointServiceName",
    #         text_index_name: "MongoDbAtlasIndexName"
    #       },
    #       neptune_analytics_configuration: {
    #         graph_arn: "GraphArn", # required
    #         field_mapping: { # required
    #           text_field: "FieldName", # required
    #           metadata_field: "FieldName", # required
    #         }
    #       },
    #       s3_vectors_configuration: {
    #         vector_bucket_arn: "VectorBucketArn",
    #         index_arn: "IndexArn",
    #         index_name: "IndexName"
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_knowledge_base(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     knowledge_base: { # required
    #       knowledge_base_id: "Id", # required
    #       name: "Name", # required
    #       knowledge_base_arn: "KnowledgeBaseArn", # required
    #       description: "Description",
    #       role_arn: "KnowledgeBaseRoleArn", # required
    #       knowledge_base_configuration: { # required
    #         type: "VECTOR" # One of: ["VECTOR", "KENDRA", "SQL"], # required
    #         vector_knowledge_base_configuration: {
    #           embedding_model_arn: "BedrockEmbeddingModelArn", # required
    #           embedding_model_configuration: {
    #             bedrock_embedding_model_configuration: {
    #               dimensions: 1,
    #               embedding_data_type: "FLOAT32" # One of: ["FLOAT32", "BINARY"]
    #             }
    #           },
    #           supplemental_data_storage_configuration: {
    #             storage_locations: [ # required
    #               {
    #                 type: "S3" # One of: ["S3"], # required
    #                 s3_location: {
    #                   uri: "S3BucketUri", # required
    #                 }
    #               }
    #             ]
    #           }
    #         },
    #         kendra_knowledge_base_configuration: {
    #           kendra_index_arn: "KendraIndexArn", # required
    #         },
    #         sql_knowledge_base_configuration: {
    #           type: "REDSHIFT" # One of: ["REDSHIFT"], # required
    #           redshift_configuration: {
    #             storage_configurations: [ # required
    #               {
    #                 type: "REDSHIFT" # One of: ["REDSHIFT", "AWS_DATA_CATALOG"], # required
    #                 aws_data_catalog_configuration: {
    #                   table_names: ["AwsDataCatalogTableName"], # required
    #                 },
    #                 redshift_configuration: {
    #                   database_name: "RedshiftDatabase", # required
    #                 }
    #               }
    #             ],
    #             query_engine_configuration: { # required
    #               type: "SERVERLESS" # One of: ["SERVERLESS", "PROVISIONED"], # required
    #               serverless_configuration: {
    #                 workgroup_arn: "WorkgroupArn", # required
    #                 auth_configuration: { # required
    #                   type: "IAM" # One of: ["IAM", "USERNAME_PASSWORD"], # required
    #                   username_password_secret_arn: "SecretArn"
    #                 }
    #               },
    #               provisioned_configuration: {
    #                 cluster_identifier: "RedshiftClusterIdentifier", # required
    #                 auth_configuration: { # required
    #                   type: "IAM" # One of: ["IAM", "USERNAME_PASSWORD", "USERNAME"], # required
    #                   database_user: "String",
    #                   username_password_secret_arn: "SecretArn"
    #                 }
    #               }
    #             },
    #             query_generation_configuration: {
    #               execution_timeout_seconds: 1,
    #               generation_context: {
    #                 tables: [
    #                   {
    #                     name: "QueryGenerationTableName", # required
    #                     description: "DescriptionString",
    #                     inclusion: "INCLUDE" # One of: ["INCLUDE", "EXCLUDE"],
    #                     columns: [
    #                       {
    #                         name: "QueryGenerationColumnName",
    #                         description: "DescriptionString",
    #                         inclusion: "INCLUDE" # One of: ["INCLUDE", "EXCLUDE"]
    #                       }
    #                     ]
    #                   }
    #                 ],
    #                 curated_queries: [
    #                   {
    #                     natural_language: "NaturalLanguageString", # required
    #                     sql: "SqlString", # required
    #                   }
    #                 ]
    #               }
    #             }
    #           }
    #         }
    #       },
    #       storage_configuration: {
    #         type: "OPENSEARCH_SERVERLESS" # One of: ["OPENSEARCH_SERVERLESS", "PINECONE", "REDIS_ENTERPRISE_CLOUD", "RDS", "MONGO_DB_ATLAS", "NEPTUNE_ANALYTICS", "OPENSEARCH_MANAGED_CLUSTER", "S3_VECTORS"], # required
    #         opensearch_serverless_configuration: {
    #           collection_arn: "OpenSearchServerlessCollectionArn", # required
    #           vector_index_name: "OpenSearchServerlessIndexName", # required
    #           field_mapping: { # required
    #             vector_field: "FieldName", # required
    #             text_field: "FieldName", # required
    #             metadata_field: "FieldName", # required
    #           }
    #         },
    #         opensearch_managed_cluster_configuration: {
    #           domain_endpoint: "OpenSearchManagedClusterDomainEndpoint", # required
    #           domain_arn: "OpenSearchManagedClusterDomainArn", # required
    #           vector_index_name: "OpenSearchManagedClusterIndexName", # required
    #           field_mapping: { # required
    #             vector_field: "FieldName", # required
    #             text_field: "FieldName", # required
    #             metadata_field: "FieldName", # required
    #           }
    #         },
    #         pinecone_configuration: {
    #           connection_string: "PineconeConnectionString", # required
    #           credentials_secret_arn: "SecretArn", # required
    #           namespace: "PineconeNamespace",
    #           field_mapping: { # required
    #             text_field: "FieldName", # required
    #             metadata_field: "FieldName", # required
    #           }
    #         },
    #         redis_enterprise_cloud_configuration: {
    #           endpoint: "RedisEnterpriseCloudEndpoint", # required
    #           vector_index_name: "RedisEnterpriseCloudIndexName", # required
    #           credentials_secret_arn: "SecretArn", # required
    #           field_mapping: { # required
    #             vector_field: "FieldName", # required
    #             text_field: "FieldName", # required
    #             metadata_field: "FieldName", # required
    #           }
    #         },
    #         rds_configuration: {
    #           resource_arn: "RdsArn", # required
    #           credentials_secret_arn: "SecretArn", # required
    #           database_name: "RdsDatabaseName", # required
    #           table_name: "RdsTableName", # required
    #           field_mapping: { # required
    #             primary_key_field: "ColumnName", # required
    #             vector_field: "ColumnName", # required
    #             text_field: "ColumnName", # required
    #             metadata_field: "ColumnName", # required
    #             custom_metadata_field: "ColumnName"
    #           }
    #         },
    #         mongo_db_atlas_configuration: {
    #           endpoint: "MongoDbAtlasEndpoint", # required
    #           database_name: "MongoDbAtlasDatabaseName", # required
    #           collection_name: "MongoDbAtlasCollectionName", # required
    #           vector_index_name: "MongoDbAtlasIndexName", # required
    #           credentials_secret_arn: "SecretArn", # required
    #           field_mapping: { # required
    #             vector_field: "FieldName", # required
    #             text_field: "FieldName", # required
    #             metadata_field: "FieldName", # required
    #           },
    #           endpoint_service_name: "MongoDbAtlasEndpointServiceName",
    #           text_index_name: "MongoDbAtlasIndexName"
    #         },
    #         neptune_analytics_configuration: {
    #           graph_arn: "GraphArn", # required
    #           field_mapping: { # required
    #             text_field: "FieldName", # required
    #             metadata_field: "FieldName", # required
    #           }
    #         },
    #         s3_vectors_configuration: {
    #           vector_bucket_arn: "VectorBucketArn",
    #           index_arn: "IndexArn",
    #           index_name: "IndexName"
    #         }
    #       },
    #       status: "CREATING" # One of: ["CREATING", "ACTIVE", "DELETING", "UPDATING", "FAILED", "DELETE_UNSUCCESSFUL"], # required
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       failure_reasons: ["FailureReason"]
    #     }
    #   }
    # @return [Types::UpdateKnowledgeBaseResponse]
    def update_knowledge_base(params = {}, options = {})
      request = build_request(:update_knowledge_base, params)
      request.send_request(options)
    end

    # <p>Modifies a prompt in your prompt library. Include both fields that you want to keep and fields that you want to replace. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management.html">Prompt management in Amazon Bedrock</a> and <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management-manage.html#prompt-management-edit">Edit prompts in your prompt library</a> in the Amazon Bedrock User Guide.</p>
    # @param [Hash, Types::UpdatePromptRequest] params
    # @option params [String] :name
    #   <p>A name for the prompt.</p>
    # @option params [String] :description
    #   <p>A description for the prompt.</p>
    # @option params [String] :customer_encryption_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key to encrypt the prompt.</p>
    # @option params [String] :default_variant
    #   <p>The name of the default variant for the prompt. This value must match the <code>name</code> field in the relevant <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_PromptVariant.html">PromptVariant</a> object.</p>
    # @option params [Array<Types::PromptVariant>] :variants
    #   <p>A list of objects, each containing details about a variant of the prompt.</p>
    # @option params [String] :prompt_identifier
    #   <p>The unique identifier of the prompt.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "PromptName", # required
    #     description: "PromptDescription",
    #     customer_encryption_key_arn: "KmsKeyArn",
    #     default_variant: "PromptVariantName",
    #     variants: [
    #       {
    #         name: "PromptVariantName", # required
    #         template_type: "TEXT" # One of: ["TEXT", "CHAT"], # required
    #         template_configuration: { # required
    #           # One of:
    #           text: {
    #             text: "TextPrompt", # required
    #             cache_point: {
    #               type: "default" # One of: ["default"], # required
    #             },
    #             input_variables: [
    #               {
    #                 name: "PromptInputVariableName"
    #               }
    #             ]
    #           },
    #           chat: {
    #             messages: [ # required
    #               {
    #                 role: "user" # One of: ["user", "assistant"], # required
    #                 content: [{ # required
    #                   # One of:
    #                   text: "String",
    #                   cache_point: {
    #                     type: "default" # One of: ["default"], # required
    #                   }
    #                 }]
    #               }
    #             ],
    #             system: [{
    #               # One of:
    #               text: "NonEmptyString",
    #               cache_point: {
    #                 type: "default" # One of: ["default"], # required
    #               }
    #             }],
    #             input_variables: [
    #               {
    #                 name: "PromptInputVariableName"
    #               }
    #             ],
    #             tool_configuration: {
    #               tools: [{ # required
    #                 # One of:
    #                 tool_spec: {
    #                   name: "ToolName", # required
    #                   description: "NonEmptyString",
    #                   input_schema: { # required
    #                     # One of:
    #                     json: ""null""
    #                   }
    #                 },
    #                 cache_point: {
    #                   type: "default" # One of: ["default"], # required
    #                 }
    #               }],
    #               tool_choice: {
    #                 # One of:
    #                 auto: {
    #                 },
    #                 any: {
    #                 },
    #                 tool: {
    #                   name: "ToolName", # required
    #                 }
    #               }
    #             }
    #           }
    #         },
    #         model_id: "PromptModelIdentifier",
    #         inference_configuration: {
    #           # One of:
    #           text: {
    #             temperature: 1.0,
    #             top_p: 1.0,
    #             max_tokens: 1,
    #             stop_sequences: ["String"]
    #           }
    #         },
    #         metadata: [
    #           {
    #             key: "PromptMetadataKey", # required
    #             value: "PromptMetadataValue", # required
    #           }
    #         ],
    #         additional_model_request_fields: ""null"",
    #         gen_ai_resource: {
    #           # One of:
    #           agent: {
    #             agent_identifier: "AgentAliasArn", # required
    #           }
    #         }
    #       }
    #     ],
    #     prompt_identifier: "PromptIdentifier", # required
    #   }
    #   options = {}
    #   response = client.update_prompt(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "PromptName", # required
    #     description: "PromptDescription",
    #     customer_encryption_key_arn: "KmsKeyArn",
    #     default_variant: "PromptVariantName",
    #     variants: [
    #       {
    #         name: "PromptVariantName", # required
    #         template_type: "TEXT" # One of: ["TEXT", "CHAT"], # required
    #         template_configuration: { # required
    #           # One of:
    #           text: {
    #             text: "TextPrompt", # required
    #             cache_point: {
    #               type: "default" # One of: ["default"], # required
    #             },
    #             input_variables: [
    #               {
    #                 name: "PromptInputVariableName"
    #               }
    #             ]
    #           },
    #           chat: {
    #             messages: [ # required
    #               {
    #                 role: "user" # One of: ["user", "assistant"], # required
    #                 content: [{ # required
    #                   # One of:
    #                   text: "String",
    #                   cache_point: {
    #                     type: "default" # One of: ["default"], # required
    #                   }
    #                 }]
    #               }
    #             ],
    #             system: [{
    #               # One of:
    #               text: "NonEmptyString",
    #               cache_point: {
    #                 type: "default" # One of: ["default"], # required
    #               }
    #             }],
    #             input_variables: [
    #               {
    #                 name: "PromptInputVariableName"
    #               }
    #             ],
    #             tool_configuration: {
    #               tools: [{ # required
    #                 # One of:
    #                 tool_spec: {
    #                   name: "ToolName", # required
    #                   description: "NonEmptyString",
    #                   input_schema: { # required
    #                     # One of:
    #                     json: ""null""
    #                   }
    #                 },
    #                 cache_point: {
    #                   type: "default" # One of: ["default"], # required
    #                 }
    #               }],
    #               tool_choice: {
    #                 # One of:
    #                 auto: {
    #                 },
    #                 any: {
    #                 },
    #                 tool: {
    #                   name: "ToolName", # required
    #                 }
    #               }
    #             }
    #           }
    #         },
    #         model_id: "PromptModelIdentifier",
    #         inference_configuration: {
    #           # One of:
    #           text: {
    #             temperature: 1.0,
    #             top_p: 1.0,
    #             max_tokens: 1,
    #             stop_sequences: ["String"]
    #           }
    #         },
    #         metadata: [
    #           {
    #             key: "PromptMetadataKey", # required
    #             value: "PromptMetadataValue", # required
    #           }
    #         ],
    #         additional_model_request_fields: ""null"",
    #         gen_ai_resource: {
    #           # One of:
    #           agent: {
    #             agent_identifier: "AgentAliasArn", # required
    #           }
    #         }
    #       }
    #     ],
    #     id: "PromptId", # required
    #     arn: "PromptArn", # required
    #     version: "Version", # required
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #   }
    # @return [Types::UpdatePromptResponse]
    def update_prompt(params = {}, options = {})
      request = build_request(:update_prompt, params)
      request.send_request(options)
    end

    # <p>Validates the definition of a flow.</p>
    # @param [Hash, Types::ValidateFlowDefinitionRequest] params
    # @option params [Types::FlowDefinition] :definition
    #   <p>The definition of a flow to validate.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     definition: { # required
    #       nodes: [
    #         {
    #           name: "FlowNodeName", # required
    #           type: "Input" # One of: ["Input", "Output", "KnowledgeBase", "Condition", "Lex", "Prompt", "LambdaFunction", "Storage", "Agent", "Retrieval", "Iterator", "Collector", "InlineCode", "Loop", "LoopInput", "LoopController"], # required
    #           configuration: {
    #             # One of:
    #             input: {
    #             },
    #             output: {
    #             },
    #             knowledge_base: {
    #               knowledge_base_id: "FlowKnowledgeBaseId", # required
    #               model_id: "KnowledgeBaseModelIdentifier",
    #               guardrail_configuration: {
    #                 guardrail_identifier: "GuardrailIdentifier",
    #                 guardrail_version: "GuardrailVersion"
    #               },
    #               number_of_results: 1,
    #               prompt_template: {
    #                 text_prompt_template: "KnowledgeBaseTextPrompt"
    #               },
    #               inference_configuration: {
    #                 # One of:
    #                 text: {
    #                   temperature: 1.0,
    #                   top_p: 1.0,
    #                   max_tokens: 1,
    #                   stop_sequences: ["String"]
    #                 }
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
    #               orchestration_configuration: {
    #                 prompt_template: {
    #                   text_prompt_template: "KnowledgeBaseTextPrompt"
    #                 },
    #                 inference_config: {
    #                   # One of:
    #                   text: {
    #                     temperature: 1.0,
    #                     top_p: 1.0,
    #                     max_tokens: 1,
    #                     stop_sequences: ["String"]
    #                   }
    #                 },
    #                 additional_model_request_fields: {
    #                   "AdditionalModelRequestFieldsKey" => ""null""
    #                 },
    #                 performance_config: {
    #                   latency: "standard" # One of: ["standard", "optimized"]
    #                 }
    #               }
    #             },
    #             condition: {
    #               conditions: [ # required
    #                 {
    #                   name: "FlowConditionName", # required
    #                   expression: "FlowConditionExpression"
    #                 }
    #               ]
    #             },
    #             lex: {
    #               bot_alias_arn: "FlowLexBotAliasArn", # required
    #               locale_id: "FlowLexBotLocaleId", # required
    #             },
    #             prompt: {
    #               source_configuration: { # required
    #                 # One of:
    #                 resource: {
    #                   prompt_arn: "FlowPromptArn", # required
    #                 },
    #                 inline: {
    #                   template_type: "TEXT" # One of: ["TEXT", "CHAT"], # required
    #                   template_configuration: { # required
    #                     # One of:
    #                     text: {
    #                       text: "TextPrompt", # required
    #                       cache_point: {
    #                         type: "default" # One of: ["default"], # required
    #                       },
    #                       input_variables: [
    #                         {
    #                           name: "PromptInputVariableName"
    #                         }
    #                       ]
    #                     },
    #                     chat: {
    #                       messages: [ # required
    #                         {
    #                           role: "user" # One of: ["user", "assistant"], # required
    #                           content: [{ # required
    #                             # One of:
    #                             text: "String",
    #                             cache_point: {
    #                               type: "default" # One of: ["default"], # required
    #                             }
    #                           }]
    #                         }
    #                       ],
    #                       system: [{
    #                         # One of:
    #                         text: "NonEmptyString",
    #                         cache_point: {
    #                           type: "default" # One of: ["default"], # required
    #                         }
    #                       }],
    #                       input_variables: [
    #                         {
    #                           name: "PromptInputVariableName"
    #                         }
    #                       ],
    #                       tool_configuration: {
    #                         tools: [{ # required
    #                           # One of:
    #                           tool_spec: {
    #                             name: "ToolName", # required
    #                             description: "NonEmptyString",
    #                             input_schema: { # required
    #                               # One of:
    #                               json: ""null""
    #                             }
    #                           },
    #                           cache_point: {
    #                             type: "default" # One of: ["default"], # required
    #                           }
    #                         }],
    #                         tool_choice: {
    #                           # One of:
    #                           auto: {
    #                           },
    #                           any: {
    #                           },
    #                           tool: {
    #                             name: "ToolName", # required
    #                           }
    #                         }
    #                       }
    #                     }
    #                   },
    #                   model_id: "FlowPromptModelIdentifier", # required
    #                   inference_configuration: {
    #                     # One of:
    #                     text: {
    #                       temperature: 1.0,
    #                       top_p: 1.0,
    #                       max_tokens: 1,
    #                       stop_sequences: ["String"]
    #                     }
    #                   },
    #                   additional_model_request_fields: ""null""
    #                 }
    #               },
    #               guardrail_configuration: {
    #                 guardrail_identifier: "GuardrailIdentifier",
    #                 guardrail_version: "GuardrailVersion"
    #               }
    #             },
    #             lambda_function: {
    #               lambda_arn: "FlowLambdaArn", # required
    #             },
    #             storage: {
    #               service_configuration: { # required
    #                 # One of:
    #                 s3: {
    #                   bucket_name: "FlowS3BucketName", # required
    #                 }
    #               }
    #             },
    #             agent: {
    #               agent_alias_arn: "FlowAgentAliasArn", # required
    #             },
    #             retrieval: {
    #               service_configuration: { # required
    #                 # One of:
    #                 s3: {
    #                   bucket_name: "FlowS3BucketName", # required
    #                 }
    #               }
    #             },
    #             iterator: {
    #             },
    #             collector: {
    #             },
    #             inline_code: {
    #               code: "InlineCode", # required
    #               language: "Python_3" # One of: ["Python_3"], # required
    #             },
    #             loop: {
    #               definition: { # required
    #                 # recursive FlowDefinition
    #               }
    #             },
    #             loop_input: {
    #             },
    #             loop_controller: {
    #               continue_condition: { # required
    #                 name: "FlowConditionName", # required
    #                 expression: "FlowConditionExpression"
    #               },
    #               max_iterations: 1
    #             }
    #           },
    #           inputs: [
    #             {
    #               name: "FlowNodeInputName", # required
    #               type: "String" # One of: ["String", "Number", "Boolean", "Object", "Array"], # required
    #               expression: "FlowNodeInputExpression", # required
    #               category: "LoopCondition" # One of: ["LoopCondition", "ReturnValueToLoopStart", "ExitLoop"]
    #             }
    #           ],
    #           outputs: [
    #             {
    #               name: "FlowNodeOutputName", # required
    #               type: "String" # One of: ["String", "Number", "Boolean", "Object", "Array"], # required
    #             }
    #           ]
    #         }
    #       ],
    #       connections: [
    #         {
    #           type: "Data" # One of: ["Data", "Conditional"], # required
    #           name: "FlowConnectionName", # required
    #           source: "FlowNodeName", # required
    #           target: "FlowNodeName", # required
    #           configuration: {
    #             # One of:
    #             data: {
    #               source_output: "FlowNodeOutputName", # required
    #               target_input: "FlowNodeInputName", # required
    #             },
    #             conditional: {
    #               condition: "FlowConditionName", # required
    #             }
    #           }
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.validate_flow_definition(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     validations: [ # required
    #       {
    #         message: "NonBlankString", # required
    #         severity: "Warning" # One of: ["Warning", "Error"], # required
    #         details: {
    #           # One of:
    #           cyclic_connection: {
    #             connection: "FlowConnectionName", # required
    #           },
    #           duplicate_connections: {
    #             source: "FlowNodeName", # required
    #             target: "FlowNodeName", # required
    #           },
    #           duplicate_condition_expression: {
    #             node: "FlowNodeName", # required
    #             expression: "FlowConditionExpression", # required
    #           },
    #           unreachable_node: {
    #             node: "FlowNodeName", # required
    #           },
    #           unknown_connection_source: {
    #             connection: "FlowConnectionName", # required
    #           },
    #           unknown_connection_source_output: {
    #             connection: "FlowConnectionName", # required
    #           },
    #           unknown_connection_target: {
    #             connection: "FlowConnectionName", # required
    #           },
    #           unknown_connection_target_input: {
    #             connection: "FlowConnectionName", # required
    #           },
    #           unknown_connection_condition: {
    #             connection: "FlowConnectionName", # required
    #           },
    #           malformed_condition_expression: {
    #             node: "FlowNodeName", # required
    #             condition: "FlowConditionName", # required
    #             cause: "ErrorMessage", # required
    #           },
    #           malformed_node_input_expression: {
    #             node: "FlowNodeName", # required
    #             input: "FlowNodeInputName", # required
    #             cause: "ErrorMessage", # required
    #           },
    #           mismatched_node_input_type: {
    #             node: "FlowNodeName", # required
    #             input: "FlowNodeInputName", # required
    #             expected_type: "String" # One of: ["String", "Number", "Boolean", "Object", "Array"], # required
    #           },
    #           mismatched_node_output_type: {
    #             node: "FlowNodeName", # required
    #             output: "FlowNodeOutputName", # required
    #             expected_type: "String" # One of: ["String", "Number", "Boolean", "Object", "Array"], # required
    #           },
    #           incompatible_connection_data_type: {
    #             connection: "FlowConnectionName", # required
    #           },
    #           missing_connection_configuration: {
    #             connection: "FlowConnectionName", # required
    #           },
    #           missing_default_condition: {
    #             node: "FlowNodeName", # required
    #           },
    #           missing_ending_nodes: {
    #           },
    #           missing_node_configuration: {
    #             node: "FlowNodeName", # required
    #           },
    #           missing_node_input: {
    #             node: "FlowNodeName", # required
    #             input: "FlowNodeInputName", # required
    #           },
    #           missing_node_output: {
    #             node: "FlowNodeName", # required
    #             output: "FlowNodeOutputName", # required
    #           },
    #           missing_starting_nodes: {
    #           },
    #           multiple_node_input_connections: {
    #             node: "FlowNodeName", # required
    #             input: "FlowNodeInputName", # required
    #           },
    #           unfulfilled_node_input: {
    #             node: "FlowNodeName", # required
    #             input: "FlowNodeInputName", # required
    #           },
    #           unsatisfied_connection_conditions: {
    #             connection: "FlowConnectionName", # required
    #           },
    #           unspecified: {
    #           },
    #           unknown_node_input: {
    #             node: "FlowNodeName", # required
    #             input: "FlowNodeInputName", # required
    #           },
    #           unknown_node_output: {
    #             node: "FlowNodeName", # required
    #             output: "FlowNodeOutputName", # required
    #           },
    #           missing_loop_input_node: {
    #             loop_node: "FlowNodeName", # required
    #           },
    #           missing_loop_controller_node: {
    #             loop_node: "FlowNodeName", # required
    #           },
    #           multiple_loop_input_nodes: {
    #             loop_node: "FlowNodeName", # required
    #           },
    #           multiple_loop_controller_nodes: {
    #             loop_node: "FlowNodeName", # required
    #           },
    #           loop_incompatible_node_type: {
    #             node: "FlowNodeName", # required
    #             incompatible_node_type: "Input" # One of: ["Input", "Condition", "Iterator", "Collector"], # required
    #             incompatible_node_name: "FlowNodeName", # required
    #           },
    #           invalid_loop_boundary: {
    #             connection: "FlowConnectionName", # required
    #             source: "FlowNodeName", # required
    #             target: "FlowNodeName", # required
    #           }
    #         },
    #         type: "CyclicConnection" # One of: ["CyclicConnection", "DuplicateConnections", "DuplicateConditionExpression", "UnreachableNode", "UnknownConnectionSource", "UnknownConnectionSourceOutput", "UnknownConnectionTarget", "UnknownConnectionTargetInput", "UnknownConnectionCondition", "MalformedConditionExpression", "MalformedNodeInputExpression", "MismatchedNodeInputType", "MismatchedNodeOutputType", "IncompatibleConnectionDataType", "MissingConnectionConfiguration", "MissingDefaultCondition", "MissingEndingNodes", "MissingNodeConfiguration", "MissingNodeInput", "MissingNodeOutput", "MissingStartingNodes", "MultipleNodeInputConnections", "UnfulfilledNodeInput", "UnsatisfiedConnectionConditions", "Unspecified", "UnknownNodeInput", "UnknownNodeOutput", "MissingLoopInputNode", "MissingLoopControllerNode", "MultipleLoopInputNodes", "MultipleLoopControllerNodes", "LoopIncompatibleNodeType", "InvalidLoopBoundary"]
    #       }
    #     ]
    #   }
    # @return [Types::ValidateFlowDefinitionResponse]
    def validate_flow_definition(params = {}, options = {})
      request = build_request(:validate_flow_definition, params)
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
      context[:gem_name] = 'aws-sdk-bedrockagent'
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
