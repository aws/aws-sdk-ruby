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

module Aws::BedrockRuntime
  # An API client for Aws::BedrockRuntime.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AmazonBedrockFrontendService

    add_plugin(::Aws::BedrockRuntime::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::BedrockRuntime::EndpointProvider)
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

    # <p>The action to apply a guardrail.</p> <p>For troubleshooting some of the common errors you might encounter when using the <code>ApplyGuardrail</code> API, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/troubleshooting-api-error-codes.html">Troubleshooting Amazon Bedrock API Error Codes</a> in the Amazon Bedrock User Guide</p>
    # @param [Hash, Types::ApplyGuardrailRequest] params
    # @option params [String] :guardrail_identifier
    #   <p>The guardrail identifier used in the request to apply the guardrail.</p>
    # @option params [String] :guardrail_version
    #   <p>The guardrail version used in the request to apply the guardrail.</p>
    # @option params [String] :source
    #   <p>The source of data used in the request to apply the guardrail.</p>
    # @option params [Array<Types::GuardrailContentBlock>] :content
    #   <p>The content details used in the request to apply the guardrail.</p>
    # @option params [String] :output_scope
    #   <p>Specifies the scope of the output that you get in the response. Set to <code>FULL</code> to return the entire output, including any detected and non-detected entries in the response for enhanced debugging.</p> <p>Note that the full output scope doesn't apply to word filters or regex in sensitive information filters. It does apply to all other filtering policies, including sensitive information with filters that can detect personally identifiable information (PII).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     guardrail_identifier: "GuardrailIdentifier", # required
    #     guardrail_version: "GuardrailVersion", # required
    #     source: "INPUT" # One of: ["INPUT", "OUTPUT"], # required
    #     content: [{ # required
    #       # One of:
    #       text: {
    #         text: "String", # required
    #         qualifiers: ["grounding_source" # One of: ["grounding_source", "query", "guard_content"]]
    #       },
    #       image: {
    #         format: "png" # One of: ["png", "jpeg"], # required
    #         source: { # required
    #           # One of:
    #           bytes: "data"
    #         }
    #       }
    #     }],
    #     output_scope: "INTERVENTIONS" # One of: ["INTERVENTIONS", "FULL"]
    #   }
    #   options = {}
    #   response = client.apply_guardrail(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     usage: { # required
    #       topic_policy_units: 1, # required
    #       content_policy_units: 1, # required
    #       word_policy_units: 1, # required
    #       sensitive_information_policy_units: 1, # required
    #       sensitive_information_policy_free_units: 1, # required
    #       contextual_grounding_policy_units: 1, # required
    #       content_policy_image_units: 1,
    #       automated_reasoning_policy_units: 1,
    #       automated_reasoning_policies: 1
    #     },
    #     action: "NONE" # One of: ["NONE", "GUARDRAIL_INTERVENED"], # required
    #     action_reason: "String",
    #     outputs: [ # required
    #       {
    #         text: "GuardrailOutputText"
    #       }
    #     ],
    #     assessments: [ # required
    #       {
    #         topic_policy: {
    #           topics: [ # required
    #             {
    #               name: "String", # required
    #               type: "DENY" # One of: ["DENY"], # required
    #               action: "BLOCKED" # One of: ["BLOCKED", "NONE"], # required
    #               detected: false
    #             }
    #           ]
    #         },
    #         content_policy: {
    #           filters: [ # required
    #             {
    #               type: "INSULTS" # One of: ["INSULTS", "HATE", "SEXUAL", "VIOLENCE", "MISCONDUCT", "PROMPT_ATTACK"], # required
    #               confidence: "NONE" # One of: ["NONE", "LOW", "MEDIUM", "HIGH"], # required
    #               filter_strength: "NONE" # One of: ["NONE", "LOW", "MEDIUM", "HIGH"],
    #               action: "BLOCKED" # One of: ["BLOCKED", "NONE"], # required
    #               detected: false
    #             }
    #           ]
    #         },
    #         word_policy: {
    #           custom_words: [ # required
    #             {
    #               match: "String", # required
    #               action: "BLOCKED" # One of: ["BLOCKED", "NONE"], # required
    #               detected: false
    #             }
    #           ],
    #           managed_word_lists: [ # required
    #             {
    #               match: "String", # required
    #               type: "PROFANITY" # One of: ["PROFANITY"], # required
    #               action: "BLOCKED" # One of: ["BLOCKED", "NONE"], # required
    #               detected: false
    #             }
    #           ]
    #         },
    #         sensitive_information_policy: {
    #           pii_entities: [ # required
    #             {
    #               match: "String", # required
    #               type: "ADDRESS" # One of: ["ADDRESS", "AGE", "AWS_ACCESS_KEY", "AWS_SECRET_KEY", "CA_HEALTH_NUMBER", "CA_SOCIAL_INSURANCE_NUMBER", "CREDIT_DEBIT_CARD_CVV", "CREDIT_DEBIT_CARD_EXPIRY", "CREDIT_DEBIT_CARD_NUMBER", "DRIVER_ID", "EMAIL", "INTERNATIONAL_BANK_ACCOUNT_NUMBER", "IP_ADDRESS", "LICENSE_PLATE", "MAC_ADDRESS", "NAME", "PASSWORD", "PHONE", "PIN", "SWIFT_CODE", "UK_NATIONAL_HEALTH_SERVICE_NUMBER", "UK_NATIONAL_INSURANCE_NUMBER", "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER", "URL", "USERNAME", "US_BANK_ACCOUNT_NUMBER", "US_BANK_ROUTING_NUMBER", "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER", "US_PASSPORT_NUMBER", "US_SOCIAL_SECURITY_NUMBER", "VEHICLE_IDENTIFICATION_NUMBER"], # required
    #               action: "ANONYMIZED" # One of: ["ANONYMIZED", "BLOCKED", "NONE"], # required
    #               detected: false
    #             }
    #           ],
    #           regexes: [ # required
    #             {
    #               name: "String",
    #               match: "String",
    #               regex: "String",
    #               action: "ANONYMIZED" # One of: ["ANONYMIZED", "BLOCKED", "NONE"], # required
    #               detected: false
    #             }
    #           ]
    #         },
    #         contextual_grounding_policy: {
    #           filters: [
    #             {
    #               type: "GROUNDING" # One of: ["GROUNDING", "RELEVANCE"], # required
    #               threshold: 1.0, # required
    #               score: 1.0, # required
    #               action: "BLOCKED" # One of: ["BLOCKED", "NONE"], # required
    #               detected: false
    #             }
    #           ]
    #         },
    #         automated_reasoning_policy: {
    #           findings: [{
    #             # One of:
    #             valid: {
    #               translation: {
    #                 premises: [
    #                   {
    #                     logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                     natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                   }
    #                 ],
    #                 claims: [
    #                   {
    #                     logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                     natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                   }
    #                 ],
    #                 untranslated_premises: [
    #                   {
    #                     text: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                   }
    #                 ],
    #                 untranslated_claims: [
    #                   {
    #                     text: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                   }
    #                 ],
    #                 confidence: 1.0
    #               },
    #               claims_true_scenario: {
    #                 statements: [
    #                   {
    #                     logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                     natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                   }
    #                 ]
    #               },
    #               supporting_rules: [
    #                 {
    #                   identifier: "AutomatedReasoningRuleIdentifier",
    #                   policy_version_arn: "GuardrailAutomatedReasoningPolicyVersionArn"
    #                 }
    #               ],
    #               logic_warning: {
    #                 type: "ALWAYS_FALSE" # One of: ["ALWAYS_FALSE", "ALWAYS_TRUE"],
    #                 premises: [
    #                   {
    #                     logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                     natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                   }
    #                 ],
    #                 claims: [
    #                   {
    #                     logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                     natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                   }
    #                 ]
    #               }
    #             },
    #             invalid: {
    #               translation: {
    #                 premises: [
    #                   {
    #                     logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                     natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                   }
    #                 ],
    #                 claims: [
    #                   {
    #                     logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                     natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                   }
    #                 ],
    #                 untranslated_premises: [
    #                   {
    #                     text: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                   }
    #                 ],
    #                 untranslated_claims: [
    #                   {
    #                     text: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                   }
    #                 ],
    #                 confidence: 1.0
    #               },
    #               contradicting_rules: [
    #                 {
    #                   identifier: "AutomatedReasoningRuleIdentifier",
    #                   policy_version_arn: "GuardrailAutomatedReasoningPolicyVersionArn"
    #                 }
    #               ],
    #               logic_warning: {
    #                 type: "ALWAYS_FALSE" # One of: ["ALWAYS_FALSE", "ALWAYS_TRUE"],
    #                 premises: [
    #                   {
    #                     logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                     natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                   }
    #                 ],
    #                 claims: [
    #                   {
    #                     logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                     natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                   }
    #                 ]
    #               }
    #             },
    #             satisfiable: {
    #               translation: {
    #                 premises: [
    #                   {
    #                     logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                     natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                   }
    #                 ],
    #                 claims: [
    #                   {
    #                     logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                     natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                   }
    #                 ],
    #                 untranslated_premises: [
    #                   {
    #                     text: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                   }
    #                 ],
    #                 untranslated_claims: [
    #                   {
    #                     text: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                   }
    #                 ],
    #                 confidence: 1.0
    #               },
    #               claims_true_scenario: {
    #                 statements: [
    #                   {
    #                     logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                     natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                   }
    #                 ]
    #               },
    #               claims_false_scenario: {
    #                 statements: [
    #                   {
    #                     logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                     natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                   }
    #                 ]
    #               },
    #               logic_warning: {
    #                 type: "ALWAYS_FALSE" # One of: ["ALWAYS_FALSE", "ALWAYS_TRUE"],
    #                 premises: [
    #                   {
    #                     logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                     natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                   }
    #                 ],
    #                 claims: [
    #                   {
    #                     logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                     natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                   }
    #                 ]
    #               }
    #             },
    #             impossible: {
    #               translation: {
    #                 premises: [
    #                   {
    #                     logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                     natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                   }
    #                 ],
    #                 claims: [
    #                   {
    #                     logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                     natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                   }
    #                 ],
    #                 untranslated_premises: [
    #                   {
    #                     text: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                   }
    #                 ],
    #                 untranslated_claims: [
    #                   {
    #                     text: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                   }
    #                 ],
    #                 confidence: 1.0
    #               },
    #               contradicting_rules: [
    #                 {
    #                   identifier: "AutomatedReasoningRuleIdentifier",
    #                   policy_version_arn: "GuardrailAutomatedReasoningPolicyVersionArn"
    #                 }
    #               ],
    #               logic_warning: {
    #                 type: "ALWAYS_FALSE" # One of: ["ALWAYS_FALSE", "ALWAYS_TRUE"],
    #                 premises: [
    #                   {
    #                     logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                     natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                   }
    #                 ],
    #                 claims: [
    #                   {
    #                     logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                     natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                   }
    #                 ]
    #               }
    #             },
    #             translation_ambiguous: {
    #               options: [
    #                 {
    #                   translations: [
    #                     {
    #                       premises: [
    #                         {
    #                           logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                           natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                         }
    #                       ],
    #                       claims: [
    #                         {
    #                           logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                           natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                         }
    #                       ],
    #                       untranslated_premises: [
    #                         {
    #                           text: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                         }
    #                       ],
    #                       untranslated_claims: [
    #                         {
    #                           text: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                         }
    #                       ],
    #                       confidence: 1.0
    #                     }
    #                   ]
    #                 }
    #               ],
    #               difference_scenarios: [
    #                 {
    #                   statements: [
    #                     {
    #                       logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                       natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                     }
    #                   ]
    #                 }
    #               ]
    #             },
    #             too_complex: {
    #             },
    #             no_translations: {
    #             }
    #           }]
    #         },
    #         invocation_metrics: {
    #           guardrail_processing_latency: 1,
    #           usage: {
    #             topic_policy_units: 1, # required
    #             content_policy_units: 1, # required
    #             word_policy_units: 1, # required
    #             sensitive_information_policy_units: 1, # required
    #             sensitive_information_policy_free_units: 1, # required
    #             contextual_grounding_policy_units: 1, # required
    #             content_policy_image_units: 1,
    #             automated_reasoning_policy_units: 1,
    #             automated_reasoning_policies: 1
    #           },
    #           guardrail_coverage: {
    #             text_characters: {
    #               guarded: 1,
    #               total: 1
    #             },
    #             images: {
    #               guarded: 1,
    #               total: 1
    #             }
    #           }
    #         }
    #       }
    #     ],
    #     guardrail_coverage: {
    #       text_characters: {
    #         guarded: 1,
    #         total: 1
    #       },
    #       images: {
    #         guarded: 1,
    #         total: 1
    #       }
    #     }
    #   }
    # @return [Types::ApplyGuardrailResponse]
    def apply_guardrail(params = {}, options = {})
      request = build_request(:apply_guardrail, params)
      request.send_request(options)
    end

    # <p>Sends messages to the specified Amazon Bedrock model. <code>Converse</code> provides a consistent interface that works with all models that support messages. This allows you to write code once and use it with different models. If a model has unique inference parameters, you can also pass those unique parameters to the model.</p> <p>Amazon Bedrock doesn't store any text, images, or documents that you provide as content. The data is only used to generate the response.</p> <p>You can submit a prompt by including it in the <code>messages</code> field, specifying the <code>modelId</code> of a foundation model or inference profile to run inference on it, and including any other fields that are relevant to your use case.</p> <p>You can also submit a prompt from Prompt management by specifying the ARN of the prompt version and including a map of variables to values in the <code>promptVariables</code> field. You can append more messages to the prompt by using the <code>messages</code> field. If you use a prompt from Prompt management, you can't include the following fields in the request: <code>additionalModelRequestFields</code>, <code>inferenceConfig</code>, <code>system</code>, or <code>toolConfig</code>. Instead, these fields must be defined through Prompt management. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management-use.html">Use a prompt from Prompt management</a>.</p> <p>For information about the Converse API, see <i>Use the Converse API</i> in the <i>Amazon Bedrock User Guide</i>. To use a guardrail, see <i>Use a guardrail with the Converse API</i> in the <i>Amazon Bedrock User Guide</i>. To use a tool with a model, see <i>Tool use (Function calling)</i> in the <i>Amazon Bedrock User Guide</i> </p> <p>For example code, see <i>Converse API examples</i> in the <i>Amazon Bedrock User Guide</i>. </p> <p>This operation requires permission for the <code>bedrock:InvokeModel</code> action. </p> <important> <p>To deny all inference access to resources that you specify in the modelId field, you need to deny access to the <code>bedrock:InvokeModel</code> and <code>bedrock:InvokeModelWithResponseStream</code> actions. Doing this also denies access to the resource through the base inference actions (<a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_InvokeModel.html">InvokeModel</a> and <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_InvokeModelWithResponseStream.html">InvokeModelWithResponseStream</a>). For more information see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/security_iam_id-based-policy-examples.html#security_iam_id-based-policy-examples-deny-inference">Deny access for inference on specific models</a>. </p> </important> <p>For troubleshooting some of the common errors you might encounter when using the <code>Converse</code> API, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/troubleshooting-api-error-codes.html">Troubleshooting Amazon Bedrock API Error Codes</a> in the Amazon Bedrock User Guide</p>
    # @param [Hash, Types::ConverseRequest] params
    # @option params [String] :model_id
    #   <p>Specifies the model or throughput with which to run inference, or the prompt resource to use in inference. The value depends on the resource that you use:</p> <ul> <li> <p>If you use a base model, specify the model ID or its ARN. For a list of model IDs for base models, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/model-ids.html#model-ids-arns">Amazon Bedrock base model IDs (on-demand throughput)</a> in the Amazon Bedrock User Guide.</p> </li> <li> <p>If you use an inference profile, specify the inference profile ID or its ARN. For a list of inference profile IDs, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/cross-region-inference-support.html">Supported Regions and models for cross-region inference</a> in the Amazon Bedrock User Guide.</p> </li> <li> <p>If you use a provisioned model, specify the ARN of the Provisioned Throughput. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/prov-thru-use.html">Run inference using a Provisioned Throughput</a> in the Amazon Bedrock User Guide.</p> </li> <li> <p>If you use a custom model, first purchase Provisioned Throughput for it. Then specify the ARN of the resulting provisioned model. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-use.html">Use a custom model in Amazon Bedrock</a> in the Amazon Bedrock User Guide.</p> </li> <li> <p>To include a prompt that was defined in <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management.html">Prompt management</a>, specify the ARN of the prompt version to use.</p> </li> </ul> <p>The Converse API doesn't support <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-import-model.html">imported models</a>.</p>
    # @option params [Array<Types::Message>] :messages
    #   <p>The messages that you want to send to the model.</p>
    # @option params [Array<Types::SystemContentBlock>] :system
    #   <p>A prompt that provides instructions or context to the model about the task it should perform, or the persona it should adopt during the conversation.</p>
    # @option params [Types::InferenceConfiguration] :inference_config
    #   <p>Inference parameters to pass to the model. <code>Converse</code> and <code>ConverseStream</code> support a base set of inference parameters. If you need to pass additional parameters that the model supports, use the <code>additionalModelRequestFields</code> request field.</p>
    # @option params [Types::ToolConfiguration] :tool_config
    #   <p>Configuration information for the tools that the model can use when generating a response. </p> <p>For information about models that support tool use, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/conversation-inference.html#conversation-inference-supported-models-features">Supported models and model features</a>.</p>
    # @option params [Types::GuardrailConfiguration] :guardrail_config
    #   <p>Configuration information for a guardrail that you want to use in the request. If you include <code>guardContent</code> blocks in the <code>content</code> field in the <code>messages</code> field, the guardrail operates only on those messages. If you include no <code>guardContent</code> blocks, the guardrail operates on all messages in the request body and in any included prompt resource.</p>
    # @option params [JSON] :additional_model_request_fields
    #   <p>Additional inference parameters that the model supports, beyond the base set of inference parameters that <code>Converse</code> and <code>ConverseStream</code> support in the <code>inferenceConfig</code> field. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html">Model parameters</a>.</p>
    # @option params [Hash<String, Types::PromptVariableValues>] :prompt_variables
    #   <p>Contains a map of variables in a prompt from Prompt management to objects containing the values to fill in for them when running model invocation. This field is ignored if you don't specify a prompt resource in the <code>modelId</code> field.</p>
    # @option params [Array<String>] :additional_model_response_field_paths
    #   <p>Additional model parameters field paths to return in the response. <code>Converse</code> and <code>ConverseStream</code> return the requested fields as a JSON Pointer object in the <code>additionalModelResponseFields</code> field. The following is example JSON for <code>additionalModelResponseFieldPaths</code>.</p> <p> <code>[ "/stop_sequence" ]</code> </p> <p>For information about the JSON Pointer syntax, see the <a href="https://datatracker.ietf.org/doc/html/rfc6901">Internet Engineering Task Force (IETF)</a> documentation.</p> <p> <code>Converse</code> and <code>ConverseStream</code> reject an empty JSON Pointer or incorrectly structured JSON Pointer with a <code>400</code> error code. if the JSON Pointer is valid, but the requested field is not in the model response, it is ignored by <code>Converse</code>.</p>
    # @option params [Hash<String, String>] :request_metadata
    #   <p>Key-value pairs that you can use to filter invocation logs.</p>
    # @option params [Types::PerformanceConfiguration] :performance_config
    #   <p>Model performance settings for the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     model_id: "ConversationalModelId", # required
    #     messages: [
    #       {
    #         role: "user" # One of: ["user", "assistant"], # required
    #         content: [{ # required
    #           # One of:
    #           text: "String",
    #           image: {
    #             format: "png" # One of: ["png", "jpeg", "gif", "webp"], # required
    #             source: { # required
    #               # One of:
    #               bytes: "data",
    #               s3_location: {
    #                 uri: "S3Uri", # required
    #                 bucket_owner: "AccountId"
    #               }
    #             }
    #           },
    #           document: {
    #             format: "pdf" # One of: ["pdf", "csv", "doc", "docx", "xls", "xlsx", "html", "txt", "md"],
    #             name: "String", # required
    #             source: { # required
    #               # One of:
    #               bytes: "data",
    #               s3_location: {
    #                 uri: "S3Uri", # required
    #                 bucket_owner: "AccountId"
    #               },
    #               text: "String",
    #               content: [{
    #                 # One of:
    #                 text: "String"
    #               }]
    #             },
    #             context: "String",
    #             citations: {
    #               enabled: false, # required
    #             }
    #           },
    #           video: {
    #             format: "mkv" # One of: ["mkv", "mov", "mp4", "webm", "flv", "mpeg", "mpg", "wmv", "three_gp"], # required
    #             source: { # required
    #               # One of:
    #               bytes: "data",
    #               s3_location: {
    #                 uri: "S3Uri", # required
    #                 bucket_owner: "AccountId"
    #               }
    #             }
    #           },
    #           tool_use: {
    #             tool_use_id: "ToolUseId", # required
    #             name: "ToolName", # required
    #             input: ""null"", # required
    #           },
    #           tool_result: {
    #             tool_use_id: "ToolUseId", # required
    #             content: [{ # required
    #               # One of:
    #               json: ""null"",
    #               text: "String",
    #               image: {
    #                 format: "png" # One of: ["png", "jpeg", "gif", "webp"], # required
    #                 source: { # required
    #                   # One of:
    #                   bytes: "data",
    #                   s3_location: {
    #                     uri: "S3Uri", # required
    #                     bucket_owner: "AccountId"
    #                   }
    #                 }
    #               },
    #               document: {
    #                 format: "pdf" # One of: ["pdf", "csv", "doc", "docx", "xls", "xlsx", "html", "txt", "md"],
    #                 name: "String", # required
    #                 source: { # required
    #                   # One of:
    #                   bytes: "data",
    #                   s3_location: {
    #                     uri: "S3Uri", # required
    #                     bucket_owner: "AccountId"
    #                   },
    #                   text: "String",
    #                   content: [{
    #                     # One of:
    #                     text: "String"
    #                   }]
    #                 },
    #                 context: "String",
    #                 citations: {
    #                   enabled: false, # required
    #                 }
    #               },
    #               video: {
    #                 format: "mkv" # One of: ["mkv", "mov", "mp4", "webm", "flv", "mpeg", "mpg", "wmv", "three_gp"], # required
    #                 source: { # required
    #                   # One of:
    #                   bytes: "data",
    #                   s3_location: {
    #                     uri: "S3Uri", # required
    #                     bucket_owner: "AccountId"
    #                   }
    #                 }
    #               }
    #             }],
    #             status: "success" # One of: ["success", "error"]
    #           },
    #           guard_content: {
    #             # One of:
    #             text: {
    #               text: "String", # required
    #               qualifiers: ["grounding_source" # One of: ["grounding_source", "query", "guard_content"]]
    #             },
    #             image: {
    #               format: "png" # One of: ["png", "jpeg"], # required
    #               source: { # required
    #                 # One of:
    #                 bytes: "data"
    #               }
    #             }
    #           },
    #           cache_point: {
    #             type: "default" # One of: ["default"], # required
    #           },
    #           reasoning_content: {
    #             # One of:
    #             reasoning_text: {
    #               text: "String", # required
    #               signature: "String"
    #             },
    #             redacted_content: "data"
    #           },
    #           citations_content: {
    #             content: [{
    #               # One of:
    #               text: "String"
    #             }],
    #             citations: [
    #               {
    #                 title: "String",
    #                 source_content: [{
    #                   # One of:
    #                   text: "String"
    #                 }],
    #                 location: {
    #                   # One of:
    #                   document_char: {
    #                     document_index: 1,
    #                     start: 1,
    #                     end: 1
    #                   },
    #                   document_page: {
    #                     document_index: 1,
    #                     start: 1,
    #                     end: 1
    #                   },
    #                   document_chunk: {
    #                     document_index: 1,
    #                     start: 1,
    #                     end: 1
    #                   }
    #                 }
    #               }
    #             ]
    #           }
    #         }]
    #       }
    #     ],
    #     system: [{
    #       # One of:
    #       text: "NonEmptyString",
    #       guard_content: {
    #         # One of:
    #         text: {
    #           text: "String", # required
    #           qualifiers: ["grounding_source" # One of: ["grounding_source", "query", "guard_content"]]
    #         },
    #         image: {
    #           format: "png" # One of: ["png", "jpeg"], # required
    #           source: { # required
    #             # One of:
    #             bytes: "data"
    #           }
    #         }
    #       },
    #       cache_point: {
    #         type: "default" # One of: ["default"], # required
    #       }
    #     }],
    #     inference_config: {
    #       max_tokens: 1,
    #       temperature: 1.0,
    #       top_p: 1.0,
    #       stop_sequences: ["NonEmptyString"]
    #     },
    #     tool_config: {
    #       tools: [{ # required
    #         # One of:
    #         tool_spec: {
    #           name: "ToolName", # required
    #           description: "NonEmptyString",
    #           input_schema: { # required
    #             # One of:
    #             json: ""null""
    #           }
    #         },
    #         cache_point: {
    #           type: "default" # One of: ["default"], # required
    #         }
    #       }],
    #       tool_choice: {
    #         # One of:
    #         auto: {
    #         },
    #         any: {
    #         },
    #         tool: {
    #           name: "ToolName", # required
    #         }
    #       }
    #     },
    #     guardrail_config: {
    #       guardrail_identifier: "GuardrailIdentifier", # required
    #       guardrail_version: "GuardrailVersion", # required
    #       trace: "enabled" # One of: ["enabled", "disabled", "enabled_full"]
    #     },
    #     additional_model_request_fields: ""null"",
    #     prompt_variables: {
    #       "String" => {
    #         # One of:
    #         text: "String"
    #       }
    #     },
    #     additional_model_response_field_paths: ["String"],
    #     request_metadata: {
    #       "String" => "String"
    #     },
    #     performance_config: {
    #       latency: "standard" # One of: ["standard", "optimized"]
    #     }
    #   }
    #   options = {}
    #   response = client.converse(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     output: { # required
    #       # One of:
    #       message: {
    #         role: "user" # One of: ["user", "assistant"], # required
    #         content: [{ # required
    #           # One of:
    #           text: "String",
    #           image: {
    #             format: "png" # One of: ["png", "jpeg", "gif", "webp"], # required
    #             source: { # required
    #               # One of:
    #               bytes: "data",
    #               s3_location: {
    #                 uri: "S3Uri", # required
    #                 bucket_owner: "AccountId"
    #               }
    #             }
    #           },
    #           document: {
    #             format: "pdf" # One of: ["pdf", "csv", "doc", "docx", "xls", "xlsx", "html", "txt", "md"],
    #             name: "String", # required
    #             source: { # required
    #               # One of:
    #               bytes: "data",
    #               s3_location: {
    #                 uri: "S3Uri", # required
    #                 bucket_owner: "AccountId"
    #               },
    #               text: "String",
    #               content: [{
    #                 # One of:
    #                 text: "String"
    #               }]
    #             },
    #             context: "String",
    #             citations: {
    #               enabled: false, # required
    #             }
    #           },
    #           video: {
    #             format: "mkv" # One of: ["mkv", "mov", "mp4", "webm", "flv", "mpeg", "mpg", "wmv", "three_gp"], # required
    #             source: { # required
    #               # One of:
    #               bytes: "data",
    #               s3_location: {
    #                 uri: "S3Uri", # required
    #                 bucket_owner: "AccountId"
    #               }
    #             }
    #           },
    #           tool_use: {
    #             tool_use_id: "ToolUseId", # required
    #             name: "ToolName", # required
    #             input: ""null"", # required
    #           },
    #           tool_result: {
    #             tool_use_id: "ToolUseId", # required
    #             content: [{ # required
    #               # One of:
    #               json: ""null"",
    #               text: "String",
    #               image: {
    #                 format: "png" # One of: ["png", "jpeg", "gif", "webp"], # required
    #                 source: { # required
    #                   # One of:
    #                   bytes: "data",
    #                   s3_location: {
    #                     uri: "S3Uri", # required
    #                     bucket_owner: "AccountId"
    #                   }
    #                 }
    #               },
    #               document: {
    #                 format: "pdf" # One of: ["pdf", "csv", "doc", "docx", "xls", "xlsx", "html", "txt", "md"],
    #                 name: "String", # required
    #                 source: { # required
    #                   # One of:
    #                   bytes: "data",
    #                   s3_location: {
    #                     uri: "S3Uri", # required
    #                     bucket_owner: "AccountId"
    #                   },
    #                   text: "String",
    #                   content: [{
    #                     # One of:
    #                     text: "String"
    #                   }]
    #                 },
    #                 context: "String",
    #                 citations: {
    #                   enabled: false, # required
    #                 }
    #               },
    #               video: {
    #                 format: "mkv" # One of: ["mkv", "mov", "mp4", "webm", "flv", "mpeg", "mpg", "wmv", "three_gp"], # required
    #                 source: { # required
    #                   # One of:
    #                   bytes: "data",
    #                   s3_location: {
    #                     uri: "S3Uri", # required
    #                     bucket_owner: "AccountId"
    #                   }
    #                 }
    #               }
    #             }],
    #             status: "success" # One of: ["success", "error"]
    #           },
    #           guard_content: {
    #             # One of:
    #             text: {
    #               text: "String", # required
    #               qualifiers: ["grounding_source" # One of: ["grounding_source", "query", "guard_content"]]
    #             },
    #             image: {
    #               format: "png" # One of: ["png", "jpeg"], # required
    #               source: { # required
    #                 # One of:
    #                 bytes: "data"
    #               }
    #             }
    #           },
    #           cache_point: {
    #             type: "default" # One of: ["default"], # required
    #           },
    #           reasoning_content: {
    #             # One of:
    #             reasoning_text: {
    #               text: "String", # required
    #               signature: "String"
    #             },
    #             redacted_content: "data"
    #           },
    #           citations_content: {
    #             content: [{
    #               # One of:
    #               text: "String"
    #             }],
    #             citations: [
    #               {
    #                 title: "String",
    #                 source_content: [{
    #                   # One of:
    #                   text: "String"
    #                 }],
    #                 location: {
    #                   # One of:
    #                   document_char: {
    #                     document_index: 1,
    #                     start: 1,
    #                     end: 1
    #                   },
    #                   document_page: {
    #                     document_index: 1,
    #                     start: 1,
    #                     end: 1
    #                   },
    #                   document_chunk: {
    #                     document_index: 1,
    #                     start: 1,
    #                     end: 1
    #                   }
    #                 }
    #               }
    #             ]
    #           }
    #         }]
    #       }
    #     },
    #     stop_reason: "end_turn" # One of: ["end_turn", "tool_use", "max_tokens", "stop_sequence", "guardrail_intervened", "content_filtered", "model_context_window_exceeded"], # required
    #     usage: { # required
    #       input_tokens: 1, # required
    #       output_tokens: 1, # required
    #       total_tokens: 1, # required
    #       cache_read_input_tokens: 1,
    #       cache_write_input_tokens: 1
    #     },
    #     metrics: { # required
    #       latency_ms: 1, # required
    #     },
    #     additional_model_response_fields: ""null"",
    #     trace: {
    #       guardrail: {
    #         model_output: ["GuardrailOutputText"],
    #         input_assessment: {
    #           "String" => {
    #             topic_policy: {
    #               topics: [ # required
    #                 {
    #                   name: "String", # required
    #                   type: "DENY" # One of: ["DENY"], # required
    #                   action: "BLOCKED" # One of: ["BLOCKED", "NONE"], # required
    #                   detected: false
    #                 }
    #               ]
    #             },
    #             content_policy: {
    #               filters: [ # required
    #                 {
    #                   type: "INSULTS" # One of: ["INSULTS", "HATE", "SEXUAL", "VIOLENCE", "MISCONDUCT", "PROMPT_ATTACK"], # required
    #                   confidence: "NONE" # One of: ["NONE", "LOW", "MEDIUM", "HIGH"], # required
    #                   filter_strength: "NONE" # One of: ["NONE", "LOW", "MEDIUM", "HIGH"],
    #                   action: "BLOCKED" # One of: ["BLOCKED", "NONE"], # required
    #                   detected: false
    #                 }
    #               ]
    #             },
    #             word_policy: {
    #               custom_words: [ # required
    #                 {
    #                   match: "String", # required
    #                   action: "BLOCKED" # One of: ["BLOCKED", "NONE"], # required
    #                   detected: false
    #                 }
    #               ],
    #               managed_word_lists: [ # required
    #                 {
    #                   match: "String", # required
    #                   type: "PROFANITY" # One of: ["PROFANITY"], # required
    #                   action: "BLOCKED" # One of: ["BLOCKED", "NONE"], # required
    #                   detected: false
    #                 }
    #               ]
    #             },
    #             sensitive_information_policy: {
    #               pii_entities: [ # required
    #                 {
    #                   match: "String", # required
    #                   type: "ADDRESS" # One of: ["ADDRESS", "AGE", "AWS_ACCESS_KEY", "AWS_SECRET_KEY", "CA_HEALTH_NUMBER", "CA_SOCIAL_INSURANCE_NUMBER", "CREDIT_DEBIT_CARD_CVV", "CREDIT_DEBIT_CARD_EXPIRY", "CREDIT_DEBIT_CARD_NUMBER", "DRIVER_ID", "EMAIL", "INTERNATIONAL_BANK_ACCOUNT_NUMBER", "IP_ADDRESS", "LICENSE_PLATE", "MAC_ADDRESS", "NAME", "PASSWORD", "PHONE", "PIN", "SWIFT_CODE", "UK_NATIONAL_HEALTH_SERVICE_NUMBER", "UK_NATIONAL_INSURANCE_NUMBER", "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER", "URL", "USERNAME", "US_BANK_ACCOUNT_NUMBER", "US_BANK_ROUTING_NUMBER", "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER", "US_PASSPORT_NUMBER", "US_SOCIAL_SECURITY_NUMBER", "VEHICLE_IDENTIFICATION_NUMBER"], # required
    #                   action: "ANONYMIZED" # One of: ["ANONYMIZED", "BLOCKED", "NONE"], # required
    #                   detected: false
    #                 }
    #               ],
    #               regexes: [ # required
    #                 {
    #                   name: "String",
    #                   match: "String",
    #                   regex: "String",
    #                   action: "ANONYMIZED" # One of: ["ANONYMIZED", "BLOCKED", "NONE"], # required
    #                   detected: false
    #                 }
    #               ]
    #             },
    #             contextual_grounding_policy: {
    #               filters: [
    #                 {
    #                   type: "GROUNDING" # One of: ["GROUNDING", "RELEVANCE"], # required
    #                   threshold: 1.0, # required
    #                   score: 1.0, # required
    #                   action: "BLOCKED" # One of: ["BLOCKED", "NONE"], # required
    #                   detected: false
    #                 }
    #               ]
    #             },
    #             automated_reasoning_policy: {
    #               findings: [{
    #                 # One of:
    #                 valid: {
    #                   translation: {
    #                     premises: [
    #                       {
    #                         logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                         natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                       }
    #                     ],
    #                     claims: [
    #                       {
    #                         logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                         natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                       }
    #                     ],
    #                     untranslated_premises: [
    #                       {
    #                         text: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                       }
    #                     ],
    #                     untranslated_claims: [
    #                       {
    #                         text: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                       }
    #                     ],
    #                     confidence: 1.0
    #                   },
    #                   claims_true_scenario: {
    #                     statements: [
    #                       {
    #                         logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                         natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                       }
    #                     ]
    #                   },
    #                   supporting_rules: [
    #                     {
    #                       identifier: "AutomatedReasoningRuleIdentifier",
    #                       policy_version_arn: "GuardrailAutomatedReasoningPolicyVersionArn"
    #                     }
    #                   ],
    #                   logic_warning: {
    #                     type: "ALWAYS_FALSE" # One of: ["ALWAYS_FALSE", "ALWAYS_TRUE"],
    #                     premises: [
    #                       {
    #                         logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                         natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                       }
    #                     ],
    #                     claims: [
    #                       {
    #                         logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                         natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                       }
    #                     ]
    #                   }
    #                 },
    #                 invalid: {
    #                   translation: {
    #                     premises: [
    #                       {
    #                         logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                         natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                       }
    #                     ],
    #                     claims: [
    #                       {
    #                         logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                         natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                       }
    #                     ],
    #                     untranslated_premises: [
    #                       {
    #                         text: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                       }
    #                     ],
    #                     untranslated_claims: [
    #                       {
    #                         text: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                       }
    #                     ],
    #                     confidence: 1.0
    #                   },
    #                   contradicting_rules: [
    #                     {
    #                       identifier: "AutomatedReasoningRuleIdentifier",
    #                       policy_version_arn: "GuardrailAutomatedReasoningPolicyVersionArn"
    #                     }
    #                   ],
    #                   logic_warning: {
    #                     type: "ALWAYS_FALSE" # One of: ["ALWAYS_FALSE", "ALWAYS_TRUE"],
    #                     premises: [
    #                       {
    #                         logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                         natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                       }
    #                     ],
    #                     claims: [
    #                       {
    #                         logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                         natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                       }
    #                     ]
    #                   }
    #                 },
    #                 satisfiable: {
    #                   translation: {
    #                     premises: [
    #                       {
    #                         logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                         natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                       }
    #                     ],
    #                     claims: [
    #                       {
    #                         logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                         natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                       }
    #                     ],
    #                     untranslated_premises: [
    #                       {
    #                         text: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                       }
    #                     ],
    #                     untranslated_claims: [
    #                       {
    #                         text: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                       }
    #                     ],
    #                     confidence: 1.0
    #                   },
    #                   claims_true_scenario: {
    #                     statements: [
    #                       {
    #                         logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                         natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                       }
    #                     ]
    #                   },
    #                   claims_false_scenario: {
    #                     statements: [
    #                       {
    #                         logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                         natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                       }
    #                     ]
    #                   },
    #                   logic_warning: {
    #                     type: "ALWAYS_FALSE" # One of: ["ALWAYS_FALSE", "ALWAYS_TRUE"],
    #                     premises: [
    #                       {
    #                         logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                         natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                       }
    #                     ],
    #                     claims: [
    #                       {
    #                         logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                         natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                       }
    #                     ]
    #                   }
    #                 },
    #                 impossible: {
    #                   translation: {
    #                     premises: [
    #                       {
    #                         logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                         natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                       }
    #                     ],
    #                     claims: [
    #                       {
    #                         logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                         natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                       }
    #                     ],
    #                     untranslated_premises: [
    #                       {
    #                         text: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                       }
    #                     ],
    #                     untranslated_claims: [
    #                       {
    #                         text: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                       }
    #                     ],
    #                     confidence: 1.0
    #                   },
    #                   contradicting_rules: [
    #                     {
    #                       identifier: "AutomatedReasoningRuleIdentifier",
    #                       policy_version_arn: "GuardrailAutomatedReasoningPolicyVersionArn"
    #                     }
    #                   ],
    #                   logic_warning: {
    #                     type: "ALWAYS_FALSE" # One of: ["ALWAYS_FALSE", "ALWAYS_TRUE"],
    #                     premises: [
    #                       {
    #                         logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                         natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                       }
    #                     ],
    #                     claims: [
    #                       {
    #                         logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                         natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                       }
    #                     ]
    #                   }
    #                 },
    #                 translation_ambiguous: {
    #                   options: [
    #                     {
    #                       translations: [
    #                         {
    #                           premises: [
    #                             {
    #                               logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                               natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                             }
    #                           ],
    #                           claims: [
    #                             {
    #                               logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                               natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                             }
    #                           ],
    #                           untranslated_premises: [
    #                             {
    #                               text: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                             }
    #                           ],
    #                           untranslated_claims: [
    #                             {
    #                               text: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                             }
    #                           ],
    #                           confidence: 1.0
    #                         }
    #                       ]
    #                     }
    #                   ],
    #                   difference_scenarios: [
    #                     {
    #                       statements: [
    #                         {
    #                           logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                           natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                         }
    #                       ]
    #                     }
    #                   ]
    #                 },
    #                 too_complex: {
    #                 },
    #                 no_translations: {
    #                 }
    #               }]
    #             },
    #             invocation_metrics: {
    #               guardrail_processing_latency: 1,
    #               usage: {
    #                 topic_policy_units: 1, # required
    #                 content_policy_units: 1, # required
    #                 word_policy_units: 1, # required
    #                 sensitive_information_policy_units: 1, # required
    #                 sensitive_information_policy_free_units: 1, # required
    #                 contextual_grounding_policy_units: 1, # required
    #                 content_policy_image_units: 1,
    #                 automated_reasoning_policy_units: 1,
    #                 automated_reasoning_policies: 1
    #               },
    #               guardrail_coverage: {
    #                 text_characters: {
    #                   guarded: 1,
    #                   total: 1
    #                 },
    #                 images: {
    #                   guarded: 1,
    #                   total: 1
    #                 }
    #               }
    #             }
    #           }
    #         },
    #         output_assessments: {
    #           "String" => [
    #             {
    #               topic_policy: {
    #                 topics: [ # required
    #                   {
    #                     name: "String", # required
    #                     type: "DENY" # One of: ["DENY"], # required
    #                     action: "BLOCKED" # One of: ["BLOCKED", "NONE"], # required
    #                     detected: false
    #                   }
    #                 ]
    #               },
    #               content_policy: {
    #                 filters: [ # required
    #                   {
    #                     type: "INSULTS" # One of: ["INSULTS", "HATE", "SEXUAL", "VIOLENCE", "MISCONDUCT", "PROMPT_ATTACK"], # required
    #                     confidence: "NONE" # One of: ["NONE", "LOW", "MEDIUM", "HIGH"], # required
    #                     filter_strength: "NONE" # One of: ["NONE", "LOW", "MEDIUM", "HIGH"],
    #                     action: "BLOCKED" # One of: ["BLOCKED", "NONE"], # required
    #                     detected: false
    #                   }
    #                 ]
    #               },
    #               word_policy: {
    #                 custom_words: [ # required
    #                   {
    #                     match: "String", # required
    #                     action: "BLOCKED" # One of: ["BLOCKED", "NONE"], # required
    #                     detected: false
    #                   }
    #                 ],
    #                 managed_word_lists: [ # required
    #                   {
    #                     match: "String", # required
    #                     type: "PROFANITY" # One of: ["PROFANITY"], # required
    #                     action: "BLOCKED" # One of: ["BLOCKED", "NONE"], # required
    #                     detected: false
    #                   }
    #                 ]
    #               },
    #               sensitive_information_policy: {
    #                 pii_entities: [ # required
    #                   {
    #                     match: "String", # required
    #                     type: "ADDRESS" # One of: ["ADDRESS", "AGE", "AWS_ACCESS_KEY", "AWS_SECRET_KEY", "CA_HEALTH_NUMBER", "CA_SOCIAL_INSURANCE_NUMBER", "CREDIT_DEBIT_CARD_CVV", "CREDIT_DEBIT_CARD_EXPIRY", "CREDIT_DEBIT_CARD_NUMBER", "DRIVER_ID", "EMAIL", "INTERNATIONAL_BANK_ACCOUNT_NUMBER", "IP_ADDRESS", "LICENSE_PLATE", "MAC_ADDRESS", "NAME", "PASSWORD", "PHONE", "PIN", "SWIFT_CODE", "UK_NATIONAL_HEALTH_SERVICE_NUMBER", "UK_NATIONAL_INSURANCE_NUMBER", "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER", "URL", "USERNAME", "US_BANK_ACCOUNT_NUMBER", "US_BANK_ROUTING_NUMBER", "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER", "US_PASSPORT_NUMBER", "US_SOCIAL_SECURITY_NUMBER", "VEHICLE_IDENTIFICATION_NUMBER"], # required
    #                     action: "ANONYMIZED" # One of: ["ANONYMIZED", "BLOCKED", "NONE"], # required
    #                     detected: false
    #                   }
    #                 ],
    #                 regexes: [ # required
    #                   {
    #                     name: "String",
    #                     match: "String",
    #                     regex: "String",
    #                     action: "ANONYMIZED" # One of: ["ANONYMIZED", "BLOCKED", "NONE"], # required
    #                     detected: false
    #                   }
    #                 ]
    #               },
    #               contextual_grounding_policy: {
    #                 filters: [
    #                   {
    #                     type: "GROUNDING" # One of: ["GROUNDING", "RELEVANCE"], # required
    #                     threshold: 1.0, # required
    #                     score: 1.0, # required
    #                     action: "BLOCKED" # One of: ["BLOCKED", "NONE"], # required
    #                     detected: false
    #                   }
    #                 ]
    #               },
    #               automated_reasoning_policy: {
    #                 findings: [{
    #                   # One of:
    #                   valid: {
    #                     translation: {
    #                       premises: [
    #                         {
    #                           logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                           natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                         }
    #                       ],
    #                       claims: [
    #                         {
    #                           logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                           natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                         }
    #                       ],
    #                       untranslated_premises: [
    #                         {
    #                           text: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                         }
    #                       ],
    #                       untranslated_claims: [
    #                         {
    #                           text: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                         }
    #                       ],
    #                       confidence: 1.0
    #                     },
    #                     claims_true_scenario: {
    #                       statements: [
    #                         {
    #                           logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                           natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                         }
    #                       ]
    #                     },
    #                     supporting_rules: [
    #                       {
    #                         identifier: "AutomatedReasoningRuleIdentifier",
    #                         policy_version_arn: "GuardrailAutomatedReasoningPolicyVersionArn"
    #                       }
    #                     ],
    #                     logic_warning: {
    #                       type: "ALWAYS_FALSE" # One of: ["ALWAYS_FALSE", "ALWAYS_TRUE"],
    #                       premises: [
    #                         {
    #                           logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                           natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                         }
    #                       ],
    #                       claims: [
    #                         {
    #                           logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                           natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                         }
    #                       ]
    #                     }
    #                   },
    #                   invalid: {
    #                     translation: {
    #                       premises: [
    #                         {
    #                           logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                           natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                         }
    #                       ],
    #                       claims: [
    #                         {
    #                           logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                           natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                         }
    #                       ],
    #                       untranslated_premises: [
    #                         {
    #                           text: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                         }
    #                       ],
    #                       untranslated_claims: [
    #                         {
    #                           text: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                         }
    #                       ],
    #                       confidence: 1.0
    #                     },
    #                     contradicting_rules: [
    #                       {
    #                         identifier: "AutomatedReasoningRuleIdentifier",
    #                         policy_version_arn: "GuardrailAutomatedReasoningPolicyVersionArn"
    #                       }
    #                     ],
    #                     logic_warning: {
    #                       type: "ALWAYS_FALSE" # One of: ["ALWAYS_FALSE", "ALWAYS_TRUE"],
    #                       premises: [
    #                         {
    #                           logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                           natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                         }
    #                       ],
    #                       claims: [
    #                         {
    #                           logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                           natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                         }
    #                       ]
    #                     }
    #                   },
    #                   satisfiable: {
    #                     translation: {
    #                       premises: [
    #                         {
    #                           logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                           natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                         }
    #                       ],
    #                       claims: [
    #                         {
    #                           logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                           natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                         }
    #                       ],
    #                       untranslated_premises: [
    #                         {
    #                           text: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                         }
    #                       ],
    #                       untranslated_claims: [
    #                         {
    #                           text: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                         }
    #                       ],
    #                       confidence: 1.0
    #                     },
    #                     claims_true_scenario: {
    #                       statements: [
    #                         {
    #                           logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                           natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                         }
    #                       ]
    #                     },
    #                     claims_false_scenario: {
    #                       statements: [
    #                         {
    #                           logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                           natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                         }
    #                       ]
    #                     },
    #                     logic_warning: {
    #                       type: "ALWAYS_FALSE" # One of: ["ALWAYS_FALSE", "ALWAYS_TRUE"],
    #                       premises: [
    #                         {
    #                           logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                           natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                         }
    #                       ],
    #                       claims: [
    #                         {
    #                           logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                           natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                         }
    #                       ]
    #                     }
    #                   },
    #                   impossible: {
    #                     translation: {
    #                       premises: [
    #                         {
    #                           logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                           natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                         }
    #                       ],
    #                       claims: [
    #                         {
    #                           logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                           natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                         }
    #                       ],
    #                       untranslated_premises: [
    #                         {
    #                           text: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                         }
    #                       ],
    #                       untranslated_claims: [
    #                         {
    #                           text: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                         }
    #                       ],
    #                       confidence: 1.0
    #                     },
    #                     contradicting_rules: [
    #                       {
    #                         identifier: "AutomatedReasoningRuleIdentifier",
    #                         policy_version_arn: "GuardrailAutomatedReasoningPolicyVersionArn"
    #                       }
    #                     ],
    #                     logic_warning: {
    #                       type: "ALWAYS_FALSE" # One of: ["ALWAYS_FALSE", "ALWAYS_TRUE"],
    #                       premises: [
    #                         {
    #                           logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                           natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                         }
    #                       ],
    #                       claims: [
    #                         {
    #                           logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                           natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                         }
    #                       ]
    #                     }
    #                   },
    #                   translation_ambiguous: {
    #                     options: [
    #                       {
    #                         translations: [
    #                           {
    #                             premises: [
    #                               {
    #                                 logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                                 natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                               }
    #                             ],
    #                             claims: [
    #                               {
    #                                 logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                                 natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                               }
    #                             ],
    #                             untranslated_premises: [
    #                               {
    #                                 text: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                               }
    #                             ],
    #                             untranslated_claims: [
    #                               {
    #                                 text: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                               }
    #                             ],
    #                             confidence: 1.0
    #                           }
    #                         ]
    #                       }
    #                     ],
    #                     difference_scenarios: [
    #                       {
    #                         statements: [
    #                           {
    #                             logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                             natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                           }
    #                         ]
    #                       }
    #                     ]
    #                   },
    #                   too_complex: {
    #                   },
    #                   no_translations: {
    #                   }
    #                 }]
    #               },
    #               invocation_metrics: {
    #                 guardrail_processing_latency: 1,
    #                 usage: {
    #                   topic_policy_units: 1, # required
    #                   content_policy_units: 1, # required
    #                   word_policy_units: 1, # required
    #                   sensitive_information_policy_units: 1, # required
    #                   sensitive_information_policy_free_units: 1, # required
    #                   contextual_grounding_policy_units: 1, # required
    #                   content_policy_image_units: 1,
    #                   automated_reasoning_policy_units: 1,
    #                   automated_reasoning_policies: 1
    #                 },
    #                 guardrail_coverage: {
    #                   text_characters: {
    #                     guarded: 1,
    #                     total: 1
    #                   },
    #                   images: {
    #                     guarded: 1,
    #                     total: 1
    #                   }
    #                 }
    #               }
    #             }
    #           ]
    #         },
    #         action_reason: "String"
    #       },
    #       prompt_router: {
    #         invoked_model_id: "InvokedModelId"
    #       }
    #     },
    #     performance_config: {
    #       latency: "standard" # One of: ["standard", "optimized"]
    #     }
    #   }
    # @return [Types::ConverseResponse]
    def converse(params = {}, options = {})
      request = build_request(:converse, params)
      request.send_request(options)
    end

    # <p>Sends messages to the specified Amazon Bedrock model and returns the response in a stream. <code>ConverseStream</code> provides a consistent API that works with all Amazon Bedrock models that support messages. This allows you to write code once and use it with different models. Should a model have unique inference parameters, you can also pass those unique parameters to the model. </p> <p>To find out if a model supports streaming, call <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_GetFoundationModel.html">GetFoundationModel</a> and check the <code>responseStreamingSupported</code> field in the response.</p> <note> <p>The CLI doesn't support streaming operations in Amazon Bedrock, including <code>ConverseStream</code>.</p> </note> <p>Amazon Bedrock doesn't store any text, images, or documents that you provide as content. The data is only used to generate the response.</p> <p>You can submit a prompt by including it in the <code>messages</code> field, specifying the <code>modelId</code> of a foundation model or inference profile to run inference on it, and including any other fields that are relevant to your use case.</p> <p>You can also submit a prompt from Prompt management by specifying the ARN of the prompt version and including a map of variables to values in the <code>promptVariables</code> field. You can append more messages to the prompt by using the <code>messages</code> field. If you use a prompt from Prompt management, you can't include the following fields in the request: <code>additionalModelRequestFields</code>, <code>inferenceConfig</code>, <code>system</code>, or <code>toolConfig</code>. Instead, these fields must be defined through Prompt management. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management-use.html">Use a prompt from Prompt management</a>.</p> <p>For information about the Converse API, see <i>Use the Converse API</i> in the <i>Amazon Bedrock User Guide</i>. To use a guardrail, see <i>Use a guardrail with the Converse API</i> in the <i>Amazon Bedrock User Guide</i>. To use a tool with a model, see <i>Tool use (Function calling)</i> in the <i>Amazon Bedrock User Guide</i> </p> <p>For example code, see <i>Conversation streaming example</i> in the <i>Amazon Bedrock User Guide</i>. </p> <p>This operation requires permission for the <code>bedrock:InvokeModelWithResponseStream</code> action.</p> <important> <p>To deny all inference access to resources that you specify in the modelId field, you need to deny access to the <code>bedrock:InvokeModel</code> and <code>bedrock:InvokeModelWithResponseStream</code> actions. Doing this also denies access to the resource through the base inference actions (<a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_InvokeModel.html">InvokeModel</a> and <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_InvokeModelWithResponseStream.html">InvokeModelWithResponseStream</a>). For more information see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/security_iam_id-based-policy-examples.html#security_iam_id-based-policy-examples-deny-inference">Deny access for inference on specific models</a>. </p> </important> <p>For troubleshooting some of the common errors you might encounter when using the <code>ConverseStream</code> API, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/troubleshooting-api-error-codes.html">Troubleshooting Amazon Bedrock API Error Codes</a> in the Amazon Bedrock User Guide</p>
    # @param [Hash, Types::ConverseStreamRequest] params
    # @option params [String] :model_id
    #   <p>Specifies the model or throughput with which to run inference, or the prompt resource to use in inference. The value depends on the resource that you use:</p> <ul> <li> <p>If you use a base model, specify the model ID or its ARN. For a list of model IDs for base models, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/model-ids.html#model-ids-arns">Amazon Bedrock base model IDs (on-demand throughput)</a> in the Amazon Bedrock User Guide.</p> </li> <li> <p>If you use an inference profile, specify the inference profile ID or its ARN. For a list of inference profile IDs, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/cross-region-inference-support.html">Supported Regions and models for cross-region inference</a> in the Amazon Bedrock User Guide.</p> </li> <li> <p>If you use a provisioned model, specify the ARN of the Provisioned Throughput. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/prov-thru-use.html">Run inference using a Provisioned Throughput</a> in the Amazon Bedrock User Guide.</p> </li> <li> <p>If you use a custom model, first purchase Provisioned Throughput for it. Then specify the ARN of the resulting provisioned model. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-use.html">Use a custom model in Amazon Bedrock</a> in the Amazon Bedrock User Guide.</p> </li> <li> <p>To include a prompt that was defined in <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management.html">Prompt management</a>, specify the ARN of the prompt version to use.</p> </li> </ul> <p>The Converse API doesn't support <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-import-model.html">imported models</a>.</p>
    # @option params [Array<Types::Message>] :messages
    #   <p>The messages that you want to send to the model.</p>
    # @option params [Array<Types::SystemContentBlock>] :system
    #   <p>A prompt that provides instructions or context to the model about the task it should perform, or the persona it should adopt during the conversation.</p>
    # @option params [Types::InferenceConfiguration] :inference_config
    #   <p>Inference parameters to pass to the model. <code>Converse</code> and <code>ConverseStream</code> support a base set of inference parameters. If you need to pass additional parameters that the model supports, use the <code>additionalModelRequestFields</code> request field.</p>
    # @option params [Types::ToolConfiguration] :tool_config
    #   <p>Configuration information for the tools that the model can use when generating a response.</p> <p>For information about models that support streaming tool use, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/conversation-inference.html#conversation-inference-supported-models-features">Supported models and model features</a>.</p>
    # @option params [Types::GuardrailStreamConfiguration] :guardrail_config
    #   <p>Configuration information for a guardrail that you want to use in the request. If you include <code>guardContent</code> blocks in the <code>content</code> field in the <code>messages</code> field, the guardrail operates only on those messages. If you include no <code>guardContent</code> blocks, the guardrail operates on all messages in the request body and in any included prompt resource.</p>
    # @option params [JSON] :additional_model_request_fields
    #   <p>Additional inference parameters that the model supports, beyond the base set of inference parameters that <code>Converse</code> and <code>ConverseStream</code> support in the <code>inferenceConfig</code> field. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html">Model parameters</a>.</p>
    # @option params [Hash<String, Types::PromptVariableValues>] :prompt_variables
    #   <p>Contains a map of variables in a prompt from Prompt management to objects containing the values to fill in for them when running model invocation. This field is ignored if you don't specify a prompt resource in the <code>modelId</code> field.</p>
    # @option params [Array<String>] :additional_model_response_field_paths
    #   <p>Additional model parameters field paths to return in the response. <code>Converse</code> and <code>ConverseStream</code> return the requested fields as a JSON Pointer object in the <code>additionalModelResponseFields</code> field. The following is example JSON for <code>additionalModelResponseFieldPaths</code>.</p> <p> <code>[ "/stop_sequence" ]</code> </p> <p>For information about the JSON Pointer syntax, see the <a href="https://datatracker.ietf.org/doc/html/rfc6901">Internet Engineering Task Force (IETF)</a> documentation.</p> <p> <code>Converse</code> and <code>ConverseStream</code> reject an empty JSON Pointer or incorrectly structured JSON Pointer with a <code>400</code> error code. if the JSON Pointer is valid, but the requested field is not in the model response, it is ignored by <code>Converse</code>.</p>
    # @option params [Hash<String, String>] :request_metadata
    #   <p>Key-value pairs that you can use to filter invocation logs.</p>
    # @option params [Types::PerformanceConfiguration] :performance_config
    #   <p>Model performance settings for the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     model_id: "ConversationalModelId", # required
    #     messages: [
    #       {
    #         role: "user" # One of: ["user", "assistant"], # required
    #         content: [{ # required
    #           # One of:
    #           text: "String",
    #           image: {
    #             format: "png" # One of: ["png", "jpeg", "gif", "webp"], # required
    #             source: { # required
    #               # One of:
    #               bytes: "data",
    #               s3_location: {
    #                 uri: "S3Uri", # required
    #                 bucket_owner: "AccountId"
    #               }
    #             }
    #           },
    #           document: {
    #             format: "pdf" # One of: ["pdf", "csv", "doc", "docx", "xls", "xlsx", "html", "txt", "md"],
    #             name: "String", # required
    #             source: { # required
    #               # One of:
    #               bytes: "data",
    #               s3_location: {
    #                 uri: "S3Uri", # required
    #                 bucket_owner: "AccountId"
    #               },
    #               text: "String",
    #               content: [{
    #                 # One of:
    #                 text: "String"
    #               }]
    #             },
    #             context: "String",
    #             citations: {
    #               enabled: false, # required
    #             }
    #           },
    #           video: {
    #             format: "mkv" # One of: ["mkv", "mov", "mp4", "webm", "flv", "mpeg", "mpg", "wmv", "three_gp"], # required
    #             source: { # required
    #               # One of:
    #               bytes: "data",
    #               s3_location: {
    #                 uri: "S3Uri", # required
    #                 bucket_owner: "AccountId"
    #               }
    #             }
    #           },
    #           tool_use: {
    #             tool_use_id: "ToolUseId", # required
    #             name: "ToolName", # required
    #             input: ""null"", # required
    #           },
    #           tool_result: {
    #             tool_use_id: "ToolUseId", # required
    #             content: [{ # required
    #               # One of:
    #               json: ""null"",
    #               text: "String",
    #               image: {
    #                 format: "png" # One of: ["png", "jpeg", "gif", "webp"], # required
    #                 source: { # required
    #                   # One of:
    #                   bytes: "data",
    #                   s3_location: {
    #                     uri: "S3Uri", # required
    #                     bucket_owner: "AccountId"
    #                   }
    #                 }
    #               },
    #               document: {
    #                 format: "pdf" # One of: ["pdf", "csv", "doc", "docx", "xls", "xlsx", "html", "txt", "md"],
    #                 name: "String", # required
    #                 source: { # required
    #                   # One of:
    #                   bytes: "data",
    #                   s3_location: {
    #                     uri: "S3Uri", # required
    #                     bucket_owner: "AccountId"
    #                   },
    #                   text: "String",
    #                   content: [{
    #                     # One of:
    #                     text: "String"
    #                   }]
    #                 },
    #                 context: "String",
    #                 citations: {
    #                   enabled: false, # required
    #                 }
    #               },
    #               video: {
    #                 format: "mkv" # One of: ["mkv", "mov", "mp4", "webm", "flv", "mpeg", "mpg", "wmv", "three_gp"], # required
    #                 source: { # required
    #                   # One of:
    #                   bytes: "data",
    #                   s3_location: {
    #                     uri: "S3Uri", # required
    #                     bucket_owner: "AccountId"
    #                   }
    #                 }
    #               }
    #             }],
    #             status: "success" # One of: ["success", "error"]
    #           },
    #           guard_content: {
    #             # One of:
    #             text: {
    #               text: "String", # required
    #               qualifiers: ["grounding_source" # One of: ["grounding_source", "query", "guard_content"]]
    #             },
    #             image: {
    #               format: "png" # One of: ["png", "jpeg"], # required
    #               source: { # required
    #                 # One of:
    #                 bytes: "data"
    #               }
    #             }
    #           },
    #           cache_point: {
    #             type: "default" # One of: ["default"], # required
    #           },
    #           reasoning_content: {
    #             # One of:
    #             reasoning_text: {
    #               text: "String", # required
    #               signature: "String"
    #             },
    #             redacted_content: "data"
    #           },
    #           citations_content: {
    #             content: [{
    #               # One of:
    #               text: "String"
    #             }],
    #             citations: [
    #               {
    #                 title: "String",
    #                 source_content: [{
    #                   # One of:
    #                   text: "String"
    #                 }],
    #                 location: {
    #                   # One of:
    #                   document_char: {
    #                     document_index: 1,
    #                     start: 1,
    #                     end: 1
    #                   },
    #                   document_page: {
    #                     document_index: 1,
    #                     start: 1,
    #                     end: 1
    #                   },
    #                   document_chunk: {
    #                     document_index: 1,
    #                     start: 1,
    #                     end: 1
    #                   }
    #                 }
    #               }
    #             ]
    #           }
    #         }]
    #       }
    #     ],
    #     system: [{
    #       # One of:
    #       text: "NonEmptyString",
    #       guard_content: {
    #         # One of:
    #         text: {
    #           text: "String", # required
    #           qualifiers: ["grounding_source" # One of: ["grounding_source", "query", "guard_content"]]
    #         },
    #         image: {
    #           format: "png" # One of: ["png", "jpeg"], # required
    #           source: { # required
    #             # One of:
    #             bytes: "data"
    #           }
    #         }
    #       },
    #       cache_point: {
    #         type: "default" # One of: ["default"], # required
    #       }
    #     }],
    #     inference_config: {
    #       max_tokens: 1,
    #       temperature: 1.0,
    #       top_p: 1.0,
    #       stop_sequences: ["NonEmptyString"]
    #     },
    #     tool_config: {
    #       tools: [{ # required
    #         # One of:
    #         tool_spec: {
    #           name: "ToolName", # required
    #           description: "NonEmptyString",
    #           input_schema: { # required
    #             # One of:
    #             json: ""null""
    #           }
    #         },
    #         cache_point: {
    #           type: "default" # One of: ["default"], # required
    #         }
    #       }],
    #       tool_choice: {
    #         # One of:
    #         auto: {
    #         },
    #         any: {
    #         },
    #         tool: {
    #           name: "ToolName", # required
    #         }
    #       }
    #     },
    #     guardrail_config: {
    #       guardrail_identifier: "GuardrailIdentifier", # required
    #       guardrail_version: "GuardrailVersion", # required
    #       trace: "enabled" # One of: ["enabled", "disabled", "enabled_full"],
    #       stream_processing_mode: "sync" # One of: ["sync", "async"]
    #     },
    #     additional_model_request_fields: ""null"",
    #     prompt_variables: {
    #       "String" => {
    #         # One of:
    #         text: "String"
    #       }
    #     },
    #     additional_model_response_field_paths: ["String"],
    #     request_metadata: {
    #       "String" => "String"
    #     },
    #     performance_config: {
    #       latency: "standard" # One of: ["standard", "optimized"]
    #     }
    #   }
    #   options = {}
    #   response = client.converse_stream(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     stream: {
    #       # One of:
    #       message_start: {
    #         role: "user" # One of: ["user", "assistant"], # required
    #       },
    #       content_block_start: {
    #         start: { # required
    #           # One of:
    #           tool_use: {
    #             tool_use_id: "ToolUseId", # required
    #             name: "ToolName", # required
    #           }
    #         },
    #         content_block_index: 1, # required
    #       },
    #       content_block_delta: {
    #         delta: { # required
    #           # One of:
    #           text: "String",
    #           tool_use: {
    #             input: "String", # required
    #           },
    #           reasoning_content: {
    #             # One of:
    #             text: "String",
    #             redacted_content: "data",
    #             signature: "String"
    #           },
    #           citation: {
    #             title: "String",
    #             source_content: [
    #               {
    #                 text: "String"
    #               }
    #             ],
    #             location: {
    #               # One of:
    #               document_char: {
    #                 document_index: 1,
    #                 start: 1,
    #                 end: 1
    #               },
    #               document_page: {
    #                 document_index: 1,
    #                 start: 1,
    #                 end: 1
    #               },
    #               document_chunk: {
    #                 document_index: 1,
    #                 start: 1,
    #                 end: 1
    #               }
    #             }
    #           }
    #         },
    #         content_block_index: 1, # required
    #       },
    #       content_block_stop: {
    #         content_block_index: 1, # required
    #       },
    #       message_stop: {
    #         stop_reason: "end_turn" # One of: ["end_turn", "tool_use", "max_tokens", "stop_sequence", "guardrail_intervened", "content_filtered", "model_context_window_exceeded"], # required
    #         additional_model_response_fields: ""null""
    #       },
    #       metadata: {
    #         usage: { # required
    #           input_tokens: 1, # required
    #           output_tokens: 1, # required
    #           total_tokens: 1, # required
    #           cache_read_input_tokens: 1,
    #           cache_write_input_tokens: 1
    #         },
    #         metrics: { # required
    #           latency_ms: 1, # required
    #         },
    #         trace: {
    #           guardrail: {
    #             model_output: ["GuardrailOutputText"],
    #             input_assessment: {
    #               "String" => {
    #                 topic_policy: {
    #                   topics: [ # required
    #                     {
    #                       name: "String", # required
    #                       type: "DENY" # One of: ["DENY"], # required
    #                       action: "BLOCKED" # One of: ["BLOCKED", "NONE"], # required
    #                       detected: false
    #                     }
    #                   ]
    #                 },
    #                 content_policy: {
    #                   filters: [ # required
    #                     {
    #                       type: "INSULTS" # One of: ["INSULTS", "HATE", "SEXUAL", "VIOLENCE", "MISCONDUCT", "PROMPT_ATTACK"], # required
    #                       confidence: "NONE" # One of: ["NONE", "LOW", "MEDIUM", "HIGH"], # required
    #                       filter_strength: "NONE" # One of: ["NONE", "LOW", "MEDIUM", "HIGH"],
    #                       action: "BLOCKED" # One of: ["BLOCKED", "NONE"], # required
    #                       detected: false
    #                     }
    #                   ]
    #                 },
    #                 word_policy: {
    #                   custom_words: [ # required
    #                     {
    #                       match: "String", # required
    #                       action: "BLOCKED" # One of: ["BLOCKED", "NONE"], # required
    #                       detected: false
    #                     }
    #                   ],
    #                   managed_word_lists: [ # required
    #                     {
    #                       match: "String", # required
    #                       type: "PROFANITY" # One of: ["PROFANITY"], # required
    #                       action: "BLOCKED" # One of: ["BLOCKED", "NONE"], # required
    #                       detected: false
    #                     }
    #                   ]
    #                 },
    #                 sensitive_information_policy: {
    #                   pii_entities: [ # required
    #                     {
    #                       match: "String", # required
    #                       type: "ADDRESS" # One of: ["ADDRESS", "AGE", "AWS_ACCESS_KEY", "AWS_SECRET_KEY", "CA_HEALTH_NUMBER", "CA_SOCIAL_INSURANCE_NUMBER", "CREDIT_DEBIT_CARD_CVV", "CREDIT_DEBIT_CARD_EXPIRY", "CREDIT_DEBIT_CARD_NUMBER", "DRIVER_ID", "EMAIL", "INTERNATIONAL_BANK_ACCOUNT_NUMBER", "IP_ADDRESS", "LICENSE_PLATE", "MAC_ADDRESS", "NAME", "PASSWORD", "PHONE", "PIN", "SWIFT_CODE", "UK_NATIONAL_HEALTH_SERVICE_NUMBER", "UK_NATIONAL_INSURANCE_NUMBER", "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER", "URL", "USERNAME", "US_BANK_ACCOUNT_NUMBER", "US_BANK_ROUTING_NUMBER", "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER", "US_PASSPORT_NUMBER", "US_SOCIAL_SECURITY_NUMBER", "VEHICLE_IDENTIFICATION_NUMBER"], # required
    #                       action: "ANONYMIZED" # One of: ["ANONYMIZED", "BLOCKED", "NONE"], # required
    #                       detected: false
    #                     }
    #                   ],
    #                   regexes: [ # required
    #                     {
    #                       name: "String",
    #                       match: "String",
    #                       regex: "String",
    #                       action: "ANONYMIZED" # One of: ["ANONYMIZED", "BLOCKED", "NONE"], # required
    #                       detected: false
    #                     }
    #                   ]
    #                 },
    #                 contextual_grounding_policy: {
    #                   filters: [
    #                     {
    #                       type: "GROUNDING" # One of: ["GROUNDING", "RELEVANCE"], # required
    #                       threshold: 1.0, # required
    #                       score: 1.0, # required
    #                       action: "BLOCKED" # One of: ["BLOCKED", "NONE"], # required
    #                       detected: false
    #                     }
    #                   ]
    #                 },
    #                 automated_reasoning_policy: {
    #                   findings: [{
    #                     # One of:
    #                     valid: {
    #                       translation: {
    #                         premises: [
    #                           {
    #                             logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                             natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                           }
    #                         ],
    #                         claims: [
    #                           {
    #                             logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                             natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                           }
    #                         ],
    #                         untranslated_premises: [
    #                           {
    #                             text: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                           }
    #                         ],
    #                         untranslated_claims: [
    #                           {
    #                             text: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                           }
    #                         ],
    #                         confidence: 1.0
    #                       },
    #                       claims_true_scenario: {
    #                         statements: [
    #                           {
    #                             logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                             natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                           }
    #                         ]
    #                       },
    #                       supporting_rules: [
    #                         {
    #                           identifier: "AutomatedReasoningRuleIdentifier",
    #                           policy_version_arn: "GuardrailAutomatedReasoningPolicyVersionArn"
    #                         }
    #                       ],
    #                       logic_warning: {
    #                         type: "ALWAYS_FALSE" # One of: ["ALWAYS_FALSE", "ALWAYS_TRUE"],
    #                         premises: [
    #                           {
    #                             logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                             natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                           }
    #                         ],
    #                         claims: [
    #                           {
    #                             logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                             natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                           }
    #                         ]
    #                       }
    #                     },
    #                     invalid: {
    #                       translation: {
    #                         premises: [
    #                           {
    #                             logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                             natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                           }
    #                         ],
    #                         claims: [
    #                           {
    #                             logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                             natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                           }
    #                         ],
    #                         untranslated_premises: [
    #                           {
    #                             text: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                           }
    #                         ],
    #                         untranslated_claims: [
    #                           {
    #                             text: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                           }
    #                         ],
    #                         confidence: 1.0
    #                       },
    #                       contradicting_rules: [
    #                         {
    #                           identifier: "AutomatedReasoningRuleIdentifier",
    #                           policy_version_arn: "GuardrailAutomatedReasoningPolicyVersionArn"
    #                         }
    #                       ],
    #                       logic_warning: {
    #                         type: "ALWAYS_FALSE" # One of: ["ALWAYS_FALSE", "ALWAYS_TRUE"],
    #                         premises: [
    #                           {
    #                             logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                             natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                           }
    #                         ],
    #                         claims: [
    #                           {
    #                             logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                             natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                           }
    #                         ]
    #                       }
    #                     },
    #                     satisfiable: {
    #                       translation: {
    #                         premises: [
    #                           {
    #                             logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                             natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                           }
    #                         ],
    #                         claims: [
    #                           {
    #                             logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                             natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                           }
    #                         ],
    #                         untranslated_premises: [
    #                           {
    #                             text: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                           }
    #                         ],
    #                         untranslated_claims: [
    #                           {
    #                             text: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                           }
    #                         ],
    #                         confidence: 1.0
    #                       },
    #                       claims_true_scenario: {
    #                         statements: [
    #                           {
    #                             logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                             natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                           }
    #                         ]
    #                       },
    #                       claims_false_scenario: {
    #                         statements: [
    #                           {
    #                             logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                             natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                           }
    #                         ]
    #                       },
    #                       logic_warning: {
    #                         type: "ALWAYS_FALSE" # One of: ["ALWAYS_FALSE", "ALWAYS_TRUE"],
    #                         premises: [
    #                           {
    #                             logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                             natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                           }
    #                         ],
    #                         claims: [
    #                           {
    #                             logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                             natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                           }
    #                         ]
    #                       }
    #                     },
    #                     impossible: {
    #                       translation: {
    #                         premises: [
    #                           {
    #                             logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                             natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                           }
    #                         ],
    #                         claims: [
    #                           {
    #                             logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                             natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                           }
    #                         ],
    #                         untranslated_premises: [
    #                           {
    #                             text: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                           }
    #                         ],
    #                         untranslated_claims: [
    #                           {
    #                             text: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                           }
    #                         ],
    #                         confidence: 1.0
    #                       },
    #                       contradicting_rules: [
    #                         {
    #                           identifier: "AutomatedReasoningRuleIdentifier",
    #                           policy_version_arn: "GuardrailAutomatedReasoningPolicyVersionArn"
    #                         }
    #                       ],
    #                       logic_warning: {
    #                         type: "ALWAYS_FALSE" # One of: ["ALWAYS_FALSE", "ALWAYS_TRUE"],
    #                         premises: [
    #                           {
    #                             logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                             natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                           }
    #                         ],
    #                         claims: [
    #                           {
    #                             logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                             natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                           }
    #                         ]
    #                       }
    #                     },
    #                     translation_ambiguous: {
    #                       options: [
    #                         {
    #                           translations: [
    #                             {
    #                               premises: [
    #                                 {
    #                                   logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                                   natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                                 }
    #                               ],
    #                               claims: [
    #                                 {
    #                                   logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                                   natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                                 }
    #                               ],
    #                               untranslated_premises: [
    #                                 {
    #                                   text: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                                 }
    #                               ],
    #                               untranslated_claims: [
    #                                 {
    #                                   text: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                                 }
    #                               ],
    #                               confidence: 1.0
    #                             }
    #                           ]
    #                         }
    #                       ],
    #                       difference_scenarios: [
    #                         {
    #                           statements: [
    #                             {
    #                               logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                               natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                             }
    #                           ]
    #                         }
    #                       ]
    #                     },
    #                     too_complex: {
    #                     },
    #                     no_translations: {
    #                     }
    #                   }]
    #                 },
    #                 invocation_metrics: {
    #                   guardrail_processing_latency: 1,
    #                   usage: {
    #                     topic_policy_units: 1, # required
    #                     content_policy_units: 1, # required
    #                     word_policy_units: 1, # required
    #                     sensitive_information_policy_units: 1, # required
    #                     sensitive_information_policy_free_units: 1, # required
    #                     contextual_grounding_policy_units: 1, # required
    #                     content_policy_image_units: 1,
    #                     automated_reasoning_policy_units: 1,
    #                     automated_reasoning_policies: 1
    #                   },
    #                   guardrail_coverage: {
    #                     text_characters: {
    #                       guarded: 1,
    #                       total: 1
    #                     },
    #                     images: {
    #                       guarded: 1,
    #                       total: 1
    #                     }
    #                   }
    #                 }
    #               }
    #             },
    #             output_assessments: {
    #               "String" => [
    #                 {
    #                   topic_policy: {
    #                     topics: [ # required
    #                       {
    #                         name: "String", # required
    #                         type: "DENY" # One of: ["DENY"], # required
    #                         action: "BLOCKED" # One of: ["BLOCKED", "NONE"], # required
    #                         detected: false
    #                       }
    #                     ]
    #                   },
    #                   content_policy: {
    #                     filters: [ # required
    #                       {
    #                         type: "INSULTS" # One of: ["INSULTS", "HATE", "SEXUAL", "VIOLENCE", "MISCONDUCT", "PROMPT_ATTACK"], # required
    #                         confidence: "NONE" # One of: ["NONE", "LOW", "MEDIUM", "HIGH"], # required
    #                         filter_strength: "NONE" # One of: ["NONE", "LOW", "MEDIUM", "HIGH"],
    #                         action: "BLOCKED" # One of: ["BLOCKED", "NONE"], # required
    #                         detected: false
    #                       }
    #                     ]
    #                   },
    #                   word_policy: {
    #                     custom_words: [ # required
    #                       {
    #                         match: "String", # required
    #                         action: "BLOCKED" # One of: ["BLOCKED", "NONE"], # required
    #                         detected: false
    #                       }
    #                     ],
    #                     managed_word_lists: [ # required
    #                       {
    #                         match: "String", # required
    #                         type: "PROFANITY" # One of: ["PROFANITY"], # required
    #                         action: "BLOCKED" # One of: ["BLOCKED", "NONE"], # required
    #                         detected: false
    #                       }
    #                     ]
    #                   },
    #                   sensitive_information_policy: {
    #                     pii_entities: [ # required
    #                       {
    #                         match: "String", # required
    #                         type: "ADDRESS" # One of: ["ADDRESS", "AGE", "AWS_ACCESS_KEY", "AWS_SECRET_KEY", "CA_HEALTH_NUMBER", "CA_SOCIAL_INSURANCE_NUMBER", "CREDIT_DEBIT_CARD_CVV", "CREDIT_DEBIT_CARD_EXPIRY", "CREDIT_DEBIT_CARD_NUMBER", "DRIVER_ID", "EMAIL", "INTERNATIONAL_BANK_ACCOUNT_NUMBER", "IP_ADDRESS", "LICENSE_PLATE", "MAC_ADDRESS", "NAME", "PASSWORD", "PHONE", "PIN", "SWIFT_CODE", "UK_NATIONAL_HEALTH_SERVICE_NUMBER", "UK_NATIONAL_INSURANCE_NUMBER", "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER", "URL", "USERNAME", "US_BANK_ACCOUNT_NUMBER", "US_BANK_ROUTING_NUMBER", "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER", "US_PASSPORT_NUMBER", "US_SOCIAL_SECURITY_NUMBER", "VEHICLE_IDENTIFICATION_NUMBER"], # required
    #                         action: "ANONYMIZED" # One of: ["ANONYMIZED", "BLOCKED", "NONE"], # required
    #                         detected: false
    #                       }
    #                     ],
    #                     regexes: [ # required
    #                       {
    #                         name: "String",
    #                         match: "String",
    #                         regex: "String",
    #                         action: "ANONYMIZED" # One of: ["ANONYMIZED", "BLOCKED", "NONE"], # required
    #                         detected: false
    #                       }
    #                     ]
    #                   },
    #                   contextual_grounding_policy: {
    #                     filters: [
    #                       {
    #                         type: "GROUNDING" # One of: ["GROUNDING", "RELEVANCE"], # required
    #                         threshold: 1.0, # required
    #                         score: 1.0, # required
    #                         action: "BLOCKED" # One of: ["BLOCKED", "NONE"], # required
    #                         detected: false
    #                       }
    #                     ]
    #                   },
    #                   automated_reasoning_policy: {
    #                     findings: [{
    #                       # One of:
    #                       valid: {
    #                         translation: {
    #                           premises: [
    #                             {
    #                               logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                               natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                             }
    #                           ],
    #                           claims: [
    #                             {
    #                               logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                               natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                             }
    #                           ],
    #                           untranslated_premises: [
    #                             {
    #                               text: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                             }
    #                           ],
    #                           untranslated_claims: [
    #                             {
    #                               text: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                             }
    #                           ],
    #                           confidence: 1.0
    #                         },
    #                         claims_true_scenario: {
    #                           statements: [
    #                             {
    #                               logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                               natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                             }
    #                           ]
    #                         },
    #                         supporting_rules: [
    #                           {
    #                             identifier: "AutomatedReasoningRuleIdentifier",
    #                             policy_version_arn: "GuardrailAutomatedReasoningPolicyVersionArn"
    #                           }
    #                         ],
    #                         logic_warning: {
    #                           type: "ALWAYS_FALSE" # One of: ["ALWAYS_FALSE", "ALWAYS_TRUE"],
    #                           premises: [
    #                             {
    #                               logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                               natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                             }
    #                           ],
    #                           claims: [
    #                             {
    #                               logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                               natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                             }
    #                           ]
    #                         }
    #                       },
    #                       invalid: {
    #                         translation: {
    #                           premises: [
    #                             {
    #                               logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                               natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                             }
    #                           ],
    #                           claims: [
    #                             {
    #                               logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                               natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                             }
    #                           ],
    #                           untranslated_premises: [
    #                             {
    #                               text: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                             }
    #                           ],
    #                           untranslated_claims: [
    #                             {
    #                               text: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                             }
    #                           ],
    #                           confidence: 1.0
    #                         },
    #                         contradicting_rules: [
    #                           {
    #                             identifier: "AutomatedReasoningRuleIdentifier",
    #                             policy_version_arn: "GuardrailAutomatedReasoningPolicyVersionArn"
    #                           }
    #                         ],
    #                         logic_warning: {
    #                           type: "ALWAYS_FALSE" # One of: ["ALWAYS_FALSE", "ALWAYS_TRUE"],
    #                           premises: [
    #                             {
    #                               logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                               natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                             }
    #                           ],
    #                           claims: [
    #                             {
    #                               logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                               natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                             }
    #                           ]
    #                         }
    #                       },
    #                       satisfiable: {
    #                         translation: {
    #                           premises: [
    #                             {
    #                               logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                               natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                             }
    #                           ],
    #                           claims: [
    #                             {
    #                               logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                               natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                             }
    #                           ],
    #                           untranslated_premises: [
    #                             {
    #                               text: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                             }
    #                           ],
    #                           untranslated_claims: [
    #                             {
    #                               text: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                             }
    #                           ],
    #                           confidence: 1.0
    #                         },
    #                         claims_true_scenario: {
    #                           statements: [
    #                             {
    #                               logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                               natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                             }
    #                           ]
    #                         },
    #                         claims_false_scenario: {
    #                           statements: [
    #                             {
    #                               logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                               natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                             }
    #                           ]
    #                         },
    #                         logic_warning: {
    #                           type: "ALWAYS_FALSE" # One of: ["ALWAYS_FALSE", "ALWAYS_TRUE"],
    #                           premises: [
    #                             {
    #                               logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                               natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                             }
    #                           ],
    #                           claims: [
    #                             {
    #                               logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                               natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                             }
    #                           ]
    #                         }
    #                       },
    #                       impossible: {
    #                         translation: {
    #                           premises: [
    #                             {
    #                               logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                               natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                             }
    #                           ],
    #                           claims: [
    #                             {
    #                               logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                               natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                             }
    #                           ],
    #                           untranslated_premises: [
    #                             {
    #                               text: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                             }
    #                           ],
    #                           untranslated_claims: [
    #                             {
    #                               text: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                             }
    #                           ],
    #                           confidence: 1.0
    #                         },
    #                         contradicting_rules: [
    #                           {
    #                             identifier: "AutomatedReasoningRuleIdentifier",
    #                             policy_version_arn: "GuardrailAutomatedReasoningPolicyVersionArn"
    #                           }
    #                         ],
    #                         logic_warning: {
    #                           type: "ALWAYS_FALSE" # One of: ["ALWAYS_FALSE", "ALWAYS_TRUE"],
    #                           premises: [
    #                             {
    #                               logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                               natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                             }
    #                           ],
    #                           claims: [
    #                             {
    #                               logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                               natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                             }
    #                           ]
    #                         }
    #                       },
    #                       translation_ambiguous: {
    #                         options: [
    #                           {
    #                             translations: [
    #                               {
    #                                 premises: [
    #                                   {
    #                                     logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                                     natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                                   }
    #                                 ],
    #                                 claims: [
    #                                   {
    #                                     logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                                     natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                                   }
    #                                 ],
    #                                 untranslated_premises: [
    #                                   {
    #                                     text: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                                   }
    #                                 ],
    #                                 untranslated_claims: [
    #                                   {
    #                                     text: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                                   }
    #                                 ],
    #                                 confidence: 1.0
    #                               }
    #                             ]
    #                           }
    #                         ],
    #                         difference_scenarios: [
    #                           {
    #                             statements: [
    #                               {
    #                                 logic: "GuardrailAutomatedReasoningStatementLogicContent",
    #                                 natural_language: "GuardrailAutomatedReasoningStatementNaturalLanguageContent"
    #                               }
    #                             ]
    #                           }
    #                         ]
    #                       },
    #                       too_complex: {
    #                       },
    #                       no_translations: {
    #                       }
    #                     }]
    #                   },
    #                   invocation_metrics: {
    #                     guardrail_processing_latency: 1,
    #                     usage: {
    #                       topic_policy_units: 1, # required
    #                       content_policy_units: 1, # required
    #                       word_policy_units: 1, # required
    #                       sensitive_information_policy_units: 1, # required
    #                       sensitive_information_policy_free_units: 1, # required
    #                       contextual_grounding_policy_units: 1, # required
    #                       content_policy_image_units: 1,
    #                       automated_reasoning_policy_units: 1,
    #                       automated_reasoning_policies: 1
    #                     },
    #                     guardrail_coverage: {
    #                       text_characters: {
    #                         guarded: 1,
    #                         total: 1
    #                       },
    #                       images: {
    #                         guarded: 1,
    #                         total: 1
    #                       }
    #                     }
    #                   }
    #                 }
    #               ]
    #             },
    #             action_reason: "String"
    #           },
    #           prompt_router: {
    #             invoked_model_id: "InvokedModelId"
    #           }
    #         },
    #         performance_config: {
    #           latency: "standard" # One of: ["standard", "optimized"]
    #         }
    #       },
    #       internal_server_exception: {
    #         message: "NonBlankString"
    #       },
    #       model_stream_error_exception: {
    #         message: "NonBlankString",
    #         original_status_code: 1,
    #         original_message: "NonBlankString"
    #       },
    #       validation_exception: {
    #         message: "NonBlankString"
    #       },
    #       throttling_exception: {
    #         message: "NonBlankString"
    #       },
    #       service_unavailable_exception: {
    #         message: "NonBlankString"
    #       }
    #     }
    #   }
    # @return [Types::ConverseStreamResponse]
    def converse_stream(params = {}, options = {})
      request = build_request(:converse_stream, params)
      request.send_request(options)
    end

    # <p>Returns the token count for a given inference request. This operation helps you estimate token usage before sending requests to foundation models by returning the token count that would be used if the same input were sent to the model in an inference request.</p> <p>Token counting is model-specific because different models use different tokenization strategies. The token count returned by this operation will match the token count that would be charged if the same input were sent to the model in an <code>InvokeModel</code> or <code>Converse</code> request.</p> <p>You can use this operation to:</p> <ul> <li> <p>Estimate costs before sending inference requests.</p> </li> <li> <p>Optimize prompts to fit within token limits.</p> </li> <li> <p>Plan for token usage in your applications.</p> </li> </ul> <p>This operation accepts the same input formats as <code>InvokeModel</code> and <code>Converse</code>, allowing you to count tokens for both raw text inputs and structured conversation formats.</p> <p>The following operations are related to <code>CountTokens</code>:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/API/API_runtime_InvokeModel.html">InvokeModel</a> - Sends inference requests to foundation models</p> </li> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/API/API_runtime_Converse.html">Converse</a> - Sends conversation-based inference requests to foundation models</p> </li> </ul>
    # @param [Hash, Types::CountTokensRequest] params
    # @option params [String] :model_id
    #   <p>The unique identifier or ARN of the foundation model to use for token counting. Each model processes tokens differently, so the token count is specific to the model you specify.</p>
    # @option params [Types::CountTokensInput] :input
    #   <p>The input for which to count tokens. The structure of this parameter depends on whether you're counting tokens for an <code>InvokeModel</code> or <code>Converse</code> request:</p> <ul> <li> <p>For <code>InvokeModel</code> requests, provide the request body in the <code>invokeModel</code> field</p> </li> <li> <p>For <code>Converse</code> requests, provide the messages and system content in the <code>converse</code> field</p> </li> </ul> <p>The input format must be compatible with the model specified in the <code>modelId</code> parameter.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     model_id: "FoundationModelVersionIdentifier", # required
    #     input: { # required
    #       # One of:
    #       invoke_model: {
    #         body: "data", # required
    #       },
    #       converse: {
    #         messages: [
    #           {
    #             role: "user" # One of: ["user", "assistant"], # required
    #             content: [{ # required
    #               # One of:
    #               text: "String",
    #               image: {
    #                 format: "png" # One of: ["png", "jpeg", "gif", "webp"], # required
    #                 source: { # required
    #                   # One of:
    #                   bytes: "data",
    #                   s3_location: {
    #                     uri: "S3Uri", # required
    #                     bucket_owner: "AccountId"
    #                   }
    #                 }
    #               },
    #               document: {
    #                 format: "pdf" # One of: ["pdf", "csv", "doc", "docx", "xls", "xlsx", "html", "txt", "md"],
    #                 name: "String", # required
    #                 source: { # required
    #                   # One of:
    #                   bytes: "data",
    #                   s3_location: {
    #                     uri: "S3Uri", # required
    #                     bucket_owner: "AccountId"
    #                   },
    #                   text: "String",
    #                   content: [{
    #                     # One of:
    #                     text: "String"
    #                   }]
    #                 },
    #                 context: "String",
    #                 citations: {
    #                   enabled: false, # required
    #                 }
    #               },
    #               video: {
    #                 format: "mkv" # One of: ["mkv", "mov", "mp4", "webm", "flv", "mpeg", "mpg", "wmv", "three_gp"], # required
    #                 source: { # required
    #                   # One of:
    #                   bytes: "data",
    #                   s3_location: {
    #                     uri: "S3Uri", # required
    #                     bucket_owner: "AccountId"
    #                   }
    #                 }
    #               },
    #               tool_use: {
    #                 tool_use_id: "ToolUseId", # required
    #                 name: "ToolName", # required
    #                 input: ""null"", # required
    #               },
    #               tool_result: {
    #                 tool_use_id: "ToolUseId", # required
    #                 content: [{ # required
    #                   # One of:
    #                   json: ""null"",
    #                   text: "String",
    #                   image: {
    #                     format: "png" # One of: ["png", "jpeg", "gif", "webp"], # required
    #                     source: { # required
    #                       # One of:
    #                       bytes: "data",
    #                       s3_location: {
    #                         uri: "S3Uri", # required
    #                         bucket_owner: "AccountId"
    #                       }
    #                     }
    #                   },
    #                   document: {
    #                     format: "pdf" # One of: ["pdf", "csv", "doc", "docx", "xls", "xlsx", "html", "txt", "md"],
    #                     name: "String", # required
    #                     source: { # required
    #                       # One of:
    #                       bytes: "data",
    #                       s3_location: {
    #                         uri: "S3Uri", # required
    #                         bucket_owner: "AccountId"
    #                       },
    #                       text: "String",
    #                       content: [{
    #                         # One of:
    #                         text: "String"
    #                       }]
    #                     },
    #                     context: "String",
    #                     citations: {
    #                       enabled: false, # required
    #                     }
    #                   },
    #                   video: {
    #                     format: "mkv" # One of: ["mkv", "mov", "mp4", "webm", "flv", "mpeg", "mpg", "wmv", "three_gp"], # required
    #                     source: { # required
    #                       # One of:
    #                       bytes: "data",
    #                       s3_location: {
    #                         uri: "S3Uri", # required
    #                         bucket_owner: "AccountId"
    #                       }
    #                     }
    #                   }
    #                 }],
    #                 status: "success" # One of: ["success", "error"]
    #               },
    #               guard_content: {
    #                 # One of:
    #                 text: {
    #                   text: "String", # required
    #                   qualifiers: ["grounding_source" # One of: ["grounding_source", "query", "guard_content"]]
    #                 },
    #                 image: {
    #                   format: "png" # One of: ["png", "jpeg"], # required
    #                   source: { # required
    #                     # One of:
    #                     bytes: "data"
    #                   }
    #                 }
    #               },
    #               cache_point: {
    #                 type: "default" # One of: ["default"], # required
    #               },
    #               reasoning_content: {
    #                 # One of:
    #                 reasoning_text: {
    #                   text: "String", # required
    #                   signature: "String"
    #                 },
    #                 redacted_content: "data"
    #               },
    #               citations_content: {
    #                 content: [{
    #                   # One of:
    #                   text: "String"
    #                 }],
    #                 citations: [
    #                   {
    #                     title: "String",
    #                     source_content: [{
    #                       # One of:
    #                       text: "String"
    #                     }],
    #                     location: {
    #                       # One of:
    #                       document_char: {
    #                         document_index: 1,
    #                         start: 1,
    #                         end: 1
    #                       },
    #                       document_page: {
    #                         document_index: 1,
    #                         start: 1,
    #                         end: 1
    #                       },
    #                       document_chunk: {
    #                         document_index: 1,
    #                         start: 1,
    #                         end: 1
    #                       }
    #                     }
    #                   }
    #                 ]
    #               }
    #             }]
    #           }
    #         ],
    #         system: [{
    #           # One of:
    #           text: "NonEmptyString",
    #           guard_content: {
    #             # One of:
    #             text: {
    #               text: "String", # required
    #               qualifiers: ["grounding_source" # One of: ["grounding_source", "query", "guard_content"]]
    #             },
    #             image: {
    #               format: "png" # One of: ["png", "jpeg"], # required
    #               source: { # required
    #                 # One of:
    #                 bytes: "data"
    #               }
    #             }
    #           },
    #           cache_point: {
    #             type: "default" # One of: ["default"], # required
    #           }
    #         }]
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.count_tokens(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     input_tokens: 1, # required
    #   }
    # @return [Types::CountTokensResponse]
    def count_tokens(params = {}, options = {})
      request = build_request(:count_tokens, params)
      request.send_request(options)
    end

    # <p>Retrieve information about an asynchronous invocation.</p>
    # @param [Hash, Types::GetAsyncInvokeRequest] params
    # @option params [String] :invocation_arn
    #   <p>The invocation's ARN.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     invocation_arn: "InvocationArn", # required
    #   }
    #   options = {}
    #   response = client.get_async_invoke(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     invocation_arn: "InvocationArn", # required
    #     model_arn: "AsyncInvokeArn", # required
    #     client_request_token: "AsyncInvokeIdempotencyToken",
    #     status: "InProgress" # One of: ["InProgress", "Completed", "Failed"], # required
    #     failure_message: "AsyncInvokeMessage",
    #     submit_time: Time.now, # required
    #     last_modified_time: Time.now,
    #     end_time: Time.now,
    #     output_data_config: { # required
    #       # One of:
    #       s3_output_data_config: {
    #         s3_uri: "S3Uri", # required
    #         kms_key_id: "KmsKeyId",
    #         bucket_owner: "AccountId"
    #       }
    #     }
    #   }
    # @return [Types::GetAsyncInvokeResponse]
    def get_async_invoke(params = {}, options = {})
      request = build_request(:get_async_invoke, params)
      request.send_request(options)
    end

    # <p>Invokes the specified Amazon Bedrock model to run inference using the prompt and inference parameters provided in the request body. You use model inference to generate text, images, and embeddings.</p> <p>For example code, see <i>Invoke model code examples</i> in the <i>Amazon Bedrock User Guide</i>. </p> <p>This operation requires permission for the <code>bedrock:InvokeModel</code> action.</p> <important> <p>To deny all inference access to resources that you specify in the modelId field, you need to deny access to the <code>bedrock:InvokeModel</code> and <code>bedrock:InvokeModelWithResponseStream</code> actions. Doing this also denies access to the resource through the Converse API actions (<a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_Converse.html">Converse</a> and <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_ConverseStream.html">ConverseStream</a>). For more information see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/security_iam_id-based-policy-examples.html#security_iam_id-based-policy-examples-deny-inference">Deny access for inference on specific models</a>. </p> </important> <p>For troubleshooting some of the common errors you might encounter when using the <code>InvokeModel</code> API, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/troubleshooting-api-error-codes.html">Troubleshooting Amazon Bedrock API Error Codes</a> in the Amazon Bedrock User Guide</p>
    # @param [Hash, Types::InvokeModelRequest] params
    # @option params [String] :body
    #   <p>The prompt and inference parameters in the format specified in the <code>contentType</code> in the header. You must provide the body in JSON format. To see the format and content of the request and response bodies for different models, refer to <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html">Inference parameters</a>. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/api-methods-run.html">Run inference</a> in the Bedrock User Guide.</p>
    # @option params [String] :content_type
    #   <p>The MIME type of the input data in the request. You must specify <code>application/json</code>.</p>
    # @option params [String] :accept
    #   <p>The desired MIME type of the inference body in the response. The default value is <code>application/json</code>.</p>
    # @option params [String] :model_id
    #   <p>The unique identifier of the model to invoke to run inference.</p> <p>The <code>modelId</code> to provide depends on the type of model or throughput that you use:</p> <ul> <li> <p>If you use a base model, specify the model ID or its ARN. For a list of model IDs for base models, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/model-ids.html#model-ids-arns">Amazon Bedrock base model IDs (on-demand throughput)</a> in the Amazon Bedrock User Guide.</p> </li> <li> <p>If you use an inference profile, specify the inference profile ID or its ARN. For a list of inference profile IDs, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/cross-region-inference-support.html">Supported Regions and models for cross-region inference</a> in the Amazon Bedrock User Guide.</p> </li> <li> <p>If you use a provisioned model, specify the ARN of the Provisioned Throughput. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/prov-thru-use.html">Run inference using a Provisioned Throughput</a> in the Amazon Bedrock User Guide.</p> </li> <li> <p>If you use a custom model, specify the ARN of the custom model deployment (for on-demand inference) or the ARN of your provisioned model (for Provisioned Throughput). For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-use.html">Use a custom model in Amazon Bedrock</a> in the Amazon Bedrock User Guide.</p> </li> <li> <p>If you use an <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-import-model.html">imported model</a>, specify the ARN of the imported model. You can get the model ARN from a successful call to <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_CreateModelImportJob.html">CreateModelImportJob</a> or from the Imported models page in the Amazon Bedrock console.</p> </li> </ul>
    # @option params [String] :trace
    #   <p>Specifies whether to enable or disable the Bedrock trace. If enabled, you can see the full Bedrock trace.</p>
    # @option params [String] :guardrail_identifier
    #   <p>The unique identifier of the guardrail that you want to use. If you don't provide a value, no guardrail is applied to the invocation.</p> <p>An error will be thrown in the following situations.</p> <ul> <li> <p>You don't provide a guardrail identifier but you specify the <code>amazon-bedrock-guardrailConfig</code> field in the request body.</p> </li> <li> <p>You enable the guardrail but the <code>contentType</code> isn't <code>application/json</code>.</p> </li> <li> <p>You provide a guardrail identifier, but <code>guardrailVersion</code> isn't specified.</p> </li> </ul>
    # @option params [String] :guardrail_version
    #   <p>The version number for the guardrail. The value can also be <code>DRAFT</code>.</p>
    # @option params [String] :performance_config_latency
    #   <p>Model performance settings for the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     body: "data",
    #     content_type: "MimeType",
    #     accept: "MimeType",
    #     model_id: "InvokeModelIdentifier", # required
    #     trace: "ENABLED" # One of: ["ENABLED", "DISABLED", "ENABLED_FULL"],
    #     guardrail_identifier: "GuardrailIdentifier",
    #     guardrail_version: "GuardrailVersion",
    #     performance_config_latency: "standard" # One of: ["standard", "optimized"]
    #   }
    #   options = {}
    #   response = client.invoke_model(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     body: "data", # required
    #     content_type: "MimeType", # required
    #     performance_config_latency: "standard" # One of: ["standard", "optimized"]
    #   }
    # @return [Types::InvokeModelResponse]
    def invoke_model(params = {}, options = {})
      request = build_request(:invoke_model, params)
      request.send_request(options)
    end

    # <p>Invoke the specified Amazon Bedrock model to run inference using the bidirectional stream. The response is returned in a stream that remains open for 8 minutes. A single session can contain multiple prompts and responses from the model. The prompts to the model are provided as audio files and the model's responses are spoken back to the user and transcribed.</p> <p>It is possible for users to interrupt the model's response with a new prompt, which will halt the response speech. The model will retain contextual awareness of the conversation while pivoting to respond to the new prompt.</p>
    # @param [Hash, Types::InvokeModelWithBidirectionalStreamRequest] params
    # @option params [String] :model_id
    #   <p>The model ID or ARN of the model ID to use. Currently, only <code>amazon.nova-sonic-v1:0</code> is supported.</p>
    # @option params [Types::InvokeModelWithBidirectionalStreamInput] :body
    #   <p>The prompt and inference parameters in the format specified in the <code>BidirectionalInputPayloadPart</code> in the header. You must provide the body in JSON format. To see the format and content of the request and response bodies for different models, refer to <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html">Inference parameters</a>. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/api-methods-run.html">Run inference</a> in the Bedrock User Guide.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     model_id: "InvokeModelIdentifier", # required
    #     body: { # required
    #       # One of:
    #       chunk: {
    #         bytes: "data"
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.invoke_model_with_bidirectional_stream(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     body: { # required
    #       # One of:
    #       chunk: {
    #         bytes: "data"
    #       },
    #       internal_server_exception: {
    #         message: "NonBlankString"
    #       },
    #       model_stream_error_exception: {
    #         message: "NonBlankString",
    #         original_status_code: 1,
    #         original_message: "NonBlankString"
    #       },
    #       validation_exception: {
    #         message: "NonBlankString"
    #       },
    #       throttling_exception: {
    #         message: "NonBlankString"
    #       },
    #       model_timeout_exception: {
    #         message: "NonBlankString"
    #       },
    #       service_unavailable_exception: {
    #         message: "NonBlankString"
    #       }
    #     }
    #   }
    # @return [Types::InvokeModelWithBidirectionalStreamResponse]
    def invoke_model_with_bidirectional_stream(params = {}, options = {})
      request = build_request(:invoke_model_with_bidirectional_stream, params)
      request.send_request(options)
    end

    # <p>Invoke the specified Amazon Bedrock model to run inference using the prompt and inference parameters provided in the request body. The response is returned in a stream.</p> <p>To see if a model supports streaming, call <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_GetFoundationModel.html">GetFoundationModel</a> and check the <code>responseStreamingSupported</code> field in the response.</p> <note> <p>The CLI doesn't support streaming operations in Amazon Bedrock, including <code>InvokeModelWithResponseStream</code>.</p> </note> <p>For example code, see <i>Invoke model with streaming code example</i> in the <i>Amazon Bedrock User Guide</i>. </p> <p>This operation requires permissions to perform the <code>bedrock:InvokeModelWithResponseStream</code> action. </p> <important> <p>To deny all inference access to resources that you specify in the modelId field, you need to deny access to the <code>bedrock:InvokeModel</code> and <code>bedrock:InvokeModelWithResponseStream</code> actions. Doing this also denies access to the resource through the Converse API actions (<a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_Converse.html">Converse</a> and <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_ConverseStream.html">ConverseStream</a>). For more information see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/security_iam_id-based-policy-examples.html#security_iam_id-based-policy-examples-deny-inference">Deny access for inference on specific models</a>. </p> </important> <p>For troubleshooting some of the common errors you might encounter when using the <code>InvokeModelWithResponseStream</code> API, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/troubleshooting-api-error-codes.html">Troubleshooting Amazon Bedrock API Error Codes</a> in the Amazon Bedrock User Guide</p>
    # @param [Hash, Types::InvokeModelWithResponseStreamRequest] params
    # @option params [String] :body
    #   <p>The prompt and inference parameters in the format specified in the <code>contentType</code> in the header. You must provide the body in JSON format. To see the format and content of the request and response bodies for different models, refer to <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html">Inference parameters</a>. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/api-methods-run.html">Run inference</a> in the Bedrock User Guide.</p>
    # @option params [String] :content_type
    #   <p>The MIME type of the input data in the request. You must specify <code>application/json</code>.</p>
    # @option params [String] :accept
    #   <p>The desired MIME type of the inference body in the response. The default value is <code>application/json</code>.</p>
    # @option params [String] :model_id
    #   <p>The unique identifier of the model to invoke to run inference.</p> <p>The <code>modelId</code> to provide depends on the type of model or throughput that you use:</p> <ul> <li> <p>If you use a base model, specify the model ID or its ARN. For a list of model IDs for base models, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/model-ids.html#model-ids-arns">Amazon Bedrock base model IDs (on-demand throughput)</a> in the Amazon Bedrock User Guide.</p> </li> <li> <p>If you use an inference profile, specify the inference profile ID or its ARN. For a list of inference profile IDs, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/cross-region-inference-support.html">Supported Regions and models for cross-region inference</a> in the Amazon Bedrock User Guide.</p> </li> <li> <p>If you use a provisioned model, specify the ARN of the Provisioned Throughput. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/prov-thru-use.html">Run inference using a Provisioned Throughput</a> in the Amazon Bedrock User Guide.</p> </li> <li> <p>If you use a custom model, specify the ARN of the custom model deployment (for on-demand inference) or the ARN of your provisioned model (for Provisioned Throughput). For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-use.html">Use a custom model in Amazon Bedrock</a> in the Amazon Bedrock User Guide.</p> </li> <li> <p>If you use an <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-import-model.html">imported model</a>, specify the ARN of the imported model. You can get the model ARN from a successful call to <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_CreateModelImportJob.html">CreateModelImportJob</a> or from the Imported models page in the Amazon Bedrock console.</p> </li> </ul>
    # @option params [String] :trace
    #   <p>Specifies whether to enable or disable the Bedrock trace. If enabled, you can see the full Bedrock trace.</p>
    # @option params [String] :guardrail_identifier
    #   <p>The unique identifier of the guardrail that you want to use. If you don't provide a value, no guardrail is applied to the invocation.</p> <p>An error is thrown in the following situations.</p> <ul> <li> <p>You don't provide a guardrail identifier but you specify the <code>amazon-bedrock-guardrailConfig</code> field in the request body.</p> </li> <li> <p>You enable the guardrail but the <code>contentType</code> isn't <code>application/json</code>.</p> </li> <li> <p>You provide a guardrail identifier, but <code>guardrailVersion</code> isn't specified.</p> </li> </ul>
    # @option params [String] :guardrail_version
    #   <p>The version number for the guardrail. The value can also be <code>DRAFT</code>.</p>
    # @option params [String] :performance_config_latency
    #   <p>Model performance settings for the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     body: "data",
    #     content_type: "MimeType",
    #     accept: "MimeType",
    #     model_id: "InvokeModelIdentifier", # required
    #     trace: "ENABLED" # One of: ["ENABLED", "DISABLED", "ENABLED_FULL"],
    #     guardrail_identifier: "GuardrailIdentifier",
    #     guardrail_version: "GuardrailVersion",
    #     performance_config_latency: "standard" # One of: ["standard", "optimized"]
    #   }
    #   options = {}
    #   response = client.invoke_model_with_response_stream(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     body: { # required
    #       # One of:
    #       chunk: {
    #         bytes: "data"
    #       },
    #       internal_server_exception: {
    #         message: "NonBlankString"
    #       },
    #       model_stream_error_exception: {
    #         message: "NonBlankString",
    #         original_status_code: 1,
    #         original_message: "NonBlankString"
    #       },
    #       validation_exception: {
    #         message: "NonBlankString"
    #       },
    #       throttling_exception: {
    #         message: "NonBlankString"
    #       },
    #       model_timeout_exception: {
    #         message: "NonBlankString"
    #       },
    #       service_unavailable_exception: {
    #         message: "NonBlankString"
    #       }
    #     },
    #     content_type: "MimeType", # required
    #     performance_config_latency: "standard" # One of: ["standard", "optimized"]
    #   }
    # @return [Types::InvokeModelWithResponseStreamResponse]
    def invoke_model_with_response_stream(params = {}, options = {})
      request = build_request(:invoke_model_with_response_stream, params)
      request.send_request(options)
    end

    # <p>Lists asynchronous invocations.</p>
    # @param [Hash, Types::ListAsyncInvokesRequest] params
    # @option params [Time] :submit_time_after
    #   <p>Include invocations submitted after this time.</p>
    # @option params [Time] :submit_time_before
    #   <p>Include invocations submitted before this time.</p>
    # @option params [String] :status_equals
    #   <p>Filter invocations by status.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of invocations to return in one page of results.</p>
    # @option params [String] :next_token
    #   <p>Specify the pagination token from a previous request to retrieve the next page of results.</p>
    # @option params [String] :sort_by
    #   <p>How to sort the response.</p>
    # @option params [String] :sort_order
    #   <p>The sorting order for the response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     submit_time_after: Time.now,
    #     submit_time_before: Time.now,
    #     status_equals: "InProgress" # One of: ["InProgress", "Completed", "Failed"],
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     sort_by: "SubmissionTime" # One of: ["SubmissionTime"],
    #     sort_order: "Ascending" # One of: ["Ascending", "Descending"]
    #   }
    #   options = {}
    #   response = client.list_async_invokes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "PaginationToken",
    #     async_invoke_summaries: [
    #       {
    #         invocation_arn: "InvocationArn", # required
    #         model_arn: "AsyncInvokeArn", # required
    #         client_request_token: "AsyncInvokeIdempotencyToken",
    #         status: "InProgress" # One of: ["InProgress", "Completed", "Failed"],
    #         failure_message: "AsyncInvokeMessage",
    #         submit_time: Time.now, # required
    #         last_modified_time: Time.now,
    #         end_time: Time.now,
    #         output_data_config: { # required
    #           # One of:
    #           s3_output_data_config: {
    #             s3_uri: "S3Uri", # required
    #             kms_key_id: "KmsKeyId",
    #             bucket_owner: "AccountId"
    #           }
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::ListAsyncInvokesResponse]
    def list_async_invokes(params = {}, options = {})
      request = build_request(:list_async_invokes, params)
      request.send_request(options)
    end

    # <p>Starts an asynchronous invocation.</p> <p>This operation requires permission for the <code>bedrock:InvokeModel</code> action.</p> <important> <p>To deny all inference access to resources that you specify in the modelId field, you need to deny access to the <code>bedrock:InvokeModel</code> and <code>bedrock:InvokeModelWithResponseStream</code> actions. Doing this also denies access to the resource through the Converse API actions (<a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_Converse.html">Converse</a> and <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_ConverseStream.html">ConverseStream</a>). For more information see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/security_iam_id-based-policy-examples.html#security_iam_id-based-policy-examples-deny-inference">Deny access for inference on specific models</a>. </p> </important>
    # @param [Hash, Types::StartAsyncInvokeRequest] params
    # @option params [String] :client_request_token
    #   <p>Specify idempotency token to ensure that requests are not duplicated.</p>
    # @option params [String] :model_id
    #   <p>The model to invoke.</p>
    # @option params [JSON] :model_input
    #   <p>Input to send to the model.</p>
    # @option params [Types::AsyncInvokeOutputDataConfig] :output_data_config
    #   <p>Where to store the output.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Tags to apply to the invocation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_request_token: "AsyncInvokeIdempotencyToken",
    #     model_id: "AsyncInvokeIdentifier", # required
    #     model_input: ""null"", # required
    #     output_data_config: { # required
    #       # One of:
    #       s3_output_data_config: {
    #         s3_uri: "S3Uri", # required
    #         kms_key_id: "KmsKeyId",
    #         bucket_owner: "AccountId"
    #       }
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.start_async_invoke(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     invocation_arn: "InvocationArn", # required
    #   }
    # @return [Types::StartAsyncInvokeResponse]
    def start_async_invoke(params = {}, options = {})
      request = build_request(:start_async_invoke, params)
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
      context[:gem_name] = 'aws-sdk-bedrockruntime'
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
