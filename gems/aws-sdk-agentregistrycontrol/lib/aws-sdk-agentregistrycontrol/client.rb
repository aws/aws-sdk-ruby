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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:agentregistrycontrol)

module Aws::AgentRegistryControl
  # An API client for Aws::AgentRegistryControl.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AgentRegistryControl
    @identifier = :agentregistrycontrol

    add_plugin(::Aws::AgentRegistryControl::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::AgentRegistryControl::EndpointProvider)
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

    # <p>Creates a new registry, a catalog that organizes registry records and defines their discovery authorization and record approval behavior. Creation is asynchronous: the registry begins in the CREATING status and becomes usable once it reaches READY.</p>
    # @param [Hash, Types::CreateRegistryRequest] params
    # @option params [String] :name
    #   <p>The name of the registry</p>
    # @option params [String] :description
    #   <p>The description of the registry</p>
    # @option params [Types::EncryptionConfiguration] :encryption_configuration
    #   <p>The optional server-side encryption configuration for the registry. When you provide this field, the specified customer-managed Amazon Web Services KMS key encrypts the registry's content. Omit this field to use an Amazon Web Services-owned encryption key. You cannot change the encryption configuration after registry creation.</p>
    # @option params [Types::DiscoveryConfiguration] :discovery_configuration
    #   <p>Discovery configuration for the registry</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure that the operation completes no more than one time. If this token matches a previous request, the service ignores the request, but does not return an error.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Tags to associate with the registry</p>
    # @option params [Types::ApprovalConfiguration] :approval_configuration
    #   <p>Approval configuration for registry records</p>
    # @option params [Types::CustomMetadataSchemaConfiguration] :custom_metadata_schema_configuration
    #   <p>The optional custom metadata schema configuration for the registry. When provided, registry records can carry structured metadata validated against this schema.</p>
    # @option params [Types::AutoDetectionConfiguration] :auto_detection_configuration
    #   <p>The optional auto-detection configuration for the registry. When provided, the registry is automatically populated with resources discovered according to the configuration. Omit this field for registries whose records are managed exclusively through the Agent Registry Control API.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "RegistryName", # required
    #     description: "Description",
    #     encryption_configuration: {
    #       kms_key_arn: "KmsKeyArn", # required
    #     },
    #     discovery_configuration: {
    #       authorizer_configuration: {
    #         # One of:
    #         custom_jwt_authorizer: {
    #           discovery_url: "DiscoveryUrl", # required
    #           allowed_audience: ["AllowedAudience"],
    #           allowed_clients: ["AllowedClient"],
    #           allowed_scopes: ["AllowedScopeType"],
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
    #           ]
    #         }
    #       },
    #       authorizer_type: "CUSTOM_JWT" # One of: ["CUSTOM_JWT", "AWS_IAM"]
    #     },
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     approval_configuration: {
    #       auto_approval_rules: ["APPROVE_ALL" # One of: ["APPROVE_ALL"]]
    #     },
    #     custom_metadata_schema_configuration: {
    #       default_schema: "CustomMetadataSchemaDefinition",
    #       record_type_schema_overrides: [
    #         {
    #           record_type: "MCP" # One of: ["MCP", "AGENT", "CUSTOM", "SKILL", "GATEWAY"], # required
    #           schema: "CustomMetadataSchemaDefinition", # required
    #         }
    #       ]
    #     },
    #     auto_detection_configuration: {
    #       scope: "ORGANIZATION" # One of: ["ORGANIZATION"], # required
    #       enabled: false, # required
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

    # <p>Creates a registry record within a registry. A registry record describes a discoverable resource, such as an MCP server, an agent, an agent skill, or a custom resource. Creation is asynchronous: the record is returned with the CREATING status while it is processed.</p>
    # @param [Hash, Types::CreateRegistryRecordRequest] params
    # @option params [String] :registry_id
    #   <p>The identifier of the registry in which to create the record (ARN or ID)</p>
    # @option params [String] :name
    #   <p>The name of the registry record</p>
    # @option params [String] :display_name
    #   <p>The human-readable display name of the registry record</p>
    # @option params [String] :description
    #   <p>The description of the registry record</p>
    # @option params [String] :record_type
    #   <p>The type of the registry record, which determines the descriptor format</p>
    # @option params [Types::Descriptors] :descriptors
    #   <p>The typed descriptor content for the registry record</p>
    # @option params [String] :record_version
    #   <p>The version of the registry record</p>
    # @option params [String] :client_token
    #   <p>Client token for idempotency</p>
    # @option params [Array<Types::Provenance>] :provenance
    #   <p>The provenance lineage entries for the registry record. This field is reserved for the Amazon Web Services Agent Registry auto-detection service principal. Requests that include this field from other callers are rejected.</p>
    # @option params [JSON] :custom_metadata
    #   <p>The custom metadata for the record. Values are strings or JSON booleans.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Tags to associate with the registry record</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     registry_id: "RegistryIdentifier", # required
    #     name: "RegistryRecordName", # required
    #     display_name: "RegistryRecordDisplayName",
    #     description: "Description",
    #     record_type: "MCP" # One of: ["MCP", "AGENT", "CUSTOM", "SKILL", "GATEWAY"], # required
    #     descriptors: { # required
    #       mcp_server: {
    #         data: "DescriptorData",
    #         data_schema_version: "DataSchemaVersion",
    #         additional_data: {
    #           tools: {
    #             data: "DescriptorData",
    #             data_schema_version: "DataSchemaVersion"
    #           }
    #         },
    #         source: {
    #           from_url: {
    #             url: "DescriptorSourceUrl", # required
    #             credential_provider_configurations: [
    #               {
    #                 credential_provider_type: "OAUTH" # One of: ["OAUTH", "IAM"], # required
    #                 credential_provider: { # required
    #                   # One of:
    #                   oauth_credential_provider: {
    #                     provider_arn: "CredentialProviderArn", # required
    #                     grant_type: "CLIENT_CREDENTIALS" # One of: ["CLIENT_CREDENTIALS"],
    #                     scopes: ["String"],
    #                     custom_parameters: {
    #                       "String" => "String"
    #                     }
    #                   },
    #                   iam_credential_provider: {
    #                     role_arn: "IamRoleArn",
    #                     service: "IamSigningServiceName",
    #                     region: "IamSigningRegion"
    #                   }
    #                 }
    #               }
    #             ]
    #           }
    #         }
    #       },
    #       a2a_agent_card: {
    #         data: "DescriptorData",
    #         data_schema_version: "DataSchemaVersion",
    #         source: {
    #           from_url: {
    #             url: "DescriptorSourceUrl", # required
    #             credential_provider_configurations: [
    #               {
    #                 credential_provider_type: "OAUTH" # One of: ["OAUTH", "IAM"], # required
    #                 credential_provider: { # required
    #                   # One of:
    #                   oauth_credential_provider: {
    #                     provider_arn: "CredentialProviderArn", # required
    #                     grant_type: "CLIENT_CREDENTIALS" # One of: ["CLIENT_CREDENTIALS"],
    #                     scopes: ["String"],
    #                     custom_parameters: {
    #                       "String" => "String"
    #                     }
    #                   },
    #                   iam_credential_provider: {
    #                     role_arn: "IamRoleArn",
    #                     service: "IamSigningServiceName",
    #                     region: "IamSigningRegion"
    #                   }
    #                 }
    #               }
    #             ]
    #           }
    #         }
    #       },
    #       agent_skills_definition: {
    #         data: "DescriptorData",
    #         data_schema_version: "DataSchemaVersion",
    #         additional_data: {
    #           skill_md: {
    #             data: "DescriptorData",
    #             data_schema_version: "DataSchemaVersion",
    #             source: {
    #               from_url: {
    #                 url: "DescriptorSourceUrl", # required
    #                 credential_provider_configurations: [
    #                   {
    #                     credential_provider_type: "OAUTH" # One of: ["OAUTH", "IAM"], # required
    #                     credential_provider: { # required
    #                       # One of:
    #                       oauth_credential_provider: {
    #                         provider_arn: "CredentialProviderArn", # required
    #                         grant_type: "CLIENT_CREDENTIALS" # One of: ["CLIENT_CREDENTIALS"],
    #                         scopes: ["String"],
    #                         custom_parameters: {
    #                           "String" => "String"
    #                         }
    #                       },
    #                       iam_credential_provider: {
    #                         role_arn: "IamRoleArn",
    #                         service: "IamSigningServiceName",
    #                         region: "IamSigningRegion"
    #                       }
    #                     }
    #                   }
    #                 ]
    #               }
    #             }
    #           }
    #         }
    #       },
    #       custom: {
    #         data: "DescriptorData"
    #       },
    #       http: {
    #         source: {
    #           from_url: {
    #             url: "DescriptorSourceUrl", # required
    #             credential_provider_configurations: [
    #               {
    #                 credential_provider_type: "OAUTH" # One of: ["OAUTH", "IAM"], # required
    #                 credential_provider: { # required
    #                   # One of:
    #                   oauth_credential_provider: {
    #                     provider_arn: "CredentialProviderArn", # required
    #                     grant_type: "CLIENT_CREDENTIALS" # One of: ["CLIENT_CREDENTIALS"],
    #                     scopes: ["String"],
    #                     custom_parameters: {
    #                       "String" => "String"
    #                     }
    #                   },
    #                   iam_credential_provider: {
    #                     role_arn: "IamRoleArn",
    #                     service: "IamSigningServiceName",
    #                     region: "IamSigningRegion"
    #                   }
    #                 }
    #               }
    #             ]
    #           }
    #         }
    #       },
    #       agui: {
    #         source: {
    #           from_url: {
    #             url: "DescriptorSourceUrl", # required
    #             credential_provider_configurations: [
    #               {
    #                 credential_provider_type: "OAUTH" # One of: ["OAUTH", "IAM"], # required
    #                 credential_provider: { # required
    #                   # One of:
    #                   oauth_credential_provider: {
    #                     provider_arn: "CredentialProviderArn", # required
    #                     grant_type: "CLIENT_CREDENTIALS" # One of: ["CLIENT_CREDENTIALS"],
    #                     scopes: ["String"],
    #                     custom_parameters: {
    #                       "String" => "String"
    #                     }
    #                   },
    #                   iam_credential_provider: {
    #                     role_arn: "IamRoleArn",
    #                     service: "IamSigningServiceName",
    #                     region: "IamSigningRegion"
    #                   }
    #                 }
    #               }
    #             ]
    #           }
    #         }
    #       }
    #     },
    #     record_version: "RegistryRecordVersion",
    #     client_token: "ClientToken",
    #     provenance: [
    #       {
    #         relation: "DETECTED_FROM" # One of: ["DETECTED_FROM"], # required
    #         source_id: "SourceId", # required
    #         source_type: "AWS::BedrockAgentCore::Runtime" # One of: ["AWS::BedrockAgentCore::Runtime", "AWS::BedrockAgentCore::Gateway"],
    #         source_details: {
    #           # One of:
    #           agentcore_runtime: {
    #             protocol_configuration: {
    #               server_protocol: "HTTP" # One of: ["HTTP", "A2A", "MCP", "AGUI"]
    #             },
    #             authorizer_configuration: {
    #               # One of:
    #               custom_jwt_authorizer: {
    #                 discovery_url: "DiscoveryUrl", # required
    #                 allowed_audience: ["AllowedAudience"],
    #                 allowed_clients: ["AllowedClient"],
    #                 allowed_scopes: ["AllowedScopeType"],
    #                 custom_claims: [
    #                   {
    #                     inbound_token_claim_name: "InboundTokenClaimNameType", # required
    #                     inbound_token_claim_value_type: "STRING" # One of: ["STRING", "STRING_ARRAY"], # required
    #                     authorizing_claim_match_value: { # required
    #                       claim_match_value: { # required
    #                         # One of:
    #                         match_value_string: "MatchValueString",
    #                         match_value_string_list: ["MatchValueString"]
    #                       },
    #                       claim_match_operator: "EQUALS" # One of: ["EQUALS", "CONTAINS", "CONTAINS_ANY"], # required
    #                     }
    #                   }
    #                 ],
    #                 private_endpoint: {
    #                   # One of:
    #                   self_managed_lattice_resource: {
    #                     # One of:
    #                     resource_configuration_identifier: "ResourceConfigurationIdentifier"
    #                   },
    #                   managed_vpc_resource: {
    #                     vpc_identifier: "VpcIdentifier", # required
    #                     subnet_ids: ["SubnetId"], # required
    #                     endpoint_ip_address_type: "IPV4" # One of: ["IPV4", "IPV6"], # required
    #                     security_group_ids: ["SecurityGroupIdentifier"],
    #                     tags: {
    #                       "TagKey" => "TagValue"
    #                     },
    #                     routing_domain: "RoutingDomain"
    #                   }
    #                 },
    #                 private_endpoint_overrides: [
    #                   {
    #                     domain: "PrivateEndpointOverrideDomain", # required
    #                     private_endpoint: { # required
    #                       # One of:
    #                       self_managed_lattice_resource: {
    #                         # One of:
    #                         resource_configuration_identifier: "ResourceConfigurationIdentifier"
    #                       },
    #                       managed_vpc_resource: {
    #                         vpc_identifier: "VpcIdentifier", # required
    #                         subnet_ids: ["SubnetId"], # required
    #                         endpoint_ip_address_type: "IPV4" # One of: ["IPV4", "IPV6"], # required
    #                         security_group_ids: ["SecurityGroupIdentifier"],
    #                         tags: {
    #                           "TagKey" => "TagValue"
    #                         },
    #                         routing_domain: "RoutingDomain"
    #                       }
    #                     }
    #                   }
    #                 ]
    #               }
    #             },
    #             workload_identity_details: {
    #               workload_identity_arn: "String", # required
    #             }
    #           },
    #           agentcore_gateway: {
    #             protocol_type: "MCP" # One of: ["MCP"],
    #             authorizer_type: "String",
    #             authorizer_configuration: {
    #               # One of:
    #               custom_jwt_authorizer: {
    #                 discovery_url: "DiscoveryUrl", # required
    #                 allowed_audience: ["AllowedAudience"],
    #                 allowed_clients: ["AllowedClient"],
    #                 allowed_scopes: ["AllowedScopeType"],
    #                 custom_claims: [
    #                   {
    #                     inbound_token_claim_name: "InboundTokenClaimNameType", # required
    #                     inbound_token_claim_value_type: "STRING" # One of: ["STRING", "STRING_ARRAY"], # required
    #                     authorizing_claim_match_value: { # required
    #                       claim_match_value: { # required
    #                         # One of:
    #                         match_value_string: "MatchValueString",
    #                         match_value_string_list: ["MatchValueString"]
    #                       },
    #                       claim_match_operator: "EQUALS" # One of: ["EQUALS", "CONTAINS", "CONTAINS_ANY"], # required
    #                     }
    #                   }
    #                 ],
    #                 private_endpoint: {
    #                   # One of:
    #                   self_managed_lattice_resource: {
    #                     # One of:
    #                     resource_configuration_identifier: "ResourceConfigurationIdentifier"
    #                   },
    #                   managed_vpc_resource: {
    #                     vpc_identifier: "VpcIdentifier", # required
    #                     subnet_ids: ["SubnetId"], # required
    #                     endpoint_ip_address_type: "IPV4" # One of: ["IPV4", "IPV6"], # required
    #                     security_group_ids: ["SecurityGroupIdentifier"],
    #                     tags: {
    #                       "TagKey" => "TagValue"
    #                     },
    #                     routing_domain: "RoutingDomain"
    #                   }
    #                 },
    #                 private_endpoint_overrides: [
    #                   {
    #                     domain: "PrivateEndpointOverrideDomain", # required
    #                     private_endpoint: { # required
    #                       # One of:
    #                       self_managed_lattice_resource: {
    #                         # One of:
    #                         resource_configuration_identifier: "ResourceConfigurationIdentifier"
    #                       },
    #                       managed_vpc_resource: {
    #                         vpc_identifier: "VpcIdentifier", # required
    #                         subnet_ids: ["SubnetId"], # required
    #                         endpoint_ip_address_type: "IPV4" # One of: ["IPV4", "IPV6"], # required
    #                         security_group_ids: ["SecurityGroupIdentifier"],
    #                         tags: {
    #                           "TagKey" => "TagValue"
    #                         },
    #                         routing_domain: "RoutingDomain"
    #                       }
    #                     }
    #                   }
    #                 ]
    #               }
    #             },
    #             workload_identity_details: {
    #               workload_identity_arn: "String", # required
    #             }
    #           }
    #         }
    #       }
    #     ],
    #     custom_metadata: ""null"",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
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

    # <p>Deletes a registry. Deletion is asynchronous: the registry transitions to the DELETING status and is removed along with its registry records.</p>
    # @param [Hash, Types::DeleteRegistryRequest] params
    # @option params [String] :registry_id
    #   <p>The identifier of the registry to delete (ARN or ID)</p>
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

    # <p>Deletes a registry record</p>
    # @param [Hash, Types::DeleteRegistryRecordRequest] params
    # @option params [String] :registry_id
    #   <p>The identifier of the registry containing the record (ARN or ID)</p>
    # @option params [String] :record_id
    #   <p>The identifier of the registry record to delete (ARN or ID)</p>
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

    # <p>Gets a registry by identifier (ARN or ID)</p>
    # @param [Hash, Types::GetRegistryRequest] params
    # @option params [String] :registry_id
    #   <p>The identifier of the registry to retrieve (ARN or ID)</p>
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
    #     discovery_configuration: {
    #       authorizer_configuration: {
    #         # One of:
    #         custom_jwt_authorizer: {
    #           discovery_url: "DiscoveryUrl", # required
    #           allowed_audience: ["AllowedAudience"],
    #           allowed_clients: ["AllowedClient"],
    #           allowed_scopes: ["AllowedScopeType"],
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
    #           ]
    #         }
    #       },
    #       authorizer_type: "CUSTOM_JWT" # One of: ["CUSTOM_JWT", "AWS_IAM"]
    #     },
    #     encryption_configuration: {
    #       kms_key_arn: "KmsKeyArn", # required
    #     },
    #     approval_configuration: {
    #       auto_approval_rules: ["APPROVE_ALL" # One of: ["APPROVE_ALL"]]
    #     },
    #     custom_metadata_schema_configuration: {
    #       default_schema: "CustomMetadataSchemaDefinition",
    #       record_type_schema_overrides: [
    #         {
    #           record_type: "MCP" # One of: ["MCP", "AGENT", "CUSTOM", "SKILL", "GATEWAY"], # required
    #           schema: "CustomMetadataSchemaDefinition", # required
    #         }
    #       ]
    #     },
    #     status: "CREATING" # One of: ["CREATING", "READY", "UPDATING", "CREATE_FAILED", "UPDATE_FAILED", "DELETING", "DELETE_FAILED"], # required
    #     status_reason: "String",
    #     auto_detection: {
    #       configuration: { # required
    #         scope: "ORGANIZATION" # One of: ["ORGANIZATION"], # required
    #         enabled: false, # required
    #       },
    #       status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"], # required
    #       status_reason: "String"
    #     },
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #   }
    # @return [Types::GetRegistryResponse]
    def get_registry(params = {}, options = {})
      request = build_request(:get_registry, params)
      request.send_request(options)
    end

    # <p>Retrieves the details of a registry record</p>
    # @param [Hash, Types::GetRegistryRecordRequest] params
    # @option params [String] :registry_id
    #   <p>The identifier of the registry containing the record (ARN or ID)</p>
    # @option params [String] :record_id
    #   <p>The identifier of the registry record to retrieve (ARN or ID)</p>
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
    #     display_name: "RegistryRecordDisplayName",
    #     description: "Description",
    #     record_type: "MCP" # One of: ["MCP", "AGENT", "CUSTOM", "SKILL", "GATEWAY"], # required
    #     descriptors: {
    #       mcp_server: {
    #         data: "DescriptorData",
    #         data_schema_version: "DataSchemaVersion",
    #         additional_data: {
    #           tools: {
    #             data: "DescriptorData",
    #             data_schema_version: "DataSchemaVersion"
    #           }
    #         },
    #         source: {
    #           from_url: {
    #             url: "DescriptorSourceUrl", # required
    #             credential_provider_configurations: [
    #               {
    #                 credential_provider_type: "OAUTH" # One of: ["OAUTH", "IAM"], # required
    #                 credential_provider: { # required
    #                   # One of:
    #                   oauth_credential_provider: {
    #                     provider_arn: "CredentialProviderArn", # required
    #                     grant_type: "CLIENT_CREDENTIALS" # One of: ["CLIENT_CREDENTIALS"],
    #                     scopes: ["String"],
    #                     custom_parameters: {
    #                       "String" => "String"
    #                     }
    #                   },
    #                   iam_credential_provider: {
    #                     role_arn: "IamRoleArn",
    #                     service: "IamSigningServiceName",
    #                     region: "IamSigningRegion"
    #                   }
    #                 }
    #               }
    #             ]
    #           }
    #         }
    #       },
    #       a2a_agent_card: {
    #         data: "DescriptorData",
    #         data_schema_version: "DataSchemaVersion",
    #         source: {
    #           from_url: {
    #             url: "DescriptorSourceUrl", # required
    #             credential_provider_configurations: [
    #               {
    #                 credential_provider_type: "OAUTH" # One of: ["OAUTH", "IAM"], # required
    #                 credential_provider: { # required
    #                   # One of:
    #                   oauth_credential_provider: {
    #                     provider_arn: "CredentialProviderArn", # required
    #                     grant_type: "CLIENT_CREDENTIALS" # One of: ["CLIENT_CREDENTIALS"],
    #                     scopes: ["String"],
    #                     custom_parameters: {
    #                       "String" => "String"
    #                     }
    #                   },
    #                   iam_credential_provider: {
    #                     role_arn: "IamRoleArn",
    #                     service: "IamSigningServiceName",
    #                     region: "IamSigningRegion"
    #                   }
    #                 }
    #               }
    #             ]
    #           }
    #         }
    #       },
    #       agent_skills_definition: {
    #         data: "DescriptorData",
    #         data_schema_version: "DataSchemaVersion",
    #         additional_data: {
    #           skill_md: {
    #             data: "DescriptorData",
    #             data_schema_version: "DataSchemaVersion",
    #             source: {
    #               from_url: {
    #                 url: "DescriptorSourceUrl", # required
    #                 credential_provider_configurations: [
    #                   {
    #                     credential_provider_type: "OAUTH" # One of: ["OAUTH", "IAM"], # required
    #                     credential_provider: { # required
    #                       # One of:
    #                       oauth_credential_provider: {
    #                         provider_arn: "CredentialProviderArn", # required
    #                         grant_type: "CLIENT_CREDENTIALS" # One of: ["CLIENT_CREDENTIALS"],
    #                         scopes: ["String"],
    #                         custom_parameters: {
    #                           "String" => "String"
    #                         }
    #                       },
    #                       iam_credential_provider: {
    #                         role_arn: "IamRoleArn",
    #                         service: "IamSigningServiceName",
    #                         region: "IamSigningRegion"
    #                       }
    #                     }
    #                   }
    #                 ]
    #               }
    #             }
    #           }
    #         }
    #       },
    #       custom: {
    #         data: "DescriptorData"
    #       },
    #       http: {
    #         source: {
    #           from_url: {
    #             url: "DescriptorSourceUrl", # required
    #             credential_provider_configurations: [
    #               {
    #                 credential_provider_type: "OAUTH" # One of: ["OAUTH", "IAM"], # required
    #                 credential_provider: { # required
    #                   # One of:
    #                   oauth_credential_provider: {
    #                     provider_arn: "CredentialProviderArn", # required
    #                     grant_type: "CLIENT_CREDENTIALS" # One of: ["CLIENT_CREDENTIALS"],
    #                     scopes: ["String"],
    #                     custom_parameters: {
    #                       "String" => "String"
    #                     }
    #                   },
    #                   iam_credential_provider: {
    #                     role_arn: "IamRoleArn",
    #                     service: "IamSigningServiceName",
    #                     region: "IamSigningRegion"
    #                   }
    #                 }
    #               }
    #             ]
    #           }
    #         }
    #       },
    #       agui: {
    #         source: {
    #           from_url: {
    #             url: "DescriptorSourceUrl", # required
    #             credential_provider_configurations: [
    #               {
    #                 credential_provider_type: "OAUTH" # One of: ["OAUTH", "IAM"], # required
    #                 credential_provider: { # required
    #                   # One of:
    #                   oauth_credential_provider: {
    #                     provider_arn: "CredentialProviderArn", # required
    #                     grant_type: "CLIENT_CREDENTIALS" # One of: ["CLIENT_CREDENTIALS"],
    #                     scopes: ["String"],
    #                     custom_parameters: {
    #                       "String" => "String"
    #                     }
    #                   },
    #                   iam_credential_provider: {
    #                     role_arn: "IamRoleArn",
    #                     service: "IamSigningServiceName",
    #                     region: "IamSigningRegion"
    #                   }
    #                 }
    #               }
    #             ]
    #           }
    #         }
    #       }
    #     },
    #     record_version: "RegistryRecordVersion",
    #     status: "DRAFT" # One of: ["DRAFT", "PENDING_APPROVAL", "APPROVED", "REJECTED", "DEPRECATED", "CREATING", "UPDATING", "CREATE_FAILED", "UPDATE_FAILED"], # required
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #     status_reason: "String",
    #     provenance: [
    #       {
    #         relation: "DETECTED_FROM" # One of: ["DETECTED_FROM"], # required
    #         source_id: "SourceId", # required
    #         source_type: "AWS::BedrockAgentCore::Runtime" # One of: ["AWS::BedrockAgentCore::Runtime", "AWS::BedrockAgentCore::Gateway"],
    #         source_details: {
    #           # One of:
    #           agentcore_runtime: {
    #             protocol_configuration: {
    #               server_protocol: "HTTP" # One of: ["HTTP", "A2A", "MCP", "AGUI"]
    #             },
    #             authorizer_configuration: {
    #               # One of:
    #               custom_jwt_authorizer: {
    #                 discovery_url: "DiscoveryUrl", # required
    #                 allowed_audience: ["AllowedAudience"],
    #                 allowed_clients: ["AllowedClient"],
    #                 allowed_scopes: ["AllowedScopeType"],
    #                 custom_claims: [
    #                   {
    #                     inbound_token_claim_name: "InboundTokenClaimNameType", # required
    #                     inbound_token_claim_value_type: "STRING" # One of: ["STRING", "STRING_ARRAY"], # required
    #                     authorizing_claim_match_value: { # required
    #                       claim_match_value: { # required
    #                         # One of:
    #                         match_value_string: "MatchValueString",
    #                         match_value_string_list: ["MatchValueString"]
    #                       },
    #                       claim_match_operator: "EQUALS" # One of: ["EQUALS", "CONTAINS", "CONTAINS_ANY"], # required
    #                     }
    #                   }
    #                 ],
    #                 private_endpoint: {
    #                   # One of:
    #                   self_managed_lattice_resource: {
    #                     # One of:
    #                     resource_configuration_identifier: "ResourceConfigurationIdentifier"
    #                   },
    #                   managed_vpc_resource: {
    #                     vpc_identifier: "VpcIdentifier", # required
    #                     subnet_ids: ["SubnetId"], # required
    #                     endpoint_ip_address_type: "IPV4" # One of: ["IPV4", "IPV6"], # required
    #                     security_group_ids: ["SecurityGroupIdentifier"],
    #                     tags: {
    #                       "TagKey" => "TagValue"
    #                     },
    #                     routing_domain: "RoutingDomain"
    #                   }
    #                 },
    #                 private_endpoint_overrides: [
    #                   {
    #                     domain: "PrivateEndpointOverrideDomain", # required
    #                     private_endpoint: { # required
    #                       # One of:
    #                       self_managed_lattice_resource: {
    #                         # One of:
    #                         resource_configuration_identifier: "ResourceConfigurationIdentifier"
    #                       },
    #                       managed_vpc_resource: {
    #                         vpc_identifier: "VpcIdentifier", # required
    #                         subnet_ids: ["SubnetId"], # required
    #                         endpoint_ip_address_type: "IPV4" # One of: ["IPV4", "IPV6"], # required
    #                         security_group_ids: ["SecurityGroupIdentifier"],
    #                         tags: {
    #                           "TagKey" => "TagValue"
    #                         },
    #                         routing_domain: "RoutingDomain"
    #                       }
    #                     }
    #                   }
    #                 ]
    #               }
    #             },
    #             workload_identity_details: {
    #               workload_identity_arn: "String", # required
    #             }
    #           },
    #           agentcore_gateway: {
    #             protocol_type: "MCP" # One of: ["MCP"],
    #             authorizer_type: "String",
    #             authorizer_configuration: {
    #               # One of:
    #               custom_jwt_authorizer: {
    #                 discovery_url: "DiscoveryUrl", # required
    #                 allowed_audience: ["AllowedAudience"],
    #                 allowed_clients: ["AllowedClient"],
    #                 allowed_scopes: ["AllowedScopeType"],
    #                 custom_claims: [
    #                   {
    #                     inbound_token_claim_name: "InboundTokenClaimNameType", # required
    #                     inbound_token_claim_value_type: "STRING" # One of: ["STRING", "STRING_ARRAY"], # required
    #                     authorizing_claim_match_value: { # required
    #                       claim_match_value: { # required
    #                         # One of:
    #                         match_value_string: "MatchValueString",
    #                         match_value_string_list: ["MatchValueString"]
    #                       },
    #                       claim_match_operator: "EQUALS" # One of: ["EQUALS", "CONTAINS", "CONTAINS_ANY"], # required
    #                     }
    #                   }
    #                 ],
    #                 private_endpoint: {
    #                   # One of:
    #                   self_managed_lattice_resource: {
    #                     # One of:
    #                     resource_configuration_identifier: "ResourceConfigurationIdentifier"
    #                   },
    #                   managed_vpc_resource: {
    #                     vpc_identifier: "VpcIdentifier", # required
    #                     subnet_ids: ["SubnetId"], # required
    #                     endpoint_ip_address_type: "IPV4" # One of: ["IPV4", "IPV6"], # required
    #                     security_group_ids: ["SecurityGroupIdentifier"],
    #                     tags: {
    #                       "TagKey" => "TagValue"
    #                     },
    #                     routing_domain: "RoutingDomain"
    #                   }
    #                 },
    #                 private_endpoint_overrides: [
    #                   {
    #                     domain: "PrivateEndpointOverrideDomain", # required
    #                     private_endpoint: { # required
    #                       # One of:
    #                       self_managed_lattice_resource: {
    #                         # One of:
    #                         resource_configuration_identifier: "ResourceConfigurationIdentifier"
    #                       },
    #                       managed_vpc_resource: {
    #                         vpc_identifier: "VpcIdentifier", # required
    #                         subnet_ids: ["SubnetId"], # required
    #                         endpoint_ip_address_type: "IPV4" # One of: ["IPV4", "IPV6"], # required
    #                         security_group_ids: ["SecurityGroupIdentifier"],
    #                         tags: {
    #                           "TagKey" => "TagValue"
    #                         },
    #                         routing_domain: "RoutingDomain"
    #                       }
    #                     }
    #                   }
    #                 ]
    #               }
    #             },
    #             workload_identity_details: {
    #               workload_identity_arn: "String", # required
    #             }
    #           }
    #         }
    #       }
    #     ],
    #     created_by_auto_detection: false,
    #     created_by: "CreatorAccountId",
    #     custom_metadata: ""null"",
    #     custom_metadata_schema_compliance_status: "COMPLIANT" # One of: ["COMPLIANT", "NON_COMPLIANT"]
    #   }
    # @return [Types::GetRegistryRecordResponse]
    def get_registry_record(params = {}, options = {})
      request = build_request(:get_registry_record, params)
      request.send_request(options)
    end

    # <p>Lists the registries in the caller's account and Region, with optional filtering by status and discovery authorizer type</p>
    # @param [Hash, Types::ListRegistriesRequest] params
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to return</p>
    # @option params [String] :next_token
    #   <p>Token for pagination</p>
    # @option params [Array<Types::RegistryFilter>] :filters
    #   <p>Filters to apply to the registry list</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken",
    #     filters: [
    #       {
    #         name: "status" # One of: ["status", "discoveryConfiguration.authorizerType"], # required
    #         values: ["FilterValue"], # required
    #       }
    #     ]
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
    #         discovery_configuration: {
    #           authorizer_configuration: {
    #             # One of:
    #             custom_jwt_authorizer: {
    #               discovery_url: "DiscoveryUrl", # required
    #               allowed_audience: ["AllowedAudience"],
    #               allowed_clients: ["AllowedClient"],
    #               allowed_scopes: ["AllowedScopeType"],
    #               custom_claims: [
    #                 {
    #                   inbound_token_claim_name: "InboundTokenClaimNameType", # required
    #                   inbound_token_claim_value_type: "STRING" # One of: ["STRING", "STRING_ARRAY"], # required
    #                   authorizing_claim_match_value: { # required
    #                     claim_match_value: { # required
    #                       # One of:
    #                       match_value_string: "MatchValueString",
    #                       match_value_string_list: ["MatchValueString"]
    #                     },
    #                     claim_match_operator: "EQUALS" # One of: ["EQUALS", "CONTAINS", "CONTAINS_ANY"], # required
    #                   }
    #                 }
    #               ],
    #               private_endpoint: {
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
    #               },
    #               private_endpoint_overrides: [
    #                 {
    #                   domain: "PrivateEndpointOverrideDomain", # required
    #                   private_endpoint: { # required
    #                     # One of:
    #                     self_managed_lattice_resource: {
    #                       # One of:
    #                       resource_configuration_identifier: "ResourceConfigurationIdentifier"
    #                     },
    #                     managed_vpc_resource: {
    #                       vpc_identifier: "VpcIdentifier", # required
    #                       subnet_ids: ["SubnetId"], # required
    #                       endpoint_ip_address_type: "IPV4" # One of: ["IPV4", "IPV6"], # required
    #                       security_group_ids: ["SecurityGroupIdentifier"],
    #                       tags: {
    #                         "TagKey" => "TagValue"
    #                       },
    #                       routing_domain: "RoutingDomain"
    #                     }
    #                   }
    #                 }
    #               ]
    #             }
    #           },
    #           authorizer_type: "CUSTOM_JWT" # One of: ["CUSTOM_JWT", "AWS_IAM"]
    #         },
    #         status: "CREATING" # One of: ["CREATING", "READY", "UPDATING", "CREATE_FAILED", "UPDATE_FAILED", "DELETING", "DELETE_FAILED"], # required
    #         status_reason: "String",
    #         auto_detection: {
    #           configuration: { # required
    #             scope: "ORGANIZATION" # One of: ["ORGANIZATION"], # required
    #             enabled: false, # required
    #           },
    #           status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"], # required
    #           status_reason: "String"
    #         },
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

    # <p>Lists the registry records within a registry, with optional filtering by name, status, and record type</p>
    # @param [Hash, Types::ListRegistryRecordsRequest] params
    # @option params [String] :registry_id
    #   <p>The identifier of the registry to list records from (ARN or ID)</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of records to return</p>
    # @option params [String] :next_token
    #   <p>Token for pagination</p>
    # @option params [Array<Types::RegistryRecordFilter>] :filters
    #   <p>Filters to apply to the registry record list</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     registry_id: "RegistryIdentifier", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #     filters: [
    #       {
    #         name: "name" # One of: ["name", "status", "recordType"], # required
    #         values: ["FilterValue"], # required
    #       }
    #     ]
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
    #         display_name: "RegistryRecordDisplayName",
    #         description: "Description",
    #         record_type: "MCP" # One of: ["MCP", "AGENT", "CUSTOM", "SKILL", "GATEWAY"], # required
    #         record_version: "RegistryRecordVersion", # required
    #         status: "DRAFT" # One of: ["DRAFT", "PENDING_APPROVAL", "APPROVED", "REJECTED", "DEPRECATED", "CREATING", "UPDATING", "CREATE_FAILED", "UPDATE_FAILED"], # required
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #         created_by_auto_detection: false,
    #         created_by: "CreatorAccountId",
    #         provenance_summary_list: [
    #           {
    #             relation: "DETECTED_FROM" # One of: ["DETECTED_FROM"], # required
    #             source_id: "SourceId", # required
    #             source_type: "AWS::BedrockAgentCore::Runtime" # One of: ["AWS::BedrockAgentCore::Runtime", "AWS::BedrockAgentCore::Gateway"]
    #           }
    #         ],
    #         custom_metadata_schema_compliance_status: "COMPLIANT" # One of: ["COMPLIANT", "NON_COMPLIANT"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListRegistryRecordsResponse]
    def list_registry_records(params = {}, options = {})
      request = build_request(:list_registry_records, params)
      request.send_request(options)
    end

    # <p>Lists the tags associated with the specified Amazon Web Services Agent Registry resource. Returns the current tag key-value pairs on the resource.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to list tags for. Supported resources include registries and registry records.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
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

    # <p>Submits a DRAFT registry record for approval, moving it into the registry's approval workflow. Depending on the registry's approval configuration, the record is either auto-approved or set to PENDING_APPROVAL for a curator to approve or reject.</p>
    # @param [Hash, Types::SubmitRegistryRecordForApprovalRequest] params
    # @option params [String] :registry_id
    #   <p>The identifier of the registry containing the record (ARN or ID)</p>
    # @option params [String] :record_id
    #   <p>The identifier of the registry record to submit for approval (ARN or ID)</p>
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

    # <p>Adds or overwrites one or more tags for the specified Amazon Web Services Agent Registry resource. Tags are key-value pairs that you can use to categorize and manage Amazon Web Services resources. If a tag with the same key already exists on the resource, the service replaces its value with the value you specify.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to tag. Supported resources include registries and registry records.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to apply to the resource, as a map of tag keys to tag values. Tag keys must be unique within the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
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

    # <p>Removes one or more tags from the specified Amazon Web Services Agent Registry resource. The operation removes only the tags whose keys you supply; other tags on the resource remain unchanged.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to remove tags from. Supported resources include registries and registry records.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The keys of the tags to remove from the resource. Tags with keys not included in this list remain on the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
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

    # <p>Updates an existing registry. This operation uses PATCH semantics: specify only the fields you want to change, and omit the rest to leave them unchanged. Updates are applied asynchronously and the registry transitions to the UPDATING status while they are processed.</p>
    # @param [Hash, Types::UpdateRegistryRequest] params
    # @option params [String] :registry_id
    #   <p>The identifier of the registry to update (ARN or ID)</p>
    # @option params [String] :name
    #   <p>The updated name of the registry</p>
    # @option params [Types::UpdatedDescription] :description
    #   <p>The updated description of the registry</p>
    # @option params [Types::UpdatedDiscoveryConfiguration] :discovery_configuration
    #   <p>The updated discovery configuration. Changing the discovery authorization can break existing consumers that rely on the previous authorization type.</p>
    # @option params [Types::UpdatedApprovalConfiguration] :approval_configuration
    #   <p>The updated approval configuration. The change applies only to records that move to PENDING_APPROVAL after the update; records already in PENDING_APPROVAL are unaffected.</p>
    # @option params [Types::UpdatedCustomMetadataSchemaConfiguration] :custom_metadata_schema_configuration
    #   <p>The new custom metadata schema configuration, which replaces the current one. You can add fields and allowed values, but you can't remove a field or an allowed value, or change a field's type.</p>
    # @option params [Types::UpdatedAutoDetectionConfiguration] :auto_detection_configuration
    #   <p>The updated auto-detection configuration for the registry, with PATCH semantics. Omit this field to leave the current configuration unchanged. Supply an empty wrapper to unset it. Supply <code>optionalValue</code> to replace it.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     registry_id: "RegistryIdentifier", # required
    #     name: "RegistryName",
    #     description: {
    #       optional_value: "Description"
    #     },
    #     discovery_configuration: {
    #       authorizer_configuration: {
    #         optional_value: {
    #           # One of:
    #           custom_jwt_authorizer: {
    #             discovery_url: "DiscoveryUrl", # required
    #             allowed_audience: ["AllowedAudience"],
    #             allowed_clients: ["AllowedClient"],
    #             allowed_scopes: ["AllowedScopeType"],
    #             custom_claims: [
    #               {
    #                 inbound_token_claim_name: "InboundTokenClaimNameType", # required
    #                 inbound_token_claim_value_type: "STRING" # One of: ["STRING", "STRING_ARRAY"], # required
    #                 authorizing_claim_match_value: { # required
    #                   claim_match_value: { # required
    #                     # One of:
    #                     match_value_string: "MatchValueString",
    #                     match_value_string_list: ["MatchValueString"]
    #                   },
    #                   claim_match_operator: "EQUALS" # One of: ["EQUALS", "CONTAINS", "CONTAINS_ANY"], # required
    #                 }
    #               }
    #             ],
    #             private_endpoint: {
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
    #             },
    #             private_endpoint_overrides: [
    #               {
    #                 domain: "PrivateEndpointOverrideDomain", # required
    #                 private_endpoint: { # required
    #                   # One of:
    #                   self_managed_lattice_resource: {
    #                     # One of:
    #                     resource_configuration_identifier: "ResourceConfigurationIdentifier"
    #                   },
    #                   managed_vpc_resource: {
    #                     vpc_identifier: "VpcIdentifier", # required
    #                     subnet_ids: ["SubnetId"], # required
    #                     endpoint_ip_address_type: "IPV4" # One of: ["IPV4", "IPV6"], # required
    #                     security_group_ids: ["SecurityGroupIdentifier"],
    #                     tags: {
    #                       "TagKey" => "TagValue"
    #                     },
    #                     routing_domain: "RoutingDomain"
    #                   }
    #                 }
    #               }
    #             ]
    #           }
    #         }
    #       }
    #     },
    #     approval_configuration: {
    #       optional_value: {
    #         auto_approval_rules: ["APPROVE_ALL" # One of: ["APPROVE_ALL"]]
    #       }
    #     },
    #     custom_metadata_schema_configuration: {
    #       optional_value: {
    #         default_schema: "CustomMetadataSchemaDefinition",
    #         record_type_schema_overrides: [
    #           {
    #             record_type: "MCP" # One of: ["MCP", "AGENT", "CUSTOM", "SKILL", "GATEWAY"], # required
    #             schema: "CustomMetadataSchemaDefinition", # required
    #           }
    #         ]
    #       }
    #     },
    #     auto_detection_configuration: {
    #       optional_value: {
    #         scope: "ORGANIZATION" # One of: ["ORGANIZATION"], # required
    #         enabled: false, # required
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
    #     discovery_configuration: {
    #       authorizer_configuration: {
    #         # One of:
    #         custom_jwt_authorizer: {
    #           discovery_url: "DiscoveryUrl", # required
    #           allowed_audience: ["AllowedAudience"],
    #           allowed_clients: ["AllowedClient"],
    #           allowed_scopes: ["AllowedScopeType"],
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
    #           ]
    #         }
    #       },
    #       authorizer_type: "CUSTOM_JWT" # One of: ["CUSTOM_JWT", "AWS_IAM"]
    #     },
    #     encryption_configuration: {
    #       kms_key_arn: "KmsKeyArn", # required
    #     },
    #     approval_configuration: {
    #       auto_approval_rules: ["APPROVE_ALL" # One of: ["APPROVE_ALL"]]
    #     },
    #     custom_metadata_schema_configuration: {
    #       default_schema: "CustomMetadataSchemaDefinition",
    #       record_type_schema_overrides: [
    #         {
    #           record_type: "MCP" # One of: ["MCP", "AGENT", "CUSTOM", "SKILL", "GATEWAY"], # required
    #           schema: "CustomMetadataSchemaDefinition", # required
    #         }
    #       ]
    #     },
    #     status: "CREATING" # One of: ["CREATING", "READY", "UPDATING", "CREATE_FAILED", "UPDATE_FAILED", "DELETING", "DELETE_FAILED"], # required
    #     status_reason: "String",
    #     auto_detection: {
    #       configuration: { # required
    #         scope: "ORGANIZATION" # One of: ["ORGANIZATION"], # required
    #         enabled: false, # required
    #       },
    #       status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"], # required
    #       status_reason: "String"
    #     },
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #   }
    # @return [Types::UpdateRegistryResponse]
    def update_registry(params = {}, options = {})
      request = build_request(:update_registry, params)
      request.send_request(options)
    end

    # <p>Updates a registry record. The update is asynchronous: the record is returned with the UPDATING status while it is processed. Fields that use update wrappers follow PATCH semantics: omit the field to leave it unchanged.</p>
    # @param [Hash, Types::UpdateRegistryRecordRequest] params
    # @option params [String] :registry_id
    #   <p>The identifier of the registry containing the record (ARN or ID)</p>
    # @option params [String] :record_id
    #   <p>The identifier of the registry record to update (ARN or ID)</p>
    # @option params [String] :name
    #   <p>The updated name of the registry record. Omit to leave the name unchanged.</p>
    # @option params [Types::UpdatedDisplayName] :display_name
    #   <p>The updated display name of the registry record. Omit to leave the display name unchanged; provide an empty wrapper to unset it.</p>
    # @option params [Types::UpdatedDescription] :description
    #   <p>The updated description of the registry record. Omit to leave the description unchanged; provide an empty wrapper to unset it.</p>
    # @option params [String] :record_type
    #   <p>The updated type of the registry record. Omit to leave the record type unchanged.</p>
    # @option params [Types::UpdatedDescriptors] :descriptors
    #   <p>The updated typed descriptor content for the registry record. Omit to leave the descriptors unchanged.</p>
    # @option params [String] :record_version
    #   <p>The updated version of the registry record. Omit to leave the version unchanged.</p>
    # @option params [Types::UpdatedCustomMetadataMap] :custom_metadata
    #   <p>The updated custom metadata for the registry record. Values can be strings (maximum 128 characters) or native JSON booleans (<code>true</code> or <code>false</code>). Omit to leave the existing metadata unchanged. Supply the wrapper with a full replacement set to update, or with a null value to clear all metadata.</p>
    # @option params [Boolean] :trigger_synchronization
    #   <p>Whether to trigger synchronization of the record's descriptor content from its source</p>
    # @option params [Array<Types::Provenance>] :provenance
    #   <p>The provenance lineage re-assertion for the registry record. This field is reserved for the Amazon Web Services Agent Registry auto-detection service principal. Requests that include this field from other callers are rejected. The source identity of an existing lineage is immutable; a re-assertion may only refresh the source details.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     registry_id: "RegistryIdentifier", # required
    #     record_id: "RecordIdentifier", # required
    #     name: "RegistryRecordName",
    #     display_name: {
    #       optional_value: "RegistryRecordDisplayName"
    #     },
    #     description: {
    #       optional_value: "Description"
    #     },
    #     record_type: "MCP" # One of: ["MCP", "AGENT", "CUSTOM", "SKILL", "GATEWAY"],
    #     descriptors: {
    #       optional_value: {
    #         mcp_server: {
    #           optional_value: {
    #             data: {
    #               optional_value: "DescriptorData"
    #             },
    #             data_schema_version: {
    #               optional_value: "DataSchemaVersion"
    #             },
    #             source: {
    #               optional_value: {
    #                 from_url: {
    #                   url: "DescriptorSourceUrl", # required
    #                   credential_provider_configurations: [
    #                     {
    #                       credential_provider_type: "OAUTH" # One of: ["OAUTH", "IAM"], # required
    #                       credential_provider: { # required
    #                         # One of:
    #                         oauth_credential_provider: {
    #                           provider_arn: "CredentialProviderArn", # required
    #                           grant_type: "CLIENT_CREDENTIALS" # One of: ["CLIENT_CREDENTIALS"],
    #                           scopes: ["String"],
    #                           custom_parameters: {
    #                             "String" => "String"
    #                           }
    #                         },
    #                         iam_credential_provider: {
    #                           role_arn: "IamRoleArn",
    #                           service: "IamSigningServiceName",
    #                           region: "IamSigningRegion"
    #                         }
    #                       }
    #                     }
    #                   ]
    #                 }
    #               }
    #             },
    #             additional_data: {
    #               optional_value: {
    #                 tools: {
    #                   optional_value: {
    #                     data: {
    #                       optional_value: "DescriptorData"
    #                     },
    #                     data_schema_version: {
    #                       optional_value: "DataSchemaVersion"
    #                     }
    #                   }
    #                 }
    #               }
    #             }
    #           }
    #         },
    #         a2a_agent_card: {
    #           optional_value: {
    #             data: {
    #               optional_value: "DescriptorData"
    #             },
    #             data_schema_version: {
    #               optional_value: "DataSchemaVersion"
    #             },
    #             source: {
    #               optional_value: {
    #                 from_url: {
    #                   url: "DescriptorSourceUrl", # required
    #                   credential_provider_configurations: [
    #                     {
    #                       credential_provider_type: "OAUTH" # One of: ["OAUTH", "IAM"], # required
    #                       credential_provider: { # required
    #                         # One of:
    #                         oauth_credential_provider: {
    #                           provider_arn: "CredentialProviderArn", # required
    #                           grant_type: "CLIENT_CREDENTIALS" # One of: ["CLIENT_CREDENTIALS"],
    #                           scopes: ["String"],
    #                           custom_parameters: {
    #                             "String" => "String"
    #                           }
    #                         },
    #                         iam_credential_provider: {
    #                           role_arn: "IamRoleArn",
    #                           service: "IamSigningServiceName",
    #                           region: "IamSigningRegion"
    #                         }
    #                       }
    #                     }
    #                   ]
    #                 }
    #               }
    #             }
    #           }
    #         },
    #         agent_skills_definition: {
    #           optional_value: {
    #             data: {
    #               optional_value: "DescriptorData"
    #             },
    #             data_schema_version: {
    #               optional_value: "DataSchemaVersion"
    #             },
    #             additional_data: {
    #               optional_value: {
    #                 skill_md: {
    #                   optional_value: {
    #                     data: {
    #                       optional_value: "DescriptorData"
    #                     },
    #                     data_schema_version: {
    #                       optional_value: "DataSchemaVersion"
    #                     },
    #                     source: {
    #                       optional_value: {
    #                         from_url: {
    #                           url: "DescriptorSourceUrl", # required
    #                           credential_provider_configurations: [
    #                             {
    #                               credential_provider_type: "OAUTH" # One of: ["OAUTH", "IAM"], # required
    #                               credential_provider: { # required
    #                                 # One of:
    #                                 oauth_credential_provider: {
    #                                   provider_arn: "CredentialProviderArn", # required
    #                                   grant_type: "CLIENT_CREDENTIALS" # One of: ["CLIENT_CREDENTIALS"],
    #                                   scopes: ["String"],
    #                                   custom_parameters: {
    #                                     "String" => "String"
    #                                   }
    #                                 },
    #                                 iam_credential_provider: {
    #                                   role_arn: "IamRoleArn",
    #                                   service: "IamSigningServiceName",
    #                                   region: "IamSigningRegion"
    #                                 }
    #                               }
    #                             }
    #                           ]
    #                         }
    #                       }
    #                     }
    #                   }
    #                 }
    #               }
    #             }
    #           }
    #         },
    #         custom: {
    #           optional_value: {
    #             data: {
    #               optional_value: "DescriptorData"
    #             }
    #           }
    #         },
    #         http: {
    #           optional_value: {
    #             source: {
    #               optional_value: {
    #                 from_url: {
    #                   url: "DescriptorSourceUrl", # required
    #                   credential_provider_configurations: [
    #                     {
    #                       credential_provider_type: "OAUTH" # One of: ["OAUTH", "IAM"], # required
    #                       credential_provider: { # required
    #                         # One of:
    #                         oauth_credential_provider: {
    #                           provider_arn: "CredentialProviderArn", # required
    #                           grant_type: "CLIENT_CREDENTIALS" # One of: ["CLIENT_CREDENTIALS"],
    #                           scopes: ["String"],
    #                           custom_parameters: {
    #                             "String" => "String"
    #                           }
    #                         },
    #                         iam_credential_provider: {
    #                           role_arn: "IamRoleArn",
    #                           service: "IamSigningServiceName",
    #                           region: "IamSigningRegion"
    #                         }
    #                       }
    #                     }
    #                   ]
    #                 }
    #               }
    #             }
    #           }
    #         },
    #         agui: {
    #           optional_value: {
    #             source: {
    #               optional_value: {
    #                 from_url: {
    #                   url: "DescriptorSourceUrl", # required
    #                   credential_provider_configurations: [
    #                     {
    #                       credential_provider_type: "OAUTH" # One of: ["OAUTH", "IAM"], # required
    #                       credential_provider: { # required
    #                         # One of:
    #                         oauth_credential_provider: {
    #                           provider_arn: "CredentialProviderArn", # required
    #                           grant_type: "CLIENT_CREDENTIALS" # One of: ["CLIENT_CREDENTIALS"],
    #                           scopes: ["String"],
    #                           custom_parameters: {
    #                             "String" => "String"
    #                           }
    #                         },
    #                         iam_credential_provider: {
    #                           role_arn: "IamRoleArn",
    #                           service: "IamSigningServiceName",
    #                           region: "IamSigningRegion"
    #                         }
    #                       }
    #                     }
    #                   ]
    #                 }
    #               }
    #             }
    #           }
    #         }
    #       }
    #     },
    #     record_version: "RegistryRecordVersion",
    #     custom_metadata: {
    #       optional_value: ""null""
    #     },
    #     trigger_synchronization: false,
    #     provenance: [
    #       {
    #         relation: "DETECTED_FROM" # One of: ["DETECTED_FROM"], # required
    #         source_id: "SourceId", # required
    #         source_type: "AWS::BedrockAgentCore::Runtime" # One of: ["AWS::BedrockAgentCore::Runtime", "AWS::BedrockAgentCore::Gateway"],
    #         source_details: {
    #           # One of:
    #           agentcore_runtime: {
    #             protocol_configuration: {
    #               server_protocol: "HTTP" # One of: ["HTTP", "A2A", "MCP", "AGUI"]
    #             },
    #             authorizer_configuration: {
    #               # One of:
    #               custom_jwt_authorizer: {
    #                 discovery_url: "DiscoveryUrl", # required
    #                 allowed_audience: ["AllowedAudience"],
    #                 allowed_clients: ["AllowedClient"],
    #                 allowed_scopes: ["AllowedScopeType"],
    #                 custom_claims: [
    #                   {
    #                     inbound_token_claim_name: "InboundTokenClaimNameType", # required
    #                     inbound_token_claim_value_type: "STRING" # One of: ["STRING", "STRING_ARRAY"], # required
    #                     authorizing_claim_match_value: { # required
    #                       claim_match_value: { # required
    #                         # One of:
    #                         match_value_string: "MatchValueString",
    #                         match_value_string_list: ["MatchValueString"]
    #                       },
    #                       claim_match_operator: "EQUALS" # One of: ["EQUALS", "CONTAINS", "CONTAINS_ANY"], # required
    #                     }
    #                   }
    #                 ],
    #                 private_endpoint: {
    #                   # One of:
    #                   self_managed_lattice_resource: {
    #                     # One of:
    #                     resource_configuration_identifier: "ResourceConfigurationIdentifier"
    #                   },
    #                   managed_vpc_resource: {
    #                     vpc_identifier: "VpcIdentifier", # required
    #                     subnet_ids: ["SubnetId"], # required
    #                     endpoint_ip_address_type: "IPV4" # One of: ["IPV4", "IPV6"], # required
    #                     security_group_ids: ["SecurityGroupIdentifier"],
    #                     tags: {
    #                       "TagKey" => "TagValue"
    #                     },
    #                     routing_domain: "RoutingDomain"
    #                   }
    #                 },
    #                 private_endpoint_overrides: [
    #                   {
    #                     domain: "PrivateEndpointOverrideDomain", # required
    #                     private_endpoint: { # required
    #                       # One of:
    #                       self_managed_lattice_resource: {
    #                         # One of:
    #                         resource_configuration_identifier: "ResourceConfigurationIdentifier"
    #                       },
    #                       managed_vpc_resource: {
    #                         vpc_identifier: "VpcIdentifier", # required
    #                         subnet_ids: ["SubnetId"], # required
    #                         endpoint_ip_address_type: "IPV4" # One of: ["IPV4", "IPV6"], # required
    #                         security_group_ids: ["SecurityGroupIdentifier"],
    #                         tags: {
    #                           "TagKey" => "TagValue"
    #                         },
    #                         routing_domain: "RoutingDomain"
    #                       }
    #                     }
    #                   }
    #                 ]
    #               }
    #             },
    #             workload_identity_details: {
    #               workload_identity_arn: "String", # required
    #             }
    #           },
    #           agentcore_gateway: {
    #             protocol_type: "MCP" # One of: ["MCP"],
    #             authorizer_type: "String",
    #             authorizer_configuration: {
    #               # One of:
    #               custom_jwt_authorizer: {
    #                 discovery_url: "DiscoveryUrl", # required
    #                 allowed_audience: ["AllowedAudience"],
    #                 allowed_clients: ["AllowedClient"],
    #                 allowed_scopes: ["AllowedScopeType"],
    #                 custom_claims: [
    #                   {
    #                     inbound_token_claim_name: "InboundTokenClaimNameType", # required
    #                     inbound_token_claim_value_type: "STRING" # One of: ["STRING", "STRING_ARRAY"], # required
    #                     authorizing_claim_match_value: { # required
    #                       claim_match_value: { # required
    #                         # One of:
    #                         match_value_string: "MatchValueString",
    #                         match_value_string_list: ["MatchValueString"]
    #                       },
    #                       claim_match_operator: "EQUALS" # One of: ["EQUALS", "CONTAINS", "CONTAINS_ANY"], # required
    #                     }
    #                   }
    #                 ],
    #                 private_endpoint: {
    #                   # One of:
    #                   self_managed_lattice_resource: {
    #                     # One of:
    #                     resource_configuration_identifier: "ResourceConfigurationIdentifier"
    #                   },
    #                   managed_vpc_resource: {
    #                     vpc_identifier: "VpcIdentifier", # required
    #                     subnet_ids: ["SubnetId"], # required
    #                     endpoint_ip_address_type: "IPV4" # One of: ["IPV4", "IPV6"], # required
    #                     security_group_ids: ["SecurityGroupIdentifier"],
    #                     tags: {
    #                       "TagKey" => "TagValue"
    #                     },
    #                     routing_domain: "RoutingDomain"
    #                   }
    #                 },
    #                 private_endpoint_overrides: [
    #                   {
    #                     domain: "PrivateEndpointOverrideDomain", # required
    #                     private_endpoint: { # required
    #                       # One of:
    #                       self_managed_lattice_resource: {
    #                         # One of:
    #                         resource_configuration_identifier: "ResourceConfigurationIdentifier"
    #                       },
    #                       managed_vpc_resource: {
    #                         vpc_identifier: "VpcIdentifier", # required
    #                         subnet_ids: ["SubnetId"], # required
    #                         endpoint_ip_address_type: "IPV4" # One of: ["IPV4", "IPV6"], # required
    #                         security_group_ids: ["SecurityGroupIdentifier"],
    #                         tags: {
    #                           "TagKey" => "TagValue"
    #                         },
    #                         routing_domain: "RoutingDomain"
    #                       }
    #                     }
    #                   }
    #                 ]
    #               }
    #             },
    #             workload_identity_details: {
    #               workload_identity_arn: "String", # required
    #             }
    #           }
    #         }
    #       }
    #     ]
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
    #     display_name: "RegistryRecordDisplayName",
    #     description: "Description",
    #     record_type: "MCP" # One of: ["MCP", "AGENT", "CUSTOM", "SKILL", "GATEWAY"], # required
    #     descriptors: {
    #       mcp_server: {
    #         data: "DescriptorData",
    #         data_schema_version: "DataSchemaVersion",
    #         additional_data: {
    #           tools: {
    #             data: "DescriptorData",
    #             data_schema_version: "DataSchemaVersion"
    #           }
    #         },
    #         source: {
    #           from_url: {
    #             url: "DescriptorSourceUrl", # required
    #             credential_provider_configurations: [
    #               {
    #                 credential_provider_type: "OAUTH" # One of: ["OAUTH", "IAM"], # required
    #                 credential_provider: { # required
    #                   # One of:
    #                   oauth_credential_provider: {
    #                     provider_arn: "CredentialProviderArn", # required
    #                     grant_type: "CLIENT_CREDENTIALS" # One of: ["CLIENT_CREDENTIALS"],
    #                     scopes: ["String"],
    #                     custom_parameters: {
    #                       "String" => "String"
    #                     }
    #                   },
    #                   iam_credential_provider: {
    #                     role_arn: "IamRoleArn",
    #                     service: "IamSigningServiceName",
    #                     region: "IamSigningRegion"
    #                   }
    #                 }
    #               }
    #             ]
    #           }
    #         }
    #       },
    #       a2a_agent_card: {
    #         data: "DescriptorData",
    #         data_schema_version: "DataSchemaVersion",
    #         source: {
    #           from_url: {
    #             url: "DescriptorSourceUrl", # required
    #             credential_provider_configurations: [
    #               {
    #                 credential_provider_type: "OAUTH" # One of: ["OAUTH", "IAM"], # required
    #                 credential_provider: { # required
    #                   # One of:
    #                   oauth_credential_provider: {
    #                     provider_arn: "CredentialProviderArn", # required
    #                     grant_type: "CLIENT_CREDENTIALS" # One of: ["CLIENT_CREDENTIALS"],
    #                     scopes: ["String"],
    #                     custom_parameters: {
    #                       "String" => "String"
    #                     }
    #                   },
    #                   iam_credential_provider: {
    #                     role_arn: "IamRoleArn",
    #                     service: "IamSigningServiceName",
    #                     region: "IamSigningRegion"
    #                   }
    #                 }
    #               }
    #             ]
    #           }
    #         }
    #       },
    #       agent_skills_definition: {
    #         data: "DescriptorData",
    #         data_schema_version: "DataSchemaVersion",
    #         additional_data: {
    #           skill_md: {
    #             data: "DescriptorData",
    #             data_schema_version: "DataSchemaVersion",
    #             source: {
    #               from_url: {
    #                 url: "DescriptorSourceUrl", # required
    #                 credential_provider_configurations: [
    #                   {
    #                     credential_provider_type: "OAUTH" # One of: ["OAUTH", "IAM"], # required
    #                     credential_provider: { # required
    #                       # One of:
    #                       oauth_credential_provider: {
    #                         provider_arn: "CredentialProviderArn", # required
    #                         grant_type: "CLIENT_CREDENTIALS" # One of: ["CLIENT_CREDENTIALS"],
    #                         scopes: ["String"],
    #                         custom_parameters: {
    #                           "String" => "String"
    #                         }
    #                       },
    #                       iam_credential_provider: {
    #                         role_arn: "IamRoleArn",
    #                         service: "IamSigningServiceName",
    #                         region: "IamSigningRegion"
    #                       }
    #                     }
    #                   }
    #                 ]
    #               }
    #             }
    #           }
    #         }
    #       },
    #       custom: {
    #         data: "DescriptorData"
    #       },
    #       http: {
    #         source: {
    #           from_url: {
    #             url: "DescriptorSourceUrl", # required
    #             credential_provider_configurations: [
    #               {
    #                 credential_provider_type: "OAUTH" # One of: ["OAUTH", "IAM"], # required
    #                 credential_provider: { # required
    #                   # One of:
    #                   oauth_credential_provider: {
    #                     provider_arn: "CredentialProviderArn", # required
    #                     grant_type: "CLIENT_CREDENTIALS" # One of: ["CLIENT_CREDENTIALS"],
    #                     scopes: ["String"],
    #                     custom_parameters: {
    #                       "String" => "String"
    #                     }
    #                   },
    #                   iam_credential_provider: {
    #                     role_arn: "IamRoleArn",
    #                     service: "IamSigningServiceName",
    #                     region: "IamSigningRegion"
    #                   }
    #                 }
    #               }
    #             ]
    #           }
    #         }
    #       },
    #       agui: {
    #         source: {
    #           from_url: {
    #             url: "DescriptorSourceUrl", # required
    #             credential_provider_configurations: [
    #               {
    #                 credential_provider_type: "OAUTH" # One of: ["OAUTH", "IAM"], # required
    #                 credential_provider: { # required
    #                   # One of:
    #                   oauth_credential_provider: {
    #                     provider_arn: "CredentialProviderArn", # required
    #                     grant_type: "CLIENT_CREDENTIALS" # One of: ["CLIENT_CREDENTIALS"],
    #                     scopes: ["String"],
    #                     custom_parameters: {
    #                       "String" => "String"
    #                     }
    #                   },
    #                   iam_credential_provider: {
    #                     role_arn: "IamRoleArn",
    #                     service: "IamSigningServiceName",
    #                     region: "IamSigningRegion"
    #                   }
    #                 }
    #               }
    #             ]
    #           }
    #         }
    #       }
    #     },
    #     record_version: "RegistryRecordVersion",
    #     status: "DRAFT" # One of: ["DRAFT", "PENDING_APPROVAL", "APPROVED", "REJECTED", "DEPRECATED", "CREATING", "UPDATING", "CREATE_FAILED", "UPDATE_FAILED"], # required
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #     status_reason: "String",
    #     provenance: [
    #       {
    #         relation: "DETECTED_FROM" # One of: ["DETECTED_FROM"], # required
    #         source_id: "SourceId", # required
    #         source_type: "AWS::BedrockAgentCore::Runtime" # One of: ["AWS::BedrockAgentCore::Runtime", "AWS::BedrockAgentCore::Gateway"],
    #         source_details: {
    #           # One of:
    #           agentcore_runtime: {
    #             protocol_configuration: {
    #               server_protocol: "HTTP" # One of: ["HTTP", "A2A", "MCP", "AGUI"]
    #             },
    #             authorizer_configuration: {
    #               # One of:
    #               custom_jwt_authorizer: {
    #                 discovery_url: "DiscoveryUrl", # required
    #                 allowed_audience: ["AllowedAudience"],
    #                 allowed_clients: ["AllowedClient"],
    #                 allowed_scopes: ["AllowedScopeType"],
    #                 custom_claims: [
    #                   {
    #                     inbound_token_claim_name: "InboundTokenClaimNameType", # required
    #                     inbound_token_claim_value_type: "STRING" # One of: ["STRING", "STRING_ARRAY"], # required
    #                     authorizing_claim_match_value: { # required
    #                       claim_match_value: { # required
    #                         # One of:
    #                         match_value_string: "MatchValueString",
    #                         match_value_string_list: ["MatchValueString"]
    #                       },
    #                       claim_match_operator: "EQUALS" # One of: ["EQUALS", "CONTAINS", "CONTAINS_ANY"], # required
    #                     }
    #                   }
    #                 ],
    #                 private_endpoint: {
    #                   # One of:
    #                   self_managed_lattice_resource: {
    #                     # One of:
    #                     resource_configuration_identifier: "ResourceConfigurationIdentifier"
    #                   },
    #                   managed_vpc_resource: {
    #                     vpc_identifier: "VpcIdentifier", # required
    #                     subnet_ids: ["SubnetId"], # required
    #                     endpoint_ip_address_type: "IPV4" # One of: ["IPV4", "IPV6"], # required
    #                     security_group_ids: ["SecurityGroupIdentifier"],
    #                     tags: {
    #                       "TagKey" => "TagValue"
    #                     },
    #                     routing_domain: "RoutingDomain"
    #                   }
    #                 },
    #                 private_endpoint_overrides: [
    #                   {
    #                     domain: "PrivateEndpointOverrideDomain", # required
    #                     private_endpoint: { # required
    #                       # One of:
    #                       self_managed_lattice_resource: {
    #                         # One of:
    #                         resource_configuration_identifier: "ResourceConfigurationIdentifier"
    #                       },
    #                       managed_vpc_resource: {
    #                         vpc_identifier: "VpcIdentifier", # required
    #                         subnet_ids: ["SubnetId"], # required
    #                         endpoint_ip_address_type: "IPV4" # One of: ["IPV4", "IPV6"], # required
    #                         security_group_ids: ["SecurityGroupIdentifier"],
    #                         tags: {
    #                           "TagKey" => "TagValue"
    #                         },
    #                         routing_domain: "RoutingDomain"
    #                       }
    #                     }
    #                   }
    #                 ]
    #               }
    #             },
    #             workload_identity_details: {
    #               workload_identity_arn: "String", # required
    #             }
    #           },
    #           agentcore_gateway: {
    #             protocol_type: "MCP" # One of: ["MCP"],
    #             authorizer_type: "String",
    #             authorizer_configuration: {
    #               # One of:
    #               custom_jwt_authorizer: {
    #                 discovery_url: "DiscoveryUrl", # required
    #                 allowed_audience: ["AllowedAudience"],
    #                 allowed_clients: ["AllowedClient"],
    #                 allowed_scopes: ["AllowedScopeType"],
    #                 custom_claims: [
    #                   {
    #                     inbound_token_claim_name: "InboundTokenClaimNameType", # required
    #                     inbound_token_claim_value_type: "STRING" # One of: ["STRING", "STRING_ARRAY"], # required
    #                     authorizing_claim_match_value: { # required
    #                       claim_match_value: { # required
    #                         # One of:
    #                         match_value_string: "MatchValueString",
    #                         match_value_string_list: ["MatchValueString"]
    #                       },
    #                       claim_match_operator: "EQUALS" # One of: ["EQUALS", "CONTAINS", "CONTAINS_ANY"], # required
    #                     }
    #                   }
    #                 ],
    #                 private_endpoint: {
    #                   # One of:
    #                   self_managed_lattice_resource: {
    #                     # One of:
    #                     resource_configuration_identifier: "ResourceConfigurationIdentifier"
    #                   },
    #                   managed_vpc_resource: {
    #                     vpc_identifier: "VpcIdentifier", # required
    #                     subnet_ids: ["SubnetId"], # required
    #                     endpoint_ip_address_type: "IPV4" # One of: ["IPV4", "IPV6"], # required
    #                     security_group_ids: ["SecurityGroupIdentifier"],
    #                     tags: {
    #                       "TagKey" => "TagValue"
    #                     },
    #                     routing_domain: "RoutingDomain"
    #                   }
    #                 },
    #                 private_endpoint_overrides: [
    #                   {
    #                     domain: "PrivateEndpointOverrideDomain", # required
    #                     private_endpoint: { # required
    #                       # One of:
    #                       self_managed_lattice_resource: {
    #                         # One of:
    #                         resource_configuration_identifier: "ResourceConfigurationIdentifier"
    #                       },
    #                       managed_vpc_resource: {
    #                         vpc_identifier: "VpcIdentifier", # required
    #                         subnet_ids: ["SubnetId"], # required
    #                         endpoint_ip_address_type: "IPV4" # One of: ["IPV4", "IPV6"], # required
    #                         security_group_ids: ["SecurityGroupIdentifier"],
    #                         tags: {
    #                           "TagKey" => "TagValue"
    #                         },
    #                         routing_domain: "RoutingDomain"
    #                       }
    #                     }
    #                   }
    #                 ]
    #               }
    #             },
    #             workload_identity_details: {
    #               workload_identity_arn: "String", # required
    #             }
    #           }
    #         }
    #       }
    #     ],
    #     created_by_auto_detection: false,
    #     created_by: "CreatorAccountId",
    #     custom_metadata: ""null"",
    #     custom_metadata_schema_compliance_status: "COMPLIANT" # One of: ["COMPLIANT", "NON_COMPLIANT"]
    #   }
    # @return [Types::UpdateRegistryRecordResponse]
    def update_registry_record(params = {}, options = {})
      request = build_request(:update_registry_record, params)
      request.send_request(options)
    end

    # <p>Updates the status of a registry record as part of the registry's curation workflow, for example to approve or reject a record that is pending approval, or to deprecate an approved record so that it is no longer discoverable</p>
    # @param [Hash, Types::UpdateRegistryRecordStatusRequest] params
    # @option params [String] :registry_id
    #   <p>The identifier of the registry containing the record (ARN or ID)</p>
    # @option params [String] :record_id
    #   <p>The identifier of the registry record to update the status of (ARN or ID)</p>
    # @option params [String] :status
    #   <p>The target status for the registry record</p>
    # @option params [String] :status_reason
    #   <p>The reason for the status change, for example why the record was approved, rejected, or deprecated</p>
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
      context[:gem_name] = 'aws-sdk-agentregistrycontrol'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {
        registry_ready: Waiters::RegistryReady,
        registry_record_approved: Waiters::RegistryRecordApproved
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
