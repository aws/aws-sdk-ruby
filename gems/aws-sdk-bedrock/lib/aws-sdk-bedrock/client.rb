# frozen_string_literal: true

# This is generated code!

require_relative 'plugins/endpoint'
require 'smithy-client/plugins/http_bearer_auth'
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
require 'aws-sdk-bedrock/plugins/bearer_authorization'
require 'aws-sdk-core/rest_json'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:bedrock)

module Aws::Bedrock
  # An API client for Aws::Bedrock.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AmazonBedrockControlPlaneService
    @identifier = :bedrock

    add_plugin(::Aws::Bedrock::Plugins::Endpoint)
    add_plugin(Smithy::Client::Plugins::HttpBearerAuth)
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
    add_plugin(Aws::Bedrock::Plugins::BearerAuthorization)

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
    # @option options [String] :bearer_token
    #  The bearer token to use for authentication.
    # @option options [Smithy::Client::BearerTokenProvider] :bearer_token_provider
    #  A bearer token identity provider. This can be an instance of a {Smithy::Client::BearerTokenProvider} or any
    #  class that responds to #identity and returns a {Smithy::Client::BearerToken}.
    # @option options [Smithy::Client::BearerTokenSigner] :bearer_token_signer
    #  A signer class that signs requests with a bearer token.
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::Bedrock::EndpointProvider)
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

    # <p>Deletes a batch of evaluation jobs. An evaluation job can only be deleted if it has following status <code>FAILED</code>, <code>COMPLETED</code>, and <code>STOPPED</code>. You can request up to 25 model evaluation jobs be deleted in a single request.</p>
    # @param [Hash, Types::BatchDeleteEvaluationJobRequest] params
    # @option params [Array<String>] :job_identifiers
    #   <p>A list of one or more evaluation job Amazon Resource Names (ARNs) you want to delete.</p>
    # @example Delete evaluation jobs
    #   # The following example shows a request to delete two model evaluation jobs, where one of the jobs is not found.
    #   params = {
    #     job_identifiers: [
    #       "arn:aws:bedrock:us-east-2:123456789012:evaluation-job/12rnxmplqv0v",
    #       "arn:aws:bedrock:us-east-2:123456789012:evaluation-job/rispxmpl12rn"
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_delete_evaluation_job(params, options)
    #   response.to_h #=>
    #   {
    #     evaluation_jobs: [
    #       {
    #         job_identifier: "arn:aws:bedrock:us-east-2:123456789012:evaluation-job/12rnxmplqv0v",
    #         job_status: Deleting
    #       }
    #     ],
    #     errors: [
    #       {
    #         message: "Unable to locate this job to delete.",
    #         code: "404",
    #         job_identifier: "arn:aws:bedrock:us-east-2:123456789012:evaluation-job/rispxmpl12rn"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     job_identifiers: ["EvaluationJobIdentifier"], # required
    #   }
    #   options = {}
    #   response = client.batch_delete_evaluation_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     errors: [ # required
    #       {
    #         job_identifier: "EvaluationJobIdentifier", # required
    #         code: "String", # required
    #         message: "String"
    #       }
    #     ],
    #     evaluation_jobs: [ # required
    #       {
    #         job_identifier: "EvaluationJobIdentifier", # required
    #         job_status: "InProgress" # One of: ["InProgress", "Completed", "Failed", "Stopping", "Stopped", "Deleting"], # required
    #       }
    #     ]
    #   }
    # @return [Types::BatchDeleteEvaluationJobResponse]
    def batch_delete_evaluation_job(params = {}, options = {})
      request = build_request(:batch_delete_evaluation_job, params)
      request.send_request(options)
    end

    # <p>Cancels a running Automated Reasoning policy build workflow. This stops the policy generation process and prevents further processing of the source documents.</p>
    # @param [Hash, Types::CancelAutomatedReasoningPolicyBuildWorkflowRequest] params
    # @option params [String] :policy_arn
    #   <p>The Amazon Resource Name (ARN) of the Automated Reasoning policy whose build workflow you want to cancel.</p>
    # @option params [String] :build_workflow_id
    #   <p>The unique identifier of the build workflow to cancel. You can get this ID from the StartAutomatedReasoningPolicyBuildWorkflow response or by listing build workflows.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_arn: "AutomatedReasoningPolicyArn", # required
    #     build_workflow_id: "AutomatedReasoningPolicyBuildWorkflowId", # required
    #   }
    #   options = {}
    #   response = client.cancel_automated_reasoning_policy_build_workflow(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CancelAutomatedReasoningPolicyBuildWorkflowResponse]
    def cancel_automated_reasoning_policy_build_workflow(params = {}, options = {})
      request = build_request(:cancel_automated_reasoning_policy_build_workflow, params)
      request.send_request(options)
    end

    # <p>Creates an Automated Reasoning policy for Amazon Bedrock Guardrails. Automated Reasoning policies use mathematical techniques to detect hallucinations, suggest corrections, and highlight unstated assumptions in the responses of your GenAI application.</p> <p>To create a policy, you upload a source document that describes the rules that you're encoding. Automated Reasoning extracts important concepts from the source document that will become variables in the policy and infers policy rules.</p>
    # @param [Hash, Types::CreateAutomatedReasoningPolicyRequest] params
    # @option params [String] :name
    #   <p>A unique name for the Automated Reasoning policy. The name must be between 1 and 63 characters and can contain letters, numbers, hyphens, and underscores.</p>
    # @option params [String] :description
    #   <p>A description of the Automated Reasoning policy. Use this to provide context about the policy's purpose and the types of validations it performs.</p>
    # @option params [String] :client_request_token
    #   <p>A unique, case-sensitive identifier to ensure that the operation completes no more than once. If this token matches a previous request, Amazon Bedrock ignores the request but doesn't return an error.</p>
    # @option params [Types::AutomatedReasoningPolicyDefinition] :policy_definition
    #   <p>The policy definition that contains the formal logic rules, variables, and custom variable types used to validate foundation model responses in your application.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of tags to associate with the Automated Reasoning policy. Tags help you organize and manage your policies.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "AutomatedReasoningPolicyName", # required
    #     description: "AutomatedReasoningPolicyDescription",
    #     client_request_token: "IdempotencyToken",
    #     policy_definition: {
    #       version: "AutomatedReasoningPolicyFormatVersion",
    #       types: [
    #         {
    #           name: "AutomatedReasoningPolicyDefinitionTypeName", # required
    #           description: "AutomatedReasoningPolicyDefinitionTypeDescription",
    #           values: [ # required
    #             {
    #               value: "AutomatedReasoningPolicyDefinitionTypeValueName", # required
    #               description: "AutomatedReasoningPolicyDefinitionTypeValueDescription"
    #             }
    #           ]
    #         }
    #       ],
    #       rules: [
    #         {
    #           id: "AutomatedReasoningPolicyDefinitionRuleId", # required
    #           expression: "AutomatedReasoningPolicyDefinitionRuleExpression", # required
    #           alternate_expression: "AutomatedReasoningPolicyDefinitionRuleAlternateExpression"
    #         }
    #       ],
    #       variables: [
    #         {
    #           name: "AutomatedReasoningPolicyDefinitionVariableName", # required
    #           type: "AutomatedReasoningPolicyDefinitionTypeName", # required
    #           description: "AutomatedReasoningPolicyDefinitionVariableDescription", # required
    #         }
    #       ]
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_automated_reasoning_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_arn: "AutomatedReasoningPolicyArn", # required
    #     version: "AutomatedReasoningPolicyVersion", # required
    #     name: "AutomatedReasoningPolicyName", # required
    #     description: "AutomatedReasoningPolicyDescription",
    #     definition_hash: "AutomatedReasoningPolicyHash",
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #   }
    # @return [Types::CreateAutomatedReasoningPolicyResponse]
    def create_automated_reasoning_policy(params = {}, options = {})
      request = build_request(:create_automated_reasoning_policy, params)
      request.send_request(options)
    end

    # <p>Creates a test for an Automated Reasoning policy. Tests validate that your policy works as expected by providing sample inputs and expected outcomes. Use tests to verify policy behavior before deploying to production.</p>
    # @param [Hash, Types::CreateAutomatedReasoningPolicyTestCaseRequest] params
    # @option params [String] :policy_arn
    #   <p>The Amazon Resource Name (ARN) of the Automated Reasoning policy for which to create the test.</p>
    # @option params [String] :guard_content
    #   <p>The output content that's validated by the Automated Reasoning policy. This represents the foundation model response that will be checked for accuracy.</p>
    # @option params [String] :query_content
    #   <p>The input query or prompt that generated the content. This provides context for the validation.</p>
    # @option params [String] :expected_aggregated_findings_result
    #   <p>The expected result of the Automated Reasoning check. Valid values include: , TOO_COMPLEX, and NO_TRANSLATIONS.</p> <ul> <li> <p> <code>VALID</code> - The claims are true. The claims are implied by the premises and the Automated Reasoning policy. Given the Automated Reasoning policy and premises, it is not possible for these claims to be false. In other words, there are no alternative answers that are true that contradict the claims.</p> </li> <li> <p> <code>INVALID</code> - The claims are false. The claims are not implied by the premises and Automated Reasoning policy. Furthermore, there exists different claims that are consistent with the premises and Automated Reasoning policy.</p> </li> <li> <p> <code>SATISFIABLE</code> - The claims can be true or false. It depends on what assumptions are made for the claim to be implied from the premises and Automated Reasoning policy rules. In this situation, different assumptions can make input claims false and alternative claims true.</p> </li> <li> <p> <code>IMPOSSIBLE</code> - Automated Reasoning can’t make a statement about the claims. This can happen if the premises are logically incorrect, or if there is a conflict within the Automated Reasoning policy itself.</p> </li> <li> <p> <code>TRANSLATION_AMBIGUOUS</code> - Detected an ambiguity in the translation meant it would be unsound to continue with validity checking. Additional context or follow-up questions might be needed to get translation to succeed.</p> </li> <li> <p> <code>TOO_COMPLEX</code> - The input contains too much information for Automated Reasoning to process within its latency limits.</p> </li> <li> <p> <code>NO_TRANSLATIONS</code> - Identifies that some or all of the input prompt wasn't translated into logic. This can happen if the input isn't relevant to the Automated Reasoning policy, or if the policy doesn't have variables to model relevant input. If Automated Reasoning can't translate anything, you get a single <code>NO_TRANSLATIONS</code> finding. You might also see a <code>NO_TRANSLATIONS</code> (along with other findings) if some part of the validation isn't translated.</p> </li> </ul>
    # @option params [String] :client_request_token
    #   <p>A unique, case-sensitive identifier to ensure that the operation completes no more than one time. If this token matches a previous request, Amazon Bedrock ignores the request, but does not return an error.</p>
    # @option params [Float] :confidence_threshold
    #   <p>The minimum confidence level for logic validation. Content that meets the threshold is considered a high-confidence finding that can be validated.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_arn: "AutomatedReasoningPolicyArn", # required
    #     guard_content: "AutomatedReasoningPolicyTestGuardContent", # required
    #     query_content: "AutomatedReasoningPolicyTestQueryContent",
    #     expected_aggregated_findings_result: "VALID" # One of: ["VALID", "INVALID", "SATISFIABLE", "IMPOSSIBLE", "TRANSLATION_AMBIGUOUS", "TOO_COMPLEX", "NO_TRANSLATION"], # required
    #     client_request_token: "IdempotencyToken",
    #     confidence_threshold: 1.0
    #   }
    #   options = {}
    #   response = client.create_automated_reasoning_policy_test_case(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_arn: "AutomatedReasoningPolicyArn", # required
    #     test_case_id: "AutomatedReasoningPolicyTestCaseId", # required
    #   }
    # @return [Types::CreateAutomatedReasoningPolicyTestCaseResponse]
    def create_automated_reasoning_policy_test_case(params = {}, options = {})
      request = build_request(:create_automated_reasoning_policy_test_case, params)
      request.send_request(options)
    end

    # <p>Creates a new version of an existing Automated Reasoning policy. This allows you to iterate on your policy rules while maintaining previous versions for rollback or comparison purposes.</p>
    # @param [Hash, Types::CreateAutomatedReasoningPolicyVersionRequest] params
    # @option params [String] :policy_arn
    #   <p>The Amazon Resource Name (ARN) of the Automated Reasoning policy for which to create a version.</p>
    # @option params [String] :client_request_token
    #   <p>A unique, case-sensitive identifier to ensure that the operation completes no more than one time. If this token matches a previous request, Amazon Bedrock ignores the request, but does not return an error.</p>
    # @option params [String] :last_updated_definition_hash
    #   <p>The hash of the current policy definition used as a concurrency token to ensure the policy hasn't been modified since you last retrieved it.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of tags to associate with the policy version.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_arn: "AutomatedReasoningPolicyArn", # required
    #     client_request_token: "IdempotencyToken",
    #     last_updated_definition_hash: "AutomatedReasoningPolicyHash", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_automated_reasoning_policy_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_arn: "AutomatedReasoningPolicyArn", # required
    #     version: "AutomatedReasoningPolicyVersion", # required
    #     name: "AutomatedReasoningPolicyName", # required
    #     description: "AutomatedReasoningPolicyDescription",
    #     definition_hash: "AutomatedReasoningPolicyHash", # required
    #     created_at: Time.now, # required
    #   }
    # @return [Types::CreateAutomatedReasoningPolicyVersionResponse]
    def create_automated_reasoning_policy_version(params = {}, options = {})
      request = build_request(:create_automated_reasoning_policy_version, params)
      request.send_request(options)
    end

    # <p>Creates a new custom model in Amazon Bedrock. After the model is active, you can use it for inference.</p> <p>To use the model for inference, you must purchase Provisioned Throughput for it. You can't use On-demand inference with these custom models. For more information about Provisioned Throughput, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/prov-throughput.html">Provisioned Throughput</a>.</p> <p>The model appears in <code>ListCustomModels</code> with a <code>customizationType</code> of <code>imported</code>. To track the status of the new model, you use the <code>GetCustomModel</code> API operation. The model can be in the following states:</p> <ul> <li> <p> <code>Creating</code> - Initial state during validation and registration</p> </li> <li> <p> <code>Active</code> - Model is ready for use in inference</p> </li> <li> <p> <code>Failed</code> - Creation process encountered an error</p> </li> </ul> <p> <b>Related APIs</b> </p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_GetCustomModel.html">GetCustomModel</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_ListCustomModels.html">ListCustomModels</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_DeleteCustomModel.html">DeleteCustomModel</a> </p> </li> </ul>
    # @param [Hash, Types::CreateCustomModelRequest] params
    # @option params [String] :model_name
    #   <p>A unique name for the custom model.</p>
    # @option params [Types::ModelDataSource] :model_source_config
    #   <p>The data source for the model. The Amazon S3 URI in the model source must be for the Amazon-managed Amazon S3 bucket containing your model artifacts.</p>
    # @option params [String] :model_kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the customer managed KMS key to encrypt the custom model. If you don't provide a KMS key, Amazon Bedrock uses an Amazon Web Services-managed KMS key to encrypt the model. </p> <p>If you provide a customer managed KMS key, your Amazon Bedrock service role must have permissions to use it. For more information see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/encryption-import-model.html">Encryption of imported models</a>. </p>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM service role that Amazon Bedrock assumes to perform tasks on your behalf. This role must have permissions to access the Amazon S3 bucket containing your model artifacts and the KMS key (if specified). For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/model-import-iam-role.html">Setting up an IAM service role for importing models</a> in the Amazon Bedrock User Guide.</p>
    # @option params [Array<Types::Tag>] :model_tags
    #   <p>A list of key-value pairs to associate with the custom model resource. You can use these tags to organize and identify your resources.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/tagging.html">Tagging resources</a> in the <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html">Amazon Bedrock User Guide</a>.</p>
    # @option params [String] :client_request_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, Amazon Bedrock ignores the request, but does not return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    # @example Successful CreateCustomModel API call
    #   # Example operation for create_custom_model
    #   params = {
    #     model_name: "SampleModel",
    #     model_source_config: {
    #     "s3DataSource" => {
    #       "s3Uri" => s3://my-bucket/folder
    #     }
    #   },
    #     role_arn: "arn:aws:iam::123456789012:role/SampleRole",
    #     model_kms_key_arn: "arn:aws:kms:us-east-1:123456789012:key/1234abcd-12ab-34cd-56ef-1234567890ab",
    #     model_tags: [
    #       {
    #         key: "foo",
    #         value: "foo"
    #       },
    #       {
    #         key: "foo",
    #         value: "foo"
    #       }
    #     ],
    #     client_request_token: "foo"
    #   }
    #   options = {}
    #   response = client.create_custom_model(params, options)
    #   response.to_h #=>
    #   {
    #     model_arn: "arn:aws:bedrock:us-east-1:123456789012:custom-model/imported/abcdef123456"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     model_name: "CustomModelName", # required
    #     model_source_config: { # required
    #       # One of:
    #       s3_data_source: {
    #         s3_uri: "S3Uri", # required
    #       }
    #     },
    #     model_kms_key_arn: "KmsKeyArn",
    #     role_arn: "RoleArn",
    #     model_tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     client_request_token: "IdempotencyToken"
    #   }
    #   options = {}
    #   response = client.create_custom_model(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     model_arn: "ModelArn", # required
    #   }
    # @return [Types::CreateCustomModelResponse]
    def create_custom_model(params = {}, options = {})
      request = build_request(:create_custom_model, params)
      request.send_request(options)
    end

    # <p>Deploys a custom model for on-demand inference in Amazon Bedrock. After you deploy your custom model, you use the deployment's Amazon Resource Name (ARN) as the <code>modelId</code> parameter when you submit prompts and generate responses with model inference.</p> <p> For more information about setting up on-demand inference for custom models, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-use.html">Set up inference for a custom model</a>. </p> <p>The following actions are related to the <code>CreateCustomModelDeployment</code> operation:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_GetCustomModelDeployment.html">GetCustomModelDeployment</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_ListCustomModelDeployments.html">ListCustomModelDeployments</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_DeleteCustomModelDeployment.html">DeleteCustomModelDeployment</a> </p> </li> </ul>
    # @param [Hash, Types::CreateCustomModelDeploymentRequest] params
    # @option params [String] :model_deployment_name
    #   <p>The name for the custom model deployment. The name must be unique within your Amazon Web Services account and Region.</p>
    # @option params [String] :model_arn
    #   <p>The Amazon Resource Name (ARN) of the custom model to deploy for on-demand inference. The custom model must be in the <code>Active</code> state.</p>
    # @option params [String] :description
    #   <p>A description for the custom model deployment to help you identify its purpose.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Tags to assign to the custom model deployment. You can use tags to organize and track your Amazon Web Services resources for cost allocation and management purposes.</p>
    # @option params [String] :client_request_token
    #   <p>A unique, case-sensitive identifier to ensure that the operation completes no more than one time. If this token matches a previous request, Amazon Bedrock ignores the request, but does not return an error. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-idempotency.html">Ensuring idempotency</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     model_deployment_name: "ModelDeploymentName", # required
    #     model_arn: "CustomModelArn", # required
    #     description: "CustomModelDeploymentDescription",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     client_request_token: "IdempotencyToken"
    #   }
    #   options = {}
    #   response = client.create_custom_model_deployment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     custom_model_deployment_arn: "CustomModelDeploymentArn", # required
    #   }
    # @return [Types::CreateCustomModelDeploymentResponse]
    def create_custom_model_deployment(params = {}, options = {})
      request = build_request(:create_custom_model_deployment, params)
      request.send_request(options)
    end

    # <p>Creates an evaluation job.</p>
    # @param [Hash, Types::CreateEvaluationJobRequest] params
    # @option params [String] :job_name
    #   <p>A name for the evaluation job. Names must unique with your Amazon Web Services account, and your account's Amazon Web Services region.</p>
    # @option params [String] :job_description
    #   <p>A description of the evaluation job.</p>
    # @option params [String] :client_request_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, Amazon Bedrock ignores the request, but does not return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM service role that Amazon Bedrock can assume to perform tasks on your behalf. To learn more about the required permissions, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/model-evaluation-security.html">Required permissions for model evaluations</a>.</p>
    # @option params [String] :customer_encryption_key_id
    #   <p>Specify your customer managed encryption key Amazon Resource Name (ARN) that will be used to encrypt your evaluation job.</p>
    # @option params [Array<Types::Tag>] :job_tags
    #   <p>Tags to attach to the model evaluation job.</p>
    # @option params [String] :application_type
    #   <p>Specifies whether the evaluation job is for evaluating a model or evaluating a knowledge base (retrieval and response generation).</p>
    # @option params [Types::EvaluationConfig] :evaluation_config
    #   <p>Contains the configuration details of either an automated or human-based evaluation job.</p>
    # @option params [Types::EvaluationInferenceConfig] :inference_config
    #   <p>Contains the configuration details of the inference model for the evaluation job.</p> <p>For model evaluation jobs, automated jobs support a single model or <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/cross-region-inference.html">inference profile</a>, and jobs that use human workers support two models or inference profiles.</p>
    # @option params [Types::EvaluationOutputDataConfig] :output_data_config
    #   <p>Contains the configuration details of the Amazon S3 bucket for storing the results of the evaluation job.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_name: "EvaluationJobName", # required
    #     job_description: "EvaluationJobDescription",
    #     client_request_token: "IdempotencyToken",
    #     role_arn: "RoleArn", # required
    #     customer_encryption_key_id: "KmsKeyId",
    #     job_tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     application_type: "ModelEvaluation" # One of: ["ModelEvaluation", "RagEvaluation"],
    #     evaluation_config: { # required
    #       # One of:
    #       automated: {
    #         dataset_metric_configs: [ # required
    #           {
    #             task_type: "Summarization" # One of: ["Summarization", "Classification", "QuestionAndAnswer", "Generation", "Custom"], # required
    #             dataset: { # required
    #               name: "EvaluationDatasetName", # required
    #               dataset_location: {
    #                 # One of:
    #                 s3_uri: "S3Uri"
    #               }
    #             },
    #             metric_names: ["EvaluationMetricName"], # required
    #           }
    #         ],
    #         evaluator_model_config: {
    #           # One of:
    #           bedrock_evaluator_models: [
    #             {
    #               model_identifier: "EvaluatorModelIdentifier", # required
    #             }
    #           ]
    #         },
    #         custom_metric_config: {
    #           custom_metrics: [{ # required
    #             # One of:
    #             custom_metric_definition: {
    #               name: "MetricName", # required
    #               instructions: "CustomMetricInstructions", # required
    #               rating_scale: [
    #                 {
    #                   definition: "RatingScaleItemDefinition", # required
    #                   value: { # required
    #                     # One of:
    #                     string_value: "String",
    #                     float_value: 1.0
    #                   }
    #                 }
    #               ]
    #             }
    #           }],
    #           evaluator_model_config: { # required
    #             bedrock_evaluator_models: [ # required
    #               {
    #                 model_identifier: "EvaluatorModelIdentifier", # required
    #               }
    #             ]
    #           }
    #         }
    #       },
    #       human: {
    #         human_workflow_config: {
    #           flow_definition_arn: "SageMakerFlowDefinitionArn", # required
    #           instructions: "HumanTaskInstructions"
    #         },
    #         custom_metrics: [
    #           {
    #             name: "EvaluationMetricName", # required
    #             description: "EvaluationMetricDescription",
    #             rating_method: "EvaluationRatingMethod", # required
    #           }
    #         ],
    #         dataset_metric_configs: [ # required
    #           {
    #             task_type: "Summarization" # One of: ["Summarization", "Classification", "QuestionAndAnswer", "Generation", "Custom"], # required
    #             dataset: { # required
    #               name: "EvaluationDatasetName", # required
    #               dataset_location: {
    #                 # One of:
    #                 s3_uri: "S3Uri"
    #               }
    #             },
    #             metric_names: ["EvaluationMetricName"], # required
    #           }
    #         ]
    #       }
    #     },
    #     inference_config: { # required
    #       # One of:
    #       models: [{
    #         # One of:
    #         bedrock_model: {
    #           model_identifier: "EvaluationBedrockModelIdentifier", # required
    #           inference_params: "EvaluationModelInferenceParams",
    #           performance_config: {
    #             latency: "standard" # One of: ["standard", "optimized"]
    #           }
    #         },
    #         precomputed_inference_source: {
    #           inference_source_identifier: "EvaluationPrecomputedInferenceSourceIdentifier", # required
    #         }
    #       }],
    #       rag_configs: [{
    #         # One of:
    #         knowledge_base_config: {
    #           # One of:
    #           retrieve_config: {
    #             knowledge_base_id: "KnowledgeBaseId", # required
    #             knowledge_base_retrieval_configuration: { # required
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
    #                 implicit_filter_configuration: {
    #                   metadata_attributes: [ # required
    #                     {
    #                       key: "String", # required
    #                       type: "STRING" # One of: ["STRING", "NUMBER", "BOOLEAN", "STRING_LIST"], # required
    #                       description: "String", # required
    #                     }
    #                   ],
    #                   model_arn: "BedrockModelArn", # required
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
    #                 }
    #               }
    #             }
    #           },
    #           retrieve_and_generate_config: {
    #             type: "KNOWLEDGE_BASE" # One of: ["KNOWLEDGE_BASE", "EXTERNAL_SOURCES"], # required
    #             knowledge_base_configuration: {
    #               knowledge_base_id: "KnowledgeBaseId", # required
    #               model_arn: "BedrockModelArn", # required
    #               retrieval_configuration: {
    #                 vector_search_configuration: { # required
    #                   number_of_results: 1,
    #                   override_search_type: "HYBRID" # One of: ["HYBRID", "SEMANTIC"],
    #                   filter: {
    #                     # One of:
    #                     equals: {
    #                       key: "FilterKey", # required
    #                       value: ""null"", # required
    #                     },
    #                     not_equals: {
    #                       key: "FilterKey", # required
    #                       value: ""null"", # required
    #                     },
    #                     greater_than: {
    #                       key: "FilterKey", # required
    #                       value: ""null"", # required
    #                     },
    #                     greater_than_or_equals: {
    #                       key: "FilterKey", # required
    #                       value: ""null"", # required
    #                     },
    #                     less_than: {
    #                       key: "FilterKey", # required
    #                       value: ""null"", # required
    #                     },
    #                     less_than_or_equals: {
    #                       key: "FilterKey", # required
    #                       value: ""null"", # required
    #                     },
    #                     in: {
    #                       key: "FilterKey", # required
    #                       value: ""null"", # required
    #                     },
    #                     not_in: {
    #                       key: "FilterKey", # required
    #                       value: ""null"", # required
    #                     },
    #                     starts_with: {
    #                       key: "FilterKey", # required
    #                       value: ""null"", # required
    #                     },
    #                     list_contains: {
    #                       key: "FilterKey", # required
    #                       value: ""null"", # required
    #                     },
    #                     string_contains: {
    #                       key: "FilterKey", # required
    #                       value: ""null"", # required
    #                     },
    #                     and_all: [{
    #                       # recursive RetrievalFilter
    #                     }],
    #                     or_all: [{
    #                       # recursive RetrievalFilter
    #                     }]
    #                   },
    #                   implicit_filter_configuration: {
    #                     metadata_attributes: [ # required
    #                       {
    #                         key: "String", # required
    #                         type: "STRING" # One of: ["STRING", "NUMBER", "BOOLEAN", "STRING_LIST"], # required
    #                         description: "String", # required
    #                       }
    #                     ],
    #                     model_arn: "BedrockModelArn", # required
    #                   },
    #                   reranking_configuration: {
    #                     type: "BEDROCK_RERANKING_MODEL" # One of: ["BEDROCK_RERANKING_MODEL"], # required
    #                     bedrock_reranking_configuration: {
    #                       model_configuration: { # required
    #                         model_arn: "BedrockRerankingModelArn", # required
    #                         additional_model_request_fields: {
    #                           "AdditionalModelRequestFieldsKey" => ""null""
    #                         }
    #                       },
    #                       number_of_reranked_results: 1,
    #                       metadata_configuration: {
    #                         selection_mode: "SELECTIVE" # One of: ["SELECTIVE", "ALL"], # required
    #                         selective_mode_configuration: {
    #                           # One of:
    #                           fields_to_include: [
    #                             {
    #                               field_name: "String", # required
    #                             }
    #                           ],
    #                           fields_to_exclude: [
    #                             {
    #                               field_name: "String", # required
    #                             }
    #                           ]
    #                         }
    #                       }
    #                     }
    #                   }
    #                 }
    #               },
    #               generation_configuration: {
    #                 prompt_template: {
    #                   text_prompt_template: "TextPromptTemplate"
    #                 },
    #                 guardrail_configuration: {
    #                   guardrail_id: "String", # required
    #                   guardrail_version: "String", # required
    #                 },
    #                 kb_inference_config: {
    #                   text_inference_config: {
    #                     temperature: 1.0,
    #                     top_p: 1.0,
    #                     max_tokens: 1,
    #                     stop_sequences: ["String"]
    #                   }
    #                 },
    #                 additional_model_request_fields: {
    #                   "AdditionalModelRequestFieldsKey" => ""null""
    #                 }
    #               },
    #               orchestration_configuration: {
    #                 query_transformation_configuration: { # required
    #                   type: "QUERY_DECOMPOSITION" # One of: ["QUERY_DECOMPOSITION"], # required
    #                 }
    #               }
    #             },
    #             external_sources_configuration: {
    #               model_arn: "BedrockModelArn", # required
    #               sources: [ # required
    #                 {
    #                   source_type: "S3" # One of: ["S3", "BYTE_CONTENT"], # required
    #                   s3_location: {
    #                     uri: "kBS3Uri", # required
    #                   },
    #                   byte_content: {
    #                     identifier: "Identifier", # required
    #                     content_type: "ContentType", # required
    #                     data: "data", # required
    #                   }
    #                 }
    #               ],
    #               generation_configuration: {
    #                 prompt_template: {
    #                   text_prompt_template: "TextPromptTemplate"
    #                 },
    #                 guardrail_configuration: {
    #                   guardrail_id: "String", # required
    #                   guardrail_version: "String", # required
    #                 },
    #                 kb_inference_config: {
    #                   text_inference_config: {
    #                     temperature: 1.0,
    #                     top_p: 1.0,
    #                     max_tokens: 1,
    #                     stop_sequences: ["String"]
    #                   }
    #                 },
    #                 additional_model_request_fields: {
    #                   "AdditionalModelRequestFieldsKey" => ""null""
    #                 }
    #               }
    #             }
    #           }
    #         },
    #         precomputed_rag_source_config: {
    #           # One of:
    #           retrieve_source_config: {
    #             rag_source_identifier: "EvaluationPrecomputedRagSourceIdentifier", # required
    #           },
    #           retrieve_and_generate_source_config: {
    #             rag_source_identifier: "EvaluationPrecomputedRagSourceIdentifier", # required
    #           }
    #         }
    #       }]
    #     },
    #     output_data_config: { # required
    #       s3_uri: "S3Uri", # required
    #     }
    #   }
    #   options = {}
    #   response = client.create_evaluation_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_arn: "EvaluationJobArn", # required
    #   }
    # @return [Types::CreateEvaluationJobResponse]
    def create_evaluation_job(params = {}, options = {})
      request = build_request(:create_evaluation_job, params)
      request.send_request(options)
    end

    # <p>Request a model access agreement for the specified model.</p>
    # @param [Hash, Types::CreateFoundationModelAgreementRequest] params
    # @option params [String] :offer_token
    #   <p>An offer token encapsulates the information for an offer.</p>
    # @option params [String] :model_id
    #   <p>Model Id of the model for the access request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     offer_token: "OfferToken", # required
    #     model_id: "BedrockModelId", # required
    #   }
    #   options = {}
    #   response = client.create_foundation_model_agreement(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     model_id: "BedrockModelId", # required
    #   }
    # @return [Types::CreateFoundationModelAgreementResponse]
    def create_foundation_model_agreement(params = {}, options = {})
      request = build_request(:create_foundation_model_agreement, params)
      request.send_request(options)
    end

    # <p>Creates a guardrail to block topics and to implement safeguards for your generative AI applications.</p> <p>You can configure the following policies in a guardrail to avoid undesirable and harmful content, filter out denied topics and words, and remove sensitive information for privacy protection.</p> <ul> <li> <p> <b>Content filters</b> - Adjust filter strengths to block input prompts or model responses containing harmful content.</p> </li> <li> <p> <b>Denied topics</b> - Define a set of topics that are undesirable in the context of your application. These topics will be blocked if detected in user queries or model responses.</p> </li> <li> <p> <b>Word filters</b> - Configure filters to block undesirable words, phrases, and profanity. Such words can include offensive terms, competitor names etc.</p> </li> <li> <p> <b>Sensitive information filters</b> - Block or mask sensitive information such as personally identifiable information (PII) or custom regex in user inputs and model responses.</p> </li> </ul> <p>In addition to the above policies, you can also configure the messages to be returned to the user if a user input or model response is in violation of the policies defined in the guardrail.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/guardrails.html">Amazon Bedrock Guardrails</a> in the <i>Amazon Bedrock User Guide</i>.</p>
    # @param [Hash, Types::CreateGuardrailRequest] params
    # @option params [String] :name
    #   <p>The name to give the guardrail.</p>
    # @option params [String] :description
    #   <p>A description of the guardrail.</p>
    # @option params [Types::GuardrailTopicPolicyConfig] :topic_policy_config
    #   <p>The topic policies to configure for the guardrail.</p>
    # @option params [Types::GuardrailContentPolicyConfig] :content_policy_config
    #   <p>The content filter policies to configure for the guardrail.</p>
    # @option params [Types::GuardrailWordPolicyConfig] :word_policy_config
    #   <p>The word policy you configure for the guardrail.</p>
    # @option params [Types::GuardrailSensitiveInformationPolicyConfig] :sensitive_information_policy_config
    #   <p>The sensitive information policy to configure for the guardrail.</p>
    # @option params [Types::GuardrailContextualGroundingPolicyConfig] :contextual_grounding_policy_config
    #   <p>The contextual grounding policy configuration used to create a guardrail.</p>
    # @option params [Types::GuardrailAutomatedReasoningPolicyConfig] :automated_reasoning_policy_config
    #   <p>Optional configuration for integrating Automated Reasoning policies with the new guardrail.</p>
    # @option params [Types::GuardrailCrossRegionConfig] :cross_region_config
    #   <p>The system-defined guardrail profile that you're using with your guardrail. Guardrail profiles define the destination Amazon Web Services Regions where guardrail inference requests can be automatically routed.</p> <p>For more information, see the <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/guardrails-cross-region.html">Amazon Bedrock User Guide</a>.</p>
    # @option params [String] :blocked_input_messaging
    #   <p>The message to return when the guardrail blocks a prompt.</p>
    # @option params [String] :blocked_outputs_messaging
    #   <p>The message to return when the guardrail blocks a model response.</p>
    # @option params [String] :kms_key_id
    #   <p>The ARN of the KMS key that you use to encrypt the guardrail.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags that you want to attach to the guardrail. </p>
    # @option params [String] :client_request_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than once. If this token matches a previous request, Amazon Bedrock ignores the request, but does not return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a> in the <i>Amazon S3 User Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "GuardrailName", # required
    #     description: "GuardrailDescription",
    #     topic_policy_config: {
    #       topics_config: [ # required
    #         {
    #           name: "GuardrailTopicName", # required
    #           definition: "GuardrailTopicDefinition", # required
    #           examples: ["GuardrailTopicExample"],
    #           type: "DENY" # One of: ["DENY"], # required
    #           input_action: "BLOCK" # One of: ["BLOCK", "NONE"],
    #           output_action: "BLOCK" # One of: ["BLOCK", "NONE"],
    #           input_enabled: false,
    #           output_enabled: false
    #         }
    #       ],
    #       tier_config: {
    #         tier_name: "CLASSIC" # One of: ["CLASSIC", "STANDARD"], # required
    #       }
    #     },
    #     content_policy_config: {
    #       filters_config: [ # required
    #         {
    #           type: "SEXUAL" # One of: ["SEXUAL", "VIOLENCE", "HATE", "INSULTS", "MISCONDUCT", "PROMPT_ATTACK"], # required
    #           input_strength: "NONE" # One of: ["NONE", "LOW", "MEDIUM", "HIGH"], # required
    #           output_strength: "NONE" # One of: ["NONE", "LOW", "MEDIUM", "HIGH"], # required
    #           input_modalities: ["TEXT" # One of: ["TEXT", "IMAGE"]],
    #           output_modalities: ["TEXT" # One of: ["TEXT", "IMAGE"]],
    #           input_action: "BLOCK" # One of: ["BLOCK", "NONE"],
    #           output_action: "BLOCK" # One of: ["BLOCK", "NONE"],
    #           input_enabled: false,
    #           output_enabled: false
    #         }
    #       ],
    #       tier_config: {
    #         tier_name: "CLASSIC" # One of: ["CLASSIC", "STANDARD"], # required
    #       }
    #     },
    #     word_policy_config: {
    #       words_config: [
    #         {
    #           text: "String", # required
    #           input_action: "BLOCK" # One of: ["BLOCK", "NONE"],
    #           output_action: "BLOCK" # One of: ["BLOCK", "NONE"],
    #           input_enabled: false,
    #           output_enabled: false
    #         }
    #       ],
    #       managed_word_lists_config: [
    #         {
    #           type: "PROFANITY" # One of: ["PROFANITY"], # required
    #           input_action: "BLOCK" # One of: ["BLOCK", "NONE"],
    #           output_action: "BLOCK" # One of: ["BLOCK", "NONE"],
    #           input_enabled: false,
    #           output_enabled: false
    #         }
    #       ]
    #     },
    #     sensitive_information_policy_config: {
    #       pii_entities_config: [
    #         {
    #           type: "ADDRESS" # One of: ["ADDRESS", "AGE", "AWS_ACCESS_KEY", "AWS_SECRET_KEY", "CA_HEALTH_NUMBER", "CA_SOCIAL_INSURANCE_NUMBER", "CREDIT_DEBIT_CARD_CVV", "CREDIT_DEBIT_CARD_EXPIRY", "CREDIT_DEBIT_CARD_NUMBER", "DRIVER_ID", "EMAIL", "INTERNATIONAL_BANK_ACCOUNT_NUMBER", "IP_ADDRESS", "LICENSE_PLATE", "MAC_ADDRESS", "NAME", "PASSWORD", "PHONE", "PIN", "SWIFT_CODE", "UK_NATIONAL_HEALTH_SERVICE_NUMBER", "UK_NATIONAL_INSURANCE_NUMBER", "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER", "URL", "USERNAME", "US_BANK_ACCOUNT_NUMBER", "US_BANK_ROUTING_NUMBER", "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER", "US_PASSPORT_NUMBER", "US_SOCIAL_SECURITY_NUMBER", "VEHICLE_IDENTIFICATION_NUMBER"], # required
    #           action: "BLOCK" # One of: ["BLOCK", "ANONYMIZE", "NONE"], # required
    #           input_action: "BLOCK" # One of: ["BLOCK", "ANONYMIZE", "NONE"],
    #           output_action: "BLOCK" # One of: ["BLOCK", "ANONYMIZE", "NONE"],
    #           input_enabled: false,
    #           output_enabled: false
    #         }
    #       ],
    #       regexes_config: [
    #         {
    #           name: "String", # required
    #           description: "String",
    #           pattern: "String", # required
    #           action: "BLOCK" # One of: ["BLOCK", "ANONYMIZE", "NONE"], # required
    #           input_action: "BLOCK" # One of: ["BLOCK", "ANONYMIZE", "NONE"],
    #           output_action: "BLOCK" # One of: ["BLOCK", "ANONYMIZE", "NONE"],
    #           input_enabled: false,
    #           output_enabled: false
    #         }
    #       ]
    #     },
    #     contextual_grounding_policy_config: {
    #       filters_config: [ # required
    #         {
    #           type: "GROUNDING" # One of: ["GROUNDING", "RELEVANCE"], # required
    #           threshold: 1.0, # required
    #           action: "BLOCK" # One of: ["BLOCK", "NONE"],
    #           enabled: false
    #         }
    #       ]
    #     },
    #     automated_reasoning_policy_config: {
    #       policies: ["AutomatedReasoningPolicyArn"], # required
    #       confidence_threshold: 1.0
    #     },
    #     cross_region_config: {
    #       guardrail_profile_identifier: "GuardrailCrossRegionGuardrailProfileIdentifier", # required
    #     },
    #     blocked_input_messaging: "GuardrailBlockedMessaging", # required
    #     blocked_outputs_messaging: "GuardrailBlockedMessaging", # required
    #     kms_key_id: "KmsKeyId",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     client_request_token: "IdempotencyToken"
    #   }
    #   options = {}
    #   response = client.create_guardrail(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     guardrail_id: "GuardrailId", # required
    #     guardrail_arn: "GuardrailArn", # required
    #     version: "GuardrailDraftVersion", # required
    #     created_at: Time.now, # required
    #   }
    # @return [Types::CreateGuardrailResponse]
    def create_guardrail(params = {}, options = {})
      request = build_request(:create_guardrail, params)
      request.send_request(options)
    end

    # <p>Creates a version of the guardrail. Use this API to create a snapshot of the guardrail when you are satisfied with a configuration, or to compare the configuration with another version.</p>
    # @param [Hash, Types::CreateGuardrailVersionRequest] params
    # @option params [String] :guardrail_identifier
    #   <p>The unique identifier of the guardrail. This can be an ID or the ARN.</p>
    # @option params [String] :description
    #   <p>A description of the guardrail version.</p>
    # @option params [String] :client_request_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than once. If this token matches a previous request, Amazon Bedrock ignores the request, but does not return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a> in the <i>Amazon S3 User Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     guardrail_identifier: "GuardrailIdentifier", # required
    #     description: "GuardrailDescription",
    #     client_request_token: "IdempotencyToken"
    #   }
    #   options = {}
    #   response = client.create_guardrail_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     guardrail_id: "GuardrailId", # required
    #     version: "GuardrailNumericalVersion", # required
    #   }
    # @return [Types::CreateGuardrailVersionResponse]
    def create_guardrail_version(params = {}, options = {})
      request = build_request(:create_guardrail_version, params)
      request.send_request(options)
    end

    # <p>Creates an application inference profile to track metrics and costs when invoking a model. To create an application inference profile for a foundation model in one region, specify the ARN of the model in that region. To create an application inference profile for a foundation model across multiple regions, specify the ARN of the system-defined inference profile that contains the regions that you want to route requests to. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/cross-region-inference.html">Increase throughput and resilience with cross-region inference in Amazon Bedrock</a>. in the Amazon Bedrock User Guide.</p>
    # @param [Hash, Types::CreateInferenceProfileRequest] params
    # @option params [String] :inference_profile_name
    #   <p>A name for the inference profile.</p>
    # @option params [String] :description
    #   <p>A description for the inference profile.</p>
    # @option params [String] :client_request_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, Amazon Bedrock ignores the request, but does not return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    # @option params [Types::InferenceProfileModelSource] :model_source
    #   <p>The foundation model or system-defined inference profile that the inference profile will track metrics and costs for.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>An array of objects, each of which contains a tag and its value. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html">Tagging resources</a> in the <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html">Amazon Bedrock User Guide</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     inference_profile_name: "InferenceProfileName", # required
    #     description: "InferenceProfileDescription",
    #     client_request_token: "IdempotencyToken",
    #     model_source: { # required
    #       # One of:
    #       copy_from: "InferenceProfileModelSourceArn"
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_inference_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     inference_profile_arn: "InferenceProfileArn", # required
    #     status: "ACTIVE" # One of: ["ACTIVE"]
    #   }
    # @return [Types::CreateInferenceProfileResponse]
    def create_inference_profile(params = {}, options = {})
      request = build_request(:create_inference_profile, params)
      request.send_request(options)
    end

    # <p>Creates an endpoint for a model from Amazon Bedrock Marketplace. The endpoint is hosted by Amazon SageMaker.</p>
    # @param [Hash, Types::CreateMarketplaceModelEndpointRequest] params
    # @option params [String] :model_source_identifier
    #   <p>The ARN of the model from Amazon Bedrock Marketplace that you want to deploy to the endpoint.</p>
    # @option params [Types::EndpointConfig] :endpoint_config
    #   <p>The configuration for the endpoint, including the number and type of instances to use.</p>
    # @option params [Boolean] :accept_eula
    #   <p>Indicates whether you accept the end-user license agreement (EULA) for the model. Set to <code>true</code> to accept the EULA.</p>
    # @option params [String] :endpoint_name
    #   <p>The name of the endpoint. This name must be unique within your Amazon Web Services account and region.</p>
    # @option params [String] :client_request_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. This token is listed as not required because Amazon Web Services SDKs automatically generate it for you and set this parameter. If you're not using the Amazon Web Services SDK or the CLI, you must provide this token or the action will fail.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>An array of key-value pairs to apply to the underlying Amazon SageMaker endpoint. You can use these tags to organize and identify your Amazon Web Services resources.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     model_source_identifier: "ModelSourceIdentifier", # required
    #     endpoint_config: { # required
    #       # One of:
    #       sage_maker: {
    #         initial_instance_count: 1, # required
    #         instance_type: "InstanceType", # required
    #         execution_role: "RoleArn", # required
    #         kms_encryption_key: "KmsKeyId",
    #         vpc: {
    #           subnet_ids: ["SubnetId"], # required
    #           security_group_ids: ["SecurityGroupId"], # required
    #         }
    #       }
    #     },
    #     accept_eula: false,
    #     endpoint_name: "EndpointName", # required
    #     client_request_token: "IdempotencyToken",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_marketplace_model_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     marketplace_model_endpoint: { # required
    #       endpoint_arn: "Arn", # required
    #       model_source_identifier: "ModelSourceIdentifier", # required
    #       status: "REGISTERED" # One of: ["REGISTERED", "INCOMPATIBLE_ENDPOINT"],
    #       status_message: "String",
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       endpoint_config: { # required
    #         # One of:
    #         sage_maker: {
    #           initial_instance_count: 1, # required
    #           instance_type: "InstanceType", # required
    #           execution_role: "RoleArn", # required
    #           kms_encryption_key: "KmsKeyId",
    #           vpc: {
    #             subnet_ids: ["SubnetId"], # required
    #             security_group_ids: ["SecurityGroupId"], # required
    #           }
    #         }
    #       },
    #       endpoint_status: "String", # required
    #       endpoint_status_message: "String"
    #     }
    #   }
    # @return [Types::CreateMarketplaceModelEndpointResponse]
    def create_marketplace_model_endpoint(params = {}, options = {})
      request = build_request(:create_marketplace_model_endpoint, params)
      request.send_request(options)
    end

    # <p>Copies a model to another region so that it can be used there. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/copy-model.html">Copy models to be used in other regions</a> in the <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html">Amazon Bedrock User Guide</a>.</p>
    # @param [Hash, Types::CreateModelCopyJobRequest] params
    # @option params [String] :source_model_arn
    #   <p>The Amazon Resource Name (ARN) of the model to be copied.</p>
    # @option params [String] :target_model_name
    #   <p>A name for the copied model.</p>
    # @option params [String] :model_kms_key_id
    #   <p>The ARN of the KMS key that you use to encrypt the model copy.</p>
    # @option params [Array<Types::Tag>] :target_model_tags
    #   <p>Tags to associate with the target model. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/tagging.html">Tag resources</a> in the <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html">Amazon Bedrock User Guide</a>.</p>
    # @option params [String] :client_request_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, Amazon Bedrock ignores the request, but does not return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_model_arn: "ModelArn", # required
    #     target_model_name: "CustomModelName", # required
    #     model_kms_key_id: "KmsKeyId",
    #     target_model_tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     client_request_token: "IdempotencyToken"
    #   }
    #   options = {}
    #   response = client.create_model_copy_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_arn: "ModelCopyJobArn", # required
    #   }
    # @return [Types::CreateModelCopyJobResponse]
    def create_model_copy_job(params = {}, options = {})
      request = build_request(:create_model_copy_job, params)
      request.send_request(options)
    end

    # <p>Creates a fine-tuning job to customize a base model.</p> <p>You specify the base foundation model and the location of the training data. After the model-customization job completes successfully, your custom model resource will be ready to use. Amazon Bedrock returns validation loss metrics and output generations after the job completes. </p> <p>For information on the format of training and validation data, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-prepare.html">Prepare the datasets</a>.</p> <p> Model-customization jobs are asynchronous and the completion time depends on the base model and the training/validation data size. To monitor a job, use the <code>GetModelCustomizationJob</code> operation to retrieve the job status.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models.html">Custom models</a> in the <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html">Amazon Bedrock User Guide</a>.</p>
    # @param [Hash, Types::CreateModelCustomizationJobRequest] params
    # @option params [String] :job_name
    #   <p>A name for the fine-tuning job.</p>
    # @option params [String] :custom_model_name
    #   <p>A name for the resulting custom model.</p>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM service role that Amazon Bedrock can assume to perform tasks on your behalf. For example, during model training, Amazon Bedrock needs your permission to read input data from an S3 bucket, write model artifacts to an S3 bucket. To pass this role to Amazon Bedrock, the caller of this API must have the <code>iam:PassRole</code> permission. </p>
    # @option params [String] :client_request_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, Amazon Bedrock ignores the request, but does not return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    # @option params [String] :base_model_identifier
    #   <p>Name of the base model.</p>
    # @option params [String] :customization_type
    #   <p>The customization type.</p>
    # @option params [String] :custom_model_kms_key_id
    #   <p>The custom model is encrypted at rest using this key.</p>
    # @option params [Array<Types::Tag>] :job_tags
    #   <p>Tags to attach to the job.</p>
    # @option params [Array<Types::Tag>] :custom_model_tags
    #   <p>Tags to attach to the resulting custom model.</p>
    # @option params [Types::TrainingDataConfig] :training_data_config
    #   <p>Information about the training dataset.</p>
    # @option params [Types::ValidationDataConfig] :validation_data_config
    #   <p>Information about the validation dataset. </p>
    # @option params [Types::OutputDataConfig] :output_data_config
    #   <p>S3 location for the output data.</p>
    # @option params [Hash<String, String>] :hyper_parameters
    #   <p>Parameters related to tuning the model. For details on the format for different models, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models-hp.html">Custom model hyperparameters</a>.</p>
    # @option params [Types::VpcConfig] :vpc_config
    #   <p>The configuration of the Virtual Private Cloud (VPC) that contains the resources that you're using for this job. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/vpc-model-customization.html">Protect your model customization jobs using a VPC</a>.</p>
    # @option params [Types::CustomizationConfig] :customization_config
    #   <p>The customization configuration for the model customization job.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_name: "JobName", # required
    #     custom_model_name: "CustomModelName", # required
    #     role_arn: "RoleArn", # required
    #     client_request_token: "IdempotencyToken",
    #     base_model_identifier: "BaseModelIdentifier", # required
    #     customization_type: "FINE_TUNING" # One of: ["FINE_TUNING", "CONTINUED_PRE_TRAINING", "DISTILLATION", "IMPORTED"],
    #     custom_model_kms_key_id: "KmsKeyId",
    #     job_tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     custom_model_tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     training_data_config: { # required
    #       s3_uri: "S3Uri",
    #       invocation_logs_config: {
    #         use_prompt_response: false,
    #         invocation_log_source: { # required
    #           # One of:
    #           s3_uri: "S3Uri"
    #         },
    #         request_metadata_filters: {
    #           # One of:
    #           equals: {
    #             "String" => "String"
    #           },
    #           not_equals: {
    #             "String" => "String"
    #           },
    #           and_all: [
    #             {
    #               equals: {
    #                 "String" => "String"
    #               },
    #               not_equals: {
    #                 "String" => "String"
    #               }
    #             }
    #           ],
    #           or_all: [
    #             {
    #               equals: {
    #                 "String" => "String"
    #               },
    #               not_equals: {
    #                 "String" => "String"
    #               }
    #             }
    #           ]
    #         }
    #       }
    #     },
    #     validation_data_config: {
    #       validators: [ # required
    #         {
    #           s3_uri: "S3Uri", # required
    #         }
    #       ]
    #     },
    #     output_data_config: { # required
    #       s3_uri: "S3Uri", # required
    #     },
    #     hyper_parameters: {
    #       "String" => "String"
    #     },
    #     vpc_config: {
    #       subnet_ids: ["SubnetId"], # required
    #       security_group_ids: ["SecurityGroupId"], # required
    #     },
    #     customization_config: {
    #       # One of:
    #       distillation_config: {
    #         teacher_model_config: { # required
    #           teacher_model_identifier: "TeacherModelIdentifier", # required
    #           max_response_length_for_inference: 1
    #         }
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_model_customization_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_arn: "ModelCustomizationJobArn", # required
    #   }
    # @return [Types::CreateModelCustomizationJobResponse]
    def create_model_customization_job(params = {}, options = {})
      request = build_request(:create_model_customization_job, params)
      request.send_request(options)
    end

    # <p>Creates a model import job to import model that you have customized in other environments, such as Amazon SageMaker. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-import-model.html">Import a customized model</a> </p>
    # @param [Hash, Types::CreateModelImportJobRequest] params
    # @option params [String] :job_name
    #   <p>The name of the import job.</p>
    # @option params [String] :imported_model_name
    #   <p>The name of the imported model.</p>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the model import job.</p>
    # @option params [Types::ModelDataSource] :model_data_source
    #   <p>The data source for the imported model.</p>
    # @option params [Array<Types::Tag>] :job_tags
    #   <p>Tags to attach to this import job. </p>
    # @option params [Array<Types::Tag>] :imported_model_tags
    #   <p>Tags to attach to the imported model.</p>
    # @option params [String] :client_request_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, Amazon Bedrock ignores the request, but does not return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    # @option params [Types::VpcConfig] :vpc_config
    #   <p>VPC configuration parameters for the private Virtual Private Cloud (VPC) that contains the resources you are using for the import job.</p>
    # @option params [String] :imported_model_kms_key_id
    #   <p>The imported model is encrypted at rest using this key.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_name: "JobName", # required
    #     imported_model_name: "ImportedModelName", # required
    #     role_arn: "RoleArn", # required
    #     model_data_source: { # required
    #       # One of:
    #       s3_data_source: {
    #         s3_uri: "S3Uri", # required
    #       }
    #     },
    #     job_tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     imported_model_tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     client_request_token: "IdempotencyToken",
    #     vpc_config: {
    #       subnet_ids: ["SubnetId"], # required
    #       security_group_ids: ["SecurityGroupId"], # required
    #     },
    #     imported_model_kms_key_id: "KmsKeyId"
    #   }
    #   options = {}
    #   response = client.create_model_import_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_arn: "ModelImportJobArn", # required
    #   }
    # @return [Types::CreateModelImportJobResponse]
    def create_model_import_job(params = {}, options = {})
      request = build_request(:create_model_import_job, params)
      request.send_request(options)
    end

    # <p>Creates a batch inference job to invoke a model on multiple prompts. Format your data according to <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/batch-inference-data">Format your inference data</a> and upload it to an Amazon S3 bucket. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/batch-inference.html">Process multiple prompts with batch inference</a>.</p> <p>The response returns a <code>jobArn</code> that you can use to stop or get details about the job.</p>
    # @param [Hash, Types::CreateModelInvocationJobRequest] params
    # @option params [String] :job_name
    #   <p>A name to give the batch inference job.</p>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the service role with permissions to carry out and manage batch inference. You can use the console to create a default service role or follow the steps at <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/batch-iam-sr.html">Create a service role for batch inference</a>.</p>
    # @option params [String] :client_request_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, Amazon Bedrock ignores the request, but does not return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    # @option params [String] :model_id
    #   <p>The unique identifier of the foundation model to use for the batch inference job.</p>
    # @option params [Types::ModelInvocationJobInputDataConfig] :input_data_config
    #   <p>Details about the location of the input to the batch inference job.</p>
    # @option params [Types::ModelInvocationJobOutputDataConfig] :output_data_config
    #   <p>Details about the location of the output of the batch inference job.</p>
    # @option params [Types::VpcConfig] :vpc_config
    #   <p>The configuration of the Virtual Private Cloud (VPC) for the data in the batch inference job. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/batch-vpc">Protect batch inference jobs using a VPC</a>.</p>
    # @option params [Integer] :timeout_duration_in_hours
    #   <p>The number of hours after which to force the batch inference job to time out.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Any tags to associate with the batch inference job. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/tagging.html">Tagging Amazon Bedrock resources</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_name: "ModelInvocationJobName", # required
    #     role_arn: "RoleArn", # required
    #     client_request_token: "ModelInvocationIdempotencyToken",
    #     model_id: "ModelId", # required
    #     input_data_config: { # required
    #       # One of:
    #       s3_input_data_config: {
    #         s3_input_format: "JSONL" # One of: ["JSONL"],
    #         s3_uri: "S3Uri", # required
    #         s3_bucket_owner: "AccountId"
    #       }
    #     },
    #     output_data_config: { # required
    #       # One of:
    #       s3_output_data_config: {
    #         s3_uri: "S3Uri", # required
    #         s3_encryption_key_id: "KmsKeyId",
    #         s3_bucket_owner: "AccountId"
    #       }
    #     },
    #     vpc_config: {
    #       subnet_ids: ["SubnetId"], # required
    #       security_group_ids: ["SecurityGroupId"], # required
    #     },
    #     timeout_duration_in_hours: 1,
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_model_invocation_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_arn: "ModelInvocationJobArn", # required
    #   }
    # @return [Types::CreateModelInvocationJobResponse]
    def create_model_invocation_job(params = {}, options = {})
      request = build_request(:create_model_invocation_job, params)
      request.send_request(options)
    end

    # <p>Creates a prompt router that manages the routing of requests between multiple foundation models based on the routing criteria.</p>
    # @param [Hash, Types::CreatePromptRouterRequest] params
    # @option params [String] :client_request_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure idempotency of your requests. If not specified, the Amazon Web Services SDK automatically generates one for you.</p>
    # @option params [String] :prompt_router_name
    #   <p>The name of the prompt router. The name must be unique within your Amazon Web Services account in the current region.</p>
    # @option params [Array<Types::PromptRouterTargetModel>] :models
    #   <p>A list of foundation models that the prompt router can route requests to. At least one model must be specified.</p>
    # @option params [String] :description
    #   <p>An optional description of the prompt router to help identify its purpose.</p>
    # @option params [Types::RoutingCriteria] :routing_criteria
    #   <p>The criteria, which is the response quality difference, used to determine how incoming requests are routed to different models.</p>
    # @option params [Types::PromptRouterTargetModel] :fallback_model
    #   <p>The default model to use when the routing criteria is not met.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>An array of key-value pairs to apply to this resource as tags. You can use tags to categorize and manage your Amazon Web Services resources.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_request_token: "IdempotencyToken",
    #     prompt_router_name: "PromptRouterName", # required
    #     models: [ # required
    #       {
    #         model_arn: "PromptRouterTargetModelArn", # required
    #       }
    #     ],
    #     description: "PromptRouterDescription",
    #     routing_criteria: { # required
    #       response_quality_difference: 1.0, # required
    #     },
    #     fallback_model: { # required
    #       model_arn: "PromptRouterTargetModelArn", # required
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_prompt_router(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     prompt_router_arn: "PromptRouterArn"
    #   }
    # @return [Types::CreatePromptRouterResponse]
    def create_prompt_router(params = {}, options = {})
      request = build_request(:create_prompt_router, params)
      request.send_request(options)
    end

    # <p>Creates dedicated throughput for a base or custom model with the model units and for the duration that you specify. For pricing details, see <a href="http://aws.amazon.com/bedrock/pricing/">Amazon Bedrock Pricing</a>. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/prov-throughput.html">Provisioned Throughput</a> in the <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html">Amazon Bedrock User Guide</a>.</p>
    # @param [Hash, Types::CreateProvisionedModelThroughputRequest] params
    # @option params [String] :client_request_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, Amazon Bedrock ignores the request, but does not return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a> in the Amazon S3 User Guide.</p>
    # @option params [Integer] :model_units
    #   <p>Number of model units to allocate. A model unit delivers a specific throughput level for the specified model. The throughput level of a model unit specifies the total number of input and output tokens that it can process and generate within a span of one minute. By default, your account has no model units for purchasing Provisioned Throughputs with commitment. You must first visit the <a href="https://console.aws.amazon.com/support/home#/case/create?issueType=service-limit-increase">Amazon Web Services support center</a> to request MUs.</p> <p>For model unit quotas, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/quotas.html#prov-thru-quotas">Provisioned Throughput quotas</a> in the <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html">Amazon Bedrock User Guide</a>.</p> <p>For more information about what an MU specifies, contact your Amazon Web Services account manager.</p>
    # @option params [String] :provisioned_model_name
    #   <p>The name for this Provisioned Throughput.</p>
    # @option params [String] :model_id
    #   <p>The Amazon Resource Name (ARN) or name of the model to associate with this Provisioned Throughput. For a list of models for which you can purchase Provisioned Throughput, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/model-ids.html#prov-throughput-models">Amazon Bedrock model IDs for purchasing Provisioned Throughput</a> in the <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html">Amazon Bedrock User Guide</a>.</p>
    # @option params [String] :commitment_duration
    #   <p>The commitment duration requested for the Provisioned Throughput. Billing occurs hourly and is discounted for longer commitment terms. To request a no-commit Provisioned Throughput, omit this field.</p> <p>Custom models support all levels of commitment. To see which base models support no commitment, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/pt-supported.html">Supported regions and models for Provisioned Throughput</a> in the <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html">Amazon Bedrock User Guide</a> </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Tags to associate with this Provisioned Throughput.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_request_token: "IdempotencyToken",
    #     model_units: 1, # required
    #     provisioned_model_name: "ProvisionedModelName", # required
    #     model_id: "ModelIdentifier", # required
    #     commitment_duration: "OneMonth" # One of: ["OneMonth", "SixMonths"],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_provisioned_model_throughput(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     provisioned_model_arn: "ProvisionedModelArn", # required
    #   }
    # @return [Types::CreateProvisionedModelThroughputResponse]
    def create_provisioned_model_throughput(params = {}, options = {})
      request = build_request(:create_provisioned_model_throughput, params)
      request.send_request(options)
    end

    # <p>Deletes an Automated Reasoning policy or policy version. This operation is idempotent. If you delete a policy more than once, each call succeeds. Deleting a policy removes it permanently and cannot be undone.</p>
    # @param [Hash, Types::DeleteAutomatedReasoningPolicyRequest] params
    # @option params [String] :policy_arn
    #   <p>The Amazon Resource Name (ARN) of the Automated Reasoning policy to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_arn: "AutomatedReasoningPolicyArn", # required
    #   }
    #   options = {}
    #   response = client.delete_automated_reasoning_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteAutomatedReasoningPolicyResponse]
    def delete_automated_reasoning_policy(params = {}, options = {})
      request = build_request(:delete_automated_reasoning_policy, params)
      request.send_request(options)
    end

    # <p>Deletes an Automated Reasoning policy build workflow and its associated artifacts. This permanently removes the workflow history and any generated assets.</p>
    # @param [Hash, Types::DeleteAutomatedReasoningPolicyBuildWorkflowRequest] params
    # @option params [String] :policy_arn
    #   <p>The Amazon Resource Name (ARN) of the Automated Reasoning policy whose build workflow you want to delete.</p>
    # @option params [String] :build_workflow_id
    #   <p>The unique identifier of the build workflow to delete.</p>
    # @option params [Time] :last_updated_at
    #   <p>The timestamp when the build workflow was last updated. This is used for optimistic concurrency control to prevent accidental deletion of workflows that have been modified.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_arn: "AutomatedReasoningPolicyArn", # required
    #     build_workflow_id: "AutomatedReasoningPolicyBuildWorkflowId", # required
    #     last_updated_at: Time.now, # required
    #   }
    #   options = {}
    #   response = client.delete_automated_reasoning_policy_build_workflow(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteAutomatedReasoningPolicyBuildWorkflowResponse]
    def delete_automated_reasoning_policy_build_workflow(params = {}, options = {})
      request = build_request(:delete_automated_reasoning_policy_build_workflow, params)
      request.send_request(options)
    end

    # <p>Deletes an Automated Reasoning policy test. This operation is idempotent; if you delete a test more than once, each call succeeds.</p>
    # @param [Hash, Types::DeleteAutomatedReasoningPolicyTestCaseRequest] params
    # @option params [String] :policy_arn
    #   <p>The Amazon Resource Name (ARN) of the Automated Reasoning policy that contains the test.</p>
    # @option params [String] :test_case_id
    #   <p>The unique identifier of the test to delete.</p>
    # @option params [Time] :last_updated_at
    #   <p>The timestamp when the test was last updated. This is used as a concurrency token to prevent conflicting modifications.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_arn: "AutomatedReasoningPolicyArn", # required
    #     test_case_id: "AutomatedReasoningPolicyTestCaseId", # required
    #     last_updated_at: Time.now, # required
    #   }
    #   options = {}
    #   response = client.delete_automated_reasoning_policy_test_case(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteAutomatedReasoningPolicyTestCaseResponse]
    def delete_automated_reasoning_policy_test_case(params = {}, options = {})
      request = build_request(:delete_automated_reasoning_policy_test_case, params)
      request.send_request(options)
    end

    # <p>Deletes a custom model that you created earlier. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models.html">Custom models</a> in the <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html">Amazon Bedrock User Guide</a>.</p>
    # @param [Hash, Types::DeleteCustomModelRequest] params
    # @option params [String] :model_identifier
    #   <p>Name of the model to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     model_identifier: "ModelIdentifier", # required
    #   }
    #   options = {}
    #   response = client.delete_custom_model(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteCustomModelResponse]
    def delete_custom_model(params = {}, options = {})
      request = build_request(:delete_custom_model, params)
      request.send_request(options)
    end

    # <p>Deletes a custom model deployment. This operation stops the deployment and removes it from your account. After deletion, the deployment ARN can no longer be used for inference requests.</p> <p>The following actions are related to the <code>DeleteCustomModelDeployment</code> operation:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_CreateCustomModelDeployment.html">CreateCustomModelDeployment</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_GetCustomModelDeployment.html">GetCustomModelDeployment</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_ListCustomModelDeployments.html">ListCustomModelDeployments</a> </p> </li> </ul>
    # @param [Hash, Types::DeleteCustomModelDeploymentRequest] params
    # @option params [String] :custom_model_deployment_identifier
    #   <p>The Amazon Resource Name (ARN) or name of the custom model deployment to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     custom_model_deployment_identifier: "CustomModelDeploymentIdentifier", # required
    #   }
    #   options = {}
    #   response = client.delete_custom_model_deployment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteCustomModelDeploymentResponse]
    def delete_custom_model_deployment(params = {}, options = {})
      request = build_request(:delete_custom_model_deployment, params)
      request.send_request(options)
    end

    # <p>Delete the model access agreement for the specified model.</p>
    # @param [Hash, Types::DeleteFoundationModelAgreementRequest] params
    # @option params [String] :model_id
    #   <p>Model Id of the model access to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     model_id: "BedrockModelId", # required
    #   }
    #   options = {}
    #   response = client.delete_foundation_model_agreement(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteFoundationModelAgreementResponse]
    def delete_foundation_model_agreement(params = {}, options = {})
      request = build_request(:delete_foundation_model_agreement, params)
      request.send_request(options)
    end

    # <p>Deletes a guardrail.</p> <ul> <li> <p>To delete a guardrail, only specify the ARN of the guardrail in the <code>guardrailIdentifier</code> field. If you delete a guardrail, all of its versions will be deleted.</p> </li> <li> <p>To delete a version of a guardrail, specify the ARN of the guardrail in the <code>guardrailIdentifier</code> field and the version in the <code>guardrailVersion</code> field.</p> </li> </ul>
    # @param [Hash, Types::DeleteGuardrailRequest] params
    # @option params [String] :guardrail_identifier
    #   <p>The unique identifier of the guardrail. This can be an ID or the ARN.</p>
    # @option params [String] :guardrail_version
    #   <p>The version of the guardrail.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     guardrail_identifier: "GuardrailIdentifier", # required
    #     guardrail_version: "GuardrailNumericalVersion"
    #   }
    #   options = {}
    #   response = client.delete_guardrail(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteGuardrailResponse]
    def delete_guardrail(params = {}, options = {})
      request = build_request(:delete_guardrail, params)
      request.send_request(options)
    end

    # <p>Deletes a custom model that you imported earlier. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-import-model.html">Import a customized model</a> in the <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html">Amazon Bedrock User Guide</a>. </p>
    # @param [Hash, Types::DeleteImportedModelRequest] params
    # @option params [String] :model_identifier
    #   <p>Name of the imported model to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     model_identifier: "ImportedModelIdentifier", # required
    #   }
    #   options = {}
    #   response = client.delete_imported_model(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteImportedModelResponse]
    def delete_imported_model(params = {}, options = {})
      request = build_request(:delete_imported_model, params)
      request.send_request(options)
    end

    # <p>Deletes an application inference profile. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/cross-region-inference.html">Increase throughput and resilience with cross-region inference in Amazon Bedrock</a>. in the Amazon Bedrock User Guide.</p>
    # @param [Hash, Types::DeleteInferenceProfileRequest] params
    # @option params [String] :inference_profile_identifier
    #   <p>The Amazon Resource Name (ARN) or ID of the application inference profile to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     inference_profile_identifier: "InferenceProfileIdentifier", # required
    #   }
    #   options = {}
    #   response = client.delete_inference_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteInferenceProfileResponse]
    def delete_inference_profile(params = {}, options = {})
      request = build_request(:delete_inference_profile, params)
      request.send_request(options)
    end

    # <p>Deletes an endpoint for a model from Amazon Bedrock Marketplace.</p>
    # @param [Hash, Types::DeleteMarketplaceModelEndpointRequest] params
    # @option params [String] :endpoint_arn
    #   <p>The Amazon Resource Name (ARN) of the endpoint you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     endpoint_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.delete_marketplace_model_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteMarketplaceModelEndpointResponse]
    def delete_marketplace_model_endpoint(params = {}, options = {})
      request = build_request(:delete_marketplace_model_endpoint, params)
      request.send_request(options)
    end

    # <p>Delete the invocation logging. </p>
    # @param [Hash, Types::DeleteModelInvocationLoggingConfigurationRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.delete_model_invocation_logging_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteModelInvocationLoggingConfigurationResponse]
    def delete_model_invocation_logging_configuration(params = {}, options = {})
      request = build_request(:delete_model_invocation_logging_configuration, params)
      request.send_request(options)
    end

    # <p>Deletes a specified prompt router. This action cannot be undone.</p>
    # @param [Hash, Types::DeletePromptRouterRequest] params
    # @option params [String] :prompt_router_arn
    #   <p>The Amazon Resource Name (ARN) of the prompt router to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     prompt_router_arn: "PromptRouterArn", # required
    #   }
    #   options = {}
    #   response = client.delete_prompt_router(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeletePromptRouterResponse]
    def delete_prompt_router(params = {}, options = {})
      request = build_request(:delete_prompt_router, params)
      request.send_request(options)
    end

    # <p>Deletes a Provisioned Throughput. You can't delete a Provisioned Throughput before the commitment term is over. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/prov-throughput.html">Provisioned Throughput</a> in the <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html">Amazon Bedrock User Guide</a>.</p>
    # @param [Hash, Types::DeleteProvisionedModelThroughputRequest] params
    # @option params [String] :provisioned_model_id
    #   <p>The Amazon Resource Name (ARN) or name of the Provisioned Throughput.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     provisioned_model_id: "ProvisionedModelId", # required
    #   }
    #   options = {}
    #   response = client.delete_provisioned_model_throughput(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteProvisionedModelThroughputResponse]
    def delete_provisioned_model_throughput(params = {}, options = {})
      request = build_request(:delete_provisioned_model_throughput, params)
      request.send_request(options)
    end

    # <p>Deregisters an endpoint for a model from Amazon Bedrock Marketplace. This operation removes the endpoint's association with Amazon Bedrock but does not delete the underlying Amazon SageMaker endpoint.</p>
    # @param [Hash, Types::DeregisterMarketplaceModelEndpointRequest] params
    # @option params [String] :endpoint_arn
    #   <p>The Amazon Resource Name (ARN) of the endpoint you want to deregister.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     endpoint_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.deregister_marketplace_model_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeregisterMarketplaceModelEndpointResponse]
    def deregister_marketplace_model_endpoint(params = {}, options = {})
      request = build_request(:deregister_marketplace_model_endpoint, params)
      request.send_request(options)
    end

    # <p>Exports the policy definition for an Automated Reasoning policy version. Returns the complete policy definition including rules, variables, and custom variable types in a structured format.</p>
    # @param [Hash, Types::ExportAutomatedReasoningPolicyVersionRequest] params
    # @option params [String] :policy_arn
    #   <p>The Amazon Resource Name (ARN) of the Automated Reasoning policy to export. Can be either the unversioned ARN for the draft policy or a versioned ARN for a specific policy version.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_arn: "AutomatedReasoningPolicyArn", # required
    #   }
    #   options = {}
    #   response = client.export_automated_reasoning_policy_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_definition: { # required
    #       version: "AutomatedReasoningPolicyFormatVersion",
    #       types: [
    #         {
    #           name: "AutomatedReasoningPolicyDefinitionTypeName", # required
    #           description: "AutomatedReasoningPolicyDefinitionTypeDescription",
    #           values: [ # required
    #             {
    #               value: "AutomatedReasoningPolicyDefinitionTypeValueName", # required
    #               description: "AutomatedReasoningPolicyDefinitionTypeValueDescription"
    #             }
    #           ]
    #         }
    #       ],
    #       rules: [
    #         {
    #           id: "AutomatedReasoningPolicyDefinitionRuleId", # required
    #           expression: "AutomatedReasoningPolicyDefinitionRuleExpression", # required
    #           alternate_expression: "AutomatedReasoningPolicyDefinitionRuleAlternateExpression"
    #         }
    #       ],
    #       variables: [
    #         {
    #           name: "AutomatedReasoningPolicyDefinitionVariableName", # required
    #           type: "AutomatedReasoningPolicyDefinitionTypeName", # required
    #           description: "AutomatedReasoningPolicyDefinitionVariableDescription", # required
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::ExportAutomatedReasoningPolicyVersionResponse]
    def export_automated_reasoning_policy_version(params = {}, options = {})
      request = build_request(:export_automated_reasoning_policy_version, params)
      request.send_request(options)
    end

    # <p>Retrieves details about an Automated Reasoning policy or policy version. Returns information including the policy definition, metadata, and timestamps.</p>
    # @param [Hash, Types::GetAutomatedReasoningPolicyRequest] params
    # @option params [String] :policy_arn
    #   <p>The Amazon Resource Name (ARN) of the Automated Reasoning policy to retrieve. Can be either the unversioned ARN for the draft policy or an ARN for a specific policy version.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_arn: "AutomatedReasoningPolicyArn", # required
    #   }
    #   options = {}
    #   response = client.get_automated_reasoning_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_arn: "AutomatedReasoningPolicyArn", # required
    #     name: "AutomatedReasoningPolicyName", # required
    #     version: "AutomatedReasoningPolicyVersion", # required
    #     policy_id: "AutomatedReasoningPolicyId", # required
    #     description: "AutomatedReasoningPolicyDescription",
    #     definition_hash: "AutomatedReasoningPolicyHash", # required
    #     created_at: Time.now,
    #     updated_at: Time.now, # required
    #   }
    # @return [Types::GetAutomatedReasoningPolicyResponse]
    def get_automated_reasoning_policy(params = {}, options = {})
      request = build_request(:get_automated_reasoning_policy, params)
      request.send_request(options)
    end

    # <p>Retrieves the current annotations for an Automated Reasoning policy build workflow. Annotations contain corrections to the rules, variables and types to be applied to the policy.</p>
    # @param [Hash, Types::GetAutomatedReasoningPolicyAnnotationsRequest] params
    # @option params [String] :policy_arn
    #   <p>The Amazon Resource Name (ARN) of the Automated Reasoning policy whose annotations you want to retrieve.</p>
    # @option params [String] :build_workflow_id
    #   <p>The unique identifier of the build workflow whose annotations you want to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_arn: "AutomatedReasoningPolicyArn", # required
    #     build_workflow_id: "AutomatedReasoningPolicyBuildWorkflowId", # required
    #   }
    #   options = {}
    #   response = client.get_automated_reasoning_policy_annotations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_arn: "AutomatedReasoningPolicyArn", # required
    #     name: "AutomatedReasoningPolicyName", # required
    #     build_workflow_id: "AutomatedReasoningPolicyBuildWorkflowId", # required
    #     annotations: [{ # required
    #       # One of:
    #       add_type: {
    #         name: "AutomatedReasoningPolicyDefinitionTypeName", # required
    #         description: "AutomatedReasoningPolicyDefinitionTypeDescription", # required
    #         values: [ # required
    #           {
    #             value: "AutomatedReasoningPolicyDefinitionTypeValueName", # required
    #             description: "AutomatedReasoningPolicyDefinitionTypeValueDescription"
    #           }
    #         ]
    #       },
    #       update_type: {
    #         name: "AutomatedReasoningPolicyDefinitionTypeName", # required
    #         new_name: "AutomatedReasoningPolicyDefinitionTypeName",
    #         description: "AutomatedReasoningPolicyDefinitionTypeDescription",
    #         values: [{ # required
    #           # One of:
    #           add_type_value: {
    #             value: "AutomatedReasoningPolicyDefinitionTypeValueName", # required
    #             description: "AutomatedReasoningPolicyDefinitionTypeValueDescription"
    #           },
    #           update_type_value: {
    #             value: "AutomatedReasoningPolicyDefinitionTypeValueName", # required
    #             new_value: "AutomatedReasoningPolicyDefinitionTypeValueName",
    #             description: "AutomatedReasoningPolicyDefinitionTypeValueDescription"
    #           },
    #           delete_type_value: {
    #             value: "AutomatedReasoningPolicyDefinitionTypeValueName", # required
    #           }
    #         }]
    #       },
    #       delete_type: {
    #         name: "AutomatedReasoningPolicyDefinitionTypeName", # required
    #       },
    #       add_variable: {
    #         name: "AutomatedReasoningPolicyDefinitionVariableName", # required
    #         type: "AutomatedReasoningPolicyDefinitionTypeName", # required
    #         description: "AutomatedReasoningPolicyDefinitionVariableDescription", # required
    #       },
    #       update_variable: {
    #         name: "AutomatedReasoningPolicyDefinitionVariableName", # required
    #         new_name: "AutomatedReasoningPolicyDefinitionVariableName",
    #         description: "AutomatedReasoningPolicyDefinitionVariableDescription"
    #       },
    #       delete_variable: {
    #         name: "AutomatedReasoningPolicyDefinitionVariableName", # required
    #       },
    #       add_rule: {
    #         expression: "AutomatedReasoningPolicyDefinitionRuleExpression", # required
    #       },
    #       update_rule: {
    #         rule_id: "AutomatedReasoningPolicyDefinitionRuleId", # required
    #         expression: "AutomatedReasoningPolicyDefinitionRuleExpression", # required
    #       },
    #       delete_rule: {
    #         rule_id: "AutomatedReasoningPolicyDefinitionRuleId", # required
    #       },
    #       add_rule_from_natural_language: {
    #         natural_language: "AutomatedReasoningPolicyAnnotationRuleNaturalLanguage", # required
    #       },
    #       update_from_rules_feedback: {
    #         rule_ids: ["AutomatedReasoningPolicyDefinitionRuleId"],
    #         feedback: "AutomatedReasoningPolicyAnnotationFeedbackNaturalLanguage", # required
    #       },
    #       update_from_scenario_feedback: {
    #         rule_ids: ["AutomatedReasoningPolicyDefinitionRuleId"],
    #         scenario_expression: "AutomatedReasoningPolicyScenarioExpression", # required
    #         feedback: "AutomatedReasoningPolicyAnnotationFeedbackNaturalLanguage"
    #       },
    #       ingest_content: {
    #         content: "AutomatedReasoningPolicyAnnotationIngestContent", # required
    #       }
    #     }],
    #     annotation_set_hash: "AutomatedReasoningPolicyHash", # required
    #     updated_at: Time.now, # required
    #   }
    # @return [Types::GetAutomatedReasoningPolicyAnnotationsResponse]
    def get_automated_reasoning_policy_annotations(params = {}, options = {})
      request = build_request(:get_automated_reasoning_policy_annotations, params)
      request.send_request(options)
    end

    # <p>Retrieves detailed information about an Automated Reasoning policy build workflow, including its status, configuration, and metadata.</p>
    # @param [Hash, Types::GetAutomatedReasoningPolicyBuildWorkflowRequest] params
    # @option params [String] :policy_arn
    #   <p>The Amazon Resource Name (ARN) of the Automated Reasoning policy whose build workflow you want to retrieve.</p>
    # @option params [String] :build_workflow_id
    #   <p>The unique identifier of the build workflow to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_arn: "AutomatedReasoningPolicyArn", # required
    #     build_workflow_id: "AutomatedReasoningPolicyBuildWorkflowId", # required
    #   }
    #   options = {}
    #   response = client.get_automated_reasoning_policy_build_workflow(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_arn: "AutomatedReasoningPolicyArn", # required
    #     build_workflow_id: "AutomatedReasoningPolicyBuildWorkflowId", # required
    #     status: "SCHEDULED" # One of: ["SCHEDULED", "CANCEL_REQUESTED", "PREPROCESSING", "BUILDING", "TESTING", "COMPLETED", "FAILED", "CANCELLED"], # required
    #     build_workflow_type: "INGEST_CONTENT" # One of: ["INGEST_CONTENT", "REFINE_POLICY", "IMPORT_POLICY"], # required
    #     document_name: "AutomatedReasoningPolicyBuildDocumentName",
    #     document_content_type: "pdf" # One of: ["pdf", "txt"],
    #     document_description: "AutomatedReasoningPolicyBuildDocumentDescription",
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #   }
    # @return [Types::GetAutomatedReasoningPolicyBuildWorkflowResponse]
    def get_automated_reasoning_policy_build_workflow(params = {}, options = {})
      request = build_request(:get_automated_reasoning_policy_build_workflow, params)
      request.send_request(options)
    end

    # <p>Retrieves the resulting assets from a completed Automated Reasoning policy build workflow, including build logs, quality reports, and generated policy artifacts.</p>
    # @param [Hash, Types::GetAutomatedReasoningPolicyBuildWorkflowResultAssetsRequest] params
    # @option params [String] :policy_arn
    #   <p>The Amazon Resource Name (ARN) of the Automated Reasoning policy whose build workflow assets you want to retrieve.</p>
    # @option params [String] :build_workflow_id
    #   <p>The unique identifier of the build workflow whose result assets you want to retrieve.</p>
    # @option params [String] :asset_type
    #   <p>The type of asset to retrieve (e.g., BUILD_LOG, QUALITY_REPORT, POLICY_DEFINITION).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_arn: "AutomatedReasoningPolicyArn", # required
    #     build_workflow_id: "AutomatedReasoningPolicyBuildWorkflowId", # required
    #     asset_type: "BUILD_LOG" # One of: ["BUILD_LOG", "QUALITY_REPORT", "POLICY_DEFINITION"], # required
    #   }
    #   options = {}
    #   response = client.get_automated_reasoning_policy_build_workflow_result_assets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_arn: "AutomatedReasoningPolicyArn", # required
    #     build_workflow_id: "AutomatedReasoningPolicyBuildWorkflowId", # required
    #     build_workflow_assets: {
    #       # One of:
    #       policy_definition: {
    #         version: "AutomatedReasoningPolicyFormatVersion",
    #         types: [
    #           {
    #             name: "AutomatedReasoningPolicyDefinitionTypeName", # required
    #             description: "AutomatedReasoningPolicyDefinitionTypeDescription",
    #             values: [ # required
    #               {
    #                 value: "AutomatedReasoningPolicyDefinitionTypeValueName", # required
    #                 description: "AutomatedReasoningPolicyDefinitionTypeValueDescription"
    #               }
    #             ]
    #           }
    #         ],
    #         rules: [
    #           {
    #             id: "AutomatedReasoningPolicyDefinitionRuleId", # required
    #             expression: "AutomatedReasoningPolicyDefinitionRuleExpression", # required
    #             alternate_expression: "AutomatedReasoningPolicyDefinitionRuleAlternateExpression"
    #           }
    #         ],
    #         variables: [
    #           {
    #             name: "AutomatedReasoningPolicyDefinitionVariableName", # required
    #             type: "AutomatedReasoningPolicyDefinitionTypeName", # required
    #             description: "AutomatedReasoningPolicyDefinitionVariableDescription", # required
    #           }
    #         ]
    #       },
    #       quality_report: {
    #         type_count: 1, # required
    #         variable_count: 1, # required
    #         rule_count: 1, # required
    #         unused_types: ["AutomatedReasoningPolicyDefinitionTypeName"], # required
    #         unused_type_values: [ # required
    #           {
    #             type_name: "AutomatedReasoningPolicyDefinitionTypeName", # required
    #             value_name: "AutomatedReasoningPolicyDefinitionTypeValueName", # required
    #           }
    #         ],
    #         unused_variables: ["AutomatedReasoningPolicyDefinitionVariableName"], # required
    #         conflicting_rules: ["AutomatedReasoningPolicyDefinitionRuleId"], # required
    #         disjoint_rule_sets: [ # required
    #           {
    #             variables: ["AutomatedReasoningPolicyDefinitionVariableName"], # required
    #             rules: ["AutomatedReasoningPolicyDefinitionRuleId"], # required
    #           }
    #         ]
    #       },
    #       build_log: {
    #         entries: [ # required
    #           {
    #             annotation: { # required
    #               # One of:
    #               add_type: {
    #                 name: "AutomatedReasoningPolicyDefinitionTypeName", # required
    #                 description: "AutomatedReasoningPolicyDefinitionTypeDescription", # required
    #                 values: [ # required
    #                   {
    #                     value: "AutomatedReasoningPolicyDefinitionTypeValueName", # required
    #                     description: "AutomatedReasoningPolicyDefinitionTypeValueDescription"
    #                   }
    #                 ]
    #               },
    #               update_type: {
    #                 name: "AutomatedReasoningPolicyDefinitionTypeName", # required
    #                 new_name: "AutomatedReasoningPolicyDefinitionTypeName",
    #                 description: "AutomatedReasoningPolicyDefinitionTypeDescription",
    #                 values: [{ # required
    #                   # One of:
    #                   add_type_value: {
    #                     value: "AutomatedReasoningPolicyDefinitionTypeValueName", # required
    #                     description: "AutomatedReasoningPolicyDefinitionTypeValueDescription"
    #                   },
    #                   update_type_value: {
    #                     value: "AutomatedReasoningPolicyDefinitionTypeValueName", # required
    #                     new_value: "AutomatedReasoningPolicyDefinitionTypeValueName",
    #                     description: "AutomatedReasoningPolicyDefinitionTypeValueDescription"
    #                   },
    #                   delete_type_value: {
    #                     value: "AutomatedReasoningPolicyDefinitionTypeValueName", # required
    #                   }
    #                 }]
    #               },
    #               delete_type: {
    #                 name: "AutomatedReasoningPolicyDefinitionTypeName", # required
    #               },
    #               add_variable: {
    #                 name: "AutomatedReasoningPolicyDefinitionVariableName", # required
    #                 type: "AutomatedReasoningPolicyDefinitionTypeName", # required
    #                 description: "AutomatedReasoningPolicyDefinitionVariableDescription", # required
    #               },
    #               update_variable: {
    #                 name: "AutomatedReasoningPolicyDefinitionVariableName", # required
    #                 new_name: "AutomatedReasoningPolicyDefinitionVariableName",
    #                 description: "AutomatedReasoningPolicyDefinitionVariableDescription"
    #               },
    #               delete_variable: {
    #                 name: "AutomatedReasoningPolicyDefinitionVariableName", # required
    #               },
    #               add_rule: {
    #                 expression: "AutomatedReasoningPolicyDefinitionRuleExpression", # required
    #               },
    #               update_rule: {
    #                 rule_id: "AutomatedReasoningPolicyDefinitionRuleId", # required
    #                 expression: "AutomatedReasoningPolicyDefinitionRuleExpression", # required
    #               },
    #               delete_rule: {
    #                 rule_id: "AutomatedReasoningPolicyDefinitionRuleId", # required
    #               },
    #               add_rule_from_natural_language: {
    #                 natural_language: "AutomatedReasoningPolicyAnnotationRuleNaturalLanguage", # required
    #               },
    #               update_from_rules_feedback: {
    #                 rule_ids: ["AutomatedReasoningPolicyDefinitionRuleId"],
    #                 feedback: "AutomatedReasoningPolicyAnnotationFeedbackNaturalLanguage", # required
    #               },
    #               update_from_scenario_feedback: {
    #                 rule_ids: ["AutomatedReasoningPolicyDefinitionRuleId"],
    #                 scenario_expression: "AutomatedReasoningPolicyScenarioExpression", # required
    #                 feedback: "AutomatedReasoningPolicyAnnotationFeedbackNaturalLanguage"
    #               },
    #               ingest_content: {
    #                 content: "AutomatedReasoningPolicyAnnotationIngestContent", # required
    #               }
    #             },
    #             status: "APPLIED" # One of: ["APPLIED", "FAILED"], # required
    #             build_steps: [ # required
    #               {
    #                 context: { # required
    #                   # One of:
    #                   planning: {
    #                   },
    #                   mutation: {
    #                     # One of:
    #                     add_type: {
    #                       type: { # required
    #                         name: "AutomatedReasoningPolicyDefinitionTypeName", # required
    #                         description: "AutomatedReasoningPolicyDefinitionTypeDescription",
    #                         values: [ # required
    #                           {
    #                             value: "AutomatedReasoningPolicyDefinitionTypeValueName", # required
    #                             description: "AutomatedReasoningPolicyDefinitionTypeValueDescription"
    #                           }
    #                         ]
    #                       }
    #                     },
    #                     update_type: {
    #                       type: { # required
    #                         name: "AutomatedReasoningPolicyDefinitionTypeName", # required
    #                         description: "AutomatedReasoningPolicyDefinitionTypeDescription",
    #                         values: [ # required
    #                           {
    #                             value: "AutomatedReasoningPolicyDefinitionTypeValueName", # required
    #                             description: "AutomatedReasoningPolicyDefinitionTypeValueDescription"
    #                           }
    #                         ]
    #                       }
    #                     },
    #                     delete_type: {
    #                       name: "AutomatedReasoningPolicyDefinitionTypeName", # required
    #                     },
    #                     add_variable: {
    #                       variable: { # required
    #                         name: "AutomatedReasoningPolicyDefinitionVariableName", # required
    #                         type: "AutomatedReasoningPolicyDefinitionTypeName", # required
    #                         description: "AutomatedReasoningPolicyDefinitionVariableDescription", # required
    #                       }
    #                     },
    #                     update_variable: {
    #                       variable: { # required
    #                         name: "AutomatedReasoningPolicyDefinitionVariableName", # required
    #                         type: "AutomatedReasoningPolicyDefinitionTypeName", # required
    #                         description: "AutomatedReasoningPolicyDefinitionVariableDescription", # required
    #                       }
    #                     },
    #                     delete_variable: {
    #                       name: "AutomatedReasoningPolicyDefinitionVariableName", # required
    #                     },
    #                     add_rule: {
    #                       rule: { # required
    #                         id: "AutomatedReasoningPolicyDefinitionRuleId", # required
    #                         expression: "AutomatedReasoningPolicyDefinitionRuleExpression", # required
    #                         alternate_expression: "AutomatedReasoningPolicyDefinitionRuleAlternateExpression"
    #                       }
    #                     },
    #                     update_rule: {
    #                       rule: { # required
    #                         id: "AutomatedReasoningPolicyDefinitionRuleId", # required
    #                         expression: "AutomatedReasoningPolicyDefinitionRuleExpression", # required
    #                         alternate_expression: "AutomatedReasoningPolicyDefinitionRuleAlternateExpression"
    #                       }
    #                     },
    #                     delete_rule: {
    #                       id: "AutomatedReasoningPolicyDefinitionRuleId", # required
    #                     }
    #                   }
    #                 },
    #                 prior_element: {
    #                   # One of:
    #                   policy_definition_variable: {
    #                     name: "AutomatedReasoningPolicyDefinitionVariableName", # required
    #                     type: "AutomatedReasoningPolicyDefinitionTypeName", # required
    #                     description: "AutomatedReasoningPolicyDefinitionVariableDescription", # required
    #                   },
    #                   policy_definition_type: {
    #                     name: "AutomatedReasoningPolicyDefinitionTypeName", # required
    #                     description: "AutomatedReasoningPolicyDefinitionTypeDescription",
    #                     values: [ # required
    #                       {
    #                         value: "AutomatedReasoningPolicyDefinitionTypeValueName", # required
    #                         description: "AutomatedReasoningPolicyDefinitionTypeValueDescription"
    #                       }
    #                     ]
    #                   },
    #                   policy_definition_rule: {
    #                     id: "AutomatedReasoningPolicyDefinitionRuleId", # required
    #                     expression: "AutomatedReasoningPolicyDefinitionRuleExpression", # required
    #                     alternate_expression: "AutomatedReasoningPolicyDefinitionRuleAlternateExpression"
    #                   }
    #                 },
    #                 messages: [ # required
    #                   {
    #                     message: "String", # required
    #                     message_type: "INFO" # One of: ["INFO", "WARNING", "ERROR"], # required
    #                   }
    #                 ]
    #               }
    #             ]
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @return [Types::GetAutomatedReasoningPolicyBuildWorkflowResultAssetsResponse]
    def get_automated_reasoning_policy_build_workflow_result_assets(params = {}, options = {})
      request = build_request(:get_automated_reasoning_policy_build_workflow_result_assets, params)
      request.send_request(options)
    end

    # <p>Retrieves the next test scenario for validating an Automated Reasoning policy. This is used during the interactive policy refinement process to test policy behavior.</p>
    # @param [Hash, Types::GetAutomatedReasoningPolicyNextScenarioRequest] params
    # @option params [String] :policy_arn
    #   <p>The Amazon Resource Name (ARN) of the Automated Reasoning policy for which you want to get the next test scenario.</p>
    # @option params [String] :build_workflow_id
    #   <p>The unique identifier of the build workflow associated with the test scenarios.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_arn: "AutomatedReasoningPolicyArn", # required
    #     build_workflow_id: "AutomatedReasoningPolicyBuildWorkflowId", # required
    #   }
    #   options = {}
    #   response = client.get_automated_reasoning_policy_next_scenario(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_arn: "AutomatedReasoningPolicyArn", # required
    #     scenario: {
    #       expression: "AutomatedReasoningPolicyScenarioExpression", # required
    #       alternate_expression: "AutomatedReasoningPolicyScenarioAlternateExpression", # required
    #       rule_ids: ["AutomatedReasoningPolicyDefinitionRuleId"], # required
    #       expected_result: "VALID" # One of: ["VALID", "INVALID", "SATISFIABLE", "IMPOSSIBLE", "TRANSLATION_AMBIGUOUS", "TOO_COMPLEX", "NO_TRANSLATION"], # required
    #     }
    #   }
    # @return [Types::GetAutomatedReasoningPolicyNextScenarioResponse]
    def get_automated_reasoning_policy_next_scenario(params = {}, options = {})
      request = build_request(:get_automated_reasoning_policy_next_scenario, params)
      request.send_request(options)
    end

    # <p>Retrieves details about a specific Automated Reasoning policy test.</p>
    # @param [Hash, Types::GetAutomatedReasoningPolicyTestCaseRequest] params
    # @option params [String] :policy_arn
    #   <p>The Amazon Resource Name (ARN) of the Automated Reasoning policy that contains the test.</p>
    # @option params [String] :test_case_id
    #   <p>The unique identifier of the test to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_arn: "AutomatedReasoningPolicyArn", # required
    #     test_case_id: "AutomatedReasoningPolicyTestCaseId", # required
    #   }
    #   options = {}
    #   response = client.get_automated_reasoning_policy_test_case(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_arn: "AutomatedReasoningPolicyArn", # required
    #     test_case: { # required
    #       test_case_id: "AutomatedReasoningPolicyTestCaseId", # required
    #       guard_content: "AutomatedReasoningPolicyTestGuardContent", # required
    #       query_content: "AutomatedReasoningPolicyTestQueryContent",
    #       expected_aggregated_findings_result: "VALID" # One of: ["VALID", "INVALID", "SATISFIABLE", "IMPOSSIBLE", "TRANSLATION_AMBIGUOUS", "TOO_COMPLEX", "NO_TRANSLATION"],
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       confidence_threshold: 1.0
    #     }
    #   }
    # @return [Types::GetAutomatedReasoningPolicyTestCaseResponse]
    def get_automated_reasoning_policy_test_case(params = {}, options = {})
      request = build_request(:get_automated_reasoning_policy_test_case, params)
      request.send_request(options)
    end

    # <p>Retrieves the test result for a specific Automated Reasoning policy test. Returns detailed validation findings and execution status.</p>
    # @param [Hash, Types::GetAutomatedReasoningPolicyTestResultRequest] params
    # @option params [String] :policy_arn
    #   <p>The Amazon Resource Name (ARN) of the Automated Reasoning policy.</p>
    # @option params [String] :build_workflow_id
    #   <p>The build workflow identifier. The build workflow must display a <code>COMPLETED</code> status to get results.</p>
    # @option params [String] :test_case_id
    #   <p>The unique identifier of the test for which to retrieve results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_arn: "AutomatedReasoningPolicyArn", # required
    #     build_workflow_id: "AutomatedReasoningPolicyBuildWorkflowId", # required
    #     test_case_id: "AutomatedReasoningPolicyTestCaseId", # required
    #   }
    #   options = {}
    #   response = client.get_automated_reasoning_policy_test_result(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     test_result: { # required
    #       test_case: { # required
    #         test_case_id: "AutomatedReasoningPolicyTestCaseId", # required
    #         guard_content: "AutomatedReasoningPolicyTestGuardContent", # required
    #         query_content: "AutomatedReasoningPolicyTestQueryContent",
    #         expected_aggregated_findings_result: "VALID" # One of: ["VALID", "INVALID", "SATISFIABLE", "IMPOSSIBLE", "TRANSLATION_AMBIGUOUS", "TOO_COMPLEX", "NO_TRANSLATION"],
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #         confidence_threshold: 1.0
    #       },
    #       policy_arn: "AutomatedReasoningPolicyArn", # required
    #       test_run_status: "NOT_STARTED" # One of: ["NOT_STARTED", "SCHEDULED", "IN_PROGRESS", "COMPLETED", "FAILED"], # required
    #       test_findings: [{
    #         # One of:
    #         valid: {
    #           translation: {
    #             premises: [
    #               {
    #                 logic: "AutomatedReasoningLogicStatementContent", # required
    #                 natural_language: "AutomatedReasoningNaturalLanguageStatementContent"
    #               }
    #             ],
    #             claims: [ # required
    #               {
    #                 logic: "AutomatedReasoningLogicStatementContent", # required
    #                 natural_language: "AutomatedReasoningNaturalLanguageStatementContent"
    #               }
    #             ],
    #             untranslated_premises: [
    #               {
    #                 text: "AutomatedReasoningNaturalLanguageStatementContent"
    #               }
    #             ],
    #             untranslated_claims: [
    #               {
    #                 text: "AutomatedReasoningNaturalLanguageStatementContent"
    #               }
    #             ],
    #             confidence: 1.0, # required
    #           },
    #           claims_true_scenario: {
    #             statements: [
    #               {
    #                 logic: "AutomatedReasoningLogicStatementContent", # required
    #                 natural_language: "AutomatedReasoningNaturalLanguageStatementContent"
    #               }
    #             ]
    #           },
    #           supporting_rules: [
    #             {
    #               id: "AutomatedReasoningPolicyDefinitionRuleId",
    #               policy_version_arn: "AutomatedReasoningPolicyArn"
    #             }
    #           ],
    #           logic_warning: {
    #             type: "ALWAYS_TRUE" # One of: ["ALWAYS_TRUE", "ALWAYS_FALSE"],
    #             premises: [
    #               {
    #                 logic: "AutomatedReasoningLogicStatementContent", # required
    #                 natural_language: "AutomatedReasoningNaturalLanguageStatementContent"
    #               }
    #             ],
    #             claims: [
    #               {
    #                 logic: "AutomatedReasoningLogicStatementContent", # required
    #                 natural_language: "AutomatedReasoningNaturalLanguageStatementContent"
    #               }
    #             ]
    #           }
    #         },
    #         invalid: {
    #           translation: {
    #             premises: [
    #               {
    #                 logic: "AutomatedReasoningLogicStatementContent", # required
    #                 natural_language: "AutomatedReasoningNaturalLanguageStatementContent"
    #               }
    #             ],
    #             claims: [ # required
    #               {
    #                 logic: "AutomatedReasoningLogicStatementContent", # required
    #                 natural_language: "AutomatedReasoningNaturalLanguageStatementContent"
    #               }
    #             ],
    #             untranslated_premises: [
    #               {
    #                 text: "AutomatedReasoningNaturalLanguageStatementContent"
    #               }
    #             ],
    #             untranslated_claims: [
    #               {
    #                 text: "AutomatedReasoningNaturalLanguageStatementContent"
    #               }
    #             ],
    #             confidence: 1.0, # required
    #           },
    #           contradicting_rules: [
    #             {
    #               id: "AutomatedReasoningPolicyDefinitionRuleId",
    #               policy_version_arn: "AutomatedReasoningPolicyArn"
    #             }
    #           ],
    #           logic_warning: {
    #             type: "ALWAYS_TRUE" # One of: ["ALWAYS_TRUE", "ALWAYS_FALSE"],
    #             premises: [
    #               {
    #                 logic: "AutomatedReasoningLogicStatementContent", # required
    #                 natural_language: "AutomatedReasoningNaturalLanguageStatementContent"
    #               }
    #             ],
    #             claims: [
    #               {
    #                 logic: "AutomatedReasoningLogicStatementContent", # required
    #                 natural_language: "AutomatedReasoningNaturalLanguageStatementContent"
    #               }
    #             ]
    #           }
    #         },
    #         satisfiable: {
    #           translation: {
    #             premises: [
    #               {
    #                 logic: "AutomatedReasoningLogicStatementContent", # required
    #                 natural_language: "AutomatedReasoningNaturalLanguageStatementContent"
    #               }
    #             ],
    #             claims: [ # required
    #               {
    #                 logic: "AutomatedReasoningLogicStatementContent", # required
    #                 natural_language: "AutomatedReasoningNaturalLanguageStatementContent"
    #               }
    #             ],
    #             untranslated_premises: [
    #               {
    #                 text: "AutomatedReasoningNaturalLanguageStatementContent"
    #               }
    #             ],
    #             untranslated_claims: [
    #               {
    #                 text: "AutomatedReasoningNaturalLanguageStatementContent"
    #               }
    #             ],
    #             confidence: 1.0, # required
    #           },
    #           claims_true_scenario: {
    #             statements: [
    #               {
    #                 logic: "AutomatedReasoningLogicStatementContent", # required
    #                 natural_language: "AutomatedReasoningNaturalLanguageStatementContent"
    #               }
    #             ]
    #           },
    #           claims_false_scenario: {
    #             statements: [
    #               {
    #                 logic: "AutomatedReasoningLogicStatementContent", # required
    #                 natural_language: "AutomatedReasoningNaturalLanguageStatementContent"
    #               }
    #             ]
    #           },
    #           logic_warning: {
    #             type: "ALWAYS_TRUE" # One of: ["ALWAYS_TRUE", "ALWAYS_FALSE"],
    #             premises: [
    #               {
    #                 logic: "AutomatedReasoningLogicStatementContent", # required
    #                 natural_language: "AutomatedReasoningNaturalLanguageStatementContent"
    #               }
    #             ],
    #             claims: [
    #               {
    #                 logic: "AutomatedReasoningLogicStatementContent", # required
    #                 natural_language: "AutomatedReasoningNaturalLanguageStatementContent"
    #               }
    #             ]
    #           }
    #         },
    #         impossible: {
    #           translation: {
    #             premises: [
    #               {
    #                 logic: "AutomatedReasoningLogicStatementContent", # required
    #                 natural_language: "AutomatedReasoningNaturalLanguageStatementContent"
    #               }
    #             ],
    #             claims: [ # required
    #               {
    #                 logic: "AutomatedReasoningLogicStatementContent", # required
    #                 natural_language: "AutomatedReasoningNaturalLanguageStatementContent"
    #               }
    #             ],
    #             untranslated_premises: [
    #               {
    #                 text: "AutomatedReasoningNaturalLanguageStatementContent"
    #               }
    #             ],
    #             untranslated_claims: [
    #               {
    #                 text: "AutomatedReasoningNaturalLanguageStatementContent"
    #               }
    #             ],
    #             confidence: 1.0, # required
    #           },
    #           contradicting_rules: [
    #             {
    #               id: "AutomatedReasoningPolicyDefinitionRuleId",
    #               policy_version_arn: "AutomatedReasoningPolicyArn"
    #             }
    #           ],
    #           logic_warning: {
    #             type: "ALWAYS_TRUE" # One of: ["ALWAYS_TRUE", "ALWAYS_FALSE"],
    #             premises: [
    #               {
    #                 logic: "AutomatedReasoningLogicStatementContent", # required
    #                 natural_language: "AutomatedReasoningNaturalLanguageStatementContent"
    #               }
    #             ],
    #             claims: [
    #               {
    #                 logic: "AutomatedReasoningLogicStatementContent", # required
    #                 natural_language: "AutomatedReasoningNaturalLanguageStatementContent"
    #               }
    #             ]
    #           }
    #         },
    #         translation_ambiguous: {
    #           options: [
    #             {
    #               translations: [
    #                 {
    #                   premises: [
    #                     {
    #                       logic: "AutomatedReasoningLogicStatementContent", # required
    #                       natural_language: "AutomatedReasoningNaturalLanguageStatementContent"
    #                     }
    #                   ],
    #                   claims: [ # required
    #                     {
    #                       logic: "AutomatedReasoningLogicStatementContent", # required
    #                       natural_language: "AutomatedReasoningNaturalLanguageStatementContent"
    #                     }
    #                   ],
    #                   untranslated_premises: [
    #                     {
    #                       text: "AutomatedReasoningNaturalLanguageStatementContent"
    #                     }
    #                   ],
    #                   untranslated_claims: [
    #                     {
    #                       text: "AutomatedReasoningNaturalLanguageStatementContent"
    #                     }
    #                   ],
    #                   confidence: 1.0, # required
    #                 }
    #               ]
    #             }
    #           ],
    #           difference_scenarios: [
    #             {
    #               statements: [
    #                 {
    #                   logic: "AutomatedReasoningLogicStatementContent", # required
    #                   natural_language: "AutomatedReasoningNaturalLanguageStatementContent"
    #                 }
    #               ]
    #             }
    #           ]
    #         },
    #         too_complex: {
    #         },
    #         no_translations: {
    #         }
    #       }],
    #       test_run_result: "PASSED" # One of: ["PASSED", "FAILED"],
    #       aggregated_test_findings_result: "VALID" # One of: ["VALID", "INVALID", "SATISFIABLE", "IMPOSSIBLE", "TRANSLATION_AMBIGUOUS", "TOO_COMPLEX", "NO_TRANSLATION"],
    #       updated_at: Time.now, # required
    #     }
    #   }
    # @return [Types::GetAutomatedReasoningPolicyTestResultResponse]
    def get_automated_reasoning_policy_test_result(params = {}, options = {})
      request = build_request(:get_automated_reasoning_policy_test_result, params)
      request.send_request(options)
    end

    # <p>Get the properties associated with a Amazon Bedrock custom model that you have created. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models.html">Custom models</a> in the <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html">Amazon Bedrock User Guide</a>.</p>
    # @param [Hash, Types::GetCustomModelRequest] params
    # @option params [String] :model_identifier
    #   <p>Name or Amazon Resource Name (ARN) of the custom model.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     model_identifier: "ModelIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_custom_model(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     model_arn: "ModelArn", # required
    #     model_name: "CustomModelName", # required
    #     job_name: "JobName",
    #     job_arn: "ModelCustomizationJobArn",
    #     base_model_arn: "ModelArn",
    #     customization_type: "FINE_TUNING" # One of: ["FINE_TUNING", "CONTINUED_PRE_TRAINING", "DISTILLATION", "IMPORTED"],
    #     model_kms_key_arn: "KmsKeyArn",
    #     hyper_parameters: {
    #       "String" => "String"
    #     },
    #     training_data_config: {
    #       s3_uri: "S3Uri",
    #       invocation_logs_config: {
    #         use_prompt_response: false,
    #         invocation_log_source: { # required
    #           # One of:
    #           s3_uri: "S3Uri"
    #         },
    #         request_metadata_filters: {
    #           # One of:
    #           equals: {
    #             "String" => "String"
    #           },
    #           not_equals: {
    #             "String" => "String"
    #           },
    #           and_all: [
    #             {
    #               equals: {
    #                 "String" => "String"
    #               },
    #               not_equals: {
    #                 "String" => "String"
    #               }
    #             }
    #           ],
    #           or_all: [
    #             {
    #               equals: {
    #                 "String" => "String"
    #               },
    #               not_equals: {
    #                 "String" => "String"
    #               }
    #             }
    #           ]
    #         }
    #       }
    #     },
    #     validation_data_config: {
    #       validators: [ # required
    #         {
    #           s3_uri: "S3Uri", # required
    #         }
    #       ]
    #     },
    #     output_data_config: {
    #       s3_uri: "S3Uri", # required
    #     },
    #     training_metrics: {
    #       training_loss: 1.0
    #     },
    #     validation_metrics: [
    #       {
    #         validation_loss: 1.0
    #       }
    #     ],
    #     creation_time: Time.now, # required
    #     customization_config: {
    #       # One of:
    #       distillation_config: {
    #         teacher_model_config: { # required
    #           teacher_model_identifier: "TeacherModelIdentifier", # required
    #           max_response_length_for_inference: 1
    #         }
    #       }
    #     },
    #     model_status: "Active" # One of: ["Active", "Creating", "Failed"],
    #     failure_message: "ErrorMessage"
    #   }
    # @return [Types::GetCustomModelResponse]
    def get_custom_model(params = {}, options = {})
      request = build_request(:get_custom_model, params)
      request.send_request(options)
    end

    # <p>Retrieves information about a custom model deployment, including its status, configuration, and metadata. Use this operation to monitor the deployment status and retrieve details needed for inference requests.</p> <p>The following actions are related to the <code>GetCustomModelDeployment</code> operation:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_CreateCustomModelDeployment.html">CreateCustomModelDeployment</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_ListCustomModelDeployments.html">ListCustomModelDeployments</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_DeleteCustomModelDeployment.html">DeleteCustomModelDeployment</a> </p> </li> </ul>
    # @param [Hash, Types::GetCustomModelDeploymentRequest] params
    # @option params [String] :custom_model_deployment_identifier
    #   <p>The Amazon Resource Name (ARN) or name of the custom model deployment to retrieve information about.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     custom_model_deployment_identifier: "CustomModelDeploymentIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_custom_model_deployment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     custom_model_deployment_arn: "CustomModelDeploymentArn", # required
    #     model_deployment_name: "ModelDeploymentName", # required
    #     model_arn: "CustomModelArn", # required
    #     created_at: Time.now, # required
    #     status: "Creating" # One of: ["Creating", "Active", "Failed"], # required
    #     description: "CustomModelDeploymentDescription",
    #     failure_message: "ErrorMessage",
    #     last_updated_at: Time.now
    #   }
    # @return [Types::GetCustomModelDeploymentResponse]
    def get_custom_model_deployment(params = {}, options = {})
      request = build_request(:get_custom_model_deployment, params)
      request.send_request(options)
    end

    # <p>Gets information about an evaluation job, such as the status of the job.</p>
    # @param [Hash, Types::GetEvaluationJobRequest] params
    # @option params [String] :job_identifier
    #   <p>The Amazon Resource Name (ARN) of the evaluation job you want get information on.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_identifier: "EvaluationJobIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_evaluation_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_name: "EvaluationJobName", # required
    #     status: "InProgress" # One of: ["InProgress", "Completed", "Failed", "Stopping", "Stopped", "Deleting"], # required
    #     job_arn: "EvaluationJobArn", # required
    #     job_description: "EvaluationJobDescription",
    #     role_arn: "RoleArn", # required
    #     customer_encryption_key_id: "KmsKeyId",
    #     job_type: "Human" # One of: ["Human", "Automated"], # required
    #     application_type: "ModelEvaluation" # One of: ["ModelEvaluation", "RagEvaluation"],
    #     evaluation_config: { # required
    #       # One of:
    #       automated: {
    #         dataset_metric_configs: [ # required
    #           {
    #             task_type: "Summarization" # One of: ["Summarization", "Classification", "QuestionAndAnswer", "Generation", "Custom"], # required
    #             dataset: { # required
    #               name: "EvaluationDatasetName", # required
    #               dataset_location: {
    #                 # One of:
    #                 s3_uri: "S3Uri"
    #               }
    #             },
    #             metric_names: ["EvaluationMetricName"], # required
    #           }
    #         ],
    #         evaluator_model_config: {
    #           # One of:
    #           bedrock_evaluator_models: [
    #             {
    #               model_identifier: "EvaluatorModelIdentifier", # required
    #             }
    #           ]
    #         },
    #         custom_metric_config: {
    #           custom_metrics: [{ # required
    #             # One of:
    #             custom_metric_definition: {
    #               name: "MetricName", # required
    #               instructions: "CustomMetricInstructions", # required
    #               rating_scale: [
    #                 {
    #                   definition: "RatingScaleItemDefinition", # required
    #                   value: { # required
    #                     # One of:
    #                     string_value: "String",
    #                     float_value: 1.0
    #                   }
    #                 }
    #               ]
    #             }
    #           }],
    #           evaluator_model_config: { # required
    #             bedrock_evaluator_models: [ # required
    #               {
    #                 model_identifier: "EvaluatorModelIdentifier", # required
    #               }
    #             ]
    #           }
    #         }
    #       },
    #       human: {
    #         human_workflow_config: {
    #           flow_definition_arn: "SageMakerFlowDefinitionArn", # required
    #           instructions: "HumanTaskInstructions"
    #         },
    #         custom_metrics: [
    #           {
    #             name: "EvaluationMetricName", # required
    #             description: "EvaluationMetricDescription",
    #             rating_method: "EvaluationRatingMethod", # required
    #           }
    #         ],
    #         dataset_metric_configs: [ # required
    #           {
    #             task_type: "Summarization" # One of: ["Summarization", "Classification", "QuestionAndAnswer", "Generation", "Custom"], # required
    #             dataset: { # required
    #               name: "EvaluationDatasetName", # required
    #               dataset_location: {
    #                 # One of:
    #                 s3_uri: "S3Uri"
    #               }
    #             },
    #             metric_names: ["EvaluationMetricName"], # required
    #           }
    #         ]
    #       }
    #     },
    #     inference_config: { # required
    #       # One of:
    #       models: [{
    #         # One of:
    #         bedrock_model: {
    #           model_identifier: "EvaluationBedrockModelIdentifier", # required
    #           inference_params: "EvaluationModelInferenceParams",
    #           performance_config: {
    #             latency: "standard" # One of: ["standard", "optimized"]
    #           }
    #         },
    #         precomputed_inference_source: {
    #           inference_source_identifier: "EvaluationPrecomputedInferenceSourceIdentifier", # required
    #         }
    #       }],
    #       rag_configs: [{
    #         # One of:
    #         knowledge_base_config: {
    #           # One of:
    #           retrieve_config: {
    #             knowledge_base_id: "KnowledgeBaseId", # required
    #             knowledge_base_retrieval_configuration: { # required
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
    #                 implicit_filter_configuration: {
    #                   metadata_attributes: [ # required
    #                     {
    #                       key: "String", # required
    #                       type: "STRING" # One of: ["STRING", "NUMBER", "BOOLEAN", "STRING_LIST"], # required
    #                       description: "String", # required
    #                     }
    #                   ],
    #                   model_arn: "BedrockModelArn", # required
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
    #                 }
    #               }
    #             }
    #           },
    #           retrieve_and_generate_config: {
    #             type: "KNOWLEDGE_BASE" # One of: ["KNOWLEDGE_BASE", "EXTERNAL_SOURCES"], # required
    #             knowledge_base_configuration: {
    #               knowledge_base_id: "KnowledgeBaseId", # required
    #               model_arn: "BedrockModelArn", # required
    #               retrieval_configuration: {
    #                 vector_search_configuration: { # required
    #                   number_of_results: 1,
    #                   override_search_type: "HYBRID" # One of: ["HYBRID", "SEMANTIC"],
    #                   filter: {
    #                     # One of:
    #                     equals: {
    #                       key: "FilterKey", # required
    #                       value: ""null"", # required
    #                     },
    #                     not_equals: {
    #                       key: "FilterKey", # required
    #                       value: ""null"", # required
    #                     },
    #                     greater_than: {
    #                       key: "FilterKey", # required
    #                       value: ""null"", # required
    #                     },
    #                     greater_than_or_equals: {
    #                       key: "FilterKey", # required
    #                       value: ""null"", # required
    #                     },
    #                     less_than: {
    #                       key: "FilterKey", # required
    #                       value: ""null"", # required
    #                     },
    #                     less_than_or_equals: {
    #                       key: "FilterKey", # required
    #                       value: ""null"", # required
    #                     },
    #                     in: {
    #                       key: "FilterKey", # required
    #                       value: ""null"", # required
    #                     },
    #                     not_in: {
    #                       key: "FilterKey", # required
    #                       value: ""null"", # required
    #                     },
    #                     starts_with: {
    #                       key: "FilterKey", # required
    #                       value: ""null"", # required
    #                     },
    #                     list_contains: {
    #                       key: "FilterKey", # required
    #                       value: ""null"", # required
    #                     },
    #                     string_contains: {
    #                       key: "FilterKey", # required
    #                       value: ""null"", # required
    #                     },
    #                     and_all: [{
    #                       # recursive RetrievalFilter
    #                     }],
    #                     or_all: [{
    #                       # recursive RetrievalFilter
    #                     }]
    #                   },
    #                   implicit_filter_configuration: {
    #                     metadata_attributes: [ # required
    #                       {
    #                         key: "String", # required
    #                         type: "STRING" # One of: ["STRING", "NUMBER", "BOOLEAN", "STRING_LIST"], # required
    #                         description: "String", # required
    #                       }
    #                     ],
    #                     model_arn: "BedrockModelArn", # required
    #                   },
    #                   reranking_configuration: {
    #                     type: "BEDROCK_RERANKING_MODEL" # One of: ["BEDROCK_RERANKING_MODEL"], # required
    #                     bedrock_reranking_configuration: {
    #                       model_configuration: { # required
    #                         model_arn: "BedrockRerankingModelArn", # required
    #                         additional_model_request_fields: {
    #                           "AdditionalModelRequestFieldsKey" => ""null""
    #                         }
    #                       },
    #                       number_of_reranked_results: 1,
    #                       metadata_configuration: {
    #                         selection_mode: "SELECTIVE" # One of: ["SELECTIVE", "ALL"], # required
    #                         selective_mode_configuration: {
    #                           # One of:
    #                           fields_to_include: [
    #                             {
    #                               field_name: "String", # required
    #                             }
    #                           ],
    #                           fields_to_exclude: [
    #                             {
    #                               field_name: "String", # required
    #                             }
    #                           ]
    #                         }
    #                       }
    #                     }
    #                   }
    #                 }
    #               },
    #               generation_configuration: {
    #                 prompt_template: {
    #                   text_prompt_template: "TextPromptTemplate"
    #                 },
    #                 guardrail_configuration: {
    #                   guardrail_id: "String", # required
    #                   guardrail_version: "String", # required
    #                 },
    #                 kb_inference_config: {
    #                   text_inference_config: {
    #                     temperature: 1.0,
    #                     top_p: 1.0,
    #                     max_tokens: 1,
    #                     stop_sequences: ["String"]
    #                   }
    #                 },
    #                 additional_model_request_fields: {
    #                   "AdditionalModelRequestFieldsKey" => ""null""
    #                 }
    #               },
    #               orchestration_configuration: {
    #                 query_transformation_configuration: { # required
    #                   type: "QUERY_DECOMPOSITION" # One of: ["QUERY_DECOMPOSITION"], # required
    #                 }
    #               }
    #             },
    #             external_sources_configuration: {
    #               model_arn: "BedrockModelArn", # required
    #               sources: [ # required
    #                 {
    #                   source_type: "S3" # One of: ["S3", "BYTE_CONTENT"], # required
    #                   s3_location: {
    #                     uri: "kBS3Uri", # required
    #                   },
    #                   byte_content: {
    #                     identifier: "Identifier", # required
    #                     content_type: "ContentType", # required
    #                     data: "data", # required
    #                   }
    #                 }
    #               ],
    #               generation_configuration: {
    #                 prompt_template: {
    #                   text_prompt_template: "TextPromptTemplate"
    #                 },
    #                 guardrail_configuration: {
    #                   guardrail_id: "String", # required
    #                   guardrail_version: "String", # required
    #                 },
    #                 kb_inference_config: {
    #                   text_inference_config: {
    #                     temperature: 1.0,
    #                     top_p: 1.0,
    #                     max_tokens: 1,
    #                     stop_sequences: ["String"]
    #                   }
    #                 },
    #                 additional_model_request_fields: {
    #                   "AdditionalModelRequestFieldsKey" => ""null""
    #                 }
    #               }
    #             }
    #           }
    #         },
    #         precomputed_rag_source_config: {
    #           # One of:
    #           retrieve_source_config: {
    #             rag_source_identifier: "EvaluationPrecomputedRagSourceIdentifier", # required
    #           },
    #           retrieve_and_generate_source_config: {
    #             rag_source_identifier: "EvaluationPrecomputedRagSourceIdentifier", # required
    #           }
    #         }
    #       }]
    #     },
    #     output_data_config: { # required
    #       s3_uri: "S3Uri", # required
    #     },
    #     creation_time: Time.now, # required
    #     last_modified_time: Time.now,
    #     failure_messages: ["ErrorMessage"]
    #   }
    # @return [Types::GetEvaluationJobResponse]
    def get_evaluation_job(params = {}, options = {})
      request = build_request(:get_evaluation_job, params)
      request.send_request(options)
    end

    # <p>Get details about a Amazon Bedrock foundation model.</p>
    # @param [Hash, Types::GetFoundationModelRequest] params
    # @option params [String] :model_identifier
    #   <p>The model identifier. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     model_identifier: "GetFoundationModelIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_foundation_model(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     model_details: {
    #       model_arn: "FoundationModelArn", # required
    #       model_id: "BedrockModelId", # required
    #       model_name: "BrandedName",
    #       provider_name: "BrandedName",
    #       input_modalities: ["TEXT" # One of: ["TEXT", "IMAGE", "EMBEDDING"]],
    #       output_modalities: ["TEXT" # One of: ["TEXT", "IMAGE", "EMBEDDING"]],
    #       response_streaming_supported: false,
    #       customizations_supported: ["FINE_TUNING" # One of: ["FINE_TUNING", "CONTINUED_PRE_TRAINING", "DISTILLATION"]],
    #       inference_types_supported: ["ON_DEMAND" # One of: ["ON_DEMAND", "PROVISIONED"]],
    #       model_lifecycle: {
    #         status: "ACTIVE" # One of: ["ACTIVE", "LEGACY"], # required
    #       }
    #     }
    #   }
    # @return [Types::GetFoundationModelResponse]
    def get_foundation_model(params = {}, options = {})
      request = build_request(:get_foundation_model, params)
      request.send_request(options)
    end

    # <p>Get information about the Foundation model availability.</p>
    # @param [Hash, Types::GetFoundationModelAvailabilityRequest] params
    # @option params [String] :model_id
    #   <p>The model Id of the foundation model.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     model_id: "BedrockModelId", # required
    #   }
    #   options = {}
    #   response = client.get_foundation_model_availability(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     model_id: "BedrockModelId", # required
    #     agreement_availability: { # required
    #       status: "AVAILABLE" # One of: ["AVAILABLE", "PENDING", "NOT_AVAILABLE", "ERROR"], # required
    #       error_message: "String"
    #     },
    #     authorization_status: "AUTHORIZED" # One of: ["AUTHORIZED", "NOT_AUTHORIZED"], # required
    #     entitlement_availability: "AVAILABLE" # One of: ["AVAILABLE", "NOT_AVAILABLE"], # required
    #     region_availability: "AVAILABLE" # One of: ["AVAILABLE", "NOT_AVAILABLE"], # required
    #   }
    # @return [Types::GetFoundationModelAvailabilityResponse]
    def get_foundation_model_availability(params = {}, options = {})
      request = build_request(:get_foundation_model_availability, params)
      request.send_request(options)
    end

    # <p>Gets details about a guardrail. If you don't specify a version, the response returns details for the <code>DRAFT</code> version.</p>
    # @param [Hash, Types::GetGuardrailRequest] params
    # @option params [String] :guardrail_identifier
    #   <p>The unique identifier of the guardrail for which to get details. This can be an ID or the ARN.</p>
    # @option params [String] :guardrail_version
    #   <p>The version of the guardrail for which to get details. If you don't specify a version, the response returns details for the <code>DRAFT</code> version.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     guardrail_identifier: "GuardrailIdentifier", # required
    #     guardrail_version: "GuardrailVersion"
    #   }
    #   options = {}
    #   response = client.get_guardrail(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "GuardrailName", # required
    #     description: "GuardrailDescription",
    #     guardrail_id: "GuardrailId", # required
    #     guardrail_arn: "GuardrailArn", # required
    #     version: "GuardrailVersion", # required
    #     status: "CREATING" # One of: ["CREATING", "UPDATING", "VERSIONING", "READY", "FAILED", "DELETING"], # required
    #     topic_policy: {
    #       topics: [ # required
    #         {
    #           name: "GuardrailTopicName", # required
    #           definition: "GuardrailTopicDefinition", # required
    #           examples: ["GuardrailTopicExample"],
    #           type: "DENY" # One of: ["DENY"],
    #           input_action: "BLOCK" # One of: ["BLOCK", "NONE"],
    #           output_action: "BLOCK" # One of: ["BLOCK", "NONE"],
    #           input_enabled: false,
    #           output_enabled: false
    #         }
    #       ],
    #       tier: {
    #         tier_name: "CLASSIC" # One of: ["CLASSIC", "STANDARD"], # required
    #       }
    #     },
    #     content_policy: {
    #       filters: [
    #         {
    #           type: "SEXUAL" # One of: ["SEXUAL", "VIOLENCE", "HATE", "INSULTS", "MISCONDUCT", "PROMPT_ATTACK"], # required
    #           input_strength: "NONE" # One of: ["NONE", "LOW", "MEDIUM", "HIGH"], # required
    #           output_strength: "NONE" # One of: ["NONE", "LOW", "MEDIUM", "HIGH"], # required
    #           input_modalities: ["TEXT" # One of: ["TEXT", "IMAGE"]],
    #           output_modalities: ["TEXT" # One of: ["TEXT", "IMAGE"]],
    #           input_action: "BLOCK" # One of: ["BLOCK", "NONE"],
    #           output_action: "BLOCK" # One of: ["BLOCK", "NONE"],
    #           input_enabled: false,
    #           output_enabled: false
    #         }
    #       ],
    #       tier: {
    #         tier_name: "CLASSIC" # One of: ["CLASSIC", "STANDARD"], # required
    #       }
    #     },
    #     word_policy: {
    #       words: [
    #         {
    #           text: "String", # required
    #           input_action: "BLOCK" # One of: ["BLOCK", "NONE"],
    #           output_action: "BLOCK" # One of: ["BLOCK", "NONE"],
    #           input_enabled: false,
    #           output_enabled: false
    #         }
    #       ],
    #       managed_word_lists: [
    #         {
    #           type: "PROFANITY" # One of: ["PROFANITY"], # required
    #           input_action: "BLOCK" # One of: ["BLOCK", "NONE"],
    #           output_action: "BLOCK" # One of: ["BLOCK", "NONE"],
    #           input_enabled: false,
    #           output_enabled: false
    #         }
    #       ]
    #     },
    #     sensitive_information_policy: {
    #       pii_entities: [
    #         {
    #           type: "ADDRESS" # One of: ["ADDRESS", "AGE", "AWS_ACCESS_KEY", "AWS_SECRET_KEY", "CA_HEALTH_NUMBER", "CA_SOCIAL_INSURANCE_NUMBER", "CREDIT_DEBIT_CARD_CVV", "CREDIT_DEBIT_CARD_EXPIRY", "CREDIT_DEBIT_CARD_NUMBER", "DRIVER_ID", "EMAIL", "INTERNATIONAL_BANK_ACCOUNT_NUMBER", "IP_ADDRESS", "LICENSE_PLATE", "MAC_ADDRESS", "NAME", "PASSWORD", "PHONE", "PIN", "SWIFT_CODE", "UK_NATIONAL_HEALTH_SERVICE_NUMBER", "UK_NATIONAL_INSURANCE_NUMBER", "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER", "URL", "USERNAME", "US_BANK_ACCOUNT_NUMBER", "US_BANK_ROUTING_NUMBER", "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER", "US_PASSPORT_NUMBER", "US_SOCIAL_SECURITY_NUMBER", "VEHICLE_IDENTIFICATION_NUMBER"], # required
    #           action: "BLOCK" # One of: ["BLOCK", "ANONYMIZE", "NONE"], # required
    #           input_action: "BLOCK" # One of: ["BLOCK", "ANONYMIZE", "NONE"],
    #           output_action: "BLOCK" # One of: ["BLOCK", "ANONYMIZE", "NONE"],
    #           input_enabled: false,
    #           output_enabled: false
    #         }
    #       ],
    #       regexes: [
    #         {
    #           name: "String", # required
    #           description: "String",
    #           pattern: "String", # required
    #           action: "BLOCK" # One of: ["BLOCK", "ANONYMIZE", "NONE"], # required
    #           input_action: "BLOCK" # One of: ["BLOCK", "ANONYMIZE", "NONE"],
    #           output_action: "BLOCK" # One of: ["BLOCK", "ANONYMIZE", "NONE"],
    #           input_enabled: false,
    #           output_enabled: false
    #         }
    #       ]
    #     },
    #     contextual_grounding_policy: {
    #       filters: [ # required
    #         {
    #           type: "GROUNDING" # One of: ["GROUNDING", "RELEVANCE"], # required
    #           threshold: 1.0, # required
    #           action: "BLOCK" # One of: ["BLOCK", "NONE"],
    #           enabled: false
    #         }
    #       ]
    #     },
    #     automated_reasoning_policy: {
    #       policies: ["AutomatedReasoningPolicyArn"], # required
    #       confidence_threshold: 1.0
    #     },
    #     cross_region_details: {
    #       guardrail_profile_id: "GuardrailCrossRegionGuardrailProfileId",
    #       guardrail_profile_arn: "GuardrailCrossRegionGuardrailProfileArn"
    #     },
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #     status_reasons: ["GuardrailStatusReason"],
    #     failure_recommendations: ["GuardrailFailureRecommendation"],
    #     blocked_input_messaging: "GuardrailBlockedMessaging", # required
    #     blocked_outputs_messaging: "GuardrailBlockedMessaging", # required
    #     kms_key_arn: "KmsKeyArn"
    #   }
    # @return [Types::GetGuardrailResponse]
    def get_guardrail(params = {}, options = {})
      request = build_request(:get_guardrail, params)
      request.send_request(options)
    end

    # <p>Gets properties associated with a customized model you imported. </p>
    # @param [Hash, Types::GetImportedModelRequest] params
    # @option params [String] :model_identifier
    #   <p>Name or Amazon Resource Name (ARN) of the imported model.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     model_identifier: "ImportedModelIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_imported_model(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     model_arn: "ImportedModelArn",
    #     model_name: "ImportedModelName",
    #     job_name: "JobName",
    #     job_arn: "ModelImportJobArn",
    #     model_data_source: {
    #       # One of:
    #       s3_data_source: {
    #         s3_uri: "S3Uri", # required
    #       }
    #     },
    #     creation_time: Time.now,
    #     model_architecture: "String",
    #     model_kms_key_arn: "KmsKeyArn",
    #     instruct_supported: false,
    #     custom_model_units: {
    #       custom_model_units_per_model_copy: 1,
    #       custom_model_units_version: "CustomModelUnitsVersion"
    #     }
    #   }
    # @return [Types::GetImportedModelResponse]
    def get_imported_model(params = {}, options = {})
      request = build_request(:get_imported_model, params)
      request.send_request(options)
    end

    # <p>Gets information about an inference profile. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/cross-region-inference.html">Increase throughput and resilience with cross-region inference in Amazon Bedrock</a>. in the Amazon Bedrock User Guide.</p>
    # @param [Hash, Types::GetInferenceProfileRequest] params
    # @option params [String] :inference_profile_identifier
    #   <p>The ID or Amazon Resource Name (ARN) of the inference profile.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     inference_profile_identifier: "InferenceProfileIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_inference_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     inference_profile_name: "InferenceProfileName", # required
    #     description: "InferenceProfileDescription",
    #     created_at: Time.now,
    #     updated_at: Time.now,
    #     inference_profile_arn: "InferenceProfileArn", # required
    #     models: [ # required
    #       {
    #         model_arn: "FoundationModelArn"
    #       }
    #     ],
    #     inference_profile_id: "InferenceProfileId", # required
    #     status: "ACTIVE" # One of: ["ACTIVE"], # required
    #     type: "SYSTEM_DEFINED" # One of: ["SYSTEM_DEFINED", "APPLICATION"], # required
    #   }
    # @return [Types::GetInferenceProfileResponse]
    def get_inference_profile(params = {}, options = {})
      request = build_request(:get_inference_profile, params)
      request.send_request(options)
    end

    # <p>Retrieves details about a specific endpoint for a model from Amazon Bedrock Marketplace.</p>
    # @param [Hash, Types::GetMarketplaceModelEndpointRequest] params
    # @option params [String] :endpoint_arn
    #   <p>The Amazon Resource Name (ARN) of the endpoint you want to get information about.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     endpoint_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.get_marketplace_model_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     marketplace_model_endpoint: {
    #       endpoint_arn: "Arn", # required
    #       model_source_identifier: "ModelSourceIdentifier", # required
    #       status: "REGISTERED" # One of: ["REGISTERED", "INCOMPATIBLE_ENDPOINT"],
    #       status_message: "String",
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       endpoint_config: { # required
    #         # One of:
    #         sage_maker: {
    #           initial_instance_count: 1, # required
    #           instance_type: "InstanceType", # required
    #           execution_role: "RoleArn", # required
    #           kms_encryption_key: "KmsKeyId",
    #           vpc: {
    #             subnet_ids: ["SubnetId"], # required
    #             security_group_ids: ["SecurityGroupId"], # required
    #           }
    #         }
    #       },
    #       endpoint_status: "String", # required
    #       endpoint_status_message: "String"
    #     }
    #   }
    # @return [Types::GetMarketplaceModelEndpointResponse]
    def get_marketplace_model_endpoint(params = {}, options = {})
      request = build_request(:get_marketplace_model_endpoint, params)
      request.send_request(options)
    end

    # <p>Retrieves information about a model copy job. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/copy-model.html">Copy models to be used in other regions</a> in the <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html">Amazon Bedrock User Guide</a>.</p>
    # @param [Hash, Types::GetModelCopyJobRequest] params
    # @option params [String] :job_arn
    #   <p>The Amazon Resource Name (ARN) of the model copy job.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_arn: "ModelCopyJobArn", # required
    #   }
    #   options = {}
    #   response = client.get_model_copy_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_arn: "ModelCopyJobArn", # required
    #     status: "InProgress" # One of: ["InProgress", "Completed", "Failed"], # required
    #     creation_time: Time.now, # required
    #     target_model_arn: "CustomModelArn", # required
    #     target_model_name: "CustomModelName",
    #     source_account_id: "AccountId", # required
    #     source_model_arn: "ModelArn", # required
    #     target_model_kms_key_arn: "KmsKeyArn",
    #     target_model_tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     failure_message: "ErrorMessage",
    #     source_model_name: "CustomModelName"
    #   }
    # @return [Types::GetModelCopyJobResponse]
    def get_model_copy_job(params = {}, options = {})
      request = build_request(:get_model_copy_job, params)
      request.send_request(options)
    end

    # <p>Retrieves the properties associated with a model-customization job, including the status of the job. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models.html">Custom models</a> in the <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html">Amazon Bedrock User Guide</a>.</p>
    # @param [Hash, Types::GetModelCustomizationJobRequest] params
    # @option params [String] :job_identifier
    #   <p>Identifier for the customization job.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_identifier: "ModelCustomizationJobIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_model_customization_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_arn: "ModelCustomizationJobArn", # required
    #     job_name: "JobName", # required
    #     output_model_name: "CustomModelName", # required
    #     output_model_arn: "CustomModelArn",
    #     client_request_token: "IdempotencyToken",
    #     role_arn: "RoleArn", # required
    #     status: "InProgress" # One of: ["InProgress", "Completed", "Failed", "Stopping", "Stopped"],
    #     status_details: {
    #       validation_details: {
    #         status: "InProgress" # One of: ["InProgress", "Completed", "Stopping", "Stopped", "Failed", "NotStarted"],
    #         creation_time: Time.now,
    #         last_modified_time: Time.now
    #       },
    #       data_processing_details: {
    #         status: "InProgress" # One of: ["InProgress", "Completed", "Stopping", "Stopped", "Failed", "NotStarted"],
    #         creation_time: Time.now,
    #         last_modified_time: Time.now
    #       },
    #       training_details: {
    #         status: "InProgress" # One of: ["InProgress", "Completed", "Stopping", "Stopped", "Failed", "NotStarted"],
    #         creation_time: Time.now,
    #         last_modified_time: Time.now
    #       }
    #     },
    #     failure_message: "ErrorMessage",
    #     creation_time: Time.now, # required
    #     last_modified_time: Time.now,
    #     end_time: Time.now,
    #     base_model_arn: "FoundationModelArn", # required
    #     hyper_parameters: {
    #       "String" => "String"
    #     },
    #     training_data_config: { # required
    #       s3_uri: "S3Uri",
    #       invocation_logs_config: {
    #         use_prompt_response: false,
    #         invocation_log_source: { # required
    #           # One of:
    #           s3_uri: "S3Uri"
    #         },
    #         request_metadata_filters: {
    #           # One of:
    #           equals: {
    #             "String" => "String"
    #           },
    #           not_equals: {
    #             "String" => "String"
    #           },
    #           and_all: [
    #             {
    #               equals: {
    #                 "String" => "String"
    #               },
    #               not_equals: {
    #                 "String" => "String"
    #               }
    #             }
    #           ],
    #           or_all: [
    #             {
    #               equals: {
    #                 "String" => "String"
    #               },
    #               not_equals: {
    #                 "String" => "String"
    #               }
    #             }
    #           ]
    #         }
    #       }
    #     },
    #     validation_data_config: { # required
    #       validators: [ # required
    #         {
    #           s3_uri: "S3Uri", # required
    #         }
    #       ]
    #     },
    #     output_data_config: { # required
    #       s3_uri: "S3Uri", # required
    #     },
    #     customization_type: "FINE_TUNING" # One of: ["FINE_TUNING", "CONTINUED_PRE_TRAINING", "DISTILLATION", "IMPORTED"],
    #     output_model_kms_key_arn: "KmsKeyArn",
    #     training_metrics: {
    #       training_loss: 1.0
    #     },
    #     validation_metrics: [
    #       {
    #         validation_loss: 1.0
    #       }
    #     ],
    #     vpc_config: {
    #       subnet_ids: ["SubnetId"], # required
    #       security_group_ids: ["SecurityGroupId"], # required
    #     },
    #     customization_config: {
    #       # One of:
    #       distillation_config: {
    #         teacher_model_config: { # required
    #           teacher_model_identifier: "TeacherModelIdentifier", # required
    #           max_response_length_for_inference: 1
    #         }
    #       }
    #     }
    #   }
    # @return [Types::GetModelCustomizationJobResponse]
    def get_model_customization_job(params = {}, options = {})
      request = build_request(:get_model_customization_job, params)
      request.send_request(options)
    end

    # <p>Retrieves the properties associated with import model job, including the status of the job. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-import-model.html">Import a customized model</a> in the <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html">Amazon Bedrock User Guide</a>.</p>
    # @param [Hash, Types::GetModelImportJobRequest] params
    # @option params [String] :job_identifier
    #   <p>The identifier of the import job.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_identifier: "ModelImportJobIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_model_import_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_arn: "ModelImportJobArn",
    #     job_name: "JobName",
    #     imported_model_name: "ImportedModelName",
    #     imported_model_arn: "ImportedModelArn",
    #     role_arn: "RoleArn",
    #     model_data_source: {
    #       # One of:
    #       s3_data_source: {
    #         s3_uri: "S3Uri", # required
    #       }
    #     },
    #     status: "InProgress" # One of: ["InProgress", "Completed", "Failed"],
    #     failure_message: "ErrorMessage",
    #     creation_time: Time.now,
    #     last_modified_time: Time.now,
    #     end_time: Time.now,
    #     vpc_config: {
    #       subnet_ids: ["SubnetId"], # required
    #       security_group_ids: ["SecurityGroupId"], # required
    #     },
    #     imported_model_kms_key_arn: "KmsKeyArn"
    #   }
    # @return [Types::GetModelImportJobResponse]
    def get_model_import_job(params = {}, options = {})
      request = build_request(:get_model_import_job, params)
      request.send_request(options)
    end

    # <p>Gets details about a batch inference job. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/batch-inference-monitor">Monitor batch inference jobs</a> </p>
    # @param [Hash, Types::GetModelInvocationJobRequest] params
    # @option params [String] :job_identifier
    #   <p>The Amazon Resource Name (ARN) of the batch inference job.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_identifier: "ModelInvocationJobIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_model_invocation_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_arn: "ModelInvocationJobArn", # required
    #     job_name: "ModelInvocationJobName",
    #     model_id: "ModelId", # required
    #     client_request_token: "ModelInvocationIdempotencyToken",
    #     role_arn: "RoleArn", # required
    #     status: "Submitted" # One of: ["Submitted", "InProgress", "Completed", "Failed", "Stopping", "Stopped", "PartiallyCompleted", "Expired", "Validating", "Scheduled"],
    #     message: "Message",
    #     submit_time: Time.now, # required
    #     last_modified_time: Time.now,
    #     end_time: Time.now,
    #     input_data_config: { # required
    #       # One of:
    #       s3_input_data_config: {
    #         s3_input_format: "JSONL" # One of: ["JSONL"],
    #         s3_uri: "S3Uri", # required
    #         s3_bucket_owner: "AccountId"
    #       }
    #     },
    #     output_data_config: { # required
    #       # One of:
    #       s3_output_data_config: {
    #         s3_uri: "S3Uri", # required
    #         s3_encryption_key_id: "KmsKeyId",
    #         s3_bucket_owner: "AccountId"
    #       }
    #     },
    #     vpc_config: {
    #       subnet_ids: ["SubnetId"], # required
    #       security_group_ids: ["SecurityGroupId"], # required
    #     },
    #     timeout_duration_in_hours: 1,
    #     job_expiration_time: Time.now
    #   }
    # @return [Types::GetModelInvocationJobResponse]
    def get_model_invocation_job(params = {}, options = {})
      request = build_request(:get_model_invocation_job, params)
      request.send_request(options)
    end

    # <p>Get the current configuration values for model invocation logging.</p>
    # @param [Hash, Types::GetModelInvocationLoggingConfigurationRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_model_invocation_logging_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     logging_config: {
    #       cloud_watch_config: {
    #         log_group_name: "LogGroupName", # required
    #         role_arn: "RoleArn", # required
    #         large_data_delivery_s3_config: {
    #           bucket_name: "BucketName", # required
    #           key_prefix: "KeyPrefix"
    #         }
    #       },
    #       s3_config: {
    #         bucket_name: "BucketName", # required
    #         key_prefix: "KeyPrefix"
    #       },
    #       text_data_delivery_enabled: false,
    #       image_data_delivery_enabled: false,
    #       embedding_data_delivery_enabled: false,
    #       video_data_delivery_enabled: false
    #     }
    #   }
    # @return [Types::GetModelInvocationLoggingConfigurationResponse]
    def get_model_invocation_logging_configuration(params = {}, options = {})
      request = build_request(:get_model_invocation_logging_configuration, params)
      request.send_request(options)
    end

    # <p>Retrieves details about a prompt router.</p>
    # @param [Hash, Types::GetPromptRouterRequest] params
    # @option params [String] :prompt_router_arn
    #   <p>The prompt router's ARN</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     prompt_router_arn: "PromptRouterArn", # required
    #   }
    #   options = {}
    #   response = client.get_prompt_router(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     prompt_router_name: "PromptRouterName", # required
    #     routing_criteria: { # required
    #       response_quality_difference: 1.0, # required
    #     },
    #     description: "PromptRouterDescription",
    #     created_at: Time.now,
    #     updated_at: Time.now,
    #     prompt_router_arn: "PromptRouterArn", # required
    #     models: [ # required
    #       {
    #         model_arn: "PromptRouterTargetModelArn", # required
    #       }
    #     ],
    #     fallback_model: { # required
    #       model_arn: "PromptRouterTargetModelArn", # required
    #     },
    #     status: "AVAILABLE" # One of: ["AVAILABLE"], # required
    #     type: "custom" # One of: ["custom", "default"], # required
    #   }
    # @return [Types::GetPromptRouterResponse]
    def get_prompt_router(params = {}, options = {})
      request = build_request(:get_prompt_router, params)
      request.send_request(options)
    end

    # <p>Returns details for a Provisioned Throughput. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/prov-throughput.html">Provisioned Throughput</a> in the <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html">Amazon Bedrock User Guide</a>.</p>
    # @param [Hash, Types::GetProvisionedModelThroughputRequest] params
    # @option params [String] :provisioned_model_id
    #   <p>The Amazon Resource Name (ARN) or name of the Provisioned Throughput.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     provisioned_model_id: "ProvisionedModelId", # required
    #   }
    #   options = {}
    #   response = client.get_provisioned_model_throughput(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     model_units: 1, # required
    #     desired_model_units: 1, # required
    #     provisioned_model_name: "ProvisionedModelName", # required
    #     provisioned_model_arn: "ProvisionedModelArn", # required
    #     model_arn: "ModelArn", # required
    #     desired_model_arn: "ModelArn", # required
    #     foundation_model_arn: "FoundationModelArn", # required
    #     status: "Creating" # One of: ["Creating", "InService", "Updating", "Failed"], # required
    #     creation_time: Time.now, # required
    #     last_modified_time: Time.now, # required
    #     failure_message: "ErrorMessage",
    #     commitment_duration: "OneMonth" # One of: ["OneMonth", "SixMonths"],
    #     commitment_expiration_time: Time.now
    #   }
    # @return [Types::GetProvisionedModelThroughputResponse]
    def get_provisioned_model_throughput(params = {}, options = {})
      request = build_request(:get_provisioned_model_throughput, params)
      request.send_request(options)
    end

    # <p>Get usecase for model access.</p>
    # @param [Hash, Types::GetUseCaseForModelAccessRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_use_case_for_model_access(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     form_data: "data", # required
    #   }
    # @return [Types::GetUseCaseForModelAccessResponse]
    def get_use_case_for_model_access(params = {}, options = {})
      request = build_request(:get_use_case_for_model_access, params)
      request.send_request(options)
    end

    # <p>Lists all Automated Reasoning policies in your account, with optional filtering by policy ARN. This helps you manage and discover existing policies.</p>
    # @param [Hash, Types::ListAutomatedReasoningPoliciesRequest] params
    # @option params [String] :policy_arn
    #   <p>Optional filter to list only the policy versions with the specified Amazon Resource Name (ARN). If not provided, the DRAFT versions for all policies are listed.</p>
    # @option params [String] :next_token
    #   <p>The pagination token from a previous request to retrieve the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of policies to return in a single call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_arn: "AutomatedReasoningPolicyArn",
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_automated_reasoning_policies(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     automated_reasoning_policy_summaries: [ # required
    #       {
    #         policy_arn: "AutomatedReasoningPolicyArn", # required
    #         name: "AutomatedReasoningPolicyName", # required
    #         description: "AutomatedReasoningPolicyDescription",
    #         version: "AutomatedReasoningPolicyVersion", # required
    #         policy_id: "AutomatedReasoningPolicyId", # required
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListAutomatedReasoningPoliciesResponse]
    def list_automated_reasoning_policies(params = {}, options = {})
      request = build_request(:list_automated_reasoning_policies, params)
      request.send_request(options)
    end

    # <p>Lists all build workflows for an Automated Reasoning policy, showing the history of policy creation and modification attempts.</p>
    # @param [Hash, Types::ListAutomatedReasoningPolicyBuildWorkflowsRequest] params
    # @option params [String] :policy_arn
    #   <p>The Amazon Resource Name (ARN) of the Automated Reasoning policy whose build workflows you want to list.</p>
    # @option params [String] :next_token
    #   <p>A pagination token from a previous request to continue listing build workflows from where the previous request left off.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of build workflows to return in a single response. Valid range is 1-100.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_arn: "AutomatedReasoningPolicyArn", # required
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_automated_reasoning_policy_build_workflows(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     automated_reasoning_policy_build_workflow_summaries: [ # required
    #       {
    #         policy_arn: "AutomatedReasoningPolicyArn", # required
    #         build_workflow_id: "AutomatedReasoningPolicyBuildWorkflowId", # required
    #         status: "SCHEDULED" # One of: ["SCHEDULED", "CANCEL_REQUESTED", "PREPROCESSING", "BUILDING", "TESTING", "COMPLETED", "FAILED", "CANCELLED"], # required
    #         build_workflow_type: "INGEST_CONTENT" # One of: ["INGEST_CONTENT", "REFINE_POLICY", "IMPORT_POLICY"], # required
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListAutomatedReasoningPolicyBuildWorkflowsResponse]
    def list_automated_reasoning_policy_build_workflows(params = {}, options = {})
      request = build_request(:list_automated_reasoning_policy_build_workflows, params)
      request.send_request(options)
    end

    # <p>Lists tests for an Automated Reasoning policy. We recommend using pagination to ensure that the operation returns quickly and successfully.</p>
    # @param [Hash, Types::ListAutomatedReasoningPolicyTestCasesRequest] params
    # @option params [String] :policy_arn
    #   <p>The Amazon Resource Name (ARN) of the Automated Reasoning policy for which to list tests.</p>
    # @option params [String] :next_token
    #   <p>The pagination token from a previous request to retrieve the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of tests to return in a single call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_arn: "AutomatedReasoningPolicyArn", # required
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_automated_reasoning_policy_test_cases(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     test_cases: [ # required
    #       {
    #         test_case_id: "AutomatedReasoningPolicyTestCaseId", # required
    #         guard_content: "AutomatedReasoningPolicyTestGuardContent", # required
    #         query_content: "AutomatedReasoningPolicyTestQueryContent",
    #         expected_aggregated_findings_result: "VALID" # One of: ["VALID", "INVALID", "SATISFIABLE", "IMPOSSIBLE", "TRANSLATION_AMBIGUOUS", "TOO_COMPLEX", "NO_TRANSLATION"],
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #         confidence_threshold: 1.0
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListAutomatedReasoningPolicyTestCasesResponse]
    def list_automated_reasoning_policy_test_cases(params = {}, options = {})
      request = build_request(:list_automated_reasoning_policy_test_cases, params)
      request.send_request(options)
    end

    # <p>Lists test results for an Automated Reasoning policy, showing how the policy performed against various test scenarios and validation checks.</p>
    # @param [Hash, Types::ListAutomatedReasoningPolicyTestResultsRequest] params
    # @option params [String] :policy_arn
    #   <p>The Amazon Resource Name (ARN) of the Automated Reasoning policy whose test results you want to list.</p>
    # @option params [String] :build_workflow_id
    #   <p>The unique identifier of the build workflow whose test results you want to list.</p>
    # @option params [String] :next_token
    #   <p>A pagination token from a previous request to continue listing test results from where the previous request left off.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of test results to return in a single response. Valid range is 1-100.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_arn: "AutomatedReasoningPolicyArn", # required
    #     build_workflow_id: "AutomatedReasoningPolicyBuildWorkflowId", # required
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_automated_reasoning_policy_test_results(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     test_results: [ # required
    #       {
    #         test_case: { # required
    #           test_case_id: "AutomatedReasoningPolicyTestCaseId", # required
    #           guard_content: "AutomatedReasoningPolicyTestGuardContent", # required
    #           query_content: "AutomatedReasoningPolicyTestQueryContent",
    #           expected_aggregated_findings_result: "VALID" # One of: ["VALID", "INVALID", "SATISFIABLE", "IMPOSSIBLE", "TRANSLATION_AMBIGUOUS", "TOO_COMPLEX", "NO_TRANSLATION"],
    #           created_at: Time.now, # required
    #           updated_at: Time.now, # required
    #           confidence_threshold: 1.0
    #         },
    #         policy_arn: "AutomatedReasoningPolicyArn", # required
    #         test_run_status: "NOT_STARTED" # One of: ["NOT_STARTED", "SCHEDULED", "IN_PROGRESS", "COMPLETED", "FAILED"], # required
    #         test_findings: [{
    #           # One of:
    #           valid: {
    #             translation: {
    #               premises: [
    #                 {
    #                   logic: "AutomatedReasoningLogicStatementContent", # required
    #                   natural_language: "AutomatedReasoningNaturalLanguageStatementContent"
    #                 }
    #               ],
    #               claims: [ # required
    #                 {
    #                   logic: "AutomatedReasoningLogicStatementContent", # required
    #                   natural_language: "AutomatedReasoningNaturalLanguageStatementContent"
    #                 }
    #               ],
    #               untranslated_premises: [
    #                 {
    #                   text: "AutomatedReasoningNaturalLanguageStatementContent"
    #                 }
    #               ],
    #               untranslated_claims: [
    #                 {
    #                   text: "AutomatedReasoningNaturalLanguageStatementContent"
    #                 }
    #               ],
    #               confidence: 1.0, # required
    #             },
    #             claims_true_scenario: {
    #               statements: [
    #                 {
    #                   logic: "AutomatedReasoningLogicStatementContent", # required
    #                   natural_language: "AutomatedReasoningNaturalLanguageStatementContent"
    #                 }
    #               ]
    #             },
    #             supporting_rules: [
    #               {
    #                 id: "AutomatedReasoningPolicyDefinitionRuleId",
    #                 policy_version_arn: "AutomatedReasoningPolicyArn"
    #               }
    #             ],
    #             logic_warning: {
    #               type: "ALWAYS_TRUE" # One of: ["ALWAYS_TRUE", "ALWAYS_FALSE"],
    #               premises: [
    #                 {
    #                   logic: "AutomatedReasoningLogicStatementContent", # required
    #                   natural_language: "AutomatedReasoningNaturalLanguageStatementContent"
    #                 }
    #               ],
    #               claims: [
    #                 {
    #                   logic: "AutomatedReasoningLogicStatementContent", # required
    #                   natural_language: "AutomatedReasoningNaturalLanguageStatementContent"
    #                 }
    #               ]
    #             }
    #           },
    #           invalid: {
    #             translation: {
    #               premises: [
    #                 {
    #                   logic: "AutomatedReasoningLogicStatementContent", # required
    #                   natural_language: "AutomatedReasoningNaturalLanguageStatementContent"
    #                 }
    #               ],
    #               claims: [ # required
    #                 {
    #                   logic: "AutomatedReasoningLogicStatementContent", # required
    #                   natural_language: "AutomatedReasoningNaturalLanguageStatementContent"
    #                 }
    #               ],
    #               untranslated_premises: [
    #                 {
    #                   text: "AutomatedReasoningNaturalLanguageStatementContent"
    #                 }
    #               ],
    #               untranslated_claims: [
    #                 {
    #                   text: "AutomatedReasoningNaturalLanguageStatementContent"
    #                 }
    #               ],
    #               confidence: 1.0, # required
    #             },
    #             contradicting_rules: [
    #               {
    #                 id: "AutomatedReasoningPolicyDefinitionRuleId",
    #                 policy_version_arn: "AutomatedReasoningPolicyArn"
    #               }
    #             ],
    #             logic_warning: {
    #               type: "ALWAYS_TRUE" # One of: ["ALWAYS_TRUE", "ALWAYS_FALSE"],
    #               premises: [
    #                 {
    #                   logic: "AutomatedReasoningLogicStatementContent", # required
    #                   natural_language: "AutomatedReasoningNaturalLanguageStatementContent"
    #                 }
    #               ],
    #               claims: [
    #                 {
    #                   logic: "AutomatedReasoningLogicStatementContent", # required
    #                   natural_language: "AutomatedReasoningNaturalLanguageStatementContent"
    #                 }
    #               ]
    #             }
    #           },
    #           satisfiable: {
    #             translation: {
    #               premises: [
    #                 {
    #                   logic: "AutomatedReasoningLogicStatementContent", # required
    #                   natural_language: "AutomatedReasoningNaturalLanguageStatementContent"
    #                 }
    #               ],
    #               claims: [ # required
    #                 {
    #                   logic: "AutomatedReasoningLogicStatementContent", # required
    #                   natural_language: "AutomatedReasoningNaturalLanguageStatementContent"
    #                 }
    #               ],
    #               untranslated_premises: [
    #                 {
    #                   text: "AutomatedReasoningNaturalLanguageStatementContent"
    #                 }
    #               ],
    #               untranslated_claims: [
    #                 {
    #                   text: "AutomatedReasoningNaturalLanguageStatementContent"
    #                 }
    #               ],
    #               confidence: 1.0, # required
    #             },
    #             claims_true_scenario: {
    #               statements: [
    #                 {
    #                   logic: "AutomatedReasoningLogicStatementContent", # required
    #                   natural_language: "AutomatedReasoningNaturalLanguageStatementContent"
    #                 }
    #               ]
    #             },
    #             claims_false_scenario: {
    #               statements: [
    #                 {
    #                   logic: "AutomatedReasoningLogicStatementContent", # required
    #                   natural_language: "AutomatedReasoningNaturalLanguageStatementContent"
    #                 }
    #               ]
    #             },
    #             logic_warning: {
    #               type: "ALWAYS_TRUE" # One of: ["ALWAYS_TRUE", "ALWAYS_FALSE"],
    #               premises: [
    #                 {
    #                   logic: "AutomatedReasoningLogicStatementContent", # required
    #                   natural_language: "AutomatedReasoningNaturalLanguageStatementContent"
    #                 }
    #               ],
    #               claims: [
    #                 {
    #                   logic: "AutomatedReasoningLogicStatementContent", # required
    #                   natural_language: "AutomatedReasoningNaturalLanguageStatementContent"
    #                 }
    #               ]
    #             }
    #           },
    #           impossible: {
    #             translation: {
    #               premises: [
    #                 {
    #                   logic: "AutomatedReasoningLogicStatementContent", # required
    #                   natural_language: "AutomatedReasoningNaturalLanguageStatementContent"
    #                 }
    #               ],
    #               claims: [ # required
    #                 {
    #                   logic: "AutomatedReasoningLogicStatementContent", # required
    #                   natural_language: "AutomatedReasoningNaturalLanguageStatementContent"
    #                 }
    #               ],
    #               untranslated_premises: [
    #                 {
    #                   text: "AutomatedReasoningNaturalLanguageStatementContent"
    #                 }
    #               ],
    #               untranslated_claims: [
    #                 {
    #                   text: "AutomatedReasoningNaturalLanguageStatementContent"
    #                 }
    #               ],
    #               confidence: 1.0, # required
    #             },
    #             contradicting_rules: [
    #               {
    #                 id: "AutomatedReasoningPolicyDefinitionRuleId",
    #                 policy_version_arn: "AutomatedReasoningPolicyArn"
    #               }
    #             ],
    #             logic_warning: {
    #               type: "ALWAYS_TRUE" # One of: ["ALWAYS_TRUE", "ALWAYS_FALSE"],
    #               premises: [
    #                 {
    #                   logic: "AutomatedReasoningLogicStatementContent", # required
    #                   natural_language: "AutomatedReasoningNaturalLanguageStatementContent"
    #                 }
    #               ],
    #               claims: [
    #                 {
    #                   logic: "AutomatedReasoningLogicStatementContent", # required
    #                   natural_language: "AutomatedReasoningNaturalLanguageStatementContent"
    #                 }
    #               ]
    #             }
    #           },
    #           translation_ambiguous: {
    #             options: [
    #               {
    #                 translations: [
    #                   {
    #                     premises: [
    #                       {
    #                         logic: "AutomatedReasoningLogicStatementContent", # required
    #                         natural_language: "AutomatedReasoningNaturalLanguageStatementContent"
    #                       }
    #                     ],
    #                     claims: [ # required
    #                       {
    #                         logic: "AutomatedReasoningLogicStatementContent", # required
    #                         natural_language: "AutomatedReasoningNaturalLanguageStatementContent"
    #                       }
    #                     ],
    #                     untranslated_premises: [
    #                       {
    #                         text: "AutomatedReasoningNaturalLanguageStatementContent"
    #                       }
    #                     ],
    #                     untranslated_claims: [
    #                       {
    #                         text: "AutomatedReasoningNaturalLanguageStatementContent"
    #                       }
    #                     ],
    #                     confidence: 1.0, # required
    #                   }
    #                 ]
    #               }
    #             ],
    #             difference_scenarios: [
    #               {
    #                 statements: [
    #                   {
    #                     logic: "AutomatedReasoningLogicStatementContent", # required
    #                     natural_language: "AutomatedReasoningNaturalLanguageStatementContent"
    #                   }
    #                 ]
    #               }
    #             ]
    #           },
    #           too_complex: {
    #           },
    #           no_translations: {
    #           }
    #         }],
    #         test_run_result: "PASSED" # One of: ["PASSED", "FAILED"],
    #         aggregated_test_findings_result: "VALID" # One of: ["VALID", "INVALID", "SATISFIABLE", "IMPOSSIBLE", "TRANSLATION_AMBIGUOUS", "TOO_COMPLEX", "NO_TRANSLATION"],
    #         updated_at: Time.now, # required
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListAutomatedReasoningPolicyTestResultsResponse]
    def list_automated_reasoning_policy_test_results(params = {}, options = {})
      request = build_request(:list_automated_reasoning_policy_test_results, params)
      request.send_request(options)
    end

    # <p>Lists custom model deployments in your account. You can filter the results by creation time, name, status, and associated model. Use this operation to manage and monitor your custom model deployments.</p> <p>We recommend using pagination to ensure that the operation returns quickly and successfully.</p> <p>The following actions are related to the <code>ListCustomModelDeployments</code> operation:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_CreateCustomModelDeployment.html">CreateCustomModelDeployment</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_GetCustomModelDeployment.html">GetCustomModelDeployment</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_DeleteCustomModelDeployment.html">DeleteCustomModelDeployment</a> </p> </li> </ul>
    # @param [Hash, Types::ListCustomModelDeploymentsRequest] params
    # @option params [Time] :created_before
    #   <p>Filters deployments created before the specified date and time.</p>
    # @option params [Time] :created_after
    #   <p>Filters deployments created after the specified date and time.</p>
    # @option params [String] :name_contains
    #   <p>Filters deployments whose names contain the specified string. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use this token to retrieve additional results when the response is truncated.</p>
    # @option params [String] :sort_by
    #   <p>The field to sort the results by. The only supported value is <code>CreationTime</code>.</p>
    # @option params [String] :sort_order
    #   <p>The sort order for the results. Valid values are <code>Ascending</code> and <code>Descending</code>. Default is <code>Descending</code>.</p>
    # @option params [String] :status_equals
    #   <p>Filters deployments by status. Valid values are <code>CREATING</code>, <code>ACTIVE</code>, and <code>FAILED</code>.</p>
    # @option params [String] :model_arn_equals
    #   <p>Filters deployments by the Amazon Resource Name (ARN) of the associated custom model.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     created_before: Time.now,
    #     created_after: Time.now,
    #     name_contains: "ModelDeploymentName",
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     sort_by: "CreationTime" # One of: ["CreationTime"],
    #     sort_order: "Ascending" # One of: ["Ascending", "Descending"],
    #     status_equals: "Creating" # One of: ["Creating", "Active", "Failed"],
    #     model_arn_equals: "CustomModelArn"
    #   }
    #   options = {}
    #   response = client.list_custom_model_deployments(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "PaginationToken",
    #     model_deployment_summaries: [
    #       {
    #         custom_model_deployment_arn: "CustomModelDeploymentArn", # required
    #         custom_model_deployment_name: "ModelDeploymentName", # required
    #         model_arn: "ModelArn", # required
    #         created_at: Time.now, # required
    #         status: "Creating" # One of: ["Creating", "Active", "Failed"], # required
    #         last_updated_at: Time.now,
    #         failure_message: "ErrorMessage"
    #       }
    #     ]
    #   }
    # @return [Types::ListCustomModelDeploymentsResponse]
    def list_custom_model_deployments(params = {}, options = {})
      request = build_request(:list_custom_model_deployments, params)
      request.send_request(options)
    end

    # <p>Returns a list of the custom models that you have created with the <code>CreateModelCustomizationJob</code> operation.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models.html">Custom models</a> in the <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html">Amazon Bedrock User Guide</a>.</p>
    # @param [Hash, Types::ListCustomModelsRequest] params
    # @option params [Time] :creation_time_before
    #   <p>Return custom models created before the specified time. </p>
    # @option params [Time] :creation_time_after
    #   <p>Return custom models created after the specified time. </p>
    # @option params [String] :name_contains
    #   <p>Return custom models only if the job name contains these characters.</p>
    # @option params [String] :base_model_arn_equals
    #   <p>Return custom models only if the base model Amazon Resource Name (ARN) matches this parameter.</p>
    # @option params [String] :foundation_model_arn_equals
    #   <p>Return custom models only if the foundation model Amazon Resource Name (ARN) matches this parameter.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response. If the total number of results is greater than this value, use the token returned in the response in the <code>nextToken</code> field when making another request to return the next batch of results.</p>
    # @option params [String] :next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, enter the token returned in the <code>nextToken</code> field in the response in this field to return the next batch of results.</p>
    # @option params [String] :sort_by
    #   <p>The field to sort by in the returned list of models.</p>
    # @option params [String] :sort_order
    #   <p>The sort order of the results.</p>
    # @option params [Boolean] :is_owned
    #   <p>Return custom models depending on if the current account owns them (<code>true</code>) or if they were shared with the current account (<code>false</code>).</p>
    # @option params [String] :model_status
    #   <p>The status of them model to filter results by. Possible values include:</p> <ul> <li> <p> <code>Creating</code> - Include only models that are currently being created and validated.</p> </li> <li> <p> <code>Active</code> - Include only models that have been successfully created and are ready for use.</p> </li> <li> <p> <code>Failed</code> - Include only models where the creation process failed.</p> </li> </ul> <p>If you don't specify a status, the API returns models in all states.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     creation_time_before: Time.now,
    #     creation_time_after: Time.now,
    #     name_contains: "CustomModelName",
    #     base_model_arn_equals: "ModelArn",
    #     foundation_model_arn_equals: "FoundationModelArn",
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     sort_by: "CreationTime" # One of: ["CreationTime"],
    #     sort_order: "Ascending" # One of: ["Ascending", "Descending"],
    #     is_owned: false,
    #     model_status: "Active" # One of: ["Active", "Creating", "Failed"]
    #   }
    #   options = {}
    #   response = client.list_custom_models(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "PaginationToken",
    #     model_summaries: [
    #       {
    #         model_arn: "CustomModelArn", # required
    #         model_name: "CustomModelName", # required
    #         creation_time: Time.now, # required
    #         base_model_arn: "ModelArn", # required
    #         base_model_name: "ModelName", # required
    #         customization_type: "FINE_TUNING" # One of: ["FINE_TUNING", "CONTINUED_PRE_TRAINING", "DISTILLATION", "IMPORTED"],
    #         owner_account_id: "AccountId",
    #         model_status: "Active" # One of: ["Active", "Creating", "Failed"]
    #       }
    #     ]
    #   }
    # @return [Types::ListCustomModelsResponse]
    def list_custom_models(params = {}, options = {})
      request = build_request(:list_custom_models, params)
      request.send_request(options)
    end

    # <p>Lists all existing evaluation jobs.</p>
    # @param [Hash, Types::ListEvaluationJobsRequest] params
    # @option params [Time] :creation_time_after
    #   <p>A filter to only list evaluation jobs created after a specified time.</p>
    # @option params [Time] :creation_time_before
    #   <p>A filter to only list evaluation jobs created before a specified time.</p>
    # @option params [String] :status_equals
    #   <p>A filter to only list evaluation jobs that are of a certain status.</p>
    # @option params [String] :application_type_equals
    #   <p>A filter to only list evaluation jobs that are either model evaluations or knowledge base evaluations.</p>
    # @option params [String] :name_contains
    #   <p>A filter to only list evaluation jobs that contain a specified string in the job name.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    # @option params [String] :next_token
    #   <p>Continuation token from the previous response, for Amazon Bedrock to list the next set of results.</p>
    # @option params [String] :sort_by
    #   <p>Specifies a creation time to sort the list of evaluation jobs by when they were created.</p>
    # @option params [String] :sort_order
    #   <p>Specifies whether to sort the list of evaluation jobs by either ascending or descending order.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     creation_time_after: Time.now,
    #     creation_time_before: Time.now,
    #     status_equals: "InProgress" # One of: ["InProgress", "Completed", "Failed", "Stopping", "Stopped", "Deleting"],
    #     application_type_equals: "ModelEvaluation" # One of: ["ModelEvaluation", "RagEvaluation"],
    #     name_contains: "EvaluationJobName",
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     sort_by: "CreationTime" # One of: ["CreationTime"],
    #     sort_order: "Ascending" # One of: ["Ascending", "Descending"]
    #   }
    #   options = {}
    #   response = client.list_evaluation_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "PaginationToken",
    #     job_summaries: [
    #       {
    #         job_arn: "EvaluationJobArn", # required
    #         job_name: "EvaluationJobName", # required
    #         status: "InProgress" # One of: ["InProgress", "Completed", "Failed", "Stopping", "Stopped", "Deleting"], # required
    #         creation_time: Time.now, # required
    #         job_type: "Human" # One of: ["Human", "Automated"], # required
    #         evaluation_task_types: ["Summarization" # One of: ["Summarization", "Classification", "QuestionAndAnswer", "Generation", "Custom"]], # required
    #         model_identifiers: ["EvaluationBedrockModelIdentifier"],
    #         rag_identifiers: ["KnowledgeBaseId"],
    #         evaluator_model_identifiers: ["EvaluatorModelIdentifier"],
    #         custom_metrics_evaluator_model_identifiers: ["EvaluatorModelIdentifier"],
    #         inference_config_summary: {
    #           model_config_summary: {
    #             bedrock_model_identifiers: ["EvaluationBedrockModelIdentifier"],
    #             precomputed_inference_source_identifiers: ["EvaluationPrecomputedInferenceSourceIdentifier"]
    #           },
    #           rag_config_summary: {
    #             bedrock_knowledge_base_identifiers: ["KnowledgeBaseId"],
    #             precomputed_rag_source_identifiers: ["EvaluationPrecomputedRagSourceIdentifier"]
    #           }
    #         },
    #         application_type: "ModelEvaluation" # One of: ["ModelEvaluation", "RagEvaluation"]
    #       }
    #     ]
    #   }
    # @return [Types::ListEvaluationJobsResponse]
    def list_evaluation_jobs(params = {}, options = {})
      request = build_request(:list_evaluation_jobs, params)
      request.send_request(options)
    end

    # <p>Get the offers associated with the specified model.</p>
    # @param [Hash, Types::ListFoundationModelAgreementOffersRequest] params
    # @option params [String] :model_id
    #   <p>Model Id of the foundation model.</p>
    # @option params [String] :offer_type
    #   <p>Type of offer associated with the model.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     model_id: "BedrockModelId", # required
    #     offer_type: "ALL" # One of: ["ALL", "PUBLIC"]
    #   }
    #   options = {}
    #   response = client.list_foundation_model_agreement_offers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     model_id: "BedrockModelId", # required
    #     offers: [ # required
    #       {
    #         offer_id: "OfferId",
    #         offer_token: "OfferToken", # required
    #         term_details: { # required
    #           usage_based_pricing_term: { # required
    #             rate_card: [ # required
    #               {
    #                 dimension: "String",
    #                 price: "String",
    #                 description: "String",
    #                 unit: "String"
    #               }
    #             ]
    #           },
    #           legal_term: { # required
    #             url: "String"
    #           },
    #           support_term: { # required
    #             refund_policy_description: "String"
    #           },
    #           validity_term: {
    #             agreement_duration: "String"
    #           }
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::ListFoundationModelAgreementOffersResponse]
    def list_foundation_model_agreement_offers(params = {}, options = {})
      request = build_request(:list_foundation_model_agreement_offers, params)
      request.send_request(options)
    end

    # <p>Lists Amazon Bedrock foundation models that you can use. You can filter the results with the request parameters. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/foundation-models.html">Foundation models</a> in the <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html">Amazon Bedrock User Guide</a>.</p>
    # @param [Hash, Types::ListFoundationModelsRequest] params
    # @option params [String] :by_provider
    #   <p>Return models belonging to the model provider that you specify.</p>
    # @option params [String] :by_customization_type
    #   <p>Return models that support the customization type that you specify. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models.html">Custom models</a> in the <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html">Amazon Bedrock User Guide</a>.</p>
    # @option params [String] :by_output_modality
    #   <p>Return models that support the output modality that you specify.</p>
    # @option params [String] :by_inference_type
    #   <p>Return models that support the inference type that you specify. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/prov-throughput.html">Provisioned Throughput</a> in the <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html">Amazon Bedrock User Guide</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     by_provider: "Provider",
    #     by_customization_type: "FINE_TUNING" # One of: ["FINE_TUNING", "CONTINUED_PRE_TRAINING", "DISTILLATION"],
    #     by_output_modality: "TEXT" # One of: ["TEXT", "IMAGE", "EMBEDDING"],
    #     by_inference_type: "ON_DEMAND" # One of: ["ON_DEMAND", "PROVISIONED"]
    #   }
    #   options = {}
    #   response = client.list_foundation_models(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     model_summaries: [
    #       {
    #         model_arn: "FoundationModelArn", # required
    #         model_id: "BedrockModelId", # required
    #         model_name: "BrandedName",
    #         provider_name: "BrandedName",
    #         input_modalities: ["TEXT" # One of: ["TEXT", "IMAGE", "EMBEDDING"]],
    #         output_modalities: ["TEXT" # One of: ["TEXT", "IMAGE", "EMBEDDING"]],
    #         response_streaming_supported: false,
    #         customizations_supported: ["FINE_TUNING" # One of: ["FINE_TUNING", "CONTINUED_PRE_TRAINING", "DISTILLATION"]],
    #         inference_types_supported: ["ON_DEMAND" # One of: ["ON_DEMAND", "PROVISIONED"]],
    #         model_lifecycle: {
    #           status: "ACTIVE" # One of: ["ACTIVE", "LEGACY"], # required
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::ListFoundationModelsResponse]
    def list_foundation_models(params = {}, options = {})
      request = build_request(:list_foundation_models, params)
      request.send_request(options)
    end

    # <p>Lists details about all the guardrails in an account. To list the <code>DRAFT</code> version of all your guardrails, don't specify the <code>guardrailIdentifier</code> field. To list all versions of a guardrail, specify the ARN of the guardrail in the <code>guardrailIdentifier</code> field.</p> <p>You can set the maximum number of results to return in a response in the <code>maxResults</code> field. If there are more results than the number you set, the response returns a <code>nextToken</code> that you can send in another <code>ListGuardrails</code> request to see the next batch of results.</p>
    # @param [Hash, Types::ListGuardrailsRequest] params
    # @option params [String] :guardrail_identifier
    #   <p>The unique identifier of the guardrail. This can be an ID or the ARN.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response.</p>
    # @option params [String] :next_token
    #   <p>If there are more results than were returned in the response, the response returns a <code>nextToken</code> that you can send in another <code>ListGuardrails</code> request to see the next batch of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     guardrail_identifier: "GuardrailIdentifier",
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_guardrails(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     guardrails: [ # required
    #       {
    #         id: "GuardrailId", # required
    #         arn: "GuardrailArn", # required
    #         status: "CREATING" # One of: ["CREATING", "UPDATING", "VERSIONING", "READY", "FAILED", "DELETING"], # required
    #         name: "GuardrailName", # required
    #         description: "GuardrailDescription",
    #         version: "GuardrailVersion", # required
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #         cross_region_details: {
    #           guardrail_profile_id: "GuardrailCrossRegionGuardrailProfileId",
    #           guardrail_profile_arn: "GuardrailCrossRegionGuardrailProfileArn"
    #         }
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListGuardrailsResponse]
    def list_guardrails(params = {}, options = {})
      request = build_request(:list_guardrails, params)
      request.send_request(options)
    end

    # <p>Returns a list of models you've imported. You can filter the results to return based on one or more criteria. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-import-model.html">Import a customized model</a> in the <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html">Amazon Bedrock User Guide</a>.</p>
    # @param [Hash, Types::ListImportedModelsRequest] params
    # @option params [Time] :creation_time_before
    #   <p>Return imported models that created before the specified time.</p>
    # @option params [Time] :creation_time_after
    #   <p>Return imported models that were created after the specified time.</p>
    # @option params [String] :name_contains
    #   <p>Return imported models only if the model name contains these characters.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response. If the total number of results is greater than this value, use the token returned in the response in the <code>nextToken</code> field when making another request to return the next batch of results.</p>
    # @option params [String] :next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, enter the token returned in the <code>nextToken</code> field in the response in this field to return the next batch of results.</p>
    # @option params [String] :sort_by
    #   <p>The field to sort by in the returned list of imported models.</p>
    # @option params [String] :sort_order
    #   <p>Specifies whetehr to sort the results in ascending or descending order.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     creation_time_before: Time.now,
    #     creation_time_after: Time.now,
    #     name_contains: "ImportedModelName",
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     sort_by: "CreationTime" # One of: ["CreationTime"],
    #     sort_order: "Ascending" # One of: ["Ascending", "Descending"]
    #   }
    #   options = {}
    #   response = client.list_imported_models(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "PaginationToken",
    #     model_summaries: [
    #       {
    #         model_arn: "ImportedModelArn", # required
    #         model_name: "ImportedModelName", # required
    #         creation_time: Time.now, # required
    #         instruct_supported: false,
    #         model_architecture: "ModelArchitecture"
    #       }
    #     ]
    #   }
    # @return [Types::ListImportedModelsResponse]
    def list_imported_models(params = {}, options = {})
      request = build_request(:list_imported_models, params)
      request.send_request(options)
    end

    # <p>Returns a list of inference profiles that you can use. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/cross-region-inference.html">Increase throughput and resilience with cross-region inference in Amazon Bedrock</a>. in the Amazon Bedrock User Guide.</p>
    # @param [Hash, Types::ListInferenceProfilesRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response. If the total number of results is greater than this value, use the token returned in the response in the <code>nextToken</code> field when making another request to return the next batch of results.</p>
    # @option params [String] :next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, enter the token returned in the <code>nextToken</code> field in the response in this field to return the next batch of results.</p>
    # @option params [String] :type_equals
    #   <p>Filters for inference profiles that match the type you specify.</p> <ul> <li> <p> <code>SYSTEM_DEFINED</code> – The inference profile is defined by Amazon Bedrock. You can route inference requests across regions with these inference profiles.</p> </li> <li> <p> <code>APPLICATION</code> – The inference profile was created by a user. This type of inference profile can track metrics and costs when invoking the model in it. The inference profile may route requests to one or multiple regions.</p> </li> </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     type_equals: "SYSTEM_DEFINED" # One of: ["SYSTEM_DEFINED", "APPLICATION"]
    #   }
    #   options = {}
    #   response = client.list_inference_profiles(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     inference_profile_summaries: [
    #       {
    #         inference_profile_name: "InferenceProfileName", # required
    #         description: "InferenceProfileDescription",
    #         created_at: Time.now,
    #         updated_at: Time.now,
    #         inference_profile_arn: "InferenceProfileArn", # required
    #         models: [ # required
    #           {
    #             model_arn: "FoundationModelArn"
    #           }
    #         ],
    #         inference_profile_id: "InferenceProfileId", # required
    #         status: "ACTIVE" # One of: ["ACTIVE"], # required
    #         type: "SYSTEM_DEFINED" # One of: ["SYSTEM_DEFINED", "APPLICATION"], # required
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListInferenceProfilesResponse]
    def list_inference_profiles(params = {}, options = {})
      request = build_request(:list_inference_profiles, params)
      request.send_request(options)
    end

    # <p>Lists the endpoints for models from Amazon Bedrock Marketplace in your Amazon Web Services account.</p>
    # @param [Hash, Types::ListMarketplaceModelEndpointsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. If more results are available, the operation returns a <code>NextToken</code> value.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. You receive this token from a previous <code>ListMarketplaceModelEndpoints</code> call.</p>
    # @option params [String] :model_source_equals
    #   <p>If specified, only endpoints for the given model source identifier are returned.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     model_source_equals: "ModelSourceIdentifier"
    #   }
    #   options = {}
    #   response = client.list_marketplace_model_endpoints(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     marketplace_model_endpoints: [
    #       {
    #         endpoint_arn: "Arn", # required
    #         model_source_identifier: "ModelSourceIdentifier", # required
    #         status: "REGISTERED" # One of: ["REGISTERED", "INCOMPATIBLE_ENDPOINT"],
    #         status_message: "String",
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListMarketplaceModelEndpointsResponse]
    def list_marketplace_model_endpoints(params = {}, options = {})
      request = build_request(:list_marketplace_model_endpoints, params)
      request.send_request(options)
    end

    # <p>Returns a list of model copy jobs that you have submitted. You can filter the jobs to return based on one or more criteria. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/copy-model.html">Copy models to be used in other regions</a> in the <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html">Amazon Bedrock User Guide</a>.</p>
    # @param [Hash, Types::ListModelCopyJobsRequest] params
    # @option params [Time] :creation_time_after
    #   <p>Filters for model copy jobs created after the specified time.</p>
    # @option params [Time] :creation_time_before
    #   <p>Filters for model copy jobs created before the specified time. </p>
    # @option params [String] :status_equals
    #   <p>Filters for model copy jobs whose status matches the value that you specify.</p>
    # @option params [String] :source_account_equals
    #   <p>Filters for model copy jobs in which the account that the source model belongs to is equal to the value that you specify.</p>
    # @option params [String] :source_model_arn_equals
    #   <p>Filters for model copy jobs in which the Amazon Resource Name (ARN) of the source model to is equal to the value that you specify.</p>
    # @option params [String] :target_model_name_contains
    #   <p>Filters for model copy jobs in which the name of the copied model contains the string that you specify.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response. If the total number of results is greater than this value, use the token returned in the response in the <code>nextToken</code> field when making another request to return the next batch of results.</p>
    # @option params [String] :next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, enter the token returned in the <code>nextToken</code> field in the response in this field to return the next batch of results.</p>
    # @option params [String] :sort_by
    #   <p>The field to sort by in the returned list of model copy jobs.</p>
    # @option params [String] :sort_order
    #   <p>Specifies whether to sort the results in ascending or descending order.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     creation_time_after: Time.now,
    #     creation_time_before: Time.now,
    #     status_equals: "InProgress" # One of: ["InProgress", "Completed", "Failed"],
    #     source_account_equals: "AccountId",
    #     source_model_arn_equals: "ModelArn",
    #     target_model_name_contains: "CustomModelName",
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     sort_by: "CreationTime" # One of: ["CreationTime"],
    #     sort_order: "Ascending" # One of: ["Ascending", "Descending"]
    #   }
    #   options = {}
    #   response = client.list_model_copy_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "PaginationToken",
    #     model_copy_job_summaries: [
    #       {
    #         job_arn: "ModelCopyJobArn", # required
    #         status: "InProgress" # One of: ["InProgress", "Completed", "Failed"], # required
    #         creation_time: Time.now, # required
    #         target_model_arn: "CustomModelArn", # required
    #         target_model_name: "CustomModelName",
    #         source_account_id: "AccountId", # required
    #         source_model_arn: "ModelArn", # required
    #         target_model_kms_key_arn: "KmsKeyArn",
    #         target_model_tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           }
    #         ],
    #         failure_message: "ErrorMessage",
    #         source_model_name: "CustomModelName"
    #       }
    #     ]
    #   }
    # @return [Types::ListModelCopyJobsResponse]
    def list_model_copy_jobs(params = {}, options = {})
      request = build_request(:list_model_copy_jobs, params)
      request.send_request(options)
    end

    # <p>Returns a list of model customization jobs that you have submitted. You can filter the jobs to return based on one or more criteria.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models.html">Custom models</a> in the <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html">Amazon Bedrock User Guide</a>.</p>
    # @param [Hash, Types::ListModelCustomizationJobsRequest] params
    # @option params [Time] :creation_time_after
    #   <p>Return customization jobs created after the specified time. </p>
    # @option params [Time] :creation_time_before
    #   <p>Return customization jobs created before the specified time. </p>
    # @option params [String] :status_equals
    #   <p>Return customization jobs with the specified status. </p>
    # @option params [String] :name_contains
    #   <p>Return customization jobs only if the job name contains these characters.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response. If the total number of results is greater than this value, use the token returned in the response in the <code>nextToken</code> field when making another request to return the next batch of results.</p>
    # @option params [String] :next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, enter the token returned in the <code>nextToken</code> field in the response in this field to return the next batch of results.</p>
    # @option params [String] :sort_by
    #   <p>The field to sort by in the returned list of jobs.</p>
    # @option params [String] :sort_order
    #   <p>The sort order of the results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     creation_time_after: Time.now,
    #     creation_time_before: Time.now,
    #     status_equals: "InProgress" # One of: ["InProgress", "Completed", "Failed", "Stopping", "Stopped"],
    #     name_contains: "JobName",
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     sort_by: "CreationTime" # One of: ["CreationTime"],
    #     sort_order: "Ascending" # One of: ["Ascending", "Descending"]
    #   }
    #   options = {}
    #   response = client.list_model_customization_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "PaginationToken",
    #     model_customization_job_summaries: [
    #       {
    #         job_arn: "ModelCustomizationJobArn", # required
    #         base_model_arn: "ModelArn", # required
    #         job_name: "JobName", # required
    #         status: "InProgress" # One of: ["InProgress", "Completed", "Failed", "Stopping", "Stopped"], # required
    #         status_details: {
    #           validation_details: {
    #             status: "InProgress" # One of: ["InProgress", "Completed", "Stopping", "Stopped", "Failed", "NotStarted"],
    #             creation_time: Time.now,
    #             last_modified_time: Time.now
    #           },
    #           data_processing_details: {
    #             status: "InProgress" # One of: ["InProgress", "Completed", "Stopping", "Stopped", "Failed", "NotStarted"],
    #             creation_time: Time.now,
    #             last_modified_time: Time.now
    #           },
    #           training_details: {
    #             status: "InProgress" # One of: ["InProgress", "Completed", "Stopping", "Stopped", "Failed", "NotStarted"],
    #             creation_time: Time.now,
    #             last_modified_time: Time.now
    #           }
    #         },
    #         last_modified_time: Time.now,
    #         creation_time: Time.now, # required
    #         end_time: Time.now,
    #         custom_model_arn: "CustomModelArn",
    #         custom_model_name: "CustomModelName",
    #         customization_type: "FINE_TUNING" # One of: ["FINE_TUNING", "CONTINUED_PRE_TRAINING", "DISTILLATION", "IMPORTED"]
    #       }
    #     ]
    #   }
    # @return [Types::ListModelCustomizationJobsResponse]
    def list_model_customization_jobs(params = {}, options = {})
      request = build_request(:list_model_customization_jobs, params)
      request.send_request(options)
    end

    # <p>Returns a list of import jobs you've submitted. You can filter the results to return based on one or more criteria. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-import-model.html">Import a customized model</a> in the <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html">Amazon Bedrock User Guide</a>.</p>
    # @param [Hash, Types::ListModelImportJobsRequest] params
    # @option params [Time] :creation_time_after
    #   <p>Return import jobs that were created after the specified time.</p>
    # @option params [Time] :creation_time_before
    #   <p>Return import jobs that were created before the specified time.</p>
    # @option params [String] :status_equals
    #   <p>Return imported jobs with the specified status.</p>
    # @option params [String] :name_contains
    #   <p>Return imported jobs only if the job name contains these characters.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response. If the total number of results is greater than this value, use the token returned in the response in the <code>nextToken</code> field when making another request to return the next batch of results.</p>
    # @option params [String] :next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, enter the token returned in the <code>nextToken</code> field in the response in this field to return the next batch of results.</p>
    # @option params [String] :sort_by
    #   <p>The field to sort by in the returned list of imported jobs.</p>
    # @option params [String] :sort_order
    #   <p>Specifies whether to sort the results in ascending or descending order.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     creation_time_after: Time.now,
    #     creation_time_before: Time.now,
    #     status_equals: "InProgress" # One of: ["InProgress", "Completed", "Failed"],
    #     name_contains: "JobName",
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     sort_by: "CreationTime" # One of: ["CreationTime"],
    #     sort_order: "Ascending" # One of: ["Ascending", "Descending"]
    #   }
    #   options = {}
    #   response = client.list_model_import_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "PaginationToken",
    #     model_import_job_summaries: [
    #       {
    #         job_arn: "ModelImportJobArn", # required
    #         job_name: "JobName", # required
    #         status: "InProgress" # One of: ["InProgress", "Completed", "Failed"], # required
    #         last_modified_time: Time.now,
    #         creation_time: Time.now, # required
    #         end_time: Time.now,
    #         imported_model_arn: "ImportedModelArn",
    #         imported_model_name: "ImportedModelName"
    #       }
    #     ]
    #   }
    # @return [Types::ListModelImportJobsResponse]
    def list_model_import_jobs(params = {}, options = {})
      request = build_request(:list_model_import_jobs, params)
      request.send_request(options)
    end

    # <p>Lists all batch inference jobs in the account. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/batch-inference-view.html">View details about a batch inference job</a>.</p>
    # @param [Hash, Types::ListModelInvocationJobsRequest] params
    # @option params [Time] :submit_time_after
    #   <p>Specify a time to filter for batch inference jobs that were submitted after the time you specify.</p>
    # @option params [Time] :submit_time_before
    #   <p>Specify a time to filter for batch inference jobs that were submitted before the time you specify.</p>
    # @option params [String] :status_equals
    #   <p>Specify a status to filter for batch inference jobs whose statuses match the string you specify.</p> <p>The following statuses are possible:</p> <ul> <li> <p>Submitted – This job has been submitted to a queue for validation.</p> </li> <li> <p>Validating – This job is being validated for the requirements described in <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/batch-inference-data.html">Format and upload your batch inference data</a>. The criteria include the following:</p> <ul> <li> <p>Your IAM service role has access to the Amazon S3 buckets containing your files.</p> </li> <li> <p>Your files are .jsonl files and each individual record is a JSON object in the correct format. Note that validation doesn't check if the <code>modelInput</code> value matches the request body for the model.</p> </li> <li> <p>Your files fulfill the requirements for file size and number of records. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/quotas.html">Quotas for Amazon Bedrock</a>.</p> </li> </ul> </li> <li> <p>Scheduled – This job has been validated and is now in a queue. The job will automatically start when it reaches its turn.</p> </li> <li> <p>Expired – This job timed out because it was scheduled but didn't begin before the set timeout duration. Submit a new job request.</p> </li> <li> <p>InProgress – This job has begun. You can start viewing the results in the output S3 location.</p> </li> <li> <p>Completed – This job has successfully completed. View the output files in the output S3 location.</p> </li> <li> <p>PartiallyCompleted – This job has partially completed. Not all of your records could be processed in time. View the output files in the output S3 location.</p> </li> <li> <p>Failed – This job has failed. Check the failure message for any further details. For further assistance, reach out to the <a href="https://console.aws.amazon.com/support/home/">Amazon Web ServicesSupport Center</a>.</p> </li> <li> <p>Stopped – This job was stopped by a user.</p> </li> <li> <p>Stopping – This job is being stopped by a user.</p> </li> </ul>
    # @option params [String] :name_contains
    #   <p>Specify a string to filter for batch inference jobs whose names contain the string.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return. If there are more results than the number that you specify, a <code>nextToken</code> value is returned. Use the <code>nextToken</code> in a request to return the next batch of results.</p>
    # @option params [String] :next_token
    #   <p>If there were more results than the value you specified in the <code>maxResults</code> field in a previous <code>ListModelInvocationJobs</code> request, the response would have returned a <code>nextToken</code> value. To see the next batch of results, send the <code>nextToken</code> value in another request.</p>
    # @option params [String] :sort_by
    #   <p>An attribute by which to sort the results.</p>
    # @option params [String] :sort_order
    #   <p>Specifies whether to sort the results by ascending or descending order.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     submit_time_after: Time.now,
    #     submit_time_before: Time.now,
    #     status_equals: "Submitted" # One of: ["Submitted", "InProgress", "Completed", "Failed", "Stopping", "Stopped", "PartiallyCompleted", "Expired", "Validating", "Scheduled"],
    #     name_contains: "ModelInvocationJobName",
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     sort_by: "CreationTime" # One of: ["CreationTime"],
    #     sort_order: "Ascending" # One of: ["Ascending", "Descending"]
    #   }
    #   options = {}
    #   response = client.list_model_invocation_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "PaginationToken",
    #     invocation_job_summaries: [
    #       {
    #         job_arn: "ModelInvocationJobArn", # required
    #         job_name: "ModelInvocationJobName", # required
    #         model_id: "ModelId", # required
    #         client_request_token: "ModelInvocationIdempotencyToken",
    #         role_arn: "RoleArn", # required
    #         status: "Submitted" # One of: ["Submitted", "InProgress", "Completed", "Failed", "Stopping", "Stopped", "PartiallyCompleted", "Expired", "Validating", "Scheduled"],
    #         message: "Message",
    #         submit_time: Time.now, # required
    #         last_modified_time: Time.now,
    #         end_time: Time.now,
    #         input_data_config: { # required
    #           # One of:
    #           s3_input_data_config: {
    #             s3_input_format: "JSONL" # One of: ["JSONL"],
    #             s3_uri: "S3Uri", # required
    #             s3_bucket_owner: "AccountId"
    #           }
    #         },
    #         output_data_config: { # required
    #           # One of:
    #           s3_output_data_config: {
    #             s3_uri: "S3Uri", # required
    #             s3_encryption_key_id: "KmsKeyId",
    #             s3_bucket_owner: "AccountId"
    #           }
    #         },
    #         vpc_config: {
    #           subnet_ids: ["SubnetId"], # required
    #           security_group_ids: ["SecurityGroupId"], # required
    #         },
    #         timeout_duration_in_hours: 1,
    #         job_expiration_time: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::ListModelInvocationJobsResponse]
    def list_model_invocation_jobs(params = {}, options = {})
      request = build_request(:list_model_invocation_jobs, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of prompt routers.</p>
    # @param [Hash, Types::ListPromptRoutersRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of prompt routers to return in one page of results.</p>
    # @option params [String] :next_token
    #   <p>Specify the pagination token from a previous request to retrieve the next page of results.</p>
    # @option params [String] :type
    #   <p>The type of the prompt routers, such as whether it's default or custom.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     type: "custom" # One of: ["custom", "default"]
    #   }
    #   options = {}
    #   response = client.list_prompt_routers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     prompt_router_summaries: [
    #       {
    #         prompt_router_name: "PromptRouterName", # required
    #         routing_criteria: { # required
    #           response_quality_difference: 1.0, # required
    #         },
    #         description: "PromptRouterDescription",
    #         created_at: Time.now,
    #         updated_at: Time.now,
    #         prompt_router_arn: "PromptRouterArn", # required
    #         models: [ # required
    #           {
    #             model_arn: "PromptRouterTargetModelArn", # required
    #           }
    #         ],
    #         fallback_model: { # required
    #           model_arn: "PromptRouterTargetModelArn", # required
    #         },
    #         status: "AVAILABLE" # One of: ["AVAILABLE"], # required
    #         type: "custom" # One of: ["custom", "default"], # required
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListPromptRoutersResponse]
    def list_prompt_routers(params = {}, options = {})
      request = build_request(:list_prompt_routers, params)
      request.send_request(options)
    end

    # <p>Lists the Provisioned Throughputs in the account. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/prov-throughput.html">Provisioned Throughput</a> in the <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html">Amazon Bedrock User Guide</a>.</p>
    # @param [Hash, Types::ListProvisionedModelThroughputsRequest] params
    # @option params [Time] :creation_time_after
    #   <p>A filter that returns Provisioned Throughputs created after the specified time. </p>
    # @option params [Time] :creation_time_before
    #   <p>A filter that returns Provisioned Throughputs created before the specified time. </p>
    # @option params [String] :status_equals
    #   <p>A filter that returns Provisioned Throughputs if their statuses matches the value that you specify.</p>
    # @option params [String] :model_arn_equals
    #   <p>A filter that returns Provisioned Throughputs whose model Amazon Resource Name (ARN) is equal to the value that you specify.</p>
    # @option params [String] :name_contains
    #   <p>A filter that returns Provisioned Throughputs if their name contains the expression that you specify.</p>
    # @option params [Integer] :max_results
    #   <p>THe maximum number of results to return in the response. If there are more results than the number you specified, the response returns a <code>nextToken</code> value. To see the next batch of results, send the <code>nextToken</code> value in another list request.</p>
    # @option params [String] :next_token
    #   <p>If there are more results than the number you specified in the <code>maxResults</code> field, the response returns a <code>nextToken</code> value. To see the next batch of results, specify the <code>nextToken</code> value in this field.</p>
    # @option params [String] :sort_by
    #   <p>The field by which to sort the returned list of Provisioned Throughputs.</p>
    # @option params [String] :sort_order
    #   <p>The sort order of the results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     creation_time_after: Time.now,
    #     creation_time_before: Time.now,
    #     status_equals: "Creating" # One of: ["Creating", "InService", "Updating", "Failed"],
    #     model_arn_equals: "ModelArn",
    #     name_contains: "ProvisionedModelName",
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     sort_by: "CreationTime" # One of: ["CreationTime"],
    #     sort_order: "Ascending" # One of: ["Ascending", "Descending"]
    #   }
    #   options = {}
    #   response = client.list_provisioned_model_throughputs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "PaginationToken",
    #     provisioned_model_summaries: [
    #       {
    #         provisioned_model_name: "ProvisionedModelName", # required
    #         provisioned_model_arn: "ProvisionedModelArn", # required
    #         model_arn: "ModelArn", # required
    #         desired_model_arn: "ModelArn", # required
    #         foundation_model_arn: "FoundationModelArn", # required
    #         model_units: 1, # required
    #         desired_model_units: 1, # required
    #         status: "Creating" # One of: ["Creating", "InService", "Updating", "Failed"], # required
    #         commitment_duration: "OneMonth" # One of: ["OneMonth", "SixMonths"],
    #         commitment_expiration_time: Time.now,
    #         creation_time: Time.now, # required
    #         last_modified_time: Time.now, # required
    #       }
    #     ]
    #   }
    # @return [Types::ListProvisionedModelThroughputsResponse]
    def list_provisioned_model_throughputs(params = {}, options = {})
      request = build_request(:list_provisioned_model_throughputs, params)
      request.send_request(options)
    end

    # <p>List the tags associated with the specified resource.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html">Tagging resources</a> in the <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html">Amazon Bedrock User Guide</a>.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "TaggableResourcesArn", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Set the configuration values for model invocation logging.</p>
    # @param [Hash, Types::PutModelInvocationLoggingConfigurationRequest] params
    # @option params [Types::LoggingConfig] :logging_config
    #   <p>The logging configuration values to set.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     logging_config: { # required
    #       cloud_watch_config: {
    #         log_group_name: "LogGroupName", # required
    #         role_arn: "RoleArn", # required
    #         large_data_delivery_s3_config: {
    #           bucket_name: "BucketName", # required
    #           key_prefix: "KeyPrefix"
    #         }
    #       },
    #       s3_config: {
    #         bucket_name: "BucketName", # required
    #         key_prefix: "KeyPrefix"
    #       },
    #       text_data_delivery_enabled: false,
    #       image_data_delivery_enabled: false,
    #       embedding_data_delivery_enabled: false,
    #       video_data_delivery_enabled: false
    #     }
    #   }
    #   options = {}
    #   response = client.put_model_invocation_logging_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutModelInvocationLoggingConfigurationResponse]
    def put_model_invocation_logging_configuration(params = {}, options = {})
      request = build_request(:put_model_invocation_logging_configuration, params)
      request.send_request(options)
    end

    # <p>Put usecase for model access.</p>
    # @param [Hash, Types::PutUseCaseForModelAccessRequest] params
    # @option params [String] :form_data
    #   <p>Put customer profile Request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     form_data: "data", # required
    #   }
    #   options = {}
    #   response = client.put_use_case_for_model_access(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutUseCaseForModelAccessResponse]
    def put_use_case_for_model_access(params = {}, options = {})
      request = build_request(:put_use_case_for_model_access, params)
      request.send_request(options)
    end

    # <p>Registers an existing Amazon SageMaker endpoint with Amazon Bedrock Marketplace, allowing it to be used with Amazon Bedrock APIs.</p>
    # @param [Hash, Types::RegisterMarketplaceModelEndpointRequest] params
    # @option params [String] :endpoint_identifier
    #   <p>The ARN of the Amazon SageMaker endpoint you want to register with Amazon Bedrock Marketplace.</p>
    # @option params [String] :model_source_identifier
    #   <p>The ARN of the model from Amazon Bedrock Marketplace that is deployed on the endpoint.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     endpoint_identifier: "Arn", # required
    #     model_source_identifier: "ModelSourceIdentifier", # required
    #   }
    #   options = {}
    #   response = client.register_marketplace_model_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     marketplace_model_endpoint: { # required
    #       endpoint_arn: "Arn", # required
    #       model_source_identifier: "ModelSourceIdentifier", # required
    #       status: "REGISTERED" # One of: ["REGISTERED", "INCOMPATIBLE_ENDPOINT"],
    #       status_message: "String",
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       endpoint_config: { # required
    #         # One of:
    #         sage_maker: {
    #           initial_instance_count: 1, # required
    #           instance_type: "InstanceType", # required
    #           execution_role: "RoleArn", # required
    #           kms_encryption_key: "KmsKeyId",
    #           vpc: {
    #             subnet_ids: ["SubnetId"], # required
    #             security_group_ids: ["SecurityGroupId"], # required
    #           }
    #         }
    #       },
    #       endpoint_status: "String", # required
    #       endpoint_status_message: "String"
    #     }
    #   }
    # @return [Types::RegisterMarketplaceModelEndpointResponse]
    def register_marketplace_model_endpoint(params = {}, options = {})
      request = build_request(:register_marketplace_model_endpoint, params)
      request.send_request(options)
    end

    # <p>Starts a new build workflow for an Automated Reasoning policy. This initiates the process of analyzing source documents and generating policy rules, variables, and types.</p>
    # @param [Hash, Types::StartAutomatedReasoningPolicyBuildWorkflowRequest] params
    # @option params [String] :policy_arn
    #   <p>The Amazon Resource Name (ARN) of the Automated Reasoning policy for which to start the build workflow.</p>
    # @option params [String] :build_workflow_type
    #   <p>The type of build workflow to start (e.g., DOCUMENT_INGESTION for processing new documents, POLICY_REPAIR for fixing existing policies).</p>
    # @option params [String] :client_request_token
    #   <p>A unique, case-sensitive identifier to ensure that the operation completes no more than once. If this token matches a previous request, Amazon Bedrock ignores the request but doesn't return an error.</p>
    # @option params [Types::AutomatedReasoningPolicyBuildWorkflowSource] :source_content
    #   <p>The source content for the build workflow, such as documents to analyze or repair instructions for existing policies.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_arn: "AutomatedReasoningPolicyArn", # required
    #     build_workflow_type: "INGEST_CONTENT" # One of: ["INGEST_CONTENT", "REFINE_POLICY", "IMPORT_POLICY"], # required
    #     client_request_token: "IdempotencyToken",
    #     source_content: { # required
    #       policy_definition: {
    #         version: "AutomatedReasoningPolicyFormatVersion",
    #         types: [
    #           {
    #             name: "AutomatedReasoningPolicyDefinitionTypeName", # required
    #             description: "AutomatedReasoningPolicyDefinitionTypeDescription",
    #             values: [ # required
    #               {
    #                 value: "AutomatedReasoningPolicyDefinitionTypeValueName", # required
    #                 description: "AutomatedReasoningPolicyDefinitionTypeValueDescription"
    #               }
    #             ]
    #           }
    #         ],
    #         rules: [
    #           {
    #             id: "AutomatedReasoningPolicyDefinitionRuleId", # required
    #             expression: "AutomatedReasoningPolicyDefinitionRuleExpression", # required
    #             alternate_expression: "AutomatedReasoningPolicyDefinitionRuleAlternateExpression"
    #           }
    #         ],
    #         variables: [
    #           {
    #             name: "AutomatedReasoningPolicyDefinitionVariableName", # required
    #             type: "AutomatedReasoningPolicyDefinitionTypeName", # required
    #             description: "AutomatedReasoningPolicyDefinitionVariableDescription", # required
    #           }
    #         ]
    #       },
    #       workflow_content: {
    #         # One of:
    #         documents: [
    #           {
    #             document: "data", # required
    #             document_content_type: "pdf" # One of: ["pdf", "txt"], # required
    #             document_name: "AutomatedReasoningPolicyBuildDocumentName", # required
    #             document_description: "AutomatedReasoningPolicyBuildDocumentDescription"
    #           }
    #         ],
    #         policy_repair_assets: {
    #           annotations: [{ # required
    #             # One of:
    #             add_type: {
    #               name: "AutomatedReasoningPolicyDefinitionTypeName", # required
    #               description: "AutomatedReasoningPolicyDefinitionTypeDescription", # required
    #               values: [ # required
    #                 {
    #                   value: "AutomatedReasoningPolicyDefinitionTypeValueName", # required
    #                   description: "AutomatedReasoningPolicyDefinitionTypeValueDescription"
    #                 }
    #               ]
    #             },
    #             update_type: {
    #               name: "AutomatedReasoningPolicyDefinitionTypeName", # required
    #               new_name: "AutomatedReasoningPolicyDefinitionTypeName",
    #               description: "AutomatedReasoningPolicyDefinitionTypeDescription",
    #               values: [{ # required
    #                 # One of:
    #                 add_type_value: {
    #                   value: "AutomatedReasoningPolicyDefinitionTypeValueName", # required
    #                   description: "AutomatedReasoningPolicyDefinitionTypeValueDescription"
    #                 },
    #                 update_type_value: {
    #                   value: "AutomatedReasoningPolicyDefinitionTypeValueName", # required
    #                   new_value: "AutomatedReasoningPolicyDefinitionTypeValueName",
    #                   description: "AutomatedReasoningPolicyDefinitionTypeValueDescription"
    #                 },
    #                 delete_type_value: {
    #                   value: "AutomatedReasoningPolicyDefinitionTypeValueName", # required
    #                 }
    #               }]
    #             },
    #             delete_type: {
    #               name: "AutomatedReasoningPolicyDefinitionTypeName", # required
    #             },
    #             add_variable: {
    #               name: "AutomatedReasoningPolicyDefinitionVariableName", # required
    #               type: "AutomatedReasoningPolicyDefinitionTypeName", # required
    #               description: "AutomatedReasoningPolicyDefinitionVariableDescription", # required
    #             },
    #             update_variable: {
    #               name: "AutomatedReasoningPolicyDefinitionVariableName", # required
    #               new_name: "AutomatedReasoningPolicyDefinitionVariableName",
    #               description: "AutomatedReasoningPolicyDefinitionVariableDescription"
    #             },
    #             delete_variable: {
    #               name: "AutomatedReasoningPolicyDefinitionVariableName", # required
    #             },
    #             add_rule: {
    #               expression: "AutomatedReasoningPolicyDefinitionRuleExpression", # required
    #             },
    #             update_rule: {
    #               rule_id: "AutomatedReasoningPolicyDefinitionRuleId", # required
    #               expression: "AutomatedReasoningPolicyDefinitionRuleExpression", # required
    #             },
    #             delete_rule: {
    #               rule_id: "AutomatedReasoningPolicyDefinitionRuleId", # required
    #             },
    #             add_rule_from_natural_language: {
    #               natural_language: "AutomatedReasoningPolicyAnnotationRuleNaturalLanguage", # required
    #             },
    #             update_from_rules_feedback: {
    #               rule_ids: ["AutomatedReasoningPolicyDefinitionRuleId"],
    #               feedback: "AutomatedReasoningPolicyAnnotationFeedbackNaturalLanguage", # required
    #             },
    #             update_from_scenario_feedback: {
    #               rule_ids: ["AutomatedReasoningPolicyDefinitionRuleId"],
    #               scenario_expression: "AutomatedReasoningPolicyScenarioExpression", # required
    #               feedback: "AutomatedReasoningPolicyAnnotationFeedbackNaturalLanguage"
    #             },
    #             ingest_content: {
    #               content: "AutomatedReasoningPolicyAnnotationIngestContent", # required
    #             }
    #           }]
    #         }
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.start_automated_reasoning_policy_build_workflow(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_arn: "AutomatedReasoningPolicyArn", # required
    #     build_workflow_id: "AutomatedReasoningPolicyBuildWorkflowId", # required
    #   }
    # @return [Types::StartAutomatedReasoningPolicyBuildWorkflowResponse]
    def start_automated_reasoning_policy_build_workflow(params = {}, options = {})
      request = build_request(:start_automated_reasoning_policy_build_workflow, params)
      request.send_request(options)
    end

    # <p>Initiates a test workflow to validate Automated Reasoning policy tests. The workflow executes the specified tests against the policy and generates validation results.</p>
    # @param [Hash, Types::StartAutomatedReasoningPolicyTestWorkflowRequest] params
    # @option params [String] :policy_arn
    #   <p>The Amazon Resource Name (ARN) of the Automated Reasoning policy to test.</p>
    # @option params [String] :build_workflow_id
    #   <p>The build workflow identifier. The build workflow must show a <code>COMPLETED</code> status before running tests.</p>
    # @option params [Array<String>] :test_case_ids
    #   <p>The list of test identifiers to run. If not provided, all tests for the policy are run.</p>
    # @option params [String] :client_request_token
    #   <p>A unique, case-sensitive identifier to ensure that the operation completes no more than one time. If this token matches a previous request, Amazon Bedrock ignores the request but doesn't return an error.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_arn: "AutomatedReasoningPolicyArn", # required
    #     build_workflow_id: "AutomatedReasoningPolicyBuildWorkflowId", # required
    #     test_case_ids: ["AutomatedReasoningPolicyTestCaseId"],
    #     client_request_token: "IdempotencyToken"
    #   }
    #   options = {}
    #   response = client.start_automated_reasoning_policy_test_workflow(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_arn: "AutomatedReasoningPolicyArn", # required
    #   }
    # @return [Types::StartAutomatedReasoningPolicyTestWorkflowResponse]
    def start_automated_reasoning_policy_test_workflow(params = {}, options = {})
      request = build_request(:start_automated_reasoning_policy_test_workflow, params)
      request.send_request(options)
    end

    # <p>Stops an evaluation job that is current being created or running.</p>
    # @param [Hash, Types::StopEvaluationJobRequest] params
    # @option params [String] :job_identifier
    #   <p>The Amazon Resource Name (ARN) of the evaluation job you want to stop.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_identifier: "EvaluationJobIdentifier", # required
    #   }
    #   options = {}
    #   response = client.stop_evaluation_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::StopEvaluationJobResponse]
    def stop_evaluation_job(params = {}, options = {})
      request = build_request(:stop_evaluation_job, params)
      request.send_request(options)
    end

    # <p>Stops an active model customization job. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models.html">Custom models</a> in the <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html">Amazon Bedrock User Guide</a>.</p>
    # @param [Hash, Types::StopModelCustomizationJobRequest] params
    # @option params [String] :job_identifier
    #   <p>Job identifier of the job to stop.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_identifier: "ModelCustomizationJobIdentifier", # required
    #   }
    #   options = {}
    #   response = client.stop_model_customization_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::StopModelCustomizationJobResponse]
    def stop_model_customization_job(params = {}, options = {})
      request = build_request(:stop_model_customization_job, params)
      request.send_request(options)
    end

    # <p>Stops a batch inference job. You're only charged for tokens that were already processed. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/batch-inference-stop.html">Stop a batch inference job</a>.</p>
    # @param [Hash, Types::StopModelInvocationJobRequest] params
    # @option params [String] :job_identifier
    #   <p>The Amazon Resource Name (ARN) of the batch inference job to stop.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_identifier: "ModelInvocationJobIdentifier", # required
    #   }
    #   options = {}
    #   response = client.stop_model_invocation_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::StopModelInvocationJobResponse]
    def stop_model_invocation_job(params = {}, options = {})
      request = build_request(:stop_model_invocation_job, params)
      request.send_request(options)
    end

    # <p>Associate tags with a resource. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html">Tagging resources</a> in the <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html">Amazon Bedrock User Guide</a>.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to tag.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Tags to associate with the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "TaggableResourcesArn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
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

    # <p>Remove one or more tags from a resource. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html">Tagging resources</a> in the <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html">Amazon Bedrock User Guide</a>.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to untag.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>Tag keys of the tags to remove from the resource.</p>
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

    # <p>Updates an existing Automated Reasoning policy with new rules, variables, or configuration. This creates a new version of the policy while preserving the previous version.</p>
    # @param [Hash, Types::UpdateAutomatedReasoningPolicyRequest] params
    # @option params [String] :policy_arn
    #   <p>The Amazon Resource Name (ARN) of the Automated Reasoning policy to update. This must be the ARN of a draft policy.</p>
    # @option params [Types::AutomatedReasoningPolicyDefinition] :policy_definition
    #   <p>The updated policy definition containing the formal logic rules, variables, and types.</p>
    # @option params [String] :name
    #   <p>The updated name for the Automated Reasoning policy.</p>
    # @option params [String] :description
    #   <p>The updated description for the Automated Reasoning policy.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_arn: "AutomatedReasoningPolicyArn", # required
    #     policy_definition: { # required
    #       version: "AutomatedReasoningPolicyFormatVersion",
    #       types: [
    #         {
    #           name: "AutomatedReasoningPolicyDefinitionTypeName", # required
    #           description: "AutomatedReasoningPolicyDefinitionTypeDescription",
    #           values: [ # required
    #             {
    #               value: "AutomatedReasoningPolicyDefinitionTypeValueName", # required
    #               description: "AutomatedReasoningPolicyDefinitionTypeValueDescription"
    #             }
    #           ]
    #         }
    #       ],
    #       rules: [
    #         {
    #           id: "AutomatedReasoningPolicyDefinitionRuleId", # required
    #           expression: "AutomatedReasoningPolicyDefinitionRuleExpression", # required
    #           alternate_expression: "AutomatedReasoningPolicyDefinitionRuleAlternateExpression"
    #         }
    #       ],
    #       variables: [
    #         {
    #           name: "AutomatedReasoningPolicyDefinitionVariableName", # required
    #           type: "AutomatedReasoningPolicyDefinitionTypeName", # required
    #           description: "AutomatedReasoningPolicyDefinitionVariableDescription", # required
    #         }
    #       ]
    #     },
    #     name: "AutomatedReasoningPolicyName",
    #     description: "AutomatedReasoningPolicyDescription"
    #   }
    #   options = {}
    #   response = client.update_automated_reasoning_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_arn: "AutomatedReasoningPolicyArn", # required
    #     name: "AutomatedReasoningPolicyName", # required
    #     definition_hash: "AutomatedReasoningPolicyHash", # required
    #     updated_at: Time.now, # required
    #   }
    # @return [Types::UpdateAutomatedReasoningPolicyResponse]
    def update_automated_reasoning_policy(params = {}, options = {})
      request = build_request(:update_automated_reasoning_policy, params)
      request.send_request(options)
    end

    # <p>Updates the annotations for an Automated Reasoning policy build workflow. This allows you to modify extracted rules, variables, and types before finalizing the policy.</p>
    # @param [Hash, Types::UpdateAutomatedReasoningPolicyAnnotationsRequest] params
    # @option params [String] :policy_arn
    #   <p>The Amazon Resource Name (ARN) of the Automated Reasoning policy whose annotations you want to update.</p>
    # @option params [String] :build_workflow_id
    #   <p>The unique identifier of the build workflow whose annotations you want to update.</p>
    # @option params [Array<Types::AutomatedReasoningPolicyAnnotation>] :annotations
    #   <p>The updated annotations containing modified rules, variables, and types for the policy.</p>
    # @option params [String] :last_updated_annotation_set_hash
    #   <p>The hash value of the annotation set that you're updating. This is used for optimistic concurrency control to prevent conflicting updates.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_arn: "AutomatedReasoningPolicyArn", # required
    #     build_workflow_id: "AutomatedReasoningPolicyBuildWorkflowId", # required
    #     annotations: [{ # required
    #       # One of:
    #       add_type: {
    #         name: "AutomatedReasoningPolicyDefinitionTypeName", # required
    #         description: "AutomatedReasoningPolicyDefinitionTypeDescription", # required
    #         values: [ # required
    #           {
    #             value: "AutomatedReasoningPolicyDefinitionTypeValueName", # required
    #             description: "AutomatedReasoningPolicyDefinitionTypeValueDescription"
    #           }
    #         ]
    #       },
    #       update_type: {
    #         name: "AutomatedReasoningPolicyDefinitionTypeName", # required
    #         new_name: "AutomatedReasoningPolicyDefinitionTypeName",
    #         description: "AutomatedReasoningPolicyDefinitionTypeDescription",
    #         values: [{ # required
    #           # One of:
    #           add_type_value: {
    #             value: "AutomatedReasoningPolicyDefinitionTypeValueName", # required
    #             description: "AutomatedReasoningPolicyDefinitionTypeValueDescription"
    #           },
    #           update_type_value: {
    #             value: "AutomatedReasoningPolicyDefinitionTypeValueName", # required
    #             new_value: "AutomatedReasoningPolicyDefinitionTypeValueName",
    #             description: "AutomatedReasoningPolicyDefinitionTypeValueDescription"
    #           },
    #           delete_type_value: {
    #             value: "AutomatedReasoningPolicyDefinitionTypeValueName", # required
    #           }
    #         }]
    #       },
    #       delete_type: {
    #         name: "AutomatedReasoningPolicyDefinitionTypeName", # required
    #       },
    #       add_variable: {
    #         name: "AutomatedReasoningPolicyDefinitionVariableName", # required
    #         type: "AutomatedReasoningPolicyDefinitionTypeName", # required
    #         description: "AutomatedReasoningPolicyDefinitionVariableDescription", # required
    #       },
    #       update_variable: {
    #         name: "AutomatedReasoningPolicyDefinitionVariableName", # required
    #         new_name: "AutomatedReasoningPolicyDefinitionVariableName",
    #         description: "AutomatedReasoningPolicyDefinitionVariableDescription"
    #       },
    #       delete_variable: {
    #         name: "AutomatedReasoningPolicyDefinitionVariableName", # required
    #       },
    #       add_rule: {
    #         expression: "AutomatedReasoningPolicyDefinitionRuleExpression", # required
    #       },
    #       update_rule: {
    #         rule_id: "AutomatedReasoningPolicyDefinitionRuleId", # required
    #         expression: "AutomatedReasoningPolicyDefinitionRuleExpression", # required
    #       },
    #       delete_rule: {
    #         rule_id: "AutomatedReasoningPolicyDefinitionRuleId", # required
    #       },
    #       add_rule_from_natural_language: {
    #         natural_language: "AutomatedReasoningPolicyAnnotationRuleNaturalLanguage", # required
    #       },
    #       update_from_rules_feedback: {
    #         rule_ids: ["AutomatedReasoningPolicyDefinitionRuleId"],
    #         feedback: "AutomatedReasoningPolicyAnnotationFeedbackNaturalLanguage", # required
    #       },
    #       update_from_scenario_feedback: {
    #         rule_ids: ["AutomatedReasoningPolicyDefinitionRuleId"],
    #         scenario_expression: "AutomatedReasoningPolicyScenarioExpression", # required
    #         feedback: "AutomatedReasoningPolicyAnnotationFeedbackNaturalLanguage"
    #       },
    #       ingest_content: {
    #         content: "AutomatedReasoningPolicyAnnotationIngestContent", # required
    #       }
    #     }],
    #     last_updated_annotation_set_hash: "AutomatedReasoningPolicyHash", # required
    #   }
    #   options = {}
    #   response = client.update_automated_reasoning_policy_annotations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_arn: "AutomatedReasoningPolicyArn", # required
    #     build_workflow_id: "AutomatedReasoningPolicyBuildWorkflowId", # required
    #     annotation_set_hash: "AutomatedReasoningPolicyHash", # required
    #     updated_at: Time.now, # required
    #   }
    # @return [Types::UpdateAutomatedReasoningPolicyAnnotationsResponse]
    def update_automated_reasoning_policy_annotations(params = {}, options = {})
      request = build_request(:update_automated_reasoning_policy_annotations, params)
      request.send_request(options)
    end

    # <p>Updates an existing Automated Reasoning policy test. You can modify the content, query, expected result, and confidence threshold.</p>
    # @param [Hash, Types::UpdateAutomatedReasoningPolicyTestCaseRequest] params
    # @option params [String] :policy_arn
    #   <p>The Amazon Resource Name (ARN) of the Automated Reasoning policy that contains the test.</p>
    # @option params [String] :test_case_id
    #   <p>The unique identifier of the test to update.</p>
    # @option params [String] :guard_content
    #   <p>The updated content to be validated by the Automated Reasoning policy.</p>
    # @option params [String] :query_content
    #   <p>The updated input query or prompt that generated the content.</p>
    # @option params [Time] :last_updated_at
    #   <p>The timestamp when the test was last updated. This is used as a concurrency token to prevent conflicting modifications.</p>
    # @option params [String] :expected_aggregated_findings_result
    #   <p>The updated expected result of the Automated Reasoning check.</p>
    # @option params [Float] :confidence_threshold
    #   <p>The updated minimum confidence level for logic validation. If null is provided, the threshold will be removed.</p>
    # @option params [String] :client_request_token
    #   <p>A unique, case-sensitive identifier to ensure that the operation completes no more than one time. If this token matches a previous request, Amazon Bedrock ignores the request, but does not return an error.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_arn: "AutomatedReasoningPolicyArn", # required
    #     test_case_id: "AutomatedReasoningPolicyTestCaseId", # required
    #     guard_content: "AutomatedReasoningPolicyTestGuardContent", # required
    #     query_content: "AutomatedReasoningPolicyTestQueryContent",
    #     last_updated_at: Time.now, # required
    #     expected_aggregated_findings_result: "VALID" # One of: ["VALID", "INVALID", "SATISFIABLE", "IMPOSSIBLE", "TRANSLATION_AMBIGUOUS", "TOO_COMPLEX", "NO_TRANSLATION"], # required
    #     confidence_threshold: 1.0,
    #     client_request_token: "IdempotencyToken"
    #   }
    #   options = {}
    #   response = client.update_automated_reasoning_policy_test_case(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_arn: "AutomatedReasoningPolicyArn", # required
    #     test_case_id: "AutomatedReasoningPolicyTestCaseId", # required
    #   }
    # @return [Types::UpdateAutomatedReasoningPolicyTestCaseResponse]
    def update_automated_reasoning_policy_test_case(params = {}, options = {})
      request = build_request(:update_automated_reasoning_policy_test_case, params)
      request.send_request(options)
    end

    # <p>Updates a guardrail with the values you specify.</p> <ul> <li> <p>Specify a <code>name</code> and optional <code>description</code>.</p> </li> <li> <p>Specify messages for when the guardrail successfully blocks a prompt or a model response in the <code>blockedInputMessaging</code> and <code>blockedOutputsMessaging</code> fields.</p> </li> <li> <p>Specify topics for the guardrail to deny in the <code>topicPolicyConfig</code> object. Each <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_GuardrailTopicConfig.html">GuardrailTopicConfig</a> object in the <code>topicsConfig</code> list pertains to one topic.</p> <ul> <li> <p>Give a <code>name</code> and <code>description</code> so that the guardrail can properly identify the topic.</p> </li> <li> <p>Specify <code>DENY</code> in the <code>type</code> field.</p> </li> <li> <p>(Optional) Provide up to five prompts that you would categorize as belonging to the topic in the <code>examples</code> list.</p> </li> </ul> </li> <li> <p>Specify filter strengths for the harmful categories defined in Amazon Bedrock in the <code>contentPolicyConfig</code> object. Each <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_GuardrailContentFilterConfig.html">GuardrailContentFilterConfig</a> object in the <code>filtersConfig</code> list pertains to a harmful category. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/guardrails-content-filters">Content filters</a>. For more information about the fields in a content filter, see <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_GuardrailContentFilterConfig.html">GuardrailContentFilterConfig</a>.</p> <ul> <li> <p>Specify the category in the <code>type</code> field.</p> </li> <li> <p>Specify the strength of the filter for prompts in the <code>inputStrength</code> field and for model responses in the <code>strength</code> field of the <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_GuardrailContentFilterConfig.html">GuardrailContentFilterConfig</a>.</p> </li> </ul> </li> <li> <p>(Optional) For security, include the ARN of a KMS key in the <code>kmsKeyId</code> field.</p> </li> </ul>
    # @param [Hash, Types::UpdateGuardrailRequest] params
    # @option params [String] :guardrail_identifier
    #   <p>The unique identifier of the guardrail. This can be an ID or the ARN.</p>
    # @option params [String] :name
    #   <p>A name for the guardrail.</p>
    # @option params [String] :description
    #   <p>A description of the guardrail.</p>
    # @option params [Types::GuardrailTopicPolicyConfig] :topic_policy_config
    #   <p>The topic policy to configure for the guardrail.</p>
    # @option params [Types::GuardrailContentPolicyConfig] :content_policy_config
    #   <p>The content policy to configure for the guardrail.</p>
    # @option params [Types::GuardrailWordPolicyConfig] :word_policy_config
    #   <p>The word policy to configure for the guardrail.</p>
    # @option params [Types::GuardrailSensitiveInformationPolicyConfig] :sensitive_information_policy_config
    #   <p>The sensitive information policy to configure for the guardrail.</p>
    # @option params [Types::GuardrailContextualGroundingPolicyConfig] :contextual_grounding_policy_config
    #   <p>The contextual grounding policy configuration used to update a guardrail.</p>
    # @option params [Types::GuardrailAutomatedReasoningPolicyConfig] :automated_reasoning_policy_config
    #   <p>Updated configuration for Automated Reasoning policies associated with the guardrail.</p>
    # @option params [Types::GuardrailCrossRegionConfig] :cross_region_config
    #   <p>The system-defined guardrail profile that you're using with your guardrail. Guardrail profiles define the destination Amazon Web Services Regions where guardrail inference requests can be automatically routed.</p> <p>For more information, see the <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/guardrails-cross-region.html">Amazon Bedrock User Guide</a>.</p>
    # @option params [String] :blocked_input_messaging
    #   <p>The message to return when the guardrail blocks a prompt.</p>
    # @option params [String] :blocked_outputs_messaging
    #   <p>The message to return when the guardrail blocks a model response.</p>
    # @option params [String] :kms_key_id
    #   <p>The ARN of the KMS key with which to encrypt the guardrail.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     guardrail_identifier: "GuardrailIdentifier", # required
    #     name: "GuardrailName", # required
    #     description: "GuardrailDescription",
    #     topic_policy_config: {
    #       topics_config: [ # required
    #         {
    #           name: "GuardrailTopicName", # required
    #           definition: "GuardrailTopicDefinition", # required
    #           examples: ["GuardrailTopicExample"],
    #           type: "DENY" # One of: ["DENY"], # required
    #           input_action: "BLOCK" # One of: ["BLOCK", "NONE"],
    #           output_action: "BLOCK" # One of: ["BLOCK", "NONE"],
    #           input_enabled: false,
    #           output_enabled: false
    #         }
    #       ],
    #       tier_config: {
    #         tier_name: "CLASSIC" # One of: ["CLASSIC", "STANDARD"], # required
    #       }
    #     },
    #     content_policy_config: {
    #       filters_config: [ # required
    #         {
    #           type: "SEXUAL" # One of: ["SEXUAL", "VIOLENCE", "HATE", "INSULTS", "MISCONDUCT", "PROMPT_ATTACK"], # required
    #           input_strength: "NONE" # One of: ["NONE", "LOW", "MEDIUM", "HIGH"], # required
    #           output_strength: "NONE" # One of: ["NONE", "LOW", "MEDIUM", "HIGH"], # required
    #           input_modalities: ["TEXT" # One of: ["TEXT", "IMAGE"]],
    #           output_modalities: ["TEXT" # One of: ["TEXT", "IMAGE"]],
    #           input_action: "BLOCK" # One of: ["BLOCK", "NONE"],
    #           output_action: "BLOCK" # One of: ["BLOCK", "NONE"],
    #           input_enabled: false,
    #           output_enabled: false
    #         }
    #       ],
    #       tier_config: {
    #         tier_name: "CLASSIC" # One of: ["CLASSIC", "STANDARD"], # required
    #       }
    #     },
    #     word_policy_config: {
    #       words_config: [
    #         {
    #           text: "String", # required
    #           input_action: "BLOCK" # One of: ["BLOCK", "NONE"],
    #           output_action: "BLOCK" # One of: ["BLOCK", "NONE"],
    #           input_enabled: false,
    #           output_enabled: false
    #         }
    #       ],
    #       managed_word_lists_config: [
    #         {
    #           type: "PROFANITY" # One of: ["PROFANITY"], # required
    #           input_action: "BLOCK" # One of: ["BLOCK", "NONE"],
    #           output_action: "BLOCK" # One of: ["BLOCK", "NONE"],
    #           input_enabled: false,
    #           output_enabled: false
    #         }
    #       ]
    #     },
    #     sensitive_information_policy_config: {
    #       pii_entities_config: [
    #         {
    #           type: "ADDRESS" # One of: ["ADDRESS", "AGE", "AWS_ACCESS_KEY", "AWS_SECRET_KEY", "CA_HEALTH_NUMBER", "CA_SOCIAL_INSURANCE_NUMBER", "CREDIT_DEBIT_CARD_CVV", "CREDIT_DEBIT_CARD_EXPIRY", "CREDIT_DEBIT_CARD_NUMBER", "DRIVER_ID", "EMAIL", "INTERNATIONAL_BANK_ACCOUNT_NUMBER", "IP_ADDRESS", "LICENSE_PLATE", "MAC_ADDRESS", "NAME", "PASSWORD", "PHONE", "PIN", "SWIFT_CODE", "UK_NATIONAL_HEALTH_SERVICE_NUMBER", "UK_NATIONAL_INSURANCE_NUMBER", "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER", "URL", "USERNAME", "US_BANK_ACCOUNT_NUMBER", "US_BANK_ROUTING_NUMBER", "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER", "US_PASSPORT_NUMBER", "US_SOCIAL_SECURITY_NUMBER", "VEHICLE_IDENTIFICATION_NUMBER"], # required
    #           action: "BLOCK" # One of: ["BLOCK", "ANONYMIZE", "NONE"], # required
    #           input_action: "BLOCK" # One of: ["BLOCK", "ANONYMIZE", "NONE"],
    #           output_action: "BLOCK" # One of: ["BLOCK", "ANONYMIZE", "NONE"],
    #           input_enabled: false,
    #           output_enabled: false
    #         }
    #       ],
    #       regexes_config: [
    #         {
    #           name: "String", # required
    #           description: "String",
    #           pattern: "String", # required
    #           action: "BLOCK" # One of: ["BLOCK", "ANONYMIZE", "NONE"], # required
    #           input_action: "BLOCK" # One of: ["BLOCK", "ANONYMIZE", "NONE"],
    #           output_action: "BLOCK" # One of: ["BLOCK", "ANONYMIZE", "NONE"],
    #           input_enabled: false,
    #           output_enabled: false
    #         }
    #       ]
    #     },
    #     contextual_grounding_policy_config: {
    #       filters_config: [ # required
    #         {
    #           type: "GROUNDING" # One of: ["GROUNDING", "RELEVANCE"], # required
    #           threshold: 1.0, # required
    #           action: "BLOCK" # One of: ["BLOCK", "NONE"],
    #           enabled: false
    #         }
    #       ]
    #     },
    #     automated_reasoning_policy_config: {
    #       policies: ["AutomatedReasoningPolicyArn"], # required
    #       confidence_threshold: 1.0
    #     },
    #     cross_region_config: {
    #       guardrail_profile_identifier: "GuardrailCrossRegionGuardrailProfileIdentifier", # required
    #     },
    #     blocked_input_messaging: "GuardrailBlockedMessaging", # required
    #     blocked_outputs_messaging: "GuardrailBlockedMessaging", # required
    #     kms_key_id: "KmsKeyId"
    #   }
    #   options = {}
    #   response = client.update_guardrail(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     guardrail_id: "GuardrailId", # required
    #     guardrail_arn: "GuardrailArn", # required
    #     version: "GuardrailDraftVersion", # required
    #     updated_at: Time.now, # required
    #   }
    # @return [Types::UpdateGuardrailResponse]
    def update_guardrail(params = {}, options = {})
      request = build_request(:update_guardrail, params)
      request.send_request(options)
    end

    # <p>Updates the configuration of an existing endpoint for a model from Amazon Bedrock Marketplace.</p>
    # @param [Hash, Types::UpdateMarketplaceModelEndpointRequest] params
    # @option params [String] :endpoint_arn
    #   <p>The Amazon Resource Name (ARN) of the endpoint you want to update.</p>
    # @option params [Types::EndpointConfig] :endpoint_config
    #   <p>The new configuration for the endpoint, including the number and type of instances to use.</p>
    # @option params [String] :client_request_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. This token is listed as not required because Amazon Web Services SDKs automatically generate it for you and set this parameter. If you're not using the Amazon Web Services SDK or the CLI, you must provide this token or the action will fail.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     endpoint_arn: "Arn", # required
    #     endpoint_config: { # required
    #       # One of:
    #       sage_maker: {
    #         initial_instance_count: 1, # required
    #         instance_type: "InstanceType", # required
    #         execution_role: "RoleArn", # required
    #         kms_encryption_key: "KmsKeyId",
    #         vpc: {
    #           subnet_ids: ["SubnetId"], # required
    #           security_group_ids: ["SecurityGroupId"], # required
    #         }
    #       }
    #     },
    #     client_request_token: "IdempotencyToken"
    #   }
    #   options = {}
    #   response = client.update_marketplace_model_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     marketplace_model_endpoint: { # required
    #       endpoint_arn: "Arn", # required
    #       model_source_identifier: "ModelSourceIdentifier", # required
    #       status: "REGISTERED" # One of: ["REGISTERED", "INCOMPATIBLE_ENDPOINT"],
    #       status_message: "String",
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       endpoint_config: { # required
    #         # One of:
    #         sage_maker: {
    #           initial_instance_count: 1, # required
    #           instance_type: "InstanceType", # required
    #           execution_role: "RoleArn", # required
    #           kms_encryption_key: "KmsKeyId",
    #           vpc: {
    #             subnet_ids: ["SubnetId"], # required
    #             security_group_ids: ["SecurityGroupId"], # required
    #           }
    #         }
    #       },
    #       endpoint_status: "String", # required
    #       endpoint_status_message: "String"
    #     }
    #   }
    # @return [Types::UpdateMarketplaceModelEndpointResponse]
    def update_marketplace_model_endpoint(params = {}, options = {})
      request = build_request(:update_marketplace_model_endpoint, params)
      request.send_request(options)
    end

    # <p>Updates the name or associated model for a Provisioned Throughput. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/prov-throughput.html">Provisioned Throughput</a> in the <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html">Amazon Bedrock User Guide</a>.</p>
    # @param [Hash, Types::UpdateProvisionedModelThroughputRequest] params
    # @option params [String] :provisioned_model_id
    #   <p>The Amazon Resource Name (ARN) or name of the Provisioned Throughput to update.</p>
    # @option params [String] :desired_provisioned_model_name
    #   <p>The new name for this Provisioned Throughput.</p>
    # @option params [String] :desired_model_id
    #   <p>The Amazon Resource Name (ARN) of the new model to associate with this Provisioned Throughput. You can't specify this field if this Provisioned Throughput is associated with a base model.</p> <p>If this Provisioned Throughput is associated with a custom model, you can specify one of the following options:</p> <ul> <li> <p>The base model from which the custom model was customized.</p> </li> <li> <p>Another custom model that was customized from the same base model as the custom model.</p> </li> </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     provisioned_model_id: "ProvisionedModelId", # required
    #     desired_provisioned_model_name: "ProvisionedModelName",
    #     desired_model_id: "ModelIdentifier"
    #   }
    #   options = {}
    #   response = client.update_provisioned_model_throughput(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateProvisionedModelThroughputResponse]
    def update_provisioned_model_throughput(params = {}, options = {})
      request = build_request(:update_provisioned_model_throughput, params)
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
      context[:gem_name] = 'aws-sdk-bedrock'
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
