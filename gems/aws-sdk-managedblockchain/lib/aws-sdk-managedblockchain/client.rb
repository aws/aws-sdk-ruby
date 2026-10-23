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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:managedblockchain)

module Aws::ManagedBlockchain
  # An API client for Aws::ManagedBlockchain.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::TaigaWebService
    @identifier = :managedblockchain

    add_plugin(::Aws::ManagedBlockchain::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::ManagedBlockchain::EndpointProvider)
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

    # <p>Creates a new accessor for use with Amazon Managed Blockchain service that supports token based access. 
    #          The accessor contains information required for token based access.</p>
    # @param [Hash, Types::CreateAccessorInput] params
    # @option params [String] :client_request_token
    #   <p>This is a unique, case-sensitive identifier that you provide to ensure the idempotency of 
    #            the operation. An idempotent operation completes no more than once. This 
    #            identifier is required only if you make a service request directly using 
    #            an HTTP client. It is generated automatically if you use an Amazon Web Services SDK or the 
    #            Amazon Web Services CLI.</p>
    # @option params [String] :accessor_type
    #   <p>The type of accessor.</p>
    #            <note>
    #               <p>Currently, accessor type is restricted to <code>BILLING_TOKEN</code>.</p>
    #            </note>
    # @option params [Hash<String, String>] :tags
    #   <p>Tags to assign to the Accessor.</p>
    #            <p> Each tag consists of a key and an optional value. You can specify 
    #             multiple key-value pairs in a single request with an overall maximum of 50 tags 
    #             allowed per resource.</p>
    #            <p>For more information about tags, see <a href="https://docs.aws.amazon.com/managed-blockchain/latest/ethereum-dev/tagging-resources.html">Tagging Resources</a> in the <i>Amazon Managed Blockchain Ethereum Developer Guide</i>, or <a href="https://docs.aws.amazon.com/managed-blockchain/latest/hyperledger-fabric-dev/tagging-resources.html">Tagging Resources</a> in the <i>Amazon Managed Blockchain Hyperledger Fabric Developer Guide</i>.</p>
    # @option params [String] :network_type
    #   <p>The blockchain network that the <code>Accessor</code> token is created for.</p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>Use the actual <code>networkType</code> value for the blockchain network that you are creating 
    #               the <code>Accessor</code> token for.</p>
    #                  </li>
    #                  <li>
    #                     <p>With the shut down of the <i>Ethereum Goerli</i> and <i>Polygon Mumbai 
    #               Testnet</i> networks the following <code>networkType</code> values are no longer available 
    #               for selection and use.</p>
    #                     <ul>
    #                        <li>
    #                           <p>
    #                              <code>ETHEREUM_MAINNET_AND_GOERLI</code>
    #                           </p>
    #                        </li>
    #                        <li>
    #                           <p>
    #                              <code>ETHEREUM_GOERLI</code>
    #                           </p>
    #                        </li>
    #                        <li>
    #                           <p>
    #                              <code>POLYGON_MUMBAI</code>
    #                           </p>
    #                        </li>
    #                     </ul>
    #                     <p>However, your existing <code>Accessor</code> tokens with these <code>networkType</code> 
    #                  values will remain unchanged.</p>
    #                  </li>
    #               </ul>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_request_token: "ClientRequestTokenString", # required
    #     accessor_type: "BILLING_TOKEN" # One of: ["BILLING_TOKEN"], # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     network_type: "ETHEREUM_GOERLI" # One of: ["ETHEREUM_GOERLI", "ETHEREUM_MAINNET", "ETHEREUM_MAINNET_AND_GOERLI", "POLYGON_MAINNET", "POLYGON_MUMBAI"]
    #   }
    #   options = {}
    #   response = client.create_accessor(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     accessor_id: "ResourceIdString",
    #     billing_token: "AccessorBillingTokenString",
    #     network_type: "ETHEREUM_GOERLI" # One of: ["ETHEREUM_GOERLI", "ETHEREUM_MAINNET", "ETHEREUM_MAINNET_AND_GOERLI", "POLYGON_MAINNET", "POLYGON_MUMBAI"]
    #   }
    # @return [Types::CreateAccessorOutput]
    def create_accessor(params = {}, options = {})
      request = build_request(:create_accessor, params)
      request.send_request(options)
    end

    # <p>Creates a member within a Managed Blockchain network.</p>
    #          <p>Applies only to Hyperledger Fabric.</p>
    # @param [Hash, Types::CreateMemberInput] params
    # @option params [String] :client_request_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the operation. An idempotent operation completes no more than one time. This identifier is required only if you make a service request directly using an HTTP client. It is generated automatically if you use an Amazon Web Services SDK or the CLI.</p>
    # @option params [String] :invitation_id
    #   <p>The unique identifier of the invitation that is sent to the member to join the network.</p>
    # @option params [String] :network_id
    #   <p>The unique identifier of the network in which the member is created.</p>
    # @option params [Types::MemberConfiguration] :member_configuration
    #   <p>Member configuration parameters.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_request_token: "ClientRequestTokenString", # required
    #     invitation_id: "ResourceIdString", # required
    #     network_id: "ResourceIdString", # required
    #     member_configuration: { # required
    #       name: "NetworkMemberNameString", # required
    #       description: "DescriptionString",
    #       framework_configuration: { # required
    #         fabric: {
    #           admin_username: "UsernameString", # required
    #           admin_password: "PasswordString", # required
    #         }
    #       },
    #       log_publishing_configuration: {
    #         fabric: {
    #           ca_logs: {
    #             cloudwatch: {
    #               enabled: false
    #             }
    #           }
    #         }
    #       },
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       kms_key_arn: "ArnString"
    #     }
    #   }
    #   options = {}
    #   response = client.create_member(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     member_id: "ResourceIdString"
    #   }
    # @return [Types::CreateMemberOutput]
    def create_member(params = {}, options = {})
      request = build_request(:create_member, params)
      request.send_request(options)
    end

    # <p>Creates a new blockchain network using Amazon Managed Blockchain.</p>
    #          <p>Applies only to Hyperledger Fabric.</p>
    # @param [Hash, Types::CreateNetworkInput] params
    # @option params [String] :client_request_token
    #   <p>This is a unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            operation. An idempotent operation completes no more than once. This identifier is required only 
    #            if you make a service request directly using an HTTP client. It is generated automatically if you 
    #            use an Amazon Web Services SDK or the Amazon Web Services CLI.
    #         </p>
    # @option params [String] :name
    #   <p>The name of the network.</p>
    # @option params [String] :description
    #   <p>An optional description for the network.</p>
    # @option params [String] :framework
    #   <p>The blockchain framework that the network uses.</p>
    # @option params [String] :framework_version
    #   <p>The version of the blockchain framework that the network uses.</p>
    # @option params [Types::NetworkFrameworkConfiguration] :framework_configuration
    #   <p>
    #            Configuration properties of the blockchain framework relevant to the network configuration.
    #         </p>
    # @option params [Types::VotingPolicy] :voting_policy
    #   <p>
    #            The voting rules used by the network to determine if a proposal is approved.
    #         </p>
    # @option params [Types::MemberConfiguration] :member_configuration
    #   <p>Configuration properties for the first member within the network.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Tags to assign to the network.</p>
    #            <p> Each tag consists of a key and an optional value. You can specify 
    #             multiple key-value pairs in a single request with an overall maximum of 50 tags 
    #             allowed per resource.</p>
    #            <p>For more information about tags, see <a href="https://docs.aws.amazon.com/managed-blockchain/latest/ethereum-dev/tagging-resources.html">Tagging Resources</a> in the <i>Amazon Managed Blockchain Ethereum Developer Guide</i>, or <a href="https://docs.aws.amazon.com/managed-blockchain/latest/hyperledger-fabric-dev/tagging-resources.html">Tagging Resources</a> in the <i>Amazon Managed Blockchain Hyperledger Fabric Developer Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_request_token: "ClientRequestTokenString", # required
    #     name: "NameString", # required
    #     description: "DescriptionString",
    #     framework: "HYPERLEDGER_FABRIC" # One of: ["HYPERLEDGER_FABRIC", "ETHEREUM"], # required
    #     framework_version: "FrameworkVersionString", # required
    #     framework_configuration: {
    #       fabric: {
    #         edition: "STARTER" # One of: ["STARTER", "STANDARD"], # required
    #       }
    #     },
    #     voting_policy: { # required
    #       approval_threshold_policy: {
    #         threshold_percentage: 1,
    #         proposal_duration_in_hours: 1,
    #         threshold_comparator: "GREATER_THAN" # One of: ["GREATER_THAN", "GREATER_THAN_OR_EQUAL_TO"]
    #       }
    #     },
    #     member_configuration: { # required
    #       name: "NetworkMemberNameString", # required
    #       description: "DescriptionString",
    #       framework_configuration: { # required
    #         fabric: {
    #           admin_username: "UsernameString", # required
    #           admin_password: "PasswordString", # required
    #         }
    #       },
    #       log_publishing_configuration: {
    #         fabric: {
    #           ca_logs: {
    #             cloudwatch: {
    #               enabled: false
    #             }
    #           }
    #         }
    #       },
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       kms_key_arn: "ArnString"
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_network(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     network_id: "ResourceIdString",
    #     member_id: "ResourceIdString"
    #   }
    # @return [Types::CreateNetworkOutput]
    def create_network(params = {}, options = {})
      request = build_request(:create_network, params)
      request.send_request(options)
    end

    # <p>Creates a node on the specified blockchain network.</p>
    #          <p>Applies to Hyperledger Fabric and Ethereum.</p>
    # @param [Hash, Types::CreateNodeInput] params
    # @option params [String] :client_request_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the operation. An idempotent operation completes no more than one time. This identifier is required only if you make a service request directly using an HTTP client. It is generated automatically if you use an Amazon Web Services SDK or the CLI.</p>
    # @option params [String] :network_id
    #   <p>The unique identifier of the network for the node.</p>
    #            <p>Ethereum public networks have the following <code>NetworkId</code>s:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>n-ethereum-mainnet</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [String] :member_id
    #   <p>The unique identifier of the member that owns this node.</p>
    #            <p>Applies only to Hyperledger Fabric.</p>
    # @option params [Types::NodeConfiguration] :node_configuration
    #   <p>The properties of a node configuration.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Tags to assign to the node.</p>
    #            <p> Each tag consists of a key and an optional value. You can specify 
    #             multiple key-value pairs in a single request with an overall maximum of 50 tags 
    #             allowed per resource.</p>
    #            <p>For more information about tags, see <a href="https://docs.aws.amazon.com/managed-blockchain/latest/ethereum-dev/tagging-resources.html">Tagging Resources</a> in the <i>Amazon Managed Blockchain Ethereum Developer Guide</i>, or <a href="https://docs.aws.amazon.com/managed-blockchain/latest/hyperledger-fabric-dev/tagging-resources.html">Tagging Resources</a> in the <i>Amazon Managed Blockchain Hyperledger Fabric Developer Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_request_token: "ClientRequestTokenString", # required
    #     network_id: "ResourceIdString", # required
    #     member_id: "ResourceIdString",
    #     node_configuration: { # required
    #       instance_type: "InstanceTypeString", # required
    #       availability_zone: "AvailabilityZoneString",
    #       log_publishing_configuration: {
    #         fabric: {
    #           chaincode_logs: {
    #             cloudwatch: {
    #               enabled: false
    #             }
    #           },
    #           peer_logs: {
    #             cloudwatch: {
    #               enabled: false
    #             }
    #           }
    #         }
    #       },
    #       state_db: "LevelDB" # One of: ["LevelDB", "CouchDB"]
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_node(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     node_id: "ResourceIdString"
    #   }
    # @return [Types::CreateNodeOutput]
    def create_node(params = {}, options = {})
      request = build_request(:create_node, params)
      request.send_request(options)
    end

    # <p>Creates a proposal for a change to the network that other members of the network can vote on, for example, a proposal to add a new member to the network. Any member can create a proposal.</p>
    #          <p>Applies only to Hyperledger Fabric.</p>
    # @param [Hash, Types::CreateProposalInput] params
    # @option params [String] :client_request_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the operation. An idempotent operation completes no more than one time. This identifier is required only if you make a service request directly using an HTTP client. It is generated automatically if you use an Amazon Web Services SDK or the CLI.</p>
    # @option params [String] :network_id
    #   <p>
    #            The unique identifier of the network for which the proposal is made.</p>
    # @option params [String] :member_id
    #   <p>The unique identifier of the member that is creating the proposal. This 
    #            identifier is especially useful for identifying the member making the proposal 
    #            when multiple members exist in a single Amazon Web Services account.</p>
    # @option params [Types::ProposalActions] :actions
    #   <p>The type of actions proposed, such as inviting a member or removing a member. The types of <code>Actions</code> in a proposal are mutually exclusive. For example, a proposal with <code>Invitations</code> actions cannot also contain <code>Removals</code> actions.</p>
    # @option params [String] :description
    #   <p>A description for the proposal that is visible to voting members, for example, "Proposal to add Example Corp. as member."</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Tags to assign to the proposal.</p>
    #            <p> Each tag consists of a key and an optional value. You can specify 
    #             multiple key-value pairs in a single request with an overall maximum of 50 tags 
    #             allowed per resource.</p>
    #            <p>For more information about tags, see <a href="https://docs.aws.amazon.com/managed-blockchain/latest/ethereum-dev/tagging-resources.html">Tagging Resources</a> in the <i>Amazon Managed Blockchain Ethereum Developer Guide</i>, or <a href="https://docs.aws.amazon.com/managed-blockchain/latest/hyperledger-fabric-dev/tagging-resources.html">Tagging Resources</a> in the <i>Amazon Managed Blockchain Hyperledger Fabric Developer Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_request_token: "ClientRequestTokenString", # required
    #     network_id: "ResourceIdString", # required
    #     member_id: "ResourceIdString", # required
    #     actions: { # required
    #       invitations: [
    #         {
    #           principal: "PrincipalString", # required
    #         }
    #       ],
    #       removals: [
    #         {
    #           member_id: "ResourceIdString", # required
    #         }
    #       ]
    #     },
    #     description: "DescriptionString",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_proposal(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     proposal_id: "ResourceIdString"
    #   }
    # @return [Types::CreateProposalOutput]
    def create_proposal(params = {}, options = {})
      request = build_request(:create_proposal, params)
      request.send_request(options)
    end

    # <p>Deletes an accessor that your Amazon Web Services account owns. An accessor object is a container that has the 
    #          information required for token based access to your Ethereum nodes including, the 
    #          <code>BILLING_TOKEN</code>. After an accessor is deleted, the status of the accessor changes 
    #          from <code>AVAILABLE</code> to <code>PENDING_DELETION</code>. An accessor in the 
    #          <code>PENDING_DELETION</code> state can’t be used for new WebSocket requests or 
    #          HTTP requests. However, WebSocket connections that were initiated while the accessor was in the 
    #          <code>AVAILABLE</code> state remain open until they expire (up to 2 hours).</p>
    # @param [Hash, Types::DeleteAccessorInput] params
    # @option params [String] :accessor_id
    #   <p>The unique identifier of the accessor.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     accessor_id: "ResourceIdString", # required
    #   }
    #   options = {}
    #   response = client.delete_accessor(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteAccessorOutput]
    def delete_accessor(params = {}, options = {})
      request = build_request(:delete_accessor, params)
      request.send_request(options)
    end

    # <p>Deletes a member. Deleting a member removes the member and all associated resources from the network. <code>DeleteMember</code> can only be called for a specified <code>MemberId</code> if the principal performing the action is associated with the Amazon Web Services account that owns the member. In all other cases, the <code>DeleteMember</code> action is carried out as the result of an approved proposal to remove a member. If <code>MemberId</code> is the last member in a network specified by the last Amazon Web Services account, the network is deleted also.</p>
    #          <p>Applies only to Hyperledger Fabric.</p>
    # @param [Hash, Types::DeleteMemberInput] params
    # @option params [String] :network_id
    #   <p>The unique identifier of the network from which the member is removed.</p>
    # @option params [String] :member_id
    #   <p>The unique identifier of the member to remove.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     network_id: "ResourceIdString", # required
    #     member_id: "ResourceIdString", # required
    #   }
    #   options = {}
    #   response = client.delete_member(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteMemberOutput]
    def delete_member(params = {}, options = {})
      request = build_request(:delete_member, params)
      request.send_request(options)
    end

    # <p>Deletes a node that your Amazon Web Services account owns. All data on the node is lost and cannot be recovered.</p>
    #          <p>Applies to Hyperledger Fabric and Ethereum.</p>
    # @param [Hash, Types::DeleteNodeInput] params
    # @option params [String] :network_id
    #   <p>The unique identifier of the network that the node is on.</p>
    #            <p>Ethereum public networks have the following <code>NetworkId</code>s:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>n-ethereum-mainnet</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [String] :member_id
    #   <p>The unique identifier of the member that owns this node.</p>
    #            <p>Applies only to Hyperledger Fabric and is required for Hyperledger Fabric.</p>
    # @option params [String] :node_id
    #   <p>The unique identifier of the node.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     network_id: "ResourceIdString", # required
    #     member_id: "ResourceIdString",
    #     node_id: "ResourceIdString", # required
    #   }
    #   options = {}
    #   response = client.delete_node(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteNodeOutput]
    def delete_node(params = {}, options = {})
      request = build_request(:delete_node, params)
      request.send_request(options)
    end

    # <p>Returns detailed information about an accessor. An accessor object is a container that has the 
    #          information required for token based access to your Ethereum nodes.</p>
    # @param [Hash, Types::GetAccessorInput] params
    # @option params [String] :accessor_id
    #   <p>The unique identifier of the accessor.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     accessor_id: "ResourceIdString", # required
    #   }
    #   options = {}
    #   response = client.get_accessor(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     accessor: {
    #       id: "ResourceIdString",
    #       type: "BILLING_TOKEN" # One of: ["BILLING_TOKEN"],
    #       billing_token: "AccessorBillingTokenString",
    #       status: "AVAILABLE" # One of: ["AVAILABLE", "PENDING_DELETION", "DELETED"],
    #       creation_date: Time.now,
    #       arn: "ArnString",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       network_type: "ETHEREUM_GOERLI" # One of: ["ETHEREUM_GOERLI", "ETHEREUM_MAINNET", "ETHEREUM_MAINNET_AND_GOERLI", "POLYGON_MAINNET", "POLYGON_MUMBAI"]
    #     }
    #   }
    # @return [Types::GetAccessorOutput]
    def get_accessor(params = {}, options = {})
      request = build_request(:get_accessor, params)
      request.send_request(options)
    end

    # <p>Returns detailed information about a member.</p>
    #          <p>Applies only to Hyperledger Fabric.</p>
    # @param [Hash, Types::GetMemberInput] params
    # @option params [String] :network_id
    #   <p>The unique identifier of the network to which the member belongs.</p>
    # @option params [String] :member_id
    #   <p>The unique identifier of the member.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     network_id: "ResourceIdString", # required
    #     member_id: "ResourceIdString", # required
    #   }
    #   options = {}
    #   response = client.get_member(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     member: {
    #       network_id: "ResourceIdString",
    #       id: "ResourceIdString",
    #       name: "NetworkMemberNameString",
    #       description: "DescriptionString",
    #       framework_attributes: {
    #         fabric: {
    #           admin_username: "UsernameString",
    #           ca_endpoint: "String"
    #         }
    #       },
    #       log_publishing_configuration: {
    #         fabric: {
    #           ca_logs: {
    #             cloudwatch: {
    #               enabled: false
    #             }
    #           }
    #         }
    #       },
    #       status: "CREATING" # One of: ["CREATING", "AVAILABLE", "CREATE_FAILED", "UPDATING", "DELETING", "DELETED", "INACCESSIBLE_ENCRYPTION_KEY"],
    #       creation_date: Time.now,
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       arn: "ArnString",
    #       kms_key_arn: "String"
    #     }
    #   }
    # @return [Types::GetMemberOutput]
    def get_member(params = {}, options = {})
      request = build_request(:get_member, params)
      request.send_request(options)
    end

    # <p>Returns detailed information about a network.</p>
    #          <p>Applies to Hyperledger Fabric and Ethereum.</p>
    # @param [Hash, Types::GetNetworkInput] params
    # @option params [String] :network_id
    #   <p>The unique identifier of the network to get information about.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     network_id: "ResourceIdString", # required
    #   }
    #   options = {}
    #   response = client.get_network(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     network: {
    #       id: "ResourceIdString",
    #       name: "NameString",
    #       description: "DescriptionString",
    #       framework: "HYPERLEDGER_FABRIC" # One of: ["HYPERLEDGER_FABRIC", "ETHEREUM"],
    #       framework_version: "FrameworkVersionString",
    #       framework_attributes: {
    #         fabric: {
    #           ordering_service_endpoint: "String",
    #           edition: "STARTER" # One of: ["STARTER", "STANDARD"]
    #         },
    #         ethereum: {
    #           chain_id: "String"
    #         }
    #       },
    #       vpc_endpoint_service_name: "String",
    #       voting_policy: {
    #         approval_threshold_policy: {
    #           threshold_percentage: 1,
    #           proposal_duration_in_hours: 1,
    #           threshold_comparator: "GREATER_THAN" # One of: ["GREATER_THAN", "GREATER_THAN_OR_EQUAL_TO"]
    #         }
    #       },
    #       status: "CREATING" # One of: ["CREATING", "AVAILABLE", "CREATE_FAILED", "DELETING", "DELETED"],
    #       creation_date: Time.now,
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       arn: "ArnString"
    #     }
    #   }
    # @return [Types::GetNetworkOutput]
    def get_network(params = {}, options = {})
      request = build_request(:get_network, params)
      request.send_request(options)
    end

    # <p>Returns detailed information about a node.</p>
    #          <p>Applies to Hyperledger Fabric and Ethereum.</p>
    # @param [Hash, Types::GetNodeInput] params
    # @option params [String] :network_id
    #   <p>The unique identifier of the network that the node is on.</p>
    # @option params [String] :member_id
    #   <p>The unique identifier of the member that owns the node.</p>
    #            <p>Applies only to Hyperledger Fabric and is required for Hyperledger Fabric.</p>
    # @option params [String] :node_id
    #   <p>The unique identifier of the node.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     network_id: "ResourceIdString", # required
    #     member_id: "ResourceIdString",
    #     node_id: "ResourceIdString", # required
    #   }
    #   options = {}
    #   response = client.get_node(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     node: {
    #       network_id: "ResourceIdString",
    #       member_id: "ResourceIdString",
    #       id: "ResourceIdString",
    #       instance_type: "InstanceTypeString",
    #       availability_zone: "AvailabilityZoneString",
    #       framework_attributes: {
    #         fabric: {
    #           peer_endpoint: "String",
    #           peer_event_endpoint: "String"
    #         },
    #         ethereum: {
    #           http_endpoint: "String",
    #           web_socket_endpoint: "String"
    #         }
    #       },
    #       log_publishing_configuration: {
    #         fabric: {
    #           chaincode_logs: {
    #             cloudwatch: {
    #               enabled: false
    #             }
    #           },
    #           peer_logs: {
    #             cloudwatch: {
    #               enabled: false
    #             }
    #           }
    #         }
    #       },
    #       state_db: "LevelDB" # One of: ["LevelDB", "CouchDB"],
    #       status: "CREATING" # One of: ["CREATING", "AVAILABLE", "UNHEALTHY", "CREATE_FAILED", "UPDATING", "DELETING", "DELETED", "FAILED", "INACCESSIBLE_ENCRYPTION_KEY"],
    #       creation_date: Time.now,
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       arn: "ArnString",
    #       kms_key_arn: "String"
    #     }
    #   }
    # @return [Types::GetNodeOutput]
    def get_node(params = {}, options = {})
      request = build_request(:get_node, params)
      request.send_request(options)
    end

    # <p>Returns detailed information about a proposal.</p>
    #          <p>Applies only to Hyperledger Fabric.</p>
    # @param [Hash, Types::GetProposalInput] params
    # @option params [String] :network_id
    #   <p>The unique identifier of the network for which the proposal is made.</p>
    # @option params [String] :proposal_id
    #   <p>The unique identifier of the proposal.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     network_id: "ResourceIdString", # required
    #     proposal_id: "ResourceIdString", # required
    #   }
    #   options = {}
    #   response = client.get_proposal(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     proposal: {
    #       proposal_id: "ResourceIdString",
    #       network_id: "ResourceIdString",
    #       description: "DescriptionString",
    #       actions: {
    #         invitations: [
    #           {
    #             principal: "PrincipalString", # required
    #           }
    #         ],
    #         removals: [
    #           {
    #             member_id: "ResourceIdString", # required
    #           }
    #         ]
    #       },
    #       proposed_by_member_id: "ResourceIdString",
    #       proposed_by_member_name: "NetworkMemberNameString",
    #       status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "APPROVED", "REJECTED", "EXPIRED", "ACTION_FAILED"],
    #       creation_date: Time.now,
    #       expiration_date: Time.now,
    #       yes_vote_count: 1,
    #       no_vote_count: 1,
    #       outstanding_vote_count: 1,
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       arn: "ArnString"
    #     }
    #   }
    # @return [Types::GetProposalOutput]
    def get_proposal(params = {}, options = {})
      request = build_request(:get_proposal, params)
      request.send_request(options)
    end

    # <p>Returns a list of the accessors and their properties. Accessor objects are containers that have the 
    #          information required for token based access to your Ethereum nodes.</p>
    # @param [Hash, Types::ListAccessorsInput] params
    # @option params [Integer] :max_results
    #   <p> The maximum number of accessors to list.</p>
    # @option params [String] :next_token
    #   <p> The pagination token that indicates the next set of results to retrieve. </p>
    # @option params [String] :network_type
    #   <p>The blockchain network that the <code>Accessor</code> token is created for.</p>
    #            <note>
    #               <p>Use the value <code>ETHEREUM_MAINNET_AND_GOERLI</code> for all 
    #            existing <code>Accessors</code> tokens that were created before the <code>networkType</code> 
    #            property was introduced.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     network_type: "ETHEREUM_GOERLI" # One of: ["ETHEREUM_GOERLI", "ETHEREUM_MAINNET", "ETHEREUM_MAINNET_AND_GOERLI", "POLYGON_MAINNET", "POLYGON_MUMBAI"]
    #   }
    #   options = {}
    #   response = client.list_accessors(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     accessors: [
    #       {
    #         id: "ResourceIdString",
    #         type: "BILLING_TOKEN" # One of: ["BILLING_TOKEN"],
    #         status: "AVAILABLE" # One of: ["AVAILABLE", "PENDING_DELETION", "DELETED"],
    #         creation_date: Time.now,
    #         arn: "ArnString",
    #         network_type: "ETHEREUM_GOERLI" # One of: ["ETHEREUM_GOERLI", "ETHEREUM_MAINNET", "ETHEREUM_MAINNET_AND_GOERLI", "POLYGON_MAINNET", "POLYGON_MUMBAI"]
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListAccessorsOutput]
    def list_accessors(params = {}, options = {})
      request = build_request(:list_accessors, params)
      request.send_request(options)
    end

    # <p>Returns a list of all invitations for the current Amazon Web Services account.</p>
    #          <p>Applies only to Hyperledger Fabric.</p>
    # @param [Hash, Types::ListInvitationsInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of invitations to return.</p>
    # @option params [String] :next_token
    #   <p>The pagination token that indicates the next set of results to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_invitations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     invitations: [
    #       {
    #         invitation_id: "ResourceIdString",
    #         creation_date: Time.now,
    #         expiration_date: Time.now,
    #         status: "PENDING" # One of: ["PENDING", "ACCEPTED", "ACCEPTING", "REJECTED", "EXPIRED"],
    #         network_summary: {
    #           id: "ResourceIdString",
    #           name: "NameString",
    #           description: "DescriptionString",
    #           framework: "HYPERLEDGER_FABRIC" # One of: ["HYPERLEDGER_FABRIC", "ETHEREUM"],
    #           framework_version: "FrameworkVersionString",
    #           status: "CREATING" # One of: ["CREATING", "AVAILABLE", "CREATE_FAILED", "DELETING", "DELETED"],
    #           creation_date: Time.now,
    #           arn: "ArnString"
    #         },
    #         arn: "ArnString"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListInvitationsOutput]
    def list_invitations(params = {}, options = {})
      request = build_request(:list_invitations, params)
      request.send_request(options)
    end

    # <p>Returns a list of the members in a network and properties of their configurations.</p>
    #          <p>Applies only to Hyperledger Fabric.</p>
    # @param [Hash, Types::ListMembersInput] params
    # @option params [String] :network_id
    #   <p>The unique identifier of the network for which to list members.</p>
    # @option params [String] :name
    #   <p>The optional name of the member to list.</p>
    # @option params [String] :status
    #   <p>An optional status specifier. If provided, only members currently in this status are listed.</p>
    # @option params [Boolean] :is_owned
    #   <p>An optional Boolean value. If provided, the request is limited either to
    #            members that the current Amazon Web Services account owns (<code>true</code>) or that other Amazon Web Services accountsn
    #            own (<code>false</code>). If omitted, all members are listed.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of members to return in the request.</p>
    # @option params [String] :next_token
    #   <p>The pagination token that indicates the next set of results to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     network_id: "ResourceIdString", # required
    #     name: "String",
    #     status: "CREATING" # One of: ["CREATING", "AVAILABLE", "CREATE_FAILED", "UPDATING", "DELETING", "DELETED", "INACCESSIBLE_ENCRYPTION_KEY"],
    #     is_owned: false,
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_members(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     members: [
    #       {
    #         id: "ResourceIdString",
    #         name: "NetworkMemberNameString",
    #         description: "DescriptionString",
    #         status: "CREATING" # One of: ["CREATING", "AVAILABLE", "CREATE_FAILED", "UPDATING", "DELETING", "DELETED", "INACCESSIBLE_ENCRYPTION_KEY"],
    #         creation_date: Time.now,
    #         is_owned: false,
    #         arn: "ArnString"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListMembersOutput]
    def list_members(params = {}, options = {})
      request = build_request(:list_members, params)
      request.send_request(options)
    end

    # <p>Returns information about the networks in which the current Amazon Web Services account participates.</p>
    #          <p>Applies to Hyperledger Fabric and Ethereum.</p>
    # @param [Hash, Types::ListNetworksInput] params
    # @option params [String] :name
    #   <p>The name of the network.</p>
    # @option params [String] :framework
    #   <p>An optional framework specifier. If provided, only networks of this framework type are listed.</p>
    # @option params [String] :status
    #   <p>An optional status specifier. If provided, only networks currently in this status are listed.</p>
    #            <p>Applies only to Hyperledger Fabric.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of networks to list.</p>
    # @option params [String] :next_token
    #   <p>The pagination token that indicates the next set of results to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "String",
    #     framework: "HYPERLEDGER_FABRIC" # One of: ["HYPERLEDGER_FABRIC", "ETHEREUM"],
    #     status: "CREATING" # One of: ["CREATING", "AVAILABLE", "CREATE_FAILED", "DELETING", "DELETED"],
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_networks(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     networks: [
    #       {
    #         id: "ResourceIdString",
    #         name: "NameString",
    #         description: "DescriptionString",
    #         framework: "HYPERLEDGER_FABRIC" # One of: ["HYPERLEDGER_FABRIC", "ETHEREUM"],
    #         framework_version: "FrameworkVersionString",
    #         status: "CREATING" # One of: ["CREATING", "AVAILABLE", "CREATE_FAILED", "DELETING", "DELETED"],
    #         creation_date: Time.now,
    #         arn: "ArnString"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListNetworksOutput]
    def list_networks(params = {}, options = {})
      request = build_request(:list_networks, params)
      request.send_request(options)
    end

    # <p>Returns information about the nodes within a network.</p>
    #          <p>Applies to Hyperledger Fabric and Ethereum.</p>
    # @param [Hash, Types::ListNodesInput] params
    # @option params [String] :network_id
    #   <p>The unique identifier of the network for which to list nodes.</p>
    # @option params [String] :member_id
    #   <p>The unique identifier of the member who owns the nodes to list.</p>
    #            <p>Applies only to Hyperledger Fabric and is required for Hyperledger Fabric.</p>
    # @option params [String] :status
    #   <p>An optional status specifier. If provided, only nodes currently in this status are listed.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of nodes to list.</p>
    # @option params [String] :next_token
    #   <p>The pagination token that indicates the next set of results to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     network_id: "ResourceIdString", # required
    #     member_id: "ResourceIdString",
    #     status: "CREATING" # One of: ["CREATING", "AVAILABLE", "UNHEALTHY", "CREATE_FAILED", "UPDATING", "DELETING", "DELETED", "FAILED", "INACCESSIBLE_ENCRYPTION_KEY"],
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_nodes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     nodes: [
    #       {
    #         id: "ResourceIdString",
    #         status: "CREATING" # One of: ["CREATING", "AVAILABLE", "UNHEALTHY", "CREATE_FAILED", "UPDATING", "DELETING", "DELETED", "FAILED", "INACCESSIBLE_ENCRYPTION_KEY"],
    #         creation_date: Time.now,
    #         availability_zone: "AvailabilityZoneString",
    #         instance_type: "InstanceTypeString",
    #         arn: "ArnString"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListNodesOutput]
    def list_nodes(params = {}, options = {})
      request = build_request(:list_nodes, params)
      request.send_request(options)
    end

    # <p>Returns the list of votes for a specified proposal, including the value of each vote and the unique identifier of the member that cast the vote.</p>
    #          <p>Applies only to Hyperledger Fabric.</p>
    # @param [Hash, Types::ListProposalVotesInput] params
    # @option params [String] :network_id
    #   <p>
    #            The unique identifier of the network.
    #         </p>
    # @option params [String] :proposal_id
    #   <p>
    #            The unique identifier of the proposal.
    #         </p>
    # @option params [Integer] :max_results
    #   <p>
    #            The maximum number of votes to return.
    #         </p>
    # @option params [String] :next_token
    #   <p>
    #            The pagination token that indicates the next set of results to retrieve.
    #         </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     network_id: "ResourceIdString", # required
    #     proposal_id: "ResourceIdString", # required
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_proposal_votes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     proposal_votes: [
    #       {
    #         vote: "YES" # One of: ["YES", "NO"],
    #         member_name: "NetworkMemberNameString",
    #         member_id: "ResourceIdString"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListProposalVotesOutput]
    def list_proposal_votes(params = {}, options = {})
      request = build_request(:list_proposal_votes, params)
      request.send_request(options)
    end

    # <p>Returns a list of proposals for the network.</p>
    #          <p>Applies only to Hyperledger Fabric.</p>
    # @param [Hash, Types::ListProposalsInput] params
    # @option params [String] :network_id
    #   <p>
    #            The unique identifier of the network.
    #         </p>
    # @option params [Integer] :max_results
    #   <p>
    #            The maximum number of proposals to return.
    #         </p>
    # @option params [String] :next_token
    #   <p>
    #            The pagination token that indicates the next set of results to retrieve.
    #         </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     network_id: "ResourceIdString", # required
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_proposals(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     proposals: [
    #       {
    #         proposal_id: "ResourceIdString",
    #         description: "DescriptionString",
    #         proposed_by_member_id: "ResourceIdString",
    #         proposed_by_member_name: "NetworkMemberNameString",
    #         status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "APPROVED", "REJECTED", "EXPIRED", "ACTION_FAILED"],
    #         creation_date: Time.now,
    #         expiration_date: Time.now,
    #         arn: "ArnString"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListProposalsOutput]
    def list_proposals(params = {}, options = {})
      request = build_request(:list_proposals, params)
      request.send_request(options)
    end

    # <p>Returns a list of tags for the specified resource. Each tag consists of a key and optional value.</p>
    #          <p>For more information about tags, see <a href="https://docs.aws.amazon.com/managed-blockchain/latest/ethereum-dev/tagging-resources.html">Tagging Resources</a> in the <i>Amazon Managed Blockchain Ethereum Developer Guide</i>, or <a href="https://docs.aws.amazon.com/managed-blockchain/latest/hyperledger-fabric-dev/tagging-resources.html">Tagging Resources</a> in the <i>Amazon Managed Blockchain Hyperledger Fabric Developer Guide</i>.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource. For more information about ARNs and their format, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ArnString", # required
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

    # <p>Rejects an invitation to join a network. This action can be called by a principal in an Amazon Web Services account that has received an invitation to create a member and join a network.</p>
    #          <p>Applies only to Hyperledger Fabric.</p>
    # @param [Hash, Types::RejectInvitationInput] params
    # @option params [String] :invitation_id
    #   <p>The unique identifier of the invitation to reject.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     invitation_id: "ResourceIdString", # required
    #   }
    #   options = {}
    #   response = client.reject_invitation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::RejectInvitationOutput]
    def reject_invitation(params = {}, options = {})
      request = build_request(:reject_invitation, params)
      request.send_request(options)
    end

    # <p>Adds or overwrites the specified tags for the specified Amazon Managed Blockchain resource. Each tag consists of a key and optional value.</p>
    #          <p>When you specify a tag key that already exists, the tag value is overwritten with the new value. Use <code>UntagResource</code> to remove tag keys.</p>
    #          <p>A resource can have up to 50 tags. If you try to create more than 50 tags for a resource, your request fails and returns an error.</p>
    #          <p>For more information about tags, see <a href="https://docs.aws.amazon.com/managed-blockchain/latest/ethereum-dev/tagging-resources.html">Tagging Resources</a> in the <i>Amazon Managed Blockchain Ethereum Developer Guide</i>, or <a href="https://docs.aws.amazon.com/managed-blockchain/latest/hyperledger-fabric-dev/tagging-resources.html">Tagging Resources</a> in the <i>Amazon Managed Blockchain Hyperledger Fabric Developer Guide</i>.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource. For more information about ARNs and their format, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to assign to the specified resource. Tag values can be empty, for example, <code>"MyTagKey" : ""</code>. You can specify multiple key-value pairs in a single request, with an overall maximum of 50 tags added to each resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ArnString", # required
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

    # <p>Removes the specified tags from the Amazon Managed Blockchain resource.</p>
    #          <p>For more information about tags, see <a href="https://docs.aws.amazon.com/managed-blockchain/latest/ethereum-dev/tagging-resources.html">Tagging Resources</a> in the <i>Amazon Managed Blockchain Ethereum Developer Guide</i>, or <a href="https://docs.aws.amazon.com/managed-blockchain/latest/hyperledger-fabric-dev/tagging-resources.html">Tagging Resources</a> in the <i>Amazon Managed Blockchain Hyperledger Fabric Developer Guide</i>.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource. For more information about ARNs and their format, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The tag keys.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ArnString", # required
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

    # <p>Updates a member configuration with new parameters.</p>
    #          <p>Applies only to Hyperledger Fabric.</p>
    # @param [Hash, Types::UpdateMemberInput] params
    # @option params [String] :network_id
    #   <p>The unique identifier of the Managed Blockchain network to which the member belongs.</p>
    # @option params [String] :member_id
    #   <p>The unique identifier of the member.</p>
    # @option params [Types::MemberLogPublishingConfiguration] :log_publishing_configuration
    #   <p>Configuration properties for publishing to Amazon CloudWatch Logs.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     network_id: "ResourceIdString", # required
    #     member_id: "ResourceIdString", # required
    #     log_publishing_configuration: {
    #       fabric: {
    #         ca_logs: {
    #           cloudwatch: {
    #             enabled: false
    #           }
    #         }
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_member(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateMemberOutput]
    def update_member(params = {}, options = {})
      request = build_request(:update_member, params)
      request.send_request(options)
    end

    # <p>Updates a node configuration with new parameters.</p>
    #          <p>Applies only to Hyperledger Fabric.</p>
    # @param [Hash, Types::UpdateNodeInput] params
    # @option params [String] :network_id
    #   <p>The unique identifier of the network that the node is on.</p>
    # @option params [String] :member_id
    #   <p>The unique identifier of the member that owns the node.</p>
    #            <p>Applies only to Hyperledger Fabric.</p>
    # @option params [String] :node_id
    #   <p>The unique identifier of the node.</p>
    # @option params [Types::NodeLogPublishingConfiguration] :log_publishing_configuration
    #   <p>Configuration properties for publishing to Amazon CloudWatch Logs.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     network_id: "ResourceIdString", # required
    #     member_id: "ResourceIdString",
    #     node_id: "ResourceIdString", # required
    #     log_publishing_configuration: {
    #       fabric: {
    #         chaincode_logs: {
    #           cloudwatch: {
    #             enabled: false
    #           }
    #         },
    #         peer_logs: {
    #           cloudwatch: {
    #             enabled: false
    #           }
    #         }
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_node(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateNodeOutput]
    def update_node(params = {}, options = {})
      request = build_request(:update_node, params)
      request.send_request(options)
    end

    # <p>Casts a vote for a specified <code>ProposalId</code> on behalf of a member. The member to vote as, specified by <code>VoterMemberId</code>, must be in the same Amazon Web Services account as the principal that calls the action.</p>
    #          <p>Applies only to Hyperledger Fabric.</p>
    # @param [Hash, Types::VoteOnProposalInput] params
    # @option params [String] :network_id
    #   <p>
    #            The unique identifier of the network.
    #         </p>
    # @option params [String] :proposal_id
    #   <p>
    #            The unique identifier of the proposal.
    #         </p>
    # @option params [String] :voter_member_id
    #   <p>The unique identifier of the member casting the vote.
    #         </p>
    # @option params [String] :vote
    #   <p>
    #            The value of the vote.
    #         </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     network_id: "ResourceIdString", # required
    #     proposal_id: "ResourceIdString", # required
    #     voter_member_id: "ResourceIdString", # required
    #     vote: "YES" # One of: ["YES", "NO"], # required
    #   }
    #   options = {}
    #   response = client.vote_on_proposal(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::VoteOnProposalOutput]
    def vote_on_proposal(params = {}, options = {})
      request = build_request(:vote_on_proposal, params)
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
      context[:gem_name] = 'aws-sdk-managedblockchain'
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
