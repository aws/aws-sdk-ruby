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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:devopsagent)

module Aws::DevOpsAgent
  # An API client for Aws::DevOpsAgent.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::DevOpsAgent
    @identifier = :devopsagent

    add_plugin(::Aws::DevOpsAgent::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::DevOpsAgent::EndpointProvider)
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

    # <p>Adds a specific service association to an AgentSpace. It overwrites the existing association of the same service. Returns 201 Created on success.</p>
    # @param [Hash, Types::AssociateServiceInput] params
    # @option params [String] :agent_space_id
    #   <p>The unique identifier of the AgentSpace</p>
    # @option params [String] :service_id
    #   <p>The unique identifier of the service.</p>
    # @option params [Types::ServiceConfiguration] :configuration
    #   <p>The configuration that directs how AgentSpace interacts with the given service.</p>
    # @option params [Hash<String, Types::CapabilityConfiguration>] :capabilities
    #   <p>Enabled capabilities for this association.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_space_id: "AgentSpaceId", # required
    #     service_id: "ServiceId", # required
    #     configuration: { # required
    #       # One of:
    #       source_aws: {
    #         account_id: "String", # required
    #         account_type: "source" # One of: ["source"], # required
    #         assumable_role_arn: "RoleArn", # required
    #         external_id: "String",
    #         agent_elevated_role_arn: "RoleArn",
    #         agent_elevated_role_arn_status: "valid" # One of: ["valid", "invalid", "pending-confirmation"]
    #       },
    #       aws: {
    #         assumable_role_arn: "RoleArn", # required
    #         account_id: "String", # required
    #         account_type: "monitor" # One of: ["monitor"], # required
    #         agent_elevated_role_arn: "RoleArn",
    #         agent_elevated_role_arn_status: "valid" # One of: ["valid", "invalid", "pending-confirmation"]
    #       },
    #       github: {
    #         repo_name: "String", # required
    #         repo_id: "String", # required
    #         owner: "String", # required
    #         owner_type: "organization" # One of: ["organization", "user"], # required
    #         instance_identifier: "String",
    #         runtime_role_arn: "RoleArn",
    #         release_management_association_id: "AssociationId"
    #       },
    #       slack: {
    #         workspace_id: "String", # required
    #         workspace_name: "String", # required
    #         transmission_target: { # required
    #           ops_oncall_target: { # required
    #             channel_name: "String",
    #             channel_id: "String", # required
    #           },
    #           ops_sre_target: {
    #             channel_name: "String",
    #             channel_id: "String", # required
    #           }
    #         },
    #         bidirectional: {
    #           role_arn: "RoleArn", # required
    #           enabled: false
    #         }
    #       },
    #       dynatrace: {
    #         env_id: "String", # required
    #         resources: ["String"]
    #       },
    #       servicenow: {
    #         instance_id: "String",
    #         auth_scopes: ["String"]
    #       },
    #       mcpservernewrelic: {
    #         account_id: "String", # required
    #         endpoint: "String", # required
    #       },
    #       mcpserverdatadog: {
    #         enabled_elevated_tools: [
    #           {
    #             name: "String", # required
    #             tool_classification: "READ_ONLY" # One of: ["READ_ONLY", "MUTATIVE", "DESTRUCTIVE"]
    #           }
    #         ]
    #       },
    #       mcpserver: {
    #         tools: ["String"], # required
    #         tool_details: [
    #           {
    #             name: "String", # required
    #             tool_classification: "READ_ONLY" # One of: ["READ_ONLY", "MUTATIVE", "DESTRUCTIVE"]
    #           }
    #         ]
    #       },
    #       gitlab: {
    #         project_id: "String", # required
    #         project_path: "String", # required
    #         instance_identifier: "String",
    #         runtime_role_arn: "RoleArn",
    #         release_management_association_id: "AssociationId"
    #       },
    #       mcpserversplunk: {
    #       },
    #       event_channel: {
    #       },
    #       azure: {
    #         subscription_id: "String", # required
    #       },
    #       azuredevops: {
    #         organization_name: "String", # required
    #         project_id: "String", # required
    #         project_name: "String", # required
    #       },
    #       mcpservergrafana: {
    #         endpoint: "String", # required
    #         organization_id: "String",
    #         tools: ["String"],
    #         enabled_elevated_tools: [
    #           {
    #             name: "String", # required
    #             tool_classification: "READ_ONLY" # One of: ["READ_ONLY", "MUTATIVE", "DESTRUCTIVE"]
    #           }
    #         ]
    #       },
    #       pagerduty: {
    #         services: ["String"], # required
    #         customer_email: "EmailAddress", # required
    #       },
    #       mcpserversigv4: {
    #         tools: ["String"], # required
    #         tool_details: [
    #           {
    #             name: "String", # required
    #             tool_classification: "READ_ONLY" # One of: ["READ_ONLY", "MUTATIVE", "DESTRUCTIVE"]
    #           }
    #         ]
    #       },
    #       remoteagent: {
    #       },
    #       remoteagentsigv4: {
    #       },
    #       release_management: {
    #         name: "DisplayName", # required
    #         network_access: { # required
    #           # One of:
    #           private_access: {
    #             private_connection_name: "PrivateConnectionName", # required
    #             runtime_role_arn: "RoleArn", # required
    #           }
    #         }
    #       }
    #     },
    #     capabilities: {
    #       "CapabilityType" => {
    #         enabled: false,
    #         trigger_filter_groups: [
    #           {
    #             events: ["PULL_REQUEST_READY_FOR_REVIEW" # One of: ["PULL_REQUEST_READY_FOR_REVIEW", "PULL_REQUEST_DRAFT"]],
    #             target_branches: {
    #               patterns: ["TriggerRegexPattern"], # required
    #             }
    #           }
    #         ]
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.associate_service(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     association: { # required
    #       agent_space_id: "AgentSpaceId", # required
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       status: "valid" # One of: ["valid", "invalid", "pending-confirmation"],
    #       association_id: "AssociationId", # required
    #       service_id: "ServiceId", # required
    #       configuration: { # required
    #         # One of:
    #         source_aws: {
    #           account_id: "String", # required
    #           account_type: "source" # One of: ["source"], # required
    #           assumable_role_arn: "RoleArn", # required
    #           external_id: "String",
    #           agent_elevated_role_arn: "RoleArn",
    #           agent_elevated_role_arn_status: "valid" # One of: ["valid", "invalid", "pending-confirmation"]
    #         },
    #         aws: {
    #           assumable_role_arn: "RoleArn", # required
    #           account_id: "String", # required
    #           account_type: "monitor" # One of: ["monitor"], # required
    #           agent_elevated_role_arn: "RoleArn",
    #           agent_elevated_role_arn_status: "valid" # One of: ["valid", "invalid", "pending-confirmation"]
    #         },
    #         github: {
    #           repo_name: "String", # required
    #           repo_id: "String", # required
    #           owner: "String", # required
    #           owner_type: "organization" # One of: ["organization", "user"], # required
    #           instance_identifier: "String",
    #           runtime_role_arn: "RoleArn",
    #           release_management_association_id: "AssociationId"
    #         },
    #         slack: {
    #           workspace_id: "String", # required
    #           workspace_name: "String", # required
    #           transmission_target: { # required
    #             ops_oncall_target: { # required
    #               channel_name: "String",
    #               channel_id: "String", # required
    #             },
    #             ops_sre_target: {
    #               channel_name: "String",
    #               channel_id: "String", # required
    #             }
    #           },
    #           bidirectional: {
    #             role_arn: "RoleArn", # required
    #             enabled: false
    #           }
    #         },
    #         dynatrace: {
    #           env_id: "String", # required
    #           resources: ["String"]
    #         },
    #         servicenow: {
    #           instance_id: "String",
    #           auth_scopes: ["String"]
    #         },
    #         mcpservernewrelic: {
    #           account_id: "String", # required
    #           endpoint: "String", # required
    #         },
    #         mcpserverdatadog: {
    #           enabled_elevated_tools: [
    #             {
    #               name: "String", # required
    #               tool_classification: "READ_ONLY" # One of: ["READ_ONLY", "MUTATIVE", "DESTRUCTIVE"]
    #             }
    #           ]
    #         },
    #         mcpserver: {
    #           tools: ["String"], # required
    #           tool_details: [
    #             {
    #               name: "String", # required
    #               tool_classification: "READ_ONLY" # One of: ["READ_ONLY", "MUTATIVE", "DESTRUCTIVE"]
    #             }
    #           ]
    #         },
    #         gitlab: {
    #           project_id: "String", # required
    #           project_path: "String", # required
    #           instance_identifier: "String",
    #           runtime_role_arn: "RoleArn",
    #           release_management_association_id: "AssociationId"
    #         },
    #         mcpserversplunk: {
    #         },
    #         event_channel: {
    #         },
    #         azure: {
    #           subscription_id: "String", # required
    #         },
    #         azuredevops: {
    #           organization_name: "String", # required
    #           project_id: "String", # required
    #           project_name: "String", # required
    #         },
    #         mcpservergrafana: {
    #           endpoint: "String", # required
    #           organization_id: "String",
    #           tools: ["String"],
    #           enabled_elevated_tools: [
    #             {
    #               name: "String", # required
    #               tool_classification: "READ_ONLY" # One of: ["READ_ONLY", "MUTATIVE", "DESTRUCTIVE"]
    #             }
    #           ]
    #         },
    #         pagerduty: {
    #           services: ["String"], # required
    #           customer_email: "EmailAddress", # required
    #         },
    #         mcpserversigv4: {
    #           tools: ["String"], # required
    #           tool_details: [
    #             {
    #               name: "String", # required
    #               tool_classification: "READ_ONLY" # One of: ["READ_ONLY", "MUTATIVE", "DESTRUCTIVE"]
    #             }
    #           ]
    #         },
    #         remoteagent: {
    #         },
    #         remoteagentsigv4: {
    #         },
    #         release_management: {
    #           name: "DisplayName", # required
    #           network_access: { # required
    #             # One of:
    #             private_access: {
    #               private_connection_name: "PrivateConnectionName", # required
    #               runtime_role_arn: "RoleArn", # required
    #             }
    #           }
    #         }
    #       },
    #       capabilities: {
    #         "CapabilityType" => {
    #           enabled: false,
    #           trigger_filter_groups: [
    #             {
    #               events: ["PULL_REQUEST_READY_FOR_REVIEW" # One of: ["PULL_REQUEST_READY_FOR_REVIEW", "PULL_REQUEST_DRAFT"]],
    #               target_branches: {
    #                 patterns: ["TriggerRegexPattern"], # required
    #               }
    #             }
    #           ]
    #         }
    #       }
    #     },
    #     webhook: {
    #       webhook_url: "String",
    #       webhook_id: "String",
    #       webhook_type: "hmac" # One of: ["hmac", "apikey", "gitlab", "pagerduty"],
    #       webhook_secret: "WebhookSecret",
    #       api_key: "ApiKeyValue"
    #     }
    #   }
    # @return [Types::AssociateServiceOutput]
    def associate_service(params = {}, options = {})
      request = build_request(:associate_service, params)
      request.send_request(options)
    end

    # <p>Creates a new AgentSpace with the specified name and description. Duplicate space names are allowed.</p>
    # @param [Hash, Types::CreateAgentSpaceInput] params
    # @option params [String] :name
    #   <p>The name of the AgentSpace.</p>
    # @option params [String] :description
    #   <p>The description of the AgentSpace.</p>
    # @option params [String] :locale
    #   <p>The locale for the AgentSpace, which determines the language used in agent responses.</p>
    # @option params [String] :kms_key_arn
    #   <p>The ARN of the AWS Key Management Service (AWS KMS) customer managed key that's used to encrypt resources.</p>
    # @option params [String] :client_token
    #   <p>Client-provided token to ensure request idempotency. When the same token is provided in subsequent calls, the same response is returned within a 8-hour window.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Tags to add to the AgentSpace at creation time.</p>
    # @option params [Hash<String, Boolean>] :preferences
    #   <p>The preferences to configure on the agent space. Preferences not provided take their default values.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "AgentSpaceName", # required
    #     description: "Description",
    #     locale: "Locale",
    #     kms_key_arn: "KmsKeyArn",
    #     client_token: "String",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     preferences: {
    #       "AgentSpacePreferenceKey" => false
    #     }
    #   }
    #   options = {}
    #   response = client.create_agent_space(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     agent_space: { # required
    #       name: "AgentSpaceName", # required
    #       description: "Description",
    #       locale: "Locale",
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       kms_key_arn: "KmsKeyArn",
    #       agent_space_id: "AgentSpaceId", # required
    #       preferences: {
    #         "AgentSpacePreferenceKey" => false
    #       }
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::CreateAgentSpaceOutput]
    def create_agent_space(params = {}, options = {})
      request = build_request(:create_agent_space, params)
      request.send_request(options)
    end

    # <p>Creates a new asset in the specified agent space</p>
    # @param [Hash, Types::CreateAssetRequest] params
    # @option params [String] :agent_space_id
    #   <p>The unique identifier for the agent space where the asset will be created</p>
    # @option params [String] :asset_type
    #   <p>The type of asset to create</p>
    # @option params [JSON] :metadata
    #   <p>The metadata describing this asset</p>
    # @option params [Types::AssetContent] :content
    #   <p>The content for the asset. Provide a single file, a zip bundle, or a sourceUrl to import from an external source.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier used for idempotent asset creation</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_space_id: "AgentSpaceIdentifier", # required
    #     asset_type: "AssetType", # required
    #     metadata: ""null"",
    #     content: { # required
    #       # One of:
    #       file: {
    #         path: "AssetFilePath", # required
    #         body: { # required
    #           # One of:
    #           bytes: "data",
    #           text: "AssetFileText"
    #         },
    #         metadata: ""null""
    #       },
    #       zip: {
    #         zip_file: "data", # required
    #       },
    #       source_url: {
    #         url: "AssetContentUrl", # required
    #       }
    #     },
    #     client_token: "String"
    #   }
    #   options = {}
    #   response = client.create_asset(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     asset: { # required
    #       asset_id: "ResourceId", # required
    #       asset_type: "AssetType", # required
    #       metadata: ""null"", # required
    #       version: 1, # required
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #     }
    #   }
    # @return [Types::CreateAssetResponse]
    def create_asset(params = {}, options = {})
      request = build_request(:create_asset, params)
      request.send_request(options)
    end

    # <p>Creates a file in an asset</p>
    # @param [Hash, Types::CreateAssetFileRequest] params
    # @option params [String] :agent_space_id
    #   <p>The unique identifier for the agent space containing the asset</p>
    # @option params [String] :asset_id
    #   <p>The unique identifier of the asset to create the file in</p>
    # @option params [String] :path
    #   <p>The path of the file within the asset</p>
    # @option params [Types::AssetFileBody] :content
    #   <p>The content of the file to create</p>
    # @option params [JSON] :metadata
    #   <p>Optional metadata describing this file</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier used for idempotent asset file creation</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_space_id: "AgentSpaceIdentifier", # required
    #     asset_id: "ResourceId", # required
    #     path: "AssetFilePath", # required
    #     content: { # required
    #       # One of:
    #       bytes: "data",
    #       text: "AssetFileText"
    #     },
    #     metadata: ""null"",
    #     client_token: "String"
    #   }
    #   options = {}
    #   response = client.create_asset_file(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     file: { # required
    #       path: "AssetFilePath", # required
    #       content: { # required
    #         # One of:
    #         bytes: "data",
    #         text: "AssetFileText"
    #       },
    #       metadata: ""null"",
    #       version: 1, # required
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #     }
    #   }
    # @return [Types::CreateAssetFileResponse]
    def create_asset_file(params = {}, options = {})
      request = build_request(:create_asset_file, params)
      request.send_request(options)
    end

    # <p>Creates a new backlog task in the specified agent space</p>
    # @param [Hash, Types::CreateBacklogTaskRequest] params
    # @option params [String] :agent_space_id
    #   <p>The unique identifier for the agent space where the task will be created</p>
    # @option params [Types::ReferenceInput] :reference
    #   <p>Optional reference information for the task</p>
    # @option params [String] :task_type
    #   <p>The type of task being created</p>
    # @option params [String] :title
    #   <p>The title of the backlog task</p>
    # @option params [String] :description
    #   <p>Optional detailed description of the task</p>
    # @option params [String] :priority
    #   <p>The priority level of the task</p>
    # @option params [String] :client_token
    #   <p>Client-provided token for idempotent operations</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_space_id: "AgentSpaceIdentifier", # required
    #     reference: {
    #       system: "String", # required
    #       title: "String",
    #       reference_id: "ResourceId", # required
    #       reference_url: "String", # required
    #       association_id: "ResourceId", # required
    #     },
    #     task_type: "INVESTIGATION" # One of: ["INVESTIGATION", "EVALUATION", "RELEASE_READINESS_REVIEW", "RELEASE_TESTING"], # required
    #     title: "BacklogTaskTitle", # required
    #     description: "BacklogTaskDescription",
    #     priority: "CRITICAL" # One of: ["CRITICAL", "HIGH", "MEDIUM", "LOW", "MINIMAL"], # required
    #     client_token: "String"
    #   }
    #   options = {}
    #   response = client.create_backlog_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     task: { # required
    #       agent_space_id: "String", # required
    #       task_id: "String", # required
    #       execution_id: "String",
    #       title: "String", # required
    #       description: "String",
    #       reference: {
    #         system: "String", # required
    #         title: "String",
    #         reference_id: "String", # required
    #         reference_url: "String", # required
    #         association_id: "String", # required
    #       },
    #       task_type: "INVESTIGATION" # One of: ["INVESTIGATION", "EVALUATION", "RELEASE_READINESS_REVIEW", "RELEASE_TESTING"], # required
    #       priority: "CRITICAL" # One of: ["CRITICAL", "HIGH", "MEDIUM", "LOW", "MINIMAL"], # required
    #       status: "PENDING_TRIAGE" # One of: ["PENDING_TRIAGE", "LINKED", "PENDING_START", "IN_PROGRESS", "PENDING_CUSTOMER_APPROVAL", "COMPLETED", "FAILED", "TIMED_OUT", "CANCELED", "SKIPPED", "WAITING"], # required
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       version: 1, # required
    #       support_metadata: ""null"",
    #       metadata: ""null"",
    #       primary_task_id: "String",
    #       status_reason: "String",
    #       has_linked_tasks: false
    #     }
    #   }
    # @return [Types::CreateBacklogTaskResponse]
    def create_backlog_task(params = {}, options = {})
      request = build_request(:create_backlog_task, params)
      request.send_request(options)
    end

    # <p>Creates a new chat execution in the specified agent space</p>
    # @param [Hash, Types::CreateChatRequest] params
    # @option params [String] :agent_space_id
    #   <p>The unique identifier for the agent space where the chat will be created.</p>
    # @option params [String] :user_id
    #   <p>The user identifier for the chat. This field is deprecated and will be ignored — the service resolves user identity from the authenticated session.</p>
    # @option params [String] :user_type
    #   <p>The authentication type of the user</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_space_id: "AgentSpaceIdentifier", # required
    #     user_id: "ResourceId",
    #     user_type: "IAM" # One of: ["IAM", "IDC", "IDP"]
    #   }
    #   options = {}
    #   response = client.create_chat(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     execution_id: "ResourceId", # required
    #     created_at: Time.now, # required
    #   }
    # @return [Types::CreateChatResponse]
    def create_chat(params = {}, options = {})
      request = build_request(:create_chat, params)
      request.send_request(options)
    end

    # <p>Creates a Private Connection to a target resource.</p>
    # @param [Hash, Types::CreatePrivateConnectionInput] params
    # @option params [String] :name
    #   <p>Unique name for this Private Connection within the account.</p>
    # @option params [Types::PrivateConnectionMode] :mode
    #   <p>Private Connection mode configuration.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Tags to add to the Private Connection at creation time.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "PrivateConnectionName", # required
    #     mode: { # required
    #       # One of:
    #       service_managed: {
    #         host_address: "IpAddressOrDnsName", # required
    #         vpc_id: "VpcId", # required
    #         subnet_ids: ["SubnetId"], # required
    #         security_group_ids: ["SecurityGroupId"],
    #         ip_address_type: "IPV4" # One of: ["IPV4", "IPV6", "DUAL_STACK"],
    #         ipv4_addresses_per_eni: 1,
    #         port_ranges: ["PortRange"],
    #         certificate: "CertificateString",
    #         dns_resolution: "PUBLIC" # One of: ["PUBLIC", "IN_VPC"]
    #       },
    #       self_managed: {
    #         resource_configuration_id: "ResourceConfigurationArn", # required
    #         certificate: "CertificateString"
    #       }
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_private_connection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "PrivateConnectionName", # required
    #     type: "SELF_MANAGED" # One of: ["SELF_MANAGED", "SERVICE_MANAGED"], # required
    #     resource_gateway_id: "ResourceGatewayArn",
    #     host_address: "IpAddressOrDnsName",
    #     vpc_id: "VpcId",
    #     resource_configuration_id: "ResourceConfigurationArn",
    #     status: "ACTIVE" # One of: ["ACTIVE", "CREATE_IN_PROGRESS", "CREATE_FAILED", "DELETE_IN_PROGRESS", "DELETE_FAILED"], # required
    #     certificate_expiry_time: Time.now,
    #     dns_resolution: "PUBLIC" # One of: ["PUBLIC", "IN_VPC"],
    #     failure_message: "FailureMessage",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::CreatePrivateConnectionOutput]
    def create_private_connection(params = {}, options = {})
      request = build_request(:create_private_connection, params)
      request.send_request(options)
    end

    # <p>Creates a new Trigger in the specified agent space</p>
    # @param [Hash, Types::CreateTriggerRequest] params
    # @option params [String] :agent_space_id
    #   <p>The unique identifier for the agent space where the Trigger will be created</p>
    # @option params [String] :type
    #   <p>How the new Trigger fires</p>
    # @option params [Types::TriggerCondition] :condition
    #   <p>The condition that fires the new Trigger</p>
    # @option params [JSON] :action
    #   <p>The action the new Trigger performs when it fires</p>
    # @option params [String] :status
    #   <p>The initial status of the Trigger</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier used for idempotent Trigger creation</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_space_id: "AgentSpaceIdentifier", # required
    #     type: "TriggerType", # required
    #     condition: { # required
    #       # One of:
    #       schedule: {
    #         expression: "ScheduleExpression",
    #         spec: {
    #           # One of:
    #           cron: {
    #             expression: "ScheduleExpression", # required
    #           },
    #           time_range: {
    #             start_after: "TimeOfDay", # required
    #             start_before: "TimeOfDay", # required
    #             recurrence: { # required
    #               # One of:
    #               daily: {
    #               },
    #               weekly: {
    #                 day_of_week: "MONDAY" # One of: ["MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"], # required
    #               },
    #               monthly: {
    #                 day_of_month: 1, # required
    #               }
    #             }
    #           }
    #         }
    #       }
    #     },
    #     action: ""null"", # required
    #     status: "TriggerStatus",
    #     client_token: "String"
    #   }
    #   options = {}
    #   response = client.create_trigger(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     trigger: { # required
    #       trigger_id: "ResourceId", # required
    #       agent_space_id: "AgentSpaceId", # required
    #       type: "TriggerType", # required
    #       condition: { # required
    #         # One of:
    #         schedule: {
    #           expression: "ScheduleExpression",
    #           spec: {
    #             # One of:
    #             cron: {
    #               expression: "ScheduleExpression", # required
    #             },
    #             time_range: {
    #               start_after: "TimeOfDay", # required
    #               start_before: "TimeOfDay", # required
    #               recurrence: { # required
    #                 # One of:
    #                 daily: {
    #                 },
    #                 weekly: {
    #                   day_of_week: "MONDAY" # One of: ["MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"], # required
    #                 },
    #                 monthly: {
    #                   day_of_month: 1, # required
    #                 }
    #               }
    #             }
    #           }
    #         }
    #       },
    #       action: ""null"", # required
    #       status: "TriggerStatus", # required
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #     }
    #   }
    # @return [Types::CreateTriggerResponse]
    def create_trigger(params = {}, options = {})
      request = build_request(:create_trigger, params)
      request.send_request(options)
    end

    # <p>Deletes an AgentSpace. This operation is idempotent and returns a 204 No Content response on success.</p>
    # @param [Hash, Types::DeleteAgentSpaceInput] params
    # @option params [String] :agent_space_id
    #   <p>The unique identifier of the AgentSpace</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_space_id: "AgentSpaceId", # required
    #   }
    #   options = {}
    #   response = client.delete_agent_space(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteAgentSpaceOutput]
    def delete_agent_space(params = {}, options = {})
      request = build_request(:delete_agent_space, params)
      request.send_request(options)
    end

    # <p>Deletes an asset and all its files from the specified agent space</p>
    # @param [Hash, Types::DeleteAssetRequest] params
    # @option params [String] :agent_space_id
    #   <p>The unique identifier for the agent space containing the asset</p>
    # @option params [String] :asset_id
    #   <p>The unique identifier of the asset to delete</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_space_id: "AgentSpaceIdentifier", # required
    #     asset_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.delete_asset(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteAssetResponse]
    def delete_asset(params = {}, options = {})
      request = build_request(:delete_asset, params)
      request.send_request(options)
    end

    # <p>Deletes a file from an asset</p>
    # @param [Hash, Types::DeleteAssetFileRequest] params
    # @option params [String] :agent_space_id
    #   <p>The unique identifier for the agent space containing the asset</p>
    # @option params [String] :asset_id
    #   <p>The unique identifier of the asset containing the file</p>
    # @option params [String] :path
    #   <p>The path of the file within the asset to delete</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_space_id: "AgentSpaceIdentifier", # required
    #     asset_id: "ResourceId", # required
    #     path: "AssetFilePath", # required
    #   }
    #   options = {}
    #   response = client.delete_asset_file(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteAssetFileResponse]
    def delete_asset_file(params = {}, options = {})
      request = build_request(:delete_asset_file, params)
      request.send_request(options)
    end

    # <p>Deletes a Private Connection. The deletion is asynchronous and returns DELETE_IN_PROGRESS status.</p>
    # @param [Hash, Types::DeletePrivateConnectionInput] params
    # @option params [String] :name
    #   <p>The name of the Private Connection.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "PrivateConnectionName", # required
    #   }
    #   options = {}
    #   response = client.delete_private_connection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "PrivateConnectionName", # required
    #     status: "ACTIVE" # One of: ["ACTIVE", "CREATE_IN_PROGRESS", "CREATE_FAILED", "DELETE_IN_PROGRESS", "DELETE_FAILED"], # required
    #   }
    # @return [Types::DeletePrivateConnectionOutput]
    def delete_private_connection(params = {}, options = {})
      request = build_request(:delete_private_connection, params)
      request.send_request(options)
    end

    # <p>Deletes a Trigger from the specified agent space</p>
    # @param [Hash, Types::DeleteTriggerRequest] params
    # @option params [String] :agent_space_id
    #   <p>The unique identifier for the agent space containing the Trigger</p>
    # @option params [String] :trigger_id
    #   <p>The unique identifier of the Trigger to delete</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_space_id: "AgentSpaceIdentifier", # required
    #     trigger_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.delete_trigger(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteTriggerResponse]
    def delete_trigger(params = {}, options = {})
      request = build_request(:delete_trigger, params)
      request.send_request(options)
    end

    # <p>Deregister a service</p>
    # @param [Hash, Types::DeregisterServiceInput] params
    # @option params [String] :service_id
    #   <p>The service id to deregister. A service can only be deregistered if it is not associated with any AgentSpace.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_id: "ServiceId", # required
    #   }
    #   options = {}
    #   response = client.deregister_service(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeregisterServiceOutput]
    def deregister_service(params = {}, options = {})
      request = build_request(:deregister_service, params)
      request.send_request(options)
    end

    # <p>Retrieves details of an existing Private Connection.</p>
    # @param [Hash, Types::DescribePrivateConnectionInput] params
    # @option params [String] :name
    #   <p>The name of the Private Connection.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "PrivateConnectionName", # required
    #   }
    #   options = {}
    #   response = client.describe_private_connection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "PrivateConnectionName", # required
    #     type: "SELF_MANAGED" # One of: ["SELF_MANAGED", "SERVICE_MANAGED"], # required
    #     resource_gateway_id: "ResourceGatewayArn",
    #     host_address: "IpAddressOrDnsName",
    #     vpc_id: "VpcId",
    #     resource_configuration_id: "ResourceConfigurationArn",
    #     status: "ACTIVE" # One of: ["ACTIVE", "CREATE_IN_PROGRESS", "CREATE_FAILED", "DELETE_IN_PROGRESS", "DELETE_FAILED"], # required
    #     certificate_expiry_time: Time.now,
    #     dns_resolution: "PUBLIC" # One of: ["PUBLIC", "IN_VPC"],
    #     failure_message: "FailureMessage",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::DescribePrivateConnectionOutput]
    def describe_private_connection(params = {}, options = {})
      request = build_request(:describe_private_connection, params)
      request.send_request(options)
    end

    # <p>Disable the Operator App for the specified AgentSpace</p>
    # @param [Hash, Types::DisableOperatorAppInput] params
    # @option params [String] :agent_space_id
    #   <p>The unique identifier of the AgentSpace</p>
    # @option params [String] :auth_flow
    #   <p>The authentication flow configured for the operator App. e.g. idc</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_space_id: "AgentSpaceId", # required
    #     auth_flow: "iam" # One of: ["iam", "idc", "idp"]
    #   }
    #   options = {}
    #   response = client.disable_operator_app(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def disable_operator_app(params = {}, options = {})
      request = build_request(:disable_operator_app, params)
      request.send_request(options)
    end

    # <p>Deletes a specific service association from an AgentSpace. This operation is idempotent and returns a 204 No Content response on success.</p>
    # @param [Hash, Types::DisassociateServiceInput] params
    # @option params [String] :agent_space_id
    #   <p>The unique identifier of the AgentSpace</p>
    # @option params [String] :association_id
    #   <p>The unique identifier of the given association.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_space_id: "AgentSpaceId", # required
    #     association_id: "AssociationId", # required
    #   }
    #   options = {}
    #   response = client.disassociate_service(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisassociateServiceOutput]
    def disassociate_service(params = {}, options = {})
      request = build_request(:disassociate_service, params)
      request.send_request(options)
    end

    # <p>Enable the Operator App to access the given AgentSpace</p>
    # @param [Hash, Types::EnableOperatorAppInput] params
    # @option params [String] :agent_space_id
    #   <p>The unique identifier of the AgentSpace</p>
    # @option params [String] :auth_flow
    #   <p>The authentication flow configured for the operator App. e.g. iam or idc</p>
    # @option params [String] :operator_app_role_arn
    #   <p>The IAM role end users assume to access AIDevOps APIs</p>
    # @option params [String] :idc_instance_arn
    #   <p>The IdC instance Arn used to create an IdC auth application</p>
    # @option params [String] :issuer_url
    #   <p>The OIDC issuer URL of the external Identity Provider</p>
    # @option params [String] :idp_client_id
    #   <p>The OIDC client ID for the IdP application</p>
    # @option params [String] :idp_client_secret
    #   <p>The OIDC client secret for the IdP application</p>
    # @option params [String] :provider
    #   <p>The Identity Provider name (e.g., Entra, Okta, Google)</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_space_id: "AgentSpaceId", # required
    #     auth_flow: "iam" # One of: ["iam", "idc", "idp"], # required
    #     operator_app_role_arn: "RoleArn", # required
    #     idc_instance_arn: "String",
    #     issuer_url: "String",
    #     idp_client_id: "IdpClientId",
    #     idp_client_secret: "IdpClientSecret",
    #     provider: "String"
    #   }
    #   options = {}
    #   response = client.enable_operator_app(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     agent_space_id: "AgentSpaceId", # required
    #     operator_app_url: "OperatorAppUrl",
    #     iam: {
    #       operator_app_role_arn: "String", # required
    #       created_at: Time.now, # required
    #       updated_at: Time.now
    #     },
    #     idc: {
    #       operator_app_role_arn: "String", # required
    #       idc_instance_arn: "String", # required
    #       idc_application_arn: "String",
    #       created_at: Time.now, # required
    #       updated_at: Time.now
    #     },
    #     idp: {
    #       issuer_url: "String", # required
    #       client_id: "String", # required
    #       operator_app_role_arn: "String", # required
    #       provider: "String", # required
    #       created_at: Time.now, # required
    #       updated_at: Time.now
    #     }
    #   }
    # @return [Types::EnableOperatorAppOutput]
    def enable_operator_app(params = {}, options = {})
      request = build_request(:enable_operator_app, params)
      request.send_request(options)
    end

    # <p>Retrieves monthly account usage metrics and limits for the AWS account.</p>
    # @param [Hash, Types::GetAccountUsageInput] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_account_usage(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     monthly_account_investigation_hours: {
    #       limit: 1, # required
    #       usage: 1.0, # required
    #     },
    #     monthly_account_evaluation_hours: {
    #       limit: 1, # required
    #       usage: 1.0, # required
    #     },
    #     monthly_account_system_learning_hours: {
    #       limit: 1, # required
    #       usage: 1.0, # required
    #     },
    #     monthly_account_on_demand_hours: {
    #       limit: 1, # required
    #       usage: 1.0, # required
    #     },
    #     monthly_account_grader_hours: {
    #       limit: 1, # required
    #       usage: 1.0, # required
    #     },
    #     usage_period_start_time: Time.now, # required
    #     usage_period_end_time: Time.now, # required
    #   }
    # @return [Types::GetAccountUsageOutput]
    def get_account_usage(params = {}, options = {})
      request = build_request(:get_account_usage, params)
      request.send_request(options)
    end

    # <p>Retrieves detailed information about a specific AgentSpace.</p>
    # @param [Hash, Types::GetAgentSpaceInput] params
    # @option params [String] :agent_space_id
    #   <p>The unique identifier of the AgentSpace</p>
    # @option params [String] :included_data
    #   <p>How much data to include in the response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_space_id: "AgentSpaceId", # required
    #     included_data: "METADATA_ONLY" # One of: ["METADATA_ONLY", "ALL_DATA"]
    #   }
    #   options = {}
    #   response = client.get_agent_space(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     agent_space: { # required
    #       name: "AgentSpaceName", # required
    #       description: "Description",
    #       locale: "Locale",
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       kms_key_arn: "KmsKeyArn",
    #       agent_space_id: "AgentSpaceId", # required
    #       preferences: {
    #         "AgentSpacePreferenceKey" => false
    #       }
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::GetAgentSpaceOutput]
    def get_agent_space(params = {}, options = {})
      request = build_request(:get_agent_space, params)
      request.send_request(options)
    end

    # <p>Gets an asset from the specified agent space</p>
    # @param [Hash, Types::GetAssetRequest] params
    # @option params [String] :agent_space_id
    #   <p>The unique identifier for the agent space containing the asset</p>
    # @option params [String] :asset_id
    #   <p>The unique identifier of the asset to retrieve</p>
    # @option params [Integer] :asset_version
    #   <p>The specific version of the asset to retrieve. If omitted, the latest version is returned.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_space_id: "AgentSpaceIdentifier", # required
    #     asset_id: "ResourceId", # required
    #     asset_version: 1
    #   }
    #   options = {}
    #   response = client.get_asset(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     asset: { # required
    #       asset_id: "ResourceId", # required
    #       asset_type: "AssetType", # required
    #       metadata: ""null"", # required
    #       version: 1, # required
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #     }
    #   }
    # @return [Types::GetAssetResponse]
    def get_asset(params = {}, options = {})
      request = build_request(:get_asset, params)
      request.send_request(options)
    end

    # <p>Gets an asset's content as a zip bundle</p>
    # @param [Hash, Types::GetAssetContentRequest] params
    # @option params [String] :agent_space_id
    #   <p>The unique identifier for the agent space containing the asset</p>
    # @option params [String] :asset_id
    #   <p>The unique identifier of the asset</p>
    # @option params [Integer] :asset_version
    #   <p>The specific asset version to export. If omitted, the latest version is returned.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_space_id: "AgentSpaceIdentifier", # required
    #     asset_id: "ResourceId", # required
    #     asset_version: 1
    #   }
    #   options = {}
    #   response = client.get_asset_content(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     content: { # required
    #       zip_file: "data", # required
    #     },
    #     version: 1, # required
    #   }
    # @return [Types::GetAssetContentResponse]
    def get_asset_content(params = {}, options = {})
      request = build_request(:get_asset_content, params)
      request.send_request(options)
    end

    # <p>Gets a file from an asset</p>
    # @param [Hash, Types::GetAssetFileRequest] params
    # @option params [String] :agent_space_id
    #   <p>The unique identifier for the agent space containing the asset</p>
    # @option params [String] :asset_id
    #   <p>The unique identifier of the asset containing the file</p>
    # @option params [String] :path
    #   <p>The path of the file within the asset to retrieve</p>
    # @option params [Integer] :asset_version
    #   <p>The specific asset version to retrieve the file from. If omitted, the latest version is returned.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_space_id: "AgentSpaceIdentifier", # required
    #     asset_id: "ResourceId", # required
    #     path: "AssetFilePath", # required
    #     asset_version: 1
    #   }
    #   options = {}
    #   response = client.get_asset_file(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     file: { # required
    #       path: "AssetFilePath", # required
    #       content: { # required
    #         # One of:
    #         bytes: "data",
    #         text: "AssetFileText"
    #       },
    #       metadata: ""null"",
    #       version: 1, # required
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #     }
    #   }
    # @return [Types::GetAssetFileResponse]
    def get_asset_file(params = {}, options = {})
      request = build_request(:get_asset_file, params)
      request.send_request(options)
    end

    # <p>Retrieves given associations configured for a specific AgentSpace.</p>
    # @param [Hash, Types::GetAssociationInput] params
    # @option params [String] :agent_space_id
    #   <p>The unique identifier of the AgentSpace</p>
    # @option params [String] :association_id
    #   <p>The unique identifier of the given association.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_space_id: "AgentSpaceId", # required
    #     association_id: "AssociationId", # required
    #   }
    #   options = {}
    #   response = client.get_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     association: { # required
    #       agent_space_id: "AgentSpaceId", # required
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       status: "valid" # One of: ["valid", "invalid", "pending-confirmation"],
    #       association_id: "AssociationId", # required
    #       service_id: "ServiceId", # required
    #       configuration: { # required
    #         # One of:
    #         source_aws: {
    #           account_id: "String", # required
    #           account_type: "source" # One of: ["source"], # required
    #           assumable_role_arn: "RoleArn", # required
    #           external_id: "String",
    #           agent_elevated_role_arn: "RoleArn",
    #           agent_elevated_role_arn_status: "valid" # One of: ["valid", "invalid", "pending-confirmation"]
    #         },
    #         aws: {
    #           assumable_role_arn: "RoleArn", # required
    #           account_id: "String", # required
    #           account_type: "monitor" # One of: ["monitor"], # required
    #           agent_elevated_role_arn: "RoleArn",
    #           agent_elevated_role_arn_status: "valid" # One of: ["valid", "invalid", "pending-confirmation"]
    #         },
    #         github: {
    #           repo_name: "String", # required
    #           repo_id: "String", # required
    #           owner: "String", # required
    #           owner_type: "organization" # One of: ["organization", "user"], # required
    #           instance_identifier: "String",
    #           runtime_role_arn: "RoleArn",
    #           release_management_association_id: "AssociationId"
    #         },
    #         slack: {
    #           workspace_id: "String", # required
    #           workspace_name: "String", # required
    #           transmission_target: { # required
    #             ops_oncall_target: { # required
    #               channel_name: "String",
    #               channel_id: "String", # required
    #             },
    #             ops_sre_target: {
    #               channel_name: "String",
    #               channel_id: "String", # required
    #             }
    #           },
    #           bidirectional: {
    #             role_arn: "RoleArn", # required
    #             enabled: false
    #           }
    #         },
    #         dynatrace: {
    #           env_id: "String", # required
    #           resources: ["String"]
    #         },
    #         servicenow: {
    #           instance_id: "String",
    #           auth_scopes: ["String"]
    #         },
    #         mcpservernewrelic: {
    #           account_id: "String", # required
    #           endpoint: "String", # required
    #         },
    #         mcpserverdatadog: {
    #           enabled_elevated_tools: [
    #             {
    #               name: "String", # required
    #               tool_classification: "READ_ONLY" # One of: ["READ_ONLY", "MUTATIVE", "DESTRUCTIVE"]
    #             }
    #           ]
    #         },
    #         mcpserver: {
    #           tools: ["String"], # required
    #           tool_details: [
    #             {
    #               name: "String", # required
    #               tool_classification: "READ_ONLY" # One of: ["READ_ONLY", "MUTATIVE", "DESTRUCTIVE"]
    #             }
    #           ]
    #         },
    #         gitlab: {
    #           project_id: "String", # required
    #           project_path: "String", # required
    #           instance_identifier: "String",
    #           runtime_role_arn: "RoleArn",
    #           release_management_association_id: "AssociationId"
    #         },
    #         mcpserversplunk: {
    #         },
    #         event_channel: {
    #         },
    #         azure: {
    #           subscription_id: "String", # required
    #         },
    #         azuredevops: {
    #           organization_name: "String", # required
    #           project_id: "String", # required
    #           project_name: "String", # required
    #         },
    #         mcpservergrafana: {
    #           endpoint: "String", # required
    #           organization_id: "String",
    #           tools: ["String"],
    #           enabled_elevated_tools: [
    #             {
    #               name: "String", # required
    #               tool_classification: "READ_ONLY" # One of: ["READ_ONLY", "MUTATIVE", "DESTRUCTIVE"]
    #             }
    #           ]
    #         },
    #         pagerduty: {
    #           services: ["String"], # required
    #           customer_email: "EmailAddress", # required
    #         },
    #         mcpserversigv4: {
    #           tools: ["String"], # required
    #           tool_details: [
    #             {
    #               name: "String", # required
    #               tool_classification: "READ_ONLY" # One of: ["READ_ONLY", "MUTATIVE", "DESTRUCTIVE"]
    #             }
    #           ]
    #         },
    #         remoteagent: {
    #         },
    #         remoteagentsigv4: {
    #         },
    #         release_management: {
    #           name: "DisplayName", # required
    #           network_access: { # required
    #             # One of:
    #             private_access: {
    #               private_connection_name: "PrivateConnectionName", # required
    #               runtime_role_arn: "RoleArn", # required
    #             }
    #           }
    #         }
    #       },
    #       capabilities: {
    #         "CapabilityType" => {
    #           enabled: false,
    #           trigger_filter_groups: [
    #             {
    #               events: ["PULL_REQUEST_READY_FOR_REVIEW" # One of: ["PULL_REQUEST_READY_FOR_REVIEW", "PULL_REQUEST_DRAFT"]],
    #               target_branches: {
    #                 patterns: ["TriggerRegexPattern"], # required
    #               }
    #             }
    #           ]
    #         }
    #       }
    #     }
    #   }
    # @return [Types::GetAssociationOutput]
    def get_association(params = {}, options = {})
      request = build_request(:get_association, params)
      request.send_request(options)
    end

    # <p>Gets a backlog task for the specified agent space and task id</p>
    # @param [Hash, Types::GetBacklogTaskRequest] params
    # @option params [String] :agent_space_id
    #   <p>The unique identifier for the agent space containing the task</p>
    # @option params [String] :task_id
    #   <p>The unique identifier of the task to retrieve</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_space_id: "AgentSpaceIdentifier", # required
    #     task_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.get_backlog_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     task: { # required
    #       agent_space_id: "String", # required
    #       task_id: "String", # required
    #       execution_id: "String",
    #       title: "String", # required
    #       description: "String",
    #       reference: {
    #         system: "String", # required
    #         title: "String",
    #         reference_id: "String", # required
    #         reference_url: "String", # required
    #         association_id: "String", # required
    #       },
    #       task_type: "INVESTIGATION" # One of: ["INVESTIGATION", "EVALUATION", "RELEASE_READINESS_REVIEW", "RELEASE_TESTING"], # required
    #       priority: "CRITICAL" # One of: ["CRITICAL", "HIGH", "MEDIUM", "LOW", "MINIMAL"], # required
    #       status: "PENDING_TRIAGE" # One of: ["PENDING_TRIAGE", "LINKED", "PENDING_START", "IN_PROGRESS", "PENDING_CUSTOMER_APPROVAL", "COMPLETED", "FAILED", "TIMED_OUT", "CANCELED", "SKIPPED", "WAITING"], # required
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       version: 1, # required
    #       support_metadata: ""null"",
    #       metadata: ""null"",
    #       primary_task_id: "String",
    #       status_reason: "String",
    #       has_linked_tasks: false
    #     }
    #   }
    # @return [Types::GetBacklogTaskResponse]
    def get_backlog_task(params = {}, options = {})
      request = build_request(:get_backlog_task, params)
      request.send_request(options)
    end

    # <p>Get the full auth configuration of operator including any enabled auth flow</p>
    # @param [Hash, Types::GetOperatorAppInput] params
    # @option params [String] :agent_space_id
    #   <p>The unique identifier of the AgentSpace</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_space_id: "AgentSpaceId", # required
    #   }
    #   options = {}
    #   response = client.get_operator_app(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operator_app_url: "OperatorAppUrl",
    #     iam: {
    #       operator_app_role_arn: "String", # required
    #       created_at: Time.now, # required
    #       updated_at: Time.now
    #     },
    #     idc: {
    #       operator_app_role_arn: "String", # required
    #       idc_instance_arn: "String", # required
    #       idc_application_arn: "String",
    #       created_at: Time.now, # required
    #       updated_at: Time.now
    #     },
    #     idp: {
    #       issuer_url: "String", # required
    #       client_id: "String", # required
    #       operator_app_role_arn: "String", # required
    #       provider: "String", # required
    #       created_at: Time.now, # required
    #       updated_at: Time.now
    #     }
    #   }
    # @return [Types::GetOperatorAppOutput]
    def get_operator_app(params = {}, options = {})
      request = build_request(:get_operator_app, params)
      request.send_request(options)
    end

    # <p>Retrieves a specific recommendation by its ID</p>
    # @param [Hash, Types::GetRecommendationRequest] params
    # @option params [String] :agent_space_id
    #   <p>The unique identifier for the agent space containing the recommendation</p>
    # @option params [String] :recommendation_id
    #   <p>The unique identifier for the recommendation to retrieve</p>
    # @option params [Integer] :recommendation_version
    #   <p>Specific version of the recommendation to retrieve. If not specified, returns the latest version.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_space_id: "AgentSpaceIdentifier", # required
    #     recommendation_id: "ResourceId", # required
    #     recommendation_version: 1
    #   }
    #   options = {}
    #   response = client.get_recommendation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     recommendation: { # required
    #       agent_space_arn: "String", # required
    #       recommendation_id: "String", # required
    #       task_id: "String", # required
    #       goal_id: "String",
    #       title: "String", # required
    #       content: { # required
    #         summary: "String", # required
    #         spec: "String"
    #       },
    #       status: "PROPOSED" # One of: ["PROPOSED", "ACCEPTED", "REJECTED", "CLOSED", "COMPLETED", "UPDATE_IN_PROGRESS"], # required
    #       priority: "HIGH" # One of: ["HIGH", "MEDIUM", "LOW"], # required
    #       goal_version: 1,
    #       additional_context: "String",
    #       rank_position: 1,
    #       ranked_at: Time.now,
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       version: 1, # required
    #     }
    #   }
    # @return [Types::GetRecommendationResponse]
    def get_recommendation(params = {}, options = {})
      request = build_request(:get_recommendation, params)
      request.send_request(options)
    end

    # <p>Retrieves given service by it's unique identifier</p>
    # @param [Hash, Types::GetServiceInput] params
    # @option params [String] :service_id
    #   <p>The unique identifier of the given service.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_id: "ServiceId", # required
    #   }
    #   options = {}
    #   response = client.get_service(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service: { # required
    #       service_id: "ServiceId", # required
    #       service_type: "github" # One of: ["github", "slack", "azure", "azuredevops", "dynatrace", "servicenow", "pagerduty", "gitlab", "eventChannel", "mcpservernewrelic", "mcpservergrafana", "mcpserverdatadog", "mcpserver", "mcpserversplunk", "azureidentity", "mcpserversigv4", "remoteagent", "remoteagentsigv4"], # required
    #       name: "ServiceName",
    #       accessible_resources: [""null""],
    #       additional_service_details: {
    #         # One of:
    #         github: {
    #           owner: "String", # required
    #           owner_type: "organization" # One of: ["organization", "user"], # required
    #           target_url: "String"
    #         },
    #         slack: {
    #           team_id: "String", # required
    #           team_name: "String", # required
    #         },
    #         mcpserverdatadog: {
    #           name: "String", # required
    #           endpoint: "String", # required
    #           authorization_method: "oauth-client-credentials" # One of: ["oauth-client-credentials", "oauth-3lo", "api-key", "bearer-token", "custom-headers"], # required
    #           description: "Description",
    #           api_key_header: "String",
    #           custom_header_names: ["CustomHeaderName"]
    #         },
    #         mcpserver: {
    #           name: "String", # required
    #           endpoint: "String", # required
    #           authorization_method: "oauth-client-credentials" # One of: ["oauth-client-credentials", "oauth-3lo", "api-key", "bearer-token", "custom-headers"], # required
    #           description: "Description",
    #           api_key_header: "String",
    #           custom_header_names: ["CustomHeaderName"]
    #         },
    #         servicenow: {
    #           instance_url: "ServiceNowInstanceUrl"
    #         },
    #         gitlab: {
    #           target_url: "String", # required
    #           token_type: "personal" # One of: ["personal", "group"], # required
    #           group_id: "String"
    #         },
    #         mcpserversplunk: {
    #           name: "String", # required
    #           endpoint: "String", # required
    #           authorization_method: "oauth-client-credentials" # One of: ["oauth-client-credentials", "oauth-3lo", "api-key", "bearer-token", "custom-headers"], # required
    #           description: "Description",
    #           api_key_header: "String",
    #           custom_header_names: ["CustomHeaderName"]
    #         },
    #         mcpservernewrelic: {
    #           account_id: "String", # required
    #           region: "US" # One of: ["US", "EU", "JP"], # required
    #           description: "Description"
    #         },
    #         azuredevops: {
    #           organization_name: "String", # required
    #         },
    #         azureidentity: {
    #           tenant_id: "Guid", # required
    #           client_id: "Guid", # required
    #           web_identity_role_arn: "RoleArn", # required
    #           web_identity_token_audiences: ["String"], # required
    #         },
    #         mcpservergrafana: {
    #           endpoint: "MCPServerEndpoint", # required
    #           authorization_method: "oauth-client-credentials" # One of: ["oauth-client-credentials", "oauth-3lo", "api-key", "bearer-token", "custom-headers"], # required
    #         },
    #         pagerduty: {
    #           scopes: ["String"], # required
    #         },
    #         mcpserversigv4: {
    #           name: "MCPServerName", # required
    #           endpoint: "MCPServerEndpoint", # required
    #           description: "Description",
    #           region: "SigV4Region", # required
    #           service: "String", # required
    #           role_arn: "String", # required
    #           mcp_role_arn: "RoleArn",
    #           custom_headers: {
    #             "CustomHeaderName" => "CustomHeaderValue"
    #           }
    #         },
    #         remoteagent: {
    #           name: "RemoteAgentName", # required
    #           endpoint: "RemoteAgentEndpoint", # required
    #           description: "Description",
    #           authorization_method: "oauth-client-credentials" # One of: ["oauth-client-credentials", "api-key", "bearer-token"], # required
    #           api_key_header: "String"
    #         },
    #         remoteagentsigv4: {
    #           name: "RemoteAgentName", # required
    #           endpoint: "RemoteAgentEndpoint", # required
    #           description: "Description",
    #           region: "SigV4Region", # required
    #           service: "String", # required
    #           role_arn: "RoleArn"
    #         }
    #       },
    #       kms_key_arn: "KmsKeyArn",
    #       private_connection_name: "PrivateConnectionName",
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::GetServiceOutput]
    def get_service(params = {}, options = {})
      request = build_request(:get_service, params)
      request.send_request(options)
    end

    # <p>Gets a Trigger from the specified agent space</p>
    # @param [Hash, Types::GetTriggerRequest] params
    # @option params [String] :agent_space_id
    #   <p>The unique identifier for the agent space containing the Trigger</p>
    # @option params [String] :trigger_id
    #   <p>The unique identifier of the Trigger to retrieve</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_space_id: "AgentSpaceIdentifier", # required
    #     trigger_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.get_trigger(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     trigger: { # required
    #       trigger_id: "ResourceId", # required
    #       agent_space_id: "AgentSpaceId", # required
    #       type: "TriggerType", # required
    #       condition: { # required
    #         # One of:
    #         schedule: {
    #           expression: "ScheduleExpression",
    #           spec: {
    #             # One of:
    #             cron: {
    #               expression: "ScheduleExpression", # required
    #             },
    #             time_range: {
    #               start_after: "TimeOfDay", # required
    #               start_before: "TimeOfDay", # required
    #               recurrence: { # required
    #                 # One of:
    #                 daily: {
    #                 },
    #                 weekly: {
    #                   day_of_week: "MONDAY" # One of: ["MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"], # required
    #                 },
    #                 monthly: {
    #                   day_of_month: 1, # required
    #                 }
    #               }
    #             }
    #           }
    #         }
    #       },
    #       action: ""null"", # required
    #       status: "TriggerStatus", # required
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #     }
    #   }
    # @return [Types::GetTriggerResponse]
    def get_trigger(params = {}, options = {})
      request = build_request(:get_trigger, params)
      request.send_request(options)
    end

    # <p>Lists all AgentSpaces with optional pagination.</p>
    # @param [Hash, Types::ListAgentSpacesInput] params
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to return in a single call.</p>
    # @option params [String] :next_token
    #   <p>Token for the next page of results.</p>
    # @option params [String] :included_data
    #   <p>How much data to include in the response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken",
    #     included_data: "METADATA_ONLY" # One of: ["METADATA_ONLY", "ALL_DATA"]
    #   }
    #   options = {}
    #   response = client.list_agent_spaces(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     agent_spaces: [ # required
    #       {
    #         name: "AgentSpaceName", # required
    #         description: "Description",
    #         locale: "Locale",
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #         kms_key_arn: "KmsKeyArn",
    #         agent_space_id: "AgentSpaceId", # required
    #         preferences: {
    #           "AgentSpacePreferenceKey" => false
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::ListAgentSpacesOutput]
    def list_agent_spaces(params = {}, options = {})
      request = build_request(:list_agent_spaces, params)
      request.send_request(options)
    end

    # <p>Lists files in an asset</p>
    # @param [Hash, Types::ListAssetFilesRequest] params
    # @option params [String] :agent_space_id
    #   <p>The unique identifier for the agent space containing the asset</p>
    # @option params [String] :asset_id
    #   <p>The unique identifier of the asset whose files to list</p>
    # @option params [Integer] :asset_version
    #   <p>The specific asset version to list files from. If omitted, files from the latest version are returned.</p>
    # @option params [String] :next_token
    #   <p>Pagination token from a previous response to retrieve the next page of results</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single response</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_space_id: "AgentSpaceIdentifier", # required
    #     asset_id: "ResourceId", # required
    #     asset_version: 1,
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_asset_files(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [ # required
    #       {
    #         path: "AssetFilePath", # required
    #         metadata: ""null"",
    #         version: 1, # required
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAssetFilesResponse]
    def list_asset_files(params = {}, options = {})
      request = build_request(:list_asset_files, params)
      request.send_request(options)
    end

    # <p>Lists the supported asset types</p>
    # @param [Hash, Types::ListAssetTypesRequest] params
    # @option params [String] :next_token
    #   <p>Pagination token from a previous response to retrieve the next page of results</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single response</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_asset_types(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [ # required
    #       {
    #         asset_type: "AssetType", # required
    #         description: "String", # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAssetTypesResponse]
    def list_asset_types(params = {}, options = {})
      request = build_request(:list_asset_types, params)
      request.send_request(options)
    end

    # <p>Lists versions of an asset in the specified agent space</p>
    # @param [Hash, Types::ListAssetVersionsRequest] params
    # @option params [String] :agent_space_id
    #   <p>The unique identifier for the agent space containing the asset</p>
    # @option params [String] :asset_id
    #   <p>The unique identifier of the asset whose versions to list</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single response</p>
    # @option params [String] :next_token
    #   <p>Pagination token from a previous response to retrieve the next page of results</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_space_id: "AgentSpaceIdentifier", # required
    #     asset_id: "ResourceId", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_asset_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [ # required
    #       {
    #         version: 1, # required
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAssetVersionsResponse]
    def list_asset_versions(params = {}, options = {})
      request = build_request(:list_asset_versions, params)
      request.send_request(options)
    end

    # <p>Lists assets in the specified agent space</p>
    # @param [Hash, Types::ListAssetsRequest] params
    # @option params [String] :agent_space_id
    #   <p>The unique identifier for the agent space to list assets from</p>
    # @option params [String] :asset_type
    #   <p>Filter results to only assets of this type</p>
    # @option params [Time] :updated_after
    #   <p>Filter results to only assets updated after this timestamp</p>
    # @option params [Time] :updated_before
    #   <p>Filter results to only assets updated before this timestamp</p>
    # @option params [String] :next_token
    #   <p>Pagination token from a previous response to retrieve the next page of results</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single response</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_space_id: "AgentSpaceIdentifier", # required
    #     asset_type: "AssetType",
    #     updated_after: Time.now,
    #     updated_before: Time.now,
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_assets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [ # required
    #       {
    #         asset_id: "ResourceId", # required
    #         asset_type: "AssetType", # required
    #         metadata: ""null"", # required
    #         version: 1, # required
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAssetsResponse]
    def list_assets(params = {}, options = {})
      request = build_request(:list_assets, params)
      request.send_request(options)
    end

    # <p>List all associations for given AgentSpace</p>
    # @param [Hash, Types::ListAssociationsInput] params
    # @option params [String] :agent_space_id
    #   <p>The unique identifier of the AgentSpace</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to return in a single call.</p>
    # @option params [String] :next_token
    #   <p>Token for the next page of results.</p>
    # @option params [String] :filter_service_types
    #   <p>A comma-separated list of service types to filter list associations output</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_space_id: "AgentSpaceId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #     filter_service_types: "String"
    #   }
    #   options = {}
    #   response = client.list_associations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     associations: [ # required
    #       {
    #         agent_space_id: "AgentSpaceId", # required
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #         status: "valid" # One of: ["valid", "invalid", "pending-confirmation"],
    #         association_id: "AssociationId", # required
    #         service_id: "ServiceId", # required
    #         configuration: { # required
    #           # One of:
    #           source_aws: {
    #             account_id: "String", # required
    #             account_type: "source" # One of: ["source"], # required
    #             assumable_role_arn: "RoleArn", # required
    #             external_id: "String",
    #             agent_elevated_role_arn: "RoleArn",
    #             agent_elevated_role_arn_status: "valid" # One of: ["valid", "invalid", "pending-confirmation"]
    #           },
    #           aws: {
    #             assumable_role_arn: "RoleArn", # required
    #             account_id: "String", # required
    #             account_type: "monitor" # One of: ["monitor"], # required
    #             agent_elevated_role_arn: "RoleArn",
    #             agent_elevated_role_arn_status: "valid" # One of: ["valid", "invalid", "pending-confirmation"]
    #           },
    #           github: {
    #             repo_name: "String", # required
    #             repo_id: "String", # required
    #             owner: "String", # required
    #             owner_type: "organization" # One of: ["organization", "user"], # required
    #             instance_identifier: "String",
    #             runtime_role_arn: "RoleArn",
    #             release_management_association_id: "AssociationId"
    #           },
    #           slack: {
    #             workspace_id: "String", # required
    #             workspace_name: "String", # required
    #             transmission_target: { # required
    #               ops_oncall_target: { # required
    #                 channel_name: "String",
    #                 channel_id: "String", # required
    #               },
    #               ops_sre_target: {
    #                 channel_name: "String",
    #                 channel_id: "String", # required
    #               }
    #             },
    #             bidirectional: {
    #               role_arn: "RoleArn", # required
    #               enabled: false
    #             }
    #           },
    #           dynatrace: {
    #             env_id: "String", # required
    #             resources: ["String"]
    #           },
    #           servicenow: {
    #             instance_id: "String",
    #             auth_scopes: ["String"]
    #           },
    #           mcpservernewrelic: {
    #             account_id: "String", # required
    #             endpoint: "String", # required
    #           },
    #           mcpserverdatadog: {
    #             enabled_elevated_tools: [
    #               {
    #                 name: "String", # required
    #                 tool_classification: "READ_ONLY" # One of: ["READ_ONLY", "MUTATIVE", "DESTRUCTIVE"]
    #               }
    #             ]
    #           },
    #           mcpserver: {
    #             tools: ["String"], # required
    #             tool_details: [
    #               {
    #                 name: "String", # required
    #                 tool_classification: "READ_ONLY" # One of: ["READ_ONLY", "MUTATIVE", "DESTRUCTIVE"]
    #               }
    #             ]
    #           },
    #           gitlab: {
    #             project_id: "String", # required
    #             project_path: "String", # required
    #             instance_identifier: "String",
    #             runtime_role_arn: "RoleArn",
    #             release_management_association_id: "AssociationId"
    #           },
    #           mcpserversplunk: {
    #           },
    #           event_channel: {
    #           },
    #           azure: {
    #             subscription_id: "String", # required
    #           },
    #           azuredevops: {
    #             organization_name: "String", # required
    #             project_id: "String", # required
    #             project_name: "String", # required
    #           },
    #           mcpservergrafana: {
    #             endpoint: "String", # required
    #             organization_id: "String",
    #             tools: ["String"],
    #             enabled_elevated_tools: [
    #               {
    #                 name: "String", # required
    #                 tool_classification: "READ_ONLY" # One of: ["READ_ONLY", "MUTATIVE", "DESTRUCTIVE"]
    #               }
    #             ]
    #           },
    #           pagerduty: {
    #             services: ["String"], # required
    #             customer_email: "EmailAddress", # required
    #           },
    #           mcpserversigv4: {
    #             tools: ["String"], # required
    #             tool_details: [
    #               {
    #                 name: "String", # required
    #                 tool_classification: "READ_ONLY" # One of: ["READ_ONLY", "MUTATIVE", "DESTRUCTIVE"]
    #               }
    #             ]
    #           },
    #           remoteagent: {
    #           },
    #           remoteagentsigv4: {
    #           },
    #           release_management: {
    #             name: "DisplayName", # required
    #             network_access: { # required
    #               # One of:
    #               private_access: {
    #                 private_connection_name: "PrivateConnectionName", # required
    #                 runtime_role_arn: "RoleArn", # required
    #               }
    #             }
    #           }
    #         },
    #         capabilities: {
    #           "CapabilityType" => {
    #             enabled: false,
    #             trigger_filter_groups: [
    #               {
    #                 events: ["PULL_REQUEST_READY_FOR_REVIEW" # One of: ["PULL_REQUEST_READY_FOR_REVIEW", "PULL_REQUEST_DRAFT"]],
    #                 target_branches: {
    #                   patterns: ["TriggerRegexPattern"], # required
    #                 }
    #               }
    #             ]
    #           }
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::ListAssociationsOutput]
    def list_associations(params = {}, options = {})
      request = build_request(:list_associations, params)
      request.send_request(options)
    end

    # <p>Lists backlog tasks in the specified agent space with optional filtering and sorting</p>
    # @param [Hash, Types::ListBacklogTasksRequest] params
    # @option params [String] :agent_space_id
    #   <p>The unique identifier for the agent space containing the tasks</p>
    # @option params [Types::TaskFilter] :filter
    #   <p>Filter criteria to apply when listing tasks Filtering restrictions: - Each filter field list is limited to a single value - Filtering by Priority and Status at the same time when not filtering by Type is not permitted - Timestamp filters (createdAfter, createdBefore) can be combined with other filters when not sorting by priority</p>
    # @option params [Integer] :limit
    #   <p>Maximum number of tasks to return in a single response (1-1000, default: 100)</p>
    # @option params [String] :next_token
    #   <p>Token for retrieving the next page of results</p>
    # @option params [String] :sort_field
    #   <p>Field to sort by Sorting restrictions: - Only sorting on createdAt is supported when using priority or status filters alone. - Sorting by priority is not supported when using Timestamp filters (createdAfter, createdBefore)</p>
    # @option params [String] :order
    #   <p>Sort order for the tasks based on sortField (default: DESC)</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_space_id: "AgentSpaceIdentifier", # required
    #     filter: {
    #       created_after: Time.now,
    #       created_before: Time.now,
    #       priority: ["CRITICAL" # One of: ["CRITICAL", "HIGH", "MEDIUM", "LOW", "MINIMAL"]],
    #       status: ["PENDING_TRIAGE" # One of: ["PENDING_TRIAGE", "LINKED", "PENDING_START", "IN_PROGRESS", "PENDING_CUSTOMER_APPROVAL", "COMPLETED", "FAILED", "TIMED_OUT", "CANCELED", "SKIPPED", "WAITING"]],
    #       task_type: ["INVESTIGATION" # One of: ["INVESTIGATION", "EVALUATION", "RELEASE_READINESS_REVIEW", "RELEASE_TESTING"]],
    #       primary_task_id: "ResourceId"
    #     },
    #     limit: 1,
    #     next_token: "NextToken",
    #     sort_field: "CREATED_AT" # One of: ["CREATED_AT", "PRIORITY"],
    #     order: "ASC" # One of: ["ASC", "DESC"]
    #   }
    #   options = {}
    #   response = client.list_backlog_tasks(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tasks: [ # required
    #       {
    #         agent_space_id: "String", # required
    #         task_id: "String", # required
    #         execution_id: "String",
    #         title: "String", # required
    #         description: "String",
    #         reference: {
    #           system: "String", # required
    #           title: "String",
    #           reference_id: "String", # required
    #           reference_url: "String", # required
    #           association_id: "String", # required
    #         },
    #         task_type: "INVESTIGATION" # One of: ["INVESTIGATION", "EVALUATION", "RELEASE_READINESS_REVIEW", "RELEASE_TESTING"], # required
    #         priority: "CRITICAL" # One of: ["CRITICAL", "HIGH", "MEDIUM", "LOW", "MINIMAL"], # required
    #         status: "PENDING_TRIAGE" # One of: ["PENDING_TRIAGE", "LINKED", "PENDING_START", "IN_PROGRESS", "PENDING_CUSTOMER_APPROVAL", "COMPLETED", "FAILED", "TIMED_OUT", "CANCELED", "SKIPPED", "WAITING"], # required
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #         version: 1, # required
    #         support_metadata: ""null"",
    #         metadata: ""null"",
    #         primary_task_id: "String",
    #         status_reason: "String",
    #         has_linked_tasks: false
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListBacklogTasksResponse]
    def list_backlog_tasks(params = {}, options = {})
      request = build_request(:list_backlog_tasks, params)
      request.send_request(options)
    end

    # <p>Retrieves a paginated list of the user's recent chat executions</p>
    # @param [Hash, Types::ListChatsRequest] params
    # @option params [String] :agent_space_id
    #   <p>The unique identifier for the agent space to list chats from.</p>
    # @option params [String] :user_id
    #   <p>The user identifier to list chats for. This field is deprecated and will be ignored — the service resolves user identity from the authenticated session.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to return</p>
    # @option params [String] :next_token
    #   <p>Token for pagination</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_space_id: "AgentSpaceIdentifier", # required
    #     user_id: "ResourceId",
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_chats(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     executions: [ # required
    #       {
    #         execution_id: "ResourceId", # required
    #         created_at: Time.now, # required
    #         updated_at: Time.now,
    #         summary: "String"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListChatsResponse]
    def list_chats(params = {}, options = {})
      request = build_request(:list_chats, params)
      request.send_request(options)
    end

    # <p>List executions</p>
    # @param [Hash, Types::ListExecutionsRequest] params
    # @option params [String] :agent_space_id
    #   <p>The unique identifier for the agent space</p>
    # @option params [String] :task_id
    #   <p>The unique identifier of the task whose executions to retrieve</p>
    # @option params [Integer] :limit
    #   <p>Maximum number of executions to return</p>
    # @option params [String] :next_token
    #   <p>Token for pagination to retrieve the next set of results</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_space_id: "AgentSpaceIdentifier", # required
    #     task_id: "ResourceId", # required
    #     limit: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_executions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     executions: [ # required
    #       {
    #         agent_space_id: "String", # required
    #         execution_id: "String", # required
    #         parent_execution_id: "String",
    #         agent_sub_task: "String", # required
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #         execution_status: "FAILED" # One of: ["FAILED", "RUNNING", "STOPPED", "CANCELED", "TIMED_OUT", "WAITING"], # required
    #         agent_type: "String",
    #         uid: "String"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListExecutionsResponse]
    def list_executions(params = {}, options = {})
      request = build_request(:list_executions, params)
      request.send_request(options)
    end

    # <p>Lists goals in the specified agent space with optional filtering</p>
    # @param [Hash, Types::ListGoalsRequest] params
    # @option params [String] :agent_space_id
    #   <p>The unique identifier for the agent space</p>
    # @option params [String] :status
    #   <p>Filter goals by goal status</p>
    # @option params [String] :goal_type
    #   <p>Filter goals by goal type</p>
    # @option params [Integer] :limit
    #   <p>Maximum number of goals to return</p>
    # @option params [String] :next_token
    #   <p>Pagination token for the next set of results</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_space_id: "AgentSpaceIdentifier", # required
    #     status: "ACTIVE" # One of: ["ACTIVE", "PAUSED", "COMPLETE"],
    #     goal_type: "CUSTOMER_DEFINED" # One of: ["CUSTOMER_DEFINED", "ONCALL_REPORT"],
    #     limit: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_goals(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     goals: [ # required
    #       {
    #         agent_space_arn: "String", # required
    #         goal_id: "String", # required
    #         title: "String", # required
    #         content: { # required
    #           description: "String", # required
    #           objectives: "String", # required
    #         },
    #         status: "ACTIVE" # One of: ["ACTIVE", "PAUSED", "COMPLETE"], # required
    #         goal_type: "CUSTOMER_DEFINED" # One of: ["CUSTOMER_DEFINED", "ONCALL_REPORT"], # required
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #         last_evaluated_at: Time.now,
    #         last_task_id: "String",
    #         last_successful_task_id: "String",
    #         version: 1, # required
    #         evaluation_schedule: {
    #           state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #           expression: "String"
    #         }
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListGoalsResponse]
    def list_goals(params = {}, options = {})
      request = build_request(:list_goals, params)
      request.send_request(options)
    end

    # <p>List journal records for a specific execution</p>
    # @param [Hash, Types::ListJournalRecordsRequest] params
    # @option params [String] :agent_space_id
    #   <p>The unique identifier for the agent space containing the execution</p>
    # @option params [String] :execution_id
    #   <p>The unique identifier of the execution whose journal records to retrieve</p>
    # @option params [Integer] :limit
    #   <p>Maximum number of records to return in a single response (1-100, default: 100)</p>
    # @option params [String] :next_token
    #   <p>Token for retrieving the next page of results</p>
    # @option params [String] :record_type
    #   <p>Filter records by type (empty string returns all types)</p>
    # @option params [String] :order
    #   <p>Sort order for the records based on timestamp (default: DESC)</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_space_id: "AgentSpaceIdentifier", # required
    #     execution_id: "ResourceId", # required
    #     limit: 1,
    #     next_token: "NextToken",
    #     record_type: "String",
    #     order: "ASC" # One of: ["ASC", "DESC"]
    #   }
    #   options = {}
    #   response = client.list_journal_records(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     records: [ # required
    #       {
    #         agent_space_id: "String", # required
    #         execution_id: "String", # required
    #         record_id: "String", # required
    #         content: ""null"", # required
    #         created_at: Time.now, # required
    #         record_type: "String", # required
    #         user_reference: {
    #           user_id: "String", # required
    #           user_type: "IAM" # One of: ["IAM", "IDC", "IDP"], # required
    #         }
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListJournalRecordsResponse]
    def list_journal_records(params = {}, options = {})
      request = build_request(:list_journal_records, params)
      request.send_request(options)
    end

    # <p>List pending messages for a specific execution.</p>
    # @param [Hash, Types::ListPendingMessagesRequest] params
    # @option params [String] :agent_space_id
    #   <p>Unique identifier for an agent space (allows alphanumeric characters and hyphens; 1-64 characters)</p>
    # @option params [String] :execution_id
    #   <p>The unique identifier of the execution whose journal records to retrieve</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_space_id: "AgentSpaceId", # required
    #     execution_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.list_pending_messages(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     agent_space_id: "AgentSpaceId", # required
    #     execution_id: "String", # required
    #     messages: [ # required
    #       {
    #         message_id: "String", # required
    #         message: { # required
    #           # One of:
    #           user_message: [{
    #             # One of:
    #             text: "String",
    #             tool_result: ""null""
    #           }],
    #           assistant_message: [{
    #             # One of:
    #             text: "String",
    #             tool_use: ""null""
    #           }]
    #         }
    #       }
    #     ],
    #     created_at: Time.now, # required
    #   }
    # @return [Types::ListPendingMessagesResponse]
    def list_pending_messages(params = {}, options = {})
      request = build_request(:list_pending_messages, params)
      request.send_request(options)
    end

    # <p>Lists all Private Connections in the caller's account.</p>
    # @param [Hash, Types::ListPrivateConnectionsInput] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.list_private_connections(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     private_connections: [ # required
    #       {
    #         name: "PrivateConnectionName", # required
    #         type: "SELF_MANAGED" # One of: ["SELF_MANAGED", "SERVICE_MANAGED"], # required
    #         resource_gateway_id: "ResourceGatewayArn",
    #         host_address: "IpAddressOrDnsName",
    #         vpc_id: "VpcId",
    #         resource_configuration_id: "ResourceConfigurationArn",
    #         status: "ACTIVE" # One of: ["ACTIVE", "CREATE_IN_PROGRESS", "CREATE_FAILED", "DELETE_IN_PROGRESS", "DELETE_FAILED"], # required
    #         certificate_expiry_time: Time.now,
    #         dns_resolution: "PUBLIC" # One of: ["PUBLIC", "IN_VPC"],
    #         failure_message: "FailureMessage"
    #       }
    #     ]
    #   }
    # @return [Types::ListPrivateConnectionsOutput]
    def list_private_connections(params = {}, options = {})
      request = build_request(:list_private_connections, params)
      request.send_request(options)
    end

    # <p>Lists recommendations for the specified agent space</p>
    # @param [Hash, Types::ListRecommendationsRequest] params
    # @option params [String] :agent_space_id
    #   <p>The unique identifier for the agent space containing the recommendations</p>
    # @option params [String] :task_id
    #   <p>Optional task ID to filter recommendations by specific task</p>
    # @option params [String] :goal_id
    #   <p>Optional goal ID to filter recommendations by specific goal</p>
    # @option params [String] :status
    #   <p>Optional status to filter recommendations by their current status</p>
    # @option params [String] :priority
    #   <p>Optional priority to filter recommendations by priority level</p>
    # @option params [Integer] :limit
    #   <p>Maximum number of recommendations to return in a single response</p>
    # @option params [String] :next_token
    #   <p>Token for retrieving the next page of results</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_space_id: "AgentSpaceIdentifier", # required
    #     task_id: "ResourceId",
    #     goal_id: "ResourceId",
    #     status: "PROPOSED" # One of: ["PROPOSED", "ACCEPTED", "REJECTED", "CLOSED", "COMPLETED", "UPDATE_IN_PROGRESS"],
    #     priority: "HIGH" # One of: ["HIGH", "MEDIUM", "LOW"],
    #     limit: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_recommendations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     recommendations: [ # required
    #       {
    #         agent_space_arn: "String", # required
    #         recommendation_id: "String", # required
    #         task_id: "String", # required
    #         goal_id: "String",
    #         title: "String", # required
    #         content: { # required
    #           summary: "String", # required
    #           spec: "String"
    #         },
    #         status: "PROPOSED" # One of: ["PROPOSED", "ACCEPTED", "REJECTED", "CLOSED", "COMPLETED", "UPDATE_IN_PROGRESS"], # required
    #         priority: "HIGH" # One of: ["HIGH", "MEDIUM", "LOW"], # required
    #         goal_version: 1,
    #         additional_context: "String",
    #         rank_position: 1,
    #         ranked_at: Time.now,
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #         version: 1, # required
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListRecommendationsResponse]
    def list_recommendations(params = {}, options = {})
      request = build_request(:list_recommendations, params)
      request.send_request(options)
    end

    # <p>List a list of registered service on the account level.</p>
    # @param [Hash, Types::ListServicesInput] params
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to return in a single call.</p>
    # @option params [String] :next_token
    #   <p>Token for the next page of results.</p>
    # @option params [String] :filter_service_type
    #   <p>Optional filter to list only services of a specific type.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken",
    #     filter_service_type: "github" # One of: ["github", "slack", "azure", "azuredevops", "dynatrace", "servicenow", "pagerduty", "gitlab", "eventChannel", "mcpservernewrelic", "mcpservergrafana", "mcpserverdatadog", "mcpserver", "mcpserversplunk", "azureidentity", "mcpserversigv4", "remoteagent", "remoteagentsigv4"]
    #   }
    #   options = {}
    #   response = client.list_services(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     services: [ # required
    #       {
    #         service_id: "ServiceId", # required
    #         service_type: "github" # One of: ["github", "slack", "azure", "azuredevops", "dynatrace", "servicenow", "pagerduty", "gitlab", "eventChannel", "mcpservernewrelic", "mcpservergrafana", "mcpserverdatadog", "mcpserver", "mcpserversplunk", "azureidentity", "mcpserversigv4", "remoteagent", "remoteagentsigv4"], # required
    #         name: "ServiceName",
    #         accessible_resources: [""null""],
    #         additional_service_details: {
    #           # One of:
    #           github: {
    #             owner: "String", # required
    #             owner_type: "organization" # One of: ["organization", "user"], # required
    #             target_url: "String"
    #           },
    #           slack: {
    #             team_id: "String", # required
    #             team_name: "String", # required
    #           },
    #           mcpserverdatadog: {
    #             name: "String", # required
    #             endpoint: "String", # required
    #             authorization_method: "oauth-client-credentials" # One of: ["oauth-client-credentials", "oauth-3lo", "api-key", "bearer-token", "custom-headers"], # required
    #             description: "Description",
    #             api_key_header: "String",
    #             custom_header_names: ["CustomHeaderName"]
    #           },
    #           mcpserver: {
    #             name: "String", # required
    #             endpoint: "String", # required
    #             authorization_method: "oauth-client-credentials" # One of: ["oauth-client-credentials", "oauth-3lo", "api-key", "bearer-token", "custom-headers"], # required
    #             description: "Description",
    #             api_key_header: "String",
    #             custom_header_names: ["CustomHeaderName"]
    #           },
    #           servicenow: {
    #             instance_url: "ServiceNowInstanceUrl"
    #           },
    #           gitlab: {
    #             target_url: "String", # required
    #             token_type: "personal" # One of: ["personal", "group"], # required
    #             group_id: "String"
    #           },
    #           mcpserversplunk: {
    #             name: "String", # required
    #             endpoint: "String", # required
    #             authorization_method: "oauth-client-credentials" # One of: ["oauth-client-credentials", "oauth-3lo", "api-key", "bearer-token", "custom-headers"], # required
    #             description: "Description",
    #             api_key_header: "String",
    #             custom_header_names: ["CustomHeaderName"]
    #           },
    #           mcpservernewrelic: {
    #             account_id: "String", # required
    #             region: "US" # One of: ["US", "EU", "JP"], # required
    #             description: "Description"
    #           },
    #           azuredevops: {
    #             organization_name: "String", # required
    #           },
    #           azureidentity: {
    #             tenant_id: "Guid", # required
    #             client_id: "Guid", # required
    #             web_identity_role_arn: "RoleArn", # required
    #             web_identity_token_audiences: ["String"], # required
    #           },
    #           mcpservergrafana: {
    #             endpoint: "MCPServerEndpoint", # required
    #             authorization_method: "oauth-client-credentials" # One of: ["oauth-client-credentials", "oauth-3lo", "api-key", "bearer-token", "custom-headers"], # required
    #           },
    #           pagerduty: {
    #             scopes: ["String"], # required
    #           },
    #           mcpserversigv4: {
    #             name: "MCPServerName", # required
    #             endpoint: "MCPServerEndpoint", # required
    #             description: "Description",
    #             region: "SigV4Region", # required
    #             service: "String", # required
    #             role_arn: "String", # required
    #             mcp_role_arn: "RoleArn",
    #             custom_headers: {
    #               "CustomHeaderName" => "CustomHeaderValue"
    #             }
    #           },
    #           remoteagent: {
    #             name: "RemoteAgentName", # required
    #             endpoint: "RemoteAgentEndpoint", # required
    #             description: "Description",
    #             authorization_method: "oauth-client-credentials" # One of: ["oauth-client-credentials", "api-key", "bearer-token"], # required
    #             api_key_header: "String"
    #           },
    #           remoteagentsigv4: {
    #             name: "RemoteAgentName", # required
    #             endpoint: "RemoteAgentEndpoint", # required
    #             description: "Description",
    #             region: "SigV4Region", # required
    #             service: "String", # required
    #             role_arn: "RoleArn"
    #           }
    #         },
    #         kms_key_arn: "KmsKeyArn",
    #         private_connection_name: "PrivateConnectionName",
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #       }
    #     ]
    #   }
    # @return [Types::ListServicesOutput]
    def list_services(params = {}, options = {})
      request = build_request(:list_services, params)
      request.send_request(options)
    end

    # <p>Lists tags for the specified AWS DevOps Agent resource.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "String", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: { # required
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Lists Triggers in the specified agent space</p>
    # @param [Hash, Types::ListTriggersRequest] params
    # @option params [String] :agent_space_id
    #   <p>The unique identifier for the agent space whose Triggers should be listed</p>
    # @option params [String] :status
    #   <p>Filter results to Triggers in this status</p>
    # @option params [String] :next_token
    #   <p>Pagination token from a previous response to retrieve the next page of results</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single response</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_space_id: "AgentSpaceIdentifier", # required
    #     status: "TriggerStatus",
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_triggers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [ # required
    #       {
    #         trigger_id: "ResourceId", # required
    #         agent_space_id: "AgentSpaceId", # required
    #         type: "TriggerType", # required
    #         condition: { # required
    #           # One of:
    #           schedule: {
    #             expression: "ScheduleExpression",
    #             spec: {
    #               # One of:
    #               cron: {
    #                 expression: "ScheduleExpression", # required
    #               },
    #               time_range: {
    #                 start_after: "TimeOfDay", # required
    #                 start_before: "TimeOfDay", # required
    #                 recurrence: { # required
    #                   # One of:
    #                   daily: {
    #                   },
    #                   weekly: {
    #                     day_of_week: "MONDAY" # One of: ["MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"], # required
    #                   },
    #                   monthly: {
    #                     day_of_month: 1, # required
    #                   }
    #                 }
    #               }
    #             }
    #           }
    #         },
    #         action: ""null"", # required
    #         status: "TriggerStatus", # required
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListTriggersResponse]
    def list_triggers(params = {}, options = {})
      request = build_request(:list_triggers, params)
      request.send_request(options)
    end

    # <p>List all webhooks for given Association</p>
    # @param [Hash, Types::ListWebhooksInput] params
    # @option params [String] :agent_space_id
    #   <p>The unique identifier of the AgentSpace</p>
    # @option params [String] :association_id
    #   <p>The unique identifier of the given association.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_space_id: "AgentSpaceId", # required
    #     association_id: "AssociationId", # required
    #   }
    #   options = {}
    #   response = client.list_webhooks(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     webhooks: [ # required
    #       {
    #         webhook_url: "String", # required
    #         webhook_type: "hmac" # One of: ["hmac", "apikey", "gitlab", "pagerduty"],
    #         webhook_id: "String", # required
    #       }
    #     ]
    #   }
    # @return [Types::ListWebhooksOutput]
    def list_webhooks(params = {}, options = {})
      request = build_request(:list_webhooks, params)
      request.send_request(options)
    end

    # <p>This operation registers the specified service</p>
    # @param [Hash, Types::RegisterServiceInput] params
    # @option params [String] :service
    #   <p>Services that can be registered via the post-registration API (excludes OAuth 3LO services).</p>
    # @option params [Types::ServiceDetails] :service_details
    #   <p>Service-specific authorization configuration parameters</p>
    # @option params [String] :kms_key_arn
    #   <p>The ARN of the AWS Key Management Service (AWS KMS) customer managed key that's used to encrypt resources.</p>
    # @option params [String] :private_connection_name
    #   <p>The name of the private connection to use for VPC connectivity.</p>
    # @option params [String] :target_url_private_connection_name
    #   <p>The name of the private connection to use for API calls (target URL) only. Cannot be specified when privateConnectionName is provided.</p>
    # @option params [String] :exchange_url_private_connection_name
    #   <p>The name of the private connection to use for OAuth token exchange requests only. Cannot be specified when privateConnectionName is provided.</p>
    # @option params [String] :name
    #   <p>The display name for the service registration.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Tags to add to the Service at registration time.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service: "dynatrace" # One of: ["dynatrace", "servicenow", "pagerduty", "gitlab", "eventChannel", "mcpservernewrelic", "mcpservergrafana", "mcpserverdatadog", "mcpserver", "mcpserversplunk", "azureidentity", "mcpserversigv4", "remoteagent", "remoteagentsigv4"], # required
    #     service_details: { # required
    #       # One of:
    #       dynatrace: {
    #         account_urn: "String", # required
    #         authorization_config: {
    #           # One of:
    #           o_auth_client_credentials: {
    #             client_name: "String",
    #             client_id: "ClientId", # required
    #             exchange_parameters: {
    #               "String" => "ExchangeParameterValue"
    #             },
    #             client_secret: "ClientSecret", # required
    #           }
    #         }
    #       },
    #       servicenow: {
    #         instance_url: "ServiceNowInstanceUrl", # required
    #         authorization_config: {
    #           # One of:
    #           o_auth_client_credentials: {
    #             client_name: "String",
    #             client_id: "ClientId", # required
    #             exchange_parameters: {
    #               "String" => "ExchangeParameterValue"
    #             },
    #             client_secret: "ClientSecret", # required
    #           }
    #         }
    #       },
    #       mcpserverdatadog: {
    #         name: "MCPServerName", # required
    #         endpoint: "MCPServerEndpoint", # required
    #         description: "Description",
    #         authorization_config: { # required
    #           # One of:
    #           authorization_discovery: {
    #             return_to_endpoint: "String", # required
    #           }
    #         }
    #       },
    #       mcpserver: {
    #         name: "MCPServerName", # required
    #         endpoint: "MCPServerEndpoint", # required
    #         description: "Description",
    #         authorization_config: { # required
    #           # One of:
    #           o_auth_client_credentials: {
    #             client_name: "String",
    #             client_id: "ClientId", # required
    #             exchange_parameters: {
    #               "String" => "ExchangeParameterValue"
    #             },
    #             client_secret: "ClientSecret", # required
    #             exchange_url: "String", # required
    #             scopes: ["OAuthScope"]
    #           },
    #           o_auth3_lo: {
    #             client_name: "String",
    #             client_id: "ClientId", # required
    #             exchange_parameters: {
    #               "String" => "ExchangeParameterValue"
    #             },
    #             return_to_endpoint: "String", # required
    #             authorization_url: "String", # required
    #             exchange_url: "String", # required
    #             client_secret: "ClientSecret",
    #             support_code_challenge: false,
    #             scopes: ["OAuthScope"]
    #           },
    #           api_key: {
    #             api_key_name: "String", # required
    #             api_key_value: "ApiKeyValue", # required
    #             api_key_header: "String", # required
    #           },
    #           bearer_token: {
    #             token_name: "String", # required
    #             token_value: "TokenValue", # required
    #             authorization_header: "String"
    #           },
    #           custom_headers: {
    #             headers: { # required
    #               "CustomHeaderName" => "CustomHeaderValue"
    #             }
    #           },
    #           authorization_discovery: {
    #             return_to_endpoint: "String", # required
    #           }
    #         }
    #       },
    #       gitlab: {
    #         target_url: "String", # required
    #         token_type: "personal" # One of: ["personal", "group"], # required
    #         token_value: "GitLabTokenValue", # required
    #         group_id: "String"
    #       },
    #       mcpserversplunk: {
    #         name: "MCPServerName", # required
    #         endpoint: "MCPServerEndpoint", # required
    #         description: "Description",
    #         authorization_config: { # required
    #           # One of:
    #           o_auth_client_credentials: {
    #             client_name: "String",
    #             client_id: "ClientId", # required
    #             exchange_parameters: {
    #               "String" => "ExchangeParameterValue"
    #             },
    #             client_secret: "ClientSecret", # required
    #             exchange_url: "String", # required
    #             scopes: ["OAuthScope"]
    #           },
    #           o_auth3_lo: {
    #             client_name: "String",
    #             client_id: "ClientId", # required
    #             exchange_parameters: {
    #               "String" => "ExchangeParameterValue"
    #             },
    #             return_to_endpoint: "String", # required
    #             authorization_url: "String", # required
    #             exchange_url: "String", # required
    #             client_secret: "ClientSecret",
    #             support_code_challenge: false,
    #             scopes: ["OAuthScope"]
    #           },
    #           api_key: {
    #             api_key_name: "String", # required
    #             api_key_value: "ApiKeyValue", # required
    #             api_key_header: "String", # required
    #           },
    #           bearer_token: {
    #             token_name: "String", # required
    #             token_value: "TokenValue", # required
    #             authorization_header: "String"
    #           },
    #           custom_headers: {
    #             headers: { # required
    #               "CustomHeaderName" => "CustomHeaderValue"
    #             }
    #           },
    #           authorization_discovery: {
    #             return_to_endpoint: "String", # required
    #           }
    #         }
    #       },
    #       mcpservernewrelic: {
    #         authorization_config: { # required
    #           # One of:
    #           api_key: {
    #             api_key: "NewRelicApiKey", # required
    #             account_id: "String", # required
    #             region: "US" # One of: ["US", "EU", "JP"], # required
    #             application_ids: ["String"],
    #             entity_guids: ["String"],
    #             alert_policy_ids: ["String"]
    #           }
    #         }
    #       },
    #       event_channel: {
    #         type: "webhook" # One of: ["webhook"]
    #       },
    #       mcpservergrafana: {
    #         name: "MCPServerName", # required
    #         endpoint: "MCPServerEndpoint", # required
    #         description: "Description",
    #         authorization_config: { # required
    #           # One of:
    #           o_auth_client_credentials: {
    #             client_name: "String",
    #             client_id: "ClientId", # required
    #             exchange_parameters: {
    #               "String" => "ExchangeParameterValue"
    #             },
    #             client_secret: "ClientSecret", # required
    #             exchange_url: "String", # required
    #             scopes: ["OAuthScope"]
    #           },
    #           o_auth3_lo: {
    #             client_name: "String",
    #             client_id: "ClientId", # required
    #             exchange_parameters: {
    #               "String" => "ExchangeParameterValue"
    #             },
    #             return_to_endpoint: "String", # required
    #             authorization_url: "String", # required
    #             exchange_url: "String", # required
    #             client_secret: "ClientSecret",
    #             support_code_challenge: false,
    #             scopes: ["OAuthScope"]
    #           },
    #           api_key: {
    #             api_key_name: "String", # required
    #             api_key_value: "ApiKeyValue", # required
    #             api_key_header: "String", # required
    #           },
    #           bearer_token: {
    #             token_name: "String", # required
    #             token_value: "TokenValue", # required
    #             authorization_header: "String"
    #           },
    #           custom_headers: {
    #             headers: { # required
    #               "CustomHeaderName" => "CustomHeaderValue"
    #             }
    #           },
    #           authorization_discovery: {
    #             return_to_endpoint: "String", # required
    #           }
    #         }
    #       },
    #       pagerduty: {
    #         scopes: ["String"], # required
    #         authorization_config: { # required
    #           # One of:
    #           o_auth_client_credentials: {
    #             client_name: "String",
    #             client_id: "ClientId", # required
    #             exchange_parameters: {
    #               "String" => "ExchangeParameterValue"
    #             },
    #             client_secret: "ClientSecret", # required
    #           }
    #         }
    #       },
    #       azureidentity: {
    #         tenant_id: "Guid", # required
    #         client_id: "Guid", # required
    #         web_identity_role_arn: "RoleArn", # required
    #         web_identity_token_audiences: ["String"], # required
    #       },
    #       mcpserversigv4: {
    #         name: "MCPServerName", # required
    #         endpoint: "MCPServerEndpoint", # required
    #         description: "Description",
    #         authorization_config: { # required
    #           region: "SigV4Region", # required
    #           service: "String", # required
    #           role_arn: "String",
    #           mcp_role_arn: "RoleArn",
    #           custom_headers: {
    #             "CustomHeaderName" => "CustomHeaderValue"
    #           }
    #         }
    #       },
    #       remoteagent: {
    #         name: "RemoteAgentName", # required
    #         endpoint: "RemoteAgentEndpoint", # required
    #         description: "Description",
    #         authorization_config: { # required
    #           # One of:
    #           api_key: {
    #             api_key_name: "String", # required
    #             api_key_value: "ApiKeyValue", # required
    #             api_key_header: "String", # required
    #           },
    #           o_auth_client_credentials: {
    #             client_name: "String",
    #             client_id: "ClientId", # required
    #             exchange_parameters: {
    #               "String" => "ExchangeParameterValue"
    #             },
    #             client_secret: "ClientSecret", # required
    #             exchange_url: "String", # required
    #             scopes: ["OAuthScope"]
    #           },
    #           bearer_token: {
    #             token_name: "String", # required
    #             token_value: "TokenValue", # required
    #             authorization_header: "String"
    #           }
    #         }
    #       },
    #       remoteagentsigv4: {
    #         name: "RemoteAgentName", # required
    #         endpoint: "RemoteAgentEndpoint", # required
    #         description: "Description",
    #         authorization_config: { # required
    #           region: "SigV4Region", # required
    #           service: "String", # required
    #           role_arn: "RoleArn"
    #         }
    #       }
    #     },
    #     kms_key_arn: "KmsKeyArn",
    #     private_connection_name: "PrivateConnectionName",
    #     target_url_private_connection_name: "PrivateConnectionName",
    #     exchange_url_private_connection_name: "PrivateConnectionName",
    #     name: "ServiceNameInput",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.register_service(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service_id: "ServiceId",
    #     additional_step: {
    #       # One of:
    #       oauth: {
    #         authorization_url: "String", # required
    #       }
    #     },
    #     kms_key_arn: "KmsKeyArn",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::RegisterServiceOutput]
    def register_service(params = {}, options = {})
      request = build_request(:register_service, params)
      request.send_request(options)
    end

    # <p>Sends a chat message and streams the response for the specified agent space execution</p>
    # @param [Hash, Types::SendMessageRequest] params
    # @option params [String] :agent_space_id
    #   <p>The agent space identifier</p>
    # @option params [String] :execution_id
    #   <p>The execution identifier for the chat session</p>
    # @option params [String] :content
    #   <p>The user message content</p>
    # @option params [Types::SendMessageContext] :context
    #   <p>Optional context for the message</p>
    # @option params [String] :user_id
    #   <p>User identifier. This field is deprecated and will be ignored — the service resolves user identity from the authenticated session.</p>
    # @option params [Array<String>] :asset_ids
    #   <p>Optional list of asset identifiers to attach to the message</p>
    # @option params [String] :model_tier
    #   <p>Optional model tier selection. Valid values: smart, balanced, fast. Absent or unrecognized values default to balanced.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_space_id: "AgentSpaceIdentifier", # required
    #     execution_id: "ChatExecutionId", # required
    #     content: "MessageContent", # required
    #     context: {
    #       current_page: "String",
    #       last_message: "String",
    #       user_action_response: "String",
    #       approval_action: {
    #         tool_use_id: "ToolUseId",
    #         interrupt_id: "InterruptId",
    #         approval_id: "ApprovalId",
    #         button_text: "ButtonText",
    #         action: "APPROVED" # One of: ["APPROVED", "REJECTED"]
    #       }
    #     },
    #     user_id: "ResourceId",
    #     asset_ids: ["String"],
    #     model_tier: "String"
    #   }
    #   options = {}
    #   response = client.send_message(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     events: { # required
    #       # One of:
    #       response_created: {
    #         response_id: "String",
    #         sequence_number: 1
    #       },
    #       response_in_progress: {
    #         response_id: "String",
    #         sequence_number: 1
    #       },
    #       response_completed: {
    #         response_id: "String",
    #         usage: {
    #           input_tokens: 1,
    #           output_tokens: 1,
    #           total_tokens: 1
    #         },
    #         sequence_number: 1
    #       },
    #       response_failed: {
    #         response_id: "String",
    #         error_code: "String",
    #         error_message: "String",
    #         sequence_number: 1
    #       },
    #       summary: {
    #         content: "String",
    #         sequence_number: 1
    #       },
    #       heartbeat: {
    #       },
    #       content_block_start: {
    #         index: 1,
    #         type: "String",
    #         id: "String",
    #         parent_id: "String",
    #         sequence_number: 1
    #       },
    #       content_block_delta: {
    #         index: 1,
    #         delta: {
    #           # One of:
    #           text_delta: {
    #             text: "String"
    #           },
    #           json_delta: {
    #             partial_json: "String"
    #           }
    #         },
    #         sequence_number: 1
    #       },
    #       content_block_stop: {
    #         index: 1,
    #         type: "String",
    #         text: "String",
    #         last: false,
    #         sequence_number: 1
    #       }
    #     }
    #   }
    # @return [Types::SendMessageResponse]
    def send_message(params = {}, options = {})
      request = build_request(:send_message, params)
      request.send_request(options)
    end

    # <p>Adds or overwrites tags for the specified AWS DevOps Agent resource.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource to tag.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Tags to add to the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "String", # required
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

    # <p>Removes tags from the specified AWS DevOps Agent resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource to untag.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>Tag keys to remove.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "String", # required
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

    # <p>Updates the information of an existing AgentSpace.</p>
    # @param [Hash, Types::UpdateAgentSpaceInput] params
    # @option params [String] :agent_space_id
    #   <p>The unique identifier of the AgentSpace</p>
    # @option params [String] :name
    #   <p>The updated name of the AgentSpace.</p>
    # @option params [String] :description
    #   <p>The updated description of the AgentSpace.</p>
    # @option params [String] :locale
    #   <p>The updated locale for the AgentSpace, which determines the language used in agent responses.</p>
    # @option params [Hash<String, Boolean>] :preferences
    #   <p>The preferences to configure on the agent space. When provided, this replaces the full set of configured preferences; preferences not included revert to their default values. When omitted, the current preferences are left unchanged.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_space_id: "AgentSpaceId", # required
    #     name: "AgentSpaceName",
    #     description: "Description",
    #     locale: "Locale",
    #     preferences: {
    #       "AgentSpacePreferenceKey" => false
    #     }
    #   }
    #   options = {}
    #   response = client.update_agent_space(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     agent_space: { # required
    #       name: "AgentSpaceName", # required
    #       description: "Description",
    #       locale: "Locale",
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       kms_key_arn: "KmsKeyArn",
    #       agent_space_id: "AgentSpaceId", # required
    #       preferences: {
    #         "AgentSpacePreferenceKey" => false
    #       }
    #     }
    #   }
    # @return [Types::UpdateAgentSpaceOutput]
    def update_agent_space(params = {}, options = {})
      request = build_request(:update_agent_space, params)
      request.send_request(options)
    end

    # <p>Updates an approval request with the terminal decision (APPROVED or REJECTED). A single operation handles both verbs via the action enum.</p>
    # @param [Hash, Types::UpdateApprovalActionRequest] params
    # @option params [String] :agent_space_id
    #   <p>The agent space identifier — multi-tenant workspace scope. Bound from the request URI.</p>
    # @option params [String] :approval_id
    #   <p>Identifier of the approval request being resolved. A UUID. Bound from the request URI.</p>
    # @option params [String] :action
    #   <p>The action to take on the approval request — APPROVED or REJECTED.</p>
    # @option params [Types::ApprovalPattern] :final_pattern
    #   <p>The finalized pattern (tool + argumentPins) that scopes the approval. Required when `action` is APPROVED; must be absent when `action` is REJECTED. The pattern narrows, and must not widen, the invocation originally requested by the agent. This cross-field invariant is enforced by service-side validation.</p>
    # @option params [String] :reason
    #   <p>Optional free-text rationale for the decision. Permitted when `action` is REJECTED; ignored when `action` is APPROVED.</p>
    # @option params [Integer] :ttl_seconds
    #   <p>Approval lifetime in seconds, starting from when the decision is submitted. Required when `action` is APPROVED AND `singleUse` is false; must be absent when `action` is REJECTED or when `singleUse` is true (a single-use approval backs one executed action and the redemption window collapses). Cross-field invariants are enforced by service-side validation; the @range bound here is the operation-boundary check that always applies (a maximum of 4 hours).</p>
    # @option params [Boolean] :single_use
    #   <p>Whether the approved action backs a single executed tool call (true) or is reusable within ttlSeconds (false). Required when `action` is APPROVED; must be absent when `action` is REJECTED. When true, ttlSeconds must be absent (the redemption window collapses to the single use). When false, ttlSeconds is required and bounds the reuse window. Cross-field invariants are enforced by service-side validation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_space_id: "AgentSpaceIdentifier", # required
    #     approval_id: "ApprovalId", # required
    #     action: "APPROVED" # One of: ["APPROVED", "REJECTED"], # required
    #     final_pattern: {
    #       tool: "ToolIdentifier", # required
    #       argument_pins: { # required
    #         "ApprovalPinKey" => "ApprovalPinValue"
    #       }
    #     },
    #     reason: "ApprovalReason",
    #     ttl_seconds: 1,
    #     single_use: false
    #   }
    #   options = {}
    #   response = client.update_approval_action(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     approval_id: "ApprovalId", # required
    #     status: "PENDING" # One of: ["PENDING", "APPROVED", "REJECTED", "REVOKED", "REDEEMED"], # required
    #     expires_at: Time.now
    #   }
    # @return [Types::UpdateApprovalActionResponse]
    def update_approval_action(params = {}, options = {})
      request = build_request(:update_approval_action, params)
      request.send_request(options)
    end

    # <p>Updates an asset in the specified agent space</p>
    # @param [Hash, Types::UpdateAssetRequest] params
    # @option params [String] :agent_space_id
    #   <p>The unique identifier for the agent space containing the asset</p>
    # @option params [String] :asset_id
    #   <p>The unique identifier of the asset to update</p>
    # @option params [JSON] :metadata
    #   <p>Metadata fields to update. Only the fields present in this document are updated. Omitted fields retain their current values.</p>
    # @option params [Types::AssetContent] :content
    #   <p>Optional content update. A single file adds or replaces one file; a zip replaces all files; a sourceUrl re-syncs from the original source.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier used for idempotent asset update</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_space_id: "AgentSpaceIdentifier", # required
    #     asset_id: "ResourceId", # required
    #     metadata: ""null"",
    #     content: {
    #       # One of:
    #       file: {
    #         path: "AssetFilePath", # required
    #         body: { # required
    #           # One of:
    #           bytes: "data",
    #           text: "AssetFileText"
    #         },
    #         metadata: ""null""
    #       },
    #       zip: {
    #         zip_file: "data", # required
    #       },
    #       source_url: {
    #         url: "AssetContentUrl", # required
    #       }
    #     },
    #     client_token: "String"
    #   }
    #   options = {}
    #   response = client.update_asset(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     asset: { # required
    #       asset_id: "ResourceId", # required
    #       asset_type: "AssetType", # required
    #       metadata: ""null"", # required
    #       version: 1, # required
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #     }
    #   }
    # @return [Types::UpdateAssetResponse]
    def update_asset(params = {}, options = {})
      request = build_request(:update_asset, params)
      request.send_request(options)
    end

    # <p>Updates a file in an asset</p>
    # @param [Hash, Types::UpdateAssetFileRequest] params
    # @option params [String] :agent_space_id
    #   <p>The unique identifier for the agent space containing the asset</p>
    # @option params [String] :asset_id
    #   <p>The unique identifier of the asset containing the file</p>
    # @option params [String] :path
    #   <p>The path of the file within the asset to update</p>
    # @option params [Types::AssetFileBody] :content
    #   <p>Updated file content. If omitted, the existing content is unchanged.</p>
    # @option params [JSON] :metadata
    #   <p>Metadata fields to update. Only the fields present in this document are updated. Omitted fields retain their current values.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier used for idempotent asset file update</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_space_id: "AgentSpaceIdentifier", # required
    #     asset_id: "ResourceId", # required
    #     path: "AssetFilePath", # required
    #     content: {
    #       # One of:
    #       bytes: "data",
    #       text: "AssetFileText"
    #     },
    #     metadata: ""null"",
    #     client_token: "String"
    #   }
    #   options = {}
    #   response = client.update_asset_file(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     file: { # required
    #       path: "AssetFilePath", # required
    #       content: { # required
    #         # One of:
    #         bytes: "data",
    #         text: "AssetFileText"
    #       },
    #       metadata: ""null"",
    #       version: 1, # required
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #     }
    #   }
    # @return [Types::UpdateAssetFileResponse]
    def update_asset_file(params = {}, options = {})
      request = build_request(:update_asset_file, params)
      request.send_request(options)
    end

    # <p>Partially updates the configuration of an existing service association for an AgentSpace. Present fields are fully replaced; absent fields are left unchanged. Returns 200 OK on success.</p>
    # @param [Hash, Types::UpdateAssociationInput] params
    # @option params [String] :agent_space_id
    #   <p>The unique identifier of the AgentSpace</p>
    # @option params [String] :association_id
    #   <p>The unique identifier of the given association.</p>
    # @option params [Types::ServiceConfiguration] :configuration
    #   <p>The configuration that directs how AgentSpace interacts with the given service. The entire configuration is replaced on update.</p>
    # @option params [Hash<String, Types::CapabilityConfiguration>] :capabilities
    #   <p>Enabled capabilities for this association.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_space_id: "AgentSpaceId", # required
    #     association_id: "AssociationId", # required
    #     configuration: { # required
    #       # One of:
    #       source_aws: {
    #         account_id: "String", # required
    #         account_type: "source" # One of: ["source"], # required
    #         assumable_role_arn: "RoleArn", # required
    #         external_id: "String",
    #         agent_elevated_role_arn: "RoleArn",
    #         agent_elevated_role_arn_status: "valid" # One of: ["valid", "invalid", "pending-confirmation"]
    #       },
    #       aws: {
    #         assumable_role_arn: "RoleArn", # required
    #         account_id: "String", # required
    #         account_type: "monitor" # One of: ["monitor"], # required
    #         agent_elevated_role_arn: "RoleArn",
    #         agent_elevated_role_arn_status: "valid" # One of: ["valid", "invalid", "pending-confirmation"]
    #       },
    #       github: {
    #         repo_name: "String", # required
    #         repo_id: "String", # required
    #         owner: "String", # required
    #         owner_type: "organization" # One of: ["organization", "user"], # required
    #         instance_identifier: "String",
    #         runtime_role_arn: "RoleArn",
    #         release_management_association_id: "AssociationId"
    #       },
    #       slack: {
    #         workspace_id: "String", # required
    #         workspace_name: "String", # required
    #         transmission_target: { # required
    #           ops_oncall_target: { # required
    #             channel_name: "String",
    #             channel_id: "String", # required
    #           },
    #           ops_sre_target: {
    #             channel_name: "String",
    #             channel_id: "String", # required
    #           }
    #         },
    #         bidirectional: {
    #           role_arn: "RoleArn", # required
    #           enabled: false
    #         }
    #       },
    #       dynatrace: {
    #         env_id: "String", # required
    #         resources: ["String"]
    #       },
    #       servicenow: {
    #         instance_id: "String",
    #         auth_scopes: ["String"]
    #       },
    #       mcpservernewrelic: {
    #         account_id: "String", # required
    #         endpoint: "String", # required
    #       },
    #       mcpserverdatadog: {
    #         enabled_elevated_tools: [
    #           {
    #             name: "String", # required
    #             tool_classification: "READ_ONLY" # One of: ["READ_ONLY", "MUTATIVE", "DESTRUCTIVE"]
    #           }
    #         ]
    #       },
    #       mcpserver: {
    #         tools: ["String"], # required
    #         tool_details: [
    #           {
    #             name: "String", # required
    #             tool_classification: "READ_ONLY" # One of: ["READ_ONLY", "MUTATIVE", "DESTRUCTIVE"]
    #           }
    #         ]
    #       },
    #       gitlab: {
    #         project_id: "String", # required
    #         project_path: "String", # required
    #         instance_identifier: "String",
    #         runtime_role_arn: "RoleArn",
    #         release_management_association_id: "AssociationId"
    #       },
    #       mcpserversplunk: {
    #       },
    #       event_channel: {
    #       },
    #       azure: {
    #         subscription_id: "String", # required
    #       },
    #       azuredevops: {
    #         organization_name: "String", # required
    #         project_id: "String", # required
    #         project_name: "String", # required
    #       },
    #       mcpservergrafana: {
    #         endpoint: "String", # required
    #         organization_id: "String",
    #         tools: ["String"],
    #         enabled_elevated_tools: [
    #           {
    #             name: "String", # required
    #             tool_classification: "READ_ONLY" # One of: ["READ_ONLY", "MUTATIVE", "DESTRUCTIVE"]
    #           }
    #         ]
    #       },
    #       pagerduty: {
    #         services: ["String"], # required
    #         customer_email: "EmailAddress", # required
    #       },
    #       mcpserversigv4: {
    #         tools: ["String"], # required
    #         tool_details: [
    #           {
    #             name: "String", # required
    #             tool_classification: "READ_ONLY" # One of: ["READ_ONLY", "MUTATIVE", "DESTRUCTIVE"]
    #           }
    #         ]
    #       },
    #       remoteagent: {
    #       },
    #       remoteagentsigv4: {
    #       },
    #       release_management: {
    #         name: "DisplayName", # required
    #         network_access: { # required
    #           # One of:
    #           private_access: {
    #             private_connection_name: "PrivateConnectionName", # required
    #             runtime_role_arn: "RoleArn", # required
    #           }
    #         }
    #       }
    #     },
    #     capabilities: {
    #       "CapabilityType" => {
    #         enabled: false,
    #         trigger_filter_groups: [
    #           {
    #             events: ["PULL_REQUEST_READY_FOR_REVIEW" # One of: ["PULL_REQUEST_READY_FOR_REVIEW", "PULL_REQUEST_DRAFT"]],
    #             target_branches: {
    #               patterns: ["TriggerRegexPattern"], # required
    #             }
    #           }
    #         ]
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     association: { # required
    #       agent_space_id: "AgentSpaceId", # required
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       status: "valid" # One of: ["valid", "invalid", "pending-confirmation"],
    #       association_id: "AssociationId", # required
    #       service_id: "ServiceId", # required
    #       configuration: { # required
    #         # One of:
    #         source_aws: {
    #           account_id: "String", # required
    #           account_type: "source" # One of: ["source"], # required
    #           assumable_role_arn: "RoleArn", # required
    #           external_id: "String",
    #           agent_elevated_role_arn: "RoleArn",
    #           agent_elevated_role_arn_status: "valid" # One of: ["valid", "invalid", "pending-confirmation"]
    #         },
    #         aws: {
    #           assumable_role_arn: "RoleArn", # required
    #           account_id: "String", # required
    #           account_type: "monitor" # One of: ["monitor"], # required
    #           agent_elevated_role_arn: "RoleArn",
    #           agent_elevated_role_arn_status: "valid" # One of: ["valid", "invalid", "pending-confirmation"]
    #         },
    #         github: {
    #           repo_name: "String", # required
    #           repo_id: "String", # required
    #           owner: "String", # required
    #           owner_type: "organization" # One of: ["organization", "user"], # required
    #           instance_identifier: "String",
    #           runtime_role_arn: "RoleArn",
    #           release_management_association_id: "AssociationId"
    #         },
    #         slack: {
    #           workspace_id: "String", # required
    #           workspace_name: "String", # required
    #           transmission_target: { # required
    #             ops_oncall_target: { # required
    #               channel_name: "String",
    #               channel_id: "String", # required
    #             },
    #             ops_sre_target: {
    #               channel_name: "String",
    #               channel_id: "String", # required
    #             }
    #           },
    #           bidirectional: {
    #             role_arn: "RoleArn", # required
    #             enabled: false
    #           }
    #         },
    #         dynatrace: {
    #           env_id: "String", # required
    #           resources: ["String"]
    #         },
    #         servicenow: {
    #           instance_id: "String",
    #           auth_scopes: ["String"]
    #         },
    #         mcpservernewrelic: {
    #           account_id: "String", # required
    #           endpoint: "String", # required
    #         },
    #         mcpserverdatadog: {
    #           enabled_elevated_tools: [
    #             {
    #               name: "String", # required
    #               tool_classification: "READ_ONLY" # One of: ["READ_ONLY", "MUTATIVE", "DESTRUCTIVE"]
    #             }
    #           ]
    #         },
    #         mcpserver: {
    #           tools: ["String"], # required
    #           tool_details: [
    #             {
    #               name: "String", # required
    #               tool_classification: "READ_ONLY" # One of: ["READ_ONLY", "MUTATIVE", "DESTRUCTIVE"]
    #             }
    #           ]
    #         },
    #         gitlab: {
    #           project_id: "String", # required
    #           project_path: "String", # required
    #           instance_identifier: "String",
    #           runtime_role_arn: "RoleArn",
    #           release_management_association_id: "AssociationId"
    #         },
    #         mcpserversplunk: {
    #         },
    #         event_channel: {
    #         },
    #         azure: {
    #           subscription_id: "String", # required
    #         },
    #         azuredevops: {
    #           organization_name: "String", # required
    #           project_id: "String", # required
    #           project_name: "String", # required
    #         },
    #         mcpservergrafana: {
    #           endpoint: "String", # required
    #           organization_id: "String",
    #           tools: ["String"],
    #           enabled_elevated_tools: [
    #             {
    #               name: "String", # required
    #               tool_classification: "READ_ONLY" # One of: ["READ_ONLY", "MUTATIVE", "DESTRUCTIVE"]
    #             }
    #           ]
    #         },
    #         pagerduty: {
    #           services: ["String"], # required
    #           customer_email: "EmailAddress", # required
    #         },
    #         mcpserversigv4: {
    #           tools: ["String"], # required
    #           tool_details: [
    #             {
    #               name: "String", # required
    #               tool_classification: "READ_ONLY" # One of: ["READ_ONLY", "MUTATIVE", "DESTRUCTIVE"]
    #             }
    #           ]
    #         },
    #         remoteagent: {
    #         },
    #         remoteagentsigv4: {
    #         },
    #         release_management: {
    #           name: "DisplayName", # required
    #           network_access: { # required
    #             # One of:
    #             private_access: {
    #               private_connection_name: "PrivateConnectionName", # required
    #               runtime_role_arn: "RoleArn", # required
    #             }
    #           }
    #         }
    #       },
    #       capabilities: {
    #         "CapabilityType" => {
    #           enabled: false,
    #           trigger_filter_groups: [
    #             {
    #               events: ["PULL_REQUEST_READY_FOR_REVIEW" # One of: ["PULL_REQUEST_READY_FOR_REVIEW", "PULL_REQUEST_DRAFT"]],
    #               target_branches: {
    #                 patterns: ["TriggerRegexPattern"], # required
    #               }
    #             }
    #           ]
    #         }
    #       }
    #     },
    #     webhook: {
    #       webhook_url: "String",
    #       webhook_id: "String",
    #       webhook_type: "hmac" # One of: ["hmac", "apikey", "gitlab", "pagerduty"],
    #       webhook_secret: "WebhookSecret",
    #       api_key: "ApiKeyValue"
    #     }
    #   }
    # @return [Types::UpdateAssociationOutput]
    def update_association(params = {}, options = {})
      request = build_request(:update_association, params)
      request.send_request(options)
    end

    # <p>Update an existing backlog task.</p>
    # @param [Hash, Types::UpdateBacklogTaskRequest] params
    # @option params [String] :agent_space_id
    #   <p>The unique identifier for the agent space containing the task</p>
    # @option params [String] :task_id
    #   <p>The unique identifier of the task to update</p>
    # @option params [String] :task_status
    #   <p>Updated task status</p>
    # @option params [String] :client_token
    #   <p>Client-provided token for idempotent operations</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_space_id: "AgentSpaceIdentifier", # required
    #     task_id: "ResourceId", # required
    #     task_status: "PENDING_TRIAGE" # One of: ["PENDING_TRIAGE", "LINKED", "PENDING_START", "IN_PROGRESS", "PENDING_CUSTOMER_APPROVAL", "COMPLETED", "FAILED", "TIMED_OUT", "CANCELED", "SKIPPED", "WAITING"],
    #     client_token: "String"
    #   }
    #   options = {}
    #   response = client.update_backlog_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     task: { # required
    #       agent_space_id: "String", # required
    #       task_id: "String", # required
    #       execution_id: "String",
    #       title: "String", # required
    #       description: "String",
    #       reference: {
    #         system: "String", # required
    #         title: "String",
    #         reference_id: "String", # required
    #         reference_url: "String", # required
    #         association_id: "String", # required
    #       },
    #       task_type: "INVESTIGATION" # One of: ["INVESTIGATION", "EVALUATION", "RELEASE_READINESS_REVIEW", "RELEASE_TESTING"], # required
    #       priority: "CRITICAL" # One of: ["CRITICAL", "HIGH", "MEDIUM", "LOW", "MINIMAL"], # required
    #       status: "PENDING_TRIAGE" # One of: ["PENDING_TRIAGE", "LINKED", "PENDING_START", "IN_PROGRESS", "PENDING_CUSTOMER_APPROVAL", "COMPLETED", "FAILED", "TIMED_OUT", "CANCELED", "SKIPPED", "WAITING"], # required
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       version: 1, # required
    #       support_metadata: ""null"",
    #       metadata: ""null"",
    #       primary_task_id: "String",
    #       status_reason: "String",
    #       has_linked_tasks: false
    #     }
    #   }
    # @return [Types::UpdateBacklogTaskResponse]
    def update_backlog_task(params = {}, options = {})
      request = build_request(:update_backlog_task, params)
      request.send_request(options)
    end

    # <p>Update an existing goal</p>
    # @param [Hash, Types::UpdateGoalRequest] params
    # @option params [String] :agent_space_id
    #   <p>The unique identifier for the agent space containing the goal</p>
    # @option params [String] :goal_id
    #   <p>The unique identifier of the goal to update</p>
    # @option params [Types::GoalScheduleInput] :evaluation_schedule
    #   <p>Update goal schedule state</p>
    # @option params [String] :client_token
    #   <p>Client-provided token for idempotent operations</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_space_id: "AgentSpaceIdentifier", # required
    #     goal_id: "String", # required
    #     evaluation_schedule: {
    #       state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #     },
    #     client_token: "String"
    #   }
    #   options = {}
    #   response = client.update_goal(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     goal: { # required
    #       agent_space_arn: "String", # required
    #       goal_id: "String", # required
    #       title: "String", # required
    #       content: { # required
    #         description: "String", # required
    #         objectives: "String", # required
    #       },
    #       status: "ACTIVE" # One of: ["ACTIVE", "PAUSED", "COMPLETE"], # required
    #       goal_type: "CUSTOMER_DEFINED" # One of: ["CUSTOMER_DEFINED", "ONCALL_REPORT"], # required
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       last_evaluated_at: Time.now,
    #       last_task_id: "String",
    #       last_successful_task_id: "String",
    #       version: 1, # required
    #       evaluation_schedule: {
    #         state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #         expression: "String"
    #       }
    #     }
    #   }
    # @return [Types::UpdateGoalResponse]
    def update_goal(params = {}, options = {})
      request = build_request(:update_goal, params)
      request.send_request(options)
    end

    # <p>Update the external Identity Provider configuration for the Operator App</p>
    # @param [Hash, Types::UpdateOperatorAppIdpConfigInput] params
    # @option params [String] :agent_space_id
    #   <p>The unique identifier of the AgentSpace</p>
    # @option params [String] :idp_client_secret
    #   <p>The OIDC client secret for the IdP application</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_space_id: "AgentSpaceId", # required
    #     idp_client_secret: "IdpClientSecret"
    #   }
    #   options = {}
    #   response = client.update_operator_app_idp_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     agent_space_id: "AgentSpaceId", # required
    #     idp: { # required
    #       issuer_url: "String", # required
    #       client_id: "String", # required
    #       operator_app_role_arn: "String", # required
    #       provider: "String", # required
    #       created_at: Time.now, # required
    #       updated_at: Time.now
    #     }
    #   }
    # @return [Types::UpdateOperatorAppIdpConfigOutput]
    def update_operator_app_idp_config(params = {}, options = {})
      request = build_request(:update_operator_app_idp_config, params)
      request.send_request(options)
    end

    # <p>Updates the certificate associated with a Private Connection.</p>
    # @param [Hash, Types::UpdatePrivateConnectionCertificateInput] params
    # @option params [String] :name
    #   <p>The name of the Private Connection.</p>
    # @option params [String] :certificate
    #   <p>The new certificate for the Private Connection.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "PrivateConnectionName", # required
    #     certificate: "CertificateString", # required
    #   }
    #   options = {}
    #   response = client.update_private_connection_certificate(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "PrivateConnectionName", # required
    #     type: "SELF_MANAGED" # One of: ["SELF_MANAGED", "SERVICE_MANAGED"], # required
    #     resource_gateway_id: "ResourceGatewayArn",
    #     host_address: "IpAddressOrDnsName",
    #     vpc_id: "VpcId",
    #     resource_configuration_id: "ResourceConfigurationArn",
    #     status: "ACTIVE" # One of: ["ACTIVE", "CREATE_IN_PROGRESS", "CREATE_FAILED", "DELETE_IN_PROGRESS", "DELETE_FAILED"], # required
    #     certificate_expiry_time: Time.now,
    #     dns_resolution: "PUBLIC" # One of: ["PUBLIC", "IN_VPC"],
    #     failure_message: "FailureMessage"
    #   }
    # @return [Types::UpdatePrivateConnectionCertificateOutput]
    def update_private_connection_certificate(params = {}, options = {})
      request = build_request(:update_private_connection_certificate, params)
      request.send_request(options)
    end

    # <p>Updates an existing recommendation with new content, status, or metadata</p>
    # @param [Hash, Types::UpdateRecommendationRequest] params
    # @option params [String] :agent_space_id
    #   <p>The unique identifier for the agent space containing the recommendation</p>
    # @option params [String] :recommendation_id
    #   <p>The unique identifier for the recommendation to update</p>
    # @option params [String] :status
    #   <p>Current status of the recommendation</p>
    # @option params [String] :additional_context
    #   <p>Additional context for recommendation</p>
    # @option params [String] :client_token
    #   <p>A unique token that ensures idempotency of the request</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_space_id: "AgentSpaceIdentifier", # required
    #     recommendation_id: "ResourceId", # required
    #     status: "PROPOSED" # One of: ["PROPOSED", "ACCEPTED", "REJECTED", "CLOSED", "COMPLETED", "UPDATE_IN_PROGRESS"],
    #     additional_context: "String",
    #     client_token: "String"
    #   }
    #   options = {}
    #   response = client.update_recommendation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     recommendation: { # required
    #       agent_space_arn: "String", # required
    #       recommendation_id: "String", # required
    #       task_id: "String", # required
    #       goal_id: "String",
    #       title: "String", # required
    #       content: { # required
    #         summary: "String", # required
    #         spec: "String"
    #       },
    #       status: "PROPOSED" # One of: ["PROPOSED", "ACCEPTED", "REJECTED", "CLOSED", "COMPLETED", "UPDATE_IN_PROGRESS"], # required
    #       priority: "HIGH" # One of: ["HIGH", "MEDIUM", "LOW"], # required
    #       goal_version: 1,
    #       additional_context: "String",
    #       rank_position: 1,
    #       ranked_at: Time.now,
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       version: 1, # required
    #     }
    #   }
    # @return [Types::UpdateRecommendationResponse]
    def update_recommendation(params = {}, options = {})
      request = build_request(:update_recommendation, params)
      request.send_request(options)
    end

    # <p>Updates the status of an existing Trigger</p>
    # @param [Hash, Types::UpdateTriggerRequest] params
    # @option params [String] :agent_space_id
    #   <p>The unique identifier for the agent space containing the Trigger</p>
    # @option params [String] :trigger_id
    #   <p>The unique identifier of the Trigger to update</p>
    # @option params [String] :status
    #   <p>The new status for the Trigger</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier used for idempotent Trigger update</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_space_id: "AgentSpaceIdentifier", # required
    #     trigger_id: "ResourceId", # required
    #     status: "TriggerStatus",
    #     client_token: "String"
    #   }
    #   options = {}
    #   response = client.update_trigger(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     trigger: { # required
    #       trigger_id: "ResourceId", # required
    #       agent_space_id: "AgentSpaceId", # required
    #       type: "TriggerType", # required
    #       condition: { # required
    #         # One of:
    #         schedule: {
    #           expression: "ScheduleExpression",
    #           spec: {
    #             # One of:
    #             cron: {
    #               expression: "ScheduleExpression", # required
    #             },
    #             time_range: {
    #               start_after: "TimeOfDay", # required
    #               start_before: "TimeOfDay", # required
    #               recurrence: { # required
    #                 # One of:
    #                 daily: {
    #                 },
    #                 weekly: {
    #                   day_of_week: "MONDAY" # One of: ["MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"], # required
    #                 },
    #                 monthly: {
    #                   day_of_month: 1, # required
    #                 }
    #               }
    #             }
    #           }
    #         }
    #       },
    #       action: ""null"", # required
    #       status: "TriggerStatus", # required
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #     }
    #   }
    # @return [Types::UpdateTriggerResponse]
    def update_trigger(params = {}, options = {})
      request = build_request(:update_trigger, params)
      request.send_request(options)
    end

    # <p>Validates an aws association and set status and returns a 204 No Content response on success.</p>
    # @param [Hash, Types::ValidateAwsAssociationsInput] params
    # @option params [String] :agent_space_id
    #   <p>The unique identifier of the AgentSpace</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_space_id: "AgentSpaceId", # required
    #   }
    #   options = {}
    #   response = client.validate_aws_associations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::ValidateAwsAssociationsOutput]
    def validate_aws_associations(params = {}, options = {})
      request = build_request(:validate_aws_associations, params)
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
      context[:gem_name] = 'aws-sdk-devopsagent'
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
