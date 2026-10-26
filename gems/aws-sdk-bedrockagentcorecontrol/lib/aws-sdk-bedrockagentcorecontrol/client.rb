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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::BedrockAgentCoreControl::EndpointProvider)
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

    # <p> Adds examples to the dataset's DRAFT. All examples are validated against the dataset's schema type before any writes occur. If any example fails validation, the entire batch is rejected (all-or-nothing semantics). </p>
    # @param [Hash, Types::AddDatasetExamplesRequest] params
    # @option params [String] :dataset_id
    #   <p> The unique identifier of the dataset to add examples to. </p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If you don't specify this field, a value is randomly generated for you. If this token matches a previous request, the service ignores the request, but doesn't return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    # @option params [Types::DataSourceType] :source
    #   <p> Source of examples to add. Provide either inline examples or an S3 URI pointing to a JSONL file. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     dataset_id: "DatasetId", # required
    #     client_token: "ClientToken",
    #     source: { # required
    #       # One of:
    #       inline_examples: {
    #         examples: [""null""], # required
    #       },
    #       s3_source: {
    #         s3_uri: "S3Uri", # required
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.add_dataset_examples(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dataset_arn: "DatasetArn", # required
    #     dataset_id: "DatasetId", # required
    #     status: "CREATING" # One of: ["CREATING", "UPDATING", "DELETING", "ACTIVE", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED"], # required
    #     added_count: 1, # required
    #     updated_at: Time.now, # required
    #     example_ids: ["ExampleId"], # required
    #   }
    # @return [Types::AddDatasetExamplesResponse]
    def add_dataset_examples(params = {}, options = {})
      request = build_request(:add_dataset_examples, params)
      request.send_request(options)
    end

    # <p>Atomically creates or updates multiple rate limits for a gateway. The operation updates existing limits with matching keys and creates new limits for new keys. If the operation fails, the service applies no changes. Retry the request after resolving the issue.</p>
    # @param [Hash, Types::BatchPutGatewayRateLimitsRequest] params
    # @option params [String] :gateway_identifier
    #   <p>The unique identifier of the gateway.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If you don't specify this field, a value is randomly generated for you. If this token matches a previous request, the service ignores the request, but doesn't return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    # @option params [Array<Types::BatchPutLimitEntry>] :rate_limits
    #   <p>The complete set of rate limits for this gateway. This operation replaces all existing rate limits in a single request. If the operation fails, no rate limits are changed.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_identifier: "GatewayIdentifier", # required
    #     client_token: "ClientToken",
    #     rate_limits: [ # required
    #       {
    #         rate_limit_id: "GatewayRateLimitId",
    #         description: "GatewayRateLimitDescription",
    #         dimension_keys: ["DimensionKey"], # required
    #         entries: [ # required
    #           {
    #             dimensions: { # required
    #               "DimensionKey" => "DimensionValue"
    #             },
    #             requests: [
    #               {
    #                 rate: 1.0, # required
    #                 period: "second" # One of: ["second", "minute"], # required
    #               }
    #             ],
    #             tokens: [
    #               {
    #                 rate: 1.0, # required
    #                 period: "second" # One of: ["second", "minute"], # required
    #               }
    #             ],
    #             connections: [
    #               {
    #                 rate: 1.0, # required
    #                 period: "second" # One of: ["second", "minute"], # required
    #               }
    #             ]
    #           }
    #         ]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_put_gateway_rate_limits(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rate_limits: [ # required
    #       {
    #         rate_limit_id: "GatewayRateLimitId", # required
    #         gateway_identifier: "GatewayIdentifier", # required
    #         description: "GatewayRateLimitDescription",
    #         dimension_keys: ["DimensionKey"], # required
    #         entries: [ # required
    #           {
    #             dimensions: { # required
    #               "DimensionKey" => "DimensionValue"
    #             },
    #             requests: [
    #               {
    #                 rate: 1.0, # required
    #                 period: "second" # One of: ["second", "minute"], # required
    #               }
    #             ],
    #             tokens: [
    #               {
    #                 rate: 1.0, # required
    #                 period: "second" # One of: ["second", "minute"], # required
    #               }
    #             ],
    #             connections: [
    #               {
    #                 rate: 1.0, # required
    #                 period: "second" # One of: ["second", "minute"], # required
    #               }
    #             ]
    #           }
    #         ],
    #         status: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "DELETING"], # required
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #       }
    #     ]
    #   }
    # @return [Types::BatchPutGatewayRateLimitsResponse]
    def batch_put_gateway_rate_limits(params = {}, options = {})
      request = build_request(:batch_put_gateway_rate_limits, params)
      request.send_request(options)
    end

    # <p>Creates an Amazon Bedrock AgentCore Runtime.</p>
    # @param [Hash, Types::CreateAgentRuntimeRequest] params
    # @option params [String] :agent_runtime_name
    #   <p>The name of the AgentCore Runtime.</p>
    # @option params [Types::AgentRuntimeArtifact] :agent_runtime_artifact
    #   <p>The artifact of the AgentCore Runtime.</p>
    # @option params [String] :role_arn
    #   <p>The IAM role ARN that provides permissions for the AgentCore Runtime.</p>
    # @option params [Types::NetworkConfiguration] :network_configuration
    #   <p>The network configuration for the AgentCore Runtime.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure idempotency of the request.</p>
    # @option params [String] :description
    #   <p>The description of the AgentCore Runtime.</p>
    # @option params [Types::AuthorizerConfiguration] :authorizer_configuration
    #   <p>The authorizer configuration for the AgentCore Runtime.</p>
    # @option params [Types::RequestHeaderConfiguration] :request_header_configuration
    #   <p>Configuration for HTTP request headers that will be passed through to the runtime.</p>
    # @option params [Types::ProtocolConfiguration] :protocol_configuration
    #   <p>The protocol configuration for an agent runtime. This structure defines how the agent runtime communicates with clients.</p>
    # @option params [Types::LifecycleConfiguration] :lifecycle_configuration
    #   <p>The life cycle configuration for the AgentCore Runtime.</p>
    # @option params [Hash<String, String>] :environment_variables
    #   <p>Environment variables to set in the AgentCore Runtime environment.</p>
    # @option params [Array<Types::FilesystemConfiguration>] :filesystem_configurations
    #   <p>The filesystem configurations to mount into the AgentCore Runtime. Use filesystem configurations to provide persistent storage to your AgentCore Runtime sessions.</p>
    # @option params [Types::CapacityProviderConfiguration] :capacity_provider_configuration
    #   <p>The capacity provider configuration for the AgentCore Runtime. Use a capacity provider to run the AgentCore Runtime on the Instances compute type, which provisions Amazon Web Services managed compute in your account.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A map of tag keys and values to assign to the agent runtime. Tags enable you to categorize your resources in different ways, for example, by purpose, owner, or environment.</p>
    # @option params [String] :platform_version
    #   <p>The version of the runtime platform to use for the AgentCore Runtime.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_runtime_name: "AgentRuntimeName", # required
    #     agent_runtime_artifact: { # required
    #       # One of:
    #       container_configuration: {
    #         container_uri: "RuntimeContainerUri", # required
    #       },
    #       code_configuration: {
    #         code: { # required
    #           # One of:
    #           s3: {
    #             bucket: "String", # required
    #             prefix: "String", # required
    #             version_id: "String"
    #           }
    #         },
    #         runtime: "PYTHON_3_10" # One of: ["PYTHON_3_10", "PYTHON_3_11", "PYTHON_3_12", "PYTHON_3_13", "PYTHON_3_14", "NODE_22"], # required
    #         entry_point: ["entryPoint"], # required
    #       }
    #     },
    #     role_arn: "RoleArn", # required
    #     network_configuration: {
    #       network_mode: "PUBLIC" # One of: ["PUBLIC", "VPC"], # required
    #       network_mode_config: {
    #         security_groups: ["SecurityGroupId"], # required
    #         subnets: ["SubnetId"], # required
    #         require_service_s3_endpoint: false
    #       }
    #     },
    #     client_token: "ClientToken",
    #     description: "Description",
    #     authorizer_configuration: {
    #       # One of:
    #       custom_jwt_authorizer: {
    #         discovery_url: "DiscoveryUrl", # required
    #         allowed_audience: ["AllowedAudience"],
    #         allowed_clients: ["AllowedClient"],
    #         allowed_scopes: ["AllowedScopeType"],
    #         advertised_scope_mapping: {
    #           "AllowedScopeType" => "AllowedScopeType"
    #         },
    #         custom_claims: [
    #           {
    #             inbound_token_claim_name: "InboundTokenClaimNameType", # required
    #             inbound_token_claim_value_type: "STRING" # One of: ["STRING", "STRING_ARRAY"], # required
    #             authorizing_claim_match_value: { # required
    #               claim_match_value: { # required
    #                 # One of:
    #                 match_value_string: "MatchValueString",
    #                 match_value_string_list: ["MatchValueString"]
    #               },
    #               claim_match_operator: "EQUALS" # One of: ["EQUALS", "CONTAINS", "CONTAINS_ANY"], # required
    #             }
    #           }
    #         ],
    #         private_endpoint: {
    #           # One of:
    #           self_managed_lattice_resource: {
    #             # One of:
    #             resource_configuration_identifier: "ResourceConfigurationIdentifier"
    #           },
    #           managed_vpc_resource: {
    #             vpc_identifier: "VpcIdentifier", # required
    #             subnet_ids: ["SubnetId"], # required
    #             endpoint_ip_address_type: "IPV4" # One of: ["IPV4", "IPV6"], # required
    #             security_group_ids: ["SecurityGroupIdentifier"],
    #             tags: {
    #               "TagKey" => "TagValue"
    #             },
    #             routing_domain: "RoutingDomain"
    #           }
    #         },
    #         private_endpoint_overrides: [
    #           {
    #             domain: "PrivateEndpointOverrideDomain", # required
    #             private_endpoint: { # required
    #               # One of:
    #               self_managed_lattice_resource: {
    #                 # One of:
    #                 resource_configuration_identifier: "ResourceConfigurationIdentifier"
    #               },
    #               managed_vpc_resource: {
    #                 vpc_identifier: "VpcIdentifier", # required
    #                 subnet_ids: ["SubnetId"], # required
    #                 endpoint_ip_address_type: "IPV4" # One of: ["IPV4", "IPV6"], # required
    #                 security_group_ids: ["SecurityGroupIdentifier"],
    #                 tags: {
    #                   "TagKey" => "TagValue"
    #                 },
    #                 routing_domain: "RoutingDomain"
    #               }
    #             }
    #           }
    #         ],
    #         allowed_workload_configuration: {
    #           hosting_environments: [
    #             {
    #               arn: "BedrockAgentcoreResourceArn", # required
    #             }
    #           ],
    #           workload_identities: ["WorkloadIdentityNameType"]
    #         }
    #       }
    #     },
    #     request_header_configuration: {
    #       # One of:
    #       request_header_allowlist: ["HeaderName"]
    #     },
    #     protocol_configuration: {
    #       server_protocol: "MCP" # One of: ["MCP", "HTTP", "A2A", "AGUI"], # required
    #     },
    #     lifecycle_configuration: {
    #       idle_runtime_session_timeout: 1,
    #       max_lifetime: 1
    #     },
    #     environment_variables: {
    #       "EnvironmentVariableKey" => "EnvironmentVariableValue"
    #     },
    #     filesystem_configurations: [{
    #       # One of:
    #       session_storage: {
    #         mount_path: "MountPath", # required
    #       },
    #       s3_files_access_point: {
    #         access_point_arn: "S3FilesAccessPointArn", # required
    #         mount_path: "MountPath", # required
    #       },
    #       efs_access_point: {
    #         access_point_arn: "EfsAccessPointArn", # required
    #         mount_path: "MountPath", # required
    #       },
    #       capacity_provider_volume: {
    #         volume_name: "CapacityProviderVolumeName", # required
    #         mount_path: "MountPath", # required
    #       }
    #     }],
    #     capacity_provider_configuration: {
    #       capacity_provider_arn: "CapacityProviderArn", # required
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     platform_version: "PlatformVersion"
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
    #     status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "READY", "DELETING", "DELETE_FAILED"], # required
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
    #     agent_runtime_id: "AgentRuntimeId",
    #     endpoint_name: "EndpointName",
    #     status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "READY", "DELETING", "DELETE_FAILED"], # required
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
    # @option params [Types::SecretReference] :api_key_secret_config
    #   <p>A reference to the Amazon Web Services Secrets Manager secret that stores the API key. This includes the secret ID and the JSON key used to extract the API key value from the secret. Required when <code>apiKeySecretSource</code> is set to <code>EXTERNAL</code>.</p>
    # @option params [String] :api_key_secret_source
    #   <p>The source type of the API key secret. Use <code>MANAGED</code> if the secret is managed by the service, or <code>EXTERNAL</code> if you manage the secret yourself in Amazon Web Services Secrets Manager.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A map of tag keys and values to assign to the API key credential provider. Tags enable you to categorize your resources in different ways, for example, by purpose, owner, or environment.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "CredentialProviderName", # required
    #     api_key: "DefaultApiKeyType",
    #     api_key_secret_config: {
    #       secret_id: "SecretIdType", # required
    #       json_key: "SecretJsonKeyType", # required
    #     },
    #     api_key_secret_source: "MANAGED" # One of: ["MANAGED", "EXTERNAL"],
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_api_key_credential_provider(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     api_key_secret_arn: { # required
    #       secret_arn: "SecretArn", # required
    #     },
    #     api_key_secret_json_key: "SecretJsonKeyType",
    #     api_key_secret_source: "MANAGED" # One of: ["MANAGED", "EXTERNAL"],
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
    # @option params [Types::BrowserSigningConfigInput] :browser_signing
    #   <p>The browser signing configuration that enables cryptographic agent identification using HTTP message signatures for web bot authentication.</p>
    # @option params [Array<Types::BrowserEnterprisePolicy>] :enterprise_policies
    #   <p>A list of enterprise policy files for the browser.</p>
    # @option params [Array<Types::Certificate>] :certificates
    #   <p>A list of certificates to install in the browser.</p>
    # @option params [Array<Types::ToolsFileSystemConfiguration>] :filesystem_configurations
    #   <p>The file system configurations to mount into the browser. Use these configurations to mount your own Amazon Simple Storage Service (Amazon S3) Files or Amazon Elastic File System (Amazon EFS) access points. Your sessions can then access your data. If you don't specify this field, no file systems are mounted.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure that the operation completes no more than one time. If this token matches a previous request, Amazon Bedrock AgentCore ignores the request but does not return an error.</p>
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
    #         require_service_s3_endpoint: false
    #       }
    #     },
    #     recording: {
    #       enabled: false,
    #       s3_location: {
    #         bucket: "String", # required
    #         prefix: "String", # required
    #         version_id: "String"
    #       }
    #     },
    #     browser_signing: {
    #       enabled: false, # required
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
    #             secret_arn: "ToolSecretArn", # required
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

    # <p>Creates a browser profile in Amazon Bedrock AgentCore. A browser profile stores persistent browser data such as cookies, local storage, session storage, and browsing history that can be saved from browser sessions and reused in subsequent sessions.</p>
    # @param [Hash, Types::CreateBrowserProfileRequest] params
    # @option params [String] :name
    #   <p>The name of the browser profile. The name must be unique within your account and can contain alphanumeric characters and underscores.</p>
    # @option params [String] :description
    #   <p>A description of the browser profile. Use this field to describe the purpose or contents of the profile.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure that the operation completes no more than one time. If this token matches a previous request, Amazon Bedrock AgentCore ignores the request but does not return an error.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A map of tag keys and values to assign to the browser profile. Tags enable you to categorize your resources in different ways, for example, by purpose, owner, or environment.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "BrowserProfileName", # required
    #     description: "Description",
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_browser_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     profile_id: "BrowserProfileId", # required
    #     profile_arn: "BrowserProfileArn", # required
    #     created_at: Time.now, # required
    #     status: "READY" # One of: ["READY", "DELETING", "DELETED", "SAVING"], # required
    #   }
    # @return [Types::CreateBrowserProfileResponse]
    def create_browser_profile(params = {}, options = {})
      request = build_request(:create_browser_profile, params)
      request.send_request(options)
    end

    # <p>Creates a capacity provider. A capacity provider defines the Amazon EC2 infrastructure for AgentCore Runtime, including the operating system, allowed instance types, networking, and storage. It also specifies the IAM permissions that AgentCore uses to manage those instances.</p> <p>The capacity provider name must be unique within your account. After you create the capacity provider, it enters a <code>CREATING</code> state and transitions to <code>READY</code> when it is available for use.</p>
    # @param [Hash, Types::CreateCapacityProviderInput] params
    # @option params [String] :name
    #   <p>The name of the capacity provider. The name must be unique within your account.</p>
    # @option params [String] :description
    #   <p>An optional description of the capacity provider. If you don't specify a description, the service creates the capacity provider without one.</p>
    # @option params [Types::PermissionsConfiguration] :permissions_configuration
    #   <p>The permissions configuration for the capacity provider. This specifies the IAM role that AgentCore uses to manage the Amazon EC2 instances on your behalf.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If you don't specify this field, a value is randomly generated for you. If this token matches a previous request, the service ignores the request, but doesn't return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A map of tag keys and values to associate with the capacity provider. If you don't specify tags, the capacity provider is created with no tags.</p>
    # @option params [Types::ComputeConfiguration] :compute_configuration
    #   <p>The compute configuration for the capacity provider. This defines the Amazon EC2 compute resources used to launch instances: the operating system, allowed instance types, networking, and storage.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "CapacityProviderName", # required
    #     description: "Description",
    #     permissions_configuration: { # required
    #       capacity_provider_operator_role_arn: "RoleArn", # required
    #     },
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     compute_configuration: { # required
    #       # One of:
    #       ec2_configuration: {
    #         launch_template_source: { # required
    #           # One of:
    #           launch_parameters: {
    #             operating_system: "LINUX_X86_64" # One of: ["LINUX_X86_64", "LINUX_ARM64"], # required
    #             instance_requirements: { # required
    #               allowed_instance_types: ["EC2InstanceType"], # required
    #             },
    #             ephemeral_volumes: [
    #               {
    #                 device_name: "DeviceName",
    #                 virtual_name: "VirtualDeviceName",
    #                 ebs: {
    #                   volume_type: "standard" # One of: ["standard", "io1", "io2", "gp2", "sc1", "st1", "gp3"],
    #                   iops: 1,
    #                   throughput: 1,
    #                   encrypted: false,
    #                   kms_key_id: "KmsKeyId",
    #                   snapshot_id: "EbsSnapshotId",
    #                   volume_size: 1,
    #                   volume_initialization_rate: 1,
    #                   ebs_card_index: 1
    #                 }
    #               }
    #             ],
    #             monitoring: "BASIC" # One of: ["BASIC", "DETAILED"],
    #             license_specifications: [
    #               {
    #                 license_configuration_arn: "LicenseConfigurationArn", # required
    #               }
    #             ],
    #             capacity_reservation_specification: {
    #               capacity_reservation_preference: "capacity-reservations-only" # One of: ["capacity-reservations-only", "open", "none"],
    #               capacity_reservation_target: {
    #                 capacity_reservation_id: "CapacityReservationId",
    #                 capacity_reservation_resource_group_arn: "CapacityReservationResourceGroupArn"
    #               }
    #             },
    #             ssh_key_name: "SSHKeyName",
    #             instance_profile_arn: "InstanceProfileArn",
    #             propagated_tags: {
    #               "TagKey" => "TagValue"
    #             }
    #           }
    #         },
    #         vpc_configuration: { # required
    #           subnets: ["SubnetId"], # required
    #           security_groups: ["SecurityGroupId"], # required
    #         },
    #         volumes: [{
    #           # One of:
    #           ebs_configuration: {
    #             name: "VolumeName", # required
    #             size_gi_b: 1, # required
    #             volume_type: "standard" # One of: ["standard", "io1", "io2", "gp2", "sc1", "st1", "gp3"],
    #             iops: 1,
    #             throughput: 1,
    #             encrypted: false,
    #             kms_key_id: "KmsKeyId",
    #             snapshot_id: "EbsSnapshotId"
    #           }
    #         }],
    #         lifecycle_configuration: {
    #           idle_instance_timeout: 1,
    #           max_lifetime: 1
    #         },
    #         root_volume: {
    #           volume_type: "standard" # One of: ["standard", "io1", "io2", "gp2", "sc1", "st1", "gp3"],
    #           iops: 1,
    #           throughput: 1,
    #           encrypted: false,
    #           kms_key_id: "KmsKeyId",
    #           free_space_gi_b: 1
    #         }
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_capacity_provider(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     capacity_provider_id: "CapacityProviderId", # required
    #     capacity_provider_arn: "CapacityProviderArn", # required
    #     name: "CapacityProviderName", # required
    #     status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "READY", "DELETING", "DELETE_FAILED"], # required
    #   }
    # @return [Types::CreateCapacityProviderOutput]
    def create_capacity_provider(params = {}, options = {})
      request = build_request(:create_capacity_provider, params)
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
    # @option params [Array<Types::Certificate>] :certificates
    #   <p>A list of certificates to install in the code interpreter.</p>
    # @option params [Array<Types::ToolsFileSystemConfiguration>] :filesystem_configurations
    #   <p>The file system configurations to mount into the code interpreter. Use these configurations to mount your own Amazon Simple Storage Service (Amazon S3) Files or Amazon Elastic File System (Amazon EFS) access points. Your sessions can then access your data. If you don't specify this field, no file systems are mounted.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure that the operation completes no more than one time. If this token matches a previous request, Amazon Bedrock AgentCore ignores the request but does not return an error.</p>
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
    #         require_service_s3_endpoint: false
    #       }
    #     },
    #     certificates: [
    #       {
    #         location: { # required
    #           # One of:
    #           secrets_manager: {
    #             secret_arn: "ToolSecretArn", # required
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

    # <p>Creates a new configuration bundle resource. A configuration bundle stores versioned component configurations for agent evaluation workflows.</p>
    # @param [Hash, Types::CreateConfigurationBundleRequest] params
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If you don't specify this field, a value is randomly generated for you. If this token matches a previous request, the service ignores the request, but doesn't return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    # @option params [String] :bundle_name
    #   <p>The name for the configuration bundle. Names must be unique within your account.</p>
    # @option params [String] :description
    #   <p>The description for the configuration bundle.</p>
    # @option params [Hash<String, Types::ComponentConfiguration>] :components
    #   <p>A map of component identifiers to their configurations. Each component represents a configurable element within the bundle.</p>
    # @option params [String] :branch_name
    #   <p>The branch name for version tracking. Defaults to <code>mainline</code> if not specified.</p>
    # @option params [String] :commit_message
    #   <p>A commit message describing the initial version of the configuration bundle.</p>
    # @option params [Types::VersionCreatedBySource] :created_by
    #   <p>The source that created this version, including the source name and optional ARN.</p>
    # @option params [String] :kms_key_arn
    #   <p>Optional KMS key ARN for encrypting component configurations.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A map of tag keys and values to assign to the configuration bundle. Tags enable you to categorize your resources in different ways, for example, by purpose, owner, or environment.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken",
    #     bundle_name: "ConfigurationBundleName", # required
    #     description: "ConfigurationBundleDescription",
    #     components: { # required
    #       "ComponentIdentifier" => {
    #         configuration: ""null"", # required
    #       }
    #     },
    #     branch_name: "BranchName",
    #     commit_message: "String",
    #     created_by: {
    #       name: "String", # required
    #       arn: "String"
    #     },
    #     kms_key_arn: "KmsKeyArn",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_configuration_bundle(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     bundle_arn: "ConfigurationBundleArn", # required
    #     bundle_id: "ConfigurationBundleId", # required
    #     version_id: "ConfigurationBundleVersion", # required
    #     created_at: Time.now, # required
    #   }
    # @return [Types::CreateConfigurationBundleResponse]
    def create_configuration_bundle(params = {}, options = {})
      request = build_request(:create_configuration_bundle, params)
      request.send_request(options)
    end

    # <p>Creates a new consent portal.</p>
    # @param [Hash, Types::CreateConsentPortalRequest] params
    # @option params [String] :execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that the consent portal assumes to access the resources defined in its sources.</p>
    # @option params [Types::ConsentPortalIdpConfig] :idp_config
    #   <p>The identity provider configuration that the consent portal uses to authenticate end users.</p>
    # @option params [String] :name
    #   <p>The name of the consent portal. The name must be unique within your account.</p>
    # @option params [Array<Types::ConsentPortalSource>] :sources
    #   <p>The resources served by the consent portal. Currently, we only support type <code>agentcore-gateway</code>.</p>
    # @option params [String] :description
    #   <p>The description of the consent portal.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A map of tag keys and values to assign to the consent portal. Tags enable you to categorize your resources in different ways, for example, by purpose, owner, or environment.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     execution_role_arn: "ExecutionRoleArnType", # required
    #     idp_config: { # required
    #       credential_provider_arn: "OAuth2CredentialProviderArn", # required
    #       scopes: ["AllowedScopeType"], # required
    #       audience: "AllowedAudienceType"
    #     },
    #     name: "ConsentPortalNameType", # required
    #     sources: [ # required
    #       {
    #         identifier: "ConsentPortalSourceIdentifierType", # required
    #         type: "agentcore-gateway" # One of: ["agentcore-gateway"], # required
    #       }
    #     ],
    #     description: "ConsentPortalDescriptionType",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_consent_portal(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     sources: [ # required
    #       {
    #         identifier: "ConsentPortalSourceIdentifierType", # required
    #         type: "agentcore-gateway" # One of: ["agentcore-gateway"], # required
    #       }
    #     ],
    #     consent_portal_arn: "ConsentPortalArnType", # required
    #     consent_portal_id: "ConsentPortalIdType", # required
    #     created_at: Time.now, # required
    #     description: "ConsentPortalDescriptionType",
    #     execution_role_arn: "ExecutionRoleArnType", # required
    #     idp_config: { # required
    #       credential_provider_arn: "OAuth2CredentialProviderArn", # required
    #       scopes: ["AllowedScopeType"], # required
    #       audience: "AllowedAudienceType"
    #     },
    #     name: "ConsentPortalNameType", # required
    #     portal_url: "PortalUrlType",
    #     status: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "UPDATE_FAILED", "DELETING", "FAILED"], # required
    #     status_reason: "StatusReasonType",
    #     updated_at: Time.now, # required
    #   }
    # @return [Types::CreateConsentPortalResponse]
    def create_consent_portal(params = {}, options = {})
      request = build_request(:create_consent_portal, params)
      request.send_request(options)
    end

    # <p> Creates a new dataset resource asynchronously. Returns immediately with status CREATING. Poll <code>GetDataset</code> until status transitions to ACTIVE or CREATE_FAILED. </p>
    # @param [Hash, Types::CreateDatasetRequest] params
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If you don't specify this field, a value is randomly generated for you. If this token matches a previous request, the service ignores the request, but doesn't return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    # @option params [String] :dataset_name
    #   <p> Human-readable name for the dataset. Must be unique within the account. Immutable after creation. </p>
    # @option params [String] :description
    #   <p> A description of the dataset. </p>
    # @option params [Types::DataSourceType] :source
    #   <p> Source of initial examples. Provide either inline examples or an S3 URI pointing to a JSONL file. </p>
    # @option params [String] :schema_type
    #   <p> Versioned schema type governing the structure of examples. Immutable after creation. </p>
    # @option params [String] :kms_key_arn
    #   <p> Optional KMS key ARN for server-side encryption on service Amazon S3 writes. </p>
    # @option params [Hash<String, String>] :tags
    #   <p> A map of tag keys and values to assign to the dataset. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken",
    #     dataset_name: "DatasetName", # required
    #     description: "String",
    #     source: { # required
    #       # One of:
    #       inline_examples: {
    #         examples: [""null""], # required
    #       },
    #       s3_source: {
    #         s3_uri: "S3Uri", # required
    #       }
    #     },
    #     schema_type: "AGENTCORE_EVALUATION_PREDEFINED_V1" # One of: ["AGENTCORE_EVALUATION_PREDEFINED_V1", "AGENTCORE_EVALUATION_SIMULATED_V1", "THIRD_PARTY_EVALUATION_V1"], # required
    #     kms_key_arn: "KmsKeyArn",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_dataset(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dataset_arn: "DatasetArn", # required
    #     dataset_id: "DatasetId", # required
    #     status: "CREATING" # One of: ["CREATING", "UPDATING", "DELETING", "ACTIVE", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED"], # required
    #     created_at: Time.now, # required
    #   }
    # @return [Types::CreateDatasetResponse]
    def create_dataset(params = {}, options = {})
      request = build_request(:create_dataset, params)
      request.send_request(options)
    end

    # <p> Publishes the current DRAFT as a new numbered version. The DRAFT is preserved and remains editable after publishing. Returns immediately with status UPDATING. Poll <code>GetDataset</code> until status transitions to ACTIVE or UPDATE_FAILED. </p>
    # @param [Hash, Types::CreateDatasetVersionRequest] params
    # @option params [String] :dataset_id
    #   <p> The unique identifier of the dataset to publish a version for. </p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If you don't specify this field, a value is randomly generated for you. If this token matches a previous request, the service ignores the request, but doesn't return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     dataset_id: "DatasetId", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_dataset_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dataset_arn: "DatasetArn", # required
    #     dataset_id: "DatasetId", # required
    #     status: "CREATING" # One of: ["CREATING", "UPDATING", "DELETING", "ACTIVE", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED"], # required
    #     dataset_version: "DatasetVersion", # required
    #     created_at: Time.now, # required
    #   }
    # @return [Types::CreateDatasetVersionResponse]
    def create_dataset_version(params = {}, options = {})
      request = build_request(:create_dataset_version, params)
      request.send_request(options)
    end

    # <p> Creates a custom evaluator for agent quality assessment. Custom evaluators can use either LLM-as-a-Judge configurations with user-defined prompts, rating scales, and model settings, or code-based configurations with customer-managed Lambda functions to evaluate agent performance at tool call, trace, or session levels. </p>
    # @param [Hash, Types::CreateEvaluatorRequest] params
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If you don't specify this field, a value is randomly generated for you. If this token matches a previous request, the service ignores the request, but doesn't return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    # @option params [String] :evaluator_name
    #   <p> The name of the evaluator. Must be unique within your account. </p>
    # @option params [String] :description
    #   <p> The description of the evaluator that explains its purpose and evaluation criteria. </p>
    # @option params [Types::EvaluatorConfig] :evaluator_config
    #   <p> The configuration for the evaluator. Specify either LLM-as-a-Judge settings with instructions, rating scale, and model configuration, or code-based settings with a customer-managed Lambda function. </p>
    # @option params [String] :level
    #   <p> The evaluation level that determines the scope of evaluation. Valid values are <code>TOOL_CALL</code> for individual tool invocations, <code>TRACE</code> for single request-response interactions, or <code>SESSION</code> for entire conversation sessions. </p>
    # @option params [String] :kms_key_arn
    #   <p> The Amazon Resource Name (ARN) of a customer managed KMS key to use for encrypting sensitive evaluator data, including instructions and rating scale. If you don't specify a KMS key, the evaluator data is encrypted with an Amazon Web Services owned key. Only symmetric encryption KMS keys are supported. For more information, see <a href="https://docs.aws.amazon.com/bedrock-agentcore/latest/devguide/evaluations-encryption.html">Encryption at rest for AgentCore Evaluations</a>. </p>
    # @option params [Hash<String, String>] :tags
    #   <p>A map of tag keys and values to assign to an AgentCore Evaluator. Tags enable you to categorize your resources in different ways, for example, by purpose, owner, or environment.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken",
    #     evaluator_name: "CustomEvaluatorName", # required
    #     description: "EvaluatorDescription",
    #     evaluator_config: { # required
    #       # One of:
    #       llm_as_a_judge: {
    #         instructions: "EvaluatorInstructions", # required
    #         rating_scale: { # required
    #           # One of:
    #           numerical: [
    #             {
    #               definition: "String", # required
    #               value: 1.0, # required
    #               label: "String", # required
    #             }
    #           ],
    #           categorical: [
    #             {
    #               definition: "String", # required
    #               label: "String", # required
    #             }
    #           ]
    #         },
    #         model_config: { # required
    #           # One of:
    #           bedrock_evaluator_model_config: {
    #             model_id: "ModelId", # required
    #             inference_config: {
    #               max_tokens: 1,
    #               temperature: 1.0,
    #               top_p: 1.0,
    #               stop_sequences: ["NonEmptyString"]
    #             },
    #             additional_model_request_fields: ""null""
    #           },
    #           responses_evaluator_model_config: {
    #             model_id: "ModelId", # required
    #             max_output_tokens: 1,
    #             temperature: 1.0,
    #             top_p: 1.0,
    #             reasoning: {
    #               effort: "String"
    #             }
    #           }
    #         }
    #       },
    #       code_based: {
    #         # One of:
    #         lambda_config: {
    #           lambda_arn: "LambdaArn", # required
    #           lambda_timeout_in_seconds: 1
    #         }
    #       },
    #       derived: {
    #         base_evaluator_id: "EvaluatorId", # required
    #         model_config: { # required
    #           # One of:
    #           bedrock_evaluator_model_config: {
    #             model_id: "ModelId", # required
    #             inference_config: {
    #               max_tokens: 1,
    #               temperature: 1.0,
    #               top_p: 1.0,
    #               stop_sequences: ["NonEmptyString"]
    #             },
    #             additional_model_request_fields: ""null""
    #           },
    #           responses_evaluator_model_config: {
    #             model_id: "ModelId", # required
    #             max_output_tokens: 1,
    #             temperature: 1.0,
    #             top_p: 1.0,
    #             reasoning: {
    #               effort: "String"
    #             }
    #           }
    #         }
    #       }
    #     },
    #     level: "TOOL_CALL" # One of: ["TOOL_CALL", "TRACE", "SESSION"], # required
    #     kms_key_arn: "KmsKeyArn",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_evaluator(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     evaluator_arn: "CustomEvaluatorArn", # required
    #     evaluator_id: "EvaluatorId", # required
    #     created_at: Time.now, # required
    #     status: "ACTIVE" # One of: ["ACTIVE", "CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "DELETING"], # required
    #   }
    # @return [Types::CreateEvaluatorResponse]
    def create_evaluator(params = {}, options = {})
      request = build_request(:create_evaluator, params)
      request.send_request(options)
    end

    # <p>Creates a gateway for Amazon Bedrock Agent. A gateway serves as an integration point between your agent and external services.</p> <p>If you specify <code>CUSTOM_JWT</code> as the <code>authorizerType</code>, you must provide an <code>authorizerConfiguration</code>.</p>
    # @param [Hash, Types::CreateGatewayRequest] params
    # @option params [String] :name
    #   <p>The name of the gateway. The name must be unique within your account.</p>
    # @option params [String] :description
    #   <p>The description of the gateway.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If you don't specify this field, a value is randomly generated for you. If this token matches a previous request, the service ignores the request, but doesn't return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that provides permissions for the gateway to access Amazon Web Services services.</p>
    # @option params [String] :protocol_type
    #   <p>The protocol type for the gateway.</p>
    # @option params [Types::GatewayProtocolConfiguration] :protocol_configuration
    #   <p>The configuration settings for the protocol specified in the <code>protocolType</code> parameter.</p>
    # @option params [String] :authorizer_type
    #   <p>The type of authorizer to use for the gateway.</p> <ul> <li> <p> <code>CUSTOM_JWT</code> - Authorize with a bearer token.</p> </li> <li> <p> <code>AWS_IAM</code> - Authorize with your Amazon Web Services IAM credentials.</p> </li> <li> <p> <code>NONE</code> - No authorization</p> </li> </ul>
    # @option params [Types::AuthorizerConfiguration] :authorizer_configuration
    #   <p>The authorizer configuration for the gateway. Required if <code>authorizerType</code> is <code>CUSTOM_JWT</code>.</p>
    # @option params [String] :kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key used to encrypt data associated with the gateway.</p>
    # @option params [Array<Types::GatewayInterceptorConfiguration>] :interceptor_configurations
    #   <p>A list of configuration settings for a gateway interceptor. Gateway interceptors allow custom code to be invoked during gateway invocations.</p>
    # @option params [Types::GatewayPolicyEngineConfiguration] :policy_engine_configuration
    #   <p>The policy engine configuration for the gateway. A policy engine is a collection of policies that evaluates and authorizes agent tool calls. When associated with a gateway, the policy engine intercepts all agent requests and determines whether to allow or deny each action based on the defined policies.</p>
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
    #     protocol_type: "MCP" # One of: ["MCP"],
    #     protocol_configuration: {
    #       # One of:
    #       mcp: {
    #         supported_versions: ["McpVersion"],
    #         instructions: "McpInstructions",
    #         search_type: "SEMANTIC" # One of: ["SEMANTIC"],
    #         session_configuration: {
    #           session_timeout_in_seconds: 1
    #         },
    #         streaming_configuration: {
    #           enable_response_streaming: false
    #         },
    #         disable_mcp_list_tools_pagination: false
    #       }
    #     },
    #     authorizer_type: "CUSTOM_JWT" # One of: ["CUSTOM_JWT", "AWS_IAM", "NONE", "AUTHENTICATE_ONLY"], # required
    #     authorizer_configuration: {
    #       # One of:
    #       custom_jwt_authorizer: {
    #         discovery_url: "DiscoveryUrl", # required
    #         allowed_audience: ["AllowedAudience"],
    #         allowed_clients: ["AllowedClient"],
    #         allowed_scopes: ["AllowedScopeType"],
    #         advertised_scope_mapping: {
    #           "AllowedScopeType" => "AllowedScopeType"
    #         },
    #         custom_claims: [
    #           {
    #             inbound_token_claim_name: "InboundTokenClaimNameType", # required
    #             inbound_token_claim_value_type: "STRING" # One of: ["STRING", "STRING_ARRAY"], # required
    #             authorizing_claim_match_value: { # required
    #               claim_match_value: { # required
    #                 # One of:
    #                 match_value_string: "MatchValueString",
    #                 match_value_string_list: ["MatchValueString"]
    #               },
    #               claim_match_operator: "EQUALS" # One of: ["EQUALS", "CONTAINS", "CONTAINS_ANY"], # required
    #             }
    #           }
    #         ],
    #         private_endpoint: {
    #           # One of:
    #           self_managed_lattice_resource: {
    #             # One of:
    #             resource_configuration_identifier: "ResourceConfigurationIdentifier"
    #           },
    #           managed_vpc_resource: {
    #             vpc_identifier: "VpcIdentifier", # required
    #             subnet_ids: ["SubnetId"], # required
    #             endpoint_ip_address_type: "IPV4" # One of: ["IPV4", "IPV6"], # required
    #             security_group_ids: ["SecurityGroupIdentifier"],
    #             tags: {
    #               "TagKey" => "TagValue"
    #             },
    #             routing_domain: "RoutingDomain"
    #           }
    #         },
    #         private_endpoint_overrides: [
    #           {
    #             domain: "PrivateEndpointOverrideDomain", # required
    #             private_endpoint: { # required
    #               # One of:
    #               self_managed_lattice_resource: {
    #                 # One of:
    #                 resource_configuration_identifier: "ResourceConfigurationIdentifier"
    #               },
    #               managed_vpc_resource: {
    #                 vpc_identifier: "VpcIdentifier", # required
    #                 subnet_ids: ["SubnetId"], # required
    #                 endpoint_ip_address_type: "IPV4" # One of: ["IPV4", "IPV6"], # required
    #                 security_group_ids: ["SecurityGroupIdentifier"],
    #                 tags: {
    #                   "TagKey" => "TagValue"
    #                 },
    #                 routing_domain: "RoutingDomain"
    #               }
    #             }
    #           }
    #         ],
    #         allowed_workload_configuration: {
    #           hosting_environments: [
    #             {
    #               arn: "BedrockAgentcoreResourceArn", # required
    #             }
    #           ],
    #           workload_identities: ["WorkloadIdentityNameType"]
    #         }
    #       }
    #     },
    #     kms_key_arn: "KmsKeyArn",
    #     interceptor_configurations: [
    #       {
    #         interceptor: { # required
    #           # One of:
    #           lambda: {
    #             arn: "LambdaFunctionArn", # required
    #           }
    #         },
    #         interception_points: ["REQUEST" # One of: ["REQUEST", "RESPONSE"]], # required
    #         input_configuration: {
    #           pass_request_headers: false, # required
    #           payload_filter: {
    #             exclude: [{ # required
    #               # One of:
    #               field: "RESPONSE_BODY" # One of: ["RESPONSE_BODY"]
    #             }]
    #           }
    #         }
    #       }
    #     ],
    #     policy_engine_configuration: {
    #       arn: "GatewayPolicyEngineArn", # required
    #       mode: "LOG_ONLY" # One of: ["LOG_ONLY", "ENFORCE"], # required
    #     },
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
    #     protocol_type: "MCP" # One of: ["MCP"],
    #     protocol_configuration: {
    #       # One of:
    #       mcp: {
    #         supported_versions: ["McpVersion"],
    #         instructions: "McpInstructions",
    #         search_type: "SEMANTIC" # One of: ["SEMANTIC"],
    #         session_configuration: {
    #           session_timeout_in_seconds: 1
    #         },
    #         streaming_configuration: {
    #           enable_response_streaming: false
    #         },
    #         disable_mcp_list_tools_pagination: false
    #       }
    #     },
    #     authorizer_type: "CUSTOM_JWT" # One of: ["CUSTOM_JWT", "AWS_IAM", "NONE", "AUTHENTICATE_ONLY"], # required
    #     authorizer_configuration: {
    #       # One of:
    #       custom_jwt_authorizer: {
    #         discovery_url: "DiscoveryUrl", # required
    #         allowed_audience: ["AllowedAudience"],
    #         allowed_clients: ["AllowedClient"],
    #         allowed_scopes: ["AllowedScopeType"],
    #         advertised_scope_mapping: {
    #           "AllowedScopeType" => "AllowedScopeType"
    #         },
    #         custom_claims: [
    #           {
    #             inbound_token_claim_name: "InboundTokenClaimNameType", # required
    #             inbound_token_claim_value_type: "STRING" # One of: ["STRING", "STRING_ARRAY"], # required
    #             authorizing_claim_match_value: { # required
    #               claim_match_value: { # required
    #                 # One of:
    #                 match_value_string: "MatchValueString",
    #                 match_value_string_list: ["MatchValueString"]
    #               },
    #               claim_match_operator: "EQUALS" # One of: ["EQUALS", "CONTAINS", "CONTAINS_ANY"], # required
    #             }
    #           }
    #         ],
    #         private_endpoint: {
    #           # One of:
    #           self_managed_lattice_resource: {
    #             # One of:
    #             resource_configuration_identifier: "ResourceConfigurationIdentifier"
    #           },
    #           managed_vpc_resource: {
    #             vpc_identifier: "VpcIdentifier", # required
    #             subnet_ids: ["SubnetId"], # required
    #             endpoint_ip_address_type: "IPV4" # One of: ["IPV4", "IPV6"], # required
    #             security_group_ids: ["SecurityGroupIdentifier"],
    #             tags: {
    #               "TagKey" => "TagValue"
    #             },
    #             routing_domain: "RoutingDomain"
    #           }
    #         },
    #         private_endpoint_overrides: [
    #           {
    #             domain: "PrivateEndpointOverrideDomain", # required
    #             private_endpoint: { # required
    #               # One of:
    #               self_managed_lattice_resource: {
    #                 # One of:
    #                 resource_configuration_identifier: "ResourceConfigurationIdentifier"
    #               },
    #               managed_vpc_resource: {
    #                 vpc_identifier: "VpcIdentifier", # required
    #                 subnet_ids: ["SubnetId"], # required
    #                 endpoint_ip_address_type: "IPV4" # One of: ["IPV4", "IPV6"], # required
    #                 security_group_ids: ["SecurityGroupIdentifier"],
    #                 tags: {
    #                   "TagKey" => "TagValue"
    #                 },
    #                 routing_domain: "RoutingDomain"
    #               }
    #             }
    #           }
    #         ],
    #         allowed_workload_configuration: {
    #           hosting_environments: [
    #             {
    #               arn: "BedrockAgentcoreResourceArn", # required
    #             }
    #           ],
    #           workload_identities: ["WorkloadIdentityNameType"]
    #         }
    #       }
    #     },
    #     kms_key_arn: "KmsKeyArn",
    #     custom_transform_configuration: {
    #       lambda: {
    #         arn: "LambdaFunctionArn"
    #       }
    #     },
    #     interceptor_configurations: [
    #       {
    #         interceptor: { # required
    #           # One of:
    #           lambda: {
    #             arn: "LambdaFunctionArn", # required
    #           }
    #         },
    #         interception_points: ["REQUEST" # One of: ["REQUEST", "RESPONSE"]], # required
    #         input_configuration: {
    #           pass_request_headers: false, # required
    #           payload_filter: {
    #             exclude: [{ # required
    #               # One of:
    #               field: "RESPONSE_BODY" # One of: ["RESPONSE_BODY"]
    #             }]
    #           }
    #         }
    #       }
    #     ],
    #     policy_engine_configuration: {
    #       arn: "GatewayPolicyEngineArn", # required
    #       mode: "LOG_ONLY" # One of: ["LOG_ONLY", "ENFORCE"], # required
    #     },
    #     workload_identity_details: {
    #       workload_identity_arn: "WorkloadIdentityArn", # required
    #     },
    #     exception_level: "DEBUG" # One of: ["DEBUG"],
    #     web_acl_arn: "WebAclArn",
    #     waf_configuration: {
    #       failure_mode: "FAIL_CLOSE" # One of: ["FAIL_CLOSE", "FAIL_OPEN"]
    #     }
    #   }
    # @return [Types::CreateGatewayResponse]
    def create_gateway(params = {}, options = {})
      request = build_request(:create_gateway, params)
      request.send_request(options)
    end

    # <p>Creates a rate limit for a gateway. Rate limits define throttling rules for each dimension that control request rates, token consumption rates, and concurrent connections through the gateway.</p>
    # @param [Hash, Types::CreateGatewayRateLimitRequest] params
    # @option params [String] :gateway_identifier
    #   <p>The unique identifier of the gateway to create the rate limit for.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If you don't specify this field, a value is randomly generated for you. If this token matches a previous request, the service ignores the request, but doesn't return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    # @option params [String] :rate_limit_id
    #   <p>An optional customer-defined identifier for the rate limit. If not provided, the system generates one.</p>
    # @option params [String] :description
    #   <p>An optional human-readable description for this rate limit. If not provided, the rate limit is created without a description.</p>
    # @option params [Array<String>] :dimension_keys
    #   <p>The ordered list of dimension key names that define the scope of this rate limit. Must be unique per gateway—no two rate limits can share the same dimension keys.</p>
    # @option params [Array<Types::LimitEntry>] :entries
    #   <p>The rule entries that map dimension values to rate configurations.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_identifier: "GatewayIdentifier", # required
    #     client_token: "ClientToken",
    #     rate_limit_id: "GatewayRateLimitId",
    #     description: "GatewayRateLimitDescription",
    #     dimension_keys: ["DimensionKey"], # required
    #     entries: [ # required
    #       {
    #         dimensions: { # required
    #           "DimensionKey" => "DimensionValue"
    #         },
    #         requests: [
    #           {
    #             rate: 1.0, # required
    #             period: "second" # One of: ["second", "minute"], # required
    #           }
    #         ],
    #         tokens: [
    #           {
    #             rate: 1.0, # required
    #             period: "second" # One of: ["second", "minute"], # required
    #           }
    #         ],
    #         connections: [
    #           {
    #             rate: 1.0, # required
    #             period: "second" # One of: ["second", "minute"], # required
    #           }
    #         ]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_gateway_rate_limit(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rate_limit_id: "GatewayRateLimitId", # required
    #     gateway_identifier: "GatewayIdentifier", # required
    #     description: "GatewayRateLimitDescription",
    #     dimension_keys: ["DimensionKey"], # required
    #     entries: [ # required
    #       {
    #         dimensions: { # required
    #           "DimensionKey" => "DimensionValue"
    #         },
    #         requests: [
    #           {
    #             rate: 1.0, # required
    #             period: "second" # One of: ["second", "minute"], # required
    #           }
    #         ],
    #         tokens: [
    #           {
    #             rate: 1.0, # required
    #             period: "second" # One of: ["second", "minute"], # required
    #           }
    #         ],
    #         connections: [
    #           {
    #             rate: 1.0, # required
    #             period: "second" # One of: ["second", "minute"], # required
    #           }
    #         ]
    #       }
    #     ],
    #     status: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "DELETING"], # required
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #   }
    # @return [Types::CreateGatewayRateLimitResponse]
    def create_gateway_rate_limit(params = {}, options = {})
      request = build_request(:create_gateway_rate_limit, params)
      request.send_request(options)
    end

    # <p>Creates a rule for a gateway. Rules define conditions and actions that control how requests are routed and processed through the gateway, including principal-based access control and path-based routing.</p>
    # @param [Hash, Types::CreateGatewayRuleRequest] params
    # @option params [String] :gateway_identifier
    #   <p>The identifier of the gateway to create a rule for.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If you don't specify this field, a value is randomly generated for you. If this token matches a previous request, the service ignores the request, but doesn't return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    # @option params [Integer] :priority
    #   <p>The priority of the rule. Rules are evaluated in order of priority, with lower numbers evaluated first. Must be between 1 and 1,000,000.</p>
    # @option params [Array<Types::Condition>] :conditions
    #   <p>The conditions that must be met for the rule to apply. Conditions can match on principals (IAM ARNs) or request paths.</p>
    # @option params [Array<Types::Action>] :actions
    #   <p>The actions to take when the rule conditions are met. Actions can route to a specific target or apply a configuration bundle override.</p>
    # @option params [String] :description
    #   <p>The description of the gateway rule.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_identifier: "GatewayIdentifier", # required
    #     client_token: "ClientToken",
    #     priority: 1, # required
    #     conditions: [{
    #       # One of:
    #       match_principals: {
    #         any_of: [{ # required
    #           # One of:
    #           iam_principal: {
    #             arn: "IamPrincipalArn", # required
    #             operator: "StringEquals" # One of: ["StringEquals", "StringLike"]
    #           }
    #         }]
    #       },
    #       match_paths: {
    #         any_of: ["MatchPathPattern"], # required
    #       }
    #     }],
    #     actions: [{ # required
    #       # One of:
    #       configuration_bundle: {
    #         # One of:
    #         static_override: {
    #           bundle_arn: "GatewayConfigurationBundleArn", # required
    #           bundle_version: "String", # required
    #         },
    #         weighted_override: {
    #           traffic_split: [ # required
    #             {
    #               name: "String", # required
    #               weight: 1, # required
    #               configuration_bundle: { # required
    #                 bundle_arn: "GatewayConfigurationBundleArn", # required
    #                 bundle_version: "String", # required
    #               },
    #               description: "String",
    #               metadata: {
    #                 "TrafficSplitMetadataKey" => "TrafficSplitMetadataValue"
    #               }
    #             }
    #           ]
    #         }
    #       },
    #       route_to_target: {
    #         # One of:
    #         static_route: {
    #           target_name: "TargetName", # required
    #         },
    #         weighted_route: {
    #           traffic_split: [ # required
    #             {
    #               name: "String", # required
    #               weight: 1, # required
    #               target_name: "TargetName", # required
    #               description: "String",
    #               metadata: {
    #                 "TrafficSplitMetadataKey" => "TrafficSplitMetadataValue"
    #               }
    #             }
    #           ]
    #         }
    #       }
    #     }],
    #     description: "GatewayRuleDescription"
    #   }
    #   options = {}
    #   response = client.create_gateway_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rule_id: "GatewayRuleId", # required
    #     gateway_arn: "GatewayArn", # required
    #     priority: 1, # required
    #     conditions: [{
    #       # One of:
    #       match_principals: {
    #         any_of: [{ # required
    #           # One of:
    #           iam_principal: {
    #             arn: "IamPrincipalArn", # required
    #             operator: "StringEquals" # One of: ["StringEquals", "StringLike"]
    #           }
    #         }]
    #       },
    #       match_paths: {
    #         any_of: ["MatchPathPattern"], # required
    #       }
    #     }],
    #     actions: [{ # required
    #       # One of:
    #       configuration_bundle: {
    #         # One of:
    #         static_override: {
    #           bundle_arn: "GatewayConfigurationBundleArn", # required
    #           bundle_version: "String", # required
    #         },
    #         weighted_override: {
    #           traffic_split: [ # required
    #             {
    #               name: "String", # required
    #               weight: 1, # required
    #               configuration_bundle: { # required
    #                 bundle_arn: "GatewayConfigurationBundleArn", # required
    #                 bundle_version: "String", # required
    #               },
    #               description: "String",
    #               metadata: {
    #                 "TrafficSplitMetadataKey" => "TrafficSplitMetadataValue"
    #               }
    #             }
    #           ]
    #         }
    #       },
    #       route_to_target: {
    #         # One of:
    #         static_route: {
    #           target_name: "TargetName", # required
    #         },
    #         weighted_route: {
    #           traffic_split: [ # required
    #             {
    #               name: "String", # required
    #               weight: 1, # required
    #               target_name: "TargetName", # required
    #               description: "String",
    #               metadata: {
    #                 "TrafficSplitMetadataKey" => "TrafficSplitMetadataValue"
    #               }
    #             }
    #           ]
    #         }
    #       }
    #     }],
    #     description: "GatewayRuleDescription",
    #     created_at: Time.now, # required
    #     status: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "DELETING"], # required
    #     system: {
    #       managed_by: "String", # required
    #     }
    #   }
    # @return [Types::CreateGatewayRuleResponse]
    def create_gateway_rule(params = {}, options = {})
      request = build_request(:create_gateway_rule, params)
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
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If you don't specify this field, a value is randomly generated for you. If this token matches a previous request, the service ignores the request, but doesn't return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    # @option params [Types::TargetConfiguration] :target_configuration
    #   <p>The configuration settings for the target, including endpoint information and schema definitions.</p>
    # @option params [Array<Types::CredentialProviderConfiguration>] :credential_provider_configurations
    #   <p>The credential provider configurations for the target. These configurations specify how the gateway authenticates with the target endpoint.</p>
    # @option params [Types::MetadataConfiguration] :metadata_configuration
    #   <p>Optional configuration for HTTP header and query parameter propagation to and from the gateway target.</p>
    # @option params [Types::PrivateEndpoint] :private_endpoint
    #   <p>The private endpoint configuration for the gateway target. Use this to connect the gateway to private resources in your VPC.</p>
    # @option params [Array<Types::CertificateConfiguration>] :certificate_configurations
    #   <p>The private certificate authority (CA) configurations for the gateway target. Use this to have the gateway trust a private CA when it establishes TLS connections to the target endpoint. Provide each certificate by reference to an Amazon S3 object or an Amazon Web Services Secrets Manager secret. You can specify only one certificate authority configuration in this list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_identifier: "GatewayIdentifier", # required
    #     name: "TargetName",
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
    #         },
    #         mcp_server: {
    #           endpoint: "String", # required
    #           mcp_tool_schema: {
    #             # One of:
    #             s3: {
    #               uri: "S3BucketUri",
    #               bucket_owner_account_id: "AwsAccountId"
    #             },
    #             inline_payload: "InlinePayload"
    #           },
    #           listing_mode: "DEFAULT" # One of: ["DEFAULT", "DYNAMIC"],
    #           resource_priority: 1
    #         },
    #         api_gateway: {
    #           rest_api_id: "String", # required
    #           stage: "String", # required
    #           api_gateway_tool_configuration: { # required
    #             tool_overrides: [
    #               {
    #                 name: "String", # required
    #                 description: "String",
    #                 path: "String", # required
    #                 method: "GET" # One of: ["GET", "DELETE", "HEAD", "OPTIONS", "PATCH", "PUT", "POST"], # required
    #               }
    #             ],
    #             tool_filters: [ # required
    #               {
    #                 filter_path: "String", # required
    #                 methods: ["GET" # One of: ["GET", "DELETE", "HEAD", "OPTIONS", "PATCH", "PUT", "POST"]], # required
    #               }
    #             ]
    #           }
    #         },
    #         connector: {
    #           source: { # required
    #             connector_id: "ConnectorId", # required
    #             version: "ConnectorVersion"
    #           },
    #           enabled: ["String"],
    #           configurations: [
    #             {
    #               name: "String", # required
    #               description: "String",
    #               parameter_values: ""null"",
    #               parameter_overrides: [
    #                 {
    #                   path: "String", # required
    #                   description: "String",
    #                   visible: false
    #                 }
    #               ]
    #             }
    #           ]
    #         }
    #       },
    #       http: {
    #         # One of:
    #         agentcore_runtime: {
    #           arn: "RuntimeArn", # required
    #           qualifier: "RuntimeQualifier",
    #           schema: {
    #             source: { # required
    #               # One of:
    #               s3: {
    #                 uri: "S3BucketUri",
    #                 bucket_owner_account_id: "AwsAccountId"
    #               },
    #               inline_payload: "InlinePayload"
    #             }
    #           }
    #         },
    #         passthrough: {
    #           endpoint: "PassthroughEndpoint", # required
    #           protocol_type: "MCP" # One of: ["MCP", "A2A", "INFERENCE", "CUSTOM"], # required
    #           schema: {
    #             source: { # required
    #               # One of:
    #               s3: {
    #                 uri: "S3BucketUri",
    #                 bucket_owner_account_id: "AwsAccountId"
    #               },
    #               inline_payload: "InlinePayload"
    #             }
    #           },
    #           stickiness_configuration: {
    #             identifier: "String", # required
    #             timeout: 1,
    #             composite_identifier: ["CompositeIdentifierEntry"]
    #           },
    #           static_query_parameters: {
    #             "StaticQueryParameterName" => "StaticQueryParameterValue"
    #           },
    #           static_query_parameter_conflict_resolution: "CLIENT_OVERRIDE" # One of: ["CLIENT_OVERRIDE", "STATIC_OVERRIDE"]
    #         },
    #         connector: {
    #           source: { # required
    #             connector_id: "ConnectorId", # required
    #           },
    #           parameters: {
    #             "ConnectorParameterName" => "ConnectorParameterValue"
    #           }
    #         }
    #       },
    #       inference: {
    #         # One of:
    #         connector: {
    #           source: { # required
    #             connector_id: "InferenceConnectorId", # required
    #           }
    #         },
    #         provider: {
    #           endpoint: "PassthroughEndpoint", # required
    #           model_mapping: {
    #             provider_prefix: {
    #               strip: false,
    #               separator: "String"
    #             }
    #           },
    #           operations: [
    #             {
    #               path: "InferenceOperationPath", # required
    #               provider_path: "InferenceOperationPath",
    #               models: [
    #                 {
    #                   model: "ModelPattern", # required
    #                 }
    #               ]
    #             }
    #           ]
    #         }
    #       }
    #     },
    #     credential_provider_configurations: [
    #       {
    #         credential_provider_type: "GATEWAY_IAM_ROLE" # One of: ["GATEWAY_IAM_ROLE", "OAUTH", "API_KEY", "CALLER_IAM_CREDENTIALS", "JWT_PASSTHROUGH"], # required
    #         credential_provider: {
    #           # One of:
    #           oauth_credential_provider: {
    #             provider_arn: "OAuthCredentialProviderArn", # required
    #             scopes: ["OAuthScope"], # required
    #             custom_parameters: {
    #               "OAuthCustomParametersKey" => "OAuthCustomParametersValue"
    #             },
    #             grant_type: "CLIENT_CREDENTIALS" # One of: ["CLIENT_CREDENTIALS", "AUTHORIZATION_CODE", "TOKEN_EXCHANGE"],
    #             default_return_url: "OAuthDefaultReturnUrl"
    #           },
    #           api_key_credential_provider: {
    #             provider_arn: "ApiKeyCredentialProviderArn", # required
    #             credential_parameter_name: "ApiKeyCredentialParameterName",
    #             credential_prefix: "ApiKeyCredentialPrefix",
    #             credential_location: "HEADER" # One of: ["HEADER", "QUERY_PARAMETER"]
    #           },
    #           iam_credential_provider: {
    #             service: "String", # required
    #             region: "String"
    #           }
    #         }
    #       }
    #     ],
    #     metadata_configuration: {
    #       allowed_request_headers: ["HttpHeaderName"],
    #       allowed_query_parameters: ["HttpQueryParameterName"],
    #       allowed_response_headers: ["HttpHeaderName"]
    #     },
    #     private_endpoint: {
    #       # One of:
    #       self_managed_lattice_resource: {
    #         # One of:
    #         resource_configuration_identifier: "ResourceConfigurationIdentifier"
    #       },
    #       managed_vpc_resource: {
    #         vpc_identifier: "VpcIdentifier", # required
    #         subnet_ids: ["SubnetId"], # required
    #         endpoint_ip_address_type: "IPV4" # One of: ["IPV4", "IPV6"], # required
    #         security_group_ids: ["SecurityGroupIdentifier"],
    #         tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         routing_domain: "RoutingDomain"
    #       }
    #     },
    #     certificate_configurations: [{
    #       # One of:
    #       s3: {
    #         uri: "CertificateS3Uri", # required
    #         bucket_owner_account_id: "CertificateBucketOwnerAccountId"
    #       },
    #       secrets_manager: {
    #         secret_arn: "CertificateSecretArn", # required
    #       }
    #     }]
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
    #     status: "CREATING" # One of: ["CREATING", "UPDATING", "UPDATE_UNSUCCESSFUL", "DELETING", "READY", "FAILED", "SYNCHRONIZING", "SYNCHRONIZE_UNSUCCESSFUL", "CREATE_PENDING_AUTH", "UPDATE_PENDING_AUTH", "SYNCHRONIZE_PENDING_AUTH"], # required
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
    #         },
    #         mcp_server: {
    #           endpoint: "String", # required
    #           mcp_tool_schema: {
    #             # One of:
    #             s3: {
    #               uri: "S3BucketUri",
    #               bucket_owner_account_id: "AwsAccountId"
    #             },
    #             inline_payload: "InlinePayload"
    #           },
    #           listing_mode: "DEFAULT" # One of: ["DEFAULT", "DYNAMIC"],
    #           resource_priority: 1
    #         },
    #         api_gateway: {
    #           rest_api_id: "String", # required
    #           stage: "String", # required
    #           api_gateway_tool_configuration: { # required
    #             tool_overrides: [
    #               {
    #                 name: "String", # required
    #                 description: "String",
    #                 path: "String", # required
    #                 method: "GET" # One of: ["GET", "DELETE", "HEAD", "OPTIONS", "PATCH", "PUT", "POST"], # required
    #               }
    #             ],
    #             tool_filters: [ # required
    #               {
    #                 filter_path: "String", # required
    #                 methods: ["GET" # One of: ["GET", "DELETE", "HEAD", "OPTIONS", "PATCH", "PUT", "POST"]], # required
    #               }
    #             ]
    #           }
    #         },
    #         connector: {
    #           source: { # required
    #             connector_id: "ConnectorId", # required
    #             version: "ConnectorVersion"
    #           },
    #           enabled: ["String"],
    #           configurations: [
    #             {
    #               name: "String", # required
    #               description: "String",
    #               parameter_values: ""null"",
    #               parameter_overrides: [
    #                 {
    #                   path: "String", # required
    #                   description: "String",
    #                   visible: false
    #                 }
    #               ]
    #             }
    #           ]
    #         }
    #       },
    #       http: {
    #         # One of:
    #         agentcore_runtime: {
    #           arn: "RuntimeArn", # required
    #           qualifier: "RuntimeQualifier",
    #           schema: {
    #             source: { # required
    #               # One of:
    #               s3: {
    #                 uri: "S3BucketUri",
    #                 bucket_owner_account_id: "AwsAccountId"
    #               },
    #               inline_payload: "InlinePayload"
    #             }
    #           }
    #         },
    #         passthrough: {
    #           endpoint: "PassthroughEndpoint", # required
    #           protocol_type: "MCP" # One of: ["MCP", "A2A", "INFERENCE", "CUSTOM"], # required
    #           schema: {
    #             source: { # required
    #               # One of:
    #               s3: {
    #                 uri: "S3BucketUri",
    #                 bucket_owner_account_id: "AwsAccountId"
    #               },
    #               inline_payload: "InlinePayload"
    #             }
    #           },
    #           stickiness_configuration: {
    #             identifier: "String", # required
    #             timeout: 1,
    #             composite_identifier: ["CompositeIdentifierEntry"]
    #           },
    #           static_query_parameters: {
    #             "StaticQueryParameterName" => "StaticQueryParameterValue"
    #           },
    #           static_query_parameter_conflict_resolution: "CLIENT_OVERRIDE" # One of: ["CLIENT_OVERRIDE", "STATIC_OVERRIDE"]
    #         },
    #         connector: {
    #           source: { # required
    #             connector_id: "ConnectorId", # required
    #           },
    #           parameters: {
    #             "ConnectorParameterName" => "ConnectorParameterValue"
    #           }
    #         }
    #       },
    #       inference: {
    #         # One of:
    #         connector: {
    #           source: { # required
    #             connector_id: "InferenceConnectorId", # required
    #           }
    #         },
    #         provider: {
    #           endpoint: "PassthroughEndpoint", # required
    #           model_mapping: {
    #             provider_prefix: {
    #               strip: false,
    #               separator: "String"
    #             }
    #           },
    #           operations: [
    #             {
    #               path: "InferenceOperationPath", # required
    #               provider_path: "InferenceOperationPath",
    #               models: [
    #                 {
    #                   model: "ModelPattern", # required
    #                 }
    #               ]
    #             }
    #           ]
    #         }
    #       }
    #     },
    #     credential_provider_configurations: [ # required
    #       {
    #         credential_provider_type: "GATEWAY_IAM_ROLE" # One of: ["GATEWAY_IAM_ROLE", "OAUTH", "API_KEY", "CALLER_IAM_CREDENTIALS", "JWT_PASSTHROUGH"], # required
    #         credential_provider: {
    #           # One of:
    #           oauth_credential_provider: {
    #             provider_arn: "OAuthCredentialProviderArn", # required
    #             scopes: ["OAuthScope"], # required
    #             custom_parameters: {
    #               "OAuthCustomParametersKey" => "OAuthCustomParametersValue"
    #             },
    #             grant_type: "CLIENT_CREDENTIALS" # One of: ["CLIENT_CREDENTIALS", "AUTHORIZATION_CODE", "TOKEN_EXCHANGE"],
    #             default_return_url: "OAuthDefaultReturnUrl"
    #           },
    #           api_key_credential_provider: {
    #             provider_arn: "ApiKeyCredentialProviderArn", # required
    #             credential_parameter_name: "ApiKeyCredentialParameterName",
    #             credential_prefix: "ApiKeyCredentialPrefix",
    #             credential_location: "HEADER" # One of: ["HEADER", "QUERY_PARAMETER"]
    #           },
    #           iam_credential_provider: {
    #             service: "String", # required
    #             region: "String"
    #           }
    #         }
    #       }
    #     ],
    #     last_synchronized_at: Time.now,
    #     metadata_configuration: {
    #       allowed_request_headers: ["HttpHeaderName"],
    #       allowed_query_parameters: ["HttpQueryParameterName"],
    #       allowed_response_headers: ["HttpHeaderName"]
    #     },
    #     private_endpoint: {
    #       # One of:
    #       self_managed_lattice_resource: {
    #         # One of:
    #         resource_configuration_identifier: "ResourceConfigurationIdentifier"
    #       },
    #       managed_vpc_resource: {
    #         vpc_identifier: "VpcIdentifier", # required
    #         subnet_ids: ["SubnetId"], # required
    #         endpoint_ip_address_type: "IPV4" # One of: ["IPV4", "IPV6"], # required
    #         security_group_ids: ["SecurityGroupIdentifier"],
    #         tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         routing_domain: "RoutingDomain"
    #       }
    #     },
    #     private_endpoint_managed_resources: [
    #       {
    #         domain: "DomainName",
    #         resource_gateway_arn: "ResourceGatewayArn",
    #         resource_association_arn: "ResourceAssociationArn"
    #       }
    #     ],
    #     authorization_data: {
    #       # One of:
    #       oauth2: {
    #         authorization_url: "String", # required
    #         user_id: "String"
    #       }
    #     },
    #     protocol_type: "MCP" # One of: ["MCP", "HTTP"],
    #     certificate_configurations: [{
    #       # One of:
    #       s3: {
    #         uri: "CertificateS3Uri", # required
    #         bucket_owner_account_id: "CertificateBucketOwnerAccountId"
    #       },
    #       secrets_manager: {
    #         secret_arn: "CertificateSecretArn", # required
    #       }
    #     }]
    #   }
    # @return [Types::CreateGatewayTargetResponse]
    def create_gateway_target(params = {}, options = {})
      request = build_request(:create_gateway_target, params)
      request.send_request(options)
    end

    # <p>Operation to create a harness.</p>
    # @param [Hash, Types::CreateHarnessRequest] params
    # @option params [String] :harness_name
    #   <p>The name of the harness. Must start with a letter and contain only alphanumeric characters and underscores.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure idempotency of the request.</p>
    # @option params [String] :execution_role_arn
    #   <p>The ARN of the IAM role that the harness assumes when running. This role must have permissions for the services the agent needs to access, such as Amazon Bedrock for model invocation.</p>
    # @option params [Types::HarnessEnvironmentProviderRequest] :environment
    #   <p>The compute environment configuration for the harness, including network and lifecycle settings.</p>
    # @option params [Types::HarnessEnvironmentArtifact] :environment_artifact
    #   <p>The environment artifact for the harness, such as a custom container image containing additional dependencies.</p>
    # @option params [Hash<String, String>] :environment_variables
    #   <p>Environment variables to set in the harness runtime environment.</p>
    # @option params [Types::AuthorizerConfiguration] :authorizer_configuration
    #   <p>Represents inbound authorization configuration options used to authenticate incoming requests. </p>
    # @option params [Types::HarnessModelConfiguration] :model
    #   <p>The model configuration for the harness. Supports Amazon Bedrock, OpenAI, and Google Gemini model providers.</p>
    # @option params [Array<Types::HarnessSystemContentBlock>] :system_prompt
    #   <p>The system prompt that defines the agent's behavior and instructions.</p>
    # @option params [Array<Types::HarnessTool>] :tools
    #   <p>The tools available to the agent, such as remote MCP servers, AgentCore Gateway, AgentCore Browser, Code Interpreter, or inline functions.</p>
    # @option params [Array<Types::HarnessSkill>] :skills
    #   <p>The skills available to the agent. Skills are bundles of files that the agent can pull into its context on demand.</p>
    # @option params [Array<String>] :allowed_tools
    #   <p>The tools that the agent is allowed to use. Supports glob patterns such as * for all tools, @builtin for all built-in tools, or @serverName/toolName for specific MCP server tools.</p>
    # @option params [Types::HarnessMemoryConfiguration] :memory
    #   <p>The AgentCore Memory configuration for persisting conversation context across sessions.</p>
    # @option params [Types::HarnessTruncationConfiguration] :truncation
    #   <p>The truncation configuration for managing conversation context when it exceeds model limits.</p>
    # @option params [Array<Types::HarnessHook>] :hooks
    #   <p>The lifecycle hooks to run at defined points in the agent loop.</p>
    # @option params [Integer] :max_iterations
    #   <p>The maximum number of iterations the agent loop can execute per invocation.</p>
    # @option params [Integer] :max_tokens
    #   <p>The maximum total number of output tokens the agent can generate across all model calls within a single invocation.</p>
    # @option params [Integer] :timeout_seconds
    #   <p>The maximum duration in seconds for the agent loop execution per invocation.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Tags to apply to the harness resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     harness_name: "HarnessName", # required
    #     client_token: "ClientToken",
    #     execution_role_arn: "RoleArn", # required
    #     environment: {
    #       # One of:
    #       agent_core_runtime_environment: {
    #         lifecycle_configuration: {
    #           idle_runtime_session_timeout: 1,
    #           max_lifetime: 1
    #         },
    #         network_configuration: {
    #           network_mode: "PUBLIC" # One of: ["PUBLIC", "VPC"], # required
    #           network_mode_config: {
    #             security_groups: ["SecurityGroupId"], # required
    #             subnets: ["SubnetId"], # required
    #             require_service_s3_endpoint: false
    #           }
    #         },
    #         filesystem_configurations: [{
    #           # One of:
    #           session_storage: {
    #             mount_path: "MountPath", # required
    #           },
    #           s3_files_access_point: {
    #             access_point_arn: "S3FilesAccessPointArn", # required
    #             mount_path: "MountPath", # required
    #           },
    #           efs_access_point: {
    #             access_point_arn: "EfsAccessPointArn", # required
    #             mount_path: "MountPath", # required
    #           },
    #           capacity_provider_volume: {
    #             volume_name: "CapacityProviderVolumeName", # required
    #             mount_path: "MountPath", # required
    #           }
    #         }]
    #       }
    #     },
    #     environment_artifact: {
    #       # One of:
    #       container_configuration: {
    #         container_uri: "RuntimeContainerUri", # required
    #       }
    #     },
    #     environment_variables: {
    #       "EnvironmentVariableKey" => "EnvironmentVariableValue"
    #     },
    #     authorizer_configuration: {
    #       # One of:
    #       custom_jwt_authorizer: {
    #         discovery_url: "DiscoveryUrl", # required
    #         allowed_audience: ["AllowedAudience"],
    #         allowed_clients: ["AllowedClient"],
    #         allowed_scopes: ["AllowedScopeType"],
    #         advertised_scope_mapping: {
    #           "AllowedScopeType" => "AllowedScopeType"
    #         },
    #         custom_claims: [
    #           {
    #             inbound_token_claim_name: "InboundTokenClaimNameType", # required
    #             inbound_token_claim_value_type: "STRING" # One of: ["STRING", "STRING_ARRAY"], # required
    #             authorizing_claim_match_value: { # required
    #               claim_match_value: { # required
    #                 # One of:
    #                 match_value_string: "MatchValueString",
    #                 match_value_string_list: ["MatchValueString"]
    #               },
    #               claim_match_operator: "EQUALS" # One of: ["EQUALS", "CONTAINS", "CONTAINS_ANY"], # required
    #             }
    #           }
    #         ],
    #         private_endpoint: {
    #           # One of:
    #           self_managed_lattice_resource: {
    #             # One of:
    #             resource_configuration_identifier: "ResourceConfigurationIdentifier"
    #           },
    #           managed_vpc_resource: {
    #             vpc_identifier: "VpcIdentifier", # required
    #             subnet_ids: ["SubnetId"], # required
    #             endpoint_ip_address_type: "IPV4" # One of: ["IPV4", "IPV6"], # required
    #             security_group_ids: ["SecurityGroupIdentifier"],
    #             tags: {
    #               "TagKey" => "TagValue"
    #             },
    #             routing_domain: "RoutingDomain"
    #           }
    #         },
    #         private_endpoint_overrides: [
    #           {
    #             domain: "PrivateEndpointOverrideDomain", # required
    #             private_endpoint: { # required
    #               # One of:
    #               self_managed_lattice_resource: {
    #                 # One of:
    #                 resource_configuration_identifier: "ResourceConfigurationIdentifier"
    #               },
    #               managed_vpc_resource: {
    #                 vpc_identifier: "VpcIdentifier", # required
    #                 subnet_ids: ["SubnetId"], # required
    #                 endpoint_ip_address_type: "IPV4" # One of: ["IPV4", "IPV6"], # required
    #                 security_group_ids: ["SecurityGroupIdentifier"],
    #                 tags: {
    #                   "TagKey" => "TagValue"
    #                 },
    #                 routing_domain: "RoutingDomain"
    #               }
    #             }
    #           }
    #         ],
    #         allowed_workload_configuration: {
    #           hosting_environments: [
    #             {
    #               arn: "BedrockAgentcoreResourceArn", # required
    #             }
    #           ],
    #           workload_identities: ["WorkloadIdentityNameType"]
    #         }
    #       }
    #     },
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
    #     memory: {
    #       # One of:
    #       agent_core_memory_configuration: {
    #         arn: "MemoryArn", # required
    #         actor_id: "String",
    #         messages_count: 1,
    #         retrieval_config: {
    #           "String" => {
    #             top_k: 1,
    #             relevance_score: 1.0,
    #             strategy_id: "String"
    #           }
    #         }
    #       },
    #       managed_memory_configuration: {
    #         arn: "MemoryArn",
    #         strategies: ["SEMANTIC" # One of: ["SEMANTIC", "SUMMARIZATION", "USER_PREFERENCE", "EPISODIC"]],
    #         event_expiry_duration: 1,
    #         encryption_key_arn: "KmsKeyArn"
    #       },
    #       disabled: {
    #       }
    #     },
    #     truncation: {
    #       strategy: "sliding_window" # One of: ["sliding_window", "summarization", "none"], # required
    #       config: {
    #         # One of:
    #         sliding_window: {
    #           messages_count: 1
    #         },
    #         summarization: {
    #           summary_ratio: 1.0,
    #           preserve_recent_messages: 1,
    #           summarization_system_prompt: "String"
    #         }
    #       }
    #     },
    #     hooks: [{
    #       # One of:
    #       before_invocation: {
    #         name: "HarnessHookName", # required
    #         target: { # required
    #           # One of:
    #           lambda: {
    #             arn: "HarnessLambdaFunctionArn", # required
    #             timeout_seconds: 1,
    #             failure_mode: "allow" # One of: ["allow", "deny"]
    #           },
    #           sns: {
    #             arn: "HarnessSnsTopicArn", # required
    #           },
    #           event_bridge: {
    #             arn: "HarnessEventBridgeBusArn", # required
    #           }
    #         }
    #       },
    #       after_invocation: {
    #         name: "HarnessHookName", # required
    #         target: { # required
    #           # One of:
    #           lambda: {
    #             arn: "HarnessLambdaFunctionArn", # required
    #             timeout_seconds: 1,
    #             failure_mode: "allow" # One of: ["allow", "deny"]
    #           },
    #           sns: {
    #             arn: "HarnessSnsTopicArn", # required
    #           },
    #           event_bridge: {
    #             arn: "HarnessEventBridgeBusArn", # required
    #           }
    #         }
    #       },
    #       before_tool_call: {
    #         name: "HarnessHookName", # required
    #         target: { # required
    #           # One of:
    #           lambda: {
    #             arn: "HarnessLambdaFunctionArn", # required
    #             timeout_seconds: 1,
    #             failure_mode: "allow" # One of: ["allow", "deny"]
    #           },
    #           sns: {
    #             arn: "HarnessSnsTopicArn", # required
    #           },
    #           event_bridge: {
    #             arn: "HarnessEventBridgeBusArn", # required
    #           }
    #         }
    #       },
    #       after_tool_call: {
    #         name: "HarnessHookName", # required
    #         target: { # required
    #           # One of:
    #           lambda: {
    #             arn: "HarnessLambdaFunctionArn", # required
    #             timeout_seconds: 1,
    #             failure_mode: "allow" # One of: ["allow", "deny"]
    #           },
    #           sns: {
    #             arn: "HarnessSnsTopicArn", # required
    #           },
    #           event_bridge: {
    #             arn: "HarnessEventBridgeBusArn", # required
    #           }
    #         }
    #       }
    #     }],
    #     max_iterations: 1,
    #     max_tokens: 1,
    #     timeout_seconds: 1,
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_harness(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     harness: { # required
    #       harness_id: "HarnessId", # required
    #       harness_name: "HarnessName", # required
    #       arn: "HarnessArn", # required
    #       status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "READY", "DELETING", "DELETE_FAILED"], # required
    #       harness_version: "HarnessVersion",
    #       execution_role_arn: "RoleArn", # required
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       model: { # required
    #         # One of:
    #         bedrock_model_config: {
    #           model_id: "ModelId", # required
    #           max_tokens: 1,
    #           temperature: 1.0,
    #           top_p: 1.0,
    #           api_format: "converse_stream" # One of: ["converse_stream", "responses", "chat_completions"],
    #           additional_params: ""null""
    #         },
    #         open_ai_model_config: {
    #           model_id: "ModelId", # required
    #           api_key_arn: "ApiKeyArn", # required
    #           api_base: "HarnessOpenAiApiBase",
    #           max_tokens: 1,
    #           temperature: 1.0,
    #           top_p: 1.0,
    #           api_format: "chat_completions" # One of: ["chat_completions", "responses"],
    #           additional_params: ""null""
    #         },
    #         gemini_model_config: {
    #           model_id: "ModelId", # required
    #           api_key_arn: "ApiKeyArn", # required
    #           max_tokens: 1,
    #           temperature: 1.0,
    #           top_p: 1.0,
    #           top_k: 1,
    #           additional_params: ""null""
    #         },
    #         lite_llm_model_config: {
    #           model_id: "ModelId", # required
    #           api_key_arn: "ApiKeyArn",
    #           api_base: "HarnessLiteLlmApiBase",
    #           max_tokens: 1,
    #           temperature: 1.0,
    #           top_p: 1.0,
    #           additional_params: ""null""
    #         }
    #       },
    #       system_prompt: [{ # required
    #         # One of:
    #         text: "SensitiveText"
    #       }],
    #       tools: [ # required
    #         {
    #           type: "remote_mcp" # One of: ["remote_mcp", "agentcore_browser", "agentcore_gateway", "inline_function", "agentcore_code_interpreter"], # required
    #           name: "HarnessToolName",
    #           config: {
    #             # One of:
    #             remote_mcp: {
    #               url: "HarnessRemoteMcpUrl", # required
    #               headers: {
    #                 "HttpHeaderKey" => "HttpHeaderValue"
    #               }
    #             },
    #             agent_core_browser: {
    #               browser_arn: "HarnessBrowserArn"
    #             },
    #             agent_core_gateway: {
    #               gateway_arn: "GatewayArn", # required
    #               outbound_auth: {
    #                 # One of:
    #                 aws_iam: {
    #                 },
    #                 none: {
    #                 },
    #                 oauth: {
    #                   provider_arn: "OAuthCredentialProviderArn", # required
    #                   scopes: ["OAuthScope"], # required
    #                   custom_parameters: {
    #                     "OAuthCustomParametersKey" => "OAuthCustomParametersValue"
    #                   },
    #                   grant_type: "CLIENT_CREDENTIALS" # One of: ["CLIENT_CREDENTIALS", "AUTHORIZATION_CODE", "TOKEN_EXCHANGE"],
    #                   default_return_url: "OAuthDefaultReturnUrl"
    #                 }
    #               }
    #             },
    #             inline_function: {
    #               description: "HarnessInlineFunctionDescription", # required
    #               input_schema: ""null"", # required
    #             },
    #             agent_core_code_interpreter: {
    #               code_interpreter_arn: "HarnessCodeInterpreterArn"
    #             }
    #           }
    #         }
    #       ],
    #       skills: [{ # required
    #         # One of:
    #         path: "HarnessSkillPath",
    #         s3: {
    #           uri: "HarnessSkillS3Uri", # required
    #         },
    #         git: {
    #           url: "HarnessSkillGitUrl", # required
    #           path: "String",
    #           auth: {
    #             credential_arn: "ApiKeyArn", # required
    #             username: "String"
    #           }
    #         },
    #         aws_skills: {
    #           paths: ["HarnessAwsSkillPath"]
    #         }
    #       }],
    #       allowed_tools: ["HarnessAllowedTool"], # required
    #       truncation: { # required
    #         strategy: "sliding_window" # One of: ["sliding_window", "summarization", "none"], # required
    #         config: {
    #           # One of:
    #           sliding_window: {
    #             messages_count: 1
    #           },
    #           summarization: {
    #             summary_ratio: 1.0,
    #             preserve_recent_messages: 1,
    #             summarization_system_prompt: "String"
    #           }
    #         }
    #       },
    #       environment: { # required
    #         # One of:
    #         agent_core_runtime_environment: {
    #           agent_runtime_arn: "BedrockAgentcoreResourceArn", # required
    #           agent_runtime_name: "String", # required
    #           agent_runtime_id: "String", # required
    #           lifecycle_configuration: { # required
    #             idle_runtime_session_timeout: 1,
    #             max_lifetime: 1
    #           },
    #           network_configuration: { # required
    #             network_mode: "PUBLIC" # One of: ["PUBLIC", "VPC"], # required
    #             network_mode_config: {
    #               security_groups: ["SecurityGroupId"], # required
    #               subnets: ["SubnetId"], # required
    #               require_service_s3_endpoint: false
    #             }
    #           },
    #           filesystem_configurations: [{
    #             # One of:
    #             session_storage: {
    #               mount_path: "MountPath", # required
    #             },
    #             s3_files_access_point: {
    #               access_point_arn: "S3FilesAccessPointArn", # required
    #               mount_path: "MountPath", # required
    #             },
    #             efs_access_point: {
    #               access_point_arn: "EfsAccessPointArn", # required
    #               mount_path: "MountPath", # required
    #             },
    #             capacity_provider_volume: {
    #               volume_name: "CapacityProviderVolumeName", # required
    #               mount_path: "MountPath", # required
    #             }
    #           }]
    #         }
    #       },
    #       environment_artifact: {
    #         # One of:
    #         container_configuration: {
    #           container_uri: "RuntimeContainerUri", # required
    #         }
    #       },
    #       environment_variables: {
    #         "EnvironmentVariableKey" => "EnvironmentVariableValue"
    #       },
    #       authorizer_configuration: {
    #         # One of:
    #         custom_jwt_authorizer: {
    #           discovery_url: "DiscoveryUrl", # required
    #           allowed_audience: ["AllowedAudience"],
    #           allowed_clients: ["AllowedClient"],
    #           allowed_scopes: ["AllowedScopeType"],
    #           advertised_scope_mapping: {
    #             "AllowedScopeType" => "AllowedScopeType"
    #           },
    #           custom_claims: [
    #             {
    #               inbound_token_claim_name: "InboundTokenClaimNameType", # required
    #               inbound_token_claim_value_type: "STRING" # One of: ["STRING", "STRING_ARRAY"], # required
    #               authorizing_claim_match_value: { # required
    #                 claim_match_value: { # required
    #                   # One of:
    #                   match_value_string: "MatchValueString",
    #                   match_value_string_list: ["MatchValueString"]
    #                 },
    #                 claim_match_operator: "EQUALS" # One of: ["EQUALS", "CONTAINS", "CONTAINS_ANY"], # required
    #               }
    #             }
    #           ],
    #           private_endpoint: {
    #             # One of:
    #             self_managed_lattice_resource: {
    #               # One of:
    #               resource_configuration_identifier: "ResourceConfigurationIdentifier"
    #             },
    #             managed_vpc_resource: {
    #               vpc_identifier: "VpcIdentifier", # required
    #               subnet_ids: ["SubnetId"], # required
    #               endpoint_ip_address_type: "IPV4" # One of: ["IPV4", "IPV6"], # required
    #               security_group_ids: ["SecurityGroupIdentifier"],
    #               tags: {
    #                 "TagKey" => "TagValue"
    #               },
    #               routing_domain: "RoutingDomain"
    #             }
    #           },
    #           private_endpoint_overrides: [
    #             {
    #               domain: "PrivateEndpointOverrideDomain", # required
    #               private_endpoint: { # required
    #                 # One of:
    #                 self_managed_lattice_resource: {
    #                   # One of:
    #                   resource_configuration_identifier: "ResourceConfigurationIdentifier"
    #                 },
    #                 managed_vpc_resource: {
    #                   vpc_identifier: "VpcIdentifier", # required
    #                   subnet_ids: ["SubnetId"], # required
    #                   endpoint_ip_address_type: "IPV4" # One of: ["IPV4", "IPV6"], # required
    #                   security_group_ids: ["SecurityGroupIdentifier"],
    #                   tags: {
    #                     "TagKey" => "TagValue"
    #                   },
    #                   routing_domain: "RoutingDomain"
    #                 }
    #               }
    #             }
    #           ],
    #           allowed_workload_configuration: {
    #             hosting_environments: [
    #               {
    #                 arn: "BedrockAgentcoreResourceArn", # required
    #               }
    #             ],
    #             workload_identities: ["WorkloadIdentityNameType"]
    #           }
    #         }
    #       },
    #       memory: {
    #         # One of:
    #         agent_core_memory_configuration: {
    #           arn: "MemoryArn", # required
    #           actor_id: "String",
    #           messages_count: 1,
    #           retrieval_config: {
    #             "String" => {
    #               top_k: 1,
    #               relevance_score: 1.0,
    #               strategy_id: "String"
    #             }
    #           }
    #         },
    #         managed_memory_configuration: {
    #           arn: "MemoryArn",
    #           strategies: ["SEMANTIC" # One of: ["SEMANTIC", "SUMMARIZATION", "USER_PREFERENCE", "EPISODIC"]],
    #           event_expiry_duration: 1,
    #           encryption_key_arn: "KmsKeyArn"
    #         },
    #         disabled: {
    #         }
    #       },
    #       hooks: [{
    #         # One of:
    #         before_invocation: {
    #           name: "HarnessHookName", # required
    #           target: { # required
    #             # One of:
    #             lambda: {
    #               arn: "HarnessLambdaFunctionArn", # required
    #               timeout_seconds: 1,
    #               failure_mode: "allow" # One of: ["allow", "deny"]
    #             },
    #             sns: {
    #               arn: "HarnessSnsTopicArn", # required
    #             },
    #             event_bridge: {
    #               arn: "HarnessEventBridgeBusArn", # required
    #             }
    #           }
    #         },
    #         after_invocation: {
    #           name: "HarnessHookName", # required
    #           target: { # required
    #             # One of:
    #             lambda: {
    #               arn: "HarnessLambdaFunctionArn", # required
    #               timeout_seconds: 1,
    #               failure_mode: "allow" # One of: ["allow", "deny"]
    #             },
    #             sns: {
    #               arn: "HarnessSnsTopicArn", # required
    #             },
    #             event_bridge: {
    #               arn: "HarnessEventBridgeBusArn", # required
    #             }
    #           }
    #         },
    #         before_tool_call: {
    #           name: "HarnessHookName", # required
    #           target: { # required
    #             # One of:
    #             lambda: {
    #               arn: "HarnessLambdaFunctionArn", # required
    #               timeout_seconds: 1,
    #               failure_mode: "allow" # One of: ["allow", "deny"]
    #             },
    #             sns: {
    #               arn: "HarnessSnsTopicArn", # required
    #             },
    #             event_bridge: {
    #               arn: "HarnessEventBridgeBusArn", # required
    #             }
    #           }
    #         },
    #         after_tool_call: {
    #           name: "HarnessHookName", # required
    #           target: { # required
    #             # One of:
    #             lambda: {
    #               arn: "HarnessLambdaFunctionArn", # required
    #               timeout_seconds: 1,
    #               failure_mode: "allow" # One of: ["allow", "deny"]
    #             },
    #             sns: {
    #               arn: "HarnessSnsTopicArn", # required
    #             },
    #             event_bridge: {
    #               arn: "HarnessEventBridgeBusArn", # required
    #             }
    #           }
    #         }
    #       }],
    #       max_iterations: 1,
    #       max_tokens: 1,
    #       timeout_seconds: 1,
    #       failure_reason: "String"
    #     }
    #   }
    # @return [Types::CreateHarnessResponse]
    def create_harness(params = {}, options = {})
      request = build_request(:create_harness, params)
      request.send_request(options)
    end

    # <p>Operation to create a harness endpoint.</p>
    # @param [Hash, Types::CreateHarnessEndpointRequest] params
    # @option params [String] :harness_id
    #   <p>The ID of the harness to create an endpoint for.</p>
    # @option params [String] :endpoint_name
    #   <p>The name of the endpoint. Must start with a letter and contain only alphanumeric characters and underscores.</p>
    # @option params [String] :target_version
    #   <p>The harness version that the endpoint points to and serves invocations from.</p>
    # @option params [String] :description
    #   <p>A description of the endpoint.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure idempotency of the request.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Tags to apply to the endpoint resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     harness_id: "HarnessId", # required
    #     endpoint_name: "HarnessEndpointName", # required
    #     target_version: "HarnessVersion",
    #     description: "HarnessEndpointDescription",
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_harness_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     endpoint: { # required
    #       harness_id: "HarnessId", # required
    #       harness_name: "HarnessName", # required
    #       endpoint_name: "HarnessEndpointName", # required
    #       arn: "HarnessEndpointArn", # required
    #       status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "READY", "DELETING", "DELETE_FAILED"], # required
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       live_version: "HarnessVersion",
    #       target_version: "HarnessVersion",
    #       description: "HarnessEndpointDescription",
    #       failure_reason: "String"
    #     }
    #   }
    # @return [Types::CreateHarnessEndpointResponse]
    def create_harness_endpoint(params = {}, options = {})
      request = build_request(:create_harness_endpoint, params)
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
    # @option params [Array<Types::IndexedKey>] :indexed_keys
    #   <p>Metadata keys to index for filtering. Once declared, indexed keys cannot be removed.</p>
    # @option params [Array<Types::NamespaceKeyEntry>] :namespace_keys
    #   <p>The namespace variable key definitions with optional validation rules. Use these <code>namespaceKeys</code> in <code>namespaceTemplates</code> to control namespace hierarchy.</p>
    # @option params [Types::StreamDeliveryResources] :stream_delivery_resources
    #   <p>Configuration for streaming memory record data to external resources.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A map of tag keys and values to assign to an AgentCore Memory. Tags enable you to categorize your resources in different ways, for example, by purpose, owner, or environment.</p>
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
    #         namespaces: ["Namespace"],
    #         namespace_templates: ["Namespace"],
    #         memory_record_schema: {
    #           metadata_schema: [
    #             {
    #               key: "MetadataKey", # required
    #               type: "STRING" # One of: ["STRING", "STRINGLIST", "NUMBER"],
    #               extraction_type: "LLM_INFERRED" # One of: ["LLM_INFERRED", "STRICTLY_CONSISTENT"],
    #               extraction_config: {
    #                 # One of:
    #                 llm_extraction_config: {
    #                   llm_extraction_instruction: "LlmExtractionInstruction",
    #                   definition: "Definition", # required
    #                   validation: {
    #                     # One of:
    #                     string_validation: {
    #                       allowed_values: ["AllowedStringValue"], # required
    #                     },
    #                     string_list_validation: {
    #                       allowed_values: ["AllowedStringListValue"],
    #                       max_items: 1
    #                     },
    #                     number_validation: {
    #                       min_value: 1.0,
    #                       max_value: 1.0
    #                     }
    #                   }
    #                 }
    #               }
    #             }
    #           ]
    #         },
    #         record_expiry_specification: {
    #           # One of:
    #           record_expiry_duration_days: 1,
    #           action: "REMOVE" # One of: ["REMOVE"]
    #         }
    #       },
    #       summary_memory_strategy: {
    #         name: "Name", # required
    #         description: "Description",
    #         namespaces: ["Namespace"],
    #         namespace_templates: ["Namespace"],
    #         memory_record_schema: {
    #           metadata_schema: [
    #             {
    #               key: "MetadataKey", # required
    #               type: "STRING" # One of: ["STRING", "STRINGLIST", "NUMBER"],
    #               extraction_type: "LLM_INFERRED" # One of: ["LLM_INFERRED", "STRICTLY_CONSISTENT"],
    #               extraction_config: {
    #                 # One of:
    #                 llm_extraction_config: {
    #                   llm_extraction_instruction: "LlmExtractionInstruction",
    #                   definition: "Definition", # required
    #                   validation: {
    #                     # One of:
    #                     string_validation: {
    #                       allowed_values: ["AllowedStringValue"], # required
    #                     },
    #                     string_list_validation: {
    #                       allowed_values: ["AllowedStringListValue"],
    #                       max_items: 1
    #                     },
    #                     number_validation: {
    #                       min_value: 1.0,
    #                       max_value: 1.0
    #                     }
    #                   }
    #                 }
    #               }
    #             }
    #           ]
    #         },
    #         record_expiry_specification: {
    #           # One of:
    #           record_expiry_duration_days: 1,
    #           action: "REMOVE" # One of: ["REMOVE"]
    #         }
    #       },
    #       user_preference_memory_strategy: {
    #         name: "Name", # required
    #         description: "Description",
    #         namespaces: ["Namespace"],
    #         namespace_templates: ["Namespace"],
    #         memory_record_schema: {
    #           metadata_schema: [
    #             {
    #               key: "MetadataKey", # required
    #               type: "STRING" # One of: ["STRING", "STRINGLIST", "NUMBER"],
    #               extraction_type: "LLM_INFERRED" # One of: ["LLM_INFERRED", "STRICTLY_CONSISTENT"],
    #               extraction_config: {
    #                 # One of:
    #                 llm_extraction_config: {
    #                   llm_extraction_instruction: "LlmExtractionInstruction",
    #                   definition: "Definition", # required
    #                   validation: {
    #                     # One of:
    #                     string_validation: {
    #                       allowed_values: ["AllowedStringValue"], # required
    #                     },
    #                     string_list_validation: {
    #                       allowed_values: ["AllowedStringListValue"],
    #                       max_items: 1
    #                     },
    #                     number_validation: {
    #                       min_value: 1.0,
    #                       max_value: 1.0
    #                     }
    #                   }
    #                 }
    #               }
    #             }
    #           ]
    #         },
    #         record_expiry_specification: {
    #           # One of:
    #           record_expiry_duration_days: 1,
    #           action: "REMOVE" # One of: ["REMOVE"]
    #         }
    #       },
    #       custom_memory_strategy: {
    #         name: "Name", # required
    #         description: "Description",
    #         namespaces: ["Namespace"],
    #         namespace_templates: ["Namespace"],
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
    #           },
    #           episodic_override: {
    #             extraction: {
    #               append_to_prompt: "Prompt", # required
    #               model_id: "String", # required
    #             },
    #             consolidation: {
    #               append_to_prompt: "Prompt", # required
    #               model_id: "String", # required
    #             },
    #             reflection: {
    #               append_to_prompt: "Prompt", # required
    #               model_id: "String", # required
    #               namespaces: ["Namespace"],
    #               namespace_templates: ["Namespace"],
    #               memory_record_schema: {
    #                 metadata_schema: [
    #                   {
    #                     key: "MetadataKey", # required
    #                     type: "STRING" # One of: ["STRING", "STRINGLIST", "NUMBER"],
    #                     extraction_type: "LLM_INFERRED" # One of: ["LLM_INFERRED", "STRICTLY_CONSISTENT"],
    #                     extraction_config: {
    #                       # One of:
    #                       llm_extraction_config: {
    #                         llm_extraction_instruction: "LlmExtractionInstruction",
    #                         definition: "Definition", # required
    #                         validation: {
    #                           # One of:
    #                           string_validation: {
    #                             allowed_values: ["AllowedStringValue"], # required
    #                           },
    #                           string_list_validation: {
    #                             allowed_values: ["AllowedStringListValue"],
    #                             max_items: 1
    #                           },
    #                           number_validation: {
    #                             min_value: 1.0,
    #                             max_value: 1.0
    #                           }
    #                         }
    #                       }
    #                     }
    #                   }
    #                 ]
    #               }
    #             }
    #           },
    #           self_managed_configuration: {
    #             trigger_conditions: [{
    #               # One of:
    #               message_based_trigger: {
    #                 message_count: 1
    #               },
    #               token_based_trigger: {
    #                 token_count: 1
    #               },
    #               time_based_trigger: {
    #                 idle_session_timeout: 1
    #               }
    #             }],
    #             invocation_configuration: { # required
    #               topic_arn: "Arn", # required
    #               payload_delivery_bucket_name: "String", # required
    #             },
    #             historical_context_window_size: 1
    #           }
    #         },
    #         memory_record_schema: {
    #           metadata_schema: [
    #             {
    #               key: "MetadataKey", # required
    #               type: "STRING" # One of: ["STRING", "STRINGLIST", "NUMBER"],
    #               extraction_type: "LLM_INFERRED" # One of: ["LLM_INFERRED", "STRICTLY_CONSISTENT"],
    #               extraction_config: {
    #                 # One of:
    #                 llm_extraction_config: {
    #                   llm_extraction_instruction: "LlmExtractionInstruction",
    #                   definition: "Definition", # required
    #                   validation: {
    #                     # One of:
    #                     string_validation: {
    #                       allowed_values: ["AllowedStringValue"], # required
    #                     },
    #                     string_list_validation: {
    #                       allowed_values: ["AllowedStringListValue"],
    #                       max_items: 1
    #                     },
    #                     number_validation: {
    #                       min_value: 1.0,
    #                       max_value: 1.0
    #                     }
    #                   }
    #                 }
    #               }
    #             }
    #           ]
    #         },
    #         record_expiry_specification: {
    #           # One of:
    #           record_expiry_duration_days: 1,
    #           action: "REMOVE" # One of: ["REMOVE"]
    #         }
    #       },
    #       episodic_memory_strategy: {
    #         name: "Name", # required
    #         description: "Description",
    #         namespaces: ["Namespace"],
    #         namespace_templates: ["Namespace"],
    #         reflection_configuration: {
    #           namespaces: ["Namespace"],
    #           namespace_templates: ["Namespace"],
    #           memory_record_schema: {
    #             metadata_schema: [
    #               {
    #                 key: "MetadataKey", # required
    #                 type: "STRING" # One of: ["STRING", "STRINGLIST", "NUMBER"],
    #                 extraction_type: "LLM_INFERRED" # One of: ["LLM_INFERRED", "STRICTLY_CONSISTENT"],
    #                 extraction_config: {
    #                   # One of:
    #                   llm_extraction_config: {
    #                     llm_extraction_instruction: "LlmExtractionInstruction",
    #                     definition: "Definition", # required
    #                     validation: {
    #                       # One of:
    #                       string_validation: {
    #                         allowed_values: ["AllowedStringValue"], # required
    #                       },
    #                       string_list_validation: {
    #                         allowed_values: ["AllowedStringListValue"],
    #                         max_items: 1
    #                       },
    #                       number_validation: {
    #                         min_value: 1.0,
    #                         max_value: 1.0
    #                       }
    #                     }
    #                   }
    #                 }
    #               }
    #             ]
    #           }
    #         },
    #         memory_record_schema: {
    #           metadata_schema: [
    #             {
    #               key: "MetadataKey", # required
    #               type: "STRING" # One of: ["STRING", "STRINGLIST", "NUMBER"],
    #               extraction_type: "LLM_INFERRED" # One of: ["LLM_INFERRED", "STRICTLY_CONSISTENT"],
    #               extraction_config: {
    #                 # One of:
    #                 llm_extraction_config: {
    #                   llm_extraction_instruction: "LlmExtractionInstruction",
    #                   definition: "Definition", # required
    #                   validation: {
    #                     # One of:
    #                     string_validation: {
    #                       allowed_values: ["AllowedStringValue"], # required
    #                     },
    #                     string_list_validation: {
    #                       allowed_values: ["AllowedStringListValue"],
    #                       max_items: 1
    #                     },
    #                     number_validation: {
    #                       min_value: 1.0,
    #                       max_value: 1.0
    #                     }
    #                   }
    #                 }
    #               }
    #             }
    #           ]
    #         },
    #         record_expiry_specification: {
    #           # One of:
    #           record_expiry_duration_days: 1,
    #           action: "REMOVE" # One of: ["REMOVE"]
    #         }
    #       }
    #     }],
    #     indexed_keys: [
    #       {
    #         key: "MetadataKey", # required
    #         type: "STRING" # One of: ["STRING", "STRINGLIST", "NUMBER"], # required
    #       }
    #     ],
    #     namespace_keys: [
    #       {
    #         key: "NamespaceVariableKey", # required
    #         validation: {
    #           allowed_values: ["NamespaceAllowedValue"],
    #           regex_pattern: "NamespaceRegexPattern"
    #         }
    #       }
    #     ],
    #     stream_delivery_resources: {
    #       resources: [{ # required
    #         # One of:
    #         kinesis: {
    #           data_stream_arn: "Arn", # required
    #           content_configurations: [ # required
    #             {
    #               type: "MEMORY_RECORDS" # One of: ["MEMORY_RECORDS"], # required
    #               level: "METADATA_ONLY" # One of: ["METADATA_ONLY", "FULL_CONTENT"]
    #             }
    #           ]
    #         }
    #       }]
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
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
    #       status: "CREATING" # One of: ["CREATING", "ACTIVE", "FAILED", "DELETING", "UPDATING"], # required
    #       failure_reason: "String",
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       strategies: [
    #         {
    #           strategy_id: "MemoryStrategyId", # required
    #           name: "Name", # required
    #           description: "Description",
    #           configuration: {
    #             type: "SEMANTIC_OVERRIDE" # One of: ["SEMANTIC_OVERRIDE", "SUMMARY_OVERRIDE", "USER_PREFERENCE_OVERRIDE", "SELF_MANAGED", "EPISODIC_OVERRIDE"],
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
    #                 },
    #                 episodic_extraction_override: {
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
    #                 },
    #                 episodic_consolidation_override: {
    #                   append_to_prompt: "Prompt", # required
    #                   model_id: "String", # required
    #                 }
    #               }
    #             },
    #             reflection: {
    #               # One of:
    #               custom_reflection_configuration: {
    #                 # One of:
    #                 episodic_reflection_override: {
    #                   append_to_prompt: "Prompt", # required
    #                   model_id: "String", # required
    #                   namespaces: ["Namespace"],
    #                   namespace_templates: ["Namespace"],
    #                   memory_record_schema: {
    #                     metadata_schema: [
    #                       {
    #                         key: "MetadataKey", # required
    #                         type: "STRING" # One of: ["STRING", "STRINGLIST", "NUMBER"],
    #                         extraction_type: "LLM_INFERRED" # One of: ["LLM_INFERRED", "STRICTLY_CONSISTENT"],
    #                         extraction_config: {
    #                           # One of:
    #                           llm_extraction_config: {
    #                             llm_extraction_instruction: "LlmExtractionInstruction",
    #                             definition: "Definition", # required
    #                             validation: {
    #                               # One of:
    #                               string_validation: {
    #                                 allowed_values: ["AllowedStringValue"], # required
    #                               },
    #                               string_list_validation: {
    #                                 allowed_values: ["AllowedStringListValue"],
    #                                 max_items: 1
    #                               },
    #                               number_validation: {
    #                                 min_value: 1.0,
    #                                 max_value: 1.0
    #                               }
    #                             }
    #                           }
    #                         }
    #                       }
    #                     ]
    #                   }
    #                 }
    #               },
    #               episodic_reflection_configuration: {
    #                 namespaces: ["Namespace"],
    #                 namespace_templates: ["Namespace"],
    #                 memory_record_schema: {
    #                   metadata_schema: [
    #                     {
    #                       key: "MetadataKey", # required
    #                       type: "STRING" # One of: ["STRING", "STRINGLIST", "NUMBER"],
    #                       extraction_type: "LLM_INFERRED" # One of: ["LLM_INFERRED", "STRICTLY_CONSISTENT"],
    #                       extraction_config: {
    #                         # One of:
    #                         llm_extraction_config: {
    #                           llm_extraction_instruction: "LlmExtractionInstruction",
    #                           definition: "Definition", # required
    #                           validation: {
    #                             # One of:
    #                             string_validation: {
    #                               allowed_values: ["AllowedStringValue"], # required
    #                             },
    #                             string_list_validation: {
    #                               allowed_values: ["AllowedStringListValue"],
    #                               max_items: 1
    #                             },
    #                             number_validation: {
    #                               min_value: 1.0,
    #                               max_value: 1.0
    #                             }
    #                           }
    #                         }
    #                       }
    #                     }
    #                   ]
    #                 }
    #               }
    #             },
    #             self_managed_configuration: {
    #               trigger_conditions: [{ # required
    #                 # One of:
    #                 message_based_trigger: {
    #                   message_count: 1
    #                 },
    #                 token_based_trigger: {
    #                   token_count: 1
    #                 },
    #                 time_based_trigger: {
    #                   idle_session_timeout: 1
    #                 }
    #               }],
    #               invocation_configuration: { # required
    #                 topic_arn: "Arn", # required
    #                 payload_delivery_bucket_name: "String", # required
    #               },
    #               historical_context_window_size: 1, # required
    #             }
    #           },
    #           type: "SEMANTIC" # One of: ["SEMANTIC", "SUMMARIZATION", "USER_PREFERENCE", "CUSTOM", "EPISODIC"], # required
    #           namespaces: ["Namespace"], # required
    #           namespace_templates: ["Namespace"], # required
    #           created_at: Time.now,
    #           updated_at: Time.now,
    #           status: "CREATING" # One of: ["CREATING", "ACTIVE", "DELETING", "FAILED"],
    #           memory_record_schema: {
    #             metadata_schema: [
    #               {
    #                 key: "MetadataKey", # required
    #                 type: "STRING" # One of: ["STRING", "STRINGLIST", "NUMBER"],
    #                 extraction_type: "LLM_INFERRED" # One of: ["LLM_INFERRED", "STRICTLY_CONSISTENT"],
    #                 extraction_config: {
    #                   # One of:
    #                   llm_extraction_config: {
    #                     llm_extraction_instruction: "LlmExtractionInstruction",
    #                     definition: "Definition", # required
    #                     validation: {
    #                       # One of:
    #                       string_validation: {
    #                         allowed_values: ["AllowedStringValue"], # required
    #                       },
    #                       string_list_validation: {
    #                         allowed_values: ["AllowedStringListValue"],
    #                         max_items: 1
    #                       },
    #                       number_validation: {
    #                         min_value: 1.0,
    #                         max_value: 1.0
    #                       }
    #                     }
    #                   }
    #                 }
    #               }
    #             ]
    #           },
    #           record_expiry_duration_days: 1
    #         }
    #       ],
    #       indexed_keys: [
    #         {
    #           key: "MetadataKey", # required
    #           type: "STRING" # One of: ["STRING", "STRINGLIST", "NUMBER"], # required
    #         }
    #       ],
    #       namespace_keys: [
    #         {
    #           key: "NamespaceVariableKey", # required
    #           validation: {
    #             allowed_values: ["NamespaceAllowedValue"],
    #             regex_pattern: "NamespaceRegexPattern"
    #           }
    #         }
    #       ],
    #       stream_delivery_resources: {
    #         resources: [{ # required
    #           # One of:
    #           kinesis: {
    #             data_stream_arn: "Arn", # required
    #             content_configurations: [ # required
    #               {
    #                 type: "MEMORY_RECORDS" # One of: ["MEMORY_RECORDS"], # required
    #                 level: "METADATA_ONLY" # One of: ["METADATA_ONLY", "FULL_CONTENT"]
    #               }
    #             ]
    #           }
    #         }]
    #       },
    #       managed_by_resource_arn: "Arn"
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
    # @option params [Hash<String, String>] :tags
    #   <p>A map of tag keys and values to assign to the OAuth2 credential provider. Tags enable you to categorize your resources in different ways, for example, by purpose, owner, or environment.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "CredentialProviderName", # required
    #     credential_provider_vendor: "GoogleOauth2" # One of: ["GoogleOauth2", "GithubOauth2", "SlackOauth2", "SalesforceOauth2", "MicrosoftOauth2", "CustomOauth2", "AtlassianOauth2", "LinkedinOauth2", "XOauth2", "OktaOauth2", "OneLoginOauth2", "PingOneOauth2", "FacebookOauth2", "YandexOauth2", "RedditOauth2", "ZoomOauth2", "TwitchOauth2", "SpotifyOauth2", "DropboxOauth2", "NotionOauth2", "HubspotOauth2", "CyberArkOauth2", "FusionAuthOauth2", "Auth0Oauth2", "CognitoOauth2"], # required
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
    #             response_types: ["ResponseType"],
    #             token_endpoint_auth_methods: ["TokenAuthMethod"]
    #           }
    #         },
    #         client_id: "DefaultClientIdType",
    #         client_secret: "DefaultClientSecretType",
    #         client_secret_config: {
    #           secret_id: "SecretIdType", # required
    #           json_key: "SecretJsonKeyType", # required
    #         },
    #         client_secret_source: "MANAGED" # One of: ["MANAGED", "EXTERNAL"],
    #         on_behalf_of_token_exchange_config: {
    #           grant_type: "TOKEN_EXCHANGE" # One of: ["TOKEN_EXCHANGE", "JWT_AUTHORIZATION_GRANT"], # required
    #           token_exchange_grant_type_config: {
    #             actor_token_content: "NONE" # One of: ["NONE", "M2M", "AWS_IAM_ID_TOKEN_JWT"], # required
    #             actor_token_scopes: ["ScopeType"]
    #           }
    #         },
    #         client_authentication_method: "CLIENT_SECRET_BASIC" # One of: ["CLIENT_SECRET_BASIC", "CLIENT_SECRET_POST", "AWS_IAM_ID_TOKEN_JWT", "PRIVATE_KEY_JWT"],
    #         private_key_jwt_config: {
    #           private_key_source: {
    #             # One of:
    #             kms_key_source: {
    #               kms_key_arn: "KmsKeyArn", # required
    #             }
    #           },
    #           signing_algorithm: "RS256" # One of: ["RS256", "PS256", "ES256"],
    #           additional_header_claims: {
    #             "AdditionalClaimName" => "AdditionalClaimValue"
    #           },
    #           additional_payload_claims: {
    #             "AdditionalClaimName" => "AdditionalClaimValue"
    #           }
    #         },
    #         private_endpoint: {
    #           # One of:
    #           self_managed_lattice_resource: {
    #             # One of:
    #             resource_configuration_identifier: "ResourceConfigurationIdentifier"
    #           },
    #           managed_vpc_resource: {
    #             vpc_identifier: "VpcIdentifier", # required
    #             subnet_ids: ["SubnetId"], # required
    #             endpoint_ip_address_type: "IPV4" # One of: ["IPV4", "IPV6"], # required
    #             security_group_ids: ["SecurityGroupIdentifier"],
    #             tags: {
    #               "TagKey" => "TagValue"
    #             },
    #             routing_domain: "RoutingDomain"
    #           }
    #         },
    #         private_endpoint_overrides: [
    #           {
    #             domain: "PrivateEndpointOverrideDomain", # required
    #             private_endpoint: { # required
    #               # One of:
    #               self_managed_lattice_resource: {
    #                 # One of:
    #                 resource_configuration_identifier: "ResourceConfigurationIdentifier"
    #               },
    #               managed_vpc_resource: {
    #                 vpc_identifier: "VpcIdentifier", # required
    #                 subnet_ids: ["SubnetId"], # required
    #                 endpoint_ip_address_type: "IPV4" # One of: ["IPV4", "IPV6"], # required
    #                 security_group_ids: ["SecurityGroupIdentifier"],
    #                 tags: {
    #                   "TagKey" => "TagValue"
    #                 },
    #                 routing_domain: "RoutingDomain"
    #               }
    #             }
    #           }
    #         ]
    #       },
    #       google_oauth2_provider_config: {
    #         client_id: "ClientIdType", # required
    #         client_secret: "DefaultClientSecretType",
    #         client_secret_config: {
    #           secret_id: "SecretIdType", # required
    #           json_key: "SecretJsonKeyType", # required
    #         },
    #         client_secret_source: "MANAGED" # One of: ["MANAGED", "EXTERNAL"]
    #       },
    #       github_oauth2_provider_config: {
    #         client_id: "ClientIdType", # required
    #         client_secret: "DefaultClientSecretType",
    #         client_secret_config: {
    #           secret_id: "SecretIdType", # required
    #           json_key: "SecretJsonKeyType", # required
    #         },
    #         client_secret_source: "MANAGED" # One of: ["MANAGED", "EXTERNAL"]
    #       },
    #       slack_oauth2_provider_config: {
    #         client_id: "ClientIdType", # required
    #         client_secret: "DefaultClientSecretType",
    #         client_secret_config: {
    #           secret_id: "SecretIdType", # required
    #           json_key: "SecretJsonKeyType", # required
    #         },
    #         client_secret_source: "MANAGED" # One of: ["MANAGED", "EXTERNAL"]
    #       },
    #       salesforce_oauth2_provider_config: {
    #         client_id: "ClientIdType", # required
    #         client_secret: "DefaultClientSecretType",
    #         client_secret_config: {
    #           secret_id: "SecretIdType", # required
    #           json_key: "SecretJsonKeyType", # required
    #         },
    #         client_secret_source: "MANAGED" # One of: ["MANAGED", "EXTERNAL"]
    #       },
    #       microsoft_oauth2_provider_config: {
    #         client_id: "ClientIdType", # required
    #         client_secret: "DefaultClientSecretType",
    #         client_secret_config: {
    #           secret_id: "SecretIdType", # required
    #           json_key: "SecretJsonKeyType", # required
    #         },
    #         client_secret_source: "MANAGED" # One of: ["MANAGED", "EXTERNAL"],
    #         tenant_id: "TenantIdType"
    #       },
    #       atlassian_oauth2_provider_config: {
    #         client_id: "ClientIdType", # required
    #         client_secret: "DefaultClientSecretType",
    #         client_secret_config: {
    #           secret_id: "SecretIdType", # required
    #           json_key: "SecretJsonKeyType", # required
    #         },
    #         client_secret_source: "MANAGED" # One of: ["MANAGED", "EXTERNAL"]
    #       },
    #       linkedin_oauth2_provider_config: {
    #         client_id: "ClientIdType", # required
    #         client_secret: "DefaultClientSecretType",
    #         client_secret_config: {
    #           secret_id: "SecretIdType", # required
    #           json_key: "SecretJsonKeyType", # required
    #         },
    #         client_secret_source: "MANAGED" # One of: ["MANAGED", "EXTERNAL"]
    #       },
    #       included_oauth2_provider_config: {
    #         client_id: "ClientIdType", # required
    #         client_secret: "DefaultClientSecretType",
    #         client_secret_config: {
    #           secret_id: "SecretIdType", # required
    #           json_key: "SecretJsonKeyType", # required
    #         },
    #         client_secret_source: "MANAGED" # One of: ["MANAGED", "EXTERNAL"],
    #         issuer: "IssuerUrlType",
    #         authorization_endpoint: "AuthorizationEndpointType",
    #         token_endpoint: "TokenEndpointType"
    #       }
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
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
    #     client_secret_json_key: "SecretJsonKeyType",
    #     client_secret_source: "MANAGED" # One of: ["MANAGED", "EXTERNAL"],
    #     name: "CredentialProviderName", # required
    #     credential_provider_arn: "CredentialProviderArnType", # required
    #     callback_url: "String",
    #     oauth2_provider_config_output: {
    #       # One of:
    #       custom_oauth2_provider_config: {
    #         oauth_discovery: { # required
    #           # One of:
    #           discovery_url: "DiscoveryUrlType",
    #           authorization_server_metadata: {
    #             issuer: "IssuerUrlType", # required
    #             authorization_endpoint: "AuthorizationEndpointType", # required
    #             token_endpoint: "TokenEndpointType", # required
    #             response_types: ["ResponseType"],
    #             token_endpoint_auth_methods: ["TokenAuthMethod"]
    #           }
    #         },
    #         client_id: "ClientIdType",
    #         on_behalf_of_token_exchange_config: {
    #           grant_type: "TOKEN_EXCHANGE" # One of: ["TOKEN_EXCHANGE", "JWT_AUTHORIZATION_GRANT"], # required
    #           token_exchange_grant_type_config: {
    #             actor_token_content: "NONE" # One of: ["NONE", "M2M", "AWS_IAM_ID_TOKEN_JWT"], # required
    #             actor_token_scopes: ["ScopeType"]
    #           }
    #         },
    #         client_authentication_method: "CLIENT_SECRET_BASIC" # One of: ["CLIENT_SECRET_BASIC", "CLIENT_SECRET_POST", "AWS_IAM_ID_TOKEN_JWT", "PRIVATE_KEY_JWT"],
    #         private_endpoint: {
    #           # One of:
    #           self_managed_lattice_resource: {
    #             # One of:
    #             resource_configuration_identifier: "ResourceConfigurationIdentifier"
    #           },
    #           managed_vpc_resource: {
    #             vpc_identifier: "VpcIdentifier", # required
    #             subnet_ids: ["SubnetId"], # required
    #             endpoint_ip_address_type: "IPV4" # One of: ["IPV4", "IPV6"], # required
    #             security_group_ids: ["SecurityGroupIdentifier"],
    #             tags: {
    #               "TagKey" => "TagValue"
    #             },
    #             routing_domain: "RoutingDomain"
    #           }
    #         },
    #         private_endpoint_overrides: [
    #           {
    #             domain: "PrivateEndpointOverrideDomain", # required
    #             private_endpoint: { # required
    #               # One of:
    #               self_managed_lattice_resource: {
    #                 # One of:
    #                 resource_configuration_identifier: "ResourceConfigurationIdentifier"
    #               },
    #               managed_vpc_resource: {
    #                 vpc_identifier: "VpcIdentifier", # required
    #                 subnet_ids: ["SubnetId"], # required
    #                 endpoint_ip_address_type: "IPV4" # One of: ["IPV4", "IPV6"], # required
    #                 security_group_ids: ["SecurityGroupIdentifier"],
    #                 tags: {
    #                   "TagKey" => "TagValue"
    #                 },
    #                 routing_domain: "RoutingDomain"
    #               }
    #             }
    #           }
    #         ],
    #         private_key_jwt_config: {
    #           private_key_source: {
    #             # One of:
    #             kms_key_source: {
    #               kms_key_arn: "KmsKeyArn", # required
    #             }
    #           },
    #           signing_algorithm: "RS256" # One of: ["RS256", "PS256", "ES256"],
    #           additional_header_claims: {
    #             "AdditionalClaimName" => "AdditionalClaimValue"
    #           },
    #           additional_payload_claims: {
    #             "AdditionalClaimName" => "AdditionalClaimValue"
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
    #             response_types: ["ResponseType"],
    #             token_endpoint_auth_methods: ["TokenAuthMethod"]
    #           }
    #         },
    #         client_id: "ClientIdType"
    #       },
    #       github_oauth2_provider_config: {
    #         oauth_discovery: { # required
    #           # One of:
    #           discovery_url: "DiscoveryUrlType",
    #           authorization_server_metadata: {
    #             issuer: "IssuerUrlType", # required
    #             authorization_endpoint: "AuthorizationEndpointType", # required
    #             token_endpoint: "TokenEndpointType", # required
    #             response_types: ["ResponseType"],
    #             token_endpoint_auth_methods: ["TokenAuthMethod"]
    #           }
    #         },
    #         client_id: "ClientIdType"
    #       },
    #       slack_oauth2_provider_config: {
    #         oauth_discovery: { # required
    #           # One of:
    #           discovery_url: "DiscoveryUrlType",
    #           authorization_server_metadata: {
    #             issuer: "IssuerUrlType", # required
    #             authorization_endpoint: "AuthorizationEndpointType", # required
    #             token_endpoint: "TokenEndpointType", # required
    #             response_types: ["ResponseType"],
    #             token_endpoint_auth_methods: ["TokenAuthMethod"]
    #           }
    #         },
    #         client_id: "ClientIdType"
    #       },
    #       salesforce_oauth2_provider_config: {
    #         oauth_discovery: { # required
    #           # One of:
    #           discovery_url: "DiscoveryUrlType",
    #           authorization_server_metadata: {
    #             issuer: "IssuerUrlType", # required
    #             authorization_endpoint: "AuthorizationEndpointType", # required
    #             token_endpoint: "TokenEndpointType", # required
    #             response_types: ["ResponseType"],
    #             token_endpoint_auth_methods: ["TokenAuthMethod"]
    #           }
    #         },
    #         client_id: "ClientIdType"
    #       },
    #       microsoft_oauth2_provider_config: {
    #         oauth_discovery: { # required
    #           # One of:
    #           discovery_url: "DiscoveryUrlType",
    #           authorization_server_metadata: {
    #             issuer: "IssuerUrlType", # required
    #             authorization_endpoint: "AuthorizationEndpointType", # required
    #             token_endpoint: "TokenEndpointType", # required
    #             response_types: ["ResponseType"],
    #             token_endpoint_auth_methods: ["TokenAuthMethod"]
    #           }
    #         },
    #         client_id: "ClientIdType"
    #       },
    #       atlassian_oauth2_provider_config: {
    #         oauth_discovery: { # required
    #           # One of:
    #           discovery_url: "DiscoveryUrlType",
    #           authorization_server_metadata: {
    #             issuer: "IssuerUrlType", # required
    #             authorization_endpoint: "AuthorizationEndpointType", # required
    #             token_endpoint: "TokenEndpointType", # required
    #             response_types: ["ResponseType"],
    #             token_endpoint_auth_methods: ["TokenAuthMethod"]
    #           }
    #         },
    #         client_id: "ClientIdType"
    #       },
    #       linkedin_oauth2_provider_config: {
    #         oauth_discovery: { # required
    #           # One of:
    #           discovery_url: "DiscoveryUrlType",
    #           authorization_server_metadata: {
    #             issuer: "IssuerUrlType", # required
    #             authorization_endpoint: "AuthorizationEndpointType", # required
    #             token_endpoint: "TokenEndpointType", # required
    #             response_types: ["ResponseType"],
    #             token_endpoint_auth_methods: ["TokenAuthMethod"]
    #           }
    #         },
    #         client_id: "ClientIdType"
    #       },
    #       included_oauth2_provider_config: {
    #         oauth_discovery: { # required
    #           # One of:
    #           discovery_url: "DiscoveryUrlType",
    #           authorization_server_metadata: {
    #             issuer: "IssuerUrlType", # required
    #             authorization_endpoint: "AuthorizationEndpointType", # required
    #             token_endpoint: "TokenEndpointType", # required
    #             response_types: ["ResponseType"],
    #             token_endpoint_auth_methods: ["TokenAuthMethod"]
    #           }
    #         },
    #         client_id: "ClientIdType"
    #       }
    #     },
    #     status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "READY", "DELETING", "DELETE_FAILED"]
    #   }
    # @return [Types::CreateOauth2CredentialProviderResponse]
    def create_oauth2_credential_provider(params = {}, options = {})
      request = build_request(:create_oauth2_credential_provider, params)
      request.send_request(options)
    end

    # <p> Creates an online evaluation configuration for continuous monitoring of agent performance. Online evaluation automatically samples live traffic from CloudWatch logs at specified rates and applies evaluators to assess agent quality in production. </p>
    # @param [Hash, Types::CreateOnlineEvaluationConfigRequest] params
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If you don't specify this field, a value is randomly generated for you. If this token matches a previous request, the service ignores the request, but doesn't return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    # @option params [String] :online_evaluation_config_name
    #   <p> The name of the online evaluation configuration. Must be unique within your account. </p>
    # @option params [String] :description
    #   <p> The description of the online evaluation configuration that explains its monitoring purpose and scope. </p>
    # @option params [Types::Rule] :rule
    #   <p> The evaluation rule that defines sampling configuration, filters, and session detection settings for the online evaluation. </p>
    # @option params [Types::DataSourceConfig] :data_source_config
    #   <p> The data source configuration that specifies CloudWatch log groups and service names to monitor for agent traces. </p>
    # @option params [Array<Types::EvaluatorReference>] :evaluators
    #   <p> The list of evaluators to apply during online evaluation. Can include both built-in evaluators and custom evaluators created with <code>CreateEvaluator</code>. </p>
    # @option params [Array<Types::Insight>] :insights
    #   <p>The list of insight types to run against agent sessions.</p>
    # @option params [Types::ClusteringConfig] :clustering_config
    #   <p>Configuration for periodic batch evaluation clustering of insight results.</p>
    # @option params [Types::OutputConfig] :output_config
    #   <p> The configuration that specifies where evaluation results should be written for monitoring and analysis. </p>
    # @option params [String] :evaluation_execution_role_arn
    #   <p> The Amazon Resource Name (ARN) of the IAM role that grants permissions to read from CloudWatch logs, write evaluation results, and invoke Amazon Bedrock models for evaluation. If the configuration references evaluators encrypted with a customer managed KMS key, this role must also have <code>kms:Decrypt</code> permission on the KMS key. The service validates this permission at configuration creation time. For more information, see <a href="https://docs.aws.amazon.com/bedrock-agentcore/latest/devguide/evaluations-encryption.html">Encryption at rest for AgentCore Evaluations</a>. </p>
    # @option params [Boolean] :enable_on_create
    #   <p> Whether to enable the online evaluation configuration immediately upon creation. If true, evaluation begins automatically. </p>
    # @option params [Hash<String, String>] :tags
    #   <p>A map of tag keys and values to assign to an AgentCore Online Evaluation Config. Tags enable you to categorize your resources in different ways, for example, by purpose, owner, or environment.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken",
    #     online_evaluation_config_name: "EvaluationConfigName", # required
    #     description: "EvaluationConfigDescription",
    #     rule: { # required
    #       sampling_config: { # required
    #         sampling_percentage: 1.0, # required
    #       },
    #       filters: [
    #         {
    #           key: "String", # required
    #           operator: "Equals" # One of: ["Equals", "NotEquals", "GreaterThan", "LessThan", "GreaterThanOrEqual", "LessThanOrEqual", "Contains", "NotContains"], # required
    #           value: { # required
    #             # One of:
    #             string_value: "String",
    #             double_value: 1.0,
    #             boolean_value: false
    #           }
    #         }
    #       ],
    #       session_config: {
    #         session_timeout_minutes: 1, # required
    #       }
    #     },
    #     data_source_config: { # required
    #       # One of:
    #       cloud_watch_logs: {
    #         log_group_names: ["LogGroupName"],
    #         log_group_name_prefixes: ["LogGroupNamePrefix"],
    #         service_names: ["ServiceName"], # required
    #       }
    #     },
    #     evaluators: [{
    #       # One of:
    #       evaluator_id: "EvaluatorId"
    #     }],
    #     insights: [
    #       {
    #         insight_id: "InsightId", # required
    #       }
    #     ],
    #     clustering_config: {
    #       frequencies: ["DAILY" # One of: ["DAILY", "WEEKLY", "MONTHLY"]], # required
    #     },
    #     output_config: {
    #       cloud_watch_config: { # required
    #         log_group_name: "OptionalLogGroupName",
    #         metrics_namespace: "MetricsNamespace",
    #         result_destination: "DEDICATED_LOG_GROUP" # One of: ["DEDICATED_LOG_GROUP", "SOURCE_LOG_GROUP"]
    #       }
    #     },
    #     evaluation_execution_role_arn: "RoleArn", # required
    #     enable_on_create: false, # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_online_evaluation_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     online_evaluation_config_arn: "OnlineEvaluationConfigArn", # required
    #     online_evaluation_config_id: "OnlineEvaluationConfigId", # required
    #     created_at: Time.now, # required
    #     output_config: {
    #       cloud_watch_config: { # required
    #         log_group_name: "OptionalLogGroupName",
    #         metrics_namespace: "MetricsNamespace",
    #         result_destination: "DEDICATED_LOG_GROUP" # One of: ["DEDICATED_LOG_GROUP", "SOURCE_LOG_GROUP"]
    #       }
    #     },
    #     status: "ACTIVE" # One of: ["ACTIVE", "CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "DELETING", "ERROR"], # required
    #     execution_status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #     failure_reason: "String"
    #   }
    # @return [Types::CreateOnlineEvaluationConfigResponse]
    def create_online_evaluation_config(params = {}, options = {})
      request = build_request(:create_online_evaluation_config, params)
      request.send_request(options)
    end

    # <p>Creates a new payment connector for a payment manager. A payment connector integrates with a supported payment provider to enable payment processing capabilities.</p>
    # @param [Hash, Types::CreatePaymentConnectorRequest] params
    # @option params [String] :payment_manager_id
    #   <p>The unique identifier of the payment manager to create the connector for.</p>
    # @option params [String] :name
    #   <p>The name of the payment connector.</p>
    # @option params [String] :description
    #   <p>A description of the payment connector.</p>
    # @option params [String] :type
    #   <p>The type of payment connector, which determines the payment provider integration.</p>
    # @option params [Array<Types::CredentialsProviderConfiguration>] :credential_provider_configurations
    #   <p>The credential provider configurations for the payment connector. These configurations specify how the connector authenticates with the payment provider.</p>
    # @option params [String] :provision_mode
    #   <p>The provision mode for creating the payment connector. If you don't specify a value, the default is <code>MANUAL</code>.</p> <ul> <li> <p> <code>MANUAL</code> - You provide the credential provider configurations directly.</p> </li> <li> <p> <code>QUICK_CREATE</code> - The service orchestrates OAuth consent and provisions the credential provider for you.</p> </li> </ul>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If you don't specify this field, a value is randomly generated for you. If this token matches a previous request, the service ignores the request, but doesn't return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     payment_manager_id: "PaymentManagerId", # required
    #     name: "PaymentConnectorName", # required
    #     description: "PaymentsDescription",
    #     type: "CoinbaseCDP" # One of: ["CoinbaseCDP", "StripePrivy"], # required
    #     credential_provider_configurations: [{ # required
    #       # One of:
    #       coinbase_cdp: {
    #         credential_provider_arn: "PaymentCredentialProviderArn", # required
    #       },
    #       stripe_privy: {
    #         credential_provider_arn: "PaymentCredentialProviderArn", # required
    #       }
    #     }],
    #     provision_mode: "MANUAL" # One of: ["MANUAL", "QUICK_CREATE"],
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_payment_connector(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     payment_connector_id: "PaymentConnectorId", # required
    #     payment_manager_id: "PaymentManagerId", # required
    #     name: "PaymentConnectorName", # required
    #     type: "CoinbaseCDP" # One of: ["CoinbaseCDP", "StripePrivy"], # required
    #     credential_provider_configurations: [{ # required
    #       # One of:
    #       coinbase_cdp: {
    #         credential_provider_arn: "PaymentCredentialProviderArn", # required
    #       },
    #       stripe_privy: {
    #         credential_provider_arn: "PaymentCredentialProviderArn", # required
    #       }
    #     }],
    #     created_at: Time.now, # required
    #     status: "CREATING" # One of: ["CREATING", "UPDATING", "DELETING", "READY", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED", "AWS_MARKETPLACE_SUBSCRIPTION_REQUIRED", "PENDING_AUTHENTICATION", "PROVISIONING", "AUTHENTICATION_EXPIRED", "AUTHENTICATION_FAILED"], # required
    #     authorization_url: "PaymentConnectorAuthorizationUrl"
    #   }
    # @return [Types::CreatePaymentConnectorResponse]
    def create_payment_connector(params = {}, options = {})
      request = build_request(:create_payment_connector, params)
      request.send_request(options)
    end

    # <p>Creates a new payment credential provider for storing authentication credentials used by payment connectors to communicate with external payment providers.</p>
    # @param [Hash, Types::CreatePaymentCredentialProviderRequest] params
    # @option params [String] :name
    #   <p>Unique name for the payment credential provider.</p>
    # @option params [String] :credential_provider_vendor
    #   <p>The vendor type for the payment credential provider (e.g., CoinbaseCDP, StripePrivy).</p>
    # @option params [Types::PaymentProviderConfigurationInput] :provider_configuration_input
    #   <p>Configuration specific to the vendor, including API credentials.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Optional tags for resource organization.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "CredentialProviderName", # required
    #     credential_provider_vendor: "CoinbaseCDP" # One of: ["CoinbaseCDP", "StripePrivy"], # required
    #     provider_configuration_input: { # required
    #       # One of:
    #       coinbase_cdp_configuration: {
    #         api_key_id: "CoinbaseCdpApiKeyIdType", # required
    #         api_key_secret: "DefaultCoinbaseCdpApiKeySecretType",
    #         api_key_secret_source: "MANAGED" # One of: ["MANAGED", "EXTERNAL"],
    #         api_key_secret_config: {
    #           secret_id: "SecretIdType", # required
    #           json_key: "SecretJsonKeyType", # required
    #         },
    #         wallet_secret: "DefaultCoinbaseCdpWalletSecretType",
    #         wallet_secret_source: "MANAGED" # One of: ["MANAGED", "EXTERNAL"],
    #         wallet_secret_config: {
    #           secret_id: "SecretIdType", # required
    #           json_key: "SecretJsonKeyType", # required
    #         }
    #       },
    #       stripe_privy_configuration: {
    #         app_id: "StripePrivyAppIdType", # required
    #         app_secret: "DefaultStripePrivyAppSecretType",
    #         app_secret_source: "MANAGED" # One of: ["MANAGED", "EXTERNAL"],
    #         app_secret_config: {
    #           secret_id: "SecretIdType", # required
    #           json_key: "SecretJsonKeyType", # required
    #         },
    #         authorization_private_key: "DefaultStripePrivyAuthorizationPrivateKeyType",
    #         authorization_private_key_source: "MANAGED" # One of: ["MANAGED", "EXTERNAL"],
    #         authorization_private_key_config: {
    #           secret_id: "SecretIdType", # required
    #           json_key: "SecretJsonKeyType", # required
    #         },
    #         authorization_id: "StripePrivyAuthorizationIdType", # required
    #       }
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_payment_credential_provider(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "CredentialProviderName", # required
    #     credential_provider_vendor: "CoinbaseCDP" # One of: ["CoinbaseCDP", "StripePrivy"], # required
    #     credential_provider_arn: "PaymentCredentialProviderArnType", # required
    #     provider_configuration_output: { # required
    #       # One of:
    #       coinbase_cdp_configuration: {
    #         api_key_id: "CoinbaseCdpApiKeyIdType", # required
    #         api_key_secret_arn: { # required
    #           secret_arn: "SecretArn", # required
    #         },
    #         api_key_secret_json_key: "SecretJsonKeyType",
    #         api_key_secret_source: "MANAGED" # One of: ["MANAGED", "EXTERNAL"],
    #         wallet_secret_arn: { # required
    #           secret_arn: "SecretArn", # required
    #         },
    #         wallet_secret_json_key: "SecretJsonKeyType",
    #         wallet_secret_source: "MANAGED" # One of: ["MANAGED", "EXTERNAL"]
    #       },
    #       stripe_privy_configuration: {
    #         app_id: "StripePrivyAppIdType", # required
    #         app_secret_arn: { # required
    #           secret_arn: "SecretArn", # required
    #         },
    #         app_secret_json_key: "SecretJsonKeyType",
    #         app_secret_source: "MANAGED" # One of: ["MANAGED", "EXTERNAL"],
    #         authorization_private_key_arn: { # required
    #           secret_arn: "SecretArn", # required
    #         },
    #         authorization_private_key_json_key: "SecretJsonKeyType",
    #         authorization_private_key_source: "MANAGED" # One of: ["MANAGED", "EXTERNAL"],
    #         authorization_id: "StripePrivyAuthorizationIdType", # required
    #       }
    #     }
    #   }
    # @return [Types::CreatePaymentCredentialProviderResponse]
    def create_payment_credential_provider(params = {}, options = {})
      request = build_request(:create_payment_credential_provider, params)
      request.send_request(options)
    end

    # <p>Creates a new payment manager in your Amazon Web Services account. A payment manager serves as the top-level resource for managing payment processing capabilities, including payment connectors that integrate with supported payment providers.</p> <p>If you specify <code>CUSTOM_JWT</code> as the <code>authorizerType</code>, you must provide an <code>authorizerConfiguration</code>.</p>
    # @param [Hash, Types::CreatePaymentManagerRequest] params
    # @option params [String] :name
    #   <p>The name of the payment manager.</p>
    # @option params [String] :description
    #   <p>A description of the payment manager.</p>
    # @option params [String] :authorizer_type
    #   <p>The type of authorizer to use for the payment manager.</p> <ul> <li> <p> <code>CUSTOM_JWT</code> - Authorize with a bearer token.</p> </li> <li> <p> <code>AWS_IAM</code> - Authorize with your Amazon Web Services IAM credentials.</p> </li> </ul>
    # @option params [Types::AuthorizerConfiguration] :authorizer_configuration
    #   <p>The authorizer configuration for the payment manager.</p>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that the payment manager assumes to access resources on your behalf.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If you don't specify this field, a value is randomly generated for you. If this token matches a previous request, the service ignores the request, but doesn't return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A map of tag keys and values to assign to the payment manager.</p>
    # @option params [String] :kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the customer managed KMS key to use for encrypting sensitive payment manager data at rest. If you don't specify a key, the data is encrypted with an Amazon Web Services owned key.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "PaymentManagerName", # required
    #     description: "PaymentsDescription",
    #     authorizer_type: "CUSTOM_JWT" # One of: ["CUSTOM_JWT", "AWS_IAM"], # required
    #     authorizer_configuration: {
    #       # One of:
    #       custom_jwt_authorizer: {
    #         discovery_url: "DiscoveryUrl", # required
    #         allowed_audience: ["AllowedAudience"],
    #         allowed_clients: ["AllowedClient"],
    #         allowed_scopes: ["AllowedScopeType"],
    #         advertised_scope_mapping: {
    #           "AllowedScopeType" => "AllowedScopeType"
    #         },
    #         custom_claims: [
    #           {
    #             inbound_token_claim_name: "InboundTokenClaimNameType", # required
    #             inbound_token_claim_value_type: "STRING" # One of: ["STRING", "STRING_ARRAY"], # required
    #             authorizing_claim_match_value: { # required
    #               claim_match_value: { # required
    #                 # One of:
    #                 match_value_string: "MatchValueString",
    #                 match_value_string_list: ["MatchValueString"]
    #               },
    #               claim_match_operator: "EQUALS" # One of: ["EQUALS", "CONTAINS", "CONTAINS_ANY"], # required
    #             }
    #           }
    #         ],
    #         private_endpoint: {
    #           # One of:
    #           self_managed_lattice_resource: {
    #             # One of:
    #             resource_configuration_identifier: "ResourceConfigurationIdentifier"
    #           },
    #           managed_vpc_resource: {
    #             vpc_identifier: "VpcIdentifier", # required
    #             subnet_ids: ["SubnetId"], # required
    #             endpoint_ip_address_type: "IPV4" # One of: ["IPV4", "IPV6"], # required
    #             security_group_ids: ["SecurityGroupIdentifier"],
    #             tags: {
    #               "TagKey" => "TagValue"
    #             },
    #             routing_domain: "RoutingDomain"
    #           }
    #         },
    #         private_endpoint_overrides: [
    #           {
    #             domain: "PrivateEndpointOverrideDomain", # required
    #             private_endpoint: { # required
    #               # One of:
    #               self_managed_lattice_resource: {
    #                 # One of:
    #                 resource_configuration_identifier: "ResourceConfigurationIdentifier"
    #               },
    #               managed_vpc_resource: {
    #                 vpc_identifier: "VpcIdentifier", # required
    #                 subnet_ids: ["SubnetId"], # required
    #                 endpoint_ip_address_type: "IPV4" # One of: ["IPV4", "IPV6"], # required
    #                 security_group_ids: ["SecurityGroupIdentifier"],
    #                 tags: {
    #                   "TagKey" => "TagValue"
    #                 },
    #                 routing_domain: "RoutingDomain"
    #               }
    #             }
    #           }
    #         ],
    #         allowed_workload_configuration: {
    #           hosting_environments: [
    #             {
    #               arn: "BedrockAgentcoreResourceArn", # required
    #             }
    #           ],
    #           workload_identities: ["WorkloadIdentityNameType"]
    #         }
    #       }
    #     },
    #     role_arn: "RoleArn", # required
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     kms_key_arn: "KmsKeyArn"
    #   }
    #   options = {}
    #   response = client.create_payment_manager(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     payment_manager_arn: "PaymentManagerArn", # required
    #     payment_manager_id: "PaymentManagerId", # required
    #     name: "PaymentManagerName", # required
    #     authorizer_type: "CUSTOM_JWT" # One of: ["CUSTOM_JWT", "AWS_IAM"], # required
    #     authorizer_configuration: {
    #       # One of:
    #       custom_jwt_authorizer: {
    #         discovery_url: "DiscoveryUrl", # required
    #         allowed_audience: ["AllowedAudience"],
    #         allowed_clients: ["AllowedClient"],
    #         allowed_scopes: ["AllowedScopeType"],
    #         advertised_scope_mapping: {
    #           "AllowedScopeType" => "AllowedScopeType"
    #         },
    #         custom_claims: [
    #           {
    #             inbound_token_claim_name: "InboundTokenClaimNameType", # required
    #             inbound_token_claim_value_type: "STRING" # One of: ["STRING", "STRING_ARRAY"], # required
    #             authorizing_claim_match_value: { # required
    #               claim_match_value: { # required
    #                 # One of:
    #                 match_value_string: "MatchValueString",
    #                 match_value_string_list: ["MatchValueString"]
    #               },
    #               claim_match_operator: "EQUALS" # One of: ["EQUALS", "CONTAINS", "CONTAINS_ANY"], # required
    #             }
    #           }
    #         ],
    #         private_endpoint: {
    #           # One of:
    #           self_managed_lattice_resource: {
    #             # One of:
    #             resource_configuration_identifier: "ResourceConfigurationIdentifier"
    #           },
    #           managed_vpc_resource: {
    #             vpc_identifier: "VpcIdentifier", # required
    #             subnet_ids: ["SubnetId"], # required
    #             endpoint_ip_address_type: "IPV4" # One of: ["IPV4", "IPV6"], # required
    #             security_group_ids: ["SecurityGroupIdentifier"],
    #             tags: {
    #               "TagKey" => "TagValue"
    #             },
    #             routing_domain: "RoutingDomain"
    #           }
    #         },
    #         private_endpoint_overrides: [
    #           {
    #             domain: "PrivateEndpointOverrideDomain", # required
    #             private_endpoint: { # required
    #               # One of:
    #               self_managed_lattice_resource: {
    #                 # One of:
    #                 resource_configuration_identifier: "ResourceConfigurationIdentifier"
    #               },
    #               managed_vpc_resource: {
    #                 vpc_identifier: "VpcIdentifier", # required
    #                 subnet_ids: ["SubnetId"], # required
    #                 endpoint_ip_address_type: "IPV4" # One of: ["IPV4", "IPV6"], # required
    #                 security_group_ids: ["SecurityGroupIdentifier"],
    #                 tags: {
    #                   "TagKey" => "TagValue"
    #                 },
    #                 routing_domain: "RoutingDomain"
    #               }
    #             }
    #           }
    #         ],
    #         allowed_workload_configuration: {
    #           hosting_environments: [
    #             {
    #               arn: "BedrockAgentcoreResourceArn", # required
    #             }
    #           ],
    #           workload_identities: ["WorkloadIdentityNameType"]
    #         }
    #       }
    #     },
    #     role_arn: "RoleArn", # required
    #     workload_identity_details: {
    #       workload_identity_arn: "WorkloadIdentityArn", # required
    #     },
    #     created_at: Time.now, # required
    #     status: "CREATING" # One of: ["CREATING", "UPDATING", "DELETING", "READY", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED"], # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     kms_key_arn: "KmsKeyArn"
    #   }
    # @return [Types::CreatePaymentManagerResponse]
    def create_payment_manager(params = {}, options = {})
      request = build_request(:create_payment_manager, params)
      request.send_request(options)
    end

    # <p>Creates a policy within the AgentCore Policy system. Policies provide real-time, deterministic control over agentic interactions with AgentCore Gateway. Using Cedar or Dogwood, you can define fine-grained policies that specify which interactions with Gateway tools are permitted based on input parameters and OAuth claims, ensuring agents operate within defined boundaries and business rules. The policy is validated during creation against the Cedar schema generated from the Gateway's tools' input schemas, which defines the available tools, their parameters, and expected data types. This is an asynchronous operation. Use the <a href="https://docs.aws.amazon.com/bedrock-agentcore-control/latest/APIReference/API_GetPolicy.html">GetPolicy</a> operation to poll the <code>status</code> field to track completion.</p> <p>If the new policy is a temporal policy, creating it invalidates the policy engine's active temporal sessions. For more information about temporal policy sessions, see <a href="https://docs.aws.amazon.com/bedrock-agentcore/latest/devguide/policy-session-based-temporal.html">session-based temporal policies</a>. The policy engine returns an HTTP 409 <code>ConflictException</code> to in-flight sessions. To resume, you must start a new session with a new session ID.</p>
    # @param [Hash, Types::CreatePolicyRequest] params
    # @option params [String] :name
    #   <p>The customer-assigned immutable name for the policy. Must be unique within the account. This name is used for policy identification and cannot be changed after creation.</p>
    # @option params [Types::PolicyDefinition] :definition
    #   <p>The Cedar or Dogwood policy statement that defines the access control rules. This contains the actual policy logic written in Cedar or Dogwood, specifying effect (permit or forbid), principals, actions, resources, and conditions for agent behavior control.</p>
    # @option params [String] :description
    #   <p>A human-readable description of the policy's purpose and functionality (1-4,096 characters). This helps policy administrators understand the policy's intent, business rules, and operational scope. Use this field to document why the policy exists, what business requirement it addresses, and any special considerations for maintenance. Clear descriptions are essential for policy governance, auditing, and troubleshooting.</p>
    # @option params [String] :validation_mode
    #   <p>The validation mode for the policy creation. Determines how Cedar analyzer validation results are handled during policy creation. FAIL_ON_ANY_FINDINGS (default) runs the Cedar analyzer to validate the policy against the Cedar schema and tool context, failing creation if the analyzer detects any validation issues to ensure strict conformance. IGNORE_ALL_FINDINGS runs the Cedar analyzer but allows policy creation even if validation issues are detected, useful for testing or when the policy schema is evolving. Use FAIL_ON_ANY_FINDINGS for production policies to ensure correctness, and IGNORE_ALL_FINDINGS only when you understand and accept the analyzer findings.</p>
    # @option params [String] :enforcement_mode
    #   <p>The enforcement mode for the policy. Run this policy in <code>LOG_ONLY</code> mode to collect data on how it affects your application. Once you are satisfied with the data gathered, switch the policy to <code>ACTIVE</code>. Defaults to <code>ACTIVE</code>.</p>
    # @option params [String] :policy_engine_id
    #   <p>The identifier of the policy engine which contains this policy. Policy engines group related policies and provide the execution context for policy evaluation.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure the idempotency of the request. The Amazon Web Services SDK automatically generates this token, so you don't need to provide it in most cases. If you retry a request with the same client token, the service returns the same response without creating a duplicate policy.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "PolicyName", # required
    #     definition: { # required
    #       # One of:
    #       cedar: {
    #         statement: "Statement", # required
    #       },
    #       policy_generation: {
    #         policy_generation_id: "ResourceId", # required
    #         policy_generation_asset_id: "ResourceId", # required
    #       },
    #       policy: {
    #         statement: "Statement", # required
    #       }
    #     },
    #     description: "Description",
    #     validation_mode: "FAIL_ON_ANY_FINDINGS" # One of: ["FAIL_ON_ANY_FINDINGS", "IGNORE_ALL_FINDINGS"],
    #     enforcement_mode: "ACTIVE" # One of: ["ACTIVE", "LOG_ONLY"],
    #     policy_engine_id: "ResourceId", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_id: "ResourceId", # required
    #     name: "PolicyName", # required
    #     policy_engine_id: "ResourceId", # required
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #     policy_arn: "PolicyArn", # required
    #     status: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED"], # required
    #     enforcement_mode: "ACTIVE" # One of: ["ACTIVE", "LOG_ONLY"],
    #     definition: { # required
    #       # One of:
    #       cedar: {
    #         statement: "Statement", # required
    #       },
    #       policy_generation: {
    #         policy_generation_id: "ResourceId", # required
    #         policy_generation_asset_id: "ResourceId", # required
    #       },
    #       policy: {
    #         statement: "Statement", # required
    #       }
    #     },
    #     description: "Description",
    #     status_reasons: ["String"], # required
    #   }
    # @return [Types::CreatePolicyResponse]
    def create_policy(params = {}, options = {})
      request = build_request(:create_policy, params)
      request.send_request(options)
    end

    # <p>Creates a new policy engine within the AgentCore Policy system. A policy engine is a collection of policies that evaluates and authorizes agent tool calls. When associated with Gateways (each Gateway can be associated with at most one policy engine, but multiple Gateways can be associated with the same engine), the policy engine intercepts all agent requests and determines whether to allow or deny each action based on the defined policies. This is an asynchronous operation. Use the <a href="https://docs.aws.amazon.com/bedrock-agentcore-control/latest/APIReference/API_GetPolicyEngine.html">GetPolicyEngine</a> operation to poll the <code>status</code> field to track completion.</p>
    # @param [Hash, Types::CreatePolicyEngineRequest] params
    # @option params [String] :name
    #   <p>The customer-assigned immutable name for the policy engine. This name identifies the policy engine and cannot be changed after creation.</p>
    # @option params [String] :description
    #   <p>A human-readable description of the policy engine's purpose and scope (1-4,096 characters). This helps administrators understand the policy engine's role in the overall governance strategy. Document which Gateway this engine will be associated with, what types of tools or workflows it governs, and the team or service responsible for maintaining it. Clear descriptions are essential when managing multiple policy engines across different services or environments.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you retry a request with the same client token, the service returns the same response without creating a duplicate policy engine.</p>
    # @option params [String] :encryption_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key used to encrypt the policy engine data.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A map of tag keys and values to assign to an AgentCore Policy. Tags enable you to categorize your resources in different ways, for example, by purpose, owner, or environment.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "PolicyEngineName", # required
    #     description: "Description",
    #     client_token: "ClientToken",
    #     encryption_key_arn: "KmsKeyArn",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_policy_engine(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_engine_id: "ResourceId", # required
    #     name: "PolicyEngineName", # required
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #     policy_engine_arn: "PolicyEngineArn", # required
    #     status: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED"], # required
    #     encryption_key_arn: "KmsKeyArn",
    #     description: "Description",
    #     status_reasons: ["String"], # required
    #   }
    # @return [Types::CreatePolicyEngineResponse]
    def create_policy_engine(params = {}, options = {})
      request = build_request(:create_policy_engine, params)
      request.send_request(options)
    end

    # <p>Creates a new registry in your Amazon Web Services account. A registry serves as a centralized catalog for organizing and managing registry records, including MCP servers, A2A agents, agent skills, and custom resource types.</p> <p>If you specify <code>CUSTOM_JWT</code> as the <code>authorizerType</code>, you must provide an <code>authorizerConfiguration</code>.</p>
    # @param [Hash, Types::CreateRegistryRequest] params
    # @option params [String] :name
    #   <p>The name of the registry. The name must be unique within your account and can contain alphanumeric characters and underscores.</p>
    # @option params [String] :description
    #   <p>A description of the registry.</p>
    # @option params [String] :authorizer_type
    #   <p>The type of authorizer to use for the registry. This controls the authorization method for the Search and Invoke APIs used by consumers, and does not affect the standard CRUDL APIs for registry and registry record management used by administrators.</p> <ul> <li> <p> <code>CUSTOM_JWT</code> - Authorize with a bearer token.</p> </li> <li> <p> <code>AWS_IAM</code> - Authorize with your Amazon Web Services IAM credentials.</p> </li> </ul>
    # @option params [Types::AuthorizerConfiguration] :authorizer_configuration
    #   <p>The authorizer configuration for the registry. Required if <code>authorizerType</code> is <code>CUSTOM_JWT</code>. For details, see the <code>AuthorizerConfiguration</code> data type.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If you don't specify this field, a value is randomly generated for you. If this token matches a previous request, the service ignores the request, but doesn't return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    # @option params [Types::ApprovalConfiguration] :approval_configuration
    #   <p>The approval configuration for registry records. Controls whether records require explicit approval before becoming active. See the <code>ApprovalConfiguration</code> data type for supported configuration options.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "RegistryName", # required
    #     description: "Description",
    #     authorizer_type: "CUSTOM_JWT" # One of: ["CUSTOM_JWT", "AWS_IAM"],
    #     authorizer_configuration: {
    #       # One of:
    #       custom_jwt_authorizer: {
    #         discovery_url: "DiscoveryUrl", # required
    #         allowed_audience: ["AllowedAudience"],
    #         allowed_clients: ["AllowedClient"],
    #         allowed_scopes: ["AllowedScopeType"],
    #         advertised_scope_mapping: {
    #           "AllowedScopeType" => "AllowedScopeType"
    #         },
    #         custom_claims: [
    #           {
    #             inbound_token_claim_name: "InboundTokenClaimNameType", # required
    #             inbound_token_claim_value_type: "STRING" # One of: ["STRING", "STRING_ARRAY"], # required
    #             authorizing_claim_match_value: { # required
    #               claim_match_value: { # required
    #                 # One of:
    #                 match_value_string: "MatchValueString",
    #                 match_value_string_list: ["MatchValueString"]
    #               },
    #               claim_match_operator: "EQUALS" # One of: ["EQUALS", "CONTAINS", "CONTAINS_ANY"], # required
    #             }
    #           }
    #         ],
    #         private_endpoint: {
    #           # One of:
    #           self_managed_lattice_resource: {
    #             # One of:
    #             resource_configuration_identifier: "ResourceConfigurationIdentifier"
    #           },
    #           managed_vpc_resource: {
    #             vpc_identifier: "VpcIdentifier", # required
    #             subnet_ids: ["SubnetId"], # required
    #             endpoint_ip_address_type: "IPV4" # One of: ["IPV4", "IPV6"], # required
    #             security_group_ids: ["SecurityGroupIdentifier"],
    #             tags: {
    #               "TagKey" => "TagValue"
    #             },
    #             routing_domain: "RoutingDomain"
    #           }
    #         },
    #         private_endpoint_overrides: [
    #           {
    #             domain: "PrivateEndpointOverrideDomain", # required
    #             private_endpoint: { # required
    #               # One of:
    #               self_managed_lattice_resource: {
    #                 # One of:
    #                 resource_configuration_identifier: "ResourceConfigurationIdentifier"
    #               },
    #               managed_vpc_resource: {
    #                 vpc_identifier: "VpcIdentifier", # required
    #                 subnet_ids: ["SubnetId"], # required
    #                 endpoint_ip_address_type: "IPV4" # One of: ["IPV4", "IPV6"], # required
    #                 security_group_ids: ["SecurityGroupIdentifier"],
    #                 tags: {
    #                   "TagKey" => "TagValue"
    #                 },
    #                 routing_domain: "RoutingDomain"
    #               }
    #             }
    #           }
    #         ],
    #         allowed_workload_configuration: {
    #           hosting_environments: [
    #             {
    #               arn: "BedrockAgentcoreResourceArn", # required
    #             }
    #           ],
    #           workload_identities: ["WorkloadIdentityNameType"]
    #         }
    #       }
    #     },
    #     client_token: "ClientToken",
    #     approval_configuration: {
    #       auto_approval: false
    #     }
    #   }
    #   options = {}
    #   response = client.create_registry(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     registry_arn: "RegistryArn", # required
    #   }
    # @return [Types::CreateRegistryResponse]
    def create_registry(params = {}, options = {})
      request = build_request(:create_registry, params)
      request.send_request(options)
    end

    # <p>Creates a new registry record within the specified registry. A registry record represents an individual AI resource's metadata in the registry. This could be an MCP server (and associated tools), A2A agent, agent skill, or a custom resource with a custom schema.</p> <p>The record is processed asynchronously and returns HTTP 202 Accepted.</p>
    # @param [Hash, Types::CreateRegistryRecordRequest] params
    # @option params [String] :registry_id
    #   <p>The identifier of the registry where the record will be created. You can specify either the Amazon Resource Name (ARN) or the ID of the registry.</p>
    # @option params [String] :name
    #   <p>The name of the registry record.</p>
    # @option params [String] :description
    #   <p>A description of the registry record.</p>
    # @option params [String] :descriptor_type
    #   <p>The descriptor type of the registry record.</p> <ul> <li> <p> <code>MCP</code> - Model Context Protocol descriptor for MCP-compatible servers and tools.</p> </li> <li> <p> <code>A2A</code> - Agent-to-Agent protocol descriptor.</p> </li> <li> <p> <code>CUSTOM</code> - Custom descriptor type for resources such as APIs, Lambda functions, or servers not conforming to a standard protocol.</p> </li> <li> <p> <code>AGENT_SKILLS</code> - Agent skills descriptor for defining agent skill definitions.</p> </li> </ul>
    # @option params [Types::Descriptors] :descriptors
    #   <p>The descriptor-type-specific configuration containing the resource schema and metadata. The structure of this field depends on the <code>descriptorType</code> you specify.</p>
    # @option params [String] :record_version
    #   <p>The version of the registry record. Use this to track different versions of the record's content.</p>
    # @option params [String] :synchronization_type
    #   <p>The type of synchronization to use for keeping the record metadata up to date from an external source. Possible values include <code>FROM_URL</code> and <code>NONE</code>.</p>
    # @option params [Types::SynchronizationConfiguration] :synchronization_configuration
    #   <p>The configuration for synchronizing registry record metadata from an external source, such as a URL-based MCP server.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If you don't specify this field, a value is randomly generated for you. If this token matches a previous request, the service ignores the request, but doesn't return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     registry_id: "RegistryIdentifier", # required
    #     name: "RegistryRecordName", # required
    #     description: "Description",
    #     descriptor_type: "MCP" # One of: ["MCP", "A2A", "CUSTOM", "AGENT_SKILLS"], # required
    #     descriptors: {
    #       mcp: {
    #         server: {
    #           schema_version: "SchemaVersion",
    #           inline_content: "InlineContent"
    #         },
    #         tools: {
    #           protocol_version: "SchemaVersion",
    #           inline_content: "InlineContent"
    #         }
    #       },
    #       a2a: {
    #         agent_card: {
    #           schema_version: "SchemaVersion",
    #           inline_content: "InlineContent"
    #         }
    #       },
    #       custom: {
    #         inline_content: "InlineContent"
    #       },
    #       agent_skills: {
    #         skill_md: {
    #           inline_content: "InlineContent"
    #         },
    #         skill_definition: {
    #           schema_version: "SchemaVersion",
    #           inline_content: "InlineContent"
    #         }
    #       }
    #     },
    #     record_version: "RegistryRecordVersion",
    #     synchronization_type: "URL" # One of: ["URL"],
    #     synchronization_configuration: {
    #       from_url: {
    #         url: "McpServerUrl", # required
    #         credential_provider_configurations: [
    #           {
    #             credential_provider_type: "OAUTH" # One of: ["OAUTH", "IAM"], # required
    #             credential_provider: { # required
    #               # One of:
    #               oauth_credential_provider: {
    #                 provider_arn: "CredentialProviderArn", # required
    #                 grant_type: "CLIENT_CREDENTIALS" # One of: ["CLIENT_CREDENTIALS"],
    #                 scopes: ["String"],
    #                 custom_parameters: {
    #                   "String" => "String"
    #                 }
    #               },
    #               iam_credential_provider: {
    #                 role_arn: "IamRoleArn",
    #                 service: "IamSigningServiceName",
    #                 region: "IamSigningRegion"
    #               }
    #             }
    #           }
    #         ]
    #       }
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_registry_record(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     record_arn: "RegistryRecordArn", # required
    #     status: "DRAFT" # One of: ["DRAFT", "PENDING_APPROVAL", "APPROVED", "REJECTED", "DEPRECATED", "CREATING", "UPDATING", "CREATE_FAILED", "UPDATE_FAILED"], # required
    #   }
    # @return [Types::CreateRegistryRecordResponse]
    def create_registry_record(params = {}, options = {})
      request = build_request(:create_registry_record, params)
      request.send_request(options)
    end

    # <p>Creates a new workload identity.</p>
    # @param [Hash, Types::CreateWorkloadIdentityRequest] params
    # @option params [String] :name
    #   <p>The name of the workload identity. The name must be unique within your account.</p>
    # @option params [Array<String>] :allowed_resource_oauth2_return_urls
    #   <p>The list of allowed OAuth2 return URLs for resources associated with this workload identity.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A map of tag keys and values to assign to the workload identity. Tags enable you to categorize your resources in different ways, for example, by purpose, owner, or environment.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "WorkloadIdentityNameType", # required
    #     allowed_resource_oauth2_return_urls: ["ResourceOauth2ReturnUrlType"],
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
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

    # <p>Deletes an Amazon Bedrock AgentCore Runtime, or a single version of an AgentCore Runtime when you provide the version qualifier.</p>
    # @param [Hash, Types::DeleteAgentRuntimeRequest] params
    # @option params [String] :agent_runtime_id
    #   <p>The unique identifier of the AgentCore Runtime to delete.</p>
    # @option params [String] :agent_runtime_version
    #   <p>The version of the AgentCore Runtime to delete. When you provide this value, only that version is deleted. When you omit it, the entire AgentCore Runtime and all of its versions are deleted.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure that the operation completes no more than one time. If this token matches a previous request, the service ignores the request but does not return an error.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_runtime_id: "AgentRuntimeId", # required
    #     agent_runtime_version: "AgentRuntimeVersion",
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.delete_agent_runtime(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "READY", "DELETING", "DELETE_FAILED"], # required
    #     agent_runtime_id: "AgentRuntimeId",
    #     agent_runtime_version: "AgentRuntimeVersion"
    #   }
    # @return [Types::DeleteAgentRuntimeResponse]
    def delete_agent_runtime(params = {}, options = {})
      request = build_request(:delete_agent_runtime, params)
      request.send_request(options)
    end

    # <p>Deletes an AgentCore Runtime endpoint.</p>
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
    #     status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "READY", "DELETING", "DELETE_FAILED"], # required
    #     agent_runtime_id: "AgentRuntimeId",
    #     endpoint_name: "EndpointName"
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

    # <p>Deletes a browser profile.</p>
    # @param [Hash, Types::DeleteBrowserProfileRequest] params
    # @option params [String] :profile_id
    #   <p>The unique identifier of the browser profile to delete.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure idempotency of the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     profile_id: "BrowserProfileId", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.delete_browser_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     profile_id: "BrowserProfileId", # required
    #     profile_arn: "BrowserProfileArn", # required
    #     status: "READY" # One of: ["READY", "DELETING", "DELETED", "SAVING"], # required
    #     last_updated_at: Time.now, # required
    #     last_saved_at: Time.now
    #   }
    # @return [Types::DeleteBrowserProfileResponse]
    def delete_browser_profile(params = {}, options = {})
      request = build_request(:delete_browser_profile, params)
      request.send_request(options)
    end

    # <p>Deletes a capacity provider. Before you delete a capacity provider, disassociate all agent runtimes and runtime versions that reference it. If any references remain, the operation fails.</p>
    # @param [Hash, Types::DeleteCapacityProviderInput] params
    # @option params [String] :capacity_provider_id
    #   <p>The unique identifier of the capacity provider to delete.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If you don't specify this field, a value is randomly generated for you. If this token matches a previous request, the service ignores the request, but doesn't return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     capacity_provider_id: "CapacityProviderId", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.delete_capacity_provider(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     capacity_provider_id: "CapacityProviderId", # required
    #     status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "READY", "DELETING", "DELETE_FAILED"], # required
    #   }
    # @return [Types::DeleteCapacityProviderOutput]
    def delete_capacity_provider(params = {}, options = {})
      request = build_request(:delete_capacity_provider, params)
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

    # <p>Deletes a configuration bundle and all of its versions.</p>
    # @param [Hash, Types::DeleteConfigurationBundleRequest] params
    # @option params [String] :bundle_id
    #   <p>The unique identifier of the configuration bundle to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     bundle_id: "ConfigurationBundleId", # required
    #   }
    #   options = {}
    #   response = client.delete_configuration_bundle(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     bundle_arn: "ConfigurationBundleArn", # required
    #     bundle_id: "ConfigurationBundleId", # required
    #     status: "ACTIVE" # One of: ["ACTIVE", "CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "DELETING", "DELETE_FAILED"], # required
    #   }
    # @return [Types::DeleteConfigurationBundleResponse]
    def delete_configuration_bundle(params = {}, options = {})
      request = build_request(:delete_configuration_bundle, params)
      request.send_request(options)
    end

    # <p>Deletes a consent portal.</p>
    # @param [Hash, Types::DeleteConsentPortalRequest] params
    # @option params [String] :consent_portal_identifier
    #   <p>The identifier of the consent portal. You can specify either the consent portal ID or its Amazon Resource Name (ARN).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     consent_portal_identifier: "ConsentPortalIdentifier", # required
    #   }
    #   options = {}
    #   response = client.delete_consent_portal(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteConsentPortalResponse]
    def delete_consent_portal(params = {}, options = {})
      request = build_request(:delete_consent_portal, params)
      request.send_request(options)
    end

    # <p> Deletes a dataset version or an entire dataset asynchronously. If <code>datasetVersion</code> is absent, deletes all versions and the dataset record itself. If provided, deletes only that specific version. </p>
    # @param [Hash, Types::DeleteDatasetRequest] params
    # @option params [String] :dataset_id
    #   <p> The unique identifier of the dataset to delete. </p>
    # @option params [String] :dataset_version
    #   <p> Optional version to delete. If absent, deletes the entire dataset. If provided, deletes only that specific version. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     dataset_id: "DatasetId", # required
    #     dataset_version: "DatasetVersion"
    #   }
    #   options = {}
    #   response = client.delete_dataset(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dataset_arn: "DatasetArn", # required
    #     dataset_id: "DatasetId", # required
    #     status: "CREATING" # One of: ["CREATING", "UPDATING", "DELETING", "ACTIVE", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED"], # required
    #     dataset_version: "DatasetVersion", # required
    #     updated_at: Time.now, # required
    #   }
    # @return [Types::DeleteDatasetResponse]
    def delete_dataset(params = {}, options = {})
      request = build_request(:delete_dataset, params)
      request.send_request(options)
    end

    # <p> Deletes specific examples by ID from DRAFT. All example IDs are validated before any deletes occur. If any ID does not exist in DRAFT, the entire batch is rejected (all-or-nothing semantics). </p>
    # @param [Hash, Types::DeleteDatasetExamplesRequest] params
    # @option params [String] :dataset_id
    #   <p> The unique identifier of the dataset. </p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If you don't specify this field, a value is randomly generated for you. If this token matches a previous request, the service ignores the request, but doesn't return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    # @option params [Array<String>] :example_ids
    #   <p> The IDs of the examples to delete. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     dataset_id: "DatasetId", # required
    #     client_token: "ClientToken",
    #     example_ids: ["ExampleId"], # required
    #   }
    #   options = {}
    #   response = client.delete_dataset_examples(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dataset_arn: "DatasetArn", # required
    #     dataset_id: "DatasetId", # required
    #     status: "CREATING" # One of: ["CREATING", "UPDATING", "DELETING", "ACTIVE", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED"], # required
    #     deleted_count: 1, # required
    #     updated_at: Time.now, # required
    #   }
    # @return [Types::DeleteDatasetExamplesResponse]
    def delete_dataset_examples(params = {}, options = {})
      request = build_request(:delete_dataset_examples, params)
      request.send_request(options)
    end

    # <p> Deletes a custom evaluator. Builtin evaluators cannot be deleted. The evaluator must not be referenced by any active online evaluation configurations. </p>
    # @param [Hash, Types::DeleteEvaluatorRequest] params
    # @option params [String] :evaluator_id
    #   <p> The unique identifier of the evaluator to delete. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     evaluator_id: "EvaluatorId", # required
    #   }
    #   options = {}
    #   response = client.delete_evaluator(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     evaluator_arn: "EvaluatorArn", # required
    #     evaluator_id: "EvaluatorId", # required
    #     status: "ACTIVE" # One of: ["ACTIVE", "CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "DELETING"], # required
    #   }
    # @return [Types::DeleteEvaluatorResponse]
    def delete_evaluator(params = {}, options = {})
      request = build_request(:delete_evaluator, params)
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

    # <p>Deletes a gateway rate limit.</p>
    # @param [Hash, Types::DeleteGatewayRateLimitRequest] params
    # @option params [String] :gateway_identifier
    #   <p>The unique identifier of the gateway.</p>
    # @option params [String] :rate_limit_id
    #   <p>The unique identifier of the rate limit to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_identifier: "GatewayIdentifier", # required
    #     rate_limit_id: "GatewayRateLimitId", # required
    #   }
    #   options = {}
    #   response = client.delete_gateway_rate_limit(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rate_limit_id: "GatewayRateLimitId", # required
    #     status: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "DELETING"], # required
    #   }
    # @return [Types::DeleteGatewayRateLimitResponse]
    def delete_gateway_rate_limit(params = {}, options = {})
      request = build_request(:delete_gateway_rate_limit, params)
      request.send_request(options)
    end

    # <p>Deletes a gateway rule.</p>
    # @param [Hash, Types::DeleteGatewayRuleRequest] params
    # @option params [String] :gateway_identifier
    #   <p>The identifier of the gateway containing the rule.</p>
    # @option params [String] :rule_id
    #   <p>The unique identifier of the rule to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_identifier: "GatewayIdentifier", # required
    #     rule_id: "GatewayRuleId", # required
    #   }
    #   options = {}
    #   response = client.delete_gateway_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rule_id: "GatewayRuleId", # required
    #     status: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "DELETING"], # required
    #   }
    # @return [Types::DeleteGatewayRuleResponse]
    def delete_gateway_rule(params = {}, options = {})
      request = build_request(:delete_gateway_rule, params)
      request.send_request(options)
    end

    # <p>Deletes a gateway target.</p> <p>You cannot delete a target that is in a pending authorization state (<code>CREATE_PENDING_AUTH</code>, <code>UPDATE_PENDING_AUTH</code>, or <code>SYNCHRONIZE_PENDING_AUTH</code>). Wait for the authorization to complete or fail before deleting the target.</p>
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
    #     status: "CREATING" # One of: ["CREATING", "UPDATING", "UPDATE_UNSUCCESSFUL", "DELETING", "READY", "FAILED", "SYNCHRONIZING", "SYNCHRONIZE_UNSUCCESSFUL", "CREATE_PENDING_AUTH", "UPDATE_PENDING_AUTH", "SYNCHRONIZE_PENDING_AUTH"], # required
    #     status_reasons: ["StatusReason"]
    #   }
    # @return [Types::DeleteGatewayTargetResponse]
    def delete_gateway_target(params = {}, options = {})
      request = build_request(:delete_gateway_target, params)
      request.send_request(options)
    end

    # <p>Operation to delete a Harness.</p>
    # @param [Hash, Types::DeleteHarnessRequest] params
    # @option params [String] :harness_id
    #   <p>The ID of the harness to delete.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure idempotency of the request.</p>
    # @option params [Boolean] :delete_managed_memory
    #   <p>Whether to delete the managed memory on harness deletion. Default: true. If false, the memory is disassociated and becomes a regular customer-owned resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     harness_id: "HarnessId", # required
    #     client_token: "ClientToken",
    #     delete_managed_memory: false
    #   }
    #   options = {}
    #   response = client.delete_harness(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     harness: {
    #       harness_id: "HarnessId", # required
    #       harness_name: "HarnessName", # required
    #       arn: "HarnessArn", # required
    #       status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "READY", "DELETING", "DELETE_FAILED"], # required
    #       harness_version: "HarnessVersion",
    #       execution_role_arn: "RoleArn", # required
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       model: { # required
    #         # One of:
    #         bedrock_model_config: {
    #           model_id: "ModelId", # required
    #           max_tokens: 1,
    #           temperature: 1.0,
    #           top_p: 1.0,
    #           api_format: "converse_stream" # One of: ["converse_stream", "responses", "chat_completions"],
    #           additional_params: ""null""
    #         },
    #         open_ai_model_config: {
    #           model_id: "ModelId", # required
    #           api_key_arn: "ApiKeyArn", # required
    #           api_base: "HarnessOpenAiApiBase",
    #           max_tokens: 1,
    #           temperature: 1.0,
    #           top_p: 1.0,
    #           api_format: "chat_completions" # One of: ["chat_completions", "responses"],
    #           additional_params: ""null""
    #         },
    #         gemini_model_config: {
    #           model_id: "ModelId", # required
    #           api_key_arn: "ApiKeyArn", # required
    #           max_tokens: 1,
    #           temperature: 1.0,
    #           top_p: 1.0,
    #           top_k: 1,
    #           additional_params: ""null""
    #         },
    #         lite_llm_model_config: {
    #           model_id: "ModelId", # required
    #           api_key_arn: "ApiKeyArn",
    #           api_base: "HarnessLiteLlmApiBase",
    #           max_tokens: 1,
    #           temperature: 1.0,
    #           top_p: 1.0,
    #           additional_params: ""null""
    #         }
    #       },
    #       system_prompt: [{ # required
    #         # One of:
    #         text: "SensitiveText"
    #       }],
    #       tools: [ # required
    #         {
    #           type: "remote_mcp" # One of: ["remote_mcp", "agentcore_browser", "agentcore_gateway", "inline_function", "agentcore_code_interpreter"], # required
    #           name: "HarnessToolName",
    #           config: {
    #             # One of:
    #             remote_mcp: {
    #               url: "HarnessRemoteMcpUrl", # required
    #               headers: {
    #                 "HttpHeaderKey" => "HttpHeaderValue"
    #               }
    #             },
    #             agent_core_browser: {
    #               browser_arn: "HarnessBrowserArn"
    #             },
    #             agent_core_gateway: {
    #               gateway_arn: "GatewayArn", # required
    #               outbound_auth: {
    #                 # One of:
    #                 aws_iam: {
    #                 },
    #                 none: {
    #                 },
    #                 oauth: {
    #                   provider_arn: "OAuthCredentialProviderArn", # required
    #                   scopes: ["OAuthScope"], # required
    #                   custom_parameters: {
    #                     "OAuthCustomParametersKey" => "OAuthCustomParametersValue"
    #                   },
    #                   grant_type: "CLIENT_CREDENTIALS" # One of: ["CLIENT_CREDENTIALS", "AUTHORIZATION_CODE", "TOKEN_EXCHANGE"],
    #                   default_return_url: "OAuthDefaultReturnUrl"
    #                 }
    #               }
    #             },
    #             inline_function: {
    #               description: "HarnessInlineFunctionDescription", # required
    #               input_schema: ""null"", # required
    #             },
    #             agent_core_code_interpreter: {
    #               code_interpreter_arn: "HarnessCodeInterpreterArn"
    #             }
    #           }
    #         }
    #       ],
    #       skills: [{ # required
    #         # One of:
    #         path: "HarnessSkillPath",
    #         s3: {
    #           uri: "HarnessSkillS3Uri", # required
    #         },
    #         git: {
    #           url: "HarnessSkillGitUrl", # required
    #           path: "String",
    #           auth: {
    #             credential_arn: "ApiKeyArn", # required
    #             username: "String"
    #           }
    #         },
    #         aws_skills: {
    #           paths: ["HarnessAwsSkillPath"]
    #         }
    #       }],
    #       allowed_tools: ["HarnessAllowedTool"], # required
    #       truncation: { # required
    #         strategy: "sliding_window" # One of: ["sliding_window", "summarization", "none"], # required
    #         config: {
    #           # One of:
    #           sliding_window: {
    #             messages_count: 1
    #           },
    #           summarization: {
    #             summary_ratio: 1.0,
    #             preserve_recent_messages: 1,
    #             summarization_system_prompt: "String"
    #           }
    #         }
    #       },
    #       environment: { # required
    #         # One of:
    #         agent_core_runtime_environment: {
    #           agent_runtime_arn: "BedrockAgentcoreResourceArn", # required
    #           agent_runtime_name: "String", # required
    #           agent_runtime_id: "String", # required
    #           lifecycle_configuration: { # required
    #             idle_runtime_session_timeout: 1,
    #             max_lifetime: 1
    #           },
    #           network_configuration: { # required
    #             network_mode: "PUBLIC" # One of: ["PUBLIC", "VPC"], # required
    #             network_mode_config: {
    #               security_groups: ["SecurityGroupId"], # required
    #               subnets: ["SubnetId"], # required
    #               require_service_s3_endpoint: false
    #             }
    #           },
    #           filesystem_configurations: [{
    #             # One of:
    #             session_storage: {
    #               mount_path: "MountPath", # required
    #             },
    #             s3_files_access_point: {
    #               access_point_arn: "S3FilesAccessPointArn", # required
    #               mount_path: "MountPath", # required
    #             },
    #             efs_access_point: {
    #               access_point_arn: "EfsAccessPointArn", # required
    #               mount_path: "MountPath", # required
    #             },
    #             capacity_provider_volume: {
    #               volume_name: "CapacityProviderVolumeName", # required
    #               mount_path: "MountPath", # required
    #             }
    #           }]
    #         }
    #       },
    #       environment_artifact: {
    #         # One of:
    #         container_configuration: {
    #           container_uri: "RuntimeContainerUri", # required
    #         }
    #       },
    #       environment_variables: {
    #         "EnvironmentVariableKey" => "EnvironmentVariableValue"
    #       },
    #       authorizer_configuration: {
    #         # One of:
    #         custom_jwt_authorizer: {
    #           discovery_url: "DiscoveryUrl", # required
    #           allowed_audience: ["AllowedAudience"],
    #           allowed_clients: ["AllowedClient"],
    #           allowed_scopes: ["AllowedScopeType"],
    #           advertised_scope_mapping: {
    #             "AllowedScopeType" => "AllowedScopeType"
    #           },
    #           custom_claims: [
    #             {
    #               inbound_token_claim_name: "InboundTokenClaimNameType", # required
    #               inbound_token_claim_value_type: "STRING" # One of: ["STRING", "STRING_ARRAY"], # required
    #               authorizing_claim_match_value: { # required
    #                 claim_match_value: { # required
    #                   # One of:
    #                   match_value_string: "MatchValueString",
    #                   match_value_string_list: ["MatchValueString"]
    #                 },
    #                 claim_match_operator: "EQUALS" # One of: ["EQUALS", "CONTAINS", "CONTAINS_ANY"], # required
    #               }
    #             }
    #           ],
    #           private_endpoint: {
    #             # One of:
    #             self_managed_lattice_resource: {
    #               # One of:
    #               resource_configuration_identifier: "ResourceConfigurationIdentifier"
    #             },
    #             managed_vpc_resource: {
    #               vpc_identifier: "VpcIdentifier", # required
    #               subnet_ids: ["SubnetId"], # required
    #               endpoint_ip_address_type: "IPV4" # One of: ["IPV4", "IPV6"], # required
    #               security_group_ids: ["SecurityGroupIdentifier"],
    #               tags: {
    #                 "TagKey" => "TagValue"
    #               },
    #               routing_domain: "RoutingDomain"
    #             }
    #           },
    #           private_endpoint_overrides: [
    #             {
    #               domain: "PrivateEndpointOverrideDomain", # required
    #               private_endpoint: { # required
    #                 # One of:
    #                 self_managed_lattice_resource: {
    #                   # One of:
    #                   resource_configuration_identifier: "ResourceConfigurationIdentifier"
    #                 },
    #                 managed_vpc_resource: {
    #                   vpc_identifier: "VpcIdentifier", # required
    #                   subnet_ids: ["SubnetId"], # required
    #                   endpoint_ip_address_type: "IPV4" # One of: ["IPV4", "IPV6"], # required
    #                   security_group_ids: ["SecurityGroupIdentifier"],
    #                   tags: {
    #                     "TagKey" => "TagValue"
    #                   },
    #                   routing_domain: "RoutingDomain"
    #                 }
    #               }
    #             }
    #           ],
    #           allowed_workload_configuration: {
    #             hosting_environments: [
    #               {
    #                 arn: "BedrockAgentcoreResourceArn", # required
    #               }
    #             ],
    #             workload_identities: ["WorkloadIdentityNameType"]
    #           }
    #         }
    #       },
    #       memory: {
    #         # One of:
    #         agent_core_memory_configuration: {
    #           arn: "MemoryArn", # required
    #           actor_id: "String",
    #           messages_count: 1,
    #           retrieval_config: {
    #             "String" => {
    #               top_k: 1,
    #               relevance_score: 1.0,
    #               strategy_id: "String"
    #             }
    #           }
    #         },
    #         managed_memory_configuration: {
    #           arn: "MemoryArn",
    #           strategies: ["SEMANTIC" # One of: ["SEMANTIC", "SUMMARIZATION", "USER_PREFERENCE", "EPISODIC"]],
    #           event_expiry_duration: 1,
    #           encryption_key_arn: "KmsKeyArn"
    #         },
    #         disabled: {
    #         }
    #       },
    #       hooks: [{
    #         # One of:
    #         before_invocation: {
    #           name: "HarnessHookName", # required
    #           target: { # required
    #             # One of:
    #             lambda: {
    #               arn: "HarnessLambdaFunctionArn", # required
    #               timeout_seconds: 1,
    #               failure_mode: "allow" # One of: ["allow", "deny"]
    #             },
    #             sns: {
    #               arn: "HarnessSnsTopicArn", # required
    #             },
    #             event_bridge: {
    #               arn: "HarnessEventBridgeBusArn", # required
    #             }
    #           }
    #         },
    #         after_invocation: {
    #           name: "HarnessHookName", # required
    #           target: { # required
    #             # One of:
    #             lambda: {
    #               arn: "HarnessLambdaFunctionArn", # required
    #               timeout_seconds: 1,
    #               failure_mode: "allow" # One of: ["allow", "deny"]
    #             },
    #             sns: {
    #               arn: "HarnessSnsTopicArn", # required
    #             },
    #             event_bridge: {
    #               arn: "HarnessEventBridgeBusArn", # required
    #             }
    #           }
    #         },
    #         before_tool_call: {
    #           name: "HarnessHookName", # required
    #           target: { # required
    #             # One of:
    #             lambda: {
    #               arn: "HarnessLambdaFunctionArn", # required
    #               timeout_seconds: 1,
    #               failure_mode: "allow" # One of: ["allow", "deny"]
    #             },
    #             sns: {
    #               arn: "HarnessSnsTopicArn", # required
    #             },
    #             event_bridge: {
    #               arn: "HarnessEventBridgeBusArn", # required
    #             }
    #           }
    #         },
    #         after_tool_call: {
    #           name: "HarnessHookName", # required
    #           target: { # required
    #             # One of:
    #             lambda: {
    #               arn: "HarnessLambdaFunctionArn", # required
    #               timeout_seconds: 1,
    #               failure_mode: "allow" # One of: ["allow", "deny"]
    #             },
    #             sns: {
    #               arn: "HarnessSnsTopicArn", # required
    #             },
    #             event_bridge: {
    #               arn: "HarnessEventBridgeBusArn", # required
    #             }
    #           }
    #         }
    #       }],
    #       max_iterations: 1,
    #       max_tokens: 1,
    #       timeout_seconds: 1,
    #       failure_reason: "String"
    #     }
    #   }
    # @return [Types::DeleteHarnessResponse]
    def delete_harness(params = {}, options = {})
      request = build_request(:delete_harness, params)
      request.send_request(options)
    end

    # <p>Operation to delete a harness endpoint.</p>
    # @param [Hash, Types::DeleteHarnessEndpointRequest] params
    # @option params [String] :harness_id
    #   <p>The ID of the harness that the endpoint belongs to.</p>
    # @option params [String] :endpoint_name
    #   <p>The name of the endpoint to delete.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure idempotency of the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     harness_id: "HarnessId", # required
    #     endpoint_name: "HarnessEndpointName", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.delete_harness_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     endpoint: { # required
    #       harness_id: "HarnessId", # required
    #       harness_name: "HarnessName", # required
    #       endpoint_name: "HarnessEndpointName", # required
    #       arn: "HarnessEndpointArn", # required
    #       status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "READY", "DELETING", "DELETE_FAILED"], # required
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       live_version: "HarnessVersion",
    #       target_version: "HarnessVersion",
    #       description: "HarnessEndpointDescription",
    #       failure_reason: "String"
    #     }
    #   }
    # @return [Types::DeleteHarnessEndpointResponse]
    def delete_harness_endpoint(params = {}, options = {})
      request = build_request(:delete_harness_endpoint, params)
      request.send_request(options)
    end

    # <p>Deletes an Amazon Bedrock AgentCore Memory resource. When you delete a memory resource, it is permanently removed.</p>
    # @param [Hash, Types::DeleteMemoryInput] params
    # @option params [String] :client_token
    #   <p>A client token is used for keeping track of idempotent requests. It can contain a session id which can be around 250 chars, combined with a unique Amazon Web Services identifier.</p>
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
    #     status: "CREATING" # One of: ["CREATING", "ACTIVE", "FAILED", "DELETING", "UPDATING"]
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

    # <p> Deletes an online evaluation configuration and stops any ongoing evaluation processes associated with it. </p>
    # @param [Hash, Types::DeleteOnlineEvaluationConfigRequest] params
    # @option params [String] :online_evaluation_config_id
    #   <p> The unique identifier of the online evaluation configuration to delete. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     online_evaluation_config_id: "OnlineEvaluationConfigId", # required
    #   }
    #   options = {}
    #   response = client.delete_online_evaluation_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     online_evaluation_config_arn: "OnlineEvaluationConfigArn", # required
    #     online_evaluation_config_id: "OnlineEvaluationConfigId", # required
    #     status: "ACTIVE" # One of: ["ACTIVE", "CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "DELETING", "ERROR"], # required
    #   }
    # @return [Types::DeleteOnlineEvaluationConfigResponse]
    def delete_online_evaluation_config(params = {}, options = {})
      request = build_request(:delete_online_evaluation_config, params)
      request.send_request(options)
    end

    # <p>Deletes a payment connector.</p>
    # @param [Hash, Types::DeletePaymentConnectorRequest] params
    # @option params [String] :payment_manager_id
    #   <p>The unique identifier of the parent payment manager.</p>
    # @option params [String] :payment_connector_id
    #   <p>The unique identifier of the payment connector to delete.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If you don't specify this field, a value is randomly generated for you. If this token matches a previous request, the service ignores the request, but doesn't return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     payment_manager_id: "PaymentManagerId", # required
    #     payment_connector_id: "PaymentConnectorId", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.delete_payment_connector(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "CREATING" # One of: ["CREATING", "UPDATING", "DELETING", "READY", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED", "AWS_MARKETPLACE_SUBSCRIPTION_REQUIRED", "PENDING_AUTHENTICATION", "PROVISIONING", "AUTHENTICATION_EXPIRED", "AUTHENTICATION_FAILED"], # required
    #     payment_connector_id: "PaymentConnectorId"
    #   }
    # @return [Types::DeletePaymentConnectorResponse]
    def delete_payment_connector(params = {}, options = {})
      request = build_request(:delete_payment_connector, params)
      request.send_request(options)
    end

    # <p>Deletes a payment credential provider and its associated stored credentials.</p>
    # @param [Hash, Types::DeletePaymentCredentialProviderRequest] params
    # @option params [String] :name
    #   <p>The name of the payment credential provider to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "CredentialProviderName", # required
    #   }
    #   options = {}
    #   response = client.delete_payment_credential_provider(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeletePaymentCredentialProviderResponse]
    def delete_payment_credential_provider(params = {}, options = {})
      request = build_request(:delete_payment_credential_provider, params)
      request.send_request(options)
    end

    # <p>Deletes a payment manager. All payment connectors associated with the payment manager must be deleted before the payment manager can be deleted. This operation initiates the deletion process asynchronously.</p>
    # @param [Hash, Types::DeletePaymentManagerRequest] params
    # @option params [String] :payment_manager_id
    #   <p>The unique identifier of the payment manager to delete.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If you don't specify this field, a value is randomly generated for you. If this token matches a previous request, the service ignores the request, but doesn't return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     payment_manager_id: "PaymentManagerId", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.delete_payment_manager(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "CREATING" # One of: ["CREATING", "UPDATING", "DELETING", "READY", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED"], # required
    #     payment_manager_id: "PaymentManagerId"
    #   }
    # @return [Types::DeletePaymentManagerResponse]
    def delete_payment_manager(params = {}, options = {})
      request = build_request(:delete_payment_manager, params)
      request.send_request(options)
    end

    # <p>Deletes an existing policy from the AgentCore Policy system. Once deleted, the policy can no longer be used for agent behavior control and all references to it become invalid. This is an asynchronous operation. Use the <code>GetPolicy</code> operation to poll the <code>status</code> field to track completion.</p>
    # @param [Hash, Types::DeletePolicyRequest] params
    # @option params [String] :policy_engine_id
    #   <p>The identifier of the policy engine that manages the policy to be deleted. This ensures the policy is deleted from the correct policy engine context.</p>
    # @option params [String] :policy_id
    #   <p>The unique identifier of the policy to be deleted. This must be a valid policy ID that exists within the specified policy engine.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_engine_id: "ResourceId", # required
    #     policy_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.delete_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_id: "ResourceId", # required
    #     name: "PolicyName", # required
    #     policy_engine_id: "ResourceId", # required
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #     policy_arn: "PolicyArn", # required
    #     status: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED"], # required
    #     enforcement_mode: "ACTIVE" # One of: ["ACTIVE", "LOG_ONLY"],
    #     definition: { # required
    #       # One of:
    #       cedar: {
    #         statement: "Statement", # required
    #       },
    #       policy_generation: {
    #         policy_generation_id: "ResourceId", # required
    #         policy_generation_asset_id: "ResourceId", # required
    #       },
    #       policy: {
    #         statement: "Statement", # required
    #       }
    #     },
    #     description: "Description",
    #     status_reasons: ["String"], # required
    #   }
    # @return [Types::DeletePolicyResponse]
    def delete_policy(params = {}, options = {})
      request = build_request(:delete_policy, params)
      request.send_request(options)
    end

    # <p>Deletes an existing policy engine from the AgentCore Policy system. The policy engine must not have any associated policies before deletion. Once deleted, the policy engine and all its configurations become unavailable for policy management and evaluation. This is an asynchronous operation. Use the <code>GetPolicyEngine</code> operation to poll the <code>status</code> field to track completion.</p>
    # @param [Hash, Types::DeletePolicyEngineRequest] params
    # @option params [String] :policy_engine_id
    #   <p>The unique identifier of the policy engine to be deleted. This must be a valid policy engine ID that exists within the account.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_engine_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.delete_policy_engine(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_engine_id: "ResourceId", # required
    #     name: "PolicyEngineName", # required
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #     policy_engine_arn: "PolicyEngineArn", # required
    #     status: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED"], # required
    #     encryption_key_arn: "KmsKeyArn",
    #     description: "Description",
    #     status_reasons: ["String"], # required
    #   }
    # @return [Types::DeletePolicyEngineResponse]
    def delete_policy_engine(params = {}, options = {})
      request = build_request(:delete_policy_engine, params)
      request.send_request(options)
    end

    # <p>Deletes a registry. The registry must contain zero records before it can be deleted. This operation initiates the deletion process asynchronously.</p>
    # @param [Hash, Types::DeleteRegistryRequest] params
    # @option params [String] :registry_id
    #   <p>The identifier of the registry to delete. You can specify either the Amazon Resource Name (ARN) or the ID of the registry.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     registry_id: "RegistryIdentifier", # required
    #   }
    #   options = {}
    #   response = client.delete_registry(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "CREATING" # One of: ["CREATING", "READY", "UPDATING", "CREATE_FAILED", "UPDATE_FAILED", "DELETING", "DELETE_FAILED"], # required
    #   }
    # @return [Types::DeleteRegistryResponse]
    def delete_registry(params = {}, options = {})
      request = build_request(:delete_registry, params)
      request.send_request(options)
    end

    # <p>Deletes a registry record. The record's status transitions to <code>DELETING</code> and the record is removed asynchronously.</p>
    # @param [Hash, Types::DeleteRegistryRecordRequest] params
    # @option params [String] :registry_id
    #   <p>The identifier of the registry containing the record. You can specify either the Amazon Resource Name (ARN) or the ID of the registry.</p>
    # @option params [String] :record_id
    #   <p>The identifier of the registry record to delete. You can specify either the Amazon Resource Name (ARN) or the ID of the record.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     registry_id: "RegistryIdentifier", # required
    #     record_id: "RecordIdentifier", # required
    #   }
    #   options = {}
    #   response = client.delete_registry_record(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteRegistryRecordResponse]
    def delete_registry_record(params = {}, options = {})
      request = build_request(:delete_registry_record, params)
      request.send_request(options)
    end

    # <p>Deletes the resource-based policy for a specified resource.</p> <note> <p>This feature is currently available only for AgentCore Runtime and Gateway.</p> </note>
    # @param [Hash, Types::DeleteResourcePolicyRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource for which to delete the resource policy.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "BedrockAgentcoreResourceArn", # required
    #   }
    #   options = {}
    #   response = client.delete_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteResourcePolicyResponse]
    def delete_resource_policy(params = {}, options = {})
      request = build_request(:delete_resource_policy, params)
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
    #     agent_runtime_name: "AgentRuntimeName", # required
    #     agent_runtime_id: "AgentRuntimeId", # required
    #     agent_runtime_version: "AgentRuntimeVersion", # required
    #     created_at: Time.now, # required
    #     last_updated_at: Time.now, # required
    #     role_arn: "RoleArn", # required
    #     network_configuration: {
    #       network_mode: "PUBLIC" # One of: ["PUBLIC", "VPC"], # required
    #       network_mode_config: {
    #         security_groups: ["SecurityGroupId"], # required
    #         subnets: ["SubnetId"], # required
    #         require_service_s3_endpoint: false
    #       }
    #     },
    #     status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "READY", "DELETING", "DELETE_FAILED"], # required
    #     lifecycle_configuration: { # required
    #       idle_runtime_session_timeout: 1,
    #       max_lifetime: 1
    #     },
    #     failure_reason: "String",
    #     description: "Description",
    #     workload_identity_details: {
    #       workload_identity_arn: "WorkloadIdentityArn", # required
    #     },
    #     agent_runtime_artifact: {
    #       # One of:
    #       container_configuration: {
    #         container_uri: "RuntimeContainerUri", # required
    #       },
    #       code_configuration: {
    #         code: { # required
    #           # One of:
    #           s3: {
    #             bucket: "String", # required
    #             prefix: "String", # required
    #             version_id: "String"
    #           }
    #         },
    #         runtime: "PYTHON_3_10" # One of: ["PYTHON_3_10", "PYTHON_3_11", "PYTHON_3_12", "PYTHON_3_13", "PYTHON_3_14", "NODE_22"], # required
    #         entry_point: ["entryPoint"], # required
    #       }
    #     },
    #     protocol_configuration: {
    #       server_protocol: "MCP" # One of: ["MCP", "HTTP", "A2A", "AGUI"], # required
    #     },
    #     environment_variables: {
    #       "EnvironmentVariableKey" => "EnvironmentVariableValue"
    #     },
    #     authorizer_configuration: {
    #       # One of:
    #       custom_jwt_authorizer: {
    #         discovery_url: "DiscoveryUrl", # required
    #         allowed_audience: ["AllowedAudience"],
    #         allowed_clients: ["AllowedClient"],
    #         allowed_scopes: ["AllowedScopeType"],
    #         advertised_scope_mapping: {
    #           "AllowedScopeType" => "AllowedScopeType"
    #         },
    #         custom_claims: [
    #           {
    #             inbound_token_claim_name: "InboundTokenClaimNameType", # required
    #             inbound_token_claim_value_type: "STRING" # One of: ["STRING", "STRING_ARRAY"], # required
    #             authorizing_claim_match_value: { # required
    #               claim_match_value: { # required
    #                 # One of:
    #                 match_value_string: "MatchValueString",
    #                 match_value_string_list: ["MatchValueString"]
    #               },
    #               claim_match_operator: "EQUALS" # One of: ["EQUALS", "CONTAINS", "CONTAINS_ANY"], # required
    #             }
    #           }
    #         ],
    #         private_endpoint: {
    #           # One of:
    #           self_managed_lattice_resource: {
    #             # One of:
    #             resource_configuration_identifier: "ResourceConfigurationIdentifier"
    #           },
    #           managed_vpc_resource: {
    #             vpc_identifier: "VpcIdentifier", # required
    #             subnet_ids: ["SubnetId"], # required
    #             endpoint_ip_address_type: "IPV4" # One of: ["IPV4", "IPV6"], # required
    #             security_group_ids: ["SecurityGroupIdentifier"],
    #             tags: {
    #               "TagKey" => "TagValue"
    #             },
    #             routing_domain: "RoutingDomain"
    #           }
    #         },
    #         private_endpoint_overrides: [
    #           {
    #             domain: "PrivateEndpointOverrideDomain", # required
    #             private_endpoint: { # required
    #               # One of:
    #               self_managed_lattice_resource: {
    #                 # One of:
    #                 resource_configuration_identifier: "ResourceConfigurationIdentifier"
    #               },
    #               managed_vpc_resource: {
    #                 vpc_identifier: "VpcIdentifier", # required
    #                 subnet_ids: ["SubnetId"], # required
    #                 endpoint_ip_address_type: "IPV4" # One of: ["IPV4", "IPV6"], # required
    #                 security_group_ids: ["SecurityGroupIdentifier"],
    #                 tags: {
    #                   "TagKey" => "TagValue"
    #                 },
    #                 routing_domain: "RoutingDomain"
    #               }
    #             }
    #           }
    #         ],
    #         allowed_workload_configuration: {
    #           hosting_environments: [
    #             {
    #               arn: "BedrockAgentcoreResourceArn", # required
    #             }
    #           ],
    #           workload_identities: ["WorkloadIdentityNameType"]
    #         }
    #       }
    #     },
    #     request_header_configuration: {
    #       # One of:
    #       request_header_allowlist: ["HeaderName"]
    #     },
    #     metadata_configuration: {
    #       require_mmdsv2: false, # required
    #     },
    #     filesystem_configurations: [{
    #       # One of:
    #       session_storage: {
    #         mount_path: "MountPath", # required
    #       },
    #       s3_files_access_point: {
    #         access_point_arn: "S3FilesAccessPointArn", # required
    #         mount_path: "MountPath", # required
    #       },
    #       efs_access_point: {
    #         access_point_arn: "EfsAccessPointArn", # required
    #         mount_path: "MountPath", # required
    #       },
    #       capacity_provider_volume: {
    #         volume_name: "CapacityProviderVolumeName", # required
    #         mount_path: "MountPath", # required
    #       }
    #     }],
    #     capacity_provider_configuration: {
    #       capacity_provider_arn: "CapacityProviderArn", # required
    #     },
    #     platform_version: "PlatformVersion"
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
    #     status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "READY", "DELETING", "DELETE_FAILED"], # required
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
    #     api_key_secret_json_key: "SecretJsonKeyType",
    #     api_key_secret_source: "MANAGED" # One of: ["MANAGED", "EXTERNAL"],
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
    #         require_service_s3_endpoint: false
    #       }
    #     },
    #     recording: {
    #       enabled: false,
    #       s3_location: {
    #         bucket: "String", # required
    #         prefix: "String", # required
    #         version_id: "String"
    #       }
    #     },
    #     browser_signing: {
    #       enabled: false, # required
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
    #             secret_arn: "ToolSecretArn", # required
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

    # <p>Gets information about a browser profile.</p>
    # @param [Hash, Types::GetBrowserProfileRequest] params
    # @option params [String] :profile_id
    #   <p>The unique identifier of the browser profile to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     profile_id: "BrowserProfileId", # required
    #   }
    #   options = {}
    #   response = client.get_browser_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     profile_id: "BrowserProfileId", # required
    #     profile_arn: "BrowserProfileArn", # required
    #     name: "BrowserProfileName", # required
    #     description: "Description",
    #     status: "READY" # One of: ["READY", "DELETING", "DELETED", "SAVING"], # required
    #     created_at: Time.now, # required
    #     last_updated_at: Time.now, # required
    #     last_saved_at: Time.now,
    #     last_saved_browser_session_id: "BrowserSessionId",
    #     last_saved_browser_id: "BrowserId"
    #   }
    # @return [Types::GetBrowserProfileResponse]
    def get_browser_profile(params = {}, options = {})
      request = build_request(:get_browser_profile, params)
      request.send_request(options)
    end

    # <p>Retrieves information about a capacity provider, including its status, permissions configuration, and compute configuration.</p>
    # @param [Hash, Types::GetCapacityProviderInput] params
    # @option params [String] :capacity_provider_id
    #   <p>The unique identifier of the capacity provider.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     capacity_provider_id: "CapacityProviderId", # required
    #   }
    #   options = {}
    #   response = client.get_capacity_provider(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     capacity_provider_id: "CapacityProviderId", # required
    #     capacity_provider_arn: "CapacityProviderArn", # required
    #     name: "CapacityProviderName", # required
    #     status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "READY", "DELETING", "DELETE_FAILED"], # required
    #     description: "Description",
    #     status_code: "VALIDATION_ERROR" # One of: ["VALIDATION_ERROR", "QUOTA_EXCEEDED", "THROTTLED", "INTERNAL_SERVER_EXCEPTION"],
    #     status_reason: "String",
    #     permissions_configuration: { # required
    #       capacity_provider_operator_role_arn: "RoleArn", # required
    #     },
    #     compute_configuration: { # required
    #       # One of:
    #       ec2_configuration: {
    #         launch_template_source: { # required
    #           # One of:
    #           launch_parameters: {
    #             operating_system: "LINUX_X86_64" # One of: ["LINUX_X86_64", "LINUX_ARM64"], # required
    #             instance_requirements: { # required
    #               allowed_instance_types: ["EC2InstanceType"], # required
    #             },
    #             ephemeral_volumes: [
    #               {
    #                 device_name: "DeviceName",
    #                 virtual_name: "VirtualDeviceName",
    #                 ebs: {
    #                   volume_type: "standard" # One of: ["standard", "io1", "io2", "gp2", "sc1", "st1", "gp3"],
    #                   iops: 1,
    #                   throughput: 1,
    #                   encrypted: false,
    #                   kms_key_id: "KmsKeyId",
    #                   snapshot_id: "EbsSnapshotId",
    #                   volume_size: 1,
    #                   volume_initialization_rate: 1,
    #                   ebs_card_index: 1
    #                 }
    #               }
    #             ],
    #             monitoring: "BASIC" # One of: ["BASIC", "DETAILED"],
    #             license_specifications: [
    #               {
    #                 license_configuration_arn: "LicenseConfigurationArn", # required
    #               }
    #             ],
    #             capacity_reservation_specification: {
    #               capacity_reservation_preference: "capacity-reservations-only" # One of: ["capacity-reservations-only", "open", "none"],
    #               capacity_reservation_target: {
    #                 capacity_reservation_id: "CapacityReservationId",
    #                 capacity_reservation_resource_group_arn: "CapacityReservationResourceGroupArn"
    #               }
    #             },
    #             ssh_key_name: "SSHKeyName",
    #             instance_profile_arn: "InstanceProfileArn",
    #             propagated_tags: {
    #               "TagKey" => "TagValue"
    #             }
    #           }
    #         },
    #         vpc_configuration: { # required
    #           subnets: ["SubnetId"], # required
    #           security_groups: ["SecurityGroupId"], # required
    #         },
    #         volumes: [{
    #           # One of:
    #           ebs_configuration: {
    #             name: "VolumeName", # required
    #             size_gi_b: 1, # required
    #             volume_type: "standard" # One of: ["standard", "io1", "io2", "gp2", "sc1", "st1", "gp3"],
    #             iops: 1,
    #             throughput: 1,
    #             encrypted: false,
    #             kms_key_id: "KmsKeyId",
    #             snapshot_id: "EbsSnapshotId"
    #           }
    #         }],
    #         lifecycle_configuration: {
    #           idle_instance_timeout: 1,
    #           max_lifetime: 1
    #         },
    #         root_volume: {
    #           volume_type: "standard" # One of: ["standard", "io1", "io2", "gp2", "sc1", "st1", "gp3"],
    #           iops: 1,
    #           throughput: 1,
    #           encrypted: false,
    #           kms_key_id: "KmsKeyId",
    #           free_space_gi_b: 1
    #         }
    #       }
    #     },
    #     created_at: Time.now, # required
    #     last_updated_at: Time.now, # required
    #   }
    # @return [Types::GetCapacityProviderOutput]
    def get_capacity_provider(params = {}, options = {})
      request = build_request(:get_capacity_provider, params)
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
    #         require_service_s3_endpoint: false
    #       }
    #     },
    #     status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "READY", "DELETING", "DELETE_FAILED", "DELETED"], # required
    #     certificates: [
    #       {
    #         location: { # required
    #           # One of:
    #           secrets_manager: {
    #             secret_arn: "ToolSecretArn", # required
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
    #     failure_reason: "String",
    #     created_at: Time.now, # required
    #     last_updated_at: Time.now, # required
    #   }
    # @return [Types::GetCodeInterpreterResponse]
    def get_code_interpreter(params = {}, options = {})
      request = build_request(:get_code_interpreter, params)
      request.send_request(options)
    end

    # <p>Gets the latest version of a configuration bundle. By default, returns the latest version on the mainline branch. Use <code>GetConfigurationBundleVersion</code> to retrieve a specific historical version.</p>
    # @param [Hash, Types::GetConfigurationBundleRequest] params
    # @option params [String] :bundle_id
    #   <p>The unique identifier of the configuration bundle to retrieve.</p>
    # @option params [String] :branch_name
    #   <p>The branch name to get the latest version from. If not specified, returns the latest version on the mainline branch.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     bundle_id: "ConfigurationBundleId", # required
    #     branch_name: "BranchName"
    #   }
    #   options = {}
    #   response = client.get_configuration_bundle(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     bundle_arn: "ConfigurationBundleArn", # required
    #     bundle_id: "ConfigurationBundleId", # required
    #     bundle_name: "ConfigurationBundleName", # required
    #     description: "ConfigurationBundleDescription",
    #     version_id: "ConfigurationBundleVersion", # required
    #     components: { # required
    #       "ComponentIdentifier" => {
    #         configuration: ""null"", # required
    #       }
    #     },
    #     lineage_metadata: {
    #       parent_version_ids: ["ConfigurationBundleVersion"],
    #       branch_name: "BranchName",
    #       created_by: {
    #         name: "String", # required
    #         arn: "String"
    #       },
    #       commit_message: "String"
    #     },
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #     kms_key_arn: "KmsKeyArn"
    #   }
    # @return [Types::GetConfigurationBundleResponse]
    def get_configuration_bundle(params = {}, options = {})
      request = build_request(:get_configuration_bundle, params)
      request.send_request(options)
    end

    # <p>Gets a specific version of a configuration bundle by its version identifier.</p>
    # @param [Hash, Types::GetConfigurationBundleVersionRequest] params
    # @option params [String] :bundle_id
    #   <p>The unique identifier of the configuration bundle.</p>
    # @option params [String] :version_id
    #   <p>The version identifier of the configuration bundle version to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     bundle_id: "ConfigurationBundleId", # required
    #     version_id: "ConfigurationBundleVersion", # required
    #   }
    #   options = {}
    #   response = client.get_configuration_bundle_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     bundle_arn: "ConfigurationBundleArn", # required
    #     bundle_id: "ConfigurationBundleId", # required
    #     bundle_name: "ConfigurationBundleName", # required
    #     description: "ConfigurationBundleDescription",
    #     version_id: "ConfigurationBundleVersion", # required
    #     components: { # required
    #       "ComponentIdentifier" => {
    #         configuration: ""null"", # required
    #       }
    #     },
    #     lineage_metadata: {
    #       parent_version_ids: ["ConfigurationBundleVersion"],
    #       branch_name: "BranchName",
    #       created_by: {
    #         name: "String", # required
    #         arn: "String"
    #       },
    #       commit_message: "String"
    #     },
    #     created_at: Time.now, # required
    #     version_created_at: Time.now, # required
    #     kms_key_arn: "KmsKeyArn"
    #   }
    # @return [Types::GetConfigurationBundleVersionResponse]
    def get_configuration_bundle_version(params = {}, options = {})
      request = build_request(:get_configuration_bundle_version, params)
      request.send_request(options)
    end

    # <p>Retrieves information about a consent portal.</p>
    # @param [Hash, Types::GetConsentPortalRequest] params
    # @option params [String] :consent_portal_identifier
    #   <p>The identifier of the consent portal. You can specify either the consent portal ID or its Amazon Resource Name (ARN).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     consent_portal_identifier: "ConsentPortalIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_consent_portal(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     sources: [ # required
    #       {
    #         identifier: "ConsentPortalSourceIdentifierType", # required
    #         type: "agentcore-gateway" # One of: ["agentcore-gateway"], # required
    #       }
    #     ],
    #     consent_portal_arn: "ConsentPortalArnType", # required
    #     consent_portal_id: "ConsentPortalIdType", # required
    #     created_at: Time.now, # required
    #     description: "ConsentPortalDescriptionType",
    #     execution_role_arn: "ExecutionRoleArnType", # required
    #     idp_config: { # required
    #       credential_provider_arn: "OAuth2CredentialProviderArn", # required
    #       scopes: ["AllowedScopeType"], # required
    #       audience: "AllowedAudienceType"
    #     },
    #     name: "ConsentPortalNameType", # required
    #     portal_url: "PortalUrlType",
    #     status: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "UPDATE_FAILED", "DELETING", "FAILED"], # required
    #     status_reason: "StatusReasonType",
    #     updated_at: Time.now, # required
    #   }
    # @return [Types::GetConsentPortalResponse]
    def get_consent_portal(params = {}, options = {})
      request = build_request(:get_consent_portal, params)
      request.send_request(options)
    end

    # <p> Retrieves dataset metadata. Use the <code>datasetVersion</code> query parameter to retrieve a specific version's metadata. If absent, defaults to DRAFT. For paginated example content, use <code>ListDatasetExamples</code>. </p>
    # @param [Hash, Types::GetDatasetRequest] params
    # @option params [String] :dataset_id
    #   <p> The unique identifier of the dataset to retrieve. </p>
    # @option params [String] :dataset_version
    #   <p> Version to retrieve: "DRAFT" or a version number. Defaults to DRAFT if absent. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     dataset_id: "DatasetId", # required
    #     dataset_version: "DatasetVersion"
    #   }
    #   options = {}
    #   response = client.get_dataset(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dataset_arn: "DatasetArn", # required
    #     dataset_id: "DatasetId", # required
    #     dataset_version: "DatasetVersion", # required
    #     dataset_name: "DatasetName", # required
    #     description: "String",
    #     status: "CREATING" # One of: ["CREATING", "UPDATING", "DELETING", "ACTIVE", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED"], # required
    #     draft_status: "MODIFIED" # One of: ["MODIFIED", "UNMODIFIED"],
    #     failure_reason: "String",
    #     schema_type: "AGENTCORE_EVALUATION_PREDEFINED_V1" # One of: ["AGENTCORE_EVALUATION_PREDEFINED_V1", "AGENTCORE_EVALUATION_SIMULATED_V1", "THIRD_PARTY_EVALUATION_V1"], # required
    #     kms_key_arn: "KmsKeyArn",
    #     example_count: 1, # required
    #     download_url: "DownloadUrl",
    #     download_url_expires_at: Time.now,
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::GetDatasetResponse]
    def get_dataset(params = {}, options = {})
      request = build_request(:get_dataset, params)
      request.send_request(options)
    end

    # <p> Retrieves detailed information about an evaluator, including its configuration, status, and metadata. Works with both built-in and custom evaluators. </p>
    # @param [Hash, Types::GetEvaluatorRequest] params
    # @option params [String] :evaluator_id
    #   <p> The unique identifier of the evaluator to retrieve. Can be a built-in evaluator ID (e.g., Builtin.Helpfulness) or a custom evaluator ID. </p>
    # @option params [String] :included_data
    #   <p> Controls which data is returned in the response. <code>ALL_DATA</code> (default) returns the full evaluator including decrypted instructions and rating scale. For evaluators encrypted with a customer managed KMS key, this requires <code>kms:Decrypt</code> permission on the key. <code>METADATA_ONLY</code> returns evaluator metadata and model configuration without instructions or rating scale, and does not require any KMS permissions. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     evaluator_id: "EvaluatorId", # required
    #     included_data: "ALL_DATA" # One of: ["ALL_DATA", "METADATA_ONLY"]
    #   }
    #   options = {}
    #   response = client.get_evaluator(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     evaluator_arn: "EvaluatorArn", # required
    #     evaluator_id: "EvaluatorId", # required
    #     evaluator_name: "EvaluatorName", # required
    #     description: "EvaluatorDescription",
    #     evaluator_config: { # required
    #       # One of:
    #       llm_as_a_judge: {
    #         instructions: "EvaluatorInstructions", # required
    #         rating_scale: { # required
    #           # One of:
    #           numerical: [
    #             {
    #               definition: "String", # required
    #               value: 1.0, # required
    #               label: "String", # required
    #             }
    #           ],
    #           categorical: [
    #             {
    #               definition: "String", # required
    #               label: "String", # required
    #             }
    #           ]
    #         },
    #         model_config: { # required
    #           # One of:
    #           bedrock_evaluator_model_config: {
    #             model_id: "ModelId", # required
    #             inference_config: {
    #               max_tokens: 1,
    #               temperature: 1.0,
    #               top_p: 1.0,
    #               stop_sequences: ["NonEmptyString"]
    #             },
    #             additional_model_request_fields: ""null""
    #           },
    #           responses_evaluator_model_config: {
    #             model_id: "ModelId", # required
    #             max_output_tokens: 1,
    #             temperature: 1.0,
    #             top_p: 1.0,
    #             reasoning: {
    #               effort: "String"
    #             }
    #           }
    #         }
    #       },
    #       code_based: {
    #         # One of:
    #         lambda_config: {
    #           lambda_arn: "LambdaArn", # required
    #           lambda_timeout_in_seconds: 1
    #         }
    #       },
    #       derived: {
    #         base_evaluator_id: "EvaluatorId", # required
    #         model_config: { # required
    #           # One of:
    #           bedrock_evaluator_model_config: {
    #             model_id: "ModelId", # required
    #             inference_config: {
    #               max_tokens: 1,
    #               temperature: 1.0,
    #               top_p: 1.0,
    #               stop_sequences: ["NonEmptyString"]
    #             },
    #             additional_model_request_fields: ""null""
    #           },
    #           responses_evaluator_model_config: {
    #             model_id: "ModelId", # required
    #             max_output_tokens: 1,
    #             temperature: 1.0,
    #             top_p: 1.0,
    #             reasoning: {
    #               effort: "String"
    #             }
    #           }
    #         }
    #       }
    #     },
    #     evaluator_type: "Builtin" # One of: ["Builtin", "ThirdParty", "Custom", "CustomCode", "CustomDerived"],
    #     provider: "AWS" # One of: ["AWS", "DeepEval", "AutoEval", "Custom"],
    #     level: "TOOL_CALL" # One of: ["TOOL_CALL", "TRACE", "SESSION"], # required
    #     status: "ACTIVE" # One of: ["ACTIVE", "CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "DELETING"], # required
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #     locked_for_modification: false,
    #     kms_key_arn: "KmsKeyArn"
    #   }
    # @return [Types::GetEvaluatorResponse]
    def get_evaluator(params = {}, options = {})
      request = build_request(:get_evaluator, params)
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
    #     protocol_type: "MCP" # One of: ["MCP"],
    #     protocol_configuration: {
    #       # One of:
    #       mcp: {
    #         supported_versions: ["McpVersion"],
    #         instructions: "McpInstructions",
    #         search_type: "SEMANTIC" # One of: ["SEMANTIC"],
    #         session_configuration: {
    #           session_timeout_in_seconds: 1
    #         },
    #         streaming_configuration: {
    #           enable_response_streaming: false
    #         },
    #         disable_mcp_list_tools_pagination: false
    #       }
    #     },
    #     authorizer_type: "CUSTOM_JWT" # One of: ["CUSTOM_JWT", "AWS_IAM", "NONE", "AUTHENTICATE_ONLY"], # required
    #     authorizer_configuration: {
    #       # One of:
    #       custom_jwt_authorizer: {
    #         discovery_url: "DiscoveryUrl", # required
    #         allowed_audience: ["AllowedAudience"],
    #         allowed_clients: ["AllowedClient"],
    #         allowed_scopes: ["AllowedScopeType"],
    #         advertised_scope_mapping: {
    #           "AllowedScopeType" => "AllowedScopeType"
    #         },
    #         custom_claims: [
    #           {
    #             inbound_token_claim_name: "InboundTokenClaimNameType", # required
    #             inbound_token_claim_value_type: "STRING" # One of: ["STRING", "STRING_ARRAY"], # required
    #             authorizing_claim_match_value: { # required
    #               claim_match_value: { # required
    #                 # One of:
    #                 match_value_string: "MatchValueString",
    #                 match_value_string_list: ["MatchValueString"]
    #               },
    #               claim_match_operator: "EQUALS" # One of: ["EQUALS", "CONTAINS", "CONTAINS_ANY"], # required
    #             }
    #           }
    #         ],
    #         private_endpoint: {
    #           # One of:
    #           self_managed_lattice_resource: {
    #             # One of:
    #             resource_configuration_identifier: "ResourceConfigurationIdentifier"
    #           },
    #           managed_vpc_resource: {
    #             vpc_identifier: "VpcIdentifier", # required
    #             subnet_ids: ["SubnetId"], # required
    #             endpoint_ip_address_type: "IPV4" # One of: ["IPV4", "IPV6"], # required
    #             security_group_ids: ["SecurityGroupIdentifier"],
    #             tags: {
    #               "TagKey" => "TagValue"
    #             },
    #             routing_domain: "RoutingDomain"
    #           }
    #         },
    #         private_endpoint_overrides: [
    #           {
    #             domain: "PrivateEndpointOverrideDomain", # required
    #             private_endpoint: { # required
    #               # One of:
    #               self_managed_lattice_resource: {
    #                 # One of:
    #                 resource_configuration_identifier: "ResourceConfigurationIdentifier"
    #               },
    #               managed_vpc_resource: {
    #                 vpc_identifier: "VpcIdentifier", # required
    #                 subnet_ids: ["SubnetId"], # required
    #                 endpoint_ip_address_type: "IPV4" # One of: ["IPV4", "IPV6"], # required
    #                 security_group_ids: ["SecurityGroupIdentifier"],
    #                 tags: {
    #                   "TagKey" => "TagValue"
    #                 },
    #                 routing_domain: "RoutingDomain"
    #               }
    #             }
    #           }
    #         ],
    #         allowed_workload_configuration: {
    #           hosting_environments: [
    #             {
    #               arn: "BedrockAgentcoreResourceArn", # required
    #             }
    #           ],
    #           workload_identities: ["WorkloadIdentityNameType"]
    #         }
    #       }
    #     },
    #     kms_key_arn: "KmsKeyArn",
    #     custom_transform_configuration: {
    #       lambda: {
    #         arn: "LambdaFunctionArn"
    #       }
    #     },
    #     interceptor_configurations: [
    #       {
    #         interceptor: { # required
    #           # One of:
    #           lambda: {
    #             arn: "LambdaFunctionArn", # required
    #           }
    #         },
    #         interception_points: ["REQUEST" # One of: ["REQUEST", "RESPONSE"]], # required
    #         input_configuration: {
    #           pass_request_headers: false, # required
    #           payload_filter: {
    #             exclude: [{ # required
    #               # One of:
    #               field: "RESPONSE_BODY" # One of: ["RESPONSE_BODY"]
    #             }]
    #           }
    #         }
    #       }
    #     ],
    #     policy_engine_configuration: {
    #       arn: "GatewayPolicyEngineArn", # required
    #       mode: "LOG_ONLY" # One of: ["LOG_ONLY", "ENFORCE"], # required
    #     },
    #     workload_identity_details: {
    #       workload_identity_arn: "WorkloadIdentityArn", # required
    #     },
    #     exception_level: "DEBUG" # One of: ["DEBUG"],
    #     web_acl_arn: "WebAclArn",
    #     waf_configuration: {
    #       failure_mode: "FAIL_CLOSE" # One of: ["FAIL_CLOSE", "FAIL_OPEN"]
    #     }
    #   }
    # @return [Types::GetGatewayResponse]
    def get_gateway(params = {}, options = {})
      request = build_request(:get_gateway, params)
      request.send_request(options)
    end

    # <p>Retrieves information about a gateway rate limit.</p>
    # @param [Hash, Types::GetGatewayRateLimitRequest] params
    # @option params [String] :gateway_identifier
    #   <p>The unique identifier of the gateway.</p>
    # @option params [String] :rate_limit_id
    #   <p>The unique identifier of the rate limit to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_identifier: "GatewayIdentifier", # required
    #     rate_limit_id: "GatewayRateLimitId", # required
    #   }
    #   options = {}
    #   response = client.get_gateway_rate_limit(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rate_limit_id: "GatewayRateLimitId", # required
    #     gateway_identifier: "GatewayIdentifier", # required
    #     description: "GatewayRateLimitDescription",
    #     dimension_keys: ["DimensionKey"], # required
    #     entries: [ # required
    #       {
    #         dimensions: { # required
    #           "DimensionKey" => "DimensionValue"
    #         },
    #         requests: [
    #           {
    #             rate: 1.0, # required
    #             period: "second" # One of: ["second", "minute"], # required
    #           }
    #         ],
    #         tokens: [
    #           {
    #             rate: 1.0, # required
    #             period: "second" # One of: ["second", "minute"], # required
    #           }
    #         ],
    #         connections: [
    #           {
    #             rate: 1.0, # required
    #             period: "second" # One of: ["second", "minute"], # required
    #           }
    #         ]
    #       }
    #     ],
    #     status: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "DELETING"], # required
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #   }
    # @return [Types::GetGatewayRateLimitResponse]
    def get_gateway_rate_limit(params = {}, options = {})
      request = build_request(:get_gateway_rate_limit, params)
      request.send_request(options)
    end

    # <p>Retrieves detailed information about a specific gateway rule.</p>
    # @param [Hash, Types::GetGatewayRuleRequest] params
    # @option params [String] :gateway_identifier
    #   <p>The identifier of the gateway containing the rule.</p>
    # @option params [String] :rule_id
    #   <p>The unique identifier of the rule to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_identifier: "GatewayIdentifier", # required
    #     rule_id: "GatewayRuleId", # required
    #   }
    #   options = {}
    #   response = client.get_gateway_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rule_id: "GatewayRuleId", # required
    #     gateway_arn: "GatewayArn", # required
    #     priority: 1, # required
    #     conditions: [{
    #       # One of:
    #       match_principals: {
    #         any_of: [{ # required
    #           # One of:
    #           iam_principal: {
    #             arn: "IamPrincipalArn", # required
    #             operator: "StringEquals" # One of: ["StringEquals", "StringLike"]
    #           }
    #         }]
    #       },
    #       match_paths: {
    #         any_of: ["MatchPathPattern"], # required
    #       }
    #     }],
    #     actions: [{ # required
    #       # One of:
    #       configuration_bundle: {
    #         # One of:
    #         static_override: {
    #           bundle_arn: "GatewayConfigurationBundleArn", # required
    #           bundle_version: "String", # required
    #         },
    #         weighted_override: {
    #           traffic_split: [ # required
    #             {
    #               name: "String", # required
    #               weight: 1, # required
    #               configuration_bundle: { # required
    #                 bundle_arn: "GatewayConfigurationBundleArn", # required
    #                 bundle_version: "String", # required
    #               },
    #               description: "String",
    #               metadata: {
    #                 "TrafficSplitMetadataKey" => "TrafficSplitMetadataValue"
    #               }
    #             }
    #           ]
    #         }
    #       },
    #       route_to_target: {
    #         # One of:
    #         static_route: {
    #           target_name: "TargetName", # required
    #         },
    #         weighted_route: {
    #           traffic_split: [ # required
    #             {
    #               name: "String", # required
    #               weight: 1, # required
    #               target_name: "TargetName", # required
    #               description: "String",
    #               metadata: {
    #                 "TrafficSplitMetadataKey" => "TrafficSplitMetadataValue"
    #               }
    #             }
    #           ]
    #         }
    #       }
    #     }],
    #     description: "GatewayRuleDescription",
    #     created_at: Time.now, # required
    #     status: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "DELETING"], # required
    #     system: {
    #       managed_by: "String", # required
    #     },
    #     updated_at: Time.now
    #   }
    # @return [Types::GetGatewayRuleResponse]
    def get_gateway_rule(params = {}, options = {})
      request = build_request(:get_gateway_rule, params)
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
    #     status: "CREATING" # One of: ["CREATING", "UPDATING", "UPDATE_UNSUCCESSFUL", "DELETING", "READY", "FAILED", "SYNCHRONIZING", "SYNCHRONIZE_UNSUCCESSFUL", "CREATE_PENDING_AUTH", "UPDATE_PENDING_AUTH", "SYNCHRONIZE_PENDING_AUTH"], # required
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
    #         },
    #         mcp_server: {
    #           endpoint: "String", # required
    #           mcp_tool_schema: {
    #             # One of:
    #             s3: {
    #               uri: "S3BucketUri",
    #               bucket_owner_account_id: "AwsAccountId"
    #             },
    #             inline_payload: "InlinePayload"
    #           },
    #           listing_mode: "DEFAULT" # One of: ["DEFAULT", "DYNAMIC"],
    #           resource_priority: 1
    #         },
    #         api_gateway: {
    #           rest_api_id: "String", # required
    #           stage: "String", # required
    #           api_gateway_tool_configuration: { # required
    #             tool_overrides: [
    #               {
    #                 name: "String", # required
    #                 description: "String",
    #                 path: "String", # required
    #                 method: "GET" # One of: ["GET", "DELETE", "HEAD", "OPTIONS", "PATCH", "PUT", "POST"], # required
    #               }
    #             ],
    #             tool_filters: [ # required
    #               {
    #                 filter_path: "String", # required
    #                 methods: ["GET" # One of: ["GET", "DELETE", "HEAD", "OPTIONS", "PATCH", "PUT", "POST"]], # required
    #               }
    #             ]
    #           }
    #         },
    #         connector: {
    #           source: { # required
    #             connector_id: "ConnectorId", # required
    #             version: "ConnectorVersion"
    #           },
    #           enabled: ["String"],
    #           configurations: [
    #             {
    #               name: "String", # required
    #               description: "String",
    #               parameter_values: ""null"",
    #               parameter_overrides: [
    #                 {
    #                   path: "String", # required
    #                   description: "String",
    #                   visible: false
    #                 }
    #               ]
    #             }
    #           ]
    #         }
    #       },
    #       http: {
    #         # One of:
    #         agentcore_runtime: {
    #           arn: "RuntimeArn", # required
    #           qualifier: "RuntimeQualifier",
    #           schema: {
    #             source: { # required
    #               # One of:
    #               s3: {
    #                 uri: "S3BucketUri",
    #                 bucket_owner_account_id: "AwsAccountId"
    #               },
    #               inline_payload: "InlinePayload"
    #             }
    #           }
    #         },
    #         passthrough: {
    #           endpoint: "PassthroughEndpoint", # required
    #           protocol_type: "MCP" # One of: ["MCP", "A2A", "INFERENCE", "CUSTOM"], # required
    #           schema: {
    #             source: { # required
    #               # One of:
    #               s3: {
    #                 uri: "S3BucketUri",
    #                 bucket_owner_account_id: "AwsAccountId"
    #               },
    #               inline_payload: "InlinePayload"
    #             }
    #           },
    #           stickiness_configuration: {
    #             identifier: "String", # required
    #             timeout: 1,
    #             composite_identifier: ["CompositeIdentifierEntry"]
    #           },
    #           static_query_parameters: {
    #             "StaticQueryParameterName" => "StaticQueryParameterValue"
    #           },
    #           static_query_parameter_conflict_resolution: "CLIENT_OVERRIDE" # One of: ["CLIENT_OVERRIDE", "STATIC_OVERRIDE"]
    #         },
    #         connector: {
    #           source: { # required
    #             connector_id: "ConnectorId", # required
    #           },
    #           parameters: {
    #             "ConnectorParameterName" => "ConnectorParameterValue"
    #           }
    #         }
    #       },
    #       inference: {
    #         # One of:
    #         connector: {
    #           source: { # required
    #             connector_id: "InferenceConnectorId", # required
    #           }
    #         },
    #         provider: {
    #           endpoint: "PassthroughEndpoint", # required
    #           model_mapping: {
    #             provider_prefix: {
    #               strip: false,
    #               separator: "String"
    #             }
    #           },
    #           operations: [
    #             {
    #               path: "InferenceOperationPath", # required
    #               provider_path: "InferenceOperationPath",
    #               models: [
    #                 {
    #                   model: "ModelPattern", # required
    #                 }
    #               ]
    #             }
    #           ]
    #         }
    #       }
    #     },
    #     credential_provider_configurations: [ # required
    #       {
    #         credential_provider_type: "GATEWAY_IAM_ROLE" # One of: ["GATEWAY_IAM_ROLE", "OAUTH", "API_KEY", "CALLER_IAM_CREDENTIALS", "JWT_PASSTHROUGH"], # required
    #         credential_provider: {
    #           # One of:
    #           oauth_credential_provider: {
    #             provider_arn: "OAuthCredentialProviderArn", # required
    #             scopes: ["OAuthScope"], # required
    #             custom_parameters: {
    #               "OAuthCustomParametersKey" => "OAuthCustomParametersValue"
    #             },
    #             grant_type: "CLIENT_CREDENTIALS" # One of: ["CLIENT_CREDENTIALS", "AUTHORIZATION_CODE", "TOKEN_EXCHANGE"],
    #             default_return_url: "OAuthDefaultReturnUrl"
    #           },
    #           api_key_credential_provider: {
    #             provider_arn: "ApiKeyCredentialProviderArn", # required
    #             credential_parameter_name: "ApiKeyCredentialParameterName",
    #             credential_prefix: "ApiKeyCredentialPrefix",
    #             credential_location: "HEADER" # One of: ["HEADER", "QUERY_PARAMETER"]
    #           },
    #           iam_credential_provider: {
    #             service: "String", # required
    #             region: "String"
    #           }
    #         }
    #       }
    #     ],
    #     last_synchronized_at: Time.now,
    #     metadata_configuration: {
    #       allowed_request_headers: ["HttpHeaderName"],
    #       allowed_query_parameters: ["HttpQueryParameterName"],
    #       allowed_response_headers: ["HttpHeaderName"]
    #     },
    #     private_endpoint: {
    #       # One of:
    #       self_managed_lattice_resource: {
    #         # One of:
    #         resource_configuration_identifier: "ResourceConfigurationIdentifier"
    #       },
    #       managed_vpc_resource: {
    #         vpc_identifier: "VpcIdentifier", # required
    #         subnet_ids: ["SubnetId"], # required
    #         endpoint_ip_address_type: "IPV4" # One of: ["IPV4", "IPV6"], # required
    #         security_group_ids: ["SecurityGroupIdentifier"],
    #         tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         routing_domain: "RoutingDomain"
    #       }
    #     },
    #     private_endpoint_managed_resources: [
    #       {
    #         domain: "DomainName",
    #         resource_gateway_arn: "ResourceGatewayArn",
    #         resource_association_arn: "ResourceAssociationArn"
    #       }
    #     ],
    #     authorization_data: {
    #       # One of:
    #       oauth2: {
    #         authorization_url: "String", # required
    #         user_id: "String"
    #       }
    #     },
    #     protocol_type: "MCP" # One of: ["MCP", "HTTP"],
    #     certificate_configurations: [{
    #       # One of:
    #       s3: {
    #         uri: "CertificateS3Uri", # required
    #         bucket_owner_account_id: "CertificateBucketOwnerAccountId"
    #       },
    #       secrets_manager: {
    #         secret_arn: "CertificateSecretArn", # required
    #       }
    #     }]
    #   }
    # @return [Types::GetGatewayTargetResponse]
    def get_gateway_target(params = {}, options = {})
      request = build_request(:get_gateway_target, params)
      request.send_request(options)
    end

    # <p>Operation to get a single harness.</p>
    # @param [Hash, Types::GetHarnessRequest] params
    # @option params [String] :harness_id
    #   <p>The ID of the harness to retrieve.</p>
    # @option params [String] :harness_version
    #   <p>Specific version of the harness to retrieve. If omitted, returns the current Harness configuration, including its status.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     harness_id: "HarnessId", # required
    #     harness_version: "HarnessVersion"
    #   }
    #   options = {}
    #   response = client.get_harness(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     harness: { # required
    #       harness_id: "HarnessId", # required
    #       harness_name: "HarnessName", # required
    #       arn: "HarnessArn", # required
    #       status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "READY", "DELETING", "DELETE_FAILED"], # required
    #       harness_version: "HarnessVersion",
    #       execution_role_arn: "RoleArn", # required
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       model: { # required
    #         # One of:
    #         bedrock_model_config: {
    #           model_id: "ModelId", # required
    #           max_tokens: 1,
    #           temperature: 1.0,
    #           top_p: 1.0,
    #           api_format: "converse_stream" # One of: ["converse_stream", "responses", "chat_completions"],
    #           additional_params: ""null""
    #         },
    #         open_ai_model_config: {
    #           model_id: "ModelId", # required
    #           api_key_arn: "ApiKeyArn", # required
    #           api_base: "HarnessOpenAiApiBase",
    #           max_tokens: 1,
    #           temperature: 1.0,
    #           top_p: 1.0,
    #           api_format: "chat_completions" # One of: ["chat_completions", "responses"],
    #           additional_params: ""null""
    #         },
    #         gemini_model_config: {
    #           model_id: "ModelId", # required
    #           api_key_arn: "ApiKeyArn", # required
    #           max_tokens: 1,
    #           temperature: 1.0,
    #           top_p: 1.0,
    #           top_k: 1,
    #           additional_params: ""null""
    #         },
    #         lite_llm_model_config: {
    #           model_id: "ModelId", # required
    #           api_key_arn: "ApiKeyArn",
    #           api_base: "HarnessLiteLlmApiBase",
    #           max_tokens: 1,
    #           temperature: 1.0,
    #           top_p: 1.0,
    #           additional_params: ""null""
    #         }
    #       },
    #       system_prompt: [{ # required
    #         # One of:
    #         text: "SensitiveText"
    #       }],
    #       tools: [ # required
    #         {
    #           type: "remote_mcp" # One of: ["remote_mcp", "agentcore_browser", "agentcore_gateway", "inline_function", "agentcore_code_interpreter"], # required
    #           name: "HarnessToolName",
    #           config: {
    #             # One of:
    #             remote_mcp: {
    #               url: "HarnessRemoteMcpUrl", # required
    #               headers: {
    #                 "HttpHeaderKey" => "HttpHeaderValue"
    #               }
    #             },
    #             agent_core_browser: {
    #               browser_arn: "HarnessBrowserArn"
    #             },
    #             agent_core_gateway: {
    #               gateway_arn: "GatewayArn", # required
    #               outbound_auth: {
    #                 # One of:
    #                 aws_iam: {
    #                 },
    #                 none: {
    #                 },
    #                 oauth: {
    #                   provider_arn: "OAuthCredentialProviderArn", # required
    #                   scopes: ["OAuthScope"], # required
    #                   custom_parameters: {
    #                     "OAuthCustomParametersKey" => "OAuthCustomParametersValue"
    #                   },
    #                   grant_type: "CLIENT_CREDENTIALS" # One of: ["CLIENT_CREDENTIALS", "AUTHORIZATION_CODE", "TOKEN_EXCHANGE"],
    #                   default_return_url: "OAuthDefaultReturnUrl"
    #                 }
    #               }
    #             },
    #             inline_function: {
    #               description: "HarnessInlineFunctionDescription", # required
    #               input_schema: ""null"", # required
    #             },
    #             agent_core_code_interpreter: {
    #               code_interpreter_arn: "HarnessCodeInterpreterArn"
    #             }
    #           }
    #         }
    #       ],
    #       skills: [{ # required
    #         # One of:
    #         path: "HarnessSkillPath",
    #         s3: {
    #           uri: "HarnessSkillS3Uri", # required
    #         },
    #         git: {
    #           url: "HarnessSkillGitUrl", # required
    #           path: "String",
    #           auth: {
    #             credential_arn: "ApiKeyArn", # required
    #             username: "String"
    #           }
    #         },
    #         aws_skills: {
    #           paths: ["HarnessAwsSkillPath"]
    #         }
    #       }],
    #       allowed_tools: ["HarnessAllowedTool"], # required
    #       truncation: { # required
    #         strategy: "sliding_window" # One of: ["sliding_window", "summarization", "none"], # required
    #         config: {
    #           # One of:
    #           sliding_window: {
    #             messages_count: 1
    #           },
    #           summarization: {
    #             summary_ratio: 1.0,
    #             preserve_recent_messages: 1,
    #             summarization_system_prompt: "String"
    #           }
    #         }
    #       },
    #       environment: { # required
    #         # One of:
    #         agent_core_runtime_environment: {
    #           agent_runtime_arn: "BedrockAgentcoreResourceArn", # required
    #           agent_runtime_name: "String", # required
    #           agent_runtime_id: "String", # required
    #           lifecycle_configuration: { # required
    #             idle_runtime_session_timeout: 1,
    #             max_lifetime: 1
    #           },
    #           network_configuration: { # required
    #             network_mode: "PUBLIC" # One of: ["PUBLIC", "VPC"], # required
    #             network_mode_config: {
    #               security_groups: ["SecurityGroupId"], # required
    #               subnets: ["SubnetId"], # required
    #               require_service_s3_endpoint: false
    #             }
    #           },
    #           filesystem_configurations: [{
    #             # One of:
    #             session_storage: {
    #               mount_path: "MountPath", # required
    #             },
    #             s3_files_access_point: {
    #               access_point_arn: "S3FilesAccessPointArn", # required
    #               mount_path: "MountPath", # required
    #             },
    #             efs_access_point: {
    #               access_point_arn: "EfsAccessPointArn", # required
    #               mount_path: "MountPath", # required
    #             },
    #             capacity_provider_volume: {
    #               volume_name: "CapacityProviderVolumeName", # required
    #               mount_path: "MountPath", # required
    #             }
    #           }]
    #         }
    #       },
    #       environment_artifact: {
    #         # One of:
    #         container_configuration: {
    #           container_uri: "RuntimeContainerUri", # required
    #         }
    #       },
    #       environment_variables: {
    #         "EnvironmentVariableKey" => "EnvironmentVariableValue"
    #       },
    #       authorizer_configuration: {
    #         # One of:
    #         custom_jwt_authorizer: {
    #           discovery_url: "DiscoveryUrl", # required
    #           allowed_audience: ["AllowedAudience"],
    #           allowed_clients: ["AllowedClient"],
    #           allowed_scopes: ["AllowedScopeType"],
    #           advertised_scope_mapping: {
    #             "AllowedScopeType" => "AllowedScopeType"
    #           },
    #           custom_claims: [
    #             {
    #               inbound_token_claim_name: "InboundTokenClaimNameType", # required
    #               inbound_token_claim_value_type: "STRING" # One of: ["STRING", "STRING_ARRAY"], # required
    #               authorizing_claim_match_value: { # required
    #                 claim_match_value: { # required
    #                   # One of:
    #                   match_value_string: "MatchValueString",
    #                   match_value_string_list: ["MatchValueString"]
    #                 },
    #                 claim_match_operator: "EQUALS" # One of: ["EQUALS", "CONTAINS", "CONTAINS_ANY"], # required
    #               }
    #             }
    #           ],
    #           private_endpoint: {
    #             # One of:
    #             self_managed_lattice_resource: {
    #               # One of:
    #               resource_configuration_identifier: "ResourceConfigurationIdentifier"
    #             },
    #             managed_vpc_resource: {
    #               vpc_identifier: "VpcIdentifier", # required
    #               subnet_ids: ["SubnetId"], # required
    #               endpoint_ip_address_type: "IPV4" # One of: ["IPV4", "IPV6"], # required
    #               security_group_ids: ["SecurityGroupIdentifier"],
    #               tags: {
    #                 "TagKey" => "TagValue"
    #               },
    #               routing_domain: "RoutingDomain"
    #             }
    #           },
    #           private_endpoint_overrides: [
    #             {
    #               domain: "PrivateEndpointOverrideDomain", # required
    #               private_endpoint: { # required
    #                 # One of:
    #                 self_managed_lattice_resource: {
    #                   # One of:
    #                   resource_configuration_identifier: "ResourceConfigurationIdentifier"
    #                 },
    #                 managed_vpc_resource: {
    #                   vpc_identifier: "VpcIdentifier", # required
    #                   subnet_ids: ["SubnetId"], # required
    #                   endpoint_ip_address_type: "IPV4" # One of: ["IPV4", "IPV6"], # required
    #                   security_group_ids: ["SecurityGroupIdentifier"],
    #                   tags: {
    #                     "TagKey" => "TagValue"
    #                   },
    #                   routing_domain: "RoutingDomain"
    #                 }
    #               }
    #             }
    #           ],
    #           allowed_workload_configuration: {
    #             hosting_environments: [
    #               {
    #                 arn: "BedrockAgentcoreResourceArn", # required
    #               }
    #             ],
    #             workload_identities: ["WorkloadIdentityNameType"]
    #           }
    #         }
    #       },
    #       memory: {
    #         # One of:
    #         agent_core_memory_configuration: {
    #           arn: "MemoryArn", # required
    #           actor_id: "String",
    #           messages_count: 1,
    #           retrieval_config: {
    #             "String" => {
    #               top_k: 1,
    #               relevance_score: 1.0,
    #               strategy_id: "String"
    #             }
    #           }
    #         },
    #         managed_memory_configuration: {
    #           arn: "MemoryArn",
    #           strategies: ["SEMANTIC" # One of: ["SEMANTIC", "SUMMARIZATION", "USER_PREFERENCE", "EPISODIC"]],
    #           event_expiry_duration: 1,
    #           encryption_key_arn: "KmsKeyArn"
    #         },
    #         disabled: {
    #         }
    #       },
    #       hooks: [{
    #         # One of:
    #         before_invocation: {
    #           name: "HarnessHookName", # required
    #           target: { # required
    #             # One of:
    #             lambda: {
    #               arn: "HarnessLambdaFunctionArn", # required
    #               timeout_seconds: 1,
    #               failure_mode: "allow" # One of: ["allow", "deny"]
    #             },
    #             sns: {
    #               arn: "HarnessSnsTopicArn", # required
    #             },
    #             event_bridge: {
    #               arn: "HarnessEventBridgeBusArn", # required
    #             }
    #           }
    #         },
    #         after_invocation: {
    #           name: "HarnessHookName", # required
    #           target: { # required
    #             # One of:
    #             lambda: {
    #               arn: "HarnessLambdaFunctionArn", # required
    #               timeout_seconds: 1,
    #               failure_mode: "allow" # One of: ["allow", "deny"]
    #             },
    #             sns: {
    #               arn: "HarnessSnsTopicArn", # required
    #             },
    #             event_bridge: {
    #               arn: "HarnessEventBridgeBusArn", # required
    #             }
    #           }
    #         },
    #         before_tool_call: {
    #           name: "HarnessHookName", # required
    #           target: { # required
    #             # One of:
    #             lambda: {
    #               arn: "HarnessLambdaFunctionArn", # required
    #               timeout_seconds: 1,
    #               failure_mode: "allow" # One of: ["allow", "deny"]
    #             },
    #             sns: {
    #               arn: "HarnessSnsTopicArn", # required
    #             },
    #             event_bridge: {
    #               arn: "HarnessEventBridgeBusArn", # required
    #             }
    #           }
    #         },
    #         after_tool_call: {
    #           name: "HarnessHookName", # required
    #           target: { # required
    #             # One of:
    #             lambda: {
    #               arn: "HarnessLambdaFunctionArn", # required
    #               timeout_seconds: 1,
    #               failure_mode: "allow" # One of: ["allow", "deny"]
    #             },
    #             sns: {
    #               arn: "HarnessSnsTopicArn", # required
    #             },
    #             event_bridge: {
    #               arn: "HarnessEventBridgeBusArn", # required
    #             }
    #           }
    #         }
    #       }],
    #       max_iterations: 1,
    #       max_tokens: 1,
    #       timeout_seconds: 1,
    #       failure_reason: "String"
    #     }
    #   }
    # @return [Types::GetHarnessResponse]
    def get_harness(params = {}, options = {})
      request = build_request(:get_harness, params)
      request.send_request(options)
    end

    # <p>Operation to get a single harness endpoint.</p>
    # @param [Hash, Types::GetHarnessEndpointRequest] params
    # @option params [String] :harness_id
    #   <p>The ID of the harness that the endpoint belongs to.</p>
    # @option params [String] :endpoint_name
    #   <p>The name of the endpoint to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     harness_id: "HarnessId", # required
    #     endpoint_name: "HarnessEndpointName", # required
    #   }
    #   options = {}
    #   response = client.get_harness_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     endpoint: { # required
    #       harness_id: "HarnessId", # required
    #       harness_name: "HarnessName", # required
    #       endpoint_name: "HarnessEndpointName", # required
    #       arn: "HarnessEndpointArn", # required
    #       status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "READY", "DELETING", "DELETE_FAILED"], # required
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       live_version: "HarnessVersion",
    #       target_version: "HarnessVersion",
    #       description: "HarnessEndpointDescription",
    #       failure_reason: "String"
    #     }
    #   }
    # @return [Types::GetHarnessEndpointResponse]
    def get_harness_endpoint(params = {}, options = {})
      request = build_request(:get_harness_endpoint, params)
      request.send_request(options)
    end

    # <p>Retrieve an existing Amazon Bedrock AgentCore Memory resource.</p>
    # @param [Hash, Types::GetMemoryInput] params
    # @option params [String] :memory_id
    #   <p>The unique identifier of the memory to retrieve.</p>
    # @option params [String] :view
    #   <p>The level of detail to return for the memory.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     memory_id: "MemoryId", # required
    #     view: "full" # One of: ["full", "without_decryption"]
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
    #       status: "CREATING" # One of: ["CREATING", "ACTIVE", "FAILED", "DELETING", "UPDATING"], # required
    #       failure_reason: "String",
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       strategies: [
    #         {
    #           strategy_id: "MemoryStrategyId", # required
    #           name: "Name", # required
    #           description: "Description",
    #           configuration: {
    #             type: "SEMANTIC_OVERRIDE" # One of: ["SEMANTIC_OVERRIDE", "SUMMARY_OVERRIDE", "USER_PREFERENCE_OVERRIDE", "SELF_MANAGED", "EPISODIC_OVERRIDE"],
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
    #                 },
    #                 episodic_extraction_override: {
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
    #                 },
    #                 episodic_consolidation_override: {
    #                   append_to_prompt: "Prompt", # required
    #                   model_id: "String", # required
    #                 }
    #               }
    #             },
    #             reflection: {
    #               # One of:
    #               custom_reflection_configuration: {
    #                 # One of:
    #                 episodic_reflection_override: {
    #                   append_to_prompt: "Prompt", # required
    #                   model_id: "String", # required
    #                   namespaces: ["Namespace"],
    #                   namespace_templates: ["Namespace"],
    #                   memory_record_schema: {
    #                     metadata_schema: [
    #                       {
    #                         key: "MetadataKey", # required
    #                         type: "STRING" # One of: ["STRING", "STRINGLIST", "NUMBER"],
    #                         extraction_type: "LLM_INFERRED" # One of: ["LLM_INFERRED", "STRICTLY_CONSISTENT"],
    #                         extraction_config: {
    #                           # One of:
    #                           llm_extraction_config: {
    #                             llm_extraction_instruction: "LlmExtractionInstruction",
    #                             definition: "Definition", # required
    #                             validation: {
    #                               # One of:
    #                               string_validation: {
    #                                 allowed_values: ["AllowedStringValue"], # required
    #                               },
    #                               string_list_validation: {
    #                                 allowed_values: ["AllowedStringListValue"],
    #                                 max_items: 1
    #                               },
    #                               number_validation: {
    #                                 min_value: 1.0,
    #                                 max_value: 1.0
    #                               }
    #                             }
    #                           }
    #                         }
    #                       }
    #                     ]
    #                   }
    #                 }
    #               },
    #               episodic_reflection_configuration: {
    #                 namespaces: ["Namespace"],
    #                 namespace_templates: ["Namespace"],
    #                 memory_record_schema: {
    #                   metadata_schema: [
    #                     {
    #                       key: "MetadataKey", # required
    #                       type: "STRING" # One of: ["STRING", "STRINGLIST", "NUMBER"],
    #                       extraction_type: "LLM_INFERRED" # One of: ["LLM_INFERRED", "STRICTLY_CONSISTENT"],
    #                       extraction_config: {
    #                         # One of:
    #                         llm_extraction_config: {
    #                           llm_extraction_instruction: "LlmExtractionInstruction",
    #                           definition: "Definition", # required
    #                           validation: {
    #                             # One of:
    #                             string_validation: {
    #                               allowed_values: ["AllowedStringValue"], # required
    #                             },
    #                             string_list_validation: {
    #                               allowed_values: ["AllowedStringListValue"],
    #                               max_items: 1
    #                             },
    #                             number_validation: {
    #                               min_value: 1.0,
    #                               max_value: 1.0
    #                             }
    #                           }
    #                         }
    #                       }
    #                     }
    #                   ]
    #                 }
    #               }
    #             },
    #             self_managed_configuration: {
    #               trigger_conditions: [{ # required
    #                 # One of:
    #                 message_based_trigger: {
    #                   message_count: 1
    #                 },
    #                 token_based_trigger: {
    #                   token_count: 1
    #                 },
    #                 time_based_trigger: {
    #                   idle_session_timeout: 1
    #                 }
    #               }],
    #               invocation_configuration: { # required
    #                 topic_arn: "Arn", # required
    #                 payload_delivery_bucket_name: "String", # required
    #               },
    #               historical_context_window_size: 1, # required
    #             }
    #           },
    #           type: "SEMANTIC" # One of: ["SEMANTIC", "SUMMARIZATION", "USER_PREFERENCE", "CUSTOM", "EPISODIC"], # required
    #           namespaces: ["Namespace"], # required
    #           namespace_templates: ["Namespace"], # required
    #           created_at: Time.now,
    #           updated_at: Time.now,
    #           status: "CREATING" # One of: ["CREATING", "ACTIVE", "DELETING", "FAILED"],
    #           memory_record_schema: {
    #             metadata_schema: [
    #               {
    #                 key: "MetadataKey", # required
    #                 type: "STRING" # One of: ["STRING", "STRINGLIST", "NUMBER"],
    #                 extraction_type: "LLM_INFERRED" # One of: ["LLM_INFERRED", "STRICTLY_CONSISTENT"],
    #                 extraction_config: {
    #                   # One of:
    #                   llm_extraction_config: {
    #                     llm_extraction_instruction: "LlmExtractionInstruction",
    #                     definition: "Definition", # required
    #                     validation: {
    #                       # One of:
    #                       string_validation: {
    #                         allowed_values: ["AllowedStringValue"], # required
    #                       },
    #                       string_list_validation: {
    #                         allowed_values: ["AllowedStringListValue"],
    #                         max_items: 1
    #                       },
    #                       number_validation: {
    #                         min_value: 1.0,
    #                         max_value: 1.0
    #                       }
    #                     }
    #                   }
    #                 }
    #               }
    #             ]
    #           },
    #           record_expiry_duration_days: 1
    #         }
    #       ],
    #       indexed_keys: [
    #         {
    #           key: "MetadataKey", # required
    #           type: "STRING" # One of: ["STRING", "STRINGLIST", "NUMBER"], # required
    #         }
    #       ],
    #       namespace_keys: [
    #         {
    #           key: "NamespaceVariableKey", # required
    #           validation: {
    #             allowed_values: ["NamespaceAllowedValue"],
    #             regex_pattern: "NamespaceRegexPattern"
    #           }
    #         }
    #       ],
    #       stream_delivery_resources: {
    #         resources: [{ # required
    #           # One of:
    #           kinesis: {
    #             data_stream_arn: "Arn", # required
    #             content_configurations: [ # required
    #               {
    #                 type: "MEMORY_RECORDS" # One of: ["MEMORY_RECORDS"], # required
    #                 level: "METADATA_ONLY" # One of: ["METADATA_ONLY", "FULL_CONTENT"]
    #               }
    #             ]
    #           }
    #         }]
    #       },
    #       managed_by_resource_arn: "Arn"
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
    #     client_secret_json_key: "SecretJsonKeyType",
    #     client_secret_source: "MANAGED" # One of: ["MANAGED", "EXTERNAL"],
    #     name: "CredentialProviderName", # required
    #     credential_provider_arn: "CredentialProviderArnType", # required
    #     credential_provider_vendor: "GoogleOauth2" # One of: ["GoogleOauth2", "GithubOauth2", "SlackOauth2", "SalesforceOauth2", "MicrosoftOauth2", "CustomOauth2", "AtlassianOauth2", "LinkedinOauth2", "XOauth2", "OktaOauth2", "OneLoginOauth2", "PingOneOauth2", "FacebookOauth2", "YandexOauth2", "RedditOauth2", "ZoomOauth2", "TwitchOauth2", "SpotifyOauth2", "DropboxOauth2", "NotionOauth2", "HubspotOauth2", "CyberArkOauth2", "FusionAuthOauth2", "Auth0Oauth2", "CognitoOauth2"], # required
    #     callback_url: "String",
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
    #             response_types: ["ResponseType"],
    #             token_endpoint_auth_methods: ["TokenAuthMethod"]
    #           }
    #         },
    #         client_id: "ClientIdType",
    #         on_behalf_of_token_exchange_config: {
    #           grant_type: "TOKEN_EXCHANGE" # One of: ["TOKEN_EXCHANGE", "JWT_AUTHORIZATION_GRANT"], # required
    #           token_exchange_grant_type_config: {
    #             actor_token_content: "NONE" # One of: ["NONE", "M2M", "AWS_IAM_ID_TOKEN_JWT"], # required
    #             actor_token_scopes: ["ScopeType"]
    #           }
    #         },
    #         client_authentication_method: "CLIENT_SECRET_BASIC" # One of: ["CLIENT_SECRET_BASIC", "CLIENT_SECRET_POST", "AWS_IAM_ID_TOKEN_JWT", "PRIVATE_KEY_JWT"],
    #         private_endpoint: {
    #           # One of:
    #           self_managed_lattice_resource: {
    #             # One of:
    #             resource_configuration_identifier: "ResourceConfigurationIdentifier"
    #           },
    #           managed_vpc_resource: {
    #             vpc_identifier: "VpcIdentifier", # required
    #             subnet_ids: ["SubnetId"], # required
    #             endpoint_ip_address_type: "IPV4" # One of: ["IPV4", "IPV6"], # required
    #             security_group_ids: ["SecurityGroupIdentifier"],
    #             tags: {
    #               "TagKey" => "TagValue"
    #             },
    #             routing_domain: "RoutingDomain"
    #           }
    #         },
    #         private_endpoint_overrides: [
    #           {
    #             domain: "PrivateEndpointOverrideDomain", # required
    #             private_endpoint: { # required
    #               # One of:
    #               self_managed_lattice_resource: {
    #                 # One of:
    #                 resource_configuration_identifier: "ResourceConfigurationIdentifier"
    #               },
    #               managed_vpc_resource: {
    #                 vpc_identifier: "VpcIdentifier", # required
    #                 subnet_ids: ["SubnetId"], # required
    #                 endpoint_ip_address_type: "IPV4" # One of: ["IPV4", "IPV6"], # required
    #                 security_group_ids: ["SecurityGroupIdentifier"],
    #                 tags: {
    #                   "TagKey" => "TagValue"
    #                 },
    #                 routing_domain: "RoutingDomain"
    #               }
    #             }
    #           }
    #         ],
    #         private_key_jwt_config: {
    #           private_key_source: {
    #             # One of:
    #             kms_key_source: {
    #               kms_key_arn: "KmsKeyArn", # required
    #             }
    #           },
    #           signing_algorithm: "RS256" # One of: ["RS256", "PS256", "ES256"],
    #           additional_header_claims: {
    #             "AdditionalClaimName" => "AdditionalClaimValue"
    #           },
    #           additional_payload_claims: {
    #             "AdditionalClaimName" => "AdditionalClaimValue"
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
    #             response_types: ["ResponseType"],
    #             token_endpoint_auth_methods: ["TokenAuthMethod"]
    #           }
    #         },
    #         client_id: "ClientIdType"
    #       },
    #       github_oauth2_provider_config: {
    #         oauth_discovery: { # required
    #           # One of:
    #           discovery_url: "DiscoveryUrlType",
    #           authorization_server_metadata: {
    #             issuer: "IssuerUrlType", # required
    #             authorization_endpoint: "AuthorizationEndpointType", # required
    #             token_endpoint: "TokenEndpointType", # required
    #             response_types: ["ResponseType"],
    #             token_endpoint_auth_methods: ["TokenAuthMethod"]
    #           }
    #         },
    #         client_id: "ClientIdType"
    #       },
    #       slack_oauth2_provider_config: {
    #         oauth_discovery: { # required
    #           # One of:
    #           discovery_url: "DiscoveryUrlType",
    #           authorization_server_metadata: {
    #             issuer: "IssuerUrlType", # required
    #             authorization_endpoint: "AuthorizationEndpointType", # required
    #             token_endpoint: "TokenEndpointType", # required
    #             response_types: ["ResponseType"],
    #             token_endpoint_auth_methods: ["TokenAuthMethod"]
    #           }
    #         },
    #         client_id: "ClientIdType"
    #       },
    #       salesforce_oauth2_provider_config: {
    #         oauth_discovery: { # required
    #           # One of:
    #           discovery_url: "DiscoveryUrlType",
    #           authorization_server_metadata: {
    #             issuer: "IssuerUrlType", # required
    #             authorization_endpoint: "AuthorizationEndpointType", # required
    #             token_endpoint: "TokenEndpointType", # required
    #             response_types: ["ResponseType"],
    #             token_endpoint_auth_methods: ["TokenAuthMethod"]
    #           }
    #         },
    #         client_id: "ClientIdType"
    #       },
    #       microsoft_oauth2_provider_config: {
    #         oauth_discovery: { # required
    #           # One of:
    #           discovery_url: "DiscoveryUrlType",
    #           authorization_server_metadata: {
    #             issuer: "IssuerUrlType", # required
    #             authorization_endpoint: "AuthorizationEndpointType", # required
    #             token_endpoint: "TokenEndpointType", # required
    #             response_types: ["ResponseType"],
    #             token_endpoint_auth_methods: ["TokenAuthMethod"]
    #           }
    #         },
    #         client_id: "ClientIdType"
    #       },
    #       atlassian_oauth2_provider_config: {
    #         oauth_discovery: { # required
    #           # One of:
    #           discovery_url: "DiscoveryUrlType",
    #           authorization_server_metadata: {
    #             issuer: "IssuerUrlType", # required
    #             authorization_endpoint: "AuthorizationEndpointType", # required
    #             token_endpoint: "TokenEndpointType", # required
    #             response_types: ["ResponseType"],
    #             token_endpoint_auth_methods: ["TokenAuthMethod"]
    #           }
    #         },
    #         client_id: "ClientIdType"
    #       },
    #       linkedin_oauth2_provider_config: {
    #         oauth_discovery: { # required
    #           # One of:
    #           discovery_url: "DiscoveryUrlType",
    #           authorization_server_metadata: {
    #             issuer: "IssuerUrlType", # required
    #             authorization_endpoint: "AuthorizationEndpointType", # required
    #             token_endpoint: "TokenEndpointType", # required
    #             response_types: ["ResponseType"],
    #             token_endpoint_auth_methods: ["TokenAuthMethod"]
    #           }
    #         },
    #         client_id: "ClientIdType"
    #       },
    #       included_oauth2_provider_config: {
    #         oauth_discovery: { # required
    #           # One of:
    #           discovery_url: "DiscoveryUrlType",
    #           authorization_server_metadata: {
    #             issuer: "IssuerUrlType", # required
    #             authorization_endpoint: "AuthorizationEndpointType", # required
    #             token_endpoint: "TokenEndpointType", # required
    #             response_types: ["ResponseType"],
    #             token_endpoint_auth_methods: ["TokenAuthMethod"]
    #           }
    #         },
    #         client_id: "ClientIdType"
    #       }
    #     },
    #     created_time: Time.now, # required
    #     last_updated_time: Time.now, # required
    #     status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "READY", "DELETING", "DELETE_FAILED"],
    #     failure_reason: "String"
    #   }
    # @return [Types::GetOauth2CredentialProviderResponse]
    def get_oauth2_credential_provider(params = {}, options = {})
      request = build_request(:get_oauth2_credential_provider, params)
      request.send_request(options)
    end

    # <p> Retrieves detailed information about an online evaluation configuration, including its rules, data sources, evaluators, and execution status. </p>
    # @param [Hash, Types::GetOnlineEvaluationConfigRequest] params
    # @option params [String] :online_evaluation_config_id
    #   <p> The unique identifier of the online evaluation configuration to retrieve. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     online_evaluation_config_id: "OnlineEvaluationConfigId", # required
    #   }
    #   options = {}
    #   response = client.get_online_evaluation_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     online_evaluation_config_arn: "OnlineEvaluationConfigArn", # required
    #     online_evaluation_config_id: "OnlineEvaluationConfigId", # required
    #     online_evaluation_config_name: "EvaluationConfigName", # required
    #     description: "EvaluationConfigDescription",
    #     rule: { # required
    #       sampling_config: { # required
    #         sampling_percentage: 1.0, # required
    #       },
    #       filters: [
    #         {
    #           key: "String", # required
    #           operator: "Equals" # One of: ["Equals", "NotEquals", "GreaterThan", "LessThan", "GreaterThanOrEqual", "LessThanOrEqual", "Contains", "NotContains"], # required
    #           value: { # required
    #             # One of:
    #             string_value: "String",
    #             double_value: 1.0,
    #             boolean_value: false
    #           }
    #         }
    #       ],
    #       session_config: {
    #         session_timeout_minutes: 1, # required
    #       }
    #     },
    #     data_source_config: { # required
    #       # One of:
    #       cloud_watch_logs: {
    #         log_group_names: ["LogGroupName"],
    #         log_group_name_prefixes: ["LogGroupNamePrefix"],
    #         service_names: ["ServiceName"], # required
    #       }
    #     },
    #     evaluators: [{
    #       # One of:
    #       evaluator_id: "EvaluatorId"
    #     }],
    #     insights: [
    #       {
    #         insight_id: "InsightId", # required
    #       }
    #     ],
    #     clustering_config: {
    #       frequencies: ["DAILY" # One of: ["DAILY", "WEEKLY", "MONTHLY"]], # required
    #     },
    #     output_config: {
    #       cloud_watch_config: { # required
    #         log_group_name: "OptionalLogGroupName",
    #         metrics_namespace: "MetricsNamespace",
    #         result_destination: "DEDICATED_LOG_GROUP" # One of: ["DEDICATED_LOG_GROUP", "SOURCE_LOG_GROUP"]
    #       }
    #     },
    #     evaluation_execution_role_arn: "RoleArn",
    #     status: "ACTIVE" # One of: ["ACTIVE", "CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "DELETING", "ERROR"], # required
    #     execution_status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #     failure_reason: "String"
    #   }
    # @return [Types::GetOnlineEvaluationConfigResponse]
    def get_online_evaluation_config(params = {}, options = {})
      request = build_request(:get_online_evaluation_config, params)
      request.send_request(options)
    end

    # <p>Retrieves information about a specific payment connector.</p>
    # @param [Hash, Types::GetPaymentConnectorRequest] params
    # @option params [String] :payment_manager_id
    #   <p>The unique identifier of the parent payment manager.</p>
    # @option params [String] :payment_connector_id
    #   <p>The unique identifier of the payment connector to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     payment_manager_id: "PaymentManagerId", # required
    #     payment_connector_id: "PaymentConnectorId", # required
    #   }
    #   options = {}
    #   response = client.get_payment_connector(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     payment_connector_id: "PaymentConnectorId", # required
    #     name: "PaymentConnectorName", # required
    #     description: "PaymentsDescription",
    #     type: "CoinbaseCDP" # One of: ["CoinbaseCDP", "StripePrivy"], # required
    #     provision_mode: "MANUAL" # One of: ["MANUAL", "QUICK_CREATE"],
    #     credential_provider_configurations: [{ # required
    #       # One of:
    #       coinbase_cdp: {
    #         credential_provider_arn: "PaymentCredentialProviderArn", # required
    #       },
    #       stripe_privy: {
    #         credential_provider_arn: "PaymentCredentialProviderArn", # required
    #       }
    #     }],
    #     created_at: Time.now, # required
    #     last_updated_at: Time.now, # required
    #     status: "CREATING" # One of: ["CREATING", "UPDATING", "DELETING", "READY", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED", "AWS_MARKETPLACE_SUBSCRIPTION_REQUIRED", "PENDING_AUTHENTICATION", "PROVISIONING", "AUTHENTICATION_EXPIRED", "AUTHENTICATION_FAILED"], # required
    #     authorization_url: "PaymentConnectorAuthorizationUrl",
    #     credentials_updated_at: Time.now
    #   }
    # @return [Types::GetPaymentConnectorResponse]
    def get_payment_connector(params = {}, options = {})
      request = build_request(:get_payment_connector, params)
      request.send_request(options)
    end

    # <p>Retrieves information about a specific payment credential provider.</p>
    # @param [Hash, Types::GetPaymentCredentialProviderRequest] params
    # @option params [String] :name
    #   <p>The name of the payment credential provider to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "CredentialProviderName", # required
    #   }
    #   options = {}
    #   response = client.get_payment_credential_provider(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "CredentialProviderName", # required
    #     credential_provider_arn: "PaymentCredentialProviderArnType", # required
    #     credential_provider_vendor: "CoinbaseCDP" # One of: ["CoinbaseCDP", "StripePrivy"], # required
    #     provider_configuration_output: { # required
    #       # One of:
    #       coinbase_cdp_configuration: {
    #         api_key_id: "CoinbaseCdpApiKeyIdType", # required
    #         api_key_secret_arn: { # required
    #           secret_arn: "SecretArn", # required
    #         },
    #         api_key_secret_json_key: "SecretJsonKeyType",
    #         api_key_secret_source: "MANAGED" # One of: ["MANAGED", "EXTERNAL"],
    #         wallet_secret_arn: { # required
    #           secret_arn: "SecretArn", # required
    #         },
    #         wallet_secret_json_key: "SecretJsonKeyType",
    #         wallet_secret_source: "MANAGED" # One of: ["MANAGED", "EXTERNAL"]
    #       },
    #       stripe_privy_configuration: {
    #         app_id: "StripePrivyAppIdType", # required
    #         app_secret_arn: { # required
    #           secret_arn: "SecretArn", # required
    #         },
    #         app_secret_json_key: "SecretJsonKeyType",
    #         app_secret_source: "MANAGED" # One of: ["MANAGED", "EXTERNAL"],
    #         authorization_private_key_arn: { # required
    #           secret_arn: "SecretArn", # required
    #         },
    #         authorization_private_key_json_key: "SecretJsonKeyType",
    #         authorization_private_key_source: "MANAGED" # One of: ["MANAGED", "EXTERNAL"],
    #         authorization_id: "StripePrivyAuthorizationIdType", # required
    #       }
    #     },
    #     created_time: Time.now, # required
    #     last_updated_time: Time.now, # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::GetPaymentCredentialProviderResponse]
    def get_payment_credential_provider(params = {}, options = {})
      request = build_request(:get_payment_credential_provider, params)
      request.send_request(options)
    end

    # <p>Retrieves information about a specific payment manager.</p>
    # @param [Hash, Types::GetPaymentManagerRequest] params
    # @option params [String] :payment_manager_id
    #   <p>The unique identifier of the payment manager to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     payment_manager_id: "PaymentManagerId", # required
    #   }
    #   options = {}
    #   response = client.get_payment_manager(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     payment_manager_arn: "PaymentManagerArn", # required
    #     payment_manager_id: "PaymentManagerId", # required
    #     name: "PaymentManagerName", # required
    #     description: "PaymentsDescription",
    #     authorizer_type: "CUSTOM_JWT" # One of: ["CUSTOM_JWT", "AWS_IAM"], # required
    #     authorizer_configuration: {
    #       # One of:
    #       custom_jwt_authorizer: {
    #         discovery_url: "DiscoveryUrl", # required
    #         allowed_audience: ["AllowedAudience"],
    #         allowed_clients: ["AllowedClient"],
    #         allowed_scopes: ["AllowedScopeType"],
    #         advertised_scope_mapping: {
    #           "AllowedScopeType" => "AllowedScopeType"
    #         },
    #         custom_claims: [
    #           {
    #             inbound_token_claim_name: "InboundTokenClaimNameType", # required
    #             inbound_token_claim_value_type: "STRING" # One of: ["STRING", "STRING_ARRAY"], # required
    #             authorizing_claim_match_value: { # required
    #               claim_match_value: { # required
    #                 # One of:
    #                 match_value_string: "MatchValueString",
    #                 match_value_string_list: ["MatchValueString"]
    #               },
    #               claim_match_operator: "EQUALS" # One of: ["EQUALS", "CONTAINS", "CONTAINS_ANY"], # required
    #             }
    #           }
    #         ],
    #         private_endpoint: {
    #           # One of:
    #           self_managed_lattice_resource: {
    #             # One of:
    #             resource_configuration_identifier: "ResourceConfigurationIdentifier"
    #           },
    #           managed_vpc_resource: {
    #             vpc_identifier: "VpcIdentifier", # required
    #             subnet_ids: ["SubnetId"], # required
    #             endpoint_ip_address_type: "IPV4" # One of: ["IPV4", "IPV6"], # required
    #             security_group_ids: ["SecurityGroupIdentifier"],
    #             tags: {
    #               "TagKey" => "TagValue"
    #             },
    #             routing_domain: "RoutingDomain"
    #           }
    #         },
    #         private_endpoint_overrides: [
    #           {
    #             domain: "PrivateEndpointOverrideDomain", # required
    #             private_endpoint: { # required
    #               # One of:
    #               self_managed_lattice_resource: {
    #                 # One of:
    #                 resource_configuration_identifier: "ResourceConfigurationIdentifier"
    #               },
    #               managed_vpc_resource: {
    #                 vpc_identifier: "VpcIdentifier", # required
    #                 subnet_ids: ["SubnetId"], # required
    #                 endpoint_ip_address_type: "IPV4" # One of: ["IPV4", "IPV6"], # required
    #                 security_group_ids: ["SecurityGroupIdentifier"],
    #                 tags: {
    #                   "TagKey" => "TagValue"
    #                 },
    #                 routing_domain: "RoutingDomain"
    #               }
    #             }
    #           }
    #         ],
    #         allowed_workload_configuration: {
    #           hosting_environments: [
    #             {
    #               arn: "BedrockAgentcoreResourceArn", # required
    #             }
    #           ],
    #           workload_identities: ["WorkloadIdentityNameType"]
    #         }
    #       }
    #     },
    #     role_arn: "RoleArn", # required
    #     workload_identity_details: {
    #       workload_identity_arn: "WorkloadIdentityArn", # required
    #     },
    #     created_at: Time.now, # required
    #     last_updated_at: Time.now, # required
    #     status: "CREATING" # One of: ["CREATING", "UPDATING", "DELETING", "READY", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED"], # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     kms_key_arn: "KmsKeyArn"
    #   }
    # @return [Types::GetPaymentManagerResponse]
    def get_payment_manager(params = {}, options = {})
      request = build_request(:get_payment_manager, params)
      request.send_request(options)
    end

    # <p>Retrieves detailed information about a specific policy within the AgentCore Policy system. This operation returns the complete policy definition, metadata, and current status, allowing administrators to review and manage policy configurations.</p>
    # @param [Hash, Types::GetPolicyRequest] params
    # @option params [String] :policy_engine_id
    #   <p>The identifier of the policy engine that manages the policy to be retrieved.</p>
    # @option params [String] :policy_id
    #   <p>The unique identifier of the policy to be retrieved. This must be a valid policy ID that exists within the specified policy engine.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_engine_id: "ResourceId", # required
    #     policy_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.get_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_id: "ResourceId", # required
    #     name: "PolicyName", # required
    #     policy_engine_id: "ResourceId", # required
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #     policy_arn: "PolicyArn", # required
    #     status: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED"], # required
    #     enforcement_mode: "ACTIVE" # One of: ["ACTIVE", "LOG_ONLY"],
    #     definition: { # required
    #       # One of:
    #       cedar: {
    #         statement: "Statement", # required
    #       },
    #       policy_generation: {
    #         policy_generation_id: "ResourceId", # required
    #         policy_generation_asset_id: "ResourceId", # required
    #       },
    #       policy: {
    #         statement: "Statement", # required
    #       }
    #     },
    #     description: "Description",
    #     status_reasons: ["String"], # required
    #   }
    # @return [Types::GetPolicyResponse]
    def get_policy(params = {}, options = {})
      request = build_request(:get_policy, params)
      request.send_request(options)
    end

    # <p>Retrieves detailed information about a specific policy engine within the AgentCore Policy system. This operation returns the complete policy engine configuration, metadata, and current status, allowing administrators to review and manage policy engine settings.</p>
    # @param [Hash, Types::GetPolicyEngineRequest] params
    # @option params [String] :policy_engine_id
    #   <p>The unique identifier of the policy engine to be retrieved. This must be a valid policy engine ID that exists within the account.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_engine_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.get_policy_engine(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_engine_id: "ResourceId", # required
    #     name: "PolicyEngineName", # required
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #     policy_engine_arn: "PolicyEngineArn", # required
    #     status: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED"], # required
    #     encryption_key_arn: "KmsKeyArn",
    #     description: "Description",
    #     status_reasons: ["String"], # required
    #   }
    # @return [Types::GetPolicyEngineResponse]
    def get_policy_engine(params = {}, options = {})
      request = build_request(:get_policy_engine, params)
      request.send_request(options)
    end

    # <p>Retrieves a metadata-only summary of a specific policy engine without decrypting customer content. This lightweight read operation returns resource identifiers, status, timestamps, and the encryption key ARN, but does not include the description or status reasons. Because this operation does not require access to the customer's KMS key, it is suitable for resource discovery, inventory, and integration scenarios where only metadata is needed.</p>
    # @param [Hash, Types::GetPolicyEngineSummaryRequest] params
    # @option params [String] :policy_engine_id
    #   <p>The unique identifier of the policy engine to retrieve the summary for. This must be a valid policy engine ID that exists within the account.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_engine_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.get_policy_engine_summary(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_engine_id: "ResourceId", # required
    #     name: "PolicyEngineName", # required
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #     policy_engine_arn: "PolicyEngineArn", # required
    #     status: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED"], # required
    #     encryption_key_arn: "KmsKeyArn"
    #   }
    # @return [Types::GetPolicyEngineSummaryResponse]
    def get_policy_engine_summary(params = {}, options = {})
      request = build_request(:get_policy_engine_summary, params)
      request.send_request(options)
    end

    # <p>Retrieves information about a policy generation request within the AgentCore Policy system. Policy generation converts natural language descriptions into Dogwood policy statements using AI-powered translation, enabling non-technical users to create policies.</p>
    # @param [Hash, Types::GetPolicyGenerationRequest] params
    # @option params [String] :policy_generation_id
    #   <p>The unique identifier of the policy generation request to be retrieved. This must be a valid generation ID from a previous <a href="https://docs.aws.amazon.com/bedrock-agentcore-control/latest/APIReference/API_StartPolicyGeneration.html">StartPolicyGeneration</a> call.</p>
    # @option params [String] :policy_engine_id
    #   <p>The identifier of the policy engine associated with the policy generation request. This provides the context for the generation operation and schema validation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_generation_id: "ResourceId", # required
    #     policy_engine_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.get_policy_generation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_engine_id: "ResourceId", # required
    #     policy_generation_id: "ResourceId", # required
    #     name: "PolicyGenerationName", # required
    #     policy_generation_arn: "PolicyGenerationArn", # required
    #     resource: { # required
    #       # One of:
    #       arn: "BedrockAgentcoreResourceArn"
    #     },
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #     status: "GENERATING" # One of: ["GENERATING", "GENERATED", "GENERATE_FAILED", "DELETE_FAILED"], # required
    #     findings: "String",
    #     status_reasons: ["String"], # required
    #   }
    # @return [Types::GetPolicyGenerationResponse]
    def get_policy_generation(params = {}, options = {})
      request = build_request(:get_policy_generation, params)
      request.send_request(options)
    end

    # <p>Retrieves a metadata-only summary of a specific policy generation request without decrypting customer content. This lightweight read operation returns resource identifiers, status, timestamps, and findings, but does not include status reasons. Because this operation does not require access to the customer's KMS key, it is suitable for resource discovery, inventory, and integration scenarios where only metadata is needed.</p>
    # @param [Hash, Types::GetPolicyGenerationSummaryRequest] params
    # @option params [String] :policy_generation_id
    #   <p>The unique identifier of the policy generation request to retrieve the summary for.</p>
    # @option params [String] :policy_engine_id
    #   <p>The identifier of the policy engine associated with the policy generation request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_generation_id: "ResourceId", # required
    #     policy_engine_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.get_policy_generation_summary(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_engine_id: "ResourceId", # required
    #     policy_generation_id: "ResourceId", # required
    #     name: "PolicyGenerationName", # required
    #     policy_generation_arn: "PolicyGenerationArn", # required
    #     resource: { # required
    #       # One of:
    #       arn: "BedrockAgentcoreResourceArn"
    #     },
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #     status: "GENERATING" # One of: ["GENERATING", "GENERATED", "GENERATE_FAILED", "DELETE_FAILED"], # required
    #     findings: "String"
    #   }
    # @return [Types::GetPolicyGenerationSummaryResponse]
    def get_policy_generation_summary(params = {}, options = {})
      request = build_request(:get_policy_generation_summary, params)
      request.send_request(options)
    end

    # <p>Retrieves a metadata-only summary of a specific policy without decrypting customer content. This lightweight read operation returns resource identifiers, status, and timestamps, but does not include the policy definition, description, or status reasons. Because this operation does not require access to the customer's KMS key, it is suitable for resource discovery, inventory, and integration scenarios where only metadata is needed.</p>
    # @param [Hash, Types::GetPolicySummaryRequest] params
    # @option params [String] :policy_engine_id
    #   <p>The identifier of the policy engine that manages the policy to retrieve the summary for.</p>
    # @option params [String] :policy_id
    #   <p>The unique identifier of the policy to retrieve the summary for. This must be a valid policy ID that exists within the specified policy engine.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_engine_id: "ResourceId", # required
    #     policy_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.get_policy_summary(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_id: "ResourceId", # required
    #     name: "PolicyName", # required
    #     policy_engine_id: "ResourceId", # required
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #     policy_arn: "PolicyArn", # required
    #     status: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED"], # required
    #     enforcement_mode: "ACTIVE" # One of: ["ACTIVE", "LOG_ONLY"]
    #   }
    # @return [Types::GetPolicySummaryResponse]
    def get_policy_summary(params = {}, options = {})
      request = build_request(:get_policy_summary, params)
      request.send_request(options)
    end

    # <p>Retrieves information about a specific registry.</p>
    # @param [Hash, Types::GetRegistryRequest] params
    # @option params [String] :registry_id
    #   <p>The identifier of the registry to retrieve. You can specify either the Amazon Resource Name (ARN) or the ID of the registry.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     registry_id: "RegistryIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_registry(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "RegistryName", # required
    #     description: "Description",
    #     registry_id: "RegistryId", # required
    #     registry_arn: "RegistryArn", # required
    #     authorizer_type: "CUSTOM_JWT" # One of: ["CUSTOM_JWT", "AWS_IAM"],
    #     authorizer_configuration: {
    #       # One of:
    #       custom_jwt_authorizer: {
    #         discovery_url: "DiscoveryUrl", # required
    #         allowed_audience: ["AllowedAudience"],
    #         allowed_clients: ["AllowedClient"],
    #         allowed_scopes: ["AllowedScopeType"],
    #         advertised_scope_mapping: {
    #           "AllowedScopeType" => "AllowedScopeType"
    #         },
    #         custom_claims: [
    #           {
    #             inbound_token_claim_name: "InboundTokenClaimNameType", # required
    #             inbound_token_claim_value_type: "STRING" # One of: ["STRING", "STRING_ARRAY"], # required
    #             authorizing_claim_match_value: { # required
    #               claim_match_value: { # required
    #                 # One of:
    #                 match_value_string: "MatchValueString",
    #                 match_value_string_list: ["MatchValueString"]
    #               },
    #               claim_match_operator: "EQUALS" # One of: ["EQUALS", "CONTAINS", "CONTAINS_ANY"], # required
    #             }
    #           }
    #         ],
    #         private_endpoint: {
    #           # One of:
    #           self_managed_lattice_resource: {
    #             # One of:
    #             resource_configuration_identifier: "ResourceConfigurationIdentifier"
    #           },
    #           managed_vpc_resource: {
    #             vpc_identifier: "VpcIdentifier", # required
    #             subnet_ids: ["SubnetId"], # required
    #             endpoint_ip_address_type: "IPV4" # One of: ["IPV4", "IPV6"], # required
    #             security_group_ids: ["SecurityGroupIdentifier"],
    #             tags: {
    #               "TagKey" => "TagValue"
    #             },
    #             routing_domain: "RoutingDomain"
    #           }
    #         },
    #         private_endpoint_overrides: [
    #           {
    #             domain: "PrivateEndpointOverrideDomain", # required
    #             private_endpoint: { # required
    #               # One of:
    #               self_managed_lattice_resource: {
    #                 # One of:
    #                 resource_configuration_identifier: "ResourceConfigurationIdentifier"
    #               },
    #               managed_vpc_resource: {
    #                 vpc_identifier: "VpcIdentifier", # required
    #                 subnet_ids: ["SubnetId"], # required
    #                 endpoint_ip_address_type: "IPV4" # One of: ["IPV4", "IPV6"], # required
    #                 security_group_ids: ["SecurityGroupIdentifier"],
    #                 tags: {
    #                   "TagKey" => "TagValue"
    #                 },
    #                 routing_domain: "RoutingDomain"
    #               }
    #             }
    #           }
    #         ],
    #         allowed_workload_configuration: {
    #           hosting_environments: [
    #             {
    #               arn: "BedrockAgentcoreResourceArn", # required
    #             }
    #           ],
    #           workload_identities: ["WorkloadIdentityNameType"]
    #         }
    #       }
    #     },
    #     approval_configuration: {
    #       auto_approval: false
    #     },
    #     status: "CREATING" # One of: ["CREATING", "READY", "UPDATING", "CREATE_FAILED", "UPDATE_FAILED", "DELETING", "DELETE_FAILED"], # required
    #     status_reason: "String",
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #   }
    # @return [Types::GetRegistryResponse]
    def get_registry(params = {}, options = {})
      request = build_request(:get_registry, params)
      request.send_request(options)
    end

    # <p>Retrieves information about a specific registry record.</p>
    # @param [Hash, Types::GetRegistryRecordRequest] params
    # @option params [String] :registry_id
    #   <p>The identifier of the registry containing the record. You can specify either the Amazon Resource Name (ARN) or the ID of the registry.</p>
    # @option params [String] :record_id
    #   <p>The identifier of the registry record to retrieve. You can specify either the Amazon Resource Name (ARN) or the ID of the record.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     registry_id: "RegistryIdentifier", # required
    #     record_id: "RecordIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_registry_record(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     registry_arn: "RegistryArn", # required
    #     record_arn: "RegistryRecordArn", # required
    #     record_id: "RegistryRecordId", # required
    #     name: "RegistryRecordName", # required
    #     description: "Description",
    #     descriptor_type: "MCP" # One of: ["MCP", "A2A", "CUSTOM", "AGENT_SKILLS"], # required
    #     descriptors: { # required
    #       mcp: {
    #         server: {
    #           schema_version: "SchemaVersion",
    #           inline_content: "InlineContent"
    #         },
    #         tools: {
    #           protocol_version: "SchemaVersion",
    #           inline_content: "InlineContent"
    #         }
    #       },
    #       a2a: {
    #         agent_card: {
    #           schema_version: "SchemaVersion",
    #           inline_content: "InlineContent"
    #         }
    #       },
    #       custom: {
    #         inline_content: "InlineContent"
    #       },
    #       agent_skills: {
    #         skill_md: {
    #           inline_content: "InlineContent"
    #         },
    #         skill_definition: {
    #           schema_version: "SchemaVersion",
    #           inline_content: "InlineContent"
    #         }
    #       }
    #     },
    #     record_version: "RegistryRecordVersion",
    #     status: "DRAFT" # One of: ["DRAFT", "PENDING_APPROVAL", "APPROVED", "REJECTED", "DEPRECATED", "CREATING", "UPDATING", "CREATE_FAILED", "UPDATE_FAILED"], # required
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #     status_reason: "String",
    #     synchronization_type: "URL" # One of: ["URL"],
    #     synchronization_configuration: {
    #       from_url: {
    #         url: "McpServerUrl", # required
    #         credential_provider_configurations: [
    #           {
    #             credential_provider_type: "OAUTH" # One of: ["OAUTH", "IAM"], # required
    #             credential_provider: { # required
    #               # One of:
    #               oauth_credential_provider: {
    #                 provider_arn: "CredentialProviderArn", # required
    #                 grant_type: "CLIENT_CREDENTIALS" # One of: ["CLIENT_CREDENTIALS"],
    #                 scopes: ["String"],
    #                 custom_parameters: {
    #                   "String" => "String"
    #                 }
    #               },
    #               iam_credential_provider: {
    #                 role_arn: "IamRoleArn",
    #                 service: "IamSigningServiceName",
    #                 region: "IamSigningRegion"
    #               }
    #             }
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @return [Types::GetRegistryRecordResponse]
    def get_registry_record(params = {}, options = {})
      request = build_request(:get_registry_record, params)
      request.send_request(options)
    end

    # <p>Retrieves the resource-based policy for a specified resource.</p> <note> <p>This feature is currently available only for AgentCore Runtime and Gateway.</p> </note>
    # @param [Hash, Types::GetResourcePolicyRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource for which to retrieve the resource policy.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "BedrockAgentcoreResourceArn", # required
    #   }
    #   options = {}
    #   response = client.get_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy: "ResourcePolicyBody"
    #   }
    # @return [Types::GetResourcePolicyResponse]
    def get_resource_policy(params = {}, options = {})
      request = build_request(:get_resource_policy, params)
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
    #         status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "READY", "DELETING", "DELETE_FAILED"], # required
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
    #         status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "READY", "DELETING", "DELETE_FAILED"], # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAgentRuntimeVersionsResponse]
    def list_agent_runtime_versions(params = {}, options = {})
      request = build_request(:list_agent_runtime_versions, params)
      request.send_request(options)
    end

    # <p>Lists the agent runtime versions that are associated with a capacity provider. Use this operation to identify the runtimes you must disassociate before you can delete the capacity provider. Results are paginated; use the <code>nextToken</code> parameter to retrieve additional results.</p>
    # @param [Hash, Types::ListAgentRuntimeVersionsByCapacityProviderInput] params
    # @option params [String] :capacity_provider_id
    #   <p>The unique identifier of the capacity provider.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response. If the total number of results is greater than this value, use the token returned in the response in the <code>nextToken</code> field when making another request to return the next batch of results.</p>
    # @option params [String] :next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, enter the token returned in the <code>nextToken</code> field in the response in this field to return the next batch of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     capacity_provider_id: "CapacityProviderId", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_agent_runtime_versions_by_capacity_provider(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     agent_runtimes: [ # required
    #       {
    #         agent_runtime_arn: "AgentRuntimeArn", # required
    #         agent_runtime_version: "AgentRuntimeVersion", # required
    #         status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "READY", "DELETING", "DELETE_FAILED"], # required
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListAgentRuntimeVersionsByCapacityProviderOutput]
    def list_agent_runtime_versions_by_capacity_provider(params = {}, options = {})
      request = build_request(:list_agent_runtime_versions_by_capacity_provider, params)
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
    #         status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "READY", "DELETING", "DELETE_FAILED"], # required
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

    # <p>Lists all browser profiles in your account.</p>
    # @param [Hash, Types::ListBrowserProfilesRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response.</p>
    # @option params [String] :next_token
    #   <p>A token to retrieve the next page of results.</p>
    # @option params [String] :name
    #   <p>The name of the browser profile to filter results by.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken",
    #     name: "BrowserProfileName"
    #   }
    #   options = {}
    #   response = client.list_browser_profiles(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     profile_summaries: [ # required
    #       {
    #         profile_id: "BrowserProfileId", # required
    #         profile_arn: "BrowserProfileArn", # required
    #         name: "BrowserProfileName", # required
    #         description: "Description",
    #         status: "READY" # One of: ["READY", "DELETING", "DELETED", "SAVING"], # required
    #         created_at: Time.now, # required
    #         last_updated_at: Time.now, # required
    #         last_saved_at: Time.now,
    #         last_saved_browser_session_id: "BrowserSessionId",
    #         last_saved_browser_id: "BrowserId"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListBrowserProfilesResponse]
    def list_browser_profiles(params = {}, options = {})
      request = build_request(:list_browser_profiles, params)
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

    # <p>Lists the capacity providers in your account and returns summary information for each one. To retrieve the full configuration for a specific capacity provider, use <code>GetCapacityProvider</code>. Results are paginated; use the <code>nextToken</code> parameter to retrieve additional results.</p>
    # @param [Hash, Types::ListCapacityProvidersInput] params
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
    #   response = client.list_capacity_providers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     capacity_providers: [ # required
    #       {
    #         capacity_provider_id: "CapacityProviderId", # required
    #         capacity_provider_arn: "CapacityProviderArn", # required
    #         name: "CapacityProviderName", # required
    #         status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "READY", "DELETING", "DELETE_FAILED"], # required
    #         last_updated_at: Time.now, # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListCapacityProvidersOutput]
    def list_capacity_providers(params = {}, options = {})
      request = build_request(:list_capacity_providers, params)
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

    # <p>Lists all versions of a configuration bundle, with optional filtering by branch name or creation source.</p>
    # @param [Hash, Types::ListConfigurationBundleVersionsRequest] params
    # @option params [String] :bundle_id
    #   <p>The unique identifier of the configuration bundle to list versions for.</p>
    # @option params [String] :next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, enter the token returned in the <code>nextToken</code> field in the response in this field to return the next batch of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response. If the total number of results is greater than this value, use the token returned in the response in the <code>nextToken</code> field when making another request to return the next batch of results.</p>
    # @option params [Types::VersionFilter] :filter
    #   <p>An optional filter for listing versions, including branch name, creation source, and whether to return only the latest version per branch.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     bundle_id: "ConfigurationBundleId", # required
    #     next_token: "String",
    #     max_results: 1,
    #     filter: {
    #       branch_name: "BranchName",
    #       created_by_name: "String",
    #       latest_per_branch: false
    #     }
    #   }
    #   options = {}
    #   response = client.list_configuration_bundle_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     versions: [ # required
    #       {
    #         bundle_arn: "ConfigurationBundleArn", # required
    #         bundle_id: "ConfigurationBundleId", # required
    #         version_id: "ConfigurationBundleVersion", # required
    #         lineage_metadata: {
    #           parent_version_ids: ["ConfigurationBundleVersion"],
    #           branch_name: "BranchName",
    #           created_by: {
    #             name: "String", # required
    #             arn: "String"
    #           },
    #           commit_message: "String"
    #         },
    #         version_created_at: Time.now, # required
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListConfigurationBundleVersionsResponse]
    def list_configuration_bundle_versions(params = {}, options = {})
      request = build_request(:list_configuration_bundle_versions, params)
      request.send_request(options)
    end

    # <p>Lists all configuration bundles in the account.</p>
    # @param [Hash, Types::ListConfigurationBundlesRequest] params
    # @option params [String] :next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, enter the token returned in the <code>nextToken</code> field in the response in this field to return the next batch of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response. If the total number of results is greater than this value, use the token returned in the response in the <code>nextToken</code> field when making another request to return the next batch of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_configuration_bundles(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     bundles: [ # required
    #       {
    #         bundle_arn: "ConfigurationBundleArn", # required
    #         bundle_id: "ConfigurationBundleId", # required
    #         bundle_name: "ConfigurationBundleName", # required
    #         description: "ConfigurationBundleDescription",
    #         created_at: Time.now
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListConfigurationBundlesResponse]
    def list_configuration_bundles(params = {}, options = {})
      request = build_request(:list_configuration_bundles, params)
      request.send_request(options)
    end

    # <p>Lists all of the consent portals in your account.</p>
    # @param [Hash, Types::ListConsentPortalsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of consent portals to return in a single call.</p>
    # @option params [String] :next_token
    #   <p>A token to retrieve the next page of results. Use the value returned in a previous response to request the next page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_consent_portals(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     consent_portals: [ # required
    #       {
    #         sources: [ # required
    #           {
    #             identifier: "ConsentPortalSourceIdentifierType", # required
    #             type: "agentcore-gateway" # One of: ["agentcore-gateway"], # required
    #           }
    #         ],
    #         consent_portal_arn: "ConsentPortalArnType", # required
    #         consent_portal_id: "ConsentPortalIdType", # required
    #         created_at: Time.now, # required
    #         description: "ConsentPortalDescriptionType",
    #         name: "ConsentPortalNameType", # required
    #         portal_url: "PortalUrlType",
    #         status: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "UPDATE_FAILED", "DELETING", "FAILED"], # required
    #         updated_at: Time.now, # required
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListConsentPortalsResponse]
    def list_consent_portals(params = {}, options = {})
      request = build_request(:list_consent_portals, params)
      request.send_request(options)
    end

    # <p> Returns paginated examples from the dataset. The server embeds the resolved version in the pagination token. Once pagination begins, all subsequent pages are pinned to that version regardless of concurrent mutations. </p>
    # @param [Hash, Types::ListDatasetExamplesRequest] params
    # @option params [String] :dataset_id
    #   <p> The unique identifier of the dataset. </p>
    # @option params [String] :dataset_version
    #   <p> Version to paginate: "DRAFT" or a version number. Defaults to DRAFT if absent. Only used on the first request; for subsequent pages, the version is extracted from the pagination token. </p>
    # @option params [Integer] :max_results
    #   <p> Maximum number of examples to return per page. </p>
    # @option params [String] :next_token
    #   <p> The token for the next page of results. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     dataset_id: "DatasetId", # required
    #     dataset_version: "DatasetVersion",
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_dataset_examples(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dataset_arn: "DatasetArn", # required
    #     dataset_id: "DatasetId", # required
    #     dataset_version: "DatasetVersion", # required
    #     examples: [""null""], # required
    #     next_token: "String"
    #   }
    # @return [Types::ListDatasetExamplesResponse]
    def list_dataset_examples(params = {}, options = {})
      request = build_request(:list_dataset_examples, params)
      request.send_request(options)
    end

    # <p> Lists all published versions of a dataset, sorted by version number descending (newest first). Does not include the DRAFT working copy. </p>
    # @param [Hash, Types::ListDatasetVersionsRequest] params
    # @option params [String] :dataset_id
    #   <p> The unique identifier of the dataset. </p>
    # @option params [String] :next_token
    #   <p> The token for the next page of results. </p>
    # @option params [Integer] :max_results
    #   <p> The maximum number of versions to return per page. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     dataset_id: "DatasetId", # required
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_dataset_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     versions: [ # required
    #       {
    #         dataset_version: "DatasetVersion", # required
    #         example_count: 1, # required
    #         created_at: Time.now, # required
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListDatasetVersionsResponse]
    def list_dataset_versions(params = {}, options = {})
      request = build_request(:list_dataset_versions, params)
      request.send_request(options)
    end

    # <p> Lists all datasets in the caller's account, paginated. </p>
    # @param [Hash, Types::ListDatasetsRequest] params
    # @option params [String] :next_token
    #   <p> The token for the next page of results. </p>
    # @option params [Integer] :max_results
    #   <p> The maximum number of datasets to return per page. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_datasets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     datasets: [ # required
    #       {
    #         dataset_arn: "DatasetArn", # required
    #         dataset_id: "DatasetId", # required
    #         dataset_name: "DatasetName", # required
    #         description: "String",
    #         status: "CREATING" # One of: ["CREATING", "UPDATING", "DELETING", "ACTIVE", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED"], # required
    #         draft_status: "MODIFIED" # One of: ["MODIFIED", "UNMODIFIED"],
    #         schema_type: "AGENTCORE_EVALUATION_PREDEFINED_V1" # One of: ["AGENTCORE_EVALUATION_PREDEFINED_V1", "AGENTCORE_EVALUATION_SIMULATED_V1", "THIRD_PARTY_EVALUATION_V1"], # required
    #         example_count: 1, # required
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListDatasetsResponse]
    def list_datasets(params = {}, options = {})
      request = build_request(:list_datasets, params)
      request.send_request(options)
    end

    # <p> Lists all available evaluators, including both builtin evaluators provided by the service and custom evaluators created by the user. </p>
    # @param [Hash, Types::ListEvaluatorsRequest] params
    # @option params [String] :next_token
    #   <p> The pagination token from a previous request to retrieve the next page of results. </p>
    # @option params [Integer] :max_results
    #   <p> The maximum number of evaluators to return in a single response. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_evaluators(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     evaluators: [ # required
    #       {
    #         evaluator_arn: "EvaluatorArn", # required
    #         evaluator_id: "EvaluatorId", # required
    #         evaluator_name: "EvaluatorName", # required
    #         description: "EvaluatorDescription",
    #         evaluator_type: "Builtin" # One of: ["Builtin", "ThirdParty", "Custom", "CustomCode", "CustomDerived"], # required
    #         provider: "AWS" # One of: ["AWS", "DeepEval", "AutoEval", "Custom"],
    #         level: "TOOL_CALL" # One of: ["TOOL_CALL", "TRACE", "SESSION"],
    #         status: "ACTIVE" # One of: ["ACTIVE", "CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "DELETING"], # required
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #         locked_for_modification: false,
    #         kms_key_arn: "KmsKeyArn"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListEvaluatorsResponse]
    def list_evaluators(params = {}, options = {})
      request = build_request(:list_evaluators, params)
      request.send_request(options)
    end

    # <p>Lists all rate limits for a gateway. Results are paginated. Use the <code>nextToken</code> parameter to retrieve additional results.</p>
    # @param [Hash, Types::ListGatewayRateLimitsRequest] params
    # @option params [String] :gateway_identifier
    #   <p>The unique identifier of the gateway.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response. If the total number of results is greater than this value, use the token returned in the response in the <code>nextToken</code> field when making another request to return the next batch of results.</p>
    # @option params [String] :next_token
    #   <p>The token to use to retrieve the next page of results. Use the value returned in a previous <code>ListGatewayRateLimits</code> response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_identifier: "GatewayIdentifier", # required
    #     max_results: 1,
    #     next_token: "GatewayRateLimitNextToken"
    #   }
    #   options = {}
    #   response = client.list_gateway_rate_limits(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rate_limits: [ # required
    #       {
    #         rate_limit_id: "GatewayRateLimitId", # required
    #         gateway_identifier: "GatewayIdentifier", # required
    #         description: "GatewayRateLimitDescription",
    #         dimension_keys: ["DimensionKey"], # required
    #         entries: [ # required
    #           {
    #             dimensions: { # required
    #               "DimensionKey" => "DimensionValue"
    #             },
    #             requests: [
    #               {
    #                 rate: 1.0, # required
    #                 period: "second" # One of: ["second", "minute"], # required
    #               }
    #             ],
    #             tokens: [
    #               {
    #                 rate: 1.0, # required
    #                 period: "second" # One of: ["second", "minute"], # required
    #               }
    #             ],
    #             connections: [
    #               {
    #                 rate: 1.0, # required
    #                 period: "second" # One of: ["second", "minute"], # required
    #               }
    #             ]
    #           }
    #         ],
    #         status: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "DELETING"], # required
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #       }
    #     ],
    #     next_token: "GatewayRateLimitNextToken"
    #   }
    # @return [Types::ListGatewayRateLimitsResponse]
    def list_gateway_rate_limits(params = {}, options = {})
      request = build_request(:list_gateway_rate_limits, params)
      request.send_request(options)
    end

    # <p>Lists all rules for a gateway.</p>
    # @param [Hash, Types::ListGatewayRulesRequest] params
    # @option params [String] :gateway_identifier
    #   <p>The identifier of the gateway to list rules for.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response. If the total number of results is greater than this value, use the token returned in the response in the <code>nextToken</code> field when making another request to return the next batch of results.</p>
    # @option params [String] :next_token
    #   <p>The pagination token from a previous request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_identifier: "GatewayIdentifier", # required
    #     max_results: 1,
    #     next_token: "GatewayRuleNextToken"
    #   }
    #   options = {}
    #   response = client.list_gateway_rules(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway_rules: [ # required
    #       {
    #         rule_id: "GatewayRuleId", # required
    #         gateway_arn: "GatewayArn", # required
    #         priority: 1, # required
    #         conditions: [{
    #           # One of:
    #           match_principals: {
    #             any_of: [{ # required
    #               # One of:
    #               iam_principal: {
    #                 arn: "IamPrincipalArn", # required
    #                 operator: "StringEquals" # One of: ["StringEquals", "StringLike"]
    #               }
    #             }]
    #           },
    #           match_paths: {
    #             any_of: ["MatchPathPattern"], # required
    #           }
    #         }],
    #         actions: [{ # required
    #           # One of:
    #           configuration_bundle: {
    #             # One of:
    #             static_override: {
    #               bundle_arn: "GatewayConfigurationBundleArn", # required
    #               bundle_version: "String", # required
    #             },
    #             weighted_override: {
    #               traffic_split: [ # required
    #                 {
    #                   name: "String", # required
    #                   weight: 1, # required
    #                   configuration_bundle: { # required
    #                     bundle_arn: "GatewayConfigurationBundleArn", # required
    #                     bundle_version: "String", # required
    #                   },
    #                   description: "String",
    #                   metadata: {
    #                     "TrafficSplitMetadataKey" => "TrafficSplitMetadataValue"
    #                   }
    #                 }
    #               ]
    #             }
    #           },
    #           route_to_target: {
    #             # One of:
    #             static_route: {
    #               target_name: "TargetName", # required
    #             },
    #             weighted_route: {
    #               traffic_split: [ # required
    #                 {
    #                   name: "String", # required
    #                   weight: 1, # required
    #                   target_name: "TargetName", # required
    #                   description: "String",
    #                   metadata: {
    #                     "TrafficSplitMetadataKey" => "TrafficSplitMetadataValue"
    #                   }
    #                 }
    #               ]
    #             }
    #           }
    #         }],
    #         description: "GatewayRuleDescription",
    #         created_at: Time.now, # required
    #         status: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "DELETING"], # required
    #         system: {
    #           managed_by: "String", # required
    #         },
    #         updated_at: Time.now
    #       }
    #     ],
    #     next_token: "GatewayRuleNextToken"
    #   }
    # @return [Types::ListGatewayRulesResponse]
    def list_gateway_rules(params = {}, options = {})
      request = build_request(:list_gateway_rules, params)
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
    #         status: "CREATING" # One of: ["CREATING", "UPDATING", "UPDATE_UNSUCCESSFUL", "DELETING", "READY", "FAILED", "SYNCHRONIZING", "SYNCHRONIZE_UNSUCCESSFUL", "CREATE_PENDING_AUTH", "UPDATE_PENDING_AUTH", "SYNCHRONIZE_PENDING_AUTH"], # required
    #         description: "TargetDescription",
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #         resource_priority: 1,
    #         last_synchronized_at: Time.now,
    #         authorization_data: {
    #           # One of:
    #           oauth2: {
    #             authorization_url: "String", # required
    #             user_id: "String"
    #           }
    #         },
    #         target_type: "OPEN_API_SCHEMA" # One of: ["OPEN_API_SCHEMA", "SMITHY_MODEL", "MCP_SERVER", "LAMBDA", "API_GATEWAY", "CONNECTOR", "AGENTCORE_RUNTIME", "PASSTHROUGH", "PROVIDER", "HTTP_CONNECTOR"],
    #         listing_mode: "DEFAULT" # One of: ["DEFAULT", "DYNAMIC"]
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
    #         authorizer_type: "CUSTOM_JWT" # One of: ["CUSTOM_JWT", "AWS_IAM", "NONE", "AUTHENTICATE_ONLY"], # required
    #         protocol_type: "MCP" # One of: ["MCP"]
    #       }
    #     ],
    #     next_token: "GatewayNextToken"
    #   }
    # @return [Types::ListGatewaysResponse]
    def list_gateways(params = {}, options = {})
      request = build_request(:list_gateways, params)
      request.send_request(options)
    end

    # <p>Operation to list the endpoints of a harness.</p>
    # @param [Hash, Types::ListHarnessEndpointsRequest] params
    # @option params [String] :harness_id
    #   <p>The ID of the harness whose endpoints are listed.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     harness_id: "HarnessId", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_harness_endpoints(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     endpoints: [ # required
    #       {
    #         harness_id: "HarnessId", # required
    #         harness_name: "HarnessName", # required
    #         endpoint_name: "HarnessEndpointName", # required
    #         arn: "HarnessEndpointArn", # required
    #         status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "READY", "DELETING", "DELETE_FAILED"], # required
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #         live_version: "HarnessVersion",
    #         target_version: "HarnessVersion",
    #         description: "HarnessEndpointDescription",
    #         failure_reason: "String"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListHarnessEndpointsResponse]
    def list_harness_endpoints(params = {}, options = {})
      request = build_request(:list_harness_endpoints, params)
      request.send_request(options)
    end

    # <p>Operation to list the versions of a Harness.</p>
    # @param [Hash, Types::ListHarnessVersionsRequest] params
    # @option params [String] :harness_id
    #   <p>The ID of the harness whose versions are listed.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     harness_id: "HarnessId", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_harness_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     harness_versions: [ # required
    #       {
    #         harness_id: "HarnessId", # required
    #         harness_name: "HarnessName", # required
    #         arn: "HarnessArn", # required
    #         harness_version: "HarnessVersion", # required
    #         status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "READY", "DELETING", "DELETE_FAILED"], # required
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #         failure_reason: "String"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListHarnessVersionsResponse]
    def list_harness_versions(params = {}, options = {})
      request = build_request(:list_harness_versions, params)
      request.send_request(options)
    end

    # <p>Operation to list harnesses.</p>
    # @param [Hash, Types::ListHarnessesRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_harnesses(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     harnesses: [ # required
    #       {
    #         harness_id: "HarnessId", # required
    #         harness_name: "HarnessName", # required
    #         arn: "HarnessArn", # required
    #         status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "READY", "DELETING", "DELETE_FAILED"], # required
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #         harness_version: "HarnessVersion"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListHarnessesResponse]
    def list_harnesses(params = {}, options = {})
      request = build_request(:list_harnesses, params)
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
    #         status: "CREATING" # One of: ["CREATING", "ACTIVE", "FAILED", "DELETING", "UPDATING"],
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #         managed_by_resource_arn: "Arn"
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
    #         credential_provider_vendor: "GoogleOauth2" # One of: ["GoogleOauth2", "GithubOauth2", "SlackOauth2", "SalesforceOauth2", "MicrosoftOauth2", "CustomOauth2", "AtlassianOauth2", "LinkedinOauth2", "XOauth2", "OktaOauth2", "OneLoginOauth2", "PingOneOauth2", "FacebookOauth2", "YandexOauth2", "RedditOauth2", "ZoomOauth2", "TwitchOauth2", "SpotifyOauth2", "DropboxOauth2", "NotionOauth2", "HubspotOauth2", "CyberArkOauth2", "FusionAuthOauth2", "Auth0Oauth2", "CognitoOauth2"], # required
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

    # <p> Lists all online evaluation configurations in the account, providing summary information about each configuration's status and settings. </p>
    # @param [Hash, Types::ListOnlineEvaluationConfigsRequest] params
    # @option params [String] :next_token
    #   <p> The pagination token from a previous request to retrieve the next page of results. </p>
    # @option params [Integer] :max_results
    #   <p> The maximum number of online evaluation configurations to return in a single response. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_online_evaluation_configs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     online_evaluation_configs: [ # required
    #       {
    #         online_evaluation_config_arn: "OnlineEvaluationConfigArn", # required
    #         online_evaluation_config_id: "OnlineEvaluationConfigId", # required
    #         online_evaluation_config_name: "EvaluationConfigName", # required
    #         description: "EvaluationConfigDescription",
    #         status: "ACTIVE" # One of: ["ACTIVE", "CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "DELETING", "ERROR"], # required
    #         execution_status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #         failure_reason: "String",
    #         insights: [
    #           {
    #             insight_id: "InsightId", # required
    #           }
    #         ],
    #         clustering_config: {
    #           frequencies: ["DAILY" # One of: ["DAILY", "WEEKLY", "MONTHLY"]], # required
    #         }
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListOnlineEvaluationConfigsResponse]
    def list_online_evaluation_configs(params = {}, options = {})
      request = build_request(:list_online_evaluation_configs, params)
      request.send_request(options)
    end

    # <p>Lists all payment connectors for a specified payment manager.</p>
    # @param [Hash, Types::ListPaymentConnectorsRequest] params
    # @option params [String] :payment_manager_id
    #   <p>The unique identifier of the payment manager whose connectors to list.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response. If the total number of results is greater than this value, use the token returned in the response in the <code>nextToken</code> field when making another request to return the next batch of results.</p>
    # @option params [String] :next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, enter the token returned in the <code>nextToken</code> field in the response in this field to return the next batch of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     payment_manager_id: "PaymentManagerId", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_payment_connectors(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     payment_connectors: [ # required
    #       {
    #         payment_connector_id: "PaymentConnectorId", # required
    #         name: "PaymentConnectorName", # required
    #         type: "CoinbaseCDP" # One of: ["CoinbaseCDP", "StripePrivy"], # required
    #         provision_mode: "MANUAL" # One of: ["MANUAL", "QUICK_CREATE"],
    #         status: "CREATING" # One of: ["CREATING", "UPDATING", "DELETING", "READY", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED", "AWS_MARKETPLACE_SUBSCRIPTION_REQUIRED", "PENDING_AUTHENTICATION", "PROVISIONING", "AUTHENTICATION_EXPIRED", "AUTHENTICATION_FAILED"], # required
    #         last_updated_at: Time.now, # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListPaymentConnectorsResponse]
    def list_payment_connectors(params = {}, options = {})
      request = build_request(:list_payment_connectors, params)
      request.send_request(options)
    end

    # <p>Lists all payment credential providers in the account.</p>
    # @param [Hash, Types::ListPaymentCredentialProvidersRequest] params
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
    #   response = client.list_payment_credential_providers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     credential_providers: [ # required
    #       {
    #         name: "CredentialProviderName", # required
    #         credential_provider_vendor: "CoinbaseCDP" # One of: ["CoinbaseCDP", "StripePrivy"], # required
    #         credential_provider_arn: "PaymentCredentialProviderArnType", # required
    #         created_time: Time.now, # required
    #         last_updated_time: Time.now, # required
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListPaymentCredentialProvidersResponse]
    def list_payment_credential_providers(params = {}, options = {})
      request = build_request(:list_payment_credential_providers, params)
      request.send_request(options)
    end

    # <p>Lists all payment managers in the account.</p>
    # @param [Hash, Types::ListPaymentManagersRequest] params
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
    #   response = client.list_payment_managers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     payment_managers: [ # required
    #       {
    #         payment_manager_arn: "PaymentManagerArn", # required
    #         payment_manager_id: "PaymentManagerId", # required
    #         name: "PaymentManagerName", # required
    #         description: "PaymentsDescription",
    #         authorizer_type: "CUSTOM_JWT" # One of: ["CUSTOM_JWT", "AWS_IAM"], # required
    #         role_arn: "RoleArn", # required
    #         status: "CREATING" # One of: ["CREATING", "UPDATING", "DELETING", "READY", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED"], # required
    #         created_at: Time.now,
    #         last_updated_at: Time.now, # required
    #         kms_key_arn: "KmsKeyArn"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListPaymentManagersResponse]
    def list_payment_managers(params = {}, options = {})
      request = build_request(:list_payment_managers, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of policies within the AgentCore Policy engine. This operation supports pagination and filtering to help administrators manage and discover policies across policy engines. Results can be filtered by policy engine or resource associations.</p>
    # @param [Hash, Types::ListPoliciesRequest] params
    # @option params [String] :next_token
    #   <p>A pagination token returned from a previous <a href="https://docs.aws.amazon.com/bedrock-agentcore-control/latest/APIReference/API_ListPolicies.html">ListPolicies</a> call. Use this token to retrieve the next page of results when the response is paginated.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of policies to return in a single response. If not specified, the default is 10 policies per page, with a maximum of 100 per page.</p>
    # @option params [String] :policy_engine_id
    #   <p>The identifier of the policy engine whose policies to retrieve.</p>
    # @option params [String] :target_resource_scope
    #   <p>Optional filter to list policies that apply to a specific resource scope or resource type. This helps narrow down policy results to those relevant for particular Amazon Web Services resources, agent tools, or operational contexts within the policy engine ecosystem.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     policy_engine_id: "ResourceId", # required
    #     target_resource_scope: "BedrockAgentcoreResourceArn"
    #   }
    #   options = {}
    #   response = client.list_policies(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policies: [ # required
    #       {
    #         policy_id: "ResourceId", # required
    #         name: "PolicyName", # required
    #         policy_engine_id: "ResourceId", # required
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #         policy_arn: "PolicyArn", # required
    #         status: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED"], # required
    #         enforcement_mode: "ACTIVE" # One of: ["ACTIVE", "LOG_ONLY"],
    #         definition: { # required
    #           # One of:
    #           cedar: {
    #             statement: "Statement", # required
    #           },
    #           policy_generation: {
    #             policy_generation_id: "ResourceId", # required
    #             policy_generation_asset_id: "ResourceId", # required
    #           },
    #           policy: {
    #             statement: "Statement", # required
    #           }
    #         },
    #         description: "Description",
    #         status_reasons: ["String"], # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListPoliciesResponse]
    def list_policies(params = {}, options = {})
      request = build_request(:list_policies, params)
      request.send_request(options)
    end

    # <p>Retrieves a paginated list of metadata-only policy engine summaries without decrypting customer content. This lightweight read operation returns resource identifiers, status, and timestamps for each policy engine, but does not include descriptions or status reasons. Because this operation does not require access to the customer's KMS key, it is suitable for resource discovery, inventory, and integration scenarios where only metadata is needed.</p>
    # @param [Hash, Types::ListPolicyEngineSummariesRequest] params
    # @option params [String] :next_token
    #   <p>A pagination token returned from a previous <a href="https://docs.aws.amazon.com/bedrock-agentcore-control/latest/APIReference/API_ListPolicyEngineSummaries.html">ListPolicyEngineSummaries</a> call. Use this token to retrieve the next page of results when the response is paginated.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of policy engine summaries to return in a single response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_policy_engine_summaries(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_engines: [ # required
    #       {
    #         policy_engine_id: "ResourceId", # required
    #         name: "PolicyEngineName", # required
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #         policy_engine_arn: "PolicyEngineArn", # required
    #         status: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED"], # required
    #         encryption_key_arn: "KmsKeyArn"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListPolicyEngineSummariesResponse]
    def list_policy_engine_summaries(params = {}, options = {})
      request = build_request(:list_policy_engine_summaries, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of policy engines within the AgentCore Policy system. This operation supports pagination to help administrators discover and manage policy engines across their account. Each policy engine serves as a container for related policies.</p>
    # @param [Hash, Types::ListPolicyEnginesRequest] params
    # @option params [String] :next_token
    #   <p>A pagination token returned from a previous <a href="https://docs.aws.amazon.com/bedrock-agentcore-control/latest/APIReference/API_ListPolicyEngines.html">ListPolicyEngines</a> call. Use this token to retrieve the next page of results when the response is paginated.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of policy engines to return in a single response. If not specified, the default is 10 policy engines per page, with a maximum of 100 per page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_policy_engines(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_engines: [ # required
    #       {
    #         policy_engine_id: "ResourceId", # required
    #         name: "PolicyEngineName", # required
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #         policy_engine_arn: "PolicyEngineArn", # required
    #         status: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED"], # required
    #         encryption_key_arn: "KmsKeyArn",
    #         description: "Description",
    #         status_reasons: ["String"], # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListPolicyEnginesResponse]
    def list_policy_engines(params = {}, options = {})
      request = build_request(:list_policy_engines, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of generated policy assets from a policy generation request within the AgentCore Policy system. This operation returns the actual Dogwood policies and related artifacts produced by the AI-powered policy generation process, allowing users to review and select from multiple generated policy options.</p>
    # @param [Hash, Types::ListPolicyGenerationAssetsRequest] params
    # @option params [String] :policy_generation_id
    #   <p>The unique identifier of the policy generation request whose assets are to be retrieved. This must be a valid generation ID from a previous <a href="https://docs.aws.amazon.com/bedrock-agentcore-control/latest/APIReference/API_StartPolicyGeneration.html">StartPolicyGeneration</a> call that has completed processing.</p>
    # @option params [String] :policy_engine_id
    #   <p>The unique identifier of the policy engine associated with the policy generation request. This provides the context for the generation operation and ensures assets are retrieved from the correct policy engine.</p>
    # @option params [String] :next_token
    #   <p>A pagination token returned from a previous <a href="https://docs.aws.amazon.com/bedrock-agentcore-control/latest/APIReference/API_ListPolicyGenerationAssets.html">ListPolicyGenerationAssets</a> call. Use this token to retrieve the next page of assets when the response is paginated due to large numbers of generated policy options.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of policy generation assets to return in a single response. If not specified, the default is 10 assets per page, with a maximum of 100 per page. This helps control response size when dealing with policy generations that produce many alternative policy options.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_generation_id: "ResourceId", # required
    #     policy_engine_id: "ResourceId", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_policy_generation_assets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_generation_assets: [
    #       {
    #         policy_generation_asset_id: "ResourceId", # required
    #         definition: {
    #           # One of:
    #           cedar: {
    #             statement: "Statement", # required
    #           },
    #           policy_generation: {
    #             policy_generation_id: "ResourceId", # required
    #             policy_generation_asset_id: "ResourceId", # required
    #           },
    #           policy: {
    #             statement: "Statement", # required
    #           }
    #         },
    #         raw_text_fragment: "NaturalLanguage", # required
    #         findings: [ # required
    #           {
    #             type: "VALID" # One of: ["VALID", "INVALID", "NOT_TRANSLATABLE", "ALLOW_ALL", "ALLOW_NONE", "DENY_ALL", "DENY_NONE"],
    #             description: "String"
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListPolicyGenerationAssetsResponse]
    def list_policy_generation_assets(params = {}, options = {})
      request = build_request(:list_policy_generation_assets, params)
      request.send_request(options)
    end

    # <p>Retrieves a paginated list of metadata-only policy generation summaries within a policy engine without decrypting customer content. This lightweight read operation returns resource identifiers, status, timestamps, and findings for each policy generation, but does not include status reasons. Because this operation does not require access to the customer's KMS key, it is suitable for resource discovery, inventory, and integration scenarios where only metadata is needed.</p>
    # @param [Hash, Types::ListPolicyGenerationSummariesRequest] params
    # @option params [String] :next_token
    #   <p>A pagination token returned from a previous <a href="https://docs.aws.amazon.com/bedrock-agentcore-control/latest/APIReference/API_ListPolicyGenerationSummaries.html">ListPolicyGenerationSummaries</a> call. Use this token to retrieve the next page of results when the response is paginated.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of policy generation summaries to return in a single response.</p>
    # @option params [String] :policy_engine_id
    #   <p>The identifier of the policy engine whose policy generation summaries to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     policy_engine_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.list_policy_generation_summaries(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_generations: [ # required
    #       {
    #         policy_engine_id: "ResourceId", # required
    #         policy_generation_id: "ResourceId", # required
    #         name: "PolicyGenerationName", # required
    #         policy_generation_arn: "PolicyGenerationArn", # required
    #         resource: { # required
    #           # One of:
    #           arn: "BedrockAgentcoreResourceArn"
    #         },
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #         status: "GENERATING" # One of: ["GENERATING", "GENERATED", "GENERATE_FAILED", "DELETE_FAILED"], # required
    #         findings: "String"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListPolicyGenerationSummariesResponse]
    def list_policy_generation_summaries(params = {}, options = {})
      request = build_request(:list_policy_generation_summaries, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of policy generation requests within the AgentCore Policy system. This operation supports pagination and filtering to help track and manage AI-powered policy generation operations.</p>
    # @param [Hash, Types::ListPolicyGenerationsRequest] params
    # @option params [String] :next_token
    #   <p>A pagination token for retrieving additional policy generations when results are paginated.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of policy generations to return in a single response.</p>
    # @option params [String] :policy_engine_id
    #   <p>The identifier of the policy engine whose policy generations to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     policy_engine_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.list_policy_generations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_generations: [ # required
    #       {
    #         policy_engine_id: "ResourceId", # required
    #         policy_generation_id: "ResourceId", # required
    #         name: "PolicyGenerationName", # required
    #         policy_generation_arn: "PolicyGenerationArn", # required
    #         resource: { # required
    #           # One of:
    #           arn: "BedrockAgentcoreResourceArn"
    #         },
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #         status: "GENERATING" # One of: ["GENERATING", "GENERATED", "GENERATE_FAILED", "DELETE_FAILED"], # required
    #         findings: "String",
    #         status_reasons: ["String"], # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListPolicyGenerationsResponse]
    def list_policy_generations(params = {}, options = {})
      request = build_request(:list_policy_generations, params)
      request.send_request(options)
    end

    # <p>Retrieves a paginated list of metadata-only policy summaries within a policy engine without decrypting customer content. This lightweight read operation returns resource identifiers, status, and timestamps for each policy, but does not include policy definitions, descriptions, or status reasons. Because this operation does not require access to the customer's KMS key, it is suitable for resource discovery, inventory, and integration scenarios where only metadata is needed.</p>
    # @param [Hash, Types::ListPolicySummariesRequest] params
    # @option params [String] :next_token
    #   <p>A pagination token returned from a previous <a href="https://docs.aws.amazon.com/bedrock-agentcore-control/latest/APIReference/API_ListPolicySummaries.html">ListPolicySummaries</a> call. Use this token to retrieve the next page of results when the response is paginated.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of policy summaries to return in a single response.</p>
    # @option params [String] :policy_engine_id
    #   <p>The identifier of the policy engine whose policy summaries to retrieve.</p>
    # @option params [String] :target_resource_scope
    #   <p>Optional filter to list policy summaries that apply to a specific resource scope or resource type. This helps narrow down results to those relevant for particular Amazon Web Services resources, agent tools, or operational contexts within the policy engine ecosystem.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     policy_engine_id: "ResourceId", # required
    #     target_resource_scope: "BedrockAgentcoreResourceArn"
    #   }
    #   options = {}
    #   response = client.list_policy_summaries(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policies: [ # required
    #       {
    #         policy_id: "ResourceId", # required
    #         name: "PolicyName", # required
    #         policy_engine_id: "ResourceId", # required
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #         policy_arn: "PolicyArn", # required
    #         status: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED"], # required
    #         enforcement_mode: "ACTIVE" # One of: ["ACTIVE", "LOG_ONLY"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListPolicySummariesResponse]
    def list_policy_summaries(params = {}, options = {})
      request = build_request(:list_policy_summaries, params)
      request.send_request(options)
    end

    # <p>Lists all registries in the account. You can optionally filter results by status using the <code>status</code> parameter, or by authorizer type using the <code>authorizerType</code> parameter.</p>
    # @param [Hash, Types::ListRegistriesRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response. If the total number of results is greater than this value, use the token returned in the response in the <code>nextToken</code> field when making another request to return the next batch of results.</p>
    # @option params [String] :next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, enter the token returned in the <code>nextToken</code> field in the response in this field to return the next batch of results.</p>
    # @option params [String] :status
    #   <p>Filter registries by their current status. Possible values include <code>CREATING</code>, <code>READY</code>, <code>UPDATING</code>, <code>CREATE_FAILED</code>, <code>UPDATE_FAILED</code>, <code>DELETING</code>, and <code>DELETE_FAILED</code>.</p>
    # @option params [String] :authorizer_type
    #   <p>Filter registries by their authorizer type. Possible values are <code>CUSTOM_JWT</code> and <code>AWS_IAM</code>. For more information about authorizer types, see the <code>RegistryAuthorizerType</code> enum.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken",
    #     status: "CREATING" # One of: ["CREATING", "READY", "UPDATING", "CREATE_FAILED", "UPDATE_FAILED", "DELETING", "DELETE_FAILED"],
    #     authorizer_type: "CUSTOM_JWT" # One of: ["CUSTOM_JWT", "AWS_IAM"]
    #   }
    #   options = {}
    #   response = client.list_registries(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     registries: [ # required
    #       {
    #         name: "RegistryName", # required
    #         description: "Description",
    #         registry_id: "RegistryId", # required
    #         registry_arn: "RegistryArn", # required
    #         authorizer_type: "CUSTOM_JWT" # One of: ["CUSTOM_JWT", "AWS_IAM"],
    #         status: "CREATING" # One of: ["CREATING", "READY", "UPDATING", "CREATE_FAILED", "UPDATE_FAILED", "DELETING", "DELETE_FAILED"], # required
    #         status_reason: "String",
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListRegistriesResponse]
    def list_registries(params = {}, options = {})
      request = build_request(:list_registries, params)
      request.send_request(options)
    end

    # <p>Lists registry records within a registry. You can optionally filter results using the <code>name</code>, <code>status</code>, and <code>descriptorType</code> parameters. When multiple filters are specified, they are combined using AND logic.</p>
    # @param [Hash, Types::ListRegistryRecordsRequest] params
    # @option params [String] :registry_id
    #   <p>The identifier of the registry to list records from. You can specify either the Amazon Resource Name (ARN) or the ID of the registry.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response. If the total number of results is greater than this value, use the token returned in the response in the <code>nextToken</code> field when making another request to return the next batch of results.</p>
    # @option params [String] :next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, enter the token returned in the <code>nextToken</code> field in the response in this field to return the next batch of results.</p>
    # @option params [String] :name
    #   <p>Filter registry records by name.</p>
    # @option params [String] :status
    #   <p>Filter registry records by their current status. Possible values include <code>CREATING</code>, <code>DRAFT</code>, <code>APPROVED</code>, <code>PENDING_APPROVAL</code>, <code>REJECTED</code>, <code>DEPRECATED</code>, <code>UPDATING</code>, <code>CREATE_FAILED</code>, and <code>UPDATE_FAILED</code>.</p>
    # @option params [String] :descriptor_type
    #   <p>Filter registry records by their descriptor type. Possible values are <code>MCP</code>, <code>A2A</code>, <code>CUSTOM</code>, and <code>AGENT_SKILLS</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     registry_id: "RegistryIdentifier", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #     name: "RegistryRecordName",
    #     status: "DRAFT" # One of: ["DRAFT", "PENDING_APPROVAL", "APPROVED", "REJECTED", "DEPRECATED", "CREATING", "UPDATING", "CREATE_FAILED", "UPDATE_FAILED"],
    #     descriptor_type: "MCP" # One of: ["MCP", "A2A", "CUSTOM", "AGENT_SKILLS"]
    #   }
    #   options = {}
    #   response = client.list_registry_records(params, options)
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
    #         record_version: "RegistryRecordVersion", # required
    #         status: "DRAFT" # One of: ["DRAFT", "PENDING_APPROVAL", "APPROVED", "REJECTED", "DEPRECATED", "CREATING", "UPDATING", "CREATE_FAILED", "UPDATE_FAILED"], # required
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListRegistryRecordsResponse]
    def list_registry_records(params = {}, options = {})
      request = build_request(:list_registry_records, params)
      request.send_request(options)
    end

    # <p>Lists the tags associated with the specified resource.</p> <note> <p>This feature is currently available only for AgentCore Runtime, Browser, Browser Profile, Code Interpreter tool, and Gateway.</p> </note>
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

    # <p>Creates or updates a resource-based policy for a resource with the specified resourceArn.</p> <note> <p>This feature is currently available only for AgentCore Runtime and Gateway.</p> </note>
    # @param [Hash, Types::PutResourcePolicyRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource for which to create or update the resource policy.</p>
    # @option params [String] :policy
    #   <p>The resource policy to create or update.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "BedrockAgentcoreResourceArn", # required
    #     policy: "ResourcePolicyBody", # required
    #   }
    #   options = {}
    #   response = client.put_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy: "ResourcePolicyBody", # required
    #   }
    # @return [Types::PutResourcePolicyResponse]
    def put_resource_policy(params = {}, options = {})
      request = build_request(:put_resource_policy, params)
      request.send_request(options)
    end

    # <p>Replaces the service-managed credentials of a payment connector with newly issued credentials.</p> <p>Use this operation only for payment connectors with a <code>provisionMode</code> of <code>QUICK_CREATE</code>. For payment connectors with a <code>provisionMode</code> of <code>MANUAL</code>, call <code>UpdatePaymentCredentialProvider</code> instead after rotating credentials with the payment provider directly.</p> <p>The rotation finishes before the response is returned, and only one rotation runs at a time for a given payment connector. When it succeeds, the new credential is in effect and the payment connector stays in the <code>READY</code> state. When it fails, an error is returned, the payment connector and its existing credential are left unchanged, and you can retry the request.</p> <p>Rotation replaces the credential on the connector's credential provider, so every payment connector that uses that provider is affected. Replace any copy of the previous credential that you use outside AgentCore.</p>
    # @param [Hash, Types::RotatePaymentConnectorCredentialsRequest] params
    # @option params [String] :payment_manager_id
    #   <p>The unique identifier of the parent payment manager.</p>
    # @option params [String] :payment_connector_id
    #   <p>The unique identifier of the payment connector whose credentials you want to rotate.</p>
    # @option params [Types::CredentialRotationConfig] :credentials_to_rotate
    #   <p>The credentials to rotate. Specify the member that matches the payment connector's <code>type</code>. Each credential that you select is rotated independently.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If you don't specify this field, a value is randomly generated for you. If this token matches a previous request, the service ignores the request, but doesn't return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     payment_manager_id: "PaymentManagerId", # required
    #     payment_connector_id: "PaymentConnectorId", # required
    #     credentials_to_rotate: { # required
    #       # One of:
    #       coinbase_cdp: {
    #         secrets: ["API_KEY" # One of: ["API_KEY", "WALLET_SECRET"]], # required
    #       }
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.rotate_payment_connector_credentials(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     payment_connector_id: "PaymentConnectorId", # required
    #     payment_manager_id: "PaymentManagerId", # required
    #     last_updated_at: Time.now, # required
    #     status: "CREATING" # One of: ["CREATING", "UPDATING", "DELETING", "READY", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED", "AWS_MARKETPLACE_SUBSCRIPTION_REQUIRED", "PENDING_AUTHENTICATION", "PROVISIONING", "AUTHENTICATION_EXPIRED", "AUTHENTICATION_FAILED"], # required
    #   }
    # @return [Types::RotatePaymentConnectorCredentialsResponse]
    def rotate_payment_connector_credentials(params = {}, options = {})
      request = build_request(:rotate_payment_connector_credentials, params)
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

    # <p>Initiates the AI-powered generation of Dogwood policies from natural language descriptions within the AgentCore Policy system. This feature enables both technical and non-technical users to create policies by describing their authorization requirements in plain English, which is then automatically translated into formal Dogwood policy statements. The generation process analyzes the natural language input along with the Gateway's tool context to produce validated policy options. Generated policy assets are automatically deleted after 7 days, so you should review and create policies from the generated assets within this timeframe. Once created, policies are permanent and not subject to this expiration. Generated policies should be reviewed and tested in log-only mode before deploying to production. Use this when you want to describe policy intent naturally rather than learning Dogwood syntax, though generated policies may require refinement for complex scenarios.</p>
    # @param [Hash, Types::StartPolicyGenerationRequest] params
    # @option params [String] :policy_engine_id
    #   <p>The identifier of the policy engine that provides the context for policy generation. This engine's schema and tool context are used to ensure generated policies are valid and applicable.</p>
    # @option params [Types::Resource] :resource
    #   <p>The resource information that provides context for policy generation. This helps the AI understand the target resources and generate appropriate access control rules.</p>
    # @option params [Types::Content] :content
    #   <p>The natural language description of the desired policy behavior. This content is processed by AI to generate corresponding Dogwood policy statements that match the described intent.</p>
    # @option params [String] :name
    #   <p>A customer-assigned name for the policy generation request. This helps track and identify generation operations, especially when running multiple generations simultaneously.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure the idempotency of the request. The Amazon Web Services SDK automatically generates this token, so you don't need to provide it in most cases. If you retry a request with the same client token, the service returns the same response without starting a duplicate generation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_engine_id: "ResourceId", # required
    #     resource: { # required
    #       # One of:
    #       arn: "BedrockAgentcoreResourceArn"
    #     },
    #     content: { # required
    #       # One of:
    #       raw_text: "NaturalLanguage"
    #     },
    #     name: "PolicyGenerationName", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.start_policy_generation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_engine_id: "ResourceId", # required
    #     policy_generation_id: "ResourceId", # required
    #     name: "PolicyGenerationName", # required
    #     policy_generation_arn: "PolicyGenerationArn", # required
    #     resource: { # required
    #       # One of:
    #       arn: "BedrockAgentcoreResourceArn"
    #     },
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #     status: "GENERATING" # One of: ["GENERATING", "GENERATED", "GENERATE_FAILED", "DELETE_FAILED"], # required
    #     findings: "String",
    #     status_reasons: ["String"], # required
    #   }
    # @return [Types::StartPolicyGenerationResponse]
    def start_policy_generation(params = {}, options = {})
      request = build_request(:start_policy_generation, params)
      request.send_request(options)
    end

    # <p>Submits a registry record for approval. This transitions the record from <code>DRAFT</code> status to <code>PENDING_APPROVAL</code> status. If the registry has auto-approval enabled, the record is automatically approved.</p>
    # @param [Hash, Types::SubmitRegistryRecordForApprovalRequest] params
    # @option params [String] :registry_id
    #   <p>The identifier of the registry containing the record. You can specify either the Amazon Resource Name (ARN) or the ID of the registry.</p>
    # @option params [String] :record_id
    #   <p>The identifier of the registry record to submit for approval. You can specify either the Amazon Resource Name (ARN) or the ID of the record.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     registry_id: "RegistryIdentifier", # required
    #     record_id: "RecordIdentifier", # required
    #   }
    #   options = {}
    #   response = client.submit_registry_record_for_approval(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     registry_arn: "RegistryArn", # required
    #     record_arn: "RegistryRecordArn", # required
    #     record_id: "RegistryRecordId", # required
    #     status: "DRAFT" # One of: ["DRAFT", "PENDING_APPROVAL", "APPROVED", "REJECTED", "DEPRECATED", "CREATING", "UPDATING", "CREATE_FAILED", "UPDATE_FAILED"], # required
    #     updated_at: Time.now, # required
    #   }
    # @return [Types::SubmitRegistryRecordForApprovalResponse]
    def submit_registry_record_for_approval(params = {}, options = {})
      request = build_request(:submit_registry_record_for_approval, params)
      request.send_request(options)
    end

    # <p>Synchronizes the gateway targets by fetching the latest tool definitions from the target endpoints.</p> <p>You cannot synchronize a target that is in a pending authorization state (<code>CREATE_PENDING_AUTH</code>, <code>UPDATE_PENDING_AUTH</code>, or <code>SYNCHRONIZE_PENDING_AUTH</code>). Wait for the authorization to complete or fail before synchronizing.</p> <p>You cannot synchronize a target that has a static tool schema (<code>mcpToolSchema</code>) configured. Remove the static schema through an <code>UpdateGatewayTarget</code> call to enable dynamic tool synchronization.</p>
    # @param [Hash, Types::SynchronizeGatewayTargetsRequest] params
    # @option params [String] :gateway_identifier
    #   <p>The gateway Identifier.</p>
    # @option params [Array<String>] :target_id_list
    #   <p>The target ID list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_identifier: "GatewayIdentifier", # required
    #     target_id_list: ["TargetId"], # required
    #   }
    #   options = {}
    #   response = client.synchronize_gateway_targets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     targets: [
    #       {
    #         gateway_arn: "GatewayArn", # required
    #         target_id: "TargetId", # required
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #         status: "CREATING" # One of: ["CREATING", "UPDATING", "UPDATE_UNSUCCESSFUL", "DELETING", "READY", "FAILED", "SYNCHRONIZING", "SYNCHRONIZE_UNSUCCESSFUL", "CREATE_PENDING_AUTH", "UPDATE_PENDING_AUTH", "SYNCHRONIZE_PENDING_AUTH"], # required
    #         status_reasons: ["StatusReason"],
    #         name: "TargetName", # required
    #         description: "TargetDescription",
    #         target_configuration: { # required
    #           # One of:
    #           mcp: {
    #             # One of:
    #             open_api_schema: {
    #               # One of:
    #               s3: {
    #                 uri: "S3BucketUri",
    #                 bucket_owner_account_id: "AwsAccountId"
    #               },
    #               inline_payload: "InlinePayload"
    #             },
    #             smithy_model: {
    #               # One of:
    #               s3: {
    #                 uri: "S3BucketUri",
    #                 bucket_owner_account_id: "AwsAccountId"
    #               },
    #               inline_payload: "InlinePayload"
    #             },
    #             lambda: {
    #               lambda_arn: "LambdaFunctionArn", # required
    #               tool_schema: { # required
    #                 # One of:
    #                 s3: {
    #                   uri: "S3BucketUri",
    #                   bucket_owner_account_id: "AwsAccountId"
    #                 },
    #                 inline_payload: [
    #                   {
    #                     name: "String", # required
    #                     description: "String", # required
    #                     input_schema: { # required
    #                       type: "string" # One of: ["string", "number", "object", "array", "boolean", "integer"], # required
    #                       properties: {
    #                         "String" => {
    #                           # recursive SchemaDefinition
    #                         }
    #                       },
    #                       required: ["String"],
    #                       items: {
    #                         # recursive SchemaDefinition
    #                       },
    #                       description: "String"
    #                     },
    #                     output_schema: {
    #                       type: "string" # One of: ["string", "number", "object", "array", "boolean", "integer"], # required
    #                       properties: {
    #                         "String" => {
    #                           # recursive SchemaDefinition
    #                         }
    #                       },
    #                       required: ["String"],
    #                       items: {
    #                         # recursive SchemaDefinition
    #                       },
    #                       description: "String"
    #                     }
    #                   }
    #                 ]
    #               }
    #             },
    #             mcp_server: {
    #               endpoint: "String", # required
    #               mcp_tool_schema: {
    #                 # One of:
    #                 s3: {
    #                   uri: "S3BucketUri",
    #                   bucket_owner_account_id: "AwsAccountId"
    #                 },
    #                 inline_payload: "InlinePayload"
    #               },
    #               listing_mode: "DEFAULT" # One of: ["DEFAULT", "DYNAMIC"],
    #               resource_priority: 1
    #             },
    #             api_gateway: {
    #               rest_api_id: "String", # required
    #               stage: "String", # required
    #               api_gateway_tool_configuration: { # required
    #                 tool_overrides: [
    #                   {
    #                     name: "String", # required
    #                     description: "String",
    #                     path: "String", # required
    #                     method: "GET" # One of: ["GET", "DELETE", "HEAD", "OPTIONS", "PATCH", "PUT", "POST"], # required
    #                   }
    #                 ],
    #                 tool_filters: [ # required
    #                   {
    #                     filter_path: "String", # required
    #                     methods: ["GET" # One of: ["GET", "DELETE", "HEAD", "OPTIONS", "PATCH", "PUT", "POST"]], # required
    #                   }
    #                 ]
    #               }
    #             },
    #             connector: {
    #               source: { # required
    #                 connector_id: "ConnectorId", # required
    #                 version: "ConnectorVersion"
    #               },
    #               enabled: ["String"],
    #               configurations: [
    #                 {
    #                   name: "String", # required
    #                   description: "String",
    #                   parameter_values: ""null"",
    #                   parameter_overrides: [
    #                     {
    #                       path: "String", # required
    #                       description: "String",
    #                       visible: false
    #                     }
    #                   ]
    #                 }
    #               ]
    #             }
    #           },
    #           http: {
    #             # One of:
    #             agentcore_runtime: {
    #               arn: "RuntimeArn", # required
    #               qualifier: "RuntimeQualifier",
    #               schema: {
    #                 source: { # required
    #                   # One of:
    #                   s3: {
    #                     uri: "S3BucketUri",
    #                     bucket_owner_account_id: "AwsAccountId"
    #                   },
    #                   inline_payload: "InlinePayload"
    #                 }
    #               }
    #             },
    #             passthrough: {
    #               endpoint: "PassthroughEndpoint", # required
    #               protocol_type: "MCP" # One of: ["MCP", "A2A", "INFERENCE", "CUSTOM"], # required
    #               schema: {
    #                 source: { # required
    #                   # One of:
    #                   s3: {
    #                     uri: "S3BucketUri",
    #                     bucket_owner_account_id: "AwsAccountId"
    #                   },
    #                   inline_payload: "InlinePayload"
    #                 }
    #               },
    #               stickiness_configuration: {
    #                 identifier: "String", # required
    #                 timeout: 1,
    #                 composite_identifier: ["CompositeIdentifierEntry"]
    #               },
    #               static_query_parameters: {
    #                 "StaticQueryParameterName" => "StaticQueryParameterValue"
    #               },
    #               static_query_parameter_conflict_resolution: "CLIENT_OVERRIDE" # One of: ["CLIENT_OVERRIDE", "STATIC_OVERRIDE"]
    #             },
    #             connector: {
    #               source: { # required
    #                 connector_id: "ConnectorId", # required
    #               },
    #               parameters: {
    #                 "ConnectorParameterName" => "ConnectorParameterValue"
    #               }
    #             }
    #           },
    #           inference: {
    #             # One of:
    #             connector: {
    #               source: { # required
    #                 connector_id: "InferenceConnectorId", # required
    #               }
    #             },
    #             provider: {
    #               endpoint: "PassthroughEndpoint", # required
    #               model_mapping: {
    #                 provider_prefix: {
    #                   strip: false,
    #                   separator: "String"
    #                 }
    #               },
    #               operations: [
    #                 {
    #                   path: "InferenceOperationPath", # required
    #                   provider_path: "InferenceOperationPath",
    #                   models: [
    #                     {
    #                       model: "ModelPattern", # required
    #                     }
    #                   ]
    #                 }
    #               ]
    #             }
    #           }
    #         },
    #         credential_provider_configurations: [ # required
    #           {
    #             credential_provider_type: "GATEWAY_IAM_ROLE" # One of: ["GATEWAY_IAM_ROLE", "OAUTH", "API_KEY", "CALLER_IAM_CREDENTIALS", "JWT_PASSTHROUGH"], # required
    #             credential_provider: {
    #               # One of:
    #               oauth_credential_provider: {
    #                 provider_arn: "OAuthCredentialProviderArn", # required
    #                 scopes: ["OAuthScope"], # required
    #                 custom_parameters: {
    #                   "OAuthCustomParametersKey" => "OAuthCustomParametersValue"
    #                 },
    #                 grant_type: "CLIENT_CREDENTIALS" # One of: ["CLIENT_CREDENTIALS", "AUTHORIZATION_CODE", "TOKEN_EXCHANGE"],
    #                 default_return_url: "OAuthDefaultReturnUrl"
    #               },
    #               api_key_credential_provider: {
    #                 provider_arn: "ApiKeyCredentialProviderArn", # required
    #                 credential_parameter_name: "ApiKeyCredentialParameterName",
    #                 credential_prefix: "ApiKeyCredentialPrefix",
    #                 credential_location: "HEADER" # One of: ["HEADER", "QUERY_PARAMETER"]
    #               },
    #               iam_credential_provider: {
    #                 service: "String", # required
    #                 region: "String"
    #               }
    #             }
    #           }
    #         ],
    #         last_synchronized_at: Time.now,
    #         metadata_configuration: {
    #           allowed_request_headers: ["HttpHeaderName"],
    #           allowed_query_parameters: ["HttpQueryParameterName"],
    #           allowed_response_headers: ["HttpHeaderName"]
    #         },
    #         private_endpoint: {
    #           # One of:
    #           self_managed_lattice_resource: {
    #             # One of:
    #             resource_configuration_identifier: "ResourceConfigurationIdentifier"
    #           },
    #           managed_vpc_resource: {
    #             vpc_identifier: "VpcIdentifier", # required
    #             subnet_ids: ["SubnetId"], # required
    #             endpoint_ip_address_type: "IPV4" # One of: ["IPV4", "IPV6"], # required
    #             security_group_ids: ["SecurityGroupIdentifier"],
    #             tags: {
    #               "TagKey" => "TagValue"
    #             },
    #             routing_domain: "RoutingDomain"
    #           }
    #         },
    #         private_endpoint_managed_resources: [
    #           {
    #             domain: "DomainName",
    #             resource_gateway_arn: "ResourceGatewayArn",
    #             resource_association_arn: "ResourceAssociationArn"
    #           }
    #         ],
    #         authorization_data: {
    #           # One of:
    #           oauth2: {
    #             authorization_url: "String", # required
    #             user_id: "String"
    #           }
    #         },
    #         protocol_type: "MCP" # One of: ["MCP", "HTTP"],
    #         certificate_configurations: [{
    #           # One of:
    #           s3: {
    #             uri: "CertificateS3Uri", # required
    #             bucket_owner_account_id: "CertificateBucketOwnerAccountId"
    #           },
    #           secrets_manager: {
    #             secret_arn: "CertificateSecretArn", # required
    #           }
    #         }]
    #       }
    #     ]
    #   }
    # @return [Types::SynchronizeGatewayTargetsResponse]
    def synchronize_gateway_targets(params = {}, options = {})
      request = build_request(:synchronize_gateway_targets, params)
      request.send_request(options)
    end

    # <p>Associates the specified tags to a resource with the specified resourceArn. If existing tags on a resource are not specified in the request parameters, they are not changed. When a resource is deleted, the tags associated with that resource are also deleted.</p> <note> <p>This feature is currently available only for AgentCore Runtime, Browser, Browser Profile, Code Interpreter tool, and Gateway.</p> </note>
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

    # <p>Removes the specified tags from the specified resource.</p> <note> <p>This feature is currently available only for AgentCore Runtime, Browser, Browser Profile, Code Interpreter tool, and Gateway.</p> </note>
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
    # @option params [Types::AgentRuntimeArtifact] :agent_runtime_artifact
    #   <p>The updated artifact of the AgentCore Runtime.</p>
    # @option params [String] :role_arn
    #   <p>The updated IAM role ARN that provides permissions for the AgentCore Runtime.</p>
    # @option params [Types::NetworkConfiguration] :network_configuration
    #   <p>The updated network configuration for the AgentCore Runtime.</p>
    # @option params [String] :description
    #   <p>The updated description of the AgentCore Runtime.</p>
    # @option params [Types::AuthorizerConfiguration] :authorizer_configuration
    #   <p>The updated authorizer configuration for the AgentCore Runtime.</p>
    # @option params [Types::RequestHeaderConfiguration] :request_header_configuration
    #   <p>The updated configuration for HTTP request headers that will be passed through to the runtime.</p>
    # @option params [Types::ProtocolConfiguration] :protocol_configuration
    #   <p>The protocol configuration for an agent runtime. This structure defines how the agent runtime communicates with clients.</p>
    # @option params [Types::LifecycleConfiguration] :lifecycle_configuration
    #   <p>The updated life cycle configuration for the AgentCore Runtime.</p>
    # @option params [Types::RuntimeMetadataConfiguration] :metadata_configuration
    #   <p>The updated configuration for microVM Metadata Service (MMDS) settings for the AgentCore Runtime.</p>
    # @option params [Hash<String, String>] :environment_variables
    #   <p>Updated environment variables to set in the AgentCore Runtime environment.</p>
    # @option params [Array<Types::FilesystemConfiguration>] :filesystem_configurations
    #   <p>The updated filesystem configurations to mount into the AgentCore Runtime.</p>
    # @option params [Types::CapacityProviderConfiguration] :capacity_provider_configuration
    #   <p>The updated capacity provider configuration for the AgentCore Runtime.</p>
    # @option params [String] :platform_version
    #   <p>The updated version of the runtime platform to use for the AgentCore Runtime.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure idempotency of the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_runtime_id: "AgentRuntimeId", # required
    #     agent_runtime_artifact: { # required
    #       # One of:
    #       container_configuration: {
    #         container_uri: "RuntimeContainerUri", # required
    #       },
    #       code_configuration: {
    #         code: { # required
    #           # One of:
    #           s3: {
    #             bucket: "String", # required
    #             prefix: "String", # required
    #             version_id: "String"
    #           }
    #         },
    #         runtime: "PYTHON_3_10" # One of: ["PYTHON_3_10", "PYTHON_3_11", "PYTHON_3_12", "PYTHON_3_13", "PYTHON_3_14", "NODE_22"], # required
    #         entry_point: ["entryPoint"], # required
    #       }
    #     },
    #     role_arn: "RoleArn", # required
    #     network_configuration: {
    #       network_mode: "PUBLIC" # One of: ["PUBLIC", "VPC"], # required
    #       network_mode_config: {
    #         security_groups: ["SecurityGroupId"], # required
    #         subnets: ["SubnetId"], # required
    #         require_service_s3_endpoint: false
    #       }
    #     },
    #     description: "Description",
    #     authorizer_configuration: {
    #       # One of:
    #       custom_jwt_authorizer: {
    #         discovery_url: "DiscoveryUrl", # required
    #         allowed_audience: ["AllowedAudience"],
    #         allowed_clients: ["AllowedClient"],
    #         allowed_scopes: ["AllowedScopeType"],
    #         advertised_scope_mapping: {
    #           "AllowedScopeType" => "AllowedScopeType"
    #         },
    #         custom_claims: [
    #           {
    #             inbound_token_claim_name: "InboundTokenClaimNameType", # required
    #             inbound_token_claim_value_type: "STRING" # One of: ["STRING", "STRING_ARRAY"], # required
    #             authorizing_claim_match_value: { # required
    #               claim_match_value: { # required
    #                 # One of:
    #                 match_value_string: "MatchValueString",
    #                 match_value_string_list: ["MatchValueString"]
    #               },
    #               claim_match_operator: "EQUALS" # One of: ["EQUALS", "CONTAINS", "CONTAINS_ANY"], # required
    #             }
    #           }
    #         ],
    #         private_endpoint: {
    #           # One of:
    #           self_managed_lattice_resource: {
    #             # One of:
    #             resource_configuration_identifier: "ResourceConfigurationIdentifier"
    #           },
    #           managed_vpc_resource: {
    #             vpc_identifier: "VpcIdentifier", # required
    #             subnet_ids: ["SubnetId"], # required
    #             endpoint_ip_address_type: "IPV4" # One of: ["IPV4", "IPV6"], # required
    #             security_group_ids: ["SecurityGroupIdentifier"],
    #             tags: {
    #               "TagKey" => "TagValue"
    #             },
    #             routing_domain: "RoutingDomain"
    #           }
    #         },
    #         private_endpoint_overrides: [
    #           {
    #             domain: "PrivateEndpointOverrideDomain", # required
    #             private_endpoint: { # required
    #               # One of:
    #               self_managed_lattice_resource: {
    #                 # One of:
    #                 resource_configuration_identifier: "ResourceConfigurationIdentifier"
    #               },
    #               managed_vpc_resource: {
    #                 vpc_identifier: "VpcIdentifier", # required
    #                 subnet_ids: ["SubnetId"], # required
    #                 endpoint_ip_address_type: "IPV4" # One of: ["IPV4", "IPV6"], # required
    #                 security_group_ids: ["SecurityGroupIdentifier"],
    #                 tags: {
    #                   "TagKey" => "TagValue"
    #                 },
    #                 routing_domain: "RoutingDomain"
    #               }
    #             }
    #           }
    #         ],
    #         allowed_workload_configuration: {
    #           hosting_environments: [
    #             {
    #               arn: "BedrockAgentcoreResourceArn", # required
    #             }
    #           ],
    #           workload_identities: ["WorkloadIdentityNameType"]
    #         }
    #       }
    #     },
    #     request_header_configuration: {
    #       # One of:
    #       request_header_allowlist: ["HeaderName"]
    #     },
    #     protocol_configuration: {
    #       server_protocol: "MCP" # One of: ["MCP", "HTTP", "A2A", "AGUI"], # required
    #     },
    #     lifecycle_configuration: {
    #       idle_runtime_session_timeout: 1,
    #       max_lifetime: 1
    #     },
    #     metadata_configuration: {
    #       require_mmdsv2: false, # required
    #     },
    #     environment_variables: {
    #       "EnvironmentVariableKey" => "EnvironmentVariableValue"
    #     },
    #     filesystem_configurations: [{
    #       # One of:
    #       session_storage: {
    #         mount_path: "MountPath", # required
    #       },
    #       s3_files_access_point: {
    #         access_point_arn: "S3FilesAccessPointArn", # required
    #         mount_path: "MountPath", # required
    #       },
    #       efs_access_point: {
    #         access_point_arn: "EfsAccessPointArn", # required
    #         mount_path: "MountPath", # required
    #       },
    #       capacity_provider_volume: {
    #         volume_name: "CapacityProviderVolumeName", # required
    #         mount_path: "MountPath", # required
    #       }
    #     }],
    #     capacity_provider_configuration: {
    #       capacity_provider_arn: "CapacityProviderArn", # required
    #     },
    #     platform_version: "PlatformVersion",
    #     client_token: "ClientToken"
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
    #     status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "READY", "DELETING", "DELETE_FAILED"], # required
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
    #     status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "READY", "DELETING", "DELETE_FAILED"], # required
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
    # @option params [Types::SecretReference] :api_key_secret_config
    #   <p>A reference to the Amazon Web Services Secrets Manager secret that stores the API key. This includes the secret ID and the JSON key used to extract the API key value from the secret. Required when <code>apiKeySecretSource</code> is set to <code>EXTERNAL</code>.</p>
    # @option params [String] :api_key_secret_source
    #   <p>The source type of the API key secret. Use <code>MANAGED</code> if the secret is managed by the service, or <code>EXTERNAL</code> if you manage the secret yourself in Amazon Web Services Secrets Manager.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "CredentialProviderName", # required
    #     api_key: "DefaultApiKeyType",
    #     api_key_secret_config: {
    #       secret_id: "SecretIdType", # required
    #       json_key: "SecretJsonKeyType", # required
    #     },
    #     api_key_secret_source: "MANAGED" # One of: ["MANAGED", "EXTERNAL"]
    #   }
    #   options = {}
    #   response = client.update_api_key_credential_provider(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     api_key_secret_arn: { # required
    #       secret_arn: "SecretArn", # required
    #     },
    #     api_key_secret_json_key: "SecretJsonKeyType",
    #     api_key_secret_source: "MANAGED" # One of: ["MANAGED", "EXTERNAL"],
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

    # <p>Updates a capacity provider. Only the description can be changed. To change other configuration, such as instance types, networking, or storage, create a new capacity provider.</p>
    # @param [Hash, Types::UpdateCapacityProviderInput] params
    # @option params [String] :capacity_provider_id
    #   <p>The unique identifier of the capacity provider to update.</p>
    # @option params [Types::UpdatedDescription] :description
    #   <p>The updated description of the capacity provider.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If you don't specify this field, a value is randomly generated for you. If this token matches a previous request, the service ignores the request, but doesn't return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     capacity_provider_id: "CapacityProviderId", # required
    #     description: {
    #       optional_value: "Description"
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.update_capacity_provider(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     capacity_provider_id: "CapacityProviderId", # required
    #     capacity_provider_arn: "CapacityProviderArn", # required
    #     name: "CapacityProviderName", # required
    #     status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "READY", "DELETING", "DELETE_FAILED"], # required
    #     created_at: Time.now, # required
    #     last_updated_at: Time.now, # required
    #   }
    # @return [Types::UpdateCapacityProviderOutput]
    def update_capacity_provider(params = {}, options = {})
      request = build_request(:update_capacity_provider, params)
      request.send_request(options)
    end

    # <p>Updates a configuration bundle by creating a new version with the specified changes. Each update creates a new version in the version history.</p>
    # @param [Hash, Types::UpdateConfigurationBundleRequest] params
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If you don't specify this field, a value is randomly generated for you. If this token matches a previous request, the service ignores the request, but doesn't return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    # @option params [String] :bundle_id
    #   <p>The unique identifier of the configuration bundle to update.</p>
    # @option params [String] :bundle_name
    #   <p>The updated name for the configuration bundle.</p>
    # @option params [String] :description
    #   <p>The updated description for the configuration bundle.</p>
    # @option params [Hash<String, Types::ComponentConfiguration>] :components
    #   <p>The updated component configurations. Creates a new version of the bundle.</p>
    # @option params [Array<String>] :parent_version_ids
    #   <p>A list of parent version identifiers for lineage tracking. Regular commits have a single parent. Merge commits have two parents: the target branch parent and the source branch parent. If the branch already exists, the first parent must be the latest version on that branch.</p>
    # @option params [String] :branch_name
    #   <p>The branch name for this version. If not specified, inherits the parent's branch or defaults to <code>mainline</code>.</p>
    # @option params [String] :commit_message
    #   <p>A commit message describing the changes in this version.</p>
    # @option params [Types::VersionCreatedBySource] :created_by
    #   <p>The source that created this version, including the source name and optional ARN.</p>
    # @option params [String] :kms_key_arn
    #   <p>Optional KMS key ARN for encrypting component configurations. If provided, components will be encrypted with this key. If the bundle already has a KMS key, this rotates to the new key.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken",
    #     bundle_id: "ConfigurationBundleId", # required
    #     bundle_name: "ConfigurationBundleName",
    #     description: "ConfigurationBundleDescription",
    #     components: {
    #       "ComponentIdentifier" => {
    #         configuration: ""null"", # required
    #       }
    #     },
    #     parent_version_ids: ["ConfigurationBundleVersion"], # required
    #     branch_name: "BranchName",
    #     commit_message: "String", # required
    #     created_by: {
    #       name: "String", # required
    #       arn: "String"
    #     },
    #     kms_key_arn: "KmsKeyArn"
    #   }
    #   options = {}
    #   response = client.update_configuration_bundle(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     bundle_arn: "ConfigurationBundleArn", # required
    #     bundle_id: "ConfigurationBundleId", # required
    #     version_id: "ConfigurationBundleVersion", # required
    #     updated_at: Time.now, # required
    #   }
    # @return [Types::UpdateConfigurationBundleResponse]
    def update_configuration_bundle(params = {}, options = {})
      request = build_request(:update_configuration_bundle, params)
      request.send_request(options)
    end

    # <p>Updates an existing consent portal.</p>
    # @param [Hash, Types::UpdateConsentPortalRequest] params
    # @option params [String] :consent_portal_identifier
    #   <p>The identifier of the consent portal. You can specify either the consent portal ID or its Amazon Resource Name (ARN).</p>
    # @option params [String] :execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that the consent portal assumes to access the resources defined in its sources.</p>
    # @option params [Types::ConsentPortalIdpConfig] :idp_config
    #   <p>The identity provider configuration that the consent portal uses to authenticate end users.</p>
    # @option params [String] :description
    #   <p>The description of the consent portal.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     consent_portal_identifier: "ConsentPortalIdentifier", # required
    #     execution_role_arn: "ExecutionRoleArnType",
    #     idp_config: {
    #       credential_provider_arn: "OAuth2CredentialProviderArn", # required
    #       scopes: ["AllowedScopeType"], # required
    #       audience: "AllowedAudienceType"
    #     },
    #     description: "ConsentPortalDescriptionType"
    #   }
    #   options = {}
    #   response = client.update_consent_portal(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     sources: [ # required
    #       {
    #         identifier: "ConsentPortalSourceIdentifierType", # required
    #         type: "agentcore-gateway" # One of: ["agentcore-gateway"], # required
    #       }
    #     ],
    #     consent_portal_arn: "ConsentPortalArnType", # required
    #     consent_portal_id: "ConsentPortalIdType", # required
    #     created_at: Time.now, # required
    #     description: "ConsentPortalDescriptionType",
    #     execution_role_arn: "ExecutionRoleArnType", # required
    #     idp_config: { # required
    #       credential_provider_arn: "OAuth2CredentialProviderArn", # required
    #       scopes: ["AllowedScopeType"], # required
    #       audience: "AllowedAudienceType"
    #     },
    #     name: "ConsentPortalNameType", # required
    #     portal_url: "PortalUrlType",
    #     status: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "UPDATE_FAILED", "DELETING", "FAILED"], # required
    #     status_reason: "StatusReasonType",
    #     updated_at: Time.now, # required
    #   }
    # @return [Types::UpdateConsentPortalResponse]
    def update_consent_portal(params = {}, options = {})
      request = build_request(:update_consent_portal, params)
      request.send_request(options)
    end

    # <p> Updates a dataset's metadata. Synchronous operation. Only provided fields are updated; omitted fields remain unchanged. To modify dataset content, use <code>AddDatasetExamples</code>, <code>UpdateDatasetExamples</code>, or <code>DeleteDatasetExamples</code>. </p>
    # @param [Hash, Types::UpdateDatasetRequest] params
    # @option params [String] :dataset_id
    #   <p> The unique identifier of the dataset to update. </p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If you don't specify this field, a value is randomly generated for you. If this token matches a previous request, the service ignores the request, but doesn't return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    # @option params [String] :description
    #   <p> The updated description for the dataset. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     dataset_id: "DatasetId", # required
    #     client_token: "ClientToken",
    #     description: "String"
    #   }
    #   options = {}
    #   response = client.update_dataset(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dataset_arn: "DatasetArn", # required
    #     dataset_id: "DatasetId", # required
    #     updated_at: Time.now, # required
    #   }
    # @return [Types::UpdateDatasetResponse]
    def update_dataset(params = {}, options = {})
      request = build_request(:update_dataset, params)
      request.send_request(options)
    end

    # <p> Updates multiple existing examples in-place on DRAFT. All examples are validated against the dataset's schema type before any writes occur. If any example fails validation, the entire batch is rejected (all-or-nothing semantics). </p>
    # @param [Hash, Types::UpdateDatasetExamplesRequest] params
    # @option params [String] :dataset_id
    #   <p> The unique identifier of the dataset. </p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If you don't specify this field, a value is randomly generated for you. If this token matches a previous request, the service ignores the request, but doesn't return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    # @option params [Array<JSON>] :examples
    #   <p> Examples to update. Each element is a JSON object containing a required <code>exampleId</code> field identifying the existing example, plus the replacement fields. Maximum 1000 examples per call. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     dataset_id: "DatasetId", # required
    #     client_token: "ClientToken",
    #     examples: [""null""], # required
    #   }
    #   options = {}
    #   response = client.update_dataset_examples(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dataset_arn: "DatasetArn", # required
    #     dataset_id: "DatasetId", # required
    #     status: "CREATING" # One of: ["CREATING", "UPDATING", "DELETING", "ACTIVE", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED"], # required
    #     updated_count: 1, # required
    #     updated_at: Time.now, # required
    #   }
    # @return [Types::UpdateDatasetExamplesResponse]
    def update_dataset_examples(params = {}, options = {})
      request = build_request(:update_dataset_examples, params)
      request.send_request(options)
    end

    # <p> Updates a custom evaluator's configuration, description, or evaluation level. Built-in evaluators cannot be updated. The evaluator must not be locked for modification. </p>
    # @param [Hash, Types::UpdateEvaluatorRequest] params
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If you don't specify this field, a value is randomly generated for you. If this token matches a previous request, the service ignores the request, but doesn't return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    # @option params [String] :evaluator_id
    #   <p> The unique identifier of the evaluator to update. </p>
    # @option params [String] :description
    #   <p> The updated description of the evaluator. </p>
    # @option params [Types::EvaluatorConfig] :evaluator_config
    #   <p> The updated configuration for the evaluator. Specify either LLM-as-a-Judge settings with instructions, rating scale, and model configuration, or code-based settings with a customer-managed Lambda function. </p>
    # @option params [String] :level
    #   <p> The updated evaluation level (<code>TOOL_CALL</code>, <code>TRACE</code>, or <code>SESSION</code>) that determines the scope of evaluation. </p>
    # @option params [String] :kms_key_arn
    #   <p> The Amazon Resource Name (ARN) of a customer managed KMS key to use for encrypting sensitive evaluator data. Specify a new key ARN to rotate the encryption key, or specify a key ARN to add encryption to an evaluator that was previously created without one. When you rotate to a new key, the service decrypts the existing data with the old key and re-encrypts it with the new key. Only symmetric encryption KMS keys are supported. For more information, see <a href="https://docs.aws.amazon.com/bedrock-agentcore/latest/devguide/evaluations-encryption.html">Encryption at rest for AgentCore Evaluations</a>. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken",
    #     evaluator_id: "EvaluatorId", # required
    #     description: "EvaluatorDescription",
    #     evaluator_config: {
    #       # One of:
    #       llm_as_a_judge: {
    #         instructions: "EvaluatorInstructions", # required
    #         rating_scale: { # required
    #           # One of:
    #           numerical: [
    #             {
    #               definition: "String", # required
    #               value: 1.0, # required
    #               label: "String", # required
    #             }
    #           ],
    #           categorical: [
    #             {
    #               definition: "String", # required
    #               label: "String", # required
    #             }
    #           ]
    #         },
    #         model_config: { # required
    #           # One of:
    #           bedrock_evaluator_model_config: {
    #             model_id: "ModelId", # required
    #             inference_config: {
    #               max_tokens: 1,
    #               temperature: 1.0,
    #               top_p: 1.0,
    #               stop_sequences: ["NonEmptyString"]
    #             },
    #             additional_model_request_fields: ""null""
    #           },
    #           responses_evaluator_model_config: {
    #             model_id: "ModelId", # required
    #             max_output_tokens: 1,
    #             temperature: 1.0,
    #             top_p: 1.0,
    #             reasoning: {
    #               effort: "String"
    #             }
    #           }
    #         }
    #       },
    #       code_based: {
    #         # One of:
    #         lambda_config: {
    #           lambda_arn: "LambdaArn", # required
    #           lambda_timeout_in_seconds: 1
    #         }
    #       },
    #       derived: {
    #         base_evaluator_id: "EvaluatorId", # required
    #         model_config: { # required
    #           # One of:
    #           bedrock_evaluator_model_config: {
    #             model_id: "ModelId", # required
    #             inference_config: {
    #               max_tokens: 1,
    #               temperature: 1.0,
    #               top_p: 1.0,
    #               stop_sequences: ["NonEmptyString"]
    #             },
    #             additional_model_request_fields: ""null""
    #           },
    #           responses_evaluator_model_config: {
    #             model_id: "ModelId", # required
    #             max_output_tokens: 1,
    #             temperature: 1.0,
    #             top_p: 1.0,
    #             reasoning: {
    #               effort: "String"
    #             }
    #           }
    #         }
    #       }
    #     },
    #     level: "TOOL_CALL" # One of: ["TOOL_CALL", "TRACE", "SESSION"],
    #     kms_key_arn: "KmsKeyArn"
    #   }
    #   options = {}
    #   response = client.update_evaluator(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     evaluator_arn: "EvaluatorArn", # required
    #     evaluator_id: "EvaluatorId", # required
    #     updated_at: Time.now, # required
    #     status: "ACTIVE" # One of: ["ACTIVE", "CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "DELETING"], # required
    #   }
    # @return [Types::UpdateEvaluatorResponse]
    def update_evaluator(params = {}, options = {})
      request = build_request(:update_evaluator, params)
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
    # @option params [Types::CustomTransformConfiguration] :custom_transform_configuration
    #   <p>The updated custom transformation configuration for the gateway. This configuration defines how the gateway transforms requests and responses.</p>
    # @option params [Array<Types::GatewayInterceptorConfiguration>] :interceptor_configurations
    #   <p>The updated interceptor configurations for the gateway.</p>
    # @option params [Types::GatewayPolicyEngineConfiguration] :policy_engine_configuration
    #   <p>The updated policy engine configuration for the gateway. A policy engine is a collection of policies that evaluates and authorizes agent tool calls. When associated with a gateway, the policy engine intercepts all agent requests and determines whether to allow or deny each action based on the defined policies.</p>
    # @option params [String] :exception_level
    #   <p>The level of detail in error messages returned when invoking the gateway.</p> <ul> <li> <p>If the value is <code>DEBUG</code>, granular exception messages are returned to help a user debug the gateway.</p> </li> <li> <p>If the value is omitted, a generic error message is returned to the end user.</p> </li> </ul>
    # @option params [Types::WafConfiguration] :waf_configuration
    #   <p>The updated Amazon Web Services WAF configuration for the gateway.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_identifier: "GatewayIdentifier", # required
    #     name: "GatewayName", # required
    #     description: "GatewayDescription",
    #     role_arn: "RoleArn", # required
    #     protocol_type: "MCP" # One of: ["MCP"],
    #     protocol_configuration: {
    #       # One of:
    #       mcp: {
    #         supported_versions: ["McpVersion"],
    #         instructions: "McpInstructions",
    #         search_type: "SEMANTIC" # One of: ["SEMANTIC"],
    #         session_configuration: {
    #           session_timeout_in_seconds: 1
    #         },
    #         streaming_configuration: {
    #           enable_response_streaming: false
    #         },
    #         disable_mcp_list_tools_pagination: false
    #       }
    #     },
    #     authorizer_type: "CUSTOM_JWT" # One of: ["CUSTOM_JWT", "AWS_IAM", "NONE", "AUTHENTICATE_ONLY"], # required
    #     authorizer_configuration: {
    #       # One of:
    #       custom_jwt_authorizer: {
    #         discovery_url: "DiscoveryUrl", # required
    #         allowed_audience: ["AllowedAudience"],
    #         allowed_clients: ["AllowedClient"],
    #         allowed_scopes: ["AllowedScopeType"],
    #         advertised_scope_mapping: {
    #           "AllowedScopeType" => "AllowedScopeType"
    #         },
    #         custom_claims: [
    #           {
    #             inbound_token_claim_name: "InboundTokenClaimNameType", # required
    #             inbound_token_claim_value_type: "STRING" # One of: ["STRING", "STRING_ARRAY"], # required
    #             authorizing_claim_match_value: { # required
    #               claim_match_value: { # required
    #                 # One of:
    #                 match_value_string: "MatchValueString",
    #                 match_value_string_list: ["MatchValueString"]
    #               },
    #               claim_match_operator: "EQUALS" # One of: ["EQUALS", "CONTAINS", "CONTAINS_ANY"], # required
    #             }
    #           }
    #         ],
    #         private_endpoint: {
    #           # One of:
    #           self_managed_lattice_resource: {
    #             # One of:
    #             resource_configuration_identifier: "ResourceConfigurationIdentifier"
    #           },
    #           managed_vpc_resource: {
    #             vpc_identifier: "VpcIdentifier", # required
    #             subnet_ids: ["SubnetId"], # required
    #             endpoint_ip_address_type: "IPV4" # One of: ["IPV4", "IPV6"], # required
    #             security_group_ids: ["SecurityGroupIdentifier"],
    #             tags: {
    #               "TagKey" => "TagValue"
    #             },
    #             routing_domain: "RoutingDomain"
    #           }
    #         },
    #         private_endpoint_overrides: [
    #           {
    #             domain: "PrivateEndpointOverrideDomain", # required
    #             private_endpoint: { # required
    #               # One of:
    #               self_managed_lattice_resource: {
    #                 # One of:
    #                 resource_configuration_identifier: "ResourceConfigurationIdentifier"
    #               },
    #               managed_vpc_resource: {
    #                 vpc_identifier: "VpcIdentifier", # required
    #                 subnet_ids: ["SubnetId"], # required
    #                 endpoint_ip_address_type: "IPV4" # One of: ["IPV4", "IPV6"], # required
    #                 security_group_ids: ["SecurityGroupIdentifier"],
    #                 tags: {
    #                   "TagKey" => "TagValue"
    #                 },
    #                 routing_domain: "RoutingDomain"
    #               }
    #             }
    #           }
    #         ],
    #         allowed_workload_configuration: {
    #           hosting_environments: [
    #             {
    #               arn: "BedrockAgentcoreResourceArn", # required
    #             }
    #           ],
    #           workload_identities: ["WorkloadIdentityNameType"]
    #         }
    #       }
    #     },
    #     kms_key_arn: "KmsKeyArn",
    #     custom_transform_configuration: {
    #       lambda: {
    #         arn: "LambdaFunctionArn"
    #       }
    #     },
    #     interceptor_configurations: [
    #       {
    #         interceptor: { # required
    #           # One of:
    #           lambda: {
    #             arn: "LambdaFunctionArn", # required
    #           }
    #         },
    #         interception_points: ["REQUEST" # One of: ["REQUEST", "RESPONSE"]], # required
    #         input_configuration: {
    #           pass_request_headers: false, # required
    #           payload_filter: {
    #             exclude: [{ # required
    #               # One of:
    #               field: "RESPONSE_BODY" # One of: ["RESPONSE_BODY"]
    #             }]
    #           }
    #         }
    #       }
    #     ],
    #     policy_engine_configuration: {
    #       arn: "GatewayPolicyEngineArn", # required
    #       mode: "LOG_ONLY" # One of: ["LOG_ONLY", "ENFORCE"], # required
    #     },
    #     exception_level: "DEBUG" # One of: ["DEBUG"],
    #     waf_configuration: {
    #       failure_mode: "FAIL_CLOSE" # One of: ["FAIL_CLOSE", "FAIL_OPEN"]
    #     }
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
    #     protocol_type: "MCP" # One of: ["MCP"],
    #     protocol_configuration: {
    #       # One of:
    #       mcp: {
    #         supported_versions: ["McpVersion"],
    #         instructions: "McpInstructions",
    #         search_type: "SEMANTIC" # One of: ["SEMANTIC"],
    #         session_configuration: {
    #           session_timeout_in_seconds: 1
    #         },
    #         streaming_configuration: {
    #           enable_response_streaming: false
    #         },
    #         disable_mcp_list_tools_pagination: false
    #       }
    #     },
    #     authorizer_type: "CUSTOM_JWT" # One of: ["CUSTOM_JWT", "AWS_IAM", "NONE", "AUTHENTICATE_ONLY"], # required
    #     authorizer_configuration: {
    #       # One of:
    #       custom_jwt_authorizer: {
    #         discovery_url: "DiscoveryUrl", # required
    #         allowed_audience: ["AllowedAudience"],
    #         allowed_clients: ["AllowedClient"],
    #         allowed_scopes: ["AllowedScopeType"],
    #         advertised_scope_mapping: {
    #           "AllowedScopeType" => "AllowedScopeType"
    #         },
    #         custom_claims: [
    #           {
    #             inbound_token_claim_name: "InboundTokenClaimNameType", # required
    #             inbound_token_claim_value_type: "STRING" # One of: ["STRING", "STRING_ARRAY"], # required
    #             authorizing_claim_match_value: { # required
    #               claim_match_value: { # required
    #                 # One of:
    #                 match_value_string: "MatchValueString",
    #                 match_value_string_list: ["MatchValueString"]
    #               },
    #               claim_match_operator: "EQUALS" # One of: ["EQUALS", "CONTAINS", "CONTAINS_ANY"], # required
    #             }
    #           }
    #         ],
    #         private_endpoint: {
    #           # One of:
    #           self_managed_lattice_resource: {
    #             # One of:
    #             resource_configuration_identifier: "ResourceConfigurationIdentifier"
    #           },
    #           managed_vpc_resource: {
    #             vpc_identifier: "VpcIdentifier", # required
    #             subnet_ids: ["SubnetId"], # required
    #             endpoint_ip_address_type: "IPV4" # One of: ["IPV4", "IPV6"], # required
    #             security_group_ids: ["SecurityGroupIdentifier"],
    #             tags: {
    #               "TagKey" => "TagValue"
    #             },
    #             routing_domain: "RoutingDomain"
    #           }
    #         },
    #         private_endpoint_overrides: [
    #           {
    #             domain: "PrivateEndpointOverrideDomain", # required
    #             private_endpoint: { # required
    #               # One of:
    #               self_managed_lattice_resource: {
    #                 # One of:
    #                 resource_configuration_identifier: "ResourceConfigurationIdentifier"
    #               },
    #               managed_vpc_resource: {
    #                 vpc_identifier: "VpcIdentifier", # required
    #                 subnet_ids: ["SubnetId"], # required
    #                 endpoint_ip_address_type: "IPV4" # One of: ["IPV4", "IPV6"], # required
    #                 security_group_ids: ["SecurityGroupIdentifier"],
    #                 tags: {
    #                   "TagKey" => "TagValue"
    #                 },
    #                 routing_domain: "RoutingDomain"
    #               }
    #             }
    #           }
    #         ],
    #         allowed_workload_configuration: {
    #           hosting_environments: [
    #             {
    #               arn: "BedrockAgentcoreResourceArn", # required
    #             }
    #           ],
    #           workload_identities: ["WorkloadIdentityNameType"]
    #         }
    #       }
    #     },
    #     kms_key_arn: "KmsKeyArn",
    #     custom_transform_configuration: {
    #       lambda: {
    #         arn: "LambdaFunctionArn"
    #       }
    #     },
    #     interceptor_configurations: [
    #       {
    #         interceptor: { # required
    #           # One of:
    #           lambda: {
    #             arn: "LambdaFunctionArn", # required
    #           }
    #         },
    #         interception_points: ["REQUEST" # One of: ["REQUEST", "RESPONSE"]], # required
    #         input_configuration: {
    #           pass_request_headers: false, # required
    #           payload_filter: {
    #             exclude: [{ # required
    #               # One of:
    #               field: "RESPONSE_BODY" # One of: ["RESPONSE_BODY"]
    #             }]
    #           }
    #         }
    #       }
    #     ],
    #     policy_engine_configuration: {
    #       arn: "GatewayPolicyEngineArn", # required
    #       mode: "LOG_ONLY" # One of: ["LOG_ONLY", "ENFORCE"], # required
    #     },
    #     workload_identity_details: {
    #       workload_identity_arn: "WorkloadIdentityArn", # required
    #     },
    #     exception_level: "DEBUG" # One of: ["DEBUG"],
    #     web_acl_arn: "WebAclArn",
    #     waf_configuration: {
    #       failure_mode: "FAIL_CLOSE" # One of: ["FAIL_CLOSE", "FAIL_OPEN"]
    #     }
    #   }
    # @return [Types::UpdateGatewayResponse]
    def update_gateway(params = {}, options = {})
      request = build_request(:update_gateway, params)
      request.send_request(options)
    end

    # <p>Updates the entries of a gateway rate limit. The dimension keys are immutable after creation.</p>
    # @param [Hash, Types::UpdateGatewayRateLimitRequest] params
    # @option params [String] :gateway_identifier
    #   <p>The unique identifier of the gateway.</p>
    # @option params [String] :rate_limit_id
    #   <p>The unique identifier of the rate limit to update.</p>
    # @option params [String] :description
    #   <p>The updated human-readable description for this rate limit.</p>
    # @option params [Array<Types::LimitEntry>] :entries
    #   <p>The updated rule entries. The dimension keys are immutable after creation and cannot be changed.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_identifier: "GatewayIdentifier", # required
    #     rate_limit_id: "GatewayRateLimitId", # required
    #     description: "GatewayRateLimitDescription",
    #     entries: [ # required
    #       {
    #         dimensions: { # required
    #           "DimensionKey" => "DimensionValue"
    #         },
    #         requests: [
    #           {
    #             rate: 1.0, # required
    #             period: "second" # One of: ["second", "minute"], # required
    #           }
    #         ],
    #         tokens: [
    #           {
    #             rate: 1.0, # required
    #             period: "second" # One of: ["second", "minute"], # required
    #           }
    #         ],
    #         connections: [
    #           {
    #             rate: 1.0, # required
    #             period: "second" # One of: ["second", "minute"], # required
    #           }
    #         ]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_gateway_rate_limit(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rate_limit_id: "GatewayRateLimitId", # required
    #     gateway_identifier: "GatewayIdentifier", # required
    #     description: "GatewayRateLimitDescription",
    #     dimension_keys: ["DimensionKey"], # required
    #     entries: [ # required
    #       {
    #         dimensions: { # required
    #           "DimensionKey" => "DimensionValue"
    #         },
    #         requests: [
    #           {
    #             rate: 1.0, # required
    #             period: "second" # One of: ["second", "minute"], # required
    #           }
    #         ],
    #         tokens: [
    #           {
    #             rate: 1.0, # required
    #             period: "second" # One of: ["second", "minute"], # required
    #           }
    #         ],
    #         connections: [
    #           {
    #             rate: 1.0, # required
    #             period: "second" # One of: ["second", "minute"], # required
    #           }
    #         ]
    #       }
    #     ],
    #     status: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "DELETING"], # required
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #   }
    # @return [Types::UpdateGatewayRateLimitResponse]
    def update_gateway_rate_limit(params = {}, options = {})
      request = build_request(:update_gateway_rate_limit, params)
      request.send_request(options)
    end

    # <p>Updates a gateway rule's priority, conditions, actions, or description.</p>
    # @param [Hash, Types::UpdateGatewayRuleRequest] params
    # @option params [String] :gateway_identifier
    #   <p>The identifier of the gateway containing the rule.</p>
    # @option params [String] :rule_id
    #   <p>The unique identifier of the rule to update.</p>
    # @option params [Integer] :priority
    #   <p>The updated priority of the rule.</p>
    # @option params [Array<Types::Condition>] :conditions
    #   <p>The updated conditions for the rule.</p>
    # @option params [Array<Types::Action>] :actions
    #   <p>The updated actions for the rule.</p>
    # @option params [String] :description
    #   <p>The updated description of the rule.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_identifier: "GatewayIdentifier", # required
    #     rule_id: "GatewayRuleId", # required
    #     priority: 1,
    #     conditions: [{
    #       # One of:
    #       match_principals: {
    #         any_of: [{ # required
    #           # One of:
    #           iam_principal: {
    #             arn: "IamPrincipalArn", # required
    #             operator: "StringEquals" # One of: ["StringEquals", "StringLike"]
    #           }
    #         }]
    #       },
    #       match_paths: {
    #         any_of: ["MatchPathPattern"], # required
    #       }
    #     }],
    #     actions: [{
    #       # One of:
    #       configuration_bundle: {
    #         # One of:
    #         static_override: {
    #           bundle_arn: "GatewayConfigurationBundleArn", # required
    #           bundle_version: "String", # required
    #         },
    #         weighted_override: {
    #           traffic_split: [ # required
    #             {
    #               name: "String", # required
    #               weight: 1, # required
    #               configuration_bundle: { # required
    #                 bundle_arn: "GatewayConfigurationBundleArn", # required
    #                 bundle_version: "String", # required
    #               },
    #               description: "String",
    #               metadata: {
    #                 "TrafficSplitMetadataKey" => "TrafficSplitMetadataValue"
    #               }
    #             }
    #           ]
    #         }
    #       },
    #       route_to_target: {
    #         # One of:
    #         static_route: {
    #           target_name: "TargetName", # required
    #         },
    #         weighted_route: {
    #           traffic_split: [ # required
    #             {
    #               name: "String", # required
    #               weight: 1, # required
    #               target_name: "TargetName", # required
    #               description: "String",
    #               metadata: {
    #                 "TrafficSplitMetadataKey" => "TrafficSplitMetadataValue"
    #               }
    #             }
    #           ]
    #         }
    #       }
    #     }],
    #     description: "GatewayRuleDescription"
    #   }
    #   options = {}
    #   response = client.update_gateway_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rule_id: "GatewayRuleId", # required
    #     gateway_arn: "GatewayArn", # required
    #     priority: 1, # required
    #     conditions: [{
    #       # One of:
    #       match_principals: {
    #         any_of: [{ # required
    #           # One of:
    #           iam_principal: {
    #             arn: "IamPrincipalArn", # required
    #             operator: "StringEquals" # One of: ["StringEquals", "StringLike"]
    #           }
    #         }]
    #       },
    #       match_paths: {
    #         any_of: ["MatchPathPattern"], # required
    #       }
    #     }],
    #     actions: [{ # required
    #       # One of:
    #       configuration_bundle: {
    #         # One of:
    #         static_override: {
    #           bundle_arn: "GatewayConfigurationBundleArn", # required
    #           bundle_version: "String", # required
    #         },
    #         weighted_override: {
    #           traffic_split: [ # required
    #             {
    #               name: "String", # required
    #               weight: 1, # required
    #               configuration_bundle: { # required
    #                 bundle_arn: "GatewayConfigurationBundleArn", # required
    #                 bundle_version: "String", # required
    #               },
    #               description: "String",
    #               metadata: {
    #                 "TrafficSplitMetadataKey" => "TrafficSplitMetadataValue"
    #               }
    #             }
    #           ]
    #         }
    #       },
    #       route_to_target: {
    #         # One of:
    #         static_route: {
    #           target_name: "TargetName", # required
    #         },
    #         weighted_route: {
    #           traffic_split: [ # required
    #             {
    #               name: "String", # required
    #               weight: 1, # required
    #               target_name: "TargetName", # required
    #               description: "String",
    #               metadata: {
    #                 "TrafficSplitMetadataKey" => "TrafficSplitMetadataValue"
    #               }
    #             }
    #           ]
    #         }
    #       }
    #     }],
    #     description: "GatewayRuleDescription",
    #     created_at: Time.now, # required
    #     status: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "DELETING"], # required
    #     system: {
    #       managed_by: "String", # required
    #     },
    #     updated_at: Time.now
    #   }
    # @return [Types::UpdateGatewayRuleResponse]
    def update_gateway_rule(params = {}, options = {})
      request = build_request(:update_gateway_rule, params)
      request.send_request(options)
    end

    # <p>Updates an existing gateway target.</p> <p>You cannot update a target that is in a pending authorization state (<code>CREATE_PENDING_AUTH</code>, <code>UPDATE_PENDING_AUTH</code>, or <code>SYNCHRONIZE_PENDING_AUTH</code>). Wait for the authorization to complete or fail before updating the target.</p>
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
    # @option params [Types::MetadataConfiguration] :metadata_configuration
    #   <p>Configuration for HTTP header and query parameter propagation to the gateway target.</p>
    # @option params [Types::PrivateEndpoint] :private_endpoint
    #   <p>The private endpoint configuration for the gateway target. Use this to connect the gateway to private resources in your VPC.</p>
    # @option params [Array<Types::CertificateConfiguration>] :certificate_configurations
    #   <p>The private certificate authority (CA) configurations for the gateway target. Use this to have the gateway trust a private CA when it establishes TLS connections to the target endpoint. Provide each certificate by reference to an Amazon S3 object or an Amazon Web Services Secrets Manager secret. You can specify only one certificate authority configuration in this list. To remove a previously configured certificate authority, omit this field on update.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_identifier: "GatewayIdentifier", # required
    #     target_id: "TargetId", # required
    #     name: "TargetName",
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
    #         },
    #         mcp_server: {
    #           endpoint: "String", # required
    #           mcp_tool_schema: {
    #             # One of:
    #             s3: {
    #               uri: "S3BucketUri",
    #               bucket_owner_account_id: "AwsAccountId"
    #             },
    #             inline_payload: "InlinePayload"
    #           },
    #           listing_mode: "DEFAULT" # One of: ["DEFAULT", "DYNAMIC"],
    #           resource_priority: 1
    #         },
    #         api_gateway: {
    #           rest_api_id: "String", # required
    #           stage: "String", # required
    #           api_gateway_tool_configuration: { # required
    #             tool_overrides: [
    #               {
    #                 name: "String", # required
    #                 description: "String",
    #                 path: "String", # required
    #                 method: "GET" # One of: ["GET", "DELETE", "HEAD", "OPTIONS", "PATCH", "PUT", "POST"], # required
    #               }
    #             ],
    #             tool_filters: [ # required
    #               {
    #                 filter_path: "String", # required
    #                 methods: ["GET" # One of: ["GET", "DELETE", "HEAD", "OPTIONS", "PATCH", "PUT", "POST"]], # required
    #               }
    #             ]
    #           }
    #         },
    #         connector: {
    #           source: { # required
    #             connector_id: "ConnectorId", # required
    #             version: "ConnectorVersion"
    #           },
    #           enabled: ["String"],
    #           configurations: [
    #             {
    #               name: "String", # required
    #               description: "String",
    #               parameter_values: ""null"",
    #               parameter_overrides: [
    #                 {
    #                   path: "String", # required
    #                   description: "String",
    #                   visible: false
    #                 }
    #               ]
    #             }
    #           ]
    #         }
    #       },
    #       http: {
    #         # One of:
    #         agentcore_runtime: {
    #           arn: "RuntimeArn", # required
    #           qualifier: "RuntimeQualifier",
    #           schema: {
    #             source: { # required
    #               # One of:
    #               s3: {
    #                 uri: "S3BucketUri",
    #                 bucket_owner_account_id: "AwsAccountId"
    #               },
    #               inline_payload: "InlinePayload"
    #             }
    #           }
    #         },
    #         passthrough: {
    #           endpoint: "PassthroughEndpoint", # required
    #           protocol_type: "MCP" # One of: ["MCP", "A2A", "INFERENCE", "CUSTOM"], # required
    #           schema: {
    #             source: { # required
    #               # One of:
    #               s3: {
    #                 uri: "S3BucketUri",
    #                 bucket_owner_account_id: "AwsAccountId"
    #               },
    #               inline_payload: "InlinePayload"
    #             }
    #           },
    #           stickiness_configuration: {
    #             identifier: "String", # required
    #             timeout: 1,
    #             composite_identifier: ["CompositeIdentifierEntry"]
    #           },
    #           static_query_parameters: {
    #             "StaticQueryParameterName" => "StaticQueryParameterValue"
    #           },
    #           static_query_parameter_conflict_resolution: "CLIENT_OVERRIDE" # One of: ["CLIENT_OVERRIDE", "STATIC_OVERRIDE"]
    #         },
    #         connector: {
    #           source: { # required
    #             connector_id: "ConnectorId", # required
    #           },
    #           parameters: {
    #             "ConnectorParameterName" => "ConnectorParameterValue"
    #           }
    #         }
    #       },
    #       inference: {
    #         # One of:
    #         connector: {
    #           source: { # required
    #             connector_id: "InferenceConnectorId", # required
    #           }
    #         },
    #         provider: {
    #           endpoint: "PassthroughEndpoint", # required
    #           model_mapping: {
    #             provider_prefix: {
    #               strip: false,
    #               separator: "String"
    #             }
    #           },
    #           operations: [
    #             {
    #               path: "InferenceOperationPath", # required
    #               provider_path: "InferenceOperationPath",
    #               models: [
    #                 {
    #                   model: "ModelPattern", # required
    #                 }
    #               ]
    #             }
    #           ]
    #         }
    #       }
    #     },
    #     credential_provider_configurations: [
    #       {
    #         credential_provider_type: "GATEWAY_IAM_ROLE" # One of: ["GATEWAY_IAM_ROLE", "OAUTH", "API_KEY", "CALLER_IAM_CREDENTIALS", "JWT_PASSTHROUGH"], # required
    #         credential_provider: {
    #           # One of:
    #           oauth_credential_provider: {
    #             provider_arn: "OAuthCredentialProviderArn", # required
    #             scopes: ["OAuthScope"], # required
    #             custom_parameters: {
    #               "OAuthCustomParametersKey" => "OAuthCustomParametersValue"
    #             },
    #             grant_type: "CLIENT_CREDENTIALS" # One of: ["CLIENT_CREDENTIALS", "AUTHORIZATION_CODE", "TOKEN_EXCHANGE"],
    #             default_return_url: "OAuthDefaultReturnUrl"
    #           },
    #           api_key_credential_provider: {
    #             provider_arn: "ApiKeyCredentialProviderArn", # required
    #             credential_parameter_name: "ApiKeyCredentialParameterName",
    #             credential_prefix: "ApiKeyCredentialPrefix",
    #             credential_location: "HEADER" # One of: ["HEADER", "QUERY_PARAMETER"]
    #           },
    #           iam_credential_provider: {
    #             service: "String", # required
    #             region: "String"
    #           }
    #         }
    #       }
    #     ],
    #     metadata_configuration: {
    #       allowed_request_headers: ["HttpHeaderName"],
    #       allowed_query_parameters: ["HttpQueryParameterName"],
    #       allowed_response_headers: ["HttpHeaderName"]
    #     },
    #     private_endpoint: {
    #       # One of:
    #       self_managed_lattice_resource: {
    #         # One of:
    #         resource_configuration_identifier: "ResourceConfigurationIdentifier"
    #       },
    #       managed_vpc_resource: {
    #         vpc_identifier: "VpcIdentifier", # required
    #         subnet_ids: ["SubnetId"], # required
    #         endpoint_ip_address_type: "IPV4" # One of: ["IPV4", "IPV6"], # required
    #         security_group_ids: ["SecurityGroupIdentifier"],
    #         tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         routing_domain: "RoutingDomain"
    #       }
    #     },
    #     certificate_configurations: [{
    #       # One of:
    #       s3: {
    #         uri: "CertificateS3Uri", # required
    #         bucket_owner_account_id: "CertificateBucketOwnerAccountId"
    #       },
    #       secrets_manager: {
    #         secret_arn: "CertificateSecretArn", # required
    #       }
    #     }]
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
    #     status: "CREATING" # One of: ["CREATING", "UPDATING", "UPDATE_UNSUCCESSFUL", "DELETING", "READY", "FAILED", "SYNCHRONIZING", "SYNCHRONIZE_UNSUCCESSFUL", "CREATE_PENDING_AUTH", "UPDATE_PENDING_AUTH", "SYNCHRONIZE_PENDING_AUTH"], # required
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
    #         },
    #         mcp_server: {
    #           endpoint: "String", # required
    #           mcp_tool_schema: {
    #             # One of:
    #             s3: {
    #               uri: "S3BucketUri",
    #               bucket_owner_account_id: "AwsAccountId"
    #             },
    #             inline_payload: "InlinePayload"
    #           },
    #           listing_mode: "DEFAULT" # One of: ["DEFAULT", "DYNAMIC"],
    #           resource_priority: 1
    #         },
    #         api_gateway: {
    #           rest_api_id: "String", # required
    #           stage: "String", # required
    #           api_gateway_tool_configuration: { # required
    #             tool_overrides: [
    #               {
    #                 name: "String", # required
    #                 description: "String",
    #                 path: "String", # required
    #                 method: "GET" # One of: ["GET", "DELETE", "HEAD", "OPTIONS", "PATCH", "PUT", "POST"], # required
    #               }
    #             ],
    #             tool_filters: [ # required
    #               {
    #                 filter_path: "String", # required
    #                 methods: ["GET" # One of: ["GET", "DELETE", "HEAD", "OPTIONS", "PATCH", "PUT", "POST"]], # required
    #               }
    #             ]
    #           }
    #         },
    #         connector: {
    #           source: { # required
    #             connector_id: "ConnectorId", # required
    #             version: "ConnectorVersion"
    #           },
    #           enabled: ["String"],
    #           configurations: [
    #             {
    #               name: "String", # required
    #               description: "String",
    #               parameter_values: ""null"",
    #               parameter_overrides: [
    #                 {
    #                   path: "String", # required
    #                   description: "String",
    #                   visible: false
    #                 }
    #               ]
    #             }
    #           ]
    #         }
    #       },
    #       http: {
    #         # One of:
    #         agentcore_runtime: {
    #           arn: "RuntimeArn", # required
    #           qualifier: "RuntimeQualifier",
    #           schema: {
    #             source: { # required
    #               # One of:
    #               s3: {
    #                 uri: "S3BucketUri",
    #                 bucket_owner_account_id: "AwsAccountId"
    #               },
    #               inline_payload: "InlinePayload"
    #             }
    #           }
    #         },
    #         passthrough: {
    #           endpoint: "PassthroughEndpoint", # required
    #           protocol_type: "MCP" # One of: ["MCP", "A2A", "INFERENCE", "CUSTOM"], # required
    #           schema: {
    #             source: { # required
    #               # One of:
    #               s3: {
    #                 uri: "S3BucketUri",
    #                 bucket_owner_account_id: "AwsAccountId"
    #               },
    #               inline_payload: "InlinePayload"
    #             }
    #           },
    #           stickiness_configuration: {
    #             identifier: "String", # required
    #             timeout: 1,
    #             composite_identifier: ["CompositeIdentifierEntry"]
    #           },
    #           static_query_parameters: {
    #             "StaticQueryParameterName" => "StaticQueryParameterValue"
    #           },
    #           static_query_parameter_conflict_resolution: "CLIENT_OVERRIDE" # One of: ["CLIENT_OVERRIDE", "STATIC_OVERRIDE"]
    #         },
    #         connector: {
    #           source: { # required
    #             connector_id: "ConnectorId", # required
    #           },
    #           parameters: {
    #             "ConnectorParameterName" => "ConnectorParameterValue"
    #           }
    #         }
    #       },
    #       inference: {
    #         # One of:
    #         connector: {
    #           source: { # required
    #             connector_id: "InferenceConnectorId", # required
    #           }
    #         },
    #         provider: {
    #           endpoint: "PassthroughEndpoint", # required
    #           model_mapping: {
    #             provider_prefix: {
    #               strip: false,
    #               separator: "String"
    #             }
    #           },
    #           operations: [
    #             {
    #               path: "InferenceOperationPath", # required
    #               provider_path: "InferenceOperationPath",
    #               models: [
    #                 {
    #                   model: "ModelPattern", # required
    #                 }
    #               ]
    #             }
    #           ]
    #         }
    #       }
    #     },
    #     credential_provider_configurations: [ # required
    #       {
    #         credential_provider_type: "GATEWAY_IAM_ROLE" # One of: ["GATEWAY_IAM_ROLE", "OAUTH", "API_KEY", "CALLER_IAM_CREDENTIALS", "JWT_PASSTHROUGH"], # required
    #         credential_provider: {
    #           # One of:
    #           oauth_credential_provider: {
    #             provider_arn: "OAuthCredentialProviderArn", # required
    #             scopes: ["OAuthScope"], # required
    #             custom_parameters: {
    #               "OAuthCustomParametersKey" => "OAuthCustomParametersValue"
    #             },
    #             grant_type: "CLIENT_CREDENTIALS" # One of: ["CLIENT_CREDENTIALS", "AUTHORIZATION_CODE", "TOKEN_EXCHANGE"],
    #             default_return_url: "OAuthDefaultReturnUrl"
    #           },
    #           api_key_credential_provider: {
    #             provider_arn: "ApiKeyCredentialProviderArn", # required
    #             credential_parameter_name: "ApiKeyCredentialParameterName",
    #             credential_prefix: "ApiKeyCredentialPrefix",
    #             credential_location: "HEADER" # One of: ["HEADER", "QUERY_PARAMETER"]
    #           },
    #           iam_credential_provider: {
    #             service: "String", # required
    #             region: "String"
    #           }
    #         }
    #       }
    #     ],
    #     last_synchronized_at: Time.now,
    #     metadata_configuration: {
    #       allowed_request_headers: ["HttpHeaderName"],
    #       allowed_query_parameters: ["HttpQueryParameterName"],
    #       allowed_response_headers: ["HttpHeaderName"]
    #     },
    #     private_endpoint: {
    #       # One of:
    #       self_managed_lattice_resource: {
    #         # One of:
    #         resource_configuration_identifier: "ResourceConfigurationIdentifier"
    #       },
    #       managed_vpc_resource: {
    #         vpc_identifier: "VpcIdentifier", # required
    #         subnet_ids: ["SubnetId"], # required
    #         endpoint_ip_address_type: "IPV4" # One of: ["IPV4", "IPV6"], # required
    #         security_group_ids: ["SecurityGroupIdentifier"],
    #         tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         routing_domain: "RoutingDomain"
    #       }
    #     },
    #     private_endpoint_managed_resources: [
    #       {
    #         domain: "DomainName",
    #         resource_gateway_arn: "ResourceGatewayArn",
    #         resource_association_arn: "ResourceAssociationArn"
    #       }
    #     ],
    #     authorization_data: {
    #       # One of:
    #       oauth2: {
    #         authorization_url: "String", # required
    #         user_id: "String"
    #       }
    #     },
    #     protocol_type: "MCP" # One of: ["MCP", "HTTP"],
    #     certificate_configurations: [{
    #       # One of:
    #       s3: {
    #         uri: "CertificateS3Uri", # required
    #         bucket_owner_account_id: "CertificateBucketOwnerAccountId"
    #       },
    #       secrets_manager: {
    #         secret_arn: "CertificateSecretArn", # required
    #       }
    #     }]
    #   }
    # @return [Types::UpdateGatewayTargetResponse]
    def update_gateway_target(params = {}, options = {})
      request = build_request(:update_gateway_target, params)
      request.send_request(options)
    end

    # <p>Operation to update a harness.</p>
    # @param [Hash, Types::UpdateHarnessRequest] params
    # @option params [String] :harness_id
    #   <p>The ID of the harness to update.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure idempotency of the request.</p>
    # @option params [String] :execution_role_arn
    #   <p>The ARN of the IAM role that the harness assumes when running. If not specified, the existing value is retained.</p>
    # @option params [Types::HarnessEnvironmentProviderRequest] :environment
    #   <p>The compute environment configuration for the harness. If not specified, the existing value is retained.</p>
    # @option params [Types::UpdatedHarnessEnvironmentArtifact] :environment_artifact
    #   <p>The environment artifact for the harness. Use the optionalValue wrapper to set a new value, or set it to null to clear the existing configuration.</p>
    # @option params [Hash<String, String>] :environment_variables
    #   <p>Environment variables to set in the harness runtime environment. If specified, this replaces all existing environment variables. If not specified, the existing value is retained.</p>
    # @option params [Types::UpdatedAuthorizerConfiguration] :authorizer_configuration
    #   <p>Wrapper for updating an optional AuthorizerConfiguration field with PATCH semantics. When present in an update request, the authorizer configuration is replaced with optionalValue. When absent, the authorizer configuration is left unchanged. To unset, include the wrapper with optionalValue not specified.</p>
    # @option params [Types::HarnessModelConfiguration] :model
    #   <p>The model configuration for the harness. If not specified, the existing value is retained.</p>
    # @option params [Array<Types::HarnessSystemContentBlock>] :system_prompt
    #   <p>The system prompt that defines the agent's behavior. If not specified, the existing value is retained.</p>
    # @option params [Array<Types::HarnessTool>] :tools
    #   <p>The tools available to the agent. If specified, this replaces all existing tools. If not specified, the existing value is retained.</p>
    # @option params [Array<Types::HarnessSkill>] :skills
    #   <p>The skills available to the agent. If specified, this replaces all existing skills. If not specified, the existing value is retained.</p>
    # @option params [Array<String>] :allowed_tools
    #   <p>The tools that the agent is allowed to use. If specified, this replaces all existing allowed tools. If not specified, the existing value is retained.</p>
    # @option params [Types::UpdatedHarnessMemoryConfiguration] :memory
    #   <p>The AgentCore Memory configuration. Use the optionalValue wrapper to set a new value, or set it to null to clear the existing configuration.</p>
    # @option params [Types::HarnessTruncationConfiguration] :truncation
    #   <p>The truncation configuration for managing conversation context. If not specified, the existing value is retained.</p>
    # @option params [Array<Types::HarnessHook>] :hooks
    #   <p>The lifecycle hooks to run at defined points in the agent loop. If specified, this replaces all existing hooks. If not specified, the existing hooks are retained.</p>
    # @option params [Integer] :max_iterations
    #   <p>The maximum number of iterations the agent loop can execute per invocation. If not specified, the existing value is retained.</p>
    # @option params [Integer] :max_tokens
    #   <p>The maximum total number of output tokens the agent can generate across all model calls within a single invocation. If not specified, the existing value is retained.</p>
    # @option params [Integer] :timeout_seconds
    #   <p>The maximum duration in seconds for the agent loop execution per invocation. If not specified, the existing value is retained.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     harness_id: "HarnessId", # required
    #     client_token: "ClientToken",
    #     execution_role_arn: "RoleArn",
    #     environment: {
    #       # One of:
    #       agent_core_runtime_environment: {
    #         lifecycle_configuration: {
    #           idle_runtime_session_timeout: 1,
    #           max_lifetime: 1
    #         },
    #         network_configuration: {
    #           network_mode: "PUBLIC" # One of: ["PUBLIC", "VPC"], # required
    #           network_mode_config: {
    #             security_groups: ["SecurityGroupId"], # required
    #             subnets: ["SubnetId"], # required
    #             require_service_s3_endpoint: false
    #           }
    #         },
    #         filesystem_configurations: [{
    #           # One of:
    #           session_storage: {
    #             mount_path: "MountPath", # required
    #           },
    #           s3_files_access_point: {
    #             access_point_arn: "S3FilesAccessPointArn", # required
    #             mount_path: "MountPath", # required
    #           },
    #           efs_access_point: {
    #             access_point_arn: "EfsAccessPointArn", # required
    #             mount_path: "MountPath", # required
    #           },
    #           capacity_provider_volume: {
    #             volume_name: "CapacityProviderVolumeName", # required
    #             mount_path: "MountPath", # required
    #           }
    #         }]
    #       }
    #     },
    #     environment_artifact: {
    #       optional_value: {
    #         # One of:
    #         container_configuration: {
    #           container_uri: "RuntimeContainerUri", # required
    #         }
    #       }
    #     },
    #     environment_variables: {
    #       "EnvironmentVariableKey" => "EnvironmentVariableValue"
    #     },
    #     authorizer_configuration: {
    #       optional_value: {
    #         # One of:
    #         custom_jwt_authorizer: {
    #           discovery_url: "DiscoveryUrl", # required
    #           allowed_audience: ["AllowedAudience"],
    #           allowed_clients: ["AllowedClient"],
    #           allowed_scopes: ["AllowedScopeType"],
    #           advertised_scope_mapping: {
    #             "AllowedScopeType" => "AllowedScopeType"
    #           },
    #           custom_claims: [
    #             {
    #               inbound_token_claim_name: "InboundTokenClaimNameType", # required
    #               inbound_token_claim_value_type: "STRING" # One of: ["STRING", "STRING_ARRAY"], # required
    #               authorizing_claim_match_value: { # required
    #                 claim_match_value: { # required
    #                   # One of:
    #                   match_value_string: "MatchValueString",
    #                   match_value_string_list: ["MatchValueString"]
    #                 },
    #                 claim_match_operator: "EQUALS" # One of: ["EQUALS", "CONTAINS", "CONTAINS_ANY"], # required
    #               }
    #             }
    #           ],
    #           private_endpoint: {
    #             # One of:
    #             self_managed_lattice_resource: {
    #               # One of:
    #               resource_configuration_identifier: "ResourceConfigurationIdentifier"
    #             },
    #             managed_vpc_resource: {
    #               vpc_identifier: "VpcIdentifier", # required
    #               subnet_ids: ["SubnetId"], # required
    #               endpoint_ip_address_type: "IPV4" # One of: ["IPV4", "IPV6"], # required
    #               security_group_ids: ["SecurityGroupIdentifier"],
    #               tags: {
    #                 "TagKey" => "TagValue"
    #               },
    #               routing_domain: "RoutingDomain"
    #             }
    #           },
    #           private_endpoint_overrides: [
    #             {
    #               domain: "PrivateEndpointOverrideDomain", # required
    #               private_endpoint: { # required
    #                 # One of:
    #                 self_managed_lattice_resource: {
    #                   # One of:
    #                   resource_configuration_identifier: "ResourceConfigurationIdentifier"
    #                 },
    #                 managed_vpc_resource: {
    #                   vpc_identifier: "VpcIdentifier", # required
    #                   subnet_ids: ["SubnetId"], # required
    #                   endpoint_ip_address_type: "IPV4" # One of: ["IPV4", "IPV6"], # required
    #                   security_group_ids: ["SecurityGroupIdentifier"],
    #                   tags: {
    #                     "TagKey" => "TagValue"
    #                   },
    #                   routing_domain: "RoutingDomain"
    #                 }
    #               }
    #             }
    #           ],
    #           allowed_workload_configuration: {
    #             hosting_environments: [
    #               {
    #                 arn: "BedrockAgentcoreResourceArn", # required
    #               }
    #             ],
    #             workload_identities: ["WorkloadIdentityNameType"]
    #           }
    #         }
    #       }
    #     },
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
    #     memory: {
    #       optional_value: {
    #         # One of:
    #         agent_core_memory_configuration: {
    #           arn: "MemoryArn", # required
    #           actor_id: "String",
    #           messages_count: 1,
    #           retrieval_config: {
    #             "String" => {
    #               top_k: 1,
    #               relevance_score: 1.0,
    #               strategy_id: "String"
    #             }
    #           }
    #         },
    #         managed_memory_configuration: {
    #           arn: "MemoryArn",
    #           strategies: ["SEMANTIC" # One of: ["SEMANTIC", "SUMMARIZATION", "USER_PREFERENCE", "EPISODIC"]],
    #           event_expiry_duration: 1,
    #           encryption_key_arn: "KmsKeyArn"
    #         },
    #         disabled: {
    #         }
    #       }
    #     },
    #     truncation: {
    #       strategy: "sliding_window" # One of: ["sliding_window", "summarization", "none"], # required
    #       config: {
    #         # One of:
    #         sliding_window: {
    #           messages_count: 1
    #         },
    #         summarization: {
    #           summary_ratio: 1.0,
    #           preserve_recent_messages: 1,
    #           summarization_system_prompt: "String"
    #         }
    #       }
    #     },
    #     hooks: [{
    #       # One of:
    #       before_invocation: {
    #         name: "HarnessHookName", # required
    #         target: { # required
    #           # One of:
    #           lambda: {
    #             arn: "HarnessLambdaFunctionArn", # required
    #             timeout_seconds: 1,
    #             failure_mode: "allow" # One of: ["allow", "deny"]
    #           },
    #           sns: {
    #             arn: "HarnessSnsTopicArn", # required
    #           },
    #           event_bridge: {
    #             arn: "HarnessEventBridgeBusArn", # required
    #           }
    #         }
    #       },
    #       after_invocation: {
    #         name: "HarnessHookName", # required
    #         target: { # required
    #           # One of:
    #           lambda: {
    #             arn: "HarnessLambdaFunctionArn", # required
    #             timeout_seconds: 1,
    #             failure_mode: "allow" # One of: ["allow", "deny"]
    #           },
    #           sns: {
    #             arn: "HarnessSnsTopicArn", # required
    #           },
    #           event_bridge: {
    #             arn: "HarnessEventBridgeBusArn", # required
    #           }
    #         }
    #       },
    #       before_tool_call: {
    #         name: "HarnessHookName", # required
    #         target: { # required
    #           # One of:
    #           lambda: {
    #             arn: "HarnessLambdaFunctionArn", # required
    #             timeout_seconds: 1,
    #             failure_mode: "allow" # One of: ["allow", "deny"]
    #           },
    #           sns: {
    #             arn: "HarnessSnsTopicArn", # required
    #           },
    #           event_bridge: {
    #             arn: "HarnessEventBridgeBusArn", # required
    #           }
    #         }
    #       },
    #       after_tool_call: {
    #         name: "HarnessHookName", # required
    #         target: { # required
    #           # One of:
    #           lambda: {
    #             arn: "HarnessLambdaFunctionArn", # required
    #             timeout_seconds: 1,
    #             failure_mode: "allow" # One of: ["allow", "deny"]
    #           },
    #           sns: {
    #             arn: "HarnessSnsTopicArn", # required
    #           },
    #           event_bridge: {
    #             arn: "HarnessEventBridgeBusArn", # required
    #           }
    #         }
    #       }
    #     }],
    #     max_iterations: 1,
    #     max_tokens: 1,
    #     timeout_seconds: 1
    #   }
    #   options = {}
    #   response = client.update_harness(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     harness: { # required
    #       harness_id: "HarnessId", # required
    #       harness_name: "HarnessName", # required
    #       arn: "HarnessArn", # required
    #       status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "READY", "DELETING", "DELETE_FAILED"], # required
    #       harness_version: "HarnessVersion",
    #       execution_role_arn: "RoleArn", # required
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       model: { # required
    #         # One of:
    #         bedrock_model_config: {
    #           model_id: "ModelId", # required
    #           max_tokens: 1,
    #           temperature: 1.0,
    #           top_p: 1.0,
    #           api_format: "converse_stream" # One of: ["converse_stream", "responses", "chat_completions"],
    #           additional_params: ""null""
    #         },
    #         open_ai_model_config: {
    #           model_id: "ModelId", # required
    #           api_key_arn: "ApiKeyArn", # required
    #           api_base: "HarnessOpenAiApiBase",
    #           max_tokens: 1,
    #           temperature: 1.0,
    #           top_p: 1.0,
    #           api_format: "chat_completions" # One of: ["chat_completions", "responses"],
    #           additional_params: ""null""
    #         },
    #         gemini_model_config: {
    #           model_id: "ModelId", # required
    #           api_key_arn: "ApiKeyArn", # required
    #           max_tokens: 1,
    #           temperature: 1.0,
    #           top_p: 1.0,
    #           top_k: 1,
    #           additional_params: ""null""
    #         },
    #         lite_llm_model_config: {
    #           model_id: "ModelId", # required
    #           api_key_arn: "ApiKeyArn",
    #           api_base: "HarnessLiteLlmApiBase",
    #           max_tokens: 1,
    #           temperature: 1.0,
    #           top_p: 1.0,
    #           additional_params: ""null""
    #         }
    #       },
    #       system_prompt: [{ # required
    #         # One of:
    #         text: "SensitiveText"
    #       }],
    #       tools: [ # required
    #         {
    #           type: "remote_mcp" # One of: ["remote_mcp", "agentcore_browser", "agentcore_gateway", "inline_function", "agentcore_code_interpreter"], # required
    #           name: "HarnessToolName",
    #           config: {
    #             # One of:
    #             remote_mcp: {
    #               url: "HarnessRemoteMcpUrl", # required
    #               headers: {
    #                 "HttpHeaderKey" => "HttpHeaderValue"
    #               }
    #             },
    #             agent_core_browser: {
    #               browser_arn: "HarnessBrowserArn"
    #             },
    #             agent_core_gateway: {
    #               gateway_arn: "GatewayArn", # required
    #               outbound_auth: {
    #                 # One of:
    #                 aws_iam: {
    #                 },
    #                 none: {
    #                 },
    #                 oauth: {
    #                   provider_arn: "OAuthCredentialProviderArn", # required
    #                   scopes: ["OAuthScope"], # required
    #                   custom_parameters: {
    #                     "OAuthCustomParametersKey" => "OAuthCustomParametersValue"
    #                   },
    #                   grant_type: "CLIENT_CREDENTIALS" # One of: ["CLIENT_CREDENTIALS", "AUTHORIZATION_CODE", "TOKEN_EXCHANGE"],
    #                   default_return_url: "OAuthDefaultReturnUrl"
    #                 }
    #               }
    #             },
    #             inline_function: {
    #               description: "HarnessInlineFunctionDescription", # required
    #               input_schema: ""null"", # required
    #             },
    #             agent_core_code_interpreter: {
    #               code_interpreter_arn: "HarnessCodeInterpreterArn"
    #             }
    #           }
    #         }
    #       ],
    #       skills: [{ # required
    #         # One of:
    #         path: "HarnessSkillPath",
    #         s3: {
    #           uri: "HarnessSkillS3Uri", # required
    #         },
    #         git: {
    #           url: "HarnessSkillGitUrl", # required
    #           path: "String",
    #           auth: {
    #             credential_arn: "ApiKeyArn", # required
    #             username: "String"
    #           }
    #         },
    #         aws_skills: {
    #           paths: ["HarnessAwsSkillPath"]
    #         }
    #       }],
    #       allowed_tools: ["HarnessAllowedTool"], # required
    #       truncation: { # required
    #         strategy: "sliding_window" # One of: ["sliding_window", "summarization", "none"], # required
    #         config: {
    #           # One of:
    #           sliding_window: {
    #             messages_count: 1
    #           },
    #           summarization: {
    #             summary_ratio: 1.0,
    #             preserve_recent_messages: 1,
    #             summarization_system_prompt: "String"
    #           }
    #         }
    #       },
    #       environment: { # required
    #         # One of:
    #         agent_core_runtime_environment: {
    #           agent_runtime_arn: "BedrockAgentcoreResourceArn", # required
    #           agent_runtime_name: "String", # required
    #           agent_runtime_id: "String", # required
    #           lifecycle_configuration: { # required
    #             idle_runtime_session_timeout: 1,
    #             max_lifetime: 1
    #           },
    #           network_configuration: { # required
    #             network_mode: "PUBLIC" # One of: ["PUBLIC", "VPC"], # required
    #             network_mode_config: {
    #               security_groups: ["SecurityGroupId"], # required
    #               subnets: ["SubnetId"], # required
    #               require_service_s3_endpoint: false
    #             }
    #           },
    #           filesystem_configurations: [{
    #             # One of:
    #             session_storage: {
    #               mount_path: "MountPath", # required
    #             },
    #             s3_files_access_point: {
    #               access_point_arn: "S3FilesAccessPointArn", # required
    #               mount_path: "MountPath", # required
    #             },
    #             efs_access_point: {
    #               access_point_arn: "EfsAccessPointArn", # required
    #               mount_path: "MountPath", # required
    #             },
    #             capacity_provider_volume: {
    #               volume_name: "CapacityProviderVolumeName", # required
    #               mount_path: "MountPath", # required
    #             }
    #           }]
    #         }
    #       },
    #       environment_artifact: {
    #         # One of:
    #         container_configuration: {
    #           container_uri: "RuntimeContainerUri", # required
    #         }
    #       },
    #       environment_variables: {
    #         "EnvironmentVariableKey" => "EnvironmentVariableValue"
    #       },
    #       authorizer_configuration: {
    #         # One of:
    #         custom_jwt_authorizer: {
    #           discovery_url: "DiscoveryUrl", # required
    #           allowed_audience: ["AllowedAudience"],
    #           allowed_clients: ["AllowedClient"],
    #           allowed_scopes: ["AllowedScopeType"],
    #           advertised_scope_mapping: {
    #             "AllowedScopeType" => "AllowedScopeType"
    #           },
    #           custom_claims: [
    #             {
    #               inbound_token_claim_name: "InboundTokenClaimNameType", # required
    #               inbound_token_claim_value_type: "STRING" # One of: ["STRING", "STRING_ARRAY"], # required
    #               authorizing_claim_match_value: { # required
    #                 claim_match_value: { # required
    #                   # One of:
    #                   match_value_string: "MatchValueString",
    #                   match_value_string_list: ["MatchValueString"]
    #                 },
    #                 claim_match_operator: "EQUALS" # One of: ["EQUALS", "CONTAINS", "CONTAINS_ANY"], # required
    #               }
    #             }
    #           ],
    #           private_endpoint: {
    #             # One of:
    #             self_managed_lattice_resource: {
    #               # One of:
    #               resource_configuration_identifier: "ResourceConfigurationIdentifier"
    #             },
    #             managed_vpc_resource: {
    #               vpc_identifier: "VpcIdentifier", # required
    #               subnet_ids: ["SubnetId"], # required
    #               endpoint_ip_address_type: "IPV4" # One of: ["IPV4", "IPV6"], # required
    #               security_group_ids: ["SecurityGroupIdentifier"],
    #               tags: {
    #                 "TagKey" => "TagValue"
    #               },
    #               routing_domain: "RoutingDomain"
    #             }
    #           },
    #           private_endpoint_overrides: [
    #             {
    #               domain: "PrivateEndpointOverrideDomain", # required
    #               private_endpoint: { # required
    #                 # One of:
    #                 self_managed_lattice_resource: {
    #                   # One of:
    #                   resource_configuration_identifier: "ResourceConfigurationIdentifier"
    #                 },
    #                 managed_vpc_resource: {
    #                   vpc_identifier: "VpcIdentifier", # required
    #                   subnet_ids: ["SubnetId"], # required
    #                   endpoint_ip_address_type: "IPV4" # One of: ["IPV4", "IPV6"], # required
    #                   security_group_ids: ["SecurityGroupIdentifier"],
    #                   tags: {
    #                     "TagKey" => "TagValue"
    #                   },
    #                   routing_domain: "RoutingDomain"
    #                 }
    #               }
    #             }
    #           ],
    #           allowed_workload_configuration: {
    #             hosting_environments: [
    #               {
    #                 arn: "BedrockAgentcoreResourceArn", # required
    #               }
    #             ],
    #             workload_identities: ["WorkloadIdentityNameType"]
    #           }
    #         }
    #       },
    #       memory: {
    #         # One of:
    #         agent_core_memory_configuration: {
    #           arn: "MemoryArn", # required
    #           actor_id: "String",
    #           messages_count: 1,
    #           retrieval_config: {
    #             "String" => {
    #               top_k: 1,
    #               relevance_score: 1.0,
    #               strategy_id: "String"
    #             }
    #           }
    #         },
    #         managed_memory_configuration: {
    #           arn: "MemoryArn",
    #           strategies: ["SEMANTIC" # One of: ["SEMANTIC", "SUMMARIZATION", "USER_PREFERENCE", "EPISODIC"]],
    #           event_expiry_duration: 1,
    #           encryption_key_arn: "KmsKeyArn"
    #         },
    #         disabled: {
    #         }
    #       },
    #       hooks: [{
    #         # One of:
    #         before_invocation: {
    #           name: "HarnessHookName", # required
    #           target: { # required
    #             # One of:
    #             lambda: {
    #               arn: "HarnessLambdaFunctionArn", # required
    #               timeout_seconds: 1,
    #               failure_mode: "allow" # One of: ["allow", "deny"]
    #             },
    #             sns: {
    #               arn: "HarnessSnsTopicArn", # required
    #             },
    #             event_bridge: {
    #               arn: "HarnessEventBridgeBusArn", # required
    #             }
    #           }
    #         },
    #         after_invocation: {
    #           name: "HarnessHookName", # required
    #           target: { # required
    #             # One of:
    #             lambda: {
    #               arn: "HarnessLambdaFunctionArn", # required
    #               timeout_seconds: 1,
    #               failure_mode: "allow" # One of: ["allow", "deny"]
    #             },
    #             sns: {
    #               arn: "HarnessSnsTopicArn", # required
    #             },
    #             event_bridge: {
    #               arn: "HarnessEventBridgeBusArn", # required
    #             }
    #           }
    #         },
    #         before_tool_call: {
    #           name: "HarnessHookName", # required
    #           target: { # required
    #             # One of:
    #             lambda: {
    #               arn: "HarnessLambdaFunctionArn", # required
    #               timeout_seconds: 1,
    #               failure_mode: "allow" # One of: ["allow", "deny"]
    #             },
    #             sns: {
    #               arn: "HarnessSnsTopicArn", # required
    #             },
    #             event_bridge: {
    #               arn: "HarnessEventBridgeBusArn", # required
    #             }
    #           }
    #         },
    #         after_tool_call: {
    #           name: "HarnessHookName", # required
    #           target: { # required
    #             # One of:
    #             lambda: {
    #               arn: "HarnessLambdaFunctionArn", # required
    #               timeout_seconds: 1,
    #               failure_mode: "allow" # One of: ["allow", "deny"]
    #             },
    #             sns: {
    #               arn: "HarnessSnsTopicArn", # required
    #             },
    #             event_bridge: {
    #               arn: "HarnessEventBridgeBusArn", # required
    #             }
    #           }
    #         }
    #       }],
    #       max_iterations: 1,
    #       max_tokens: 1,
    #       timeout_seconds: 1,
    #       failure_reason: "String"
    #     }
    #   }
    # @return [Types::UpdateHarnessResponse]
    def update_harness(params = {}, options = {})
      request = build_request(:update_harness, params)
      request.send_request(options)
    end

    # <p>Operation to update a harness endpoint.</p>
    # @param [Hash, Types::UpdateHarnessEndpointRequest] params
    # @option params [String] :harness_id
    #   <p>The ID of the harness that the endpoint belongs to.</p>
    # @option params [String] :endpoint_name
    #   <p>The name of the endpoint to update.</p>
    # @option params [String] :target_version
    #   <p>The harness version that the endpoint points to. If not specified, the existing value is retained.</p>
    # @option params [String] :description
    #   <p>A description of the endpoint. If not specified, the existing value is retained.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure idempotency of the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     harness_id: "HarnessId", # required
    #     endpoint_name: "HarnessEndpointName", # required
    #     target_version: "HarnessVersion",
    #     description: "HarnessEndpointDescription",
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.update_harness_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     endpoint: { # required
    #       harness_id: "HarnessId", # required
    #       harness_name: "HarnessName", # required
    #       endpoint_name: "HarnessEndpointName", # required
    #       arn: "HarnessEndpointArn", # required
    #       status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "READY", "DELETING", "DELETE_FAILED"], # required
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       live_version: "HarnessVersion",
    #       target_version: "HarnessVersion",
    #       description: "HarnessEndpointDescription",
    #       failure_reason: "String"
    #     }
    #   }
    # @return [Types::UpdateHarnessEndpointResponse]
    def update_harness_endpoint(params = {}, options = {})
      request = build_request(:update_harness_endpoint, params)
      request.send_request(options)
    end

    # <p>Update an Amazon Bedrock AgentCore Memory resource memory.</p>
    # @param [Hash, Types::UpdateMemoryInput] params
    # @option params [String] :client_token
    #   <p>A client token is used for keeping track of idempotent requests. It can contain a session id which can be around 250 chars, combined with a unique Amazon Web Services identifier.</p>
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
    # @option params [Array<Types::IndexedKey>] :add_indexed_keys
    #   <p>Additional metadata keys to index. Previously indexed keys cannot be removed.</p>
    # @option params [Array<Types::NamespaceKeyEntry>] :namespace_keys
    #   <p>The namespace variable key definitions with validation rules for this memory. This value fully replaces the existing set — any key you omit is removed. Any referenced <code>namespaceKey</code> omission will throw ValidationException.</p>
    # @option params [Types::StreamDeliveryResources] :stream_delivery_resources
    #   <p>Configuration for streaming memory record data to external resources.</p>
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
    #           namespaces: ["Namespace"],
    #           namespace_templates: ["Namespace"],
    #           memory_record_schema: {
    #             metadata_schema: [
    #               {
    #                 key: "MetadataKey", # required
    #                 type: "STRING" # One of: ["STRING", "STRINGLIST", "NUMBER"],
    #                 extraction_type: "LLM_INFERRED" # One of: ["LLM_INFERRED", "STRICTLY_CONSISTENT"],
    #                 extraction_config: {
    #                   # One of:
    #                   llm_extraction_config: {
    #                     llm_extraction_instruction: "LlmExtractionInstruction",
    #                     definition: "Definition", # required
    #                     validation: {
    #                       # One of:
    #                       string_validation: {
    #                         allowed_values: ["AllowedStringValue"], # required
    #                       },
    #                       string_list_validation: {
    #                         allowed_values: ["AllowedStringListValue"],
    #                         max_items: 1
    #                       },
    #                       number_validation: {
    #                         min_value: 1.0,
    #                         max_value: 1.0
    #                       }
    #                     }
    #                   }
    #                 }
    #               }
    #             ]
    #           },
    #           record_expiry_specification: {
    #             # One of:
    #             record_expiry_duration_days: 1,
    #             action: "REMOVE" # One of: ["REMOVE"]
    #           }
    #         },
    #         summary_memory_strategy: {
    #           name: "Name", # required
    #           description: "Description",
    #           namespaces: ["Namespace"],
    #           namespace_templates: ["Namespace"],
    #           memory_record_schema: {
    #             metadata_schema: [
    #               {
    #                 key: "MetadataKey", # required
    #                 type: "STRING" # One of: ["STRING", "STRINGLIST", "NUMBER"],
    #                 extraction_type: "LLM_INFERRED" # One of: ["LLM_INFERRED", "STRICTLY_CONSISTENT"],
    #                 extraction_config: {
    #                   # One of:
    #                   llm_extraction_config: {
    #                     llm_extraction_instruction: "LlmExtractionInstruction",
    #                     definition: "Definition", # required
    #                     validation: {
    #                       # One of:
    #                       string_validation: {
    #                         allowed_values: ["AllowedStringValue"], # required
    #                       },
    #                       string_list_validation: {
    #                         allowed_values: ["AllowedStringListValue"],
    #                         max_items: 1
    #                       },
    #                       number_validation: {
    #                         min_value: 1.0,
    #                         max_value: 1.0
    #                       }
    #                     }
    #                   }
    #                 }
    #               }
    #             ]
    #           },
    #           record_expiry_specification: {
    #             # One of:
    #             record_expiry_duration_days: 1,
    #             action: "REMOVE" # One of: ["REMOVE"]
    #           }
    #         },
    #         user_preference_memory_strategy: {
    #           name: "Name", # required
    #           description: "Description",
    #           namespaces: ["Namespace"],
    #           namespace_templates: ["Namespace"],
    #           memory_record_schema: {
    #             metadata_schema: [
    #               {
    #                 key: "MetadataKey", # required
    #                 type: "STRING" # One of: ["STRING", "STRINGLIST", "NUMBER"],
    #                 extraction_type: "LLM_INFERRED" # One of: ["LLM_INFERRED", "STRICTLY_CONSISTENT"],
    #                 extraction_config: {
    #                   # One of:
    #                   llm_extraction_config: {
    #                     llm_extraction_instruction: "LlmExtractionInstruction",
    #                     definition: "Definition", # required
    #                     validation: {
    #                       # One of:
    #                       string_validation: {
    #                         allowed_values: ["AllowedStringValue"], # required
    #                       },
    #                       string_list_validation: {
    #                         allowed_values: ["AllowedStringListValue"],
    #                         max_items: 1
    #                       },
    #                       number_validation: {
    #                         min_value: 1.0,
    #                         max_value: 1.0
    #                       }
    #                     }
    #                   }
    #                 }
    #               }
    #             ]
    #           },
    #           record_expiry_specification: {
    #             # One of:
    #             record_expiry_duration_days: 1,
    #             action: "REMOVE" # One of: ["REMOVE"]
    #           }
    #         },
    #         custom_memory_strategy: {
    #           name: "Name", # required
    #           description: "Description",
    #           namespaces: ["Namespace"],
    #           namespace_templates: ["Namespace"],
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
    #             },
    #             episodic_override: {
    #               extraction: {
    #                 append_to_prompt: "Prompt", # required
    #                 model_id: "String", # required
    #               },
    #               consolidation: {
    #                 append_to_prompt: "Prompt", # required
    #                 model_id: "String", # required
    #               },
    #               reflection: {
    #                 append_to_prompt: "Prompt", # required
    #                 model_id: "String", # required
    #                 namespaces: ["Namespace"],
    #                 namespace_templates: ["Namespace"],
    #                 memory_record_schema: {
    #                   metadata_schema: [
    #                     {
    #                       key: "MetadataKey", # required
    #                       type: "STRING" # One of: ["STRING", "STRINGLIST", "NUMBER"],
    #                       extraction_type: "LLM_INFERRED" # One of: ["LLM_INFERRED", "STRICTLY_CONSISTENT"],
    #                       extraction_config: {
    #                         # One of:
    #                         llm_extraction_config: {
    #                           llm_extraction_instruction: "LlmExtractionInstruction",
    #                           definition: "Definition", # required
    #                           validation: {
    #                             # One of:
    #                             string_validation: {
    #                               allowed_values: ["AllowedStringValue"], # required
    #                             },
    #                             string_list_validation: {
    #                               allowed_values: ["AllowedStringListValue"],
    #                               max_items: 1
    #                             },
    #                             number_validation: {
    #                               min_value: 1.0,
    #                               max_value: 1.0
    #                             }
    #                           }
    #                         }
    #                       }
    #                     }
    #                   ]
    #                 }
    #               }
    #             },
    #             self_managed_configuration: {
    #               trigger_conditions: [{
    #                 # One of:
    #                 message_based_trigger: {
    #                   message_count: 1
    #                 },
    #                 token_based_trigger: {
    #                   token_count: 1
    #                 },
    #                 time_based_trigger: {
    #                   idle_session_timeout: 1
    #                 }
    #               }],
    #               invocation_configuration: { # required
    #                 topic_arn: "Arn", # required
    #                 payload_delivery_bucket_name: "String", # required
    #               },
    #               historical_context_window_size: 1
    #             }
    #           },
    #           memory_record_schema: {
    #             metadata_schema: [
    #               {
    #                 key: "MetadataKey", # required
    #                 type: "STRING" # One of: ["STRING", "STRINGLIST", "NUMBER"],
    #                 extraction_type: "LLM_INFERRED" # One of: ["LLM_INFERRED", "STRICTLY_CONSISTENT"],
    #                 extraction_config: {
    #                   # One of:
    #                   llm_extraction_config: {
    #                     llm_extraction_instruction: "LlmExtractionInstruction",
    #                     definition: "Definition", # required
    #                     validation: {
    #                       # One of:
    #                       string_validation: {
    #                         allowed_values: ["AllowedStringValue"], # required
    #                       },
    #                       string_list_validation: {
    #                         allowed_values: ["AllowedStringListValue"],
    #                         max_items: 1
    #                       },
    #                       number_validation: {
    #                         min_value: 1.0,
    #                         max_value: 1.0
    #                       }
    #                     }
    #                   }
    #                 }
    #               }
    #             ]
    #           },
    #           record_expiry_specification: {
    #             # One of:
    #             record_expiry_duration_days: 1,
    #             action: "REMOVE" # One of: ["REMOVE"]
    #           }
    #         },
    #         episodic_memory_strategy: {
    #           name: "Name", # required
    #           description: "Description",
    #           namespaces: ["Namespace"],
    #           namespace_templates: ["Namespace"],
    #           reflection_configuration: {
    #             namespaces: ["Namespace"],
    #             namespace_templates: ["Namespace"],
    #             memory_record_schema: {
    #               metadata_schema: [
    #                 {
    #                   key: "MetadataKey", # required
    #                   type: "STRING" # One of: ["STRING", "STRINGLIST", "NUMBER"],
    #                   extraction_type: "LLM_INFERRED" # One of: ["LLM_INFERRED", "STRICTLY_CONSISTENT"],
    #                   extraction_config: {
    #                     # One of:
    #                     llm_extraction_config: {
    #                       llm_extraction_instruction: "LlmExtractionInstruction",
    #                       definition: "Definition", # required
    #                       validation: {
    #                         # One of:
    #                         string_validation: {
    #                           allowed_values: ["AllowedStringValue"], # required
    #                         },
    #                         string_list_validation: {
    #                           allowed_values: ["AllowedStringListValue"],
    #                           max_items: 1
    #                         },
    #                         number_validation: {
    #                           min_value: 1.0,
    #                           max_value: 1.0
    #                         }
    #                       }
    #                     }
    #                   }
    #                 }
    #               ]
    #             }
    #           },
    #           memory_record_schema: {
    #             metadata_schema: [
    #               {
    #                 key: "MetadataKey", # required
    #                 type: "STRING" # One of: ["STRING", "STRINGLIST", "NUMBER"],
    #                 extraction_type: "LLM_INFERRED" # One of: ["LLM_INFERRED", "STRICTLY_CONSISTENT"],
    #                 extraction_config: {
    #                   # One of:
    #                   llm_extraction_config: {
    #                     llm_extraction_instruction: "LlmExtractionInstruction",
    #                     definition: "Definition", # required
    #                     validation: {
    #                       # One of:
    #                       string_validation: {
    #                         allowed_values: ["AllowedStringValue"], # required
    #                       },
    #                       string_list_validation: {
    #                         allowed_values: ["AllowedStringListValue"],
    #                         max_items: 1
    #                       },
    #                       number_validation: {
    #                         min_value: 1.0,
    #                         max_value: 1.0
    #                       }
    #                     }
    #                   }
    #                 }
    #               }
    #             ]
    #           },
    #           record_expiry_specification: {
    #             # One of:
    #             record_expiry_duration_days: 1,
    #             action: "REMOVE" # One of: ["REMOVE"]
    #           }
    #         }
    #       }],
    #       modify_memory_strategies: [
    #         {
    #           memory_strategy_id: "String", # required
    #           description: "Description",
    #           namespaces: ["Namespace"],
    #           namespace_templates: ["Namespace"],
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
    #                 },
    #                 episodic_extraction_override: {
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
    #                 },
    #                 episodic_consolidation_override: {
    #                   append_to_prompt: "Prompt", # required
    #                   model_id: "String", # required
    #                 }
    #               }
    #             },
    #             reflection: {
    #               # One of:
    #               episodic_reflection_configuration: {
    #                 namespaces: ["Namespace"],
    #                 namespace_templates: ["Namespace"],
    #                 memory_record_schema: {
    #                   metadata_schema: [
    #                     {
    #                       key: "MetadataKey", # required
    #                       type: "STRING" # One of: ["STRING", "STRINGLIST", "NUMBER"],
    #                       extraction_type: "LLM_INFERRED" # One of: ["LLM_INFERRED", "STRICTLY_CONSISTENT"],
    #                       extraction_config: {
    #                         # One of:
    #                         llm_extraction_config: {
    #                           llm_extraction_instruction: "LlmExtractionInstruction",
    #                           definition: "Definition", # required
    #                           validation: {
    #                             # One of:
    #                             string_validation: {
    #                               allowed_values: ["AllowedStringValue"], # required
    #                             },
    #                             string_list_validation: {
    #                               allowed_values: ["AllowedStringListValue"],
    #                               max_items: 1
    #                             },
    #                             number_validation: {
    #                               min_value: 1.0,
    #                               max_value: 1.0
    #                             }
    #                           }
    #                         }
    #                       }
    #                     }
    #                   ]
    #                 }
    #               },
    #               custom_reflection_configuration: {
    #                 # One of:
    #                 episodic_reflection_override: {
    #                   append_to_prompt: "Prompt", # required
    #                   model_id: "String", # required
    #                   namespaces: ["Namespace"],
    #                   namespace_templates: ["Namespace"],
    #                   memory_record_schema: {
    #                     metadata_schema: [
    #                       {
    #                         key: "MetadataKey", # required
    #                         type: "STRING" # One of: ["STRING", "STRINGLIST", "NUMBER"],
    #                         extraction_type: "LLM_INFERRED" # One of: ["LLM_INFERRED", "STRICTLY_CONSISTENT"],
    #                         extraction_config: {
    #                           # One of:
    #                           llm_extraction_config: {
    #                             llm_extraction_instruction: "LlmExtractionInstruction",
    #                             definition: "Definition", # required
    #                             validation: {
    #                               # One of:
    #                               string_validation: {
    #                                 allowed_values: ["AllowedStringValue"], # required
    #                               },
    #                               string_list_validation: {
    #                                 allowed_values: ["AllowedStringListValue"],
    #                                 max_items: 1
    #                               },
    #                               number_validation: {
    #                                 min_value: 1.0,
    #                                 max_value: 1.0
    #                               }
    #                             }
    #                           }
    #                         }
    #                       }
    #                     ]
    #                   }
    #                 }
    #               }
    #             },
    #             self_managed_configuration: {
    #               trigger_conditions: [{
    #                 # One of:
    #                 message_based_trigger: {
    #                   message_count: 1
    #                 },
    #                 token_based_trigger: {
    #                   token_count: 1
    #                 },
    #                 time_based_trigger: {
    #                   idle_session_timeout: 1
    #                 }
    #               }],
    #               invocation_configuration: {
    #                 topic_arn: "Arn",
    #                 payload_delivery_bucket_name: "String"
    #               },
    #               historical_context_window_size: 1
    #             }
    #           },
    #           memory_record_schema: {
    #             metadata_schema: [
    #               {
    #                 key: "MetadataKey", # required
    #                 type: "STRING" # One of: ["STRING", "STRINGLIST", "NUMBER"],
    #                 extraction_type: "LLM_INFERRED" # One of: ["LLM_INFERRED", "STRICTLY_CONSISTENT"],
    #                 extraction_config: {
    #                   # One of:
    #                   llm_extraction_config: {
    #                     llm_extraction_instruction: "LlmExtractionInstruction",
    #                     definition: "Definition", # required
    #                     validation: {
    #                       # One of:
    #                       string_validation: {
    #                         allowed_values: ["AllowedStringValue"], # required
    #                       },
    #                       string_list_validation: {
    #                         allowed_values: ["AllowedStringListValue"],
    #                         max_items: 1
    #                       },
    #                       number_validation: {
    #                         min_value: 1.0,
    #                         max_value: 1.0
    #                       }
    #                     }
    #                   }
    #                 }
    #               }
    #             ]
    #           },
    #           record_expiry_specification: {
    #             # One of:
    #             record_expiry_duration_days: 1,
    #             action: "REMOVE" # One of: ["REMOVE"]
    #           }
    #         }
    #       ],
    #       delete_memory_strategies: [
    #         {
    #           memory_strategy_id: "String", # required
    #         }
    #       ]
    #     },
    #     add_indexed_keys: [
    #       {
    #         key: "MetadataKey", # required
    #         type: "STRING" # One of: ["STRING", "STRINGLIST", "NUMBER"], # required
    #       }
    #     ],
    #     namespace_keys: [
    #       {
    #         key: "NamespaceVariableKey", # required
    #         validation: {
    #           allowed_values: ["NamespaceAllowedValue"],
    #           regex_pattern: "NamespaceRegexPattern"
    #         }
    #       }
    #     ],
    #     stream_delivery_resources: {
    #       resources: [{ # required
    #         # One of:
    #         kinesis: {
    #           data_stream_arn: "Arn", # required
    #           content_configurations: [ # required
    #             {
    #               type: "MEMORY_RECORDS" # One of: ["MEMORY_RECORDS"], # required
    #               level: "METADATA_ONLY" # One of: ["METADATA_ONLY", "FULL_CONTENT"]
    #             }
    #           ]
    #         }
    #       }]
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
    #       status: "CREATING" # One of: ["CREATING", "ACTIVE", "FAILED", "DELETING", "UPDATING"], # required
    #       failure_reason: "String",
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       strategies: [
    #         {
    #           strategy_id: "MemoryStrategyId", # required
    #           name: "Name", # required
    #           description: "Description",
    #           configuration: {
    #             type: "SEMANTIC_OVERRIDE" # One of: ["SEMANTIC_OVERRIDE", "SUMMARY_OVERRIDE", "USER_PREFERENCE_OVERRIDE", "SELF_MANAGED", "EPISODIC_OVERRIDE"],
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
    #                 },
    #                 episodic_extraction_override: {
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
    #                 },
    #                 episodic_consolidation_override: {
    #                   append_to_prompt: "Prompt", # required
    #                   model_id: "String", # required
    #                 }
    #               }
    #             },
    #             reflection: {
    #               # One of:
    #               custom_reflection_configuration: {
    #                 # One of:
    #                 episodic_reflection_override: {
    #                   append_to_prompt: "Prompt", # required
    #                   model_id: "String", # required
    #                   namespaces: ["Namespace"],
    #                   namespace_templates: ["Namespace"],
    #                   memory_record_schema: {
    #                     metadata_schema: [
    #                       {
    #                         key: "MetadataKey", # required
    #                         type: "STRING" # One of: ["STRING", "STRINGLIST", "NUMBER"],
    #                         extraction_type: "LLM_INFERRED" # One of: ["LLM_INFERRED", "STRICTLY_CONSISTENT"],
    #                         extraction_config: {
    #                           # One of:
    #                           llm_extraction_config: {
    #                             llm_extraction_instruction: "LlmExtractionInstruction",
    #                             definition: "Definition", # required
    #                             validation: {
    #                               # One of:
    #                               string_validation: {
    #                                 allowed_values: ["AllowedStringValue"], # required
    #                               },
    #                               string_list_validation: {
    #                                 allowed_values: ["AllowedStringListValue"],
    #                                 max_items: 1
    #                               },
    #                               number_validation: {
    #                                 min_value: 1.0,
    #                                 max_value: 1.0
    #                               }
    #                             }
    #                           }
    #                         }
    #                       }
    #                     ]
    #                   }
    #                 }
    #               },
    #               episodic_reflection_configuration: {
    #                 namespaces: ["Namespace"],
    #                 namespace_templates: ["Namespace"],
    #                 memory_record_schema: {
    #                   metadata_schema: [
    #                     {
    #                       key: "MetadataKey", # required
    #                       type: "STRING" # One of: ["STRING", "STRINGLIST", "NUMBER"],
    #                       extraction_type: "LLM_INFERRED" # One of: ["LLM_INFERRED", "STRICTLY_CONSISTENT"],
    #                       extraction_config: {
    #                         # One of:
    #                         llm_extraction_config: {
    #                           llm_extraction_instruction: "LlmExtractionInstruction",
    #                           definition: "Definition", # required
    #                           validation: {
    #                             # One of:
    #                             string_validation: {
    #                               allowed_values: ["AllowedStringValue"], # required
    #                             },
    #                             string_list_validation: {
    #                               allowed_values: ["AllowedStringListValue"],
    #                               max_items: 1
    #                             },
    #                             number_validation: {
    #                               min_value: 1.0,
    #                               max_value: 1.0
    #                             }
    #                           }
    #                         }
    #                       }
    #                     }
    #                   ]
    #                 }
    #               }
    #             },
    #             self_managed_configuration: {
    #               trigger_conditions: [{ # required
    #                 # One of:
    #                 message_based_trigger: {
    #                   message_count: 1
    #                 },
    #                 token_based_trigger: {
    #                   token_count: 1
    #                 },
    #                 time_based_trigger: {
    #                   idle_session_timeout: 1
    #                 }
    #               }],
    #               invocation_configuration: { # required
    #                 topic_arn: "Arn", # required
    #                 payload_delivery_bucket_name: "String", # required
    #               },
    #               historical_context_window_size: 1, # required
    #             }
    #           },
    #           type: "SEMANTIC" # One of: ["SEMANTIC", "SUMMARIZATION", "USER_PREFERENCE", "CUSTOM", "EPISODIC"], # required
    #           namespaces: ["Namespace"], # required
    #           namespace_templates: ["Namespace"], # required
    #           created_at: Time.now,
    #           updated_at: Time.now,
    #           status: "CREATING" # One of: ["CREATING", "ACTIVE", "DELETING", "FAILED"],
    #           memory_record_schema: {
    #             metadata_schema: [
    #               {
    #                 key: "MetadataKey", # required
    #                 type: "STRING" # One of: ["STRING", "STRINGLIST", "NUMBER"],
    #                 extraction_type: "LLM_INFERRED" # One of: ["LLM_INFERRED", "STRICTLY_CONSISTENT"],
    #                 extraction_config: {
    #                   # One of:
    #                   llm_extraction_config: {
    #                     llm_extraction_instruction: "LlmExtractionInstruction",
    #                     definition: "Definition", # required
    #                     validation: {
    #                       # One of:
    #                       string_validation: {
    #                         allowed_values: ["AllowedStringValue"], # required
    #                       },
    #                       string_list_validation: {
    #                         allowed_values: ["AllowedStringListValue"],
    #                         max_items: 1
    #                       },
    #                       number_validation: {
    #                         min_value: 1.0,
    #                         max_value: 1.0
    #                       }
    #                     }
    #                   }
    #                 }
    #               }
    #             ]
    #           },
    #           record_expiry_duration_days: 1
    #         }
    #       ],
    #       indexed_keys: [
    #         {
    #           key: "MetadataKey", # required
    #           type: "STRING" # One of: ["STRING", "STRINGLIST", "NUMBER"], # required
    #         }
    #       ],
    #       namespace_keys: [
    #         {
    #           key: "NamespaceVariableKey", # required
    #           validation: {
    #             allowed_values: ["NamespaceAllowedValue"],
    #             regex_pattern: "NamespaceRegexPattern"
    #           }
    #         }
    #       ],
    #       stream_delivery_resources: {
    #         resources: [{ # required
    #           # One of:
    #           kinesis: {
    #             data_stream_arn: "Arn", # required
    #             content_configurations: [ # required
    #               {
    #                 type: "MEMORY_RECORDS" # One of: ["MEMORY_RECORDS"], # required
    #                 level: "METADATA_ONLY" # One of: ["METADATA_ONLY", "FULL_CONTENT"]
    #               }
    #             ]
    #           }
    #         }]
    #       },
    #       managed_by_resource_arn: "Arn"
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
    #     credential_provider_vendor: "GoogleOauth2" # One of: ["GoogleOauth2", "GithubOauth2", "SlackOauth2", "SalesforceOauth2", "MicrosoftOauth2", "CustomOauth2", "AtlassianOauth2", "LinkedinOauth2", "XOauth2", "OktaOauth2", "OneLoginOauth2", "PingOneOauth2", "FacebookOauth2", "YandexOauth2", "RedditOauth2", "ZoomOauth2", "TwitchOauth2", "SpotifyOauth2", "DropboxOauth2", "NotionOauth2", "HubspotOauth2", "CyberArkOauth2", "FusionAuthOauth2", "Auth0Oauth2", "CognitoOauth2"], # required
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
    #             response_types: ["ResponseType"],
    #             token_endpoint_auth_methods: ["TokenAuthMethod"]
    #           }
    #         },
    #         client_id: "DefaultClientIdType",
    #         client_secret: "DefaultClientSecretType",
    #         client_secret_config: {
    #           secret_id: "SecretIdType", # required
    #           json_key: "SecretJsonKeyType", # required
    #         },
    #         client_secret_source: "MANAGED" # One of: ["MANAGED", "EXTERNAL"],
    #         on_behalf_of_token_exchange_config: {
    #           grant_type: "TOKEN_EXCHANGE" # One of: ["TOKEN_EXCHANGE", "JWT_AUTHORIZATION_GRANT"], # required
    #           token_exchange_grant_type_config: {
    #             actor_token_content: "NONE" # One of: ["NONE", "M2M", "AWS_IAM_ID_TOKEN_JWT"], # required
    #             actor_token_scopes: ["ScopeType"]
    #           }
    #         },
    #         client_authentication_method: "CLIENT_SECRET_BASIC" # One of: ["CLIENT_SECRET_BASIC", "CLIENT_SECRET_POST", "AWS_IAM_ID_TOKEN_JWT", "PRIVATE_KEY_JWT"],
    #         private_key_jwt_config: {
    #           private_key_source: {
    #             # One of:
    #             kms_key_source: {
    #               kms_key_arn: "KmsKeyArn", # required
    #             }
    #           },
    #           signing_algorithm: "RS256" # One of: ["RS256", "PS256", "ES256"],
    #           additional_header_claims: {
    #             "AdditionalClaimName" => "AdditionalClaimValue"
    #           },
    #           additional_payload_claims: {
    #             "AdditionalClaimName" => "AdditionalClaimValue"
    #           }
    #         },
    #         private_endpoint: {
    #           # One of:
    #           self_managed_lattice_resource: {
    #             # One of:
    #             resource_configuration_identifier: "ResourceConfigurationIdentifier"
    #           },
    #           managed_vpc_resource: {
    #             vpc_identifier: "VpcIdentifier", # required
    #             subnet_ids: ["SubnetId"], # required
    #             endpoint_ip_address_type: "IPV4" # One of: ["IPV4", "IPV6"], # required
    #             security_group_ids: ["SecurityGroupIdentifier"],
    #             tags: {
    #               "TagKey" => "TagValue"
    #             },
    #             routing_domain: "RoutingDomain"
    #           }
    #         },
    #         private_endpoint_overrides: [
    #           {
    #             domain: "PrivateEndpointOverrideDomain", # required
    #             private_endpoint: { # required
    #               # One of:
    #               self_managed_lattice_resource: {
    #                 # One of:
    #                 resource_configuration_identifier: "ResourceConfigurationIdentifier"
    #               },
    #               managed_vpc_resource: {
    #                 vpc_identifier: "VpcIdentifier", # required
    #                 subnet_ids: ["SubnetId"], # required
    #                 endpoint_ip_address_type: "IPV4" # One of: ["IPV4", "IPV6"], # required
    #                 security_group_ids: ["SecurityGroupIdentifier"],
    #                 tags: {
    #                   "TagKey" => "TagValue"
    #                 },
    #                 routing_domain: "RoutingDomain"
    #               }
    #             }
    #           }
    #         ]
    #       },
    #       google_oauth2_provider_config: {
    #         client_id: "ClientIdType", # required
    #         client_secret: "DefaultClientSecretType",
    #         client_secret_config: {
    #           secret_id: "SecretIdType", # required
    #           json_key: "SecretJsonKeyType", # required
    #         },
    #         client_secret_source: "MANAGED" # One of: ["MANAGED", "EXTERNAL"]
    #       },
    #       github_oauth2_provider_config: {
    #         client_id: "ClientIdType", # required
    #         client_secret: "DefaultClientSecretType",
    #         client_secret_config: {
    #           secret_id: "SecretIdType", # required
    #           json_key: "SecretJsonKeyType", # required
    #         },
    #         client_secret_source: "MANAGED" # One of: ["MANAGED", "EXTERNAL"]
    #       },
    #       slack_oauth2_provider_config: {
    #         client_id: "ClientIdType", # required
    #         client_secret: "DefaultClientSecretType",
    #         client_secret_config: {
    #           secret_id: "SecretIdType", # required
    #           json_key: "SecretJsonKeyType", # required
    #         },
    #         client_secret_source: "MANAGED" # One of: ["MANAGED", "EXTERNAL"]
    #       },
    #       salesforce_oauth2_provider_config: {
    #         client_id: "ClientIdType", # required
    #         client_secret: "DefaultClientSecretType",
    #         client_secret_config: {
    #           secret_id: "SecretIdType", # required
    #           json_key: "SecretJsonKeyType", # required
    #         },
    #         client_secret_source: "MANAGED" # One of: ["MANAGED", "EXTERNAL"]
    #       },
    #       microsoft_oauth2_provider_config: {
    #         client_id: "ClientIdType", # required
    #         client_secret: "DefaultClientSecretType",
    #         client_secret_config: {
    #           secret_id: "SecretIdType", # required
    #           json_key: "SecretJsonKeyType", # required
    #         },
    #         client_secret_source: "MANAGED" # One of: ["MANAGED", "EXTERNAL"],
    #         tenant_id: "TenantIdType"
    #       },
    #       atlassian_oauth2_provider_config: {
    #         client_id: "ClientIdType", # required
    #         client_secret: "DefaultClientSecretType",
    #         client_secret_config: {
    #           secret_id: "SecretIdType", # required
    #           json_key: "SecretJsonKeyType", # required
    #         },
    #         client_secret_source: "MANAGED" # One of: ["MANAGED", "EXTERNAL"]
    #       },
    #       linkedin_oauth2_provider_config: {
    #         client_id: "ClientIdType", # required
    #         client_secret: "DefaultClientSecretType",
    #         client_secret_config: {
    #           secret_id: "SecretIdType", # required
    #           json_key: "SecretJsonKeyType", # required
    #         },
    #         client_secret_source: "MANAGED" # One of: ["MANAGED", "EXTERNAL"]
    #       },
    #       included_oauth2_provider_config: {
    #         client_id: "ClientIdType", # required
    #         client_secret: "DefaultClientSecretType",
    #         client_secret_config: {
    #           secret_id: "SecretIdType", # required
    #           json_key: "SecretJsonKeyType", # required
    #         },
    #         client_secret_source: "MANAGED" # One of: ["MANAGED", "EXTERNAL"],
    #         issuer: "IssuerUrlType",
    #         authorization_endpoint: "AuthorizationEndpointType",
    #         token_endpoint: "TokenEndpointType"
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
    #     client_secret_json_key: "SecretJsonKeyType",
    #     client_secret_source: "MANAGED" # One of: ["MANAGED", "EXTERNAL"],
    #     name: "CredentialProviderName", # required
    #     credential_provider_vendor: "GoogleOauth2" # One of: ["GoogleOauth2", "GithubOauth2", "SlackOauth2", "SalesforceOauth2", "MicrosoftOauth2", "CustomOauth2", "AtlassianOauth2", "LinkedinOauth2", "XOauth2", "OktaOauth2", "OneLoginOauth2", "PingOneOauth2", "FacebookOauth2", "YandexOauth2", "RedditOauth2", "ZoomOauth2", "TwitchOauth2", "SpotifyOauth2", "DropboxOauth2", "NotionOauth2", "HubspotOauth2", "CyberArkOauth2", "FusionAuthOauth2", "Auth0Oauth2", "CognitoOauth2"], # required
    #     credential_provider_arn: "CredentialProviderArnType", # required
    #     callback_url: "String",
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
    #             response_types: ["ResponseType"],
    #             token_endpoint_auth_methods: ["TokenAuthMethod"]
    #           }
    #         },
    #         client_id: "ClientIdType",
    #         on_behalf_of_token_exchange_config: {
    #           grant_type: "TOKEN_EXCHANGE" # One of: ["TOKEN_EXCHANGE", "JWT_AUTHORIZATION_GRANT"], # required
    #           token_exchange_grant_type_config: {
    #             actor_token_content: "NONE" # One of: ["NONE", "M2M", "AWS_IAM_ID_TOKEN_JWT"], # required
    #             actor_token_scopes: ["ScopeType"]
    #           }
    #         },
    #         client_authentication_method: "CLIENT_SECRET_BASIC" # One of: ["CLIENT_SECRET_BASIC", "CLIENT_SECRET_POST", "AWS_IAM_ID_TOKEN_JWT", "PRIVATE_KEY_JWT"],
    #         private_endpoint: {
    #           # One of:
    #           self_managed_lattice_resource: {
    #             # One of:
    #             resource_configuration_identifier: "ResourceConfigurationIdentifier"
    #           },
    #           managed_vpc_resource: {
    #             vpc_identifier: "VpcIdentifier", # required
    #             subnet_ids: ["SubnetId"], # required
    #             endpoint_ip_address_type: "IPV4" # One of: ["IPV4", "IPV6"], # required
    #             security_group_ids: ["SecurityGroupIdentifier"],
    #             tags: {
    #               "TagKey" => "TagValue"
    #             },
    #             routing_domain: "RoutingDomain"
    #           }
    #         },
    #         private_endpoint_overrides: [
    #           {
    #             domain: "PrivateEndpointOverrideDomain", # required
    #             private_endpoint: { # required
    #               # One of:
    #               self_managed_lattice_resource: {
    #                 # One of:
    #                 resource_configuration_identifier: "ResourceConfigurationIdentifier"
    #               },
    #               managed_vpc_resource: {
    #                 vpc_identifier: "VpcIdentifier", # required
    #                 subnet_ids: ["SubnetId"], # required
    #                 endpoint_ip_address_type: "IPV4" # One of: ["IPV4", "IPV6"], # required
    #                 security_group_ids: ["SecurityGroupIdentifier"],
    #                 tags: {
    #                   "TagKey" => "TagValue"
    #                 },
    #                 routing_domain: "RoutingDomain"
    #               }
    #             }
    #           }
    #         ],
    #         private_key_jwt_config: {
    #           private_key_source: {
    #             # One of:
    #             kms_key_source: {
    #               kms_key_arn: "KmsKeyArn", # required
    #             }
    #           },
    #           signing_algorithm: "RS256" # One of: ["RS256", "PS256", "ES256"],
    #           additional_header_claims: {
    #             "AdditionalClaimName" => "AdditionalClaimValue"
    #           },
    #           additional_payload_claims: {
    #             "AdditionalClaimName" => "AdditionalClaimValue"
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
    #             response_types: ["ResponseType"],
    #             token_endpoint_auth_methods: ["TokenAuthMethod"]
    #           }
    #         },
    #         client_id: "ClientIdType"
    #       },
    #       github_oauth2_provider_config: {
    #         oauth_discovery: { # required
    #           # One of:
    #           discovery_url: "DiscoveryUrlType",
    #           authorization_server_metadata: {
    #             issuer: "IssuerUrlType", # required
    #             authorization_endpoint: "AuthorizationEndpointType", # required
    #             token_endpoint: "TokenEndpointType", # required
    #             response_types: ["ResponseType"],
    #             token_endpoint_auth_methods: ["TokenAuthMethod"]
    #           }
    #         },
    #         client_id: "ClientIdType"
    #       },
    #       slack_oauth2_provider_config: {
    #         oauth_discovery: { # required
    #           # One of:
    #           discovery_url: "DiscoveryUrlType",
    #           authorization_server_metadata: {
    #             issuer: "IssuerUrlType", # required
    #             authorization_endpoint: "AuthorizationEndpointType", # required
    #             token_endpoint: "TokenEndpointType", # required
    #             response_types: ["ResponseType"],
    #             token_endpoint_auth_methods: ["TokenAuthMethod"]
    #           }
    #         },
    #         client_id: "ClientIdType"
    #       },
    #       salesforce_oauth2_provider_config: {
    #         oauth_discovery: { # required
    #           # One of:
    #           discovery_url: "DiscoveryUrlType",
    #           authorization_server_metadata: {
    #             issuer: "IssuerUrlType", # required
    #             authorization_endpoint: "AuthorizationEndpointType", # required
    #             token_endpoint: "TokenEndpointType", # required
    #             response_types: ["ResponseType"],
    #             token_endpoint_auth_methods: ["TokenAuthMethod"]
    #           }
    #         },
    #         client_id: "ClientIdType"
    #       },
    #       microsoft_oauth2_provider_config: {
    #         oauth_discovery: { # required
    #           # One of:
    #           discovery_url: "DiscoveryUrlType",
    #           authorization_server_metadata: {
    #             issuer: "IssuerUrlType", # required
    #             authorization_endpoint: "AuthorizationEndpointType", # required
    #             token_endpoint: "TokenEndpointType", # required
    #             response_types: ["ResponseType"],
    #             token_endpoint_auth_methods: ["TokenAuthMethod"]
    #           }
    #         },
    #         client_id: "ClientIdType"
    #       },
    #       atlassian_oauth2_provider_config: {
    #         oauth_discovery: { # required
    #           # One of:
    #           discovery_url: "DiscoveryUrlType",
    #           authorization_server_metadata: {
    #             issuer: "IssuerUrlType", # required
    #             authorization_endpoint: "AuthorizationEndpointType", # required
    #             token_endpoint: "TokenEndpointType", # required
    #             response_types: ["ResponseType"],
    #             token_endpoint_auth_methods: ["TokenAuthMethod"]
    #           }
    #         },
    #         client_id: "ClientIdType"
    #       },
    #       linkedin_oauth2_provider_config: {
    #         oauth_discovery: { # required
    #           # One of:
    #           discovery_url: "DiscoveryUrlType",
    #           authorization_server_metadata: {
    #             issuer: "IssuerUrlType", # required
    #             authorization_endpoint: "AuthorizationEndpointType", # required
    #             token_endpoint: "TokenEndpointType", # required
    #             response_types: ["ResponseType"],
    #             token_endpoint_auth_methods: ["TokenAuthMethod"]
    #           }
    #         },
    #         client_id: "ClientIdType"
    #       },
    #       included_oauth2_provider_config: {
    #         oauth_discovery: { # required
    #           # One of:
    #           discovery_url: "DiscoveryUrlType",
    #           authorization_server_metadata: {
    #             issuer: "IssuerUrlType", # required
    #             authorization_endpoint: "AuthorizationEndpointType", # required
    #             token_endpoint: "TokenEndpointType", # required
    #             response_types: ["ResponseType"],
    #             token_endpoint_auth_methods: ["TokenAuthMethod"]
    #           }
    #         },
    #         client_id: "ClientIdType"
    #       }
    #     },
    #     created_time: Time.now, # required
    #     last_updated_time: Time.now, # required
    #     status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "READY", "DELETING", "DELETE_FAILED"]
    #   }
    # @return [Types::UpdateOauth2CredentialProviderResponse]
    def update_oauth2_credential_provider(params = {}, options = {})
      request = build_request(:update_oauth2_credential_provider, params)
      request.send_request(options)
    end

    # <p> Updates an online evaluation configuration's settings, including rules, data sources, evaluators, and execution status. Changes take effect immediately for ongoing evaluations. </p>
    # @param [Hash, Types::UpdateOnlineEvaluationConfigRequest] params
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If you don't specify this field, a value is randomly generated for you. If this token matches a previous request, the service ignores the request, but doesn't return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    # @option params [String] :online_evaluation_config_id
    #   <p> The unique identifier of the online evaluation configuration to update. </p>
    # @option params [String] :description
    #   <p> The updated description of the online evaluation configuration. </p>
    # @option params [Types::Rule] :rule
    #   <p> The updated evaluation rule containing sampling configuration, filters, and session settings. </p>
    # @option params [Types::DataSourceConfig] :data_source_config
    #   <p> The updated data source configuration specifying CloudWatch log groups and service names to monitor. </p>
    # @option params [Array<Types::EvaluatorReference>] :evaluators
    #   <p> The updated list of evaluators to apply during online evaluation. </p>
    # @option params [Array<Types::Insight>] :insights
    #   <p>The updated list of insight types to run against agent sessions.</p>
    # @option params [Types::ClusteringConfig] :clustering_config
    #   <p>The updated clustering configuration for periodic batch evaluation.</p>
    # @option params [Types::OutputConfig] :output_config
    #   <p> The configuration that specifies where evaluation results should be written for monitoring and analysis. </p>
    # @option params [String] :evaluation_execution_role_arn
    #   <p> The updated Amazon Resource Name (ARN) of the IAM role used for evaluation execution. </p>
    # @option params [String] :execution_status
    #   <p> The updated execution status to enable or disable the online evaluation. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken",
    #     online_evaluation_config_id: "OnlineEvaluationConfigId", # required
    #     description: "EvaluationConfigDescription",
    #     rule: {
    #       sampling_config: { # required
    #         sampling_percentage: 1.0, # required
    #       },
    #       filters: [
    #         {
    #           key: "String", # required
    #           operator: "Equals" # One of: ["Equals", "NotEquals", "GreaterThan", "LessThan", "GreaterThanOrEqual", "LessThanOrEqual", "Contains", "NotContains"], # required
    #           value: { # required
    #             # One of:
    #             string_value: "String",
    #             double_value: 1.0,
    #             boolean_value: false
    #           }
    #         }
    #       ],
    #       session_config: {
    #         session_timeout_minutes: 1, # required
    #       }
    #     },
    #     data_source_config: {
    #       # One of:
    #       cloud_watch_logs: {
    #         log_group_names: ["LogGroupName"],
    #         log_group_name_prefixes: ["LogGroupNamePrefix"],
    #         service_names: ["ServiceName"], # required
    #       }
    #     },
    #     evaluators: [{
    #       # One of:
    #       evaluator_id: "EvaluatorId"
    #     }],
    #     insights: [
    #       {
    #         insight_id: "InsightId", # required
    #       }
    #     ],
    #     clustering_config: {
    #       frequencies: ["DAILY" # One of: ["DAILY", "WEEKLY", "MONTHLY"]], # required
    #     },
    #     output_config: {
    #       cloud_watch_config: { # required
    #         log_group_name: "OptionalLogGroupName",
    #         metrics_namespace: "MetricsNamespace",
    #         result_destination: "DEDICATED_LOG_GROUP" # One of: ["DEDICATED_LOG_GROUP", "SOURCE_LOG_GROUP"]
    #       }
    #     },
    #     evaluation_execution_role_arn: "RoleArn",
    #     execution_status: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #   }
    #   options = {}
    #   response = client.update_online_evaluation_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     online_evaluation_config_arn: "OnlineEvaluationConfigArn", # required
    #     online_evaluation_config_id: "OnlineEvaluationConfigId", # required
    #     updated_at: Time.now, # required
    #     status: "ACTIVE" # One of: ["ACTIVE", "CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "DELETING", "ERROR"], # required
    #     execution_status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #     failure_reason: "String"
    #   }
    # @return [Types::UpdateOnlineEvaluationConfigResponse]
    def update_online_evaluation_config(params = {}, options = {})
      request = build_request(:update_online_evaluation_config, params)
      request.send_request(options)
    end

    # <p>Updates an existing payment connector. This operation uses PATCH semantics, so you only need to specify the fields you want to change.</p>
    # @param [Hash, Types::UpdatePaymentConnectorRequest] params
    # @option params [String] :payment_manager_id
    #   <p>The unique identifier of the parent payment manager.</p>
    # @option params [String] :payment_connector_id
    #   <p>The unique identifier of the payment connector to update.</p>
    # @option params [String] :description
    #   <p>The updated description of the payment connector.</p>
    # @option params [String] :type
    #   <p>The updated type of the payment connector.</p>
    # @option params [Array<Types::CredentialsProviderConfiguration>] :credential_provider_configurations
    #   <p>The updated credential provider configurations for the payment connector.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If you don't specify this field, a value is randomly generated for you. If this token matches a previous request, the service ignores the request, but doesn't return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     payment_manager_id: "PaymentManagerId", # required
    #     payment_connector_id: "PaymentConnectorId", # required
    #     description: "PaymentsDescription",
    #     type: "CoinbaseCDP" # One of: ["CoinbaseCDP", "StripePrivy"],
    #     credential_provider_configurations: [{
    #       # One of:
    #       coinbase_cdp: {
    #         credential_provider_arn: "PaymentCredentialProviderArn", # required
    #       },
    #       stripe_privy: {
    #         credential_provider_arn: "PaymentCredentialProviderArn", # required
    #       }
    #     }],
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.update_payment_connector(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     payment_connector_id: "PaymentConnectorId", # required
    #     payment_manager_id: "PaymentManagerId", # required
    #     name: "PaymentConnectorName", # required
    #     type: "CoinbaseCDP" # One of: ["CoinbaseCDP", "StripePrivy"], # required
    #     credential_provider_configurations: [{ # required
    #       # One of:
    #       coinbase_cdp: {
    #         credential_provider_arn: "PaymentCredentialProviderArn", # required
    #       },
    #       stripe_privy: {
    #         credential_provider_arn: "PaymentCredentialProviderArn", # required
    #       }
    #     }],
    #     last_updated_at: Time.now, # required
    #     status: "CREATING" # One of: ["CREATING", "UPDATING", "DELETING", "READY", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED", "AWS_MARKETPLACE_SUBSCRIPTION_REQUIRED", "PENDING_AUTHENTICATION", "PROVISIONING", "AUTHENTICATION_EXPIRED", "AUTHENTICATION_FAILED"], # required
    #     authorization_url: "PaymentConnectorAuthorizationUrl"
    #   }
    # @return [Types::UpdatePaymentConnectorResponse]
    def update_payment_connector(params = {}, options = {})
      request = build_request(:update_payment_connector, params)
      request.send_request(options)
    end

    # <p>Updates an existing payment credential provider with new authentication credentials.</p>
    # @param [Hash, Types::UpdatePaymentCredentialProviderRequest] params
    # @option params [String] :name
    #   <p>The name of the payment credential provider to update.</p>
    # @option params [String] :credential_provider_vendor
    #   <p>The vendor type for the payment credential provider (e.g., CoinbaseCDP, StripePrivy).</p>
    # @option params [Types::PaymentProviderConfigurationInput] :provider_configuration_input
    #   <p>Configuration specific to the vendor, including API credentials.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "CredentialProviderName", # required
    #     credential_provider_vendor: "CoinbaseCDP" # One of: ["CoinbaseCDP", "StripePrivy"], # required
    #     provider_configuration_input: { # required
    #       # One of:
    #       coinbase_cdp_configuration: {
    #         api_key_id: "CoinbaseCdpApiKeyIdType", # required
    #         api_key_secret: "DefaultCoinbaseCdpApiKeySecretType",
    #         api_key_secret_source: "MANAGED" # One of: ["MANAGED", "EXTERNAL"],
    #         api_key_secret_config: {
    #           secret_id: "SecretIdType", # required
    #           json_key: "SecretJsonKeyType", # required
    #         },
    #         wallet_secret: "DefaultCoinbaseCdpWalletSecretType",
    #         wallet_secret_source: "MANAGED" # One of: ["MANAGED", "EXTERNAL"],
    #         wallet_secret_config: {
    #           secret_id: "SecretIdType", # required
    #           json_key: "SecretJsonKeyType", # required
    #         }
    #       },
    #       stripe_privy_configuration: {
    #         app_id: "StripePrivyAppIdType", # required
    #         app_secret: "DefaultStripePrivyAppSecretType",
    #         app_secret_source: "MANAGED" # One of: ["MANAGED", "EXTERNAL"],
    #         app_secret_config: {
    #           secret_id: "SecretIdType", # required
    #           json_key: "SecretJsonKeyType", # required
    #         },
    #         authorization_private_key: "DefaultStripePrivyAuthorizationPrivateKeyType",
    #         authorization_private_key_source: "MANAGED" # One of: ["MANAGED", "EXTERNAL"],
    #         authorization_private_key_config: {
    #           secret_id: "SecretIdType", # required
    #           json_key: "SecretJsonKeyType", # required
    #         },
    #         authorization_id: "StripePrivyAuthorizationIdType", # required
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_payment_credential_provider(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "CredentialProviderName", # required
    #     credential_provider_vendor: "CoinbaseCDP" # One of: ["CoinbaseCDP", "StripePrivy"], # required
    #     credential_provider_arn: "PaymentCredentialProviderArnType", # required
    #     provider_configuration_output: { # required
    #       # One of:
    #       coinbase_cdp_configuration: {
    #         api_key_id: "CoinbaseCdpApiKeyIdType", # required
    #         api_key_secret_arn: { # required
    #           secret_arn: "SecretArn", # required
    #         },
    #         api_key_secret_json_key: "SecretJsonKeyType",
    #         api_key_secret_source: "MANAGED" # One of: ["MANAGED", "EXTERNAL"],
    #         wallet_secret_arn: { # required
    #           secret_arn: "SecretArn", # required
    #         },
    #         wallet_secret_json_key: "SecretJsonKeyType",
    #         wallet_secret_source: "MANAGED" # One of: ["MANAGED", "EXTERNAL"]
    #       },
    #       stripe_privy_configuration: {
    #         app_id: "StripePrivyAppIdType", # required
    #         app_secret_arn: { # required
    #           secret_arn: "SecretArn", # required
    #         },
    #         app_secret_json_key: "SecretJsonKeyType",
    #         app_secret_source: "MANAGED" # One of: ["MANAGED", "EXTERNAL"],
    #         authorization_private_key_arn: { # required
    #           secret_arn: "SecretArn", # required
    #         },
    #         authorization_private_key_json_key: "SecretJsonKeyType",
    #         authorization_private_key_source: "MANAGED" # One of: ["MANAGED", "EXTERNAL"],
    #         authorization_id: "StripePrivyAuthorizationIdType", # required
    #       }
    #     },
    #     created_time: Time.now, # required
    #     last_updated_time: Time.now, # required
    #   }
    # @return [Types::UpdatePaymentCredentialProviderResponse]
    def update_payment_credential_provider(params = {}, options = {})
      request = build_request(:update_payment_credential_provider, params)
      request.send_request(options)
    end

    # <p>Updates an existing payment manager. This operation uses PATCH semantics, so you only need to specify the fields you want to change.</p>
    # @param [Hash, Types::UpdatePaymentManagerRequest] params
    # @option params [String] :payment_manager_id
    #   <p>The unique identifier of the payment manager to update.</p>
    # @option params [String] :description
    #   <p>The updated description of the payment manager.</p>
    # @option params [String] :authorizer_type
    #   <p>The updated authorizer type for the payment manager.</p>
    # @option params [Types::AuthorizerConfiguration] :authorizer_configuration
    #   <p>The updated authorizer configuration for the payment manager.</p>
    # @option params [String] :role_arn
    #   <p>The updated Amazon Resource Name (ARN) of the IAM role for the payment manager.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If you don't specify this field, a value is randomly generated for you. If this token matches a previous request, the service ignores the request, but doesn't return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    # @option params [String] :kms_key_arn
    #   <p>The updated Amazon Resource Name (ARN) of the customer managed KMS key used to encrypt sensitive payment manager data at rest.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     payment_manager_id: "PaymentManagerId", # required
    #     description: "PaymentsDescription",
    #     authorizer_type: "CUSTOM_JWT" # One of: ["CUSTOM_JWT", "AWS_IAM"],
    #     authorizer_configuration: {
    #       # One of:
    #       custom_jwt_authorizer: {
    #         discovery_url: "DiscoveryUrl", # required
    #         allowed_audience: ["AllowedAudience"],
    #         allowed_clients: ["AllowedClient"],
    #         allowed_scopes: ["AllowedScopeType"],
    #         advertised_scope_mapping: {
    #           "AllowedScopeType" => "AllowedScopeType"
    #         },
    #         custom_claims: [
    #           {
    #             inbound_token_claim_name: "InboundTokenClaimNameType", # required
    #             inbound_token_claim_value_type: "STRING" # One of: ["STRING", "STRING_ARRAY"], # required
    #             authorizing_claim_match_value: { # required
    #               claim_match_value: { # required
    #                 # One of:
    #                 match_value_string: "MatchValueString",
    #                 match_value_string_list: ["MatchValueString"]
    #               },
    #               claim_match_operator: "EQUALS" # One of: ["EQUALS", "CONTAINS", "CONTAINS_ANY"], # required
    #             }
    #           }
    #         ],
    #         private_endpoint: {
    #           # One of:
    #           self_managed_lattice_resource: {
    #             # One of:
    #             resource_configuration_identifier: "ResourceConfigurationIdentifier"
    #           },
    #           managed_vpc_resource: {
    #             vpc_identifier: "VpcIdentifier", # required
    #             subnet_ids: ["SubnetId"], # required
    #             endpoint_ip_address_type: "IPV4" # One of: ["IPV4", "IPV6"], # required
    #             security_group_ids: ["SecurityGroupIdentifier"],
    #             tags: {
    #               "TagKey" => "TagValue"
    #             },
    #             routing_domain: "RoutingDomain"
    #           }
    #         },
    #         private_endpoint_overrides: [
    #           {
    #             domain: "PrivateEndpointOverrideDomain", # required
    #             private_endpoint: { # required
    #               # One of:
    #               self_managed_lattice_resource: {
    #                 # One of:
    #                 resource_configuration_identifier: "ResourceConfigurationIdentifier"
    #               },
    #               managed_vpc_resource: {
    #                 vpc_identifier: "VpcIdentifier", # required
    #                 subnet_ids: ["SubnetId"], # required
    #                 endpoint_ip_address_type: "IPV4" # One of: ["IPV4", "IPV6"], # required
    #                 security_group_ids: ["SecurityGroupIdentifier"],
    #                 tags: {
    #                   "TagKey" => "TagValue"
    #                 },
    #                 routing_domain: "RoutingDomain"
    #               }
    #             }
    #           }
    #         ],
    #         allowed_workload_configuration: {
    #           hosting_environments: [
    #             {
    #               arn: "BedrockAgentcoreResourceArn", # required
    #             }
    #           ],
    #           workload_identities: ["WorkloadIdentityNameType"]
    #         }
    #       }
    #     },
    #     role_arn: "RoleArn",
    #     client_token: "ClientToken",
    #     kms_key_arn: "KmsKeyArn"
    #   }
    #   options = {}
    #   response = client.update_payment_manager(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     payment_manager_arn: "PaymentManagerArn", # required
    #     payment_manager_id: "PaymentManagerId", # required
    #     name: "PaymentManagerName", # required
    #     authorizer_type: "CUSTOM_JWT" # One of: ["CUSTOM_JWT", "AWS_IAM"], # required
    #     role_arn: "RoleArn", # required
    #     workload_identity_details: {
    #       workload_identity_arn: "WorkloadIdentityArn", # required
    #     },
    #     last_updated_at: Time.now, # required
    #     status: "CREATING" # One of: ["CREATING", "UPDATING", "DELETING", "READY", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED"], # required
    #     kms_key_arn: "KmsKeyArn"
    #   }
    # @return [Types::UpdatePaymentManagerResponse]
    def update_payment_manager(params = {}, options = {})
      request = build_request(:update_payment_manager, params)
      request.send_request(options)
    end

    # <p>Updates an existing policy within the AgentCore Policy system. This operation allows modification of the policy description and definition while maintaining the policy's identity. The updated policy is validated against the Cedar schema before being applied. This is an asynchronous operation. Use the <code>GetPolicy</code> operation to poll the <code>status</code> field to track completion.</p> <p>If the updated policy is a temporal policy, the policy engine invalidates all active temporal sessions. If the update adds or removes temporal operators, the policy engine also invalidates active temporal sessions. For more information about temporal policy sessions, see <a href="https://docs.aws.amazon.com/bedrock-agentcore/latest/devguide/policy-session-based-temporal.html">session-based temporal policies</a>. The policy engine returns an HTTP 409 <code>ConflictException</code> to in-flight sessions. To resume, you must start a new session with a new session ID.</p>
    # @param [Hash, Types::UpdatePolicyRequest] params
    # @option params [String] :policy_engine_id
    #   <p>The identifier of the policy engine that manages the policy to be updated. This ensures the policy is updated within the correct policy engine context.</p>
    # @option params [String] :policy_id
    #   <p>The unique identifier of the policy to be updated. This must be a valid policy ID that exists within the specified policy engine.</p>
    # @option params [Types::UpdatedDescription] :description
    #   <p>The new human-readable description for the policy. This optional field allows updating the policy's documentation while keeping the same policy logic.</p>
    # @option params [Types::PolicyDefinition] :definition
    #   <p>The new Cedar or Dogwood policy statement that defines the access control rules. This replaces the existing policy definition with new logic while maintaining the policy's identity.</p>
    # @option params [String] :validation_mode
    #   <p>The validation mode for the policy update. Determines how Cedar analyzer validation results are handled during policy updates. FAIL_ON_ANY_FINDINGS runs the Cedar analyzer and fails the update if validation issues are detected, ensuring the policy conforms to the Cedar schema and tool context. IGNORE_ALL_FINDINGS runs the Cedar analyzer but allows updates despite validation warnings. Use FAIL_ON_ANY_FINDINGS to ensure policy correctness during updates, especially when modifying policy logic or conditions.</p>
    # @option params [String] :enforcement_mode
    #   <p>The enforcement mode for the policy. Run this policy in <code>LOG_ONLY</code> mode to collect data on how it affects your application. Once you are satisfied with the data gathered, switch the policy to <code>ACTIVE</code>. If you omit this field, the policy's existing enforcement mode is unchanged.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_engine_id: "ResourceId", # required
    #     policy_id: "ResourceId", # required
    #     description: {
    #       optional_value: "Description"
    #     },
    #     definition: {
    #       # One of:
    #       cedar: {
    #         statement: "Statement", # required
    #       },
    #       policy_generation: {
    #         policy_generation_id: "ResourceId", # required
    #         policy_generation_asset_id: "ResourceId", # required
    #       },
    #       policy: {
    #         statement: "Statement", # required
    #       }
    #     },
    #     validation_mode: "FAIL_ON_ANY_FINDINGS" # One of: ["FAIL_ON_ANY_FINDINGS", "IGNORE_ALL_FINDINGS"],
    #     enforcement_mode: "ACTIVE" # One of: ["ACTIVE", "LOG_ONLY"]
    #   }
    #   options = {}
    #   response = client.update_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_id: "ResourceId", # required
    #     name: "PolicyName", # required
    #     policy_engine_id: "ResourceId", # required
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #     policy_arn: "PolicyArn", # required
    #     status: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED"], # required
    #     enforcement_mode: "ACTIVE" # One of: ["ACTIVE", "LOG_ONLY"],
    #     definition: { # required
    #       # One of:
    #       cedar: {
    #         statement: "Statement", # required
    #       },
    #       policy_generation: {
    #         policy_generation_id: "ResourceId", # required
    #         policy_generation_asset_id: "ResourceId", # required
    #       },
    #       policy: {
    #         statement: "Statement", # required
    #       }
    #     },
    #     description: "Description",
    #     status_reasons: ["String"], # required
    #   }
    # @return [Types::UpdatePolicyResponse]
    def update_policy(params = {}, options = {})
      request = build_request(:update_policy, params)
      request.send_request(options)
    end

    # <p>Updates an existing policy engine within the AgentCore Policy system. This operation allows modification of the policy engine description while maintaining its identity. This is an asynchronous operation. Use the <code>GetPolicyEngine</code> operation to poll the <code>status</code> field to track completion.</p>
    # @param [Hash, Types::UpdatePolicyEngineRequest] params
    # @option params [String] :policy_engine_id
    #   <p>The unique identifier of the policy engine to be updated.</p>
    # @option params [Types::UpdatedDescription] :description
    #   <p>The new description for the policy engine.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_engine_id: "ResourceId", # required
    #     description: {
    #       optional_value: "Description"
    #     }
    #   }
    #   options = {}
    #   response = client.update_policy_engine(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_engine_id: "ResourceId", # required
    #     name: "PolicyEngineName", # required
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #     policy_engine_arn: "PolicyEngineArn", # required
    #     status: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED"], # required
    #     encryption_key_arn: "KmsKeyArn",
    #     description: "Description",
    #     status_reasons: ["String"], # required
    #   }
    # @return [Types::UpdatePolicyEngineResponse]
    def update_policy_engine(params = {}, options = {})
      request = build_request(:update_policy_engine, params)
      request.send_request(options)
    end

    # <p>Updates an existing registry. This operation uses PATCH semantics, so you only need to specify the fields you want to change.</p>
    # @param [Hash, Types::UpdateRegistryRequest] params
    # @option params [String] :registry_id
    #   <p>The identifier of the registry to update. You can specify either the Amazon Resource Name (ARN) or the ID of the registry.</p>
    # @option params [String] :name
    #   <p>The updated name of the registry.</p>
    # @option params [Types::UpdatedDescription] :description
    #   <p>The updated description of the registry. To clear the description, include the <code>UpdatedDescription</code> wrapper with <code>optionalValue</code> not specified.</p>
    # @option params [Types::UpdatedAuthorizerConfiguration] :authorizer_configuration
    #   <p>The updated authorizer configuration for the registry. Changing the authorizer configuration can break existing consumers of the registry who are using the authorization type prior to the update.</p>
    # @option params [Types::UpdatedApprovalConfiguration] :approval_configuration
    #   <p>The updated approval configuration for registry records. The updated configuration only affects new records that move to <code>PENDING_APPROVAL</code> status after the change. Existing records already in <code>PENDING_APPROVAL</code> status are not affected.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     registry_id: "RegistryIdentifier", # required
    #     name: "RegistryName",
    #     description: {
    #       optional_value: "Description"
    #     },
    #     authorizer_configuration: {
    #       optional_value: {
    #         # One of:
    #         custom_jwt_authorizer: {
    #           discovery_url: "DiscoveryUrl", # required
    #           allowed_audience: ["AllowedAudience"],
    #           allowed_clients: ["AllowedClient"],
    #           allowed_scopes: ["AllowedScopeType"],
    #           advertised_scope_mapping: {
    #             "AllowedScopeType" => "AllowedScopeType"
    #           },
    #           custom_claims: [
    #             {
    #               inbound_token_claim_name: "InboundTokenClaimNameType", # required
    #               inbound_token_claim_value_type: "STRING" # One of: ["STRING", "STRING_ARRAY"], # required
    #               authorizing_claim_match_value: { # required
    #                 claim_match_value: { # required
    #                   # One of:
    #                   match_value_string: "MatchValueString",
    #                   match_value_string_list: ["MatchValueString"]
    #                 },
    #                 claim_match_operator: "EQUALS" # One of: ["EQUALS", "CONTAINS", "CONTAINS_ANY"], # required
    #               }
    #             }
    #           ],
    #           private_endpoint: {
    #             # One of:
    #             self_managed_lattice_resource: {
    #               # One of:
    #               resource_configuration_identifier: "ResourceConfigurationIdentifier"
    #             },
    #             managed_vpc_resource: {
    #               vpc_identifier: "VpcIdentifier", # required
    #               subnet_ids: ["SubnetId"], # required
    #               endpoint_ip_address_type: "IPV4" # One of: ["IPV4", "IPV6"], # required
    #               security_group_ids: ["SecurityGroupIdentifier"],
    #               tags: {
    #                 "TagKey" => "TagValue"
    #               },
    #               routing_domain: "RoutingDomain"
    #             }
    #           },
    #           private_endpoint_overrides: [
    #             {
    #               domain: "PrivateEndpointOverrideDomain", # required
    #               private_endpoint: { # required
    #                 # One of:
    #                 self_managed_lattice_resource: {
    #                   # One of:
    #                   resource_configuration_identifier: "ResourceConfigurationIdentifier"
    #                 },
    #                 managed_vpc_resource: {
    #                   vpc_identifier: "VpcIdentifier", # required
    #                   subnet_ids: ["SubnetId"], # required
    #                   endpoint_ip_address_type: "IPV4" # One of: ["IPV4", "IPV6"], # required
    #                   security_group_ids: ["SecurityGroupIdentifier"],
    #                   tags: {
    #                     "TagKey" => "TagValue"
    #                   },
    #                   routing_domain: "RoutingDomain"
    #                 }
    #               }
    #             }
    #           ],
    #           allowed_workload_configuration: {
    #             hosting_environments: [
    #               {
    #                 arn: "BedrockAgentcoreResourceArn", # required
    #               }
    #             ],
    #             workload_identities: ["WorkloadIdentityNameType"]
    #           }
    #         }
    #       }
    #     },
    #     approval_configuration: {
    #       optional_value: {
    #         auto_approval: false
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_registry(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "RegistryName", # required
    #     description: "Description",
    #     registry_id: "RegistryId", # required
    #     registry_arn: "RegistryArn", # required
    #     authorizer_type: "CUSTOM_JWT" # One of: ["CUSTOM_JWT", "AWS_IAM"],
    #     authorizer_configuration: {
    #       # One of:
    #       custom_jwt_authorizer: {
    #         discovery_url: "DiscoveryUrl", # required
    #         allowed_audience: ["AllowedAudience"],
    #         allowed_clients: ["AllowedClient"],
    #         allowed_scopes: ["AllowedScopeType"],
    #         advertised_scope_mapping: {
    #           "AllowedScopeType" => "AllowedScopeType"
    #         },
    #         custom_claims: [
    #           {
    #             inbound_token_claim_name: "InboundTokenClaimNameType", # required
    #             inbound_token_claim_value_type: "STRING" # One of: ["STRING", "STRING_ARRAY"], # required
    #             authorizing_claim_match_value: { # required
    #               claim_match_value: { # required
    #                 # One of:
    #                 match_value_string: "MatchValueString",
    #                 match_value_string_list: ["MatchValueString"]
    #               },
    #               claim_match_operator: "EQUALS" # One of: ["EQUALS", "CONTAINS", "CONTAINS_ANY"], # required
    #             }
    #           }
    #         ],
    #         private_endpoint: {
    #           # One of:
    #           self_managed_lattice_resource: {
    #             # One of:
    #             resource_configuration_identifier: "ResourceConfigurationIdentifier"
    #           },
    #           managed_vpc_resource: {
    #             vpc_identifier: "VpcIdentifier", # required
    #             subnet_ids: ["SubnetId"], # required
    #             endpoint_ip_address_type: "IPV4" # One of: ["IPV4", "IPV6"], # required
    #             security_group_ids: ["SecurityGroupIdentifier"],
    #             tags: {
    #               "TagKey" => "TagValue"
    #             },
    #             routing_domain: "RoutingDomain"
    #           }
    #         },
    #         private_endpoint_overrides: [
    #           {
    #             domain: "PrivateEndpointOverrideDomain", # required
    #             private_endpoint: { # required
    #               # One of:
    #               self_managed_lattice_resource: {
    #                 # One of:
    #                 resource_configuration_identifier: "ResourceConfigurationIdentifier"
    #               },
    #               managed_vpc_resource: {
    #                 vpc_identifier: "VpcIdentifier", # required
    #                 subnet_ids: ["SubnetId"], # required
    #                 endpoint_ip_address_type: "IPV4" # One of: ["IPV4", "IPV6"], # required
    #                 security_group_ids: ["SecurityGroupIdentifier"],
    #                 tags: {
    #                   "TagKey" => "TagValue"
    #                 },
    #                 routing_domain: "RoutingDomain"
    #               }
    #             }
    #           }
    #         ],
    #         allowed_workload_configuration: {
    #           hosting_environments: [
    #             {
    #               arn: "BedrockAgentcoreResourceArn", # required
    #             }
    #           ],
    #           workload_identities: ["WorkloadIdentityNameType"]
    #         }
    #       }
    #     },
    #     approval_configuration: {
    #       auto_approval: false
    #     },
    #     status: "CREATING" # One of: ["CREATING", "READY", "UPDATING", "CREATE_FAILED", "UPDATE_FAILED", "DELETING", "DELETE_FAILED"], # required
    #     status_reason: "String",
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #   }
    # @return [Types::UpdateRegistryResponse]
    def update_registry(params = {}, options = {})
      request = build_request(:update_registry, params)
      request.send_request(options)
    end

    # <p>Updates an existing registry record. This operation uses PATCH semantics, so you only need to specify the fields you want to change. The update is processed asynchronously and returns HTTP 202 Accepted.</p>
    # @param [Hash, Types::UpdateRegistryRecordRequest] params
    # @option params [String] :registry_id
    #   <p>The identifier of the registry containing the record. You can specify either the Amazon Resource Name (ARN) or the ID of the registry.</p>
    # @option params [String] :record_id
    #   <p>The identifier of the registry record to update. You can specify either the Amazon Resource Name (ARN) or the ID of the record.</p>
    # @option params [String] :name
    #   <p>The updated name for the registry record.</p>
    # @option params [Types::UpdatedDescription] :description
    #   <p>The updated description for the registry record. To clear the description, include the <code>UpdatedDescription</code> wrapper with <code>optionalValue</code> not specified.</p>
    # @option params [String] :descriptor_type
    #   <p>The updated descriptor type for the registry record. Changing the descriptor type may require updating the <code>descriptors</code> field to match the new type's schema requirements.</p>
    # @option params [Types::UpdatedDescriptors] :descriptors
    #   <p>The updated descriptor-type-specific configuration containing the resource schema and metadata. Uses PATCH semantics where individual descriptor fields can be updated independently.</p>
    # @option params [String] :record_version
    #   <p>The version of the registry record for optimistic locking. If provided, it must match the current version of the record. The service automatically increments the version after a successful update.</p>
    # @option params [Types::UpdatedSynchronizationType] :synchronization_type
    #   <p>The updated synchronization type for the registry record.</p>
    # @option params [Types::UpdatedSynchronizationConfiguration] :synchronization_configuration
    #   <p>The updated synchronization configuration for the registry record.</p>
    # @option params [Boolean] :trigger_synchronization
    #   <p>Whether to trigger synchronization using the stored or provided configuration. When set to <code>true</code>, the service will synchronize the record metadata from the configured external source.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     registry_id: "RegistryIdentifier", # required
    #     record_id: "RecordIdentifier", # required
    #     name: "RegistryRecordName",
    #     description: {
    #       optional_value: "Description"
    #     },
    #     descriptor_type: "MCP" # One of: ["MCP", "A2A", "CUSTOM", "AGENT_SKILLS"],
    #     descriptors: {
    #       optional_value: {
    #         mcp: {
    #           optional_value: {
    #             server: {
    #               optional_value: {
    #                 schema_version: "SchemaVersion",
    #                 inline_content: "InlineContent"
    #               }
    #             },
    #             tools: {
    #               optional_value: {
    #                 protocol_version: "SchemaVersion",
    #                 inline_content: "InlineContent"
    #               }
    #             }
    #           }
    #         },
    #         a2a: {
    #           optional_value: {
    #             agent_card: {
    #               schema_version: "SchemaVersion",
    #               inline_content: "InlineContent"
    #             }
    #           }
    #         },
    #         custom: {
    #           optional_value: {
    #             inline_content: "InlineContent"
    #           }
    #         },
    #         agent_skills: {
    #           optional_value: {
    #             skill_md: {
    #               optional_value: {
    #                 inline_content: "InlineContent"
    #               }
    #             },
    #             skill_definition: {
    #               optional_value: {
    #                 schema_version: "SchemaVersion",
    #                 inline_content: "InlineContent"
    #               }
    #             }
    #           }
    #         }
    #       }
    #     },
    #     record_version: "RegistryRecordVersion",
    #     synchronization_type: {
    #       optional_value: "URL" # One of: ["URL"]
    #     },
    #     synchronization_configuration: {
    #       optional_value: {
    #         from_url: {
    #           url: "McpServerUrl", # required
    #           credential_provider_configurations: [
    #             {
    #               credential_provider_type: "OAUTH" # One of: ["OAUTH", "IAM"], # required
    #               credential_provider: { # required
    #                 # One of:
    #                 oauth_credential_provider: {
    #                   provider_arn: "CredentialProviderArn", # required
    #                   grant_type: "CLIENT_CREDENTIALS" # One of: ["CLIENT_CREDENTIALS"],
    #                   scopes: ["String"],
    #                   custom_parameters: {
    #                     "String" => "String"
    #                   }
    #                 },
    #                 iam_credential_provider: {
    #                   role_arn: "IamRoleArn",
    #                   service: "IamSigningServiceName",
    #                   region: "IamSigningRegion"
    #                 }
    #               }
    #             }
    #           ]
    #         }
    #       }
    #     },
    #     trigger_synchronization: false
    #   }
    #   options = {}
    #   response = client.update_registry_record(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     registry_arn: "RegistryArn", # required
    #     record_arn: "RegistryRecordArn", # required
    #     record_id: "RegistryRecordId", # required
    #     name: "RegistryRecordName", # required
    #     description: "Description",
    #     descriptor_type: "MCP" # One of: ["MCP", "A2A", "CUSTOM", "AGENT_SKILLS"], # required
    #     descriptors: { # required
    #       mcp: {
    #         server: {
    #           schema_version: "SchemaVersion",
    #           inline_content: "InlineContent"
    #         },
    #         tools: {
    #           protocol_version: "SchemaVersion",
    #           inline_content: "InlineContent"
    #         }
    #       },
    #       a2a: {
    #         agent_card: {
    #           schema_version: "SchemaVersion",
    #           inline_content: "InlineContent"
    #         }
    #       },
    #       custom: {
    #         inline_content: "InlineContent"
    #       },
    #       agent_skills: {
    #         skill_md: {
    #           inline_content: "InlineContent"
    #         },
    #         skill_definition: {
    #           schema_version: "SchemaVersion",
    #           inline_content: "InlineContent"
    #         }
    #       }
    #     },
    #     record_version: "RegistryRecordVersion",
    #     status: "DRAFT" # One of: ["DRAFT", "PENDING_APPROVAL", "APPROVED", "REJECTED", "DEPRECATED", "CREATING", "UPDATING", "CREATE_FAILED", "UPDATE_FAILED"], # required
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #     status_reason: "String",
    #     synchronization_type: "URL" # One of: ["URL"],
    #     synchronization_configuration: {
    #       from_url: {
    #         url: "McpServerUrl", # required
    #         credential_provider_configurations: [
    #           {
    #             credential_provider_type: "OAUTH" # One of: ["OAUTH", "IAM"], # required
    #             credential_provider: { # required
    #               # One of:
    #               oauth_credential_provider: {
    #                 provider_arn: "CredentialProviderArn", # required
    #                 grant_type: "CLIENT_CREDENTIALS" # One of: ["CLIENT_CREDENTIALS"],
    #                 scopes: ["String"],
    #                 custom_parameters: {
    #                   "String" => "String"
    #                 }
    #               },
    #               iam_credential_provider: {
    #                 role_arn: "IamRoleArn",
    #                 service: "IamSigningServiceName",
    #                 region: "IamSigningRegion"
    #               }
    #             }
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @return [Types::UpdateRegistryRecordResponse]
    def update_registry_record(params = {}, options = {})
      request = build_request(:update_registry_record, params)
      request.send_request(options)
    end

    # <p>Updates the status of a registry record. Use this operation to approve, reject, or deprecate a registry record.</p>
    # @param [Hash, Types::UpdateRegistryRecordStatusRequest] params
    # @option params [String] :registry_id
    #   <p>The identifier of the registry containing the record. You can specify either the Amazon Resource Name (ARN) or the ID of the registry.</p>
    # @option params [String] :record_id
    #   <p>The identifier of the registry record to update the status for. You can specify either the Amazon Resource Name (ARN) or the ID of the record.</p>
    # @option params [String] :status
    #   <p>The target status for the registry record.</p>
    # @option params [String] :status_reason
    #   <p>The reason for the status change, such as why the record was approved or rejected.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     registry_id: "RegistryIdentifier", # required
    #     record_id: "RecordIdentifier", # required
    #     status: "DRAFT" # One of: ["DRAFT", "PENDING_APPROVAL", "APPROVED", "REJECTED", "DEPRECATED", "CREATING", "UPDATING", "CREATE_FAILED", "UPDATE_FAILED"], # required
    #     status_reason: "String", # required
    #   }
    #   options = {}
    #   response = client.update_registry_record_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     registry_arn: "RegistryArn", # required
    #     record_arn: "RegistryRecordArn", # required
    #     record_id: "RegistryRecordId", # required
    #     status: "DRAFT" # One of: ["DRAFT", "PENDING_APPROVAL", "APPROVED", "REJECTED", "DEPRECATED", "CREATING", "UPDATING", "CREATE_FAILED", "UPDATE_FAILED"], # required
    #     status_reason: "String", # required
    #     updated_at: Time.now, # required
    #   }
    # @return [Types::UpdateRegistryRecordStatusResponse]
    def update_registry_record_status(params = {}, options = {})
      request = build_request(:update_registry_record_status, params)
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
        memory_created: Waiters::MemoryCreated,
        policy_active: Waiters::PolicyActive,
        policy_deleted: Waiters::PolicyDeleted,
        policy_engine_active: Waiters::PolicyEngineActive,
        policy_engine_deleted: Waiters::PolicyEngineDeleted,
        policy_generation_completed: Waiters::PolicyGenerationCompleted
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
