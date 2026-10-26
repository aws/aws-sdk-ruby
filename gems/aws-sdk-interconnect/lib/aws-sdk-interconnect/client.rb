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
require 'smithy-client/rpc_v2_cbor'
require 'aws-sdk-core/json_rpc'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:interconnect)

module Aws::Interconnect
  # An API client for Aws::Interconnect.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::Interconnect
    @identifier = :interconnect

    add_plugin(::Aws::Interconnect::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::Interconnect::EndpointProvider)
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
    #  Supported protocols: +:rpc_v2_cbor+, +:json_rpc+ (defaults to +:rpc_v2_cbor+).
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

    # <p>Accepts a connection proposal which was generated at a supported partner's portal.</p> <p>The proposal contains the Environment and bandwidth that were chosen on the partner's portal and cannot be modified.</p> <p>Upon accepting the proposal a connection will be made between the AWS network as accessed via the selected Attach Point and the network previously selected network on the partner's portal.</p>
    # @param [Hash, Types::AcceptConnectionProposalRequest] params
    # @option params [Types::AttachPoint] :attach_point
    #   <p>The Attach Point to which the connection should be associated.</p>
    # @option params [String] :activation_key
    #   <p>An Activation Key that was generated on a supported partner's portal. This key captures the desired parameters from the initial creation request.</p> <p>The details of this request can be described using with <a>DescribeConnectionProposal</a>. </p>
    # @option params [String] :description
    #   <p>A description to distinguish this <a>Connection</a>.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to associate with the resulting <a>Connection</a>.</p>
    # @option params [String] :client_token
    #   <p>Idempotency token used for the request.</p>
    # @example Accept Connection Proposal
    #   # Example operation for accept_connection_proposal
    #   params = {
    #     activation_key: "<Activation Key Data>",
    #     attach_point: {
    #     "directConnectGateway" => 90392BE3-219C-47FD-BBA5-03DF76D2542A
    #   }
    #   }
    #   options = {}
    #   response = client.accept_connection_proposal(params, options)
    #   response.to_h #=>
    #   {
    #     connection: {
    #       id: "mcc-abc12345",
    #       arn: "arn:aws:interconnect:us-east-1:000000000000:connection/mcc-abc12345",
    #       description: "My MultiCloud Connection",
    #       bandwidth: "1Gbps",
    #       attach_point: {
    #     "directConnectGateway" => 90392BE3-219C-47FD-BBA5-03DF76D2542A
    #   },
    #       environment_id: "mce-aws-acme-1",
    #       provider: {
    #     "cloudServiceProvider" => acme
    #   },
    #       location: "acme-east",
    #       type: "Multicloud",
    #       state: pending,
    #       shared_id: "B0615F4D-E588-47AD-9D04-1449EAA61C91",
    #       owner_account: "000000000000",
    #       activation_key: "<Activation Key Data>"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     attach_point: { # required
    #       # One of:
    #       direct_connect_gateway: "DirectConnectGatewayAttachPoint",
    #       arn: "AmazonResourceName"
    #     },
    #     activation_key: "ActivationKey", # required
    #     description: "ConnectionDescription",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     client_token: "String"
    #   }
    #   options = {}
    #   response = client.accept_connection_proposal(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connection: {
    #       id: "ConnectionId", # required
    #       arn: "AmazonResourceName", # required
    #       description: "ConnectionDescription", # required
    #       bandwidth: "ConnectionBandwidth", # required
    #       attach_point: { # required
    #         # One of:
    #         direct_connect_gateway: "DirectConnectGatewayAttachPoint",
    #         arn: "AmazonResourceName"
    #       },
    #       environment_id: "EnvironmentId", # required
    #       provider: { # required
    #         # One of:
    #         cloud_service_provider: "CloudServiceProvider",
    #         last_mile_provider: "LastMileProvider"
    #       },
    #       location: "Location", # required
    #       type: "ProductType", # required
    #       state: "available" # One of: ["available", "requested", "pending", "down", "deleting", "deleted", "failed", "updating"], # required
    #       shared_id: "ConnectionSharedId", # required
    #       billing_tier: 1,
    #       owner_account: "OwnerAccountId", # required
    #       activation_key: "ActivationKey", # required
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    # @return [Types::AcceptConnectionProposalResponse]
    def accept_connection_proposal(params = {}, options = {})
      request = build_request(:accept_connection_proposal, params)
      request.send_request(options)
    end

    # <p>Initiates the process to create a Connection across the specified Environment. </p> <p>The Environment dictates the specified partner and location to which the other end of the connection should attach. You can see a list of the available Environments by calling <a>ListEnvironments</a> </p> <p>The Attach Point specifies where within the AWS Network your connection will logically connect.</p> <p>After a successful call to this method, the resulting <a>Connection</a> will return an Activation Key which will need to be brought to the specific partner's portal to confirm the <a>Connection</a> on both sides. (See <a>Environment$activationPageUrl</a> for a direct link to the partner portal). </p>
    # @param [Hash, Types::CreateConnectionRequest] params
    # @option params [String] :description
    #   <p>A description to distinguish this <a>Connection</a>.</p>
    # @option params [String] :bandwidth
    #   <p>The desired bandwidth of the requested <a>Connection</a> </p>
    # @option params [Types::AttachPoint] :attach_point
    #   <p>The Attach Point to which the connection should be associated."</p>
    # @option params [String] :environment_id
    #   <p>The identifier of the <a>Environment</a> across which this <a>Connection</a> should be created.</p> <p>The available <a>Environment</a> objects can be determined using <a>ListEnvironments</a>.</p>
    # @option params [Types::RemoteAccountIdentifier] :remote_account
    #   <p>Account and/or principal identifying information that can be verified by the partner of this specific Environment.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tag to associate with the resulting <a>Connection</a>.</p>
    # @option params [String] :client_token
    #   <p>Idempotency token used for the request.</p>
    # @example Create Connection on specific environment
    #   # Example operation for create_connection
    #   params = {
    #     bandwidth: "1Gbps",
    #     environment_id: "mce-aws-acme-1",
    #     remote_account: {
    #     "identifier" => PartnerAccountDetails
    #   },
    #     attach_point: {
    #     "directConnectGateway" => 90392BE3-219C-47FD-BBA5-03DF76D2542A
    #   }
    #   }
    #   options = {}
    #   response = client.create_connection(params, options)
    #   response.to_h #=>
    #   {
    #     connection: {
    #       id: "mcc-abc12345",
    #       arn: "arn:aws:interconnect:us-east-1:000000000000:connection/mcc-abc12345",
    #       description: "My MultiCloud Connection",
    #       bandwidth: "1Gbps",
    #       attach_point: {
    #     "directConnectGateway" => 90392BE3-219C-47FD-BBA5-03DF76D2542A
    #   },
    #       environment_id: "mce-aws-acme-1",
    #       provider: {
    #     "cloudServiceProvider" => acme
    #   },
    #       location: "acme-east",
    #       type: "Multicloud",
    #       state: requested,
    #       shared_id: "B0615F4D-E588-47AD-9D04-1449EAA61C91",
    #       owner_account: "000000000000",
    #       activation_key: "<Activation Key Data>"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     description: "ConnectionDescription",
    #     bandwidth: "ConnectionBandwidth", # required
    #     attach_point: { # required
    #       # One of:
    #       direct_connect_gateway: "DirectConnectGatewayAttachPoint",
    #       arn: "AmazonResourceName"
    #     },
    #     environment_id: "EnvironmentId", # required
    #     remote_account: {
    #       # One of:
    #       identifier: "RemoteOwnerAccount"
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     client_token: "String"
    #   }
    #   options = {}
    #   response = client.create_connection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connection: {
    #       id: "ConnectionId", # required
    #       arn: "AmazonResourceName", # required
    #       description: "ConnectionDescription", # required
    #       bandwidth: "ConnectionBandwidth", # required
    #       attach_point: { # required
    #         # One of:
    #         direct_connect_gateway: "DirectConnectGatewayAttachPoint",
    #         arn: "AmazonResourceName"
    #       },
    #       environment_id: "EnvironmentId", # required
    #       provider: { # required
    #         # One of:
    #         cloud_service_provider: "CloudServiceProvider",
    #         last_mile_provider: "LastMileProvider"
    #       },
    #       location: "Location", # required
    #       type: "ProductType", # required
    #       state: "available" # One of: ["available", "requested", "pending", "down", "deleting", "deleted", "failed", "updating"], # required
    #       shared_id: "ConnectionSharedId", # required
    #       billing_tier: 1,
    #       owner_account: "OwnerAccountId", # required
    #       activation_key: "ActivationKey", # required
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    # @return [Types::CreateConnectionResponse]
    def create_connection(params = {}, options = {})
      request = build_request(:create_connection, params)
      request.send_request(options)
    end

    # <p>Deletes an existing Connection with the supplied identifier.</p> <p>This operation will also inform the remote partner of your intention to delete your connection. Note, the partner may still require you to delete to fully clean up resources, but the network connectivity provided by the <a>Connection</a> will cease to exist.</p>
    # @param [Hash, Types::DeleteConnectionRequest] params
    # @option params [String] :identifier
    #   <p>The identifier of the <a>Connection</a> to be deleted. </p>
    # @option params [String] :client_token
    #   <p>Idempotency token used for the request.</p>
    # @example Delete Connection
    #   # Example operation for delete_connection
    #   params = {
    #     identifier: "mcc-abc12345"
    #   }
    #   options = {}
    #   response = client.delete_connection(params, options)
    #   response.to_h #=>
    #   {
    #     connection: {
    #       id: "mcc-abc12345",
    #       arn: "arn:aws:interconnect:us-east-1:000000000000:connection/mcc-abc12345",
    #       description: "changed Description",
    #       bandwidth: "2Gbps",
    #       attach_point: {
    #     "directConnectGateway" => 90392BE3-219C-47FD-BBA5-03DF76D2542A
    #   },
    #       environment_id: "mce-aws-acme-1",
    #       provider: {
    #     "cloudServiceProvider" => acme
    #   },
    #       location: "acme-east",
    #       type: "Multicloud",
    #       state: deleting,
    #       shared_id: "B0615F4D-E588-47AD-9D04-1449EAA61C91",
    #       owner_account: "000000000000",
    #       activation_key: "<Activation Key Data>"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "ConnectionId", # required
    #     client_token: "String"
    #   }
    #   options = {}
    #   response = client.delete_connection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connection: { # required
    #       id: "ConnectionId", # required
    #       arn: "AmazonResourceName", # required
    #       description: "ConnectionDescription", # required
    #       bandwidth: "ConnectionBandwidth", # required
    #       attach_point: { # required
    #         # One of:
    #         direct_connect_gateway: "DirectConnectGatewayAttachPoint",
    #         arn: "AmazonResourceName"
    #       },
    #       environment_id: "EnvironmentId", # required
    #       provider: { # required
    #         # One of:
    #         cloud_service_provider: "CloudServiceProvider",
    #         last_mile_provider: "LastMileProvider"
    #       },
    #       location: "Location", # required
    #       type: "ProductType", # required
    #       state: "available" # One of: ["available", "requested", "pending", "down", "deleting", "deleted", "failed", "updating"], # required
    #       shared_id: "ConnectionSharedId", # required
    #       billing_tier: 1,
    #       owner_account: "OwnerAccountId", # required
    #       activation_key: "ActivationKey", # required
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    # @return [Types::DeleteConnectionResponse]
    def delete_connection(params = {}, options = {})
      request = build_request(:delete_connection, params)
      request.send_request(options)
    end

    # <p>Describes the details of a connection proposal generated at a partner's portal.</p>
    # @param [Hash, Types::DescribeConnectionProposalRequest] params
    # @option params [String] :activation_key
    #   <p>An Activation Key that was generated on a supported partner's portal. This key captures the desired parameters from the initial creation request.</p>
    # @example Describe Connection Proposal
    #   # Example operation for describe_connection_proposal
    #   params = {
    #     activation_key: "<Activation Key Data>"
    #   }
    #   options = {}
    #   response = client.describe_connection_proposal(params, options)
    #   response.to_h #=>
    #   {
    #     bandwidth: "1Gbps",
    #     environment_id: "mce-aws-acme-1",
    #     provider: {
    #     "cloudServiceProvider" => acme
    #   },
    #     location: "acme-east"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     activation_key: "ActivationKey", # required
    #   }
    #   options = {}
    #   response = client.describe_connection_proposal(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     bandwidth: "ConnectionBandwidth", # required
    #     environment_id: "EnvironmentId", # required
    #     provider: { # required
    #       # One of:
    #       cloud_service_provider: "CloudServiceProvider",
    #       last_mile_provider: "LastMileProvider"
    #     },
    #     location: "Location", # required
    #   }
    # @return [Types::DescribeConnectionProposalResponse]
    def describe_connection_proposal(params = {}, options = {})
      request = build_request(:describe_connection_proposal, params)
      request.send_request(options)
    end

    # <p>Describes the current state of a Connection resource as specified by the identifier. </p>
    # @param [Hash, Types::GetConnectionRequest] params
    # @option params [String] :identifier
    #   <p>The identifier of the requested <a>Connection</a> </p>
    # @example Get connection
    #   # Example operation for get_connection
    #   params = {
    #     identifier: "mcc-abc12345"
    #   }
    #   options = {}
    #   response = client.get_connection(params, options)
    #   response.to_h #=>
    #   {
    #     connection: {
    #       id: "mcc-abc12345",
    #       arn: "arn:aws:interconnect:us-east-1:000000000000:connection/mcc-abc12345",
    #       description: "My MultiCloud Connection",
    #       bandwidth: "1Gbps",
    #       attach_point: {
    #     "directConnectGateway" => 90392BE3-219C-47FD-BBA5-03DF76D2542A
    #   },
    #       environment_id: "mce-aws-acme-1",
    #       provider: {
    #     "cloudServiceProvider" => acme
    #   },
    #       location: "acme-east",
    #       type: "Multicloud",
    #       state: available,
    #       shared_id: "B0615F4D-E588-47AD-9D04-1449EAA61C91",
    #       owner_account: "000000000000",
    #       activation_key: "<Activation Key Data>"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "ConnectionId", # required
    #   }
    #   options = {}
    #   response = client.get_connection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connection: {
    #       id: "ConnectionId", # required
    #       arn: "AmazonResourceName", # required
    #       description: "ConnectionDescription", # required
    #       bandwidth: "ConnectionBandwidth", # required
    #       attach_point: { # required
    #         # One of:
    #         direct_connect_gateway: "DirectConnectGatewayAttachPoint",
    #         arn: "AmazonResourceName"
    #       },
    #       environment_id: "EnvironmentId", # required
    #       provider: { # required
    #         # One of:
    #         cloud_service_provider: "CloudServiceProvider",
    #         last_mile_provider: "LastMileProvider"
    #       },
    #       location: "Location", # required
    #       type: "ProductType", # required
    #       state: "available" # One of: ["available", "requested", "pending", "down", "deleting", "deleted", "failed", "updating"], # required
    #       shared_id: "ConnectionSharedId", # required
    #       billing_tier: 1,
    #       owner_account: "OwnerAccountId", # required
    #       activation_key: "ActivationKey", # required
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    # @return [Types::GetConnectionResponse]
    def get_connection(params = {}, options = {})
      request = build_request(:get_connection, params)
      request.send_request(options)
    end

    # <p>Describes a specific <a>Environment</a> </p>
    # @param [Hash, Types::GetEnvironmentRequest] params
    # @option params [String] :id
    #   <p>The identifier of the specific <a>Environment</a> to describe.</p>
    # @example Get a specific environment
    #   # Example operation for get_environment
    #   params = {
    #     id: "mce-aws-acme-1"
    #   }
    #   options = {}
    #   response = client.get_environment(params, options)
    #   response.to_h #=>
    #   {
    #     environment: {
    #       environment_id: "mce-aws-acme-1",
    #       provider: {
    #     "cloudServiceProvider" => acme
    #   },
    #       location: "acme-east",
    #       state: available,
    #       type: "Multicloud",
    #       bandwidths: {
    #         available: [
    #           "1Gbps"
    #         ],
    #         supported: [
    #           "1Gbps",
    #           "2Gbps"
    #         ]
    #       }
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "EnvironmentId", # required
    #   }
    #   options = {}
    #   response = client.get_environment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     environment: { # required
    #       provider: { # required
    #         # One of:
    #         cloud_service_provider: "CloudServiceProvider",
    #         last_mile_provider: "LastMileProvider"
    #       },
    #       location: "Location", # required
    #       environment_id: "EnvironmentId", # required
    #       state: "available" # One of: ["available", "limited", "unavailable"], # required
    #       bandwidths: { # required
    #         available: ["ConnectionBandwidth"],
    #         supported: ["ConnectionBandwidth"]
    #       },
    #       type: "ProductType", # required
    #       activation_page_url: "String",
    #       remote_identifier_type: "account" # One of: ["account", "email"]
    #     }
    #   }
    # @return [Types::GetEnvironmentResponse]
    def get_environment(params = {}, options = {})
      request = build_request(:get_environment, params)
      request.send_request(options)
    end

    # <p>Lists all Attach Points the caller has access to that are valid for the specified <a>Environment</a>.</p>
    # @param [Hash, Types::ListAttachPointsRequest] params
    # @option params [String] :environment_id
    #   <p>The identifier of the <a>Environment</a> for which to list valid Attach Points.</p>
    # @option params [Integer] :max_results
    #   <p>The max number of list results in a single paginated response.</p>
    # @option params [String] :next_token
    #   <p>A pagination token from a previous paginated response indicating you wish to get the next page.</p>
    # @example List Attach Points
    #   # Example operation for list_attach_points
    #   params = {
    #     environment_id: "mce-aws-acme-1"
    #   }
    #   options = {}
    #   response = client.list_attach_points(params, options)
    #   response.to_h #=>
    #   {
    #     attach_points: [
    #       {
    #         type: DirectConnectGateway,
    #         identifier: "90392BE3-219C-47FD-BBA5-03DF76D2542A",
    #         name: "My DirectConnectGateway"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     environment_id: "EnvironmentId", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_attach_points(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     attach_points: [ # required
    #       {
    #         type: "DirectConnectGateway" # One of: ["DirectConnectGateway"], # required
    #         identifier: "String", # required
    #         name: "String", # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAttachPointsResponse]
    def list_attach_points(params = {}, options = {})
      request = build_request(:list_attach_points, params)
      request.send_request(options)
    end

    # <p>Lists all connection objects to which the caller has access.</p> <p>Allows for optional filtering by the following properties:</p> <ul> <li> <p> <code>state</code> </p> </li> <li> <p> <code>environmentId</code> </p> </li> <li> <p> <code>provider</code> </p> </li> <li> <p> <code>attach point</code> </p> </li> </ul> <p>Only <a>Connection</a> objects matching all filters will be returned.</p>
    # @param [Hash, Types::ListConnectionsRequest] params
    # @option params [Integer] :max_results
    #   <p>The max number of list results in a single paginated response.</p>
    # @option params [String] :next_token
    #   <p>A pagination token from a previous paginated response indicating you wish to get the next page of results.</p>
    # @option params [String] :state
    #   <p>Filter the results to only include <a>Connection</a> objects in the given <a>Connection$state</a>.</p>
    # @option params [String] :environment_id
    #   <p>Filter the results to only include <a>Connection</a> objects on the given <a>Environment</a>.</p>
    # @option params [Types::Provider] :provider
    #   <p>Filter the results to only include <a>Connection</a> objects to the given <a>Provider</a>.</p>
    # @option params [Types::AttachPoint] :attach_point
    #   <p>Filter results to only include <a>Connection</a> objects attached to the given <a>AttachPoint</a>.</p>
    # @example List All Connections
    #   # Example operation for list_connections
    #   params = {}
    #   options = {}
    #   response = client.list_connections(params, options)
    #   response.to_h #=>
    #   {
    #     connections: [
    #       {
    #         id: "mcc-abc12345",
    #         arn: "arn:aws:interconnect:us-east-1:000000000000:connection/mcc-abc12345",
    #         description: "My MultiCloud Connection",
    #         bandwidth: "1Gbps",
    #         attach_point: {
    #     "directConnectGateway" => 90392BE3-219C-47FD-BBA5-03DF76D2542A
    #   },
    #         environment_id: "mce-aws-acme-1",
    #         provider: {
    #     "cloudServiceProvider" => acme
    #   },
    #         location: "acme-east",
    #         type: "Multicloud",
    #         state: available,
    #         shared_id: "B0615F4D-E588-47AD-9D04-1449EAA61C91"
    #       },
    #       {
    #         id: "lmcc-xyz98765",
    #         arn: "arn:aws:interconnect:us-east-1:000000000000:connection/lmcc-xyz98765",
    #         description: "My LastMile  Connection",
    #         bandwidth: "1Gbps",
    #         attach_point: {
    #     "directConnectGateway" => 244FB7E5-3C56-4F7D-AAB9-E35F70764154
    #   },
    #         environment_id: "mce-aws-lastmile-1",
    #         provider: {
    #     "lastMileProvider" => lastmile
    #   },
    #         location: "lastmile-east",
    #         type: "LastMile",
    #         state: pending,
    #         shared_id: "27C2CDD8-8FDF-402D-9DFF-92F66ED7C7FC"
    #       }
    #     ]
    #   }
    # @example List Connections in available state
    #   # Example operation for list_connections
    #   params = {
    #     state: available
    #   }
    #   options = {}
    #   response = client.list_connections(params, options)
    #   response.to_h #=>
    #   {
    #     connections: [
    #       {
    #         id: "mcc-abc12345",
    #         arn: "arn:aws:interconnect:us-east-1:000000000000:connection/mcc-abc12345",
    #         description: "My MultiCloud Connection",
    #         bandwidth: "1Gbps",
    #         attach_point: {
    #     "directConnectGateway" => 90392BE3-219C-47FD-BBA5-03DF76D2542A
    #   },
    #         environment_id: "mce-aws-acme-1",
    #         provider: {
    #     "cloudServiceProvider" => acme
    #   },
    #         location: "acme-east",
    #         type: "Multicloud",
    #         state: available,
    #         shared_id: "B0615F4D-E588-47AD-9D04-1449EAA61C91"
    #       }
    #     ]
    #   }
    # @example List Connections on specific Environment
    #   # Example operation for list_connections
    #   params = {
    #     environment_id: "mce-aws-acme-1"
    #   }
    #   options = {}
    #   response = client.list_connections(params, options)
    #   response.to_h #=>
    #   {
    #     connections: [
    #       {
    #         id: "lmcc-xyz98765",
    #         arn: "arn:aws:interconnect:us-east-1:000000000000:connection/lmcc-xyz98765",
    #         description: "My LastMile  Connection",
    #         bandwidth: "1Gbps",
    #         attach_point: {
    #     "directConnectGateway" => 244FB7E5-3C56-4F7D-AAB9-E35F70764154
    #   },
    #         environment_id: "mce-aws-lastmile-1",
    #         provider: {
    #     "lastMileProvider" => lastmile
    #   },
    #         location: "lastmile-east",
    #         type: "LastMile",
    #         state: pending,
    #         shared_id: "27C2CDD8-8FDF-402D-9DFF-92F66ED7C7FC"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken",
    #     state: "available" # One of: ["available", "requested", "pending", "down", "deleting", "deleted", "failed", "updating"],
    #     environment_id: "EnvironmentId",
    #     provider: {
    #       # One of:
    #       cloud_service_provider: "CloudServiceProvider",
    #       last_mile_provider: "LastMileProvider"
    #     },
    #     attach_point: {
    #       # One of:
    #       direct_connect_gateway: "DirectConnectGatewayAttachPoint",
    #       arn: "AmazonResourceName"
    #     }
    #   }
    #   options = {}
    #   response = client.list_connections(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connections: [
    #       {
    #         id: "ConnectionId", # required
    #         arn: "AmazonResourceName", # required
    #         description: "ConnectionDescription", # required
    #         bandwidth: "ConnectionBandwidth", # required
    #         attach_point: { # required
    #           # One of:
    #           direct_connect_gateway: "DirectConnectGatewayAttachPoint",
    #           arn: "AmazonResourceName"
    #         },
    #         environment_id: "EnvironmentId", # required
    #         provider: { # required
    #           # One of:
    #           cloud_service_provider: "CloudServiceProvider",
    #           last_mile_provider: "LastMileProvider"
    #         },
    #         location: "Location", # required
    #         type: "ProductType", # required
    #         state: "available" # One of: ["available", "requested", "pending", "down", "deleting", "deleted", "failed", "updating"], # required
    #         shared_id: "ConnectionSharedId", # required
    #         billing_tier: 1
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListConnectionsResponse]
    def list_connections(params = {}, options = {})
      request = build_request(:list_connections, params)
      request.send_request(options)
    end

    # <p>Lists all of the environments that can produce connections that will land in the called AWS region.</p>
    # @param [Hash, Types::ListEnvironmentsRequest] params
    # @option params [Integer] :max_results
    #   <p>The max number of list results in a single paginated response.</p>
    # @option params [String] :next_token
    #   <p>A pagination token from a previous paginated response indicating you wish to get the next page of results.</p>
    # @option params [Types::Provider] :provider
    #   <p>Filter results to only include <a>Environment</a> objects that connect to the <a>Provider</a>.</p>
    # @option params [String] :location
    #   <p>Filter results to only include <a>Environment</a> objects that connect to a given location distiguisher.</p>
    # @example List All Environments
    #   # Example operation for list_environments
    #   params = {}
    #   options = {}
    #   response = client.list_environments(params, options)
    #   response.to_h #=>
    #   {
    #     environments: [
    #       {
    #         environment_id: "mce-aws-acme-1",
    #         provider: {
    #     "cloudServiceProvider" => acme
    #   },
    #         location: "acme-east",
    #         state: available,
    #         type: "Multicloud",
    #         bandwidths: {
    #           available: [
    #             "1Gbps"
    #           ],
    #           supported: [
    #             "1Gbps",
    #             "2Gbps"
    #           ]
    #         }
    #       },
    #       {
    #         environment_id: "mce-aws-lastmile-1",
    #         provider: {
    #     "cloudServiceProvider" => acme
    #   },
    #         location: "lastmile-east",
    #         state: available,
    #         type: "LastMile",
    #         bandwidths: {
    #           available: [
    #             "1Gbps"
    #           ],
    #           supported: [
    #             "1Gbps",
    #             "2Gbps"
    #           ]
    #         }
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken",
    #     provider: {
    #       # One of:
    #       cloud_service_provider: "CloudServiceProvider",
    #       last_mile_provider: "LastMileProvider"
    #     },
    #     location: "Location"
    #   }
    #   options = {}
    #   response = client.list_environments(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     environments: [ # required
    #       {
    #         provider: { # required
    #           # One of:
    #           cloud_service_provider: "CloudServiceProvider",
    #           last_mile_provider: "LastMileProvider"
    #         },
    #         location: "Location", # required
    #         environment_id: "EnvironmentId", # required
    #         state: "available" # One of: ["available", "limited", "unavailable"], # required
    #         bandwidths: { # required
    #           available: ["ConnectionBandwidth"],
    #           supported: ["ConnectionBandwidth"]
    #         },
    #         type: "ProductType", # required
    #         activation_page_url: "String",
    #         remote_identifier_type: "account" # One of: ["account", "email"]
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListEnvironmentsResponse]
    def list_environments(params = {}, options = {})
      request = build_request(:list_environments, params)
      request.send_request(options)
    end

    # <p>List all current tags on the specified resource. Currently this supports <a>Connection</a> resources. </p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :arn
    #   <p>The resource ARN for which to list tags. </p>
    # @example List Tags
    #   # Example operation for list_tags_for_resource
    #   params = {
    #     arn: "arn:aws:interconnect:us-east-1:000000000000:connection/mcc-abc12345"
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    #   response.to_h #=>
    #   {
    #     tags: {
    #       "TagKey1" => "TagValue1",
    #       "TagKey2" => "TagValue2"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "AmazonResourceName", # required
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

    # <p>Add new tags to the specified resource.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :arn
    #   <p>The ARN of the resource that should receive the new tags.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A map of tags to apply to the specified resource.</p>
    # @example Apply Tags
    #   # Example operation for tag_resource
    #   params = {
    #     arn: "arn:aws:interconnect:us-east-1:000000000000:connection/mcc-abc12345",
    #     tags: {
    #       "TagKey1" => "TagValue1",
    #       "TagKey2" => "TagValue2"
    #     }
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "AmazonResourceName", # required
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

    # <p>Removes tags from the specified resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :arn
    #   <p>The ARN of the resource from which the specified tags should be removed.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The list of tag keys that should be removed from the resource.</p>
    # @example Remove Tags
    #   # Example operation for untag_resource
    #   params = {
    #     arn: "arn:aws:interconnect:us-east-1:000000000000:connection/mcc-abc12345",
    #     tag_keys: [
    #       "TagKey1",
    #       "TagKey2"
    #     ]
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "AmazonResourceName", # required
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

    # <p>Modifies an existing connection. Currently we support modifications to the connection's description and/or bandwidth.</p>
    # @param [Hash, Types::UpdateConnectionRequest] params
    # @option params [String] :identifier
    #   <p>The identifier of the <a>Connection</a> that should be updated.</p>
    # @option params [String] :description
    #   <p>An updated description to apply to the <a>Connection</a> </p>
    # @option params [String] :bandwidth
    #   <p>Request a new bandwidth size on the given <a>Connection</a>.</p> <p>Note that changes to the size may be subject to additional policy, and does require the remote partner provider to acknowledge and permit this new bandwidth size.</p>
    # @option params [String] :client_token
    #   <p>Idempotency token used for the request.</p>
    # @example Update Connection Description
    #   # Example operation for update_connection
    #   params = {
    #     identifier: "mcc-abc12345",
    #     description: "Changed Description"
    #   }
    #   options = {}
    #   response = client.update_connection(params, options)
    #   response.to_h #=>
    #   {
    #     connection: {
    #       id: "mcc-abc12345",
    #       arn: "arn:aws:interconnect:us-east-1:000000000000:connection/mcc-abc12345",
    #       description: "changed Description",
    #       bandwidth: "1Gbps",
    #       attach_point: {
    #     "directConnectGateway" => 90392BE3-219C-47FD-BBA5-03DF76D2542A
    #   },
    #       environment_id: "mce-aws-acme-1",
    #       provider: {
    #     "cloudServiceProvider" => acme
    #   },
    #       location: "acme-east",
    #       type: "Multicloud",
    #       state: available,
    #       shared_id: "B0615F4D-E588-47AD-9D04-1449EAA61C91",
    #       owner_account: "000000000000",
    #       activation_key: "<Activation Key Data>"
    #     }
    #   }
    # @example Update Connection Bandwidth
    #   # Example operation for update_connection
    #   params = {
    #     identifier: "mcc-abc12345",
    #     bandwidth: "2Gbps"
    #   }
    #   options = {}
    #   response = client.update_connection(params, options)
    #   response.to_h #=>
    #   {
    #     connection: {
    #       id: "mcc-abc12345",
    #       arn: "arn:aws:interconnect:us-east-1:000000000000:connection/mcc-abc12345",
    #       description: "changed Description",
    #       bandwidth: "2Gbps",
    #       attach_point: {
    #     "directConnectGateway" => 90392BE3-219C-47FD-BBA5-03DF76D2542A
    #   },
    #       environment_id: "mce-aws-acme-1",
    #       provider: {
    #     "cloudServiceProvider" => acme
    #   },
    #       location: "acme-east",
    #       type: "Multicloud",
    #       state: updating,
    #       shared_id: "B0615F4D-E588-47AD-9D04-1449EAA61C91",
    #       owner_account: "000000000000",
    #       activation_key: "<Activation Key Data>"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "ConnectionId", # required
    #     description: "ConnectionDescription",
    #     bandwidth: "ConnectionBandwidth",
    #     client_token: "String"
    #   }
    #   options = {}
    #   response = client.update_connection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connection: {
    #       id: "ConnectionId", # required
    #       arn: "AmazonResourceName", # required
    #       description: "ConnectionDescription", # required
    #       bandwidth: "ConnectionBandwidth", # required
    #       attach_point: { # required
    #         # One of:
    #         direct_connect_gateway: "DirectConnectGatewayAttachPoint",
    #         arn: "AmazonResourceName"
    #       },
    #       environment_id: "EnvironmentId", # required
    #       provider: { # required
    #         # One of:
    #         cloud_service_provider: "CloudServiceProvider",
    #         last_mile_provider: "LastMileProvider"
    #       },
    #       location: "Location", # required
    #       type: "ProductType", # required
    #       state: "available" # One of: ["available", "requested", "pending", "down", "deleting", "deleted", "failed", "updating"], # required
    #       shared_id: "ConnectionSharedId", # required
    #       billing_tier: 1,
    #       owner_account: "OwnerAccountId", # required
    #       activation_key: "ActivationKey", # required
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    # @return [Types::UpdateConnectionResponse]
    def update_connection(params = {}, options = {})
      request = build_request(:update_connection, params)
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
      context[:gem_name] = 'aws-sdk-interconnect'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {
        connection_available: Waiters::ConnectionAvailable,
        connection_deleted: Waiters::ConnectionDeleted
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
          rpc_v2_cbor: Smithy::Client::RpcV2Cbor,
          json_rpc: Aws::Core::JsonRpc
        }
      end
    end
  end
end
