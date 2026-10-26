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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:networkmanager)

module Aws::NetworkManager
  # An API client for Aws::NetworkManager.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::NetworkManager
    @identifier = :networkmanager

    add_plugin(::Aws::NetworkManager::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::NetworkManager::EndpointProvider)
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

    # <p>Accepts a core network attachment request. </p>
    #          <p>Once the attachment request is accepted by a core network owner, the attachment is
    #          created and connected to a core network.</p>
    # @param [Hash, Types::AcceptAttachmentRequest] params
    # @option params [String] :attachment_id
    #   <p>The ID of the attachment. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     attachment_id: "AttachmentId", # required
    #   }
    #   options = {}
    #   response = client.accept_attachment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     attachment: {
    #       core_network_id: "CoreNetworkId",
    #       core_network_arn: "CoreNetworkArn",
    #       attachment_id: "AttachmentId",
    #       owner_account_id: "AWSAccountId",
    #       attachment_type: "CONNECT" # One of: ["CONNECT", "SITE_TO_SITE_VPN", "VPC", "DIRECT_CONNECT_GATEWAY", "TRANSIT_GATEWAY_ROUTE_TABLE"],
    #       state: "REJECTED" # One of: ["REJECTED", "PENDING_ATTACHMENT_ACCEPTANCE", "CREATING", "FAILED", "AVAILABLE", "UPDATING", "PENDING_NETWORK_UPDATE", "PENDING_TAG_ACCEPTANCE", "DELETING"],
    #       edge_location: "ExternalRegionCode",
    #       edge_locations: ["ExternalRegionCode"],
    #       resource_arn: "ResourceArn",
    #       attachment_policy_rule_number: 1,
    #       segment_name: "ConstrainedString",
    #       network_function_group_name: "NetworkFunctionGroupName",
    #       tags: [
    #         {
    #           key: "TagKey",
    #           value: "TagValue"
    #         }
    #       ],
    #       proposed_segment_change: {
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue"
    #           }
    #         ],
    #         attachment_policy_rule_number: 1,
    #         segment_name: "ConstrainedString"
    #       },
    #       proposed_network_function_group_change: {
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue"
    #           }
    #         ],
    #         attachment_policy_rule_number: 1,
    #         network_function_group_name: "ConstrainedString"
    #       },
    #       created_at: Time.now,
    #       updated_at: Time.now,
    #       last_modification_errors: [
    #         {
    #           code: "VPC_NOT_FOUND" # One of: ["VPC_NOT_FOUND", "SUBNET_NOT_FOUND", "SUBNET_DUPLICATED_IN_AVAILABILITY_ZONE", "SUBNET_NO_FREE_ADDRESSES", "SUBNET_UNSUPPORTED_AVAILABILITY_ZONE", "SUBNET_NO_IPV6_CIDRS", "VPN_CONNECTION_NOT_FOUND", "MAXIMUM_NO_ENCAP_LIMIT_EXCEEDED", "DIRECT_CONNECT_GATEWAY_NOT_FOUND", "DIRECT_CONNECT_GATEWAY_EXISTING_ATTACHMENTS", "DIRECT_CONNECT_GATEWAY_NO_PRIVATE_VIF", "VPN_EXISTING_ASSOCIATIONS", "VPC_UNSUPPORTED_FEATURES"],
    #           message: "ServerSideString",
    #           resource_arn: "ResourceArn",
    #           request_id: "ServerSideString"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::AcceptAttachmentResponse]
    def accept_attachment(params = {}, options = {})
      request = build_request(:accept_attachment, params)
      request.send_request(options)
    end

    # <p>Associates a core network Connect peer with a device and optionally, with a link. </p>
    #          <p>If you specify a link, it must be associated with the specified device. You can only
    #          associate core network Connect peers that have been created on a core network Connect
    #          attachment on a core network. </p>
    # @param [Hash, Types::AssociateConnectPeerRequest] params
    # @option params [String] :global_network_id
    #   <p>The ID of your global network.</p>
    # @option params [String] :connect_peer_id
    #   <p>The ID of the Connect peer.</p>
    # @option params [String] :device_id
    #   <p>The ID of the device.</p>
    # @option params [String] :link_id
    #   <p>The ID of the link.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     global_network_id: "GlobalNetworkId", # required
    #     connect_peer_id: "ConnectPeerId", # required
    #     device_id: "DeviceId", # required
    #     link_id: "LinkId"
    #   }
    #   options = {}
    #   response = client.associate_connect_peer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connect_peer_association: {
    #       connect_peer_id: "ConnectPeerId",
    #       global_network_id: "GlobalNetworkId",
    #       device_id: "DeviceId",
    #       link_id: "LinkId",
    #       state: "PENDING" # One of: ["PENDING", "AVAILABLE", "DELETING", "DELETED"]
    #     }
    #   }
    # @return [Types::AssociateConnectPeerResponse]
    def associate_connect_peer(params = {}, options = {})
      request = build_request(:associate_connect_peer, params)
      request.send_request(options)
    end

    # <p>Associates a customer gateway with a device and optionally, with a link. If you
    #             specify a link, it must be associated with the specified device. </p>
    #          <p>You can only associate customer gateways that are connected to a VPN attachment on a
    #             transit gateway or core network registered in your global network. When you register a
    #             transit gateway or core network, customer gateways that are connected to the transit
    #             gateway are automatically included in the global network. To list customer gateways
    #             that are connected to a transit gateway, use the <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeVpnConnections.html">DescribeVpnConnections</a> EC2 API and filter by
    #                 <code>transit-gateway-id</code>.</p>
    #          <p>You cannot associate a customer gateway with more than one device and link. </p>
    # @param [Hash, Types::AssociateCustomerGatewayRequest] params
    # @option params [String] :customer_gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the customer gateway.</p>
    # @option params [String] :global_network_id
    #   <p>The ID of the global network.</p>
    # @option params [String] :device_id
    #   <p>The ID of the device.</p>
    # @option params [String] :link_id
    #   <p>The ID of the link.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     customer_gateway_arn: "CustomerGatewayArn", # required
    #     global_network_id: "GlobalNetworkId", # required
    #     device_id: "DeviceId", # required
    #     link_id: "LinkId"
    #   }
    #   options = {}
    #   response = client.associate_customer_gateway(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     customer_gateway_association: {
    #       customer_gateway_arn: "CustomerGatewayArn",
    #       global_network_id: "GlobalNetworkId",
    #       device_id: "DeviceId",
    #       link_id: "LinkId",
    #       state: "PENDING" # One of: ["PENDING", "AVAILABLE", "DELETING", "DELETED"]
    #     }
    #   }
    # @return [Types::AssociateCustomerGatewayResponse]
    def associate_customer_gateway(params = {}, options = {})
      request = build_request(:associate_customer_gateway, params)
      request.send_request(options)
    end

    # <p>Associates a link to a device. A device can be associated to multiple links and a link can be associated to multiple devices. The device and link must be in the same global network and the same site.</p>
    # @param [Hash, Types::AssociateLinkRequest] params
    # @option params [String] :global_network_id
    #   <p>The ID of the global network.</p>
    # @option params [String] :device_id
    #   <p>The ID of the device.</p>
    # @option params [String] :link_id
    #   <p>The ID of the link.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     global_network_id: "GlobalNetworkId", # required
    #     device_id: "DeviceId", # required
    #     link_id: "LinkId", # required
    #   }
    #   options = {}
    #   response = client.associate_link(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     link_association: {
    #       global_network_id: "GlobalNetworkId",
    #       device_id: "DeviceId",
    #       link_id: "LinkId",
    #       link_association_state: "PENDING" # One of: ["PENDING", "AVAILABLE", "DELETING", "DELETED"]
    #     }
    #   }
    # @return [Types::AssociateLinkResponse]
    def associate_link(params = {}, options = {})
      request = build_request(:associate_link, params)
      request.send_request(options)
    end

    # <p>Associates a transit gateway Connect peer with a device, and optionally, with a link. If you
    #             specify a link, it must be associated with the specified device. </p>
    #          <p>You can only associate transit gateway Connect peers that have been created on a
    #             transit gateway that's registered in your global network.</p>
    #          <p>You cannot associate a transit gateway Connect peer with more than one device and link. </p>
    # @param [Hash, Types::AssociateTransitGatewayConnectPeerRequest] params
    # @option params [String] :global_network_id
    #   <p>The ID of the global network.</p>
    # @option params [String] :transit_gateway_connect_peer_arn
    #   <p>The Amazon Resource Name (ARN) of the Connect peer.</p>
    # @option params [String] :device_id
    #   <p>The ID of the device.</p>
    # @option params [String] :link_id
    #   <p>The ID of the link.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     global_network_id: "GlobalNetworkId", # required
    #     transit_gateway_connect_peer_arn: "TransitGatewayConnectPeerArn", # required
    #     device_id: "DeviceId", # required
    #     link_id: "LinkId"
    #   }
    #   options = {}
    #   response = client.associate_transit_gateway_connect_peer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     transit_gateway_connect_peer_association: {
    #       transit_gateway_connect_peer_arn: "TransitGatewayConnectPeerArn",
    #       global_network_id: "GlobalNetworkId",
    #       device_id: "DeviceId",
    #       link_id: "LinkId",
    #       state: "PENDING" # One of: ["PENDING", "AVAILABLE", "DELETING", "DELETED"]
    #     }
    #   }
    # @return [Types::AssociateTransitGatewayConnectPeerResponse]
    def associate_transit_gateway_connect_peer(params = {}, options = {})
      request = build_request(:associate_transit_gateway_connect_peer, params)
      request.send_request(options)
    end

    # <p>Creates a core network Connect attachment from a specified core network attachment. </p>
    #          <p>A core network Connect attachment is a GRE-based tunnel attachment that you can use to
    #          establish a connection between a core network and an appliance. A core network Connect
    #          attachment uses an existing VPC attachment as the underlying transport mechanism.</p>
    # @param [Hash, Types::CreateConnectAttachmentRequest] params
    # @option params [String] :core_network_id
    #   <p>The ID of a core network where you want to create the attachment. </p>
    # @option params [String] :edge_location
    #   <p>The Region where the edge is located.</p>
    # @option params [String] :transport_attachment_id
    #   <p>The ID of the attachment between the two connections.</p>
    # @option params [String] :routing_policy_label
    #   <p>The routing policy label to apply to the Connect attachment for traffic routing decisions.</p>
    # @option params [Types::ConnectAttachmentOptions] :options
    #   <p>Options for creating an attachment.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The list of key-value tags associated with the request.</p>
    # @option params [String] :client_token
    #   <p>The client token associated with the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     core_network_id: "CoreNetworkId", # required
    #     edge_location: "ExternalRegionCode", # required
    #     transport_attachment_id: "AttachmentId", # required
    #     routing_policy_label: "ConstrainedString",
    #     options: { # required
    #       protocol: "GRE" # One of: ["GRE", "NO_ENCAP"]
    #     },
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ],
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_connect_attachment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connect_attachment: {
    #       attachment: {
    #         core_network_id: "CoreNetworkId",
    #         core_network_arn: "CoreNetworkArn",
    #         attachment_id: "AttachmentId",
    #         owner_account_id: "AWSAccountId",
    #         attachment_type: "CONNECT" # One of: ["CONNECT", "SITE_TO_SITE_VPN", "VPC", "DIRECT_CONNECT_GATEWAY", "TRANSIT_GATEWAY_ROUTE_TABLE"],
    #         state: "REJECTED" # One of: ["REJECTED", "PENDING_ATTACHMENT_ACCEPTANCE", "CREATING", "FAILED", "AVAILABLE", "UPDATING", "PENDING_NETWORK_UPDATE", "PENDING_TAG_ACCEPTANCE", "DELETING"],
    #         edge_location: "ExternalRegionCode",
    #         edge_locations: ["ExternalRegionCode"],
    #         resource_arn: "ResourceArn",
    #         attachment_policy_rule_number: 1,
    #         segment_name: "ConstrainedString",
    #         network_function_group_name: "NetworkFunctionGroupName",
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue"
    #           }
    #         ],
    #         proposed_segment_change: {
    #           tags: [
    #             {
    #               key: "TagKey",
    #               value: "TagValue"
    #             }
    #           ],
    #           attachment_policy_rule_number: 1,
    #           segment_name: "ConstrainedString"
    #         },
    #         proposed_network_function_group_change: {
    #           tags: [
    #             {
    #               key: "TagKey",
    #               value: "TagValue"
    #             }
    #           ],
    #           attachment_policy_rule_number: 1,
    #           network_function_group_name: "ConstrainedString"
    #         },
    #         created_at: Time.now,
    #         updated_at: Time.now,
    #         last_modification_errors: [
    #           {
    #             code: "VPC_NOT_FOUND" # One of: ["VPC_NOT_FOUND", "SUBNET_NOT_FOUND", "SUBNET_DUPLICATED_IN_AVAILABILITY_ZONE", "SUBNET_NO_FREE_ADDRESSES", "SUBNET_UNSUPPORTED_AVAILABILITY_ZONE", "SUBNET_NO_IPV6_CIDRS", "VPN_CONNECTION_NOT_FOUND", "MAXIMUM_NO_ENCAP_LIMIT_EXCEEDED", "DIRECT_CONNECT_GATEWAY_NOT_FOUND", "DIRECT_CONNECT_GATEWAY_EXISTING_ATTACHMENTS", "DIRECT_CONNECT_GATEWAY_NO_PRIVATE_VIF", "VPN_EXISTING_ASSOCIATIONS", "VPC_UNSUPPORTED_FEATURES"],
    #             message: "ServerSideString",
    #             resource_arn: "ResourceArn",
    #             request_id: "ServerSideString"
    #           }
    #         ]
    #       },
    #       transport_attachment_id: "AttachmentId",
    #       options: {
    #         protocol: "GRE" # One of: ["GRE", "NO_ENCAP"]
    #       }
    #     }
    #   }
    # @return [Types::CreateConnectAttachmentResponse]
    def create_connect_attachment(params = {}, options = {})
      request = build_request(:create_connect_attachment, params)
      request.send_request(options)
    end

    # <p>Creates a core network Connect peer for a specified core network connect attachment between a core network and an appliance.
    #          The peer address and transit gateway address must be the same IP address family (IPv4 or IPv6).</p>
    # @param [Hash, Types::CreateConnectPeerRequest] params
    # @option params [String] :connect_attachment_id
    #   <p>The ID of the connection attachment.</p>
    # @option params [String] :core_network_address
    #   <p>A Connect peer core network address. This only applies only when the protocol is <code>GRE</code>.</p>
    # @option params [String] :peer_address
    #   <p>The Connect peer address.</p>
    # @option params [Types::BgpOptions] :bgp_options
    #   <p>The Connect peer BGP options. This only applies only when the protocol is <code>GRE</code>.</p>
    # @option params [Array<String>] :inside_cidr_blocks
    #   <p>The inside IP addresses used for BGP peering.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags associated with the peer request.</p>
    # @option params [String] :client_token
    #   <p>The client token associated with the request.</p>
    # @option params [String] :subnet_arn
    #   <p>The subnet ARN for the Connect peer. This only applies only when the protocol is NO_ENCAP.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     connect_attachment_id: "AttachmentId", # required
    #     core_network_address: "IPAddress",
    #     peer_address: "IPAddress", # required
    #     bgp_options: {
    #       peer_asn: 1
    #     },
    #     inside_cidr_blocks: ["ConstrainedString"],
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ],
    #     client_token: "ClientToken",
    #     subnet_arn: "SubnetArn"
    #   }
    #   options = {}
    #   response = client.create_connect_peer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connect_peer: {
    #       core_network_id: "CoreNetworkId",
    #       connect_attachment_id: "AttachmentId",
    #       connect_peer_id: "ConnectPeerId",
    #       edge_location: "ExternalRegionCode",
    #       state: "CREATING" # One of: ["CREATING", "FAILED", "AVAILABLE", "DELETING"],
    #       created_at: Time.now,
    #       configuration: {
    #         core_network_address: "IPAddress",
    #         peer_address: "IPAddress",
    #         inside_cidr_blocks: ["ConstrainedString"],
    #         protocol: "GRE" # One of: ["GRE", "NO_ENCAP"],
    #         bgp_configurations: [
    #           {
    #             core_network_asn: 1,
    #             peer_asn: 1,
    #             core_network_address: "IPAddress",
    #             peer_address: "IPAddress"
    #           }
    #         ]
    #       },
    #       tags: [
    #         {
    #           key: "TagKey",
    #           value: "TagValue"
    #         }
    #       ],
    #       subnet_arn: "SubnetArn",
    #       last_modification_errors: [
    #         {
    #           code: "EDGE_LOCATION_NO_FREE_IPS" # One of: ["EDGE_LOCATION_NO_FREE_IPS", "EDGE_LOCATION_PEER_DUPLICATE", "SUBNET_NOT_FOUND", "IP_OUTSIDE_SUBNET_CIDR_RANGE", "INVALID_INSIDE_CIDR_BLOCK", "NO_ASSOCIATED_CIDR_BLOCK"],
    #           message: "ServerSideString",
    #           resource_arn: "ResourceArn",
    #           request_id: "ServerSideString"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::CreateConnectPeerResponse]
    def create_connect_peer(params = {}, options = {})
      request = build_request(:create_connect_peer, params)
      request.send_request(options)
    end

    # <p>Creates a connection between two devices. The devices can be a physical or virtual appliance that connects to a third-party appliance in a VPC, or a physical appliance that connects to another physical appliance in an on-premises network.</p>
    # @param [Hash, Types::CreateConnectionRequest] params
    # @option params [String] :global_network_id
    #   <p>The ID of the global network.</p>
    # @option params [String] :device_id
    #   <p>The ID of the first device in the connection.</p>
    # @option params [String] :connected_device_id
    #   <p>The ID of the second device in the connection.</p>
    # @option params [String] :link_id
    #   <p>The ID of the link for the first device.</p>
    # @option params [String] :connected_link_id
    #   <p>The ID of the link for the second device.</p>
    # @option params [String] :description
    #   <p>A description of the connection.</p>
    #            <p>Length Constraints: Maximum length of 256 characters.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to apply to the resource during creation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     global_network_id: "GlobalNetworkId", # required
    #     device_id: "DeviceId", # required
    #     connected_device_id: "DeviceId", # required
    #     link_id: "LinkId",
    #     connected_link_id: "LinkId",
    #     description: "ConstrainedString",
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_connection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connection: {
    #       connection_id: "ConnectionId",
    #       connection_arn: "ConnectionArn",
    #       global_network_id: "GlobalNetworkId",
    #       device_id: "DeviceId",
    #       connected_device_id: "DeviceId",
    #       link_id: "LinkId",
    #       connected_link_id: "LinkId",
    #       description: "ConstrainedString",
    #       created_at: Time.now,
    #       state: "PENDING" # One of: ["PENDING", "AVAILABLE", "DELETING", "UPDATING"],
    #       tags: [
    #         {
    #           key: "TagKey",
    #           value: "TagValue"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::CreateConnectionResponse]
    def create_connection(params = {}, options = {})
      request = build_request(:create_connection, params)
      request.send_request(options)
    end

    # <p>Creates a core network as part of your global network, and optionally, with a core network policy.</p>
    # @param [Hash, Types::CreateCoreNetworkRequest] params
    # @option params [String] :global_network_id
    #   <p>The ID of the global network that a core network will be a part of. </p>
    # @option params [String] :description
    #   <p>The description of a core network.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Key-value tags associated with a core network request.</p>
    # @option params [String] :policy_document
    #   <p>The policy document for creating a core network.</p>
    # @option params [String] :client_token
    #   <p>The client token associated with a core network request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     global_network_id: "GlobalNetworkId", # required
    #     description: "ConstrainedString",
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ],
    #     policy_document: "CoreNetworkPolicyDocument",
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_core_network(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     core_network: {
    #       global_network_id: "GlobalNetworkId",
    #       core_network_id: "CoreNetworkId",
    #       core_network_arn: "CoreNetworkArn",
    #       description: "ConstrainedString",
    #       created_at: Time.now,
    #       state: "CREATING" # One of: ["CREATING", "UPDATING", "AVAILABLE", "DELETING"],
    #       segments: [
    #         {
    #           name: "ConstrainedString",
    #           edge_locations: ["ExternalRegionCode"],
    #           shared_segments: ["ConstrainedString"]
    #         }
    #       ],
    #       network_function_groups: [
    #         {
    #           name: "ConstrainedString",
    #           edge_locations: ["ExternalRegionCode"],
    #           segments: {
    #             send_via: ["ConstrainedString"],
    #             send_to: ["ConstrainedString"]
    #           }
    #         }
    #       ],
    #       edges: [
    #         {
    #           edge_location: "ExternalRegionCode",
    #           asn: 1,
    #           inside_cidr_blocks: ["ConstrainedString"]
    #         }
    #       ],
    #       tags: [
    #         {
    #           key: "TagKey",
    #           value: "TagValue"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::CreateCoreNetworkResponse]
    def create_core_network(params = {}, options = {})
      request = build_request(:create_core_network, params)
      request.send_request(options)
    end

    # <p>Creates an association between a core network and a prefix list for routing control.</p>
    # @param [Hash, Types::CreateCoreNetworkPrefixListAssociationRequest] params
    # @option params [String] :core_network_id
    #   <p>The ID of the core network to associate with the prefix list.</p>
    # @option params [String] :prefix_list_arn
    #   <p>The ARN of the prefix list to associate with the core network.</p>
    # @option params [String] :prefix_list_alias
    #   <p>An optional alias for the prefix list association.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     core_network_id: "CoreNetworkId", # required
    #     prefix_list_arn: "PrefixListArn", # required
    #     prefix_list_alias: "ConstrainedString", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_core_network_prefix_list_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     core_network_id: "CoreNetworkId",
    #     prefix_list_arn: "PrefixListArn",
    #     prefix_list_alias: "ConstrainedString"
    #   }
    # @return [Types::CreateCoreNetworkPrefixListAssociationResponse]
    def create_core_network_prefix_list_association(params = {}, options = {})
      request = build_request(:create_core_network_prefix_list_association, params)
      request.send_request(options)
    end

    # <p>Creates a new device in a global network. If you specify both a site ID and a
    #             location, the location of the site is used for visualization in the Network Manager console.</p>
    # @param [Hash, Types::CreateDeviceRequest] params
    # @option params [String] :global_network_id
    #   <p>The ID of the global network.</p>
    # @option params [Types::AWSLocation] :aws_location
    #   <p>The Amazon Web Services location of the device, if applicable. For an on-premises device, you can omit this parameter.</p>
    # @option params [String] :description
    #   <p>A description of the device.</p>
    #            <p>Constraints: Maximum length of 256 characters.</p>
    # @option params [String] :type
    #   <p>The type of the device.</p>
    # @option params [String] :vendor
    #   <p>The vendor of the device.</p>
    #            <p>Constraints: Maximum length of 128 characters.</p>
    # @option params [String] :model
    #   <p>The model of the device.</p>
    #            <p>Constraints: Maximum length of 128 characters.</p>
    # @option params [String] :serial_number
    #   <p>The serial number of the device.</p>
    #            <p>Constraints: Maximum length of 128 characters.</p>
    # @option params [Types::Location] :location
    #   <p>The location of the device.</p>
    # @option params [String] :site_id
    #   <p>The ID of the site.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to apply to the resource during creation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     global_network_id: "GlobalNetworkId", # required
    #     aws_location: {
    #       zone: "ConstrainedString",
    #       subnet_arn: "SubnetArn"
    #     },
    #     description: "ConstrainedString",
    #     type: "ConstrainedString",
    #     vendor: "ConstrainedString",
    #     model: "ConstrainedString",
    #     serial_number: "ConstrainedString",
    #     location: {
    #       address: "ConstrainedString",
    #       latitude: "ConstrainedString",
    #       longitude: "ConstrainedString"
    #     },
    #     site_id: "SiteId",
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_device(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     device: {
    #       device_id: "DeviceId",
    #       device_arn: "DeviceArn",
    #       global_network_id: "GlobalNetworkId",
    #       aws_location: {
    #         zone: "ConstrainedString",
    #         subnet_arn: "SubnetArn"
    #       },
    #       description: "ConstrainedString",
    #       type: "ConstrainedString",
    #       vendor: "ConstrainedString",
    #       model: "ConstrainedString",
    #       serial_number: "ConstrainedString",
    #       location: {
    #         address: "ConstrainedString",
    #         latitude: "ConstrainedString",
    #         longitude: "ConstrainedString"
    #       },
    #       site_id: "SiteId",
    #       created_at: Time.now,
    #       state: "PENDING" # One of: ["PENDING", "AVAILABLE", "DELETING", "UPDATING"],
    #       tags: [
    #         {
    #           key: "TagKey",
    #           value: "TagValue"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::CreateDeviceResponse]
    def create_device(params = {}, options = {})
      request = build_request(:create_device, params)
      request.send_request(options)
    end

    # <p>Creates an Amazon Web Services Direct Connect gateway attachment </p>
    # @param [Hash, Types::CreateDirectConnectGatewayAttachmentRequest] params
    # @option params [String] :core_network_id
    #   <p>The ID of the Cloud WAN core network that the Direct Connect gateway attachment should be attached to.</p>
    # @option params [String] :direct_connect_gateway_arn
    #   <p>The ARN of the Direct Connect gateway attachment.</p>
    # @option params [String] :routing_policy_label
    #   <p>The routing policy label to apply to the Direct Connect Gateway attachment for traffic routing decisions.</p>
    # @option params [Array<String>] :edge_locations
    #   <p>One or more core network edge locations that the Direct Connect gateway attachment is associated with. </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The key value tags to apply to the Direct Connect gateway attachment during creation.</p>
    # @option params [String] :client_token
    #   <p>client token</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     core_network_id: "CoreNetworkId", # required
    #     direct_connect_gateway_arn: "DirectConnectGatewayArn", # required
    #     routing_policy_label: "ConstrainedString",
    #     edge_locations: ["ExternalRegionCode"], # required
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ],
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_direct_connect_gateway_attachment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     direct_connect_gateway_attachment: {
    #       attachment: {
    #         core_network_id: "CoreNetworkId",
    #         core_network_arn: "CoreNetworkArn",
    #         attachment_id: "AttachmentId",
    #         owner_account_id: "AWSAccountId",
    #         attachment_type: "CONNECT" # One of: ["CONNECT", "SITE_TO_SITE_VPN", "VPC", "DIRECT_CONNECT_GATEWAY", "TRANSIT_GATEWAY_ROUTE_TABLE"],
    #         state: "REJECTED" # One of: ["REJECTED", "PENDING_ATTACHMENT_ACCEPTANCE", "CREATING", "FAILED", "AVAILABLE", "UPDATING", "PENDING_NETWORK_UPDATE", "PENDING_TAG_ACCEPTANCE", "DELETING"],
    #         edge_location: "ExternalRegionCode",
    #         edge_locations: ["ExternalRegionCode"],
    #         resource_arn: "ResourceArn",
    #         attachment_policy_rule_number: 1,
    #         segment_name: "ConstrainedString",
    #         network_function_group_name: "NetworkFunctionGroupName",
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue"
    #           }
    #         ],
    #         proposed_segment_change: {
    #           tags: [
    #             {
    #               key: "TagKey",
    #               value: "TagValue"
    #             }
    #           ],
    #           attachment_policy_rule_number: 1,
    #           segment_name: "ConstrainedString"
    #         },
    #         proposed_network_function_group_change: {
    #           tags: [
    #             {
    #               key: "TagKey",
    #               value: "TagValue"
    #             }
    #           ],
    #           attachment_policy_rule_number: 1,
    #           network_function_group_name: "ConstrainedString"
    #         },
    #         created_at: Time.now,
    #         updated_at: Time.now,
    #         last_modification_errors: [
    #           {
    #             code: "VPC_NOT_FOUND" # One of: ["VPC_NOT_FOUND", "SUBNET_NOT_FOUND", "SUBNET_DUPLICATED_IN_AVAILABILITY_ZONE", "SUBNET_NO_FREE_ADDRESSES", "SUBNET_UNSUPPORTED_AVAILABILITY_ZONE", "SUBNET_NO_IPV6_CIDRS", "VPN_CONNECTION_NOT_FOUND", "MAXIMUM_NO_ENCAP_LIMIT_EXCEEDED", "DIRECT_CONNECT_GATEWAY_NOT_FOUND", "DIRECT_CONNECT_GATEWAY_EXISTING_ATTACHMENTS", "DIRECT_CONNECT_GATEWAY_NO_PRIVATE_VIF", "VPN_EXISTING_ASSOCIATIONS", "VPC_UNSUPPORTED_FEATURES"],
    #             message: "ServerSideString",
    #             resource_arn: "ResourceArn",
    #             request_id: "ServerSideString"
    #           }
    #         ]
    #       },
    #       direct_connect_gateway_arn: "DirectConnectGatewayArn"
    #     }
    #   }
    # @return [Types::CreateDirectConnectGatewayAttachmentResponse]
    def create_direct_connect_gateway_attachment(params = {}, options = {})
      request = build_request(:create_direct_connect_gateway_attachment, params)
      request.send_request(options)
    end

    # <p>Creates a new, empty global network.</p>
    # @param [Hash, Types::CreateGlobalNetworkRequest] params
    # @option params [String] :description
    #   <p>A description of the global network.</p>
    #            <p>Constraints: Maximum length of 256 characters.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to apply to the resource during creation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     description: "ConstrainedString",
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_global_network(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     global_network: {
    #       global_network_id: "GlobalNetworkId",
    #       global_network_arn: "GlobalNetworkArn",
    #       description: "ConstrainedString",
    #       created_at: Time.now,
    #       state: "PENDING" # One of: ["PENDING", "AVAILABLE", "DELETING", "UPDATING"],
    #       tags: [
    #         {
    #           key: "TagKey",
    #           value: "TagValue"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::CreateGlobalNetworkResponse]
    def create_global_network(params = {}, options = {})
      request = build_request(:create_global_network, params)
      request.send_request(options)
    end

    # <p>Creates a new link for a specified site.</p>
    # @param [Hash, Types::CreateLinkRequest] params
    # @option params [String] :global_network_id
    #   <p>The ID of the global network.</p>
    # @option params [String] :description
    #   <p>A description of the link.</p>
    #            <p>Constraints: Maximum length of 256 characters.</p>
    # @option params [String] :type
    #   <p>The type of the link.</p>
    #            <p>Constraints: Maximum length of 128 characters. Cannot include the following characters: | \ ^</p>
    # @option params [Types::Bandwidth] :bandwidth
    #   <p> The upload speed and download speed in Mbps. </p>
    # @option params [String] :provider
    #   <p>The provider of the link.</p>
    #            <p>Constraints: Maximum length of 128 characters. Cannot include the following characters: | \ ^</p>
    # @option params [String] :site_id
    #   <p>The ID of the site.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to apply to the resource during creation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     global_network_id: "GlobalNetworkId", # required
    #     description: "ConstrainedString",
    #     type: "ConstrainedString",
    #     bandwidth: { # required
    #       upload_speed: 1,
    #       download_speed: 1
    #     },
    #     provider: "ConstrainedString",
    #     site_id: "SiteId", # required
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_link(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     link: {
    #       link_id: "LinkId",
    #       link_arn: "LinkArn",
    #       global_network_id: "GlobalNetworkId",
    #       site_id: "SiteId",
    #       description: "ConstrainedString",
    #       type: "ConstrainedString",
    #       bandwidth: {
    #         upload_speed: 1,
    #         download_speed: 1
    #       },
    #       provider: "ConstrainedString",
    #       created_at: Time.now,
    #       state: "PENDING" # One of: ["PENDING", "AVAILABLE", "DELETING", "UPDATING"],
    #       tags: [
    #         {
    #           key: "TagKey",
    #           value: "TagValue"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::CreateLinkResponse]
    def create_link(params = {}, options = {})
      request = build_request(:create_link, params)
      request.send_request(options)
    end

    # <p>Creates a new site in a global network.</p>
    # @param [Hash, Types::CreateSiteRequest] params
    # @option params [String] :global_network_id
    #   <p>The ID of the global network.</p>
    # @option params [String] :description
    #   <p>A description of your site.</p>
    #            <p>Constraints: Maximum length of 256 characters.</p>
    # @option params [Types::Location] :location
    #   <p>The site location. This information is used for visualization in the Network Manager console. If you specify the address, the latitude and longitude are automatically calculated.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Address</code>: The physical address of the site.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Latitude</code>: The latitude of the site. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Longitude</code>: The longitude of the site.</p>
    #               </li>
    #            </ul>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to apply to the resource during creation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     global_network_id: "GlobalNetworkId", # required
    #     description: "ConstrainedString",
    #     location: {
    #       address: "ConstrainedString",
    #       latitude: "ConstrainedString",
    #       longitude: "ConstrainedString"
    #     },
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_site(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     site: {
    #       site_id: "SiteId",
    #       site_arn: "SiteArn",
    #       global_network_id: "GlobalNetworkId",
    #       description: "ConstrainedString",
    #       location: {
    #         address: "ConstrainedString",
    #         latitude: "ConstrainedString",
    #         longitude: "ConstrainedString"
    #       },
    #       created_at: Time.now,
    #       state: "PENDING" # One of: ["PENDING", "AVAILABLE", "DELETING", "UPDATING"],
    #       tags: [
    #         {
    #           key: "TagKey",
    #           value: "TagValue"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::CreateSiteResponse]
    def create_site(params = {}, options = {})
      request = build_request(:create_site, params)
      request.send_request(options)
    end

    # <p>Creates an Amazon Web Services site-to-site VPN attachment on an edge location of a core network.</p>
    # @param [Hash, Types::CreateSiteToSiteVpnAttachmentRequest] params
    # @option params [String] :core_network_id
    #   <p>The ID of a core network where you're creating a site-to-site VPN attachment.</p>
    # @option params [String] :vpn_connection_arn
    #   <p>The ARN identifying the VPN attachment.</p>
    # @option params [String] :routing_policy_label
    #   <p>The routing policy label to apply to the Site-to-Site VPN attachment for traffic routing decisions.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags associated with the request.</p>
    # @option params [String] :client_token
    #   <p>The client token associated with the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     core_network_id: "CoreNetworkId", # required
    #     vpn_connection_arn: "VpnConnectionArn", # required
    #     routing_policy_label: "ConstrainedString",
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ],
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_site_to_site_vpn_attachment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     site_to_site_vpn_attachment: {
    #       attachment: {
    #         core_network_id: "CoreNetworkId",
    #         core_network_arn: "CoreNetworkArn",
    #         attachment_id: "AttachmentId",
    #         owner_account_id: "AWSAccountId",
    #         attachment_type: "CONNECT" # One of: ["CONNECT", "SITE_TO_SITE_VPN", "VPC", "DIRECT_CONNECT_GATEWAY", "TRANSIT_GATEWAY_ROUTE_TABLE"],
    #         state: "REJECTED" # One of: ["REJECTED", "PENDING_ATTACHMENT_ACCEPTANCE", "CREATING", "FAILED", "AVAILABLE", "UPDATING", "PENDING_NETWORK_UPDATE", "PENDING_TAG_ACCEPTANCE", "DELETING"],
    #         edge_location: "ExternalRegionCode",
    #         edge_locations: ["ExternalRegionCode"],
    #         resource_arn: "ResourceArn",
    #         attachment_policy_rule_number: 1,
    #         segment_name: "ConstrainedString",
    #         network_function_group_name: "NetworkFunctionGroupName",
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue"
    #           }
    #         ],
    #         proposed_segment_change: {
    #           tags: [
    #             {
    #               key: "TagKey",
    #               value: "TagValue"
    #             }
    #           ],
    #           attachment_policy_rule_number: 1,
    #           segment_name: "ConstrainedString"
    #         },
    #         proposed_network_function_group_change: {
    #           tags: [
    #             {
    #               key: "TagKey",
    #               value: "TagValue"
    #             }
    #           ],
    #           attachment_policy_rule_number: 1,
    #           network_function_group_name: "ConstrainedString"
    #         },
    #         created_at: Time.now,
    #         updated_at: Time.now,
    #         last_modification_errors: [
    #           {
    #             code: "VPC_NOT_FOUND" # One of: ["VPC_NOT_FOUND", "SUBNET_NOT_FOUND", "SUBNET_DUPLICATED_IN_AVAILABILITY_ZONE", "SUBNET_NO_FREE_ADDRESSES", "SUBNET_UNSUPPORTED_AVAILABILITY_ZONE", "SUBNET_NO_IPV6_CIDRS", "VPN_CONNECTION_NOT_FOUND", "MAXIMUM_NO_ENCAP_LIMIT_EXCEEDED", "DIRECT_CONNECT_GATEWAY_NOT_FOUND", "DIRECT_CONNECT_GATEWAY_EXISTING_ATTACHMENTS", "DIRECT_CONNECT_GATEWAY_NO_PRIVATE_VIF", "VPN_EXISTING_ASSOCIATIONS", "VPC_UNSUPPORTED_FEATURES"],
    #             message: "ServerSideString",
    #             resource_arn: "ResourceArn",
    #             request_id: "ServerSideString"
    #           }
    #         ]
    #       },
    #       vpn_connection_arn: "VpnConnectionArn"
    #     }
    #   }
    # @return [Types::CreateSiteToSiteVpnAttachmentResponse]
    def create_site_to_site_vpn_attachment(params = {}, options = {})
      request = build_request(:create_site_to_site_vpn_attachment, params)
      request.send_request(options)
    end

    # <p>Creates a transit gateway peering connection.</p>
    # @param [Hash, Types::CreateTransitGatewayPeeringRequest] params
    # @option params [String] :core_network_id
    #   <p>The ID of a core network.</p>
    # @option params [String] :transit_gateway_arn
    #   <p>The ARN of the transit gateway for the peering request.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The list of key-value tags associated with the request.</p>
    # @option params [String] :client_token
    #   <p>The client token associated with the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     core_network_id: "CoreNetworkId", # required
    #     transit_gateway_arn: "TransitGatewayArn", # required
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ],
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_transit_gateway_peering(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     transit_gateway_peering: {
    #       peering: {
    #         core_network_id: "CoreNetworkId",
    #         core_network_arn: "CoreNetworkArn",
    #         peering_id: "PeeringId",
    #         owner_account_id: "AWSAccountId",
    #         peering_type: "TRANSIT_GATEWAY" # One of: ["TRANSIT_GATEWAY"],
    #         state: "CREATING" # One of: ["CREATING", "FAILED", "AVAILABLE", "DELETING"],
    #         edge_location: "ExternalRegionCode",
    #         resource_arn: "ResourceArn",
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue"
    #           }
    #         ],
    #         created_at: Time.now,
    #         last_modification_errors: [
    #           {
    #             code: "TRANSIT_GATEWAY_NOT_FOUND" # One of: ["TRANSIT_GATEWAY_NOT_FOUND", "TRANSIT_GATEWAY_PEERS_LIMIT_EXCEEDED", "MISSING_PERMISSIONS", "INTERNAL_ERROR", "EDGE_LOCATION_PEER_DUPLICATE", "INVALID_TRANSIT_GATEWAY_STATE"],
    #             message: "ServerSideString",
    #             resource_arn: "ResourceArn",
    #             request_id: "ServerSideString",
    #             missing_permissions_context: {
    #               missing_permission: "ServerSideString"
    #             }
    #           }
    #         ]
    #       },
    #       transit_gateway_arn: "TransitGatewayArn",
    #       transit_gateway_peering_attachment_id: "TransitGatewayPeeringAttachmentId"
    #     }
    #   }
    # @return [Types::CreateTransitGatewayPeeringResponse]
    def create_transit_gateway_peering(params = {}, options = {})
      request = build_request(:create_transit_gateway_peering, params)
      request.send_request(options)
    end

    # <p>Creates a transit gateway route table attachment.</p>
    # @param [Hash, Types::CreateTransitGatewayRouteTableAttachmentRequest] params
    # @option params [String] :peering_id
    #   <p>The ID of the peer for the </p>
    # @option params [String] :transit_gateway_route_table_arn
    #   <p>The ARN of the transit gateway route table for the attachment request. For example, <code>"TransitGatewayRouteTableArn": "arn:aws:ec2:us-west-2:123456789012:transit-gateway-route-table/tgw-rtb-9876543210123456"</code>.</p>
    # @option params [String] :routing_policy_label
    #   <p>The routing policy label to apply to the Transit Gateway route table attachment for traffic routing decisions.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The list of key-value tags associated with the request.</p>
    # @option params [String] :client_token
    #   <p>The client token associated with the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     peering_id: "PeeringId", # required
    #     transit_gateway_route_table_arn: "TransitGatewayRouteTableArn", # required
    #     routing_policy_label: "ConstrainedString",
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ],
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_transit_gateway_route_table_attachment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     transit_gateway_route_table_attachment: {
    #       attachment: {
    #         core_network_id: "CoreNetworkId",
    #         core_network_arn: "CoreNetworkArn",
    #         attachment_id: "AttachmentId",
    #         owner_account_id: "AWSAccountId",
    #         attachment_type: "CONNECT" # One of: ["CONNECT", "SITE_TO_SITE_VPN", "VPC", "DIRECT_CONNECT_GATEWAY", "TRANSIT_GATEWAY_ROUTE_TABLE"],
    #         state: "REJECTED" # One of: ["REJECTED", "PENDING_ATTACHMENT_ACCEPTANCE", "CREATING", "FAILED", "AVAILABLE", "UPDATING", "PENDING_NETWORK_UPDATE", "PENDING_TAG_ACCEPTANCE", "DELETING"],
    #         edge_location: "ExternalRegionCode",
    #         edge_locations: ["ExternalRegionCode"],
    #         resource_arn: "ResourceArn",
    #         attachment_policy_rule_number: 1,
    #         segment_name: "ConstrainedString",
    #         network_function_group_name: "NetworkFunctionGroupName",
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue"
    #           }
    #         ],
    #         proposed_segment_change: {
    #           tags: [
    #             {
    #               key: "TagKey",
    #               value: "TagValue"
    #             }
    #           ],
    #           attachment_policy_rule_number: 1,
    #           segment_name: "ConstrainedString"
    #         },
    #         proposed_network_function_group_change: {
    #           tags: [
    #             {
    #               key: "TagKey",
    #               value: "TagValue"
    #             }
    #           ],
    #           attachment_policy_rule_number: 1,
    #           network_function_group_name: "ConstrainedString"
    #         },
    #         created_at: Time.now,
    #         updated_at: Time.now,
    #         last_modification_errors: [
    #           {
    #             code: "VPC_NOT_FOUND" # One of: ["VPC_NOT_FOUND", "SUBNET_NOT_FOUND", "SUBNET_DUPLICATED_IN_AVAILABILITY_ZONE", "SUBNET_NO_FREE_ADDRESSES", "SUBNET_UNSUPPORTED_AVAILABILITY_ZONE", "SUBNET_NO_IPV6_CIDRS", "VPN_CONNECTION_NOT_FOUND", "MAXIMUM_NO_ENCAP_LIMIT_EXCEEDED", "DIRECT_CONNECT_GATEWAY_NOT_FOUND", "DIRECT_CONNECT_GATEWAY_EXISTING_ATTACHMENTS", "DIRECT_CONNECT_GATEWAY_NO_PRIVATE_VIF", "VPN_EXISTING_ASSOCIATIONS", "VPC_UNSUPPORTED_FEATURES"],
    #             message: "ServerSideString",
    #             resource_arn: "ResourceArn",
    #             request_id: "ServerSideString"
    #           }
    #         ]
    #       },
    #       peering_id: "PeeringId",
    #       transit_gateway_route_table_arn: "TransitGatewayRouteTableArn"
    #     }
    #   }
    # @return [Types::CreateTransitGatewayRouteTableAttachmentResponse]
    def create_transit_gateway_route_table_attachment(params = {}, options = {})
      request = build_request(:create_transit_gateway_route_table_attachment, params)
      request.send_request(options)
    end

    # <p>Creates a VPC attachment on an edge location of a core network.</p>
    # @param [Hash, Types::CreateVpcAttachmentRequest] params
    # @option params [String] :core_network_id
    #   <p>The ID of a core network for the VPC attachment.</p>
    # @option params [String] :vpc_arn
    #   <p>The ARN of the VPC.</p>
    # @option params [Array<String>] :subnet_arns
    #   <p>The subnet ARN of the VPC attachment.</p>
    # @option params [Types::VpcOptions] :options
    #   <p>Options for the VPC attachment.</p>
    # @option params [String] :routing_policy_label
    #   <p>The routing policy label to apply to the VPC attachment for traffic routing decisions.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The key-value tags associated with the request.</p>
    # @option params [String] :client_token
    #   <p>The client token associated with the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     core_network_id: "CoreNetworkId", # required
    #     vpc_arn: "VpcArn", # required
    #     subnet_arns: ["SubnetArn"], # required
    #     options: {
    #       ipv6_support: false,
    #       appliance_mode_support: false,
    #       dns_support: false,
    #       security_group_referencing_support: false
    #     },
    #     routing_policy_label: "ConstrainedString",
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ],
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_vpc_attachment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     vpc_attachment: {
    #       attachment: {
    #         core_network_id: "CoreNetworkId",
    #         core_network_arn: "CoreNetworkArn",
    #         attachment_id: "AttachmentId",
    #         owner_account_id: "AWSAccountId",
    #         attachment_type: "CONNECT" # One of: ["CONNECT", "SITE_TO_SITE_VPN", "VPC", "DIRECT_CONNECT_GATEWAY", "TRANSIT_GATEWAY_ROUTE_TABLE"],
    #         state: "REJECTED" # One of: ["REJECTED", "PENDING_ATTACHMENT_ACCEPTANCE", "CREATING", "FAILED", "AVAILABLE", "UPDATING", "PENDING_NETWORK_UPDATE", "PENDING_TAG_ACCEPTANCE", "DELETING"],
    #         edge_location: "ExternalRegionCode",
    #         edge_locations: ["ExternalRegionCode"],
    #         resource_arn: "ResourceArn",
    #         attachment_policy_rule_number: 1,
    #         segment_name: "ConstrainedString",
    #         network_function_group_name: "NetworkFunctionGroupName",
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue"
    #           }
    #         ],
    #         proposed_segment_change: {
    #           tags: [
    #             {
    #               key: "TagKey",
    #               value: "TagValue"
    #             }
    #           ],
    #           attachment_policy_rule_number: 1,
    #           segment_name: "ConstrainedString"
    #         },
    #         proposed_network_function_group_change: {
    #           tags: [
    #             {
    #               key: "TagKey",
    #               value: "TagValue"
    #             }
    #           ],
    #           attachment_policy_rule_number: 1,
    #           network_function_group_name: "ConstrainedString"
    #         },
    #         created_at: Time.now,
    #         updated_at: Time.now,
    #         last_modification_errors: [
    #           {
    #             code: "VPC_NOT_FOUND" # One of: ["VPC_NOT_FOUND", "SUBNET_NOT_FOUND", "SUBNET_DUPLICATED_IN_AVAILABILITY_ZONE", "SUBNET_NO_FREE_ADDRESSES", "SUBNET_UNSUPPORTED_AVAILABILITY_ZONE", "SUBNET_NO_IPV6_CIDRS", "VPN_CONNECTION_NOT_FOUND", "MAXIMUM_NO_ENCAP_LIMIT_EXCEEDED", "DIRECT_CONNECT_GATEWAY_NOT_FOUND", "DIRECT_CONNECT_GATEWAY_EXISTING_ATTACHMENTS", "DIRECT_CONNECT_GATEWAY_NO_PRIVATE_VIF", "VPN_EXISTING_ASSOCIATIONS", "VPC_UNSUPPORTED_FEATURES"],
    #             message: "ServerSideString",
    #             resource_arn: "ResourceArn",
    #             request_id: "ServerSideString"
    #           }
    #         ]
    #       },
    #       subnet_arns: ["SubnetArn"],
    #       options: {
    #         ipv6_support: false,
    #         appliance_mode_support: false,
    #         dns_support: false,
    #         security_group_referencing_support: false
    #       }
    #     }
    #   }
    # @return [Types::CreateVpcAttachmentResponse]
    def create_vpc_attachment(params = {}, options = {})
      request = build_request(:create_vpc_attachment, params)
      request.send_request(options)
    end

    # <p>Deletes an attachment. Supports all attachment types.</p>
    # @param [Hash, Types::DeleteAttachmentRequest] params
    # @option params [String] :attachment_id
    #   <p>The ID of the attachment to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     attachment_id: "AttachmentId", # required
    #   }
    #   options = {}
    #   response = client.delete_attachment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     attachment: {
    #       core_network_id: "CoreNetworkId",
    #       core_network_arn: "CoreNetworkArn",
    #       attachment_id: "AttachmentId",
    #       owner_account_id: "AWSAccountId",
    #       attachment_type: "CONNECT" # One of: ["CONNECT", "SITE_TO_SITE_VPN", "VPC", "DIRECT_CONNECT_GATEWAY", "TRANSIT_GATEWAY_ROUTE_TABLE"],
    #       state: "REJECTED" # One of: ["REJECTED", "PENDING_ATTACHMENT_ACCEPTANCE", "CREATING", "FAILED", "AVAILABLE", "UPDATING", "PENDING_NETWORK_UPDATE", "PENDING_TAG_ACCEPTANCE", "DELETING"],
    #       edge_location: "ExternalRegionCode",
    #       edge_locations: ["ExternalRegionCode"],
    #       resource_arn: "ResourceArn",
    #       attachment_policy_rule_number: 1,
    #       segment_name: "ConstrainedString",
    #       network_function_group_name: "NetworkFunctionGroupName",
    #       tags: [
    #         {
    #           key: "TagKey",
    #           value: "TagValue"
    #         }
    #       ],
    #       proposed_segment_change: {
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue"
    #           }
    #         ],
    #         attachment_policy_rule_number: 1,
    #         segment_name: "ConstrainedString"
    #       },
    #       proposed_network_function_group_change: {
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue"
    #           }
    #         ],
    #         attachment_policy_rule_number: 1,
    #         network_function_group_name: "ConstrainedString"
    #       },
    #       created_at: Time.now,
    #       updated_at: Time.now,
    #       last_modification_errors: [
    #         {
    #           code: "VPC_NOT_FOUND" # One of: ["VPC_NOT_FOUND", "SUBNET_NOT_FOUND", "SUBNET_DUPLICATED_IN_AVAILABILITY_ZONE", "SUBNET_NO_FREE_ADDRESSES", "SUBNET_UNSUPPORTED_AVAILABILITY_ZONE", "SUBNET_NO_IPV6_CIDRS", "VPN_CONNECTION_NOT_FOUND", "MAXIMUM_NO_ENCAP_LIMIT_EXCEEDED", "DIRECT_CONNECT_GATEWAY_NOT_FOUND", "DIRECT_CONNECT_GATEWAY_EXISTING_ATTACHMENTS", "DIRECT_CONNECT_GATEWAY_NO_PRIVATE_VIF", "VPN_EXISTING_ASSOCIATIONS", "VPC_UNSUPPORTED_FEATURES"],
    #           message: "ServerSideString",
    #           resource_arn: "ResourceArn",
    #           request_id: "ServerSideString"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::DeleteAttachmentResponse]
    def delete_attachment(params = {}, options = {})
      request = build_request(:delete_attachment, params)
      request.send_request(options)
    end

    # <p>Deletes a Connect peer.</p>
    # @param [Hash, Types::DeleteConnectPeerRequest] params
    # @option params [String] :connect_peer_id
    #   <p>The ID of the deleted Connect peer.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     connect_peer_id: "ConnectPeerId", # required
    #   }
    #   options = {}
    #   response = client.delete_connect_peer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connect_peer: {
    #       core_network_id: "CoreNetworkId",
    #       connect_attachment_id: "AttachmentId",
    #       connect_peer_id: "ConnectPeerId",
    #       edge_location: "ExternalRegionCode",
    #       state: "CREATING" # One of: ["CREATING", "FAILED", "AVAILABLE", "DELETING"],
    #       created_at: Time.now,
    #       configuration: {
    #         core_network_address: "IPAddress",
    #         peer_address: "IPAddress",
    #         inside_cidr_blocks: ["ConstrainedString"],
    #         protocol: "GRE" # One of: ["GRE", "NO_ENCAP"],
    #         bgp_configurations: [
    #           {
    #             core_network_asn: 1,
    #             peer_asn: 1,
    #             core_network_address: "IPAddress",
    #             peer_address: "IPAddress"
    #           }
    #         ]
    #       },
    #       tags: [
    #         {
    #           key: "TagKey",
    #           value: "TagValue"
    #         }
    #       ],
    #       subnet_arn: "SubnetArn",
    #       last_modification_errors: [
    #         {
    #           code: "EDGE_LOCATION_NO_FREE_IPS" # One of: ["EDGE_LOCATION_NO_FREE_IPS", "EDGE_LOCATION_PEER_DUPLICATE", "SUBNET_NOT_FOUND", "IP_OUTSIDE_SUBNET_CIDR_RANGE", "INVALID_INSIDE_CIDR_BLOCK", "NO_ASSOCIATED_CIDR_BLOCK"],
    #           message: "ServerSideString",
    #           resource_arn: "ResourceArn",
    #           request_id: "ServerSideString"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::DeleteConnectPeerResponse]
    def delete_connect_peer(params = {}, options = {})
      request = build_request(:delete_connect_peer, params)
      request.send_request(options)
    end

    # <p>Deletes the specified connection in your global network.</p>
    # @param [Hash, Types::DeleteConnectionRequest] params
    # @option params [String] :global_network_id
    #   <p>The ID of the global network.</p>
    # @option params [String] :connection_id
    #   <p>The ID of the connection.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     global_network_id: "GlobalNetworkId", # required
    #     connection_id: "ConnectionId", # required
    #   }
    #   options = {}
    #   response = client.delete_connection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connection: {
    #       connection_id: "ConnectionId",
    #       connection_arn: "ConnectionArn",
    #       global_network_id: "GlobalNetworkId",
    #       device_id: "DeviceId",
    #       connected_device_id: "DeviceId",
    #       link_id: "LinkId",
    #       connected_link_id: "LinkId",
    #       description: "ConstrainedString",
    #       created_at: Time.now,
    #       state: "PENDING" # One of: ["PENDING", "AVAILABLE", "DELETING", "UPDATING"],
    #       tags: [
    #         {
    #           key: "TagKey",
    #           value: "TagValue"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::DeleteConnectionResponse]
    def delete_connection(params = {}, options = {})
      request = build_request(:delete_connection, params)
      request.send_request(options)
    end

    # <p>Deletes a core network along with all core network policies. This can only be done if there are no attachments on a core network.</p>
    # @param [Hash, Types::DeleteCoreNetworkRequest] params
    # @option params [String] :core_network_id
    #   <p>The network ID of the deleted core network.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     core_network_id: "CoreNetworkId", # required
    #   }
    #   options = {}
    #   response = client.delete_core_network(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     core_network: {
    #       global_network_id: "GlobalNetworkId",
    #       core_network_id: "CoreNetworkId",
    #       core_network_arn: "CoreNetworkArn",
    #       description: "ConstrainedString",
    #       created_at: Time.now,
    #       state: "CREATING" # One of: ["CREATING", "UPDATING", "AVAILABLE", "DELETING"],
    #       segments: [
    #         {
    #           name: "ConstrainedString",
    #           edge_locations: ["ExternalRegionCode"],
    #           shared_segments: ["ConstrainedString"]
    #         }
    #       ],
    #       network_function_groups: [
    #         {
    #           name: "ConstrainedString",
    #           edge_locations: ["ExternalRegionCode"],
    #           segments: {
    #             send_via: ["ConstrainedString"],
    #             send_to: ["ConstrainedString"]
    #           }
    #         }
    #       ],
    #       edges: [
    #         {
    #           edge_location: "ExternalRegionCode",
    #           asn: 1,
    #           inside_cidr_blocks: ["ConstrainedString"]
    #         }
    #       ],
    #       tags: [
    #         {
    #           key: "TagKey",
    #           value: "TagValue"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::DeleteCoreNetworkResponse]
    def delete_core_network(params = {}, options = {})
      request = build_request(:delete_core_network, params)
      request.send_request(options)
    end

    # <p>Deletes a policy version from a core network. You can't delete the current LIVE policy.</p>
    # @param [Hash, Types::DeleteCoreNetworkPolicyVersionRequest] params
    # @option params [String] :core_network_id
    #   <p>The ID of a core network for the deleted policy.</p>
    # @option params [Integer] :policy_version_id
    #   <p>The version ID of the deleted policy.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     core_network_id: "CoreNetworkId", # required
    #     policy_version_id: 1, # required
    #   }
    #   options = {}
    #   response = client.delete_core_network_policy_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     core_network_policy: {
    #       core_network_id: "CoreNetworkId",
    #       policy_version_id: 1,
    #       alias: "LIVE" # One of: ["LIVE", "LATEST"],
    #       description: "ConstrainedString",
    #       created_at: Time.now,
    #       change_set_state: "PENDING_GENERATION" # One of: ["PENDING_GENERATION", "FAILED_GENERATION", "READY_TO_EXECUTE", "EXECUTING", "EXECUTION_SUCCEEDED", "OUT_OF_DATE"],
    #       policy_errors: [
    #         {
    #           error_code: "ServerSideString", # required
    #           message: "ServerSideString", # required
    #           path: "ServerSideString"
    #         }
    #       ],
    #       policy_document: "SynthesizedJsonCoreNetworkPolicyDocument"
    #     }
    #   }
    # @return [Types::DeleteCoreNetworkPolicyVersionResponse]
    def delete_core_network_policy_version(params = {}, options = {})
      request = build_request(:delete_core_network_policy_version, params)
      request.send_request(options)
    end

    # <p>Deletes an association between a core network and a prefix list.</p>
    # @param [Hash, Types::DeleteCoreNetworkPrefixListAssociationRequest] params
    # @option params [String] :core_network_id
    #   <p>The ID of the core network from which to delete the prefix list association.</p>
    # @option params [String] :prefix_list_arn
    #   <p>The ARN of the prefix list to disassociate from the core network.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     core_network_id: "CoreNetworkId", # required
    #     prefix_list_arn: "PrefixListArn", # required
    #   }
    #   options = {}
    #   response = client.delete_core_network_prefix_list_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     core_network_id: "CoreNetworkId",
    #     prefix_list_arn: "PrefixListArn"
    #   }
    # @return [Types::DeleteCoreNetworkPrefixListAssociationResponse]
    def delete_core_network_prefix_list_association(params = {}, options = {})
      request = build_request(:delete_core_network_prefix_list_association, params)
      request.send_request(options)
    end

    # <p>Deletes an existing device. You must first disassociate the device from any links and
    #             customer gateways.</p>
    # @param [Hash, Types::DeleteDeviceRequest] params
    # @option params [String] :global_network_id
    #   <p>The ID of the global network.</p>
    # @option params [String] :device_id
    #   <p>The ID of the device.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     global_network_id: "GlobalNetworkId", # required
    #     device_id: "DeviceId", # required
    #   }
    #   options = {}
    #   response = client.delete_device(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     device: {
    #       device_id: "DeviceId",
    #       device_arn: "DeviceArn",
    #       global_network_id: "GlobalNetworkId",
    #       aws_location: {
    #         zone: "ConstrainedString",
    #         subnet_arn: "SubnetArn"
    #       },
    #       description: "ConstrainedString",
    #       type: "ConstrainedString",
    #       vendor: "ConstrainedString",
    #       model: "ConstrainedString",
    #       serial_number: "ConstrainedString",
    #       location: {
    #         address: "ConstrainedString",
    #         latitude: "ConstrainedString",
    #         longitude: "ConstrainedString"
    #       },
    #       site_id: "SiteId",
    #       created_at: Time.now,
    #       state: "PENDING" # One of: ["PENDING", "AVAILABLE", "DELETING", "UPDATING"],
    #       tags: [
    #         {
    #           key: "TagKey",
    #           value: "TagValue"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::DeleteDeviceResponse]
    def delete_device(params = {}, options = {})
      request = build_request(:delete_device, params)
      request.send_request(options)
    end

    # <p>Deletes an existing global network. You must first delete all global network objects
    #             (devices, links, and sites), deregister all transit gateways, and delete any core networks.</p>
    # @param [Hash, Types::DeleteGlobalNetworkRequest] params
    # @option params [String] :global_network_id
    #   <p>The ID of the global network.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     global_network_id: "GlobalNetworkId", # required
    #   }
    #   options = {}
    #   response = client.delete_global_network(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     global_network: {
    #       global_network_id: "GlobalNetworkId",
    #       global_network_arn: "GlobalNetworkArn",
    #       description: "ConstrainedString",
    #       created_at: Time.now,
    #       state: "PENDING" # One of: ["PENDING", "AVAILABLE", "DELETING", "UPDATING"],
    #       tags: [
    #         {
    #           key: "TagKey",
    #           value: "TagValue"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::DeleteGlobalNetworkResponse]
    def delete_global_network(params = {}, options = {})
      request = build_request(:delete_global_network, params)
      request.send_request(options)
    end

    # <p>Deletes an existing link. You must first disassociate the link from any devices and
    #             customer gateways.</p>
    # @param [Hash, Types::DeleteLinkRequest] params
    # @option params [String] :global_network_id
    #   <p>The ID of the global network.</p>
    # @option params [String] :link_id
    #   <p>The ID of the link.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     global_network_id: "GlobalNetworkId", # required
    #     link_id: "LinkId", # required
    #   }
    #   options = {}
    #   response = client.delete_link(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     link: {
    #       link_id: "LinkId",
    #       link_arn: "LinkArn",
    #       global_network_id: "GlobalNetworkId",
    #       site_id: "SiteId",
    #       description: "ConstrainedString",
    #       type: "ConstrainedString",
    #       bandwidth: {
    #         upload_speed: 1,
    #         download_speed: 1
    #       },
    #       provider: "ConstrainedString",
    #       created_at: Time.now,
    #       state: "PENDING" # One of: ["PENDING", "AVAILABLE", "DELETING", "UPDATING"],
    #       tags: [
    #         {
    #           key: "TagKey",
    #           value: "TagValue"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::DeleteLinkResponse]
    def delete_link(params = {}, options = {})
      request = build_request(:delete_link, params)
      request.send_request(options)
    end

    # <p>Deletes an existing peering connection.</p>
    # @param [Hash, Types::DeletePeeringRequest] params
    # @option params [String] :peering_id
    #   <p>The ID of the peering connection to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     peering_id: "PeeringId", # required
    #   }
    #   options = {}
    #   response = client.delete_peering(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     peering: {
    #       core_network_id: "CoreNetworkId",
    #       core_network_arn: "CoreNetworkArn",
    #       peering_id: "PeeringId",
    #       owner_account_id: "AWSAccountId",
    #       peering_type: "TRANSIT_GATEWAY" # One of: ["TRANSIT_GATEWAY"],
    #       state: "CREATING" # One of: ["CREATING", "FAILED", "AVAILABLE", "DELETING"],
    #       edge_location: "ExternalRegionCode",
    #       resource_arn: "ResourceArn",
    #       tags: [
    #         {
    #           key: "TagKey",
    #           value: "TagValue"
    #         }
    #       ],
    #       created_at: Time.now,
    #       last_modification_errors: [
    #         {
    #           code: "TRANSIT_GATEWAY_NOT_FOUND" # One of: ["TRANSIT_GATEWAY_NOT_FOUND", "TRANSIT_GATEWAY_PEERS_LIMIT_EXCEEDED", "MISSING_PERMISSIONS", "INTERNAL_ERROR", "EDGE_LOCATION_PEER_DUPLICATE", "INVALID_TRANSIT_GATEWAY_STATE"],
    #           message: "ServerSideString",
    #           resource_arn: "ResourceArn",
    #           request_id: "ServerSideString",
    #           missing_permissions_context: {
    #             missing_permission: "ServerSideString"
    #           }
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::DeletePeeringResponse]
    def delete_peering(params = {}, options = {})
      request = build_request(:delete_peering, params)
      request.send_request(options)
    end

    # <p>Deletes a resource policy for the specified resource. This revokes the access of the principals specified in the resource policy.</p>
    # @param [Hash, Types::DeleteResourcePolicyRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the policy to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
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

    # <p>Deletes an existing site. The site cannot be associated with any device or link.</p>
    # @param [Hash, Types::DeleteSiteRequest] params
    # @option params [String] :global_network_id
    #   <p>The ID of the global network.</p>
    # @option params [String] :site_id
    #   <p>The ID of the site.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     global_network_id: "GlobalNetworkId", # required
    #     site_id: "SiteId", # required
    #   }
    #   options = {}
    #   response = client.delete_site(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     site: {
    #       site_id: "SiteId",
    #       site_arn: "SiteArn",
    #       global_network_id: "GlobalNetworkId",
    #       description: "ConstrainedString",
    #       location: {
    #         address: "ConstrainedString",
    #         latitude: "ConstrainedString",
    #         longitude: "ConstrainedString"
    #       },
    #       created_at: Time.now,
    #       state: "PENDING" # One of: ["PENDING", "AVAILABLE", "DELETING", "UPDATING"],
    #       tags: [
    #         {
    #           key: "TagKey",
    #           value: "TagValue"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::DeleteSiteResponse]
    def delete_site(params = {}, options = {})
      request = build_request(:delete_site, params)
      request.send_request(options)
    end

    # <p>Deregisters a transit gateway from your global network. This action does not delete
    #             your transit gateway, or modify any of its attachments. This action removes any customer gateway associations.</p>
    # @param [Hash, Types::DeregisterTransitGatewayRequest] params
    # @option params [String] :global_network_id
    #   <p>The ID of the global network.</p>
    # @option params [String] :transit_gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the transit gateway.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     global_network_id: "GlobalNetworkId", # required
    #     transit_gateway_arn: "TransitGatewayArn", # required
    #   }
    #   options = {}
    #   response = client.deregister_transit_gateway(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     transit_gateway_registration: {
    #       global_network_id: "GlobalNetworkId",
    #       transit_gateway_arn: "TransitGatewayArn",
    #       state: {
    #         code: "PENDING" # One of: ["PENDING", "AVAILABLE", "DELETING", "DELETED", "FAILED"],
    #         message: "ConstrainedString"
    #       }
    #     }
    #   }
    # @return [Types::DeregisterTransitGatewayResponse]
    def deregister_transit_gateway(params = {}, options = {})
      request = build_request(:deregister_transit_gateway, params)
      request.send_request(options)
    end

    # <p>Describes one or more global networks. By default, all global networks are
    #             described. To describe the objects in your global network, you must use the appropriate
    #                 <code>Get*</code> action. For example, to list the transit gateways in your global
    #             network, use <a>GetTransitGatewayRegistrations</a>.</p>
    # @param [Hash, Types::DescribeGlobalNetworksRequest] params
    # @option params [Array<String>] :global_network_ids
    #   <p>The IDs of one or more global networks. The maximum is 10.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     global_network_ids: ["GlobalNetworkId"],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.describe_global_networks(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     global_networks: [
    #       {
    #         global_network_id: "GlobalNetworkId",
    #         global_network_arn: "GlobalNetworkArn",
    #         description: "ConstrainedString",
    #         created_at: Time.now,
    #         state: "PENDING" # One of: ["PENDING", "AVAILABLE", "DELETING", "UPDATING"],
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue"
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeGlobalNetworksResponse]
    def describe_global_networks(params = {}, options = {})
      request = build_request(:describe_global_networks, params)
      request.send_request(options)
    end

    # <p>Disassociates a core network Connect peer from a device and a link. </p>
    # @param [Hash, Types::DisassociateConnectPeerRequest] params
    # @option params [String] :global_network_id
    #   <p>The ID of the global network.</p>
    # @option params [String] :connect_peer_id
    #   <p>The ID of the Connect peer to disassociate from a device.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     global_network_id: "GlobalNetworkId", # required
    #     connect_peer_id: "ConnectPeerId", # required
    #   }
    #   options = {}
    #   response = client.disassociate_connect_peer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connect_peer_association: {
    #       connect_peer_id: "ConnectPeerId",
    #       global_network_id: "GlobalNetworkId",
    #       device_id: "DeviceId",
    #       link_id: "LinkId",
    #       state: "PENDING" # One of: ["PENDING", "AVAILABLE", "DELETING", "DELETED"]
    #     }
    #   }
    # @return [Types::DisassociateConnectPeerResponse]
    def disassociate_connect_peer(params = {}, options = {})
      request = build_request(:disassociate_connect_peer, params)
      request.send_request(options)
    end

    # <p>Disassociates a customer gateway from a device and a link.</p>
    # @param [Hash, Types::DisassociateCustomerGatewayRequest] params
    # @option params [String] :global_network_id
    #   <p>The ID of the global network.</p>
    # @option params [String] :customer_gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the customer gateway.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     global_network_id: "GlobalNetworkId", # required
    #     customer_gateway_arn: "CustomerGatewayArn", # required
    #   }
    #   options = {}
    #   response = client.disassociate_customer_gateway(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     customer_gateway_association: {
    #       customer_gateway_arn: "CustomerGatewayArn",
    #       global_network_id: "GlobalNetworkId",
    #       device_id: "DeviceId",
    #       link_id: "LinkId",
    #       state: "PENDING" # One of: ["PENDING", "AVAILABLE", "DELETING", "DELETED"]
    #     }
    #   }
    # @return [Types::DisassociateCustomerGatewayResponse]
    def disassociate_customer_gateway(params = {}, options = {})
      request = build_request(:disassociate_customer_gateway, params)
      request.send_request(options)
    end

    # <p>Disassociates an existing device from a link. You must first disassociate any customer
    #             gateways that are associated with the link.</p>
    # @param [Hash, Types::DisassociateLinkRequest] params
    # @option params [String] :global_network_id
    #   <p>The ID of the global network.</p>
    # @option params [String] :device_id
    #   <p>The ID of the device.</p>
    # @option params [String] :link_id
    #   <p>The ID of the link.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     global_network_id: "GlobalNetworkId", # required
    #     device_id: "DeviceId", # required
    #     link_id: "LinkId", # required
    #   }
    #   options = {}
    #   response = client.disassociate_link(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     link_association: {
    #       global_network_id: "GlobalNetworkId",
    #       device_id: "DeviceId",
    #       link_id: "LinkId",
    #       link_association_state: "PENDING" # One of: ["PENDING", "AVAILABLE", "DELETING", "DELETED"]
    #     }
    #   }
    # @return [Types::DisassociateLinkResponse]
    def disassociate_link(params = {}, options = {})
      request = build_request(:disassociate_link, params)
      request.send_request(options)
    end

    # <p>Disassociates a transit gateway Connect peer from a device and link.</p>
    # @param [Hash, Types::DisassociateTransitGatewayConnectPeerRequest] params
    # @option params [String] :global_network_id
    #   <p>The ID of the global network.</p>
    # @option params [String] :transit_gateway_connect_peer_arn
    #   <p>The Amazon Resource Name (ARN) of the transit gateway Connect peer.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     global_network_id: "GlobalNetworkId", # required
    #     transit_gateway_connect_peer_arn: "TransitGatewayConnectPeerArn", # required
    #   }
    #   options = {}
    #   response = client.disassociate_transit_gateway_connect_peer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     transit_gateway_connect_peer_association: {
    #       transit_gateway_connect_peer_arn: "TransitGatewayConnectPeerArn",
    #       global_network_id: "GlobalNetworkId",
    #       device_id: "DeviceId",
    #       link_id: "LinkId",
    #       state: "PENDING" # One of: ["PENDING", "AVAILABLE", "DELETING", "DELETED"]
    #     }
    #   }
    # @return [Types::DisassociateTransitGatewayConnectPeerResponse]
    def disassociate_transit_gateway_connect_peer(params = {}, options = {})
      request = build_request(:disassociate_transit_gateway_connect_peer, params)
      request.send_request(options)
    end

    # <p>Executes a change set on your core network. Deploys changes globally based on the policy submitted..</p>
    # @param [Hash, Types::ExecuteCoreNetworkChangeSetRequest] params
    # @option params [String] :core_network_id
    #   <p>The ID of a core network.</p>
    # @option params [Integer] :policy_version_id
    #   <p>The ID of the policy version.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     core_network_id: "CoreNetworkId", # required
    #     policy_version_id: 1, # required
    #   }
    #   options = {}
    #   response = client.execute_core_network_change_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::ExecuteCoreNetworkChangeSetResponse]
    def execute_core_network_change_set(params = {}, options = {})
      request = build_request(:execute_core_network_change_set, params)
      request.send_request(options)
    end

    # <p>Returns information about a core network Connect attachment.</p>
    # @param [Hash, Types::GetConnectAttachmentRequest] params
    # @option params [String] :attachment_id
    #   <p>The ID of the attachment.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     attachment_id: "AttachmentId", # required
    #   }
    #   options = {}
    #   response = client.get_connect_attachment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connect_attachment: {
    #       attachment: {
    #         core_network_id: "CoreNetworkId",
    #         core_network_arn: "CoreNetworkArn",
    #         attachment_id: "AttachmentId",
    #         owner_account_id: "AWSAccountId",
    #         attachment_type: "CONNECT" # One of: ["CONNECT", "SITE_TO_SITE_VPN", "VPC", "DIRECT_CONNECT_GATEWAY", "TRANSIT_GATEWAY_ROUTE_TABLE"],
    #         state: "REJECTED" # One of: ["REJECTED", "PENDING_ATTACHMENT_ACCEPTANCE", "CREATING", "FAILED", "AVAILABLE", "UPDATING", "PENDING_NETWORK_UPDATE", "PENDING_TAG_ACCEPTANCE", "DELETING"],
    #         edge_location: "ExternalRegionCode",
    #         edge_locations: ["ExternalRegionCode"],
    #         resource_arn: "ResourceArn",
    #         attachment_policy_rule_number: 1,
    #         segment_name: "ConstrainedString",
    #         network_function_group_name: "NetworkFunctionGroupName",
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue"
    #           }
    #         ],
    #         proposed_segment_change: {
    #           tags: [
    #             {
    #               key: "TagKey",
    #               value: "TagValue"
    #             }
    #           ],
    #           attachment_policy_rule_number: 1,
    #           segment_name: "ConstrainedString"
    #         },
    #         proposed_network_function_group_change: {
    #           tags: [
    #             {
    #               key: "TagKey",
    #               value: "TagValue"
    #             }
    #           ],
    #           attachment_policy_rule_number: 1,
    #           network_function_group_name: "ConstrainedString"
    #         },
    #         created_at: Time.now,
    #         updated_at: Time.now,
    #         last_modification_errors: [
    #           {
    #             code: "VPC_NOT_FOUND" # One of: ["VPC_NOT_FOUND", "SUBNET_NOT_FOUND", "SUBNET_DUPLICATED_IN_AVAILABILITY_ZONE", "SUBNET_NO_FREE_ADDRESSES", "SUBNET_UNSUPPORTED_AVAILABILITY_ZONE", "SUBNET_NO_IPV6_CIDRS", "VPN_CONNECTION_NOT_FOUND", "MAXIMUM_NO_ENCAP_LIMIT_EXCEEDED", "DIRECT_CONNECT_GATEWAY_NOT_FOUND", "DIRECT_CONNECT_GATEWAY_EXISTING_ATTACHMENTS", "DIRECT_CONNECT_GATEWAY_NO_PRIVATE_VIF", "VPN_EXISTING_ASSOCIATIONS", "VPC_UNSUPPORTED_FEATURES"],
    #             message: "ServerSideString",
    #             resource_arn: "ResourceArn",
    #             request_id: "ServerSideString"
    #           }
    #         ]
    #       },
    #       transport_attachment_id: "AttachmentId",
    #       options: {
    #         protocol: "GRE" # One of: ["GRE", "NO_ENCAP"]
    #       }
    #     }
    #   }
    # @return [Types::GetConnectAttachmentResponse]
    def get_connect_attachment(params = {}, options = {})
      request = build_request(:get_connect_attachment, params)
      request.send_request(options)
    end

    # <p>Returns information about a core network Connect peer.</p>
    # @param [Hash, Types::GetConnectPeerRequest] params
    # @option params [String] :connect_peer_id
    #   <p>The ID of the Connect peer.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     connect_peer_id: "ConnectPeerId", # required
    #   }
    #   options = {}
    #   response = client.get_connect_peer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connect_peer: {
    #       core_network_id: "CoreNetworkId",
    #       connect_attachment_id: "AttachmentId",
    #       connect_peer_id: "ConnectPeerId",
    #       edge_location: "ExternalRegionCode",
    #       state: "CREATING" # One of: ["CREATING", "FAILED", "AVAILABLE", "DELETING"],
    #       created_at: Time.now,
    #       configuration: {
    #         core_network_address: "IPAddress",
    #         peer_address: "IPAddress",
    #         inside_cidr_blocks: ["ConstrainedString"],
    #         protocol: "GRE" # One of: ["GRE", "NO_ENCAP"],
    #         bgp_configurations: [
    #           {
    #             core_network_asn: 1,
    #             peer_asn: 1,
    #             core_network_address: "IPAddress",
    #             peer_address: "IPAddress"
    #           }
    #         ]
    #       },
    #       tags: [
    #         {
    #           key: "TagKey",
    #           value: "TagValue"
    #         }
    #       ],
    #       subnet_arn: "SubnetArn",
    #       last_modification_errors: [
    #         {
    #           code: "EDGE_LOCATION_NO_FREE_IPS" # One of: ["EDGE_LOCATION_NO_FREE_IPS", "EDGE_LOCATION_PEER_DUPLICATE", "SUBNET_NOT_FOUND", "IP_OUTSIDE_SUBNET_CIDR_RANGE", "INVALID_INSIDE_CIDR_BLOCK", "NO_ASSOCIATED_CIDR_BLOCK"],
    #           message: "ServerSideString",
    #           resource_arn: "ResourceArn",
    #           request_id: "ServerSideString"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetConnectPeerResponse]
    def get_connect_peer(params = {}, options = {})
      request = build_request(:get_connect_peer, params)
      request.send_request(options)
    end

    # <p>Returns information about a core network Connect peer associations.</p>
    # @param [Hash, Types::GetConnectPeerAssociationsRequest] params
    # @option params [String] :global_network_id
    #   <p>The ID of the global network.</p>
    # @option params [Array<String>] :connect_peer_ids
    #   <p>The IDs of the Connect peers.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     global_network_id: "GlobalNetworkId", # required
    #     connect_peer_ids: ["ConnectPeerId"],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.get_connect_peer_associations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connect_peer_associations: [
    #       {
    #         connect_peer_id: "ConnectPeerId",
    #         global_network_id: "GlobalNetworkId",
    #         device_id: "DeviceId",
    #         link_id: "LinkId",
    #         state: "PENDING" # One of: ["PENDING", "AVAILABLE", "DELETING", "DELETED"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetConnectPeerAssociationsResponse]
    def get_connect_peer_associations(params = {}, options = {})
      request = build_request(:get_connect_peer_associations, params)
      request.send_request(options)
    end

    # <p>Gets information about one or more of your connections in a global network.</p>
    # @param [Hash, Types::GetConnectionsRequest] params
    # @option params [String] :global_network_id
    #   <p>The ID of the global network.</p>
    # @option params [Array<String>] :connection_ids
    #   <p>One or more connection IDs.</p>
    # @option params [String] :device_id
    #   <p>The ID of the device.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     global_network_id: "GlobalNetworkId", # required
    #     connection_ids: ["ConnectionId"],
    #     device_id: "DeviceId",
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.get_connections(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connections: [
    #       {
    #         connection_id: "ConnectionId",
    #         connection_arn: "ConnectionArn",
    #         global_network_id: "GlobalNetworkId",
    #         device_id: "DeviceId",
    #         connected_device_id: "DeviceId",
    #         link_id: "LinkId",
    #         connected_link_id: "LinkId",
    #         description: "ConstrainedString",
    #         created_at: Time.now,
    #         state: "PENDING" # One of: ["PENDING", "AVAILABLE", "DELETING", "UPDATING"],
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue"
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetConnectionsResponse]
    def get_connections(params = {}, options = {})
      request = build_request(:get_connections, params)
      request.send_request(options)
    end

    # <p>Returns information about the LIVE policy for a core network.</p>
    # @param [Hash, Types::GetCoreNetworkRequest] params
    # @option params [String] :core_network_id
    #   <p>The ID of a core network.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     core_network_id: "CoreNetworkId", # required
    #   }
    #   options = {}
    #   response = client.get_core_network(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     core_network: {
    #       global_network_id: "GlobalNetworkId",
    #       core_network_id: "CoreNetworkId",
    #       core_network_arn: "CoreNetworkArn",
    #       description: "ConstrainedString",
    #       created_at: Time.now,
    #       state: "CREATING" # One of: ["CREATING", "UPDATING", "AVAILABLE", "DELETING"],
    #       segments: [
    #         {
    #           name: "ConstrainedString",
    #           edge_locations: ["ExternalRegionCode"],
    #           shared_segments: ["ConstrainedString"]
    #         }
    #       ],
    #       network_function_groups: [
    #         {
    #           name: "ConstrainedString",
    #           edge_locations: ["ExternalRegionCode"],
    #           segments: {
    #             send_via: ["ConstrainedString"],
    #             send_to: ["ConstrainedString"]
    #           }
    #         }
    #       ],
    #       edges: [
    #         {
    #           edge_location: "ExternalRegionCode",
    #           asn: 1,
    #           inside_cidr_blocks: ["ConstrainedString"]
    #         }
    #       ],
    #       tags: [
    #         {
    #           key: "TagKey",
    #           value: "TagValue"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetCoreNetworkResponse]
    def get_core_network(params = {}, options = {})
      request = build_request(:get_core_network, params)
      request.send_request(options)
    end

    # <p>Returns information about a core network change event.</p>
    # @param [Hash, Types::GetCoreNetworkChangeEventsRequest] params
    # @option params [String] :core_network_id
    #   <p>The ID of a core network.</p>
    # @option params [Integer] :policy_version_id
    #   <p>The ID of the policy version.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     core_network_id: "CoreNetworkId", # required
    #     policy_version_id: 1, # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.get_core_network_change_events(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     core_network_change_events: [
    #       {
    #         type: "CORE_NETWORK_SEGMENT" # One of: ["CORE_NETWORK_SEGMENT", "NETWORK_FUNCTION_GROUP", "CORE_NETWORK_EDGE", "ATTACHMENT_MAPPING", "ATTACHMENT_ROUTE_PROPAGATION", "ATTACHMENT_ROUTE_STATIC", "ROUTING_POLICY", "ROUTING_POLICY_SEGMENT_ASSOCIATION", "ROUTING_POLICY_EDGE_ASSOCIATION", "ROUTING_POLICY_ATTACHMENT_ASSOCIATION", "CORE_NETWORK_CONFIGURATION", "SEGMENTS_CONFIGURATION", "SEGMENT_ACTIONS_CONFIGURATION", "ATTACHMENT_POLICIES_CONFIGURATION"],
    #         action: "ADD" # One of: ["ADD", "MODIFY", "REMOVE"],
    #         identifier_path: "ConstrainedString",
    #         event_time: Time.now,
    #         status: "NOT_STARTED" # One of: ["NOT_STARTED", "IN_PROGRESS", "COMPLETE", "FAILED"],
    #         values: {
    #           edge_location: "ExternalRegionCode",
    #           peer_edge_location: "ExternalRegionCode",
    #           routing_policy_direction: "inbound" # One of: ["inbound", "outbound"],
    #           segment_name: "ConstrainedString",
    #           network_function_group_name: "ConstrainedString",
    #           attachment_id: "AttachmentId",
    #           cidr: "ConstrainedString",
    #           routing_policy_association_details: [
    #             {
    #               routing_policy_names: ["ConstrainedString"],
    #               shared_segments: ["ConstrainedString"]
    #             }
    #           ]
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetCoreNetworkChangeEventsResponse]
    def get_core_network_change_events(params = {}, options = {})
      request = build_request(:get_core_network_change_events, params)
      request.send_request(options)
    end

    # <p>Returns a change set between the LIVE core network policy and a submitted policy.</p>
    # @param [Hash, Types::GetCoreNetworkChangeSetRequest] params
    # @option params [String] :core_network_id
    #   <p>The ID of a core network.</p>
    # @option params [Integer] :policy_version_id
    #   <p>The ID of the policy version.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     core_network_id: "CoreNetworkId", # required
    #     policy_version_id: 1, # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.get_core_network_change_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     core_network_changes: [
    #       {
    #         type: "CORE_NETWORK_SEGMENT" # One of: ["CORE_NETWORK_SEGMENT", "NETWORK_FUNCTION_GROUP", "CORE_NETWORK_EDGE", "ATTACHMENT_MAPPING", "ATTACHMENT_ROUTE_PROPAGATION", "ATTACHMENT_ROUTE_STATIC", "ROUTING_POLICY", "ROUTING_POLICY_SEGMENT_ASSOCIATION", "ROUTING_POLICY_EDGE_ASSOCIATION", "ROUTING_POLICY_ATTACHMENT_ASSOCIATION", "CORE_NETWORK_CONFIGURATION", "SEGMENTS_CONFIGURATION", "SEGMENT_ACTIONS_CONFIGURATION", "ATTACHMENT_POLICIES_CONFIGURATION"],
    #         action: "ADD" # One of: ["ADD", "MODIFY", "REMOVE"],
    #         identifier: "ConstrainedString",
    #         previous_values: {
    #           segment_name: "ConstrainedString",
    #           network_function_group_name: "ConstrainedString",
    #           edge_locations: ["ExternalRegionCode"],
    #           asn: 1,
    #           cidr: "ConstrainedString",
    #           destination_identifier: "ConstrainedString",
    #           inside_cidr_blocks: ["ConstrainedString"],
    #           shared_segments: ["ConstrainedString"],
    #           service_insertion_actions: [
    #             {
    #               action: "send-via" # One of: ["send-via", "send-to"],
    #               mode: "dual-hop" # One of: ["dual-hop", "single-hop"],
    #               when_sent_to: {
    #                 when_sent_to_segments_list: ["ConstrainedString"]
    #               },
    #               via: {
    #                 network_function_groups: [
    #                   {
    #                     name: "ConstrainedString"
    #                   }
    #                 ],
    #                 with_edge_overrides: [
    #                   {
    #                     edge_sets: [
    #                       ["ConstrainedString"]
    #                     ],
    #                     use_edge: "ConstrainedString"
    #                   }
    #                 ]
    #               }
    #             }
    #           ],
    #           vpn_ecmp_support: false,
    #           dns_support: false,
    #           security_group_referencing_support: false,
    #           routing_policy_direction: "inbound" # One of: ["inbound", "outbound"],
    #           routing_policy: "CoreNetworkPolicyDocument",
    #           peer_edge_locations: ["ExternalRegionCode"],
    #           attachment_id: "ConstrainedString",
    #           routing_policy_association_details: [
    #             {
    #               routing_policy_names: ["ConstrainedString"],
    #               shared_segments: ["ConstrainedString"]
    #             }
    #           ]
    #         },
    #         new_values: {
    #           segment_name: "ConstrainedString",
    #           network_function_group_name: "ConstrainedString",
    #           edge_locations: ["ExternalRegionCode"],
    #           asn: 1,
    #           cidr: "ConstrainedString",
    #           destination_identifier: "ConstrainedString",
    #           inside_cidr_blocks: ["ConstrainedString"],
    #           shared_segments: ["ConstrainedString"],
    #           service_insertion_actions: [
    #             {
    #               action: "send-via" # One of: ["send-via", "send-to"],
    #               mode: "dual-hop" # One of: ["dual-hop", "single-hop"],
    #               when_sent_to: {
    #                 when_sent_to_segments_list: ["ConstrainedString"]
    #               },
    #               via: {
    #                 network_function_groups: [
    #                   {
    #                     name: "ConstrainedString"
    #                   }
    #                 ],
    #                 with_edge_overrides: [
    #                   {
    #                     edge_sets: [
    #                       ["ConstrainedString"]
    #                     ],
    #                     use_edge: "ConstrainedString"
    #                   }
    #                 ]
    #               }
    #             }
    #           ],
    #           vpn_ecmp_support: false,
    #           dns_support: false,
    #           security_group_referencing_support: false,
    #           routing_policy_direction: "inbound" # One of: ["inbound", "outbound"],
    #           routing_policy: "CoreNetworkPolicyDocument",
    #           peer_edge_locations: ["ExternalRegionCode"],
    #           attachment_id: "ConstrainedString",
    #           routing_policy_association_details: [
    #             {
    #               routing_policy_names: ["ConstrainedString"],
    #               shared_segments: ["ConstrainedString"]
    #             }
    #           ]
    #         },
    #         identifier_path: "ConstrainedString"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetCoreNetworkChangeSetResponse]
    def get_core_network_change_set(params = {}, options = {})
      request = build_request(:get_core_network_change_set, params)
      request.send_request(options)
    end

    # <p>Returns details about a core network policy. You can get details about your current live policy or any previous policy version.</p>
    # @param [Hash, Types::GetCoreNetworkPolicyRequest] params
    # @option params [String] :core_network_id
    #   <p>The ID of a core network.</p>
    # @option params [Integer] :policy_version_id
    #   <p>The ID of a core network policy version.</p>
    # @option params [String] :alias
    #   <p>The alias of a core network policy </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     core_network_id: "CoreNetworkId", # required
    #     policy_version_id: 1,
    #     alias: "LIVE" # One of: ["LIVE", "LATEST"]
    #   }
    #   options = {}
    #   response = client.get_core_network_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     core_network_policy: {
    #       core_network_id: "CoreNetworkId",
    #       policy_version_id: 1,
    #       alias: "LIVE" # One of: ["LIVE", "LATEST"],
    #       description: "ConstrainedString",
    #       created_at: Time.now,
    #       change_set_state: "PENDING_GENERATION" # One of: ["PENDING_GENERATION", "FAILED_GENERATION", "READY_TO_EXECUTE", "EXECUTING", "EXECUTION_SUCCEEDED", "OUT_OF_DATE"],
    #       policy_errors: [
    #         {
    #           error_code: "ServerSideString", # required
    #           message: "ServerSideString", # required
    #           path: "ServerSideString"
    #         }
    #       ],
    #       policy_document: "SynthesizedJsonCoreNetworkPolicyDocument"
    #     }
    #   }
    # @return [Types::GetCoreNetworkPolicyResponse]
    def get_core_network_policy(params = {}, options = {})
      request = build_request(:get_core_network_policy, params)
      request.send_request(options)
    end

    # <p>Gets the association information for customer gateways that are associated with
    #             devices and links in your global network.</p>
    # @param [Hash, Types::GetCustomerGatewayAssociationsRequest] params
    # @option params [String] :global_network_id
    #   <p>The ID of the global network.</p>
    # @option params [Array<String>] :customer_gateway_arns
    #   <p>One or more customer gateway Amazon Resource Names (ARNs). The maximum is 10.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     global_network_id: "GlobalNetworkId", # required
    #     customer_gateway_arns: ["CustomerGatewayArn"],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.get_customer_gateway_associations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     customer_gateway_associations: [
    #       {
    #         customer_gateway_arn: "CustomerGatewayArn",
    #         global_network_id: "GlobalNetworkId",
    #         device_id: "DeviceId",
    #         link_id: "LinkId",
    #         state: "PENDING" # One of: ["PENDING", "AVAILABLE", "DELETING", "DELETED"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetCustomerGatewayAssociationsResponse]
    def get_customer_gateway_associations(params = {}, options = {})
      request = build_request(:get_customer_gateway_associations, params)
      request.send_request(options)
    end

    # <p>Gets information about one or more of your devices in a global network.</p>
    # @param [Hash, Types::GetDevicesRequest] params
    # @option params [String] :global_network_id
    #   <p>The ID of the global network.</p>
    # @option params [Array<String>] :device_ids
    #   <p>One or more device IDs. The maximum is 10.</p>
    # @option params [String] :site_id
    #   <p>The ID of the site.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     global_network_id: "GlobalNetworkId", # required
    #     device_ids: ["DeviceId"],
    #     site_id: "SiteId",
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.get_devices(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     devices: [
    #       {
    #         device_id: "DeviceId",
    #         device_arn: "DeviceArn",
    #         global_network_id: "GlobalNetworkId",
    #         aws_location: {
    #           zone: "ConstrainedString",
    #           subnet_arn: "SubnetArn"
    #         },
    #         description: "ConstrainedString",
    #         type: "ConstrainedString",
    #         vendor: "ConstrainedString",
    #         model: "ConstrainedString",
    #         serial_number: "ConstrainedString",
    #         location: {
    #           address: "ConstrainedString",
    #           latitude: "ConstrainedString",
    #           longitude: "ConstrainedString"
    #         },
    #         site_id: "SiteId",
    #         created_at: Time.now,
    #         state: "PENDING" # One of: ["PENDING", "AVAILABLE", "DELETING", "UPDATING"],
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue"
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetDevicesResponse]
    def get_devices(params = {}, options = {})
      request = build_request(:get_devices, params)
      request.send_request(options)
    end

    # <p>Returns information about a specific Amazon Web Services Direct Connect gateway attachment.</p>
    # @param [Hash, Types::GetDirectConnectGatewayAttachmentRequest] params
    # @option params [String] :attachment_id
    #   <p>The ID of the Direct Connect gateway attachment that you want to see details about.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     attachment_id: "AttachmentId", # required
    #   }
    #   options = {}
    #   response = client.get_direct_connect_gateway_attachment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     direct_connect_gateway_attachment: {
    #       attachment: {
    #         core_network_id: "CoreNetworkId",
    #         core_network_arn: "CoreNetworkArn",
    #         attachment_id: "AttachmentId",
    #         owner_account_id: "AWSAccountId",
    #         attachment_type: "CONNECT" # One of: ["CONNECT", "SITE_TO_SITE_VPN", "VPC", "DIRECT_CONNECT_GATEWAY", "TRANSIT_GATEWAY_ROUTE_TABLE"],
    #         state: "REJECTED" # One of: ["REJECTED", "PENDING_ATTACHMENT_ACCEPTANCE", "CREATING", "FAILED", "AVAILABLE", "UPDATING", "PENDING_NETWORK_UPDATE", "PENDING_TAG_ACCEPTANCE", "DELETING"],
    #         edge_location: "ExternalRegionCode",
    #         edge_locations: ["ExternalRegionCode"],
    #         resource_arn: "ResourceArn",
    #         attachment_policy_rule_number: 1,
    #         segment_name: "ConstrainedString",
    #         network_function_group_name: "NetworkFunctionGroupName",
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue"
    #           }
    #         ],
    #         proposed_segment_change: {
    #           tags: [
    #             {
    #               key: "TagKey",
    #               value: "TagValue"
    #             }
    #           ],
    #           attachment_policy_rule_number: 1,
    #           segment_name: "ConstrainedString"
    #         },
    #         proposed_network_function_group_change: {
    #           tags: [
    #             {
    #               key: "TagKey",
    #               value: "TagValue"
    #             }
    #           ],
    #           attachment_policy_rule_number: 1,
    #           network_function_group_name: "ConstrainedString"
    #         },
    #         created_at: Time.now,
    #         updated_at: Time.now,
    #         last_modification_errors: [
    #           {
    #             code: "VPC_NOT_FOUND" # One of: ["VPC_NOT_FOUND", "SUBNET_NOT_FOUND", "SUBNET_DUPLICATED_IN_AVAILABILITY_ZONE", "SUBNET_NO_FREE_ADDRESSES", "SUBNET_UNSUPPORTED_AVAILABILITY_ZONE", "SUBNET_NO_IPV6_CIDRS", "VPN_CONNECTION_NOT_FOUND", "MAXIMUM_NO_ENCAP_LIMIT_EXCEEDED", "DIRECT_CONNECT_GATEWAY_NOT_FOUND", "DIRECT_CONNECT_GATEWAY_EXISTING_ATTACHMENTS", "DIRECT_CONNECT_GATEWAY_NO_PRIVATE_VIF", "VPN_EXISTING_ASSOCIATIONS", "VPC_UNSUPPORTED_FEATURES"],
    #             message: "ServerSideString",
    #             resource_arn: "ResourceArn",
    #             request_id: "ServerSideString"
    #           }
    #         ]
    #       },
    #       direct_connect_gateway_arn: "DirectConnectGatewayArn"
    #     }
    #   }
    # @return [Types::GetDirectConnectGatewayAttachmentResponse]
    def get_direct_connect_gateway_attachment(params = {}, options = {})
      request = build_request(:get_direct_connect_gateway_attachment, params)
      request.send_request(options)
    end

    # <p>Gets the link associations for a device or a link. Either the device ID or the link ID
    #             must be specified.</p>
    # @param [Hash, Types::GetLinkAssociationsRequest] params
    # @option params [String] :global_network_id
    #   <p>The ID of the global network.</p>
    # @option params [String] :device_id
    #   <p>The ID of the device.</p>
    # @option params [String] :link_id
    #   <p>The ID of the link.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     global_network_id: "GlobalNetworkId", # required
    #     device_id: "DeviceId",
    #     link_id: "LinkId",
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.get_link_associations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     link_associations: [
    #       {
    #         global_network_id: "GlobalNetworkId",
    #         device_id: "DeviceId",
    #         link_id: "LinkId",
    #         link_association_state: "PENDING" # One of: ["PENDING", "AVAILABLE", "DELETING", "DELETED"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetLinkAssociationsResponse]
    def get_link_associations(params = {}, options = {})
      request = build_request(:get_link_associations, params)
      request.send_request(options)
    end

    # <p>Gets information about one or more links in a specified global network.</p>
    #          <p>If you specify the site ID, you cannot specify the type or provider in the same request. You can specify the type and provider in the same request.</p>
    # @param [Hash, Types::GetLinksRequest] params
    # @option params [String] :global_network_id
    #   <p>The ID of the global network.</p>
    # @option params [Array<String>] :link_ids
    #   <p>One or more link IDs. The maximum is 10.</p>
    # @option params [String] :site_id
    #   <p>The ID of the site.</p>
    # @option params [String] :type
    #   <p>The link type.</p>
    # @option params [String] :provider
    #   <p>The link provider.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     global_network_id: "GlobalNetworkId", # required
    #     link_ids: ["LinkId"],
    #     site_id: "SiteId",
    #     type: "ConstrainedString",
    #     provider: "ConstrainedString",
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.get_links(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     links: [
    #       {
    #         link_id: "LinkId",
    #         link_arn: "LinkArn",
    #         global_network_id: "GlobalNetworkId",
    #         site_id: "SiteId",
    #         description: "ConstrainedString",
    #         type: "ConstrainedString",
    #         bandwidth: {
    #           upload_speed: 1,
    #           download_speed: 1
    #         },
    #         provider: "ConstrainedString",
    #         created_at: Time.now,
    #         state: "PENDING" # One of: ["PENDING", "AVAILABLE", "DELETING", "UPDATING"],
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue"
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetLinksResponse]
    def get_links(params = {}, options = {})
      request = build_request(:get_links, params)
      request.send_request(options)
    end

    # <p>Gets the count of network resources, by resource type, for the specified global network.</p>
    # @param [Hash, Types::GetNetworkResourceCountsRequest] params
    # @option params [String] :global_network_id
    #   <p>The ID of the global network.</p>
    # @option params [String] :resource_type
    #   <p>The resource type.</p>
    #            <p>The following are the supported resource types for Direct Connect:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>dxcon</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dx-gateway</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dx-vif</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>The following are the supported resource types for Network Manager:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>attachment</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>connect-peer</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>connection</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>core-network</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>device</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>link</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>peering</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>site</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>The following are the supported resource types for Amazon VPC:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>customer-gateway</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>transit-gateway</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>transit-gateway-attachment</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>transit-gateway-connect-peer</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>transit-gateway-route-table</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>vpn-connection</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     global_network_id: "GlobalNetworkId", # required
    #     resource_type: "ConstrainedString",
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.get_network_resource_counts(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     network_resource_counts: [
    #       {
    #         resource_type: "ConstrainedString",
    #         count: 1
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetNetworkResourceCountsResponse]
    def get_network_resource_counts(params = {}, options = {})
      request = build_request(:get_network_resource_counts, params)
      request.send_request(options)
    end

    # <p>Gets the network resource relationships for the specified global network.</p>
    # @param [Hash, Types::GetNetworkResourceRelationshipsRequest] params
    # @option params [String] :global_network_id
    #   <p>The ID of the global network.</p>
    # @option params [String] :core_network_id
    #   <p>The ID of a core network.</p>
    # @option params [String] :registered_gateway_arn
    #   <p>The ARN of the registered gateway.</p>
    # @option params [String] :aws_region
    #   <p>The Amazon Web Services Region.</p>
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID.</p>
    # @option params [String] :resource_type
    #   <p>The resource type.</p>
    #            <p>The following are the supported resource types for Direct Connect:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>dxcon</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dx-gateway</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dx-vif</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>The following are the supported resource types for Network Manager:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>attachment</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>connect-peer</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>connection</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>core-network</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>device</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>link</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>peering</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>site</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>The following are the supported resource types for Amazon VPC:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>customer-gateway</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>transit-gateway</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>transit-gateway-attachment</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>transit-gateway-connect-peer</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>transit-gateway-route-table</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>vpn-connection</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [String] :resource_arn
    #   <p>The ARN of the gateway.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     global_network_id: "GlobalNetworkId", # required
    #     core_network_id: "CoreNetworkId",
    #     registered_gateway_arn: "ResourceArn",
    #     aws_region: "ExternalRegionCode",
    #     account_id: "AWSAccountId",
    #     resource_type: "ConstrainedString",
    #     resource_arn: "ResourceArn",
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.get_network_resource_relationships(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     relationships: [
    #       {
    #         from: "ConstrainedString",
    #         to: "ConstrainedString"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetNetworkResourceRelationshipsResponse]
    def get_network_resource_relationships(params = {}, options = {})
      request = build_request(:get_network_resource_relationships, params)
      request.send_request(options)
    end

    # <p>Describes the network resources for the specified global network.</p>
    #          <p>The results include information from the corresponding Describe call for the resource, minus any sensitive information such as pre-shared keys.</p>
    # @param [Hash, Types::GetNetworkResourcesRequest] params
    # @option params [String] :global_network_id
    #   <p>The ID of the global network.</p>
    # @option params [String] :core_network_id
    #   <p>The ID of a core network.</p>
    # @option params [String] :registered_gateway_arn
    #   <p>The ARN of the gateway.</p>
    # @option params [String] :aws_region
    #   <p>The Amazon Web Services Region.</p>
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID.</p>
    # @option params [String] :resource_type
    #   <p>The resource type.</p>
    #            <p>The following are the supported resource types for Direct Connect:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>dxcon</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dx-gateway</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dx-vif</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>The following are the supported resource types for Network Manager:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>attachment</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>connect-peer</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>connection</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>core-network</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>device</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>link</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>peering</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>site</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>The following are the supported resource types for Amazon VPC:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>customer-gateway</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>transit-gateway</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>transit-gateway-attachment</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>transit-gateway-connect-peer</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>transit-gateway-route-table</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>vpn-connection</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     global_network_id: "GlobalNetworkId", # required
    #     core_network_id: "CoreNetworkId",
    #     registered_gateway_arn: "ResourceArn",
    #     aws_region: "ExternalRegionCode",
    #     account_id: "AWSAccountId",
    #     resource_type: "ConstrainedString",
    #     resource_arn: "ResourceArn",
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.get_network_resources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     network_resources: [
    #       {
    #         registered_gateway_arn: "ResourceArn",
    #         core_network_id: "CoreNetworkId",
    #         aws_region: "ExternalRegionCode",
    #         account_id: "AWSAccountId",
    #         resource_type: "ConstrainedString",
    #         resource_id: "ConstrainedString",
    #         resource_arn: "ResourceArn",
    #         definition: "ConstrainedString",
    #         definition_timestamp: Time.now,
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue"
    #           }
    #         ],
    #         metadata: {
    #           "ConstrainedString" => "ConstrainedString"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetNetworkResourcesResponse]
    def get_network_resources(params = {}, options = {})
      request = build_request(:get_network_resources, params)
      request.send_request(options)
    end

    # <p>Gets the network routes of the specified global network.</p>
    # @param [Hash, Types::GetNetworkRoutesRequest] params
    # @option params [String] :global_network_id
    #   <p>The ID of the global network.</p>
    # @option params [Types::RouteTableIdentifier] :route_table_identifier
    #   <p>The ID of the route table.</p>
    # @option params [Array<String>] :exact_cidr_matches
    #   <p>An exact CIDR block.</p>
    # @option params [Array<String>] :longest_prefix_matches
    #   <p>The most specific route that matches the traffic (longest prefix match).</p>
    # @option params [Array<String>] :subnet_of_matches
    #   <p>The routes with a subnet that match the specified CIDR filter.</p>
    # @option params [Array<String>] :supernet_of_matches
    #   <p>The routes with a CIDR that encompasses the CIDR filter. Example: If you specify 10.0.1.0/30, then the result returns 10.0.1.0/29.</p>
    # @option params [Array<String>] :prefix_list_ids
    #   <p>The IDs of the prefix lists.</p>
    # @option params [Array<String>] :states
    #   <p>The route states.</p>
    # @option params [Array<String>] :types
    #   <p>The route types.</p>
    # @option params [Hash<String, Array<String>>] :destination_filters
    #   <p>Filter by route table destination. Possible Values: TRANSIT_GATEWAY_ATTACHMENT_ID, RESOURCE_ID, or RESOURCE_TYPE.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     global_network_id: "GlobalNetworkId", # required
    #     route_table_identifier: { # required
    #       transit_gateway_route_table_arn: "TransitGatewayRouteTableArn",
    #       core_network_segment_edge: {
    #         core_network_id: "CoreNetworkId",
    #         segment_name: "ConstrainedString",
    #         edge_location: "ExternalRegionCode"
    #       },
    #       core_network_network_function_group: {
    #         core_network_id: "CoreNetworkId",
    #         network_function_group_name: "ConstrainedString",
    #         edge_location: "ExternalRegionCode"
    #       }
    #     },
    #     exact_cidr_matches: ["ConstrainedString"],
    #     longest_prefix_matches: ["ConstrainedString"],
    #     subnet_of_matches: ["ConstrainedString"],
    #     supernet_of_matches: ["ConstrainedString"],
    #     prefix_list_ids: ["ConstrainedString"],
    #     states: ["ACTIVE" # One of: ["ACTIVE", "BLACKHOLE"]],
    #     types: ["PROPAGATED" # One of: ["PROPAGATED", "STATIC"]],
    #     destination_filters: {
    #       "FilterName" => ["FilterValue"]
    #     }
    #   }
    #   options = {}
    #   response = client.get_network_routes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     route_table_arn: "ResourceArn",
    #     core_network_segment_edge: {
    #       core_network_id: "CoreNetworkId",
    #       segment_name: "ConstrainedString",
    #       edge_location: "ExternalRegionCode"
    #     },
    #     route_table_type: "TRANSIT_GATEWAY_ROUTE_TABLE" # One of: ["TRANSIT_GATEWAY_ROUTE_TABLE", "CORE_NETWORK_SEGMENT", "NETWORK_FUNCTION_GROUP"],
    #     route_table_timestamp: Time.now,
    #     network_routes: [
    #       {
    #         destination_cidr_block: "ConstrainedString",
    #         destinations: [
    #           {
    #             core_network_attachment_id: "AttachmentId",
    #             transit_gateway_attachment_id: "TransitGatewayAttachmentId",
    #             segment_name: "ConstrainedString",
    #             network_function_group_name: "ConstrainedString",
    #             edge_location: "ExternalRegionCode",
    #             resource_type: "ConstrainedString",
    #             resource_id: "ConstrainedString"
    #           }
    #         ],
    #         prefix_list_id: "ConstrainedString",
    #         state: "ACTIVE" # One of: ["ACTIVE", "BLACKHOLE"],
    #         type: "PROPAGATED" # One of: ["PROPAGATED", "STATIC"]
    #       }
    #     ]
    #   }
    # @return [Types::GetNetworkRoutesResponse]
    def get_network_routes(params = {}, options = {})
      request = build_request(:get_network_routes, params)
      request.send_request(options)
    end

    # <p>Gets the network telemetry of the specified global network.</p>
    # @param [Hash, Types::GetNetworkTelemetryRequest] params
    # @option params [String] :global_network_id
    #   <p>The ID of the global network.</p>
    # @option params [String] :core_network_id
    #   <p>The ID of a core network.</p>
    # @option params [String] :registered_gateway_arn
    #   <p>The ARN of the gateway.</p>
    # @option params [String] :aws_region
    #   <p>The Amazon Web Services Region.</p>
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID.</p>
    # @option params [String] :resource_type
    #   <p>The resource type. The following are the supported resource types:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>connect-peer</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>transit-gateway-connect-peer</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>vpn-connection</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     global_network_id: "GlobalNetworkId", # required
    #     core_network_id: "CoreNetworkId",
    #     registered_gateway_arn: "ResourceArn",
    #     aws_region: "ExternalRegionCode",
    #     account_id: "AWSAccountId",
    #     resource_type: "ConstrainedString",
    #     resource_arn: "ResourceArn",
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.get_network_telemetry(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     network_telemetry: [
    #       {
    #         registered_gateway_arn: "ResourceArn",
    #         core_network_id: "CoreNetworkId",
    #         aws_region: "ExternalRegionCode",
    #         account_id: "AWSAccountId",
    #         resource_type: "ConstrainedString",
    #         resource_id: "ConstrainedString",
    #         resource_arn: "ResourceArn",
    #         address: "ConstrainedString",
    #         health: {
    #           type: "BGP" # One of: ["BGP", "IPSEC"],
    #           status: "UP" # One of: ["UP", "DOWN"],
    #           timestamp: Time.now
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetNetworkTelemetryResponse]
    def get_network_telemetry(params = {}, options = {})
      request = build_request(:get_network_telemetry, params)
      request.send_request(options)
    end

    # <p>Returns information about a resource policy.</p>
    # @param [Hash, Types::GetResourcePolicyRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #   }
    #   options = {}
    #   response = client.get_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_document: "SynthesizedJsonResourcePolicyDocument"
    #   }
    # @return [Types::GetResourcePolicyResponse]
    def get_resource_policy(params = {}, options = {})
      request = build_request(:get_resource_policy, params)
      request.send_request(options)
    end

    # <p>Gets information about the specified route analysis.</p>
    # @param [Hash, Types::GetRouteAnalysisRequest] params
    # @option params [String] :global_network_id
    #   <p>The ID of the global network.</p>
    # @option params [String] :route_analysis_id
    #   <p>The ID of the route analysis.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     global_network_id: "GlobalNetworkId", # required
    #     route_analysis_id: "ConstrainedString", # required
    #   }
    #   options = {}
    #   response = client.get_route_analysis(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     route_analysis: {
    #       global_network_id: "GlobalNetworkId",
    #       owner_account_id: "AWSAccountId",
    #       route_analysis_id: "ConstrainedString",
    #       start_timestamp: Time.now,
    #       status: "RUNNING" # One of: ["RUNNING", "COMPLETED", "FAILED"],
    #       source: {
    #         transit_gateway_attachment_arn: "TransitGatewayAttachmentArn",
    #         transit_gateway_arn: "TransitGatewayArn",
    #         ip_address: "IPAddress"
    #       },
    #       destination: {
    #         transit_gateway_attachment_arn: "TransitGatewayAttachmentArn",
    #         transit_gateway_arn: "TransitGatewayArn",
    #         ip_address: "IPAddress"
    #       },
    #       include_return_path: false,
    #       use_middleboxes: false,
    #       forward_path: {
    #         completion_status: {
    #           result_code: "CONNECTED" # One of: ["CONNECTED", "NOT_CONNECTED"],
    #           reason_code: "TRANSIT_GATEWAY_ATTACHMENT_NOT_FOUND" # One of: ["TRANSIT_GATEWAY_ATTACHMENT_NOT_FOUND", "TRANSIT_GATEWAY_ATTACHMENT_NOT_IN_TRANSIT_GATEWAY", "CYCLIC_PATH_DETECTED", "TRANSIT_GATEWAY_ATTACHMENT_STABLE_ROUTE_TABLE_NOT_FOUND", "ROUTE_NOT_FOUND", "BLACKHOLE_ROUTE_FOR_DESTINATION_FOUND", "INACTIVE_ROUTE_FOR_DESTINATION_FOUND", "TRANSIT_GATEWAY_ATTACHMENT_ATTACH_ARN_NO_MATCH", "MAX_HOPS_EXCEEDED", "POSSIBLE_MIDDLEBOX", "NO_DESTINATION_ARN_PROVIDED"],
    #           reason_context: {
    #             "ReasonContextKey" => "ReasonContextValue"
    #           }
    #         },
    #         path: [
    #           {
    #             sequence: 1,
    #             resource: {
    #               registered_gateway_arn: "ResourceArn",
    #               resource_arn: "ResourceArn",
    #               resource_type: "ConstrainedString",
    #               definition: "ConstrainedString",
    #               name_tag: "ConstrainedString",
    #               is_middlebox: false
    #             },
    #             destination_cidr_block: "ConstrainedString"
    #           }
    #         ]
    #       },
    #       return_path: {
    #         completion_status: {
    #           result_code: "CONNECTED" # One of: ["CONNECTED", "NOT_CONNECTED"],
    #           reason_code: "TRANSIT_GATEWAY_ATTACHMENT_NOT_FOUND" # One of: ["TRANSIT_GATEWAY_ATTACHMENT_NOT_FOUND", "TRANSIT_GATEWAY_ATTACHMENT_NOT_IN_TRANSIT_GATEWAY", "CYCLIC_PATH_DETECTED", "TRANSIT_GATEWAY_ATTACHMENT_STABLE_ROUTE_TABLE_NOT_FOUND", "ROUTE_NOT_FOUND", "BLACKHOLE_ROUTE_FOR_DESTINATION_FOUND", "INACTIVE_ROUTE_FOR_DESTINATION_FOUND", "TRANSIT_GATEWAY_ATTACHMENT_ATTACH_ARN_NO_MATCH", "MAX_HOPS_EXCEEDED", "POSSIBLE_MIDDLEBOX", "NO_DESTINATION_ARN_PROVIDED"],
    #           reason_context: {
    #             "ReasonContextKey" => "ReasonContextValue"
    #           }
    #         },
    #         path: [
    #           {
    #             sequence: 1,
    #             resource: {
    #               registered_gateway_arn: "ResourceArn",
    #               resource_arn: "ResourceArn",
    #               resource_type: "ConstrainedString",
    #               definition: "ConstrainedString",
    #               name_tag: "ConstrainedString",
    #               is_middlebox: false
    #             },
    #             destination_cidr_block: "ConstrainedString"
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @return [Types::GetRouteAnalysisResponse]
    def get_route_analysis(params = {}, options = {})
      request = build_request(:get_route_analysis, params)
      request.send_request(options)
    end

    # <p>Returns information about a site-to-site VPN attachment.</p>
    # @param [Hash, Types::GetSiteToSiteVpnAttachmentRequest] params
    # @option params [String] :attachment_id
    #   <p>The ID of the attachment.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     attachment_id: "AttachmentId", # required
    #   }
    #   options = {}
    #   response = client.get_site_to_site_vpn_attachment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     site_to_site_vpn_attachment: {
    #       attachment: {
    #         core_network_id: "CoreNetworkId",
    #         core_network_arn: "CoreNetworkArn",
    #         attachment_id: "AttachmentId",
    #         owner_account_id: "AWSAccountId",
    #         attachment_type: "CONNECT" # One of: ["CONNECT", "SITE_TO_SITE_VPN", "VPC", "DIRECT_CONNECT_GATEWAY", "TRANSIT_GATEWAY_ROUTE_TABLE"],
    #         state: "REJECTED" # One of: ["REJECTED", "PENDING_ATTACHMENT_ACCEPTANCE", "CREATING", "FAILED", "AVAILABLE", "UPDATING", "PENDING_NETWORK_UPDATE", "PENDING_TAG_ACCEPTANCE", "DELETING"],
    #         edge_location: "ExternalRegionCode",
    #         edge_locations: ["ExternalRegionCode"],
    #         resource_arn: "ResourceArn",
    #         attachment_policy_rule_number: 1,
    #         segment_name: "ConstrainedString",
    #         network_function_group_name: "NetworkFunctionGroupName",
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue"
    #           }
    #         ],
    #         proposed_segment_change: {
    #           tags: [
    #             {
    #               key: "TagKey",
    #               value: "TagValue"
    #             }
    #           ],
    #           attachment_policy_rule_number: 1,
    #           segment_name: "ConstrainedString"
    #         },
    #         proposed_network_function_group_change: {
    #           tags: [
    #             {
    #               key: "TagKey",
    #               value: "TagValue"
    #             }
    #           ],
    #           attachment_policy_rule_number: 1,
    #           network_function_group_name: "ConstrainedString"
    #         },
    #         created_at: Time.now,
    #         updated_at: Time.now,
    #         last_modification_errors: [
    #           {
    #             code: "VPC_NOT_FOUND" # One of: ["VPC_NOT_FOUND", "SUBNET_NOT_FOUND", "SUBNET_DUPLICATED_IN_AVAILABILITY_ZONE", "SUBNET_NO_FREE_ADDRESSES", "SUBNET_UNSUPPORTED_AVAILABILITY_ZONE", "SUBNET_NO_IPV6_CIDRS", "VPN_CONNECTION_NOT_FOUND", "MAXIMUM_NO_ENCAP_LIMIT_EXCEEDED", "DIRECT_CONNECT_GATEWAY_NOT_FOUND", "DIRECT_CONNECT_GATEWAY_EXISTING_ATTACHMENTS", "DIRECT_CONNECT_GATEWAY_NO_PRIVATE_VIF", "VPN_EXISTING_ASSOCIATIONS", "VPC_UNSUPPORTED_FEATURES"],
    #             message: "ServerSideString",
    #             resource_arn: "ResourceArn",
    #             request_id: "ServerSideString"
    #           }
    #         ]
    #       },
    #       vpn_connection_arn: "VpnConnectionArn"
    #     }
    #   }
    # @return [Types::GetSiteToSiteVpnAttachmentResponse]
    def get_site_to_site_vpn_attachment(params = {}, options = {})
      request = build_request(:get_site_to_site_vpn_attachment, params)
      request.send_request(options)
    end

    # <p>Gets information about one or more of your sites in a global network.</p>
    # @param [Hash, Types::GetSitesRequest] params
    # @option params [String] :global_network_id
    #   <p>The ID of the global network.</p>
    # @option params [Array<String>] :site_ids
    #   <p>One or more site IDs. The maximum is 10.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     global_network_id: "GlobalNetworkId", # required
    #     site_ids: ["SiteId"],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.get_sites(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     sites: [
    #       {
    #         site_id: "SiteId",
    #         site_arn: "SiteArn",
    #         global_network_id: "GlobalNetworkId",
    #         description: "ConstrainedString",
    #         location: {
    #           address: "ConstrainedString",
    #           latitude: "ConstrainedString",
    #           longitude: "ConstrainedString"
    #         },
    #         created_at: Time.now,
    #         state: "PENDING" # One of: ["PENDING", "AVAILABLE", "DELETING", "UPDATING"],
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue"
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetSitesResponse]
    def get_sites(params = {}, options = {})
      request = build_request(:get_sites, params)
      request.send_request(options)
    end

    # <p>Gets information about one or more of your transit gateway Connect peer associations in a global network.</p>
    # @param [Hash, Types::GetTransitGatewayConnectPeerAssociationsRequest] params
    # @option params [String] :global_network_id
    #   <p>The ID of the global network.</p>
    # @option params [Array<String>] :transit_gateway_connect_peer_arns
    #   <p>One or more transit gateway Connect peer Amazon Resource Names (ARNs).</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     global_network_id: "GlobalNetworkId", # required
    #     transit_gateway_connect_peer_arns: ["TransitGatewayConnectPeerArn"],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.get_transit_gateway_connect_peer_associations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     transit_gateway_connect_peer_associations: [
    #       {
    #         transit_gateway_connect_peer_arn: "TransitGatewayConnectPeerArn",
    #         global_network_id: "GlobalNetworkId",
    #         device_id: "DeviceId",
    #         link_id: "LinkId",
    #         state: "PENDING" # One of: ["PENDING", "AVAILABLE", "DELETING", "DELETED"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetTransitGatewayConnectPeerAssociationsResponse]
    def get_transit_gateway_connect_peer_associations(params = {}, options = {})
      request = build_request(:get_transit_gateway_connect_peer_associations, params)
      request.send_request(options)
    end

    # <p>Returns information about a transit gateway peer.</p>
    # @param [Hash, Types::GetTransitGatewayPeeringRequest] params
    # @option params [String] :peering_id
    #   <p>The ID of the peering request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     peering_id: "PeeringId", # required
    #   }
    #   options = {}
    #   response = client.get_transit_gateway_peering(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     transit_gateway_peering: {
    #       peering: {
    #         core_network_id: "CoreNetworkId",
    #         core_network_arn: "CoreNetworkArn",
    #         peering_id: "PeeringId",
    #         owner_account_id: "AWSAccountId",
    #         peering_type: "TRANSIT_GATEWAY" # One of: ["TRANSIT_GATEWAY"],
    #         state: "CREATING" # One of: ["CREATING", "FAILED", "AVAILABLE", "DELETING"],
    #         edge_location: "ExternalRegionCode",
    #         resource_arn: "ResourceArn",
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue"
    #           }
    #         ],
    #         created_at: Time.now,
    #         last_modification_errors: [
    #           {
    #             code: "TRANSIT_GATEWAY_NOT_FOUND" # One of: ["TRANSIT_GATEWAY_NOT_FOUND", "TRANSIT_GATEWAY_PEERS_LIMIT_EXCEEDED", "MISSING_PERMISSIONS", "INTERNAL_ERROR", "EDGE_LOCATION_PEER_DUPLICATE", "INVALID_TRANSIT_GATEWAY_STATE"],
    #             message: "ServerSideString",
    #             resource_arn: "ResourceArn",
    #             request_id: "ServerSideString",
    #             missing_permissions_context: {
    #               missing_permission: "ServerSideString"
    #             }
    #           }
    #         ]
    #       },
    #       transit_gateway_arn: "TransitGatewayArn",
    #       transit_gateway_peering_attachment_id: "TransitGatewayPeeringAttachmentId"
    #     }
    #   }
    # @return [Types::GetTransitGatewayPeeringResponse]
    def get_transit_gateway_peering(params = {}, options = {})
      request = build_request(:get_transit_gateway_peering, params)
      request.send_request(options)
    end

    # <p>Gets information about the transit gateway registrations in a specified
    #             global network.</p>
    # @param [Hash, Types::GetTransitGatewayRegistrationsRequest] params
    # @option params [String] :global_network_id
    #   <p>The ID of the global network.</p>
    # @option params [Array<String>] :transit_gateway_arns
    #   <p>The Amazon Resource Names (ARNs) of one or more transit gateways. The maximum is
    #               10.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     global_network_id: "GlobalNetworkId", # required
    #     transit_gateway_arns: ["TransitGatewayArn"],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.get_transit_gateway_registrations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     transit_gateway_registrations: [
    #       {
    #         global_network_id: "GlobalNetworkId",
    #         transit_gateway_arn: "TransitGatewayArn",
    #         state: {
    #           code: "PENDING" # One of: ["PENDING", "AVAILABLE", "DELETING", "DELETED", "FAILED"],
    #           message: "ConstrainedString"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetTransitGatewayRegistrationsResponse]
    def get_transit_gateway_registrations(params = {}, options = {})
      request = build_request(:get_transit_gateway_registrations, params)
      request.send_request(options)
    end

    # <p>Returns information about a transit gateway route table attachment.</p>
    # @param [Hash, Types::GetTransitGatewayRouteTableAttachmentRequest] params
    # @option params [String] :attachment_id
    #   <p>The ID of the transit gateway route table attachment.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     attachment_id: "AttachmentId", # required
    #   }
    #   options = {}
    #   response = client.get_transit_gateway_route_table_attachment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     transit_gateway_route_table_attachment: {
    #       attachment: {
    #         core_network_id: "CoreNetworkId",
    #         core_network_arn: "CoreNetworkArn",
    #         attachment_id: "AttachmentId",
    #         owner_account_id: "AWSAccountId",
    #         attachment_type: "CONNECT" # One of: ["CONNECT", "SITE_TO_SITE_VPN", "VPC", "DIRECT_CONNECT_GATEWAY", "TRANSIT_GATEWAY_ROUTE_TABLE"],
    #         state: "REJECTED" # One of: ["REJECTED", "PENDING_ATTACHMENT_ACCEPTANCE", "CREATING", "FAILED", "AVAILABLE", "UPDATING", "PENDING_NETWORK_UPDATE", "PENDING_TAG_ACCEPTANCE", "DELETING"],
    #         edge_location: "ExternalRegionCode",
    #         edge_locations: ["ExternalRegionCode"],
    #         resource_arn: "ResourceArn",
    #         attachment_policy_rule_number: 1,
    #         segment_name: "ConstrainedString",
    #         network_function_group_name: "NetworkFunctionGroupName",
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue"
    #           }
    #         ],
    #         proposed_segment_change: {
    #           tags: [
    #             {
    #               key: "TagKey",
    #               value: "TagValue"
    #             }
    #           ],
    #           attachment_policy_rule_number: 1,
    #           segment_name: "ConstrainedString"
    #         },
    #         proposed_network_function_group_change: {
    #           tags: [
    #             {
    #               key: "TagKey",
    #               value: "TagValue"
    #             }
    #           ],
    #           attachment_policy_rule_number: 1,
    #           network_function_group_name: "ConstrainedString"
    #         },
    #         created_at: Time.now,
    #         updated_at: Time.now,
    #         last_modification_errors: [
    #           {
    #             code: "VPC_NOT_FOUND" # One of: ["VPC_NOT_FOUND", "SUBNET_NOT_FOUND", "SUBNET_DUPLICATED_IN_AVAILABILITY_ZONE", "SUBNET_NO_FREE_ADDRESSES", "SUBNET_UNSUPPORTED_AVAILABILITY_ZONE", "SUBNET_NO_IPV6_CIDRS", "VPN_CONNECTION_NOT_FOUND", "MAXIMUM_NO_ENCAP_LIMIT_EXCEEDED", "DIRECT_CONNECT_GATEWAY_NOT_FOUND", "DIRECT_CONNECT_GATEWAY_EXISTING_ATTACHMENTS", "DIRECT_CONNECT_GATEWAY_NO_PRIVATE_VIF", "VPN_EXISTING_ASSOCIATIONS", "VPC_UNSUPPORTED_FEATURES"],
    #             message: "ServerSideString",
    #             resource_arn: "ResourceArn",
    #             request_id: "ServerSideString"
    #           }
    #         ]
    #       },
    #       peering_id: "PeeringId",
    #       transit_gateway_route_table_arn: "TransitGatewayRouteTableArn"
    #     }
    #   }
    # @return [Types::GetTransitGatewayRouteTableAttachmentResponse]
    def get_transit_gateway_route_table_attachment(params = {}, options = {})
      request = build_request(:get_transit_gateway_route_table_attachment, params)
      request.send_request(options)
    end

    # <p>Returns information about a VPC attachment.</p>
    # @param [Hash, Types::GetVpcAttachmentRequest] params
    # @option params [String] :attachment_id
    #   <p>The ID of the attachment.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     attachment_id: "AttachmentId", # required
    #   }
    #   options = {}
    #   response = client.get_vpc_attachment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     vpc_attachment: {
    #       attachment: {
    #         core_network_id: "CoreNetworkId",
    #         core_network_arn: "CoreNetworkArn",
    #         attachment_id: "AttachmentId",
    #         owner_account_id: "AWSAccountId",
    #         attachment_type: "CONNECT" # One of: ["CONNECT", "SITE_TO_SITE_VPN", "VPC", "DIRECT_CONNECT_GATEWAY", "TRANSIT_GATEWAY_ROUTE_TABLE"],
    #         state: "REJECTED" # One of: ["REJECTED", "PENDING_ATTACHMENT_ACCEPTANCE", "CREATING", "FAILED", "AVAILABLE", "UPDATING", "PENDING_NETWORK_UPDATE", "PENDING_TAG_ACCEPTANCE", "DELETING"],
    #         edge_location: "ExternalRegionCode",
    #         edge_locations: ["ExternalRegionCode"],
    #         resource_arn: "ResourceArn",
    #         attachment_policy_rule_number: 1,
    #         segment_name: "ConstrainedString",
    #         network_function_group_name: "NetworkFunctionGroupName",
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue"
    #           }
    #         ],
    #         proposed_segment_change: {
    #           tags: [
    #             {
    #               key: "TagKey",
    #               value: "TagValue"
    #             }
    #           ],
    #           attachment_policy_rule_number: 1,
    #           segment_name: "ConstrainedString"
    #         },
    #         proposed_network_function_group_change: {
    #           tags: [
    #             {
    #               key: "TagKey",
    #               value: "TagValue"
    #             }
    #           ],
    #           attachment_policy_rule_number: 1,
    #           network_function_group_name: "ConstrainedString"
    #         },
    #         created_at: Time.now,
    #         updated_at: Time.now,
    #         last_modification_errors: [
    #           {
    #             code: "VPC_NOT_FOUND" # One of: ["VPC_NOT_FOUND", "SUBNET_NOT_FOUND", "SUBNET_DUPLICATED_IN_AVAILABILITY_ZONE", "SUBNET_NO_FREE_ADDRESSES", "SUBNET_UNSUPPORTED_AVAILABILITY_ZONE", "SUBNET_NO_IPV6_CIDRS", "VPN_CONNECTION_NOT_FOUND", "MAXIMUM_NO_ENCAP_LIMIT_EXCEEDED", "DIRECT_CONNECT_GATEWAY_NOT_FOUND", "DIRECT_CONNECT_GATEWAY_EXISTING_ATTACHMENTS", "DIRECT_CONNECT_GATEWAY_NO_PRIVATE_VIF", "VPN_EXISTING_ASSOCIATIONS", "VPC_UNSUPPORTED_FEATURES"],
    #             message: "ServerSideString",
    #             resource_arn: "ResourceArn",
    #             request_id: "ServerSideString"
    #           }
    #         ]
    #       },
    #       subnet_arns: ["SubnetArn"],
    #       options: {
    #         ipv6_support: false,
    #         appliance_mode_support: false,
    #         dns_support: false,
    #         security_group_referencing_support: false
    #       }
    #     }
    #   }
    # @return [Types::GetVpcAttachmentResponse]
    def get_vpc_attachment(params = {}, options = {})
      request = build_request(:get_vpc_attachment, params)
      request.send_request(options)
    end

    # <p>Lists the routing policy associations for attachments in a core network.</p>
    # @param [Hash, Types::ListAttachmentRoutingPolicyAssociationsRequest] params
    # @option params [String] :core_network_id
    #   <p>The ID of the core network to list attachment routing policy associations for.</p>
    # @option params [String] :attachment_id
    #   <p>The ID of a specific attachment to filter the routing policy associations.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single page.</p>
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     core_network_id: "CoreNetworkId", # required
    #     attachment_id: "AttachmentId",
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_attachment_routing_policy_associations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     attachment_routing_policy_associations: [
    #       {
    #         attachment_id: "AttachmentId",
    #         pending_routing_policies: ["ConstrainedString"],
    #         associated_routing_policies: ["ConstrainedString"],
    #         routing_policy_label: "ConstrainedString"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAttachmentRoutingPolicyAssociationsResponse]
    def list_attachment_routing_policy_associations(params = {}, options = {})
      request = build_request(:list_attachment_routing_policy_associations, params)
      request.send_request(options)
    end

    # <p>Returns a list of core network attachments.</p>
    # @param [Hash, Types::ListAttachmentsRequest] params
    # @option params [String] :core_network_id
    #   <p>The ID of a core network.</p>
    # @option params [String] :attachment_type
    #   <p>The type of attachment.</p>
    # @option params [String] :edge_location
    #   <p>The Region where the edge is located.</p>
    # @option params [String] :state
    #   <p>The state of the attachment.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     core_network_id: "CoreNetworkId",
    #     attachment_type: "CONNECT" # One of: ["CONNECT", "SITE_TO_SITE_VPN", "VPC", "DIRECT_CONNECT_GATEWAY", "TRANSIT_GATEWAY_ROUTE_TABLE"],
    #     edge_location: "ExternalRegionCode",
    #     state: "REJECTED" # One of: ["REJECTED", "PENDING_ATTACHMENT_ACCEPTANCE", "CREATING", "FAILED", "AVAILABLE", "UPDATING", "PENDING_NETWORK_UPDATE", "PENDING_TAG_ACCEPTANCE", "DELETING"],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_attachments(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     attachments: [
    #       {
    #         core_network_id: "CoreNetworkId",
    #         core_network_arn: "CoreNetworkArn",
    #         attachment_id: "AttachmentId",
    #         owner_account_id: "AWSAccountId",
    #         attachment_type: "CONNECT" # One of: ["CONNECT", "SITE_TO_SITE_VPN", "VPC", "DIRECT_CONNECT_GATEWAY", "TRANSIT_GATEWAY_ROUTE_TABLE"],
    #         state: "REJECTED" # One of: ["REJECTED", "PENDING_ATTACHMENT_ACCEPTANCE", "CREATING", "FAILED", "AVAILABLE", "UPDATING", "PENDING_NETWORK_UPDATE", "PENDING_TAG_ACCEPTANCE", "DELETING"],
    #         edge_location: "ExternalRegionCode",
    #         edge_locations: ["ExternalRegionCode"],
    #         resource_arn: "ResourceArn",
    #         attachment_policy_rule_number: 1,
    #         segment_name: "ConstrainedString",
    #         network_function_group_name: "NetworkFunctionGroupName",
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue"
    #           }
    #         ],
    #         proposed_segment_change: {
    #           tags: [
    #             {
    #               key: "TagKey",
    #               value: "TagValue"
    #             }
    #           ],
    #           attachment_policy_rule_number: 1,
    #           segment_name: "ConstrainedString"
    #         },
    #         proposed_network_function_group_change: {
    #           tags: [
    #             {
    #               key: "TagKey",
    #               value: "TagValue"
    #             }
    #           ],
    #           attachment_policy_rule_number: 1,
    #           network_function_group_name: "ConstrainedString"
    #         },
    #         created_at: Time.now,
    #         updated_at: Time.now,
    #         last_modification_errors: [
    #           {
    #             code: "VPC_NOT_FOUND" # One of: ["VPC_NOT_FOUND", "SUBNET_NOT_FOUND", "SUBNET_DUPLICATED_IN_AVAILABILITY_ZONE", "SUBNET_NO_FREE_ADDRESSES", "SUBNET_UNSUPPORTED_AVAILABILITY_ZONE", "SUBNET_NO_IPV6_CIDRS", "VPN_CONNECTION_NOT_FOUND", "MAXIMUM_NO_ENCAP_LIMIT_EXCEEDED", "DIRECT_CONNECT_GATEWAY_NOT_FOUND", "DIRECT_CONNECT_GATEWAY_EXISTING_ATTACHMENTS", "DIRECT_CONNECT_GATEWAY_NO_PRIVATE_VIF", "VPN_EXISTING_ASSOCIATIONS", "VPC_UNSUPPORTED_FEATURES"],
    #             message: "ServerSideString",
    #             resource_arn: "ResourceArn",
    #             request_id: "ServerSideString"
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAttachmentsResponse]
    def list_attachments(params = {}, options = {})
      request = build_request(:list_attachments, params)
      request.send_request(options)
    end

    # <p>Returns a list of core network Connect peers.</p>
    # @param [Hash, Types::ListConnectPeersRequest] params
    # @option params [String] :core_network_id
    #   <p>The ID of a core network.</p>
    # @option params [String] :connect_attachment_id
    #   <p>The ID of the attachment.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     core_network_id: "CoreNetworkId",
    #     connect_attachment_id: "AttachmentId",
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_connect_peers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connect_peers: [
    #       {
    #         core_network_id: "CoreNetworkId",
    #         connect_attachment_id: "AttachmentId",
    #         connect_peer_id: "ConnectPeerId",
    #         edge_location: "ExternalRegionCode",
    #         connect_peer_state: "CREATING" # One of: ["CREATING", "FAILED", "AVAILABLE", "DELETING"],
    #         created_at: Time.now,
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue"
    #           }
    #         ],
    #         subnet_arn: "SubnetArn"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListConnectPeersResponse]
    def list_connect_peers(params = {}, options = {})
      request = build_request(:list_connect_peers, params)
      request.send_request(options)
    end

    # <p>Returns a list of core network policy versions.</p>
    # @param [Hash, Types::ListCoreNetworkPolicyVersionsRequest] params
    # @option params [String] :core_network_id
    #   <p>The ID of a core network.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     core_network_id: "CoreNetworkId", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_core_network_policy_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     core_network_policy_versions: [
    #       {
    #         core_network_id: "CoreNetworkId",
    #         policy_version_id: 1,
    #         alias: "LIVE" # One of: ["LIVE", "LATEST"],
    #         description: "ConstrainedString",
    #         created_at: Time.now,
    #         change_set_state: "PENDING_GENERATION" # One of: ["PENDING_GENERATION", "FAILED_GENERATION", "READY_TO_EXECUTE", "EXECUTING", "EXECUTION_SUCCEEDED", "OUT_OF_DATE"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListCoreNetworkPolicyVersionsResponse]
    def list_core_network_policy_versions(params = {}, options = {})
      request = build_request(:list_core_network_policy_versions, params)
      request.send_request(options)
    end

    # <p>Lists the prefix list associations for a core network.</p>
    # @param [Hash, Types::ListCoreNetworkPrefixListAssociationsRequest] params
    # @option params [String] :core_network_id
    #   <p>The ID of the core network to list prefix list associations for.</p>
    # @option params [String] :prefix_list_arn
    #   <p>The ARN of a specific prefix list to filter the associations.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single page.</p>
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     core_network_id: "CoreNetworkId", # required
    #     prefix_list_arn: "PrefixListArn",
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_core_network_prefix_list_associations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     prefix_list_associations: [
    #       {
    #         core_network_id: "CoreNetworkId",
    #         prefix_list_arn: "PrefixListArn",
    #         prefix_list_alias: "ConstrainedString"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListCoreNetworkPrefixListAssociationsResponse]
    def list_core_network_prefix_list_associations(params = {}, options = {})
      request = build_request(:list_core_network_prefix_list_associations, params)
      request.send_request(options)
    end

    # <p>Lists routing information for a core network, including routes and their attributes.</p>
    # @param [Hash, Types::ListCoreNetworkRoutingInformationRequest] params
    # @option params [String] :core_network_id
    #   <p>The ID of the core network to retrieve routing information for.</p>
    # @option params [String] :segment_name
    #   <p>The name of the segment to filter routing information by.</p>
    # @option params [String] :edge_location
    #   <p>The edge location to filter routing information by.</p>
    # @option params [Hash<String, Array<String>>] :next_hop_filters
    #   <p>Filters to apply based on next hop information.</p>
    # @option params [Array<String>] :local_preference_matches
    #   <p>Local preference values to match when filtering routing information.</p>
    # @option params [Array<String>] :exact_as_path_matches
    #   <p>Exact AS path values to match when filtering routing information.</p>
    # @option params [Array<String>] :med_matches
    #   <p>Multi-Exit Discriminator (MED) values to match when filtering routing information.</p>
    # @option params [Array<String>] :community_matches
    #   <p>BGP community values to match when filtering routing information.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of routing information entries to return in a single page.</p>
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     core_network_id: "CoreNetworkId", # required
    #     segment_name: "ConstrainedString", # required
    #     edge_location: "ExternalRegionCode", # required
    #     next_hop_filters: {
    #       "FilterName" => ["FilterValue"]
    #     },
    #     local_preference_matches: ["ConstrainedString"],
    #     exact_as_path_matches: ["ConstrainedString"],
    #     med_matches: ["ConstrainedString"],
    #     community_matches: ["ConstrainedString"],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_core_network_routing_information(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     core_network_routing_information: [
    #       {
    #         prefix: "ConstrainedString",
    #         next_hop: {
    #           ip_address: "IPAddress",
    #           core_network_attachment_id: "ConstrainedString",
    #           resource_id: "ConstrainedString",
    #           resource_type: "ConstrainedString",
    #           segment_name: "ConstrainedString",
    #           edge_location: "ExternalRegionCode"
    #         },
    #         local_preference: "ConstrainedString",
    #         med: "ConstrainedString",
    #         as_path: ["ConstrainedString"],
    #         communities: ["ConstrainedString"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListCoreNetworkRoutingInformationResponse]
    def list_core_network_routing_information(params = {}, options = {})
      request = build_request(:list_core_network_routing_information, params)
      request.send_request(options)
    end

    # <p>Returns a list of owned and shared core networks.</p>
    # @param [Hash, Types::ListCoreNetworksRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_core_networks(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     core_networks: [
    #       {
    #         core_network_id: "CoreNetworkId",
    #         core_network_arn: "CoreNetworkArn",
    #         global_network_id: "GlobalNetworkId",
    #         owner_account_id: "AWSAccountId",
    #         state: "CREATING" # One of: ["CREATING", "UPDATING", "AVAILABLE", "DELETING"],
    #         description: "ConstrainedString",
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue"
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListCoreNetworksResponse]
    def list_core_networks(params = {}, options = {})
      request = build_request(:list_core_networks, params)
      request.send_request(options)
    end

    # <p>Gets the status of the Service Linked Role (SLR) deployment for the accounts in a given Amazon Web Services Organization.</p>
    # @param [Hash, Types::ListOrganizationServiceAccessStatusRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_organization_service_access_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     organization_status: {
    #       organization_id: "OrganizationId",
    #       organization_aws_service_access_status: "OrganizationAwsServiceAccessStatus",
    #       slr_deployment_status: "SLRDeploymentStatus",
    #       account_status_list: [
    #         {
    #           account_id: "AccountId",
    #           slr_deployment_status: "SLRDeploymentStatus"
    #         }
    #       ]
    #     },
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListOrganizationServiceAccessStatusResponse]
    def list_organization_service_access_status(params = {}, options = {})
      request = build_request(:list_organization_service_access_status, params)
      request.send_request(options)
    end

    # <p>Lists the peerings for a core network.</p>
    # @param [Hash, Types::ListPeeringsRequest] params
    # @option params [String] :core_network_id
    #   <p>The ID of a core network.</p>
    # @option params [String] :peering_type
    #   <p>Returns a list of a peering requests.</p>
    # @option params [String] :edge_location
    #   <p>Returns a list edge locations for the </p>
    # @option params [String] :state
    #   <p>Returns a list of the peering request states.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     core_network_id: "CoreNetworkId",
    #     peering_type: "TRANSIT_GATEWAY" # One of: ["TRANSIT_GATEWAY"],
    #     edge_location: "ExternalRegionCode",
    #     state: "CREATING" # One of: ["CREATING", "FAILED", "AVAILABLE", "DELETING"],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_peerings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     peerings: [
    #       {
    #         core_network_id: "CoreNetworkId",
    #         core_network_arn: "CoreNetworkArn",
    #         peering_id: "PeeringId",
    #         owner_account_id: "AWSAccountId",
    #         peering_type: "TRANSIT_GATEWAY" # One of: ["TRANSIT_GATEWAY"],
    #         state: "CREATING" # One of: ["CREATING", "FAILED", "AVAILABLE", "DELETING"],
    #         edge_location: "ExternalRegionCode",
    #         resource_arn: "ResourceArn",
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue"
    #           }
    #         ],
    #         created_at: Time.now,
    #         last_modification_errors: [
    #           {
    #             code: "TRANSIT_GATEWAY_NOT_FOUND" # One of: ["TRANSIT_GATEWAY_NOT_FOUND", "TRANSIT_GATEWAY_PEERS_LIMIT_EXCEEDED", "MISSING_PERMISSIONS", "INTERNAL_ERROR", "EDGE_LOCATION_PEER_DUPLICATE", "INVALID_TRANSIT_GATEWAY_STATE"],
    #             message: "ServerSideString",
    #             resource_arn: "ResourceArn",
    #             request_id: "ServerSideString",
    #             missing_permissions_context: {
    #               missing_permission: "ServerSideString"
    #             }
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListPeeringsResponse]
    def list_peerings(params = {}, options = {})
      request = build_request(:list_peerings, params)
      request.send_request(options)
    end

    # <p>Lists the tags for a specified resource.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tag_list: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Applies a routing policy label to an attachment for traffic routing decisions.</p>
    # @param [Hash, Types::PutAttachmentRoutingPolicyLabelRequest] params
    # @option params [String] :core_network_id
    #   <p>The ID of the core network containing the attachment.</p>
    # @option params [String] :attachment_id
    #   <p>The ID of the attachment to apply the routing policy label to.</p>
    # @option params [String] :routing_policy_label
    #   <p>The routing policy label to apply to the attachment.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     core_network_id: "CoreNetworkId", # required
    #     attachment_id: "AttachmentId", # required
    #     routing_policy_label: "ConstrainedString", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.put_attachment_routing_policy_label(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     core_network_id: "CoreNetworkId",
    #     attachment_id: "AttachmentId",
    #     routing_policy_label: "ConstrainedString"
    #   }
    # @return [Types::PutAttachmentRoutingPolicyLabelResponse]
    def put_attachment_routing_policy_label(params = {}, options = {})
      request = build_request(:put_attachment_routing_policy_label, params)
      request.send_request(options)
    end

    # <p>Creates a new, immutable version of a core network policy. A subsequent change set is created showing the differences between the LIVE policy and the submitted policy.</p>
    # @param [Hash, Types::PutCoreNetworkPolicyRequest] params
    # @option params [String] :core_network_id
    #   <p>The ID of a core network.</p>
    # @option params [String] :policy_document
    #   <p>The policy document.</p>
    # @option params [String] :description
    #   <p>a core network policy description.</p>
    # @option params [Integer] :latest_version_id
    #   <p>The ID of a core network policy. </p>
    # @option params [String] :client_token
    #   <p>The client token associated with the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     core_network_id: "CoreNetworkId", # required
    #     policy_document: "SynthesizedJsonCoreNetworkPolicyDocument", # required
    #     description: "ConstrainedString",
    #     latest_version_id: 1,
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.put_core_network_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     core_network_policy: {
    #       core_network_id: "CoreNetworkId",
    #       policy_version_id: 1,
    #       alias: "LIVE" # One of: ["LIVE", "LATEST"],
    #       description: "ConstrainedString",
    #       created_at: Time.now,
    #       change_set_state: "PENDING_GENERATION" # One of: ["PENDING_GENERATION", "FAILED_GENERATION", "READY_TO_EXECUTE", "EXECUTING", "EXECUTION_SUCCEEDED", "OUT_OF_DATE"],
    #       policy_errors: [
    #         {
    #           error_code: "ServerSideString", # required
    #           message: "ServerSideString", # required
    #           path: "ServerSideString"
    #         }
    #       ],
    #       policy_document: "SynthesizedJsonCoreNetworkPolicyDocument"
    #     }
    #   }
    # @return [Types::PutCoreNetworkPolicyResponse]
    def put_core_network_policy(params = {}, options = {})
      request = build_request(:put_core_network_policy, params)
      request.send_request(options)
    end

    # <p>Creates or updates a resource policy.</p>
    # @param [Hash, Types::PutResourcePolicyRequest] params
    # @option params [String] :policy_document
    #   <p>The JSON resource policy document.</p>
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource policy. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_document: "SynthesizedJsonResourcePolicyDocument", # required
    #     resource_arn: "ResourceArn", # required
    #   }
    #   options = {}
    #   response = client.put_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutResourcePolicyResponse]
    def put_resource_policy(params = {}, options = {})
      request = build_request(:put_resource_policy, params)
      request.send_request(options)
    end

    # <p>Registers a transit gateway in your global network. Not all Regions support transit
    #             gateways for global networks. For a list of the supported Regions, see <a href="https://docs.aws.amazon.com/network-manager/latest/tgwnm/what-are-global-networks.html#nm-available-regions">Region Availability</a> in the <i>Amazon Web Services Transit Gateways for Global
    #                 Networks User Guide</i>. The transit gateway can be in any of the supported
    #             Amazon Web Services Regions, but it must be owned by the same Amazon Web Services account that owns the global
    #             network. You cannot register a transit gateway in more than one global network.</p>
    # @param [Hash, Types::RegisterTransitGatewayRequest] params
    # @option params [String] :global_network_id
    #   <p>The ID of the global network.</p>
    # @option params [String] :transit_gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the transit gateway.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     global_network_id: "GlobalNetworkId", # required
    #     transit_gateway_arn: "TransitGatewayArn", # required
    #   }
    #   options = {}
    #   response = client.register_transit_gateway(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     transit_gateway_registration: {
    #       global_network_id: "GlobalNetworkId",
    #       transit_gateway_arn: "TransitGatewayArn",
    #       state: {
    #         code: "PENDING" # One of: ["PENDING", "AVAILABLE", "DELETING", "DELETED", "FAILED"],
    #         message: "ConstrainedString"
    #       }
    #     }
    #   }
    # @return [Types::RegisterTransitGatewayResponse]
    def register_transit_gateway(params = {}, options = {})
      request = build_request(:register_transit_gateway, params)
      request.send_request(options)
    end

    # <p>Rejects a core network attachment request.</p>
    # @param [Hash, Types::RejectAttachmentRequest] params
    # @option params [String] :attachment_id
    #   <p>The ID of the attachment.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     attachment_id: "AttachmentId", # required
    #   }
    #   options = {}
    #   response = client.reject_attachment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     attachment: {
    #       core_network_id: "CoreNetworkId",
    #       core_network_arn: "CoreNetworkArn",
    #       attachment_id: "AttachmentId",
    #       owner_account_id: "AWSAccountId",
    #       attachment_type: "CONNECT" # One of: ["CONNECT", "SITE_TO_SITE_VPN", "VPC", "DIRECT_CONNECT_GATEWAY", "TRANSIT_GATEWAY_ROUTE_TABLE"],
    #       state: "REJECTED" # One of: ["REJECTED", "PENDING_ATTACHMENT_ACCEPTANCE", "CREATING", "FAILED", "AVAILABLE", "UPDATING", "PENDING_NETWORK_UPDATE", "PENDING_TAG_ACCEPTANCE", "DELETING"],
    #       edge_location: "ExternalRegionCode",
    #       edge_locations: ["ExternalRegionCode"],
    #       resource_arn: "ResourceArn",
    #       attachment_policy_rule_number: 1,
    #       segment_name: "ConstrainedString",
    #       network_function_group_name: "NetworkFunctionGroupName",
    #       tags: [
    #         {
    #           key: "TagKey",
    #           value: "TagValue"
    #         }
    #       ],
    #       proposed_segment_change: {
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue"
    #           }
    #         ],
    #         attachment_policy_rule_number: 1,
    #         segment_name: "ConstrainedString"
    #       },
    #       proposed_network_function_group_change: {
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue"
    #           }
    #         ],
    #         attachment_policy_rule_number: 1,
    #         network_function_group_name: "ConstrainedString"
    #       },
    #       created_at: Time.now,
    #       updated_at: Time.now,
    #       last_modification_errors: [
    #         {
    #           code: "VPC_NOT_FOUND" # One of: ["VPC_NOT_FOUND", "SUBNET_NOT_FOUND", "SUBNET_DUPLICATED_IN_AVAILABILITY_ZONE", "SUBNET_NO_FREE_ADDRESSES", "SUBNET_UNSUPPORTED_AVAILABILITY_ZONE", "SUBNET_NO_IPV6_CIDRS", "VPN_CONNECTION_NOT_FOUND", "MAXIMUM_NO_ENCAP_LIMIT_EXCEEDED", "DIRECT_CONNECT_GATEWAY_NOT_FOUND", "DIRECT_CONNECT_GATEWAY_EXISTING_ATTACHMENTS", "DIRECT_CONNECT_GATEWAY_NO_PRIVATE_VIF", "VPN_EXISTING_ASSOCIATIONS", "VPC_UNSUPPORTED_FEATURES"],
    #           message: "ServerSideString",
    #           resource_arn: "ResourceArn",
    #           request_id: "ServerSideString"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::RejectAttachmentResponse]
    def reject_attachment(params = {}, options = {})
      request = build_request(:reject_attachment, params)
      request.send_request(options)
    end

    # <p>Removes a routing policy label from an attachment.</p>
    # @param [Hash, Types::RemoveAttachmentRoutingPolicyLabelRequest] params
    # @option params [String] :core_network_id
    #   <p>The ID of the core network containing the attachment.</p>
    # @option params [String] :attachment_id
    #   <p>The ID of the attachment to remove the routing policy label from.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     core_network_id: "CoreNetworkId", # required
    #     attachment_id: "AttachmentId", # required
    #   }
    #   options = {}
    #   response = client.remove_attachment_routing_policy_label(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     core_network_id: "CoreNetworkId",
    #     attachment_id: "AttachmentId",
    #     routing_policy_label: "ConstrainedString"
    #   }
    # @return [Types::RemoveAttachmentRoutingPolicyLabelResponse]
    def remove_attachment_routing_policy_label(params = {}, options = {})
      request = build_request(:remove_attachment_routing_policy_label, params)
      request.send_request(options)
    end

    # <p>Restores a previous policy version as a new, immutable version of a core network policy. A subsequent change set is created showing the differences between the LIVE policy and restored policy.</p>
    # @param [Hash, Types::RestoreCoreNetworkPolicyVersionRequest] params
    # @option params [String] :core_network_id
    #   <p>The ID of a core network.</p>
    # @option params [Integer] :policy_version_id
    #   <p>The ID of the policy version to restore.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     core_network_id: "CoreNetworkId", # required
    #     policy_version_id: 1, # required
    #   }
    #   options = {}
    #   response = client.restore_core_network_policy_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     core_network_policy: {
    #       core_network_id: "CoreNetworkId",
    #       policy_version_id: 1,
    #       alias: "LIVE" # One of: ["LIVE", "LATEST"],
    #       description: "ConstrainedString",
    #       created_at: Time.now,
    #       change_set_state: "PENDING_GENERATION" # One of: ["PENDING_GENERATION", "FAILED_GENERATION", "READY_TO_EXECUTE", "EXECUTING", "EXECUTION_SUCCEEDED", "OUT_OF_DATE"],
    #       policy_errors: [
    #         {
    #           error_code: "ServerSideString", # required
    #           message: "ServerSideString", # required
    #           path: "ServerSideString"
    #         }
    #       ],
    #       policy_document: "SynthesizedJsonCoreNetworkPolicyDocument"
    #     }
    #   }
    # @return [Types::RestoreCoreNetworkPolicyVersionResponse]
    def restore_core_network_policy_version(params = {}, options = {})
      request = build_request(:restore_core_network_policy_version, params)
      request.send_request(options)
    end

    # <p>Enables the Network Manager service for an Amazon Web Services Organization. This can only be called by a management account within the organization. </p>
    # @param [Hash, Types::StartOrganizationServiceAccessUpdateRequest] params
    # @option params [String] :action
    #   <p>The action to take for the update request. This can be either <code>ENABLE</code> or <code>DISABLE</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     action: "Action", # required
    #   }
    #   options = {}
    #   response = client.start_organization_service_access_update(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     organization_status: {
    #       organization_id: "OrganizationId",
    #       organization_aws_service_access_status: "OrganizationAwsServiceAccessStatus",
    #       slr_deployment_status: "SLRDeploymentStatus",
    #       account_status_list: [
    #         {
    #           account_id: "AccountId",
    #           slr_deployment_status: "SLRDeploymentStatus"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::StartOrganizationServiceAccessUpdateResponse]
    def start_organization_service_access_update(params = {}, options = {})
      request = build_request(:start_organization_service_access_update, params)
      request.send_request(options)
    end

    # <p>Starts analyzing the routing path between the specified source and destination. For more information,
    #             see <a href="https://docs.aws.amazon.com/vpc/latest/tgw/route-analyzer.html">Route Analyzer</a>.</p>
    # @param [Hash, Types::StartRouteAnalysisRequest] params
    # @option params [String] :global_network_id
    #   <p>The ID of the global network.</p>
    # @option params [Types::RouteAnalysisEndpointOptionsSpecification] :source
    #   <p>The source from which traffic originates.</p>
    # @option params [Types::RouteAnalysisEndpointOptionsSpecification] :destination
    #   <p>The destination.</p>
    # @option params [Boolean] :include_return_path
    #   <p>Indicates whether to analyze the return path. The default is <code>false</code>.</p>
    # @option params [Boolean] :use_middleboxes
    #   <p>Indicates whether to include the location of middlebox appliances in the route analysis.
    #               The default is <code>false</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     global_network_id: "GlobalNetworkId", # required
    #     source: { # required
    #       transit_gateway_attachment_arn: "TransitGatewayAttachmentArn",
    #       ip_address: "IPAddress"
    #     },
    #     destination: { # required
    #       transit_gateway_attachment_arn: "TransitGatewayAttachmentArn",
    #       ip_address: "IPAddress"
    #     },
    #     include_return_path: false,
    #     use_middleboxes: false
    #   }
    #   options = {}
    #   response = client.start_route_analysis(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     route_analysis: {
    #       global_network_id: "GlobalNetworkId",
    #       owner_account_id: "AWSAccountId",
    #       route_analysis_id: "ConstrainedString",
    #       start_timestamp: Time.now,
    #       status: "RUNNING" # One of: ["RUNNING", "COMPLETED", "FAILED"],
    #       source: {
    #         transit_gateway_attachment_arn: "TransitGatewayAttachmentArn",
    #         transit_gateway_arn: "TransitGatewayArn",
    #         ip_address: "IPAddress"
    #       },
    #       destination: {
    #         transit_gateway_attachment_arn: "TransitGatewayAttachmentArn",
    #         transit_gateway_arn: "TransitGatewayArn",
    #         ip_address: "IPAddress"
    #       },
    #       include_return_path: false,
    #       use_middleboxes: false,
    #       forward_path: {
    #         completion_status: {
    #           result_code: "CONNECTED" # One of: ["CONNECTED", "NOT_CONNECTED"],
    #           reason_code: "TRANSIT_GATEWAY_ATTACHMENT_NOT_FOUND" # One of: ["TRANSIT_GATEWAY_ATTACHMENT_NOT_FOUND", "TRANSIT_GATEWAY_ATTACHMENT_NOT_IN_TRANSIT_GATEWAY", "CYCLIC_PATH_DETECTED", "TRANSIT_GATEWAY_ATTACHMENT_STABLE_ROUTE_TABLE_NOT_FOUND", "ROUTE_NOT_FOUND", "BLACKHOLE_ROUTE_FOR_DESTINATION_FOUND", "INACTIVE_ROUTE_FOR_DESTINATION_FOUND", "TRANSIT_GATEWAY_ATTACHMENT_ATTACH_ARN_NO_MATCH", "MAX_HOPS_EXCEEDED", "POSSIBLE_MIDDLEBOX", "NO_DESTINATION_ARN_PROVIDED"],
    #           reason_context: {
    #             "ReasonContextKey" => "ReasonContextValue"
    #           }
    #         },
    #         path: [
    #           {
    #             sequence: 1,
    #             resource: {
    #               registered_gateway_arn: "ResourceArn",
    #               resource_arn: "ResourceArn",
    #               resource_type: "ConstrainedString",
    #               definition: "ConstrainedString",
    #               name_tag: "ConstrainedString",
    #               is_middlebox: false
    #             },
    #             destination_cidr_block: "ConstrainedString"
    #           }
    #         ]
    #       },
    #       return_path: {
    #         completion_status: {
    #           result_code: "CONNECTED" # One of: ["CONNECTED", "NOT_CONNECTED"],
    #           reason_code: "TRANSIT_GATEWAY_ATTACHMENT_NOT_FOUND" # One of: ["TRANSIT_GATEWAY_ATTACHMENT_NOT_FOUND", "TRANSIT_GATEWAY_ATTACHMENT_NOT_IN_TRANSIT_GATEWAY", "CYCLIC_PATH_DETECTED", "TRANSIT_GATEWAY_ATTACHMENT_STABLE_ROUTE_TABLE_NOT_FOUND", "ROUTE_NOT_FOUND", "BLACKHOLE_ROUTE_FOR_DESTINATION_FOUND", "INACTIVE_ROUTE_FOR_DESTINATION_FOUND", "TRANSIT_GATEWAY_ATTACHMENT_ATTACH_ARN_NO_MATCH", "MAX_HOPS_EXCEEDED", "POSSIBLE_MIDDLEBOX", "NO_DESTINATION_ARN_PROVIDED"],
    #           reason_context: {
    #             "ReasonContextKey" => "ReasonContextValue"
    #           }
    #         },
    #         path: [
    #           {
    #             sequence: 1,
    #             resource: {
    #               registered_gateway_arn: "ResourceArn",
    #               resource_arn: "ResourceArn",
    #               resource_type: "ConstrainedString",
    #               definition: "ConstrainedString",
    #               name_tag: "ConstrainedString",
    #               is_middlebox: false
    #             },
    #             destination_cidr_block: "ConstrainedString"
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @return [Types::StartRouteAnalysisResponse]
    def start_route_analysis(params = {}, options = {})
      request = build_request(:start_route_analysis, params)
      request.send_request(options)
    end

    # <p>Tags a specified resource.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to apply to the specified resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
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

    # <p>Removes tags from a specified resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The tag keys to remove from the specified resource.</p>
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

    # <p>Updates the information for an existing connection. To remove information for any of the parameters,
    #             specify an empty string.</p>
    # @param [Hash, Types::UpdateConnectionRequest] params
    # @option params [String] :global_network_id
    #   <p>The ID of the global network.</p>
    # @option params [String] :connection_id
    #   <p>The ID of the connection.</p>
    # @option params [String] :link_id
    #   <p>The ID of the link for the first device in the connection.</p>
    # @option params [String] :connected_link_id
    #   <p>The ID of the link for the second device in the connection.</p>
    # @option params [String] :description
    #   <p>A description of the connection.</p>
    #            <p>Length Constraints: Maximum length of 256 characters.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     global_network_id: "GlobalNetworkId", # required
    #     connection_id: "ConnectionId", # required
    #     link_id: "LinkId",
    #     connected_link_id: "LinkId",
    #     description: "ConstrainedString"
    #   }
    #   options = {}
    #   response = client.update_connection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connection: {
    #       connection_id: "ConnectionId",
    #       connection_arn: "ConnectionArn",
    #       global_network_id: "GlobalNetworkId",
    #       device_id: "DeviceId",
    #       connected_device_id: "DeviceId",
    #       link_id: "LinkId",
    #       connected_link_id: "LinkId",
    #       description: "ConstrainedString",
    #       created_at: Time.now,
    #       state: "PENDING" # One of: ["PENDING", "AVAILABLE", "DELETING", "UPDATING"],
    #       tags: [
    #         {
    #           key: "TagKey",
    #           value: "TagValue"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::UpdateConnectionResponse]
    def update_connection(params = {}, options = {})
      request = build_request(:update_connection, params)
      request.send_request(options)
    end

    # <p>Updates the description of a core network.</p>
    # @param [Hash, Types::UpdateCoreNetworkRequest] params
    # @option params [String] :core_network_id
    #   <p>The ID of a core network.</p>
    # @option params [String] :description
    #   <p>The description of the update.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     core_network_id: "CoreNetworkId", # required
    #     description: "ConstrainedString"
    #   }
    #   options = {}
    #   response = client.update_core_network(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     core_network: {
    #       global_network_id: "GlobalNetworkId",
    #       core_network_id: "CoreNetworkId",
    #       core_network_arn: "CoreNetworkArn",
    #       description: "ConstrainedString",
    #       created_at: Time.now,
    #       state: "CREATING" # One of: ["CREATING", "UPDATING", "AVAILABLE", "DELETING"],
    #       segments: [
    #         {
    #           name: "ConstrainedString",
    #           edge_locations: ["ExternalRegionCode"],
    #           shared_segments: ["ConstrainedString"]
    #         }
    #       ],
    #       network_function_groups: [
    #         {
    #           name: "ConstrainedString",
    #           edge_locations: ["ExternalRegionCode"],
    #           segments: {
    #             send_via: ["ConstrainedString"],
    #             send_to: ["ConstrainedString"]
    #           }
    #         }
    #       ],
    #       edges: [
    #         {
    #           edge_location: "ExternalRegionCode",
    #           asn: 1,
    #           inside_cidr_blocks: ["ConstrainedString"]
    #         }
    #       ],
    #       tags: [
    #         {
    #           key: "TagKey",
    #           value: "TagValue"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::UpdateCoreNetworkResponse]
    def update_core_network(params = {}, options = {})
      request = build_request(:update_core_network, params)
      request.send_request(options)
    end

    # <p>Updates the details for an existing device. To remove information for any of the
    #             parameters, specify an empty string.</p>
    # @param [Hash, Types::UpdateDeviceRequest] params
    # @option params [String] :global_network_id
    #   <p>The ID of the global network.</p>
    # @option params [String] :device_id
    #   <p>The ID of the device.</p>
    # @option params [Types::AWSLocation] :aws_location
    #   <p>The Amazon Web Services location of the device, if applicable. For an on-premises device, you can omit this parameter.</p>
    # @option params [String] :description
    #   <p>A description of the device.</p>
    #            <p>Constraints: Maximum length of 256 characters.</p>
    # @option params [String] :type
    #   <p>The type of the device.</p>
    # @option params [String] :vendor
    #   <p>The vendor of the device.</p>
    #            <p>Constraints: Maximum length of 128 characters.</p>
    # @option params [String] :model
    #   <p>The model of the device.</p>
    #            <p>Constraints: Maximum length of 128 characters.</p>
    # @option params [String] :serial_number
    #   <p>The serial number of the device.</p>
    #            <p>Constraints: Maximum length of 128 characters.</p>
    # @option params [Types::Location] :location
    #   <p>Describes a location.</p>
    # @option params [String] :site_id
    #   <p>The ID of the site.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     global_network_id: "GlobalNetworkId", # required
    #     device_id: "DeviceId", # required
    #     aws_location: {
    #       zone: "ConstrainedString",
    #       subnet_arn: "SubnetArn"
    #     },
    #     description: "ConstrainedString",
    #     type: "ConstrainedString",
    #     vendor: "ConstrainedString",
    #     model: "ConstrainedString",
    #     serial_number: "ConstrainedString",
    #     location: {
    #       address: "ConstrainedString",
    #       latitude: "ConstrainedString",
    #       longitude: "ConstrainedString"
    #     },
    #     site_id: "SiteId"
    #   }
    #   options = {}
    #   response = client.update_device(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     device: {
    #       device_id: "DeviceId",
    #       device_arn: "DeviceArn",
    #       global_network_id: "GlobalNetworkId",
    #       aws_location: {
    #         zone: "ConstrainedString",
    #         subnet_arn: "SubnetArn"
    #       },
    #       description: "ConstrainedString",
    #       type: "ConstrainedString",
    #       vendor: "ConstrainedString",
    #       model: "ConstrainedString",
    #       serial_number: "ConstrainedString",
    #       location: {
    #         address: "ConstrainedString",
    #         latitude: "ConstrainedString",
    #         longitude: "ConstrainedString"
    #       },
    #       site_id: "SiteId",
    #       created_at: Time.now,
    #       state: "PENDING" # One of: ["PENDING", "AVAILABLE", "DELETING", "UPDATING"],
    #       tags: [
    #         {
    #           key: "TagKey",
    #           value: "TagValue"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::UpdateDeviceResponse]
    def update_device(params = {}, options = {})
      request = build_request(:update_device, params)
      request.send_request(options)
    end

    # <p>Updates the edge locations associated with an Amazon Web Services Direct Connect gateway attachment. </p>
    # @param [Hash, Types::UpdateDirectConnectGatewayAttachmentRequest] params
    # @option params [String] :attachment_id
    #   <p>The ID of the Direct Connect gateway attachment for the updated edge locations. </p>
    # @option params [Array<String>] :edge_locations
    #   <p>One or more edge locations to update for the Direct Connect gateway attachment. The updated array of edge locations overwrites the previous array of locations. <code>EdgeLocations</code> is only used for Direct Connect gateway attachments.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     attachment_id: "AttachmentId", # required
    #     edge_locations: ["ExternalRegionCode"]
    #   }
    #   options = {}
    #   response = client.update_direct_connect_gateway_attachment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     direct_connect_gateway_attachment: {
    #       attachment: {
    #         core_network_id: "CoreNetworkId",
    #         core_network_arn: "CoreNetworkArn",
    #         attachment_id: "AttachmentId",
    #         owner_account_id: "AWSAccountId",
    #         attachment_type: "CONNECT" # One of: ["CONNECT", "SITE_TO_SITE_VPN", "VPC", "DIRECT_CONNECT_GATEWAY", "TRANSIT_GATEWAY_ROUTE_TABLE"],
    #         state: "REJECTED" # One of: ["REJECTED", "PENDING_ATTACHMENT_ACCEPTANCE", "CREATING", "FAILED", "AVAILABLE", "UPDATING", "PENDING_NETWORK_UPDATE", "PENDING_TAG_ACCEPTANCE", "DELETING"],
    #         edge_location: "ExternalRegionCode",
    #         edge_locations: ["ExternalRegionCode"],
    #         resource_arn: "ResourceArn",
    #         attachment_policy_rule_number: 1,
    #         segment_name: "ConstrainedString",
    #         network_function_group_name: "NetworkFunctionGroupName",
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue"
    #           }
    #         ],
    #         proposed_segment_change: {
    #           tags: [
    #             {
    #               key: "TagKey",
    #               value: "TagValue"
    #             }
    #           ],
    #           attachment_policy_rule_number: 1,
    #           segment_name: "ConstrainedString"
    #         },
    #         proposed_network_function_group_change: {
    #           tags: [
    #             {
    #               key: "TagKey",
    #               value: "TagValue"
    #             }
    #           ],
    #           attachment_policy_rule_number: 1,
    #           network_function_group_name: "ConstrainedString"
    #         },
    #         created_at: Time.now,
    #         updated_at: Time.now,
    #         last_modification_errors: [
    #           {
    #             code: "VPC_NOT_FOUND" # One of: ["VPC_NOT_FOUND", "SUBNET_NOT_FOUND", "SUBNET_DUPLICATED_IN_AVAILABILITY_ZONE", "SUBNET_NO_FREE_ADDRESSES", "SUBNET_UNSUPPORTED_AVAILABILITY_ZONE", "SUBNET_NO_IPV6_CIDRS", "VPN_CONNECTION_NOT_FOUND", "MAXIMUM_NO_ENCAP_LIMIT_EXCEEDED", "DIRECT_CONNECT_GATEWAY_NOT_FOUND", "DIRECT_CONNECT_GATEWAY_EXISTING_ATTACHMENTS", "DIRECT_CONNECT_GATEWAY_NO_PRIVATE_VIF", "VPN_EXISTING_ASSOCIATIONS", "VPC_UNSUPPORTED_FEATURES"],
    #             message: "ServerSideString",
    #             resource_arn: "ResourceArn",
    #             request_id: "ServerSideString"
    #           }
    #         ]
    #       },
    #       direct_connect_gateway_arn: "DirectConnectGatewayArn"
    #     }
    #   }
    # @return [Types::UpdateDirectConnectGatewayAttachmentResponse]
    def update_direct_connect_gateway_attachment(params = {}, options = {})
      request = build_request(:update_direct_connect_gateway_attachment, params)
      request.send_request(options)
    end

    # <p>Updates an existing global network. To remove information for any of the parameters,
    #             specify an empty string.</p>
    # @param [Hash, Types::UpdateGlobalNetworkRequest] params
    # @option params [String] :global_network_id
    #   <p>The ID of your global network.</p>
    # @option params [String] :description
    #   <p>A description of the global network.</p>
    #            <p>Constraints: Maximum length of 256 characters.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     global_network_id: "GlobalNetworkId", # required
    #     description: "ConstrainedString"
    #   }
    #   options = {}
    #   response = client.update_global_network(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     global_network: {
    #       global_network_id: "GlobalNetworkId",
    #       global_network_arn: "GlobalNetworkArn",
    #       description: "ConstrainedString",
    #       created_at: Time.now,
    #       state: "PENDING" # One of: ["PENDING", "AVAILABLE", "DELETING", "UPDATING"],
    #       tags: [
    #         {
    #           key: "TagKey",
    #           value: "TagValue"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::UpdateGlobalNetworkResponse]
    def update_global_network(params = {}, options = {})
      request = build_request(:update_global_network, params)
      request.send_request(options)
    end

    # <p>Updates the details for an existing link. To remove information for any of the
    #             parameters, specify an empty string.</p>
    # @param [Hash, Types::UpdateLinkRequest] params
    # @option params [String] :global_network_id
    #   <p>The ID of the global network.</p>
    # @option params [String] :link_id
    #   <p>The ID of the link.</p>
    # @option params [String] :description
    #   <p>A description of the link.</p>
    #            <p>Constraints: Maximum length of 256 characters.</p>
    # @option params [String] :type
    #   <p>The type of the link.</p>
    #            <p>Constraints: Maximum length of 128 characters.</p>
    # @option params [Types::Bandwidth] :bandwidth
    #   <p>The upload and download speed in Mbps. </p>
    # @option params [String] :provider
    #   <p>The provider of the link.</p>
    #            <p>Constraints: Maximum length of 128 characters.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     global_network_id: "GlobalNetworkId", # required
    #     link_id: "LinkId", # required
    #     description: "ConstrainedString",
    #     type: "ConstrainedString",
    #     bandwidth: {
    #       upload_speed: 1,
    #       download_speed: 1
    #     },
    #     provider: "ConstrainedString"
    #   }
    #   options = {}
    #   response = client.update_link(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     link: {
    #       link_id: "LinkId",
    #       link_arn: "LinkArn",
    #       global_network_id: "GlobalNetworkId",
    #       site_id: "SiteId",
    #       description: "ConstrainedString",
    #       type: "ConstrainedString",
    #       bandwidth: {
    #         upload_speed: 1,
    #         download_speed: 1
    #       },
    #       provider: "ConstrainedString",
    #       created_at: Time.now,
    #       state: "PENDING" # One of: ["PENDING", "AVAILABLE", "DELETING", "UPDATING"],
    #       tags: [
    #         {
    #           key: "TagKey",
    #           value: "TagValue"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::UpdateLinkResponse]
    def update_link(params = {}, options = {})
      request = build_request(:update_link, params)
      request.send_request(options)
    end

    # <p>Updates the resource metadata for the specified global network.</p>
    # @param [Hash, Types::UpdateNetworkResourceMetadataRequest] params
    # @option params [String] :global_network_id
    #   <p>The ID of the global network.</p>
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource.</p>
    # @option params [Hash<String, String>] :metadata
    #   <p>The resource metadata.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     global_network_id: "GlobalNetworkId", # required
    #     resource_arn: "ResourceArn", # required
    #     metadata: { # required
    #       "ConstrainedString" => "ConstrainedString"
    #     }
    #   }
    #   options = {}
    #   response = client.update_network_resource_metadata(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_arn: "ResourceArn",
    #     metadata: {
    #       "ConstrainedString" => "ConstrainedString"
    #     }
    #   }
    # @return [Types::UpdateNetworkResourceMetadataResponse]
    def update_network_resource_metadata(params = {}, options = {})
      request = build_request(:update_network_resource_metadata, params)
      request.send_request(options)
    end

    # <p>Updates the information for an existing site. To remove information for any of the
    #             parameters, specify an empty string.</p>
    # @param [Hash, Types::UpdateSiteRequest] params
    # @option params [String] :global_network_id
    #   <p>The ID of the global network.</p>
    # @option params [String] :site_id
    #   <p>The ID of your site.</p>
    # @option params [String] :description
    #   <p>A description of your site.</p>
    #            <p>Constraints: Maximum length of 256 characters.</p>
    # @option params [Types::Location] :location
    #   <p>The site location:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Address</code>: The physical address of the site.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Latitude</code>: The latitude of the site. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Longitude</code>: The longitude of the site.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     global_network_id: "GlobalNetworkId", # required
    #     site_id: "SiteId", # required
    #     description: "ConstrainedString",
    #     location: {
    #       address: "ConstrainedString",
    #       latitude: "ConstrainedString",
    #       longitude: "ConstrainedString"
    #     }
    #   }
    #   options = {}
    #   response = client.update_site(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     site: {
    #       site_id: "SiteId",
    #       site_arn: "SiteArn",
    #       global_network_id: "GlobalNetworkId",
    #       description: "ConstrainedString",
    #       location: {
    #         address: "ConstrainedString",
    #         latitude: "ConstrainedString",
    #         longitude: "ConstrainedString"
    #       },
    #       created_at: Time.now,
    #       state: "PENDING" # One of: ["PENDING", "AVAILABLE", "DELETING", "UPDATING"],
    #       tags: [
    #         {
    #           key: "TagKey",
    #           value: "TagValue"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::UpdateSiteResponse]
    def update_site(params = {}, options = {})
      request = build_request(:update_site, params)
      request.send_request(options)
    end

    # <p>Updates a VPC attachment.</p>
    # @param [Hash, Types::UpdateVpcAttachmentRequest] params
    # @option params [String] :attachment_id
    #   <p>The ID of the attachment.</p>
    # @option params [Array<String>] :add_subnet_arns
    #   <p>Adds a subnet ARN to the VPC attachment.</p>
    # @option params [Array<String>] :remove_subnet_arns
    #   <p>Removes a subnet ARN from the attachment.</p>
    # @option params [Types::VpcOptions] :options
    #   <p>Additional options for updating the VPC attachment. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     attachment_id: "AttachmentId", # required
    #     add_subnet_arns: ["SubnetArn"],
    #     remove_subnet_arns: ["SubnetArn"],
    #     options: {
    #       ipv6_support: false,
    #       appliance_mode_support: false,
    #       dns_support: false,
    #       security_group_referencing_support: false
    #     }
    #   }
    #   options = {}
    #   response = client.update_vpc_attachment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     vpc_attachment: {
    #       attachment: {
    #         core_network_id: "CoreNetworkId",
    #         core_network_arn: "CoreNetworkArn",
    #         attachment_id: "AttachmentId",
    #         owner_account_id: "AWSAccountId",
    #         attachment_type: "CONNECT" # One of: ["CONNECT", "SITE_TO_SITE_VPN", "VPC", "DIRECT_CONNECT_GATEWAY", "TRANSIT_GATEWAY_ROUTE_TABLE"],
    #         state: "REJECTED" # One of: ["REJECTED", "PENDING_ATTACHMENT_ACCEPTANCE", "CREATING", "FAILED", "AVAILABLE", "UPDATING", "PENDING_NETWORK_UPDATE", "PENDING_TAG_ACCEPTANCE", "DELETING"],
    #         edge_location: "ExternalRegionCode",
    #         edge_locations: ["ExternalRegionCode"],
    #         resource_arn: "ResourceArn",
    #         attachment_policy_rule_number: 1,
    #         segment_name: "ConstrainedString",
    #         network_function_group_name: "NetworkFunctionGroupName",
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue"
    #           }
    #         ],
    #         proposed_segment_change: {
    #           tags: [
    #             {
    #               key: "TagKey",
    #               value: "TagValue"
    #             }
    #           ],
    #           attachment_policy_rule_number: 1,
    #           segment_name: "ConstrainedString"
    #         },
    #         proposed_network_function_group_change: {
    #           tags: [
    #             {
    #               key: "TagKey",
    #               value: "TagValue"
    #             }
    #           ],
    #           attachment_policy_rule_number: 1,
    #           network_function_group_name: "ConstrainedString"
    #         },
    #         created_at: Time.now,
    #         updated_at: Time.now,
    #         last_modification_errors: [
    #           {
    #             code: "VPC_NOT_FOUND" # One of: ["VPC_NOT_FOUND", "SUBNET_NOT_FOUND", "SUBNET_DUPLICATED_IN_AVAILABILITY_ZONE", "SUBNET_NO_FREE_ADDRESSES", "SUBNET_UNSUPPORTED_AVAILABILITY_ZONE", "SUBNET_NO_IPV6_CIDRS", "VPN_CONNECTION_NOT_FOUND", "MAXIMUM_NO_ENCAP_LIMIT_EXCEEDED", "DIRECT_CONNECT_GATEWAY_NOT_FOUND", "DIRECT_CONNECT_GATEWAY_EXISTING_ATTACHMENTS", "DIRECT_CONNECT_GATEWAY_NO_PRIVATE_VIF", "VPN_EXISTING_ASSOCIATIONS", "VPC_UNSUPPORTED_FEATURES"],
    #             message: "ServerSideString",
    #             resource_arn: "ResourceArn",
    #             request_id: "ServerSideString"
    #           }
    #         ]
    #       },
    #       subnet_arns: ["SubnetArn"],
    #       options: {
    #         ipv6_support: false,
    #         appliance_mode_support: false,
    #         dns_support: false,
    #         security_group_referencing_support: false
    #       }
    #     }
    #   }
    # @return [Types::UpdateVpcAttachmentResponse]
    def update_vpc_attachment(params = {}, options = {})
      request = build_request(:update_vpc_attachment, params)
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
      context[:gem_name] = 'aws-sdk-networkmanager'
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
