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
require 'smithy-client/plugins/raise_response_errors'
require 'smithy-client/plugins/request_compression'
require 'smithy-client/plugins/resolve_auth'
require 'smithy-client/plugins/response_target'
require 'smithy-client/plugins/retry_errors'
require 'smithy-client/plugins/sign_requests'
require 'smithy-client/plugins/stub_responses'
require 'aws-sdk-core/plugins/global_configuration'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/json_rpc_protocol'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:directconnect)

module Aws::DirectConnect
  # An API client for Aws::DirectConnect.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::OvertureService
    @identifier = :directconnect

    add_plugin(::Aws::DirectConnect::Plugins::Endpoint)
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
    add_plugin(Aws::Core::Plugins::GlobalConfiguration)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::JsonRpcProtocol)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::DirectConnect::EndpointProvider)
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

    # <p>Accepts a proposal request to attach a virtual private gateway or transit gateway to a Direct Connect gateway.</p>
    # @param [Hash, Types::AcceptDirectConnectGatewayAssociationProposalRequest] params
    # @option params [String] :direct_connect_gateway_id
    #   <p>The ID of the Direct Connect gateway.</p>
    # @option params [String] :proposal_id
    #   <p>The ID of the request proposal.</p>
    # @option params [String] :associated_gateway_owner_account
    #   <p>The ID of the Amazon Web Services account that owns the virtual private gateway or transit gateway.</p>
    # @option params [Array<Types::RouteFilterPrefix>] :override_allowed_prefixes_to_direct_connect_gateway
    #   <p>Overrides the Amazon VPC prefixes advertised to the Direct Connect gateway.</p>
    #            <p>For information about how to set the prefixes, see <a href="https://docs.aws.amazon.com/directconnect/latest/UserGuide/multi-account-associate-vgw.html#allowed-prefixes">Allowed Prefixes</a> in the <i>Direct Connect User Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     direct_connect_gateway_id: "DirectConnectGatewayId", # required
    #     proposal_id: "DirectConnectGatewayAssociationProposalId", # required
    #     associated_gateway_owner_account: "OwnerAccount", # required
    #     override_allowed_prefixes_to_direct_connect_gateway: [
    #       {
    #         cidr: "CIDR"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.accept_direct_connect_gateway_association_proposal(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     direct_connect_gateway_association: {
    #       direct_connect_gateway_id: "DirectConnectGatewayId",
    #       direct_connect_gateway_owner_account: "OwnerAccount",
    #       association_state: "associating" # One of: ["associating", "associated", "disassociating", "disassociated", "updating"],
    #       state_change_error: "StateChangeError",
    #       associated_gateway: {
    #         id: "GatewayIdentifier",
    #         type: "virtualPrivateGateway" # One of: ["virtualPrivateGateway", "transitGateway"],
    #         owner_account: "OwnerAccount",
    #         region: "Region"
    #       },
    #       association_id: "DirectConnectGatewayAssociationId",
    #       allowed_prefixes_to_direct_connect_gateway: [
    #         {
    #           cidr: "CIDR"
    #         }
    #       ],
    #       associated_core_network: {
    #         id: "CoreNetworkIdentifier",
    #         owner_account: "OwnerAccount",
    #         attachment_id: "CoreNetworkAttachmentId"
    #       },
    #       virtual_gateway_id: "VirtualGatewayId",
    #       virtual_gateway_region: "VirtualGatewayRegion",
    #       virtual_gateway_owner_account: "OwnerAccount"
    #     }
    #   }
    # @return [Types::AcceptDirectConnectGatewayAssociationProposalResult]
    def accept_direct_connect_gateway_association_proposal(params = {}, options = {})
      request = build_request(:accept_direct_connect_gateway_association_proposal, params)
      request.send_request(options)
    end

    # <note>
    #             <p>Deprecated. Use <a>AllocateHostedConnection</a> instead.</p>
    #          </note>
    #          <p>Creates a hosted connection on an interconnect.</p>
    #          <p>Allocates a VLAN number and a specified amount of bandwidth for use by a hosted connection on the specified interconnect.</p>
    #          <note>
    #             <p>Intended for use by Direct Connect Partners only.</p>
    #          </note>
    # @param [Hash, Types::AllocateConnectionOnInterconnectRequest] params
    # @option params [String] :bandwidth
    #   <p>The bandwidth of the connection. The possible values are 50Mbps, 100Mbps, 200Mbps,
    #         300Mbps, 400Mbps, 500Mbps, 1Gbps, 2Gbps, 5Gbps, and 10Gbps. Note that only those Direct Connect Partners
    #         who have met specific requirements
    #       are allowed to create a 1Gbps, 2Gbps, 5Gbps or 10Gbps hosted connection.</p>
    # @option params [String] :connection_name
    #   <p>The name of the provisioned connection.</p>
    # @option params [String] :owner_account
    #   <p>The ID of the Amazon Web Services account of the customer for whom the connection will be provisioned.</p>
    # @option params [String] :interconnect_id
    #   <p>The ID of the interconnect on which the connection will be provisioned.</p>
    # @option params [Integer] :vlan
    #   <p>The dedicated VLAN provisioned to the connection.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     bandwidth: "Bandwidth", # required
    #     connection_name: "ConnectionName", # required
    #     owner_account: "OwnerAccount", # required
    #     interconnect_id: "InterconnectId", # required
    #     vlan: 1, # required
    #   }
    #   options = {}
    #   response = client.allocate_connection_on_interconnect(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     owner_account: "OwnerAccount",
    #     connection_id: "ConnectionId",
    #     connection_name: "ConnectionName",
    #     connection_state: "ordering" # One of: ["ordering", "requested", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"],
    #     region: "Region",
    #     location: "LocationCode",
    #     bandwidth: "Bandwidth",
    #     vlan: 1,
    #     partner_name: "PartnerName",
    #     loa_issue_time: Time.now,
    #     lag_id: "LagId",
    #     aws_device: "AwsDevice",
    #     jumbo_frame_capable: false,
    #     aws_device_v2: "AwsDeviceV2",
    #     aws_logical_device_id: "AwsLogicalDeviceId",
    #     has_logical_redundancy: "unknown" # One of: ["unknown", "yes", "no"],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ],
    #     provider_name: "ProviderName",
    #     mac_sec_capable: false,
    #     port_encryption_status: "PortEncryptionStatus",
    #     encryption_mode: "EncryptionMode",
    #     mac_sec_keys: [
    #       {
    #         secret_arn: "SecretARN",
    #         ckn: "Ckn",
    #         state: "State",
    #         start_on: "StartOnDate"
    #       }
    #     ],
    #     partner_interconnect_mac_sec_capable: false
    #   }
    # @deprecated
    # @return [Types::AllocateConnectionOnInterconnectOutput]
    def allocate_connection_on_interconnect(params = {}, options = {})
      request = build_request(:allocate_connection_on_interconnect, params)
      request.send_request(options)
    end

    # <p>Creates a hosted connection on the specified interconnect or a link aggregation group (LAG) of interconnects.</p>
    #          <p>Allocates a VLAN number and a specified amount of capacity (bandwidth) for use by a hosted connection on the specified interconnect or LAG of interconnects. 
    #       Amazon Web Services polices the hosted connection for the specified capacity and the Direct Connect Partner must also police the hosted connection for the specified capacity.</p>
    #          <note>
    #             <p>Intended for use by Direct Connect Partners only.</p>
    #          </note>
    # @param [Hash, Types::AllocateHostedConnectionRequest] params
    # @option params [String] :connection_id
    #   <p>The ID of the interconnect or LAG.</p>
    # @option params [String] :owner_account
    #   <p>The ID of the Amazon Web Services account ID of the customer for the connection.</p>
    # @option params [String] :bandwidth
    #   <p>The bandwidth of the connection. The possible values are 50Mbps, 100Mbps, 200Mbps,
    #         300Mbps, 400Mbps, 500Mbps, 1Gbps, 2Gbps, 5Gbps, 10Gbps, and 25Gbps. Note that only those
    #         Direct Connect Partners who have met specific requirements are allowed to create a 1Gbps, 2Gbps, 5Gbps,
    #         10Gbps, or 25Gbps hosted connection. </p>
    # @option params [String] :connection_name
    #   <p>The name of the hosted connection.</p>
    # @option params [Integer] :vlan
    #   <p>The dedicated VLAN provisioned to the hosted connection.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags associated with the connection.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     connection_id: "ConnectionId", # required
    #     owner_account: "OwnerAccount", # required
    #     bandwidth: "Bandwidth", # required
    #     connection_name: "ConnectionName", # required
    #     vlan: 1, # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.allocate_hosted_connection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     owner_account: "OwnerAccount",
    #     connection_id: "ConnectionId",
    #     connection_name: "ConnectionName",
    #     connection_state: "ordering" # One of: ["ordering", "requested", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"],
    #     region: "Region",
    #     location: "LocationCode",
    #     bandwidth: "Bandwidth",
    #     vlan: 1,
    #     partner_name: "PartnerName",
    #     loa_issue_time: Time.now,
    #     lag_id: "LagId",
    #     aws_device: "AwsDevice",
    #     jumbo_frame_capable: false,
    #     aws_device_v2: "AwsDeviceV2",
    #     aws_logical_device_id: "AwsLogicalDeviceId",
    #     has_logical_redundancy: "unknown" # One of: ["unknown", "yes", "no"],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ],
    #     provider_name: "ProviderName",
    #     mac_sec_capable: false,
    #     port_encryption_status: "PortEncryptionStatus",
    #     encryption_mode: "EncryptionMode",
    #     mac_sec_keys: [
    #       {
    #         secret_arn: "SecretARN",
    #         ckn: "Ckn",
    #         state: "State",
    #         start_on: "StartOnDate"
    #       }
    #     ],
    #     partner_interconnect_mac_sec_capable: false
    #   }
    # @return [Types::AllocateHostedConnectionOutput]
    def allocate_hosted_connection(params = {}, options = {})
      request = build_request(:allocate_hosted_connection, params)
      request.send_request(options)
    end

    # <p>Provisions a private virtual interface to be owned by the specified Amazon Web Services account.</p>
    #          <p>Virtual interfaces created using this action must be confirmed by the owner using <a>ConfirmPrivateVirtualInterface</a>. 
    #       Until then, the virtual interface is in the <code>Confirming</code> state and is not available to handle traffic.</p>
    # @param [Hash, Types::AllocatePrivateVirtualInterfaceRequest] params
    # @option params [String] :connection_id
    #   <p>The ID of the connection on which the private virtual interface is provisioned.</p>
    # @option params [String] :owner_account
    #   <p>The ID of the Amazon Web Services account that owns the virtual private interface.</p>
    # @option params [Types::NewPrivateVirtualInterfaceAllocation] :new_private_virtual_interface_allocation
    #   <p>Information about the private virtual interface.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     connection_id: "ConnectionId", # required
    #     owner_account: "OwnerAccount", # required
    #     new_private_virtual_interface_allocation: { # required
    #       virtual_interface_name: "VirtualInterfaceName", # required
    #       vlan: 1, # required
    #       asn: 1,
    #       asn_long: 1,
    #       mtu: 1,
    #       auth_key: "BGPAuthKey",
    #       amazon_address: "AmazonAddress",
    #       address_family: "ipv4" # One of: ["ipv4", "ipv6"],
    #       customer_address: "CustomerAddress",
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue"
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.allocate_private_virtual_interface(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     owner_account: "OwnerAccount",
    #     virtual_interface_id: "VirtualInterfaceId",
    #     location: "LocationCode",
    #     connection_id: "ConnectionId",
    #     virtual_interface_type: "VirtualInterfaceType",
    #     virtual_interface_name: "VirtualInterfaceName",
    #     vlan: 1,
    #     asn: 1,
    #     asn_long: 1,
    #     amazon_side_asn: 1,
    #     auth_key: "BGPAuthKey",
    #     amazon_address: "AmazonAddress",
    #     customer_address: "CustomerAddress",
    #     address_family: "ipv4" # One of: ["ipv4", "ipv6"],
    #     virtual_interface_state: "confirming" # One of: ["confirming", "verifying", "pending", "available", "down", "testing", "deleting", "deleted", "rejected", "unknown"],
    #     customer_router_config: "RouterConfig",
    #     mtu: 1,
    #     jumbo_frame_capable: false,
    #     virtual_gateway_id: "VirtualGatewayId",
    #     direct_connect_gateway_id: "DirectConnectGatewayId",
    #     route_filter_prefixes: [
    #       {
    #         cidr: "CIDR"
    #       }
    #     ],
    #     bgp_peers: [
    #       {
    #         bgp_peer_id: "BGPPeerId",
    #         asn: 1,
    #         asn_long: 1,
    #         auth_key: "BGPAuthKey",
    #         address_family: "ipv4" # One of: ["ipv4", "ipv6"],
    #         amazon_address: "AmazonAddress",
    #         customer_address: "CustomerAddress",
    #         bgp_peer_state: "verifying" # One of: ["verifying", "pending", "available", "deleting", "deleted"],
    #         bgp_status: "up" # One of: ["up", "down", "unknown"],
    #         aws_device_v2: "AwsDeviceV2",
    #         aws_logical_device_id: "AwsLogicalDeviceId"
    #       }
    #     ],
    #     region: "Region",
    #     aws_device_v2: "AwsDeviceV2",
    #     aws_logical_device_id: "AwsLogicalDeviceId",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ],
    #     site_link_enabled: false
    #   }
    # @return [Types::AllocatePrivateVirtualInterfaceOutput]
    def allocate_private_virtual_interface(params = {}, options = {})
      request = build_request(:allocate_private_virtual_interface, params)
      request.send_request(options)
    end

    # <p>Provisions a public virtual interface to be owned by the specified Amazon Web Services account.</p>
    #          <p>The owner of a connection calls this function to provision a public virtual interface to be owned by the specified Amazon Web Services account.</p>
    #          <p>Virtual interfaces created using this function must be confirmed by the owner using <a>ConfirmPublicVirtualInterface</a>.
    #       Until this step has been completed, the virtual interface is in the <code>confirming</code> state and is not available to handle traffic.</p>
    #          <p>When creating an IPv6 public virtual interface, omit the Amazon address and customer address. IPv6 addresses are automatically assigned from
    #       the Amazon pool of IPv6 addresses; you cannot specify custom IPv6 addresses.</p>
    # @param [Hash, Types::AllocatePublicVirtualInterfaceRequest] params
    # @option params [String] :connection_id
    #   <p>The ID of the connection on which the public virtual interface is provisioned.</p>
    # @option params [String] :owner_account
    #   <p>The ID of the Amazon Web Services account that owns the public virtual interface.</p>
    # @option params [Types::NewPublicVirtualInterfaceAllocation] :new_public_virtual_interface_allocation
    #   <p>Information about the public virtual interface.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     connection_id: "ConnectionId", # required
    #     owner_account: "OwnerAccount", # required
    #     new_public_virtual_interface_allocation: { # required
    #       virtual_interface_name: "VirtualInterfaceName", # required
    #       vlan: 1, # required
    #       asn: 1,
    #       asn_long: 1,
    #       auth_key: "BGPAuthKey",
    #       amazon_address: "AmazonAddress",
    #       customer_address: "CustomerAddress",
    #       address_family: "ipv4" # One of: ["ipv4", "ipv6"],
    #       route_filter_prefixes: [
    #         {
    #           cidr: "CIDR"
    #         }
    #       ],
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue"
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.allocate_public_virtual_interface(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     owner_account: "OwnerAccount",
    #     virtual_interface_id: "VirtualInterfaceId",
    #     location: "LocationCode",
    #     connection_id: "ConnectionId",
    #     virtual_interface_type: "VirtualInterfaceType",
    #     virtual_interface_name: "VirtualInterfaceName",
    #     vlan: 1,
    #     asn: 1,
    #     asn_long: 1,
    #     amazon_side_asn: 1,
    #     auth_key: "BGPAuthKey",
    #     amazon_address: "AmazonAddress",
    #     customer_address: "CustomerAddress",
    #     address_family: "ipv4" # One of: ["ipv4", "ipv6"],
    #     virtual_interface_state: "confirming" # One of: ["confirming", "verifying", "pending", "available", "down", "testing", "deleting", "deleted", "rejected", "unknown"],
    #     customer_router_config: "RouterConfig",
    #     mtu: 1,
    #     jumbo_frame_capable: false,
    #     virtual_gateway_id: "VirtualGatewayId",
    #     direct_connect_gateway_id: "DirectConnectGatewayId",
    #     route_filter_prefixes: [
    #       {
    #         cidr: "CIDR"
    #       }
    #     ],
    #     bgp_peers: [
    #       {
    #         bgp_peer_id: "BGPPeerId",
    #         asn: 1,
    #         asn_long: 1,
    #         auth_key: "BGPAuthKey",
    #         address_family: "ipv4" # One of: ["ipv4", "ipv6"],
    #         amazon_address: "AmazonAddress",
    #         customer_address: "CustomerAddress",
    #         bgp_peer_state: "verifying" # One of: ["verifying", "pending", "available", "deleting", "deleted"],
    #         bgp_status: "up" # One of: ["up", "down", "unknown"],
    #         aws_device_v2: "AwsDeviceV2",
    #         aws_logical_device_id: "AwsLogicalDeviceId"
    #       }
    #     ],
    #     region: "Region",
    #     aws_device_v2: "AwsDeviceV2",
    #     aws_logical_device_id: "AwsLogicalDeviceId",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ],
    #     site_link_enabled: false
    #   }
    # @return [Types::AllocatePublicVirtualInterfaceOutput]
    def allocate_public_virtual_interface(params = {}, options = {})
      request = build_request(:allocate_public_virtual_interface, params)
      request.send_request(options)
    end

    # <p>Provisions a transit virtual interface to be owned by the specified Amazon Web Services account. Use this type of interface to connect a transit gateway to your Direct Connect gateway.</p>
    #          <p>The owner of a connection provisions a transit virtual interface to be owned by the specified Amazon Web Services account.</p>
    #          <p>After you create a transit virtual interface, it must be confirmed by the owner using <a>ConfirmTransitVirtualInterface</a>. Until this step has been completed, the transit virtual interface is in the <code>requested</code> state and is not available to handle traffic.</p>
    # @param [Hash, Types::AllocateTransitVirtualInterfaceRequest] params
    # @option params [String] :connection_id
    #   <p>The ID of the connection on which the transit virtual interface is provisioned.</p>
    # @option params [String] :owner_account
    #   <p>The ID of the Amazon Web Services account that owns the transit virtual interface.</p>
    # @option params [Types::NewTransitVirtualInterfaceAllocation] :new_transit_virtual_interface_allocation
    #   <p>Information about the transit virtual interface.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     connection_id: "ConnectionId", # required
    #     owner_account: "OwnerAccount", # required
    #     new_transit_virtual_interface_allocation: { # required
    #       virtual_interface_name: "VirtualInterfaceName",
    #       vlan: 1,
    #       asn: 1,
    #       asn_long: 1,
    #       mtu: 1,
    #       auth_key: "BGPAuthKey",
    #       amazon_address: "AmazonAddress",
    #       customer_address: "CustomerAddress",
    #       address_family: "ipv4" # One of: ["ipv4", "ipv6"],
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue"
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.allocate_transit_virtual_interface(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     virtual_interface: {
    #       owner_account: "OwnerAccount",
    #       virtual_interface_id: "VirtualInterfaceId",
    #       location: "LocationCode",
    #       connection_id: "ConnectionId",
    #       virtual_interface_type: "VirtualInterfaceType",
    #       virtual_interface_name: "VirtualInterfaceName",
    #       vlan: 1,
    #       asn: 1,
    #       asn_long: 1,
    #       amazon_side_asn: 1,
    #       auth_key: "BGPAuthKey",
    #       amazon_address: "AmazonAddress",
    #       customer_address: "CustomerAddress",
    #       address_family: "ipv4" # One of: ["ipv4", "ipv6"],
    #       virtual_interface_state: "confirming" # One of: ["confirming", "verifying", "pending", "available", "down", "testing", "deleting", "deleted", "rejected", "unknown"],
    #       customer_router_config: "RouterConfig",
    #       mtu: 1,
    #       jumbo_frame_capable: false,
    #       virtual_gateway_id: "VirtualGatewayId",
    #       direct_connect_gateway_id: "DirectConnectGatewayId",
    #       route_filter_prefixes: [
    #         {
    #           cidr: "CIDR"
    #         }
    #       ],
    #       bgp_peers: [
    #         {
    #           bgp_peer_id: "BGPPeerId",
    #           asn: 1,
    #           asn_long: 1,
    #           auth_key: "BGPAuthKey",
    #           address_family: "ipv4" # One of: ["ipv4", "ipv6"],
    #           amazon_address: "AmazonAddress",
    #           customer_address: "CustomerAddress",
    #           bgp_peer_state: "verifying" # One of: ["verifying", "pending", "available", "deleting", "deleted"],
    #           bgp_status: "up" # One of: ["up", "down", "unknown"],
    #           aws_device_v2: "AwsDeviceV2",
    #           aws_logical_device_id: "AwsLogicalDeviceId"
    #         }
    #       ],
    #       region: "Region",
    #       aws_device_v2: "AwsDeviceV2",
    #       aws_logical_device_id: "AwsLogicalDeviceId",
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue"
    #         }
    #       ],
    #       site_link_enabled: false
    #     }
    #   }
    # @return [Types::AllocateTransitVirtualInterfaceResult]
    def allocate_transit_virtual_interface(params = {}, options = {})
      request = build_request(:allocate_transit_virtual_interface, params)
      request.send_request(options)
    end

    # <p>Associates an existing connection with a link aggregation group (LAG). The connection
    #       is interrupted and re-established as a member of the LAG (connectivity to Amazon Web Services is
    #       interrupted). The connection must be hosted on the same Direct Connect endpoint as the LAG, and its 
    #       bandwidth must match the bandwidth for the LAG. You can re-associate a connection that's 
    #       currently associated with a different LAG; however, if removing the connection would cause 
    #       the original LAG to fall below its setting for minimum number of operational connections, 
    #       the request fails.</p>
    #          <p>Any virtual interfaces that are directly associated with the connection are
    #       automatically re-associated with the LAG. If the connection was originally associated
    #       with a different LAG, the virtual interfaces remain associated with the original
    #       LAG.</p>
    #          <p>For interconnects, any hosted connections are automatically re-associated with the
    #       LAG. If the interconnect was originally associated with a different LAG, the hosted
    #       connections remain associated with the original LAG.</p>
    # @param [Hash, Types::AssociateConnectionWithLagRequest] params
    # @option params [String] :connection_id
    #   <p>The ID of the connection.</p>
    # @option params [String] :lag_id
    #   <p>The ID of the LAG with which to associate the connection.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     connection_id: "ConnectionId", # required
    #     lag_id: "LagId", # required
    #   }
    #   options = {}
    #   response = client.associate_connection_with_lag(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     owner_account: "OwnerAccount",
    #     connection_id: "ConnectionId",
    #     connection_name: "ConnectionName",
    #     connection_state: "ordering" # One of: ["ordering", "requested", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"],
    #     region: "Region",
    #     location: "LocationCode",
    #     bandwidth: "Bandwidth",
    #     vlan: 1,
    #     partner_name: "PartnerName",
    #     loa_issue_time: Time.now,
    #     lag_id: "LagId",
    #     aws_device: "AwsDevice",
    #     jumbo_frame_capable: false,
    #     aws_device_v2: "AwsDeviceV2",
    #     aws_logical_device_id: "AwsLogicalDeviceId",
    #     has_logical_redundancy: "unknown" # One of: ["unknown", "yes", "no"],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ],
    #     provider_name: "ProviderName",
    #     mac_sec_capable: false,
    #     port_encryption_status: "PortEncryptionStatus",
    #     encryption_mode: "EncryptionMode",
    #     mac_sec_keys: [
    #       {
    #         secret_arn: "SecretARN",
    #         ckn: "Ckn",
    #         state: "State",
    #         start_on: "StartOnDate"
    #       }
    #     ],
    #     partner_interconnect_mac_sec_capable: false
    #   }
    # @return [Types::AssociateConnectionWithLagOutput]
    def associate_connection_with_lag(params = {}, options = {})
      request = build_request(:associate_connection_with_lag, params)
      request.send_request(options)
    end

    # <p>Associates a hosted connection and its virtual interfaces with a link aggregation
    #       group (LAG) or interconnect. If the target interconnect or LAG has an existing hosted
    #       connection with a conflicting VLAN number or IP address, the operation fails. This
    #       action temporarily interrupts the hosted connection's connectivity to Amazon Web Services 
    #       as it is being migrated.</p>
    #          <note>
    #             <p>Intended for use by Direct Connect Partners only.</p>
    #          </note>
    # @param [Hash, Types::AssociateHostedConnectionRequest] params
    # @option params [String] :connection_id
    #   <p>The ID of the hosted connection.</p>
    # @option params [String] :parent_connection_id
    #   <p>The ID of the interconnect or the LAG.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     connection_id: "ConnectionId", # required
    #     parent_connection_id: "ConnectionId", # required
    #   }
    #   options = {}
    #   response = client.associate_hosted_connection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     owner_account: "OwnerAccount",
    #     connection_id: "ConnectionId",
    #     connection_name: "ConnectionName",
    #     connection_state: "ordering" # One of: ["ordering", "requested", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"],
    #     region: "Region",
    #     location: "LocationCode",
    #     bandwidth: "Bandwidth",
    #     vlan: 1,
    #     partner_name: "PartnerName",
    #     loa_issue_time: Time.now,
    #     lag_id: "LagId",
    #     aws_device: "AwsDevice",
    #     jumbo_frame_capable: false,
    #     aws_device_v2: "AwsDeviceV2",
    #     aws_logical_device_id: "AwsLogicalDeviceId",
    #     has_logical_redundancy: "unknown" # One of: ["unknown", "yes", "no"],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ],
    #     provider_name: "ProviderName",
    #     mac_sec_capable: false,
    #     port_encryption_status: "PortEncryptionStatus",
    #     encryption_mode: "EncryptionMode",
    #     mac_sec_keys: [
    #       {
    #         secret_arn: "SecretARN",
    #         ckn: "Ckn",
    #         state: "State",
    #         start_on: "StartOnDate"
    #       }
    #     ],
    #     partner_interconnect_mac_sec_capable: false
    #   }
    # @return [Types::AssociateHostedConnectionOutput]
    def associate_hosted_connection(params = {}, options = {})
      request = build_request(:associate_hosted_connection, params)
      request.send_request(options)
    end

    # <p>Associates a MAC Security (MACsec) Connection Key Name (CKN)/ Connectivity Association Key (CAK) pair with a Direct Connect connection.</p>
    #          <p>You must supply either the <code>secretARN,</code> or the CKN/CAK (<code>ckn</code> and <code>cak</code>) pair in the request.</p>
    #          <p>For information about MAC Security (MACsec) key considerations, see  <a href="https://docs.aws.amazon.com/directconnect/latest/UserGuide/direct-connect-mac-sec-getting-started.html#mac-sec-key-consideration">MACsec pre-shared CKN/CAK key considerations </a> in the <i>Direct Connect User Guide</i>.</p>
    # @param [Hash, Types::AssociateMacSecKeyRequest] params
    # @option params [String] :connection_id
    #   <p>The ID of the dedicated connection (dxcon-xxxx), interconnect (dxcon-xxxx), or LAG (dxlag-xxxx).</p>
    #            <p>You can use <a>DescribeConnections</a>, <a>DescribeInterconnects</a>, or <a>DescribeLags</a> to retrieve connection ID.</p>
    # @option params [String] :secret_arn
    #   <p>The Amazon Resource Name (ARN) of the MAC Security (MACsec) secret key to associate with the connection.</p>
    #            <p>You can use <a>DescribeConnections</a> or <a>DescribeLags</a> to retrieve the MAC Security (MACsec) secret key.</p>
    #            <p>If you use this request parameter, you do not use the <code>ckn</code> and <code>cak</code> request parameters.</p>
    # @option params [String] :ckn
    #   <p>The MAC Security (MACsec) CKN to associate with the connection.</p>
    #            <p>You can create the CKN/CAK pair using an industry standard tool.</p>
    #            <p> The valid values are 64 hexadecimal characters (0-9, A-E).</p>
    #            <p>If you use this request parameter, you must use the <code>cak</code> request parameter and not use the <code>secretARN</code> request parameter.</p>
    # @option params [String] :cak
    #   <p>The MAC Security (MACsec) CAK to associate with the connection.</p>
    #            <p>You can create the CKN/CAK pair using an industry standard tool.</p>
    #            <p> The valid values are 64 hexadecimal characters (0-9, A-E).</p>
    #            <p>If you use this request parameter, you must use the <code>ckn</code> request parameter and not use the <code>secretARN</code> request parameter.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     connection_id: "ConnectionId", # required
    #     secret_arn: "SecretARN",
    #     ckn: "Ckn",
    #     cak: "Cak"
    #   }
    #   options = {}
    #   response = client.associate_mac_sec_key(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connection_id: "ConnectionId",
    #     mac_sec_keys: [
    #       {
    #         secret_arn: "SecretARN",
    #         ckn: "Ckn",
    #         state: "State",
    #         start_on: "StartOnDate"
    #       }
    #     ]
    #   }
    # @return [Types::AssociateMacSecKeyResponse]
    def associate_mac_sec_key(params = {}, options = {})
      request = build_request(:associate_mac_sec_key, params)
      request.send_request(options)
    end

    # <p>Associates a virtual interface with a specified link aggregation group (LAG) or
    #       connection. Connectivity to Amazon Web Services is temporarily interrupted as the virtual interface is
    #       being migrated. If the target connection or LAG has an associated virtual interface with
    #       a conflicting VLAN number or a conflicting IP address, the operation fails.</p>
    #          <p>Virtual interfaces associated with a hosted connection cannot be associated with a
    #       LAG; hosted connections must be migrated along with their virtual interfaces using <a>AssociateHostedConnection</a>.</p>
    #          <p>To reassociate a virtual interface to a new connection or LAG, the requester
    #       must own either the virtual interface itself or the connection to which the virtual
    #       interface is currently associated. Additionally, the requester must own the connection
    #       or LAG for the association.</p>
    # @param [Hash, Types::AssociateVirtualInterfaceRequest] params
    # @option params [String] :virtual_interface_id
    #   <p>The ID of the virtual interface.</p>
    # @option params [String] :connection_id
    #   <p>The ID of the LAG or connection.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     virtual_interface_id: "VirtualInterfaceId", # required
    #     connection_id: "ConnectionId", # required
    #   }
    #   options = {}
    #   response = client.associate_virtual_interface(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     owner_account: "OwnerAccount",
    #     virtual_interface_id: "VirtualInterfaceId",
    #     location: "LocationCode",
    #     connection_id: "ConnectionId",
    #     virtual_interface_type: "VirtualInterfaceType",
    #     virtual_interface_name: "VirtualInterfaceName",
    #     vlan: 1,
    #     asn: 1,
    #     asn_long: 1,
    #     amazon_side_asn: 1,
    #     auth_key: "BGPAuthKey",
    #     amazon_address: "AmazonAddress",
    #     customer_address: "CustomerAddress",
    #     address_family: "ipv4" # One of: ["ipv4", "ipv6"],
    #     virtual_interface_state: "confirming" # One of: ["confirming", "verifying", "pending", "available", "down", "testing", "deleting", "deleted", "rejected", "unknown"],
    #     customer_router_config: "RouterConfig",
    #     mtu: 1,
    #     jumbo_frame_capable: false,
    #     virtual_gateway_id: "VirtualGatewayId",
    #     direct_connect_gateway_id: "DirectConnectGatewayId",
    #     route_filter_prefixes: [
    #       {
    #         cidr: "CIDR"
    #       }
    #     ],
    #     bgp_peers: [
    #       {
    #         bgp_peer_id: "BGPPeerId",
    #         asn: 1,
    #         asn_long: 1,
    #         auth_key: "BGPAuthKey",
    #         address_family: "ipv4" # One of: ["ipv4", "ipv6"],
    #         amazon_address: "AmazonAddress",
    #         customer_address: "CustomerAddress",
    #         bgp_peer_state: "verifying" # One of: ["verifying", "pending", "available", "deleting", "deleted"],
    #         bgp_status: "up" # One of: ["up", "down", "unknown"],
    #         aws_device_v2: "AwsDeviceV2",
    #         aws_logical_device_id: "AwsLogicalDeviceId"
    #       }
    #     ],
    #     region: "Region",
    #     aws_device_v2: "AwsDeviceV2",
    #     aws_logical_device_id: "AwsLogicalDeviceId",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ],
    #     site_link_enabled: false
    #   }
    # @return [Types::AssociateVirtualInterfaceOutput]
    def associate_virtual_interface(params = {}, options = {})
      request = build_request(:associate_virtual_interface, params)
      request.send_request(options)
    end

    # <p>Confirms the creation of the specified hosted connection on an interconnect.</p>
    #          <p>Upon creation, the hosted connection is initially in the <code>Ordering</code> state, and 
    #       remains in this state until the owner confirms creation of the hosted connection.</p>
    # @param [Hash, Types::ConfirmConnectionRequest] params
    # @option params [String] :connection_id
    #   <p>The ID of the hosted connection.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     connection_id: "ConnectionId", # required
    #   }
    #   options = {}
    #   response = client.confirm_connection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connection_state: "ordering" # One of: ["ordering", "requested", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"]
    #   }
    # @return [Types::ConfirmConnectionResponse]
    def confirm_connection(params = {}, options = {})
      request = build_request(:confirm_connection, params)
      request.send_request(options)
    end

    # <p>
    #       The confirmation of the terms of agreement when creating the connection/link aggregation group (LAG).
    #     </p>
    # @param [Hash, Types::ConfirmCustomerAgreementRequest] params
    # @option params [String] :agreement_name
    #   <p>
    #   
    #         The name of the customer agreement.
    #   
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agreement_name: "AgreementName"
    #   }
    #   options = {}
    #   response = client.confirm_customer_agreement(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "Status"
    #   }
    # @return [Types::ConfirmCustomerAgreementResponse]
    def confirm_customer_agreement(params = {}, options = {})
      request = build_request(:confirm_customer_agreement, params)
      request.send_request(options)
    end

    # <p>Accepts ownership of a private virtual interface created by another Amazon Web Services account.</p>
    #          <p>After the virtual interface owner makes this call, the virtual interface is
    #       created and attached to the specified virtual private gateway or Direct Connect gateway, and is
    #       made available to handle traffic.</p>
    # @param [Hash, Types::ConfirmPrivateVirtualInterfaceRequest] params
    # @option params [String] :virtual_interface_id
    #   <p>The ID of the virtual interface.</p>
    # @option params [String] :virtual_gateway_id
    #   <p>The ID of the virtual private gateway.</p>
    # @option params [String] :direct_connect_gateway_id
    #   <p>The ID of the Direct Connect gateway.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     virtual_interface_id: "VirtualInterfaceId", # required
    #     virtual_gateway_id: "VirtualGatewayId",
    #     direct_connect_gateway_id: "DirectConnectGatewayId"
    #   }
    #   options = {}
    #   response = client.confirm_private_virtual_interface(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     virtual_interface_state: "confirming" # One of: ["confirming", "verifying", "pending", "available", "down", "testing", "deleting", "deleted", "rejected", "unknown"]
    #   }
    # @return [Types::ConfirmPrivateVirtualInterfaceResponse]
    def confirm_private_virtual_interface(params = {}, options = {})
      request = build_request(:confirm_private_virtual_interface, params)
      request.send_request(options)
    end

    # <p>Accepts ownership of a public virtual interface created by another Amazon Web Services account.</p>
    #          <p>After the virtual interface owner makes this call, the specified virtual interface is 
    #       created and made available to handle traffic.</p>
    # @param [Hash, Types::ConfirmPublicVirtualInterfaceRequest] params
    # @option params [String] :virtual_interface_id
    #   <p>The ID of the virtual interface.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     virtual_interface_id: "VirtualInterfaceId", # required
    #   }
    #   options = {}
    #   response = client.confirm_public_virtual_interface(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     virtual_interface_state: "confirming" # One of: ["confirming", "verifying", "pending", "available", "down", "testing", "deleting", "deleted", "rejected", "unknown"]
    #   }
    # @return [Types::ConfirmPublicVirtualInterfaceResponse]
    def confirm_public_virtual_interface(params = {}, options = {})
      request = build_request(:confirm_public_virtual_interface, params)
      request.send_request(options)
    end

    # <p>Accepts ownership of a transit virtual interface created by another Amazon Web Services account.</p>
    #          <p> After the owner of the transit virtual interface makes this call, the specified transit virtual interface is created and made available to handle traffic.</p>
    # @param [Hash, Types::ConfirmTransitVirtualInterfaceRequest] params
    # @option params [String] :virtual_interface_id
    #   <p>The ID of the virtual interface.</p>
    # @option params [String] :direct_connect_gateway_id
    #   <p>The ID of the Direct Connect gateway.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     virtual_interface_id: "VirtualInterfaceId", # required
    #     direct_connect_gateway_id: "DirectConnectGatewayId", # required
    #   }
    #   options = {}
    #   response = client.confirm_transit_virtual_interface(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     virtual_interface_state: "confirming" # One of: ["confirming", "verifying", "pending", "available", "down", "testing", "deleting", "deleted", "rejected", "unknown"]
    #   }
    # @return [Types::ConfirmTransitVirtualInterfaceResponse]
    def confirm_transit_virtual_interface(params = {}, options = {})
      request = build_request(:confirm_transit_virtual_interface, params)
      request.send_request(options)
    end

    # <p>Creates a BGP peer on the specified virtual interface.</p>
    #          <p>You must create a BGP peer for the corresponding address family (IPv4/IPv6) in order to
    #       access Amazon Web Services resources that also use that address family.</p>
    #          <p>If logical redundancy is not supported by the connection, interconnect, or LAG, the BGP peer cannot 
    #       be in the same address family as an existing BGP peer on the virtual interface.</p>
    #          <p>When creating a IPv6 BGP peer, omit the Amazon address and customer address. IPv6 addresses are automatically assigned from
    #       the Amazon pool of IPv6 addresses; you cannot specify custom IPv6 addresses.</p>
    #          <important>
    #             <p>If you let Amazon Web Services auto-assign IPv4 addresses, a /30 CIDR will be allocated
    #       from 169.254.0.0/16. Amazon Web Services does not recommend this option if you intend to use
    #       the customer router peer IP address as the source and destination for traffic. Instead you
    #       should use RFC 1918 or other addressing, and specify the address yourself. For more
    #       information about RFC 1918 see <a href="https://datatracker.ietf.org/doc/html/rfc1918">
    #         Address Allocation for Private Internets</a>.</p>
    #          </important>
    #          <p>For a public virtual interface, the Autonomous System Number (ASN) must be private or already on the allow list for the virtual interface.</p>
    # @param [Hash, Types::CreateBGPPeerRequest] params
    # @option params [String] :virtual_interface_id
    #   <p>The ID of the virtual interface.</p>
    # @option params [Types::NewBGPPeer] :new_bgp_peer
    #   <p>Information about the BGP peer.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     virtual_interface_id: "VirtualInterfaceId",
    #     new_bgp_peer: {
    #       asn: 1,
    #       asn_long: 1,
    #       auth_key: "BGPAuthKey",
    #       address_family: "ipv4" # One of: ["ipv4", "ipv6"],
    #       amazon_address: "AmazonAddress",
    #       customer_address: "CustomerAddress"
    #     }
    #   }
    #   options = {}
    #   response = client.create_bgp_peer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     virtual_interface: {
    #       owner_account: "OwnerAccount",
    #       virtual_interface_id: "VirtualInterfaceId",
    #       location: "LocationCode",
    #       connection_id: "ConnectionId",
    #       virtual_interface_type: "VirtualInterfaceType",
    #       virtual_interface_name: "VirtualInterfaceName",
    #       vlan: 1,
    #       asn: 1,
    #       asn_long: 1,
    #       amazon_side_asn: 1,
    #       auth_key: "BGPAuthKey",
    #       amazon_address: "AmazonAddress",
    #       customer_address: "CustomerAddress",
    #       address_family: "ipv4" # One of: ["ipv4", "ipv6"],
    #       virtual_interface_state: "confirming" # One of: ["confirming", "verifying", "pending", "available", "down", "testing", "deleting", "deleted", "rejected", "unknown"],
    #       customer_router_config: "RouterConfig",
    #       mtu: 1,
    #       jumbo_frame_capable: false,
    #       virtual_gateway_id: "VirtualGatewayId",
    #       direct_connect_gateway_id: "DirectConnectGatewayId",
    #       route_filter_prefixes: [
    #         {
    #           cidr: "CIDR"
    #         }
    #       ],
    #       bgp_peers: [
    #         {
    #           bgp_peer_id: "BGPPeerId",
    #           asn: 1,
    #           asn_long: 1,
    #           auth_key: "BGPAuthKey",
    #           address_family: "ipv4" # One of: ["ipv4", "ipv6"],
    #           amazon_address: "AmazonAddress",
    #           customer_address: "CustomerAddress",
    #           bgp_peer_state: "verifying" # One of: ["verifying", "pending", "available", "deleting", "deleted"],
    #           bgp_status: "up" # One of: ["up", "down", "unknown"],
    #           aws_device_v2: "AwsDeviceV2",
    #           aws_logical_device_id: "AwsLogicalDeviceId"
    #         }
    #       ],
    #       region: "Region",
    #       aws_device_v2: "AwsDeviceV2",
    #       aws_logical_device_id: "AwsLogicalDeviceId",
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue"
    #         }
    #       ],
    #       site_link_enabled: false
    #     }
    #   }
    # @return [Types::CreateBGPPeerResponse]
    def create_bgp_peer(params = {}, options = {})
      request = build_request(:create_bgp_peer, params)
      request.send_request(options)
    end

    # <p>Creates a connection between a customer network and a specific Direct Connect location.</p>
    #          <p>A connection links your internal network to an Direct Connect location over a standard Ethernet fiber-optic 
    #       cable. One end of the cable is connected to your router, the other to an Direct Connect router.</p>
    #          <p>To find the locations for your Region, use <a>DescribeLocations</a>.</p>
    #          <p>You can automatically add the new connection to a link aggregation group (LAG) by
    #       specifying a LAG ID in the request. This ensures that the new connection is allocated on the
    #       same Direct Connect endpoint that hosts the specified LAG. If there are no available ports on the endpoint, 
    #       the request fails and no connection is created.</p>
    # @param [Hash, Types::CreateConnectionRequest] params
    # @option params [String] :location
    #   <p>The location of the connection.</p>
    # @option params [String] :bandwidth
    #   <p>The bandwidth of the connection.</p>
    # @option params [String] :connection_name
    #   <p>The name of the connection.</p>
    # @option params [String] :lag_id
    #   <p>The ID of the LAG.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to associate with the lag.</p>
    # @option params [String] :provider_name
    #   <p>The name of the service provider associated with the requested connection.</p>
    # @option params [Boolean] :request_mac_sec
    #   <p>Indicates whether you want the connection to support MAC Security (MACsec).</p>
    #            <p>MAC Security (MACsec) is unavailable on hosted connections. For information about MAC Security (MACsec) prerequisites, see  <a href="https://docs.aws.amazon.com/directconnect/latest/UserGuide/MACSec.html">MAC Security in Direct Connect</a> in the <i>Direct Connect User Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     location: "LocationCode", # required
    #     bandwidth: "Bandwidth", # required
    #     connection_name: "ConnectionName", # required
    #     lag_id: "LagId",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ],
    #     provider_name: "ProviderName",
    #     request_mac_sec: false
    #   }
    #   options = {}
    #   response = client.create_connection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     owner_account: "OwnerAccount",
    #     connection_id: "ConnectionId",
    #     connection_name: "ConnectionName",
    #     connection_state: "ordering" # One of: ["ordering", "requested", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"],
    #     region: "Region",
    #     location: "LocationCode",
    #     bandwidth: "Bandwidth",
    #     vlan: 1,
    #     partner_name: "PartnerName",
    #     loa_issue_time: Time.now,
    #     lag_id: "LagId",
    #     aws_device: "AwsDevice",
    #     jumbo_frame_capable: false,
    #     aws_device_v2: "AwsDeviceV2",
    #     aws_logical_device_id: "AwsLogicalDeviceId",
    #     has_logical_redundancy: "unknown" # One of: ["unknown", "yes", "no"],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ],
    #     provider_name: "ProviderName",
    #     mac_sec_capable: false,
    #     port_encryption_status: "PortEncryptionStatus",
    #     encryption_mode: "EncryptionMode",
    #     mac_sec_keys: [
    #       {
    #         secret_arn: "SecretARN",
    #         ckn: "Ckn",
    #         state: "State",
    #         start_on: "StartOnDate"
    #       }
    #     ],
    #     partner_interconnect_mac_sec_capable: false
    #   }
    # @return [Types::CreateConnectionOutput]
    def create_connection(params = {}, options = {})
      request = build_request(:create_connection, params)
      request.send_request(options)
    end

    # <p>Creates a Direct Connect gateway, which is an intermediate object that enables you to connect a set 
    #       of virtual interfaces and virtual private gateways. A Direct Connect gateway is global and visible in any 
    #       Amazon Web Services Region after it is created. The virtual interfaces and virtual private gateways that 
    #       are connected through a Direct Connect gateway can be in different Amazon Web Services Regions. This enables you to
    #       connect to a VPC in any Region, regardless of the Region in which the virtual interfaces
    #       are located, and pass traffic between them.</p>
    # @param [Hash, Types::CreateDirectConnectGatewayRequest] params
    # @option params [String] :direct_connect_gateway_name
    #   <p>The name of the Direct Connect gateway.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The key-value pair tags associated with the request.</p>
    # @option params [Integer] :amazon_side_asn
    #   <p>The autonomous system number (ASN) for Border Gateway Protocol (BGP) to be configured
    #         on the Amazon side of the connection. The ASN must be in the private range of 64,512 to
    #         65,534 or 4,200,000,000 to 4,294,967,294. The default is 64512.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     direct_connect_gateway_name: "DirectConnectGatewayName", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ],
    #     amazon_side_asn: 1
    #   }
    #   options = {}
    #   response = client.create_direct_connect_gateway(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     direct_connect_gateway: {
    #       direct_connect_gateway_id: "DirectConnectGatewayId",
    #       direct_connect_gateway_name: "DirectConnectGatewayName",
    #       amazon_side_asn: 1,
    #       owner_account: "OwnerAccount",
    #       direct_connect_gateway_state: "pending" # One of: ["pending", "available", "deleting", "deleted"],
    #       state_change_error: "StateChangeError",
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::CreateDirectConnectGatewayResult]
    def create_direct_connect_gateway(params = {}, options = {})
      request = build_request(:create_direct_connect_gateway, params)
      request.send_request(options)
    end

    # <p>Creates an association between a Direct Connect gateway and a virtual private gateway. The virtual
    #       private gateway must be attached to a VPC and must not be associated with another Direct Connect gateway.</p>
    # @param [Hash, Types::CreateDirectConnectGatewayAssociationRequest] params
    # @option params [String] :direct_connect_gateway_id
    #   <p>The ID of the Direct Connect gateway.</p>
    # @option params [String] :gateway_id
    #   <p>The ID of the virtual private gateway or transit gateway.</p>
    # @option params [Array<Types::RouteFilterPrefix>] :add_allowed_prefixes_to_direct_connect_gateway
    #   <p>The Amazon VPC prefixes to advertise to the Direct Connect gateway</p>
    #            <p>This parameter is required when you create an association to a transit gateway.</p>
    #            <p>For information about how to set the prefixes, see <a href="https://docs.aws.amazon.com/directconnect/latest/UserGuide/multi-account-associate-vgw.html#allowed-prefixes">Allowed Prefixes</a> in the <i>Direct Connect User Guide</i>.</p>
    # @option params [String] :virtual_gateway_id
    #   <p>The ID of the virtual private gateway.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     direct_connect_gateway_id: "DirectConnectGatewayId", # required
    #     gateway_id: "GatewayIdToAssociate",
    #     add_allowed_prefixes_to_direct_connect_gateway: [
    #       {
    #         cidr: "CIDR"
    #       }
    #     ],
    #     virtual_gateway_id: "VirtualGatewayId"
    #   }
    #   options = {}
    #   response = client.create_direct_connect_gateway_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     direct_connect_gateway_association: {
    #       direct_connect_gateway_id: "DirectConnectGatewayId",
    #       direct_connect_gateway_owner_account: "OwnerAccount",
    #       association_state: "associating" # One of: ["associating", "associated", "disassociating", "disassociated", "updating"],
    #       state_change_error: "StateChangeError",
    #       associated_gateway: {
    #         id: "GatewayIdentifier",
    #         type: "virtualPrivateGateway" # One of: ["virtualPrivateGateway", "transitGateway"],
    #         owner_account: "OwnerAccount",
    #         region: "Region"
    #       },
    #       association_id: "DirectConnectGatewayAssociationId",
    #       allowed_prefixes_to_direct_connect_gateway: [
    #         {
    #           cidr: "CIDR"
    #         }
    #       ],
    #       associated_core_network: {
    #         id: "CoreNetworkIdentifier",
    #         owner_account: "OwnerAccount",
    #         attachment_id: "CoreNetworkAttachmentId"
    #       },
    #       virtual_gateway_id: "VirtualGatewayId",
    #       virtual_gateway_region: "VirtualGatewayRegion",
    #       virtual_gateway_owner_account: "OwnerAccount"
    #     }
    #   }
    # @return [Types::CreateDirectConnectGatewayAssociationResult]
    def create_direct_connect_gateway_association(params = {}, options = {})
      request = build_request(:create_direct_connect_gateway_association, params)
      request.send_request(options)
    end

    # <p>Creates a proposal to associate the specified virtual private gateway or transit gateway with the specified Direct Connect gateway.</p>
    #          <p>You can associate a Direct Connect gateway and virtual private gateway or transit gateway that is owned by any Amazon Web Services account. </p>
    # @param [Hash, Types::CreateDirectConnectGatewayAssociationProposalRequest] params
    # @option params [String] :direct_connect_gateway_id
    #   <p>The ID of the Direct Connect gateway.</p>
    # @option params [String] :direct_connect_gateway_owner_account
    #   <p>The ID of the Amazon Web Services account that owns the Direct Connect gateway.</p>
    # @option params [String] :gateway_id
    #   <p>The ID of the virtual private gateway or transit gateway.</p>
    # @option params [Array<Types::RouteFilterPrefix>] :add_allowed_prefixes_to_direct_connect_gateway
    #   <p>The Amazon VPC prefixes to advertise to the Direct Connect gateway.</p>
    # @option params [Array<Types::RouteFilterPrefix>] :remove_allowed_prefixes_to_direct_connect_gateway
    #   <p>The Amazon VPC prefixes to no longer advertise to the Direct Connect gateway.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     direct_connect_gateway_id: "DirectConnectGatewayId", # required
    #     direct_connect_gateway_owner_account: "OwnerAccount", # required
    #     gateway_id: "GatewayIdToAssociate", # required
    #     add_allowed_prefixes_to_direct_connect_gateway: [
    #       {
    #         cidr: "CIDR"
    #       }
    #     ],
    #     remove_allowed_prefixes_to_direct_connect_gateway: [
    #       {
    #         cidr: "CIDR"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_direct_connect_gateway_association_proposal(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     direct_connect_gateway_association_proposal: {
    #       proposal_id: "DirectConnectGatewayAssociationProposalId",
    #       direct_connect_gateway_id: "DirectConnectGatewayId",
    #       direct_connect_gateway_owner_account: "OwnerAccount",
    #       proposal_state: "requested" # One of: ["requested", "accepted", "deleted"],
    #       associated_gateway: {
    #         id: "GatewayIdentifier",
    #         type: "virtualPrivateGateway" # One of: ["virtualPrivateGateway", "transitGateway"],
    #         owner_account: "OwnerAccount",
    #         region: "Region"
    #       },
    #       existing_allowed_prefixes_to_direct_connect_gateway: [
    #         {
    #           cidr: "CIDR"
    #         }
    #       ],
    #       requested_allowed_prefixes_to_direct_connect_gateway: [
    #         {
    #           cidr: "CIDR"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::CreateDirectConnectGatewayAssociationProposalResult]
    def create_direct_connect_gateway_association_proposal(params = {}, options = {})
      request = build_request(:create_direct_connect_gateway_association_proposal, params)
      request.send_request(options)
    end

    # <p>Creates an interconnect between an Direct Connect Partner's network and a specific Direct Connect location.</p>
    #          <p>An interconnect is a connection that is capable of hosting other connections. The 
    #       Direct Connect Partner can use an interconnect to provide Direct Connect hosted
    #       connections to customers through their own network services. Like a standard connection, an
    #       interconnect links the partner's network to an Direct Connect location over a standard Ethernet
    #       fiber-optic cable. One end is connected to the partner's router, the other to an Direct Connect
    #       router.</p>
    #          <p>You can automatically add the new interconnect to a link aggregation group (LAG) by
    #       specifying a LAG ID in the request. This ensures that the new interconnect is allocated on
    #       the same Direct Connect endpoint that hosts the specified LAG. If there are no available ports on the 
    #       endpoint, the request fails and no interconnect is created.</p>
    #          <p>For each end customer, the Direct Connect Partner provisions a connection on their interconnect by calling <a>AllocateHostedConnection</a>.
    #       The end customer can then connect to Amazon Web Services resources by creating a virtual interface on their connection, using the VLAN assigned to them by the Direct Connect Partner.</p>
    #          <note>
    #             <p>Intended for use by Direct Connect Partners only.</p>
    #          </note>
    # @param [Hash, Types::CreateInterconnectRequest] params
    # @option params [String] :interconnect_name
    #   <p>The name of the interconnect.</p>
    # @option params [String] :bandwidth
    #   <p>The port bandwidth, in Gbps. The possible values are 1, 10, and 100.</p>
    # @option params [String] :location
    #   <p>The location of the interconnect.</p>
    # @option params [String] :lag_id
    #   <p>The ID of the LAG.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to associate with the interconnect.</p>
    # @option params [String] :provider_name
    #   <p>The name of the service provider associated with the interconnect.</p>
    # @option params [Boolean] :request_mac_sec
    #   <p>Indicates whether you want the interconnect to support MAC Security (MACsec).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     interconnect_name: "InterconnectName", # required
    #     bandwidth: "Bandwidth", # required
    #     location: "LocationCode", # required
    #     lag_id: "LagId",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ],
    #     provider_name: "ProviderName",
    #     request_mac_sec: false
    #   }
    #   options = {}
    #   response = client.create_interconnect(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     interconnect_id: "InterconnectId",
    #     interconnect_name: "InterconnectName",
    #     interconnect_state: "requested" # One of: ["requested", "pending", "available", "down", "deleting", "deleted", "unknown"],
    #     region: "Region",
    #     location: "LocationCode",
    #     bandwidth: "Bandwidth",
    #     loa_issue_time: Time.now,
    #     lag_id: "LagId",
    #     aws_device: "AwsDevice",
    #     jumbo_frame_capable: false,
    #     aws_device_v2: "AwsDeviceV2",
    #     aws_logical_device_id: "AwsLogicalDeviceId",
    #     has_logical_redundancy: "unknown" # One of: ["unknown", "yes", "no"],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ],
    #     provider_name: "ProviderName",
    #     mac_sec_capable: false,
    #     port_encryption_status: "PortEncryptionStatus",
    #     encryption_mode: "EncryptionMode",
    #     mac_sec_keys: [
    #       {
    #         secret_arn: "SecretARN",
    #         ckn: "Ckn",
    #         state: "State",
    #         start_on: "StartOnDate"
    #       }
    #     ]
    #   }
    # @return [Types::CreateInterconnectOutput]
    def create_interconnect(params = {}, options = {})
      request = build_request(:create_interconnect, params)
      request.send_request(options)
    end

    # <p>Creates a link aggregation group (LAG) with the specified number of bundled
    #       physical dedicated connections between the customer network and a specific Direct Connect location.
    #       A LAG is a logical interface that uses the Link Aggregation Control Protocol
    #       (LACP) to aggregate multiple interfaces, enabling you to treat them as a single 
    #       interface.</p>
    #          <p>All connections in a LAG must use the same bandwidth (either 1Gbps, 10Gbps, 100Gbps,
    #       or 400Gbps) and must terminate at the same Direct Connect endpoint.</p>
    #          <p>You can have up to 10 dedicated connections per location. Regardless of this limit, if you
    #       request more connections for the LAG than Direct Connect can allocate on a single endpoint, no LAG is
    #       created..</p>
    #          <p>You can specify an existing physical dedicated connection or interconnect to include in
    #       the LAG (which counts towards the total number of connections). Doing so interrupts the
    #       current physical dedicated connection, and re-establishes them as a member of the LAG. The LAG
    #       will be created on the same Direct Connect endpoint to which the dedicated connection terminates. Any
    #       virtual interfaces associated with the dedicated connection are automatically disassociated
    #       and re-associated with the LAG. The connection ID does not change.</p>
    #          <p>If the Amazon Web Services account used to create a LAG is a registered Direct Connect Partner, the LAG is 
    #       automatically enabled to host sub-connections. For a LAG owned by a partner, any associated virtual 
    #       interfaces cannot be directly configured.</p>
    # @param [Hash, Types::CreateLagRequest] params
    # @option params [Integer] :number_of_connections
    #   <p>The number of physical dedicated connections initially provisioned and bundled by the LAG.
    #         You can have a maximum of four connections when the port speed is 1Gbps or 10Gbps, or two when
    #         the port speed is 100Gbps or 400Gbps.</p>
    # @option params [String] :location
    #   <p>The location for the LAG.</p>
    # @option params [String] :connections_bandwidth
    #   <p>The bandwidth of the individual physical dedicated connections bundled by the LAG. The
    #         possible values are  1Gbps,10Gbps, 100Gbps, and 400Gbps. </p>
    # @option params [String] :lag_name
    #   <p>The name of the LAG.</p>
    # @option params [String] :connection_id
    #   <p>The ID of an existing dedicated connection to migrate to the LAG.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to associate with the LAG.</p>
    # @option params [Array<Types::Tag>] :child_connection_tags
    #   <p>The tags to associate with the automtically created LAGs.</p>
    # @option params [String] :provider_name
    #   <p>The name of the service provider associated with the LAG.</p>
    # @option params [Boolean] :request_mac_sec
    #   <p>Indicates whether the connection will support MAC Security (MACsec).</p>
    #            <note>
    #               <p>All connections in the LAG must be capable of  supporting MAC Security (MACsec). For information about MAC Security (MACsec) prerequisties, see  <a href="https://docs.aws.amazon.com/directconnect/latest/UserGuide/direct-connect-mac-sec-getting-started.html#mac-sec-prerequisites">MACsec prerequisties</a> in the <i>Direct Connect User Guide</i>.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     number_of_connections: 1, # required
    #     location: "LocationCode", # required
    #     connections_bandwidth: "Bandwidth", # required
    #     lag_name: "LagName", # required
    #     connection_id: "ConnectionId",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ],
    #     child_connection_tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ],
    #     provider_name: "ProviderName",
    #     request_mac_sec: false
    #   }
    #   options = {}
    #   response = client.create_lag(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connections_bandwidth: "Bandwidth",
    #     number_of_connections: 1,
    #     lag_id: "LagId",
    #     owner_account: "OwnerAccount",
    #     lag_name: "LagName",
    #     lag_state: "requested" # One of: ["requested", "pending", "available", "down", "deleting", "deleted", "unknown"],
    #     location: "LocationCode",
    #     region: "Region",
    #     minimum_links: 1,
    #     aws_device: "AwsDevice",
    #     aws_device_v2: "AwsDeviceV2",
    #     aws_logical_device_id: "AwsLogicalDeviceId",
    #     connections: [
    #       {
    #         owner_account: "OwnerAccount",
    #         connection_id: "ConnectionId",
    #         connection_name: "ConnectionName",
    #         connection_state: "ordering" # One of: ["ordering", "requested", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"],
    #         region: "Region",
    #         location: "LocationCode",
    #         bandwidth: "Bandwidth",
    #         vlan: 1,
    #         partner_name: "PartnerName",
    #         loa_issue_time: Time.now,
    #         lag_id: "LagId",
    #         aws_device: "AwsDevice",
    #         jumbo_frame_capable: false,
    #         aws_device_v2: "AwsDeviceV2",
    #         aws_logical_device_id: "AwsLogicalDeviceId",
    #         has_logical_redundancy: "unknown" # One of: ["unknown", "yes", "no"],
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue"
    #           }
    #         ],
    #         provider_name: "ProviderName",
    #         mac_sec_capable: false,
    #         port_encryption_status: "PortEncryptionStatus",
    #         encryption_mode: "EncryptionMode",
    #         mac_sec_keys: [
    #           {
    #             secret_arn: "SecretARN",
    #             ckn: "Ckn",
    #             state: "State",
    #             start_on: "StartOnDate"
    #           }
    #         ],
    #         partner_interconnect_mac_sec_capable: false
    #       }
    #     ],
    #     allows_hosted_connections: false,
    #     jumbo_frame_capable: false,
    #     has_logical_redundancy: "unknown" # One of: ["unknown", "yes", "no"],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ],
    #     provider_name: "ProviderName",
    #     mac_sec_capable: false,
    #     encryption_mode: "EncryptionMode",
    #     mac_sec_keys: [
    #       {
    #         secret_arn: "SecretARN",
    #         ckn: "Ckn",
    #         state: "State",
    #         start_on: "StartOnDate"
    #       }
    #     ]
    #   }
    # @return [Types::CreateLagOutput]
    def create_lag(params = {}, options = {})
      request = build_request(:create_lag, params)
      request.send_request(options)
    end

    # <p>Creates a private virtual interface. A virtual interface is the VLAN that transports Direct Connect traffic.
    #       A private virtual interface can be connected to either a Direct Connect gateway or a Virtual Private Gateway (VGW).
    #       Connecting the private virtual interface to a Direct Connect gateway enables the possibility for connecting to multiple 
    #       VPCs, including VPCs in different Amazon Web Services Regions. Connecting the private virtual interface 
    #       to a VGW only provides access to a single VPC within the same Region.</p>
    #          <p>Setting the MTU of a virtual interface to 8500 (jumbo frames) can cause an update to
    #       the underlying physical connection if it wasn't updated to support jumbo frames. Updating 
    #       the connection disrupts network connectivity for all virtual interfaces associated with 
    #       the connection for up to 30 seconds. To check whether your connection supports jumbo 
    #       frames, call <a>DescribeConnections</a>. To check whether your virtual 
    #       interface supports jumbo frames, call <a>DescribeVirtualInterfaces</a>.</p>
    # @param [Hash, Types::CreatePrivateVirtualInterfaceRequest] params
    # @option params [String] :connection_id
    #   <p>The ID of the connection.</p>
    # @option params [Types::NewPrivateVirtualInterface] :new_private_virtual_interface
    #   <p>Information about the private virtual interface.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     connection_id: "ConnectionId", # required
    #     new_private_virtual_interface: { # required
    #       virtual_interface_name: "VirtualInterfaceName", # required
    #       vlan: 1, # required
    #       asn: 1,
    #       asn_long: 1,
    #       mtu: 1,
    #       auth_key: "BGPAuthKey",
    #       amazon_address: "AmazonAddress",
    #       customer_address: "CustomerAddress",
    #       address_family: "ipv4" # One of: ["ipv4", "ipv6"],
    #       virtual_gateway_id: "VirtualGatewayId",
    #       direct_connect_gateway_id: "DirectConnectGatewayId",
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue"
    #         }
    #       ],
    #       enable_site_link: false
    #     }
    #   }
    #   options = {}
    #   response = client.create_private_virtual_interface(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     owner_account: "OwnerAccount",
    #     virtual_interface_id: "VirtualInterfaceId",
    #     location: "LocationCode",
    #     connection_id: "ConnectionId",
    #     virtual_interface_type: "VirtualInterfaceType",
    #     virtual_interface_name: "VirtualInterfaceName",
    #     vlan: 1,
    #     asn: 1,
    #     asn_long: 1,
    #     amazon_side_asn: 1,
    #     auth_key: "BGPAuthKey",
    #     amazon_address: "AmazonAddress",
    #     customer_address: "CustomerAddress",
    #     address_family: "ipv4" # One of: ["ipv4", "ipv6"],
    #     virtual_interface_state: "confirming" # One of: ["confirming", "verifying", "pending", "available", "down", "testing", "deleting", "deleted", "rejected", "unknown"],
    #     customer_router_config: "RouterConfig",
    #     mtu: 1,
    #     jumbo_frame_capable: false,
    #     virtual_gateway_id: "VirtualGatewayId",
    #     direct_connect_gateway_id: "DirectConnectGatewayId",
    #     route_filter_prefixes: [
    #       {
    #         cidr: "CIDR"
    #       }
    #     ],
    #     bgp_peers: [
    #       {
    #         bgp_peer_id: "BGPPeerId",
    #         asn: 1,
    #         asn_long: 1,
    #         auth_key: "BGPAuthKey",
    #         address_family: "ipv4" # One of: ["ipv4", "ipv6"],
    #         amazon_address: "AmazonAddress",
    #         customer_address: "CustomerAddress",
    #         bgp_peer_state: "verifying" # One of: ["verifying", "pending", "available", "deleting", "deleted"],
    #         bgp_status: "up" # One of: ["up", "down", "unknown"],
    #         aws_device_v2: "AwsDeviceV2",
    #         aws_logical_device_id: "AwsLogicalDeviceId"
    #       }
    #     ],
    #     region: "Region",
    #     aws_device_v2: "AwsDeviceV2",
    #     aws_logical_device_id: "AwsLogicalDeviceId",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ],
    #     site_link_enabled: false
    #   }
    # @return [Types::CreatePrivateVirtualInterfaceOutput]
    def create_private_virtual_interface(params = {}, options = {})
      request = build_request(:create_private_virtual_interface, params)
      request.send_request(options)
    end

    # <p>Creates a public virtual interface. A virtual interface is the VLAN that transports Direct Connect traffic.
    #       A public virtual interface supports sending traffic to public services of Amazon Web Services such as Amazon S3.</p>
    #          <p>When creating an IPv6 public virtual interface (<code>addressFamily</code> is <code>ipv6</code>), leave the <code>customer</code>
    #       and <code>amazon</code> address fields blank to use auto-assigned IPv6 space. Custom IPv6 addresses are not supported.</p>
    # @param [Hash, Types::CreatePublicVirtualInterfaceRequest] params
    # @option params [String] :connection_id
    #   <p>The ID of the connection.</p>
    # @option params [Types::NewPublicVirtualInterface] :new_public_virtual_interface
    #   <p>Information about the public virtual interface.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     connection_id: "ConnectionId", # required
    #     new_public_virtual_interface: { # required
    #       virtual_interface_name: "VirtualInterfaceName", # required
    #       vlan: 1, # required
    #       asn: 1,
    #       asn_long: 1,
    #       auth_key: "BGPAuthKey",
    #       amazon_address: "AmazonAddress",
    #       customer_address: "CustomerAddress",
    #       address_family: "ipv4" # One of: ["ipv4", "ipv6"],
    #       route_filter_prefixes: [
    #         {
    #           cidr: "CIDR"
    #         }
    #       ],
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue"
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.create_public_virtual_interface(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     owner_account: "OwnerAccount",
    #     virtual_interface_id: "VirtualInterfaceId",
    #     location: "LocationCode",
    #     connection_id: "ConnectionId",
    #     virtual_interface_type: "VirtualInterfaceType",
    #     virtual_interface_name: "VirtualInterfaceName",
    #     vlan: 1,
    #     asn: 1,
    #     asn_long: 1,
    #     amazon_side_asn: 1,
    #     auth_key: "BGPAuthKey",
    #     amazon_address: "AmazonAddress",
    #     customer_address: "CustomerAddress",
    #     address_family: "ipv4" # One of: ["ipv4", "ipv6"],
    #     virtual_interface_state: "confirming" # One of: ["confirming", "verifying", "pending", "available", "down", "testing", "deleting", "deleted", "rejected", "unknown"],
    #     customer_router_config: "RouterConfig",
    #     mtu: 1,
    #     jumbo_frame_capable: false,
    #     virtual_gateway_id: "VirtualGatewayId",
    #     direct_connect_gateway_id: "DirectConnectGatewayId",
    #     route_filter_prefixes: [
    #       {
    #         cidr: "CIDR"
    #       }
    #     ],
    #     bgp_peers: [
    #       {
    #         bgp_peer_id: "BGPPeerId",
    #         asn: 1,
    #         asn_long: 1,
    #         auth_key: "BGPAuthKey",
    #         address_family: "ipv4" # One of: ["ipv4", "ipv6"],
    #         amazon_address: "AmazonAddress",
    #         customer_address: "CustomerAddress",
    #         bgp_peer_state: "verifying" # One of: ["verifying", "pending", "available", "deleting", "deleted"],
    #         bgp_status: "up" # One of: ["up", "down", "unknown"],
    #         aws_device_v2: "AwsDeviceV2",
    #         aws_logical_device_id: "AwsLogicalDeviceId"
    #       }
    #     ],
    #     region: "Region",
    #     aws_device_v2: "AwsDeviceV2",
    #     aws_logical_device_id: "AwsLogicalDeviceId",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ],
    #     site_link_enabled: false
    #   }
    # @return [Types::CreatePublicVirtualInterfaceOutput]
    def create_public_virtual_interface(params = {}, options = {})
      request = build_request(:create_public_virtual_interface, params)
      request.send_request(options)
    end

    # <p>Creates a transit virtual interface. A transit virtual interface should be used to access one or more transit gateways associated with Direct Connect gateways. A transit virtual interface enables the connection of multiple VPCs attached to a transit gateway to a Direct Connect gateway.</p>
    #          <important>
    #             <p>If you associate your transit gateway with one or more Direct Connect gateways, the Autonomous System Number (ASN) used by the transit gateway and the Direct Connect gateway must be different. For example, if you use the default ASN 64512 for both your the transit gateway and Direct Connect gateway, the association request fails.</p>
    #          </important>
    #          <p>A jumbo MTU value must be either 1500 or 8500. No other values will be accepted. Setting
    #       the MTU of a virtual interface to 8500 (jumbo frames) can cause an update to the underlying
    #       physical connection if it wasn't updated to support jumbo frames. Updating the connection
    #       disrupts network connectivity for all virtual interfaces associated with the connection for up
    #       to 30 seconds. To check whether your connection supports jumbo frames, call <a>DescribeConnections</a>. To check whether your virtual interface supports jumbo
    #       frames, call <a>DescribeVirtualInterfaces</a>.</p>
    # @param [Hash, Types::CreateTransitVirtualInterfaceRequest] params
    # @option params [String] :connection_id
    #   <p>The ID of the connection.</p>
    # @option params [Types::NewTransitVirtualInterface] :new_transit_virtual_interface
    #   <p>Information about the transit virtual interface.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     connection_id: "ConnectionId", # required
    #     new_transit_virtual_interface: { # required
    #       virtual_interface_name: "VirtualInterfaceName",
    #       vlan: 1,
    #       asn: 1,
    #       asn_long: 1,
    #       mtu: 1,
    #       auth_key: "BGPAuthKey",
    #       amazon_address: "AmazonAddress",
    #       customer_address: "CustomerAddress",
    #       address_family: "ipv4" # One of: ["ipv4", "ipv6"],
    #       direct_connect_gateway_id: "DirectConnectGatewayId",
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue"
    #         }
    #       ],
    #       enable_site_link: false
    #     }
    #   }
    #   options = {}
    #   response = client.create_transit_virtual_interface(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     virtual_interface: {
    #       owner_account: "OwnerAccount",
    #       virtual_interface_id: "VirtualInterfaceId",
    #       location: "LocationCode",
    #       connection_id: "ConnectionId",
    #       virtual_interface_type: "VirtualInterfaceType",
    #       virtual_interface_name: "VirtualInterfaceName",
    #       vlan: 1,
    #       asn: 1,
    #       asn_long: 1,
    #       amazon_side_asn: 1,
    #       auth_key: "BGPAuthKey",
    #       amazon_address: "AmazonAddress",
    #       customer_address: "CustomerAddress",
    #       address_family: "ipv4" # One of: ["ipv4", "ipv6"],
    #       virtual_interface_state: "confirming" # One of: ["confirming", "verifying", "pending", "available", "down", "testing", "deleting", "deleted", "rejected", "unknown"],
    #       customer_router_config: "RouterConfig",
    #       mtu: 1,
    #       jumbo_frame_capable: false,
    #       virtual_gateway_id: "VirtualGatewayId",
    #       direct_connect_gateway_id: "DirectConnectGatewayId",
    #       route_filter_prefixes: [
    #         {
    #           cidr: "CIDR"
    #         }
    #       ],
    #       bgp_peers: [
    #         {
    #           bgp_peer_id: "BGPPeerId",
    #           asn: 1,
    #           asn_long: 1,
    #           auth_key: "BGPAuthKey",
    #           address_family: "ipv4" # One of: ["ipv4", "ipv6"],
    #           amazon_address: "AmazonAddress",
    #           customer_address: "CustomerAddress",
    #           bgp_peer_state: "verifying" # One of: ["verifying", "pending", "available", "deleting", "deleted"],
    #           bgp_status: "up" # One of: ["up", "down", "unknown"],
    #           aws_device_v2: "AwsDeviceV2",
    #           aws_logical_device_id: "AwsLogicalDeviceId"
    #         }
    #       ],
    #       region: "Region",
    #       aws_device_v2: "AwsDeviceV2",
    #       aws_logical_device_id: "AwsLogicalDeviceId",
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue"
    #         }
    #       ],
    #       site_link_enabled: false
    #     }
    #   }
    # @return [Types::CreateTransitVirtualInterfaceResult]
    def create_transit_virtual_interface(params = {}, options = {})
      request = build_request(:create_transit_virtual_interface, params)
      request.send_request(options)
    end

    # <p>Deletes the specified BGP peer on the specified virtual interface with the specified customer address and ASN.</p>
    #          <p>You cannot delete the last BGP peer from a virtual interface.</p>
    # @param [Hash, Types::DeleteBGPPeerRequest] params
    # @option params [String] :virtual_interface_id
    #   <p>The ID of the virtual interface.</p>
    # @option params [Integer] :asn
    #   <p>The autonomous system number (ASN). The valid range is from 1 to 2147483646 for Border Gateway Protocol (BGP) configuration. If you provide a number greater than the maximum, an error is returned. Use <code>asnLong</code> instead.</p>
    #            <note>
    #               <p>You can use <code>asnLong</code> or <code>asn</code>, but not both. We recommend using <code>asnLong</code> as it supports a greater pool of numbers. </p>
    #               <ul>
    #                  <li>
    #                     <p>The <code>asnLong</code> attribute accepts both ASN and long ASN
    #                               ranges.</p>
    #                  </li>
    #                  <li>
    #                     <p>If you provide a value in the same API call for both <code>asn</code>
    #                               and <code>asnLong</code>, the API will only accept the value for
    #                                   <code>asnLong</code>.</p>
    #                  </li>
    #               </ul>
    #            </note>
    # @option params [Integer] :asn_long
    #   <p>The long ASN for the BGP peer to be deleted from a Direct Connect virtual interface. The valid range is from 1 to 4294967294 for BGP configuration. </p>
    #            <note>
    #               <p>You can use <code>asnLong</code> or <code>asn</code>, but not both. We recommend using <code>asnLong</code> as it supports a greater pool of numbers. </p>
    #               <ul>
    #                  <li>
    #                     <p>The <code>asnLong</code> attribute accepts both ASN and long ASN
    #                               ranges.</p>
    #                  </li>
    #                  <li>
    #                     <p>If you provide a value in the same API call for both <code>asn</code>
    #                               and <code>asnLong</code>, the API will only accept the value for
    #                                   <code>asnLong</code>.</p>
    #                  </li>
    #               </ul>
    #            </note>
    # @option params [String] :customer_address
    #   <p>The IP address assigned to the customer interface.</p>
    # @option params [String] :bgp_peer_id
    #   <p>The ID of the BGP peer.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     virtual_interface_id: "VirtualInterfaceId",
    #     asn: 1,
    #     asn_long: 1,
    #     customer_address: "CustomerAddress",
    #     bgp_peer_id: "BGPPeerId"
    #   }
    #   options = {}
    #   response = client.delete_bgp_peer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     virtual_interface: {
    #       owner_account: "OwnerAccount",
    #       virtual_interface_id: "VirtualInterfaceId",
    #       location: "LocationCode",
    #       connection_id: "ConnectionId",
    #       virtual_interface_type: "VirtualInterfaceType",
    #       virtual_interface_name: "VirtualInterfaceName",
    #       vlan: 1,
    #       asn: 1,
    #       asn_long: 1,
    #       amazon_side_asn: 1,
    #       auth_key: "BGPAuthKey",
    #       amazon_address: "AmazonAddress",
    #       customer_address: "CustomerAddress",
    #       address_family: "ipv4" # One of: ["ipv4", "ipv6"],
    #       virtual_interface_state: "confirming" # One of: ["confirming", "verifying", "pending", "available", "down", "testing", "deleting", "deleted", "rejected", "unknown"],
    #       customer_router_config: "RouterConfig",
    #       mtu: 1,
    #       jumbo_frame_capable: false,
    #       virtual_gateway_id: "VirtualGatewayId",
    #       direct_connect_gateway_id: "DirectConnectGatewayId",
    #       route_filter_prefixes: [
    #         {
    #           cidr: "CIDR"
    #         }
    #       ],
    #       bgp_peers: [
    #         {
    #           bgp_peer_id: "BGPPeerId",
    #           asn: 1,
    #           asn_long: 1,
    #           auth_key: "BGPAuthKey",
    #           address_family: "ipv4" # One of: ["ipv4", "ipv6"],
    #           amazon_address: "AmazonAddress",
    #           customer_address: "CustomerAddress",
    #           bgp_peer_state: "verifying" # One of: ["verifying", "pending", "available", "deleting", "deleted"],
    #           bgp_status: "up" # One of: ["up", "down", "unknown"],
    #           aws_device_v2: "AwsDeviceV2",
    #           aws_logical_device_id: "AwsLogicalDeviceId"
    #         }
    #       ],
    #       region: "Region",
    #       aws_device_v2: "AwsDeviceV2",
    #       aws_logical_device_id: "AwsLogicalDeviceId",
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue"
    #         }
    #       ],
    #       site_link_enabled: false
    #     }
    #   }
    # @return [Types::DeleteBGPPeerResponse]
    def delete_bgp_peer(params = {}, options = {})
      request = build_request(:delete_bgp_peer, params)
      request.send_request(options)
    end

    # <p>Deletes the specified connection.</p>
    #          <p>Deleting a connection only stops the Direct Connect port hour and data transfer charges. 
    #       If you are partnering with any third parties to connect with the Direct Connect location, 
    #       you must cancel your service with them separately.</p>
    # @param [Hash, Types::DeleteConnectionRequest] params
    # @option params [String] :connection_id
    #   <p>The ID of the connection.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     connection_id: "ConnectionId", # required
    #   }
    #   options = {}
    #   response = client.delete_connection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     owner_account: "OwnerAccount",
    #     connection_id: "ConnectionId",
    #     connection_name: "ConnectionName",
    #     connection_state: "ordering" # One of: ["ordering", "requested", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"],
    #     region: "Region",
    #     location: "LocationCode",
    #     bandwidth: "Bandwidth",
    #     vlan: 1,
    #     partner_name: "PartnerName",
    #     loa_issue_time: Time.now,
    #     lag_id: "LagId",
    #     aws_device: "AwsDevice",
    #     jumbo_frame_capable: false,
    #     aws_device_v2: "AwsDeviceV2",
    #     aws_logical_device_id: "AwsLogicalDeviceId",
    #     has_logical_redundancy: "unknown" # One of: ["unknown", "yes", "no"],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ],
    #     provider_name: "ProviderName",
    #     mac_sec_capable: false,
    #     port_encryption_status: "PortEncryptionStatus",
    #     encryption_mode: "EncryptionMode",
    #     mac_sec_keys: [
    #       {
    #         secret_arn: "SecretARN",
    #         ckn: "Ckn",
    #         state: "State",
    #         start_on: "StartOnDate"
    #       }
    #     ],
    #     partner_interconnect_mac_sec_capable: false
    #   }
    # @return [Types::DeleteConnectionOutput]
    def delete_connection(params = {}, options = {})
      request = build_request(:delete_connection, params)
      request.send_request(options)
    end

    # <p>Deletes the specified Direct Connect gateway. You must first delete all virtual interfaces that are
    #       attached to the Direct Connect gateway and disassociate all virtual private gateways associated 
    #       with the Direct Connect gateway.</p>
    # @param [Hash, Types::DeleteDirectConnectGatewayRequest] params
    # @option params [String] :direct_connect_gateway_id
    #   <p>The ID of the Direct Connect gateway.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     direct_connect_gateway_id: "DirectConnectGatewayId", # required
    #   }
    #   options = {}
    #   response = client.delete_direct_connect_gateway(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     direct_connect_gateway: {
    #       direct_connect_gateway_id: "DirectConnectGatewayId",
    #       direct_connect_gateway_name: "DirectConnectGatewayName",
    #       amazon_side_asn: 1,
    #       owner_account: "OwnerAccount",
    #       direct_connect_gateway_state: "pending" # One of: ["pending", "available", "deleting", "deleted"],
    #       state_change_error: "StateChangeError",
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::DeleteDirectConnectGatewayResult]
    def delete_direct_connect_gateway(params = {}, options = {})
      request = build_request(:delete_direct_connect_gateway, params)
      request.send_request(options)
    end

    # <p>Deletes the association between the specified Direct Connect gateway and virtual private gateway.</p>
    #          <p>We recommend that you specify the <code>associationID</code> to delete the association. Alternatively, if you own virtual gateway and a Direct Connect gateway association, you can specify the <code>virtualGatewayId</code> and <code>directConnectGatewayId</code> to delete an association.</p>
    # @param [Hash, Types::DeleteDirectConnectGatewayAssociationRequest] params
    # @option params [String] :association_id
    #   <p>The ID of the Direct Connect gateway association.</p>
    # @option params [String] :direct_connect_gateway_id
    #   <p>The ID of the Direct Connect gateway.</p>
    # @option params [String] :virtual_gateway_id
    #   <p>The ID of the virtual private gateway.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     association_id: "DirectConnectGatewayAssociationId",
    #     direct_connect_gateway_id: "DirectConnectGatewayId",
    #     virtual_gateway_id: "VirtualGatewayId"
    #   }
    #   options = {}
    #   response = client.delete_direct_connect_gateway_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     direct_connect_gateway_association: {
    #       direct_connect_gateway_id: "DirectConnectGatewayId",
    #       direct_connect_gateway_owner_account: "OwnerAccount",
    #       association_state: "associating" # One of: ["associating", "associated", "disassociating", "disassociated", "updating"],
    #       state_change_error: "StateChangeError",
    #       associated_gateway: {
    #         id: "GatewayIdentifier",
    #         type: "virtualPrivateGateway" # One of: ["virtualPrivateGateway", "transitGateway"],
    #         owner_account: "OwnerAccount",
    #         region: "Region"
    #       },
    #       association_id: "DirectConnectGatewayAssociationId",
    #       allowed_prefixes_to_direct_connect_gateway: [
    #         {
    #           cidr: "CIDR"
    #         }
    #       ],
    #       associated_core_network: {
    #         id: "CoreNetworkIdentifier",
    #         owner_account: "OwnerAccount",
    #         attachment_id: "CoreNetworkAttachmentId"
    #       },
    #       virtual_gateway_id: "VirtualGatewayId",
    #       virtual_gateway_region: "VirtualGatewayRegion",
    #       virtual_gateway_owner_account: "OwnerAccount"
    #     }
    #   }
    # @return [Types::DeleteDirectConnectGatewayAssociationResult]
    def delete_direct_connect_gateway_association(params = {}, options = {})
      request = build_request(:delete_direct_connect_gateway_association, params)
      request.send_request(options)
    end

    # <p>Deletes the association proposal request between the specified Direct Connect gateway and virtual private gateway or transit gateway.</p>
    # @param [Hash, Types::DeleteDirectConnectGatewayAssociationProposalRequest] params
    # @option params [String] :proposal_id
    #   <p>The ID of the proposal.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     proposal_id: "DirectConnectGatewayAssociationProposalId", # required
    #   }
    #   options = {}
    #   response = client.delete_direct_connect_gateway_association_proposal(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     direct_connect_gateway_association_proposal: {
    #       proposal_id: "DirectConnectGatewayAssociationProposalId",
    #       direct_connect_gateway_id: "DirectConnectGatewayId",
    #       direct_connect_gateway_owner_account: "OwnerAccount",
    #       proposal_state: "requested" # One of: ["requested", "accepted", "deleted"],
    #       associated_gateway: {
    #         id: "GatewayIdentifier",
    #         type: "virtualPrivateGateway" # One of: ["virtualPrivateGateway", "transitGateway"],
    #         owner_account: "OwnerAccount",
    #         region: "Region"
    #       },
    #       existing_allowed_prefixes_to_direct_connect_gateway: [
    #         {
    #           cidr: "CIDR"
    #         }
    #       ],
    #       requested_allowed_prefixes_to_direct_connect_gateway: [
    #         {
    #           cidr: "CIDR"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::DeleteDirectConnectGatewayAssociationProposalResult]
    def delete_direct_connect_gateway_association_proposal(params = {}, options = {})
      request = build_request(:delete_direct_connect_gateway_association_proposal, params)
      request.send_request(options)
    end

    # <p>Deletes the specified interconnect.</p>
    #          <note>
    #             <p>Intended for use
    #         by Direct Connect Partners only.</p>
    #          </note>
    # @param [Hash, Types::DeleteInterconnectRequest] params
    # @option params [String] :interconnect_id
    #   <p>The ID of the interconnect.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     interconnect_id: "InterconnectId", # required
    #   }
    #   options = {}
    #   response = client.delete_interconnect(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     interconnect_state: "requested" # One of: ["requested", "pending", "available", "down", "deleting", "deleted", "unknown"]
    #   }
    # @return [Types::DeleteInterconnectResponse]
    def delete_interconnect(params = {}, options = {})
      request = build_request(:delete_interconnect, params)
      request.send_request(options)
    end

    # <p>Deletes the specified link aggregation group (LAG). You cannot delete a LAG if it has active
    #       virtual interfaces or hosted connections.</p>
    # @param [Hash, Types::DeleteLagRequest] params
    # @option params [String] :lag_id
    #   <p>The ID of the LAG.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     lag_id: "LagId", # required
    #   }
    #   options = {}
    #   response = client.delete_lag(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connections_bandwidth: "Bandwidth",
    #     number_of_connections: 1,
    #     lag_id: "LagId",
    #     owner_account: "OwnerAccount",
    #     lag_name: "LagName",
    #     lag_state: "requested" # One of: ["requested", "pending", "available", "down", "deleting", "deleted", "unknown"],
    #     location: "LocationCode",
    #     region: "Region",
    #     minimum_links: 1,
    #     aws_device: "AwsDevice",
    #     aws_device_v2: "AwsDeviceV2",
    #     aws_logical_device_id: "AwsLogicalDeviceId",
    #     connections: [
    #       {
    #         owner_account: "OwnerAccount",
    #         connection_id: "ConnectionId",
    #         connection_name: "ConnectionName",
    #         connection_state: "ordering" # One of: ["ordering", "requested", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"],
    #         region: "Region",
    #         location: "LocationCode",
    #         bandwidth: "Bandwidth",
    #         vlan: 1,
    #         partner_name: "PartnerName",
    #         loa_issue_time: Time.now,
    #         lag_id: "LagId",
    #         aws_device: "AwsDevice",
    #         jumbo_frame_capable: false,
    #         aws_device_v2: "AwsDeviceV2",
    #         aws_logical_device_id: "AwsLogicalDeviceId",
    #         has_logical_redundancy: "unknown" # One of: ["unknown", "yes", "no"],
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue"
    #           }
    #         ],
    #         provider_name: "ProviderName",
    #         mac_sec_capable: false,
    #         port_encryption_status: "PortEncryptionStatus",
    #         encryption_mode: "EncryptionMode",
    #         mac_sec_keys: [
    #           {
    #             secret_arn: "SecretARN",
    #             ckn: "Ckn",
    #             state: "State",
    #             start_on: "StartOnDate"
    #           }
    #         ],
    #         partner_interconnect_mac_sec_capable: false
    #       }
    #     ],
    #     allows_hosted_connections: false,
    #     jumbo_frame_capable: false,
    #     has_logical_redundancy: "unknown" # One of: ["unknown", "yes", "no"],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ],
    #     provider_name: "ProviderName",
    #     mac_sec_capable: false,
    #     encryption_mode: "EncryptionMode",
    #     mac_sec_keys: [
    #       {
    #         secret_arn: "SecretARN",
    #         ckn: "Ckn",
    #         state: "State",
    #         start_on: "StartOnDate"
    #       }
    #     ]
    #   }
    # @return [Types::DeleteLagOutput]
    def delete_lag(params = {}, options = {})
      request = build_request(:delete_lag, params)
      request.send_request(options)
    end

    # <p>Deletes a virtual interface.</p>
    # @param [Hash, Types::DeleteVirtualInterfaceRequest] params
    # @option params [String] :virtual_interface_id
    #   <p>The ID of the virtual interface.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     virtual_interface_id: "VirtualInterfaceId", # required
    #   }
    #   options = {}
    #   response = client.delete_virtual_interface(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     virtual_interface_state: "confirming" # One of: ["confirming", "verifying", "pending", "available", "down", "testing", "deleting", "deleted", "rejected", "unknown"]
    #   }
    # @return [Types::DeleteVirtualInterfaceResponse]
    def delete_virtual_interface(params = {}, options = {})
      request = build_request(:delete_virtual_interface, params)
      request.send_request(options)
    end

    # <note>
    #             <p>Deprecated. Use <a>DescribeLoa</a> instead.</p>
    #          </note>
    #          <p>Gets the LOA-CFA for a connection.</p>
    #          <p>The Letter of Authorization - Connecting Facility Assignment (LOA-CFA) is a document that your APN partner or
    #       service provider uses when establishing your cross connect to Amazon Web Services at the colocation facility. For more information,
    #       see <a href="https://docs.aws.amazon.com/directconnect/latest/UserGuide/Colocation.html">Requesting Cross Connects
    #       at Direct Connect Locations</a> in the <i>Direct Connect User Guide</i>.</p>
    # @param [Hash, Types::DescribeConnectionLoaRequest] params
    # @option params [String] :connection_id
    #   <p>The ID of the connection.</p>
    # @option params [String] :provider_name
    #   <p>The name of the APN partner or service provider who establishes connectivity on your behalf. If you specify this parameter, 
    #         the LOA-CFA lists the provider name alongside your company name as the requester of the cross connect.</p>
    # @option params [String] :loa_content_type
    #   <p>The standard media type for the LOA-CFA document. The only supported value is application/pdf.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     connection_id: "ConnectionId", # required
    #     provider_name: "ProviderName",
    #     loa_content_type: "application/pdf" # One of: ["application/pdf"]
    #   }
    #   options = {}
    #   response = client.describe_connection_loa(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     loa: {
    #       loa_content: "data",
    #       loa_content_type: "application/pdf" # One of: ["application/pdf"]
    #     }
    #   }
    # @deprecated
    # @return [Types::DescribeConnectionLoaResponse]
    def describe_connection_loa(params = {}, options = {})
      request = build_request(:describe_connection_loa, params)
      request.send_request(options)
    end

    # <p>Displays the specified connection or all connections in this Region.</p>
    # @param [Hash, Types::DescribeConnectionsRequest] params
    # @option params [String] :connection_id
    #   <p>The ID of the connection.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return with a single call.
    #   	To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    #            <p>If <code>MaxResults</code> is given a value larger than 100, only 100 results are
    #         returned.</p>
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     connection_id: "ConnectionId",
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.describe_connections(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connections: [
    #       {
    #         owner_account: "OwnerAccount",
    #         connection_id: "ConnectionId",
    #         connection_name: "ConnectionName",
    #         connection_state: "ordering" # One of: ["ordering", "requested", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"],
    #         region: "Region",
    #         location: "LocationCode",
    #         bandwidth: "Bandwidth",
    #         vlan: 1,
    #         partner_name: "PartnerName",
    #         loa_issue_time: Time.now,
    #         lag_id: "LagId",
    #         aws_device: "AwsDevice",
    #         jumbo_frame_capable: false,
    #         aws_device_v2: "AwsDeviceV2",
    #         aws_logical_device_id: "AwsLogicalDeviceId",
    #         has_logical_redundancy: "unknown" # One of: ["unknown", "yes", "no"],
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue"
    #           }
    #         ],
    #         provider_name: "ProviderName",
    #         mac_sec_capable: false,
    #         port_encryption_status: "PortEncryptionStatus",
    #         encryption_mode: "EncryptionMode",
    #         mac_sec_keys: [
    #           {
    #             secret_arn: "SecretARN",
    #             ckn: "Ckn",
    #             state: "State",
    #             start_on: "StartOnDate"
    #           }
    #         ],
    #         partner_interconnect_mac_sec_capable: false
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::DescribeConnectionsOutput]
    def describe_connections(params = {}, options = {})
      request = build_request(:describe_connections, params)
      request.send_request(options)
    end

    # <note>
    #             <p>Deprecated. Use <a>DescribeHostedConnections</a> instead.</p>
    #          </note>
    #          <p>Lists the connections that have been provisioned on the specified interconnect.</p>
    #          <note>
    #             <p>Intended for use by Direct Connect Partners only.</p>
    #          </note>
    # @param [Hash, Types::DescribeConnectionsOnInterconnectRequest] params
    # @option params [String] :interconnect_id
    #   <p>The ID of the interconnect.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     interconnect_id: "InterconnectId", # required
    #   }
    #   options = {}
    #   response = client.describe_connections_on_interconnect(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connections: [
    #       {
    #         owner_account: "OwnerAccount",
    #         connection_id: "ConnectionId",
    #         connection_name: "ConnectionName",
    #         connection_state: "ordering" # One of: ["ordering", "requested", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"],
    #         region: "Region",
    #         location: "LocationCode",
    #         bandwidth: "Bandwidth",
    #         vlan: 1,
    #         partner_name: "PartnerName",
    #         loa_issue_time: Time.now,
    #         lag_id: "LagId",
    #         aws_device: "AwsDevice",
    #         jumbo_frame_capable: false,
    #         aws_device_v2: "AwsDeviceV2",
    #         aws_logical_device_id: "AwsLogicalDeviceId",
    #         has_logical_redundancy: "unknown" # One of: ["unknown", "yes", "no"],
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue"
    #           }
    #         ],
    #         provider_name: "ProviderName",
    #         mac_sec_capable: false,
    #         port_encryption_status: "PortEncryptionStatus",
    #         encryption_mode: "EncryptionMode",
    #         mac_sec_keys: [
    #           {
    #             secret_arn: "SecretARN",
    #             ckn: "Ckn",
    #             state: "State",
    #             start_on: "StartOnDate"
    #           }
    #         ],
    #         partner_interconnect_mac_sec_capable: false
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @deprecated
    # @return [Types::DescribeConnectionsOnInterconnectOutput]
    def describe_connections_on_interconnect(params = {}, options = {})
      request = build_request(:describe_connections_on_interconnect, params)
      request.send_request(options)
    end

    # <p>Get and view a list of customer agreements, along with their signed status and whether the customer is an NNIPartner, NNIPartnerV2, or a nonPartner. </p>
    # @param [Hash, Smithy::Schema::EmptyStructure] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.describe_customer_metadata(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     agreements: [
    #       {
    #         agreement_name: "AgreementName",
    #         status: "Status"
    #       }
    #     ],
    #     nni_partner_type: "v1" # One of: ["v1", "v2", "nonPartner"]
    #   }
    # @return [Types::DescribeCustomerMetadataResponse]
    def describe_customer_metadata(params = {}, options = {})
      request = build_request(:describe_customer_metadata, params)
      request.send_request(options)
    end

    # <p>Describes one or more association proposals for connection between a virtual private gateway or transit gateway and a Direct Connect gateway. </p>
    # @param [Hash, Types::DescribeDirectConnectGatewayAssociationProposalsRequest] params
    # @option params [String] :direct_connect_gateway_id
    #   <p>The ID of the Direct Connect gateway.</p>
    # @option params [String] :proposal_id
    #   <p>The ID of the proposal.</p>
    # @option params [String] :associated_gateway_id
    #   <p>The ID of the associated gateway.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return with a single call.
    #   	To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    #            <p>If <code>MaxResults</code> is given a value larger than 100, only 100 results are
    #         returned.</p>
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     direct_connect_gateway_id: "DirectConnectGatewayId",
    #     proposal_id: "DirectConnectGatewayAssociationProposalId",
    #     associated_gateway_id: "AssociatedGatewayId",
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.describe_direct_connect_gateway_association_proposals(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     direct_connect_gateway_association_proposals: [
    #       {
    #         proposal_id: "DirectConnectGatewayAssociationProposalId",
    #         direct_connect_gateway_id: "DirectConnectGatewayId",
    #         direct_connect_gateway_owner_account: "OwnerAccount",
    #         proposal_state: "requested" # One of: ["requested", "accepted", "deleted"],
    #         associated_gateway: {
    #           id: "GatewayIdentifier",
    #           type: "virtualPrivateGateway" # One of: ["virtualPrivateGateway", "transitGateway"],
    #           owner_account: "OwnerAccount",
    #           region: "Region"
    #         },
    #         existing_allowed_prefixes_to_direct_connect_gateway: [
    #           {
    #             cidr: "CIDR"
    #           }
    #         ],
    #         requested_allowed_prefixes_to_direct_connect_gateway: [
    #           {
    #             cidr: "CIDR"
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::DescribeDirectConnectGatewayAssociationProposalsResult]
    def describe_direct_connect_gateway_association_proposals(params = {}, options = {})
      request = build_request(:describe_direct_connect_gateway_association_proposals, params)
      request.send_request(options)
    end

    # <p>Lists the associations between your Direct Connect gateways and virtual private gateways and transit gateways. You must specify one of the following:</p>
    #          <ul>
    #             <li>
    #                <p>A Direct Connect gateway</p>
    #                <p>The response contains all virtual private gateways and transit gateways associated with the Direct Connect gateway.</p>
    #             </li>
    #             <li>
    #                <p>A virtual private gateway</p>
    #                <p>The response contains the Direct Connect gateway.</p>
    #             </li>
    #             <li>
    #                <p>A transit gateway</p>
    #                <p>The response contains the Direct Connect gateway.</p>
    #             </li>
    #             <li>
    #                <p>A Direct Connect gateway and a virtual private gateway</p>
    #                <p>The response contains the association between the Direct Connect gateway and virtual private gateway.</p>
    #             </li>
    #             <li>
    #                <p>A Direct Connect gateway and a transit gateway</p>
    #                <p>The response contains the association between the Direct Connect gateway and transit gateway.</p>
    #             </li>
    #             <li>
    #                <p>A Direct Connect gateway and a virtual private gateway</p>
    #                <p>The response contains the association between the Direct Connect gateway and virtual private gateway.</p>
    #             </li>
    #             <li>
    #                <p>A Direct Connect gateway association to a Cloud WAN core network</p>
    #                <p>The response contains the Cloud WAN core network ID that the Direct Connect gateway is associated to.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::DescribeDirectConnectGatewayAssociationsRequest] params
    # @option params [String] :association_id
    #   <p>The ID of the Direct Connect gateway association.</p>
    # @option params [String] :associated_gateway_id
    #   <p>The ID of the associated gateway.</p>
    # @option params [String] :direct_connect_gateway_id
    #   <p>The ID of the Direct Connect gateway.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return with a single call.
    #   	To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    #            <p>If <code>MaxResults</code> is given a value larger than 100, only 100 results are
    #         returned.</p>
    # @option params [String] :next_token
    #   <p>The token provided in the previous call to retrieve the next page.</p>
    # @option params [String] :virtual_gateway_id
    #   <p>The ID of the virtual private gateway or transit gateway.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     association_id: "DirectConnectGatewayAssociationId",
    #     associated_gateway_id: "AssociatedGatewayId",
    #     direct_connect_gateway_id: "DirectConnectGatewayId",
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     virtual_gateway_id: "VirtualGatewayId"
    #   }
    #   options = {}
    #   response = client.describe_direct_connect_gateway_associations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     direct_connect_gateway_associations: [
    #       {
    #         direct_connect_gateway_id: "DirectConnectGatewayId",
    #         direct_connect_gateway_owner_account: "OwnerAccount",
    #         association_state: "associating" # One of: ["associating", "associated", "disassociating", "disassociated", "updating"],
    #         state_change_error: "StateChangeError",
    #         associated_gateway: {
    #           id: "GatewayIdentifier",
    #           type: "virtualPrivateGateway" # One of: ["virtualPrivateGateway", "transitGateway"],
    #           owner_account: "OwnerAccount",
    #           region: "Region"
    #         },
    #         association_id: "DirectConnectGatewayAssociationId",
    #         allowed_prefixes_to_direct_connect_gateway: [
    #           {
    #             cidr: "CIDR"
    #           }
    #         ],
    #         associated_core_network: {
    #           id: "CoreNetworkIdentifier",
    #           owner_account: "OwnerAccount",
    #           attachment_id: "CoreNetworkAttachmentId"
    #         },
    #         virtual_gateway_id: "VirtualGatewayId",
    #         virtual_gateway_region: "VirtualGatewayRegion",
    #         virtual_gateway_owner_account: "OwnerAccount"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::DescribeDirectConnectGatewayAssociationsResult]
    def describe_direct_connect_gateway_associations(params = {}, options = {})
      request = build_request(:describe_direct_connect_gateway_associations, params)
      request.send_request(options)
    end

    # <p>Lists the attachments between your Direct Connect gateways and virtual interfaces. You must specify
    #       a Direct Connect gateway, a virtual interface, or both. If you specify a Direct Connect gateway, the response contains 
    #       all virtual interfaces attached to the Direct Connect gateway. If you specify a virtual interface, the 
    #       response contains all Direct Connect gateways attached to the virtual interface. If you specify both, 
    #       the response contains the attachment between the Direct Connect gateway and the virtual interface.</p>
    # @param [Hash, Types::DescribeDirectConnectGatewayAttachmentsRequest] params
    # @option params [String] :direct_connect_gateway_id
    #   <p>The ID of the Direct Connect gateway.</p>
    # @option params [String] :virtual_interface_id
    #   <p>The ID of the virtual interface.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return with a single call.
    #   	To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    #            <p>If <code>MaxResults</code> is given a value larger than 100, only 100 results are
    #         returned.</p>
    # @option params [String] :next_token
    #   <p>The token provided in the previous call to retrieve the next page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     direct_connect_gateway_id: "DirectConnectGatewayId",
    #     virtual_interface_id: "VirtualInterfaceId",
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.describe_direct_connect_gateway_attachments(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     direct_connect_gateway_attachments: [
    #       {
    #         direct_connect_gateway_id: "DirectConnectGatewayId",
    #         virtual_interface_id: "VirtualInterfaceId",
    #         virtual_interface_region: "VirtualInterfaceRegion",
    #         virtual_interface_owner_account: "OwnerAccount",
    #         attachment_state: "attaching" # One of: ["attaching", "attached", "detaching", "detached"],
    #         attachment_type: "TransitVirtualInterface" # One of: ["TransitVirtualInterface", "PrivateVirtualInterface"],
    #         state_change_error: "StateChangeError"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::DescribeDirectConnectGatewayAttachmentsResult]
    def describe_direct_connect_gateway_attachments(params = {}, options = {})
      request = build_request(:describe_direct_connect_gateway_attachments, params)
      request.send_request(options)
    end

    # <p>Lists all your Direct Connect gateways or only the specified Direct Connect gateway. Deleted Direct Connect gateways are not returned.</p>
    # @param [Hash, Types::DescribeDirectConnectGatewaysRequest] params
    # @option params [String] :direct_connect_gateway_id
    #   <p>The ID of the Direct Connect gateway.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return with a single call.
    #   	To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    #            <p>If <code>MaxResults</code> is given a value larger than 100, only 100 results are
    #         returned.</p>
    # @option params [String] :next_token
    #   <p>The token provided in the previous call to retrieve the next page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     direct_connect_gateway_id: "DirectConnectGatewayId",
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.describe_direct_connect_gateways(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     direct_connect_gateways: [
    #       {
    #         direct_connect_gateway_id: "DirectConnectGatewayId",
    #         direct_connect_gateway_name: "DirectConnectGatewayName",
    #         amazon_side_asn: 1,
    #         owner_account: "OwnerAccount",
    #         direct_connect_gateway_state: "pending" # One of: ["pending", "available", "deleting", "deleted"],
    #         state_change_error: "StateChangeError",
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue"
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::DescribeDirectConnectGatewaysResult]
    def describe_direct_connect_gateways(params = {}, options = {})
      request = build_request(:describe_direct_connect_gateways, params)
      request.send_request(options)
    end

    # <p>Lists the hosted connections that have been provisioned on the specified
    #       interconnect or link aggregation group (LAG).</p>
    #          <note>
    #             <p>Intended for use by Direct Connect Partners only.</p>
    #          </note>
    # @param [Hash, Types::DescribeHostedConnectionsRequest] params
    # @option params [String] :connection_id
    #   <p>The ID of the interconnect or LAG.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return with a single call.
    #   	To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    #            <p>If <code>MaxResults</code> is given a value larger than 100, only 100 results are
    #         returned.</p>
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     connection_id: "ConnectionId", # required
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.describe_hosted_connections(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connections: [
    #       {
    #         owner_account: "OwnerAccount",
    #         connection_id: "ConnectionId",
    #         connection_name: "ConnectionName",
    #         connection_state: "ordering" # One of: ["ordering", "requested", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"],
    #         region: "Region",
    #         location: "LocationCode",
    #         bandwidth: "Bandwidth",
    #         vlan: 1,
    #         partner_name: "PartnerName",
    #         loa_issue_time: Time.now,
    #         lag_id: "LagId",
    #         aws_device: "AwsDevice",
    #         jumbo_frame_capable: false,
    #         aws_device_v2: "AwsDeviceV2",
    #         aws_logical_device_id: "AwsLogicalDeviceId",
    #         has_logical_redundancy: "unknown" # One of: ["unknown", "yes", "no"],
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue"
    #           }
    #         ],
    #         provider_name: "ProviderName",
    #         mac_sec_capable: false,
    #         port_encryption_status: "PortEncryptionStatus",
    #         encryption_mode: "EncryptionMode",
    #         mac_sec_keys: [
    #           {
    #             secret_arn: "SecretARN",
    #             ckn: "Ckn",
    #             state: "State",
    #             start_on: "StartOnDate"
    #           }
    #         ],
    #         partner_interconnect_mac_sec_capable: false
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::DescribeHostedConnectionsOutput]
    def describe_hosted_connections(params = {}, options = {})
      request = build_request(:describe_hosted_connections, params)
      request.send_request(options)
    end

    # <note>
    #             <p>Deprecated. Use <a>DescribeLoa</a> instead.</p>
    #          </note>
    #          <p>Gets the LOA-CFA for the specified interconnect.</p>
    #          <p>The Letter of Authorization - Connecting Facility Assignment (LOA-CFA) is a document that is used when establishing your cross connect to Amazon Web Services at the colocation facility.
    #       For more information, see <a href="https://docs.aws.amazon.com/directconnect/latest/UserGuide/Colocation.html">Requesting Cross Connects at Direct Connect Locations</a>
    #       in the <i>Direct Connect User Guide</i>.</p>
    # @param [Hash, Types::DescribeInterconnectLoaRequest] params
    # @option params [String] :interconnect_id
    #   <p>The ID of the interconnect.</p>
    # @option params [String] :provider_name
    #   <p>The name of the service provider who establishes connectivity on your behalf. If you supply this parameter, the LOA-CFA lists the provider name alongside your company name as the requester of the cross connect.</p>
    # @option params [String] :loa_content_type
    #   <p>The standard media type for the LOA-CFA document. The only supported value is application/pdf.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     interconnect_id: "InterconnectId", # required
    #     provider_name: "ProviderName",
    #     loa_content_type: "application/pdf" # One of: ["application/pdf"]
    #   }
    #   options = {}
    #   response = client.describe_interconnect_loa(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     loa: {
    #       loa_content: "data",
    #       loa_content_type: "application/pdf" # One of: ["application/pdf"]
    #     }
    #   }
    # @deprecated
    # @return [Types::DescribeInterconnectLoaResponse]
    def describe_interconnect_loa(params = {}, options = {})
      request = build_request(:describe_interconnect_loa, params)
      request.send_request(options)
    end

    # <p>Lists the interconnects owned by the Amazon Web Services account or only the specified interconnect.</p>
    # @param [Hash, Types::DescribeInterconnectsRequest] params
    # @option params [String] :interconnect_id
    #   <p>The ID of the interconnect.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return with a single call.
    #   	To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    #            <p>If <code>MaxResults</code> is given a value larger than 100, only 100 results are
    #         returned.</p>
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     interconnect_id: "InterconnectId",
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.describe_interconnects(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     interconnects: [
    #       {
    #         interconnect_id: "InterconnectId",
    #         interconnect_name: "InterconnectName",
    #         interconnect_state: "requested" # One of: ["requested", "pending", "available", "down", "deleting", "deleted", "unknown"],
    #         region: "Region",
    #         location: "LocationCode",
    #         bandwidth: "Bandwidth",
    #         loa_issue_time: Time.now,
    #         lag_id: "LagId",
    #         aws_device: "AwsDevice",
    #         jumbo_frame_capable: false,
    #         aws_device_v2: "AwsDeviceV2",
    #         aws_logical_device_id: "AwsLogicalDeviceId",
    #         has_logical_redundancy: "unknown" # One of: ["unknown", "yes", "no"],
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue"
    #           }
    #         ],
    #         provider_name: "ProviderName",
    #         mac_sec_capable: false,
    #         port_encryption_status: "PortEncryptionStatus",
    #         encryption_mode: "EncryptionMode",
    #         mac_sec_keys: [
    #           {
    #             secret_arn: "SecretARN",
    #             ckn: "Ckn",
    #             state: "State",
    #             start_on: "StartOnDate"
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::DescribeInterconnectsOutput]
    def describe_interconnects(params = {}, options = {})
      request = build_request(:describe_interconnects, params)
      request.send_request(options)
    end

    # <p>Describes all your link aggregation groups (LAG) or the specified LAG.</p>
    # @param [Hash, Types::DescribeLagsRequest] params
    # @option params [String] :lag_id
    #   <p>The ID of the LAG.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return with a single call.
    #   	To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    #            <p>If <code>MaxResults</code> is given a value larger than 100, only 100 results are
    #         returned.</p>
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     lag_id: "LagId",
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.describe_lags(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     lags: [
    #       {
    #         connections_bandwidth: "Bandwidth",
    #         number_of_connections: 1,
    #         lag_id: "LagId",
    #         owner_account: "OwnerAccount",
    #         lag_name: "LagName",
    #         lag_state: "requested" # One of: ["requested", "pending", "available", "down", "deleting", "deleted", "unknown"],
    #         location: "LocationCode",
    #         region: "Region",
    #         minimum_links: 1,
    #         aws_device: "AwsDevice",
    #         aws_device_v2: "AwsDeviceV2",
    #         aws_logical_device_id: "AwsLogicalDeviceId",
    #         connections: [
    #           {
    #             owner_account: "OwnerAccount",
    #             connection_id: "ConnectionId",
    #             connection_name: "ConnectionName",
    #             connection_state: "ordering" # One of: ["ordering", "requested", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"],
    #             region: "Region",
    #             location: "LocationCode",
    #             bandwidth: "Bandwidth",
    #             vlan: 1,
    #             partner_name: "PartnerName",
    #             loa_issue_time: Time.now,
    #             lag_id: "LagId",
    #             aws_device: "AwsDevice",
    #             jumbo_frame_capable: false,
    #             aws_device_v2: "AwsDeviceV2",
    #             aws_logical_device_id: "AwsLogicalDeviceId",
    #             has_logical_redundancy: "unknown" # One of: ["unknown", "yes", "no"],
    #             tags: [
    #               {
    #                 key: "TagKey", # required
    #                 value: "TagValue"
    #               }
    #             ],
    #             provider_name: "ProviderName",
    #             mac_sec_capable: false,
    #             port_encryption_status: "PortEncryptionStatus",
    #             encryption_mode: "EncryptionMode",
    #             mac_sec_keys: [
    #               {
    #                 secret_arn: "SecretARN",
    #                 ckn: "Ckn",
    #                 state: "State",
    #                 start_on: "StartOnDate"
    #               }
    #             ],
    #             partner_interconnect_mac_sec_capable: false
    #           }
    #         ],
    #         allows_hosted_connections: false,
    #         jumbo_frame_capable: false,
    #         has_logical_redundancy: "unknown" # One of: ["unknown", "yes", "no"],
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue"
    #           }
    #         ],
    #         provider_name: "ProviderName",
    #         mac_sec_capable: false,
    #         encryption_mode: "EncryptionMode",
    #         mac_sec_keys: [
    #           {
    #             secret_arn: "SecretARN",
    #             ckn: "Ckn",
    #             state: "State",
    #             start_on: "StartOnDate"
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::DescribeLagsOutput]
    def describe_lags(params = {}, options = {})
      request = build_request(:describe_lags, params)
      request.send_request(options)
    end

    # <p>Gets the LOA-CFA for a connection, interconnect, or link aggregation group (LAG).</p>
    #          <p>The Letter of Authorization - Connecting Facility Assignment (LOA-CFA) is a document that is used when establishing 
    #       your cross connect to Amazon Web Services at the colocation facility. For more information, see <a href="https://docs.aws.amazon.com/directconnect/latest/UserGuide/Colocation.html">Requesting Cross Connects at Direct Connect Locations</a>
    #       in the <i>Direct Connect User Guide</i>.</p>
    # @param [Hash, Types::DescribeLoaRequest] params
    # @option params [String] :connection_id
    #   <p>The ID of a connection, LAG, or interconnect.</p>
    # @option params [String] :provider_name
    #   <p>The name of the service provider who establishes connectivity on your behalf. If you specify this parameter, the 
    #         LOA-CFA lists the provider name alongside your company name as the requester of the cross connect.</p>
    # @option params [String] :loa_content_type
    #   <p>The standard media type for the LOA-CFA document. The only supported value is application/pdf.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     connection_id: "ConnectionId", # required
    #     provider_name: "ProviderName",
    #     loa_content_type: "application/pdf" # One of: ["application/pdf"]
    #   }
    #   options = {}
    #   response = client.describe_loa(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     loa_content: "data",
    #     loa_content_type: "application/pdf" # One of: ["application/pdf"]
    #   }
    # @return [Types::DescribeLoaOutput]
    def describe_loa(params = {}, options = {})
      request = build_request(:describe_loa, params)
      request.send_request(options)
    end

    # <p>Lists the Direct Connect locations in the current Amazon Web Services Region. These are the locations that can be selected when calling
    #       <a>CreateConnection</a> or <a>CreateInterconnect</a>.</p>
    # @param [Hash, Smithy::Schema::EmptyStructure] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.describe_locations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     locations: [
    #       {
    #         location_code: "LocationCode",
    #         location_name: "LocationName",
    #         region: "Region",
    #         available_port_speeds: ["PortSpeed"],
    #         available_providers: ["ProviderName"],
    #         available_mac_sec_port_speeds: ["PortSpeed"]
    #       }
    #     ]
    #   }
    # @return [Types::DescribeLocationsOutput]
    def describe_locations(params = {}, options = {})
      request = build_request(:describe_locations, params)
      request.send_request(options)
    end

    # <p>
    #       Details about the router.
    #     </p>
    # @param [Hash, Types::DescribeRouterConfigurationRequest] params
    # @option params [String] :virtual_interface_id
    #   <p>The ID of the virtual interface.</p>
    # @option params [String] :router_type_identifier
    #   <p>Identifies the router by a combination of vendor, platform, and software version. For example, <code>CiscoSystemsInc-2900SeriesRouters-IOS124</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     virtual_interface_id: "VirtualInterfaceId", # required
    #     router_type_identifier: "RouterTypeIdentifier"
    #   }
    #   options = {}
    #   response = client.describe_router_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     customer_router_config: "RouterConfig",
    #     router: {
    #       vendor: "Vendor",
    #       platform: "Platform",
    #       software: "Software",
    #       xslt_template_name: "XsltTemplateName",
    #       xslt_template_name_for_mac_sec: "XsltTemplateNameForMacSec",
    #       router_type_identifier: "RouterTypeIdentifier"
    #     },
    #     virtual_interface_id: "VirtualInterfaceId",
    #     virtual_interface_name: "VirtualInterfaceName"
    #   }
    # @return [Types::DescribeRouterConfigurationResponse]
    def describe_router_configuration(params = {}, options = {})
      request = build_request(:describe_router_configuration, params)
      request.send_request(options)
    end

    # <p>Describes the tags associated with the specified Direct Connect resources.</p>
    # @param [Hash, Types::DescribeTagsRequest] params
    # @option params [Array<String>] :resource_arns
    #   <p>The Amazon Resource Names (ARNs) of the resources.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arns: ["ResourceArn"], # required
    #   }
    #   options = {}
    #   response = client.describe_tags(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_tags: [
    #       {
    #         resource_arn: "ResourceArn",
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue"
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::DescribeTagsResponse]
    def describe_tags(params = {}, options = {})
      request = build_request(:describe_tags, params)
      request.send_request(options)
    end

    # <note>
    #             <p>Deprecated. Use <code>DescribeVpnGateways</code> instead. See <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeVpnGateways.html">DescribeVPNGateways</a> in the <i>Amazon Elastic Compute Cloud API Reference</i>.</p>
    #          </note>
    #          <p>Lists the virtual private gateways owned by the Amazon Web Services account.</p>
    #          <p>You can create one or more Direct Connect private virtual interfaces linked to a virtual private gateway.</p>
    # @param [Hash, Smithy::Schema::EmptyStructure] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.describe_virtual_gateways(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     virtual_gateways: [
    #       {
    #         virtual_gateway_id: "VirtualGatewayId",
    #         virtual_gateway_state: "VirtualGatewayState"
    #       }
    #     ]
    #   }
    # @return [Types::DescribeVirtualGatewaysOutput]
    def describe_virtual_gateways(params = {}, options = {})
      request = build_request(:describe_virtual_gateways, params)
      request.send_request(options)
    end

    # <p>Displays all virtual interfaces for an Amazon Web Services account. Virtual interfaces deleted fewer
    #       than 15 minutes before you make the request are also returned. If you specify a
    #       connection ID, only the virtual interfaces associated with the connection are returned.
    #       If you specify a virtual interface ID, then only a single virtual interface is returned.</p>
    #          <p>A virtual interface (VLAN) transmits the traffic between the Direct Connect location and the customer network.</p>
    #          <ul>
    #             <li>
    #                <p>If you're using an <code>asn</code>, the response includes ASN value in both the <code>asn</code> and <code>asnLong</code> fields.</p>
    #             </li>
    #             <li>
    #                <p>If you're using <code>asnLong</code>, the response returns a value of <code>0</code> (zero) for the <code>asn</code> attribute because it exceeds the highest ASN value of 2,147,483,647 that it can support</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::DescribeVirtualInterfacesRequest] params
    # @option params [String] :connection_id
    #   <p>The ID of the connection.</p>
    # @option params [String] :virtual_interface_id
    #   <p>The ID of the virtual interface.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return with a single call.
    #   	To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    #            <p>If <code>MaxResults</code> is given a value larger than 100, only 100 results are
    #         returned.</p>
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     connection_id: "ConnectionId",
    #     virtual_interface_id: "VirtualInterfaceId",
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.describe_virtual_interfaces(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     virtual_interfaces: [
    #       {
    #         owner_account: "OwnerAccount",
    #         virtual_interface_id: "VirtualInterfaceId",
    #         location: "LocationCode",
    #         connection_id: "ConnectionId",
    #         virtual_interface_type: "VirtualInterfaceType",
    #         virtual_interface_name: "VirtualInterfaceName",
    #         vlan: 1,
    #         asn: 1,
    #         asn_long: 1,
    #         amazon_side_asn: 1,
    #         auth_key: "BGPAuthKey",
    #         amazon_address: "AmazonAddress",
    #         customer_address: "CustomerAddress",
    #         address_family: "ipv4" # One of: ["ipv4", "ipv6"],
    #         virtual_interface_state: "confirming" # One of: ["confirming", "verifying", "pending", "available", "down", "testing", "deleting", "deleted", "rejected", "unknown"],
    #         customer_router_config: "RouterConfig",
    #         mtu: 1,
    #         jumbo_frame_capable: false,
    #         virtual_gateway_id: "VirtualGatewayId",
    #         direct_connect_gateway_id: "DirectConnectGatewayId",
    #         route_filter_prefixes: [
    #           {
    #             cidr: "CIDR"
    #           }
    #         ],
    #         bgp_peers: [
    #           {
    #             bgp_peer_id: "BGPPeerId",
    #             asn: 1,
    #             asn_long: 1,
    #             auth_key: "BGPAuthKey",
    #             address_family: "ipv4" # One of: ["ipv4", "ipv6"],
    #             amazon_address: "AmazonAddress",
    #             customer_address: "CustomerAddress",
    #             bgp_peer_state: "verifying" # One of: ["verifying", "pending", "available", "deleting", "deleted"],
    #             bgp_status: "up" # One of: ["up", "down", "unknown"],
    #             aws_device_v2: "AwsDeviceV2",
    #             aws_logical_device_id: "AwsLogicalDeviceId"
    #           }
    #         ],
    #         region: "Region",
    #         aws_device_v2: "AwsDeviceV2",
    #         aws_logical_device_id: "AwsLogicalDeviceId",
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue"
    #           }
    #         ],
    #         site_link_enabled: false
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::DescribeVirtualInterfacesOutput]
    def describe_virtual_interfaces(params = {}, options = {})
      request = build_request(:describe_virtual_interfaces, params)
      request.send_request(options)
    end

    # <p>Disassociates a connection from a link aggregation group (LAG). The connection is
    #       interrupted and re-established as a standalone connection (the connection is not
    #       deleted; to delete the connection, use the <a>DeleteConnection</a> request).
    #       If the LAG has associated virtual interfaces or hosted connections, they remain
    #       associated with the LAG. A disassociated connection owned by an Direct Connect Partner is 
    #       automatically converted to an interconnect.</p>
    #          <p>If disassociating the connection would cause the LAG to fall below its setting for
    #       minimum number of operational connections, the request fails, except when it's the last
    #       member of the LAG. If all connections are disassociated, the LAG continues to exist as
    #       an empty LAG with no physical connections. </p>
    # @param [Hash, Types::DisassociateConnectionFromLagRequest] params
    # @option params [String] :connection_id
    #   <p>The ID of the connection.</p>
    # @option params [String] :lag_id
    #   <p>The ID of the LAG.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     connection_id: "ConnectionId", # required
    #     lag_id: "LagId", # required
    #   }
    #   options = {}
    #   response = client.disassociate_connection_from_lag(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     owner_account: "OwnerAccount",
    #     connection_id: "ConnectionId",
    #     connection_name: "ConnectionName",
    #     connection_state: "ordering" # One of: ["ordering", "requested", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"],
    #     region: "Region",
    #     location: "LocationCode",
    #     bandwidth: "Bandwidth",
    #     vlan: 1,
    #     partner_name: "PartnerName",
    #     loa_issue_time: Time.now,
    #     lag_id: "LagId",
    #     aws_device: "AwsDevice",
    #     jumbo_frame_capable: false,
    #     aws_device_v2: "AwsDeviceV2",
    #     aws_logical_device_id: "AwsLogicalDeviceId",
    #     has_logical_redundancy: "unknown" # One of: ["unknown", "yes", "no"],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ],
    #     provider_name: "ProviderName",
    #     mac_sec_capable: false,
    #     port_encryption_status: "PortEncryptionStatus",
    #     encryption_mode: "EncryptionMode",
    #     mac_sec_keys: [
    #       {
    #         secret_arn: "SecretARN",
    #         ckn: "Ckn",
    #         state: "State",
    #         start_on: "StartOnDate"
    #       }
    #     ],
    #     partner_interconnect_mac_sec_capable: false
    #   }
    # @return [Types::DisassociateConnectionFromLagOutput]
    def disassociate_connection_from_lag(params = {}, options = {})
      request = build_request(:disassociate_connection_from_lag, params)
      request.send_request(options)
    end

    # <p>Removes the association between a MAC Security (MACsec) security key and a Direct Connect connection.</p>
    # @param [Hash, Types::DisassociateMacSecKeyRequest] params
    # @option params [String] :connection_id
    #   <p>The ID of the dedicated connection (dxcon-xxxx), interconnect (dxcon-xxxx), or LAG (dxlag-xxxx).</p>
    #            <p>You can use <a>DescribeConnections</a>, <a>DescribeInterconnects</a>, or <a>DescribeLags</a> to retrieve connection ID.</p>
    # @option params [String] :secret_arn
    #   <p>The Amazon Resource Name (ARN) of the MAC Security (MACsec) secret key.</p>
    #            <p>You can use <a>DescribeConnections</a> to retrieve the ARN of the MAC Security (MACsec) secret key.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     connection_id: "ConnectionId", # required
    #     secret_arn: "SecretARN", # required
    #   }
    #   options = {}
    #   response = client.disassociate_mac_sec_key(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connection_id: "ConnectionId",
    #     mac_sec_keys: [
    #       {
    #         secret_arn: "SecretARN",
    #         ckn: "Ckn",
    #         state: "State",
    #         start_on: "StartOnDate"
    #       }
    #     ]
    #   }
    # @return [Types::DisassociateMacSecKeyResponse]
    def disassociate_mac_sec_key(params = {}, options = {})
      request = build_request(:disassociate_mac_sec_key, params)
      request.send_request(options)
    end

    # <p>Lists the virtual interface failover test history.</p>
    # @param [Hash, Types::ListVirtualInterfaceTestHistoryRequest] params
    # @option params [String] :test_id
    #   <p>The ID of the virtual interface failover test.</p>
    # @option params [String] :virtual_interface_id
    #   <p>The ID of the virtual interface that was tested.</p>
    # @option params [Array<String>] :bgp_peers
    #   <p>The BGP peers that were placed in the DOWN state during the virtual interface failover test.</p>
    # @option params [String] :status
    #   <p>The status of the virtual interface failover test.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return with a single call.
    #   	To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    #            <p>If <code>MaxResults</code> is given a value larger than 100, only 100 results are
    #         returned.</p>
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     test_id: "TestId",
    #     virtual_interface_id: "VirtualInterfaceId",
    #     bgp_peers: ["BGPPeerId"],
    #     status: "FailureTestHistoryStatus",
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_virtual_interface_test_history(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     virtual_interface_test_history: [
    #       {
    #         test_id: "TestId",
    #         virtual_interface_id: "VirtualInterfaceId",
    #         bgp_peers: ["BGPPeerId"],
    #         status: "FailureTestHistoryStatus",
    #         owner_account: "OwnerAccount",
    #         test_duration_in_minutes: 1,
    #         start_time: Time.now,
    #         end_time: Time.now
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListVirtualInterfaceTestHistoryResponse]
    def list_virtual_interface_test_history(params = {}, options = {})
      request = build_request(:list_virtual_interface_test_history, params)
      request.send_request(options)
    end

    # <p>Starts the virtual interface failover test that verifies your configuration meets your resiliency requirements by placing the BGP peering session in the DOWN state. You can then send traffic to verify that there are no outages.</p>
    #          <p>You can run the test on public, private, transit, and hosted virtual interfaces.</p>
    #          <p>You can use <a href="https://docs.aws.amazon.com/directconnect/latest/APIReference/API_ListVirtualInterfaceTestHistory.html">ListVirtualInterfaceTestHistory</a> to view the virtual interface test history.</p>
    #          <p>If you need to stop the test before the test interval completes, use <a href="https://docs.aws.amazon.com/directconnect/latest/APIReference/API_StopBgpFailoverTest.html">StopBgpFailoverTest</a>.</p>
    # @param [Hash, Types::StartBgpFailoverTestRequest] params
    # @option params [String] :virtual_interface_id
    #   <p>The ID of the virtual interface you want to test.</p>
    # @option params [Array<String>] :bgp_peers
    #   <p>The BGP peers to place in the DOWN state.</p>
    # @option params [Integer] :test_duration_in_minutes
    #   <p>The time in minutes that the virtual interface failover test will last.</p>
    #            <p>Maximum value: 4,320 minutes (72 hours).</p>
    #            <p>Default: 180 minutes (3 hours).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     virtual_interface_id: "VirtualInterfaceId", # required
    #     bgp_peers: ["BGPPeerId"],
    #     test_duration_in_minutes: 1
    #   }
    #   options = {}
    #   response = client.start_bgp_failover_test(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     virtual_interface_test: {
    #       test_id: "TestId",
    #       virtual_interface_id: "VirtualInterfaceId",
    #       bgp_peers: ["BGPPeerId"],
    #       status: "FailureTestHistoryStatus",
    #       owner_account: "OwnerAccount",
    #       test_duration_in_minutes: 1,
    #       start_time: Time.now,
    #       end_time: Time.now
    #     }
    #   }
    # @return [Types::StartBgpFailoverTestResponse]
    def start_bgp_failover_test(params = {}, options = {})
      request = build_request(:start_bgp_failover_test, params)
      request.send_request(options)
    end

    # <p>Stops the virtual interface failover test.</p>
    # @param [Hash, Types::StopBgpFailoverTestRequest] params
    # @option params [String] :virtual_interface_id
    #   <p>The ID of the virtual interface you no longer want to test.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     virtual_interface_id: "VirtualInterfaceId", # required
    #   }
    #   options = {}
    #   response = client.stop_bgp_failover_test(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     virtual_interface_test: {
    #       test_id: "TestId",
    #       virtual_interface_id: "VirtualInterfaceId",
    #       bgp_peers: ["BGPPeerId"],
    #       status: "FailureTestHistoryStatus",
    #       owner_account: "OwnerAccount",
    #       test_duration_in_minutes: 1,
    #       start_time: Time.now,
    #       end_time: Time.now
    #     }
    #   }
    # @return [Types::StopBgpFailoverTestResponse]
    def stop_bgp_failover_test(params = {}, options = {})
      request = build_request(:stop_bgp_failover_test, params)
      request.send_request(options)
    end

    # <p>Adds the specified tags to the specified Direct Connect resource. Each resource can have a maximum of 50 tags.</p>
    #          <p>Each tag consists of a key and an optional value. If a tag with the same key is already associated with the resource, this action updates its value.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to add.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
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

    # <p>Removes one or more tags from the specified Direct Connect resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The tag keys of the tags to remove.</p>
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

    # <p>Updates the Direct Connect connection configuration.</p>
    #          <p>You can update the following parameters for a connection:</p>
    #          <ul>
    #             <li>
    #                <p>The connection name</p>
    #             </li>
    #             <li>
    #                <p>The connection's MAC Security (MACsec) encryption mode.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::UpdateConnectionRequest] params
    # @option params [String] :connection_id
    #   <p>The ID of the connection.</p>
    #            <p>You can use <a>DescribeConnections</a> to retrieve the connection ID.</p>
    # @option params [String] :connection_name
    #   <p>The name of the connection.</p>
    # @option params [String] :encryption_mode
    #   <p>The connection MAC Security (MACsec) encryption mode.</p>
    #            <p>The valid values are <code>no_encrypt</code>, <code>should_encrypt</code>, and <code>must_encrypt</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     connection_id: "ConnectionId", # required
    #     connection_name: "ConnectionName",
    #     encryption_mode: "EncryptionMode"
    #   }
    #   options = {}
    #   response = client.update_connection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     owner_account: "OwnerAccount",
    #     connection_id: "ConnectionId",
    #     connection_name: "ConnectionName",
    #     connection_state: "ordering" # One of: ["ordering", "requested", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"],
    #     region: "Region",
    #     location: "LocationCode",
    #     bandwidth: "Bandwidth",
    #     vlan: 1,
    #     partner_name: "PartnerName",
    #     loa_issue_time: Time.now,
    #     lag_id: "LagId",
    #     aws_device: "AwsDevice",
    #     jumbo_frame_capable: false,
    #     aws_device_v2: "AwsDeviceV2",
    #     aws_logical_device_id: "AwsLogicalDeviceId",
    #     has_logical_redundancy: "unknown" # One of: ["unknown", "yes", "no"],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ],
    #     provider_name: "ProviderName",
    #     mac_sec_capable: false,
    #     port_encryption_status: "PortEncryptionStatus",
    #     encryption_mode: "EncryptionMode",
    #     mac_sec_keys: [
    #       {
    #         secret_arn: "SecretARN",
    #         ckn: "Ckn",
    #         state: "State",
    #         start_on: "StartOnDate"
    #       }
    #     ],
    #     partner_interconnect_mac_sec_capable: false
    #   }
    # @return [Types::UpdateConnectionOutput]
    def update_connection(params = {}, options = {})
      request = build_request(:update_connection, params)
      request.send_request(options)
    end

    # <p>Updates the name of a current Direct Connect gateway.</p>
    # @param [Hash, Types::UpdateDirectConnectGatewayRequest] params
    # @option params [String] :direct_connect_gateway_id
    #   <p>The ID of the Direct Connect gateway to update.</p>
    # @option params [String] :new_direct_connect_gateway_name
    #   <p>The new name for the Direct Connect gateway.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     direct_connect_gateway_id: "DirectConnectGatewayId", # required
    #     new_direct_connect_gateway_name: "DirectConnectGatewayName", # required
    #   }
    #   options = {}
    #   response = client.update_direct_connect_gateway(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     direct_connect_gateway: {
    #       direct_connect_gateway_id: "DirectConnectGatewayId",
    #       direct_connect_gateway_name: "DirectConnectGatewayName",
    #       amazon_side_asn: 1,
    #       owner_account: "OwnerAccount",
    #       direct_connect_gateway_state: "pending" # One of: ["pending", "available", "deleting", "deleted"],
    #       state_change_error: "StateChangeError",
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::UpdateDirectConnectGatewayResponse]
    def update_direct_connect_gateway(params = {}, options = {})
      request = build_request(:update_direct_connect_gateway, params)
      request.send_request(options)
    end

    # <p>Updates the specified attributes of the Direct Connect gateway association.</p>
    #          <p>Add or remove prefixes from the association.</p>
    # @param [Hash, Types::UpdateDirectConnectGatewayAssociationRequest] params
    # @option params [String] :association_id
    #   <p>The ID of the Direct Connect gateway association.</p>
    # @option params [Array<Types::RouteFilterPrefix>] :add_allowed_prefixes_to_direct_connect_gateway
    #   <p>The Amazon VPC prefixes to advertise to the Direct Connect gateway.</p>
    # @option params [Array<Types::RouteFilterPrefix>] :remove_allowed_prefixes_to_direct_connect_gateway
    #   <p>The Amazon VPC prefixes to no longer advertise to the Direct Connect gateway.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     association_id: "DirectConnectGatewayAssociationId",
    #     add_allowed_prefixes_to_direct_connect_gateway: [
    #       {
    #         cidr: "CIDR"
    #       }
    #     ],
    #     remove_allowed_prefixes_to_direct_connect_gateway: [
    #       {
    #         cidr: "CIDR"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_direct_connect_gateway_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     direct_connect_gateway_association: {
    #       direct_connect_gateway_id: "DirectConnectGatewayId",
    #       direct_connect_gateway_owner_account: "OwnerAccount",
    #       association_state: "associating" # One of: ["associating", "associated", "disassociating", "disassociated", "updating"],
    #       state_change_error: "StateChangeError",
    #       associated_gateway: {
    #         id: "GatewayIdentifier",
    #         type: "virtualPrivateGateway" # One of: ["virtualPrivateGateway", "transitGateway"],
    #         owner_account: "OwnerAccount",
    #         region: "Region"
    #       },
    #       association_id: "DirectConnectGatewayAssociationId",
    #       allowed_prefixes_to_direct_connect_gateway: [
    #         {
    #           cidr: "CIDR"
    #         }
    #       ],
    #       associated_core_network: {
    #         id: "CoreNetworkIdentifier",
    #         owner_account: "OwnerAccount",
    #         attachment_id: "CoreNetworkAttachmentId"
    #       },
    #       virtual_gateway_id: "VirtualGatewayId",
    #       virtual_gateway_region: "VirtualGatewayRegion",
    #       virtual_gateway_owner_account: "OwnerAccount"
    #     }
    #   }
    # @return [Types::UpdateDirectConnectGatewayAssociationResult]
    def update_direct_connect_gateway_association(params = {}, options = {})
      request = build_request(:update_direct_connect_gateway_association, params)
      request.send_request(options)
    end

    # <p>Updates the attributes of the specified link aggregation group (LAG).</p>
    #          <p>You can update the following LAG attributes:</p>
    #          <ul>
    #             <li>
    #                <p>The name of the LAG.</p>
    #             </li>
    #             <li>
    #                <p>The value for the minimum number of connections that must be operational
    #           for the LAG itself to be operational. </p>
    #             </li>
    #             <li>
    #                <p>The LAG's MACsec encryption mode.</p>
    #                <p>Amazon Web Services assigns this value to each connection which is part of the LAG.</p>
    #             </li>
    #             <li>
    #                <p>The tags</p>
    #             </li>
    #          </ul>
    #          <note>
    #             <p>If you adjust the threshold value for the minimum number of operational connections, ensure
    #       that the new value does not cause the LAG to fall below the threshold and become
    #       non-operational.</p>
    #          </note>
    # @param [Hash, Types::UpdateLagRequest] params
    # @option params [String] :lag_id
    #   <p>The ID of the LAG.</p>
    # @option params [String] :lag_name
    #   <p>The name of the LAG.</p>
    # @option params [Integer] :minimum_links
    #   <p>The minimum number of physical connections that must be operational for the LAG itself to be operational.</p>
    # @option params [String] :encryption_mode
    #   <p>The LAG MAC Security (MACsec) encryption mode.</p>
    #            <p>Amazon Web Services applies the value to all connections which are part of the LAG.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     lag_id: "LagId", # required
    #     lag_name: "LagName",
    #     minimum_links: 1,
    #     encryption_mode: "EncryptionMode"
    #   }
    #   options = {}
    #   response = client.update_lag(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connections_bandwidth: "Bandwidth",
    #     number_of_connections: 1,
    #     lag_id: "LagId",
    #     owner_account: "OwnerAccount",
    #     lag_name: "LagName",
    #     lag_state: "requested" # One of: ["requested", "pending", "available", "down", "deleting", "deleted", "unknown"],
    #     location: "LocationCode",
    #     region: "Region",
    #     minimum_links: 1,
    #     aws_device: "AwsDevice",
    #     aws_device_v2: "AwsDeviceV2",
    #     aws_logical_device_id: "AwsLogicalDeviceId",
    #     connections: [
    #       {
    #         owner_account: "OwnerAccount",
    #         connection_id: "ConnectionId",
    #         connection_name: "ConnectionName",
    #         connection_state: "ordering" # One of: ["ordering", "requested", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"],
    #         region: "Region",
    #         location: "LocationCode",
    #         bandwidth: "Bandwidth",
    #         vlan: 1,
    #         partner_name: "PartnerName",
    #         loa_issue_time: Time.now,
    #         lag_id: "LagId",
    #         aws_device: "AwsDevice",
    #         jumbo_frame_capable: false,
    #         aws_device_v2: "AwsDeviceV2",
    #         aws_logical_device_id: "AwsLogicalDeviceId",
    #         has_logical_redundancy: "unknown" # One of: ["unknown", "yes", "no"],
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue"
    #           }
    #         ],
    #         provider_name: "ProviderName",
    #         mac_sec_capable: false,
    #         port_encryption_status: "PortEncryptionStatus",
    #         encryption_mode: "EncryptionMode",
    #         mac_sec_keys: [
    #           {
    #             secret_arn: "SecretARN",
    #             ckn: "Ckn",
    #             state: "State",
    #             start_on: "StartOnDate"
    #           }
    #         ],
    #         partner_interconnect_mac_sec_capable: false
    #       }
    #     ],
    #     allows_hosted_connections: false,
    #     jumbo_frame_capable: false,
    #     has_logical_redundancy: "unknown" # One of: ["unknown", "yes", "no"],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ],
    #     provider_name: "ProviderName",
    #     mac_sec_capable: false,
    #     encryption_mode: "EncryptionMode",
    #     mac_sec_keys: [
    #       {
    #         secret_arn: "SecretARN",
    #         ckn: "Ckn",
    #         state: "State",
    #         start_on: "StartOnDate"
    #       }
    #     ]
    #   }
    # @return [Types::UpdateLagOutput]
    def update_lag(params = {}, options = {})
      request = build_request(:update_lag, params)
      request.send_request(options)
    end

    # <p>Updates the specified attributes of the specified virtual private interface.</p>
    #          <p>Setting the MTU of a virtual interface to 8500 (jumbo frames) can cause an update to
    #       the underlying physical connection if it wasn't updated to support jumbo frames. Updating 
    #       the connection disrupts network connectivity for all virtual interfaces associated with 
    #       the connection for up to 30 seconds. To check whether your connection supports jumbo 
    #       frames, call <a>DescribeConnections</a>. To check whether your virtual 
    #       interface supports jumbo frames, call <a>DescribeVirtualInterfaces</a>.</p>
    # @param [Hash, Types::UpdateVirtualInterfaceAttributesRequest] params
    # @option params [String] :virtual_interface_id
    #   <p>The ID of the virtual private interface.</p>
    # @option params [Integer] :mtu
    #   <p>The maximum transmission unit (MTU), in bytes. The supported values are 1500 and 8500. The default value is 1500.</p>
    # @option params [Boolean] :enable_site_link
    #   <p>Indicates whether to enable or disable SiteLink.</p>
    # @option params [String] :virtual_interface_name
    #   <p>The name of the virtual private interface.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     virtual_interface_id: "VirtualInterfaceId", # required
    #     mtu: 1,
    #     enable_site_link: false,
    #     virtual_interface_name: "VirtualInterfaceName"
    #   }
    #   options = {}
    #   response = client.update_virtual_interface_attributes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     owner_account: "OwnerAccount",
    #     virtual_interface_id: "VirtualInterfaceId",
    #     location: "LocationCode",
    #     connection_id: "ConnectionId",
    #     virtual_interface_type: "VirtualInterfaceType",
    #     virtual_interface_name: "VirtualInterfaceName",
    #     vlan: 1,
    #     asn: 1,
    #     asn_long: 1,
    #     amazon_side_asn: 1,
    #     auth_key: "BGPAuthKey",
    #     amazon_address: "AmazonAddress",
    #     customer_address: "CustomerAddress",
    #     address_family: "ipv4" # One of: ["ipv4", "ipv6"],
    #     virtual_interface_state: "confirming" # One of: ["confirming", "verifying", "pending", "available", "down", "testing", "deleting", "deleted", "rejected", "unknown"],
    #     customer_router_config: "RouterConfig",
    #     mtu: 1,
    #     jumbo_frame_capable: false,
    #     virtual_gateway_id: "VirtualGatewayId",
    #     direct_connect_gateway_id: "DirectConnectGatewayId",
    #     route_filter_prefixes: [
    #       {
    #         cidr: "CIDR"
    #       }
    #     ],
    #     bgp_peers: [
    #       {
    #         bgp_peer_id: "BGPPeerId",
    #         asn: 1,
    #         asn_long: 1,
    #         auth_key: "BGPAuthKey",
    #         address_family: "ipv4" # One of: ["ipv4", "ipv6"],
    #         amazon_address: "AmazonAddress",
    #         customer_address: "CustomerAddress",
    #         bgp_peer_state: "verifying" # One of: ["verifying", "pending", "available", "deleting", "deleted"],
    #         bgp_status: "up" # One of: ["up", "down", "unknown"],
    #         aws_device_v2: "AwsDeviceV2",
    #         aws_logical_device_id: "AwsLogicalDeviceId"
    #       }
    #     ],
    #     region: "Region",
    #     aws_device_v2: "AwsDeviceV2",
    #     aws_logical_device_id: "AwsLogicalDeviceId",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ],
    #     site_link_enabled: false
    #   }
    # @return [Types::UpdateVirtualInterfaceAttributesOutput]
    def update_virtual_interface_attributes(params = {}, options = {})
      request = build_request(:update_virtual_interface_attributes, params)
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
      context[:gem_name] = 'aws-sdk-directconnect'
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
