# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
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
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration::IDENTIFIERS << :directconnect

module Aws
  module DirectConnect
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
      # @option options [String] :access_key_id
      # @option options [Boolean] :convert_params (true)
      #   When `true`, an attempt is made to coerce request parameters into
      #   the required types.
      # @option options [String] :endpoint
      #   The client endpoint is normally constructed from the `:region`
      #   option. You should only configure an `:endpoint` when connecting
      #   to test endpoints. This should be avalid HTTP(S) URI.
      # @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
      #   The log formatter.
      # @option options [Symbol] :log_level (:info)
      #   The log level to send messages to the `:logger` at.
      # @option options [Logger] :logger
      #   The Logger instance to send log messages to.  If this option
      #   is not set, logging will be disabled.
      # @option options [String] :profile ("default")
      #   Used when loading credentials from the shared credentials file
      #   at HOME/.aws/credentials.  When not specified, 'default' is used.
      # @option options [Integer] :retry_limit (3)
      #   The maximum number of times to retry failed requests.  Only
      #   ~ 500 level server errors and certain ~ 400 level client errors
      #   are retried.  Generally, these are throttling errors, data
      #   checksum errors, networking errors, timeout errors and auth
      #   errors from expired credentials.
      # @option options [String] :secret_access_key
      # @option options [String] :session_token
      # @option options [Boolean] :simple_json (false)
      #   Disables request parameter conversion, validation, and formatting.
      #   Also disable response data type conversions. This option is useful
      #   when you want to ensure the highest level of performance by
      #   avoiding overhead of walking request parameters and response data
      #   structures.
      #
      #   When `:simple_json` is enabled, the request parameters hash must
      #   be formatted exactly as the DynamoDB API expects.
      # @option options [Boolean] :stub_responses (false)
      #   Causes the client to return stubbed responses. By default
      #   fake responses are generated and returned. You can specify
      #   the response data to return or errors to raise by calling
      #   {ClientStubs#stub_responses}. See {ClientStubs} for more information.
      #
      #   ** Please note ** When response stubbing is enabled, no HTTP
      #   requests are made, and retries are disabled.
      # @option options [Boolean] :validate_params (true)
      #   When `true`, request parameters are validated before
      #   sending the request.
      def initialize(*args)
        super
      end

      # @!group API Operations

      # Creates a hosted connection on an interconnect.
      #
      # Allocates a VLAN number and a specified amount of bandwidth for use by
      # a hosted connection on the given interconnect.
      #
      # <note markdown="1"> This is intended for use by AWS Direct Connect partners only.
      #
      #  </note>
      # @option params [required, String] :bandwidth
      #   Bandwidth of the connection.
      #
      #   Example: "*500Mbps*"
      #
      #   Default: None
      #
      #   Values: 50M, 100M, 200M, 300M, 400M, or 500M
      # @option params [required, String] :connection_name
      #   Name of the provisioned connection.
      #
      #   Example: "*500M Connection to AWS*"
      #
      #   Default: None
      # @option params [required, String] :owner_account
      #   Numeric account Id of the customer for whom the connection will be
      #   provisioned.
      #
      #   Example: 123443215678
      #
      #   Default: None
      # @option params [required, String] :interconnect_id
      #   ID of the interconnect on which the connection will be provisioned.
      #
      #   Example: dxcon-456abc78
      #
      #   Default: None
      # @option params [required, Integer] :vlan
      #   The dedicated VLAN provisioned to the connection.
      #
      #   Example: 101
      #
      #   Default: None
      # @return [Types::Connection] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::Connection#owner_account #ownerAccount} => String
      #   * {Types::Connection#connection_id #connectionId} => String
      #   * {Types::Connection#connection_name #connectionName} => String
      #   * {Types::Connection#connection_state #connectionState} => String
      #   * {Types::Connection#region #region} => String
      #   * {Types::Connection#location #location} => String
      #   * {Types::Connection#bandwidth #bandwidth} => String
      #   * {Types::Connection#vlan #vlan} => Integer
      #   * {Types::Connection#partner_name #partnerName} => String
      #   * {Types::Connection#loa_issue_time #loaIssueTime} => Time
      #
      # @example Request syntax with placeholder values
      #   resp = client.allocate_connection_on_interconnect({
      #     bandwidth: "Bandwidth", # required
      #     connection_name: "ConnectionName", # required
      #     owner_account: "OwnerAccount", # required
      #     interconnect_id: "InterconnectId", # required
      #     vlan: 1, # required
      #   })
      #
      # @example Response structure
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
      # @overload allocate_connection_on_interconnect(params = {})
      # @param [Hash] params ({})
      def allocate_connection_on_interconnect(params = {}, options = {})
        req = build_request(:allocate_connection_on_interconnect, params)
        req.send_request(options)
      end

      # Provisions a private virtual interface to be owned by a different
      # customer.
      #
      # The owner of a connection calls this function to provision a private
      # virtual interface which will be owned by another AWS customer.
      #
      # Virtual interfaces created using this function must be confirmed by
      # the virtual interface owner by calling ConfirmPrivateVirtualInterface.
      # Until this step has been completed, the virtual interface will be in
      # 'Confirming' state, and will not be available for handling traffic.
      # @option params [required, String] :connection_id
      #   The connection ID on which the private virtual interface is
      #   provisioned.
      #
      #   Default: None
      # @option params [required, String] :owner_account
      #   The AWS account that will own the new private virtual interface.
      #
      #   Default: None
      # @option params [required, Types::NewPrivateVirtualInterfaceAllocation] :new_private_virtual_interface_allocation
      #   Detailed information for the private virtual interface to be
      #   provisioned.
      #
      #   Default: None
      # @return [Types::VirtualInterface] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::VirtualInterface#owner_account #ownerAccount} => String
      #   * {Types::VirtualInterface#virtual_interface_id #virtualInterfaceId} => String
      #   * {Types::VirtualInterface#location #location} => String
      #   * {Types::VirtualInterface#connection_id #connectionId} => String
      #   * {Types::VirtualInterface#virtual_interface_type #virtualInterfaceType} => String
      #   * {Types::VirtualInterface#virtual_interface_name #virtualInterfaceName} => String
      #   * {Types::VirtualInterface#vlan #vlan} => Integer
      #   * {Types::VirtualInterface#asn #asn} => Integer
      #   * {Types::VirtualInterface#auth_key #authKey} => String
      #   * {Types::VirtualInterface#amazon_address #amazonAddress} => String
      #   * {Types::VirtualInterface#customer_address #customerAddress} => String
      #   * {Types::VirtualInterface#virtual_interface_state #virtualInterfaceState} => String
      #   * {Types::VirtualInterface#customer_router_config #customerRouterConfig} => String
      #   * {Types::VirtualInterface#virtual_gateway_id #virtualGatewayId} => String
      #   * {Types::VirtualInterface#route_filter_prefixes #routeFilterPrefixes} => Array&lt;Types::RouteFilterPrefix&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.allocate_private_virtual_interface({
      #     connection_id: "ConnectionId", # required
      #     owner_account: "OwnerAccount", # required
      #     new_private_virtual_interface_allocation: { # required
      #       virtual_interface_name: "VirtualInterfaceName", # required
      #       vlan: 1, # required
      #       asn: 1, # required
      #       auth_key: "BGPAuthKey",
      #       amazon_address: "AmazonAddress",
      #       customer_address: "CustomerAddress",
      #     },
      #   })
      #
      # @example Response structure
      #   resp.owner_account #=> String
      #   resp.virtual_interface_id #=> String
      #   resp.location #=> String
      #   resp.connection_id #=> String
      #   resp.virtual_interface_type #=> String
      #   resp.virtual_interface_name #=> String
      #   resp.vlan #=> Integer
      #   resp.asn #=> Integer
      #   resp.auth_key #=> String
      #   resp.amazon_address #=> String
      #   resp.customer_address #=> String
      #   resp.virtual_interface_state #=> String, one of "confirming", "verifying", "pending", "available", "down", "deleting", "deleted", "rejected"
      #   resp.customer_router_config #=> String
      #   resp.virtual_gateway_id #=> String
      #   resp.route_filter_prefixes #=> Array
      #   resp.route_filter_prefixes[0].cidr #=> String
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
      # @option params [required, String] :connection_id
      #   The connection ID on which the public virtual interface is
      #   provisioned.
      #
      #   Default: None
      # @option params [required, String] :owner_account
      #   The AWS account that will own the new public virtual interface.
      #
      #   Default: None
      # @option params [required, Types::NewPublicVirtualInterfaceAllocation] :new_public_virtual_interface_allocation
      #   Detailed information for the public virtual interface to be
      #   provisioned.
      #
      #   Default: None
      # @return [Types::VirtualInterface] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::VirtualInterface#owner_account #ownerAccount} => String
      #   * {Types::VirtualInterface#virtual_interface_id #virtualInterfaceId} => String
      #   * {Types::VirtualInterface#location #location} => String
      #   * {Types::VirtualInterface#connection_id #connectionId} => String
      #   * {Types::VirtualInterface#virtual_interface_type #virtualInterfaceType} => String
      #   * {Types::VirtualInterface#virtual_interface_name #virtualInterfaceName} => String
      #   * {Types::VirtualInterface#vlan #vlan} => Integer
      #   * {Types::VirtualInterface#asn #asn} => Integer
      #   * {Types::VirtualInterface#auth_key #authKey} => String
      #   * {Types::VirtualInterface#amazon_address #amazonAddress} => String
      #   * {Types::VirtualInterface#customer_address #customerAddress} => String
      #   * {Types::VirtualInterface#virtual_interface_state #virtualInterfaceState} => String
      #   * {Types::VirtualInterface#customer_router_config #customerRouterConfig} => String
      #   * {Types::VirtualInterface#virtual_gateway_id #virtualGatewayId} => String
      #   * {Types::VirtualInterface#route_filter_prefixes #routeFilterPrefixes} => Array&lt;Types::RouteFilterPrefix&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.allocate_public_virtual_interface({
      #     connection_id: "ConnectionId", # required
      #     owner_account: "OwnerAccount", # required
      #     new_public_virtual_interface_allocation: { # required
      #       virtual_interface_name: "VirtualInterfaceName", # required
      #       vlan: 1, # required
      #       asn: 1, # required
      #       auth_key: "BGPAuthKey",
      #       amazon_address: "AmazonAddress", # required
      #       customer_address: "CustomerAddress", # required
      #       route_filter_prefixes: [ # required
      #         {
      #           cidr: "CIDR",
      #         },
      #       ],
      #     },
      #   })
      #
      # @example Response structure
      #   resp.owner_account #=> String
      #   resp.virtual_interface_id #=> String
      #   resp.location #=> String
      #   resp.connection_id #=> String
      #   resp.virtual_interface_type #=> String
      #   resp.virtual_interface_name #=> String
      #   resp.vlan #=> Integer
      #   resp.asn #=> Integer
      #   resp.auth_key #=> String
      #   resp.amazon_address #=> String
      #   resp.customer_address #=> String
      #   resp.virtual_interface_state #=> String, one of "confirming", "verifying", "pending", "available", "down", "deleting", "deleted", "rejected"
      #   resp.customer_router_config #=> String
      #   resp.virtual_gateway_id #=> String
      #   resp.route_filter_prefixes #=> Array
      #   resp.route_filter_prefixes[0].cidr #=> String
      # @overload allocate_public_virtual_interface(params = {})
      # @param [Hash] params ({})
      def allocate_public_virtual_interface(params = {}, options = {})
        req = build_request(:allocate_public_virtual_interface, params)
        req.send_request(options)
      end

      # Confirm the creation of a hosted connection on an interconnect.
      #
      # Upon creation, the hosted connection is initially in the 'Ordering'
      # state, and will remain in this state until the owner calls
      # ConfirmConnection to confirm creation of the hosted connection.
      # @option params [required, String] :connection_id
      #   ID of the connection.
      #
      #   Example: dxcon-fg5678gh
      #
      #   Default: None
      # @return [Types::ConfirmConnectionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ConfirmConnectionResponse#connection_state #connectionState} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.confirm_connection({
      #     connection_id: "ConnectionId", # required
      #   })
      #
      # @example Response structure
      #   resp.connection_state #=> String, one of "ordering", "requested", "pending", "available", "down", "deleting", "deleted", "rejected"
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
      # gateway, and will be available for handling traffic.
      # @option params [required, String] :virtual_interface_id
      #   ID of the virtual interface.
      #
      #   Example: dxvif-123dfg56
      #
      #   Default: None
      # @option params [required, String] :virtual_gateway_id
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
      # @return [Types::ConfirmPrivateVirtualInterfaceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ConfirmPrivateVirtualInterfaceResponse#virtual_interface_state #virtualInterfaceState} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.confirm_private_virtual_interface({
      #     virtual_interface_id: "VirtualInterfaceId", # required
      #     virtual_gateway_id: "VirtualGatewayId", # required
      #   })
      #
      # @example Response structure
      #   resp.virtual_interface_state #=> String, one of "confirming", "verifying", "pending", "available", "down", "deleting", "deleted", "rejected"
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
      # @option params [required, String] :virtual_interface_id
      #   ID of the virtual interface.
      #
      #   Example: dxvif-123dfg56
      #
      #   Default: None
      # @return [Types::ConfirmPublicVirtualInterfaceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ConfirmPublicVirtualInterfaceResponse#virtual_interface_state #virtualInterfaceState} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.confirm_public_virtual_interface({
      #     virtual_interface_id: "VirtualInterfaceId", # required
      #   })
      #
      # @example Response structure
      #   resp.virtual_interface_state #=> String, one of "confirming", "verifying", "pending", "available", "down", "deleting", "deleted", "rejected"
      # @overload confirm_public_virtual_interface(params = {})
      # @param [Hash] params ({})
      def confirm_public_virtual_interface(params = {}, options = {})
        req = build_request(:confirm_public_virtual_interface, params)
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
      # @option params [required, String] :location
      #   Where the connection is located.
      #
      #   Example: EqSV5
      #
      #   Default: None
      # @option params [required, String] :bandwidth
      #   Bandwidth of the connection.
      #
      #   Example: 1Gbps
      #
      #   Default: None
      # @option params [required, String] :connection_name
      #   The name of the connection.
      #
      #   Example: "*My Connection to AWS*"
      #
      #   Default: None
      # @return [Types::Connection] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::Connection#owner_account #ownerAccount} => String
      #   * {Types::Connection#connection_id #connectionId} => String
      #   * {Types::Connection#connection_name #connectionName} => String
      #   * {Types::Connection#connection_state #connectionState} => String
      #   * {Types::Connection#region #region} => String
      #   * {Types::Connection#location #location} => String
      #   * {Types::Connection#bandwidth #bandwidth} => String
      #   * {Types::Connection#vlan #vlan} => Integer
      #   * {Types::Connection#partner_name #partnerName} => String
      #   * {Types::Connection#loa_issue_time #loaIssueTime} => Time
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_connection({
      #     location: "LocationCode", # required
      #     bandwidth: "Bandwidth", # required
      #     connection_name: "ConnectionName", # required
      #   })
      #
      # @example Response structure
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
      # @overload create_connection(params = {})
      # @param [Hash] params ({})
      def create_connection(params = {}, options = {})
        req = build_request(:create_connection, params)
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
      # For each end customer, the AWS Direct Connect partner provisions a
      # connection on their interconnect by calling
      # AllocateConnectionOnInterconnect. The end customer can then connect to
      # AWS resources by creating a virtual interface on their connection,
      # using the VLAN assigned to them by the AWS Direct Connect partner.
      #
      # <note markdown="1"> This is intended for use by AWS Direct Connect partners only.
      #
      #  </note>
      # @option params [required, String] :interconnect_name
      #   The name of the interconnect.
      #
      #   Example: "*1G Interconnect to AWS*"
      #
      #   Default: None
      # @option params [required, String] :bandwidth
      #   The port bandwidth
      #
      #   Example: 1Gbps
      #
      #   Default: None
      #
      #   Available values: 1Gbps,10Gbps
      # @option params [required, String] :location
      #   Where the interconnect is located
      #
      #   Example: EqSV5
      #
      #   Default: None
      # @return [Types::Interconnect] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::Interconnect#interconnect_id #interconnectId} => String
      #   * {Types::Interconnect#interconnect_name #interconnectName} => String
      #   * {Types::Interconnect#interconnect_state #interconnectState} => String
      #   * {Types::Interconnect#region #region} => String
      #   * {Types::Interconnect#location #location} => String
      #   * {Types::Interconnect#bandwidth #bandwidth} => String
      #   * {Types::Interconnect#loa_issue_time #loaIssueTime} => Time
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_interconnect({
      #     interconnect_name: "InterconnectName", # required
      #     bandwidth: "Bandwidth", # required
      #     location: "LocationCode", # required
      #   })
      #
      # @example Response structure
      #   resp.interconnect_id #=> String
      #   resp.interconnect_name #=> String
      #   resp.interconnect_state #=> String, one of "requested", "pending", "available", "down", "deleting", "deleted"
      #   resp.region #=> String
      #   resp.location #=> String
      #   resp.bandwidth #=> String
      #   resp.loa_issue_time #=> Time
      # @overload create_interconnect(params = {})
      # @param [Hash] params ({})
      def create_interconnect(params = {}, options = {})
        req = build_request(:create_interconnect, params)
        req.send_request(options)
      end

      # Creates a new private virtual interface. A virtual interface is the
      # VLAN that transports AWS Direct Connect traffic. A private virtual
      # interface supports sending traffic to a single virtual private cloud
      # (VPC).
      # @option params [required, String] :connection_id
      #   ID of the connection.
      #
      #   Example: dxcon-fg5678gh
      #
      #   Default: None
      # @option params [required, Types::NewPrivateVirtualInterface] :new_private_virtual_interface
      #   Detailed information for the private virtual interface to be created.
      #
      #   Default: None
      # @return [Types::VirtualInterface] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::VirtualInterface#owner_account #ownerAccount} => String
      #   * {Types::VirtualInterface#virtual_interface_id #virtualInterfaceId} => String
      #   * {Types::VirtualInterface#location #location} => String
      #   * {Types::VirtualInterface#connection_id #connectionId} => String
      #   * {Types::VirtualInterface#virtual_interface_type #virtualInterfaceType} => String
      #   * {Types::VirtualInterface#virtual_interface_name #virtualInterfaceName} => String
      #   * {Types::VirtualInterface#vlan #vlan} => Integer
      #   * {Types::VirtualInterface#asn #asn} => Integer
      #   * {Types::VirtualInterface#auth_key #authKey} => String
      #   * {Types::VirtualInterface#amazon_address #amazonAddress} => String
      #   * {Types::VirtualInterface#customer_address #customerAddress} => String
      #   * {Types::VirtualInterface#virtual_interface_state #virtualInterfaceState} => String
      #   * {Types::VirtualInterface#customer_router_config #customerRouterConfig} => String
      #   * {Types::VirtualInterface#virtual_gateway_id #virtualGatewayId} => String
      #   * {Types::VirtualInterface#route_filter_prefixes #routeFilterPrefixes} => Array&lt;Types::RouteFilterPrefix&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_private_virtual_interface({
      #     connection_id: "ConnectionId", # required
      #     new_private_virtual_interface: { # required
      #       virtual_interface_name: "VirtualInterfaceName", # required
      #       vlan: 1, # required
      #       asn: 1, # required
      #       auth_key: "BGPAuthKey",
      #       amazon_address: "AmazonAddress",
      #       customer_address: "CustomerAddress",
      #       virtual_gateway_id: "VirtualGatewayId", # required
      #     },
      #   })
      #
      # @example Response structure
      #   resp.owner_account #=> String
      #   resp.virtual_interface_id #=> String
      #   resp.location #=> String
      #   resp.connection_id #=> String
      #   resp.virtual_interface_type #=> String
      #   resp.virtual_interface_name #=> String
      #   resp.vlan #=> Integer
      #   resp.asn #=> Integer
      #   resp.auth_key #=> String
      #   resp.amazon_address #=> String
      #   resp.customer_address #=> String
      #   resp.virtual_interface_state #=> String, one of "confirming", "verifying", "pending", "available", "down", "deleting", "deleted", "rejected"
      #   resp.customer_router_config #=> String
      #   resp.virtual_gateway_id #=> String
      #   resp.route_filter_prefixes #=> Array
      #   resp.route_filter_prefixes[0].cidr #=> String
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
      # @option params [required, String] :connection_id
      #   ID of the connection.
      #
      #   Example: dxcon-fg5678gh
      #
      #   Default: None
      # @option params [required, Types::NewPublicVirtualInterface] :new_public_virtual_interface
      #   Detailed information for the public virtual interface to be created.
      #
      #   Default: None
      # @return [Types::VirtualInterface] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::VirtualInterface#owner_account #ownerAccount} => String
      #   * {Types::VirtualInterface#virtual_interface_id #virtualInterfaceId} => String
      #   * {Types::VirtualInterface#location #location} => String
      #   * {Types::VirtualInterface#connection_id #connectionId} => String
      #   * {Types::VirtualInterface#virtual_interface_type #virtualInterfaceType} => String
      #   * {Types::VirtualInterface#virtual_interface_name #virtualInterfaceName} => String
      #   * {Types::VirtualInterface#vlan #vlan} => Integer
      #   * {Types::VirtualInterface#asn #asn} => Integer
      #   * {Types::VirtualInterface#auth_key #authKey} => String
      #   * {Types::VirtualInterface#amazon_address #amazonAddress} => String
      #   * {Types::VirtualInterface#customer_address #customerAddress} => String
      #   * {Types::VirtualInterface#virtual_interface_state #virtualInterfaceState} => String
      #   * {Types::VirtualInterface#customer_router_config #customerRouterConfig} => String
      #   * {Types::VirtualInterface#virtual_gateway_id #virtualGatewayId} => String
      #   * {Types::VirtualInterface#route_filter_prefixes #routeFilterPrefixes} => Array&lt;Types::RouteFilterPrefix&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_public_virtual_interface({
      #     connection_id: "ConnectionId", # required
      #     new_public_virtual_interface: { # required
      #       virtual_interface_name: "VirtualInterfaceName", # required
      #       vlan: 1, # required
      #       asn: 1, # required
      #       auth_key: "BGPAuthKey",
      #       amazon_address: "AmazonAddress", # required
      #       customer_address: "CustomerAddress", # required
      #       route_filter_prefixes: [ # required
      #         {
      #           cidr: "CIDR",
      #         },
      #       ],
      #     },
      #   })
      #
      # @example Response structure
      #   resp.owner_account #=> String
      #   resp.virtual_interface_id #=> String
      #   resp.location #=> String
      #   resp.connection_id #=> String
      #   resp.virtual_interface_type #=> String
      #   resp.virtual_interface_name #=> String
      #   resp.vlan #=> Integer
      #   resp.asn #=> Integer
      #   resp.auth_key #=> String
      #   resp.amazon_address #=> String
      #   resp.customer_address #=> String
      #   resp.virtual_interface_state #=> String, one of "confirming", "verifying", "pending", "available", "down", "deleting", "deleted", "rejected"
      #   resp.customer_router_config #=> String
      #   resp.virtual_gateway_id #=> String
      #   resp.route_filter_prefixes #=> Array
      #   resp.route_filter_prefixes[0].cidr #=> String
      # @overload create_public_virtual_interface(params = {})
      # @param [Hash] params ({})
      def create_public_virtual_interface(params = {}, options = {})
        req = build_request(:create_public_virtual_interface, params)
        req.send_request(options)
      end

      # Deletes the connection.
      #
      # Deleting a connection only stops the AWS Direct Connect port hour and
      # data transfer charges. You need to cancel separately with the
      # providers any services or charges for cross-connects or network
      # circuits that connect you to the AWS Direct Connect location.
      # @option params [required, String] :connection_id
      #   ID of the connection.
      #
      #   Example: dxcon-fg5678gh
      #
      #   Default: None
      # @return [Types::Connection] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::Connection#owner_account #ownerAccount} => String
      #   * {Types::Connection#connection_id #connectionId} => String
      #   * {Types::Connection#connection_name #connectionName} => String
      #   * {Types::Connection#connection_state #connectionState} => String
      #   * {Types::Connection#region #region} => String
      #   * {Types::Connection#location #location} => String
      #   * {Types::Connection#bandwidth #bandwidth} => String
      #   * {Types::Connection#vlan #vlan} => Integer
      #   * {Types::Connection#partner_name #partnerName} => String
      #   * {Types::Connection#loa_issue_time #loaIssueTime} => Time
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_connection({
      #     connection_id: "ConnectionId", # required
      #   })
      #
      # @example Response structure
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
      # @overload delete_connection(params = {})
      # @param [Hash] params ({})
      def delete_connection(params = {}, options = {})
        req = build_request(:delete_connection, params)
        req.send_request(options)
      end

      # Deletes the specified interconnect.
      #
      # <note markdown="1"> This is intended for use by AWS Direct Connect partners only.
      #
      #  </note>
      # @option params [required, String] :interconnect_id
      #   The ID of the interconnect.
      #
      #   Example: dxcon-abc123
      # @return [Types::DeleteInterconnectResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DeleteInterconnectResponse#interconnect_state #interconnectState} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_interconnect({
      #     interconnect_id: "InterconnectId", # required
      #   })
      #
      # @example Response structure
      #   resp.interconnect_state #=> String, one of "requested", "pending", "available", "down", "deleting", "deleted"
      # @overload delete_interconnect(params = {})
      # @param [Hash] params ({})
      def delete_interconnect(params = {}, options = {})
        req = build_request(:delete_interconnect, params)
        req.send_request(options)
      end

      # Deletes a virtual interface.
      # @option params [required, String] :virtual_interface_id
      #   ID of the virtual interface.
      #
      #   Example: dxvif-123dfg56
      #
      #   Default: None
      # @return [Types::DeleteVirtualInterfaceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DeleteVirtualInterfaceResponse#virtual_interface_state #virtualInterfaceState} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_virtual_interface({
      #     virtual_interface_id: "VirtualInterfaceId", # required
      #   })
      #
      # @example Response structure
      #   resp.virtual_interface_state #=> String, one of "confirming", "verifying", "pending", "available", "down", "deleting", "deleted", "rejected"
      # @overload delete_virtual_interface(params = {})
      # @param [Hash] params ({})
      def delete_virtual_interface(params = {}, options = {})
        req = build_request(:delete_virtual_interface, params)
        req.send_request(options)
      end

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
      # @option params [required, String] :connection_id
      #   ID of the connection.
      #
      #   Example: dxcon-fg5678gh
      #
      #   Default: None
      # @option params [String] :provider_name
      #   The name of the APN partner or service provider who establishes
      #   connectivity on your behalf. If you supply this parameter, the LOA-CFA
      #   lists the provider name alongside your company name as the requester
      #   of the cross connect.
      #
      #   Default: None
      # @option params [String] :loa_content_type
      #   A standard media type indicating the content type of the LOA-CFA
      #   document. Currently, the only supported value is "application/pdf".
      #
      #   Default: application/pdf
      # @return [Types::DescribeConnectionLoaResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeConnectionLoaResponse#loa #loa} => Types::Loa
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_connection_loa({
      #     connection_id: "ConnectionId", # required
      #     provider_name: "ProviderName",
      #     loa_content_type: "application/pdf", # accepts application/pdf
      #   })
      #
      # @example Response structure
      #   resp.loa.loa_content #=> String
      #   resp.loa.loa_content_type #=> String, one of "application/pdf"
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
      # @option params [String] :connection_id
      #   ID of the connection.
      #
      #   Example: dxcon-fg5678gh
      #
      #   Default: None
      # @return [Types::Connections] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::Connections#connections #connections} => Array&lt;Types::Connection&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_connections({
      #     connection_id: "ConnectionId",
      #   })
      #
      # @example Response structure
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
      # @overload describe_connections(params = {})
      # @param [Hash] params ({})
      def describe_connections(params = {}, options = {})
        req = build_request(:describe_connections, params)
        req.send_request(options)
      end

      # Return a list of connections that have been provisioned on the given
      # interconnect.
      #
      # <note markdown="1"> This is intended for use by AWS Direct Connect partners only.
      #
      #  </note>
      # @option params [required, String] :interconnect_id
      #   ID of the interconnect on which a list of connection is provisioned.
      #
      #   Example: dxcon-abc123
      #
      #   Default: None
      # @return [Types::Connections] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::Connections#connections #connections} => Array&lt;Types::Connection&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_connections_on_interconnect({
      #     interconnect_id: "InterconnectId", # required
      #   })
      #
      # @example Response structure
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
      # @overload describe_connections_on_interconnect(params = {})
      # @param [Hash] params ({})
      def describe_connections_on_interconnect(params = {}, options = {})
        req = build_request(:describe_connections_on_interconnect, params)
        req.send_request(options)
      end

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
      # @option params [required, String] :interconnect_id
      #   The ID of the interconnect.
      #
      #   Example: dxcon-abc123
      # @option params [String] :provider_name
      #   The name of the service provider who establishes connectivity on your
      #   behalf. If you supply this parameter, the LOA-CFA lists the provider
      #   name alongside your company name as the requester of the cross
      #   connect.
      #
      #   Default: None
      # @option params [String] :loa_content_type
      #   A standard media type indicating the content type of the LOA-CFA
      #   document. Currently, the only supported value is "application/pdf".
      #
      #   Default: application/pdf
      # @return [Types::DescribeInterconnectLoaResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeInterconnectLoaResponse#loa #loa} => Types::Loa
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_interconnect_loa({
      #     interconnect_id: "InterconnectId", # required
      #     provider_name: "ProviderName",
      #     loa_content_type: "application/pdf", # accepts application/pdf
      #   })
      #
      # @example Response structure
      #   resp.loa.loa_content #=> String
      #   resp.loa.loa_content_type #=> String, one of "application/pdf"
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
      # @option params [String] :interconnect_id
      #   The ID of the interconnect.
      #
      #   Example: dxcon-abc123
      # @return [Types::Interconnects] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::Interconnects#interconnects #interconnects} => Array&lt;Types::Interconnect&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_interconnects({
      #     interconnect_id: "InterconnectId",
      #   })
      #
      # @example Response structure
      #   resp.interconnects #=> Array
      #   resp.interconnects[0].interconnect_id #=> String
      #   resp.interconnects[0].interconnect_name #=> String
      #   resp.interconnects[0].interconnect_state #=> String, one of "requested", "pending", "available", "down", "deleting", "deleted"
      #   resp.interconnects[0].region #=> String
      #   resp.interconnects[0].location #=> String
      #   resp.interconnects[0].bandwidth #=> String
      #   resp.interconnects[0].loa_issue_time #=> Time
      # @overload describe_interconnects(params = {})
      # @param [Hash] params ({})
      def describe_interconnects(params = {}, options = {})
        req = build_request(:describe_interconnects, params)
        req.send_request(options)
      end

      # Returns the list of AWS Direct Connect locations in the current AWS
      # region. These are the locations that may be selected when calling
      # CreateConnection or CreateInterconnect.
      # @return [Types::Locations] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::Locations#locations #locations} => Array&lt;Types::Location&gt;
      #
      # @example Response structure
      #   resp.locations #=> Array
      #   resp.locations[0].location_code #=> String
      #   resp.locations[0].location_name #=> String
      # @overload describe_locations(params = {})
      # @param [Hash] params ({})
      def describe_locations(params = {}, options = {})
        req = build_request(:describe_locations, params)
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
      # @return [Types::VirtualGateways] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::VirtualGateways#virtual_gateways #virtualGateways} => Array&lt;Types::VirtualGateway&gt;
      #
      # @example Response structure
      #   resp.virtual_gateways #=> Array
      #   resp.virtual_gateways[0].virtual_gateway_id #=> String
      #   resp.virtual_gateways[0].virtual_gateway_state #=> String
      # @overload describe_virtual_gateways(params = {})
      # @param [Hash] params ({})
      def describe_virtual_gateways(params = {}, options = {})
        req = build_request(:describe_virtual_gateways, params)
        req.send_request(options)
      end

      # Displays all virtual interfaces for an AWS account. Virtual interfaces
      # deleted fewer than 15 minutes before DescribeVirtualInterfaces is
      # called are also returned. If a connection ID is included then only
      # virtual interfaces associated with this connection will be returned.
      # If a virtual interface ID is included then only a single virtual
      # interface will be returned.
      #
      # A virtual interface (VLAN) transmits the traffic between the AWS
      # Direct Connect location and the customer.
      #
      # If a connection ID is provided, only virtual interfaces provisioned on
      # the specified connection will be returned. If a virtual interface ID
      # is provided, only this particular virtual interface will be returned.
      # @option params [String] :connection_id
      #   ID of the connection.
      #
      #   Example: dxcon-fg5678gh
      #
      #   Default: None
      # @option params [String] :virtual_interface_id
      #   ID of the virtual interface.
      #
      #   Example: dxvif-123dfg56
      #
      #   Default: None
      # @return [Types::VirtualInterfaces] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::VirtualInterfaces#virtual_interfaces #virtualInterfaces} => Array&lt;Types::VirtualInterface&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_virtual_interfaces({
      #     connection_id: "ConnectionId",
      #     virtual_interface_id: "VirtualInterfaceId",
      #   })
      #
      # @example Response structure
      #   resp.virtual_interfaces #=> Array
      #   resp.virtual_interfaces[0].owner_account #=> String
      #   resp.virtual_interfaces[0].virtual_interface_id #=> String
      #   resp.virtual_interfaces[0].location #=> String
      #   resp.virtual_interfaces[0].connection_id #=> String
      #   resp.virtual_interfaces[0].virtual_interface_type #=> String
      #   resp.virtual_interfaces[0].virtual_interface_name #=> String
      #   resp.virtual_interfaces[0].vlan #=> Integer
      #   resp.virtual_interfaces[0].asn #=> Integer
      #   resp.virtual_interfaces[0].auth_key #=> String
      #   resp.virtual_interfaces[0].amazon_address #=> String
      #   resp.virtual_interfaces[0].customer_address #=> String
      #   resp.virtual_interfaces[0].virtual_interface_state #=> String, one of "confirming", "verifying", "pending", "available", "down", "deleting", "deleted", "rejected"
      #   resp.virtual_interfaces[0].customer_router_config #=> String
      #   resp.virtual_interfaces[0].virtual_gateway_id #=> String
      #   resp.virtual_interfaces[0].route_filter_prefixes #=> Array
      #   resp.virtual_interfaces[0].route_filter_prefixes[0].cidr #=> String
      # @overload describe_virtual_interfaces(params = {})
      # @param [Hash] params ({})
      def describe_virtual_interfaces(params = {}, options = {})
        req = build_request(:describe_virtual_interfaces, params)
        req.send_request(options)
      end

      # @!endgroup

      # @api private
      # @deprecated
      def waiter_names
        []
      end

      # @api private
      class << self

        # @api private
        attr_reader :identifier

        def errors_module
          Errors
        end

      end
    end
  end
end
