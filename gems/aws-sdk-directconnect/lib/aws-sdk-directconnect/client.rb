# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'seahorse/client/plugins/content_length.rb'
require 'aws-sdk-core/plugins/credentials_configuration.rb'
require 'aws-sdk-core/plugins/logging.rb'
require 'aws-sdk-core/plugins/param_converter.rb'
require 'aws-sdk-core/plugins/param_validator.rb'
require 'aws-sdk-core/plugins/user_agent.rb'
require 'aws-sdk-core/plugins/helpful_socket_errors.rb'
require 'aws-sdk-core/plugins/retry_errors.rb'
require 'aws-sdk-core/plugins/global_configuration.rb'
require 'aws-sdk-core/plugins/regional_endpoint.rb'
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/client_metrics_plugin.rb'
require 'aws-sdk-core/plugins/client_metrics_send_plugin.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:directconnect)

module Aws::DirectConnect
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :directconnect

    set_api(ClientApi::API)

    add_plugin(Seahorse::Client::Plugins::ContentLength)
    add_plugin(Aws::Plugins::CredentialsConfiguration)
    add_plugin(Aws::Plugins::Logging)
    add_plugin(Aws::Plugins::ParamConverter)
    add_plugin(Aws::Plugins::ParamValidator)
    add_plugin(Aws::Plugins::UserAgent)
    add_plugin(Aws::Plugins::HelpfulSocketErrors)
    add_plugin(Aws::Plugins::RetryErrors)
    add_plugin(Aws::Plugins::GlobalConfiguration)
    add_plugin(Aws::Plugins::RegionalEndpoint)
    add_plugin(Aws::Plugins::ResponsePaging)
    add_plugin(Aws::Plugins::StubResponses)
    add_plugin(Aws::Plugins::IdempotencyToken)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::ClientMetricsPlugin)
    add_plugin(Aws::Plugins::ClientMetricsSendPlugin)
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::JsonRpc)

    # @option options [required, Aws::CredentialProvider] :credentials
    #   Your AWS credentials. This can be an instance of any one of the
    #   following classes:
    #
    #   * `Aws::Credentials` - Used for configuring static, non-refreshing
    #     credentials.
    #
    #   * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #     from an EC2 IMDS on an EC2 instance.
    #
    #   * `Aws::SharedCredentials` - Used for loading credentials from a
    #     shared file, such as `~/.aws/config`.
    #
    #   * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #   When `:credentials` are not configured directly, the following
    #   locations will be searched for credentials:
    #
    #   * `Aws.config[:credentials]`
    #   * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #   * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #   * EC2 IMDS instance profile - When used by default, the timeouts are
    #     very aggressive. Construct and pass an instance of
    #     `Aws::InstanceProfileCredentails` to enable retries and extended
    #     timeouts.
    #
    # @option options [required, String] :region
    #   The AWS region to connect to.  The configured `:region` is
    #   used to determine the service `:endpoint`. When not passed,
    #   a default `:region` is search for in the following locations:
    #
    #   * `Aws.config[:region]`
    #   * `ENV['AWS_REGION']`
    #   * `ENV['AMAZON_REGION']`
    #   * `ENV['AWS_DEFAULT_REGION']`
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #
    # @option options [String] :access_key_id
    #
    # @option options [] :client_side_monitoring (false)
    #   When `true`, client-side metrics will be collected for all API requests from
    #   this client.
    #
    # @option options [] :client_side_monitoring_client_id ("")
    #   Allows you to provide an identifier for this client which will be attached to
    #   all generated client side metrics. Defaults to an empty string.
    #
    # @option options [] :client_side_monitoring_port (31000)
    #   Required for publishing client metrics. The port that the client side monitoring
    #   agent is running on, where client metrics will be published via UDP.
    #
    # @option options [] :client_side_monitoring_publisher (Aws::ClientSideMonitoring::Publisher)
    #   Allows you to provide a custom client-side monitoring publisher class. By default,
    #   will use the Client Side Monitoring Agent Publisher.
    #
    # @option options [Boolean] :convert_params (true)
    #   When `true`, an attempt is made to coerce request parameters into
    #   the required types.
    #
    # @option options [String] :endpoint
    #   The client endpoint is normally constructed from the `:region`
    #   option. You should only configure an `:endpoint` when connecting
    #   to test endpoints. This should be avalid HTTP(S) URI.
    #
    # @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
    #   The log formatter.
    #
    # @option options [Symbol] :log_level (:info)
    #   The log level to send messages to the `:logger` at.
    #
    # @option options [Logger] :logger
    #   The Logger instance to send log messages to.  If this option
    #   is not set, logging will be disabled.
    #
    # @option options [String] :profile ("default")
    #   Used when loading credentials from the shared credentials file
    #   at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    # @option options [Float] :retry_base_delay (0.3)
    #   The base delay in seconds used by the default backoff function.
    #
    # @option options [Symbol] :retry_jitter (:none)
    #   A delay randomiser function used by the default backoff function. Some predefined functions can be referenced by name - :none, :equal, :full, otherwise a Proc that takes and returns a number.
    #
    #   @see https://www.awsarchitectureblog.com/2015/03/backoff.html
    #
    # @option options [Integer] :retry_limit (3)
    #   The maximum number of times to retry failed requests.  Only
    #   ~ 500 level server errors and certain ~ 400 level client errors
    #   are retried.  Generally, these are throttling errors, data
    #   checksum errors, networking errors, timeout errors and auth
    #   errors from expired credentials.
    #
    # @option options [Integer] :retry_max_delay (0)
    #   The maximum number of seconds to delay between retries (0 for no limit) used by the default backoff function.
    #
    # @option options [String] :secret_access_key
    #
    # @option options [String] :session_token
    #
    # @option options [Boolean] :simple_json (false)
    #   Disables request parameter conversion, validation, and formatting.
    #   Also disable response data type conversions. This option is useful
    #   when you want to ensure the highest level of performance by
    #   avoiding overhead of walking request parameters and response data
    #   structures.
    #
    #   When `:simple_json` is enabled, the request parameters hash must
    #   be formatted exactly as the DynamoDB API expects.
    #
    # @option options [Boolean] :stub_responses (false)
    #   Causes the client to return stubbed responses. By default
    #   fake responses are generated and returned. You can specify
    #   the response data to return or errors to raise by calling
    #   {ClientStubs#stub_responses}. See {ClientStubs} for more information.
    #
    #   ** Please note ** When response stubbing is enabled, no HTTP
    #   requests are made, and retries are disabled.
    #
    # @option options [Boolean] :validate_params (true)
    #   When `true`, request parameters are validated before
    #   sending the request.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # Deprecated in favor of AllocateHostedConnection.
    #
    # Creates a hosted connection on an interconnect.
    #
    # Allocates a VLAN number and a specified amount of bandwidth for use by
    # a hosted connection on the given interconnect.
    #
    # <note markdown="1"> This is intended for use by AWS Direct Connect partners only.
    #
    #  </note>
    #
    # @option params [required, String] :bandwidth
    #   Bandwidth of the connection.
    #
    #   Example: "*500Mbps*"
    #
    #   Default: None
    #
    #   Values: 50Mbps, 100Mbps, 200Mbps, 300Mbps, 400Mbps, or 500Mbps
    #
    # @option params [required, String] :connection_name
    #   Name of the provisioned connection.
    #
    #   Example: "*500M Connection to AWS*"
    #
    #   Default: None
    #
    # @option params [required, String] :owner_account
    #   Numeric account Id of the customer for whom the connection will be
    #   provisioned.
    #
    #   Example: 123443215678
    #
    #   Default: None
    #
    # @option params [required, String] :interconnect_id
    #   ID of the interconnect on which the connection will be provisioned.
    #
    #   Example: dxcon-456abc78
    #
    #   Default: None
    #
    # @option params [required, Integer] :vlan
    #   The dedicated VLAN provisioned to the connection.
    #
    #   Example: 101
    #
    #   Default: None
    #
    # @return [Types::Connection] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Connection#owner_account #owner_account} => String
    #   * {Types::Connection#connection_id #connection_id} => String
    #   * {Types::Connection#connection_name #connection_name} => String
    #   * {Types::Connection#connection_state #connection_state} => String
    #   * {Types::Connection#region #region} => String
    #   * {Types::Connection#location #location} => String
    #   * {Types::Connection#bandwidth #bandwidth} => String
    #   * {Types::Connection#vlan #vlan} => Integer
    #   * {Types::Connection#partner_name #partner_name} => String
    #   * {Types::Connection#loa_issue_time #loa_issue_time} => Time
    #   * {Types::Connection#lag_id #lag_id} => String
    #   * {Types::Connection#aws_device #aws_device} => String
    #   * {Types::Connection#aws_device_v2 #aws_device_v2} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.allocate_connection_on_interconnect({
    #     bandwidth: "Bandwidth", # required
    #     connection_name: "ConnectionName", # required
    #     owner_account: "OwnerAccount", # required
    #     interconnect_id: "InterconnectId", # required
    #     vlan: 1, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.owner_account #=> String
    #   resp.connection_id #=> String
    #   resp.connection_name #=> String
    #   resp.connection_state #=> String, one of "ordering", "requested", "pending", "available", "down", "deleting", "deleted", "rejected"
    #   resp.region #=> String
    #   resp.location #=> String
    #   resp.bandwidth #=> String
    #   resp.vlan #=> Integer
    #   resp.partner_name #=> String
    #   resp.loa_issue_time #=> Time
    #   resp.lag_id #=> String
    #   resp.aws_device #=> String
    #   resp.aws_device_v2 #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/AllocateConnectionOnInterconnect AWS API Documentation
    #
    # @overload allocate_connection_on_interconnect(params = {})
    # @param [Hash] params ({})
    def allocate_connection_on_interconnect(params = {}, options = {})
      req = build_request(:allocate_connection_on_interconnect, params)
      req.send_request(options)
    end

    # Creates a hosted connection on an interconnect or a link aggregation
    # group (LAG).
    #
    # Allocates a VLAN number and a specified amount of bandwidth for use by
    # a hosted connection on the given interconnect or LAG.
    #
    # <note markdown="1"> This is intended for use by AWS Direct Connect partners only.
    #
    #  </note>
    #
    # @option params [required, String] :connection_id
    #   The ID of the interconnect or LAG on which the connection will be
    #   provisioned.
    #
    #   Example: dxcon-456abc78 or dxlag-abc123
    #
    #   Default: None
    #
    # @option params [required, String] :owner_account
    #   The numeric account ID of the customer for whom the connection will be
    #   provisioned.
    #
    #   Example: 123443215678
    #
    #   Default: None
    #
    # @option params [required, String] :bandwidth
    #   The bandwidth of the connection.
    #
    #   Example: `500Mbps`
    #
    #   Default: None
    #
    #   Values: 50Mbps, 100Mbps, 200Mbps, 300Mbps, 400Mbps, or 500Mbps
    #
    # @option params [required, String] :connection_name
    #   The name of the provisioned connection.
    #
    #   Example: "`500M Connection to AWS`"
    #
    #   Default: None
    #
    # @option params [required, Integer] :vlan
    #   The dedicated VLAN provisioned to the hosted connection.
    #
    #   Example: 101
    #
    #   Default: None
    #
    # @return [Types::Connection] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Connection#owner_account #owner_account} => String
    #   * {Types::Connection#connection_id #connection_id} => String
    #   * {Types::Connection#connection_name #connection_name} => String
    #   * {Types::Connection#connection_state #connection_state} => String
    #   * {Types::Connection#region #region} => String
    #   * {Types::Connection#location #location} => String
    #   * {Types::Connection#bandwidth #bandwidth} => String
    #   * {Types::Connection#vlan #vlan} => Integer
    #   * {Types::Connection#partner_name #partner_name} => String
    #   * {Types::Connection#loa_issue_time #loa_issue_time} => Time
    #   * {Types::Connection#lag_id #lag_id} => String
    #   * {Types::Connection#aws_device #aws_device} => String
    #   * {Types::Connection#aws_device_v2 #aws_device_v2} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.allocate_hosted_connection({
    #     connection_id: "ConnectionId", # required
    #     owner_account: "OwnerAccount", # required
    #     bandwidth: "Bandwidth", # required
    #     connection_name: "ConnectionName", # required
    #     vlan: 1, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.owner_account #=> String
    #   resp.connection_id #=> String
    #   resp.connection_name #=> String
    #   resp.connection_state #=> String, one of "ordering", "requested", "pending", "available", "down", "deleting", "deleted", "rejected"
    #   resp.region #=> String
    #   resp.location #=> String
    #   resp.bandwidth #=> String
    #   resp.vlan #=> Integer
    #   resp.partner_name #=> String
    #   resp.loa_issue_time #=> Time
    #   resp.lag_id #=> String
    #   resp.aws_device #=> String
    #   resp.aws_device_v2 #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/AllocateHostedConnection AWS API Documentation
    #
    # @overload allocate_hosted_connection(params = {})
    # @param [Hash] params ({})
    def allocate_hosted_connection(params = {}, options = {})
      req = build_request(:allocate_hosted_connection, params)
      req.send_request(options)
    end

    # Provisions a private virtual interface to be owned by another AWS
    # customer.
    #
    # Virtual interfaces created using this action must be confirmed by the
    # virtual interface owner by using the ConfirmPrivateVirtualInterface
    # action. Until then, the virtual interface will be in 'Confirming'
    # state, and will not be available for handling traffic.
    #
    # @option params [required, String] :connection_id
    #   The connection ID on which the private virtual interface is
    #   provisioned.
    #
    #   Default: None
    #
    # @option params [required, String] :owner_account
    #   The AWS account that will own the new private virtual interface.
    #
    #   Default: None
    #
    # @option params [required, Types::NewPrivateVirtualInterfaceAllocation] :new_private_virtual_interface_allocation
    #   Detailed information for the private virtual interface to be
    #   provisioned.
    #
    #   Default: None
    #
    # @return [Types::VirtualInterface] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::VirtualInterface#owner_account #owner_account} => String
    #   * {Types::VirtualInterface#virtual_interface_id #virtual_interface_id} => String
    #   * {Types::VirtualInterface#location #location} => String
    #   * {Types::VirtualInterface#connection_id #connection_id} => String
    #   * {Types::VirtualInterface#virtual_interface_type #virtual_interface_type} => String
    #   * {Types::VirtualInterface#virtual_interface_name #virtual_interface_name} => String
    #   * {Types::VirtualInterface#vlan #vlan} => Integer
    #   * {Types::VirtualInterface#asn #asn} => Integer
    #   * {Types::VirtualInterface#amazon_side_asn #amazon_side_asn} => Integer
    #   * {Types::VirtualInterface#auth_key #auth_key} => String
    #   * {Types::VirtualInterface#amazon_address #amazon_address} => String
    #   * {Types::VirtualInterface#customer_address #customer_address} => String
    #   * {Types::VirtualInterface#address_family #address_family} => String
    #   * {Types::VirtualInterface#virtual_interface_state #virtual_interface_state} => String
    #   * {Types::VirtualInterface#customer_router_config #customer_router_config} => String
    #   * {Types::VirtualInterface#virtual_gateway_id #virtual_gateway_id} => String
    #   * {Types::VirtualInterface#direct_connect_gateway_id #direct_connect_gateway_id} => String
    #   * {Types::VirtualInterface#route_filter_prefixes #route_filter_prefixes} => Array&lt;Types::RouteFilterPrefix&gt;
    #   * {Types::VirtualInterface#bgp_peers #bgp_peers} => Array&lt;Types::BGPPeer&gt;
    #   * {Types::VirtualInterface#region #region} => String
    #   * {Types::VirtualInterface#aws_device_v2 #aws_device_v2} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.allocate_private_virtual_interface({
    #     connection_id: "ConnectionId", # required
    #     owner_account: "OwnerAccount", # required
    #     new_private_virtual_interface_allocation: { # required
    #       virtual_interface_name: "VirtualInterfaceName", # required
    #       vlan: 1, # required
    #       asn: 1, # required
    #       auth_key: "BGPAuthKey",
    #       amazon_address: "AmazonAddress",
    #       address_family: "ipv4", # accepts ipv4, ipv6
    #       customer_address: "CustomerAddress",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.owner_account #=> String
    #   resp.virtual_interface_id #=> String
    #   resp.location #=> String
    #   resp.connection_id #=> String
    #   resp.virtual_interface_type #=> String
    #   resp.virtual_interface_name #=> String
    #   resp.vlan #=> Integer
    #   resp.asn #=> Integer
    #   resp.amazon_side_asn #=> Integer
    #   resp.auth_key #=> String
    #   resp.amazon_address #=> String
    #   resp.customer_address #=> String
    #   resp.address_family #=> String, one of "ipv4", "ipv6"
    #   resp.virtual_interface_state #=> String, one of "confirming", "verifying", "pending", "available", "down", "deleting", "deleted", "rejected"
    #   resp.customer_router_config #=> String
    #   resp.virtual_gateway_id #=> String
    #   resp.direct_connect_gateway_id #=> String
    #   resp.route_filter_prefixes #=> Array
    #   resp.route_filter_prefixes[0].cidr #=> String
    #   resp.bgp_peers #=> Array
    #   resp.bgp_peers[0].asn #=> Integer
    #   resp.bgp_peers[0].auth_key #=> String
    #   resp.bgp_peers[0].address_family #=> String, one of "ipv4", "ipv6"
    #   resp.bgp_peers[0].amazon_address #=> String
    #   resp.bgp_peers[0].customer_address #=> String
    #   resp.bgp_peers[0].bgp_peer_state #=> String, one of "verifying", "pending", "available", "deleting", "deleted"
    #   resp.bgp_peers[0].bgp_status #=> String, one of "up", "down"
    #   resp.bgp_peers[0].aws_device_v2 #=> String
    #   resp.region #=> String
    #   resp.aws_device_v2 #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/AllocatePrivateVirtualInterface AWS API Documentation
    #
    # @overload allocate_private_virtual_interface(params = {})
    # @param [Hash] params ({})
    def allocate_private_virtual_interface(params = {}, options = {})
      req = build_request(:allocate_private_virtual_interface, params)
      req.send_request(options)
    end

    # Provisions a public virtual interface to be owned by a different
    # customer.
    #
    # The owner of a connection calls this function to provision a public
    # virtual interface which will be owned by another AWS customer.
    #
    # Virtual interfaces created using this function must be confirmed by
    # the virtual interface owner by calling ConfirmPublicVirtualInterface.
    # Until this step has been completed, the virtual interface will be in
    # 'Confirming' state, and will not be available for handling traffic.
    #
    # When creating an IPv6 public virtual interface (addressFamily is
    # 'ipv6'), the customer and amazon address fields should be left blank
    # to use auto-assigned IPv6 space. Custom IPv6 Addresses are currently
    # not supported.
    #
    # @option params [required, String] :connection_id
    #   The connection ID on which the public virtual interface is
    #   provisioned.
    #
    #   Default: None
    #
    # @option params [required, String] :owner_account
    #   The AWS account that will own the new public virtual interface.
    #
    #   Default: None
    #
    # @option params [required, Types::NewPublicVirtualInterfaceAllocation] :new_public_virtual_interface_allocation
    #   Detailed information for the public virtual interface to be
    #   provisioned.
    #
    #   Default: None
    #
    # @return [Types::VirtualInterface] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::VirtualInterface#owner_account #owner_account} => String
    #   * {Types::VirtualInterface#virtual_interface_id #virtual_interface_id} => String
    #   * {Types::VirtualInterface#location #location} => String
    #   * {Types::VirtualInterface#connection_id #connection_id} => String
    #   * {Types::VirtualInterface#virtual_interface_type #virtual_interface_type} => String
    #   * {Types::VirtualInterface#virtual_interface_name #virtual_interface_name} => String
    #   * {Types::VirtualInterface#vlan #vlan} => Integer
    #   * {Types::VirtualInterface#asn #asn} => Integer
    #   * {Types::VirtualInterface#amazon_side_asn #amazon_side_asn} => Integer
    #   * {Types::VirtualInterface#auth_key #auth_key} => String
    #   * {Types::VirtualInterface#amazon_address #amazon_address} => String
    #   * {Types::VirtualInterface#customer_address #customer_address} => String
    #   * {Types::VirtualInterface#address_family #address_family} => String
    #   * {Types::VirtualInterface#virtual_interface_state #virtual_interface_state} => String
    #   * {Types::VirtualInterface#customer_router_config #customer_router_config} => String
    #   * {Types::VirtualInterface#virtual_gateway_id #virtual_gateway_id} => String
    #   * {Types::VirtualInterface#direct_connect_gateway_id #direct_connect_gateway_id} => String
    #   * {Types::VirtualInterface#route_filter_prefixes #route_filter_prefixes} => Array&lt;Types::RouteFilterPrefix&gt;
    #   * {Types::VirtualInterface#bgp_peers #bgp_peers} => Array&lt;Types::BGPPeer&gt;
    #   * {Types::VirtualInterface#region #region} => String
    #   * {Types::VirtualInterface#aws_device_v2 #aws_device_v2} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.allocate_public_virtual_interface({
    #     connection_id: "ConnectionId", # required
    #     owner_account: "OwnerAccount", # required
    #     new_public_virtual_interface_allocation: { # required
    #       virtual_interface_name: "VirtualInterfaceName", # required
    #       vlan: 1, # required
    #       asn: 1, # required
    #       auth_key: "BGPAuthKey",
    #       amazon_address: "AmazonAddress",
    #       customer_address: "CustomerAddress",
    #       address_family: "ipv4", # accepts ipv4, ipv6
    #       route_filter_prefixes: [
    #         {
    #           cidr: "CIDR",
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.owner_account #=> String
    #   resp.virtual_interface_id #=> String
    #   resp.location #=> String
    #   resp.connection_id #=> String
    #   resp.virtual_interface_type #=> String
    #   resp.virtual_interface_name #=> String
    #   resp.vlan #=> Integer
    #   resp.asn #=> Integer
    #   resp.amazon_side_asn #=> Integer
    #   resp.auth_key #=> String
    #   resp.amazon_address #=> String
    #   resp.customer_address #=> String
    #   resp.address_family #=> String, one of "ipv4", "ipv6"
    #   resp.virtual_interface_state #=> String, one of "confirming", "verifying", "pending", "available", "down", "deleting", "deleted", "rejected"
    #   resp.customer_router_config #=> String
    #   resp.virtual_gateway_id #=> String
    #   resp.direct_connect_gateway_id #=> String
    #   resp.route_filter_prefixes #=> Array
    #   resp.route_filter_prefixes[0].cidr #=> String
    #   resp.bgp_peers #=> Array
    #   resp.bgp_peers[0].asn #=> Integer
    #   resp.bgp_peers[0].auth_key #=> String
    #   resp.bgp_peers[0].address_family #=> String, one of "ipv4", "ipv6"
    #   resp.bgp_peers[0].amazon_address #=> String
    #   resp.bgp_peers[0].customer_address #=> String
    #   resp.bgp_peers[0].bgp_peer_state #=> String, one of "verifying", "pending", "available", "deleting", "deleted"
    #   resp.bgp_peers[0].bgp_status #=> String, one of "up", "down"
    #   resp.bgp_peers[0].aws_device_v2 #=> String
    #   resp.region #=> String
    #   resp.aws_device_v2 #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/AllocatePublicVirtualInterface AWS API Documentation
    #
    # @overload allocate_public_virtual_interface(params = {})
    # @param [Hash] params ({})
    def allocate_public_virtual_interface(params = {}, options = {})
      req = build_request(:allocate_public_virtual_interface, params)
      req.send_request(options)
    end

    # Associates an existing connection with a link aggregation group (LAG).
    # The connection is interrupted and re-established as a member of the
    # LAG (connectivity to AWS will be interrupted). The connection must be
    # hosted on the same AWS Direct Connect endpoint as the LAG, and its
    # bandwidth must match the bandwidth for the LAG. You can reassociate a
    # connection that's currently associated with a different LAG; however,
    # if removing the connection will cause the original LAG to fall below
    # its setting for minimum number of operational connections, the request
    # fails.
    #
    # Any virtual interfaces that are directly associated with the
    # connection are automatically re-associated with the LAG. If the
    # connection was originally associated with a different LAG, the virtual
    # interfaces remain associated with the original LAG.
    #
    # For interconnects, any hosted connections are automatically
    # re-associated with the LAG. If the interconnect was originally
    # associated with a different LAG, the hosted connections remain
    # associated with the original LAG.
    #
    # @option params [required, String] :connection_id
    #   The ID of the connection.
    #
    #   Example: dxcon-abc123
    #
    #   Default: None
    #
    # @option params [required, String] :lag_id
    #   The ID of the LAG with which to associate the connection.
    #
    #   Example: dxlag-abc123
    #
    #   Default: None
    #
    # @return [Types::Connection] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Connection#owner_account #owner_account} => String
    #   * {Types::Connection#connection_id #connection_id} => String
    #   * {Types::Connection#connection_name #connection_name} => String
    #   * {Types::Connection#connection_state #connection_state} => String
    #   * {Types::Connection#region #region} => String
    #   * {Types::Connection#location #location} => String
    #   * {Types::Connection#bandwidth #bandwidth} => String
    #   * {Types::Connection#vlan #vlan} => Integer
    #   * {Types::Connection#partner_name #partner_name} => String
    #   * {Types::Connection#loa_issue_time #loa_issue_time} => Time
    #   * {Types::Connection#lag_id #lag_id} => String
    #   * {Types::Connection#aws_device #aws_device} => String
    #   * {Types::Connection#aws_device_v2 #aws_device_v2} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_connection_with_lag({
    #     connection_id: "ConnectionId", # required
    #     lag_id: "LagId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.owner_account #=> String
    #   resp.connection_id #=> String
    #   resp.connection_name #=> String
    #   resp.connection_state #=> String, one of "ordering", "requested", "pending", "available", "down", "deleting", "deleted", "rejected"
    #   resp.region #=> String
    #   resp.location #=> String
    #   resp.bandwidth #=> String
    #   resp.vlan #=> Integer
    #   resp.partner_name #=> String
    #   resp.loa_issue_time #=> Time
    #   resp.lag_id #=> String
    #   resp.aws_device #=> String
    #   resp.aws_device_v2 #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/AssociateConnectionWithLag AWS API Documentation
    #
    # @overload associate_connection_with_lag(params = {})
    # @param [Hash] params ({})
    def associate_connection_with_lag(params = {}, options = {})
      req = build_request(:associate_connection_with_lag, params)
      req.send_request(options)
    end

    # Associates a hosted connection and its virtual interfaces with a link
    # aggregation group (LAG) or interconnect. If the target interconnect or
    # LAG has an existing hosted connection with a conflicting VLAN number
    # or IP address, the operation fails. This action temporarily interrupts
    # the hosted connection's connectivity to AWS as it is being migrated.
    #
    # <note markdown="1"> This is intended for use by AWS Direct Connect partners only.
    #
    #  </note>
    #
    # @option params [required, String] :connection_id
    #   The ID of the hosted connection.
    #
    #   Example: dxcon-abc123
    #
    #   Default: None
    #
    # @option params [required, String] :parent_connection_id
    #   The ID of the interconnect or the LAG.
    #
    #   Example: dxcon-abc123 or dxlag-abc123
    #
    #   Default: None
    #
    # @return [Types::Connection] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Connection#owner_account #owner_account} => String
    #   * {Types::Connection#connection_id #connection_id} => String
    #   * {Types::Connection#connection_name #connection_name} => String
    #   * {Types::Connection#connection_state #connection_state} => String
    #   * {Types::Connection#region #region} => String
    #   * {Types::Connection#location #location} => String
    #   * {Types::Connection#bandwidth #bandwidth} => String
    #   * {Types::Connection#vlan #vlan} => Integer
    #   * {Types::Connection#partner_name #partner_name} => String
    #   * {Types::Connection#loa_issue_time #loa_issue_time} => Time
    #   * {Types::Connection#lag_id #lag_id} => String
    #   * {Types::Connection#aws_device #aws_device} => String
    #   * {Types::Connection#aws_device_v2 #aws_device_v2} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_hosted_connection({
    #     connection_id: "ConnectionId", # required
    #     parent_connection_id: "ConnectionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.owner_account #=> String
    #   resp.connection_id #=> String
    #   resp.connection_name #=> String
    #   resp.connection_state #=> String, one of "ordering", "requested", "pending", "available", "down", "deleting", "deleted", "rejected"
    #   resp.region #=> String
    #   resp.location #=> String
    #   resp.bandwidth #=> String
    #   resp.vlan #=> Integer
    #   resp.partner_name #=> String
    #   resp.loa_issue_time #=> Time
    #   resp.lag_id #=> String
    #   resp.aws_device #=> String
    #   resp.aws_device_v2 #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/AssociateHostedConnection AWS API Documentation
    #
    # @overload associate_hosted_connection(params = {})
    # @param [Hash] params ({})
    def associate_hosted_connection(params = {}, options = {})
      req = build_request(:associate_hosted_connection, params)
      req.send_request(options)
    end

    # Associates a virtual interface with a specified link aggregation group
    # (LAG) or connection. Connectivity to AWS is temporarily interrupted as
    # the virtual interface is being migrated. If the target connection or
    # LAG has an associated virtual interface with a conflicting VLAN number
    # or a conflicting IP address, the operation fails.
    #
    # Virtual interfaces associated with a hosted connection cannot be
    # associated with a LAG; hosted connections must be migrated along with
    # their virtual interfaces using AssociateHostedConnection.
    #
    # In order to reassociate a virtual interface to a new connection or
    # LAG, the requester must own either the virtual interface itself or the
    # connection to which the virtual interface is currently associated.
    # Additionally, the requester must own the connection or LAG to which
    # the virtual interface will be newly associated.
    #
    # @option params [required, String] :virtual_interface_id
    #   The ID of the virtual interface.
    #
    #   Example: dxvif-123dfg56
    #
    #   Default: None
    #
    # @option params [required, String] :connection_id
    #   The ID of the LAG or connection with which to associate the virtual
    #   interface.
    #
    #   Example: dxlag-abc123 or dxcon-abc123
    #
    #   Default: None
    #
    # @return [Types::VirtualInterface] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::VirtualInterface#owner_account #owner_account} => String
    #   * {Types::VirtualInterface#virtual_interface_id #virtual_interface_id} => String
    #   * {Types::VirtualInterface#location #location} => String
    #   * {Types::VirtualInterface#connection_id #connection_id} => String
    #   * {Types::VirtualInterface#virtual_interface_type #virtual_interface_type} => String
    #   * {Types::VirtualInterface#virtual_interface_name #virtual_interface_name} => String
    #   * {Types::VirtualInterface#vlan #vlan} => Integer
    #   * {Types::VirtualInterface#asn #asn} => Integer
    #   * {Types::VirtualInterface#amazon_side_asn #amazon_side_asn} => Integer
    #   * {Types::VirtualInterface#auth_key #auth_key} => String
    #   * {Types::VirtualInterface#amazon_address #amazon_address} => String
    #   * {Types::VirtualInterface#customer_address #customer_address} => String
    #   * {Types::VirtualInterface#address_family #address_family} => String
    #   * {Types::VirtualInterface#virtual_interface_state #virtual_interface_state} => String
    #   * {Types::VirtualInterface#customer_router_config #customer_router_config} => String
    #   * {Types::VirtualInterface#virtual_gateway_id #virtual_gateway_id} => String
    #   * {Types::VirtualInterface#direct_connect_gateway_id #direct_connect_gateway_id} => String
    #   * {Types::VirtualInterface#route_filter_prefixes #route_filter_prefixes} => Array&lt;Types::RouteFilterPrefix&gt;
    #   * {Types::VirtualInterface#bgp_peers #bgp_peers} => Array&lt;Types::BGPPeer&gt;
    #   * {Types::VirtualInterface#region #region} => String
    #   * {Types::VirtualInterface#aws_device_v2 #aws_device_v2} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_virtual_interface({
    #     virtual_interface_id: "VirtualInterfaceId", # required
    #     connection_id: "ConnectionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.owner_account #=> String
    #   resp.virtual_interface_id #=> String
    #   resp.location #=> String
    #   resp.connection_id #=> String
    #   resp.virtual_interface_type #=> String
    #   resp.virtual_interface_name #=> String
    #   resp.vlan #=> Integer
    #   resp.asn #=> Integer
    #   resp.amazon_side_asn #=> Integer
    #   resp.auth_key #=> String
    #   resp.amazon_address #=> String
    #   resp.customer_address #=> String
    #   resp.address_family #=> String, one of "ipv4", "ipv6"
    #   resp.virtual_interface_state #=> String, one of "confirming", "verifying", "pending", "available", "down", "deleting", "deleted", "rejected"
    #   resp.customer_router_config #=> String
    #   resp.virtual_gateway_id #=> String
    #   resp.direct_connect_gateway_id #=> String
    #   resp.route_filter_prefixes #=> Array
    #   resp.route_filter_prefixes[0].cidr #=> String
    #   resp.bgp_peers #=> Array
    #   resp.bgp_peers[0].asn #=> Integer
    #   resp.bgp_peers[0].auth_key #=> String
    #   resp.bgp_peers[0].address_family #=> String, one of "ipv4", "ipv6"
    #   resp.bgp_peers[0].amazon_address #=> String
    #   resp.bgp_peers[0].customer_address #=> String
    #   resp.bgp_peers[0].bgp_peer_state #=> String, one of "verifying", "pending", "available", "deleting", "deleted"
    #   resp.bgp_peers[0].bgp_status #=> String, one of "up", "down"
    #   resp.bgp_peers[0].aws_device_v2 #=> String
    #   resp.region #=> String
    #   resp.aws_device_v2 #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/AssociateVirtualInterface AWS API Documentation
    #
    # @overload associate_virtual_interface(params = {})
    # @param [Hash] params ({})
    def associate_virtual_interface(params = {}, options = {})
      req = build_request(:associate_virtual_interface, params)
      req.send_request(options)
    end

    # Confirm the creation of a hosted connection on an interconnect.
    #
    # Upon creation, the hosted connection is initially in the 'Ordering'
    # state, and will remain in this state until the owner calls
    # ConfirmConnection to confirm creation of the hosted connection.
    #
    # @option params [required, String] :connection_id
    #   The ID of the connection. This field is also used as the ID type for
    #   operations that use multiple connection types (LAG, interconnect,
    #   and/or connection).
    #
    #   Example: dxcon-fg5678gh
    #
    #   Default: None
    #
    # @return [Types::ConfirmConnectionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ConfirmConnectionResponse#connection_state #connection_state} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.confirm_connection({
    #     connection_id: "ConnectionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.connection_state #=> String, one of "ordering", "requested", "pending", "available", "down", "deleting", "deleted", "rejected"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/ConfirmConnection AWS API Documentation
    #
    # @overload confirm_connection(params = {})
    # @param [Hash] params ({})
    def confirm_connection(params = {}, options = {})
      req = build_request(:confirm_connection, params)
      req.send_request(options)
    end

    # Accept ownership of a private virtual interface created by another
    # customer.
    #
    # After the virtual interface owner calls this function, the virtual
    # interface will be created and attached to the given virtual private
    # gateway or direct connect gateway, and will be available for handling
    # traffic.
    #
    # @option params [required, String] :virtual_interface_id
    #   The ID of the virtual interface.
    #
    #   Example: dxvif-123dfg56
    #
    #   Default: None
    #
    # @option params [String] :virtual_gateway_id
    #   ID of the virtual private gateway that will be attached to the virtual
    #   interface.
    #
    #   A virtual private gateway can be managed via the Amazon Virtual
    #   Private Cloud (VPC) console or the [EC2 CreateVpnGateway][1] action.
    #
    #   Default: None
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-CreateVpnGateway.html
    #
    # @option params [String] :direct_connect_gateway_id
    #   ID of the direct connect gateway that will be attached to the virtual
    #   interface.
    #
    #   A direct connect gateway can be managed via the AWS Direct Connect
    #   console or the CreateDirectConnectGateway action.
    #
    #   Default: None
    #
    # @return [Types::ConfirmPrivateVirtualInterfaceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ConfirmPrivateVirtualInterfaceResponse#virtual_interface_state #virtual_interface_state} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.confirm_private_virtual_interface({
    #     virtual_interface_id: "VirtualInterfaceId", # required
    #     virtual_gateway_id: "VirtualGatewayId",
    #     direct_connect_gateway_id: "DirectConnectGatewayId",
    #   })
    #
    # @example Response structure
    #
    #   resp.virtual_interface_state #=> String, one of "confirming", "verifying", "pending", "available", "down", "deleting", "deleted", "rejected"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/ConfirmPrivateVirtualInterface AWS API Documentation
    #
    # @overload confirm_private_virtual_interface(params = {})
    # @param [Hash] params ({})
    def confirm_private_virtual_interface(params = {}, options = {})
      req = build_request(:confirm_private_virtual_interface, params)
      req.send_request(options)
    end

    # Accept ownership of a public virtual interface created by another
    # customer.
    #
    # After the virtual interface owner calls this function, the specified
    # virtual interface will be created and made available for handling
    # traffic.
    #
    # @option params [required, String] :virtual_interface_id
    #   The ID of the virtual interface.
    #
    #   Example: dxvif-123dfg56
    #
    #   Default: None
    #
    # @return [Types::ConfirmPublicVirtualInterfaceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ConfirmPublicVirtualInterfaceResponse#virtual_interface_state #virtual_interface_state} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.confirm_public_virtual_interface({
    #     virtual_interface_id: "VirtualInterfaceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.virtual_interface_state #=> String, one of "confirming", "verifying", "pending", "available", "down", "deleting", "deleted", "rejected"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/ConfirmPublicVirtualInterface AWS API Documentation
    #
    # @overload confirm_public_virtual_interface(params = {})
    # @param [Hash] params ({})
    def confirm_public_virtual_interface(params = {}, options = {})
      req = build_request(:confirm_public_virtual_interface, params)
      req.send_request(options)
    end

    # Creates a new BGP peer on a specified virtual interface. The BGP peer
    # cannot be in the same address family (IPv4/IPv6) of an existing BGP
    # peer on the virtual interface.
    #
    # You must create a BGP peer for the corresponding address family in
    # order to access AWS resources that also use that address family.
    #
    # When creating a IPv6 BGP peer, the Amazon address and customer address
    # fields must be left blank. IPv6 addresses are automatically assigned
    # from Amazon's pool of IPv6 addresses; you cannot specify custom IPv6
    # addresses.
    #
    # For a public virtual interface, the Autonomous System Number (ASN)
    # must be private or already whitelisted for the virtual interface.
    #
    # @option params [String] :virtual_interface_id
    #   The ID of the virtual interface on which the BGP peer will be
    #   provisioned.
    #
    #   Example: dxvif-456abc78
    #
    #   Default: None
    #
    # @option params [Types::NewBGPPeer] :new_bgp_peer
    #   Detailed information for the BGP peer to be created.
    #
    #   Default: None
    #
    # @return [Types::CreateBGPPeerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateBGPPeerResponse#virtual_interface #virtual_interface} => Types::VirtualInterface
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_bgp_peer({
    #     virtual_interface_id: "VirtualInterfaceId",
    #     new_bgp_peer: {
    #       asn: 1,
    #       auth_key: "BGPAuthKey",
    #       address_family: "ipv4", # accepts ipv4, ipv6
    #       amazon_address: "AmazonAddress",
    #       customer_address: "CustomerAddress",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.virtual_interface.owner_account #=> String
    #   resp.virtual_interface.virtual_interface_id #=> String
    #   resp.virtual_interface.location #=> String
    #   resp.virtual_interface.connection_id #=> String
    #   resp.virtual_interface.virtual_interface_type #=> String
    #   resp.virtual_interface.virtual_interface_name #=> String
    #   resp.virtual_interface.vlan #=> Integer
    #   resp.virtual_interface.asn #=> Integer
    #   resp.virtual_interface.amazon_side_asn #=> Integer
    #   resp.virtual_interface.auth_key #=> String
    #   resp.virtual_interface.amazon_address #=> String
    #   resp.virtual_interface.customer_address #=> String
    #   resp.virtual_interface.address_family #=> String, one of "ipv4", "ipv6"
    #   resp.virtual_interface.virtual_interface_state #=> String, one of "confirming", "verifying", "pending", "available", "down", "deleting", "deleted", "rejected"
    #   resp.virtual_interface.customer_router_config #=> String
    #   resp.virtual_interface.virtual_gateway_id #=> String
    #   resp.virtual_interface.direct_connect_gateway_id #=> String
    #   resp.virtual_interface.route_filter_prefixes #=> Array
    #   resp.virtual_interface.route_filter_prefixes[0].cidr #=> String
    #   resp.virtual_interface.bgp_peers #=> Array
    #   resp.virtual_interface.bgp_peers[0].asn #=> Integer
    #   resp.virtual_interface.bgp_peers[0].auth_key #=> String
    #   resp.virtual_interface.bgp_peers[0].address_family #=> String, one of "ipv4", "ipv6"
    #   resp.virtual_interface.bgp_peers[0].amazon_address #=> String
    #   resp.virtual_interface.bgp_peers[0].customer_address #=> String
    #   resp.virtual_interface.bgp_peers[0].bgp_peer_state #=> String, one of "verifying", "pending", "available", "deleting", "deleted"
    #   resp.virtual_interface.bgp_peers[0].bgp_status #=> String, one of "up", "down"
    #   resp.virtual_interface.bgp_peers[0].aws_device_v2 #=> String
    #   resp.virtual_interface.region #=> String
    #   resp.virtual_interface.aws_device_v2 #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/CreateBGPPeer AWS API Documentation
    #
    # @overload create_bgp_peer(params = {})
    # @param [Hash] params ({})
    def create_bgp_peer(params = {}, options = {})
      req = build_request(:create_bgp_peer, params)
      req.send_request(options)
    end

    # Creates a new connection between the customer network and a specific
    # AWS Direct Connect location.
    #
    # A connection links your internal network to an AWS Direct Connect
    # location over a standard 1 gigabit or 10 gigabit Ethernet fiber-optic
    # cable. One end of the cable is connected to your router, the other to
    # an AWS Direct Connect router. An AWS Direct Connect location provides
    # access to Amazon Web Services in the region it is associated with. You
    # can establish connections with AWS Direct Connect locations in
    # multiple regions, but a connection in one region does not provide
    # connectivity to other regions.
    #
    # To find the locations for your region, use DescribeLocations.
    #
    # You can automatically add the new connection to a link aggregation
    # group (LAG) by specifying a LAG ID in the request. This ensures that
    # the new connection is allocated on the same AWS Direct Connect
    # endpoint that hosts the specified LAG. If there are no available ports
    # on the endpoint, the request fails and no connection will be created.
    #
    # @option params [required, String] :location
    #   Where the connection is located.
    #
    #   Example: EqSV5
    #
    #   Default: None
    #
    # @option params [required, String] :bandwidth
    #   Bandwidth of the connection.
    #
    #   Example: 1Gbps
    #
    #   Default: None
    #
    # @option params [required, String] :connection_name
    #   The name of the connection.
    #
    #   Example: "*My Connection to AWS*"
    #
    #   Default: None
    #
    # @option params [String] :lag_id
    #   The ID of the LAG.
    #
    #   Example: dxlag-fg5678gh
    #
    # @return [Types::Connection] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Connection#owner_account #owner_account} => String
    #   * {Types::Connection#connection_id #connection_id} => String
    #   * {Types::Connection#connection_name #connection_name} => String
    #   * {Types::Connection#connection_state #connection_state} => String
    #   * {Types::Connection#region #region} => String
    #   * {Types::Connection#location #location} => String
    #   * {Types::Connection#bandwidth #bandwidth} => String
    #   * {Types::Connection#vlan #vlan} => Integer
    #   * {Types::Connection#partner_name #partner_name} => String
    #   * {Types::Connection#loa_issue_time #loa_issue_time} => Time
    #   * {Types::Connection#lag_id #lag_id} => String
    #   * {Types::Connection#aws_device #aws_device} => String
    #   * {Types::Connection#aws_device_v2 #aws_device_v2} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_connection({
    #     location: "LocationCode", # required
    #     bandwidth: "Bandwidth", # required
    #     connection_name: "ConnectionName", # required
    #     lag_id: "LagId",
    #   })
    #
    # @example Response structure
    #
    #   resp.owner_account #=> String
    #   resp.connection_id #=> String
    #   resp.connection_name #=> String
    #   resp.connection_state #=> String, one of "ordering", "requested", "pending", "available", "down", "deleting", "deleted", "rejected"
    #   resp.region #=> String
    #   resp.location #=> String
    #   resp.bandwidth #=> String
    #   resp.vlan #=> Integer
    #   resp.partner_name #=> String
    #   resp.loa_issue_time #=> Time
    #   resp.lag_id #=> String
    #   resp.aws_device #=> String
    #   resp.aws_device_v2 #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/CreateConnection AWS API Documentation
    #
    # @overload create_connection(params = {})
    # @param [Hash] params ({})
    def create_connection(params = {}, options = {})
      req = build_request(:create_connection, params)
      req.send_request(options)
    end

    # Creates a new direct connect gateway. A direct connect gateway is an
    # intermediate object that enables you to connect a set of virtual
    # interfaces and virtual private gateways. direct connect gateways are
    # global and visible in any AWS region after they are created. The
    # virtual interfaces and virtual private gateways that are connected
    # through a direct connect gateway can be in different regions. This
    # enables you to connect to a VPC in any region, regardless of the
    # region in which the virtual interfaces are located, and pass traffic
    # between them.
    #
    # @option params [required, String] :direct_connect_gateway_name
    #   The name of the direct connect gateway.
    #
    #   Example: "My direct connect gateway"
    #
    #   Default: None
    #
    # @option params [Integer] :amazon_side_asn
    #   The autonomous system number (ASN) for Border Gateway Protocol (BGP)
    #   to be configured on the Amazon side of the connection. The ASN must be
    #   in the private range of 64,512 to 65,534 or 4,200,000,000 to
    #   4,294,967,294
    #
    #   Example: 65200
    #
    #   Default: 64512
    #
    # @return [Types::CreateDirectConnectGatewayResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDirectConnectGatewayResult#direct_connect_gateway #direct_connect_gateway} => Types::DirectConnectGateway
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_direct_connect_gateway({
    #     direct_connect_gateway_name: "DirectConnectGatewayName", # required
    #     amazon_side_asn: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.direct_connect_gateway.direct_connect_gateway_id #=> String
    #   resp.direct_connect_gateway.direct_connect_gateway_name #=> String
    #   resp.direct_connect_gateway.amazon_side_asn #=> Integer
    #   resp.direct_connect_gateway.owner_account #=> String
    #   resp.direct_connect_gateway.direct_connect_gateway_state #=> String, one of "pending", "available", "deleting", "deleted"
    #   resp.direct_connect_gateway.state_change_error #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/CreateDirectConnectGateway AWS API Documentation
    #
    # @overload create_direct_connect_gateway(params = {})
    # @param [Hash] params ({})
    def create_direct_connect_gateway(params = {}, options = {})
      req = build_request(:create_direct_connect_gateway, params)
      req.send_request(options)
    end

    # Creates an association between a direct connect gateway and a virtual
    # private gateway (VGW). The VGW must be attached to a VPC and must not
    # be associated with another direct connect gateway.
    #
    # @option params [required, String] :direct_connect_gateway_id
    #   The ID of the direct connect gateway.
    #
    #   Example: "abcd1234-dcba-5678-be23-cdef9876ab45"
    #
    #   Default: None
    #
    # @option params [required, String] :virtual_gateway_id
    #   The ID of the virtual private gateway.
    #
    #   Example: "vgw-abc123ef"
    #
    #   Default: None
    #
    # @return [Types::CreateDirectConnectGatewayAssociationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDirectConnectGatewayAssociationResult#direct_connect_gateway_association #direct_connect_gateway_association} => Types::DirectConnectGatewayAssociation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_direct_connect_gateway_association({
    #     direct_connect_gateway_id: "DirectConnectGatewayId", # required
    #     virtual_gateway_id: "VirtualGatewayId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.direct_connect_gateway_association.direct_connect_gateway_id #=> String
    #   resp.direct_connect_gateway_association.virtual_gateway_id #=> String
    #   resp.direct_connect_gateway_association.virtual_gateway_region #=> String
    #   resp.direct_connect_gateway_association.virtual_gateway_owner_account #=> String
    #   resp.direct_connect_gateway_association.association_state #=> String, one of "associating", "associated", "disassociating", "disassociated"
    #   resp.direct_connect_gateway_association.state_change_error #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/CreateDirectConnectGatewayAssociation AWS API Documentation
    #
    # @overload create_direct_connect_gateway_association(params = {})
    # @param [Hash] params ({})
    def create_direct_connect_gateway_association(params = {}, options = {})
      req = build_request(:create_direct_connect_gateway_association, params)
      req.send_request(options)
    end

    # Creates a new interconnect between a AWS Direct Connect partner's
    # network and a specific AWS Direct Connect location.
    #
    # An interconnect is a connection which is capable of hosting other
    # connections. The AWS Direct Connect partner can use an interconnect to
    # provide sub-1Gbps AWS Direct Connect service to tier 2 customers who
    # do not have their own connections. Like a standard connection, an
    # interconnect links the AWS Direct Connect partner's network to an AWS
    # Direct Connect location over a standard 1 Gbps or 10 Gbps Ethernet
    # fiber-optic cable. One end is connected to the partner's router, the
    # other to an AWS Direct Connect router.
    #
    # You can automatically add the new interconnect to a link aggregation
    # group (LAG) by specifying a LAG ID in the request. This ensures that
    # the new interconnect is allocated on the same AWS Direct Connect
    # endpoint that hosts the specified LAG. If there are no available ports
    # on the endpoint, the request fails and no interconnect will be
    # created.
    #
    # For each end customer, the AWS Direct Connect partner provisions a
    # connection on their interconnect by calling
    # AllocateConnectionOnInterconnect. The end customer can then connect to
    # AWS resources by creating a virtual interface on their connection,
    # using the VLAN assigned to them by the AWS Direct Connect partner.
    #
    # <note markdown="1"> This is intended for use by AWS Direct Connect partners only.
    #
    #  </note>
    #
    # @option params [required, String] :interconnect_name
    #   The name of the interconnect.
    #
    #   Example: "*1G Interconnect to AWS*"
    #
    #   Default: None
    #
    # @option params [required, String] :bandwidth
    #   The port bandwidth
    #
    #   Example: 1Gbps
    #
    #   Default: None
    #
    #   Available values: 1Gbps,10Gbps
    #
    # @option params [required, String] :location
    #   Where the interconnect is located
    #
    #   Example: EqSV5
    #
    #   Default: None
    #
    # @option params [String] :lag_id
    #   The ID of the LAG.
    #
    #   Example: dxlag-fg5678gh
    #
    # @return [Types::Interconnect] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Interconnect#interconnect_id #interconnect_id} => String
    #   * {Types::Interconnect#interconnect_name #interconnect_name} => String
    #   * {Types::Interconnect#interconnect_state #interconnect_state} => String
    #   * {Types::Interconnect#region #region} => String
    #   * {Types::Interconnect#location #location} => String
    #   * {Types::Interconnect#bandwidth #bandwidth} => String
    #   * {Types::Interconnect#loa_issue_time #loa_issue_time} => Time
    #   * {Types::Interconnect#lag_id #lag_id} => String
    #   * {Types::Interconnect#aws_device #aws_device} => String
    #   * {Types::Interconnect#aws_device_v2 #aws_device_v2} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_interconnect({
    #     interconnect_name: "InterconnectName", # required
    #     bandwidth: "Bandwidth", # required
    #     location: "LocationCode", # required
    #     lag_id: "LagId",
    #   })
    #
    # @example Response structure
    #
    #   resp.interconnect_id #=> String
    #   resp.interconnect_name #=> String
    #   resp.interconnect_state #=> String, one of "requested", "pending", "available", "down", "deleting", "deleted"
    #   resp.region #=> String
    #   resp.location #=> String
    #   resp.bandwidth #=> String
    #   resp.loa_issue_time #=> Time
    #   resp.lag_id #=> String
    #   resp.aws_device #=> String
    #   resp.aws_device_v2 #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/CreateInterconnect AWS API Documentation
    #
    # @overload create_interconnect(params = {})
    # @param [Hash] params ({})
    def create_interconnect(params = {}, options = {})
      req = build_request(:create_interconnect, params)
      req.send_request(options)
    end

    # Creates a new link aggregation group (LAG) with the specified number
    # of bundled physical connections between the customer network and a
    # specific AWS Direct Connect location. A LAG is a logical interface
    # that uses the Link Aggregation Control Protocol (LACP) to aggregate
    # multiple 1 gigabit or 10 gigabit interfaces, allowing you to treat
    # them as a single interface.
    #
    # All connections in a LAG must use the same bandwidth (for example, 10
    # Gbps), and must terminate at the same AWS Direct Connect endpoint.
    #
    # You can have up to 10 connections per LAG. Regardless of this limit,
    # if you request more connections for the LAG than AWS Direct Connect
    # can allocate on a single endpoint, no LAG is created.
    #
    # You can specify an existing physical connection or interconnect to
    # include in the LAG (which counts towards the total number of
    # connections). Doing so interrupts the current physical connection or
    # hosted connections, and re-establishes them as a member of the LAG.
    # The LAG will be created on the same AWS Direct Connect endpoint to
    # which the connection terminates. Any virtual interfaces associated
    # with the connection are automatically disassociated and re-associated
    # with the LAG. The connection ID does not change.
    #
    # If the AWS account used to create a LAG is a registered AWS Direct
    # Connect partner, the LAG is automatically enabled to host
    # sub-connections. For a LAG owned by a partner, any associated virtual
    # interfaces cannot be directly configured.
    #
    # @option params [required, Integer] :number_of_connections
    #   The number of physical connections initially provisioned and bundled
    #   by the LAG.
    #
    #   Default: None
    #
    # @option params [required, String] :location
    #   The AWS Direct Connect location in which the LAG should be allocated.
    #
    #   Example: EqSV5
    #
    #   Default: None
    #
    # @option params [required, String] :connections_bandwidth
    #   The bandwidth of the individual physical connections bundled by the
    #   LAG.
    #
    #   Default: None
    #
    #   Available values: 1Gbps, 10Gbps
    #
    # @option params [required, String] :lag_name
    #   The name of the LAG.
    #
    #   Example: "`3x10G LAG to AWS`"
    #
    #   Default: None
    #
    # @option params [String] :connection_id
    #   The ID of an existing connection to migrate to the LAG.
    #
    #   Default: None
    #
    # @return [Types::Lag] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Lag#connections_bandwidth #connections_bandwidth} => String
    #   * {Types::Lag#number_of_connections #number_of_connections} => Integer
    #   * {Types::Lag#lag_id #lag_id} => String
    #   * {Types::Lag#owner_account #owner_account} => String
    #   * {Types::Lag#lag_name #lag_name} => String
    #   * {Types::Lag#lag_state #lag_state} => String
    #   * {Types::Lag#location #location} => String
    #   * {Types::Lag#region #region} => String
    #   * {Types::Lag#minimum_links #minimum_links} => Integer
    #   * {Types::Lag#aws_device #aws_device} => String
    #   * {Types::Lag#aws_device_v2 #aws_device_v2} => String
    #   * {Types::Lag#connections #connections} => Array&lt;Types::Connection&gt;
    #   * {Types::Lag#allows_hosted_connections #allows_hosted_connections} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_lag({
    #     number_of_connections: 1, # required
    #     location: "LocationCode", # required
    #     connections_bandwidth: "Bandwidth", # required
    #     lag_name: "LagName", # required
    #     connection_id: "ConnectionId",
    #   })
    #
    # @example Response structure
    #
    #   resp.connections_bandwidth #=> String
    #   resp.number_of_connections #=> Integer
    #   resp.lag_id #=> String
    #   resp.owner_account #=> String
    #   resp.lag_name #=> String
    #   resp.lag_state #=> String, one of "requested", "pending", "available", "down", "deleting", "deleted"
    #   resp.location #=> String
    #   resp.region #=> String
    #   resp.minimum_links #=> Integer
    #   resp.aws_device #=> String
    #   resp.aws_device_v2 #=> String
    #   resp.connections #=> Array
    #   resp.connections[0].owner_account #=> String
    #   resp.connections[0].connection_id #=> String
    #   resp.connections[0].connection_name #=> String
    #   resp.connections[0].connection_state #=> String, one of "ordering", "requested", "pending", "available", "down", "deleting", "deleted", "rejected"
    #   resp.connections[0].region #=> String
    #   resp.connections[0].location #=> String
    #   resp.connections[0].bandwidth #=> String
    #   resp.connections[0].vlan #=> Integer
    #   resp.connections[0].partner_name #=> String
    #   resp.connections[0].loa_issue_time #=> Time
    #   resp.connections[0].lag_id #=> String
    #   resp.connections[0].aws_device #=> String
    #   resp.connections[0].aws_device_v2 #=> String
    #   resp.allows_hosted_connections #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/CreateLag AWS API Documentation
    #
    # @overload create_lag(params = {})
    # @param [Hash] params ({})
    def create_lag(params = {}, options = {})
      req = build_request(:create_lag, params)
      req.send_request(options)
    end

    # Creates a new private virtual interface. A virtual interface is the
    # VLAN that transports AWS Direct Connect traffic. A private virtual
    # interface supports sending traffic to a single virtual private cloud
    # (VPC).
    #
    # @option params [required, String] :connection_id
    #   The ID of the connection. This field is also used as the ID type for
    #   operations that use multiple connection types (LAG, interconnect,
    #   and/or connection).
    #
    #   Example: dxcon-fg5678gh
    #
    #   Default: None
    #
    # @option params [required, Types::NewPrivateVirtualInterface] :new_private_virtual_interface
    #   Detailed information for the private virtual interface to be created.
    #
    #   Default: None
    #
    # @return [Types::VirtualInterface] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::VirtualInterface#owner_account #owner_account} => String
    #   * {Types::VirtualInterface#virtual_interface_id #virtual_interface_id} => String
    #   * {Types::VirtualInterface#location #location} => String
    #   * {Types::VirtualInterface#connection_id #connection_id} => String
    #   * {Types::VirtualInterface#virtual_interface_type #virtual_interface_type} => String
    #   * {Types::VirtualInterface#virtual_interface_name #virtual_interface_name} => String
    #   * {Types::VirtualInterface#vlan #vlan} => Integer
    #   * {Types::VirtualInterface#asn #asn} => Integer
    #   * {Types::VirtualInterface#amazon_side_asn #amazon_side_asn} => Integer
    #   * {Types::VirtualInterface#auth_key #auth_key} => String
    #   * {Types::VirtualInterface#amazon_address #amazon_address} => String
    #   * {Types::VirtualInterface#customer_address #customer_address} => String
    #   * {Types::VirtualInterface#address_family #address_family} => String
    #   * {Types::VirtualInterface#virtual_interface_state #virtual_interface_state} => String
    #   * {Types::VirtualInterface#customer_router_config #customer_router_config} => String
    #   * {Types::VirtualInterface#virtual_gateway_id #virtual_gateway_id} => String
    #   * {Types::VirtualInterface#direct_connect_gateway_id #direct_connect_gateway_id} => String
    #   * {Types::VirtualInterface#route_filter_prefixes #route_filter_prefixes} => Array&lt;Types::RouteFilterPrefix&gt;
    #   * {Types::VirtualInterface#bgp_peers #bgp_peers} => Array&lt;Types::BGPPeer&gt;
    #   * {Types::VirtualInterface#region #region} => String
    #   * {Types::VirtualInterface#aws_device_v2 #aws_device_v2} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_private_virtual_interface({
    #     connection_id: "ConnectionId", # required
    #     new_private_virtual_interface: { # required
    #       virtual_interface_name: "VirtualInterfaceName", # required
    #       vlan: 1, # required
    #       asn: 1, # required
    #       auth_key: "BGPAuthKey",
    #       amazon_address: "AmazonAddress",
    #       customer_address: "CustomerAddress",
    #       address_family: "ipv4", # accepts ipv4, ipv6
    #       virtual_gateway_id: "VirtualGatewayId",
    #       direct_connect_gateway_id: "DirectConnectGatewayId",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.owner_account #=> String
    #   resp.virtual_interface_id #=> String
    #   resp.location #=> String
    #   resp.connection_id #=> String
    #   resp.virtual_interface_type #=> String
    #   resp.virtual_interface_name #=> String
    #   resp.vlan #=> Integer
    #   resp.asn #=> Integer
    #   resp.amazon_side_asn #=> Integer
    #   resp.auth_key #=> String
    #   resp.amazon_address #=> String
    #   resp.customer_address #=> String
    #   resp.address_family #=> String, one of "ipv4", "ipv6"
    #   resp.virtual_interface_state #=> String, one of "confirming", "verifying", "pending", "available", "down", "deleting", "deleted", "rejected"
    #   resp.customer_router_config #=> String
    #   resp.virtual_gateway_id #=> String
    #   resp.direct_connect_gateway_id #=> String
    #   resp.route_filter_prefixes #=> Array
    #   resp.route_filter_prefixes[0].cidr #=> String
    #   resp.bgp_peers #=> Array
    #   resp.bgp_peers[0].asn #=> Integer
    #   resp.bgp_peers[0].auth_key #=> String
    #   resp.bgp_peers[0].address_family #=> String, one of "ipv4", "ipv6"
    #   resp.bgp_peers[0].amazon_address #=> String
    #   resp.bgp_peers[0].customer_address #=> String
    #   resp.bgp_peers[0].bgp_peer_state #=> String, one of "verifying", "pending", "available", "deleting", "deleted"
    #   resp.bgp_peers[0].bgp_status #=> String, one of "up", "down"
    #   resp.bgp_peers[0].aws_device_v2 #=> String
    #   resp.region #=> String
    #   resp.aws_device_v2 #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/CreatePrivateVirtualInterface AWS API Documentation
    #
    # @overload create_private_virtual_interface(params = {})
    # @param [Hash] params ({})
    def create_private_virtual_interface(params = {}, options = {})
      req = build_request(:create_private_virtual_interface, params)
      req.send_request(options)
    end

    # Creates a new public virtual interface. A virtual interface is the
    # VLAN that transports AWS Direct Connect traffic. A public virtual
    # interface supports sending traffic to public services of AWS such as
    # Amazon Simple Storage Service (Amazon S3).
    #
    # When creating an IPv6 public virtual interface (addressFamily is
    # 'ipv6'), the customer and amazon address fields should be left blank
    # to use auto-assigned IPv6 space. Custom IPv6 Addresses are currently
    # not supported.
    #
    # @option params [required, String] :connection_id
    #   The ID of the connection. This field is also used as the ID type for
    #   operations that use multiple connection types (LAG, interconnect,
    #   and/or connection).
    #
    #   Example: dxcon-fg5678gh
    #
    #   Default: None
    #
    # @option params [required, Types::NewPublicVirtualInterface] :new_public_virtual_interface
    #   Detailed information for the public virtual interface to be created.
    #
    #   Default: None
    #
    # @return [Types::VirtualInterface] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::VirtualInterface#owner_account #owner_account} => String
    #   * {Types::VirtualInterface#virtual_interface_id #virtual_interface_id} => String
    #   * {Types::VirtualInterface#location #location} => String
    #   * {Types::VirtualInterface#connection_id #connection_id} => String
    #   * {Types::VirtualInterface#virtual_interface_type #virtual_interface_type} => String
    #   * {Types::VirtualInterface#virtual_interface_name #virtual_interface_name} => String
    #   * {Types::VirtualInterface#vlan #vlan} => Integer
    #   * {Types::VirtualInterface#asn #asn} => Integer
    #   * {Types::VirtualInterface#amazon_side_asn #amazon_side_asn} => Integer
    #   * {Types::VirtualInterface#auth_key #auth_key} => String
    #   * {Types::VirtualInterface#amazon_address #amazon_address} => String
    #   * {Types::VirtualInterface#customer_address #customer_address} => String
    #   * {Types::VirtualInterface#address_family #address_family} => String
    #   * {Types::VirtualInterface#virtual_interface_state #virtual_interface_state} => String
    #   * {Types::VirtualInterface#customer_router_config #customer_router_config} => String
    #   * {Types::VirtualInterface#virtual_gateway_id #virtual_gateway_id} => String
    #   * {Types::VirtualInterface#direct_connect_gateway_id #direct_connect_gateway_id} => String
    #   * {Types::VirtualInterface#route_filter_prefixes #route_filter_prefixes} => Array&lt;Types::RouteFilterPrefix&gt;
    #   * {Types::VirtualInterface#bgp_peers #bgp_peers} => Array&lt;Types::BGPPeer&gt;
    #   * {Types::VirtualInterface#region #region} => String
    #   * {Types::VirtualInterface#aws_device_v2 #aws_device_v2} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_public_virtual_interface({
    #     connection_id: "ConnectionId", # required
    #     new_public_virtual_interface: { # required
    #       virtual_interface_name: "VirtualInterfaceName", # required
    #       vlan: 1, # required
    #       asn: 1, # required
    #       auth_key: "BGPAuthKey",
    #       amazon_address: "AmazonAddress",
    #       customer_address: "CustomerAddress",
    #       address_family: "ipv4", # accepts ipv4, ipv6
    #       route_filter_prefixes: [
    #         {
    #           cidr: "CIDR",
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.owner_account #=> String
    #   resp.virtual_interface_id #=> String
    #   resp.location #=> String
    #   resp.connection_id #=> String
    #   resp.virtual_interface_type #=> String
    #   resp.virtual_interface_name #=> String
    #   resp.vlan #=> Integer
    #   resp.asn #=> Integer
    #   resp.amazon_side_asn #=> Integer
    #   resp.auth_key #=> String
    #   resp.amazon_address #=> String
    #   resp.customer_address #=> String
    #   resp.address_family #=> String, one of "ipv4", "ipv6"
    #   resp.virtual_interface_state #=> String, one of "confirming", "verifying", "pending", "available", "down", "deleting", "deleted", "rejected"
    #   resp.customer_router_config #=> String
    #   resp.virtual_gateway_id #=> String
    #   resp.direct_connect_gateway_id #=> String
    #   resp.route_filter_prefixes #=> Array
    #   resp.route_filter_prefixes[0].cidr #=> String
    #   resp.bgp_peers #=> Array
    #   resp.bgp_peers[0].asn #=> Integer
    #   resp.bgp_peers[0].auth_key #=> String
    #   resp.bgp_peers[0].address_family #=> String, one of "ipv4", "ipv6"
    #   resp.bgp_peers[0].amazon_address #=> String
    #   resp.bgp_peers[0].customer_address #=> String
    #   resp.bgp_peers[0].bgp_peer_state #=> String, one of "verifying", "pending", "available", "deleting", "deleted"
    #   resp.bgp_peers[0].bgp_status #=> String, one of "up", "down"
    #   resp.bgp_peers[0].aws_device_v2 #=> String
    #   resp.region #=> String
    #   resp.aws_device_v2 #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/CreatePublicVirtualInterface AWS API Documentation
    #
    # @overload create_public_virtual_interface(params = {})
    # @param [Hash] params ({})
    def create_public_virtual_interface(params = {}, options = {})
      req = build_request(:create_public_virtual_interface, params)
      req.send_request(options)
    end

    # Deletes a BGP peer on the specified virtual interface that matches the
    # specified customer address and ASN. You cannot delete the last BGP
    # peer from a virtual interface.
    #
    # @option params [String] :virtual_interface_id
    #   The ID of the virtual interface from which the BGP peer will be
    #   deleted.
    #
    #   Example: dxvif-456abc78
    #
    #   Default: None
    #
    # @option params [Integer] :asn
    #   The autonomous system (AS) number for Border Gateway Protocol (BGP)
    #   configuration.
    #
    #   Example: 65000
    #
    # @option params [String] :customer_address
    #   IP address assigned to the customer interface.
    #
    #   Example: 192.168.1.2/30 or 2001:db8::2/125
    #
    # @return [Types::DeleteBGPPeerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteBGPPeerResponse#virtual_interface #virtual_interface} => Types::VirtualInterface
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_bgp_peer({
    #     virtual_interface_id: "VirtualInterfaceId",
    #     asn: 1,
    #     customer_address: "CustomerAddress",
    #   })
    #
    # @example Response structure
    #
    #   resp.virtual_interface.owner_account #=> String
    #   resp.virtual_interface.virtual_interface_id #=> String
    #   resp.virtual_interface.location #=> String
    #   resp.virtual_interface.connection_id #=> String
    #   resp.virtual_interface.virtual_interface_type #=> String
    #   resp.virtual_interface.virtual_interface_name #=> String
    #   resp.virtual_interface.vlan #=> Integer
    #   resp.virtual_interface.asn #=> Integer
    #   resp.virtual_interface.amazon_side_asn #=> Integer
    #   resp.virtual_interface.auth_key #=> String
    #   resp.virtual_interface.amazon_address #=> String
    #   resp.virtual_interface.customer_address #=> String
    #   resp.virtual_interface.address_family #=> String, one of "ipv4", "ipv6"
    #   resp.virtual_interface.virtual_interface_state #=> String, one of "confirming", "verifying", "pending", "available", "down", "deleting", "deleted", "rejected"
    #   resp.virtual_interface.customer_router_config #=> String
    #   resp.virtual_interface.virtual_gateway_id #=> String
    #   resp.virtual_interface.direct_connect_gateway_id #=> String
    #   resp.virtual_interface.route_filter_prefixes #=> Array
    #   resp.virtual_interface.route_filter_prefixes[0].cidr #=> String
    #   resp.virtual_interface.bgp_peers #=> Array
    #   resp.virtual_interface.bgp_peers[0].asn #=> Integer
    #   resp.virtual_interface.bgp_peers[0].auth_key #=> String
    #   resp.virtual_interface.bgp_peers[0].address_family #=> String, one of "ipv4", "ipv6"
    #   resp.virtual_interface.bgp_peers[0].amazon_address #=> String
    #   resp.virtual_interface.bgp_peers[0].customer_address #=> String
    #   resp.virtual_interface.bgp_peers[0].bgp_peer_state #=> String, one of "verifying", "pending", "available", "deleting", "deleted"
    #   resp.virtual_interface.bgp_peers[0].bgp_status #=> String, one of "up", "down"
    #   resp.virtual_interface.bgp_peers[0].aws_device_v2 #=> String
    #   resp.virtual_interface.region #=> String
    #   resp.virtual_interface.aws_device_v2 #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DeleteBGPPeer AWS API Documentation
    #
    # @overload delete_bgp_peer(params = {})
    # @param [Hash] params ({})
    def delete_bgp_peer(params = {}, options = {})
      req = build_request(:delete_bgp_peer, params)
      req.send_request(options)
    end

    # Deletes the connection.
    #
    # Deleting a connection only stops the AWS Direct Connect port hour and
    # data transfer charges. You need to cancel separately with the
    # providers any services or charges for cross-connects or network
    # circuits that connect you to the AWS Direct Connect location.
    #
    # @option params [required, String] :connection_id
    #   The ID of the connection. This field is also used as the ID type for
    #   operations that use multiple connection types (LAG, interconnect,
    #   and/or connection).
    #
    #   Example: dxcon-fg5678gh
    #
    #   Default: None
    #
    # @return [Types::Connection] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Connection#owner_account #owner_account} => String
    #   * {Types::Connection#connection_id #connection_id} => String
    #   * {Types::Connection#connection_name #connection_name} => String
    #   * {Types::Connection#connection_state #connection_state} => String
    #   * {Types::Connection#region #region} => String
    #   * {Types::Connection#location #location} => String
    #   * {Types::Connection#bandwidth #bandwidth} => String
    #   * {Types::Connection#vlan #vlan} => Integer
    #   * {Types::Connection#partner_name #partner_name} => String
    #   * {Types::Connection#loa_issue_time #loa_issue_time} => Time
    #   * {Types::Connection#lag_id #lag_id} => String
    #   * {Types::Connection#aws_device #aws_device} => String
    #   * {Types::Connection#aws_device_v2 #aws_device_v2} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_connection({
    #     connection_id: "ConnectionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.owner_account #=> String
    #   resp.connection_id #=> String
    #   resp.connection_name #=> String
    #   resp.connection_state #=> String, one of "ordering", "requested", "pending", "available", "down", "deleting", "deleted", "rejected"
    #   resp.region #=> String
    #   resp.location #=> String
    #   resp.bandwidth #=> String
    #   resp.vlan #=> Integer
    #   resp.partner_name #=> String
    #   resp.loa_issue_time #=> Time
    #   resp.lag_id #=> String
    #   resp.aws_device #=> String
    #   resp.aws_device_v2 #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DeleteConnection AWS API Documentation
    #
    # @overload delete_connection(params = {})
    # @param [Hash] params ({})
    def delete_connection(params = {}, options = {})
      req = build_request(:delete_connection, params)
      req.send_request(options)
    end

    # Deletes a direct connect gateway. You must first delete all virtual
    # interfaces that are attached to the direct connect gateway and
    # disassociate all virtual private gateways that are associated with the
    # direct connect gateway.
    #
    # @option params [required, String] :direct_connect_gateway_id
    #   The ID of the direct connect gateway.
    #
    #   Example: "abcd1234-dcba-5678-be23-cdef9876ab45"
    #
    #   Default: None
    #
    # @return [Types::DeleteDirectConnectGatewayResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteDirectConnectGatewayResult#direct_connect_gateway #direct_connect_gateway} => Types::DirectConnectGateway
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_direct_connect_gateway({
    #     direct_connect_gateway_id: "DirectConnectGatewayId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.direct_connect_gateway.direct_connect_gateway_id #=> String
    #   resp.direct_connect_gateway.direct_connect_gateway_name #=> String
    #   resp.direct_connect_gateway.amazon_side_asn #=> Integer
    #   resp.direct_connect_gateway.owner_account #=> String
    #   resp.direct_connect_gateway.direct_connect_gateway_state #=> String, one of "pending", "available", "deleting", "deleted"
    #   resp.direct_connect_gateway.state_change_error #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DeleteDirectConnectGateway AWS API Documentation
    #
    # @overload delete_direct_connect_gateway(params = {})
    # @param [Hash] params ({})
    def delete_direct_connect_gateway(params = {}, options = {})
      req = build_request(:delete_direct_connect_gateway, params)
      req.send_request(options)
    end

    # Deletes the association between a direct connect gateway and a virtual
    # private gateway.
    #
    # @option params [required, String] :direct_connect_gateway_id
    #   The ID of the direct connect gateway.
    #
    #   Example: "abcd1234-dcba-5678-be23-cdef9876ab45"
    #
    #   Default: None
    #
    # @option params [required, String] :virtual_gateway_id
    #   The ID of the virtual private gateway.
    #
    #   Example: "vgw-abc123ef"
    #
    #   Default: None
    #
    # @return [Types::DeleteDirectConnectGatewayAssociationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteDirectConnectGatewayAssociationResult#direct_connect_gateway_association #direct_connect_gateway_association} => Types::DirectConnectGatewayAssociation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_direct_connect_gateway_association({
    #     direct_connect_gateway_id: "DirectConnectGatewayId", # required
    #     virtual_gateway_id: "VirtualGatewayId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.direct_connect_gateway_association.direct_connect_gateway_id #=> String
    #   resp.direct_connect_gateway_association.virtual_gateway_id #=> String
    #   resp.direct_connect_gateway_association.virtual_gateway_region #=> String
    #   resp.direct_connect_gateway_association.virtual_gateway_owner_account #=> String
    #   resp.direct_connect_gateway_association.association_state #=> String, one of "associating", "associated", "disassociating", "disassociated"
    #   resp.direct_connect_gateway_association.state_change_error #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DeleteDirectConnectGatewayAssociation AWS API Documentation
    #
    # @overload delete_direct_connect_gateway_association(params = {})
    # @param [Hash] params ({})
    def delete_direct_connect_gateway_association(params = {}, options = {})
      req = build_request(:delete_direct_connect_gateway_association, params)
      req.send_request(options)
    end

    # Deletes the specified interconnect.
    #
    # <note markdown="1"> This is intended for use by AWS Direct Connect partners only.
    #
    #  </note>
    #
    # @option params [required, String] :interconnect_id
    #   The ID of the interconnect.
    #
    #   Example: dxcon-abc123
    #
    # @return [Types::DeleteInterconnectResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteInterconnectResponse#interconnect_state #interconnect_state} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_interconnect({
    #     interconnect_id: "InterconnectId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.interconnect_state #=> String, one of "requested", "pending", "available", "down", "deleting", "deleted"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DeleteInterconnect AWS API Documentation
    #
    # @overload delete_interconnect(params = {})
    # @param [Hash] params ({})
    def delete_interconnect(params = {}, options = {})
      req = build_request(:delete_interconnect, params)
      req.send_request(options)
    end

    # Deletes a link aggregation group (LAG). You cannot delete a LAG if it
    # has active virtual interfaces or hosted connections.
    #
    # @option params [required, String] :lag_id
    #   The ID of the LAG to delete.
    #
    #   Example: dxlag-abc123
    #
    #   Default: None
    #
    # @return [Types::Lag] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Lag#connections_bandwidth #connections_bandwidth} => String
    #   * {Types::Lag#number_of_connections #number_of_connections} => Integer
    #   * {Types::Lag#lag_id #lag_id} => String
    #   * {Types::Lag#owner_account #owner_account} => String
    #   * {Types::Lag#lag_name #lag_name} => String
    #   * {Types::Lag#lag_state #lag_state} => String
    #   * {Types::Lag#location #location} => String
    #   * {Types::Lag#region #region} => String
    #   * {Types::Lag#minimum_links #minimum_links} => Integer
    #   * {Types::Lag#aws_device #aws_device} => String
    #   * {Types::Lag#aws_device_v2 #aws_device_v2} => String
    #   * {Types::Lag#connections #connections} => Array&lt;Types::Connection&gt;
    #   * {Types::Lag#allows_hosted_connections #allows_hosted_connections} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_lag({
    #     lag_id: "LagId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.connections_bandwidth #=> String
    #   resp.number_of_connections #=> Integer
    #   resp.lag_id #=> String
    #   resp.owner_account #=> String
    #   resp.lag_name #=> String
    #   resp.lag_state #=> String, one of "requested", "pending", "available", "down", "deleting", "deleted"
    #   resp.location #=> String
    #   resp.region #=> String
    #   resp.minimum_links #=> Integer
    #   resp.aws_device #=> String
    #   resp.aws_device_v2 #=> String
    #   resp.connections #=> Array
    #   resp.connections[0].owner_account #=> String
    #   resp.connections[0].connection_id #=> String
    #   resp.connections[0].connection_name #=> String
    #   resp.connections[0].connection_state #=> String, one of "ordering", "requested", "pending", "available", "down", "deleting", "deleted", "rejected"
    #   resp.connections[0].region #=> String
    #   resp.connections[0].location #=> String
    #   resp.connections[0].bandwidth #=> String
    #   resp.connections[0].vlan #=> Integer
    #   resp.connections[0].partner_name #=> String
    #   resp.connections[0].loa_issue_time #=> Time
    #   resp.connections[0].lag_id #=> String
    #   resp.connections[0].aws_device #=> String
    #   resp.connections[0].aws_device_v2 #=> String
    #   resp.allows_hosted_connections #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DeleteLag AWS API Documentation
    #
    # @overload delete_lag(params = {})
    # @param [Hash] params ({})
    def delete_lag(params = {}, options = {})
      req = build_request(:delete_lag, params)
      req.send_request(options)
    end

    # Deletes a virtual interface.
    #
    # @option params [required, String] :virtual_interface_id
    #   The ID of the virtual interface.
    #
    #   Example: dxvif-123dfg56
    #
    #   Default: None
    #
    # @return [Types::DeleteVirtualInterfaceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteVirtualInterfaceResponse#virtual_interface_state #virtual_interface_state} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_virtual_interface({
    #     virtual_interface_id: "VirtualInterfaceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.virtual_interface_state #=> String, one of "confirming", "verifying", "pending", "available", "down", "deleting", "deleted", "rejected"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DeleteVirtualInterface AWS API Documentation
    #
    # @overload delete_virtual_interface(params = {})
    # @param [Hash] params ({})
    def delete_virtual_interface(params = {}, options = {})
      req = build_request(:delete_virtual_interface, params)
      req.send_request(options)
    end

    # Deprecated in favor of DescribeLoa.
    #
    # Returns the LOA-CFA for a Connection.
    #
    # The Letter of Authorization - Connecting Facility Assignment (LOA-CFA)
    # is a document that your APN partner or service provider uses when
    # establishing your cross connect to AWS at the colocation facility. For
    # more information, see [Requesting Cross Connects at AWS Direct Connect
    # Locations][1] in the AWS Direct Connect user guide.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/directconnect/latest/UserGuide/Colocation.html
    #
    # @option params [required, String] :connection_id
    #   The ID of the connection. This field is also used as the ID type for
    #   operations that use multiple connection types (LAG, interconnect,
    #   and/or connection).
    #
    #   Example: dxcon-fg5678gh
    #
    #   Default: None
    #
    # @option params [String] :provider_name
    #   The name of the APN partner or service provider who establishes
    #   connectivity on your behalf. If you supply this parameter, the LOA-CFA
    #   lists the provider name alongside your company name as the requester
    #   of the cross connect.
    #
    #   Default: None
    #
    # @option params [String] :loa_content_type
    #   A standard media type indicating the content type of the LOA-CFA
    #   document. Currently, the only supported value is "application/pdf".
    #
    #   Default: application/pdf
    #
    # @return [Types::DescribeConnectionLoaResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeConnectionLoaResponse#loa #loa} => Types::Loa
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_connection_loa({
    #     connection_id: "ConnectionId", # required
    #     provider_name: "ProviderName",
    #     loa_content_type: "application/pdf", # accepts application/pdf
    #   })
    #
    # @example Response structure
    #
    #   resp.loa.loa_content #=> String
    #   resp.loa.loa_content_type #=> String, one of "application/pdf"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DescribeConnectionLoa AWS API Documentation
    #
    # @overload describe_connection_loa(params = {})
    # @param [Hash] params ({})
    def describe_connection_loa(params = {}, options = {})
      req = build_request(:describe_connection_loa, params)
      req.send_request(options)
    end

    # Displays all connections in this region.
    #
    # If a connection ID is provided, the call returns only that particular
    # connection.
    #
    # @option params [String] :connection_id
    #   The ID of the connection. This field is also used as the ID type for
    #   operations that use multiple connection types (LAG, interconnect,
    #   and/or connection).
    #
    #   Example: dxcon-fg5678gh
    #
    #   Default: None
    #
    # @return [Types::Connections] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Connections#connections #connections} => Array&lt;Types::Connection&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_connections({
    #     connection_id: "ConnectionId",
    #   })
    #
    # @example Response structure
    #
    #   resp.connections #=> Array
    #   resp.connections[0].owner_account #=> String
    #   resp.connections[0].connection_id #=> String
    #   resp.connections[0].connection_name #=> String
    #   resp.connections[0].connection_state #=> String, one of "ordering", "requested", "pending", "available", "down", "deleting", "deleted", "rejected"
    #   resp.connections[0].region #=> String
    #   resp.connections[0].location #=> String
    #   resp.connections[0].bandwidth #=> String
    #   resp.connections[0].vlan #=> Integer
    #   resp.connections[0].partner_name #=> String
    #   resp.connections[0].loa_issue_time #=> Time
    #   resp.connections[0].lag_id #=> String
    #   resp.connections[0].aws_device #=> String
    #   resp.connections[0].aws_device_v2 #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DescribeConnections AWS API Documentation
    #
    # @overload describe_connections(params = {})
    # @param [Hash] params ({})
    def describe_connections(params = {}, options = {})
      req = build_request(:describe_connections, params)
      req.send_request(options)
    end

    # Deprecated in favor of DescribeHostedConnections.
    #
    # Returns a list of connections that have been provisioned on the given
    # interconnect.
    #
    # <note markdown="1"> This is intended for use by AWS Direct Connect partners only.
    #
    #  </note>
    #
    # @option params [required, String] :interconnect_id
    #   ID of the interconnect on which a list of connection is provisioned.
    #
    #   Example: dxcon-abc123
    #
    #   Default: None
    #
    # @return [Types::Connections] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Connections#connections #connections} => Array&lt;Types::Connection&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_connections_on_interconnect({
    #     interconnect_id: "InterconnectId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.connections #=> Array
    #   resp.connections[0].owner_account #=> String
    #   resp.connections[0].connection_id #=> String
    #   resp.connections[0].connection_name #=> String
    #   resp.connections[0].connection_state #=> String, one of "ordering", "requested", "pending", "available", "down", "deleting", "deleted", "rejected"
    #   resp.connections[0].region #=> String
    #   resp.connections[0].location #=> String
    #   resp.connections[0].bandwidth #=> String
    #   resp.connections[0].vlan #=> Integer
    #   resp.connections[0].partner_name #=> String
    #   resp.connections[0].loa_issue_time #=> Time
    #   resp.connections[0].lag_id #=> String
    #   resp.connections[0].aws_device #=> String
    #   resp.connections[0].aws_device_v2 #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DescribeConnectionsOnInterconnect AWS API Documentation
    #
    # @overload describe_connections_on_interconnect(params = {})
    # @param [Hash] params ({})
    def describe_connections_on_interconnect(params = {}, options = {})
      req = build_request(:describe_connections_on_interconnect, params)
      req.send_request(options)
    end

    # Returns a list of all direct connect gateway and virtual private
    # gateway (VGW) associations. Either a direct connect gateway ID or a
    # VGW ID must be provided in the request. If a direct connect gateway ID
    # is provided, the response returns all VGWs associated with the direct
    # connect gateway. If a VGW ID is provided, the response returns all
    # direct connect gateways associated with the VGW. If both are provided,
    # the response only returns the association that matches both the direct
    # connect gateway and the VGW.
    #
    # @option params [String] :direct_connect_gateway_id
    #   The ID of the direct connect gateway.
    #
    #   Example: "abcd1234-dcba-5678-be23-cdef9876ab45"
    #
    #   Default: None
    #
    # @option params [String] :virtual_gateway_id
    #   The ID of the virtual private gateway.
    #
    #   Example: "vgw-abc123ef"
    #
    #   Default: None
    #
    # @option params [Integer] :max_results
    #   The maximum number of direct connect gateway associations to return
    #   per page.
    #
    #   Example: 15
    #
    #   Default: None
    #
    # @option params [String] :next_token
    #   The token provided in the previous describe result to retrieve the
    #   next page of the result.
    #
    #   Default: None
    #
    # @return [Types::DescribeDirectConnectGatewayAssociationsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDirectConnectGatewayAssociationsResult#direct_connect_gateway_associations #direct_connect_gateway_associations} => Array&lt;Types::DirectConnectGatewayAssociation&gt;
    #   * {Types::DescribeDirectConnectGatewayAssociationsResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_direct_connect_gateway_associations({
    #     direct_connect_gateway_id: "DirectConnectGatewayId",
    #     virtual_gateway_id: "VirtualGatewayId",
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.direct_connect_gateway_associations #=> Array
    #   resp.direct_connect_gateway_associations[0].direct_connect_gateway_id #=> String
    #   resp.direct_connect_gateway_associations[0].virtual_gateway_id #=> String
    #   resp.direct_connect_gateway_associations[0].virtual_gateway_region #=> String
    #   resp.direct_connect_gateway_associations[0].virtual_gateway_owner_account #=> String
    #   resp.direct_connect_gateway_associations[0].association_state #=> String, one of "associating", "associated", "disassociating", "disassociated"
    #   resp.direct_connect_gateway_associations[0].state_change_error #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DescribeDirectConnectGatewayAssociations AWS API Documentation
    #
    # @overload describe_direct_connect_gateway_associations(params = {})
    # @param [Hash] params ({})
    def describe_direct_connect_gateway_associations(params = {}, options = {})
      req = build_request(:describe_direct_connect_gateway_associations, params)
      req.send_request(options)
    end

    # Returns a list of all direct connect gateway and virtual interface
    # (VIF) attachments. Either a direct connect gateway ID or a VIF ID must
    # be provided in the request. If a direct connect gateway ID is
    # provided, the response returns all VIFs attached to the direct connect
    # gateway. If a VIF ID is provided, the response returns all direct
    # connect gateways attached to the VIF. If both are provided, the
    # response only returns the attachment that matches both the direct
    # connect gateway and the VIF.
    #
    # @option params [String] :direct_connect_gateway_id
    #   The ID of the direct connect gateway.
    #
    #   Example: "abcd1234-dcba-5678-be23-cdef9876ab45"
    #
    #   Default: None
    #
    # @option params [String] :virtual_interface_id
    #   The ID of the virtual interface.
    #
    #   Example: "dxvif-abc123ef"
    #
    #   Default: None
    #
    # @option params [Integer] :max_results
    #   The maximum number of direct connect gateway attachments to return per
    #   page.
    #
    #   Example: 15
    #
    #   Default: None
    #
    # @option params [String] :next_token
    #   The token provided in the previous describe result to retrieve the
    #   next page of the result.
    #
    #   Default: None
    #
    # @return [Types::DescribeDirectConnectGatewayAttachmentsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDirectConnectGatewayAttachmentsResult#direct_connect_gateway_attachments #direct_connect_gateway_attachments} => Array&lt;Types::DirectConnectGatewayAttachment&gt;
    #   * {Types::DescribeDirectConnectGatewayAttachmentsResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_direct_connect_gateway_attachments({
    #     direct_connect_gateway_id: "DirectConnectGatewayId",
    #     virtual_interface_id: "VirtualInterfaceId",
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.direct_connect_gateway_attachments #=> Array
    #   resp.direct_connect_gateway_attachments[0].direct_connect_gateway_id #=> String
    #   resp.direct_connect_gateway_attachments[0].virtual_interface_id #=> String
    #   resp.direct_connect_gateway_attachments[0].virtual_interface_region #=> String
    #   resp.direct_connect_gateway_attachments[0].virtual_interface_owner_account #=> String
    #   resp.direct_connect_gateway_attachments[0].attachment_state #=> String, one of "attaching", "attached", "detaching", "detached"
    #   resp.direct_connect_gateway_attachments[0].state_change_error #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DescribeDirectConnectGatewayAttachments AWS API Documentation
    #
    # @overload describe_direct_connect_gateway_attachments(params = {})
    # @param [Hash] params ({})
    def describe_direct_connect_gateway_attachments(params = {}, options = {})
      req = build_request(:describe_direct_connect_gateway_attachments, params)
      req.send_request(options)
    end

    # Returns a list of direct connect gateways in your account. Deleted
    # direct connect gateways are not returned. You can provide a direct
    # connect gateway ID in the request to return information about the
    # specific direct connect gateway only. Otherwise, if a direct connect
    # gateway ID is not provided, information about all of your direct
    # connect gateways is returned.
    #
    # @option params [String] :direct_connect_gateway_id
    #   The ID of the direct connect gateway.
    #
    #   Example: "abcd1234-dcba-5678-be23-cdef9876ab45"
    #
    #   Default: None
    #
    # @option params [Integer] :max_results
    #   The maximum number of direct connect gateways to return per page.
    #
    #   Example: 15
    #
    #   Default: None
    #
    # @option params [String] :next_token
    #   The token provided in the previous describe result to retrieve the
    #   next page of the result.
    #
    #   Default: None
    #
    # @return [Types::DescribeDirectConnectGatewaysResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDirectConnectGatewaysResult#direct_connect_gateways #direct_connect_gateways} => Array&lt;Types::DirectConnectGateway&gt;
    #   * {Types::DescribeDirectConnectGatewaysResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_direct_connect_gateways({
    #     direct_connect_gateway_id: "DirectConnectGatewayId",
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.direct_connect_gateways #=> Array
    #   resp.direct_connect_gateways[0].direct_connect_gateway_id #=> String
    #   resp.direct_connect_gateways[0].direct_connect_gateway_name #=> String
    #   resp.direct_connect_gateways[0].amazon_side_asn #=> Integer
    #   resp.direct_connect_gateways[0].owner_account #=> String
    #   resp.direct_connect_gateways[0].direct_connect_gateway_state #=> String, one of "pending", "available", "deleting", "deleted"
    #   resp.direct_connect_gateways[0].state_change_error #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DescribeDirectConnectGateways AWS API Documentation
    #
    # @overload describe_direct_connect_gateways(params = {})
    # @param [Hash] params ({})
    def describe_direct_connect_gateways(params = {}, options = {})
      req = build_request(:describe_direct_connect_gateways, params)
      req.send_request(options)
    end

    # Returns a list of hosted connections that have been provisioned on the
    # given interconnect or link aggregation group (LAG).
    #
    # <note markdown="1"> This is intended for use by AWS Direct Connect partners only.
    #
    #  </note>
    #
    # @option params [required, String] :connection_id
    #   The ID of the interconnect or LAG on which the hosted connections are
    #   provisioned.
    #
    #   Example: dxcon-abc123 or dxlag-abc123
    #
    #   Default: None
    #
    # @return [Types::Connections] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Connections#connections #connections} => Array&lt;Types::Connection&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_hosted_connections({
    #     connection_id: "ConnectionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.connections #=> Array
    #   resp.connections[0].owner_account #=> String
    #   resp.connections[0].connection_id #=> String
    #   resp.connections[0].connection_name #=> String
    #   resp.connections[0].connection_state #=> String, one of "ordering", "requested", "pending", "available", "down", "deleting", "deleted", "rejected"
    #   resp.connections[0].region #=> String
    #   resp.connections[0].location #=> String
    #   resp.connections[0].bandwidth #=> String
    #   resp.connections[0].vlan #=> Integer
    #   resp.connections[0].partner_name #=> String
    #   resp.connections[0].loa_issue_time #=> Time
    #   resp.connections[0].lag_id #=> String
    #   resp.connections[0].aws_device #=> String
    #   resp.connections[0].aws_device_v2 #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DescribeHostedConnections AWS API Documentation
    #
    # @overload describe_hosted_connections(params = {})
    # @param [Hash] params ({})
    def describe_hosted_connections(params = {}, options = {})
      req = build_request(:describe_hosted_connections, params)
      req.send_request(options)
    end

    # Deprecated in favor of DescribeLoa.
    #
    # Returns the LOA-CFA for an Interconnect.
    #
    # The Letter of Authorization - Connecting Facility Assignment (LOA-CFA)
    # is a document that is used when establishing your cross connect to AWS
    # at the colocation facility. For more information, see [Requesting
    # Cross Connects at AWS Direct Connect Locations][1] in the AWS Direct
    # Connect user guide.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/directconnect/latest/UserGuide/Colocation.html
    #
    # @option params [required, String] :interconnect_id
    #   The ID of the interconnect.
    #
    #   Example: dxcon-abc123
    #
    # @option params [String] :provider_name
    #   The name of the service provider who establishes connectivity on your
    #   behalf. If you supply this parameter, the LOA-CFA lists the provider
    #   name alongside your company name as the requester of the cross
    #   connect.
    #
    #   Default: None
    #
    # @option params [String] :loa_content_type
    #   A standard media type indicating the content type of the LOA-CFA
    #   document. Currently, the only supported value is "application/pdf".
    #
    #   Default: application/pdf
    #
    # @return [Types::DescribeInterconnectLoaResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeInterconnectLoaResponse#loa #loa} => Types::Loa
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_interconnect_loa({
    #     interconnect_id: "InterconnectId", # required
    #     provider_name: "ProviderName",
    #     loa_content_type: "application/pdf", # accepts application/pdf
    #   })
    #
    # @example Response structure
    #
    #   resp.loa.loa_content #=> String
    #   resp.loa.loa_content_type #=> String, one of "application/pdf"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DescribeInterconnectLoa AWS API Documentation
    #
    # @overload describe_interconnect_loa(params = {})
    # @param [Hash] params ({})
    def describe_interconnect_loa(params = {}, options = {})
      req = build_request(:describe_interconnect_loa, params)
      req.send_request(options)
    end

    # Returns a list of interconnects owned by the AWS account.
    #
    # If an interconnect ID is provided, it will only return this particular
    # interconnect.
    #
    # @option params [String] :interconnect_id
    #   The ID of the interconnect.
    #
    #   Example: dxcon-abc123
    #
    # @return [Types::Interconnects] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Interconnects#interconnects #interconnects} => Array&lt;Types::Interconnect&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_interconnects({
    #     interconnect_id: "InterconnectId",
    #   })
    #
    # @example Response structure
    #
    #   resp.interconnects #=> Array
    #   resp.interconnects[0].interconnect_id #=> String
    #   resp.interconnects[0].interconnect_name #=> String
    #   resp.interconnects[0].interconnect_state #=> String, one of "requested", "pending", "available", "down", "deleting", "deleted"
    #   resp.interconnects[0].region #=> String
    #   resp.interconnects[0].location #=> String
    #   resp.interconnects[0].bandwidth #=> String
    #   resp.interconnects[0].loa_issue_time #=> Time
    #   resp.interconnects[0].lag_id #=> String
    #   resp.interconnects[0].aws_device #=> String
    #   resp.interconnects[0].aws_device_v2 #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DescribeInterconnects AWS API Documentation
    #
    # @overload describe_interconnects(params = {})
    # @param [Hash] params ({})
    def describe_interconnects(params = {}, options = {})
      req = build_request(:describe_interconnects, params)
      req.send_request(options)
    end

    # Describes the link aggregation groups (LAGs) in your account.
    #
    # If a LAG ID is provided, only information about the specified LAG is
    # returned.
    #
    # @option params [String] :lag_id
    #   The ID of the LAG.
    #
    #   Example: dxlag-abc123
    #
    #   Default: None
    #
    # @return [Types::Lags] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Lags#lags #lags} => Array&lt;Types::Lag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_lags({
    #     lag_id: "LagId",
    #   })
    #
    # @example Response structure
    #
    #   resp.lags #=> Array
    #   resp.lags[0].connections_bandwidth #=> String
    #   resp.lags[0].number_of_connections #=> Integer
    #   resp.lags[0].lag_id #=> String
    #   resp.lags[0].owner_account #=> String
    #   resp.lags[0].lag_name #=> String
    #   resp.lags[0].lag_state #=> String, one of "requested", "pending", "available", "down", "deleting", "deleted"
    #   resp.lags[0].location #=> String
    #   resp.lags[0].region #=> String
    #   resp.lags[0].minimum_links #=> Integer
    #   resp.lags[0].aws_device #=> String
    #   resp.lags[0].aws_device_v2 #=> String
    #   resp.lags[0].connections #=> Array
    #   resp.lags[0].connections[0].owner_account #=> String
    #   resp.lags[0].connections[0].connection_id #=> String
    #   resp.lags[0].connections[0].connection_name #=> String
    #   resp.lags[0].connections[0].connection_state #=> String, one of "ordering", "requested", "pending", "available", "down", "deleting", "deleted", "rejected"
    #   resp.lags[0].connections[0].region #=> String
    #   resp.lags[0].connections[0].location #=> String
    #   resp.lags[0].connections[0].bandwidth #=> String
    #   resp.lags[0].connections[0].vlan #=> Integer
    #   resp.lags[0].connections[0].partner_name #=> String
    #   resp.lags[0].connections[0].loa_issue_time #=> Time
    #   resp.lags[0].connections[0].lag_id #=> String
    #   resp.lags[0].connections[0].aws_device #=> String
    #   resp.lags[0].connections[0].aws_device_v2 #=> String
    #   resp.lags[0].allows_hosted_connections #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DescribeLags AWS API Documentation
    #
    # @overload describe_lags(params = {})
    # @param [Hash] params ({})
    def describe_lags(params = {}, options = {})
      req = build_request(:describe_lags, params)
      req.send_request(options)
    end

    # Returns the LOA-CFA for a connection, interconnect, or link
    # aggregation group (LAG).
    #
    # The Letter of Authorization - Connecting Facility Assignment (LOA-CFA)
    # is a document that is used when establishing your cross connect to AWS
    # at the colocation facility. For more information, see [Requesting
    # Cross Connects at AWS Direct Connect Locations][1] in the AWS Direct
    # Connect user guide.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/directconnect/latest/UserGuide/Colocation.html
    #
    # @option params [required, String] :connection_id
    #   The ID of a connection, LAG, or interconnect for which to get the
    #   LOA-CFA information.
    #
    #   Example: dxcon-abc123 or dxlag-abc123
    #
    #   Default: None
    #
    # @option params [String] :provider_name
    #   The name of the service provider who establishes connectivity on your
    #   behalf. If you supply this parameter, the LOA-CFA lists the provider
    #   name alongside your company name as the requester of the cross
    #   connect.
    #
    #   Default: None
    #
    # @option params [String] :loa_content_type
    #   A standard media type indicating the content type of the LOA-CFA
    #   document. Currently, the only supported value is "application/pdf".
    #
    #   Default: application/pdf
    #
    # @return [Types::Loa] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Loa#loa_content #loa_content} => String
    #   * {Types::Loa#loa_content_type #loa_content_type} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_loa({
    #     connection_id: "ConnectionId", # required
    #     provider_name: "ProviderName",
    #     loa_content_type: "application/pdf", # accepts application/pdf
    #   })
    #
    # @example Response structure
    #
    #   resp.loa_content #=> String
    #   resp.loa_content_type #=> String, one of "application/pdf"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DescribeLoa AWS API Documentation
    #
    # @overload describe_loa(params = {})
    # @param [Hash] params ({})
    def describe_loa(params = {}, options = {})
      req = build_request(:describe_loa, params)
      req.send_request(options)
    end

    # Returns the list of AWS Direct Connect locations in the current AWS
    # region. These are the locations that may be selected when calling
    # CreateConnection or CreateInterconnect.
    #
    # @return [Types::Locations] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Locations#locations #locations} => Array&lt;Types::Location&gt;
    #
    # @example Response structure
    #
    #   resp.locations #=> Array
    #   resp.locations[0].location_code #=> String
    #   resp.locations[0].location_name #=> String
    #   resp.locations[0].region #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DescribeLocations AWS API Documentation
    #
    # @overload describe_locations(params = {})
    # @param [Hash] params ({})
    def describe_locations(params = {}, options = {})
      req = build_request(:describe_locations, params)
      req.send_request(options)
    end

    # Describes the tags associated with the specified Direct Connect
    # resources.
    #
    # @option params [required, Array<String>] :resource_arns
    #   The Amazon Resource Names (ARNs) of the Direct Connect resources.
    #
    # @return [Types::DescribeTagsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTagsResponse#resource_tags #resource_tags} => Array&lt;Types::ResourceTag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_tags({
    #     resource_arns: ["ResourceArn"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_tags #=> Array
    #   resp.resource_tags[0].resource_arn #=> String
    #   resp.resource_tags[0].tags #=> Array
    #   resp.resource_tags[0].tags[0].key #=> String
    #   resp.resource_tags[0].tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DescribeTags AWS API Documentation
    #
    # @overload describe_tags(params = {})
    # @param [Hash] params ({})
    def describe_tags(params = {}, options = {})
      req = build_request(:describe_tags, params)
      req.send_request(options)
    end

    # Returns a list of virtual private gateways owned by the AWS account.
    #
    # You can create one or more AWS Direct Connect private virtual
    # interfaces linking to a virtual private gateway. A virtual private
    # gateway can be managed via Amazon Virtual Private Cloud (VPC) console
    # or the [EC2 CreateVpnGateway][1] action.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-CreateVpnGateway.html
    #
    # @return [Types::VirtualGateways] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::VirtualGateways#virtual_gateways #virtual_gateways} => Array&lt;Types::VirtualGateway&gt;
    #
    # @example Response structure
    #
    #   resp.virtual_gateways #=> Array
    #   resp.virtual_gateways[0].virtual_gateway_id #=> String
    #   resp.virtual_gateways[0].virtual_gateway_state #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DescribeVirtualGateways AWS API Documentation
    #
    # @overload describe_virtual_gateways(params = {})
    # @param [Hash] params ({})
    def describe_virtual_gateways(params = {}, options = {})
      req = build_request(:describe_virtual_gateways, params)
      req.send_request(options)
    end

    # Displays all virtual interfaces for an AWS account. Virtual interfaces
    # deleted fewer than 15 minutes before you make the request are also
    # returned. If you specify a connection ID, only the virtual interfaces
    # associated with the connection are returned. If you specify a virtual
    # interface ID, then only a single virtual interface is returned.
    #
    # A virtual interface (VLAN) transmits the traffic between the AWS
    # Direct Connect location and the customer.
    #
    # @option params [String] :connection_id
    #   The ID of the connection. This field is also used as the ID type for
    #   operations that use multiple connection types (LAG, interconnect,
    #   and/or connection).
    #
    #   Example: dxcon-fg5678gh
    #
    #   Default: None
    #
    # @option params [String] :virtual_interface_id
    #   The ID of the virtual interface.
    #
    #   Example: dxvif-123dfg56
    #
    #   Default: None
    #
    # @return [Types::VirtualInterfaces] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::VirtualInterfaces#virtual_interfaces #virtual_interfaces} => Array&lt;Types::VirtualInterface&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_virtual_interfaces({
    #     connection_id: "ConnectionId",
    #     virtual_interface_id: "VirtualInterfaceId",
    #   })
    #
    # @example Response structure
    #
    #   resp.virtual_interfaces #=> Array
    #   resp.virtual_interfaces[0].owner_account #=> String
    #   resp.virtual_interfaces[0].virtual_interface_id #=> String
    #   resp.virtual_interfaces[0].location #=> String
    #   resp.virtual_interfaces[0].connection_id #=> String
    #   resp.virtual_interfaces[0].virtual_interface_type #=> String
    #   resp.virtual_interfaces[0].virtual_interface_name #=> String
    #   resp.virtual_interfaces[0].vlan #=> Integer
    #   resp.virtual_interfaces[0].asn #=> Integer
    #   resp.virtual_interfaces[0].amazon_side_asn #=> Integer
    #   resp.virtual_interfaces[0].auth_key #=> String
    #   resp.virtual_interfaces[0].amazon_address #=> String
    #   resp.virtual_interfaces[0].customer_address #=> String
    #   resp.virtual_interfaces[0].address_family #=> String, one of "ipv4", "ipv6"
    #   resp.virtual_interfaces[0].virtual_interface_state #=> String, one of "confirming", "verifying", "pending", "available", "down", "deleting", "deleted", "rejected"
    #   resp.virtual_interfaces[0].customer_router_config #=> String
    #   resp.virtual_interfaces[0].virtual_gateway_id #=> String
    #   resp.virtual_interfaces[0].direct_connect_gateway_id #=> String
    #   resp.virtual_interfaces[0].route_filter_prefixes #=> Array
    #   resp.virtual_interfaces[0].route_filter_prefixes[0].cidr #=> String
    #   resp.virtual_interfaces[0].bgp_peers #=> Array
    #   resp.virtual_interfaces[0].bgp_peers[0].asn #=> Integer
    #   resp.virtual_interfaces[0].bgp_peers[0].auth_key #=> String
    #   resp.virtual_interfaces[0].bgp_peers[0].address_family #=> String, one of "ipv4", "ipv6"
    #   resp.virtual_interfaces[0].bgp_peers[0].amazon_address #=> String
    #   resp.virtual_interfaces[0].bgp_peers[0].customer_address #=> String
    #   resp.virtual_interfaces[0].bgp_peers[0].bgp_peer_state #=> String, one of "verifying", "pending", "available", "deleting", "deleted"
    #   resp.virtual_interfaces[0].bgp_peers[0].bgp_status #=> String, one of "up", "down"
    #   resp.virtual_interfaces[0].bgp_peers[0].aws_device_v2 #=> String
    #   resp.virtual_interfaces[0].region #=> String
    #   resp.virtual_interfaces[0].aws_device_v2 #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DescribeVirtualInterfaces AWS API Documentation
    #
    # @overload describe_virtual_interfaces(params = {})
    # @param [Hash] params ({})
    def describe_virtual_interfaces(params = {}, options = {})
      req = build_request(:describe_virtual_interfaces, params)
      req.send_request(options)
    end

    # Disassociates a connection from a link aggregation group (LAG). The
    # connection is interrupted and re-established as a standalone
    # connection (the connection is not deleted; to delete the connection,
    # use the DeleteConnection request). If the LAG has associated virtual
    # interfaces or hosted connections, they remain associated with the LAG.
    # A disassociated connection owned by an AWS Direct Connect partner is
    # automatically converted to an interconnect.
    #
    # If disassociating the connection will cause the LAG to fall below its
    # setting for minimum number of operational connections, the request
    # fails, except when it's the last member of the LAG. If all
    # connections are disassociated, the LAG continues to exist as an empty
    # LAG with no physical connections.
    #
    # @option params [required, String] :connection_id
    #   The ID of the connection to disassociate from the LAG.
    #
    #   Example: dxcon-abc123
    #
    #   Default: None
    #
    # @option params [required, String] :lag_id
    #   The ID of the LAG.
    #
    #   Example: dxlag-abc123
    #
    #   Default: None
    #
    # @return [Types::Connection] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Connection#owner_account #owner_account} => String
    #   * {Types::Connection#connection_id #connection_id} => String
    #   * {Types::Connection#connection_name #connection_name} => String
    #   * {Types::Connection#connection_state #connection_state} => String
    #   * {Types::Connection#region #region} => String
    #   * {Types::Connection#location #location} => String
    #   * {Types::Connection#bandwidth #bandwidth} => String
    #   * {Types::Connection#vlan #vlan} => Integer
    #   * {Types::Connection#partner_name #partner_name} => String
    #   * {Types::Connection#loa_issue_time #loa_issue_time} => Time
    #   * {Types::Connection#lag_id #lag_id} => String
    #   * {Types::Connection#aws_device #aws_device} => String
    #   * {Types::Connection#aws_device_v2 #aws_device_v2} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_connection_from_lag({
    #     connection_id: "ConnectionId", # required
    #     lag_id: "LagId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.owner_account #=> String
    #   resp.connection_id #=> String
    #   resp.connection_name #=> String
    #   resp.connection_state #=> String, one of "ordering", "requested", "pending", "available", "down", "deleting", "deleted", "rejected"
    #   resp.region #=> String
    #   resp.location #=> String
    #   resp.bandwidth #=> String
    #   resp.vlan #=> Integer
    #   resp.partner_name #=> String
    #   resp.loa_issue_time #=> Time
    #   resp.lag_id #=> String
    #   resp.aws_device #=> String
    #   resp.aws_device_v2 #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DisassociateConnectionFromLag AWS API Documentation
    #
    # @overload disassociate_connection_from_lag(params = {})
    # @param [Hash] params ({})
    def disassociate_connection_from_lag(params = {}, options = {})
      req = build_request(:disassociate_connection_from_lag, params)
      req.send_request(options)
    end

    # Adds the specified tags to the specified Direct Connect resource. Each
    # Direct Connect resource can have a maximum of 50 tags.
    #
    # Each tag consists of a key and an optional value. If a tag with the
    # same key is already associated with the Direct Connect resource, this
    # action updates its value.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the Direct Connect resource.
    #
    #   Example:
    #   arn:aws:directconnect:us-east-1:123456789012:dxcon/dxcon-fg5678gh
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   The list of tags to add.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "ResourceArn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes one or more tags from the specified Direct Connect resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the Direct Connect resource.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The list of tag keys to remove.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "ResourceArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates the attributes of a link aggregation group (LAG).
    #
    # You can update the following attributes:
    #
    # * The name of the LAG.
    #
    # * The value for the minimum number of connections that must be
    #   operational for the LAG itself to be operational.
    #
    # When you create a LAG, the default value for the minimum number of
    # operational connections is zero (0). If you update this value, and the
    # number of operational connections falls below the specified value, the
    # LAG will automatically go down to avoid overutilization of the
    # remaining connections. Adjusting this value should be done with care
    # as it could force the LAG down if the value is set higher than the
    # current number of operational connections.
    #
    # @option params [required, String] :lag_id
    #   The ID of the LAG to update.
    #
    #   Example: dxlag-abc123
    #
    #   Default: None
    #
    # @option params [String] :lag_name
    #   The name for the LAG.
    #
    #   Example: "`3x10G LAG to AWS`"
    #
    #   Default: None
    #
    # @option params [Integer] :minimum_links
    #   The minimum number of physical connections that must be operational
    #   for the LAG itself to be operational.
    #
    #   Default: None
    #
    # @return [Types::Lag] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Lag#connections_bandwidth #connections_bandwidth} => String
    #   * {Types::Lag#number_of_connections #number_of_connections} => Integer
    #   * {Types::Lag#lag_id #lag_id} => String
    #   * {Types::Lag#owner_account #owner_account} => String
    #   * {Types::Lag#lag_name #lag_name} => String
    #   * {Types::Lag#lag_state #lag_state} => String
    #   * {Types::Lag#location #location} => String
    #   * {Types::Lag#region #region} => String
    #   * {Types::Lag#minimum_links #minimum_links} => Integer
    #   * {Types::Lag#aws_device #aws_device} => String
    #   * {Types::Lag#aws_device_v2 #aws_device_v2} => String
    #   * {Types::Lag#connections #connections} => Array&lt;Types::Connection&gt;
    #   * {Types::Lag#allows_hosted_connections #allows_hosted_connections} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_lag({
    #     lag_id: "LagId", # required
    #     lag_name: "LagName",
    #     minimum_links: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.connections_bandwidth #=> String
    #   resp.number_of_connections #=> Integer
    #   resp.lag_id #=> String
    #   resp.owner_account #=> String
    #   resp.lag_name #=> String
    #   resp.lag_state #=> String, one of "requested", "pending", "available", "down", "deleting", "deleted"
    #   resp.location #=> String
    #   resp.region #=> String
    #   resp.minimum_links #=> Integer
    #   resp.aws_device #=> String
    #   resp.aws_device_v2 #=> String
    #   resp.connections #=> Array
    #   resp.connections[0].owner_account #=> String
    #   resp.connections[0].connection_id #=> String
    #   resp.connections[0].connection_name #=> String
    #   resp.connections[0].connection_state #=> String, one of "ordering", "requested", "pending", "available", "down", "deleting", "deleted", "rejected"
    #   resp.connections[0].region #=> String
    #   resp.connections[0].location #=> String
    #   resp.connections[0].bandwidth #=> String
    #   resp.connections[0].vlan #=> Integer
    #   resp.connections[0].partner_name #=> String
    #   resp.connections[0].loa_issue_time #=> Time
    #   resp.connections[0].lag_id #=> String
    #   resp.connections[0].aws_device #=> String
    #   resp.connections[0].aws_device_v2 #=> String
    #   resp.allows_hosted_connections #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/UpdateLag AWS API Documentation
    #
    # @overload update_lag(params = {})
    # @param [Hash] params ({})
    def update_lag(params = {}, options = {})
      req = build_request(:update_lag, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config)
      context[:gem_name] = 'aws-sdk-directconnect'
      context[:gem_version] = '1.5.0'
      Seahorse::Client::Request.new(handlers, context)
    end

    # @api private
    # @deprecated
    def waiter_names
      []
    end

    class << self

      # @api private
      attr_reader :identifier

      # @api private
      def errors_module
        Errors
      end

    end
  end
end
