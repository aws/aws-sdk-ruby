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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:bedrockagentcorecontrol)

module Aws::BedrockAgentCoreControl
  # An API client for Aws::BedrockAgentCoreControl.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AmazonBedrockAgentCoreControl
    @identifier = :bedrockagentcorecontrol

    add_plugin(::Aws::BedrockAgentCoreControl::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::BedrockAgentCoreControl::EndpointProvider)
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

    # <p>Creates an Amazon Bedrock AgentCore Runtime.</p>
    # @param [Hash, Types::CreateAgentRuntimeRequest] params
    # @option params [String] :agent_runtime_name
    #   <p>The name of the AgentCore Runtime.</p>
    # @option params [String] :description
    #   <p>The description of the AgentCore Runtime.</p>
    # @option params [Types::AgentRuntimeArtifact] :agent_runtime_artifact
    #   <p>The artifact of the AgentCore Runtime.</p>
    # @option params [String] :role_arn
    #   <p>The IAM role ARN that provides permissions for the AgentCore Runtime.</p>
    # @option params [Types::NetworkConfiguration] :network_configuration
    #   <p>The network configuration for the AgentCore Runtime.</p>
    # @option params [Types::ProtocolConfiguration] :protocol_configuration
    #   <p>The protocol configuration for an agent runtime. This structure defines how the agent runtime communicates with clients.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure idempotency of the request.</p>
    # @option params [Hash<String, String>] :environment_variables
    #   <p>Environment variables to set in the AgentCore Runtime environment.</p>
    # @option params [Types::AuthorizerConfiguration] :authorizer_configuration
    #   <p>The authorizer configuration for the AgentCore Runtime.</p>
    # @option params [Types::RequestHeaderConfiguration] :request_header_configuration
    #   <p>Configuration for HTTP request headers that will be passed through to the runtime.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A map of tag keys and values to assign to the agent runtime. Tags enable you to categorize your resources in different ways, for example, by purpose, owner, or environment.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_runtime_name: "AgentRuntimeName", # required
    #     description: "Description",
    #     agent_runtime_artifact: { # required
    #       # One of:
    #       container_configuration: {
    #         container_uri: "RuntimeContainerUri", # required
    #       }
    #     },
    #     role_arn: "RoleArn", # required
    #     network_configuration: { # required
    #       network_mode: "PUBLIC" # One of: ["PUBLIC", "VPC"], # required
    #       network_mode_config: {
    #         security_groups: ["SecurityGroupId"], # required
    #         subnets: ["SubnetId"], # required
    #       }
    #     },
    #     protocol_configuration: {
    #       server_protocol: "MCP" # One of: ["MCP", "HTTP"], # required
    #     },
    #     client_token: "ClientToken",
    #     environment_variables: {
    #       "EnvironmentVariableKey" => "EnvironmentVariableValue"
    #     },
    #     authorizer_configuration: {
    #       # One of:
    #       custom_jwt_authorizer: {
    #         discovery_url: "DiscoveryUrl", # required
    #         allowed_audience: ["AllowedAudience"],
    #         allowed_clients: ["AllowedClient"]
    #       }
    #     },
    #     request_header_configuration: {
    #       # One of:
    #       request_header_allowlist: ["HeaderName"]
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_agent_runtime(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     agent_runtime_arn: "AgentRuntimeArn", # required
    #     workload_identity_details: {
    #       workload_identity_arn: "WorkloadIdentityArn", # required
    #     },
    #     agent_runtime_id: "AgentRuntimeId", # required
    #     agent_runtime_version: "AgentRuntimeVersion", # required
    #     created_at: Time.now, # required
    #     status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "READY", "DELETING"], # required
    #   }
    # @return [Types::CreateAgentRuntimeResponse]
    def create_agent_runtime(params = {}, options = {})
      request = build_request(:create_agent_runtime, params)
      request.send_request(options)
    end

    # <p>Creates an AgentCore Runtime endpoint.</p>
    # @param [Hash, Types::CreateAgentRuntimeEndpointRequest] params
    # @option params [String] :agent_runtime_id
    #   <p>The unique identifier of the AgentCore Runtime to create an endpoint for.</p>
    # @option params [String] :name
    #   <p>The name of the AgentCore Runtime endpoint.</p>
    # @option params [String] :agent_runtime_version
    #   <p>The version of the AgentCore Runtime to use for the endpoint.</p>
    # @option params [String] :description
    #   <p>The description of the AgentCore Runtime endpoint.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure idempotency of the request.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A map of tag keys and values to assign to the agent runtime endpoint. Tags enable you to categorize your resources in different ways, for example, by purpose, owner, or environment.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_runtime_id: "AgentRuntimeId", # required
    #     name: "EndpointName", # required
    #     agent_runtime_version: "AgentRuntimeVersion",
    #     description: "AgentEndpointDescription",
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_agent_runtime_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     target_version: "AgentRuntimeVersion", # required
    #     agent_runtime_endpoint_arn: "AgentRuntimeEndpointArn", # required
    #     agent_runtime_arn: "AgentRuntimeArn", # required
    #     status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "READY", "DELETING"], # required
    #     created_at: Time.now, # required
    #   }
    # @return [Types::CreateAgentRuntimeEndpointResponse]
    def create_agent_runtime_endpoint(params = {}, options = {})
      request = build_request(:create_agent_runtime_endpoint, params)
      request.send_request(options)
    end

    # <p>Creates a new API key credential provider.</p>
    # @param [Hash, Types::CreateApiKeyCredentialProviderRequest] params
    # @option params [String] :name
    #   <p>The name of the API key credential provider. The name must be unique within your account.</p>
    # @option params [String] :api_key
    #   <p>The API key to use for authentication. This value is encrypted and stored securely.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "CredentialProviderName", # required
    #     api_key: "ApiKeyType", # required
    #   }
    #   options = {}
    #   response = client.create_api_key_credential_provider(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     api_key_secret_arn: { # required
    #       secret_arn: "SecretArn", # required
    #     },
    #     name: "CredentialProviderName", # required
    #     credential_provider_arn: "ApiKeyCredentialProviderArnType", # required
    #   }
    # @return [Types::CreateApiKeyCredentialProviderResponse]
    def create_api_key_credential_provider(params = {}, options = {})
      request = build_request(:create_api_key_credential_provider, params)
      request.send_request(options)
    end

    # <p>Creates a custom browser.</p>
    # @param [Hash, Types::CreateBrowserRequest] params
    # @option params [String] :name
    #   <p>The name of the browser. The name must be unique within your account.</p>
    # @option params [String] :description
    #   <p>The description of the browser.</p>
    # @option params [String] :execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that provides permissions for the browser to access Amazon Web Services services.</p>
    # @option params [Types::BrowserNetworkConfiguration] :network_configuration
    #   <p>The network configuration for the browser. This configuration specifies the network mode for the browser.</p>
    # @option params [Types::RecordingConfig] :recording
    #   <p>The recording configuration for the browser. When enabled, browser sessions are recorded and stored in the specified Amazon S3 location.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure that the operation completes no more than one time. If this token matches a previous request, Amazon Bedrock ignores the request but does not return an error.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A map of tag keys and values to assign to the browser. Tags enable you to categorize your resources in different ways, for example, by purpose, owner, or environment.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "SandboxName", # required
    #     description: "Description",
    #     execution_role_arn: "RoleArn",
    #     network_configuration: { # required
    #       network_mode: "PUBLIC" # One of: ["PUBLIC", "VPC"], # required
    #       vpc_config: {
    #         security_groups: ["SecurityGroupId"], # required
    #         subnets: ["SubnetId"], # required
    #       }
    #     },
    #     recording: {
    #       enabled: false,
    #       s3_location: {
    #         bucket: "String", # required
    #         prefix: "String", # required
    #       }
    #     },
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_browser(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     browser_id: "BrowserId", # required
    #     browser_arn: "BrowserArn", # required
    #     created_at: Time.now, # required
    #     status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "READY", "DELETING", "DELETE_FAILED", "DELETED"], # required
    #   }
    # @return [Types::CreateBrowserResponse]
    def create_browser(params = {}, options = {})
      request = build_request(:create_browser, params)
      request.send_request(options)
    end

    # <p>Creates a custom code interpreter.</p>
    # @param [Hash, Types::CreateCodeInterpreterRequest] params
    # @option params [String] :name
    #   <p>The name of the code interpreter. The name must be unique within your account.</p>
    # @option params [String] :description
    #   <p>The description of the code interpreter.</p>
    # @option params [String] :execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that provides permissions for the code interpreter to access Amazon Web Services services.</p>
    # @option params [Types::CodeInterpreterNetworkConfiguration] :network_configuration
    #   <p>The network configuration for the code interpreter. This configuration specifies the network mode for the code interpreter.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure that the operation completes no more than one time. If this token matches a previous request, Amazon Bedrock ignores the request but does not return an error.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A map of tag keys and values to assign to the code interpreter. Tags enable you to categorize your resources in different ways, for example, by purpose, owner, or environment.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "SandboxName", # required
    #     description: "Description",
    #     execution_role_arn: "RoleArn",
    #     network_configuration: { # required
    #       network_mode: "PUBLIC" # One of: ["PUBLIC", "SANDBOX", "VPC"], # required
    #       vpc_config: {
    #         security_groups: ["SecurityGroupId"], # required
    #         subnets: ["SubnetId"], # required
    #       }
    #     },
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_code_interpreter(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     code_interpreter_id: "CodeInterpreterId", # required
    #     code_interpreter_arn: "CodeInterpreterArn", # required
    #     created_at: Time.now, # required
    #     status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "READY", "DELETING", "DELETE_FAILED", "DELETED"], # required
    #   }
    # @return [Types::CreateCodeInterpreterResponse]
    def create_code_interpreter(params = {}, options = {})
      request = build_request(:create_code_interpreter, params)
      request.send_request(options)
    end

    # <p>Creates a gateway for Amazon Bedrock Agent. A gateway serves as an integration point between your agent and external services.</p> <p>To create a gateway, you must specify a name, protocol type, and IAM role. The role grants the gateway permission to access Amazon Web Services services and resources.</p>
    # @param [Hash, Types::CreateGatewayRequest] params
    # @option params [String] :name
    #   <p>The name of the gateway. The name must be unique within your account.</p>
    # @option params [String] :description
    #   <p>The description of the gateway.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, the service ignores the request, but does not return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that provides permissions for the gateway to access Amazon Web Services services.</p>
    # @option params [String] :protocol_type
    #   <p>The protocol type for the gateway.</p>
    # @option params [Types::GatewayProtocolConfiguration] :protocol_configuration
    #   <p>The configuration settings for the protocol specified in the <code>protocolType</code> parameter.</p>
    # @option params [String] :authorizer_type
    #   <p>The type of authorizer to use for the gateway.</p>
    # @option params [Types::AuthorizerConfiguration] :authorizer_configuration
    #   <p>The authorizer configuration for the gateway.</p>
    # @option params [String] :kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key used to encrypt data associated with the gateway.</p>
    # @option params [String] :exception_level
    #   <p>The level of detail in error messages returned when invoking the gateway.</p> <ul> <li> <p>If the value is <code>DEBUG</code>, granular exception messages are returned to help a user debug the gateway.</p> </li> <li> <p>If the value is omitted, a generic error message is returned to the end user.</p> </li> </ul>
    # @option params [Hash<String, String>] :tags
    #   <p>A map of key-value pairs to associate with the gateway as metadata tags.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "GatewayName", # required
    #     description: "GatewayDescription",
    #     client_token: "ClientToken",
    #     role_arn: "RoleArn", # required
    #     protocol_type: "MCP" # One of: ["MCP"], # required
    #     protocol_configuration: {
    #       # One of:
    #       mcp: {
    #         supported_versions: ["McpVersion"],
    #         instructions: "McpInstructions",
    #         search_type: "SEMANTIC" # One of: ["SEMANTIC"]
    #       }
    #     },
    #     authorizer_type: "CUSTOM_JWT" # One of: ["CUSTOM_JWT"], # required
    #     authorizer_configuration: { # required
    #       # One of:
    #       custom_jwt_authorizer: {
    #         discovery_url: "DiscoveryUrl", # required
    #         allowed_audience: ["AllowedAudience"],
    #         allowed_clients: ["AllowedClient"]
    #       }
    #     },
    #     kms_key_arn: "KmsKeyArn",
    #     exception_level: "DEBUG" # One of: ["DEBUG"],
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_gateway(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway_arn: "GatewayArn", # required
    #     gateway_id: "GatewayId", # required
    #     gateway_url: "GatewayUrl",
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #     status: "CREATING" # One of: ["CREATING", "UPDATING", "UPDATE_UNSUCCESSFUL", "DELETING", "READY", "FAILED"], # required
    #     status_reasons: ["StatusReason"],
    #     name: "GatewayName", # required
    #     description: "GatewayDescription",
    #     role_arn: "RoleArn",
    #     protocol_type: "MCP" # One of: ["MCP"], # required
    #     protocol_configuration: {
    #       # One of:
    #       mcp: {
    #         supported_versions: ["McpVersion"],
    #         instructions: "McpInstructions",
    #         search_type: "SEMANTIC" # One of: ["SEMANTIC"]
    #       }
    #     },
    #     authorizer_type: "CUSTOM_JWT" # One of: ["CUSTOM_JWT"], # required
    #     authorizer_configuration: {
    #       # One of:
    #       custom_jwt_authorizer: {
    #         discovery_url: "DiscoveryUrl", # required
    #         allowed_audience: ["AllowedAudience"],
    #         allowed_clients: ["AllowedClient"]
    #       }
    #     },
    #     kms_key_arn: "KmsKeyArn",
    #     workload_identity_details: {
    #       workload_identity_arn: "WorkloadIdentityArn", # required
    #     },
    #     exception_level: "DEBUG" # One of: ["DEBUG"]
    #   }
    # @return [Types::CreateGatewayResponse]
    def create_gateway(params = {}, options = {})
      request = build_request(:create_gateway, params)
      request.send_request(options)
    end

    # <p>Creates a target for a gateway. A target defines an endpoint that the gateway can connect to.</p>
    # @param [Hash, Types::CreateGatewayTargetRequest] params
    # @option params [String] :gateway_identifier
    #   <p>The identifier of the gateway to create a target for.</p>
    # @option params [String] :name
    #   <p>The name of the gateway target. The name must be unique within the gateway.</p>
    # @option params [String] :description
    #   <p>The description of the gateway target.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, the service ignores the request, but does not return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    # @option params [Types::TargetConfiguration] :target_configuration
    #   <p>The configuration settings for the target, including endpoint information and schema definitions.</p>
    # @option params [Array<Types::CredentialProviderConfiguration>] :credential_provider_configurations
    #   <p>The credential provider configurations for the target. These configurations specify how the gateway authenticates with the target endpoint.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_identifier: "GatewayIdentifier", # required
    #     name: "TargetName", # required
    #     description: "TargetDescription",
    #     client_token: "ClientToken",
    #     target_configuration: { # required
    #       # One of:
    #       mcp: {
    #         # One of:
    #         open_api_schema: {
    #           # One of:
    #           s3: {
    #             uri: "S3BucketUri",
    #             bucket_owner_account_id: "AwsAccountId"
    #           },
    #           inline_payload: "InlinePayload"
    #         },
    #         smithy_model: {
    #           # One of:
    #           s3: {
    #             uri: "S3BucketUri",
    #             bucket_owner_account_id: "AwsAccountId"
    #           },
    #           inline_payload: "InlinePayload"
    #         },
    #         lambda: {
    #           lambda_arn: "LambdaFunctionArn", # required
    #           tool_schema: { # required
    #             # One of:
    #             s3: {
    #               uri: "S3BucketUri",
    #               bucket_owner_account_id: "AwsAccountId"
    #             },
    #             inline_payload: [
    #               {
    #                 name: "String", # required
    #                 description: "String", # required
    #                 input_schema: { # required
    #                   type: "string" # One of: ["string", "number", "object", "array", "boolean", "integer"], # required
    #                   properties: {
    #                     "String" => {
    #                       # recursive SchemaDefinition
    #                     }
    #                   },
    #                   required: ["String"],
    #                   items: {
    #                     # recursive SchemaDefinition
    #                   },
    #                   description: "String"
    #                 },
    #                 output_schema: {
    #                   type: "string" # One of: ["string", "number", "object", "array", "boolean", "integer"], # required
    #                   properties: {
    #                     "String" => {
    #                       # recursive SchemaDefinition
    #                     }
    #                   },
    #                   required: ["String"],
    #                   items: {
    #                     # recursive SchemaDefinition
    #                   },
    #                   description: "String"
    #                 }
    #               }
    #             ]
    #           }
    #         }
    #       }
    #     },
    #     credential_provider_configurations: [ # required
    #       {
    #         credential_provider_type: "GATEWAY_IAM_ROLE" # One of: ["GATEWAY_IAM_ROLE", "OAUTH", "API_KEY"], # required
    #         credential_provider: {
    #           # One of:
    #           oauth_credential_provider: {
    #             provider_arn: "OAuthCredentialProviderArn", # required
    #             scopes: ["OAuthScope"], # required
    #             custom_parameters: {
    #               "OAuthCustomParametersKey" => "OAuthCustomParametersValue"
    #             }
    #           },
    #           api_key_credential_provider: {
    #             provider_arn: "ApiKeyCredentialProviderArn", # required
    #             credential_parameter_name: "ApiKeyCredentialParameterName",
    #             credential_prefix: "ApiKeyCredentialPrefix",
    #             credential_location: "HEADER" # One of: ["HEADER", "QUERY_PARAMETER"]
    #           }
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_gateway_target(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway_arn: "GatewayArn", # required
    #     target_id: "TargetId", # required
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #     status: "CREATING" # One of: ["CREATING", "UPDATING", "UPDATE_UNSUCCESSFUL", "DELETING", "READY", "FAILED"], # required
    #     status_reasons: ["StatusReason"],
    #     name: "TargetName", # required
    #     description: "TargetDescription",
    #     target_configuration: { # required
    #       # One of:
    #       mcp: {
    #         # One of:
    #         open_api_schema: {
    #           # One of:
    #           s3: {
    #             uri: "S3BucketUri",
    #             bucket_owner_account_id: "AwsAccountId"
    #           },
    #           inline_payload: "InlinePayload"
    #         },
    #         smithy_model: {
    #           # One of:
    #           s3: {
    #             uri: "S3BucketUri",
    #             bucket_owner_account_id: "AwsAccountId"
    #           },
    #           inline_payload: "InlinePayload"
    #         },
    #         lambda: {
    #           lambda_arn: "LambdaFunctionArn", # required
    #           tool_schema: { # required
    #             # One of:
    #             s3: {
    #               uri: "S3BucketUri",
    #               bucket_owner_account_id: "AwsAccountId"
    #             },
    #             inline_payload: [
    #               {
    #                 name: "String", # required
    #                 description: "String", # required
    #                 input_schema: { # required
    #                   type: "string" # One of: ["string", "number", "object", "array", "boolean", "integer"], # required
    #                   properties: {
    #                     "String" => {
    #                       # recursive SchemaDefinition
    #                     }
    #                   },
    #                   required: ["String"],
    #                   items: {
    #                     # recursive SchemaDefinition
    #                   },
    #                   description: "String"
    #                 },
    #                 output_schema: {
    #                   type: "string" # One of: ["string", "number", "object", "array", "boolean", "integer"], # required
    #                   properties: {
    #                     "String" => {
    #                       # recursive SchemaDefinition
    #                     }
    #                   },
    #                   required: ["String"],
    #                   items: {
    #                     # recursive SchemaDefinition
    #                   },
    #                   description: "String"
    #                 }
    #               }
    #             ]
    #           }
    #         }
    #       }
    #     },
    #     credential_provider_configurations: [ # required
    #       {
    #         credential_provider_type: "GATEWAY_IAM_ROLE" # One of: ["GATEWAY_IAM_ROLE", "OAUTH", "API_KEY"], # required
    #         credential_provider: {
    #           # One of:
    #           oauth_credential_provider: {
    #             provider_arn: "OAuthCredentialProviderArn", # required
    #             scopes: ["OAuthScope"], # required
    #             custom_parameters: {
    #               "OAuthCustomParametersKey" => "OAuthCustomParametersValue"
    #             }
    #           },
    #           api_key_credential_provider: {
    #             provider_arn: "ApiKeyCredentialProviderArn", # required
    #             credential_parameter_name: "ApiKeyCredentialParameterName",
    #             credential_prefix: "ApiKeyCredentialPrefix",
    #             credential_location: "HEADER" # One of: ["HEADER", "QUERY_PARAMETER"]
    #           }
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::CreateGatewayTargetResponse]
    def create_gateway_target(params = {}, options = {})
      request = build_request(:create_gateway_target, params)
      request.send_request(options)
    end

    # <p>Creates a new Amazon Bedrock AgentCore Memory resource.</p>
    # @param [Hash, Types::CreateMemoryInput] params
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure that the operation completes no more than one time. If this token matches a previous request, Amazon Bedrock ignores the request but does not return an error.</p>
    # @option params [String] :name
    #   <p>The name of the memory. The name must be unique within your account.</p>
    # @option params [String] :description
    #   <p>The description of the memory.</p>
    # @option params [String] :encryption_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key used to encrypt the memory data.</p>
    # @option params [String] :memory_execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that provides permissions for the memory to access Amazon Web Services services.</p>
    # @option params [Integer] :event_expiry_duration
    #   <p>The duration after which memory events expire. Specified as an ISO 8601 duration.</p>
    # @option params [Array<Types::MemoryStrategyInput>] :memory_strategies
    #   <p>The memory strategies to use for this memory. Strategies define how information is extracted, processed, and consolidated.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "NonEmptyString",
    #     name: "Name", # required
    #     description: "Description",
    #     encryption_key_arn: "Arn",
    #     memory_execution_role_arn: "Arn",
    #     event_expiry_duration: 1, # required
    #     memory_strategies: [{
    #       # One of:
    #       semantic_memory_strategy: {
    #         name: "Name", # required
    #         description: "Description",
    #         namespaces: ["Namespace"]
    #       },
    #       summary_memory_strategy: {
    #         name: "Name", # required
    #         description: "Description",
    #         namespaces: ["Namespace"]
    #       },
    #       user_preference_memory_strategy: {
    #         name: "Name", # required
    #         description: "Description",
    #         namespaces: ["Namespace"]
    #       },
    #       custom_memory_strategy: {
    #         name: "Name", # required
    #         description: "Description",
    #         namespaces: ["Namespace"],
    #         configuration: {
    #           # One of:
    #           semantic_override: {
    #             extraction: {
    #               append_to_prompt: "Prompt", # required
    #               model_id: "String", # required
    #             },
    #             consolidation: {
    #               append_to_prompt: "Prompt", # required
    #               model_id: "String", # required
    #             }
    #           },
    #           summary_override: {
    #             consolidation: {
    #               append_to_prompt: "Prompt", # required
    #               model_id: "String", # required
    #             }
    #           },
    #           user_preference_override: {
    #             extraction: {
    #               append_to_prompt: "Prompt", # required
    #               model_id: "String", # required
    #             },
    #             consolidation: {
    #               append_to_prompt: "Prompt", # required
    #               model_id: "String", # required
    #             }
    #           }
    #         }
    #       }
    #     }]
    #   }
    #   options = {}
    #   response = client.create_memory(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     memory: {
    #       arn: "MemoryArn", # required
    #       id: "MemoryId", # required
    #       name: "Name", # required
    #       description: "Description",
    #       encryption_key_arn: "Arn",
    #       memory_execution_role_arn: "Arn",
    #       event_expiry_duration: 1, # required
    #       status: "CREATING" # One of: ["CREATING", "ACTIVE", "FAILED", "DELETING"], # required
    #       failure_reason: "String",
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       strategies: [
    #         {
    #           strategy_id: "MemoryStrategyId", # required
    #           name: "Name", # required
    #           description: "Description",
    #           configuration: {
    #             type: "SEMANTIC_OVERRIDE" # One of: ["SEMANTIC_OVERRIDE", "SUMMARY_OVERRIDE", "USER_PREFERENCE_OVERRIDE"],
    #             extraction: {
    #               # One of:
    #               custom_extraction_configuration: {
    #                 # One of:
    #                 semantic_extraction_override: {
    #                   append_to_prompt: "Prompt", # required
    #                   model_id: "String", # required
    #                 },
    #                 user_preference_extraction_override: {
    #                   append_to_prompt: "Prompt", # required
    #                   model_id: "String", # required
    #                 }
    #               }
    #             },
    #             consolidation: {
    #               # One of:
    #               custom_consolidation_configuration: {
    #                 # One of:
    #                 semantic_consolidation_override: {
    #                   append_to_prompt: "Prompt", # required
    #                   model_id: "String", # required
    #                 },
    #                 summary_consolidation_override: {
    #                   append_to_prompt: "Prompt", # required
    #                   model_id: "String", # required
    #                 },
    #                 user_preference_consolidation_override: {
    #                   append_to_prompt: "Prompt", # required
    #                   model_id: "String", # required
    #                 }
    #               }
    #             }
    #           },
    #           type: "SEMANTIC" # One of: ["SEMANTIC", "SUMMARIZATION", "USER_PREFERENCE", "CUSTOM"], # required
    #           namespaces: ["Namespace"], # required
    #           created_at: Time.now,
    #           updated_at: Time.now,
    #           status: "CREATING" # One of: ["CREATING", "ACTIVE", "DELETING", "FAILED"]
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::CreateMemoryOutput]
    def create_memory(params = {}, options = {})
      request = build_request(:create_memory, params)
      request.send_request(options)
    end

    # <p>Creates a new OAuth2 credential provider.</p>
    # @param [Hash, Types::CreateOauth2CredentialProviderRequest] params
    # @option params [String] :name
    #   <p>The name of the OAuth2 credential provider. The name must be unique within your account.</p>
    # @option params [String] :credential_provider_vendor
    #   <p>The vendor of the OAuth2 credential provider. This specifies which OAuth2 implementation to use.</p>
    # @option params [Types::Oauth2ProviderConfigInput] :oauth2_provider_config_input
    #   <p>The configuration settings for the OAuth2 provider, including client ID, client secret, and other vendor-specific settings.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "CredentialProviderName", # required
    #     credential_provider_vendor: "GoogleOauth2" # One of: ["GoogleOauth2", "GithubOauth2", "SlackOauth2", "SalesforceOauth2", "MicrosoftOauth2", "CustomOauth2"], # required
    #     oauth2_provider_config_input: { # required
    #       # One of:
    #       custom_oauth2_provider_config: {
    #         oauth_discovery: { # required
    #           # One of:
    #           discovery_url: "DiscoveryUrlType",
    #           authorization_server_metadata: {
    #             issuer: "IssuerUrlType", # required
    #             authorization_endpoint: "AuthorizationEndpointType", # required
    #             token_endpoint: "TokenEndpointType", # required
    #             response_types: ["ResponseType"]
    #           }
    #         },
    #         client_id: "ClientIdType", # required
    #         client_secret: "ClientSecretType", # required
    #       },
    #       google_oauth2_provider_config: {
    #         client_id: "ClientIdType", # required
    #         client_secret: "ClientSecretType", # required
    #       },
    #       github_oauth2_provider_config: {
    #         client_id: "ClientIdType", # required
    #         client_secret: "ClientSecretType", # required
    #       },
    #       slack_oauth2_provider_config: {
    #         client_id: "ClientIdType", # required
    #         client_secret: "ClientSecretType", # required
    #       },
    #       salesforce_oauth2_provider_config: {
    #         client_id: "ClientIdType", # required
    #         client_secret: "ClientSecretType", # required
    #       },
    #       microsoft_oauth2_provider_config: {
    #         client_id: "ClientIdType", # required
    #         client_secret: "ClientSecretType", # required
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_oauth2_credential_provider(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     client_secret_arn: { # required
    #       secret_arn: "SecretArn", # required
    #     },
    #     name: "CredentialProviderName", # required
    #     credential_provider_arn: "CredentialProviderArnType", # required
    #   }
    # @return [Types::CreateOauth2CredentialProviderResponse]
    def create_oauth2_credential_provider(params = {}, options = {})
      request = build_request(:create_oauth2_credential_provider, params)
      request.send_request(options)
    end

    # <p>Creates a new workload identity.</p>
    # @param [Hash, Types::CreateWorkloadIdentityRequest] params
    # @option params [String] :name
    #   <p>The name of the workload identity. The name must be unique within your account.</p>
    # @option params [Array<String>] :allowed_resource_oauth2_return_urls
    #   <p>The list of allowed OAuth2 return URLs for resources associated with this workload identity.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "WorkloadIdentityNameType", # required
    #     allowed_resource_oauth2_return_urls: ["ResourceOauth2ReturnUrlType"]
    #   }
    #   options = {}
    #   response = client.create_workload_identity(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "WorkloadIdentityNameType", # required
    #     workload_identity_arn: "WorkloadIdentityArnType", # required
    #     allowed_resource_oauth2_return_urls: ["ResourceOauth2ReturnUrlType"]
    #   }
    # @return [Types::CreateWorkloadIdentityResponse]
    def create_workload_identity(params = {}, options = {})
      request = build_request(:create_workload_identity, params)
      request.send_request(options)
    end

    # <p>Deletes an Amazon Bedrock AgentCore Runtime.</p>
    # @param [Hash, Types::DeleteAgentRuntimeRequest] params
    # @option params [String] :agent_runtime_id
    #   <p>The unique identifier of the AgentCore Runtime to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_runtime_id: "AgentRuntimeId", # required
    #   }
    #   options = {}
    #   response = client.delete_agent_runtime(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "READY", "DELETING"], # required
    #   }
    # @return [Types::DeleteAgentRuntimeResponse]
    def delete_agent_runtime(params = {}, options = {})
      request = build_request(:delete_agent_runtime, params)
      request.send_request(options)
    end

    # <p>Deletes an AAgentCore Runtime endpoint.</p>
    # @param [Hash, Types::DeleteAgentRuntimeEndpointRequest] params
    # @option params [String] :agent_runtime_id
    #   <p>The unique identifier of the AgentCore Runtime associated with the endpoint.</p>
    # @option params [String] :endpoint_name
    #   <p>The name of the AgentCore Runtime endpoint to delete.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure idempotency of the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_runtime_id: "AgentRuntimeId", # required
    #     endpoint_name: "EndpointName", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.delete_agent_runtime_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "READY", "DELETING"], # required
    #   }
    # @return [Types::DeleteAgentRuntimeEndpointResponse]
    def delete_agent_runtime_endpoint(params = {}, options = {})
      request = build_request(:delete_agent_runtime_endpoint, params)
      request.send_request(options)
    end

    # <p>Deletes an API key credential provider.</p>
    # @param [Hash, Types::DeleteApiKeyCredentialProviderRequest] params
    # @option params [String] :name
    #   <p>The name of the API key credential provider to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "CredentialProviderName", # required
    #   }
    #   options = {}
    #   response = client.delete_api_key_credential_provider(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteApiKeyCredentialProviderResponse]
    def delete_api_key_credential_provider(params = {}, options = {})
      request = build_request(:delete_api_key_credential_provider, params)
      request.send_request(options)
    end

    # <p>Deletes a custom browser.</p>
    # @param [Hash, Types::DeleteBrowserRequest] params
    # @option params [String] :browser_id
    #   <p>The unique identifier of the browser to delete.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure idempotency of the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     browser_id: "BrowserId", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.delete_browser(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     browser_id: "BrowserId", # required
    #     status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "READY", "DELETING", "DELETE_FAILED", "DELETED"], # required
    #     last_updated_at: Time.now, # required
    #   }
    # @return [Types::DeleteBrowserResponse]
    def delete_browser(params = {}, options = {})
      request = build_request(:delete_browser, params)
      request.send_request(options)
    end

    # <p>Deletes a custom code interpreter.</p>
    # @param [Hash, Types::DeleteCodeInterpreterRequest] params
    # @option params [String] :code_interpreter_id
    #   <p>The unique identifier of the code interpreter to delete.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure idempotency of the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     code_interpreter_id: "CodeInterpreterId", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.delete_code_interpreter(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     code_interpreter_id: "CodeInterpreterId", # required
    #     status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "READY", "DELETING", "DELETE_FAILED", "DELETED"], # required
    #     last_updated_at: Time.now, # required
    #   }
    # @return [Types::DeleteCodeInterpreterResponse]
    def delete_code_interpreter(params = {}, options = {})
      request = build_request(:delete_code_interpreter, params)
      request.send_request(options)
    end

    # <p>Deletes a gateway.</p>
    # @param [Hash, Types::DeleteGatewayRequest] params
    # @option params [String] :gateway_identifier
    #   <p>The identifier of the gateway to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_identifier: "GatewayIdentifier", # required
    #   }
    #   options = {}
    #   response = client.delete_gateway(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway_id: "GatewayId", # required
    #     status: "CREATING" # One of: ["CREATING", "UPDATING", "UPDATE_UNSUCCESSFUL", "DELETING", "READY", "FAILED"], # required
    #     status_reasons: ["StatusReason"]
    #   }
    # @return [Types::DeleteGatewayResponse]
    def delete_gateway(params = {}, options = {})
      request = build_request(:delete_gateway, params)
      request.send_request(options)
    end

    # <p>Deletes a gateway target.</p>
    # @param [Hash, Types::DeleteGatewayTargetRequest] params
    # @option params [String] :gateway_identifier
    #   <p>The unique identifier of the gateway associated with the target.</p>
    # @option params [String] :target_id
    #   <p>The unique identifier of the gateway target to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_identifier: "GatewayIdentifier", # required
    #     target_id: "TargetId", # required
    #   }
    #   options = {}
    #   response = client.delete_gateway_target(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway_arn: "GatewayArn", # required
    #     target_id: "TargetId", # required
    #     status: "CREATING" # One of: ["CREATING", "UPDATING", "UPDATE_UNSUCCESSFUL", "DELETING", "READY", "FAILED"], # required
    #     status_reasons: ["StatusReason"]
    #   }
    # @return [Types::DeleteGatewayTargetResponse]
    def delete_gateway_target(params = {}, options = {})
      request = build_request(:delete_gateway_target, params)
      request.send_request(options)
    end

    # <p>Deletes an Amazon Bedrock AgentCore Memory resource.</p>
    # @param [Hash, Types::DeleteMemoryInput] params
    # @option params [String] :client_token
    #   <p>A client token is used for keeping track of idempotent requests. It can contain a session id which can be around 250 chars, combined with a unique AWS identifier.</p>
    # @option params [String] :memory_id
    #   <p>The unique identifier of the memory to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "NonEmptyString",
    #     memory_id: "MemoryId", # required
    #   }
    #   options = {}
    #   response = client.delete_memory(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     memory_id: "MemoryId", # required
    #     status: "CREATING" # One of: ["CREATING", "ACTIVE", "FAILED", "DELETING"]
    #   }
    # @return [Types::DeleteMemoryOutput]
    def delete_memory(params = {}, options = {})
      request = build_request(:delete_memory, params)
      request.send_request(options)
    end

    # <p>Deletes an OAuth2 credential provider.</p>
    # @param [Hash, Types::DeleteOauth2CredentialProviderRequest] params
    # @option params [String] :name
    #   <p>The name of the OAuth2 credential provider to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "CredentialProviderName", # required
    #   }
    #   options = {}
    #   response = client.delete_oauth2_credential_provider(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteOauth2CredentialProviderResponse]
    def delete_oauth2_credential_provider(params = {}, options = {})
      request = build_request(:delete_oauth2_credential_provider, params)
      request.send_request(options)
    end

    # <p>Deletes a workload identity.</p>
    # @param [Hash, Types::DeleteWorkloadIdentityRequest] params
    # @option params [String] :name
    #   <p>The name of the workload identity to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "WorkloadIdentityNameType", # required
    #   }
    #   options = {}
    #   response = client.delete_workload_identity(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteWorkloadIdentityResponse]
    def delete_workload_identity(params = {}, options = {})
      request = build_request(:delete_workload_identity, params)
      request.send_request(options)
    end

    # <p>Gets an Amazon Bedrock AgentCore Runtime.</p>
    # @param [Hash, Types::GetAgentRuntimeRequest] params
    # @option params [String] :agent_runtime_id
    #   <p>The unique identifier of the AgentCore Runtime to retrieve.</p>
    # @option params [String] :agent_runtime_version
    #   <p>The version of the AgentCore Runtime to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_runtime_id: "AgentRuntimeId", # required
    #     agent_runtime_version: "AgentRuntimeVersion"
    #   }
    #   options = {}
    #   response = client.get_agent_runtime(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     agent_runtime_arn: "AgentRuntimeArn", # required
    #     workload_identity_details: {
    #       workload_identity_arn: "WorkloadIdentityArn", # required
    #     },
    #     agent_runtime_name: "AgentRuntimeName", # required
    #     description: "Description",
    #     agent_runtime_id: "AgentRuntimeId", # required
    #     agent_runtime_version: "AgentRuntimeVersion", # required
    #     created_at: Time.now, # required
    #     last_updated_at: Time.now, # required
    #     role_arn: "RoleArn", # required
    #     agent_runtime_artifact: {
    #       # One of:
    #       container_configuration: {
    #         container_uri: "RuntimeContainerUri", # required
    #       }
    #     },
    #     network_configuration: { # required
    #       network_mode: "PUBLIC" # One of: ["PUBLIC", "VPC"], # required
    #       network_mode_config: {
    #         security_groups: ["SecurityGroupId"], # required
    #         subnets: ["SubnetId"], # required
    #       }
    #     },
    #     protocol_configuration: {
    #       server_protocol: "MCP" # One of: ["MCP", "HTTP"], # required
    #     },
    #     environment_variables: {
    #       "EnvironmentVariableKey" => "EnvironmentVariableValue"
    #     },
    #     authorizer_configuration: {
    #       # One of:
    #       custom_jwt_authorizer: {
    #         discovery_url: "DiscoveryUrl", # required
    #         allowed_audience: ["AllowedAudience"],
    #         allowed_clients: ["AllowedClient"]
    #       }
    #     },
    #     request_header_configuration: {
    #       # One of:
    #       request_header_allowlist: ["HeaderName"]
    #     },
    #     status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "READY", "DELETING"], # required
    #   }
    # @return [Types::GetAgentRuntimeResponse]
    def get_agent_runtime(params = {}, options = {})
      request = build_request(:get_agent_runtime, params)
      request.send_request(options)
    end

    # <p>Gets information about an Amazon Secure AgentEndpoint.</p>
    # @param [Hash, Types::GetAgentRuntimeEndpointRequest] params
    # @option params [String] :agent_runtime_id
    #   <p>The unique identifier of the AgentCore Runtime associated with the endpoint.</p>
    # @option params [String] :endpoint_name
    #   <p>The name of the AgentCore Runtime endpoint to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_runtime_id: "AgentRuntimeId", # required
    #     endpoint_name: "EndpointName", # required
    #   }
    #   options = {}
    #   response = client.get_agent_runtime_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     live_version: "AgentRuntimeVersion",
    #     target_version: "AgentRuntimeVersion",
    #     agent_runtime_endpoint_arn: "AgentRuntimeEndpointArn", # required
    #     agent_runtime_arn: "AgentRuntimeArn", # required
    #     description: "AgentEndpointDescription",
    #     status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "READY", "DELETING"], # required
    #     created_at: Time.now, # required
    #     last_updated_at: Time.now, # required
    #     failure_reason: "String",
    #     name: "EndpointName", # required
    #     id: "AgentRuntimeEndpointId", # required
    #   }
    # @return [Types::GetAgentRuntimeEndpointResponse]
    def get_agent_runtime_endpoint(params = {}, options = {})
      request = build_request(:get_agent_runtime_endpoint, params)
      request.send_request(options)
    end

    # <p>Retrieves information about an API key credential provider.</p>
    # @param [Hash, Types::GetApiKeyCredentialProviderRequest] params
    # @option params [String] :name
    #   <p>The name of the API key credential provider to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "CredentialProviderName", # required
    #   }
    #   options = {}
    #   response = client.get_api_key_credential_provider(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     api_key_secret_arn: { # required
    #       secret_arn: "SecretArn", # required
    #     },
    #     name: "CredentialProviderName", # required
    #     credential_provider_arn: "ApiKeyCredentialProviderArnType", # required
    #     created_time: Time.now, # required
    #     last_updated_time: Time.now, # required
    #   }
    # @return [Types::GetApiKeyCredentialProviderResponse]
    def get_api_key_credential_provider(params = {}, options = {})
      request = build_request(:get_api_key_credential_provider, params)
      request.send_request(options)
    end

    # <p>Gets information about a custom browser.</p>
    # @param [Hash, Types::GetBrowserRequest] params
    # @option params [String] :browser_id
    #   <p>The unique identifier of the browser to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     browser_id: "BrowserId", # required
    #   }
    #   options = {}
    #   response = client.get_browser(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     browser_id: "BrowserId", # required
    #     browser_arn: "BrowserArn", # required
    #     name: "SandboxName", # required
    #     description: "Description",
    #     execution_role_arn: "RoleArn",
    #     network_configuration: { # required
    #       network_mode: "PUBLIC" # One of: ["PUBLIC", "VPC"], # required
    #       vpc_config: {
    #         security_groups: ["SecurityGroupId"], # required
    #         subnets: ["SubnetId"], # required
    #       }
    #     },
    #     recording: {
    #       enabled: false,
    #       s3_location: {
    #         bucket: "String", # required
    #         prefix: "String", # required
    #       }
    #     },
    #     status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "READY", "DELETING", "DELETE_FAILED", "DELETED"], # required
    #     failure_reason: "String",
    #     created_at: Time.now, # required
    #     last_updated_at: Time.now, # required
    #   }
    # @return [Types::GetBrowserResponse]
    def get_browser(params = {}, options = {})
      request = build_request(:get_browser, params)
      request.send_request(options)
    end

    # <p>Gets information about a custom code interpreter.</p>
    # @param [Hash, Types::GetCodeInterpreterRequest] params
    # @option params [String] :code_interpreter_id
    #   <p>The unique identifier of the code interpreter to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     code_interpreter_id: "CodeInterpreterId", # required
    #   }
    #   options = {}
    #   response = client.get_code_interpreter(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     code_interpreter_id: "CodeInterpreterId", # required
    #     code_interpreter_arn: "CodeInterpreterArn", # required
    #     name: "SandboxName", # required
    #     description: "Description",
    #     execution_role_arn: "RoleArn",
    #     network_configuration: { # required
    #       network_mode: "PUBLIC" # One of: ["PUBLIC", "SANDBOX", "VPC"], # required
    #       vpc_config: {
    #         security_groups: ["SecurityGroupId"], # required
    #         subnets: ["SubnetId"], # required
    #       }
    #     },
    #     status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "READY", "DELETING", "DELETE_FAILED", "DELETED"], # required
    #     failure_reason: "String",
    #     created_at: Time.now, # required
    #     last_updated_at: Time.now, # required
    #   }
    # @return [Types::GetCodeInterpreterResponse]
    def get_code_interpreter(params = {}, options = {})
      request = build_request(:get_code_interpreter, params)
      request.send_request(options)
    end

    # <p>Retrieves information about a specific Gateway.</p>
    # @param [Hash, Types::GetGatewayRequest] params
    # @option params [String] :gateway_identifier
    #   <p>The identifier of the gateway to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_identifier: "GatewayIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_gateway(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway_arn: "GatewayArn", # required
    #     gateway_id: "GatewayId", # required
    #     gateway_url: "GatewayUrl",
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #     status: "CREATING" # One of: ["CREATING", "UPDATING", "UPDATE_UNSUCCESSFUL", "DELETING", "READY", "FAILED"], # required
    #     status_reasons: ["StatusReason"],
    #     name: "GatewayName", # required
    #     description: "GatewayDescription",
    #     role_arn: "RoleArn",
    #     protocol_type: "MCP" # One of: ["MCP"], # required
    #     protocol_configuration: {
    #       # One of:
    #       mcp: {
    #         supported_versions: ["McpVersion"],
    #         instructions: "McpInstructions",
    #         search_type: "SEMANTIC" # One of: ["SEMANTIC"]
    #       }
    #     },
    #     authorizer_type: "CUSTOM_JWT" # One of: ["CUSTOM_JWT"], # required
    #     authorizer_configuration: {
    #       # One of:
    #       custom_jwt_authorizer: {
    #         discovery_url: "DiscoveryUrl", # required
    #         allowed_audience: ["AllowedAudience"],
    #         allowed_clients: ["AllowedClient"]
    #       }
    #     },
    #     kms_key_arn: "KmsKeyArn",
    #     workload_identity_details: {
    #       workload_identity_arn: "WorkloadIdentityArn", # required
    #     },
    #     exception_level: "DEBUG" # One of: ["DEBUG"]
    #   }
    # @return [Types::GetGatewayResponse]
    def get_gateway(params = {}, options = {})
      request = build_request(:get_gateway, params)
      request.send_request(options)
    end

    # <p>Retrieves information about a specific gateway target.</p>
    # @param [Hash, Types::GetGatewayTargetRequest] params
    # @option params [String] :gateway_identifier
    #   <p>The identifier of the gateway that contains the target.</p>
    # @option params [String] :target_id
    #   <p>The unique identifier of the target to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_identifier: "GatewayIdentifier", # required
    #     target_id: "TargetId", # required
    #   }
    #   options = {}
    #   response = client.get_gateway_target(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway_arn: "GatewayArn", # required
    #     target_id: "TargetId", # required
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #     status: "CREATING" # One of: ["CREATING", "UPDATING", "UPDATE_UNSUCCESSFUL", "DELETING", "READY", "FAILED"], # required
    #     status_reasons: ["StatusReason"],
    #     name: "TargetName", # required
    #     description: "TargetDescription",
    #     target_configuration: { # required
    #       # One of:
    #       mcp: {
    #         # One of:
    #         open_api_schema: {
    #           # One of:
    #           s3: {
    #             uri: "S3BucketUri",
    #             bucket_owner_account_id: "AwsAccountId"
    #           },
    #           inline_payload: "InlinePayload"
    #         },
    #         smithy_model: {
    #           # One of:
    #           s3: {
    #             uri: "S3BucketUri",
    #             bucket_owner_account_id: "AwsAccountId"
    #           },
    #           inline_payload: "InlinePayload"
    #         },
    #         lambda: {
    #           lambda_arn: "LambdaFunctionArn", # required
    #           tool_schema: { # required
    #             # One of:
    #             s3: {
    #               uri: "S3BucketUri",
    #               bucket_owner_account_id: "AwsAccountId"
    #             },
    #             inline_payload: [
    #               {
    #                 name: "String", # required
    #                 description: "String", # required
    #                 input_schema: { # required
    #                   type: "string" # One of: ["string", "number", "object", "array", "boolean", "integer"], # required
    #                   properties: {
    #                     "String" => {
    #                       # recursive SchemaDefinition
    #                     }
    #                   },
    #                   required: ["String"],
    #                   items: {
    #                     # recursive SchemaDefinition
    #                   },
    #                   description: "String"
    #                 },
    #                 output_schema: {
    #                   type: "string" # One of: ["string", "number", "object", "array", "boolean", "integer"], # required
    #                   properties: {
    #                     "String" => {
    #                       # recursive SchemaDefinition
    #                     }
    #                   },
    #                   required: ["String"],
    #                   items: {
    #                     # recursive SchemaDefinition
    #                   },
    #                   description: "String"
    #                 }
    #               }
    #             ]
    #           }
    #         }
    #       }
    #     },
    #     credential_provider_configurations: [ # required
    #       {
    #         credential_provider_type: "GATEWAY_IAM_ROLE" # One of: ["GATEWAY_IAM_ROLE", "OAUTH", "API_KEY"], # required
    #         credential_provider: {
    #           # One of:
    #           oauth_credential_provider: {
    #             provider_arn: "OAuthCredentialProviderArn", # required
    #             scopes: ["OAuthScope"], # required
    #             custom_parameters: {
    #               "OAuthCustomParametersKey" => "OAuthCustomParametersValue"
    #             }
    #           },
    #           api_key_credential_provider: {
    #             provider_arn: "ApiKeyCredentialProviderArn", # required
    #             credential_parameter_name: "ApiKeyCredentialParameterName",
    #             credential_prefix: "ApiKeyCredentialPrefix",
    #             credential_location: "HEADER" # One of: ["HEADER", "QUERY_PARAMETER"]
    #           }
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::GetGatewayTargetResponse]
    def get_gateway_target(params = {}, options = {})
      request = build_request(:get_gateway_target, params)
      request.send_request(options)
    end

    # <p>Retrieve an existing Amazon Bedrock AgentCore Memory resource.</p>
    # @param [Hash, Types::GetMemoryInput] params
    # @option params [String] :memory_id
    #   <p>The unique identifier of the memory to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     memory_id: "MemoryId", # required
    #   }
    #   options = {}
    #   response = client.get_memory(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     memory: { # required
    #       arn: "MemoryArn", # required
    #       id: "MemoryId", # required
    #       name: "Name", # required
    #       description: "Description",
    #       encryption_key_arn: "Arn",
    #       memory_execution_role_arn: "Arn",
    #       event_expiry_duration: 1, # required
    #       status: "CREATING" # One of: ["CREATING", "ACTIVE", "FAILED", "DELETING"], # required
    #       failure_reason: "String",
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       strategies: [
    #         {
    #           strategy_id: "MemoryStrategyId", # required
    #           name: "Name", # required
    #           description: "Description",
    #           configuration: {
    #             type: "SEMANTIC_OVERRIDE" # One of: ["SEMANTIC_OVERRIDE", "SUMMARY_OVERRIDE", "USER_PREFERENCE_OVERRIDE"],
    #             extraction: {
    #               # One of:
    #               custom_extraction_configuration: {
    #                 # One of:
    #                 semantic_extraction_override: {
    #                   append_to_prompt: "Prompt", # required
    #                   model_id: "String", # required
    #                 },
    #                 user_preference_extraction_override: {
    #                   append_to_prompt: "Prompt", # required
    #                   model_id: "String", # required
    #                 }
    #               }
    #             },
    #             consolidation: {
    #               # One of:
    #               custom_consolidation_configuration: {
    #                 # One of:
    #                 semantic_consolidation_override: {
    #                   append_to_prompt: "Prompt", # required
    #                   model_id: "String", # required
    #                 },
    #                 summary_consolidation_override: {
    #                   append_to_prompt: "Prompt", # required
    #                   model_id: "String", # required
    #                 },
    #                 user_preference_consolidation_override: {
    #                   append_to_prompt: "Prompt", # required
    #                   model_id: "String", # required
    #                 }
    #               }
    #             }
    #           },
    #           type: "SEMANTIC" # One of: ["SEMANTIC", "SUMMARIZATION", "USER_PREFERENCE", "CUSTOM"], # required
    #           namespaces: ["Namespace"], # required
    #           created_at: Time.now,
    #           updated_at: Time.now,
    #           status: "CREATING" # One of: ["CREATING", "ACTIVE", "DELETING", "FAILED"]
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetMemoryOutput]
    def get_memory(params = {}, options = {})
      request = build_request(:get_memory, params)
      request.send_request(options)
    end

    # <p>Retrieves information about an OAuth2 credential provider.</p>
    # @param [Hash, Types::GetOauth2CredentialProviderRequest] params
    # @option params [String] :name
    #   <p>The name of the OAuth2 credential provider to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "CredentialProviderName", # required
    #   }
    #   options = {}
    #   response = client.get_oauth2_credential_provider(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     client_secret_arn: { # required
    #       secret_arn: "SecretArn", # required
    #     },
    #     name: "CredentialProviderName", # required
    #     credential_provider_arn: "CredentialProviderArnType", # required
    #     credential_provider_vendor: "GoogleOauth2" # One of: ["GoogleOauth2", "GithubOauth2", "SlackOauth2", "SalesforceOauth2", "MicrosoftOauth2", "CustomOauth2"], # required
    #     oauth2_provider_config_output: { # required
    #       # One of:
    #       custom_oauth2_provider_config: {
    #         oauth_discovery: { # required
    #           # One of:
    #           discovery_url: "DiscoveryUrlType",
    #           authorization_server_metadata: {
    #             issuer: "IssuerUrlType", # required
    #             authorization_endpoint: "AuthorizationEndpointType", # required
    #             token_endpoint: "TokenEndpointType", # required
    #             response_types: ["ResponseType"]
    #           }
    #         }
    #       },
    #       google_oauth2_provider_config: {
    #         oauth_discovery: { # required
    #           # One of:
    #           discovery_url: "DiscoveryUrlType",
    #           authorization_server_metadata: {
    #             issuer: "IssuerUrlType", # required
    #             authorization_endpoint: "AuthorizationEndpointType", # required
    #             token_endpoint: "TokenEndpointType", # required
    #             response_types: ["ResponseType"]
    #           }
    #         }
    #       },
    #       github_oauth2_provider_config: {
    #         oauth_discovery: { # required
    #           # One of:
    #           discovery_url: "DiscoveryUrlType",
    #           authorization_server_metadata: {
    #             issuer: "IssuerUrlType", # required
    #             authorization_endpoint: "AuthorizationEndpointType", # required
    #             token_endpoint: "TokenEndpointType", # required
    #             response_types: ["ResponseType"]
    #           }
    #         }
    #       },
    #       slack_oauth2_provider_config: {
    #         oauth_discovery: { # required
    #           # One of:
    #           discovery_url: "DiscoveryUrlType",
    #           authorization_server_metadata: {
    #             issuer: "IssuerUrlType", # required
    #             authorization_endpoint: "AuthorizationEndpointType", # required
    #             token_endpoint: "TokenEndpointType", # required
    #             response_types: ["ResponseType"]
    #           }
    #         }
    #       },
    #       salesforce_oauth2_provider_config: {
    #         oauth_discovery: { # required
    #           # One of:
    #           discovery_url: "DiscoveryUrlType",
    #           authorization_server_metadata: {
    #             issuer: "IssuerUrlType", # required
    #             authorization_endpoint: "AuthorizationEndpointType", # required
    #             token_endpoint: "TokenEndpointType", # required
    #             response_types: ["ResponseType"]
    #           }
    #         }
    #       },
    #       microsoft_oauth2_provider_config: {
    #         oauth_discovery: { # required
    #           # One of:
    #           discovery_url: "DiscoveryUrlType",
    #           authorization_server_metadata: {
    #             issuer: "IssuerUrlType", # required
    #             authorization_endpoint: "AuthorizationEndpointType", # required
    #             token_endpoint: "TokenEndpointType", # required
    #             response_types: ["ResponseType"]
    #           }
    #         }
    #       }
    #     },
    #     created_time: Time.now, # required
    #     last_updated_time: Time.now, # required
    #   }
    # @return [Types::GetOauth2CredentialProviderResponse]
    def get_oauth2_credential_provider(params = {}, options = {})
      request = build_request(:get_oauth2_credential_provider, params)
      request.send_request(options)
    end

    # <p>Retrieves information about a token vault.</p>
    # @param [Hash, Types::GetTokenVaultRequest] params
    # @option params [String] :token_vault_id
    #   <p>The unique identifier of the token vault to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     token_vault_id: "TokenVaultIdType"
    #   }
    #   options = {}
    #   response = client.get_token_vault(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     token_vault_id: "TokenVaultIdType", # required
    #     kms_configuration: { # required
    #       key_type: "CustomerManagedKey" # One of: ["CustomerManagedKey", "ServiceManagedKey"], # required
    #       kms_key_arn: "KmsKeyArn"
    #     },
    #     last_modified_date: Time.now, # required
    #   }
    # @return [Types::GetTokenVaultResponse]
    def get_token_vault(params = {}, options = {})
      request = build_request(:get_token_vault, params)
      request.send_request(options)
    end

    # <p>Retrieves information about a workload identity.</p>
    # @param [Hash, Types::GetWorkloadIdentityRequest] params
    # @option params [String] :name
    #   <p>The name of the workload identity to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "WorkloadIdentityNameType", # required
    #   }
    #   options = {}
    #   response = client.get_workload_identity(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "WorkloadIdentityNameType", # required
    #     workload_identity_arn: "WorkloadIdentityArnType", # required
    #     allowed_resource_oauth2_return_urls: ["ResourceOauth2ReturnUrlType"],
    #     created_time: Time.now, # required
    #     last_updated_time: Time.now, # required
    #   }
    # @return [Types::GetWorkloadIdentityResponse]
    def get_workload_identity(params = {}, options = {})
      request = build_request(:get_workload_identity, params)
      request.send_request(options)
    end

    # <p>Lists all endpoints for a specific Amazon Secure Agent.</p>
    # @param [Hash, Types::ListAgentRuntimeEndpointsRequest] params
    # @option params [String] :agent_runtime_id
    #   <p>The unique identifier of the AgentCore Runtime to list endpoints for.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response.</p>
    # @option params [String] :next_token
    #   <p>A token to retrieve the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_runtime_id: "AgentRuntimeId", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_agent_runtime_endpoints(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     runtime_endpoints: [ # required
    #       {
    #         name: "EndpointName", # required
    #         live_version: "AgentRuntimeVersion",
    #         target_version: "AgentRuntimeVersion",
    #         agent_runtime_endpoint_arn: "AgentRuntimeEndpointArn", # required
    #         agent_runtime_arn: "AgentRuntimeArn", # required
    #         status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "READY", "DELETING"], # required
    #         id: "AgentRuntimeEndpointId", # required
    #         description: "AgentEndpointDescription",
    #         created_at: Time.now, # required
    #         last_updated_at: Time.now, # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAgentRuntimeEndpointsResponse]
    def list_agent_runtime_endpoints(params = {}, options = {})
      request = build_request(:list_agent_runtime_endpoints, params)
      request.send_request(options)
    end

    # <p>Lists all versions of a specific Amazon Secure Agent.</p>
    # @param [Hash, Types::ListAgentRuntimeVersionsRequest] params
    # @option params [String] :agent_runtime_id
    #   <p>The unique identifier of the AgentCore Runtime to list versions for.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response.</p>
    # @option params [String] :next_token
    #   <p>A token to retrieve the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_runtime_id: "AgentRuntimeId", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_agent_runtime_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     agent_runtimes: [ # required
    #       {
    #         agent_runtime_arn: "AgentRuntimeArn", # required
    #         agent_runtime_id: "AgentRuntimeId", # required
    #         agent_runtime_version: "AgentRuntimeVersion", # required
    #         agent_runtime_name: "AgentRuntimeName", # required
    #         description: "Description", # required
    #         last_updated_at: Time.now, # required
    #         status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "READY", "DELETING"], # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAgentRuntimeVersionsResponse]
    def list_agent_runtime_versions(params = {}, options = {})
      request = build_request(:list_agent_runtime_versions, params)
      request.send_request(options)
    end

    # <p>Lists all Amazon Secure Agents in your account.</p>
    # @param [Hash, Types::ListAgentRuntimesRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response.</p>
    # @option params [String] :next_token
    #   <p>A token to retrieve the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_agent_runtimes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     agent_runtimes: [ # required
    #       {
    #         agent_runtime_arn: "AgentRuntimeArn", # required
    #         agent_runtime_id: "AgentRuntimeId", # required
    #         agent_runtime_version: "AgentRuntimeVersion", # required
    #         agent_runtime_name: "AgentRuntimeName", # required
    #         description: "Description", # required
    #         last_updated_at: Time.now, # required
    #         status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "READY", "DELETING"], # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAgentRuntimesResponse]
    def list_agent_runtimes(params = {}, options = {})
      request = build_request(:list_agent_runtimes, params)
      request.send_request(options)
    end

    # <p>Lists all API key credential providers in your account.</p>
    # @param [Hash, Types::ListApiKeyCredentialProvidersRequest] params
    # @option params [String] :next_token
    #   <p>Pagination token.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_api_key_credential_providers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     credential_providers: [ # required
    #       {
    #         name: "CredentialProviderName", # required
    #         credential_provider_arn: "ApiKeyCredentialProviderArnType", # required
    #         created_time: Time.now, # required
    #         last_updated_time: Time.now, # required
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListApiKeyCredentialProvidersResponse]
    def list_api_key_credential_providers(params = {}, options = {})
      request = build_request(:list_api_key_credential_providers, params)
      request.send_request(options)
    end

    # <p>Lists all custom browsers in your account.</p>
    # @param [Hash, Types::ListBrowsersRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. The default value is 10. The maximum value is 50.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>
    # @option params [String] :type
    #   <p>The type of browsers to list. If not specified, all browser types are returned.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken",
    #     type: "SYSTEM" # One of: ["SYSTEM", "CUSTOM"]
    #   }
    #   options = {}
    #   response = client.list_browsers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     browser_summaries: [ # required
    #       {
    #         browser_id: "BrowserId", # required
    #         browser_arn: "BrowserArn", # required
    #         name: "SandboxName",
    #         description: "Description",
    #         status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "READY", "DELETING", "DELETE_FAILED", "DELETED"], # required
    #         created_at: Time.now, # required
    #         last_updated_at: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListBrowsersResponse]
    def list_browsers(params = {}, options = {})
      request = build_request(:list_browsers, params)
      request.send_request(options)
    end

    # <p>Lists all custom code interpreters in your account.</p>
    # @param [Hash, Types::ListCodeInterpretersRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response.</p>
    # @option params [String] :next_token
    #   <p>A token to retrieve the next page of results.</p>
    # @option params [String] :type
    #   <p>The type of code interpreters to list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken",
    #     type: "SYSTEM" # One of: ["SYSTEM", "CUSTOM"]
    #   }
    #   options = {}
    #   response = client.list_code_interpreters(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     code_interpreter_summaries: [ # required
    #       {
    #         code_interpreter_id: "CodeInterpreterId", # required
    #         code_interpreter_arn: "CodeInterpreterArn", # required
    #         name: "SandboxName",
    #         description: "Description",
    #         status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "READY", "DELETING", "DELETE_FAILED", "DELETED"], # required
    #         created_at: Time.now, # required
    #         last_updated_at: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListCodeInterpretersResponse]
    def list_code_interpreters(params = {}, options = {})
      request = build_request(:list_code_interpreters, params)
      request.send_request(options)
    end

    # <p>Lists all targets for a specific gateway.</p>
    # @param [Hash, Types::ListGatewayTargetsRequest] params
    # @option params [String] :gateway_identifier
    #   <p>The identifier of the gateway to list targets for.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response. If the total number of results is greater than this value, use the token returned in the response in the <code>nextToken</code> field when making another request to return the next batch of results.</p>
    # @option params [String] :next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, enter the token returned in the <code>nextToken</code> field in the response in this field to return the next batch of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_identifier: "GatewayIdentifier", # required
    #     max_results: 1,
    #     next_token: "TargetNextToken"
    #   }
    #   options = {}
    #   response = client.list_gateway_targets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [ # required
    #       {
    #         target_id: "TargetId", # required
    #         name: "TargetName", # required
    #         status: "CREATING" # One of: ["CREATING", "UPDATING", "UPDATE_UNSUCCESSFUL", "DELETING", "READY", "FAILED"], # required
    #         description: "TargetDescription",
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #       }
    #     ],
    #     next_token: "TargetNextToken"
    #   }
    # @return [Types::ListGatewayTargetsResponse]
    def list_gateway_targets(params = {}, options = {})
      request = build_request(:list_gateway_targets, params)
      request.send_request(options)
    end

    # <p>Lists all gateways in the account.</p>
    # @param [Hash, Types::ListGatewaysRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response. If the total number of results is greater than this value, use the token returned in the response in the <code>nextToken</code> field when making another request to return the next batch of results.</p>
    # @option params [String] :next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, enter the token returned in the <code>nextToken</code> field in the response in this field to return the next batch of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "GatewayNextToken"
    #   }
    #   options = {}
    #   response = client.list_gateways(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [ # required
    #       {
    #         gateway_id: "GatewayId", # required
    #         name: "GatewayName", # required
    #         status: "CREATING" # One of: ["CREATING", "UPDATING", "UPDATE_UNSUCCESSFUL", "DELETING", "READY", "FAILED"], # required
    #         description: "GatewayDescription",
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #         authorizer_type: "CUSTOM_JWT" # One of: ["CUSTOM_JWT"], # required
    #         protocol_type: "MCP" # One of: ["MCP"], # required
    #       }
    #     ],
    #     next_token: "GatewayNextToken"
    #   }
    # @return [Types::ListGatewaysResponse]
    def list_gateways(params = {}, options = {})
      request = build_request(:list_gateways, params)
      request.send_request(options)
    end

    # <p>Lists the available Amazon Bedrock AgentCore Memory resources in the current Amazon Web Services Region.</p>
    # @param [Hash, Types::ListMemoriesInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. The default value is 10. The maximum value is 50.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_memories(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     memories: [ # required
    #       {
    #         arn: "MemoryArn",
    #         id: "MemoryId",
    #         status: "CREATING" # One of: ["CREATING", "ACTIVE", "FAILED", "DELETING"],
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListMemoriesOutput]
    def list_memories(params = {}, options = {})
      request = build_request(:list_memories, params)
      request.send_request(options)
    end

    # <p>Lists all OAuth2 credential providers in your account.</p>
    # @param [Hash, Types::ListOauth2CredentialProvidersRequest] params
    # @option params [String] :next_token
    #   <p>Pagination token.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_oauth2_credential_providers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     credential_providers: [ # required
    #       {
    #         name: "CredentialProviderName", # required
    #         credential_provider_vendor: "GoogleOauth2" # One of: ["GoogleOauth2", "GithubOauth2", "SlackOauth2", "SalesforceOauth2", "MicrosoftOauth2", "CustomOauth2"], # required
    #         credential_provider_arn: "CredentialProviderArnType", # required
    #         created_time: Time.now, # required
    #         last_updated_time: Time.now, # required
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListOauth2CredentialProvidersResponse]
    def list_oauth2_credential_providers(params = {}, options = {})
      request = build_request(:list_oauth2_credential_providers, params)
      request.send_request(options)
    end

    # <p>Lists the tags associated with the specified resource.</p> <note> <p>This feature is currently available only for AgentCore Runtime, Browser, Code Interpreter tool, and Gateway.</p> </note>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource for which you want to list tags.</p>
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

    # <p>Lists all workload identities in your account.</p>
    # @param [Hash, Types::ListWorkloadIdentitiesRequest] params
    # @option params [String] :next_token
    #   <p>Pagination token.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_workload_identities(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workload_identities: [ # required
    #       {
    #         name: "WorkloadIdentityNameType", # required
    #         workload_identity_arn: "WorkloadIdentityArnType", # required
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListWorkloadIdentitiesResponse]
    def list_workload_identities(params = {}, options = {})
      request = build_request(:list_workload_identities, params)
      request.send_request(options)
    end

    # <p>Sets the customer master key (CMK) for a token vault.</p>
    # @param [Hash, Types::SetTokenVaultCMKRequest] params
    # @option params [String] :token_vault_id
    #   <p>The unique identifier of the token vault to update.</p>
    # @option params [Types::KmsConfiguration] :kms_configuration
    #   <p>The KMS configuration for the token vault, including the key type and KMS key ARN.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     token_vault_id: "TokenVaultIdType",
    #     kms_configuration: { # required
    #       key_type: "CustomerManagedKey" # One of: ["CustomerManagedKey", "ServiceManagedKey"], # required
    #       kms_key_arn: "KmsKeyArn"
    #     }
    #   }
    #   options = {}
    #   response = client.set_token_vault_cmk(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     token_vault_id: "TokenVaultIdType", # required
    #     kms_configuration: { # required
    #       key_type: "CustomerManagedKey" # One of: ["CustomerManagedKey", "ServiceManagedKey"], # required
    #       kms_key_arn: "KmsKeyArn"
    #     },
    #     last_modified_date: Time.now, # required
    #   }
    # @return [Types::SetTokenVaultCMKResponse]
    def set_token_vault_cmk(params = {}, options = {})
      request = build_request(:set_token_vault_cmk, params)
      request.send_request(options)
    end

    # <p>Associates the specified tags to a resource with the specified resourceArn. If existing tags on a resource are not specified in the request parameters, they are not changed. When a resource is deleted, the tags associated with that resource are also deleted.</p> <note> <p>This feature is currently available only for AgentCore Runtime, Browser, Code Interpreter tool, and Gateway.</p> </note>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to tag.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to add to the resource. A tag is a key-value pair.</p>
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

    # <p>Removes the specified tags from the specified resource.</p> <note> <p>This feature is currently available only for AgentCore Runtime, Browser, Code Interpreter tool, and Gateway.</p> </note>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to untag.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The tag keys of the tags to remove from the resource.</p>
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

    # <p>Updates an existing Amazon Secure Agent.</p>
    # @param [Hash, Types::UpdateAgentRuntimeRequest] params
    # @option params [String] :agent_runtime_id
    #   <p>The unique identifier of the AgentCore Runtime to update.</p>
    # @option params [String] :description
    #   <p>The updated description of the AgentCore Runtime.</p>
    # @option params [Types::AgentRuntimeArtifact] :agent_runtime_artifact
    #   <p>The updated artifact of the AgentCore Runtime.</p>
    # @option params [String] :role_arn
    #   <p>The updated IAM role ARN that provides permissions for the AgentCore Runtime.</p>
    # @option params [Types::NetworkConfiguration] :network_configuration
    #   <p>The updated network configuration for the AgentCore Runtime.</p>
    # @option params [Types::ProtocolConfiguration] :protocol_configuration
    #   <p>The protocol configuration for an agent runtime. This structure defines how the agent runtime communicates with clients.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure idempotency of the request.</p>
    # @option params [Hash<String, String>] :environment_variables
    #   <p>Updated environment variables to set in the AgentCore Runtime environment.</p>
    # @option params [Types::AuthorizerConfiguration] :authorizer_configuration
    #   <p>The updated authorizer configuration for the AgentCore Runtime.</p>
    # @option params [Types::RequestHeaderConfiguration] :request_header_configuration
    #   <p>The updated configuration for HTTP request headers that will be passed through to the runtime.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_runtime_id: "AgentRuntimeId", # required
    #     description: "Description",
    #     agent_runtime_artifact: { # required
    #       # One of:
    #       container_configuration: {
    #         container_uri: "RuntimeContainerUri", # required
    #       }
    #     },
    #     role_arn: "RoleArn", # required
    #     network_configuration: { # required
    #       network_mode: "PUBLIC" # One of: ["PUBLIC", "VPC"], # required
    #       network_mode_config: {
    #         security_groups: ["SecurityGroupId"], # required
    #         subnets: ["SubnetId"], # required
    #       }
    #     },
    #     protocol_configuration: {
    #       server_protocol: "MCP" # One of: ["MCP", "HTTP"], # required
    #     },
    #     client_token: "ClientToken",
    #     environment_variables: {
    #       "EnvironmentVariableKey" => "EnvironmentVariableValue"
    #     },
    #     authorizer_configuration: {
    #       # One of:
    #       custom_jwt_authorizer: {
    #         discovery_url: "DiscoveryUrl", # required
    #         allowed_audience: ["AllowedAudience"],
    #         allowed_clients: ["AllowedClient"]
    #       }
    #     },
    #     request_header_configuration: {
    #       # One of:
    #       request_header_allowlist: ["HeaderName"]
    #     }
    #   }
    #   options = {}
    #   response = client.update_agent_runtime(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     agent_runtime_arn: "AgentRuntimeArn", # required
    #     agent_runtime_id: "AgentRuntimeId", # required
    #     workload_identity_details: {
    #       workload_identity_arn: "WorkloadIdentityArn", # required
    #     },
    #     agent_runtime_version: "AgentRuntimeVersion", # required
    #     created_at: Time.now, # required
    #     last_updated_at: Time.now, # required
    #     status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "READY", "DELETING"], # required
    #   }
    # @return [Types::UpdateAgentRuntimeResponse]
    def update_agent_runtime(params = {}, options = {})
      request = build_request(:update_agent_runtime, params)
      request.send_request(options)
    end

    # <p>Updates an existing Amazon Bedrock AgentCore Runtime endpoint.</p>
    # @param [Hash, Types::UpdateAgentRuntimeEndpointRequest] params
    # @option params [String] :agent_runtime_id
    #   <p>The unique identifier of the AgentCore Runtime associated with the endpoint.</p>
    # @option params [String] :endpoint_name
    #   <p>The name of the AgentCore Runtime endpoint to update.</p>
    # @option params [String] :agent_runtime_version
    #   <p>The updated version of the AgentCore Runtime for the endpoint.</p>
    # @option params [String] :description
    #   <p>The updated description of the AgentCore Runtime endpoint.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure idempotency of the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_runtime_id: "AgentRuntimeId", # required
    #     endpoint_name: "EndpointName", # required
    #     agent_runtime_version: "AgentRuntimeVersion",
    #     description: "AgentEndpointDescription",
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.update_agent_runtime_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     live_version: "AgentRuntimeVersion",
    #     target_version: "AgentRuntimeVersion",
    #     agent_runtime_endpoint_arn: "AgentRuntimeEndpointArn", # required
    #     agent_runtime_arn: "AgentRuntimeArn", # required
    #     status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "READY", "DELETING"], # required
    #     created_at: Time.now, # required
    #     last_updated_at: Time.now, # required
    #   }
    # @return [Types::UpdateAgentRuntimeEndpointResponse]
    def update_agent_runtime_endpoint(params = {}, options = {})
      request = build_request(:update_agent_runtime_endpoint, params)
      request.send_request(options)
    end

    # <p>Updates an existing API key credential provider.</p>
    # @param [Hash, Types::UpdateApiKeyCredentialProviderRequest] params
    # @option params [String] :name
    #   <p>The name of the API key credential provider to update.</p>
    # @option params [String] :api_key
    #   <p>The new API key to use for authentication. This value replaces the existing API key and is encrypted and stored securely.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "CredentialProviderName", # required
    #     api_key: "ApiKeyType", # required
    #   }
    #   options = {}
    #   response = client.update_api_key_credential_provider(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     api_key_secret_arn: { # required
    #       secret_arn: "SecretArn", # required
    #     },
    #     name: "CredentialProviderName", # required
    #     credential_provider_arn: "ApiKeyCredentialProviderArnType", # required
    #     created_time: Time.now, # required
    #     last_updated_time: Time.now, # required
    #   }
    # @return [Types::UpdateApiKeyCredentialProviderResponse]
    def update_api_key_credential_provider(params = {}, options = {})
      request = build_request(:update_api_key_credential_provider, params)
      request.send_request(options)
    end

    # <p>Updates an existing gateway.</p>
    # @param [Hash, Types::UpdateGatewayRequest] params
    # @option params [String] :gateway_identifier
    #   <p>The identifier of the gateway to update.</p>
    # @option params [String] :name
    #   <p>The name of the gateway. This name must be the same as the one when the gateway was created.</p>
    # @option params [String] :description
    #   <p>The updated description for the gateway.</p>
    # @option params [String] :role_arn
    #   <p>The updated IAM role ARN that provides permissions for the gateway.</p>
    # @option params [String] :protocol_type
    #   <p>The updated protocol type for the gateway.</p>
    # @option params [Types::GatewayProtocolConfiguration] :protocol_configuration
    #   <p>The configuration for a gateway protocol. This structure defines how the gateway communicates with external services.</p>
    # @option params [String] :authorizer_type
    #   <p>The updated authorizer type for the gateway.</p>
    # @option params [Types::AuthorizerConfiguration] :authorizer_configuration
    #   <p>The updated authorizer configuration for the gateway.</p>
    # @option params [String] :kms_key_arn
    #   <p>The updated ARN of the KMS key used to encrypt the gateway.</p>
    # @option params [String] :exception_level
    #   <p>The level of detail in error messages returned when invoking the gateway.</p> <ul> <li> <p>If the value is <code>DEBUG</code>, granular exception messages are returned to help a user debug the gateway.</p> </li> <li> <p>If the value is omitted, a generic error message is returned to the end user.</p> </li> </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_identifier: "GatewayIdentifier", # required
    #     name: "GatewayName", # required
    #     description: "GatewayDescription",
    #     role_arn: "RoleArn", # required
    #     protocol_type: "MCP" # One of: ["MCP"], # required
    #     protocol_configuration: {
    #       # One of:
    #       mcp: {
    #         supported_versions: ["McpVersion"],
    #         instructions: "McpInstructions",
    #         search_type: "SEMANTIC" # One of: ["SEMANTIC"]
    #       }
    #     },
    #     authorizer_type: "CUSTOM_JWT" # One of: ["CUSTOM_JWT"], # required
    #     authorizer_configuration: { # required
    #       # One of:
    #       custom_jwt_authorizer: {
    #         discovery_url: "DiscoveryUrl", # required
    #         allowed_audience: ["AllowedAudience"],
    #         allowed_clients: ["AllowedClient"]
    #       }
    #     },
    #     kms_key_arn: "KmsKeyArn",
    #     exception_level: "DEBUG" # One of: ["DEBUG"]
    #   }
    #   options = {}
    #   response = client.update_gateway(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway_arn: "GatewayArn", # required
    #     gateway_id: "GatewayId", # required
    #     gateway_url: "GatewayUrl",
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #     status: "CREATING" # One of: ["CREATING", "UPDATING", "UPDATE_UNSUCCESSFUL", "DELETING", "READY", "FAILED"], # required
    #     status_reasons: ["StatusReason"],
    #     name: "GatewayName", # required
    #     description: "GatewayDescription",
    #     role_arn: "RoleArn",
    #     protocol_type: "MCP" # One of: ["MCP"], # required
    #     protocol_configuration: {
    #       # One of:
    #       mcp: {
    #         supported_versions: ["McpVersion"],
    #         instructions: "McpInstructions",
    #         search_type: "SEMANTIC" # One of: ["SEMANTIC"]
    #       }
    #     },
    #     authorizer_type: "CUSTOM_JWT" # One of: ["CUSTOM_JWT"], # required
    #     authorizer_configuration: {
    #       # One of:
    #       custom_jwt_authorizer: {
    #         discovery_url: "DiscoveryUrl", # required
    #         allowed_audience: ["AllowedAudience"],
    #         allowed_clients: ["AllowedClient"]
    #       }
    #     },
    #     kms_key_arn: "KmsKeyArn",
    #     workload_identity_details: {
    #       workload_identity_arn: "WorkloadIdentityArn", # required
    #     },
    #     exception_level: "DEBUG" # One of: ["DEBUG"]
    #   }
    # @return [Types::UpdateGatewayResponse]
    def update_gateway(params = {}, options = {})
      request = build_request(:update_gateway, params)
      request.send_request(options)
    end

    # <p>Updates an existing gateway target.</p>
    # @param [Hash, Types::UpdateGatewayTargetRequest] params
    # @option params [String] :gateway_identifier
    #   <p>The unique identifier of the gateway associated with the target.</p>
    # @option params [String] :target_id
    #   <p>The unique identifier of the gateway target to update.</p>
    # @option params [String] :name
    #   <p>The updated name for the gateway target.</p>
    # @option params [String] :description
    #   <p>The updated description for the gateway target.</p>
    # @option params [Types::TargetConfiguration] :target_configuration
    #   <p>The configuration for a gateway target. This structure defines how the gateway connects to and interacts with the target endpoint.</p>
    # @option params [Array<Types::CredentialProviderConfiguration>] :credential_provider_configurations
    #   <p>The updated credential provider configurations for the gateway target.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_identifier: "GatewayIdentifier", # required
    #     target_id: "TargetId", # required
    #     name: "TargetName", # required
    #     description: "TargetDescription",
    #     target_configuration: { # required
    #       # One of:
    #       mcp: {
    #         # One of:
    #         open_api_schema: {
    #           # One of:
    #           s3: {
    #             uri: "S3BucketUri",
    #             bucket_owner_account_id: "AwsAccountId"
    #           },
    #           inline_payload: "InlinePayload"
    #         },
    #         smithy_model: {
    #           # One of:
    #           s3: {
    #             uri: "S3BucketUri",
    #             bucket_owner_account_id: "AwsAccountId"
    #           },
    #           inline_payload: "InlinePayload"
    #         },
    #         lambda: {
    #           lambda_arn: "LambdaFunctionArn", # required
    #           tool_schema: { # required
    #             # One of:
    #             s3: {
    #               uri: "S3BucketUri",
    #               bucket_owner_account_id: "AwsAccountId"
    #             },
    #             inline_payload: [
    #               {
    #                 name: "String", # required
    #                 description: "String", # required
    #                 input_schema: { # required
    #                   type: "string" # One of: ["string", "number", "object", "array", "boolean", "integer"], # required
    #                   properties: {
    #                     "String" => {
    #                       # recursive SchemaDefinition
    #                     }
    #                   },
    #                   required: ["String"],
    #                   items: {
    #                     # recursive SchemaDefinition
    #                   },
    #                   description: "String"
    #                 },
    #                 output_schema: {
    #                   type: "string" # One of: ["string", "number", "object", "array", "boolean", "integer"], # required
    #                   properties: {
    #                     "String" => {
    #                       # recursive SchemaDefinition
    #                     }
    #                   },
    #                   required: ["String"],
    #                   items: {
    #                     # recursive SchemaDefinition
    #                   },
    #                   description: "String"
    #                 }
    #               }
    #             ]
    #           }
    #         }
    #       }
    #     },
    #     credential_provider_configurations: [ # required
    #       {
    #         credential_provider_type: "GATEWAY_IAM_ROLE" # One of: ["GATEWAY_IAM_ROLE", "OAUTH", "API_KEY"], # required
    #         credential_provider: {
    #           # One of:
    #           oauth_credential_provider: {
    #             provider_arn: "OAuthCredentialProviderArn", # required
    #             scopes: ["OAuthScope"], # required
    #             custom_parameters: {
    #               "OAuthCustomParametersKey" => "OAuthCustomParametersValue"
    #             }
    #           },
    #           api_key_credential_provider: {
    #             provider_arn: "ApiKeyCredentialProviderArn", # required
    #             credential_parameter_name: "ApiKeyCredentialParameterName",
    #             credential_prefix: "ApiKeyCredentialPrefix",
    #             credential_location: "HEADER" # One of: ["HEADER", "QUERY_PARAMETER"]
    #           }
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_gateway_target(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway_arn: "GatewayArn", # required
    #     target_id: "TargetId", # required
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #     status: "CREATING" # One of: ["CREATING", "UPDATING", "UPDATE_UNSUCCESSFUL", "DELETING", "READY", "FAILED"], # required
    #     status_reasons: ["StatusReason"],
    #     name: "TargetName", # required
    #     description: "TargetDescription",
    #     target_configuration: { # required
    #       # One of:
    #       mcp: {
    #         # One of:
    #         open_api_schema: {
    #           # One of:
    #           s3: {
    #             uri: "S3BucketUri",
    #             bucket_owner_account_id: "AwsAccountId"
    #           },
    #           inline_payload: "InlinePayload"
    #         },
    #         smithy_model: {
    #           # One of:
    #           s3: {
    #             uri: "S3BucketUri",
    #             bucket_owner_account_id: "AwsAccountId"
    #           },
    #           inline_payload: "InlinePayload"
    #         },
    #         lambda: {
    #           lambda_arn: "LambdaFunctionArn", # required
    #           tool_schema: { # required
    #             # One of:
    #             s3: {
    #               uri: "S3BucketUri",
    #               bucket_owner_account_id: "AwsAccountId"
    #             },
    #             inline_payload: [
    #               {
    #                 name: "String", # required
    #                 description: "String", # required
    #                 input_schema: { # required
    #                   type: "string" # One of: ["string", "number", "object", "array", "boolean", "integer"], # required
    #                   properties: {
    #                     "String" => {
    #                       # recursive SchemaDefinition
    #                     }
    #                   },
    #                   required: ["String"],
    #                   items: {
    #                     # recursive SchemaDefinition
    #                   },
    #                   description: "String"
    #                 },
    #                 output_schema: {
    #                   type: "string" # One of: ["string", "number", "object", "array", "boolean", "integer"], # required
    #                   properties: {
    #                     "String" => {
    #                       # recursive SchemaDefinition
    #                     }
    #                   },
    #                   required: ["String"],
    #                   items: {
    #                     # recursive SchemaDefinition
    #                   },
    #                   description: "String"
    #                 }
    #               }
    #             ]
    #           }
    #         }
    #       }
    #     },
    #     credential_provider_configurations: [ # required
    #       {
    #         credential_provider_type: "GATEWAY_IAM_ROLE" # One of: ["GATEWAY_IAM_ROLE", "OAUTH", "API_KEY"], # required
    #         credential_provider: {
    #           # One of:
    #           oauth_credential_provider: {
    #             provider_arn: "OAuthCredentialProviderArn", # required
    #             scopes: ["OAuthScope"], # required
    #             custom_parameters: {
    #               "OAuthCustomParametersKey" => "OAuthCustomParametersValue"
    #             }
    #           },
    #           api_key_credential_provider: {
    #             provider_arn: "ApiKeyCredentialProviderArn", # required
    #             credential_parameter_name: "ApiKeyCredentialParameterName",
    #             credential_prefix: "ApiKeyCredentialPrefix",
    #             credential_location: "HEADER" # One of: ["HEADER", "QUERY_PARAMETER"]
    #           }
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::UpdateGatewayTargetResponse]
    def update_gateway_target(params = {}, options = {})
      request = build_request(:update_gateway_target, params)
      request.send_request(options)
    end

    # <p>Update an Amazon Bedrock AgentCore Memory resource memory.</p>
    # @param [Hash, Types::UpdateMemoryInput] params
    # @option params [String] :client_token
    #   <p>A client token is used for keeping track of idempotent requests. It can contain a session id which can be around 250 chars, combined with a unique AWS identifier.</p>
    # @option params [String] :memory_id
    #   <p>The unique identifier of the memory to update.</p>
    # @option params [String] :description
    #   <p>The updated description of the AgentCore Memory resource.</p>
    # @option params [Integer] :event_expiry_duration
    #   <p>The number of days after which memory events will expire, between 7 and 365 days.</p>
    # @option params [String] :memory_execution_role_arn
    #   <p>The ARN of the IAM role that provides permissions for the AgentCore Memory resource.</p>
    # @option params [Types::ModifyMemoryStrategies] :memory_strategies
    #   <p>The memory strategies to add, modify, or delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "NonEmptyString",
    #     memory_id: "MemoryId", # required
    #     description: "Description",
    #     event_expiry_duration: 1,
    #     memory_execution_role_arn: "Arn",
    #     memory_strategies: {
    #       add_memory_strategies: [{
    #         # One of:
    #         semantic_memory_strategy: {
    #           name: "Name", # required
    #           description: "Description",
    #           namespaces: ["Namespace"]
    #         },
    #         summary_memory_strategy: {
    #           name: "Name", # required
    #           description: "Description",
    #           namespaces: ["Namespace"]
    #         },
    #         user_preference_memory_strategy: {
    #           name: "Name", # required
    #           description: "Description",
    #           namespaces: ["Namespace"]
    #         },
    #         custom_memory_strategy: {
    #           name: "Name", # required
    #           description: "Description",
    #           namespaces: ["Namespace"],
    #           configuration: {
    #             # One of:
    #             semantic_override: {
    #               extraction: {
    #                 append_to_prompt: "Prompt", # required
    #                 model_id: "String", # required
    #               },
    #               consolidation: {
    #                 append_to_prompt: "Prompt", # required
    #                 model_id: "String", # required
    #               }
    #             },
    #             summary_override: {
    #               consolidation: {
    #                 append_to_prompt: "Prompt", # required
    #                 model_id: "String", # required
    #               }
    #             },
    #             user_preference_override: {
    #               extraction: {
    #                 append_to_prompt: "Prompt", # required
    #                 model_id: "String", # required
    #               },
    #               consolidation: {
    #                 append_to_prompt: "Prompt", # required
    #                 model_id: "String", # required
    #               }
    #             }
    #           }
    #         }
    #       }],
    #       modify_memory_strategies: [
    #         {
    #           memory_strategy_id: "String", # required
    #           description: "Description",
    #           namespaces: ["Namespace"],
    #           configuration: {
    #             extraction: {
    #               # One of:
    #               custom_extraction_configuration: {
    #                 # One of:
    #                 semantic_extraction_override: {
    #                   append_to_prompt: "Prompt", # required
    #                   model_id: "String", # required
    #                 },
    #                 user_preference_extraction_override: {
    #                   append_to_prompt: "Prompt", # required
    #                   model_id: "String", # required
    #                 }
    #               }
    #             },
    #             consolidation: {
    #               # One of:
    #               custom_consolidation_configuration: {
    #                 # One of:
    #                 semantic_consolidation_override: {
    #                   append_to_prompt: "Prompt", # required
    #                   model_id: "String", # required
    #                 },
    #                 summary_consolidation_override: {
    #                   append_to_prompt: "Prompt", # required
    #                   model_id: "String", # required
    #                 },
    #                 user_preference_consolidation_override: {
    #                   append_to_prompt: "Prompt", # required
    #                   model_id: "String", # required
    #                 }
    #               }
    #             }
    #           }
    #         }
    #       ],
    #       delete_memory_strategies: [
    #         {
    #           memory_strategy_id: "String", # required
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.update_memory(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     memory: {
    #       arn: "MemoryArn", # required
    #       id: "MemoryId", # required
    #       name: "Name", # required
    #       description: "Description",
    #       encryption_key_arn: "Arn",
    #       memory_execution_role_arn: "Arn",
    #       event_expiry_duration: 1, # required
    #       status: "CREATING" # One of: ["CREATING", "ACTIVE", "FAILED", "DELETING"], # required
    #       failure_reason: "String",
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       strategies: [
    #         {
    #           strategy_id: "MemoryStrategyId", # required
    #           name: "Name", # required
    #           description: "Description",
    #           configuration: {
    #             type: "SEMANTIC_OVERRIDE" # One of: ["SEMANTIC_OVERRIDE", "SUMMARY_OVERRIDE", "USER_PREFERENCE_OVERRIDE"],
    #             extraction: {
    #               # One of:
    #               custom_extraction_configuration: {
    #                 # One of:
    #                 semantic_extraction_override: {
    #                   append_to_prompt: "Prompt", # required
    #                   model_id: "String", # required
    #                 },
    #                 user_preference_extraction_override: {
    #                   append_to_prompt: "Prompt", # required
    #                   model_id: "String", # required
    #                 }
    #               }
    #             },
    #             consolidation: {
    #               # One of:
    #               custom_consolidation_configuration: {
    #                 # One of:
    #                 semantic_consolidation_override: {
    #                   append_to_prompt: "Prompt", # required
    #                   model_id: "String", # required
    #                 },
    #                 summary_consolidation_override: {
    #                   append_to_prompt: "Prompt", # required
    #                   model_id: "String", # required
    #                 },
    #                 user_preference_consolidation_override: {
    #                   append_to_prompt: "Prompt", # required
    #                   model_id: "String", # required
    #                 }
    #               }
    #             }
    #           },
    #           type: "SEMANTIC" # One of: ["SEMANTIC", "SUMMARIZATION", "USER_PREFERENCE", "CUSTOM"], # required
    #           namespaces: ["Namespace"], # required
    #           created_at: Time.now,
    #           updated_at: Time.now,
    #           status: "CREATING" # One of: ["CREATING", "ACTIVE", "DELETING", "FAILED"]
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::UpdateMemoryOutput]
    def update_memory(params = {}, options = {})
      request = build_request(:update_memory, params)
      request.send_request(options)
    end

    # <p>Updates an existing OAuth2 credential provider.</p>
    # @param [Hash, Types::UpdateOauth2CredentialProviderRequest] params
    # @option params [String] :name
    #   <p>The name of the OAuth2 credential provider to update.</p>
    # @option params [String] :credential_provider_vendor
    #   <p>The vendor of the OAuth2 credential provider.</p>
    # @option params [Types::Oauth2ProviderConfigInput] :oauth2_provider_config_input
    #   <p>The configuration input for the OAuth2 provider.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "CredentialProviderName", # required
    #     credential_provider_vendor: "GoogleOauth2" # One of: ["GoogleOauth2", "GithubOauth2", "SlackOauth2", "SalesforceOauth2", "MicrosoftOauth2", "CustomOauth2"], # required
    #     oauth2_provider_config_input: { # required
    #       # One of:
    #       custom_oauth2_provider_config: {
    #         oauth_discovery: { # required
    #           # One of:
    #           discovery_url: "DiscoveryUrlType",
    #           authorization_server_metadata: {
    #             issuer: "IssuerUrlType", # required
    #             authorization_endpoint: "AuthorizationEndpointType", # required
    #             token_endpoint: "TokenEndpointType", # required
    #             response_types: ["ResponseType"]
    #           }
    #         },
    #         client_id: "ClientIdType", # required
    #         client_secret: "ClientSecretType", # required
    #       },
    #       google_oauth2_provider_config: {
    #         client_id: "ClientIdType", # required
    #         client_secret: "ClientSecretType", # required
    #       },
    #       github_oauth2_provider_config: {
    #         client_id: "ClientIdType", # required
    #         client_secret: "ClientSecretType", # required
    #       },
    #       slack_oauth2_provider_config: {
    #         client_id: "ClientIdType", # required
    #         client_secret: "ClientSecretType", # required
    #       },
    #       salesforce_oauth2_provider_config: {
    #         client_id: "ClientIdType", # required
    #         client_secret: "ClientSecretType", # required
    #       },
    #       microsoft_oauth2_provider_config: {
    #         client_id: "ClientIdType", # required
    #         client_secret: "ClientSecretType", # required
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_oauth2_credential_provider(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     client_secret_arn: { # required
    #       secret_arn: "SecretArn", # required
    #     },
    #     name: "CredentialProviderName", # required
    #     credential_provider_vendor: "GoogleOauth2" # One of: ["GoogleOauth2", "GithubOauth2", "SlackOauth2", "SalesforceOauth2", "MicrosoftOauth2", "CustomOauth2"], # required
    #     credential_provider_arn: "CredentialProviderArnType", # required
    #     oauth2_provider_config_output: { # required
    #       # One of:
    #       custom_oauth2_provider_config: {
    #         oauth_discovery: { # required
    #           # One of:
    #           discovery_url: "DiscoveryUrlType",
    #           authorization_server_metadata: {
    #             issuer: "IssuerUrlType", # required
    #             authorization_endpoint: "AuthorizationEndpointType", # required
    #             token_endpoint: "TokenEndpointType", # required
    #             response_types: ["ResponseType"]
    #           }
    #         }
    #       },
    #       google_oauth2_provider_config: {
    #         oauth_discovery: { # required
    #           # One of:
    #           discovery_url: "DiscoveryUrlType",
    #           authorization_server_metadata: {
    #             issuer: "IssuerUrlType", # required
    #             authorization_endpoint: "AuthorizationEndpointType", # required
    #             token_endpoint: "TokenEndpointType", # required
    #             response_types: ["ResponseType"]
    #           }
    #         }
    #       },
    #       github_oauth2_provider_config: {
    #         oauth_discovery: { # required
    #           # One of:
    #           discovery_url: "DiscoveryUrlType",
    #           authorization_server_metadata: {
    #             issuer: "IssuerUrlType", # required
    #             authorization_endpoint: "AuthorizationEndpointType", # required
    #             token_endpoint: "TokenEndpointType", # required
    #             response_types: ["ResponseType"]
    #           }
    #         }
    #       },
    #       slack_oauth2_provider_config: {
    #         oauth_discovery: { # required
    #           # One of:
    #           discovery_url: "DiscoveryUrlType",
    #           authorization_server_metadata: {
    #             issuer: "IssuerUrlType", # required
    #             authorization_endpoint: "AuthorizationEndpointType", # required
    #             token_endpoint: "TokenEndpointType", # required
    #             response_types: ["ResponseType"]
    #           }
    #         }
    #       },
    #       salesforce_oauth2_provider_config: {
    #         oauth_discovery: { # required
    #           # One of:
    #           discovery_url: "DiscoveryUrlType",
    #           authorization_server_metadata: {
    #             issuer: "IssuerUrlType", # required
    #             authorization_endpoint: "AuthorizationEndpointType", # required
    #             token_endpoint: "TokenEndpointType", # required
    #             response_types: ["ResponseType"]
    #           }
    #         }
    #       },
    #       microsoft_oauth2_provider_config: {
    #         oauth_discovery: { # required
    #           # One of:
    #           discovery_url: "DiscoveryUrlType",
    #           authorization_server_metadata: {
    #             issuer: "IssuerUrlType", # required
    #             authorization_endpoint: "AuthorizationEndpointType", # required
    #             token_endpoint: "TokenEndpointType", # required
    #             response_types: ["ResponseType"]
    #           }
    #         }
    #       }
    #     },
    #     created_time: Time.now, # required
    #     last_updated_time: Time.now, # required
    #   }
    # @return [Types::UpdateOauth2CredentialProviderResponse]
    def update_oauth2_credential_provider(params = {}, options = {})
      request = build_request(:update_oauth2_credential_provider, params)
      request.send_request(options)
    end

    # <p>Updates an existing workload identity.</p>
    # @param [Hash, Types::UpdateWorkloadIdentityRequest] params
    # @option params [String] :name
    #   <p>The name of the workload identity to update.</p>
    # @option params [Array<String>] :allowed_resource_oauth2_return_urls
    #   <p>The new list of allowed OAuth2 return URLs for resources associated with this workload identity. This list replaces the existing list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "WorkloadIdentityNameType", # required
    #     allowed_resource_oauth2_return_urls: ["ResourceOauth2ReturnUrlType"]
    #   }
    #   options = {}
    #   response = client.update_workload_identity(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "WorkloadIdentityNameType", # required
    #     workload_identity_arn: "WorkloadIdentityArnType", # required
    #     allowed_resource_oauth2_return_urls: ["ResourceOauth2ReturnUrlType"],
    #     created_time: Time.now, # required
    #     last_updated_time: Time.now, # required
    #   }
    # @return [Types::UpdateWorkloadIdentityResponse]
    def update_workload_identity(params = {}, options = {})
      request = build_request(:update_workload_identity, params)
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
      context[:gem_name] = 'aws-sdk-bedrockagentcorecontrol'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {
        memory_created: Waiters::MemoryCreated
      }
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
