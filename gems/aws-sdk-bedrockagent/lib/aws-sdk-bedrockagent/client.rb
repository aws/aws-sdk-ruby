# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
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
require 'aws-sdk-core/plugins/endpoint_discovery.rb'
require 'aws-sdk-core/plugins/endpoint_pattern.rb'
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/client_metrics_plugin.rb'
require 'aws-sdk-core/plugins/client_metrics_send_plugin.rb'
require 'aws-sdk-core/plugins/transfer_encoding.rb'
require 'aws-sdk-core/plugins/http_checksum.rb'
require 'aws-sdk-core/plugins/checksum_algorithm.rb'
require 'aws-sdk-core/plugins/request_compression.rb'
require 'aws-sdk-core/plugins/defaults_mode.rb'
require 'aws-sdk-core/plugins/recursion_detection.rb'
require 'aws-sdk-core/plugins/sign.rb'
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:bedrockagent)

module Aws::BedrockAgent
  # An API client for BedrockAgent.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::BedrockAgent::Client.new(
  #       region: region_name,
  #       credentials: credentials,
  #       # ...
  #     )
  #
  # For details on configuring region and credentials see
  # the [developer guide](/sdk-for-ruby/v3/developer-guide/setup-config.html).
  #
  # See {#initialize} for a full list of supported configuration options.
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :bedrockagent

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
    add_plugin(Aws::Plugins::EndpointDiscovery)
    add_plugin(Aws::Plugins::EndpointPattern)
    add_plugin(Aws::Plugins::ResponsePaging)
    add_plugin(Aws::Plugins::StubResponses)
    add_plugin(Aws::Plugins::IdempotencyToken)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::ClientMetricsPlugin)
    add_plugin(Aws::Plugins::ClientMetricsSendPlugin)
    add_plugin(Aws::Plugins::TransferEncoding)
    add_plugin(Aws::Plugins::HttpChecksum)
    add_plugin(Aws::Plugins::ChecksumAlgorithm)
    add_plugin(Aws::Plugins::RequestCompression)
    add_plugin(Aws::Plugins::DefaultsMode)
    add_plugin(Aws::Plugins::RecursionDetection)
    add_plugin(Aws::Plugins::Sign)
    add_plugin(Aws::Plugins::Protocols::RestJson)
    add_plugin(Aws::BedrockAgent::Plugins::Endpoints)

    # @overload initialize(options)
    #   @param [Hash] options
    #   @option options [required, Aws::CredentialProvider] :credentials
    #     Your AWS credentials. This can be an instance of any one of the
    #     following classes:
    #
    #     * `Aws::Credentials` - Used for configuring static, non-refreshing
    #       credentials.
    #
    #     * `Aws::SharedCredentials` - Used for loading static credentials from a
    #       shared file, such as `~/.aws/config`.
    #
    #     * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #     * `Aws::AssumeRoleWebIdentityCredentials` - Used when you need to
    #       assume a role after providing credentials via the web.
    #
    #     * `Aws::SSOCredentials` - Used for loading credentials from AWS SSO using an
    #       access token generated from `aws login`.
    #
    #     * `Aws::ProcessCredentials` - Used for loading credentials from a
    #       process that outputs to stdout.
    #
    #     * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #       from an EC2 IMDS on an EC2 instance.
    #
    #     * `Aws::ECSCredentials` - Used for loading credentials from
    #       instances running in ECS.
    #
    #     * `Aws::CognitoIdentityCredentials` - Used for loading credentials
    #       from the Cognito Identity service.
    #
    #     When `:credentials` are not configured directly, the following
    #     locations will be searched for credentials:
    #
    #     * `Aws.config[:credentials]`
    #     * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #     * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #     * EC2/ECS IMDS instance profile - When used by default, the timeouts
    #       are very aggressive. Construct and pass an instance of
    #       `Aws::InstanceProfileCredentails` or `Aws::ECSCredentials` to
    #       enable retries and extended timeouts. Instance profile credential
    #       fetching can be disabled by setting ENV['AWS_EC2_METADATA_DISABLED']
    #       to true.
    #
    #   @option options [required, String] :region
    #     The AWS region to connect to.  The configured `:region` is
    #     used to determine the service `:endpoint`. When not passed,
    #     a default `:region` is searched for in the following locations:
    #
    #     * `Aws.config[:region]`
    #     * `ENV['AWS_REGION']`
    #     * `ENV['AMAZON_REGION']`
    #     * `ENV['AWS_DEFAULT_REGION']`
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #
    #   @option options [String] :access_key_id
    #
    #   @option options [Boolean] :active_endpoint_cache (false)
    #     When set to `true`, a thread polling for endpoints will be running in
    #     the background every 60 secs (default). Defaults to `false`.
    #
    #   @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #     Used only in `adaptive` retry mode.  When true, the request will sleep
    #     until there is sufficent client side capacity to retry the request.
    #     When false, the request will raise a `RetryCapacityNotAvailableError` and will
    #     not retry instead of sleeping.
    #
    #   @option options [Boolean] :client_side_monitoring (false)
    #     When `true`, client-side metrics will be collected for all API requests from
    #     this client.
    #
    #   @option options [String] :client_side_monitoring_client_id ("")
    #     Allows you to provide an identifier for this client which will be attached to
    #     all generated client side metrics. Defaults to an empty string.
    #
    #   @option options [String] :client_side_monitoring_host ("127.0.0.1")
    #     Allows you to specify the DNS hostname or IPv4 or IPv6 address that the client
    #     side monitoring agent is running on, where client metrics will be published via UDP.
    #
    #   @option options [Integer] :client_side_monitoring_port (31000)
    #     Required for publishing client metrics. The port that the client side monitoring
    #     agent is running on, where client metrics will be published via UDP.
    #
    #   @option options [Aws::ClientSideMonitoring::Publisher] :client_side_monitoring_publisher (Aws::ClientSideMonitoring::Publisher)
    #     Allows you to provide a custom client-side monitoring publisher class. By default,
    #     will use the Client Side Monitoring Agent Publisher.
    #
    #   @option options [Boolean] :convert_params (true)
    #     When `true`, an attempt is made to coerce request parameters into
    #     the required types.
    #
    #   @option options [Boolean] :correct_clock_skew (true)
    #     Used only in `standard` and adaptive retry modes. Specifies whether to apply
    #     a clock skew correction and retry requests with skewed client clocks.
    #
    #   @option options [String] :defaults_mode ("legacy")
    #     See {Aws::DefaultsModeConfiguration} for a list of the
    #     accepted modes and the configuration defaults that are included.
    #
    #   @option options [Boolean] :disable_host_prefix_injection (false)
    #     Set to true to disable SDK automatically adding host prefix
    #     to default service endpoint when available.
    #
    #   @option options [Boolean] :disable_request_compression (false)
    #     When set to 'true' the request body will not be compressed
    #     for supported operations.
    #
    #   @option options [String] :endpoint
    #     The client endpoint is normally constructed from the `:region`
    #     option. You should only configure an `:endpoint` when connecting
    #     to test or custom endpoints. This should be a valid HTTP(S) URI.
    #
    #   @option options [Integer] :endpoint_cache_max_entries (1000)
    #     Used for the maximum size limit of the LRU cache storing endpoints data
    #     for endpoint discovery enabled operations. Defaults to 1000.
    #
    #   @option options [Integer] :endpoint_cache_max_threads (10)
    #     Used for the maximum threads in use for polling endpoints to be cached, defaults to 10.
    #
    #   @option options [Integer] :endpoint_cache_poll_interval (60)
    #     When :endpoint_discovery and :active_endpoint_cache is enabled,
    #     Use this option to config the time interval in seconds for making
    #     requests fetching endpoints information. Defaults to 60 sec.
    #
    #   @option options [Boolean] :endpoint_discovery (false)
    #     When set to `true`, endpoint discovery will be enabled for operations when available.
    #
    #   @option options [Boolean] :ignore_configured_endpoint_urls
    #     Setting to true disables use of endpoint URLs provided via environment
    #     variables and the shared configuration file.
    #
    #   @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
    #     The log formatter.
    #
    #   @option options [Symbol] :log_level (:info)
    #     The log level to send messages to the `:logger` at.
    #
    #   @option options [Logger] :logger
    #     The Logger instance to send log messages to.  If this option
    #     is not set, logging will be disabled.
    #
    #   @option options [Integer] :max_attempts (3)
    #     An integer representing the maximum number attempts that will be made for
    #     a single request, including the initial attempt.  For example,
    #     setting this value to 5 will result in a request being retried up to
    #     4 times. Used in `standard` and `adaptive` retry modes.
    #
    #   @option options [String] :profile ("default")
    #     Used when loading credentials from the shared credentials file
    #     at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    #   @option options [Integer] :request_min_compression_size_bytes (10240)
    #     The minimum size in bytes that triggers compression for request
    #     bodies. The value must be non-negative integer value between 0
    #     and 10485780 bytes inclusive.
    #
    #   @option options [Proc] :retry_backoff
    #     A proc or lambda used for backoff. Defaults to 2**retries * retry_base_delay.
    #     This option is only used in the `legacy` retry mode.
    #
    #   @option options [Float] :retry_base_delay (0.3)
    #     The base delay in seconds used by the default backoff function. This option
    #     is only used in the `legacy` retry mode.
    #
    #   @option options [Symbol] :retry_jitter (:none)
    #     A delay randomiser function used by the default backoff function.
    #     Some predefined functions can be referenced by name - :none, :equal, :full,
    #     otherwise a Proc that takes and returns a number. This option is only used
    #     in the `legacy` retry mode.
    #
    #     @see https://www.awsarchitectureblog.com/2015/03/backoff.html
    #
    #   @option options [Integer] :retry_limit (3)
    #     The maximum number of times to retry failed requests.  Only
    #     ~ 500 level server errors and certain ~ 400 level client errors
    #     are retried.  Generally, these are throttling errors, data
    #     checksum errors, networking errors, timeout errors, auth errors,
    #     endpoint discovery, and errors from expired credentials.
    #     This option is only used in the `legacy` retry mode.
    #
    #   @option options [Integer] :retry_max_delay (0)
    #     The maximum number of seconds to delay between retries (0 for no limit)
    #     used by the default backoff function. This option is only used in the
    #     `legacy` retry mode.
    #
    #   @option options [String] :retry_mode ("legacy")
    #     Specifies which retry algorithm to use. Values are:
    #
    #     * `legacy` - The pre-existing retry behavior.  This is default value if
    #       no retry mode is provided.
    #
    #     * `standard` - A standardized set of retry rules across the AWS SDKs.
    #       This includes support for retry quotas, which limit the number of
    #       unsuccessful retries a client can make.
    #
    #     * `adaptive` - An experimental retry mode that includes all the
    #       functionality of `standard` mode along with automatic client side
    #       throttling.  This is a provisional mode that may change behavior
    #       in the future.
    #
    #
    #   @option options [String] :sdk_ua_app_id
    #     A unique and opaque application ID that is appended to the
    #     User-Agent header as app/<sdk_ua_app_id>. It should have a
    #     maximum length of 50.
    #
    #   @option options [String] :secret_access_key
    #
    #   @option options [String] :session_token
    #
    #   @option options [Boolean] :stub_responses (false)
    #     Causes the client to return stubbed responses. By default
    #     fake responses are generated and returned. You can specify
    #     the response data to return or errors to raise by calling
    #     {ClientStubs#stub_responses}. See {ClientStubs} for more information.
    #
    #     ** Please note ** When response stubbing is enabled, no HTTP
    #     requests are made, and retries are disabled.
    #
    #   @option options [Aws::TokenProvider] :token_provider
    #     A Bearer Token Provider. This can be an instance of any one of the
    #     following classes:
    #
    #     * `Aws::StaticTokenProvider` - Used for configuring static, non-refreshing
    #       tokens.
    #
    #     * `Aws::SSOTokenProvider` - Used for loading tokens from AWS SSO using an
    #       access token generated from `aws login`.
    #
    #     When `:token_provider` is not configured directly, the `Aws::TokenProviderChain`
    #     will be used to search for tokens configured for your profile in shared configuration files.
    #
    #   @option options [Boolean] :use_dualstack_endpoint
    #     When set to `true`, dualstack enabled endpoints (with `.aws` TLD)
    #     will be used if available.
    #
    #   @option options [Boolean] :use_fips_endpoint
    #     When set to `true`, fips compatible endpoints will be used if available.
    #     When a `fips` region is used, the region is normalized and this config
    #     is set to `true`.
    #
    #   @option options [Boolean] :validate_params (true)
    #     When `true`, request parameters are validated before
    #     sending the request.
    #
    #   @option options [Aws::BedrockAgent::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::BedrockAgent::EndpointParameters`
    #
    #   @option options [URI::HTTP,String] :http_proxy A proxy to send
    #     requests through.  Formatted like 'http://proxy.com:123'.
    #
    #   @option options [Float] :http_open_timeout (15) The number of
    #     seconds to wait when opening a HTTP session before raising a
    #     `Timeout::Error`.
    #
    #   @option options [Float] :http_read_timeout (60) The default
    #     number of seconds to wait for response data.  This value can
    #     safely be set per-request on the session.
    #
    #   @option options [Float] :http_idle_timeout (5) The number of
    #     seconds a connection is allowed to sit idle before it is
    #     considered stale.  Stale connections are closed and removed
    #     from the pool before making a request.
    #
    #   @option options [Float] :http_continue_timeout (1) The number of
    #     seconds to wait for a 100-continue response before sending the
    #     request body.  This option has no effect unless the request has
    #     "Expect" header set to "100-continue".  Defaults to `nil` which
    #     disables this behaviour.  This value can safely be set per
    #     request on the session.
    #
    #   @option options [Float] :ssl_timeout (nil) Sets the SSL timeout
    #     in seconds.
    #
    #   @option options [Boolean] :http_wire_trace (false) When `true`,
    #     HTTP debug output will be sent to the `:logger`.
    #
    #   @option options [Boolean] :ssl_verify_peer (true) When `true`,
    #     SSL peer certificates are verified when establishing a
    #     connection.
    #
    #   @option options [String] :ssl_ca_bundle Full path to the SSL
    #     certificate authority bundle file that should be used when
    #     verifying peer certificates.  If you do not pass
    #     `:ssl_ca_bundle` or `:ssl_ca_directory` the the system default
    #     will be used if available.
    #
    #   @option options [String] :ssl_ca_directory Full path of the
    #     directory that contains the unbundled SSL certificate
    #     authority files for verifying peer certificates.  If you do
    #     not pass `:ssl_ca_bundle` or `:ssl_ca_directory` the the
    #     system default will be used if available.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # Associates a knowledge base with an agent. If a knowledge base is
    # associated and its `indexState` is set to `Enabled`, the agent queries
    # the knowledge base for information to augment its response to the
    # user.
    #
    # @option params [required, String] :agent_id
    #   The unique identifier of the agent with which you want to associate
    #   the knowledge base.
    #
    # @option params [required, String] :agent_version
    #   The version of the agent with which you want to associate the
    #   knowledge base.
    #
    # @option params [required, String] :description
    #   A description of what the agent should use the knowledge base for.
    #
    # @option params [required, String] :knowledge_base_id
    #   The unique identifier of the knowledge base to associate with the
    #   agent.
    #
    # @option params [String] :knowledge_base_state
    #   Specifies whether to use the knowledge base or not when sending an
    #   [InvokeAgent][1] request.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html
    #
    # @return [Types::AssociateAgentKnowledgeBaseResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateAgentKnowledgeBaseResponse#agent_knowledge_base #agent_knowledge_base} => Types::AgentKnowledgeBase
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_agent_knowledge_base({
    #     agent_id: "Id", # required
    #     agent_version: "DraftVersion", # required
    #     description: "Description", # required
    #     knowledge_base_id: "Id", # required
    #     knowledge_base_state: "ENABLED", # accepts ENABLED, DISABLED
    #   })
    #
    # @example Response structure
    #
    #   resp.agent_knowledge_base.agent_id #=> String
    #   resp.agent_knowledge_base.agent_version #=> String
    #   resp.agent_knowledge_base.created_at #=> Time
    #   resp.agent_knowledge_base.description #=> String
    #   resp.agent_knowledge_base.knowledge_base_id #=> String
    #   resp.agent_knowledge_base.knowledge_base_state #=> String, one of "ENABLED", "DISABLED"
    #   resp.agent_knowledge_base.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/AssociateAgentKnowledgeBase AWS API Documentation
    #
    # @overload associate_agent_knowledge_base(params = {})
    # @param [Hash] params ({})
    def associate_agent_knowledge_base(params = {}, options = {})
      req = build_request(:associate_agent_knowledge_base, params)
      req.send_request(options)
    end

    # Creates an agent that orchestrates interactions between foundation
    # models, data sources, software applications, user conversations, and
    # APIs to carry out tasks to help customers.
    #
    # * Specify the following fields for security purposes.
    #
    #   * `agentResourceRoleArn` – The Amazon Resource Name (ARN) of the
    #     role with permissions to invoke API operations on an agent.
    #
    #   * (Optional) `customerEncryptionKeyArn` – The Amazon Resource Name
    #     (ARN) of a KMS key to encrypt the creation of the agent.
    #
    #   * (Optional) `idleSessionTTLinSeconds` – Specify the number of
    #     seconds for which the agent should maintain session information.
    #     After this time expires, the subsequent `InvokeAgent` request
    #     begins a new session.
    #
    # * To override the default prompt behavior for agent orchestration and
    #   to use advanced prompts, include a `promptOverrideConfiguration`
    #   object. For more information, see [Advanced prompts][1].
    #
    # * If you agent fails to be created, the response returns a list of
    #   `failureReasons` alongside a list of `recommendedActions` for you to
    #   troubleshoot.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/advanced-prompts.html
    #
    # @option params [required, String] :agent_name
    #   A name for the agent that you create.
    #
    # @option params [String] :agent_resource_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role with permissions to
    #   invoke API operations on the agent.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If this token matches a previous
    #   request, Amazon Bedrock ignores the request, but does not return an
    #   error. For more information, see [Ensuring idempotency][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @option params [String] :customer_encryption_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key with which to encrypt
    #   the agent.
    #
    # @option params [String] :description
    #   A description of the agent.
    #
    # @option params [String] :foundation_model
    #   The foundation model to be used for orchestration by the agent you
    #   create.
    #
    # @option params [Integer] :idle_session_ttl_in_seconds
    #   The number of seconds for which Amazon Bedrock keeps information about
    #   a user's conversation with the agent.
    #
    #   A user interaction remains active for the amount of time specified. If
    #   no conversation occurs during this time, the session expires and
    #   Amazon Bedrock deletes any data provided before the timeout.
    #
    # @option params [String] :instruction
    #   Instructions that tell the agent what it should do and how it should
    #   interact with users.
    #
    # @option params [Types::PromptOverrideConfiguration] :prompt_override_configuration
    #   Contains configurations to override prompts in different parts of an
    #   agent sequence. For more information, see [Advanced prompts][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/advanced-prompts.html
    #
    # @option params [Hash<String,String>] :tags
    #   Any tags that you want to attach to the agent.
    #
    # @return [Types::CreateAgentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAgentResponse#agent #agent} => Types::Agent
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_agent({
    #     agent_name: "Name", # required
    #     agent_resource_role_arn: "AgentRoleArn",
    #     client_token: "ClientToken",
    #     customer_encryption_key_arn: "KmsKeyArn",
    #     description: "Description",
    #     foundation_model: "ModelIdentifier",
    #     idle_session_ttl_in_seconds: 1,
    #     instruction: "Instruction",
    #     prompt_override_configuration: {
    #       override_lambda: "LambdaArn",
    #       prompt_configurations: [ # required
    #         {
    #           base_prompt_template: "BasePromptTemplate",
    #           inference_configuration: {
    #             maximum_length: 1,
    #             stop_sequences: ["String"],
    #             temperature: 1.0,
    #             top_k: 1,
    #             top_p: 1.0,
    #           },
    #           parser_mode: "DEFAULT", # accepts DEFAULT, OVERRIDDEN
    #           prompt_creation_mode: "DEFAULT", # accepts DEFAULT, OVERRIDDEN
    #           prompt_state: "ENABLED", # accepts ENABLED, DISABLED
    #           prompt_type: "PRE_PROCESSING", # accepts PRE_PROCESSING, ORCHESTRATION, POST_PROCESSING, KNOWLEDGE_BASE_RESPONSE_GENERATION
    #         },
    #       ],
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.agent.agent_arn #=> String
    #   resp.agent.agent_id #=> String
    #   resp.agent.agent_name #=> String
    #   resp.agent.agent_resource_role_arn #=> String
    #   resp.agent.agent_status #=> String, one of "CREATING", "PREPARING", "PREPARED", "NOT_PREPARED", "DELETING", "FAILED", "VERSIONING", "UPDATING"
    #   resp.agent.agent_version #=> String
    #   resp.agent.client_token #=> String
    #   resp.agent.created_at #=> Time
    #   resp.agent.customer_encryption_key_arn #=> String
    #   resp.agent.description #=> String
    #   resp.agent.failure_reasons #=> Array
    #   resp.agent.failure_reasons[0] #=> String
    #   resp.agent.foundation_model #=> String
    #   resp.agent.idle_session_ttl_in_seconds #=> Integer
    #   resp.agent.instruction #=> String
    #   resp.agent.prepared_at #=> Time
    #   resp.agent.prompt_override_configuration.override_lambda #=> String
    #   resp.agent.prompt_override_configuration.prompt_configurations #=> Array
    #   resp.agent.prompt_override_configuration.prompt_configurations[0].base_prompt_template #=> String
    #   resp.agent.prompt_override_configuration.prompt_configurations[0].inference_configuration.maximum_length #=> Integer
    #   resp.agent.prompt_override_configuration.prompt_configurations[0].inference_configuration.stop_sequences #=> Array
    #   resp.agent.prompt_override_configuration.prompt_configurations[0].inference_configuration.stop_sequences[0] #=> String
    #   resp.agent.prompt_override_configuration.prompt_configurations[0].inference_configuration.temperature #=> Float
    #   resp.agent.prompt_override_configuration.prompt_configurations[0].inference_configuration.top_k #=> Integer
    #   resp.agent.prompt_override_configuration.prompt_configurations[0].inference_configuration.top_p #=> Float
    #   resp.agent.prompt_override_configuration.prompt_configurations[0].parser_mode #=> String, one of "DEFAULT", "OVERRIDDEN"
    #   resp.agent.prompt_override_configuration.prompt_configurations[0].prompt_creation_mode #=> String, one of "DEFAULT", "OVERRIDDEN"
    #   resp.agent.prompt_override_configuration.prompt_configurations[0].prompt_state #=> String, one of "ENABLED", "DISABLED"
    #   resp.agent.prompt_override_configuration.prompt_configurations[0].prompt_type #=> String, one of "PRE_PROCESSING", "ORCHESTRATION", "POST_PROCESSING", "KNOWLEDGE_BASE_RESPONSE_GENERATION"
    #   resp.agent.recommended_actions #=> Array
    #   resp.agent.recommended_actions[0] #=> String
    #   resp.agent.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/CreateAgent AWS API Documentation
    #
    # @overload create_agent(params = {})
    # @param [Hash] params ({})
    def create_agent(params = {}, options = {})
      req = build_request(:create_agent, params)
      req.send_request(options)
    end

    # Creates an action group for an agent. An action group represents the
    # actions that an agent can carry out for the customer by defining the
    # APIs that an agent can call and the logic for calling them.
    #
    # To allow your agent to request the user for additional information
    # when trying to complete a task, add an action group with the
    # `parentActionGroupSignature` field set to `AMAZON.UserInput`. You must
    # leave the `description`, `apiSchema`, and `actionGroupExecutor` fields
    # blank for this action group. During orchestration, if your agent
    # determines that it needs to invoke an API in an action group, but
    # doesn't have enough information to complete the API request, it will
    # invoke this action group instead and return an [Observation][1]
    # reprompting the user for more information.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_Observation.html
    #
    # @option params [Types::ActionGroupExecutor] :action_group_executor
    #   The Amazon Resource Name (ARN) of the Lambda function containing the
    #   business logic that is carried out upon invoking the action.
    #
    # @option params [required, String] :action_group_name
    #   The name to give the action group.
    #
    # @option params [String] :action_group_state
    #   Specifies whether the action group is available for the agent to
    #   invoke or not when sending an [InvokeAgent][1] request.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html
    #
    # @option params [required, String] :agent_id
    #   The unique identifier of the agent for which to create the action
    #   group.
    #
    # @option params [required, String] :agent_version
    #   The version of the agent for which to create the action group.
    #
    # @option params [Types::APISchema] :api_schema
    #   Contains either details about the S3 object containing the OpenAPI
    #   schema for the action group or the JSON or YAML-formatted payload
    #   defining the schema. For more information, see [Action group OpenAPI
    #   schemas][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/agents-api-schema.html
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If this token matches a previous
    #   request, Amazon Bedrock ignores the request, but does not return an
    #   error. For more information, see [Ensuring idempotency][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @option params [String] :description
    #   A description of the action group.
    #
    # @option params [String] :parent_action_group_signature
    #   To allow your agent to request the user for additional information
    #   when trying to complete a task, set this field to `AMAZON.UserInput`.
    #   You must leave the `description`, `apiSchema`, and
    #   `actionGroupExecutor` fields blank for this action group.
    #
    #   During orchestration, if your agent determines that it needs to invoke
    #   an API in an action group, but doesn't have enough information to
    #   complete the API request, it will invoke this action group instead and
    #   return an [Observation][1] reprompting the user for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_Observation.html
    #
    # @return [Types::CreateAgentActionGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAgentActionGroupResponse#agent_action_group #agent_action_group} => Types::AgentActionGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_agent_action_group({
    #     action_group_executor: {
    #       lambda: "LambdaArn",
    #     },
    #     action_group_name: "Name", # required
    #     action_group_state: "ENABLED", # accepts ENABLED, DISABLED
    #     agent_id: "Id", # required
    #     agent_version: "DraftVersion", # required
    #     api_schema: {
    #       payload: "Payload",
    #       s3: {
    #         s3_bucket_name: "S3BucketName",
    #         s3_object_key: "S3ObjectKey",
    #       },
    #     },
    #     client_token: "ClientToken",
    #     description: "Description",
    #     parent_action_group_signature: "AMAZON.UserInput", # accepts AMAZON.UserInput
    #   })
    #
    # @example Response structure
    #
    #   resp.agent_action_group.action_group_executor.lambda #=> String
    #   resp.agent_action_group.action_group_id #=> String
    #   resp.agent_action_group.action_group_name #=> String
    #   resp.agent_action_group.action_group_state #=> String, one of "ENABLED", "DISABLED"
    #   resp.agent_action_group.agent_id #=> String
    #   resp.agent_action_group.agent_version #=> String
    #   resp.agent_action_group.api_schema.payload #=> String
    #   resp.agent_action_group.api_schema.s3.s3_bucket_name #=> String
    #   resp.agent_action_group.api_schema.s3.s3_object_key #=> String
    #   resp.agent_action_group.client_token #=> String
    #   resp.agent_action_group.created_at #=> Time
    #   resp.agent_action_group.description #=> String
    #   resp.agent_action_group.parent_action_signature #=> String, one of "AMAZON.UserInput"
    #   resp.agent_action_group.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/CreateAgentActionGroup AWS API Documentation
    #
    # @overload create_agent_action_group(params = {})
    # @param [Hash] params ({})
    def create_agent_action_group(params = {}, options = {})
      req = build_request(:create_agent_action_group, params)
      req.send_request(options)
    end

    # Creates an alias of an agent that can be used to deploy the agent.
    #
    # @option params [required, String] :agent_alias_name
    #   The name of the alias.
    #
    # @option params [required, String] :agent_id
    #   The unique identifier of the agent.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If this token matches a previous
    #   request, Amazon Bedrock ignores the request, but does not return an
    #   error. For more information, see [Ensuring idempotency][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @option params [String] :description
    #   A description of the alias of the agent.
    #
    # @option params [Array<Types::AgentAliasRoutingConfigurationListItem>] :routing_configuration
    #   Contains details about the routing configuration of the alias.
    #
    # @option params [Hash<String,String>] :tags
    #   Any tags that you want to attach to the alias of the agent.
    #
    # @return [Types::CreateAgentAliasResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAgentAliasResponse#agent_alias #agent_alias} => Types::AgentAlias
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_agent_alias({
    #     agent_alias_name: "Name", # required
    #     agent_id: "Id", # required
    #     client_token: "ClientToken",
    #     description: "Description",
    #     routing_configuration: [
    #       {
    #         agent_version: "Version", # required
    #       },
    #     ],
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.agent_alias.agent_alias_arn #=> String
    #   resp.agent_alias.agent_alias_history_events #=> Array
    #   resp.agent_alias.agent_alias_history_events[0].end_date #=> Time
    #   resp.agent_alias.agent_alias_history_events[0].routing_configuration #=> Array
    #   resp.agent_alias.agent_alias_history_events[0].routing_configuration[0].agent_version #=> String
    #   resp.agent_alias.agent_alias_history_events[0].start_date #=> Time
    #   resp.agent_alias.agent_alias_id #=> String
    #   resp.agent_alias.agent_alias_name #=> String
    #   resp.agent_alias.agent_alias_status #=> String, one of "CREATING", "PREPARED", "FAILED", "UPDATING", "DELETING"
    #   resp.agent_alias.agent_id #=> String
    #   resp.agent_alias.client_token #=> String
    #   resp.agent_alias.created_at #=> Time
    #   resp.agent_alias.description #=> String
    #   resp.agent_alias.routing_configuration #=> Array
    #   resp.agent_alias.routing_configuration[0].agent_version #=> String
    #   resp.agent_alias.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/CreateAgentAlias AWS API Documentation
    #
    # @overload create_agent_alias(params = {})
    # @param [Hash] params ({})
    def create_agent_alias(params = {}, options = {})
      req = build_request(:create_agent_alias, params)
      req.send_request(options)
    end

    # Sets up a data source to be added to a knowledge base.
    #
    # You can't change the `chunkingConfiguration` after you create the
    # data source.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If this token matches a previous
    #   request, Amazon Bedrock ignores the request, but does not return an
    #   error. For more information, see [Ensuring idempotency][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @option params [required, Types::DataSourceConfiguration] :data_source_configuration
    #   Contains metadata about where the data source is stored.
    #
    # @option params [String] :description
    #   A description of the data source.
    #
    # @option params [required, String] :knowledge_base_id
    #   The unique identifier of the knowledge base to which to add the data
    #   source.
    #
    # @option params [required, String] :name
    #   The name of the data source.
    #
    # @option params [Types::ServerSideEncryptionConfiguration] :server_side_encryption_configuration
    #   Contains details about the server-side encryption for the data source.
    #
    # @option params [Types::VectorIngestionConfiguration] :vector_ingestion_configuration
    #   Contains details about how to ingest the documents in the data source.
    #
    # @return [Types::CreateDataSourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDataSourceResponse#data_source #data_source} => Types::DataSource
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_data_source({
    #     client_token: "ClientToken",
    #     data_source_configuration: { # required
    #       s3_configuration: {
    #         bucket_arn: "S3BucketArn", # required
    #         inclusion_prefixes: ["S3Prefix"],
    #       },
    #       type: "S3", # required, accepts S3
    #     },
    #     description: "Description",
    #     knowledge_base_id: "Id", # required
    #     name: "Name", # required
    #     server_side_encryption_configuration: {
    #       kms_key_arn: "KmsKeyArn",
    #     },
    #     vector_ingestion_configuration: {
    #       chunking_configuration: {
    #         chunking_strategy: "FIXED_SIZE", # required, accepts FIXED_SIZE, NONE
    #         fixed_size_chunking_configuration: {
    #           max_tokens: 1, # required
    #           overlap_percentage: 1, # required
    #         },
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.data_source.created_at #=> Time
    #   resp.data_source.data_source_configuration.s3_configuration.bucket_arn #=> String
    #   resp.data_source.data_source_configuration.s3_configuration.inclusion_prefixes #=> Array
    #   resp.data_source.data_source_configuration.s3_configuration.inclusion_prefixes[0] #=> String
    #   resp.data_source.data_source_configuration.type #=> String, one of "S3"
    #   resp.data_source.data_source_id #=> String
    #   resp.data_source.description #=> String
    #   resp.data_source.knowledge_base_id #=> String
    #   resp.data_source.name #=> String
    #   resp.data_source.server_side_encryption_configuration.kms_key_arn #=> String
    #   resp.data_source.status #=> String, one of "AVAILABLE", "DELETING"
    #   resp.data_source.updated_at #=> Time
    #   resp.data_source.vector_ingestion_configuration.chunking_configuration.chunking_strategy #=> String, one of "FIXED_SIZE", "NONE"
    #   resp.data_source.vector_ingestion_configuration.chunking_configuration.fixed_size_chunking_configuration.max_tokens #=> Integer
    #   resp.data_source.vector_ingestion_configuration.chunking_configuration.fixed_size_chunking_configuration.overlap_percentage #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/CreateDataSource AWS API Documentation
    #
    # @overload create_data_source(params = {})
    # @param [Hash] params ({})
    def create_data_source(params = {}, options = {})
      req = build_request(:create_data_source, params)
      req.send_request(options)
    end

    # Creates a knowledge base that contains data sources from which
    # information can be queried and used by LLMs. To create a knowledge
    # base, you must first set up your data sources and configure a
    # supported vector store. For more information, see [Set up your data
    # for ingestion][1].
    #
    # <note markdown="1"> If you prefer to let Amazon Bedrock create and manage a vector store
    # for you in Amazon OpenSearch Service, use the console. For more
    # information, see [Create a knowledge base][2].
    #
    #  </note>
    #
    # * Provide the `name` and an optional `description`.
    #
    # * Provide the Amazon Resource Name (ARN) with permissions to create a
    #   knowledge base in the `roleArn` field.
    #
    # * Provide the embedding model to use in the `embeddingModelArn` field
    #   in the `knowledgeBaseConfiguration` object.
    #
    # * Provide the configuration for your vector store in the
    #   `storageConfiguration` object.
    #
    #   * For an Amazon OpenSearch Service database, use the
    #     `opensearchServerlessConfiguration` object. For more information,
    #     see [Create a vector store in Amazon OpenSearch Service][3].
    #
    #   * For an Amazon Aurora database, use the `RdsConfiguration` object.
    #     For more information, see [Create a vector store in Amazon
    #     Aurora][4].
    #
    #   * For a Pinecone database, use the `pineconeConfiguration` object.
    #     For more information, see [Create a vector store in Pinecone][5].
    #
    #   * For a Redis Enterprise Cloud database, use the
    #     `redisEnterpriseCloudConfiguration` object. For more information,
    #     see [Create a vector store in Redis Enterprise Cloud][6].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-setup.html
    # [2]: https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-create
    # [3]: https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-setup-oss.html
    # [4]: https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-setup-rds.html
    # [5]: https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-setup-pinecone.html
    # [6]: https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-setup-redis.html
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If this token matches a previous
    #   request, Amazon Bedrock ignores the request, but does not return an
    #   error. For more information, see [Ensuring idempotency][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @option params [String] :description
    #   A description of the knowledge base.
    #
    # @option params [required, Types::KnowledgeBaseConfiguration] :knowledge_base_configuration
    #   Contains details about the embeddings model used for the knowledge
    #   base.
    #
    # @option params [required, String] :name
    #   A name for the knowledge base.
    #
    # @option params [required, String] :role_arn
    #   The Amazon Resource Name (ARN) of the IAM role with permissions to
    #   invoke API operations on the knowledge base.
    #
    # @option params [required, Types::StorageConfiguration] :storage_configuration
    #   Contains details about the configuration of the vector database used
    #   for the knowledge base.
    #
    # @option params [Hash<String,String>] :tags
    #   Specify the key-value pairs for the tags that you want to attach to
    #   your knowledge base in this object.
    #
    # @return [Types::CreateKnowledgeBaseResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateKnowledgeBaseResponse#knowledge_base #knowledge_base} => Types::KnowledgeBase
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_knowledge_base({
    #     client_token: "ClientToken",
    #     description: "Description",
    #     knowledge_base_configuration: { # required
    #       type: "VECTOR", # required, accepts VECTOR
    #       vector_knowledge_base_configuration: {
    #         embedding_model_arn: "BedrockEmbeddingModelArn", # required
    #       },
    #     },
    #     name: "Name", # required
    #     role_arn: "KnowledgeBaseRoleArn", # required
    #     storage_configuration: { # required
    #       opensearch_serverless_configuration: {
    #         collection_arn: "OpenSearchServerlessCollectionArn", # required
    #         field_mapping: { # required
    #           metadata_field: "FieldName", # required
    #           text_field: "FieldName", # required
    #           vector_field: "FieldName", # required
    #         },
    #         vector_index_name: "OpenSearchServerlessIndexName", # required
    #       },
    #       pinecone_configuration: {
    #         connection_string: "PineconeConnectionString", # required
    #         credentials_secret_arn: "SecretArn", # required
    #         field_mapping: { # required
    #           metadata_field: "FieldName", # required
    #           text_field: "FieldName", # required
    #         },
    #         namespace: "PineconeNamespace",
    #       },
    #       rds_configuration: {
    #         credentials_secret_arn: "SecretArn", # required
    #         database_name: "RdsDatabaseName", # required
    #         field_mapping: { # required
    #           metadata_field: "ColumnName", # required
    #           primary_key_field: "ColumnName", # required
    #           text_field: "ColumnName", # required
    #           vector_field: "ColumnName", # required
    #         },
    #         resource_arn: "RdsArn", # required
    #         table_name: "RdsTableName", # required
    #       },
    #       redis_enterprise_cloud_configuration: {
    #         credentials_secret_arn: "SecretArn", # required
    #         endpoint: "RedisEnterpriseCloudEndpoint", # required
    #         field_mapping: { # required
    #           metadata_field: "FieldName", # required
    #           text_field: "FieldName", # required
    #           vector_field: "FieldName", # required
    #         },
    #         vector_index_name: "RedisEnterpriseCloudIndexName", # required
    #       },
    #       type: "OPENSEARCH_SERVERLESS", # required, accepts OPENSEARCH_SERVERLESS, PINECONE, REDIS_ENTERPRISE_CLOUD, RDS
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.knowledge_base.created_at #=> Time
    #   resp.knowledge_base.description #=> String
    #   resp.knowledge_base.failure_reasons #=> Array
    #   resp.knowledge_base.failure_reasons[0] #=> String
    #   resp.knowledge_base.knowledge_base_arn #=> String
    #   resp.knowledge_base.knowledge_base_configuration.type #=> String, one of "VECTOR"
    #   resp.knowledge_base.knowledge_base_configuration.vector_knowledge_base_configuration.embedding_model_arn #=> String
    #   resp.knowledge_base.knowledge_base_id #=> String
    #   resp.knowledge_base.name #=> String
    #   resp.knowledge_base.role_arn #=> String
    #   resp.knowledge_base.status #=> String, one of "CREATING", "ACTIVE", "DELETING", "UPDATING", "FAILED"
    #   resp.knowledge_base.storage_configuration.opensearch_serverless_configuration.collection_arn #=> String
    #   resp.knowledge_base.storage_configuration.opensearch_serverless_configuration.field_mapping.metadata_field #=> String
    #   resp.knowledge_base.storage_configuration.opensearch_serverless_configuration.field_mapping.text_field #=> String
    #   resp.knowledge_base.storage_configuration.opensearch_serverless_configuration.field_mapping.vector_field #=> String
    #   resp.knowledge_base.storage_configuration.opensearch_serverless_configuration.vector_index_name #=> String
    #   resp.knowledge_base.storage_configuration.pinecone_configuration.connection_string #=> String
    #   resp.knowledge_base.storage_configuration.pinecone_configuration.credentials_secret_arn #=> String
    #   resp.knowledge_base.storage_configuration.pinecone_configuration.field_mapping.metadata_field #=> String
    #   resp.knowledge_base.storage_configuration.pinecone_configuration.field_mapping.text_field #=> String
    #   resp.knowledge_base.storage_configuration.pinecone_configuration.namespace #=> String
    #   resp.knowledge_base.storage_configuration.rds_configuration.credentials_secret_arn #=> String
    #   resp.knowledge_base.storage_configuration.rds_configuration.database_name #=> String
    #   resp.knowledge_base.storage_configuration.rds_configuration.field_mapping.metadata_field #=> String
    #   resp.knowledge_base.storage_configuration.rds_configuration.field_mapping.primary_key_field #=> String
    #   resp.knowledge_base.storage_configuration.rds_configuration.field_mapping.text_field #=> String
    #   resp.knowledge_base.storage_configuration.rds_configuration.field_mapping.vector_field #=> String
    #   resp.knowledge_base.storage_configuration.rds_configuration.resource_arn #=> String
    #   resp.knowledge_base.storage_configuration.rds_configuration.table_name #=> String
    #   resp.knowledge_base.storage_configuration.redis_enterprise_cloud_configuration.credentials_secret_arn #=> String
    #   resp.knowledge_base.storage_configuration.redis_enterprise_cloud_configuration.endpoint #=> String
    #   resp.knowledge_base.storage_configuration.redis_enterprise_cloud_configuration.field_mapping.metadata_field #=> String
    #   resp.knowledge_base.storage_configuration.redis_enterprise_cloud_configuration.field_mapping.text_field #=> String
    #   resp.knowledge_base.storage_configuration.redis_enterprise_cloud_configuration.field_mapping.vector_field #=> String
    #   resp.knowledge_base.storage_configuration.redis_enterprise_cloud_configuration.vector_index_name #=> String
    #   resp.knowledge_base.storage_configuration.type #=> String, one of "OPENSEARCH_SERVERLESS", "PINECONE", "REDIS_ENTERPRISE_CLOUD", "RDS"
    #   resp.knowledge_base.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/CreateKnowledgeBase AWS API Documentation
    #
    # @overload create_knowledge_base(params = {})
    # @param [Hash] params ({})
    def create_knowledge_base(params = {}, options = {})
      req = build_request(:create_knowledge_base, params)
      req.send_request(options)
    end

    # Deletes an agent.
    #
    # @option params [required, String] :agent_id
    #   The unique identifier of the agent to delete.
    #
    # @option params [Boolean] :skip_resource_in_use_check
    #   By default, this value is `false` and deletion is stopped if the
    #   resource is in use. If you set it to `true`, the resource will be
    #   deleted even if the resource is in use.
    #
    # @return [Types::DeleteAgentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteAgentResponse#agent_id #agent_id} => String
    #   * {Types::DeleteAgentResponse#agent_status #agent_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_agent({
    #     agent_id: "Id", # required
    #     skip_resource_in_use_check: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.agent_id #=> String
    #   resp.agent_status #=> String, one of "CREATING", "PREPARING", "PREPARED", "NOT_PREPARED", "DELETING", "FAILED", "VERSIONING", "UPDATING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/DeleteAgent AWS API Documentation
    #
    # @overload delete_agent(params = {})
    # @param [Hash] params ({})
    def delete_agent(params = {}, options = {})
      req = build_request(:delete_agent, params)
      req.send_request(options)
    end

    # Deletes an action group in an agent.
    #
    # @option params [required, String] :action_group_id
    #   The unique identifier of the action group to delete.
    #
    # @option params [required, String] :agent_id
    #   The unique identifier of the agent that the action group belongs to.
    #
    # @option params [required, String] :agent_version
    #   The version of the agent that the action group belongs to.
    #
    # @option params [Boolean] :skip_resource_in_use_check
    #   By default, this value is `false` and deletion is stopped if the
    #   resource is in use. If you set it to `true`, the resource will be
    #   deleted even if the resource is in use.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_agent_action_group({
    #     action_group_id: "Id", # required
    #     agent_id: "Id", # required
    #     agent_version: "DraftVersion", # required
    #     skip_resource_in_use_check: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/DeleteAgentActionGroup AWS API Documentation
    #
    # @overload delete_agent_action_group(params = {})
    # @param [Hash] params ({})
    def delete_agent_action_group(params = {}, options = {})
      req = build_request(:delete_agent_action_group, params)
      req.send_request(options)
    end

    # Deletes an alias of an agent.
    #
    # @option params [required, String] :agent_alias_id
    #   The unique identifier of the alias to delete.
    #
    # @option params [required, String] :agent_id
    #   The unique identifier of the agent that the alias belongs to.
    #
    # @return [Types::DeleteAgentAliasResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteAgentAliasResponse#agent_alias_id #agent_alias_id} => String
    #   * {Types::DeleteAgentAliasResponse#agent_alias_status #agent_alias_status} => String
    #   * {Types::DeleteAgentAliasResponse#agent_id #agent_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_agent_alias({
    #     agent_alias_id: "AgentAliasId", # required
    #     agent_id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.agent_alias_id #=> String
    #   resp.agent_alias_status #=> String, one of "CREATING", "PREPARED", "FAILED", "UPDATING", "DELETING"
    #   resp.agent_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/DeleteAgentAlias AWS API Documentation
    #
    # @overload delete_agent_alias(params = {})
    # @param [Hash] params ({})
    def delete_agent_alias(params = {}, options = {})
      req = build_request(:delete_agent_alias, params)
      req.send_request(options)
    end

    # Deletes a version of an agent.
    #
    # @option params [required, String] :agent_id
    #   The unique identifier of the agent that the version belongs to.
    #
    # @option params [required, String] :agent_version
    #   The version of the agent to delete.
    #
    # @option params [Boolean] :skip_resource_in_use_check
    #   By default, this value is `false` and deletion is stopped if the
    #   resource is in use. If you set it to `true`, the resource will be
    #   deleted even if the resource is in use.
    #
    # @return [Types::DeleteAgentVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteAgentVersionResponse#agent_id #agent_id} => String
    #   * {Types::DeleteAgentVersionResponse#agent_status #agent_status} => String
    #   * {Types::DeleteAgentVersionResponse#agent_version #agent_version} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_agent_version({
    #     agent_id: "Id", # required
    #     agent_version: "NumericalVersion", # required
    #     skip_resource_in_use_check: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.agent_id #=> String
    #   resp.agent_status #=> String, one of "CREATING", "PREPARING", "PREPARED", "NOT_PREPARED", "DELETING", "FAILED", "VERSIONING", "UPDATING"
    #   resp.agent_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/DeleteAgentVersion AWS API Documentation
    #
    # @overload delete_agent_version(params = {})
    # @param [Hash] params ({})
    def delete_agent_version(params = {}, options = {})
      req = build_request(:delete_agent_version, params)
      req.send_request(options)
    end

    # Deletes a data source from a knowledge base.
    #
    # @option params [required, String] :data_source_id
    #   The unique identifier of the data source to delete.
    #
    # @option params [required, String] :knowledge_base_id
    #   The unique identifier of the knowledge base from which to delete the
    #   data source.
    #
    # @return [Types::DeleteDataSourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteDataSourceResponse#data_source_id #data_source_id} => String
    #   * {Types::DeleteDataSourceResponse#knowledge_base_id #knowledge_base_id} => String
    #   * {Types::DeleteDataSourceResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_data_source({
    #     data_source_id: "Id", # required
    #     knowledge_base_id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.data_source_id #=> String
    #   resp.knowledge_base_id #=> String
    #   resp.status #=> String, one of "AVAILABLE", "DELETING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/DeleteDataSource AWS API Documentation
    #
    # @overload delete_data_source(params = {})
    # @param [Hash] params ({})
    def delete_data_source(params = {}, options = {})
      req = build_request(:delete_data_source, params)
      req.send_request(options)
    end

    # Deletes a knowledge base. Before deleting a knowledge base, you should
    # disassociate the knowledge base from any agents that it is associated
    # with by making a [DisassociateAgentKnowledgeBase][1] request.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_DisassociateAgentKnowledgeBase.html
    #
    # @option params [required, String] :knowledge_base_id
    #   The unique identifier of the knowledge base to delete.
    #
    # @return [Types::DeleteKnowledgeBaseResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteKnowledgeBaseResponse#knowledge_base_id #knowledge_base_id} => String
    #   * {Types::DeleteKnowledgeBaseResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_knowledge_base({
    #     knowledge_base_id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.knowledge_base_id #=> String
    #   resp.status #=> String, one of "CREATING", "ACTIVE", "DELETING", "UPDATING", "FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/DeleteKnowledgeBase AWS API Documentation
    #
    # @overload delete_knowledge_base(params = {})
    # @param [Hash] params ({})
    def delete_knowledge_base(params = {}, options = {})
      req = build_request(:delete_knowledge_base, params)
      req.send_request(options)
    end

    # Disassociates a knowledge base from an agent.
    #
    # @option params [required, String] :agent_id
    #   The unique identifier of the agent from which to disassociate the
    #   knowledge base.
    #
    # @option params [required, String] :agent_version
    #   The version of the agent from which to disassociate the knowledge
    #   base.
    #
    # @option params [required, String] :knowledge_base_id
    #   The unique identifier of the knowledge base to disassociate.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_agent_knowledge_base({
    #     agent_id: "Id", # required
    #     agent_version: "DraftVersion", # required
    #     knowledge_base_id: "Id", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/DisassociateAgentKnowledgeBase AWS API Documentation
    #
    # @overload disassociate_agent_knowledge_base(params = {})
    # @param [Hash] params ({})
    def disassociate_agent_knowledge_base(params = {}, options = {})
      req = build_request(:disassociate_agent_knowledge_base, params)
      req.send_request(options)
    end

    # Gets information about an agent.
    #
    # @option params [required, String] :agent_id
    #   The unique identifier of the agent.
    #
    # @return [Types::GetAgentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAgentResponse#agent #agent} => Types::Agent
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_agent({
    #     agent_id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.agent.agent_arn #=> String
    #   resp.agent.agent_id #=> String
    #   resp.agent.agent_name #=> String
    #   resp.agent.agent_resource_role_arn #=> String
    #   resp.agent.agent_status #=> String, one of "CREATING", "PREPARING", "PREPARED", "NOT_PREPARED", "DELETING", "FAILED", "VERSIONING", "UPDATING"
    #   resp.agent.agent_version #=> String
    #   resp.agent.client_token #=> String
    #   resp.agent.created_at #=> Time
    #   resp.agent.customer_encryption_key_arn #=> String
    #   resp.agent.description #=> String
    #   resp.agent.failure_reasons #=> Array
    #   resp.agent.failure_reasons[0] #=> String
    #   resp.agent.foundation_model #=> String
    #   resp.agent.idle_session_ttl_in_seconds #=> Integer
    #   resp.agent.instruction #=> String
    #   resp.agent.prepared_at #=> Time
    #   resp.agent.prompt_override_configuration.override_lambda #=> String
    #   resp.agent.prompt_override_configuration.prompt_configurations #=> Array
    #   resp.agent.prompt_override_configuration.prompt_configurations[0].base_prompt_template #=> String
    #   resp.agent.prompt_override_configuration.prompt_configurations[0].inference_configuration.maximum_length #=> Integer
    #   resp.agent.prompt_override_configuration.prompt_configurations[0].inference_configuration.stop_sequences #=> Array
    #   resp.agent.prompt_override_configuration.prompt_configurations[0].inference_configuration.stop_sequences[0] #=> String
    #   resp.agent.prompt_override_configuration.prompt_configurations[0].inference_configuration.temperature #=> Float
    #   resp.agent.prompt_override_configuration.prompt_configurations[0].inference_configuration.top_k #=> Integer
    #   resp.agent.prompt_override_configuration.prompt_configurations[0].inference_configuration.top_p #=> Float
    #   resp.agent.prompt_override_configuration.prompt_configurations[0].parser_mode #=> String, one of "DEFAULT", "OVERRIDDEN"
    #   resp.agent.prompt_override_configuration.prompt_configurations[0].prompt_creation_mode #=> String, one of "DEFAULT", "OVERRIDDEN"
    #   resp.agent.prompt_override_configuration.prompt_configurations[0].prompt_state #=> String, one of "ENABLED", "DISABLED"
    #   resp.agent.prompt_override_configuration.prompt_configurations[0].prompt_type #=> String, one of "PRE_PROCESSING", "ORCHESTRATION", "POST_PROCESSING", "KNOWLEDGE_BASE_RESPONSE_GENERATION"
    #   resp.agent.recommended_actions #=> Array
    #   resp.agent.recommended_actions[0] #=> String
    #   resp.agent.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/GetAgent AWS API Documentation
    #
    # @overload get_agent(params = {})
    # @param [Hash] params ({})
    def get_agent(params = {}, options = {})
      req = build_request(:get_agent, params)
      req.send_request(options)
    end

    # Gets information about an action group for an agent.
    #
    # @option params [required, String] :action_group_id
    #   The unique identifier of the action group for which to get
    #   information.
    #
    # @option params [required, String] :agent_id
    #   The unique identifier of the agent that the action group belongs to.
    #
    # @option params [required, String] :agent_version
    #   The version of the agent that the action group belongs to.
    #
    # @return [Types::GetAgentActionGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAgentActionGroupResponse#agent_action_group #agent_action_group} => Types::AgentActionGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_agent_action_group({
    #     action_group_id: "Id", # required
    #     agent_id: "Id", # required
    #     agent_version: "Version", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.agent_action_group.action_group_executor.lambda #=> String
    #   resp.agent_action_group.action_group_id #=> String
    #   resp.agent_action_group.action_group_name #=> String
    #   resp.agent_action_group.action_group_state #=> String, one of "ENABLED", "DISABLED"
    #   resp.agent_action_group.agent_id #=> String
    #   resp.agent_action_group.agent_version #=> String
    #   resp.agent_action_group.api_schema.payload #=> String
    #   resp.agent_action_group.api_schema.s3.s3_bucket_name #=> String
    #   resp.agent_action_group.api_schema.s3.s3_object_key #=> String
    #   resp.agent_action_group.client_token #=> String
    #   resp.agent_action_group.created_at #=> Time
    #   resp.agent_action_group.description #=> String
    #   resp.agent_action_group.parent_action_signature #=> String, one of "AMAZON.UserInput"
    #   resp.agent_action_group.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/GetAgentActionGroup AWS API Documentation
    #
    # @overload get_agent_action_group(params = {})
    # @param [Hash] params ({})
    def get_agent_action_group(params = {}, options = {})
      req = build_request(:get_agent_action_group, params)
      req.send_request(options)
    end

    # Gets information about an alias of an agent.
    #
    # @option params [required, String] :agent_alias_id
    #   The unique identifier of the alias for which to get information.
    #
    # @option params [required, String] :agent_id
    #   The unique identifier of the agent to which the alias to get
    #   information belongs.
    #
    # @return [Types::GetAgentAliasResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAgentAliasResponse#agent_alias #agent_alias} => Types::AgentAlias
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_agent_alias({
    #     agent_alias_id: "AgentAliasId", # required
    #     agent_id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.agent_alias.agent_alias_arn #=> String
    #   resp.agent_alias.agent_alias_history_events #=> Array
    #   resp.agent_alias.agent_alias_history_events[0].end_date #=> Time
    #   resp.agent_alias.agent_alias_history_events[0].routing_configuration #=> Array
    #   resp.agent_alias.agent_alias_history_events[0].routing_configuration[0].agent_version #=> String
    #   resp.agent_alias.agent_alias_history_events[0].start_date #=> Time
    #   resp.agent_alias.agent_alias_id #=> String
    #   resp.agent_alias.agent_alias_name #=> String
    #   resp.agent_alias.agent_alias_status #=> String, one of "CREATING", "PREPARED", "FAILED", "UPDATING", "DELETING"
    #   resp.agent_alias.agent_id #=> String
    #   resp.agent_alias.client_token #=> String
    #   resp.agent_alias.created_at #=> Time
    #   resp.agent_alias.description #=> String
    #   resp.agent_alias.routing_configuration #=> Array
    #   resp.agent_alias.routing_configuration[0].agent_version #=> String
    #   resp.agent_alias.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/GetAgentAlias AWS API Documentation
    #
    # @overload get_agent_alias(params = {})
    # @param [Hash] params ({})
    def get_agent_alias(params = {}, options = {})
      req = build_request(:get_agent_alias, params)
      req.send_request(options)
    end

    # Gets information about a knowledge base associated with an agent.
    #
    # @option params [required, String] :agent_id
    #   The unique identifier of the agent with which the knowledge base is
    #   associated.
    #
    # @option params [required, String] :agent_version
    #   The version of the agent with which the knowledge base is associated.
    #
    # @option params [required, String] :knowledge_base_id
    #   The unique identifier of the knowledge base associated with the agent.
    #
    # @return [Types::GetAgentKnowledgeBaseResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAgentKnowledgeBaseResponse#agent_knowledge_base #agent_knowledge_base} => Types::AgentKnowledgeBase
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_agent_knowledge_base({
    #     agent_id: "Id", # required
    #     agent_version: "Version", # required
    #     knowledge_base_id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.agent_knowledge_base.agent_id #=> String
    #   resp.agent_knowledge_base.agent_version #=> String
    #   resp.agent_knowledge_base.created_at #=> Time
    #   resp.agent_knowledge_base.description #=> String
    #   resp.agent_knowledge_base.knowledge_base_id #=> String
    #   resp.agent_knowledge_base.knowledge_base_state #=> String, one of "ENABLED", "DISABLED"
    #   resp.agent_knowledge_base.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/GetAgentKnowledgeBase AWS API Documentation
    #
    # @overload get_agent_knowledge_base(params = {})
    # @param [Hash] params ({})
    def get_agent_knowledge_base(params = {}, options = {})
      req = build_request(:get_agent_knowledge_base, params)
      req.send_request(options)
    end

    # Gets details about a version of an agent.
    #
    # @option params [required, String] :agent_id
    #   The unique identifier of the agent.
    #
    # @option params [required, String] :agent_version
    #   The version of the agent.
    #
    # @return [Types::GetAgentVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAgentVersionResponse#agent_version #agent_version} => Types::AgentVersion
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_agent_version({
    #     agent_id: "Id", # required
    #     agent_version: "NumericalVersion", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.agent_version.agent_arn #=> String
    #   resp.agent_version.agent_id #=> String
    #   resp.agent_version.agent_name #=> String
    #   resp.agent_version.agent_resource_role_arn #=> String
    #   resp.agent_version.agent_status #=> String, one of "CREATING", "PREPARING", "PREPARED", "NOT_PREPARED", "DELETING", "FAILED", "VERSIONING", "UPDATING"
    #   resp.agent_version.created_at #=> Time
    #   resp.agent_version.customer_encryption_key_arn #=> String
    #   resp.agent_version.description #=> String
    #   resp.agent_version.failure_reasons #=> Array
    #   resp.agent_version.failure_reasons[0] #=> String
    #   resp.agent_version.foundation_model #=> String
    #   resp.agent_version.idle_session_ttl_in_seconds #=> Integer
    #   resp.agent_version.instruction #=> String
    #   resp.agent_version.prompt_override_configuration.override_lambda #=> String
    #   resp.agent_version.prompt_override_configuration.prompt_configurations #=> Array
    #   resp.agent_version.prompt_override_configuration.prompt_configurations[0].base_prompt_template #=> String
    #   resp.agent_version.prompt_override_configuration.prompt_configurations[0].inference_configuration.maximum_length #=> Integer
    #   resp.agent_version.prompt_override_configuration.prompt_configurations[0].inference_configuration.stop_sequences #=> Array
    #   resp.agent_version.prompt_override_configuration.prompt_configurations[0].inference_configuration.stop_sequences[0] #=> String
    #   resp.agent_version.prompt_override_configuration.prompt_configurations[0].inference_configuration.temperature #=> Float
    #   resp.agent_version.prompt_override_configuration.prompt_configurations[0].inference_configuration.top_k #=> Integer
    #   resp.agent_version.prompt_override_configuration.prompt_configurations[0].inference_configuration.top_p #=> Float
    #   resp.agent_version.prompt_override_configuration.prompt_configurations[0].parser_mode #=> String, one of "DEFAULT", "OVERRIDDEN"
    #   resp.agent_version.prompt_override_configuration.prompt_configurations[0].prompt_creation_mode #=> String, one of "DEFAULT", "OVERRIDDEN"
    #   resp.agent_version.prompt_override_configuration.prompt_configurations[0].prompt_state #=> String, one of "ENABLED", "DISABLED"
    #   resp.agent_version.prompt_override_configuration.prompt_configurations[0].prompt_type #=> String, one of "PRE_PROCESSING", "ORCHESTRATION", "POST_PROCESSING", "KNOWLEDGE_BASE_RESPONSE_GENERATION"
    #   resp.agent_version.recommended_actions #=> Array
    #   resp.agent_version.recommended_actions[0] #=> String
    #   resp.agent_version.updated_at #=> Time
    #   resp.agent_version.version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/GetAgentVersion AWS API Documentation
    #
    # @overload get_agent_version(params = {})
    # @param [Hash] params ({})
    def get_agent_version(params = {}, options = {})
      req = build_request(:get_agent_version, params)
      req.send_request(options)
    end

    # Gets information about a data source.
    #
    # @option params [required, String] :data_source_id
    #   The unique identifier of the data source.
    #
    # @option params [required, String] :knowledge_base_id
    #   The unique identifier of the knowledge base that the data source was
    #   added to.
    #
    # @return [Types::GetDataSourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDataSourceResponse#data_source #data_source} => Types::DataSource
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_data_source({
    #     data_source_id: "Id", # required
    #     knowledge_base_id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.data_source.created_at #=> Time
    #   resp.data_source.data_source_configuration.s3_configuration.bucket_arn #=> String
    #   resp.data_source.data_source_configuration.s3_configuration.inclusion_prefixes #=> Array
    #   resp.data_source.data_source_configuration.s3_configuration.inclusion_prefixes[0] #=> String
    #   resp.data_source.data_source_configuration.type #=> String, one of "S3"
    #   resp.data_source.data_source_id #=> String
    #   resp.data_source.description #=> String
    #   resp.data_source.knowledge_base_id #=> String
    #   resp.data_source.name #=> String
    #   resp.data_source.server_side_encryption_configuration.kms_key_arn #=> String
    #   resp.data_source.status #=> String, one of "AVAILABLE", "DELETING"
    #   resp.data_source.updated_at #=> Time
    #   resp.data_source.vector_ingestion_configuration.chunking_configuration.chunking_strategy #=> String, one of "FIXED_SIZE", "NONE"
    #   resp.data_source.vector_ingestion_configuration.chunking_configuration.fixed_size_chunking_configuration.max_tokens #=> Integer
    #   resp.data_source.vector_ingestion_configuration.chunking_configuration.fixed_size_chunking_configuration.overlap_percentage #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/GetDataSource AWS API Documentation
    #
    # @overload get_data_source(params = {})
    # @param [Hash] params ({})
    def get_data_source(params = {}, options = {})
      req = build_request(:get_data_source, params)
      req.send_request(options)
    end

    # Gets information about a ingestion job, in which a data source is
    # added to a knowledge base.
    #
    # @option params [required, String] :data_source_id
    #   The unique identifier of the data source in the ingestion job.
    #
    # @option params [required, String] :ingestion_job_id
    #   The unique identifier of the ingestion job.
    #
    # @option params [required, String] :knowledge_base_id
    #   The unique identifier of the knowledge base for which the ingestion
    #   job applies.
    #
    # @return [Types::GetIngestionJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetIngestionJobResponse#ingestion_job #ingestion_job} => Types::IngestionJob
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_ingestion_job({
    #     data_source_id: "Id", # required
    #     ingestion_job_id: "Id", # required
    #     knowledge_base_id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.ingestion_job.data_source_id #=> String
    #   resp.ingestion_job.description #=> String
    #   resp.ingestion_job.failure_reasons #=> Array
    #   resp.ingestion_job.failure_reasons[0] #=> String
    #   resp.ingestion_job.ingestion_job_id #=> String
    #   resp.ingestion_job.knowledge_base_id #=> String
    #   resp.ingestion_job.started_at #=> Time
    #   resp.ingestion_job.statistics.number_of_documents_deleted #=> Integer
    #   resp.ingestion_job.statistics.number_of_documents_failed #=> Integer
    #   resp.ingestion_job.statistics.number_of_documents_scanned #=> Integer
    #   resp.ingestion_job.statistics.number_of_metadata_documents_modified #=> Integer
    #   resp.ingestion_job.statistics.number_of_metadata_documents_scanned #=> Integer
    #   resp.ingestion_job.statistics.number_of_modified_documents_indexed #=> Integer
    #   resp.ingestion_job.statistics.number_of_new_documents_indexed #=> Integer
    #   resp.ingestion_job.status #=> String, one of "STARTING", "IN_PROGRESS", "COMPLETE", "FAILED"
    #   resp.ingestion_job.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/GetIngestionJob AWS API Documentation
    #
    # @overload get_ingestion_job(params = {})
    # @param [Hash] params ({})
    def get_ingestion_job(params = {}, options = {})
      req = build_request(:get_ingestion_job, params)
      req.send_request(options)
    end

    # Gets information about a knoweldge base.
    #
    # @option params [required, String] :knowledge_base_id
    #   The unique identifier of the knowledge base for which to get
    #   information.
    #
    # @return [Types::GetKnowledgeBaseResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetKnowledgeBaseResponse#knowledge_base #knowledge_base} => Types::KnowledgeBase
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_knowledge_base({
    #     knowledge_base_id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.knowledge_base.created_at #=> Time
    #   resp.knowledge_base.description #=> String
    #   resp.knowledge_base.failure_reasons #=> Array
    #   resp.knowledge_base.failure_reasons[0] #=> String
    #   resp.knowledge_base.knowledge_base_arn #=> String
    #   resp.knowledge_base.knowledge_base_configuration.type #=> String, one of "VECTOR"
    #   resp.knowledge_base.knowledge_base_configuration.vector_knowledge_base_configuration.embedding_model_arn #=> String
    #   resp.knowledge_base.knowledge_base_id #=> String
    #   resp.knowledge_base.name #=> String
    #   resp.knowledge_base.role_arn #=> String
    #   resp.knowledge_base.status #=> String, one of "CREATING", "ACTIVE", "DELETING", "UPDATING", "FAILED"
    #   resp.knowledge_base.storage_configuration.opensearch_serverless_configuration.collection_arn #=> String
    #   resp.knowledge_base.storage_configuration.opensearch_serverless_configuration.field_mapping.metadata_field #=> String
    #   resp.knowledge_base.storage_configuration.opensearch_serverless_configuration.field_mapping.text_field #=> String
    #   resp.knowledge_base.storage_configuration.opensearch_serverless_configuration.field_mapping.vector_field #=> String
    #   resp.knowledge_base.storage_configuration.opensearch_serverless_configuration.vector_index_name #=> String
    #   resp.knowledge_base.storage_configuration.pinecone_configuration.connection_string #=> String
    #   resp.knowledge_base.storage_configuration.pinecone_configuration.credentials_secret_arn #=> String
    #   resp.knowledge_base.storage_configuration.pinecone_configuration.field_mapping.metadata_field #=> String
    #   resp.knowledge_base.storage_configuration.pinecone_configuration.field_mapping.text_field #=> String
    #   resp.knowledge_base.storage_configuration.pinecone_configuration.namespace #=> String
    #   resp.knowledge_base.storage_configuration.rds_configuration.credentials_secret_arn #=> String
    #   resp.knowledge_base.storage_configuration.rds_configuration.database_name #=> String
    #   resp.knowledge_base.storage_configuration.rds_configuration.field_mapping.metadata_field #=> String
    #   resp.knowledge_base.storage_configuration.rds_configuration.field_mapping.primary_key_field #=> String
    #   resp.knowledge_base.storage_configuration.rds_configuration.field_mapping.text_field #=> String
    #   resp.knowledge_base.storage_configuration.rds_configuration.field_mapping.vector_field #=> String
    #   resp.knowledge_base.storage_configuration.rds_configuration.resource_arn #=> String
    #   resp.knowledge_base.storage_configuration.rds_configuration.table_name #=> String
    #   resp.knowledge_base.storage_configuration.redis_enterprise_cloud_configuration.credentials_secret_arn #=> String
    #   resp.knowledge_base.storage_configuration.redis_enterprise_cloud_configuration.endpoint #=> String
    #   resp.knowledge_base.storage_configuration.redis_enterprise_cloud_configuration.field_mapping.metadata_field #=> String
    #   resp.knowledge_base.storage_configuration.redis_enterprise_cloud_configuration.field_mapping.text_field #=> String
    #   resp.knowledge_base.storage_configuration.redis_enterprise_cloud_configuration.field_mapping.vector_field #=> String
    #   resp.knowledge_base.storage_configuration.redis_enterprise_cloud_configuration.vector_index_name #=> String
    #   resp.knowledge_base.storage_configuration.type #=> String, one of "OPENSEARCH_SERVERLESS", "PINECONE", "REDIS_ENTERPRISE_CLOUD", "RDS"
    #   resp.knowledge_base.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/GetKnowledgeBase AWS API Documentation
    #
    # @overload get_knowledge_base(params = {})
    # @param [Hash] params ({})
    def get_knowledge_base(params = {}, options = {})
      req = build_request(:get_knowledge_base, params)
      req.send_request(options)
    end

    # Lists the action groups for an agent and information about each one.
    #
    # @option params [required, String] :agent_id
    #   The unique identifier of the agent.
    #
    # @option params [required, String] :agent_version
    #   The version of the agent.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in the response. If the total
    #   number of results is greater than this value, use the token returned
    #   in the response in the `nextToken` field when making another request
    #   to return the next batch of results.
    #
    # @option params [String] :next_token
    #   If the total number of results is greater than the `maxResults` value
    #   provided in the request, enter the token returned in the `nextToken`
    #   field in the response in this field to return the next batch of
    #   results.
    #
    # @return [Types::ListAgentActionGroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAgentActionGroupsResponse#action_group_summaries #action_group_summaries} => Array&lt;Types::ActionGroupSummary&gt;
    #   * {Types::ListAgentActionGroupsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_agent_action_groups({
    #     agent_id: "Id", # required
    #     agent_version: "Version", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.action_group_summaries #=> Array
    #   resp.action_group_summaries[0].action_group_id #=> String
    #   resp.action_group_summaries[0].action_group_name #=> String
    #   resp.action_group_summaries[0].action_group_state #=> String, one of "ENABLED", "DISABLED"
    #   resp.action_group_summaries[0].description #=> String
    #   resp.action_group_summaries[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ListAgentActionGroups AWS API Documentation
    #
    # @overload list_agent_action_groups(params = {})
    # @param [Hash] params ({})
    def list_agent_action_groups(params = {}, options = {})
      req = build_request(:list_agent_action_groups, params)
      req.send_request(options)
    end

    # Lists the aliases of an agent and information about each one.
    #
    # @option params [required, String] :agent_id
    #   The unique identifier of the agent.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in the response. If the total
    #   number of results is greater than this value, use the token returned
    #   in the response in the `nextToken` field when making another request
    #   to return the next batch of results.
    #
    # @option params [String] :next_token
    #   If the total number of results is greater than the `maxResults` value
    #   provided in the request, enter the token returned in the `nextToken`
    #   field in the response in this field to return the next batch of
    #   results.
    #
    # @return [Types::ListAgentAliasesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAgentAliasesResponse#agent_alias_summaries #agent_alias_summaries} => Array&lt;Types::AgentAliasSummary&gt;
    #   * {Types::ListAgentAliasesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_agent_aliases({
    #     agent_id: "Id", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.agent_alias_summaries #=> Array
    #   resp.agent_alias_summaries[0].agent_alias_id #=> String
    #   resp.agent_alias_summaries[0].agent_alias_name #=> String
    #   resp.agent_alias_summaries[0].agent_alias_status #=> String, one of "CREATING", "PREPARED", "FAILED", "UPDATING", "DELETING"
    #   resp.agent_alias_summaries[0].created_at #=> Time
    #   resp.agent_alias_summaries[0].description #=> String
    #   resp.agent_alias_summaries[0].routing_configuration #=> Array
    #   resp.agent_alias_summaries[0].routing_configuration[0].agent_version #=> String
    #   resp.agent_alias_summaries[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ListAgentAliases AWS API Documentation
    #
    # @overload list_agent_aliases(params = {})
    # @param [Hash] params ({})
    def list_agent_aliases(params = {}, options = {})
      req = build_request(:list_agent_aliases, params)
      req.send_request(options)
    end

    # Lists knowledge bases associated with an agent and information about
    # each one.
    #
    # @option params [required, String] :agent_id
    #   The unique identifier of the agent for which to return information
    #   about knowledge bases associated with it.
    #
    # @option params [required, String] :agent_version
    #   The version of the agent for which to return information about
    #   knowledge bases associated with it.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in the response. If the total
    #   number of results is greater than this value, use the token returned
    #   in the response in the `nextToken` field when making another request
    #   to return the next batch of results.
    #
    # @option params [String] :next_token
    #   If the total number of results is greater than the `maxResults` value
    #   provided in the request, enter the token returned in the `nextToken`
    #   field in the response in this field to return the next batch of
    #   results.
    #
    # @return [Types::ListAgentKnowledgeBasesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAgentKnowledgeBasesResponse#agent_knowledge_base_summaries #agent_knowledge_base_summaries} => Array&lt;Types::AgentKnowledgeBaseSummary&gt;
    #   * {Types::ListAgentKnowledgeBasesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_agent_knowledge_bases({
    #     agent_id: "Id", # required
    #     agent_version: "Version", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.agent_knowledge_base_summaries #=> Array
    #   resp.agent_knowledge_base_summaries[0].description #=> String
    #   resp.agent_knowledge_base_summaries[0].knowledge_base_id #=> String
    #   resp.agent_knowledge_base_summaries[0].knowledge_base_state #=> String, one of "ENABLED", "DISABLED"
    #   resp.agent_knowledge_base_summaries[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ListAgentKnowledgeBases AWS API Documentation
    #
    # @overload list_agent_knowledge_bases(params = {})
    # @param [Hash] params ({})
    def list_agent_knowledge_bases(params = {}, options = {})
      req = build_request(:list_agent_knowledge_bases, params)
      req.send_request(options)
    end

    # Lists the versions of an agent and information about each version.
    #
    # @option params [required, String] :agent_id
    #   The unique identifier of the agent.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in the response. If the total
    #   number of results is greater than this value, use the token returned
    #   in the response in the `nextToken` field when making another request
    #   to return the next batch of results.
    #
    # @option params [String] :next_token
    #   If the total number of results is greater than the `maxResults` value
    #   provided in the request, enter the token returned in the `nextToken`
    #   field in the response in this field to return the next batch of
    #   results.
    #
    # @return [Types::ListAgentVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAgentVersionsResponse#agent_version_summaries #agent_version_summaries} => Array&lt;Types::AgentVersionSummary&gt;
    #   * {Types::ListAgentVersionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_agent_versions({
    #     agent_id: "Id", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.agent_version_summaries #=> Array
    #   resp.agent_version_summaries[0].agent_name #=> String
    #   resp.agent_version_summaries[0].agent_status #=> String, one of "CREATING", "PREPARING", "PREPARED", "NOT_PREPARED", "DELETING", "FAILED", "VERSIONING", "UPDATING"
    #   resp.agent_version_summaries[0].agent_version #=> String
    #   resp.agent_version_summaries[0].created_at #=> Time
    #   resp.agent_version_summaries[0].description #=> String
    #   resp.agent_version_summaries[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ListAgentVersions AWS API Documentation
    #
    # @overload list_agent_versions(params = {})
    # @param [Hash] params ({})
    def list_agent_versions(params = {}, options = {})
      req = build_request(:list_agent_versions, params)
      req.send_request(options)
    end

    # Lists the agents belonging to an account and information about each
    # agent.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in the response. If the total
    #   number of results is greater than this value, use the token returned
    #   in the response in the `nextToken` field when making another request
    #   to return the next batch of results.
    #
    # @option params [String] :next_token
    #   If the total number of results is greater than the `maxResults` value
    #   provided in the request, enter the token returned in the `nextToken`
    #   field in the response in this field to return the next batch of
    #   results.
    #
    # @return [Types::ListAgentsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAgentsResponse#agent_summaries #agent_summaries} => Array&lt;Types::AgentSummary&gt;
    #   * {Types::ListAgentsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_agents({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.agent_summaries #=> Array
    #   resp.agent_summaries[0].agent_id #=> String
    #   resp.agent_summaries[0].agent_name #=> String
    #   resp.agent_summaries[0].agent_status #=> String, one of "CREATING", "PREPARING", "PREPARED", "NOT_PREPARED", "DELETING", "FAILED", "VERSIONING", "UPDATING"
    #   resp.agent_summaries[0].description #=> String
    #   resp.agent_summaries[0].latest_agent_version #=> String
    #   resp.agent_summaries[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ListAgents AWS API Documentation
    #
    # @overload list_agents(params = {})
    # @param [Hash] params ({})
    def list_agents(params = {}, options = {})
      req = build_request(:list_agents, params)
      req.send_request(options)
    end

    # Lists the data sources in a knowledge base and information about each
    # one.
    #
    # @option params [required, String] :knowledge_base_id
    #   The unique identifier of the knowledge base for which to return a list
    #   of information.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in the response. If the total
    #   number of results is greater than this value, use the token returned
    #   in the response in the `nextToken` field when making another request
    #   to return the next batch of results.
    #
    # @option params [String] :next_token
    #   If the total number of results is greater than the `maxResults` value
    #   provided in the request, enter the token returned in the `nextToken`
    #   field in the response in this field to return the next batch of
    #   results.
    #
    # @return [Types::ListDataSourcesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDataSourcesResponse#data_source_summaries #data_source_summaries} => Array&lt;Types::DataSourceSummary&gt;
    #   * {Types::ListDataSourcesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_data_sources({
    #     knowledge_base_id: "Id", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.data_source_summaries #=> Array
    #   resp.data_source_summaries[0].data_source_id #=> String
    #   resp.data_source_summaries[0].description #=> String
    #   resp.data_source_summaries[0].knowledge_base_id #=> String
    #   resp.data_source_summaries[0].name #=> String
    #   resp.data_source_summaries[0].status #=> String, one of "AVAILABLE", "DELETING"
    #   resp.data_source_summaries[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ListDataSources AWS API Documentation
    #
    # @overload list_data_sources(params = {})
    # @param [Hash] params ({})
    def list_data_sources(params = {}, options = {})
      req = build_request(:list_data_sources, params)
      req.send_request(options)
    end

    # Lists the ingestion jobs for a data source and information about each
    # of them.
    #
    # @option params [required, String] :data_source_id
    #   The unique identifier of the data source for which to return ingestion
    #   jobs.
    #
    # @option params [Array<Types::IngestionJobFilter>] :filters
    #   Contains a definition of a filter for which to filter the results.
    #
    # @option params [required, String] :knowledge_base_id
    #   The unique identifier of the knowledge base for which to return
    #   ingestion jobs.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in the response. If the total
    #   number of results is greater than this value, use the token returned
    #   in the response in the `nextToken` field when making another request
    #   to return the next batch of results.
    #
    # @option params [String] :next_token
    #   If the total number of results is greater than the `maxResults` value
    #   provided in the request, enter the token returned in the `nextToken`
    #   field in the response in this field to return the next batch of
    #   results.
    #
    # @option params [Types::IngestionJobSortBy] :sort_by
    #   Contains details about how to sort the results.
    #
    # @return [Types::ListIngestionJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListIngestionJobsResponse#ingestion_job_summaries #ingestion_job_summaries} => Array&lt;Types::IngestionJobSummary&gt;
    #   * {Types::ListIngestionJobsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_ingestion_jobs({
    #     data_source_id: "Id", # required
    #     filters: [
    #       {
    #         attribute: "STATUS", # required, accepts STATUS
    #         operator: "EQ", # required, accepts EQ
    #         values: ["IngestionJobFilterValue"], # required
    #       },
    #     ],
    #     knowledge_base_id: "Id", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #     sort_by: {
    #       attribute: "STATUS", # required, accepts STATUS, STARTED_AT
    #       order: "ASCENDING", # required, accepts ASCENDING, DESCENDING
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.ingestion_job_summaries #=> Array
    #   resp.ingestion_job_summaries[0].data_source_id #=> String
    #   resp.ingestion_job_summaries[0].description #=> String
    #   resp.ingestion_job_summaries[0].ingestion_job_id #=> String
    #   resp.ingestion_job_summaries[0].knowledge_base_id #=> String
    #   resp.ingestion_job_summaries[0].started_at #=> Time
    #   resp.ingestion_job_summaries[0].statistics.number_of_documents_deleted #=> Integer
    #   resp.ingestion_job_summaries[0].statistics.number_of_documents_failed #=> Integer
    #   resp.ingestion_job_summaries[0].statistics.number_of_documents_scanned #=> Integer
    #   resp.ingestion_job_summaries[0].statistics.number_of_metadata_documents_modified #=> Integer
    #   resp.ingestion_job_summaries[0].statistics.number_of_metadata_documents_scanned #=> Integer
    #   resp.ingestion_job_summaries[0].statistics.number_of_modified_documents_indexed #=> Integer
    #   resp.ingestion_job_summaries[0].statistics.number_of_new_documents_indexed #=> Integer
    #   resp.ingestion_job_summaries[0].status #=> String, one of "STARTING", "IN_PROGRESS", "COMPLETE", "FAILED"
    #   resp.ingestion_job_summaries[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ListIngestionJobs AWS API Documentation
    #
    # @overload list_ingestion_jobs(params = {})
    # @param [Hash] params ({})
    def list_ingestion_jobs(params = {}, options = {})
      req = build_request(:list_ingestion_jobs, params)
      req.send_request(options)
    end

    # Lists the knowledge bases in an account and information about each of
    # them.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in the response. If the total
    #   number of results is greater than this value, use the token returned
    #   in the response in the `nextToken` field when making another request
    #   to return the next batch of results.
    #
    # @option params [String] :next_token
    #   If the total number of results is greater than the `maxResults` value
    #   provided in the request, enter the token returned in the `nextToken`
    #   field in the response in this field to return the next batch of
    #   results.
    #
    # @return [Types::ListKnowledgeBasesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListKnowledgeBasesResponse#knowledge_base_summaries #knowledge_base_summaries} => Array&lt;Types::KnowledgeBaseSummary&gt;
    #   * {Types::ListKnowledgeBasesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_knowledge_bases({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.knowledge_base_summaries #=> Array
    #   resp.knowledge_base_summaries[0].description #=> String
    #   resp.knowledge_base_summaries[0].knowledge_base_id #=> String
    #   resp.knowledge_base_summaries[0].name #=> String
    #   resp.knowledge_base_summaries[0].status #=> String, one of "CREATING", "ACTIVE", "DELETING", "UPDATING", "FAILED"
    #   resp.knowledge_base_summaries[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ListKnowledgeBases AWS API Documentation
    #
    # @overload list_knowledge_bases(params = {})
    # @param [Hash] params ({})
    def list_knowledge_bases(params = {}, options = {})
      req = build_request(:list_knowledge_bases, params)
      req.send_request(options)
    end

    # List all the tags for the resource you specify.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource for which to list tags.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "TaggableResourcesArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Creates a `DRAFT` version of the agent that can be used for internal
    # testing.
    #
    # @option params [required, String] :agent_id
    #   The unique identifier of the agent for which to create a `DRAFT`
    #   version.
    #
    # @return [Types::PrepareAgentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PrepareAgentResponse#agent_id #agent_id} => String
    #   * {Types::PrepareAgentResponse#agent_status #agent_status} => String
    #   * {Types::PrepareAgentResponse#agent_version #agent_version} => String
    #   * {Types::PrepareAgentResponse#prepared_at #prepared_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.prepare_agent({
    #     agent_id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.agent_id #=> String
    #   resp.agent_status #=> String, one of "CREATING", "PREPARING", "PREPARED", "NOT_PREPARED", "DELETING", "FAILED", "VERSIONING", "UPDATING"
    #   resp.agent_version #=> String
    #   resp.prepared_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/PrepareAgent AWS API Documentation
    #
    # @overload prepare_agent(params = {})
    # @param [Hash] params ({})
    def prepare_agent(params = {}, options = {})
      req = build_request(:prepare_agent, params)
      req.send_request(options)
    end

    # Begins an ingestion job, in which a data source is added to a
    # knowledge base.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If this token matches a previous
    #   request, Amazon Bedrock ignores the request, but does not return an
    #   error. For more information, see [Ensuring idempotency][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @option params [required, String] :data_source_id
    #   The unique identifier of the data source to ingest.
    #
    # @option params [String] :description
    #   A description of the ingestion job.
    #
    # @option params [required, String] :knowledge_base_id
    #   The unique identifier of the knowledge base to which to add the data
    #   source.
    #
    # @return [Types::StartIngestionJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartIngestionJobResponse#ingestion_job #ingestion_job} => Types::IngestionJob
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_ingestion_job({
    #     client_token: "ClientToken",
    #     data_source_id: "Id", # required
    #     description: "Description",
    #     knowledge_base_id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.ingestion_job.data_source_id #=> String
    #   resp.ingestion_job.description #=> String
    #   resp.ingestion_job.failure_reasons #=> Array
    #   resp.ingestion_job.failure_reasons[0] #=> String
    #   resp.ingestion_job.ingestion_job_id #=> String
    #   resp.ingestion_job.knowledge_base_id #=> String
    #   resp.ingestion_job.started_at #=> Time
    #   resp.ingestion_job.statistics.number_of_documents_deleted #=> Integer
    #   resp.ingestion_job.statistics.number_of_documents_failed #=> Integer
    #   resp.ingestion_job.statistics.number_of_documents_scanned #=> Integer
    #   resp.ingestion_job.statistics.number_of_metadata_documents_modified #=> Integer
    #   resp.ingestion_job.statistics.number_of_metadata_documents_scanned #=> Integer
    #   resp.ingestion_job.statistics.number_of_modified_documents_indexed #=> Integer
    #   resp.ingestion_job.statistics.number_of_new_documents_indexed #=> Integer
    #   resp.ingestion_job.status #=> String, one of "STARTING", "IN_PROGRESS", "COMPLETE", "FAILED"
    #   resp.ingestion_job.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/StartIngestionJob AWS API Documentation
    #
    # @overload start_ingestion_job(params = {})
    # @param [Hash] params ({})
    def start_ingestion_job(params = {}, options = {})
      req = build_request(:start_ingestion_job, params)
      req.send_request(options)
    end

    # Associate tags with a resource. For more information, see [Tagging
    # resources][1] in the Amazon Bedrock User Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource to tag.
    #
    # @option params [required, Hash<String,String>] :tags
    #   An object containing key-value pairs that define the tags to attach to
    #   the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "TaggableResourcesArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Remove tags from a resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource from which to remove
    #   tags.
    #
    # @option params [required, Array<String>] :tag_keys
    #   A list of keys of the tags to remove from the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "TaggableResourcesArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates the configuration of an agent.
    #
    # @option params [required, String] :agent_id
    #   The unique identifier of the agent.
    #
    # @option params [required, String] :agent_name
    #   Specifies a new name for the agent.
    #
    # @option params [required, String] :agent_resource_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role with permissions to
    #   invoke API operations on the agent.
    #
    # @option params [String] :customer_encryption_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key with which to encrypt
    #   the agent.
    #
    # @option params [String] :description
    #   Specifies a new description of the agent.
    #
    # @option params [required, String] :foundation_model
    #   Specifies a new foundation model to be used for orchestration by the
    #   agent.
    #
    # @option params [Integer] :idle_session_ttl_in_seconds
    #   The number of seconds for which Amazon Bedrock keeps information about
    #   a user's conversation with the agent.
    #
    #   A user interaction remains active for the amount of time specified. If
    #   no conversation occurs during this time, the session expires and
    #   Amazon Bedrock deletes any data provided before the timeout.
    #
    # @option params [String] :instruction
    #   Specifies new instructions that tell the agent what it should do and
    #   how it should interact with users.
    #
    # @option params [Types::PromptOverrideConfiguration] :prompt_override_configuration
    #   Contains configurations to override prompts in different parts of an
    #   agent sequence. For more information, see [Advanced prompts][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/advanced-prompts.html
    #
    # @return [Types::UpdateAgentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAgentResponse#agent #agent} => Types::Agent
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_agent({
    #     agent_id: "Id", # required
    #     agent_name: "Name", # required
    #     agent_resource_role_arn: "AgentRoleArn", # required
    #     customer_encryption_key_arn: "KmsKeyArn",
    #     description: "Description",
    #     foundation_model: "ModelIdentifier", # required
    #     idle_session_ttl_in_seconds: 1,
    #     instruction: "Instruction",
    #     prompt_override_configuration: {
    #       override_lambda: "LambdaArn",
    #       prompt_configurations: [ # required
    #         {
    #           base_prompt_template: "BasePromptTemplate",
    #           inference_configuration: {
    #             maximum_length: 1,
    #             stop_sequences: ["String"],
    #             temperature: 1.0,
    #             top_k: 1,
    #             top_p: 1.0,
    #           },
    #           parser_mode: "DEFAULT", # accepts DEFAULT, OVERRIDDEN
    #           prompt_creation_mode: "DEFAULT", # accepts DEFAULT, OVERRIDDEN
    #           prompt_state: "ENABLED", # accepts ENABLED, DISABLED
    #           prompt_type: "PRE_PROCESSING", # accepts PRE_PROCESSING, ORCHESTRATION, POST_PROCESSING, KNOWLEDGE_BASE_RESPONSE_GENERATION
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.agent.agent_arn #=> String
    #   resp.agent.agent_id #=> String
    #   resp.agent.agent_name #=> String
    #   resp.agent.agent_resource_role_arn #=> String
    #   resp.agent.agent_status #=> String, one of "CREATING", "PREPARING", "PREPARED", "NOT_PREPARED", "DELETING", "FAILED", "VERSIONING", "UPDATING"
    #   resp.agent.agent_version #=> String
    #   resp.agent.client_token #=> String
    #   resp.agent.created_at #=> Time
    #   resp.agent.customer_encryption_key_arn #=> String
    #   resp.agent.description #=> String
    #   resp.agent.failure_reasons #=> Array
    #   resp.agent.failure_reasons[0] #=> String
    #   resp.agent.foundation_model #=> String
    #   resp.agent.idle_session_ttl_in_seconds #=> Integer
    #   resp.agent.instruction #=> String
    #   resp.agent.prepared_at #=> Time
    #   resp.agent.prompt_override_configuration.override_lambda #=> String
    #   resp.agent.prompt_override_configuration.prompt_configurations #=> Array
    #   resp.agent.prompt_override_configuration.prompt_configurations[0].base_prompt_template #=> String
    #   resp.agent.prompt_override_configuration.prompt_configurations[0].inference_configuration.maximum_length #=> Integer
    #   resp.agent.prompt_override_configuration.prompt_configurations[0].inference_configuration.stop_sequences #=> Array
    #   resp.agent.prompt_override_configuration.prompt_configurations[0].inference_configuration.stop_sequences[0] #=> String
    #   resp.agent.prompt_override_configuration.prompt_configurations[0].inference_configuration.temperature #=> Float
    #   resp.agent.prompt_override_configuration.prompt_configurations[0].inference_configuration.top_k #=> Integer
    #   resp.agent.prompt_override_configuration.prompt_configurations[0].inference_configuration.top_p #=> Float
    #   resp.agent.prompt_override_configuration.prompt_configurations[0].parser_mode #=> String, one of "DEFAULT", "OVERRIDDEN"
    #   resp.agent.prompt_override_configuration.prompt_configurations[0].prompt_creation_mode #=> String, one of "DEFAULT", "OVERRIDDEN"
    #   resp.agent.prompt_override_configuration.prompt_configurations[0].prompt_state #=> String, one of "ENABLED", "DISABLED"
    #   resp.agent.prompt_override_configuration.prompt_configurations[0].prompt_type #=> String, one of "PRE_PROCESSING", "ORCHESTRATION", "POST_PROCESSING", "KNOWLEDGE_BASE_RESPONSE_GENERATION"
    #   resp.agent.recommended_actions #=> Array
    #   resp.agent.recommended_actions[0] #=> String
    #   resp.agent.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/UpdateAgent AWS API Documentation
    #
    # @overload update_agent(params = {})
    # @param [Hash] params ({})
    def update_agent(params = {}, options = {})
      req = build_request(:update_agent, params)
      req.send_request(options)
    end

    # Updates the configuration for an action group for an agent.
    #
    # @option params [Types::ActionGroupExecutor] :action_group_executor
    #   The Amazon Resource Name (ARN) of the Lambda function containing the
    #   business logic that is carried out upon invoking the action.
    #
    # @option params [required, String] :action_group_id
    #   The unique identifier of the action group.
    #
    # @option params [required, String] :action_group_name
    #   Specifies a new name for the action group.
    #
    # @option params [String] :action_group_state
    #   Specifies whether the action group is available for the agent to
    #   invoke or not when sending an [InvokeAgent][1] request.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html
    #
    # @option params [required, String] :agent_id
    #   The unique identifier of the agent for which to update the action
    #   group.
    #
    # @option params [required, String] :agent_version
    #   The unique identifier of the agent version for which to update the
    #   action group.
    #
    # @option params [Types::APISchema] :api_schema
    #   Contains either details about the S3 object containing the OpenAPI
    #   schema for the action group or the JSON or YAML-formatted payload
    #   defining the schema. For more information, see [Action group OpenAPI
    #   schemas][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/agents-api-schema.html
    #
    # @option params [String] :description
    #   Specifies a new name for the action group.
    #
    # @option params [String] :parent_action_group_signature
    #   To allow your agent to request the user for additional information
    #   when trying to complete a task, set this field to `AMAZON.UserInput`.
    #   You must leave the `description`, `apiSchema`, and
    #   `actionGroupExecutor` fields blank for this action group.
    #
    #   During orchestration, if your agent determines that it needs to invoke
    #   an API in an action group, but doesn't have enough information to
    #   complete the API request, it will invoke this action group instead and
    #   return an [Observation][1] reprompting the user for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_Observation.html
    #
    # @return [Types::UpdateAgentActionGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAgentActionGroupResponse#agent_action_group #agent_action_group} => Types::AgentActionGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_agent_action_group({
    #     action_group_executor: {
    #       lambda: "LambdaArn",
    #     },
    #     action_group_id: "Id", # required
    #     action_group_name: "Name", # required
    #     action_group_state: "ENABLED", # accepts ENABLED, DISABLED
    #     agent_id: "Id", # required
    #     agent_version: "DraftVersion", # required
    #     api_schema: {
    #       payload: "Payload",
    #       s3: {
    #         s3_bucket_name: "S3BucketName",
    #         s3_object_key: "S3ObjectKey",
    #       },
    #     },
    #     description: "Description",
    #     parent_action_group_signature: "AMAZON.UserInput", # accepts AMAZON.UserInput
    #   })
    #
    # @example Response structure
    #
    #   resp.agent_action_group.action_group_executor.lambda #=> String
    #   resp.agent_action_group.action_group_id #=> String
    #   resp.agent_action_group.action_group_name #=> String
    #   resp.agent_action_group.action_group_state #=> String, one of "ENABLED", "DISABLED"
    #   resp.agent_action_group.agent_id #=> String
    #   resp.agent_action_group.agent_version #=> String
    #   resp.agent_action_group.api_schema.payload #=> String
    #   resp.agent_action_group.api_schema.s3.s3_bucket_name #=> String
    #   resp.agent_action_group.api_schema.s3.s3_object_key #=> String
    #   resp.agent_action_group.client_token #=> String
    #   resp.agent_action_group.created_at #=> Time
    #   resp.agent_action_group.description #=> String
    #   resp.agent_action_group.parent_action_signature #=> String, one of "AMAZON.UserInput"
    #   resp.agent_action_group.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/UpdateAgentActionGroup AWS API Documentation
    #
    # @overload update_agent_action_group(params = {})
    # @param [Hash] params ({})
    def update_agent_action_group(params = {}, options = {})
      req = build_request(:update_agent_action_group, params)
      req.send_request(options)
    end

    # Updates configurations for an alias of an agent.
    #
    # @option params [required, String] :agent_alias_id
    #   The unique identifier of the alias.
    #
    # @option params [required, String] :agent_alias_name
    #   Specifies a new name for the alias.
    #
    # @option params [required, String] :agent_id
    #   The unique identifier of the agent.
    #
    # @option params [String] :description
    #   Specifies a new description for the alias.
    #
    # @option params [Array<Types::AgentAliasRoutingConfigurationListItem>] :routing_configuration
    #   Contains details about the routing configuration of the alias.
    #
    # @return [Types::UpdateAgentAliasResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAgentAliasResponse#agent_alias #agent_alias} => Types::AgentAlias
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_agent_alias({
    #     agent_alias_id: "AgentAliasId", # required
    #     agent_alias_name: "Name", # required
    #     agent_id: "Id", # required
    #     description: "Description",
    #     routing_configuration: [
    #       {
    #         agent_version: "Version", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.agent_alias.agent_alias_arn #=> String
    #   resp.agent_alias.agent_alias_history_events #=> Array
    #   resp.agent_alias.agent_alias_history_events[0].end_date #=> Time
    #   resp.agent_alias.agent_alias_history_events[0].routing_configuration #=> Array
    #   resp.agent_alias.agent_alias_history_events[0].routing_configuration[0].agent_version #=> String
    #   resp.agent_alias.agent_alias_history_events[0].start_date #=> Time
    #   resp.agent_alias.agent_alias_id #=> String
    #   resp.agent_alias.agent_alias_name #=> String
    #   resp.agent_alias.agent_alias_status #=> String, one of "CREATING", "PREPARED", "FAILED", "UPDATING", "DELETING"
    #   resp.agent_alias.agent_id #=> String
    #   resp.agent_alias.client_token #=> String
    #   resp.agent_alias.created_at #=> Time
    #   resp.agent_alias.description #=> String
    #   resp.agent_alias.routing_configuration #=> Array
    #   resp.agent_alias.routing_configuration[0].agent_version #=> String
    #   resp.agent_alias.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/UpdateAgentAlias AWS API Documentation
    #
    # @overload update_agent_alias(params = {})
    # @param [Hash] params ({})
    def update_agent_alias(params = {}, options = {})
      req = build_request(:update_agent_alias, params)
      req.send_request(options)
    end

    # Updates the configuration for a knowledge base that has been
    # associated with an agent.
    #
    # @option params [required, String] :agent_id
    #   The unique identifier of the agent associated with the knowledge base
    #   that you want to update.
    #
    # @option params [required, String] :agent_version
    #   The version of the agent associated with the knowledge base that you
    #   want to update.
    #
    # @option params [String] :description
    #   Specifies a new description for the knowledge base associated with an
    #   agent.
    #
    # @option params [required, String] :knowledge_base_id
    #   The unique identifier of the knowledge base that has been associated
    #   with an agent.
    #
    # @option params [String] :knowledge_base_state
    #   Specifies whether the agent uses the knowledge base or not when
    #   sending an [InvokeAgent][1] request.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html
    #
    # @return [Types::UpdateAgentKnowledgeBaseResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAgentKnowledgeBaseResponse#agent_knowledge_base #agent_knowledge_base} => Types::AgentKnowledgeBase
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_agent_knowledge_base({
    #     agent_id: "Id", # required
    #     agent_version: "DraftVersion", # required
    #     description: "Description",
    #     knowledge_base_id: "Id", # required
    #     knowledge_base_state: "ENABLED", # accepts ENABLED, DISABLED
    #   })
    #
    # @example Response structure
    #
    #   resp.agent_knowledge_base.agent_id #=> String
    #   resp.agent_knowledge_base.agent_version #=> String
    #   resp.agent_knowledge_base.created_at #=> Time
    #   resp.agent_knowledge_base.description #=> String
    #   resp.agent_knowledge_base.knowledge_base_id #=> String
    #   resp.agent_knowledge_base.knowledge_base_state #=> String, one of "ENABLED", "DISABLED"
    #   resp.agent_knowledge_base.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/UpdateAgentKnowledgeBase AWS API Documentation
    #
    # @overload update_agent_knowledge_base(params = {})
    # @param [Hash] params ({})
    def update_agent_knowledge_base(params = {}, options = {})
      req = build_request(:update_agent_knowledge_base, params)
      req.send_request(options)
    end

    # Updates configurations for a data source.
    #
    # You can't change the `chunkingConfiguration` after you create the
    # data source. Specify the existing `chunkingConfiguration`.
    #
    # @option params [required, Types::DataSourceConfiguration] :data_source_configuration
    #   Contains details about the storage configuration of the data source.
    #
    # @option params [required, String] :data_source_id
    #   The unique identifier of the data source.
    #
    # @option params [String] :description
    #   Specifies a new description for the data source.
    #
    # @option params [required, String] :knowledge_base_id
    #   The unique identifier of the knowledge base to which the data source
    #   belongs.
    #
    # @option params [required, String] :name
    #   Specifies a new name for the data source.
    #
    # @option params [Types::ServerSideEncryptionConfiguration] :server_side_encryption_configuration
    #   Contains details about server-side encryption of the data source.
    #
    # @option params [Types::VectorIngestionConfiguration] :vector_ingestion_configuration
    #   Contains details about how to ingest the documents in the data source.
    #
    # @return [Types::UpdateDataSourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDataSourceResponse#data_source #data_source} => Types::DataSource
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_data_source({
    #     data_source_configuration: { # required
    #       s3_configuration: {
    #         bucket_arn: "S3BucketArn", # required
    #         inclusion_prefixes: ["S3Prefix"],
    #       },
    #       type: "S3", # required, accepts S3
    #     },
    #     data_source_id: "Id", # required
    #     description: "Description",
    #     knowledge_base_id: "Id", # required
    #     name: "Name", # required
    #     server_side_encryption_configuration: {
    #       kms_key_arn: "KmsKeyArn",
    #     },
    #     vector_ingestion_configuration: {
    #       chunking_configuration: {
    #         chunking_strategy: "FIXED_SIZE", # required, accepts FIXED_SIZE, NONE
    #         fixed_size_chunking_configuration: {
    #           max_tokens: 1, # required
    #           overlap_percentage: 1, # required
    #         },
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.data_source.created_at #=> Time
    #   resp.data_source.data_source_configuration.s3_configuration.bucket_arn #=> String
    #   resp.data_source.data_source_configuration.s3_configuration.inclusion_prefixes #=> Array
    #   resp.data_source.data_source_configuration.s3_configuration.inclusion_prefixes[0] #=> String
    #   resp.data_source.data_source_configuration.type #=> String, one of "S3"
    #   resp.data_source.data_source_id #=> String
    #   resp.data_source.description #=> String
    #   resp.data_source.knowledge_base_id #=> String
    #   resp.data_source.name #=> String
    #   resp.data_source.server_side_encryption_configuration.kms_key_arn #=> String
    #   resp.data_source.status #=> String, one of "AVAILABLE", "DELETING"
    #   resp.data_source.updated_at #=> Time
    #   resp.data_source.vector_ingestion_configuration.chunking_configuration.chunking_strategy #=> String, one of "FIXED_SIZE", "NONE"
    #   resp.data_source.vector_ingestion_configuration.chunking_configuration.fixed_size_chunking_configuration.max_tokens #=> Integer
    #   resp.data_source.vector_ingestion_configuration.chunking_configuration.fixed_size_chunking_configuration.overlap_percentage #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/UpdateDataSource AWS API Documentation
    #
    # @overload update_data_source(params = {})
    # @param [Hash] params ({})
    def update_data_source(params = {}, options = {})
      req = build_request(:update_data_source, params)
      req.send_request(options)
    end

    # Updates the configuration of a knowledge base with the fields that you
    # specify. Because all fields will be overwritten, you must include the
    # same values for fields that you want to keep the same.
    #
    # You can change the following fields:
    #
    # * `name`
    #
    # * `description`
    #
    # * `roleArn`
    #
    # You can't change the `knowledgeBaseConfiguration` or
    # `storageConfiguration` fields, so you must specify the same
    # configurations as when you created the knowledge base. You can send a
    # [GetKnowledgeBase][1] request and copy the same configurations.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_GetKnowledgeBase.html
    #
    # @option params [String] :description
    #   Specifies a new description for the knowledge base.
    #
    # @option params [required, Types::KnowledgeBaseConfiguration] :knowledge_base_configuration
    #   Specifies the configuration for the embeddings model used for the
    #   knowledge base. You must use the same configuration as when the
    #   knowledge base was created.
    #
    # @option params [required, String] :knowledge_base_id
    #   The unique identifier of the knowledge base to update.
    #
    # @option params [required, String] :name
    #   Specifies a new name for the knowledge base.
    #
    # @option params [required, String] :role_arn
    #   Specifies a different Amazon Resource Name (ARN) of the IAM role with
    #   permissions to invoke API operations on the knowledge base.
    #
    # @option params [required, Types::StorageConfiguration] :storage_configuration
    #   Specifies the configuration for the vector store used for the
    #   knowledge base. You must use the same configuration as when the
    #   knowledge base was created.
    #
    # @return [Types::UpdateKnowledgeBaseResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateKnowledgeBaseResponse#knowledge_base #knowledge_base} => Types::KnowledgeBase
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_knowledge_base({
    #     description: "Description",
    #     knowledge_base_configuration: { # required
    #       type: "VECTOR", # required, accepts VECTOR
    #       vector_knowledge_base_configuration: {
    #         embedding_model_arn: "BedrockEmbeddingModelArn", # required
    #       },
    #     },
    #     knowledge_base_id: "Id", # required
    #     name: "Name", # required
    #     role_arn: "KnowledgeBaseRoleArn", # required
    #     storage_configuration: { # required
    #       opensearch_serverless_configuration: {
    #         collection_arn: "OpenSearchServerlessCollectionArn", # required
    #         field_mapping: { # required
    #           metadata_field: "FieldName", # required
    #           text_field: "FieldName", # required
    #           vector_field: "FieldName", # required
    #         },
    #         vector_index_name: "OpenSearchServerlessIndexName", # required
    #       },
    #       pinecone_configuration: {
    #         connection_string: "PineconeConnectionString", # required
    #         credentials_secret_arn: "SecretArn", # required
    #         field_mapping: { # required
    #           metadata_field: "FieldName", # required
    #           text_field: "FieldName", # required
    #         },
    #         namespace: "PineconeNamespace",
    #       },
    #       rds_configuration: {
    #         credentials_secret_arn: "SecretArn", # required
    #         database_name: "RdsDatabaseName", # required
    #         field_mapping: { # required
    #           metadata_field: "ColumnName", # required
    #           primary_key_field: "ColumnName", # required
    #           text_field: "ColumnName", # required
    #           vector_field: "ColumnName", # required
    #         },
    #         resource_arn: "RdsArn", # required
    #         table_name: "RdsTableName", # required
    #       },
    #       redis_enterprise_cloud_configuration: {
    #         credentials_secret_arn: "SecretArn", # required
    #         endpoint: "RedisEnterpriseCloudEndpoint", # required
    #         field_mapping: { # required
    #           metadata_field: "FieldName", # required
    #           text_field: "FieldName", # required
    #           vector_field: "FieldName", # required
    #         },
    #         vector_index_name: "RedisEnterpriseCloudIndexName", # required
    #       },
    #       type: "OPENSEARCH_SERVERLESS", # required, accepts OPENSEARCH_SERVERLESS, PINECONE, REDIS_ENTERPRISE_CLOUD, RDS
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.knowledge_base.created_at #=> Time
    #   resp.knowledge_base.description #=> String
    #   resp.knowledge_base.failure_reasons #=> Array
    #   resp.knowledge_base.failure_reasons[0] #=> String
    #   resp.knowledge_base.knowledge_base_arn #=> String
    #   resp.knowledge_base.knowledge_base_configuration.type #=> String, one of "VECTOR"
    #   resp.knowledge_base.knowledge_base_configuration.vector_knowledge_base_configuration.embedding_model_arn #=> String
    #   resp.knowledge_base.knowledge_base_id #=> String
    #   resp.knowledge_base.name #=> String
    #   resp.knowledge_base.role_arn #=> String
    #   resp.knowledge_base.status #=> String, one of "CREATING", "ACTIVE", "DELETING", "UPDATING", "FAILED"
    #   resp.knowledge_base.storage_configuration.opensearch_serverless_configuration.collection_arn #=> String
    #   resp.knowledge_base.storage_configuration.opensearch_serverless_configuration.field_mapping.metadata_field #=> String
    #   resp.knowledge_base.storage_configuration.opensearch_serverless_configuration.field_mapping.text_field #=> String
    #   resp.knowledge_base.storage_configuration.opensearch_serverless_configuration.field_mapping.vector_field #=> String
    #   resp.knowledge_base.storage_configuration.opensearch_serverless_configuration.vector_index_name #=> String
    #   resp.knowledge_base.storage_configuration.pinecone_configuration.connection_string #=> String
    #   resp.knowledge_base.storage_configuration.pinecone_configuration.credentials_secret_arn #=> String
    #   resp.knowledge_base.storage_configuration.pinecone_configuration.field_mapping.metadata_field #=> String
    #   resp.knowledge_base.storage_configuration.pinecone_configuration.field_mapping.text_field #=> String
    #   resp.knowledge_base.storage_configuration.pinecone_configuration.namespace #=> String
    #   resp.knowledge_base.storage_configuration.rds_configuration.credentials_secret_arn #=> String
    #   resp.knowledge_base.storage_configuration.rds_configuration.database_name #=> String
    #   resp.knowledge_base.storage_configuration.rds_configuration.field_mapping.metadata_field #=> String
    #   resp.knowledge_base.storage_configuration.rds_configuration.field_mapping.primary_key_field #=> String
    #   resp.knowledge_base.storage_configuration.rds_configuration.field_mapping.text_field #=> String
    #   resp.knowledge_base.storage_configuration.rds_configuration.field_mapping.vector_field #=> String
    #   resp.knowledge_base.storage_configuration.rds_configuration.resource_arn #=> String
    #   resp.knowledge_base.storage_configuration.rds_configuration.table_name #=> String
    #   resp.knowledge_base.storage_configuration.redis_enterprise_cloud_configuration.credentials_secret_arn #=> String
    #   resp.knowledge_base.storage_configuration.redis_enterprise_cloud_configuration.endpoint #=> String
    #   resp.knowledge_base.storage_configuration.redis_enterprise_cloud_configuration.field_mapping.metadata_field #=> String
    #   resp.knowledge_base.storage_configuration.redis_enterprise_cloud_configuration.field_mapping.text_field #=> String
    #   resp.knowledge_base.storage_configuration.redis_enterprise_cloud_configuration.field_mapping.vector_field #=> String
    #   resp.knowledge_base.storage_configuration.redis_enterprise_cloud_configuration.vector_index_name #=> String
    #   resp.knowledge_base.storage_configuration.type #=> String, one of "OPENSEARCH_SERVERLESS", "PINECONE", "REDIS_ENTERPRISE_CLOUD", "RDS"
    #   resp.knowledge_base.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/UpdateKnowledgeBase AWS API Documentation
    #
    # @overload update_knowledge_base(params = {})
    # @param [Hash] params ({})
    def update_knowledge_base(params = {}, options = {})
      req = build_request(:update_knowledge_base, params)
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
      context[:gem_name] = 'aws-sdk-bedrockagent'
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
