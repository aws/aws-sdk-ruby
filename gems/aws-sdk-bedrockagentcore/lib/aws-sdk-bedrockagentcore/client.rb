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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:bedrockagentcore)

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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::BedrockAgentCore::EndpointProvider)
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

    # <p>Creates multiple memory records in a single batch operation for the specified memory with custom content.</p>
    # @param [Hash, Types::BatchCreateMemoryRecordsInput] params
    # @option params [String] :memory_id
    #   <p>The unique ID of the memory resource where records will be created.</p>
    # @option params [Array<Types::MemoryRecordCreateInput>] :records
    #   <p>A list of memory record creation inputs to be processed in the batch operation.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure idempotent processing of the batch request.</p>
    # @option params [Types::RecordExpirySpecification] :record_expiry_specification
    #   <p>The record expiry (long-term memory time-to-live) applied to every record created by this request. Set <code>recordExpiryDurationDays</code> to the number of days after which the records expire. Only the expiry provided here is applied; the records' strategy association has no effect on their expiry. If you do not provide this value, the records do not expire. The <code>REMOVE</code> action does not apply when creating records.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     memory_id: "MemoryId", # required
    #     records: [ # required
    #       {
    #         request_identifier: "RequestIdentifier", # required
    #         namespaces: ["Namespace"], # required
    #         content: { # required
    #           # One of:
    #           text: "SensitiveString"
    #         },
    #         timestamp: Time.now, # required
    #         memory_strategy_id: "MemoryStrategyId",
    #         metadata: {
    #           "MetadataKey" => {
    #             # One of:
    #             string_value: "StringValue",
    #             string_list_value: ["StringListMemberValue"],
    #             number_value: 1.0,
    #             date_time_value: Time.now
    #           }
    #         }
    #       }
    #     ],
    #     client_token: "String",
    #     record_expiry_specification: {
    #       # One of:
    #       record_expiry_duration_days: 1,
    #       action: "REMOVE" # One of: ["REMOVE"]
    #     }
    #   }
    #   options = {}
    #   response = client.batch_create_memory_records(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     successful_records: [ # required
    #       {
    #         memory_record_id: "MemoryRecordId", # required
    #         status: "SUCCEEDED" # One of: ["SUCCEEDED", "FAILED"], # required
    #         request_identifier: "RequestIdentifier",
    #         error_code: 1,
    #         error_message: "String"
    #       }
    #     ],
    #     failed_records: [ # required
    #       {
    #         memory_record_id: "MemoryRecordId", # required
    #         status: "SUCCEEDED" # One of: ["SUCCEEDED", "FAILED"], # required
    #         request_identifier: "RequestIdentifier",
    #         error_code: 1,
    #         error_message: "String"
    #       }
    #     ]
    #   }
    # @return [Types::BatchCreateMemoryRecordsOutput]
    def batch_create_memory_records(params = {}, options = {})
      request = build_request(:batch_create_memory_records, params)
      request.send_request(options)
    end

    # <p>Deletes multiple memory records in a single batch operation from the specified memory.</p>
    # @param [Hash, Types::BatchDeleteMemoryRecordsInput] params
    # @option params [String] :memory_id
    #   <p>The unique ID of the memory resource where records will be deleted.</p>
    # @option params [Array<Types::MemoryRecordDeleteInput>] :records
    #   <p>A list of memory record deletion inputs to be processed in the batch operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     memory_id: "MemoryId", # required
    #     records: [ # required
    #       {
    #         memory_record_id: "MemoryRecordId", # required
    #         namespace: "Namespace"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_delete_memory_records(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     successful_records: [ # required
    #       {
    #         memory_record_id: "MemoryRecordId", # required
    #         status: "SUCCEEDED" # One of: ["SUCCEEDED", "FAILED"], # required
    #         request_identifier: "RequestIdentifier",
    #         error_code: 1,
    #         error_message: "String"
    #       }
    #     ],
    #     failed_records: [ # required
    #       {
    #         memory_record_id: "MemoryRecordId", # required
    #         status: "SUCCEEDED" # One of: ["SUCCEEDED", "FAILED"], # required
    #         request_identifier: "RequestIdentifier",
    #         error_code: 1,
    #         error_message: "String"
    #       }
    #     ]
    #   }
    # @return [Types::BatchDeleteMemoryRecordsOutput]
    def batch_delete_memory_records(params = {}, options = {})
      request = build_request(:batch_delete_memory_records, params)
      request.send_request(options)
    end

    # <p>Updates multiple memory records with custom content in a single batch operation within the specified memory.</p>
    # @param [Hash, Types::BatchUpdateMemoryRecordsInput] params
    # @option params [String] :memory_id
    #   <p>The unique ID of the memory resource where records will be updated.</p>
    # @option params [Array<Types::MemoryRecordUpdateInput>] :records
    #   <p>A list of memory record update inputs to be processed in the batch operation.</p>
    # @option params [Types::RecordExpirySpecification] :record_expiry_specification
    #   <p>The record expiry (long-term memory time-to-live) applied to every record updated by this request. Set <code>recordExpiryDurationDays</code> to configure or overwrite the number of days after which the records expire, or set <code>action</code> to <code>REMOVE</code> to clear a previously configured expiry so that the records no longer expire.</p> <p>When you do not provide this value, the service determines each record's expiry from its current state:</p> <ul> <li> <p>If the record already has an expiry configured, the service resets and reapplies the expiry based on the last applied <code>recordExpiryDurationDays</code>.</p> </li> <li> <p>If the record does not have an expiry configured, no expiry is applied and the record remains non-expiring. This is the outcome regardless of whether the record's strategy configures an expiry.</p> </li> </ul> <p>Providing an explicit <code>recordExpiryDurationDays</code> always takes precedence: it overwrites an existing expiry, or sets one on a record that previously had none.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     memory_id: "MemoryId", # required
    #     records: [ # required
    #       {
    #         memory_record_id: "MemoryRecordId", # required
    #         timestamp: Time.now, # required
    #         content: {
    #           # One of:
    #           text: "SensitiveString"
    #         },
    #         namespaces: ["Namespace"],
    #         source_namespaces: ["Namespace"],
    #         memory_strategy_id: "MemoryStrategyId",
    #         metadata: {
    #           "MetadataKey" => {
    #             # One of:
    #             string_value: "StringValue",
    #             string_list_value: ["StringListMemberValue"],
    #             number_value: 1.0,
    #             date_time_value: Time.now
    #           }
    #         }
    #       }
    #     ],
    #     record_expiry_specification: {
    #       # One of:
    #       record_expiry_duration_days: 1,
    #       action: "REMOVE" # One of: ["REMOVE"]
    #     }
    #   }
    #   options = {}
    #   response = client.batch_update_memory_records(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     successful_records: [ # required
    #       {
    #         memory_record_id: "MemoryRecordId", # required
    #         status: "SUCCEEDED" # One of: ["SUCCEEDED", "FAILED"], # required
    #         request_identifier: "RequestIdentifier",
    #         error_code: 1,
    #         error_message: "String"
    #       }
    #     ],
    #     failed_records: [ # required
    #       {
    #         memory_record_id: "MemoryRecordId", # required
    #         status: "SUCCEEDED" # One of: ["SUCCEEDED", "FAILED"], # required
    #         request_identifier: "RequestIdentifier",
    #         error_code: 1,
    #         error_message: "String"
    #       }
    #     ]
    #   }
    # @return [Types::BatchUpdateMemoryRecordsOutput]
    def batch_update_memory_records(params = {}, options = {})
      request = build_request(:batch_update_memory_records, params)
      request.send_request(options)
    end

    # <p>Confirms the user authentication session for obtaining OAuth2.0 tokens for a resource.</p>
    # @param [Hash, Types::CompleteResourceTokenAuthRequest] params
    # @option params [Types::UserIdentifier] :user_identifier
    #   <p>The OAuth2.0 token or user ID that was used to generate the workload access token used for initiating the user authorization flow to retrieve OAuth2.0 tokens.</p>
    # @option params [String] :session_uri
    #   <p>Unique identifier for the user's authentication session for retrieving OAuth2 tokens. This ID tracks the authorization flow state across multiple requests and responses during the OAuth2 authentication process.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_identifier: { # required
    #       # One of:
    #       user_token: "UserTokenType",
    #       user_id: "UserIdType"
    #     },
    #     session_uri: "RequestUri", # required
    #   }
    #   options = {}
    #   response = client.complete_resource_token_auth(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CompleteResourceTokenAuthResponse]
    def complete_resource_token_auth(params = {}, options = {})
      request = build_request(:complete_resource_token_auth, params)
      request.send_request(options)
    end

    # <p>Creates an A/B test for comparing agent configurations. A/B tests split traffic between a control variant and a treatment variant through a gateway, then evaluate performance using online evaluation configurations to determine which variant performs better.</p>
    # @param [Hash, Types::CreateABTestRequest] params
    # @option params [String] :name
    #   <p>The name of the A/B test. Must be unique within your account.</p>
    # @option params [String] :description
    #   <p>The description of the A/B test.</p>
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway to use for traffic splitting.</p>
    # @option params [Array<Types::Variant>] :variants
    #   <p>The list of variants for the A/B test. Must contain exactly two variants: a control (C) and a treatment (T1), each with a configuration bundle or target reference and a traffic weight.</p>
    # @option params [Types::GatewayFilter] :gateway_filter
    #   <p>Optional filter to restrict which gateway target paths are included in the A/B test.</p>
    # @option params [Types::ABTestEvaluationConfig] :evaluation_config
    #   <p>The evaluation configuration specifying which online evaluation configurations to use for measuring variant performance.</p>
    # @option params [String] :role_arn
    #   <p>The IAM role ARN that grants permissions for the A/B test to access gateway and evaluation resources.</p>
    # @option params [Boolean] :enable_on_create
    #   <p>Whether to enable the A/B test immediately upon creation. If true, traffic splitting begins automatically.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, the service ignores the request, but does not return an error.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A map of tag keys and values to associate with the A/B test.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ABTestName", # required
    #     description: "ABTestDescription",
    #     gateway_arn: "GatewayArn", # required
    #     variants: [ # required
    #       {
    #         name: "VariantName", # required
    #         weight: 1, # required
    #         variant_configuration: { # required
    #           configuration_bundle: {
    #             bundle_arn: "ConfigurationBundleArn", # required
    #             bundle_version: "ConfigurationBundleVersion", # required
    #           },
    #           target: {
    #             name: "TargetName", # required
    #           }
    #         }
    #       }
    #     ],
    #     gateway_filter: {
    #       target_paths: ["PathPattern"]
    #     },
    #     evaluation_config: { # required
    #       # One of:
    #       online_evaluation_config_arn: "OnlineEvaluationConfigArn",
    #       per_variant_online_evaluation_config: [
    #         {
    #           name: "VariantName", # required
    #           online_evaluation_config_arn: "OnlineEvaluationConfigArn", # required
    #         }
    #       ]
    #     },
    #     role_arn: "RoleArn", # required
    #     enable_on_create: false,
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_ab_test(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ab_test_id: "ABTestId", # required
    #     ab_test_arn: "ABTestArn", # required
    #     name: "ABTestName",
    #     status: "CREATING" # One of: ["CREATING", "ACTIVE", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "DELETING", "DELETE_FAILED", "FAILED"], # required
    #     execution_status: "PAUSED" # One of: ["PAUSED", "RUNNING", "STOPPED", "NOT_STARTED"], # required
    #     created_at: Time.now, # required
    #   }
    # @return [Types::CreateABTestResponse]
    def create_ab_test(params = {}, options = {})
      request = build_request(:create_ab_test, params)
      request.send_request(options)
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
    #   <p>The content payload of the event. This can include conversational data, JSON data, or binary content.</p>
    # @option params [Types::Branch] :branch
    #   <p>The branch information for this event. Branches allow for organizing events into different conversation threads or paths.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure that the operation completes no more than one time. If this token matches a previous request, AgentCore ignores the request, but does not return an error.</p>
    # @option params [Hash<String, Types::MetadataValue>] :metadata
    #   <p>The key-value metadata to attach to the event.</p>
    # @option params [String] :extraction_mode
    #   <p>Controls long-term memory extraction for this event. When set to <code>SKIP</code>, the event is stored in short-term memory but is excluded from long-term memory extraction. If not specified, the event is processed for extraction as usual.</p>
    # @option params [Types::ExtractionConfig] :extraction_config
    #   <p>The extraction configuration for long-term memory records. Use this parameter to specify namespace variable keys and their values for namespace substitution during extraction.</p>
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
    #       blob: ""null"",
    #       json: {
    #         content: ""null"", # required
    #       }
    #     }],
    #     branch: {
    #       root_event_id: "EventId",
    #       name: "BranchName", # required
    #     },
    #     client_token: "String",
    #     metadata: {
    #       "MetadataKey" => {
    #         # One of:
    #         string_value: "String"
    #       }
    #     },
    #     extraction_mode: "SKIP" # One of: ["SKIP"],
    #     extraction_config: {
    #       namespace_variables: {
    #         "NamespaceVariableName" => "NamespaceVariableValue"
    #       }
    #     }
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
    #         blob: ""null"",
    #         json: {
    #           content: ""null"", # required
    #         }
    #       }],
    #       branch: {
    #         root_event_id: "EventId",
    #         name: "BranchName", # required
    #       },
    #       metadata: {
    #         "MetadataKey" => {
    #           # One of:
    #           string_value: "String"
    #         }
    #       }
    #     }
    #   }
    # @return [Types::CreateEventOutput]
    def create_event(params = {}, options = {})
      request = build_request(:create_event, params)
      request.send_request(options)
    end

    # <p>Create a new payment instrument for a connector.</p>
    # @param [Hash, Types::CreatePaymentInstrumentRequest] params
    # @option params [String] :user_id
    #   <p>The user ID associated with this payment instrument.</p>
    # @option params [String] :agent_name
    #   <p>The agent name associated with this request, used for observability.</p>
    # @option params [String] :payment_manager_arn
    #   <p>The ARN of the payment manager that owns this payment instrument.</p>
    # @option params [String] :payment_connector_id
    #   <p>The ID of the payment connector to use for this instrument.</p>
    # @option params [String] :payment_instrument_type
    #   <p>The type of payment instrument being created.</p>
    # @option params [Types::PaymentInstrumentDetails] :payment_instrument_details
    #   <p>The details of the payment instrument.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_id: "UserId",
    #     agent_name: "PaymentAgentName",
    #     payment_manager_arn: "PaymentManagerArn", # required
    #     payment_connector_id: "PaymentConnectorId", # required
    #     payment_instrument_type: "EMBEDDED_CRYPTO_WALLET" # One of: ["EMBEDDED_CRYPTO_WALLET"], # required
    #     payment_instrument_details: { # required
    #       # One of:
    #       embedded_crypto_wallet: {
    #         network: "ETHEREUM" # One of: ["ETHEREUM", "SOLANA"], # required
    #         linked_accounts: [{ # required
    #           # One of:
    #           email: {
    #             email_address: "Email", # required
    #           },
    #           sms: {
    #             phone_number: "PhoneNumber", # required
    #           },
    #           developer_jwt: {
    #             kid: "JwtKeyId", # required
    #             sub: "String", # required
    #           },
    #           o_auth2: {
    #             # One of:
    #             google: {
    #               sub: "String", # required
    #               email_address: "Email",
    #               name: "String",
    #               username: "String"
    #             },
    #             apple: {
    #               sub: "String", # required
    #               email_address: "Email",
    #               name: "String",
    #               username: "String"
    #             },
    #             x: {
    #               sub: "String", # required
    #               email_address: "Email",
    #               name: "String",
    #               username: "String"
    #             },
    #             telegram: {
    #               sub: "String", # required
    #               email_address: "Email",
    #               name: "String",
    #               username: "String"
    #             },
    #             github: {
    #               sub: "String", # required
    #               email_address: "Email",
    #               name: "String",
    #               username: "String"
    #             }
    #           }
    #         }],
    #         wallet_address: "String",
    #         redirect_url: "String"
    #       }
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_payment_instrument(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     payment_instrument: { # required
    #       payment_instrument_id: "PaymentInstrumentId", # required
    #       payment_manager_arn: "PaymentManagerArn", # required
    #       payment_connector_id: "PaymentConnectorId", # required
    #       user_id: "UserId", # required
    #       payment_instrument_type: "EMBEDDED_CRYPTO_WALLET" # One of: ["EMBEDDED_CRYPTO_WALLET"], # required
    #       payment_instrument_details: { # required
    #         # One of:
    #         embedded_crypto_wallet: {
    #           network: "ETHEREUM" # One of: ["ETHEREUM", "SOLANA"], # required
    #           linked_accounts: [{ # required
    #             # One of:
    #             email: {
    #               email_address: "Email", # required
    #             },
    #             sms: {
    #               phone_number: "PhoneNumber", # required
    #             },
    #             developer_jwt: {
    #               kid: "JwtKeyId", # required
    #               sub: "String", # required
    #             },
    #             o_auth2: {
    #               # One of:
    #               google: {
    #                 sub: "String", # required
    #                 email_address: "Email",
    #                 name: "String",
    #                 username: "String"
    #               },
    #               apple: {
    #                 sub: "String", # required
    #                 email_address: "Email",
    #                 name: "String",
    #                 username: "String"
    #               },
    #               x: {
    #                 sub: "String", # required
    #                 email_address: "Email",
    #                 name: "String",
    #                 username: "String"
    #               },
    #               telegram: {
    #                 sub: "String", # required
    #                 email_address: "Email",
    #                 name: "String",
    #                 username: "String"
    #               },
    #               github: {
    #                 sub: "String", # required
    #                 email_address: "Email",
    #                 name: "String",
    #                 username: "String"
    #               }
    #             }
    #           }],
    #           wallet_address: "String",
    #           redirect_url: "String"
    #         }
    #       },
    #       created_at: Time.now, # required
    #       status: "INITIATED" # One of: ["INITIATED", "ACTIVE", "FAILED", "DELETED", "BLOCKED"], # required
    #       updated_at: Time.now, # required
    #     }
    #   }
    # @return [Types::CreatePaymentInstrumentResponse]
    def create_payment_instrument(params = {}, options = {})
      request = build_request(:create_payment_instrument, params)
      request.send_request(options)
    end

    # <p>Create a new payment session.</p>
    # @param [Hash, Types::CreatePaymentSessionRequest] params
    # @option params [String] :user_id
    #   <p>The user ID associated with this payment session.</p>
    # @option params [String] :agent_name
    #   <p>The agent name associated with this request, used for observability.</p>
    # @option params [String] :payment_manager_arn
    #   <p>The ARN of the payment manager that owns this session.</p>
    # @option params [Types::SessionLimits] :limits
    #   <p>The spending limits for this payment session.</p>
    # @option params [Integer] :expiry_time_in_minutes
    #   <p>The session expiry time in minutes. Must be between 15 and 480 minutes.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_id: "UserId",
    #     agent_name: "PaymentAgentName",
    #     payment_manager_arn: "PaymentManagerArn", # required
    #     limits: {
    #       max_spend_amount: { # required
    #         value: "String", # required
    #         currency: "USD" # One of: ["USD"], # required
    #       }
    #     },
    #     expiry_time_in_minutes: 1, # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_payment_session(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     payment_session: { # required
    #       payment_session_id: "PaymentSessionId", # required
    #       payment_manager_arn: "PaymentManagerArn", # required
    #       limits: {
    #         max_spend_amount: { # required
    #           value: "String", # required
    #           currency: "USD" # One of: ["USD"], # required
    #         }
    #       },
    #       user_id: "UserId", # required
    #       expiry_time_in_minutes: 1, # required
    #       created_at: Time.now, # required
    #       available_limits: {
    #         available_spend_amount: {
    #           value: "String", # required
    #           currency: "USD" # One of: ["USD"], # required
    #         },
    #         updated_at: Time.now
    #       },
    #       updated_at: Time.now, # required
    #     }
    #   }
    # @return [Types::CreatePaymentSessionResponse]
    def create_payment_session(params = {}, options = {})
      request = build_request(:create_payment_session, params)
      request.send_request(options)
    end

    # <p>Deletes an A/B test and its associated gateway rules.</p>
    # @param [Hash, Types::DeleteABTestRequest] params
    # @option params [String] :ab_test_id
    #   <p>The unique identifier of the A/B test to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     ab_test_id: "ABTestId", # required
    #   }
    #   options = {}
    #   response = client.delete_ab_test(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ab_test_id: "ABTestId", # required
    #     ab_test_arn: "ABTestArn", # required
    #     status: "CREATING" # One of: ["CREATING", "ACTIVE", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "DELETING", "DELETE_FAILED", "FAILED"], # required
    #   }
    # @return [Types::DeleteABTestResponse]
    def delete_ab_test(params = {}, options = {})
      request = build_request(:delete_ab_test, params)
      request.send_request(options)
    end

    # <p>Deletes a batch evaluation and its associated results.</p>
    # @param [Hash, Types::DeleteBatchEvaluationRequest] params
    # @option params [String] :batch_evaluation_id
    #   <p>The unique identifier of the batch evaluation to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     batch_evaluation_id: "BatchEvaluationId", # required
    #   }
    #   options = {}
    #   response = client.delete_batch_evaluation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     batch_evaluation_id: "BatchEvaluationId", # required
    #     batch_evaluation_arn: "BatchEvaluationArn", # required
    #     status: "PENDING" # One of: ["PENDING", "IN_PROGRESS", "COMPLETED", "COMPLETED_WITH_ERRORS", "FAILED", "STOPPING", "STOPPED", "DELETING"], # required
    #   }
    # @return [Types::DeleteBatchEvaluationResponse]
    def delete_batch_evaluation(params = {}, options = {})
      request = build_request(:delete_batch_evaluation, params)
      request.send_request(options)
    end

    # <p>Deletes a session associated with a capacity provider in Amazon Bedrock AgentCore and makes the session unavailable for further use. To delete a capacity provider session, specify both the capacity provider identifier and the session ID. After you delete a session, you cannot restart it.</p>
    # @param [Hash, Types::DeleteCapacityProviderSessionRequest] params
    # @option params [String] :capacity_provider_id
    #   <p>The unique identifier of the capacity provider associated with the session.</p>
    # @option params [String] :session_id
    #   <p>The unique identifier of the capacity provider session to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     capacity_provider_id: "CapacityProviderId", # required
    #     session_id: "SessionId", # required
    #   }
    #   options = {}
    #   response = client.delete_capacity_provider_session(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     capacity_provider_arn: "CapacityProviderArn", # required
    #     session_id: "SessionId", # required
    #     status: "Provisioning" # One of: ["Provisioning", "Deprovisioning", "Active", "Deleting", "Deleted", "Stopped"], # required
    #   }
    # @return [Types::DeleteCapacityProviderSessionResponse]
    def delete_capacity_provider_session(params = {}, options = {})
      request = build_request(:delete_capacity_provider_session, params)
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
    # @option params [String] :namespace
    #   <p>The namespace of the memory record to delete. This value is used for IAM condition key authorization.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     memory_id: "MemoryId", # required
    #     memory_record_id: "MemoryRecordId", # required
    #     namespace: "Namespace"
    #   }
    #   options = {}
    #   response = client.delete_memory_record(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     memory_record_id: "MemoryRecordId", # required
    #   }
    # @return [Types::DeleteMemoryRecordOutput]
    def delete_memory_record(params = {}, options = {})
      request = build_request(:delete_memory_record, params)
      request.send_request(options)
    end

    # <p>Deletes a payment instrument. This is a soft delete operation that preserves the record for audit and compliance purposes.</p>
    # @param [Hash, Types::DeletePaymentInstrumentRequest] params
    # @option params [String] :user_id
    #   <p>The user ID making the delete request. Must match the instrument's userId.</p>
    # @option params [String] :payment_manager_arn
    #   <p>The payment manager ARN. Must match the instrument's paymentManagerArn.</p>
    # @option params [String] :payment_connector_id
    #   <p>The payment connector ID. Must match the instrument's paymentConnectorId.</p>
    # @option params [String] :payment_instrument_id
    #   <p>The payment instrument ID to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_id: "UserId",
    #     payment_manager_arn: "PaymentManagerArn", # required
    #     payment_connector_id: "PaymentConnectorId", # required
    #     payment_instrument_id: "PaymentInstrumentId", # required
    #   }
    #   options = {}
    #   response = client.delete_payment_instrument(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "INITIATED" # One of: ["INITIATED", "ACTIVE", "FAILED", "DELETED", "BLOCKED"], # required
    #   }
    # @return [Types::DeletePaymentInstrumentResponse]
    def delete_payment_instrument(params = {}, options = {})
      request = build_request(:delete_payment_instrument, params)
      request.send_request(options)
    end

    # <p>Deletes a payment session. This permanently removes the payment session record.</p>
    # @param [Hash, Types::DeletePaymentSessionRequest] params
    # @option params [String] :user_id
    #   <p>The user ID making the delete request. Must match the session's userId.</p>
    # @option params [String] :payment_manager_arn
    #   <p>The payment manager ARN. Must match the session's paymentManagerArn.</p>
    # @option params [String] :payment_session_id
    #   <p>The payment session ID to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_id: "UserId",
    #     payment_manager_arn: "PaymentManagerArn", # required
    #     payment_session_id: "PaymentSessionId", # required
    #   }
    #   options = {}
    #   response = client.delete_payment_session(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "ACTIVE" # One of: ["ACTIVE", "EXPIRED", "DELETED"], # required
    #   }
    # @return [Types::DeletePaymentSessionResponse]
    def delete_payment_session(params = {}, options = {})
      request = build_request(:delete_payment_session, params)
      request.send_request(options)
    end

    # <p>Deletes a recommendation and its associated results.</p>
    # @param [Hash, Types::DeleteRecommendationRequest] params
    # @option params [String] :recommendation_id
    #   <p>The unique identifier of the recommendation to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     recommendation_id: "RecommendationId", # required
    #   }
    #   options = {}
    #   response = client.delete_recommendation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     recommendation_id: "RecommendationId", # required
    #     status: "PENDING" # One of: ["PENDING", "IN_PROGRESS", "COMPLETED", "FAILED", "DELETING"], # required
    #   }
    # @return [Types::DeleteRecommendationResponse]
    def delete_recommendation(params = {}, options = {})
      request = build_request(:delete_recommendation, params)
      request.send_request(options)
    end

    # <p> Performs on-demand evaluation of agent traces using a specified evaluator. This synchronous API accepts traces in OpenTelemetry format and returns immediate scoring results with detailed explanations.</p>
    # @param [Hash, Types::EvaluateRequest] params
    # @option params [String] :evaluator_id
    #   <p> The unique identifier of the evaluator to use for scoring. Can be a built-in evaluator (e.g., <code>Builtin.Helpfulness</code>, <code>Builtin.Correctness</code>) or a custom evaluator Id created through the control plane API. </p>
    # @option params [Types::EvaluationInput] :evaluation_input
    #   <p> The input data containing agent session spans to be evaluated. Includes a list of spans in OpenTelemetry format from supported frameworks like Strands (AgentCore Runtime) or LangGraph with OpenInference instrumentation. </p>
    # @option params [Types::EvaluationTarget] :evaluation_target
    #   <p> The specific trace or span IDs to evaluate within the provided input. Allows targeting evaluation at different levels: individual tool calls, single request-response interactions (traces), or entire conversation sessions. </p>
    # @option params [Array<Types::EvaluationReferenceInput>] :evaluation_reference_inputs
    #   <p> Ground truth data to compare against agent responses during evaluation. Allows to provide expected responses, assertions, and expected tool trajectories at different evaluation levels. Session-level reference inputs apply to the entire conversation, while trace-level reference inputs target specific request-response interactions identified by trace ID. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     evaluator_id: "EvaluatorId", # required
    #     evaluation_input: { # required
    #       # One of:
    #       session_spans: [""null""]
    #     },
    #     evaluation_target: {
    #       # One of:
    #       span_ids: ["SpanId"],
    #       trace_ids: ["TraceId"]
    #     },
    #     evaluation_reference_inputs: [
    #       {
    #         context: { # required
    #           # One of:
    #           span_context: {
    #             session_id: "String", # required
    #             trace_id: "String",
    #             span_id: "String"
    #           }
    #         },
    #         expected_response: {
    #           # One of:
    #           text: "String"
    #         },
    #         assertions: [{
    #           # One of:
    #           text: "String"
    #         }],
    #         expected_trajectory: {
    #           tool_names: ["EvaluationToolName"]
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.evaluate(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     evaluation_results: [ # required
    #       {
    #         evaluator_arn: "EvaluatorArn", # required
    #         evaluator_id: "EvaluatorId", # required
    #         evaluator_name: "EvaluatorName", # required
    #         explanation: "EvaluationExplanation",
    #         context: { # required
    #           # One of:
    #           span_context: {
    #             session_id: "String", # required
    #             trace_id: "String",
    #             span_id: "String"
    #           }
    #         },
    #         value: 1.0,
    #         label: "String",
    #         token_usage: {
    #           input_tokens: 1,
    #           output_tokens: 1,
    #           total_tokens: 1
    #         },
    #         error_message: "EvaluationErrorMessage",
    #         error_code: "EvaluationErrorCode",
    #         ignored_reference_input_fields: ["IgnoredReferenceInputField"]
    #       }
    #     ]
    #   }
    # @return [Types::EvaluateResponse]
    def evaluate(params = {}, options = {})
      request = build_request(:evaluate, params)
      request.send_request(options)
    end

    # <p>Retrieves detailed information about an A/B test, including its configuration, status, and statistical results.</p>
    # @param [Hash, Types::GetABTestRequest] params
    # @option params [String] :ab_test_id
    #   <p>The unique identifier of the A/B test to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     ab_test_id: "ABTestId", # required
    #   }
    #   options = {}
    #   response = client.get_ab_test(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ab_test_id: "ABTestId", # required
    #     ab_test_arn: "ABTestArn", # required
    #     name: "ABTestName", # required
    #     description: "ABTestDescription",
    #     status: "CREATING" # One of: ["CREATING", "ACTIVE", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "DELETING", "DELETE_FAILED", "FAILED"], # required
    #     execution_status: "PAUSED" # One of: ["PAUSED", "RUNNING", "STOPPED", "NOT_STARTED"], # required
    #     gateway_arn: "GatewayArn", # required
    #     variants: [ # required
    #       {
    #         name: "VariantName", # required
    #         weight: 1, # required
    #         variant_configuration: { # required
    #           configuration_bundle: {
    #             bundle_arn: "ConfigurationBundleArn", # required
    #             bundle_version: "ConfigurationBundleVersion", # required
    #           },
    #           target: {
    #             name: "TargetName", # required
    #           }
    #         }
    #       }
    #     ],
    #     gateway_filter: {
    #       target_paths: ["PathPattern"]
    #     },
    #     evaluation_config: { # required
    #       # One of:
    #       online_evaluation_config_arn: "OnlineEvaluationConfigArn",
    #       per_variant_online_evaluation_config: [
    #         {
    #           name: "VariantName", # required
    #           online_evaluation_config_arn: "OnlineEvaluationConfigArn", # required
    #         }
    #       ]
    #     },
    #     role_arn: "RoleArn",
    #     current_run_id: "String",
    #     error_details: ["String"],
    #     started_at: Time.now,
    #     stopped_at: Time.now,
    #     max_duration_expires_at: Time.now,
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #     results: {
    #       analysis_timestamp: Time.now,
    #       evaluator_metrics: [ # required
    #         {
    #           evaluator_arn: "String", # required
    #           control_stats: { # required
    #             variant_name: "String", # required
    #             sample_size: 1, # required
    #             mean: 1.0, # required
    #           },
    #           variant_results: [ # required
    #             {
    #               variant_name: "String", # required
    #               sample_size: 1, # required
    #               mean: 1.0, # required
    #               absolute_change: 1.0,
    #               percent_change: 1.0,
    #               p_value: 1.0,
    #               confidence_interval: {
    #                 lower: 1.0,
    #                 upper: 1.0
    #               },
    #               is_significant: false, # required
    #             }
    #           ]
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetABTestResponse]
    def get_ab_test(params = {}, options = {})
      request = build_request(:get_ab_test, params)
      request.send_request(options)
    end

    # <p>Retrieves the A2A agent card associated with an AgentCore Runtime agent.</p>
    # @param [Hash, Types::GetAgentCardRequest] params
    # @option params [String] :runtime_session_id
    #   <p>The session ID that the AgentCore Runtime agent is using. </p>
    # @option params [String] :agent_runtime_arn
    #   <p>The ARN of the AgentCore Runtime agent for which you want to get the A2A agent card.</p>
    # @option params [String] :qualifier
    #   <p>Optional qualifier to specify an agent alias, such as <code>prod</code>code&gt; or <code>dev</code>. If you don't provide a value, the DEFAULT alias is used. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     runtime_session_id: "SessionType",
    #     agent_runtime_arn: "String", # required
    #     qualifier: "String"
    #   }
    #   options = {}
    #   response = client.get_agent_card(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     runtime_session_id: "SessionId",
    #     agent_card: ""null"", # required
    #     status_code: 1
    #   }
    # @return [Types::GetAgentCardResponse]
    def get_agent_card(params = {}, options = {})
      request = build_request(:get_agent_card, params)
      request.send_request(options)
    end

    # <p>Retrieves detailed information about a batch evaluation, including its status, configuration, results, and any error details.</p>
    # @param [Hash, Types::GetBatchEvaluationRequest] params
    # @option params [String] :batch_evaluation_id
    #   <p>The unique identifier of the batch evaluation to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     batch_evaluation_id: "BatchEvaluationId", # required
    #   }
    #   options = {}
    #   response = client.get_batch_evaluation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     batch_evaluation_id: "BatchEvaluationId", # required
    #     batch_evaluation_arn: "BatchEvaluationArn", # required
    #     batch_evaluation_name: "BatchEvaluationName", # required
    #     status: "PENDING" # One of: ["PENDING", "IN_PROGRESS", "COMPLETED", "COMPLETED_WITH_ERRORS", "FAILED", "STOPPING", "STOPPED", "DELETING"], # required
    #     created_at: Time.now, # required
    #     evaluators: [
    #       {
    #         evaluator_id: "EvaluatorId", # required
    #       }
    #     ],
    #     insights: [
    #       {
    #         insight_id: "InsightId", # required
    #       }
    #     ],
    #     data_source_config: {
    #       # One of:
    #       cloud_watch_logs: {
    #         service_names: ["String"], # required
    #         log_group_names: ["LogGroupName"],
    #         log_group_name_prefixes: ["LogGroupNamePrefix"],
    #         filter_config: {
    #           session_ids: ["String"],
    #           time_range: {
    #             start_time: Time.now,
    #             end_time: Time.now
    #           },
    #           session_trace_ids: [
    #             {
    #               session_id: "String", # required
    #               trace_ids: ["TraceId"], # required
    #             }
    #           ]
    #         }
    #       },
    #       online_evaluation_config_source: {
    #         online_evaluation_config_arn: "OnlineEvaluationConfigArn", # required
    #         time_range: {
    #           start_time: Time.now,
    #           end_time: Time.now
    #         }
    #       }
    #     },
    #     output_config: {
    #       # One of:
    #       cloud_watch_config: {
    #         log_group_name: "OptionalLogGroupName",
    #         log_stream_name: "LogStreamName",
    #         metrics_namespace: "MetricsNamespace",
    #         result_destination: "DEDICATED_LOG_GROUP" # One of: ["DEDICATED_LOG_GROUP", "SOURCE_LOG_GROUP"]
    #       }
    #     },
    #     evaluation_results: {
    #       number_of_sessions_completed: 1,
    #       number_of_sessions_in_progress: 1,
    #       number_of_sessions_failed: 1,
    #       total_number_of_sessions: 1,
    #       number_of_sessions_ignored: 1,
    #       evaluator_summaries: [
    #         {
    #           evaluator_id: "String",
    #           statistics: {
    #             average_score: 1.0
    #           },
    #           total_evaluated: 1,
    #           total_failed: 1
    #         }
    #       ]
    #     },
    #     failure_analysis_result: {
    #       failures: [ # required
    #         {
    #           cluster_id: 1, # required
    #           name: "String", # required
    #           description: "String", # required
    #           affected_session_count: 1, # required
    #           sub_categories: [ # required
    #             {
    #               cluster_id: 1, # required
    #               name: "String", # required
    #               description: "String", # required
    #               affected_session_count: 1, # required
    #               root_causes: [ # required
    #                 {
    #                   cluster_id: 1, # required
    #                   name: "String", # required
    #                   root_cause: "String", # required
    #                   recommendation: "String", # required
    #                   affected_session_count: 1, # required
    #                   affected_sessions: [ # required
    #                     {
    #                       session_id: "String", # required
    #                       explanation: "String", # required
    #                       fix_type: "String", # required
    #                       recommendation: "String", # required
    #                       failure_spans: [ # required
    #                         {
    #                           span_id: "String", # required
    #                           trace_id: "String", # required
    #                           signals: [ # required
    #                             {
    #                               category: "execution-error-category-authentication" # One of: ["execution-error-category-authentication", "execution-error-category-resource-not-found", "execution-error-category-service-errors", "execution-error-category-rate-limiting", "execution-error-category-formatting", "execution-error-category-timeout", "execution-error-category-resource-exhaustion", "execution-error-category-environment", "execution-error-category-tool-schema", "task-instruction-category-non-compliance", "task-instruction-category-problem-id", "incorrect-actions-category-tool-selection", "incorrect-actions-category-poor-information-retrieval", "incorrect-actions-category-clarification", "incorrect-actions-category-inappropriate-info-request", "context-handling-error-category-context-handling-failures", "hallucination-category-hall-capabilities", "hallucination-category-hall-misunderstand", "hallucination-category-hall-usage", "hallucination-category-hall-history", "hallucination-category-hall-params", "hallucination-category-fabricate-tool-outputs", "repetitive-behavior-category-repetition-tool", "repetitive-behavior-category-repetition-info", "repetitive-behavior-category-step-repetition", "orchestration-related-errors-category-reasoning-mismatch", "orchestration-related-errors-category-goal-deviation", "orchestration-related-errors-category-premature-termination", "orchestration-related-errors-category-unaware-termination", "llm-output-category-nonsensical", "configuration-mismatch-category-tool-definition", "coding-use-case-specific-failure-types-category-edge-case-oversights", "coding-use-case-specific-failure-types-category-dependency-issues", "other"], # required
    #                               evidence: "String", # required
    #                               confidence: 1.0, # required
    #                             }
    #                           ]
    #                         }
    #                       ]
    #                     }
    #                   ]
    #                 }
    #               ]
    #             }
    #           ]
    #         }
    #       ]
    #     },
    #     user_intent_result: {
    #       user_intents: [ # required
    #         {
    #           cluster_id: 1, # required
    #           name: "String", # required
    #           description: "String", # required
    #           affected_session_count: 1, # required
    #           affected_sessions: [ # required
    #             {
    #               session_id: "String", # required
    #               user_messages: ["String"], # required
    #             }
    #           ]
    #         }
    #       ]
    #     },
    #     execution_summary_result: {
    #       execution_summaries: [ # required
    #         {
    #           cluster_id: 1, # required
    #           name: "String", # required
    #           description: "String", # required
    #           affected_session_count: 1, # required
    #           affected_sessions: [ # required
    #             {
    #               session_id: "String", # required
    #               approach_taken: "String", # required
    #               final_outcome: "String", # required
    #             }
    #           ]
    #         }
    #       ]
    #     },
    #     error_details: ["String"],
    #     description: "BatchEvaluationDescription",
    #     updated_at: Time.now,
    #     kms_key_arn: "KmsKeyArn"
    #   }
    # @return [Types::GetBatchEvaluationResponse]
    def get_batch_evaluation(params = {}, options = {})
      request = build_request(:get_batch_evaluation, params)
      request.send_request(options)
    end

    # <p>Retrieves detailed information about a specific browser session in Amazon Bedrock AgentCore. This operation returns the session's configuration, current status, associated streams, and metadata.</p> <p>To get a browser session, you must specify both the browser identifier and the session ID. The response includes information about the session's viewport configuration, timeout settings, and stream endpoints.</p> <p>The following operations are related to <code>GetBrowserSession</code>:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/bedrock-agentcore/latest/APIReference/API_StartBrowserSession.html">StartBrowserSession</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/bedrock-agentcore/latest/APIReference/API_ListBrowserSessions.html">ListBrowserSessions</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/bedrock-agentcore/latest/APIReference/API_StopBrowserSession.html">StopBrowserSession</a> </p> </li> </ul>
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
    #     extensions: [
    #       {
    #         location: { # required
    #           # One of:
    #           s3: {
    #             bucket: "String", # required
    #             prefix: "String", # required
    #             version_id: "String"
    #           }
    #         }
    #       }
    #     ],
    #     enterprise_policies: [
    #       {
    #         location: { # required
    #           # One of:
    #           s3: {
    #             bucket: "String", # required
    #             prefix: "String", # required
    #             version_id: "String"
    #           }
    #         },
    #         type: "MANAGED" # One of: ["MANAGED", "RECOMMENDED"]
    #       }
    #     ],
    #     profile_configuration: {
    #       profile_identifier: "BrowserProfileId", # required
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
    #     proxy_configuration: {
    #       proxies: [{ # required
    #         # One of:
    #         external_proxy: {
    #           server: "HostName", # required
    #           port: 1, # required
    #           domain_patterns: ["DomainPattern"],
    #           credentials: {
    #             # One of:
    #             basic_auth: {
    #               secret_arn: "SecretArn", # required
    #             }
    #           }
    #         }
    #       }],
    #       bypass: {
    #         domain_patterns: ["DomainPattern"]
    #       }
    #     },
    #     certificates: [
    #       {
    #         location: { # required
    #           # One of:
    #           secrets_manager: {
    #             secret_arn: "SecretArn", # required
    #           }
    #         }
    #       }
    #     ],
    #     filesystem_configurations: [{
    #       # One of:
    #       s3_files_configuration: {
    #         access_point_arn: "S3FilesAccessPointArn", # required
    #         mount_path: "MountPath", # required
    #         file_system_arn: "S3FilesFileSystemArn", # required
    #       },
    #       efs_configuration: {
    #         access_point_arn: "EfsAccessPointArn", # required
    #         mount_path: "MountPath", # required
    #         file_system_arn: "EfsFileSystemArn", # required
    #       }
    #     }],
    #     session_replay_artifact: "String",
    #     last_updated_at: Time.now
    #   }
    # @return [Types::GetBrowserSessionResponse]
    def get_browser_session(params = {}, options = {})
      request = build_request(:get_browser_session, params)
      request.send_request(options)
    end

    # <p>Retrieves detailed information about a specific code interpreter session in Amazon Bedrock AgentCore. This operation returns the session's configuration, current status, and metadata.</p> <p>To get a code interpreter session, you must specify both the code interpreter identifier and the session ID. The response includes information about the session's timeout settings and current status.</p> <p>The following operations are related to <code>GetCodeInterpreterSession</code>:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/bedrock-agentcore/latest/APIReference/API_StartCodeInterpreterSession.html">StartCodeInterpreterSession</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/bedrock-agentcore/latest/APIReference/API_ListCodeInterpreterSessions.html">ListCodeInterpreterSessions</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/bedrock-agentcore/latest/APIReference/API_StopCodeInterpreterSession.html">StopCodeInterpreterSession</a> </p> </li> </ul>
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
    #     status: "READY" # One of: ["READY", "TERMINATED"],
    #     certificates: [
    #       {
    #         location: { # required
    #           # One of:
    #           secrets_manager: {
    #             secret_arn: "SecretArn", # required
    #           }
    #         }
    #       }
    #     ],
    #     filesystem_configurations: [{
    #       # One of:
    #       s3_files_configuration: {
    #         access_point_arn: "S3FilesAccessPointArn", # required
    #         mount_path: "MountPath", # required
    #         file_system_arn: "S3FilesFileSystemArn", # required
    #       },
    #       efs_configuration: {
    #         access_point_arn: "EfsAccessPointArn", # required
    #         mount_path: "MountPath", # required
    #         file_system_arn: "EfsFileSystemArn", # required
    #       }
    #     }]
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
    #         blob: ""null"",
    #         json: {
    #           content: ""null"", # required
    #         }
    #       }],
    #       branch: {
    #         root_event_id: "EventId",
    #         name: "BranchName", # required
    #       },
    #       metadata: {
    #         "MetadataKey" => {
    #           # One of:
    #           string_value: "String"
    #         }
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
    # @option params [String] :namespace
    #   <p>The namespace of the memory record to retrieve. This value is used for IAM condition key authorization.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     memory_id: "MemoryId", # required
    #     memory_record_id: "MemoryRecordId", # required
    #     namespace: "Namespace"
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
    #       timestamp: Time.now,
    #       metadata: {
    #         "MetadataKey" => {
    #           # One of:
    #           string_value: "StringValue",
    #           string_list_value: ["StringListMemberValue"],
    #           number_value: 1.0,
    #           date_time_value: Time.now
    #         }
    #       },
    #       expires_at: Time.now
    #     }
    #   }
    # @return [Types::GetMemoryRecordOutput]
    def get_memory_record(params = {}, options = {})
      request = build_request(:get_memory_record, params)
      request.send_request(options)
    end

    # <p>Get a payment instrument by ID.</p>
    # @param [Hash, Types::GetPaymentInstrumentRequest] params
    # @option params [String] :user_id
    #   <p>The user ID associated with this payment instrument.</p>
    # @option params [String] :agent_name
    #   <p>The agent name associated with this request, used for observability.</p>
    # @option params [String] :payment_manager_arn
    #   <p>The ARN of the payment manager that owns this payment instrument.</p>
    # @option params [String] :payment_connector_id
    #   <p>The ID of the payment connector.</p>
    # @option params [String] :payment_instrument_id
    #   <p>The ID of the payment instrument to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_id: "UserId",
    #     agent_name: "PaymentAgentName",
    #     payment_manager_arn: "PaymentManagerArn", # required
    #     payment_connector_id: "PaymentConnectorId",
    #     payment_instrument_id: "PaymentInstrumentId", # required
    #   }
    #   options = {}
    #   response = client.get_payment_instrument(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     payment_instrument: { # required
    #       payment_instrument_id: "PaymentInstrumentId", # required
    #       payment_manager_arn: "PaymentManagerArn", # required
    #       payment_connector_id: "PaymentConnectorId", # required
    #       user_id: "UserId", # required
    #       payment_instrument_type: "EMBEDDED_CRYPTO_WALLET" # One of: ["EMBEDDED_CRYPTO_WALLET"], # required
    #       payment_instrument_details: { # required
    #         # One of:
    #         embedded_crypto_wallet: {
    #           network: "ETHEREUM" # One of: ["ETHEREUM", "SOLANA"], # required
    #           linked_accounts: [{ # required
    #             # One of:
    #             email: {
    #               email_address: "Email", # required
    #             },
    #             sms: {
    #               phone_number: "PhoneNumber", # required
    #             },
    #             developer_jwt: {
    #               kid: "JwtKeyId", # required
    #               sub: "String", # required
    #             },
    #             o_auth2: {
    #               # One of:
    #               google: {
    #                 sub: "String", # required
    #                 email_address: "Email",
    #                 name: "String",
    #                 username: "String"
    #               },
    #               apple: {
    #                 sub: "String", # required
    #                 email_address: "Email",
    #                 name: "String",
    #                 username: "String"
    #               },
    #               x: {
    #                 sub: "String", # required
    #                 email_address: "Email",
    #                 name: "String",
    #                 username: "String"
    #               },
    #               telegram: {
    #                 sub: "String", # required
    #                 email_address: "Email",
    #                 name: "String",
    #                 username: "String"
    #               },
    #               github: {
    #                 sub: "String", # required
    #                 email_address: "Email",
    #                 name: "String",
    #                 username: "String"
    #               }
    #             }
    #           }],
    #           wallet_address: "String",
    #           redirect_url: "String"
    #         }
    #       },
    #       created_at: Time.now, # required
    #       status: "INITIATED" # One of: ["INITIATED", "ACTIVE", "FAILED", "DELETED", "BLOCKED"], # required
    #       updated_at: Time.now, # required
    #     }
    #   }
    # @return [Types::GetPaymentInstrumentResponse]
    def get_payment_instrument(params = {}, options = {})
      request = build_request(:get_payment_instrument, params)
      request.send_request(options)
    end

    # <p>Get the balance of a payment instrument.</p>
    # @param [Hash, Types::GetPaymentInstrumentBalanceRequest] params
    # @option params [String] :user_id
    #   <p>The user ID associated with this payment instrument.</p>
    # @option params [String] :agent_name
    #   <p>The agent name associated with this request, used for observability.</p>
    # @option params [String] :payment_manager_arn
    #   <p>The ARN of the payment manager that owns this payment instrument.</p>
    # @option params [String] :payment_connector_id
    #   <p>The ID of the payment connector associated with this instrument.</p>
    # @option params [String] :payment_instrument_id
    #   <p>The ID of the payment instrument to query balance for.</p>
    # @option params [String] :chain
    #   <p>The specific blockchain chain to query balance on. Required because balances are chain-specific.</p>
    # @option params [String] :token
    #   <p>The token to query balance for. Only tokens supported for X402 payments are returned.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_id: "UserId",
    #     agent_name: "PaymentAgentName",
    #     payment_manager_arn: "PaymentManagerArn", # required
    #     payment_connector_id: "PaymentConnectorId", # required
    #     payment_instrument_id: "PaymentInstrumentId", # required
    #     chain: "BASE" # One of: ["BASE", "BASE_SEPOLIA", "ETHEREUM", "SOLANA", "SOLANA_DEVNET"], # required
    #     token: "USDC" # One of: ["USDC"], # required
    #   }
    #   options = {}
    #   response = client.get_payment_instrument_balance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     payment_instrument_id: "PaymentInstrumentId", # required
    #     token_balance: { # required
    #       amount: "String", # required
    #       decimals: 1, # required
    #       token: "USDC" # One of: ["USDC"], # required
    #       network: "ETHEREUM" # One of: ["ETHEREUM", "SOLANA"], # required
    #       chain: "BASE" # One of: ["BASE", "BASE_SEPOLIA", "ETHEREUM", "SOLANA", "SOLANA_DEVNET"], # required
    #     }
    #   }
    # @return [Types::GetPaymentInstrumentBalanceResponse]
    def get_payment_instrument_balance(params = {}, options = {})
      request = build_request(:get_payment_instrument_balance, params)
      request.send_request(options)
    end

    # <p>Get a payment session.</p>
    # @param [Hash, Types::GetPaymentSessionRequest] params
    # @option params [String] :user_id
    #   <p>The user ID associated with this payment session.</p>
    # @option params [String] :agent_name
    #   <p>The agent name associated with this request, used for observability.</p>
    # @option params [String] :payment_manager_arn
    #   <p>The ARN of the payment manager that owns this session.</p>
    # @option params [String] :payment_session_id
    #   <p>The ID of the payment session to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_id: "UserId",
    #     agent_name: "PaymentAgentName",
    #     payment_manager_arn: "PaymentManagerArn", # required
    #     payment_session_id: "PaymentSessionId", # required
    #   }
    #   options = {}
    #   response = client.get_payment_session(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     payment_session: { # required
    #       payment_session_id: "PaymentSessionId", # required
    #       payment_manager_arn: "PaymentManagerArn", # required
    #       limits: {
    #         max_spend_amount: { # required
    #           value: "String", # required
    #           currency: "USD" # One of: ["USD"], # required
    #         }
    #       },
    #       user_id: "UserId", # required
    #       expiry_time_in_minutes: 1, # required
    #       created_at: Time.now, # required
    #       available_limits: {
    #         available_spend_amount: {
    #           value: "String", # required
    #           currency: "USD" # One of: ["USD"], # required
    #         },
    #         updated_at: Time.now
    #       },
    #       updated_at: Time.now, # required
    #     }
    #   }
    # @return [Types::GetPaymentSessionResponse]
    def get_payment_session(params = {}, options = {})
      request = build_request(:get_payment_session, params)
      request.send_request(options)
    end

    # <p>Retrieves detailed information about a recommendation, including its configuration, status, and results.</p>
    # @param [Hash, Types::GetRecommendationRequest] params
    # @option params [String] :recommendation_id
    #   <p>The unique identifier of the recommendation to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     recommendation_id: "RecommendationId", # required
    #   }
    #   options = {}
    #   response = client.get_recommendation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     recommendation_id: "RecommendationId", # required
    #     recommendation_arn: "RecommendationArn", # required
    #     name: "RecommendationName", # required
    #     description: "RecommendationDescription",
    #     type: "SYSTEM_PROMPT_RECOMMENDATION" # One of: ["SYSTEM_PROMPT_RECOMMENDATION", "TOOL_DESCRIPTION_RECOMMENDATION"], # required
    #     recommendation_config: { # required
    #       # One of:
    #       system_prompt_recommendation_config: {
    #         system_prompt: { # required
    #           # One of:
    #           text: "SystemPromptText",
    #           configuration_bundle: {
    #             bundle_arn: "ConfigurationBundleArn", # required
    #             version_id: "ConfigurationBundleVersionId", # required
    #             system_prompt_json_path: "String", # required
    #           }
    #         },
    #         agent_traces: { # required
    #           # One of:
    #           session_spans: [""null""],
    #           cloudwatch_logs: {
    #             log_group_arns: ["String"], # required
    #             service_names: ["ServiceName"], # required
    #             start_time: Time.now, # required
    #             end_time: Time.now, # required
    #             rule: {
    #               filters: [
    #                 {
    #                   key: "String", # required
    #                   operator: "Equals" # One of: ["Equals", "NotEquals", "GreaterThan", "LessThan", "GreaterThanOrEqual", "LessThanOrEqual", "Contains", "NotContains"], # required
    #                   value: { # required
    #                     # One of:
    #                     string_value: "FilterStringValue",
    #                     double_value: 1.0,
    #                     boolean_value: false
    #                   }
    #                 }
    #               ]
    #             }
    #           },
    #           batch_evaluation: {
    #             batch_evaluation_arn: "BatchEvaluationArn", # required
    #           },
    #           online_evaluation: {
    #             online_evaluation_config_arn: "OnlineEvaluationConfigArn", # required
    #             start_time: Time.now, # required
    #             end_time: Time.now, # required
    #           }
    #         },
    #         evaluation_config: {
    #           evaluators: [ # required
    #             {
    #               evaluator_arn: "EvaluatorArn", # required
    #             }
    #           ]
    #         }
    #       },
    #       tool_description_recommendation_config: {
    #         tool_description: { # required
    #           # One of:
    #           tool_description_text: {
    #             tools: [ # required
    #               {
    #                 tool_name: "RecommendationToolName", # required
    #                 tool_description: { # required
    #                   # One of:
    #                   text: "ToolDescriptionText"
    #                 }
    #               }
    #             ]
    #           },
    #           configuration_bundle: {
    #             bundle_arn: "ConfigurationBundleArn", # required
    #             version_id: "ConfigurationBundleVersionId", # required
    #             tools: [ # required
    #               {
    #                 tool_name: "RecommendationToolName", # required
    #                 tool_description_json_path: "String", # required
    #               }
    #             ]
    #           }
    #         },
    #         agent_traces: { # required
    #           # One of:
    #           session_spans: [""null""],
    #           cloudwatch_logs: {
    #             log_group_arns: ["String"], # required
    #             service_names: ["ServiceName"], # required
    #             start_time: Time.now, # required
    #             end_time: Time.now, # required
    #             rule: {
    #               filters: [
    #                 {
    #                   key: "String", # required
    #                   operator: "Equals" # One of: ["Equals", "NotEquals", "GreaterThan", "LessThan", "GreaterThanOrEqual", "LessThanOrEqual", "Contains", "NotContains"], # required
    #                   value: { # required
    #                     # One of:
    #                     string_value: "FilterStringValue",
    #                     double_value: 1.0,
    #                     boolean_value: false
    #                   }
    #                 }
    #               ]
    #             }
    #           },
    #           batch_evaluation: {
    #             batch_evaluation_arn: "BatchEvaluationArn", # required
    #           },
    #           online_evaluation: {
    #             online_evaluation_config_arn: "OnlineEvaluationConfigArn", # required
    #             start_time: Time.now, # required
    #             end_time: Time.now, # required
    #           }
    #         }
    #       }
    #     },
    #     status: "PENDING" # One of: ["PENDING", "IN_PROGRESS", "COMPLETED", "FAILED", "DELETING"], # required
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #     recommendation_result: {
    #       # One of:
    #       system_prompt_recommendation_result: {
    #         recommended_system_prompt: "SystemPromptText",
    #         configuration_bundle: {
    #           bundle_arn: "ConfigurationBundleArn", # required
    #           version_id: "ConfigurationBundleVersionId", # required
    #         },
    #         explanation: "RecommendationExplanation",
    #         error_code: "RecommendationErrorCode",
    #         error_message: "RecommendationErrorMessage"
    #       },
    #       tool_description_recommendation_result: {
    #         tools: [
    #           {
    #             tool_name: "RecommendationToolName", # required
    #             recommended_tool_description: "ToolDescriptionText",
    #             explanation: "RecommendationExplanation"
    #           }
    #         ],
    #         configuration_bundle: {
    #           bundle_arn: "ConfigurationBundleArn", # required
    #           version_id: "ConfigurationBundleVersionId", # required
    #         },
    #         error_code: "RecommendationErrorCode",
    #         error_message: "RecommendationErrorMessage"
    #       }
    #     },
    #     kms_key_arn: "KmsKeyArn"
    #   }
    # @return [Types::GetRecommendationResponse]
    def get_recommendation(params = {}, options = {})
      request = build_request(:get_recommendation, params)
      request.send_request(options)
    end

    # <p>Retrieves the API key associated with an API key credential provider.</p>
    # @param [Hash, Types::GetResourceApiKeyRequest] params
    # @option params [String] :workload_identity_token
    #   <p>The identity token of the workload from which you want to retrieve the API key.</p>
    # @option params [String] :resource_credential_provider_name
    #   <p>The credential provider name for the resource from which you are retrieving the API key.</p>
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

    # <p>Returns the OAuth 2.0 token of the provided resource.</p>
    # @param [Hash, Types::GetResourceOauth2TokenRequest] params
    # @option params [String] :workload_identity_token
    #   <p>The identity token of the workload from which you want to retrieve the OAuth2 token.</p>
    # @option params [String] :resource_credential_provider_name
    #   <p>The name of the resource's credential provider.</p>
    # @option params [Array<String>] :scopes
    #   <p>The OAuth scopes being requested.</p>
    # @option params [String] :oauth2_flow
    #   <p>The type of flow to be performed.</p>
    # @option params [String] :session_uri
    #   <p>Unique identifier for the user's authentication session for retrieving OAuth2 tokens. This ID tracks the authorization flow state across multiple requests and responses during the OAuth2 authentication process.</p>
    # @option params [String] :resource_oauth2_return_url
    #   <p>The callback URL to redirect to after the OAuth 2.0 token retrieval is complete. This URL must be one of the provided URLs configured for the workload identity.</p>
    # @option params [Boolean] :force_authentication
    #   <p>Indicates whether to always initiate a new three-legged OAuth (3LO) flow, regardless of any existing session.</p>
    # @option params [Hash<String, String>] :custom_parameters
    #   <p>A map of custom parameters to include in the authorization request to the resource credential provider. These parameters are in addition to the standard OAuth 2.0 flow parameters, and will not override them.</p>
    # @option params [String] :custom_state
    #   <p>An opaque string that will be sent back to the callback URL provided in resourceOauth2ReturnUrl. This state should be used to protect the callback URL of your application against CSRF attacks by ensuring the response corresponds to the original request.</p>
    # @option params [Array<String>] :resources
    #   <p>The resources to include in the token request. These are used to specify the target resources for which the OAuth2 token is being requested.</p>
    # @option params [Array<String>] :audiences
    #   <p>The audiences to include in the token request. These are used to specify the intended recipients of the OAuth2 token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workload_identity_token: "WorkloadIdentityTokenType", # required
    #     resource_credential_provider_name: "CredentialProviderName", # required
    #     scopes: ["ScopeType"], # required
    #     oauth2_flow: "USER_FEDERATION" # One of: ["USER_FEDERATION", "M2M", "ON_BEHALF_OF_TOKEN_EXCHANGE"], # required
    #     session_uri: "RequestUri",
    #     resource_oauth2_return_url: "ResourceOauth2ReturnUrlType",
    #     force_authentication: false,
    #     custom_parameters: {
    #       "CustomRequestKeyType" => "CustomRequestValueType"
    #     },
    #     custom_state: "State",
    #     resources: ["ResourceType"],
    #     audiences: ["AudienceType"]
    #   }
    #   options = {}
    #   response = client.get_resource_oauth2_token(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     authorization_url: "AuthorizationUrlType",
    #     access_token: "AccessTokenType",
    #     session_uri: "RequestUri",
    #     session_status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "FAILED"]
    #   }
    # @return [Types::GetResourceOauth2TokenResponse]
    def get_resource_oauth2_token(params = {}, options = {})
      request = build_request(:get_resource_oauth2_token, params)
      request.send_request(options)
    end

    # <p>Generates authentication tokens for payment providers that use vendor-specific authentication mechanisms.</p>
    # @param [Hash, Types::GetResourcePaymentTokenRequest] params
    # @option params [String] :workload_identity_token
    #   <p>Workload access token for authorization.</p>
    # @option params [String] :resource_credential_provider_name
    #   <p>Name of the payment credential provider to use.</p>
    # @option params [Types::PaymentTokenRequestInput] :payment_token_request
    #   <p>Vendor-specific token request input. Contains all request parameters in a type-safe, vendor-specific structure.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workload_identity_token: "WorkloadIdentityTokenType", # required
    #     resource_credential_provider_name: "CredentialProviderName", # required
    #     payment_token_request: { # required
    #       # One of:
    #       coinbase_cdp_token_request: {
    #         request_method: "GET" # One of: ["GET", "POST", "PUT", "DELETE", "PATCH"], # required
    #         request_host: "PaymentRequestHostType",
    #         request_path: "PaymentRequestPathType", # required
    #         include_wallet_auth_token: false,
    #         request_body: "CoinbaseCdpPaymentRequestBodyType"
    #       },
    #       stripe_privy_token_request: {
    #         request_host: "StripePrivyRequestHostType",
    #         request_path: "StripePrivyRequestPathType", # required
    #         request_body: "StripePrivyRequestBodyType", # required
    #         include_authorization_signature: false
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.get_resource_payment_token(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     payment_token_response: { # required
    #       # One of:
    #       coinbase_cdp_token_response: {
    #         bearer_token: "CoinbaseCdpPaymentJwtTokenType", # required
    #         wallet_auth_token: "CoinbaseCdpPaymentJwtTokenType"
    #       },
    #       stripe_privy_token_response: {
    #         authorization_signature: "StripePrivyAuthorizationSignatureType",
    #         request_expiry: 1,
    #         app_id: "StripePrivyAppIdType", # required
    #         basic_auth_token: "StripePrivyBasicAuthTokenType", # required
    #       }
    #     }
    #   }
    # @return [Types::GetResourcePaymentTokenResponse]
    def get_resource_payment_token(params = {}, options = {})
      request = build_request(:get_resource_payment_token, params)
      request.send_request(options)
    end

    # <p>Obtains a workload access token for agentic workloads not acting on behalf of a user.</p>
    # @param [Hash, Types::GetWorkloadAccessTokenRequest] params
    # @option params [String] :workload_name
    #   <p>The unique identifier for the registered workload.</p>
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

    # <p>Obtains a workload access token for agentic workloads acting on behalf of a user, using a JWT token.</p>
    # @param [Hash, Types::GetWorkloadAccessTokenForJWTRequest] params
    # @option params [String] :workload_name
    #   <p>The unique identifier for the registered workload.</p>
    # @option params [String] :user_token
    #   <p>The OAuth 2.0 token issued by the user's identity provider.</p>
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

    # <p>Obtains a workload access token for agentic workloads acting on behalf of a user, using the user's ID.</p>
    # @param [Hash, Types::GetWorkloadAccessTokenForUserIdRequest] params
    # @option params [String] :workload_name
    #   <p>The name of the workload from which you want to retrieve the access token.</p>
    # @option params [String] :user_id
    #   <p>The ID of the user for whom you are retrieving the access token.</p>
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

    # <p>Submits content directly for ingestion to generate long-term memory records in a AgentCore Memory resource.</p> <p>To use this operation, you must have the <code>bedrock-agentcore:IngestData</code> permission.</p>
    # @param [Hash, Types::IngestDataInput] params
    # @option params [String] :memory_id
    #   <p>The identifier of the AgentCore Memory resource to ingest content into.</p>
    # @option params [Types::ContentSource] :source
    #   <p>The content to ingest. Only inline content is supported.</p>
    # @option params [Time] :content_timestamp
    #   <p>The timestamp of when the content occurred.</p>
    # @option params [String] :actor_id
    #   <p>The identifier of the actor associated with this content. An actor represents an entity that participates in sessions and generates content.</p>
    # @option params [String] :session_id
    #   <p>The identifier of the session that the content belongs to. If not provided, a session identifier is generated and returned in the response.</p>
    # @option params [Types::ExtractionConfig] :extraction_config
    #   <p>The extraction configuration for long-term memory records. Use this parameter to specify namespace variable keys and their values for namespace substitution during extraction.</p>
    # @option params [Hash<String, Types::MetadataValue>] :metadata
    #   <p>The key-value metadata to attach to the content.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure that the operation completes no more than one time. If this token matches a previous request, AgentCore ignores the request, but does not return an error.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     memory_id: "MemoryId", # required
    #     source: { # required
    #       # One of:
    #       inline: {
    #         payload: [{ # required
    #           # One of:
    #           conversational: {
    #             content: { # required
    #               # One of:
    #               text: "SensitiveString"
    #             },
    #             role: "ASSISTANT" # One of: ["ASSISTANT", "USER", "TOOL", "OTHER"], # required
    #           },
    #           json: {
    #             content: ""null"", # required
    #           }
    #         }]
    #       }
    #     },
    #     content_timestamp: Time.now, # required
    #     actor_id: "ActorId", # required
    #     session_id: "SessionId",
    #     extraction_config: {
    #       namespace_variables: {
    #         "NamespaceVariableName" => "NamespaceVariableValue"
    #       }
    #     },
    #     metadata: {
    #       "MetadataKey" => {
    #         # One of:
    #         string_value: "String"
    #       }
    #     },
    #     client_token: "String"
    #   }
    #   options = {}
    #   response = client.ingest_data(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     session_id: "SessionId", # required
    #   }
    # @return [Types::IngestDataOutput]
    def ingest_data(params = {}, options = {})
      request = build_request(:ingest_data, params)
      request.send_request(options)
    end

    # <p>Sends a request to an agent or tool hosted in an Amazon Bedrock AgentCore Runtime and receives responses in real-time. </p> <p>To invoke an agent, you can specify either the AgentCore Runtime ARN or the agent ID with an account ID, and provide a payload containing your request. When you use the agent ID instead of the full ARN, you don't need to URL-encode the identifier. You can optionally specify a qualifier to target a specific endpoint of the agent.</p> <p>This operation supports streaming responses, allowing you to receive partial responses as they become available. We recommend using pagination to ensure that the operation returns quickly and successfully when processing large responses.</p> <p>For example code, see <a href="https://docs.aws.amazon.com/bedrock-agentcore/latest/devguide/runtime-invoke-agent.html">Invoke an AgentCore Runtime agent</a>. </p> <p>If you're integrating your agent with OAuth, you can't use the Amazon Web Services SDK to call <code>InvokeAgentRuntime</code>. Instead, make a HTTPS request to <code>InvokeAgentRuntime</code>. For an example, see <a href="https://docs.aws.amazon.com/bedrock-agentcore/latest/devguide/runtime-oauth.html">Authenticate and authorize with Inbound Auth and Outbound Auth</a>.</p> <p>To use this operation, you must have the <code>bedrock-agentcore:InvokeAgentRuntime</code> permission. If you are making a call to <code>InvokeAgentRuntime</code> on behalf of a user ID with the <code>X-Amzn-Bedrock-AgentCore-Runtime-User-Id</code> header, You require permissions to both actions (<code>bedrock-agentcore:InvokeAgentRuntime</code> and <code>bedrock-agentcore:InvokeAgentRuntimeForUser</code>). </p>
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
    # @option params [String] :mcp_method
    #   <p>The MCP method being invoked. For example, <code>tools/call</code>, <code>resources/read</code>, or <code>prompts/get</code>.</p>
    # @option params [String] :mcp_name
    #   <p>The name of the MCP resource, tool, or prompt being accessed. The value depends on the method:</p> <ul> <li> <p> <code>tools/call</code> – The tool name.</p> </li> <li> <p> <code>resources/read</code> – The resource URI.</p> </li> <li> <p> <code>prompts/get</code> – The prompt name.</p> </li> </ul>
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
    #   <p>The identifier of the agent runtime to invoke. You can specify either the full Amazon Web Services Resource Name (ARN) or the agent ID. If you use the agent ID, you must also provide the <code>accountId</code> query parameter.</p>
    # @option params [String] :qualifier
    #   <p>The qualifier to use for the agent runtime. This is an endpoint name that points to a specific version. If not specified, Amazon Bedrock AgentCore uses the default endpoint of the agent runtime.</p>
    # @option params [String] :account_id
    #   <p>The identifier of the Amazon Web Services account for the agent runtime resource. This parameter is required when you specify an agent ID instead of the full ARN for <code>agentRuntimeArn</code>.</p>
    # @option params [String] :payload
    #   <p>The input data to send to the agent runtime. The format of this data depends on the specific agent configuration and must match the specified content type. For most agents, this is a JSON object containing the user's request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     content_type: "MimeType",
    #     accept: "MimeType",
    #     mcp_session_id: "StringType",
    #     runtime_session_id: "SessionType",
    #     mcp_protocol_version: "StringType",
    #     mcp_method: "StringType",
    #     mcp_name: "StringType",
    #     runtime_user_id: "StringType",
    #     trace_id: "String",
    #     trace_parent: "String",
    #     trace_state: "String",
    #     baggage: "String",
    #     agent_runtime_arn: "String", # required
    #     qualifier: "String",
    #     account_id: "String",
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

    # <p>Executes a command in a runtime session container and streams the output back to the caller. This operation allows you to run shell commands within the agent runtime environment and receive real-time streaming responses including standard output and standard error.</p> <p>To invoke a command, you must specify the agent runtime ARN and a runtime session ID. The command execution supports streaming responses, allowing you to receive output as it becomes available through <code>contentStart</code>, <code>contentDelta</code>, and <code>contentStop</code> events.</p> <p>To use this operation, you must have the <code>bedrock-agentcore:InvokeAgentRuntimeCommand</code> permission.</p>
    # @param [Hash, Types::InvokeAgentRuntimeCommandRequest] params
    # @option params [String] :content_type
    #   <p>The MIME type of the input data in the request payload. This tells the agent runtime how to interpret the payload data. Common values include application/json for JSON data.</p>
    # @option params [String] :accept
    #   <p>The desired MIME type for the response from the agent runtime command. This tells the agent runtime what format to use for the response data. Common values include application/json for JSON data.</p>
    # @option params [String] :runtime_session_id
    #   <p>The unique identifier of the runtime session in which to execute the command. This session ID is used to maintain state and context across multiple command invocations.</p>
    # @option params [String] :trace_id
    #   <p>The trace identifier for request tracking.</p>
    # @option params [String] :trace_parent
    #   <p>The parent trace information for distributed tracing.</p>
    # @option params [String] :trace_state
    #   <p>The trace state information for distributed tracing.</p>
    # @option params [String] :baggage
    #   <p>Additional context information for distributed tracing.</p>
    # @option params [String] :agent_runtime_arn
    #   <p>The Amazon Resource Name (ARN) of the agent runtime on which to execute the command. This identifies the specific agent runtime environment where the command will run.</p>
    # @option params [String] :qualifier
    #   <p>The qualifier to use for the agent runtime. This is an endpoint name that points to a specific version. If not specified, Amazon Bedrock AgentCore uses the default endpoint of the agent runtime.</p>
    # @option params [String] :account_id
    #   <p>The identifier of the Amazon Web Services account for the agent runtime resource. This parameter is required when you specify an agent ID instead of the full ARN for <code>agentRuntimeArn</code>.</p>
    # @option params [Types::InvokeAgentRuntimeCommandRequestBody] :body
    #   <p>The request body containing the command to execute and optional configuration parameters such as timeout settings.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     content_type: "MimeType",
    #     accept: "MimeType",
    #     runtime_session_id: "SessionType",
    #     trace_id: "String",
    #     trace_parent: "String",
    #     trace_state: "String",
    #     baggage: "String",
    #     agent_runtime_arn: "String", # required
    #     qualifier: "String",
    #     account_id: "String",
    #     body: { # required
    #       command: "String", # required
    #       timeout: 1
    #     }
    #   }
    #   options = {}
    #   response = client.invoke_agent_runtime_command(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     runtime_session_id: "SessionId",
    #     trace_id: "String",
    #     trace_parent: "String",
    #     trace_state: "String",
    #     baggage: "String",
    #     content_type: "String", # required
    #     status_code: 1,
    #     stream: { # required
    #       # One of:
    #       chunk: {
    #         content_start: {
    #         },
    #         content_delta: {
    #           stdout: "String",
    #           stderr: "String"
    #         },
    #         content_stop: {
    #           exit_code: 1, # required
    #           status: "COMPLETED" # One of: ["COMPLETED", "TIMED_OUT"], # required
    #         }
    #       },
    #       access_denied_exception: {
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
    #       },
    #       runtime_client_error: {
    #         message: "NonBlankString"
    #       }
    #     }
    #   }
    # @return [Types::InvokeAgentRuntimeCommandResponse]
    def invoke_agent_runtime_command(params = {}, options = {})
      request = build_request(:invoke_agent_runtime_command, params)
      request.send_request(options)
    end

    # <p>Invokes an operating system-level action on a browser session in Amazon Bedrock AgentCore. This operation provides direct OS-level control over browser sessions, enabling mouse actions, keyboard input, and screenshots that the WebSocket-based Chrome DevTools Protocol (CDP) cannot handle — such as interacting with print dialogs, context menus, and JavaScript alerts.</p> <p>You send a request with exactly one action in the <code>BrowserAction</code> union, and receive a corresponding result in the <code>BrowserActionResult</code> union.</p> <p>The following operations are related to <code>InvokeBrowser</code>:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/bedrock-agentcore/latest/APIReference/API_StartBrowserSession.html">StartBrowserSession</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/bedrock-agentcore/latest/APIReference/API_GetBrowserSession.html">GetBrowserSession</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/bedrock-agentcore/latest/APIReference/API_StopBrowserSession.html">StopBrowserSession</a> </p> </li> </ul>
    # @param [Hash, Types::InvokeBrowserRequest] params
    # @option params [String] :browser_identifier
    #   <p>The unique identifier of the browser associated with the session. This must match the identifier used when creating the session with <code>StartBrowserSession</code>.</p>
    # @option params [String] :session_id
    #   <p>The unique identifier of the browser session on which to perform the action. This must be an active session created with <code>StartBrowserSession</code>.</p>
    # @option params [Types::BrowserAction] :action
    #   <p>The browser action to perform. Exactly one member of the <code>BrowserAction</code> union must be set per request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     browser_identifier: "String", # required
    #     session_id: "BrowserSessionId", # required
    #     action: { # required
    #       # One of:
    #       mouse_click: {
    #         x: 1, # required
    #         y: 1, # required
    #         button: "LEFT" # One of: ["LEFT", "RIGHT", "MIDDLE"],
    #         click_count: 1
    #       },
    #       mouse_move: {
    #         x: 1, # required
    #         y: 1, # required
    #       },
    #       mouse_drag: {
    #         end_x: 1, # required
    #         end_y: 1, # required
    #         start_x: 1, # required
    #         start_y: 1, # required
    #         button: "LEFT" # One of: ["LEFT", "RIGHT", "MIDDLE"]
    #       },
    #       mouse_scroll: {
    #         x: 1, # required
    #         y: 1, # required
    #         delta_x: 1,
    #         delta_y: 1
    #       },
    #       key_type: {
    #         text: "String", # required
    #       },
    #       key_press: {
    #         key: "String", # required
    #         presses: 1
    #       },
    #       key_shortcut: {
    #         keys: ["String"], # required
    #       },
    #       screenshot: {
    #         format: "PNG" # One of: ["PNG"]
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.invoke_browser(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     result: { # required
    #       # One of:
    #       mouse_click: {
    #         status: "SUCCESS" # One of: ["SUCCESS", "FAILED"], # required
    #         error: "String"
    #       },
    #       mouse_move: {
    #         status: "SUCCESS" # One of: ["SUCCESS", "FAILED"], # required
    #         error: "String"
    #       },
    #       mouse_drag: {
    #         status: "SUCCESS" # One of: ["SUCCESS", "FAILED"], # required
    #         error: "String"
    #       },
    #       mouse_scroll: {
    #         status: "SUCCESS" # One of: ["SUCCESS", "FAILED"], # required
    #         error: "String"
    #       },
    #       key_type: {
    #         status: "SUCCESS" # One of: ["SUCCESS", "FAILED"], # required
    #         error: "String"
    #       },
    #       key_press: {
    #         status: "SUCCESS" # One of: ["SUCCESS", "FAILED"], # required
    #         error: "String"
    #       },
    #       key_shortcut: {
    #         status: "SUCCESS" # One of: ["SUCCESS", "FAILED"], # required
    #         error: "String"
    #       },
    #       screenshot: {
    #         status: "SUCCESS" # One of: ["SUCCESS", "FAILED"], # required
    #         error: "String",
    #         data: "data"
    #       }
    #     },
    #     session_id: "BrowserSessionId", # required
    #   }
    # @return [Types::InvokeBrowserResponse]
    def invoke_browser(params = {}, options = {})
      request = build_request(:invoke_browser, params)
      request.send_request(options)
    end

    # <p>Executes code within an active code interpreter session in Amazon Bedrock AgentCore. This operation processes the provided code, runs it in a secure environment, and returns the execution results including output, errors, and generated visualizations.</p> <p>To execute code, you must specify the code interpreter identifier, session ID, and the code to run in the arguments parameter. The operation returns a stream containing the execution results, which can include text output, error messages, and data visualizations.</p> <p>This operation is subject to request rate limiting based on your account's service quotas.</p> <p>The following operations are related to <code>InvokeCodeInterpreter</code>:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/bedrock-agentcore/latest/APIReference/API_StartCodeInterpreterSession.html">StartCodeInterpreterSession</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/bedrock-agentcore/latest/APIReference/API_GetCodeInterpreterSession.html">GetCodeInterpreterSession</a> </p> </li> </ul>
    # @param [Hash, Types::InvokeCodeInterpreterRequest] params
    # @option params [String] :code_interpreter_identifier
    #   <p>The unique identifier of the code interpreter associated with the session. This must match the identifier used when creating the session with <code>StartCodeInterpreterSession</code>.</p>
    # @option params [String] :session_id
    #   <p>The unique identifier of the code interpreter session to use. This must be an active session created with <code>StartCodeInterpreterSession</code>. If the session has expired or been stopped, the request will fail.</p>
    # @option params [String] :trace_id
    #   <p>The trace identifier for request tracking.</p>
    # @option params [String] :trace_parent
    #   <p>The parent trace information for distributed tracing.</p>
    # @option params [String] :name
    #   <p>The name of the code interpreter to invoke.</p>
    # @option params [Types::ToolArguments] :arguments
    #   <p>The arguments for the code interpreter. This includes the code to execute and any additional parameters such as the programming language, whether to clear the execution context, and other execution options. The structure of this parameter depends on the specific code interpreter being used.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     code_interpreter_identifier: "String", # required
    #     session_id: "CodeInterpreterSessionId",
    #     trace_id: "String",
    #     trace_parent: "String",
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
    #       task_id: "MaxLenString",
    #       runtime: "nodejs" # One of: ["nodejs", "deno", "python"]
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

    # <p>Operation to invoke a Harness.</p>
    # @param [Hash, Types::InvokeHarnessRequest] params
    # @option params [String] :harness_arn
    #   <p>The ARN of the harness to invoke.</p>
    # @option params [String] :qualifier
    #   <p>The endpoint name to invoke. If omitted, the DEFAULT endpoint is used.</p>
    # @option params [String] :runtime_session_id
    #   <p>The session ID for the invocation. Use the same session ID across requests to continue a conversation.</p>
    # @option params [String] :runtime_user_id
    #   <p>An identifier for the end user making the request. This value is passed through to the runtime container.</p>
    # @option params [String] :trace_parent
    #   <p>W3C trace context parent header containing version, trace ID, parent span ID, and trace flags.</p>
    # @option params [String] :trace_state
    #   <p>W3C trace context state header for vendor-specific trace information.</p>
    # @option params [String] :trace_id
    #   <p>Trace ID for maintaining observability through the operation.</p>
    # @option params [String] :baggage
    #   <p>W3C Baggage header for user-defined context propagation. Format: key1=value1,key2=value2</p>
    # @option params [Array<Types::HarnessMessage>] :messages
    #   <p>The messages to send to the agent.</p>
    # @option params [Types::HarnessModelConfiguration] :model
    #   <p>The model configuration to use for this invocation. If specified, overrides the harness default.</p>
    # @option params [Array<Types::HarnessSystemContentBlock>] :system_prompt
    #   <p>The system prompt to use for this invocation. If specified, overrides the harness default.</p>
    # @option params [Array<Types::HarnessTool>] :tools
    #   <p>The tools available to the agent for this invocation. If specified, overrides the harness default.</p>
    # @option params [Array<Types::HarnessSkill>] :skills
    #   <p>The skills available to the agent for this invocation. If specified, overrides the harness default.</p>
    # @option params [Array<String>] :allowed_tools
    #   <p>The tools that the agent is allowed to use for this invocation. If specified, overrides the harness default.</p>
    # @option params [Integer] :max_iterations
    #   <p>The maximum number of iterations the agent loop can execute. If specified, overrides the harness default.</p>
    # @option params [Integer] :max_tokens
    #   <p>The maximum number of tokens the agent can generate per iteration. If specified, overrides the harness default.</p>
    # @option params [Integer] :timeout_seconds
    #   <p>The maximum duration in seconds for the agent loop execution. If specified, overrides the harness default.</p>
    # @option params [String] :actor_id
    #   <p>The actor ID for memory operations. Overrides the actor ID configured on the harness.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     harness_arn: "HarnessArn", # required
    #     qualifier: "HarnessEndpointName",
    #     runtime_session_id: "SessionId", # required
    #     runtime_user_id: "String",
    #     trace_parent: "String",
    #     trace_state: "String",
    #     trace_id: "String",
    #     baggage: "String",
    #     messages: [ # required
    #       {
    #         role: "user" # One of: ["user", "assistant"], # required
    #         content: [{ # required
    #           # One of:
    #           text: "SensitiveText",
    #           tool_use: {
    #             name: "HarnessToolName", # required
    #             tool_use_id: "HarnessToolUseId", # required
    #             input: ""null"", # required
    #             type: "tool_use" # One of: ["tool_use", "server_tool_use", "mcp_tool_use"],
    #             server_name: "String"
    #           },
    #           tool_result: {
    #             tool_use_id: "HarnessToolUseId", # required
    #             content: [{ # required
    #               # One of:
    #               text: "SensitiveText",
    #               json: ""null""
    #             }],
    #             status: "success" # One of: ["success", "error"],
    #             type: "tool_use" # One of: ["tool_use", "server_tool_use", "mcp_tool_use"]
    #           },
    #           reasoning_content: {
    #             # One of:
    #             reasoning_text: {
    #               text: "String", # required
    #               signature: "String"
    #             },
    #             redacted_content: "data"
    #           }
    #         }]
    #       }
    #     ],
    #     model: {
    #       # One of:
    #       bedrock_model_config: {
    #         model_id: "ModelId", # required
    #         max_tokens: 1,
    #         temperature: 1.0,
    #         top_p: 1.0,
    #         api_format: "converse_stream" # One of: ["converse_stream", "responses", "chat_completions"],
    #         additional_params: ""null""
    #       },
    #       open_ai_model_config: {
    #         model_id: "ModelId", # required
    #         api_key_arn: "ApiKeyArn", # required
    #         api_base: "HarnessOpenAiApiBase",
    #         max_tokens: 1,
    #         temperature: 1.0,
    #         top_p: 1.0,
    #         api_format: "chat_completions" # One of: ["chat_completions", "responses"],
    #         additional_params: ""null""
    #       },
    #       gemini_model_config: {
    #         model_id: "ModelId", # required
    #         api_key_arn: "ApiKeyArn", # required
    #         max_tokens: 1,
    #         temperature: 1.0,
    #         top_p: 1.0,
    #         top_k: 1,
    #         additional_params: ""null""
    #       },
    #       lite_llm_model_config: {
    #         model_id: "ModelId", # required
    #         api_key_arn: "ApiKeyArn",
    #         api_base: "HarnessLiteLlmApiBase",
    #         max_tokens: 1,
    #         temperature: 1.0,
    #         top_p: 1.0,
    #         additional_params: ""null""
    #       }
    #     },
    #     system_prompt: [{
    #       # One of:
    #       text: "SensitiveText"
    #     }],
    #     tools: [
    #       {
    #         type: "remote_mcp" # One of: ["remote_mcp", "agentcore_browser", "agentcore_gateway", "inline_function", "agentcore_code_interpreter"], # required
    #         name: "HarnessToolName",
    #         config: {
    #           # One of:
    #           remote_mcp: {
    #             url: "HarnessRemoteMcpUrl", # required
    #             headers: {
    #               "HttpHeaderKey" => "HttpHeaderValue"
    #             }
    #           },
    #           agent_core_browser: {
    #             browser_arn: "HarnessBrowserArn"
    #           },
    #           agent_core_gateway: {
    #             gateway_arn: "GatewayArn", # required
    #             outbound_auth: {
    #               # One of:
    #               aws_iam: {
    #               },
    #               none: {
    #               },
    #               oauth: {
    #                 provider_arn: "OAuthCredentialProviderArn", # required
    #                 scopes: ["OAuthScope"], # required
    #                 custom_parameters: {
    #                   "OAuthCustomParametersKey" => "OAuthCustomParametersValue"
    #                 },
    #                 grant_type: "CLIENT_CREDENTIALS" # One of: ["CLIENT_CREDENTIALS", "AUTHORIZATION_CODE", "TOKEN_EXCHANGE"],
    #                 default_return_url: "OAuthDefaultReturnUrl"
    #               }
    #             }
    #           },
    #           inline_function: {
    #             description: "HarnessInlineFunctionDescription", # required
    #             input_schema: ""null"", # required
    #           },
    #           agent_core_code_interpreter: {
    #             code_interpreter_arn: "HarnessCodeInterpreterArn"
    #           }
    #         }
    #       }
    #     ],
    #     skills: [{
    #       # One of:
    #       path: "HarnessSkillPath",
    #       s3: {
    #         uri: "HarnessSkillS3Uri", # required
    #       },
    #       git: {
    #         url: "HarnessSkillGitUrl", # required
    #         path: "String",
    #         auth: {
    #           credential_arn: "ApiKeyArn", # required
    #           username: "String"
    #         }
    #       },
    #       aws_skills: {
    #         paths: ["HarnessAwsSkillPath"]
    #       }
    #     }],
    #     allowed_tools: ["HarnessAllowedTool"],
    #     max_iterations: 1,
    #     max_tokens: 1,
    #     timeout_seconds: 1,
    #     actor_id: "String"
    #   }
    #   options = {}
    #   response = client.invoke_harness(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     stream: { # required
    #       # One of:
    #       message_start: {
    #         role: "user" # One of: ["user", "assistant"], # required
    #       },
    #       content_block_start: {
    #         content_block_index: 1, # required
    #         start: { # required
    #           # One of:
    #           tool_use: {
    #             tool_use_id: "HarnessToolUseId", # required
    #             name: "HarnessToolName", # required
    #             type: "tool_use" # One of: ["tool_use", "server_tool_use", "mcp_tool_use"],
    #             server_name: "String"
    #           },
    #           tool_result: {
    #             tool_use_id: "HarnessToolUseId", # required
    #             status: "success" # One of: ["success", "error"]
    #           }
    #         }
    #       },
    #       content_block_delta: {
    #         content_block_index: 1, # required
    #         delta: { # required
    #           # One of:
    #           text: "SensitiveText",
    #           tool_use: {
    #             input: "SensitiveText", # required
    #           },
    #           tool_result: [{
    #             # One of:
    #             text: "SensitiveText",
    #             json: ""null""
    #           }],
    #           reasoning_content: {
    #             # One of:
    #             text: "String",
    #             redacted_content: "data",
    #             signature: "String"
    #           },
    #           tool_result_metadata: {
    #             metadata: "SensitiveText", # required
    #           }
    #         }
    #       },
    #       content_block_stop: {
    #         content_block_index: 1, # required
    #       },
    #       message_stop: {
    #         stop_reason: "end_turn" # One of: ["end_turn", "tool_use", "tool_result", "max_tokens", "stop_sequence", "content_filtered", "malformed_model_output", "malformed_tool_use", "interrupted", "partial_turn", "model_context_window_exceeded", "max_iterations_exceeded", "max_output_tokens_exceeded", "timeout_exceeded", "hook_stopped"], # required
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
    #         }
    #       },
    #       internal_server_exception: {
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
    #       },
    #       runtime_client_error: {
    #         message: "NonBlankString"
    #       },
    #       hook_event: {
    #         hook_event_id: "HarnessHookEventId", # required
    #         name: "HarnessHookName", # required
    #         type: "before_tool_call" # One of: ["before_tool_call", "after_tool_call", "before_invocation", "after_invocation"], # required
    #         decision: "allow" # One of: ["allow", "deny"],
    #         reason: "String"
    #       }
    #     }
    #   }
    # @return [Types::InvokeHarnessResponse]
    def invoke_harness(params = {}, options = {})
      request = build_request(:invoke_harness, params)
      request.send_request(options)
    end

    # <p>Lists all A/B tests in the account.</p>
    # @param [Hash, Types::ListABTestsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response. If the total number of results is greater than this value, use the token returned in the response in the <code>nextToken</code> field when making another request to return the next batch of results.</p>
    # @option params [String] :next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, enter the token returned in the <code>nextToken</code> field in the response in this field to return the next batch of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_ab_tests(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ab_tests: [ # required
    #       {
    #         ab_test_id: "ABTestId", # required
    #         ab_test_arn: "ABTestArn", # required
    #         name: "ABTestName", # required
    #         status: "CREATING" # One of: ["CREATING", "ACTIVE", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "DELETING", "DELETE_FAILED", "FAILED"], # required
    #         execution_status: "PAUSED" # One of: ["PAUSED", "RUNNING", "STOPPED", "NOT_STARTED"], # required
    #         description: "ABTestDescription",
    #         gateway_arn: "GatewayArn",
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListABTestsResponse]
    def list_ab_tests(params = {}, options = {})
      request = build_request(:list_ab_tests, params)
      request.send_request(options)
    end

    # <p>Lists all actors in an AgentCore Memory resource. We recommend using pagination to ensure that the operation returns quickly and successfully.</p> <p>To use this operation, you must have the <code>bedrock-agentcore:ListActors</code> permission.</p>
    # @param [Hash, Types::ListActorsInput] params
    # @option params [String] :memory_id
    #   <p>The identifier of the AgentCore Memory resource for which to list actors.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. The default value is 20.</p>
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

    # <p>Lists all batch evaluations in the account, providing summary information about each evaluation's status and configuration.</p>
    # @param [Hash, Types::ListBatchEvaluationsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response. If the total number of results is greater than this value, use the token returned in the response in the <code>nextToken</code> field when making another request to return the next batch of results.</p>
    # @option params [String] :next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, enter the token returned in the <code>nextToken</code> field in the response in this field to return the next batch of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_batch_evaluations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     batch_evaluations: [ # required
    #       {
    #         batch_evaluation_id: "BatchEvaluationId", # required
    #         batch_evaluation_arn: "BatchEvaluationArn", # required
    #         batch_evaluation_name: "BatchEvaluationName", # required
    #         status: "PENDING" # One of: ["PENDING", "IN_PROGRESS", "COMPLETED", "COMPLETED_WITH_ERRORS", "FAILED", "STOPPING", "STOPPED", "DELETING"], # required
    #         created_at: Time.now, # required
    #         description: "BatchEvaluationDescription",
    #         evaluators: [
    #           {
    #             evaluator_id: "EvaluatorId", # required
    #           }
    #         ],
    #         insights: [
    #           {
    #             insight_id: "InsightId", # required
    #           }
    #         ],
    #         evaluation_results: {
    #           number_of_sessions_completed: 1,
    #           number_of_sessions_in_progress: 1,
    #           number_of_sessions_failed: 1,
    #           total_number_of_sessions: 1,
    #           number_of_sessions_ignored: 1,
    #           evaluator_summaries: [
    #             {
    #               evaluator_id: "String",
    #               statistics: {
    #                 average_score: 1.0
    #               },
    #               total_evaluated: 1,
    #               total_failed: 1
    #             }
    #           ]
    #         },
    #         error_details: ["String"],
    #         kms_key_arn: "KmsKeyArn",
    #         updated_at: Time.now
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListBatchEvaluationsResponse]
    def list_batch_evaluations(params = {}, options = {})
      request = build_request(:list_batch_evaluations, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of browser sessions in Amazon Bedrock AgentCore that match the specified criteria. This operation returns summary information about each session, including identifiers, status, and timestamps.</p> <p>You can filter the results by browser identifier and session status. The operation supports pagination to handle large result sets efficiently.</p> <p>We recommend using pagination to ensure that the operation returns quickly and successfully when retrieving large numbers of sessions.</p> <p>The following operations are related to <code>ListBrowserSessions</code>:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/bedrock-agentcore/latest/APIReference/API_StartBrowserSession.html">StartBrowserSession</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/bedrock-agentcore/latest/APIReference/API_GetBrowserSession.html">GetBrowserSession</a> </p> </li> </ul>
    # @param [Hash, Types::ListBrowserSessionsRequest] params
    # @option params [String] :browser_identifier
    #   <p>The unique identifier of the browser to list sessions for. If specified, only sessions for this browser are returned. If not specified, sessions for all browsers are returned.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. The default value is 10. Valid values range from 1 to 100. To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results. If not specified, Amazon Bedrock AgentCore returns the first page of results.</p>
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

    # <p>Retrieves a list of code interpreter sessions in Amazon Bedrock AgentCore that match the specified criteria. This operation returns summary information about each session, including identifiers, status, and timestamps.</p> <p>You can filter the results by code interpreter identifier and session status. The operation supports pagination to handle large result sets efficiently.</p> <p>We recommend using pagination to ensure that the operation returns quickly and successfully when retrieving large numbers of sessions.</p> <p>The following operations are related to <code>ListCodeInterpreterSessions</code>:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/bedrock-agentcore/latest/APIReference/API_StartCodeInterpreterSession.html">StartCodeInterpreterSession</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/bedrock-agentcore/latest/APIReference/API_GetCodeInterpreterSession.html">GetCodeInterpreterSession</a> </p> </li> </ul>
    # @param [Hash, Types::ListCodeInterpreterSessionsRequest] params
    # @option params [String] :code_interpreter_identifier
    #   <p>The unique identifier of the code interpreter to list sessions for. If specified, only sessions for this code interpreter are returned. If not specified, sessions for all code interpreters are returned.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. The default value is 10. Valid values range from 1 to 100. To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results. If not specified, Amazon Bedrock AgentCore returns the first page of results.</p>
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
    #   <p>The identifier of the session for which to list events.</p>
    # @option params [String] :actor_id
    #   <p>The identifier of the actor for which to list events.</p>
    # @option params [Boolean] :include_payloads
    #   <p>Specifies whether to include event payloads in the response. Set to true to include payloads, or false to exclude them.</p>
    # @option params [Types::FilterInput] :filter
    #   <p>Filter criteria to apply when listing events.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. The default value is 20.</p>
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
    #       },
    #       event_metadata: [
    #         {
    #           left: { # required
    #             # One of:
    #             metadata_key: "MetadataKey"
    #           },
    #           operator: "EQUALS_TO" # One of: ["EQUALS_TO", "EXISTS", "NOT_EXISTS"], # required
    #           right: {
    #             # One of:
    #             metadata_value: {
    #               # One of:
    #               string_value: "String"
    #             }
    #           }
    #         }
    #       ]
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
    #           blob: ""null"",
    #           json: {
    #             content: ""null"", # required
    #           }
    #         }],
    #         branch: {
    #           root_event_id: "EventId",
    #           name: "BranchName", # required
    #         },
    #         metadata: {
    #           "MetadataKey" => {
    #             # One of:
    #             string_value: "String"
    #           }
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

    # <p>Lists all long-term memory extraction jobs that are eligible to be started with optional filtering.</p> <p>To use this operation, you must have the <code>bedrock-agentcore:ListMemoryExtractionJobs</code> permission.</p>
    # @param [Hash, Types::ListMemoryExtractionJobsInput] params
    # @option params [String] :memory_id
    #   <p>The unique identifier of the memory to list extraction jobs for.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. The default value is 20.</p>
    # @option params [Types::ExtractionJobFilterInput] :filter
    #   <p>Filter criteria to apply when listing extraction jobs.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     memory_id: "MemoryId", # required
    #     max_results: 1,
    #     filter: {
    #       strategy_id: "String",
    #       session_id: "String",
    #       actor_id: "String",
    #       status: "FAILED" # One of: ["FAILED"]
    #     },
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_memory_extraction_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     jobs: [ # required
    #       {
    #         job_id: "String", # required
    #         messages: { # required
    #           # One of:
    #           messages_list: [
    #             {
    #               event_id: "String", # required
    #               message_index: 1, # required
    #             }
    #           ]
    #         },
    #         status: "FAILED" # One of: ["FAILED"],
    #         failure_reason: "String",
    #         strategy_id: "String",
    #         session_id: "String",
    #         actor_id: "String"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListMemoryExtractionJobsOutput]
    def list_memory_extraction_jobs(params = {}, options = {})
      request = build_request(:list_memory_extraction_jobs, params)
      request.send_request(options)
    end

    # <p>Lists memory records in an AgentCore Memory resource based on specified criteria. We recommend using pagination to ensure that the operation returns quickly and successfully.</p> <p>To use this operation, you must have the <code>bedrock-agentcore:ListMemoryRecords</code> permission.</p>
    # @param [Hash, Types::ListMemoryRecordsInput] params
    # @option params [String] :memory_id
    #   <p>The identifier of the AgentCore Memory resource for which to list memory records.</p>
    # @option params [String] :namespace
    #   <p>The namespace prefix to filter memory records by. Returns all memory records in namespaces that start with the provided prefix. Either <code>namespace</code> or <code>namespacePath</code> is required.</p>
    # @option params [String] :namespace_path
    #   <p>Use namespacePath for hierarchical retrievals. Return all memory records where namespace falls under the same parent hierarchy. Either <code>namespace</code> or <code>namespacePath</code> is required.</p>
    # @option params [String] :memory_strategy_id
    #   <p>The memory strategy identifier to filter memory records by. If specified, only memory records with this strategy ID are returned.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. The default value is 20.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>
    # @option params [Array<Types::MemoryMetadataFilterExpression>] :metadata_filters
    #   <p>A list of metadata filter expressions to scope the returned memory records.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     memory_id: "MemoryId", # required
    #     namespace: "Namespace",
    #     namespace_path: "Namespace",
    #     memory_strategy_id: "MemoryStrategyId",
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     metadata_filters: [
    #       {
    #         left: { # required
    #           # One of:
    #           metadata_key: "MetadataKey"
    #         },
    #         operator: "EQUALS_TO" # One of: ["EQUALS_TO", "EXISTS", "NOT_EXISTS", "BEFORE", "AFTER", "CONTAINS", "GREATER_THAN", "GREATER_THAN_OR_EQUALS", "LESS_THAN", "LESS_THAN_OR_EQUALS"], # required
    #         right: {
    #           # One of:
    #           metadata_value: {
    #             # One of:
    #             string_value: "StringValue",
    #             string_list_value: ["StringListMemberValue"],
    #             number_value: 1.0,
    #             date_time_value: Time.now
    #           }
    #         }
    #       }
    #     ]
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
    #         score: 1.0,
    #         timestamp: Time.now,
    #         metadata: {
    #           "MetadataKey" => {
    #             # One of:
    #             string_value: "StringValue",
    #             string_list_value: ["StringListMemberValue"],
    #             number_value: 1.0,
    #             date_time_value: Time.now
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListMemoryRecordsOutput]
    def list_memory_records(params = {}, options = {})
      request = build_request(:list_memory_records, params)
      request.send_request(options)
    end

    # <p>List payment instruments for a manager.</p>
    # @param [Hash, Types::ListPaymentInstrumentsRequest] params
    # @option params [String] :user_id
    #   <p>The user ID associated with the payment instruments.</p>
    # @option params [String] :agent_name
    #   <p>The agent name associated with this request, used for observability.</p>
    # @option params [String] :payment_manager_arn
    #   <p>The ARN of the payment manager that owns the payment instruments.</p>
    # @option params [String] :payment_connector_id
    #   <p>The ID of the payment connector to filter by.</p>
    # @option params [String] :next_token
    #   <p>Token for pagination to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to return in a single response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_id: "UserId",
    #     agent_name: "PaymentAgentName",
    #     payment_manager_arn: "PaymentManagerArn", # required
    #     payment_connector_id: "PaymentConnectorId",
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_payment_instruments(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     payment_instruments: [ # required
    #       {
    #         payment_instrument_id: "PaymentInstrumentId", # required
    #         payment_manager_arn: "PaymentManagerArn", # required
    #         payment_connector_id: "PaymentConnectorId", # required
    #         user_id: "UserId", # required
    #         payment_instrument_type: "EMBEDDED_CRYPTO_WALLET" # One of: ["EMBEDDED_CRYPTO_WALLET"], # required
    #         status: "INITIATED" # One of: ["INITIATED", "ACTIVE", "FAILED", "DELETED", "BLOCKED"], # required
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListPaymentInstrumentsResponse]
    def list_payment_instruments(params = {}, options = {})
      request = build_request(:list_payment_instruments, params)
      request.send_request(options)
    end

    # <p>List payment sessions.</p>
    # @param [Hash, Types::ListPaymentSessionsRequest] params
    # @option params [String] :user_id
    #   <p>The user ID associated with the payment sessions.</p>
    # @option params [String] :agent_name
    #   <p>The agent name associated with this request, used for observability.</p>
    # @option params [String] :payment_manager_arn
    #   <p>The ARN of the payment manager that owns the sessions.</p>
    # @option params [String] :next_token
    #   <p>Token for pagination to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to return in a single response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_id: "UserId",
    #     agent_name: "PaymentAgentName",
    #     payment_manager_arn: "PaymentManagerArn", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_payment_sessions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     payment_sessions: [ # required
    #       {
    #         payment_session_id: "PaymentSessionId", # required
    #         payment_manager_arn: "PaymentManagerArn", # required
    #         user_id: "UserId", # required
    #         expiry_time_in_minutes: 1, # required
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListPaymentSessionsResponse]
    def list_payment_sessions(params = {}, options = {})
      request = build_request(:list_payment_sessions, params)
      request.send_request(options)
    end

    # <p>Lists all recommendations in the account, with optional filtering by status.</p>
    # @param [Hash, Types::ListRecommendationsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response. If the total number of results is greater than this value, use the token returned in the response in the <code>nextToken</code> field when making another request to return the next batch of results.</p>
    # @option params [String] :next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, enter the token returned in the <code>nextToken</code> field in the response in this field to return the next batch of results.</p>
    # @option params [String] :status_filter
    #   <p>Optional filter to return only recommendations with the specified status.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken",
    #     status_filter: "PENDING" # One of: ["PENDING", "IN_PROGRESS", "COMPLETED", "FAILED", "DELETING"]
    #   }
    #   options = {}
    #   response = client.list_recommendations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     recommendation_summaries: [ # required
    #       {
    #         recommendation_id: "RecommendationId", # required
    #         recommendation_arn: "RecommendationArn", # required
    #         name: "RecommendationName", # required
    #         description: "RecommendationDescription",
    #         type: "SYSTEM_PROMPT_RECOMMENDATION" # One of: ["SYSTEM_PROMPT_RECOMMENDATION", "TOOL_DESCRIPTION_RECOMMENDATION"], # required
    #         status: "PENDING" # One of: ["PENDING", "IN_PROGRESS", "COMPLETED", "FAILED", "DELETING"], # required
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListRecommendationsResponse]
    def list_recommendations(params = {}, options = {})
      request = build_request(:list_recommendations, params)
      request.send_request(options)
    end

    # <p>Lists sessions in an AgentCore Memory resource based on specified criteria. We recommend using pagination to ensure that the operation returns quickly and successfully.</p> <p>Empty sessions are automatically deleted after one day.</p> <p>To use this operation, you must have the <code>bedrock-agentcore:ListSessions</code> permission.</p>
    # @param [Hash, Types::ListSessionsInput] params
    # @option params [String] :memory_id
    #   <p>The identifier of the AgentCore Memory resource for which to list sessions.</p>
    # @option params [String] :actor_id
    #   <p>The identifier of the actor for which to list sessions. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. The default value is 20.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>
    # @option params [Types::SessionFilter] :filter
    #   <p>Filter criteria to apply when listing sessions.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     memory_id: "MemoryId", # required
    #     actor_id: "ActorId", # required
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     filter: {
    #       event_filter: "HAS_EVENTS" # One of: ["HAS_EVENTS"]
    #     }
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

    # <p>Processes a payment using a payment instrument within a payment session.</p>
    # @param [Hash, Types::ProcessPaymentRequest] params
    # @option params [String] :user_id
    #   <p>The user ID associated with this payment.</p>
    # @option params [String] :agent_name
    #   <p>The agent name associated with this request, used for observability.</p>
    # @option params [String] :payment_manager_arn
    #   <p>The ARN of the payment manager.</p>
    # @option params [String] :payment_session_id
    #   <p>The ID of the payment session.</p>
    # @option params [String] :payment_instrument_id
    #   <p>The ID of the payment instrument to use.</p>
    # @option params [String] :payment_type
    #   <p>The type of payment to process.</p>
    # @option params [Types::PaymentInput] :payment_input
    #   <p>The payment input details specific to the payment type.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_id: "UserId",
    #     agent_name: "PaymentAgentName",
    #     payment_manager_arn: "PaymentManagerArn", # required
    #     payment_session_id: "PaymentSessionId", # required
    #     payment_instrument_id: "PaymentInstrumentId", # required
    #     payment_type: "CRYPTO_X402" # One of: ["CRYPTO_X402", "MPP"], # required
    #     payment_input: { # required
    #       # One of:
    #       crypto_x402: {
    #         version: "String", # required
    #         payload: ""null"", # required
    #         permit2_allowance_limit: "Permit2AllowanceLimit"
    #       },
    #       mpp: {
    #         version: "Version", # required
    #         www_authenticate_headers: ["WwwAuthenticateHeader"], # required
    #         buyer_pays_gas_fees: false
    #       }
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.process_payment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     process_payment_id: "ProcessPaymentId", # required
    #     payment_manager_arn: "PaymentManagerArn", # required
    #     payment_session_id: "PaymentSessionId", # required
    #     payment_instrument_id: "PaymentInstrumentId", # required
    #     payment_type: "CRYPTO_X402" # One of: ["CRYPTO_X402", "MPP"], # required
    #     status: "PROOF_GENERATED" # One of: ["PROOF_GENERATED"], # required
    #     payment_output: { # required
    #       # One of:
    #       crypto_x402: {
    #         version: "String", # required
    #         payload: ""null"", # required
    #       },
    #       mpp: {
    #         version: "Version", # required
    #         selected_payment_id: "String", # required
    #         payment_credential: "MppPaymentCredential", # required
    #       }
    #     },
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #   }
    # @return [Types::ProcessPaymentResponse]
    def process_payment(params = {}, options = {})
      request = build_request(:process_payment, params)
      request.send_request(options)
    end

    # <p>Searches for and retrieves memory records from an AgentCore Memory resource based on specified search criteria. We recommend using pagination to ensure that the operation returns quickly and successfully.</p> <p>To use this operation, you must have the <code>bedrock-agentcore:RetrieveMemoryRecords</code> permission.</p>
    # @param [Hash, Types::RetrieveMemoryRecordsInput] params
    # @option params [String] :memory_id
    #   <p>The identifier of the AgentCore Memory resource from which to retrieve memory records.</p>
    # @option params [String] :namespace
    #   <p>The namespace prefix to filter memory records by. Searches for memory records in namespaces that start with the provided prefix. Either <code>namespace</code> or <code>namespacePath</code> is required.</p>
    # @option params [String] :namespace_path
    #   <p>Use namespacePath for hierarchical retrievals. Return all memory records where namespace falls under the same parent hierarchy. Either <code>namespace</code> or <code>namespacePath</code> is required.</p>
    # @option params [Types::SearchCriteria] :search_criteria
    #   <p>The search criteria to use for finding relevant memory records. This includes the search query, memory strategy ID, and other search parameters.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. The default value is 20.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     memory_id: "MemoryId", # required
    #     namespace: "Namespace",
    #     namespace_path: "Namespace",
    #     search_criteria: { # required
    #       search_query: "SensitiveString", # required
    #       memory_strategy_id: "MemoryStrategyId",
    #       top_k: 1,
    #       metadata_filters: [
    #         {
    #           left: { # required
    #             # One of:
    #             metadata_key: "MetadataKey"
    #           },
    #           operator: "EQUALS_TO" # One of: ["EQUALS_TO", "EXISTS", "NOT_EXISTS", "BEFORE", "AFTER", "CONTAINS", "GREATER_THAN", "GREATER_THAN_OR_EQUALS", "LESS_THAN", "LESS_THAN_OR_EQUALS"], # required
    #           right: {
    #             # One of:
    #             metadata_value: {
    #               # One of:
    #               string_value: "StringValue",
    #               string_list_value: ["StringListMemberValue"],
    #               number_value: 1.0,
    #               date_time_value: Time.now
    #             }
    #           }
    #         }
    #       ]
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
    #         score: 1.0,
    #         timestamp: Time.now,
    #         metadata: {
    #           "MetadataKey" => {
    #             # One of:
    #             string_value: "StringValue",
    #             string_list_value: ["StringListMemberValue"],
    #             number_value: 1.0,
    #             date_time_value: Time.now
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::RetrieveMemoryRecordsOutput]
    def retrieve_memory_records(params = {}, options = {})
      request = build_request(:retrieve_memory_records, params)
      request.send_request(options)
    end

    # <p>Saves the current state of a browser session as a reusable profile in Amazon Bedrock AgentCore. A browser profile captures persistent browser data such as cookies and local storage from an active session, enabling you to reuse this data in future browser sessions.</p> <p>To save a browser session profile, you must specify the profile identifier, browser identifier, and session ID. The session must be active when saving the profile. Once saved, the profile can be used with the <code>StartBrowserSession</code> operation to initialize new sessions with the stored browser state.</p> <p>Browser profiles are useful for scenarios that require persistent authentication, maintaining user preferences across sessions, or continuing tasks that depend on previously stored browser data.</p> <p>The following operations are related to <code>SaveBrowserSessionProfile</code>:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/bedrock-agentcore/latest/APIReference/API_StartBrowserSession.html">StartBrowserSession</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/bedrock-agentcore/latest/APIReference/API_GetBrowserSession.html">GetBrowserSession</a> </p> </li> </ul>
    # @param [Hash, Types::SaveBrowserSessionProfileRequest] params
    # @option params [String] :trace_id
    #   <p>The trace identifier for request tracking.</p>
    # @option params [String] :trace_parent
    #   <p>The parent trace information for distributed tracing.</p>
    # @option params [String] :profile_identifier
    #   <p>The unique identifier for the browser profile. This identifier is used to reference the profile when starting new browser sessions. The identifier must follow the pattern of an alphanumeric name (up to 48 characters) followed by a hyphen and a 10-character alphanumeric suffix.</p>
    # @option params [String] :browser_identifier
    #   <p>The unique identifier of the browser associated with the session from which to save the profile.</p>
    # @option params [String] :session_id
    #   <p>The unique identifier of the browser session from which to save the profile. The session must be active when saving the profile.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, Amazon Bedrock AgentCore ignores the request, but does not return an error.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     trace_id: "String",
    #     trace_parent: "String",
    #     profile_identifier: "BrowserProfileId", # required
    #     browser_identifier: "String", # required
    #     session_id: "BrowserSessionId", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.save_browser_session_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     profile_identifier: "BrowserProfileId", # required
    #     browser_identifier: "String", # required
    #     session_id: "BrowserSessionId", # required
    #     last_updated_at: Time.now, # required
    #   }
    # @return [Types::SaveBrowserSessionProfileResponse]
    def save_browser_session_profile(params = {}, options = {})
      request = build_request(:save_browser_session_profile, params)
      request.send_request(options)
    end

    # <p> Searches for registry records using semantic, lexical, or hybrid queries. Returns metadata for matching records ordered by relevance within the specified registry.</p>
    # @param [Hash, Types::SearchRegistryRecordsRequest] params
    # @option params [String] :search_query
    #   <p> The search query to find matching registry records.</p>
    # @option params [Array<String>] :registry_ids
    #   <p> The list of registry identifiers to search within. Currently, you can specify exactly one registry identifier. You can provide either the full Amazon Web Services Resource Name (ARN) or the 12-character alphanumeric registry ID.</p>
    # @option params [Integer] :max_results
    #   <p> The maximum number of records to return in a single call. Valid values are 1 through 20. The default value is 10.</p>
    # @option params [JSON] :filters
    #   <p> A metadata filter expression to narrow search results. Uses structured JSON operators including field-level operators (<code>$eq</code>, <code>$ne</code>, <code>$in</code>) and logical operators (<code>$and</code>, <code>$or</code>) on filterable fields (<code>name</code>, <code>descriptorType</code>, <code>version</code>). For example, to filter by descriptor type: <code>{"descriptorType": {"$eq": "MCP"}}</code>. To combine filters: <code>{"$and": [{"descriptorType": {"$eq": "MCP"}}, {"name": {"$eq": "my-tool"}}]}</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     search_query: "String", # required
    #     registry_ids: ["RegistryIdentifier"], # required
    #     max_results: 1,
    #     filters: ""null""
    #   }
    #   options = {}
    #   response = client.search_registry_records(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     registry_records: [ # required
    #       {
    #         registry_arn: "RegistryArn", # required
    #         record_arn: "RegistryRecordArn", # required
    #         record_id: "RegistryRecordId", # required
    #         name: "RegistryRecordName", # required
    #         description: "Description",
    #         descriptor_type: "MCP" # One of: ["MCP", "A2A", "CUSTOM", "AGENT_SKILLS"], # required
    #         descriptors: { # required
    #           mcp: {
    #             server: { # required
    #               schema_version: "SchemaVersion",
    #               inline_content: "InlineContent"
    #             },
    #             tools: { # required
    #               protocol_version: "SchemaVersion",
    #               inline_content: "InlineContent"
    #             }
    #           },
    #           a2a: {
    #             agent_card: { # required
    #               schema_version: "SchemaVersion",
    #               inline_content: "InlineContent"
    #             }
    #           },
    #           custom: {
    #             inline_content: "InlineContent"
    #           },
    #           agent_skills: {
    #             skill_md: { # required
    #               inline_content: "InlineContent"
    #             },
    #             skill_definition: {
    #               schema_version: "SchemaVersion",
    #               inline_content: "InlineContent"
    #             }
    #           }
    #         },
    #         version: "RegistryRecordVersion", # required
    #         status: "DRAFT" # One of: ["DRAFT", "PENDING_APPROVAL", "APPROVED", "REJECTED", "DEPRECATED"], # required
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #       }
    #     ]
    #   }
    # @return [Types::SearchRegistryRecordsResponse]
    def search_registry_records(params = {}, options = {})
      request = build_request(:search_registry_records, params)
      request.send_request(options)
    end

    # <p>Starts a batch evaluation job that evaluates agent performance across multiple sessions. Batch evaluations pull agent traces from CloudWatch Logs or an existing online evaluation configuration and run specified evaluators and insights against them.</p>
    # @param [Hash, Types::StartBatchEvaluationRequest] params
    # @option params [String] :batch_evaluation_name
    #   <p>The name of the batch evaluation. Must be unique within your account.</p>
    # @option params [Array<Types::Evaluator>] :evaluators
    #   <p>The list of evaluators to apply during the batch evaluation. Can include both built-in evaluators and custom evaluators. Maximum of 10 evaluators.</p>
    # @option params [Array<Types::Insight>] :insights
    #   <p>The list of insight analyses to run against sessions during the batch evaluation. Maximum of 10 insights.</p>
    # @option params [Types::DataSourceConfig] :data_source_config
    #   <p>The data source configuration that specifies where to pull agent session traces from for evaluation.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, the service ignores the request, but does not return an error.</p>
    # @option params [Types::EvaluationMetadata] :evaluation_metadata
    #   <p>Optional metadata for the evaluation, including session-specific ground truth data and test scenario identifiers.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A map of tag keys and values to associate with the batch evaluation.</p>
    # @option params [String] :kms_key_arn
    #   <p>The ARN of the KMS key used to encrypt evaluation data. If provided, customer data is encrypted at rest with the specified key.</p>
    # @option params [String] :description
    #   <p>The description of the batch evaluation.</p>
    # @option params [Types::OutputConfig] :output_config
    #   <p>Output destination configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     batch_evaluation_name: "BatchEvaluationName", # required
    #     evaluators: [
    #       {
    #         evaluator_id: "EvaluatorId", # required
    #       }
    #     ],
    #     insights: [
    #       {
    #         insight_id: "InsightId", # required
    #       }
    #     ],
    #     data_source_config: { # required
    #       # One of:
    #       cloud_watch_logs: {
    #         service_names: ["String"], # required
    #         log_group_names: ["LogGroupName"],
    #         log_group_name_prefixes: ["LogGroupNamePrefix"],
    #         filter_config: {
    #           session_ids: ["String"],
    #           time_range: {
    #             start_time: Time.now,
    #             end_time: Time.now
    #           },
    #           session_trace_ids: [
    #             {
    #               session_id: "String", # required
    #               trace_ids: ["TraceId"], # required
    #             }
    #           ]
    #         }
    #       },
    #       online_evaluation_config_source: {
    #         online_evaluation_config_arn: "OnlineEvaluationConfigArn", # required
    #         time_range: {
    #           start_time: Time.now,
    #           end_time: Time.now
    #         }
    #       }
    #     },
    #     client_token: "ClientToken",
    #     evaluation_metadata: {
    #       # One of:
    #       session_metadata: [
    #         {
    #           session_id: "String", # required
    #           test_scenario_id: "String",
    #           ground_truth: {
    #             # One of:
    #             inline: {
    #               assertions: [{
    #                 # One of:
    #                 text: "String"
    #               }],
    #               expected_trajectory: {
    #                 tool_names: ["EvaluationToolName"]
    #               },
    #               turns: [
    #                 {
    #                   input: {
    #                     # One of:
    #                     prompt: "String"
    #                   },
    #                   expected_response: {
    #                     # One of:
    #                     text: "String"
    #                   }
    #                 }
    #               ]
    #             }
    #           },
    #           metadata: {
    #             "String" => "String"
    #           }
    #         }
    #       ]
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     kms_key_arn: "KmsKeyArn",
    #     description: "BatchEvaluationDescription",
    #     output_config: {
    #       # One of:
    #       cloud_watch_config: {
    #         log_group_name: "OptionalLogGroupName",
    #         log_stream_name: "LogStreamName",
    #         metrics_namespace: "MetricsNamespace",
    #         result_destination: "DEDICATED_LOG_GROUP" # One of: ["DEDICATED_LOG_GROUP", "SOURCE_LOG_GROUP"]
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.start_batch_evaluation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     batch_evaluation_id: "BatchEvaluationId", # required
    #     batch_evaluation_arn: "BatchEvaluationArn", # required
    #     batch_evaluation_name: "BatchEvaluationName", # required
    #     evaluators: [
    #       {
    #         evaluator_id: "EvaluatorId", # required
    #       }
    #     ],
    #     insights: [
    #       {
    #         insight_id: "InsightId", # required
    #       }
    #     ],
    #     status: "PENDING" # One of: ["PENDING", "IN_PROGRESS", "COMPLETED", "COMPLETED_WITH_ERRORS", "FAILED", "STOPPING", "STOPPED", "DELETING"], # required
    #     created_at: Time.now, # required
    #     output_config: {
    #       # One of:
    #       cloud_watch_config: {
    #         log_group_name: "OptionalLogGroupName",
    #         log_stream_name: "LogStreamName",
    #         metrics_namespace: "MetricsNamespace",
    #         result_destination: "DEDICATED_LOG_GROUP" # One of: ["DEDICATED_LOG_GROUP", "SOURCE_LOG_GROUP"]
    #       }
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     kms_key_arn: "KmsKeyArn",
    #     description: "BatchEvaluationDescription"
    #   }
    # @return [Types::StartBatchEvaluationResponse]
    def start_batch_evaluation(params = {}, options = {})
      request = build_request(:start_batch_evaluation, params)
      request.send_request(options)
    end

    # <p>Creates and initializes a browser session in Amazon Bedrock AgentCore. The session enables agents to navigate and interact with web content, extract information from websites, and perform web-based tasks as part of their response generation.</p> <p>To create a session, you must specify a browser identifier and a name. You can also configure the viewport dimensions to control the visible area of web content. The session remains active until it times out or you explicitly stop it using the <code>StopBrowserSession</code> operation.</p> <p>The following operations are related to <code>StartBrowserSession</code>:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/bedrock-agentcore/latest/APIReference/API_GetBrowserSession.html">GetBrowserSession</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/bedrock-agentcore/latest/APIReference/API_UpdateBrowserStream.html">UpdateBrowserStream</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/bedrock-agentcore/latest/APIReference/API_SaveBrowserSessionProfile.html">SaveBrowserSessionProfile</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/bedrock-agentcore/latest/APIReference/API_StopBrowserSession.html">StopBrowserSession</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/bedrock-agentcore/latest/APIReference/API_InvokeBrowser.html">InvokeBrowser</a> </p> </li> </ul>
    # @param [Hash, Types::StartBrowserSessionRequest] params
    # @option params [String] :trace_id
    #   <p>The trace identifier for request tracking.</p>
    # @option params [String] :trace_parent
    #   <p>The parent trace information for distributed tracing.</p>
    # @option params [String] :browser_identifier
    #   <p>The unique identifier of the browser to use for this session. This identifier specifies which browser environment to initialize for the session.</p>
    # @option params [String] :name
    #   <p>The name of the browser session. This name helps you identify and manage the session. The name does not need to be unique.</p>
    # @option params [Integer] :session_timeout_seconds
    #   <p>The duration in seconds (time-to-live) after which the session automatically terminates, regardless of ongoing activity. Defaults to 3600 seconds (1 hour). Recommended minimum: 60 seconds. Maximum allowed: 28,800 seconds (8 hours).</p>
    # @option params [Types::ViewPort] :view_port
    #   <p>The dimensions of the browser viewport for this session. This determines the visible area of the web content and affects how web pages are rendered. If not specified, Amazon Bedrock AgentCore uses a default viewport size.</p>
    # @option params [Array<Types::BrowserExtension>] :extensions
    #   <p>A list of browser extensions to load into the browser session.</p>
    # @option params [Types::BrowserProfileConfiguration] :profile_configuration
    #   <p>The browser profile configuration to use for this session. A browser profile contains persistent data such as cookies and local storage that can be reused across multiple browser sessions. If specified, the session initializes with the profile's stored data, enabling continuity for tasks that require authentication or personalized settings.</p>
    # @option params [Types::ProxyConfiguration] :proxy_configuration
    #   <p>Optional proxy configuration for routing browser traffic through customer-specified proxy servers. When provided, enables HTTP Basic authentication via Amazon Web Services Secrets Manager and domain-based routing rules. Requires <code>secretsmanager:GetSecretValue</code> IAM permission for the specified secret ARNs.</p>
    # @option params [Array<Types::BrowserEnterprisePolicy>] :enterprise_policies
    #   <p>A list of files containing enterprise policies for the browser.</p>
    # @option params [Array<Types::Certificate>] :certificates
    #   <p>A list of certificates to install in the browser session.</p>
    # @option params [Array<Types::ToolsFileSystemConfiguration>] :filesystem_configurations
    #   <p>The file system configurations to mount into the browser session. Use these configurations to mount your own Amazon Simple Storage Service (Amazon S3) Files or Amazon Elastic File System (Amazon EFS) access points. Your session can then read and write your data. If you don't specify this field, no additional file systems are mounted.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, Amazon Bedrock AgentCore ignores the request, but does not return an error. This parameter helps prevent the creation of duplicate sessions if there are temporary network issues.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     trace_id: "String",
    #     trace_parent: "String",
    #     browser_identifier: "String", # required
    #     name: "Name",
    #     session_timeout_seconds: 1,
    #     view_port: {
    #       width: 1, # required
    #       height: 1, # required
    #     },
    #     extensions: [
    #       {
    #         location: { # required
    #           # One of:
    #           s3: {
    #             bucket: "String", # required
    #             prefix: "String", # required
    #             version_id: "String"
    #           }
    #         }
    #       }
    #     ],
    #     profile_configuration: {
    #       profile_identifier: "BrowserProfileId", # required
    #     },
    #     proxy_configuration: {
    #       proxies: [{ # required
    #         # One of:
    #         external_proxy: {
    #           server: "HostName", # required
    #           port: 1, # required
    #           domain_patterns: ["DomainPattern"],
    #           credentials: {
    #             # One of:
    #             basic_auth: {
    #               secret_arn: "SecretArn", # required
    #             }
    #           }
    #         }
    #       }],
    #       bypass: {
    #         domain_patterns: ["DomainPattern"]
    #       }
    #     },
    #     enterprise_policies: [
    #       {
    #         location: { # required
    #           # One of:
    #           s3: {
    #             bucket: "String", # required
    #             prefix: "String", # required
    #             version_id: "String"
    #           }
    #         },
    #         type: "MANAGED" # One of: ["MANAGED", "RECOMMENDED"]
    #       }
    #     ],
    #     certificates: [
    #       {
    #         location: { # required
    #           # One of:
    #           secrets_manager: {
    #             secret_arn: "SecretArn", # required
    #           }
    #         }
    #       }
    #     ],
    #     filesystem_configurations: [{
    #       # One of:
    #       s3_files_configuration: {
    #         access_point_arn: "S3FilesAccessPointArn", # required
    #         mount_path: "MountPath", # required
    #         file_system_arn: "S3FilesFileSystemArn", # required
    #       },
    #       efs_configuration: {
    #         access_point_arn: "EfsAccessPointArn", # required
    #         mount_path: "MountPath", # required
    #         file_system_arn: "EfsFileSystemArn", # required
    #       }
    #     }],
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

    # <p>Creates and initializes a code interpreter session in Amazon Bedrock AgentCore. The session enables agents to execute code as part of their response generation, supporting programming languages such as Python for data analysis, visualization, and computation tasks.</p> <p>To create a session, you must specify a code interpreter identifier and a name. The session remains active until it times out or you explicitly stop it using the <code>StopCodeInterpreterSession</code> operation.</p> <p>The following operations are related to <code>StartCodeInterpreterSession</code>:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/bedrock-agentcore/latest/APIReference/API_InvokeCodeInterpreter.html">InvokeCodeInterpreter</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/bedrock-agentcore/latest/APIReference/API_GetCodeInterpreterSession.html">GetCodeInterpreterSession</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/bedrock-agentcore/latest/APIReference/API_StopCodeInterpreterSession.html">StopCodeInterpreterSession</a> </p> </li> </ul>
    # @param [Hash, Types::StartCodeInterpreterSessionRequest] params
    # @option params [String] :trace_id
    #   <p>The trace identifier for request tracking.</p>
    # @option params [String] :trace_parent
    #   <p>The parent trace information for distributed tracing.</p>
    # @option params [String] :code_interpreter_identifier
    #   <p>The unique identifier of the code interpreter to use for this session. This identifier specifies which code interpreter environment to initialize for the session.</p>
    # @option params [String] :name
    #   <p>The name of the code interpreter session. This name helps you identify and manage the session. The name does not need to be unique.</p>
    # @option params [Integer] :session_timeout_seconds
    #   <p>The duration in seconds (time-to-live) after which the session automatically terminates, regardless of ongoing activity. Defaults to 900 seconds (15 minutes). Recommended minimum: 60 seconds. Maximum allowed: 28,800 seconds (8 hours).</p>
    # @option params [Array<Types::Certificate>] :certificates
    #   <p>A list of certificates to install in the code interpreter session.</p>
    # @option params [Array<Types::ToolsFileSystemConfiguration>] :filesystem_configurations
    #   <p>The file system configurations to mount into the code interpreter session. Use these configurations to mount your own Amazon Simple Storage Service (Amazon S3) Files or Amazon Elastic File System (Amazon EFS) access points. Your session can then read and write your data. If you don't specify this field, no additional file systems are mounted.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, Amazon Bedrock AgentCore ignores the request, but does not return an error. This parameter helps prevent the creation of duplicate sessions if there are temporary network issues.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     trace_id: "String",
    #     trace_parent: "String",
    #     code_interpreter_identifier: "String", # required
    #     name: "Name",
    #     session_timeout_seconds: 1,
    #     certificates: [
    #       {
    #         location: { # required
    #           # One of:
    #           secrets_manager: {
    #             secret_arn: "SecretArn", # required
    #           }
    #         }
    #       }
    #     ],
    #     filesystem_configurations: [{
    #       # One of:
    #       s3_files_configuration: {
    #         access_point_arn: "S3FilesAccessPointArn", # required
    #         mount_path: "MountPath", # required
    #         file_system_arn: "S3FilesFileSystemArn", # required
    #       },
    #       efs_configuration: {
    #         access_point_arn: "EfsAccessPointArn", # required
    #         mount_path: "MountPath", # required
    #         file_system_arn: "EfsFileSystemArn", # required
    #       }
    #     }],
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

    # <p> Starts a memory extraction job that processes events that failed extraction previously in an AgentCore Memory resource and produces structured memory records. When earlier extraction attempts have left events unprocessed, this job will pick up and extract those as well. </p> <p>To use this operation, you must have the <code>bedrock-agentcore:StartMemoryExtractionJob</code> permission.</p>
    # @param [Hash, Types::StartMemoryExtractionJobInput] params
    # @option params [String] :memory_id
    #   <p>The unique identifier of the memory for which to start extraction jobs.</p>
    # @option params [Types::ExtractionJob] :extraction_job
    #   <p>Extraction job to start in this operation.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure idempotent processing of the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     memory_id: "MemoryId", # required
    #     extraction_job: { # required
    #       job_id: "String", # required
    #     },
    #     client_token: "String"
    #   }
    #   options = {}
    #   response = client.start_memory_extraction_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "String", # required
    #   }
    # @return [Types::StartMemoryExtractionJobOutput]
    def start_memory_extraction_job(params = {}, options = {})
      request = build_request(:start_memory_extraction_job, params)
      request.send_request(options)
    end

    # <p>Starts a recommendation job that analyzes agent traces and generates optimization suggestions for system prompts or tool descriptions to improve agent performance.</p>
    # @param [Hash, Types::StartRecommendationRequest] params
    # @option params [String] :name
    #   <p>The name of the recommendation. Must be unique within your account.</p>
    # @option params [String] :description
    #   <p>The description of the recommendation.</p>
    # @option params [String] :type
    #   <p>The type of recommendation to generate. Valid values are <code>SYSTEM_PROMPT_RECOMMENDATION</code> for system prompt optimization or <code>TOOL_DESCRIPTION_RECOMMENDATION</code> for tool description optimization.</p>
    # @option params [Types::RecommendationConfig] :recommendation_config
    #   <p>The configuration for the recommendation, including the input to optimize, agent traces to analyze, and evaluation settings.</p>
    # @option params [String] :kms_key_arn
    #   <p>The ARN of the KMS key used to encrypt recommendation data. If provided, customer data is encrypted at rest with the specified key.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, the service ignores the request, but does not return an error.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A map of tag keys and values to associate with the recommendation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "RecommendationName", # required
    #     description: "RecommendationDescription",
    #     type: "SYSTEM_PROMPT_RECOMMENDATION" # One of: ["SYSTEM_PROMPT_RECOMMENDATION", "TOOL_DESCRIPTION_RECOMMENDATION"], # required
    #     recommendation_config: { # required
    #       # One of:
    #       system_prompt_recommendation_config: {
    #         system_prompt: { # required
    #           # One of:
    #           text: "SystemPromptText",
    #           configuration_bundle: {
    #             bundle_arn: "ConfigurationBundleArn", # required
    #             version_id: "ConfigurationBundleVersionId", # required
    #             system_prompt_json_path: "String", # required
    #           }
    #         },
    #         agent_traces: { # required
    #           # One of:
    #           session_spans: [""null""],
    #           cloudwatch_logs: {
    #             log_group_arns: ["String"], # required
    #             service_names: ["ServiceName"], # required
    #             start_time: Time.now, # required
    #             end_time: Time.now, # required
    #             rule: {
    #               filters: [
    #                 {
    #                   key: "String", # required
    #                   operator: "Equals" # One of: ["Equals", "NotEquals", "GreaterThan", "LessThan", "GreaterThanOrEqual", "LessThanOrEqual", "Contains", "NotContains"], # required
    #                   value: { # required
    #                     # One of:
    #                     string_value: "FilterStringValue",
    #                     double_value: 1.0,
    #                     boolean_value: false
    #                   }
    #                 }
    #               ]
    #             }
    #           },
    #           batch_evaluation: {
    #             batch_evaluation_arn: "BatchEvaluationArn", # required
    #           },
    #           online_evaluation: {
    #             online_evaluation_config_arn: "OnlineEvaluationConfigArn", # required
    #             start_time: Time.now, # required
    #             end_time: Time.now, # required
    #           }
    #         },
    #         evaluation_config: {
    #           evaluators: [ # required
    #             {
    #               evaluator_arn: "EvaluatorArn", # required
    #             }
    #           ]
    #         }
    #       },
    #       tool_description_recommendation_config: {
    #         tool_description: { # required
    #           # One of:
    #           tool_description_text: {
    #             tools: [ # required
    #               {
    #                 tool_name: "RecommendationToolName", # required
    #                 tool_description: { # required
    #                   # One of:
    #                   text: "ToolDescriptionText"
    #                 }
    #               }
    #             ]
    #           },
    #           configuration_bundle: {
    #             bundle_arn: "ConfigurationBundleArn", # required
    #             version_id: "ConfigurationBundleVersionId", # required
    #             tools: [ # required
    #               {
    #                 tool_name: "RecommendationToolName", # required
    #                 tool_description_json_path: "String", # required
    #               }
    #             ]
    #           }
    #         },
    #         agent_traces: { # required
    #           # One of:
    #           session_spans: [""null""],
    #           cloudwatch_logs: {
    #             log_group_arns: ["String"], # required
    #             service_names: ["ServiceName"], # required
    #             start_time: Time.now, # required
    #             end_time: Time.now, # required
    #             rule: {
    #               filters: [
    #                 {
    #                   key: "String", # required
    #                   operator: "Equals" # One of: ["Equals", "NotEquals", "GreaterThan", "LessThan", "GreaterThanOrEqual", "LessThanOrEqual", "Contains", "NotContains"], # required
    #                   value: { # required
    #                     # One of:
    #                     string_value: "FilterStringValue",
    #                     double_value: 1.0,
    #                     boolean_value: false
    #                   }
    #                 }
    #               ]
    #             }
    #           },
    #           batch_evaluation: {
    #             batch_evaluation_arn: "BatchEvaluationArn", # required
    #           },
    #           online_evaluation: {
    #             online_evaluation_config_arn: "OnlineEvaluationConfigArn", # required
    #             start_time: Time.now, # required
    #             end_time: Time.now, # required
    #           }
    #         }
    #       }
    #     },
    #     kms_key_arn: "KmsKeyArn",
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.start_recommendation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     recommendation_id: "RecommendationId", # required
    #     recommendation_arn: "RecommendationArn", # required
    #     name: "RecommendationName", # required
    #     description: "RecommendationDescription",
    #     type: "SYSTEM_PROMPT_RECOMMENDATION" # One of: ["SYSTEM_PROMPT_RECOMMENDATION", "TOOL_DESCRIPTION_RECOMMENDATION"], # required
    #     recommendation_config: { # required
    #       # One of:
    #       system_prompt_recommendation_config: {
    #         system_prompt: { # required
    #           # One of:
    #           text: "SystemPromptText",
    #           configuration_bundle: {
    #             bundle_arn: "ConfigurationBundleArn", # required
    #             version_id: "ConfigurationBundleVersionId", # required
    #             system_prompt_json_path: "String", # required
    #           }
    #         },
    #         agent_traces: { # required
    #           # One of:
    #           session_spans: [""null""],
    #           cloudwatch_logs: {
    #             log_group_arns: ["String"], # required
    #             service_names: ["ServiceName"], # required
    #             start_time: Time.now, # required
    #             end_time: Time.now, # required
    #             rule: {
    #               filters: [
    #                 {
    #                   key: "String", # required
    #                   operator: "Equals" # One of: ["Equals", "NotEquals", "GreaterThan", "LessThan", "GreaterThanOrEqual", "LessThanOrEqual", "Contains", "NotContains"], # required
    #                   value: { # required
    #                     # One of:
    #                     string_value: "FilterStringValue",
    #                     double_value: 1.0,
    #                     boolean_value: false
    #                   }
    #                 }
    #               ]
    #             }
    #           },
    #           batch_evaluation: {
    #             batch_evaluation_arn: "BatchEvaluationArn", # required
    #           },
    #           online_evaluation: {
    #             online_evaluation_config_arn: "OnlineEvaluationConfigArn", # required
    #             start_time: Time.now, # required
    #             end_time: Time.now, # required
    #           }
    #         },
    #         evaluation_config: {
    #           evaluators: [ # required
    #             {
    #               evaluator_arn: "EvaluatorArn", # required
    #             }
    #           ]
    #         }
    #       },
    #       tool_description_recommendation_config: {
    #         tool_description: { # required
    #           # One of:
    #           tool_description_text: {
    #             tools: [ # required
    #               {
    #                 tool_name: "RecommendationToolName", # required
    #                 tool_description: { # required
    #                   # One of:
    #                   text: "ToolDescriptionText"
    #                 }
    #               }
    #             ]
    #           },
    #           configuration_bundle: {
    #             bundle_arn: "ConfigurationBundleArn", # required
    #             version_id: "ConfigurationBundleVersionId", # required
    #             tools: [ # required
    #               {
    #                 tool_name: "RecommendationToolName", # required
    #                 tool_description_json_path: "String", # required
    #               }
    #             ]
    #           }
    #         },
    #         agent_traces: { # required
    #           # One of:
    #           session_spans: [""null""],
    #           cloudwatch_logs: {
    #             log_group_arns: ["String"], # required
    #             service_names: ["ServiceName"], # required
    #             start_time: Time.now, # required
    #             end_time: Time.now, # required
    #             rule: {
    #               filters: [
    #                 {
    #                   key: "String", # required
    #                   operator: "Equals" # One of: ["Equals", "NotEquals", "GreaterThan", "LessThan", "GreaterThanOrEqual", "LessThanOrEqual", "Contains", "NotContains"], # required
    #                   value: { # required
    #                     # One of:
    #                     string_value: "FilterStringValue",
    #                     double_value: 1.0,
    #                     boolean_value: false
    #                   }
    #                 }
    #               ]
    #             }
    #           },
    #           batch_evaluation: {
    #             batch_evaluation_arn: "BatchEvaluationArn", # required
    #           },
    #           online_evaluation: {
    #             online_evaluation_config_arn: "OnlineEvaluationConfigArn", # required
    #             start_time: Time.now, # required
    #             end_time: Time.now, # required
    #           }
    #         }
    #       }
    #     },
    #     status: "PENDING" # One of: ["PENDING", "IN_PROGRESS", "COMPLETED", "FAILED", "DELETING"], # required
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #   }
    # @return [Types::StartRecommendationResponse]
    def start_recommendation(params = {}, options = {})
      request = build_request(:start_recommendation, params)
      request.send_request(options)
    end

    # <p>Stops a running batch evaluation. Sessions that have already been evaluated retain their results.</p>
    # @param [Hash, Types::StopBatchEvaluationRequest] params
    # @option params [String] :batch_evaluation_id
    #   <p>The unique identifier of the batch evaluation to stop.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     batch_evaluation_id: "BatchEvaluationId", # required
    #   }
    #   options = {}
    #   response = client.stop_batch_evaluation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     batch_evaluation_id: "BatchEvaluationId", # required
    #     batch_evaluation_arn: "BatchEvaluationArn", # required
    #     status: "PENDING" # One of: ["PENDING", "IN_PROGRESS", "COMPLETED", "COMPLETED_WITH_ERRORS", "FAILED", "STOPPING", "STOPPED", "DELETING"], # required
    #     description: "BatchEvaluationDescription"
    #   }
    # @return [Types::StopBatchEvaluationResponse]
    def stop_batch_evaluation(params = {}, options = {})
      request = build_request(:stop_batch_evaluation, params)
      request.send_request(options)
    end

    # <p>Terminates an active browser session in Amazon Bedrock AgentCore. This operation stops the session, releases associated resources, and makes the session unavailable for further use.</p> <p>To stop a browser session, you must specify both the browser identifier and the session ID. Once stopped, a session cannot be restarted; you must create a new session using <code>StartBrowserSession</code>.</p> <p>The following operations are related to <code>StopBrowserSession</code>:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/bedrock-agentcore/latest/APIReference/API_StartBrowserSession.html">StartBrowserSession</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/bedrock-agentcore/latest/APIReference/API_GetBrowserSession.html">GetBrowserSession</a> </p> </li> </ul>
    # @param [Hash, Types::StopBrowserSessionRequest] params
    # @option params [String] :trace_id
    #   <p>The trace identifier for request tracking.</p>
    # @option params [String] :trace_parent
    #   <p>The parent trace information for distributed tracing.</p>
    # @option params [String] :browser_identifier
    #   <p>The unique identifier of the browser associated with the session.</p>
    # @option params [String] :session_id
    #   <p>The unique identifier of the browser session to stop.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, Amazon Bedrock AgentCore ignores the request, but does not return an error.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     trace_id: "String",
    #     trace_parent: "String",
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

    # <p>Terminates an active code interpreter session in Amazon Bedrock AgentCore. This operation stops the session, releases associated resources, and makes the session unavailable for further use.</p> <p>To stop a code interpreter session, you must specify both the code interpreter identifier and the session ID. Once stopped, a session cannot be restarted; you must create a new session using <code>StartCodeInterpreterSession</code>.</p> <p>The following operations are related to <code>StopCodeInterpreterSession</code>:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/bedrock-agentcore/latest/APIReference/API_StartCodeInterpreterSession.html">StartCodeInterpreterSession</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/bedrock-agentcore/latest/APIReference/API_GetCodeInterpreterSession.html">GetCodeInterpreterSession</a> </p> </li> </ul>
    # @param [Hash, Types::StopCodeInterpreterSessionRequest] params
    # @option params [String] :trace_id
    #   <p>The trace identifier for request tracking.</p>
    # @option params [String] :trace_parent
    #   <p>The parent trace information for distributed tracing.</p>
    # @option params [String] :code_interpreter_identifier
    #   <p>The unique identifier of the code interpreter associated with the session.</p>
    # @option params [String] :session_id
    #   <p>The unique identifier of the code interpreter session to stop.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, Amazon Bedrock AgentCore ignores the request, but does not return an error.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     trace_id: "String",
    #     trace_parent: "String",
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

    # <p>Stops a session that is running in an running AgentCore Runtime agent.</p>
    # @param [Hash, Types::StopRuntimeSessionRequest] params
    # @option params [String] :runtime_session_id
    #   <p>The ID of the session that you want to stop.</p>
    # @option params [String] :agent_runtime_arn
    #   <p>The ARN of the agent that contains the session that you want to stop.</p>
    # @option params [String] :qualifier
    #   <p>Optional qualifier to specify an agent alias, such as <code>prod</code>code&gt; or <code>dev</code>. If you don't provide a value, the DEFAULT alias is used. </p>
    # @option params [String] :client_token
    #   <p>Idempotent token used to identify the request. If you use the same token with multiple requests, the same response is returned. Use ClientToken to prevent the same request from being processed more than once.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     runtime_session_id: "SessionType", # required
    #     agent_runtime_arn: "String", # required
    #     qualifier: "String",
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.stop_runtime_session(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     runtime_session_id: "SessionId",
    #     status_code: 1
    #   }
    # @return [Types::StopRuntimeSessionResponse]
    def stop_runtime_session(params = {}, options = {})
      request = build_request(:stop_runtime_session, params)
      request.send_request(options)
    end

    # <p>Updates an A/B test's configuration, including variants, traffic allocation, evaluation settings, or execution status.</p>
    # @param [Hash, Types::UpdateABTestRequest] params
    # @option params [String] :ab_test_id
    #   <p>The unique identifier of the A/B test to update.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, the service ignores the request, but does not return an error.</p>
    # @option params [String] :name
    #   <p>The updated name of the A/B test.</p>
    # @option params [String] :description
    #   <p>The updated description of the A/B test.</p>
    # @option params [Array<Types::Variant>] :variants
    #   <p>The updated list of variants.</p>
    # @option params [Types::GatewayFilter] :gateway_filter
    #   <p>The updated gateway filter.</p>
    # @option params [Types::ABTestEvaluationConfig] :evaluation_config
    #   <p>The updated evaluation configuration.</p>
    # @option params [String] :role_arn
    #   <p>The updated IAM role ARN.</p>
    # @option params [String] :execution_status
    #   <p>The updated execution status to enable or disable the A/B test.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     ab_test_id: "ABTestId", # required
    #     client_token: "ClientToken",
    #     name: "ABTestName",
    #     description: "ABTestDescription",
    #     variants: [
    #       {
    #         name: "VariantName", # required
    #         weight: 1, # required
    #         variant_configuration: { # required
    #           configuration_bundle: {
    #             bundle_arn: "ConfigurationBundleArn", # required
    #             bundle_version: "ConfigurationBundleVersion", # required
    #           },
    #           target: {
    #             name: "TargetName", # required
    #           }
    #         }
    #       }
    #     ],
    #     gateway_filter: {
    #       target_paths: ["PathPattern"]
    #     },
    #     evaluation_config: {
    #       # One of:
    #       online_evaluation_config_arn: "OnlineEvaluationConfigArn",
    #       per_variant_online_evaluation_config: [
    #         {
    #           name: "VariantName", # required
    #           online_evaluation_config_arn: "OnlineEvaluationConfigArn", # required
    #         }
    #       ]
    #     },
    #     role_arn: "RoleArn",
    #     execution_status: "PAUSED" # One of: ["PAUSED", "RUNNING", "STOPPED", "NOT_STARTED"]
    #   }
    #   options = {}
    #   response = client.update_ab_test(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ab_test_id: "ABTestId", # required
    #     ab_test_arn: "ABTestArn", # required
    #     status: "CREATING" # One of: ["CREATING", "ACTIVE", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "DELETING", "DELETE_FAILED", "FAILED"], # required
    #     execution_status: "PAUSED" # One of: ["PAUSED", "RUNNING", "STOPPED", "NOT_STARTED"], # required
    #     updated_at: Time.now, # required
    #   }
    # @return [Types::UpdateABTestResponse]
    def update_ab_test(params = {}, options = {})
      request = build_request(:update_ab_test, params)
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

      # @api private
      def protocols
        {
          rest_json: Aws::Core::RestJson
        }
      end
    end
  end
end
