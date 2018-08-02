# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::DirectConnect
  module Types

    # Container for the parameters to the AllocateConnectionOnInterconnect
    # operation.
    #
    # @note When making an API call, you may pass AllocateConnectionOnInterconnectRequest
    #   data as a hash:
    #
    #       {
    #         bandwidth: "Bandwidth", # required
    #         connection_name: "ConnectionName", # required
    #         owner_account: "OwnerAccount", # required
    #         interconnect_id: "InterconnectId", # required
    #         vlan: 1, # required
    #       }
    #
    # @!attribute [rw] bandwidth
    #   Bandwidth of the connection.
    #
    #   Example: "*500Mbps*"
    #
    #   Default: None
    #
    #   Values: 50Mbps, 100Mbps, 200Mbps, 300Mbps, 400Mbps, or 500Mbps
    #   @return [String]
    #
    # @!attribute [rw] connection_name
    #   Name of the provisioned connection.
    #
    #   Example: "*500M Connection to AWS*"
    #
    #   Default: None
    #   @return [String]
    #
    # @!attribute [rw] owner_account
    #   Numeric account Id of the customer for whom the connection will be
    #   provisioned.
    #
    #   Example: 123443215678
    #
    #   Default: None
    #   @return [String]
    #
    # @!attribute [rw] interconnect_id
    #   ID of the interconnect on which the connection will be provisioned.
    #
    #   Example: dxcon-456abc78
    #
    #   Default: None
    #   @return [String]
    #
    # @!attribute [rw] vlan
    #   The dedicated VLAN provisioned to the connection.
    #
    #   Example: 101
    #
    #   Default: None
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/AllocateConnectionOnInterconnectRequest AWS API Documentation
    #
    class AllocateConnectionOnInterconnectRequest < Struct.new(
      :bandwidth,
      :connection_name,
      :owner_account,
      :interconnect_id,
      :vlan)
      include Aws::Structure
    end

    # Container for the parameters to theHostedConnection operation.
    #
    # @note When making an API call, you may pass AllocateHostedConnectionRequest
    #   data as a hash:
    #
    #       {
    #         connection_id: "ConnectionId", # required
    #         owner_account: "OwnerAccount", # required
    #         bandwidth: "Bandwidth", # required
    #         connection_name: "ConnectionName", # required
    #         vlan: 1, # required
    #       }
    #
    # @!attribute [rw] connection_id
    #   The ID of the interconnect or LAG on which the connection will be
    #   provisioned.
    #
    #   Example: dxcon-456abc78 or dxlag-abc123
    #
    #   Default: None
    #   @return [String]
    #
    # @!attribute [rw] owner_account
    #   The numeric account ID of the customer for whom the connection will
    #   be provisioned.
    #
    #   Example: 123443215678
    #
    #   Default: None
    #   @return [String]
    #
    # @!attribute [rw] bandwidth
    #   The bandwidth of the connection.
    #
    #   Example: `500Mbps`
    #
    #   Default: None
    #
    #   Values: 50Mbps, 100Mbps, 200Mbps, 300Mbps, 400Mbps, or 500Mbps
    #   @return [String]
    #
    # @!attribute [rw] connection_name
    #   The name of the provisioned connection.
    #
    #   Example: "`500M Connection to AWS`"
    #
    #   Default: None
    #   @return [String]
    #
    # @!attribute [rw] vlan
    #   The dedicated VLAN provisioned to the hosted connection.
    #
    #   Example: 101
    #
    #   Default: None
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/AllocateHostedConnectionRequest AWS API Documentation
    #
    class AllocateHostedConnectionRequest < Struct.new(
      :connection_id,
      :owner_account,
      :bandwidth,
      :connection_name,
      :vlan)
      include Aws::Structure
    end

    # Container for the parameters to the AllocatePrivateVirtualInterface
    # operation.
    #
    # @note When making an API call, you may pass AllocatePrivateVirtualInterfaceRequest
    #   data as a hash:
    #
    #       {
    #         connection_id: "ConnectionId", # required
    #         owner_account: "OwnerAccount", # required
    #         new_private_virtual_interface_allocation: { # required
    #           virtual_interface_name: "VirtualInterfaceName", # required
    #           vlan: 1, # required
    #           asn: 1, # required
    #           auth_key: "BGPAuthKey",
    #           amazon_address: "AmazonAddress",
    #           address_family: "ipv4", # accepts ipv4, ipv6
    #           customer_address: "CustomerAddress",
    #         },
    #       }
    #
    # @!attribute [rw] connection_id
    #   The connection ID on which the private virtual interface is
    #   provisioned.
    #
    #   Default: None
    #   @return [String]
    #
    # @!attribute [rw] owner_account
    #   The AWS account that will own the new private virtual interface.
    #
    #   Default: None
    #   @return [String]
    #
    # @!attribute [rw] new_private_virtual_interface_allocation
    #   Detailed information for the private virtual interface to be
    #   provisioned.
    #
    #   Default: None
    #   @return [Types::NewPrivateVirtualInterfaceAllocation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/AllocatePrivateVirtualInterfaceRequest AWS API Documentation
    #
    class AllocatePrivateVirtualInterfaceRequest < Struct.new(
      :connection_id,
      :owner_account,
      :new_private_virtual_interface_allocation)
      include Aws::Structure
    end

    # Container for the parameters to the AllocatePublicVirtualInterface
    # operation.
    #
    # @note When making an API call, you may pass AllocatePublicVirtualInterfaceRequest
    #   data as a hash:
    #
    #       {
    #         connection_id: "ConnectionId", # required
    #         owner_account: "OwnerAccount", # required
    #         new_public_virtual_interface_allocation: { # required
    #           virtual_interface_name: "VirtualInterfaceName", # required
    #           vlan: 1, # required
    #           asn: 1, # required
    #           auth_key: "BGPAuthKey",
    #           amazon_address: "AmazonAddress",
    #           customer_address: "CustomerAddress",
    #           address_family: "ipv4", # accepts ipv4, ipv6
    #           route_filter_prefixes: [
    #             {
    #               cidr: "CIDR",
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] connection_id
    #   The connection ID on which the public virtual interface is
    #   provisioned.
    #
    #   Default: None
    #   @return [String]
    #
    # @!attribute [rw] owner_account
    #   The AWS account that will own the new public virtual interface.
    #
    #   Default: None
    #   @return [String]
    #
    # @!attribute [rw] new_public_virtual_interface_allocation
    #   Detailed information for the public virtual interface to be
    #   provisioned.
    #
    #   Default: None
    #   @return [Types::NewPublicVirtualInterfaceAllocation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/AllocatePublicVirtualInterfaceRequest AWS API Documentation
    #
    class AllocatePublicVirtualInterfaceRequest < Struct.new(
      :connection_id,
      :owner_account,
      :new_public_virtual_interface_allocation)
      include Aws::Structure
    end

    # Container for the parameters to the AssociateConnectionWithLag
    # operation.
    #
    # @note When making an API call, you may pass AssociateConnectionWithLagRequest
    #   data as a hash:
    #
    #       {
    #         connection_id: "ConnectionId", # required
    #         lag_id: "LagId", # required
    #       }
    #
    # @!attribute [rw] connection_id
    #   The ID of the connection.
    #
    #   Example: dxcon-abc123
    #
    #   Default: None
    #   @return [String]
    #
    # @!attribute [rw] lag_id
    #   The ID of the LAG with which to associate the connection.
    #
    #   Example: dxlag-abc123
    #
    #   Default: None
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/AssociateConnectionWithLagRequest AWS API Documentation
    #
    class AssociateConnectionWithLagRequest < Struct.new(
      :connection_id,
      :lag_id)
      include Aws::Structure
    end

    # Container for the parameters to the AssociateHostedConnection
    # operation.
    #
    # @note When making an API call, you may pass AssociateHostedConnectionRequest
    #   data as a hash:
    #
    #       {
    #         connection_id: "ConnectionId", # required
    #         parent_connection_id: "ConnectionId", # required
    #       }
    #
    # @!attribute [rw] connection_id
    #   The ID of the hosted connection.
    #
    #   Example: dxcon-abc123
    #
    #   Default: None
    #   @return [String]
    #
    # @!attribute [rw] parent_connection_id
    #   The ID of the interconnect or the LAG.
    #
    #   Example: dxcon-abc123 or dxlag-abc123
    #
    #   Default: None
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/AssociateHostedConnectionRequest AWS API Documentation
    #
    class AssociateHostedConnectionRequest < Struct.new(
      :connection_id,
      :parent_connection_id)
      include Aws::Structure
    end

    # Container for the parameters to the AssociateVirtualInterface
    # operation.
    #
    # @note When making an API call, you may pass AssociateVirtualInterfaceRequest
    #   data as a hash:
    #
    #       {
    #         virtual_interface_id: "VirtualInterfaceId", # required
    #         connection_id: "ConnectionId", # required
    #       }
    #
    # @!attribute [rw] virtual_interface_id
    #   The ID of the virtual interface.
    #
    #   Example: dxvif-123dfg56
    #
    #   Default: None
    #   @return [String]
    #
    # @!attribute [rw] connection_id
    #   The ID of the LAG or connection with which to associate the virtual
    #   interface.
    #
    #   Example: dxlag-abc123 or dxcon-abc123
    #
    #   Default: None
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/AssociateVirtualInterfaceRequest AWS API Documentation
    #
    class AssociateVirtualInterfaceRequest < Struct.new(
      :virtual_interface_id,
      :connection_id)
      include Aws::Structure
    end

    # A structure containing information about a BGP peer.
    #
    # @!attribute [rw] asn
    #   The autonomous system (AS) number for Border Gateway Protocol (BGP)
    #   configuration.
    #
    #   Example: 65000
    #   @return [Integer]
    #
    # @!attribute [rw] auth_key
    #   The authentication key for BGP configuration.
    #
    #   Example: asdf34example
    #   @return [String]
    #
    # @!attribute [rw] address_family
    #   Indicates the address family for the BGP peer.
    #
    #   * **ipv4**\: IPv4 address family
    #
    #   * **ipv6**\: IPv6 address family
    #   @return [String]
    #
    # @!attribute [rw] amazon_address
    #   IP address assigned to the Amazon interface.
    #
    #   Example: 192.168.1.1/30 or 2001:db8::1/125
    #   @return [String]
    #
    # @!attribute [rw] customer_address
    #   IP address assigned to the customer interface.
    #
    #   Example: 192.168.1.2/30 or 2001:db8::2/125
    #   @return [String]
    #
    # @!attribute [rw] bgp_peer_state
    #   The state of the BGP peer.
    #
    #   * **Verifying**\: The BGP peering addresses or ASN require
    #     validation before the BGP peer can be created. This state only
    #     applies to BGP peers on a public virtual interface.
    #
    #   * **Pending**\: The BGP peer has been created, and is in this state
    #     until it is ready to be established.
    #
    #   * **Available**\: The BGP peer can be established.
    #
    #   * **Deleting**\: The BGP peer is in the process of being deleted.
    #
    #   * **Deleted**\: The BGP peer has been deleted and cannot be
    #     established.
    #   @return [String]
    #
    # @!attribute [rw] bgp_status
    #   The Up/Down state of the BGP peer.
    #
    #   * **Up**\: The BGP peer is established.
    #
    #     <note markdown="1"> A state of `up` does not indicate the state of the routing
    #     function. Ensure that you are receiving routes over the BGP
    #     session.
    #
    #      </note>
    #
    #   * **Down**\: The BGP peer is down.
    #   @return [String]
    #
    # @!attribute [rw] aws_device_v2
    #   The Direct Connection endpoint which the BGP peer terminates on.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/BGPPeer AWS API Documentation
    #
    class BGPPeer < Struct.new(
      :asn,
      :auth_key,
      :address_family,
      :amazon_address,
      :customer_address,
      :bgp_peer_state,
      :bgp_status,
      :aws_device_v2)
      include Aws::Structure
    end

    # Container for the parameters to the ConfirmConnection operation.
    #
    # @note When making an API call, you may pass ConfirmConnectionRequest
    #   data as a hash:
    #
    #       {
    #         connection_id: "ConnectionId", # required
    #       }
    #
    # @!attribute [rw] connection_id
    #   The ID of the connection. This field is also used as the ID type for
    #   operations that use multiple connection types (LAG, interconnect,
    #   and/or connection).
    #
    #   Example: dxcon-fg5678gh
    #
    #   Default: None
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/ConfirmConnectionRequest AWS API Documentation
    #
    class ConfirmConnectionRequest < Struct.new(
      :connection_id)
      include Aws::Structure
    end

    # The response received when ConfirmConnection is called.
    #
    # @!attribute [rw] connection_state
    #   State of the connection.
    #
    #   * **Ordering**\: The initial state of a hosted connection
    #     provisioned on an interconnect. The connection stays in the
    #     ordering state until the owner of the hosted connection confirms
    #     or declines the connection order.
    #
    #   * **Requested**\: The initial state of a standard connection. The
    #     connection stays in the requested state until the Letter of
    #     Authorization (LOA) is sent to the customer.
    #
    #   * **Pending**\: The connection has been approved, and is being
    #     initialized.
    #
    #   * **Available**\: The network link is up, and the connection is
    #     ready for use.
    #
    #   * **Down**\: The network link is down.
    #
    #   * **Deleting**\: The connection is in the process of being deleted.
    #
    #   * **Deleted**\: The connection has been deleted.
    #
    #   * **Rejected**\: A hosted connection in the 'Ordering' state will
    #     enter the 'Rejected' state if it is deleted by the end customer.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/ConfirmConnectionResponse AWS API Documentation
    #
    class ConfirmConnectionResponse < Struct.new(
      :connection_state)
      include Aws::Structure
    end

    # Container for the parameters to the ConfirmPrivateVirtualInterface
    # operation.
    #
    # @note When making an API call, you may pass ConfirmPrivateVirtualInterfaceRequest
    #   data as a hash:
    #
    #       {
    #         virtual_interface_id: "VirtualInterfaceId", # required
    #         virtual_gateway_id: "VirtualGatewayId",
    #         direct_connect_gateway_id: "DirectConnectGatewayId",
    #       }
    #
    # @!attribute [rw] virtual_interface_id
    #   The ID of the virtual interface.
    #
    #   Example: dxvif-123dfg56
    #
    #   Default: None
    #   @return [String]
    #
    # @!attribute [rw] virtual_gateway_id
    #   ID of the virtual private gateway that will be attached to the
    #   virtual interface.
    #
    #   A virtual private gateway can be managed via the Amazon Virtual
    #   Private Cloud (VPC) console or the [EC2 CreateVpnGateway][1] action.
    #
    #   Default: None
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-CreateVpnGateway.html
    #   @return [String]
    #
    # @!attribute [rw] direct_connect_gateway_id
    #   ID of the direct connect gateway that will be attached to the
    #   virtual interface.
    #
    #   A direct connect gateway can be managed via the AWS Direct Connect
    #   console or the CreateDirectConnectGateway action.
    #
    #   Default: None
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/ConfirmPrivateVirtualInterfaceRequest AWS API Documentation
    #
    class ConfirmPrivateVirtualInterfaceRequest < Struct.new(
      :virtual_interface_id,
      :virtual_gateway_id,
      :direct_connect_gateway_id)
      include Aws::Structure
    end

    # The response received when ConfirmPrivateVirtualInterface is called.
    #
    # @!attribute [rw] virtual_interface_state
    #   State of the virtual interface.
    #
    #   * **Confirming**\: The creation of the virtual interface is pending
    #     confirmation from the virtual interface owner. If the owner of the
    #     virtual interface is different from the owner of the connection on
    #     which it is provisioned, then the virtual interface will remain in
    #     this state until it is confirmed by the virtual interface owner.
    #
    #   * **Verifying**\: This state only applies to public virtual
    #     interfaces. Each public virtual interface needs validation before
    #     the virtual interface can be created.
    #
    #   * **Pending**\: A virtual interface is in this state from the time
    #     that it is created until the virtual interface is ready to forward
    #     traffic.
    #
    #   * **Available**\: A virtual interface that is able to forward
    #     traffic.
    #
    #   * **Down**\: A virtual interface that is BGP down.
    #
    #   * **Deleting**\: A virtual interface is in this state immediately
    #     after calling DeleteVirtualInterface until it can no longer
    #     forward traffic.
    #
    #   * **Deleted**\: A virtual interface that cannot forward traffic.
    #
    #   * **Rejected**\: The virtual interface owner has declined creation
    #     of the virtual interface. If a virtual interface in the
    #     'Confirming' state is deleted by the virtual interface owner,
    #     the virtual interface will enter the 'Rejected' state.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/ConfirmPrivateVirtualInterfaceResponse AWS API Documentation
    #
    class ConfirmPrivateVirtualInterfaceResponse < Struct.new(
      :virtual_interface_state)
      include Aws::Structure
    end

    # Container for the parameters to the ConfirmPublicVirtualInterface
    # operation.
    #
    # @note When making an API call, you may pass ConfirmPublicVirtualInterfaceRequest
    #   data as a hash:
    #
    #       {
    #         virtual_interface_id: "VirtualInterfaceId", # required
    #       }
    #
    # @!attribute [rw] virtual_interface_id
    #   The ID of the virtual interface.
    #
    #   Example: dxvif-123dfg56
    #
    #   Default: None
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/ConfirmPublicVirtualInterfaceRequest AWS API Documentation
    #
    class ConfirmPublicVirtualInterfaceRequest < Struct.new(
      :virtual_interface_id)
      include Aws::Structure
    end

    # The response received when ConfirmPublicVirtualInterface is called.
    #
    # @!attribute [rw] virtual_interface_state
    #   State of the virtual interface.
    #
    #   * **Confirming**\: The creation of the virtual interface is pending
    #     confirmation from the virtual interface owner. If the owner of the
    #     virtual interface is different from the owner of the connection on
    #     which it is provisioned, then the virtual interface will remain in
    #     this state until it is confirmed by the virtual interface owner.
    #
    #   * **Verifying**\: This state only applies to public virtual
    #     interfaces. Each public virtual interface needs validation before
    #     the virtual interface can be created.
    #
    #   * **Pending**\: A virtual interface is in this state from the time
    #     that it is created until the virtual interface is ready to forward
    #     traffic.
    #
    #   * **Available**\: A virtual interface that is able to forward
    #     traffic.
    #
    #   * **Down**\: A virtual interface that is BGP down.
    #
    #   * **Deleting**\: A virtual interface is in this state immediately
    #     after calling DeleteVirtualInterface until it can no longer
    #     forward traffic.
    #
    #   * **Deleted**\: A virtual interface that cannot forward traffic.
    #
    #   * **Rejected**\: The virtual interface owner has declined creation
    #     of the virtual interface. If a virtual interface in the
    #     'Confirming' state is deleted by the virtual interface owner,
    #     the virtual interface will enter the 'Rejected' state.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/ConfirmPublicVirtualInterfaceResponse AWS API Documentation
    #
    class ConfirmPublicVirtualInterfaceResponse < Struct.new(
      :virtual_interface_state)
      include Aws::Structure
    end

    # A connection represents the physical network connection between the
    # AWS Direct Connect location and the customer.
    #
    # @!attribute [rw] owner_account
    #   The AWS account that will own the new connection.
    #   @return [String]
    #
    # @!attribute [rw] connection_id
    #   The ID of the connection. This field is also used as the ID type for
    #   operations that use multiple connection types (LAG, interconnect,
    #   and/or connection).
    #
    #   Example: dxcon-fg5678gh
    #
    #   Default: None
    #   @return [String]
    #
    # @!attribute [rw] connection_name
    #   The name of the connection.
    #
    #   Example: "*My Connection to AWS*"
    #
    #   Default: None
    #   @return [String]
    #
    # @!attribute [rw] connection_state
    #   State of the connection.
    #
    #   * **Ordering**\: The initial state of a hosted connection
    #     provisioned on an interconnect. The connection stays in the
    #     ordering state until the owner of the hosted connection confirms
    #     or declines the connection order.
    #
    #   * **Requested**\: The initial state of a standard connection. The
    #     connection stays in the requested state until the Letter of
    #     Authorization (LOA) is sent to the customer.
    #
    #   * **Pending**\: The connection has been approved, and is being
    #     initialized.
    #
    #   * **Available**\: The network link is up, and the connection is
    #     ready for use.
    #
    #   * **Down**\: The network link is down.
    #
    #   * **Deleting**\: The connection is in the process of being deleted.
    #
    #   * **Deleted**\: The connection has been deleted.
    #
    #   * **Rejected**\: A hosted connection in the 'Ordering' state will
    #     enter the 'Rejected' state if it is deleted by the end customer.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The AWS region where the connection is located.
    #
    #   Example: us-east-1
    #
    #   Default: None
    #   @return [String]
    #
    # @!attribute [rw] location
    #   Where the connection is located.
    #
    #   Example: EqSV5
    #
    #   Default: None
    #   @return [String]
    #
    # @!attribute [rw] bandwidth
    #   Bandwidth of the connection.
    #
    #   Example: 1Gbps (for regular connections), or 500Mbps (for hosted
    #   connections)
    #
    #   Default: None
    #   @return [String]
    #
    # @!attribute [rw] vlan
    #   The VLAN ID.
    #
    #   Example: 101
    #   @return [Integer]
    #
    # @!attribute [rw] partner_name
    #   The name of the AWS Direct Connect service provider associated with
    #   the connection.
    #   @return [String]
    #
    # @!attribute [rw] loa_issue_time
    #   The time of the most recent call to DescribeLoa for this connection.
    #   @return [Time]
    #
    # @!attribute [rw] lag_id
    #   The ID of the LAG.
    #
    #   Example: dxlag-fg5678gh
    #   @return [String]
    #
    # @!attribute [rw] aws_device
    #   Deprecated in favor of awsDeviceV2.
    #
    #   The Direct Connection endpoint which the physical connection
    #   terminates on.
    #   @return [String]
    #
    # @!attribute [rw] aws_device_v2
    #   The Direct Connection endpoint which the physical connection
    #   terminates on.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/Connection AWS API Documentation
    #
    class Connection < Struct.new(
      :owner_account,
      :connection_id,
      :connection_name,
      :connection_state,
      :region,
      :location,
      :bandwidth,
      :vlan,
      :partner_name,
      :loa_issue_time,
      :lag_id,
      :aws_device,
      :aws_device_v2)
      include Aws::Structure
    end

    # A structure containing a list of connections.
    #
    # @!attribute [rw] connections
    #   A list of connections.
    #   @return [Array<Types::Connection>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/Connections AWS API Documentation
    #
    class Connections < Struct.new(
      :connections)
      include Aws::Structure
    end

    # Container for the parameters to the CreateBGPPeer operation.
    #
    # @note When making an API call, you may pass CreateBGPPeerRequest
    #   data as a hash:
    #
    #       {
    #         virtual_interface_id: "VirtualInterfaceId",
    #         new_bgp_peer: {
    #           asn: 1,
    #           auth_key: "BGPAuthKey",
    #           address_family: "ipv4", # accepts ipv4, ipv6
    #           amazon_address: "AmazonAddress",
    #           customer_address: "CustomerAddress",
    #         },
    #       }
    #
    # @!attribute [rw] virtual_interface_id
    #   The ID of the virtual interface on which the BGP peer will be
    #   provisioned.
    #
    #   Example: dxvif-456abc78
    #
    #   Default: None
    #   @return [String]
    #
    # @!attribute [rw] new_bgp_peer
    #   Detailed information for the BGP peer to be created.
    #
    #   Default: None
    #   @return [Types::NewBGPPeer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/CreateBGPPeerRequest AWS API Documentation
    #
    class CreateBGPPeerRequest < Struct.new(
      :virtual_interface_id,
      :new_bgp_peer)
      include Aws::Structure
    end

    # The response received when CreateBGPPeer is called.
    #
    # @!attribute [rw] virtual_interface
    #   A virtual interface (VLAN) transmits the traffic between the AWS
    #   Direct Connect location and the customer.
    #   @return [Types::VirtualInterface]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/CreateBGPPeerResponse AWS API Documentation
    #
    class CreateBGPPeerResponse < Struct.new(
      :virtual_interface)
      include Aws::Structure
    end

    # Container for the parameters to the CreateConnection operation.
    #
    # @note When making an API call, you may pass CreateConnectionRequest
    #   data as a hash:
    #
    #       {
    #         location: "LocationCode", # required
    #         bandwidth: "Bandwidth", # required
    #         connection_name: "ConnectionName", # required
    #         lag_id: "LagId",
    #       }
    #
    # @!attribute [rw] location
    #   Where the connection is located.
    #
    #   Example: EqSV5
    #
    #   Default: None
    #   @return [String]
    #
    # @!attribute [rw] bandwidth
    #   Bandwidth of the connection.
    #
    #   Example: 1Gbps
    #
    #   Default: None
    #   @return [String]
    #
    # @!attribute [rw] connection_name
    #   The name of the connection.
    #
    #   Example: "*My Connection to AWS*"
    #
    #   Default: None
    #   @return [String]
    #
    # @!attribute [rw] lag_id
    #   The ID of the LAG.
    #
    #   Example: dxlag-fg5678gh
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/CreateConnectionRequest AWS API Documentation
    #
    class CreateConnectionRequest < Struct.new(
      :location,
      :bandwidth,
      :connection_name,
      :lag_id)
      include Aws::Structure
    end

    # Container for the parameters to the
    # CreateDirectConnectGatewayAssociation operation.
    #
    # @note When making an API call, you may pass CreateDirectConnectGatewayAssociationRequest
    #   data as a hash:
    #
    #       {
    #         direct_connect_gateway_id: "DirectConnectGatewayId", # required
    #         virtual_gateway_id: "VirtualGatewayId", # required
    #       }
    #
    # @!attribute [rw] direct_connect_gateway_id
    #   The ID of the direct connect gateway.
    #
    #   Example: "abcd1234-dcba-5678-be23-cdef9876ab45"
    #
    #   Default: None
    #   @return [String]
    #
    # @!attribute [rw] virtual_gateway_id
    #   The ID of the virtual private gateway.
    #
    #   Example: "vgw-abc123ef"
    #
    #   Default: None
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/CreateDirectConnectGatewayAssociationRequest AWS API Documentation
    #
    class CreateDirectConnectGatewayAssociationRequest < Struct.new(
      :direct_connect_gateway_id,
      :virtual_gateway_id)
      include Aws::Structure
    end

    # Container for the response from the
    # CreateDirectConnectGatewayAssociation API call
    #
    # @!attribute [rw] direct_connect_gateway_association
    #   The direct connect gateway association to be created.
    #   @return [Types::DirectConnectGatewayAssociation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/CreateDirectConnectGatewayAssociationResult AWS API Documentation
    #
    class CreateDirectConnectGatewayAssociationResult < Struct.new(
      :direct_connect_gateway_association)
      include Aws::Structure
    end

    # Container for the parameters to the CreateDirectConnectGateway
    # operation.
    #
    # @note When making an API call, you may pass CreateDirectConnectGatewayRequest
    #   data as a hash:
    #
    #       {
    #         direct_connect_gateway_name: "DirectConnectGatewayName", # required
    #         amazon_side_asn: 1,
    #       }
    #
    # @!attribute [rw] direct_connect_gateway_name
    #   The name of the direct connect gateway.
    #
    #   Example: "My direct connect gateway"
    #
    #   Default: None
    #   @return [String]
    #
    # @!attribute [rw] amazon_side_asn
    #   The autonomous system number (ASN) for Border Gateway Protocol (BGP)
    #   to be configured on the Amazon side of the connection. The ASN must
    #   be in the private range of 64,512 to 65,534 or 4,200,000,000 to
    #   4,294,967,294
    #
    #   Example: 65200
    #
    #   Default: 64512
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/CreateDirectConnectGatewayRequest AWS API Documentation
    #
    class CreateDirectConnectGatewayRequest < Struct.new(
      :direct_connect_gateway_name,
      :amazon_side_asn)
      include Aws::Structure
    end

    # Container for the response from the CreateDirectConnectGateway API
    # call
    #
    # @!attribute [rw] direct_connect_gateway
    #   The direct connect gateway to be created.
    #   @return [Types::DirectConnectGateway]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/CreateDirectConnectGatewayResult AWS API Documentation
    #
    class CreateDirectConnectGatewayResult < Struct.new(
      :direct_connect_gateway)
      include Aws::Structure
    end

    # Container for the parameters to the CreateInterconnect operation.
    #
    # @note When making an API call, you may pass CreateInterconnectRequest
    #   data as a hash:
    #
    #       {
    #         interconnect_name: "InterconnectName", # required
    #         bandwidth: "Bandwidth", # required
    #         location: "LocationCode", # required
    #         lag_id: "LagId",
    #       }
    #
    # @!attribute [rw] interconnect_name
    #   The name of the interconnect.
    #
    #   Example: "*1G Interconnect to AWS*"
    #
    #   Default: None
    #   @return [String]
    #
    # @!attribute [rw] bandwidth
    #   The port bandwidth
    #
    #   Example: 1Gbps
    #
    #   Default: None
    #
    #   Available values: 1Gbps,10Gbps
    #   @return [String]
    #
    # @!attribute [rw] location
    #   Where the interconnect is located
    #
    #   Example: EqSV5
    #
    #   Default: None
    #   @return [String]
    #
    # @!attribute [rw] lag_id
    #   The ID of the LAG.
    #
    #   Example: dxlag-fg5678gh
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/CreateInterconnectRequest AWS API Documentation
    #
    class CreateInterconnectRequest < Struct.new(
      :interconnect_name,
      :bandwidth,
      :location,
      :lag_id)
      include Aws::Structure
    end

    # Container for the parameters to the CreateLag operation.
    #
    # @note When making an API call, you may pass CreateLagRequest
    #   data as a hash:
    #
    #       {
    #         number_of_connections: 1, # required
    #         location: "LocationCode", # required
    #         connections_bandwidth: "Bandwidth", # required
    #         lag_name: "LagName", # required
    #         connection_id: "ConnectionId",
    #       }
    #
    # @!attribute [rw] number_of_connections
    #   The number of physical connections initially provisioned and bundled
    #   by the LAG.
    #
    #   Default: None
    #   @return [Integer]
    #
    # @!attribute [rw] location
    #   The AWS Direct Connect location in which the LAG should be
    #   allocated.
    #
    #   Example: EqSV5
    #
    #   Default: None
    #   @return [String]
    #
    # @!attribute [rw] connections_bandwidth
    #   The bandwidth of the individual physical connections bundled by the
    #   LAG.
    #
    #   Default: None
    #
    #   Available values: 1Gbps, 10Gbps
    #   @return [String]
    #
    # @!attribute [rw] lag_name
    #   The name of the LAG.
    #
    #   Example: "`3x10G LAG to AWS`"
    #
    #   Default: None
    #   @return [String]
    #
    # @!attribute [rw] connection_id
    #   The ID of an existing connection to migrate to the LAG.
    #
    #   Default: None
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/CreateLagRequest AWS API Documentation
    #
    class CreateLagRequest < Struct.new(
      :number_of_connections,
      :location,
      :connections_bandwidth,
      :lag_name,
      :connection_id)
      include Aws::Structure
    end

    # Container for the parameters to the CreatePrivateVirtualInterface
    # operation.
    #
    # @note When making an API call, you may pass CreatePrivateVirtualInterfaceRequest
    #   data as a hash:
    #
    #       {
    #         connection_id: "ConnectionId", # required
    #         new_private_virtual_interface: { # required
    #           virtual_interface_name: "VirtualInterfaceName", # required
    #           vlan: 1, # required
    #           asn: 1, # required
    #           auth_key: "BGPAuthKey",
    #           amazon_address: "AmazonAddress",
    #           customer_address: "CustomerAddress",
    #           address_family: "ipv4", # accepts ipv4, ipv6
    #           virtual_gateway_id: "VirtualGatewayId",
    #           direct_connect_gateway_id: "DirectConnectGatewayId",
    #         },
    #       }
    #
    # @!attribute [rw] connection_id
    #   The ID of the connection. This field is also used as the ID type for
    #   operations that use multiple connection types (LAG, interconnect,
    #   and/or connection).
    #
    #   Example: dxcon-fg5678gh
    #
    #   Default: None
    #   @return [String]
    #
    # @!attribute [rw] new_private_virtual_interface
    #   Detailed information for the private virtual interface to be
    #   created.
    #
    #   Default: None
    #   @return [Types::NewPrivateVirtualInterface]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/CreatePrivateVirtualInterfaceRequest AWS API Documentation
    #
    class CreatePrivateVirtualInterfaceRequest < Struct.new(
      :connection_id,
      :new_private_virtual_interface)
      include Aws::Structure
    end

    # Container for the parameters to the CreatePublicVirtualInterface
    # operation.
    #
    # @note When making an API call, you may pass CreatePublicVirtualInterfaceRequest
    #   data as a hash:
    #
    #       {
    #         connection_id: "ConnectionId", # required
    #         new_public_virtual_interface: { # required
    #           virtual_interface_name: "VirtualInterfaceName", # required
    #           vlan: 1, # required
    #           asn: 1, # required
    #           auth_key: "BGPAuthKey",
    #           amazon_address: "AmazonAddress",
    #           customer_address: "CustomerAddress",
    #           address_family: "ipv4", # accepts ipv4, ipv6
    #           route_filter_prefixes: [
    #             {
    #               cidr: "CIDR",
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] connection_id
    #   The ID of the connection. This field is also used as the ID type for
    #   operations that use multiple connection types (LAG, interconnect,
    #   and/or connection).
    #
    #   Example: dxcon-fg5678gh
    #
    #   Default: None
    #   @return [String]
    #
    # @!attribute [rw] new_public_virtual_interface
    #   Detailed information for the public virtual interface to be created.
    #
    #   Default: None
    #   @return [Types::NewPublicVirtualInterface]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/CreatePublicVirtualInterfaceRequest AWS API Documentation
    #
    class CreatePublicVirtualInterfaceRequest < Struct.new(
      :connection_id,
      :new_public_virtual_interface)
      include Aws::Structure
    end

    # Container for the parameters to the DeleteBGPPeer operation.
    #
    # @note When making an API call, you may pass DeleteBGPPeerRequest
    #   data as a hash:
    #
    #       {
    #         virtual_interface_id: "VirtualInterfaceId",
    #         asn: 1,
    #         customer_address: "CustomerAddress",
    #       }
    #
    # @!attribute [rw] virtual_interface_id
    #   The ID of the virtual interface from which the BGP peer will be
    #   deleted.
    #
    #   Example: dxvif-456abc78
    #
    #   Default: None
    #   @return [String]
    #
    # @!attribute [rw] asn
    #   The autonomous system (AS) number for Border Gateway Protocol (BGP)
    #   configuration.
    #
    #   Example: 65000
    #   @return [Integer]
    #
    # @!attribute [rw] customer_address
    #   IP address assigned to the customer interface.
    #
    #   Example: 192.168.1.2/30 or 2001:db8::2/125
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DeleteBGPPeerRequest AWS API Documentation
    #
    class DeleteBGPPeerRequest < Struct.new(
      :virtual_interface_id,
      :asn,
      :customer_address)
      include Aws::Structure
    end

    # The response received when DeleteBGPPeer is called.
    #
    # @!attribute [rw] virtual_interface
    #   A virtual interface (VLAN) transmits the traffic between the AWS
    #   Direct Connect location and the customer.
    #   @return [Types::VirtualInterface]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DeleteBGPPeerResponse AWS API Documentation
    #
    class DeleteBGPPeerResponse < Struct.new(
      :virtual_interface)
      include Aws::Structure
    end

    # Container for the parameters to the DeleteConnection operation.
    #
    # @note When making an API call, you may pass DeleteConnectionRequest
    #   data as a hash:
    #
    #       {
    #         connection_id: "ConnectionId", # required
    #       }
    #
    # @!attribute [rw] connection_id
    #   The ID of the connection. This field is also used as the ID type for
    #   operations that use multiple connection types (LAG, interconnect,
    #   and/or connection).
    #
    #   Example: dxcon-fg5678gh
    #
    #   Default: None
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DeleteConnectionRequest AWS API Documentation
    #
    class DeleteConnectionRequest < Struct.new(
      :connection_id)
      include Aws::Structure
    end

    # Container for the parameters to the
    # DeleteDirectConnectGatewayAssociation operation.
    #
    # @note When making an API call, you may pass DeleteDirectConnectGatewayAssociationRequest
    #   data as a hash:
    #
    #       {
    #         direct_connect_gateway_id: "DirectConnectGatewayId", # required
    #         virtual_gateway_id: "VirtualGatewayId", # required
    #       }
    #
    # @!attribute [rw] direct_connect_gateway_id
    #   The ID of the direct connect gateway.
    #
    #   Example: "abcd1234-dcba-5678-be23-cdef9876ab45"
    #
    #   Default: None
    #   @return [String]
    #
    # @!attribute [rw] virtual_gateway_id
    #   The ID of the virtual private gateway.
    #
    #   Example: "vgw-abc123ef"
    #
    #   Default: None
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DeleteDirectConnectGatewayAssociationRequest AWS API Documentation
    #
    class DeleteDirectConnectGatewayAssociationRequest < Struct.new(
      :direct_connect_gateway_id,
      :virtual_gateway_id)
      include Aws::Structure
    end

    # Container for the response from the
    # DeleteDirectConnectGatewayAssociation API call
    #
    # @!attribute [rw] direct_connect_gateway_association
    #   The direct connect gateway association to be deleted.
    #   @return [Types::DirectConnectGatewayAssociation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DeleteDirectConnectGatewayAssociationResult AWS API Documentation
    #
    class DeleteDirectConnectGatewayAssociationResult < Struct.new(
      :direct_connect_gateway_association)
      include Aws::Structure
    end

    # Container for the parameters to the DeleteDirectConnectGateway
    # operation.
    #
    # @note When making an API call, you may pass DeleteDirectConnectGatewayRequest
    #   data as a hash:
    #
    #       {
    #         direct_connect_gateway_id: "DirectConnectGatewayId", # required
    #       }
    #
    # @!attribute [rw] direct_connect_gateway_id
    #   The ID of the direct connect gateway.
    #
    #   Example: "abcd1234-dcba-5678-be23-cdef9876ab45"
    #
    #   Default: None
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DeleteDirectConnectGatewayRequest AWS API Documentation
    #
    class DeleteDirectConnectGatewayRequest < Struct.new(
      :direct_connect_gateway_id)
      include Aws::Structure
    end

    # Container for the response from the DeleteDirectConnectGateway API
    # call
    #
    # @!attribute [rw] direct_connect_gateway
    #   The direct connect gateway to be deleted.
    #   @return [Types::DirectConnectGateway]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DeleteDirectConnectGatewayResult AWS API Documentation
    #
    class DeleteDirectConnectGatewayResult < Struct.new(
      :direct_connect_gateway)
      include Aws::Structure
    end

    # Container for the parameters to the DeleteInterconnect operation.
    #
    # @note When making an API call, you may pass DeleteInterconnectRequest
    #   data as a hash:
    #
    #       {
    #         interconnect_id: "InterconnectId", # required
    #       }
    #
    # @!attribute [rw] interconnect_id
    #   The ID of the interconnect.
    #
    #   Example: dxcon-abc123
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DeleteInterconnectRequest AWS API Documentation
    #
    class DeleteInterconnectRequest < Struct.new(
      :interconnect_id)
      include Aws::Structure
    end

    # The response received when DeleteInterconnect is called.
    #
    # @!attribute [rw] interconnect_state
    #   State of the interconnect.
    #
    #   * **Requested**\: The initial state of an interconnect. The
    #     interconnect stays in the requested state until the Letter of
    #     Authorization (LOA) is sent to the customer.
    #
    #   * **Pending**\: The interconnect has been approved, and is being
    #     initialized.
    #
    #   * **Available**\: The network link is up, and the interconnect is
    #     ready for use.
    #
    #   * **Down**\: The network link is down.
    #
    #   * **Deleting**\: The interconnect is in the process of being
    #     deleted.
    #
    #   * **Deleted**\: The interconnect has been deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DeleteInterconnectResponse AWS API Documentation
    #
    class DeleteInterconnectResponse < Struct.new(
      :interconnect_state)
      include Aws::Structure
    end

    # Container for the parameters to the DeleteLag operation.
    #
    # @note When making an API call, you may pass DeleteLagRequest
    #   data as a hash:
    #
    #       {
    #         lag_id: "LagId", # required
    #       }
    #
    # @!attribute [rw] lag_id
    #   The ID of the LAG to delete.
    #
    #   Example: dxlag-abc123
    #
    #   Default: None
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DeleteLagRequest AWS API Documentation
    #
    class DeleteLagRequest < Struct.new(
      :lag_id)
      include Aws::Structure
    end

    # Container for the parameters to the DeleteVirtualInterface operation.
    #
    # @note When making an API call, you may pass DeleteVirtualInterfaceRequest
    #   data as a hash:
    #
    #       {
    #         virtual_interface_id: "VirtualInterfaceId", # required
    #       }
    #
    # @!attribute [rw] virtual_interface_id
    #   The ID of the virtual interface.
    #
    #   Example: dxvif-123dfg56
    #
    #   Default: None
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DeleteVirtualInterfaceRequest AWS API Documentation
    #
    class DeleteVirtualInterfaceRequest < Struct.new(
      :virtual_interface_id)
      include Aws::Structure
    end

    # The response received when DeleteVirtualInterface is called.
    #
    # @!attribute [rw] virtual_interface_state
    #   State of the virtual interface.
    #
    #   * **Confirming**\: The creation of the virtual interface is pending
    #     confirmation from the virtual interface owner. If the owner of the
    #     virtual interface is different from the owner of the connection on
    #     which it is provisioned, then the virtual interface will remain in
    #     this state until it is confirmed by the virtual interface owner.
    #
    #   * **Verifying**\: This state only applies to public virtual
    #     interfaces. Each public virtual interface needs validation before
    #     the virtual interface can be created.
    #
    #   * **Pending**\: A virtual interface is in this state from the time
    #     that it is created until the virtual interface is ready to forward
    #     traffic.
    #
    #   * **Available**\: A virtual interface that is able to forward
    #     traffic.
    #
    #   * **Down**\: A virtual interface that is BGP down.
    #
    #   * **Deleting**\: A virtual interface is in this state immediately
    #     after calling DeleteVirtualInterface until it can no longer
    #     forward traffic.
    #
    #   * **Deleted**\: A virtual interface that cannot forward traffic.
    #
    #   * **Rejected**\: The virtual interface owner has declined creation
    #     of the virtual interface. If a virtual interface in the
    #     'Confirming' state is deleted by the virtual interface owner,
    #     the virtual interface will enter the 'Rejected' state.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DeleteVirtualInterfaceResponse AWS API Documentation
    #
    class DeleteVirtualInterfaceResponse < Struct.new(
      :virtual_interface_state)
      include Aws::Structure
    end

    # Container for the parameters to the DescribeConnectionLoa operation.
    #
    # @note When making an API call, you may pass DescribeConnectionLoaRequest
    #   data as a hash:
    #
    #       {
    #         connection_id: "ConnectionId", # required
    #         provider_name: "ProviderName",
    #         loa_content_type: "application/pdf", # accepts application/pdf
    #       }
    #
    # @!attribute [rw] connection_id
    #   The ID of the connection. This field is also used as the ID type for
    #   operations that use multiple connection types (LAG, interconnect,
    #   and/or connection).
    #
    #   Example: dxcon-fg5678gh
    #
    #   Default: None
    #   @return [String]
    #
    # @!attribute [rw] provider_name
    #   The name of the APN partner or service provider who establishes
    #   connectivity on your behalf. If you supply this parameter, the
    #   LOA-CFA lists the provider name alongside your company name as the
    #   requester of the cross connect.
    #
    #   Default: None
    #   @return [String]
    #
    # @!attribute [rw] loa_content_type
    #   A standard media type indicating the content type of the LOA-CFA
    #   document. Currently, the only supported value is
    #   "application/pdf".
    #
    #   Default: application/pdf
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DescribeConnectionLoaRequest AWS API Documentation
    #
    class DescribeConnectionLoaRequest < Struct.new(
      :connection_id,
      :provider_name,
      :loa_content_type)
      include Aws::Structure
    end

    # The response received when DescribeConnectionLoa is called.
    #
    # @!attribute [rw] loa
    #   A structure containing the Letter of Authorization - Connecting
    #   Facility Assignment (LOA-CFA) for a connection.
    #   @return [Types::Loa]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DescribeConnectionLoaResponse AWS API Documentation
    #
    class DescribeConnectionLoaResponse < Struct.new(
      :loa)
      include Aws::Structure
    end

    # Container for the parameters to the DescribeConnectionsOnInterconnect
    # operation.
    #
    # @note When making an API call, you may pass DescribeConnectionsOnInterconnectRequest
    #   data as a hash:
    #
    #       {
    #         interconnect_id: "InterconnectId", # required
    #       }
    #
    # @!attribute [rw] interconnect_id
    #   ID of the interconnect on which a list of connection is provisioned.
    #
    #   Example: dxcon-abc123
    #
    #   Default: None
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DescribeConnectionsOnInterconnectRequest AWS API Documentation
    #
    class DescribeConnectionsOnInterconnectRequest < Struct.new(
      :interconnect_id)
      include Aws::Structure
    end

    # Container for the parameters to the DescribeConnections operation.
    #
    # @note When making an API call, you may pass DescribeConnectionsRequest
    #   data as a hash:
    #
    #       {
    #         connection_id: "ConnectionId",
    #       }
    #
    # @!attribute [rw] connection_id
    #   The ID of the connection. This field is also used as the ID type for
    #   operations that use multiple connection types (LAG, interconnect,
    #   and/or connection).
    #
    #   Example: dxcon-fg5678gh
    #
    #   Default: None
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DescribeConnectionsRequest AWS API Documentation
    #
    class DescribeConnectionsRequest < Struct.new(
      :connection_id)
      include Aws::Structure
    end

    # Container for the parameters to the
    # DescribeDirectConnectGatewayAssociations operation.
    #
    # @note When making an API call, you may pass DescribeDirectConnectGatewayAssociationsRequest
    #   data as a hash:
    #
    #       {
    #         direct_connect_gateway_id: "DirectConnectGatewayId",
    #         virtual_gateway_id: "VirtualGatewayId",
    #         max_results: 1,
    #         next_token: "PaginationToken",
    #       }
    #
    # @!attribute [rw] direct_connect_gateway_id
    #   The ID of the direct connect gateway.
    #
    #   Example: "abcd1234-dcba-5678-be23-cdef9876ab45"
    #
    #   Default: None
    #   @return [String]
    #
    # @!attribute [rw] virtual_gateway_id
    #   The ID of the virtual private gateway.
    #
    #   Example: "vgw-abc123ef"
    #
    #   Default: None
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of direct connect gateway associations to return
    #   per page.
    #
    #   Example: 15
    #
    #   Default: None
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token provided in the previous describe result to retrieve the
    #   next page of the result.
    #
    #   Default: None
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DescribeDirectConnectGatewayAssociationsRequest AWS API Documentation
    #
    class DescribeDirectConnectGatewayAssociationsRequest < Struct.new(
      :direct_connect_gateway_id,
      :virtual_gateway_id,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # Container for the response from the
    # DescribeDirectConnectGatewayAssociations API call
    #
    # @!attribute [rw] direct_connect_gateway_associations
    #   Information about the direct connect gateway associations.
    #   @return [Array<Types::DirectConnectGatewayAssociation>]
    #
    # @!attribute [rw] next_token
    #   Token to retrieve the next page of the result.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DescribeDirectConnectGatewayAssociationsResult AWS API Documentation
    #
    class DescribeDirectConnectGatewayAssociationsResult < Struct.new(
      :direct_connect_gateway_associations,
      :next_token)
      include Aws::Structure
    end

    # Container for the parameters to the
    # DescribeDirectConnectGatewayAttachments operation.
    #
    # @note When making an API call, you may pass DescribeDirectConnectGatewayAttachmentsRequest
    #   data as a hash:
    #
    #       {
    #         direct_connect_gateway_id: "DirectConnectGatewayId",
    #         virtual_interface_id: "VirtualInterfaceId",
    #         max_results: 1,
    #         next_token: "PaginationToken",
    #       }
    #
    # @!attribute [rw] direct_connect_gateway_id
    #   The ID of the direct connect gateway.
    #
    #   Example: "abcd1234-dcba-5678-be23-cdef9876ab45"
    #
    #   Default: None
    #   @return [String]
    #
    # @!attribute [rw] virtual_interface_id
    #   The ID of the virtual interface.
    #
    #   Example: "dxvif-abc123ef"
    #
    #   Default: None
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of direct connect gateway attachments to return
    #   per page.
    #
    #   Example: 15
    #
    #   Default: None
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token provided in the previous describe result to retrieve the
    #   next page of the result.
    #
    #   Default: None
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DescribeDirectConnectGatewayAttachmentsRequest AWS API Documentation
    #
    class DescribeDirectConnectGatewayAttachmentsRequest < Struct.new(
      :direct_connect_gateway_id,
      :virtual_interface_id,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # Container for the response from the
    # DescribeDirectConnectGatewayAttachments API call
    #
    # @!attribute [rw] direct_connect_gateway_attachments
    #   Information about the direct connect gateway attachments.
    #   @return [Array<Types::DirectConnectGatewayAttachment>]
    #
    # @!attribute [rw] next_token
    #   Token to retrieve the next page of the result.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DescribeDirectConnectGatewayAttachmentsResult AWS API Documentation
    #
    class DescribeDirectConnectGatewayAttachmentsResult < Struct.new(
      :direct_connect_gateway_attachments,
      :next_token)
      include Aws::Structure
    end

    # Container for the parameters to the DescribeDirectConnectGateways
    # operation.
    #
    # @note When making an API call, you may pass DescribeDirectConnectGatewaysRequest
    #   data as a hash:
    #
    #       {
    #         direct_connect_gateway_id: "DirectConnectGatewayId",
    #         max_results: 1,
    #         next_token: "PaginationToken",
    #       }
    #
    # @!attribute [rw] direct_connect_gateway_id
    #   The ID of the direct connect gateway.
    #
    #   Example: "abcd1234-dcba-5678-be23-cdef9876ab45"
    #
    #   Default: None
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of direct connect gateways to return per page.
    #
    #   Example: 15
    #
    #   Default: None
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token provided in the previous describe result to retrieve the
    #   next page of the result.
    #
    #   Default: None
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DescribeDirectConnectGatewaysRequest AWS API Documentation
    #
    class DescribeDirectConnectGatewaysRequest < Struct.new(
      :direct_connect_gateway_id,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # Container for the response from the DescribeDirectConnectGateways API
    # call
    #
    # @!attribute [rw] direct_connect_gateways
    #   Information about the direct connect gateways.
    #   @return [Array<Types::DirectConnectGateway>]
    #
    # @!attribute [rw] next_token
    #   Token to retrieve the next page of the result.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DescribeDirectConnectGatewaysResult AWS API Documentation
    #
    class DescribeDirectConnectGatewaysResult < Struct.new(
      :direct_connect_gateways,
      :next_token)
      include Aws::Structure
    end

    # Container for the parameters to the DescribeHostedConnections
    # operation.
    #
    # @note When making an API call, you may pass DescribeHostedConnectionsRequest
    #   data as a hash:
    #
    #       {
    #         connection_id: "ConnectionId", # required
    #       }
    #
    # @!attribute [rw] connection_id
    #   The ID of the interconnect or LAG on which the hosted connections
    #   are provisioned.
    #
    #   Example: dxcon-abc123 or dxlag-abc123
    #
    #   Default: None
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DescribeHostedConnectionsRequest AWS API Documentation
    #
    class DescribeHostedConnectionsRequest < Struct.new(
      :connection_id)
      include Aws::Structure
    end

    # Container for the parameters to the DescribeInterconnectLoa operation.
    #
    # @note When making an API call, you may pass DescribeInterconnectLoaRequest
    #   data as a hash:
    #
    #       {
    #         interconnect_id: "InterconnectId", # required
    #         provider_name: "ProviderName",
    #         loa_content_type: "application/pdf", # accepts application/pdf
    #       }
    #
    # @!attribute [rw] interconnect_id
    #   The ID of the interconnect.
    #
    #   Example: dxcon-abc123
    #   @return [String]
    #
    # @!attribute [rw] provider_name
    #   The name of the service provider who establishes connectivity on
    #   your behalf. If you supply this parameter, the LOA-CFA lists the
    #   provider name alongside your company name as the requester of the
    #   cross connect.
    #
    #   Default: None
    #   @return [String]
    #
    # @!attribute [rw] loa_content_type
    #   A standard media type indicating the content type of the LOA-CFA
    #   document. Currently, the only supported value is
    #   "application/pdf".
    #
    #   Default: application/pdf
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DescribeInterconnectLoaRequest AWS API Documentation
    #
    class DescribeInterconnectLoaRequest < Struct.new(
      :interconnect_id,
      :provider_name,
      :loa_content_type)
      include Aws::Structure
    end

    # The response received when DescribeInterconnectLoa is called.
    #
    # @!attribute [rw] loa
    #   A structure containing the Letter of Authorization - Connecting
    #   Facility Assignment (LOA-CFA) for a connection.
    #   @return [Types::Loa]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DescribeInterconnectLoaResponse AWS API Documentation
    #
    class DescribeInterconnectLoaResponse < Struct.new(
      :loa)
      include Aws::Structure
    end

    # Container for the parameters to the DescribeInterconnects operation.
    #
    # @note When making an API call, you may pass DescribeInterconnectsRequest
    #   data as a hash:
    #
    #       {
    #         interconnect_id: "InterconnectId",
    #       }
    #
    # @!attribute [rw] interconnect_id
    #   The ID of the interconnect.
    #
    #   Example: dxcon-abc123
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DescribeInterconnectsRequest AWS API Documentation
    #
    class DescribeInterconnectsRequest < Struct.new(
      :interconnect_id)
      include Aws::Structure
    end

    # Container for the parameters to the DescribeLags operation.
    #
    # @note When making an API call, you may pass DescribeLagsRequest
    #   data as a hash:
    #
    #       {
    #         lag_id: "LagId",
    #       }
    #
    # @!attribute [rw] lag_id
    #   The ID of the LAG.
    #
    #   Example: dxlag-abc123
    #
    #   Default: None
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DescribeLagsRequest AWS API Documentation
    #
    class DescribeLagsRequest < Struct.new(
      :lag_id)
      include Aws::Structure
    end

    # Container for the parameters to the DescribeLoa operation.
    #
    # @note When making an API call, you may pass DescribeLoaRequest
    #   data as a hash:
    #
    #       {
    #         connection_id: "ConnectionId", # required
    #         provider_name: "ProviderName",
    #         loa_content_type: "application/pdf", # accepts application/pdf
    #       }
    #
    # @!attribute [rw] connection_id
    #   The ID of a connection, LAG, or interconnect for which to get the
    #   LOA-CFA information.
    #
    #   Example: dxcon-abc123 or dxlag-abc123
    #
    #   Default: None
    #   @return [String]
    #
    # @!attribute [rw] provider_name
    #   The name of the service provider who establishes connectivity on
    #   your behalf. If you supply this parameter, the LOA-CFA lists the
    #   provider name alongside your company name as the requester of the
    #   cross connect.
    #
    #   Default: None
    #   @return [String]
    #
    # @!attribute [rw] loa_content_type
    #   A standard media type indicating the content type of the LOA-CFA
    #   document. Currently, the only supported value is
    #   "application/pdf".
    #
    #   Default: application/pdf
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DescribeLoaRequest AWS API Documentation
    #
    class DescribeLoaRequest < Struct.new(
      :connection_id,
      :provider_name,
      :loa_content_type)
      include Aws::Structure
    end

    # Container for the parameters to the DescribeTags operation.
    #
    # @note When making an API call, you may pass DescribeTagsRequest
    #   data as a hash:
    #
    #       {
    #         resource_arns: ["ResourceArn"], # required
    #       }
    #
    # @!attribute [rw] resource_arns
    #   The Amazon Resource Names (ARNs) of the Direct Connect resources.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DescribeTagsRequest AWS API Documentation
    #
    class DescribeTagsRequest < Struct.new(
      :resource_arns)
      include Aws::Structure
    end

    # The response received when DescribeTags is called.
    #
    # @!attribute [rw] resource_tags
    #   Information about the tags.
    #   @return [Array<Types::ResourceTag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DescribeTagsResponse AWS API Documentation
    #
    class DescribeTagsResponse < Struct.new(
      :resource_tags)
      include Aws::Structure
    end

    # Container for the parameters to the DescribeVirtualInterfaces
    # operation.
    #
    # @note When making an API call, you may pass DescribeVirtualInterfacesRequest
    #   data as a hash:
    #
    #       {
    #         connection_id: "ConnectionId",
    #         virtual_interface_id: "VirtualInterfaceId",
    #       }
    #
    # @!attribute [rw] connection_id
    #   The ID of the connection. This field is also used as the ID type for
    #   operations that use multiple connection types (LAG, interconnect,
    #   and/or connection).
    #
    #   Example: dxcon-fg5678gh
    #
    #   Default: None
    #   @return [String]
    #
    # @!attribute [rw] virtual_interface_id
    #   The ID of the virtual interface.
    #
    #   Example: dxvif-123dfg56
    #
    #   Default: None
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DescribeVirtualInterfacesRequest AWS API Documentation
    #
    class DescribeVirtualInterfacesRequest < Struct.new(
      :connection_id,
      :virtual_interface_id)
      include Aws::Structure
    end

    # A direct connect gateway is an intermediate object that enables you to
    # connect virtual interfaces and virtual private gateways.
    #
    # @!attribute [rw] direct_connect_gateway_id
    #   The ID of the direct connect gateway.
    #
    #   Example: "abcd1234-dcba-5678-be23-cdef9876ab45"
    #   @return [String]
    #
    # @!attribute [rw] direct_connect_gateway_name
    #   The name of the direct connect gateway.
    #
    #   Example: "My direct connect gateway"
    #
    #   Default: None
    #   @return [String]
    #
    # @!attribute [rw] amazon_side_asn
    #   The autonomous system number (ASN) for the Amazon side of the
    #   connection.
    #   @return [Integer]
    #
    # @!attribute [rw] owner_account
    #   The AWS account ID of the owner of the direct connect gateway.
    #   @return [String]
    #
    # @!attribute [rw] direct_connect_gateway_state
    #   State of the direct connect gateway.
    #
    #   * **Pending**\: The initial state after calling
    #     CreateDirectConnectGateway.
    #
    #   * **Available**\: The direct connect gateway is ready for use.
    #
    #   * **Deleting**\: The initial state after calling
    #     DeleteDirectConnectGateway.
    #
    #   * **Deleted**\: The direct connect gateway is deleted and cannot
    #     pass traffic.
    #   @return [String]
    #
    # @!attribute [rw] state_change_error
    #   Error message when the state of an object fails to advance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DirectConnectGateway AWS API Documentation
    #
    class DirectConnectGateway < Struct.new(
      :direct_connect_gateway_id,
      :direct_connect_gateway_name,
      :amazon_side_asn,
      :owner_account,
      :direct_connect_gateway_state,
      :state_change_error)
      include Aws::Structure
    end

    # The association between a direct connect gateway and virtual private
    # gateway.
    #
    # @!attribute [rw] direct_connect_gateway_id
    #   The ID of the direct connect gateway.
    #
    #   Example: "abcd1234-dcba-5678-be23-cdef9876ab45"
    #   @return [String]
    #
    # @!attribute [rw] virtual_gateway_id
    #   The ID of the virtual private gateway to a VPC. This only applies to
    #   private virtual interfaces.
    #
    #   Example: vgw-123er56
    #   @return [String]
    #
    # @!attribute [rw] virtual_gateway_region
    #   The region in which the virtual private gateway is located.
    #
    #   Example: us-east-1
    #   @return [String]
    #
    # @!attribute [rw] virtual_gateway_owner_account
    #   The AWS account ID of the owner of the virtual private gateway.
    #   @return [String]
    #
    # @!attribute [rw] association_state
    #   State of the direct connect gateway association.
    #
    #   * **Associating**\: The initial state after calling
    #     CreateDirectConnectGatewayAssociation.
    #
    #   * **Associated**\: The direct connect gateway and virtual private
    #     gateway are successfully associated and ready to pass traffic.
    #
    #   * **Disassociating**\: The initial state after calling
    #     DeleteDirectConnectGatewayAssociation.
    #
    #   * **Disassociated**\: The virtual private gateway is successfully
    #     disassociated from the direct connect gateway. Traffic flow
    #     between the direct connect gateway and virtual private gateway
    #     stops.
    #   @return [String]
    #
    # @!attribute [rw] state_change_error
    #   Error message when the state of an object fails to advance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DirectConnectGatewayAssociation AWS API Documentation
    #
    class DirectConnectGatewayAssociation < Struct.new(
      :direct_connect_gateway_id,
      :virtual_gateway_id,
      :virtual_gateway_region,
      :virtual_gateway_owner_account,
      :association_state,
      :state_change_error)
      include Aws::Structure
    end

    # The association between a direct connect gateway and virtual
    # interface.
    #
    # @!attribute [rw] direct_connect_gateway_id
    #   The ID of the direct connect gateway.
    #
    #   Example: "abcd1234-dcba-5678-be23-cdef9876ab45"
    #   @return [String]
    #
    # @!attribute [rw] virtual_interface_id
    #   The ID of the virtual interface.
    #
    #   Example: dxvif-123dfg56
    #
    #   Default: None
    #   @return [String]
    #
    # @!attribute [rw] virtual_interface_region
    #   The region in which the virtual interface is located.
    #
    #   Example: us-east-1
    #   @return [String]
    #
    # @!attribute [rw] virtual_interface_owner_account
    #   The AWS account ID of the owner of the virtual interface.
    #   @return [String]
    #
    # @!attribute [rw] attachment_state
    #   State of the direct connect gateway attachment.
    #
    #   * **Attaching**\: The initial state after a virtual interface is
    #     created using the direct connect gateway.
    #
    #   * **Attached**\: The direct connect gateway and virtual interface
    #     are successfully attached and ready to pass traffic.
    #
    #   * **Detaching**\: The initial state after calling
    #     DeleteVirtualInterface on a virtual interface that is attached to
    #     a direct connect gateway.
    #
    #   * **Detached**\: The virtual interface is successfully detached from
    #     the direct connect gateway. Traffic flow between the direct
    #     connect gateway and virtual interface stops.
    #   @return [String]
    #
    # @!attribute [rw] state_change_error
    #   Error message when the state of an object fails to advance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DirectConnectGatewayAttachment AWS API Documentation
    #
    class DirectConnectGatewayAttachment < Struct.new(
      :direct_connect_gateway_id,
      :virtual_interface_id,
      :virtual_interface_region,
      :virtual_interface_owner_account,
      :attachment_state,
      :state_change_error)
      include Aws::Structure
    end

    # Container for the parameters to the DisassociateConnectionFromLag
    # operation.
    #
    # @note When making an API call, you may pass DisassociateConnectionFromLagRequest
    #   data as a hash:
    #
    #       {
    #         connection_id: "ConnectionId", # required
    #         lag_id: "LagId", # required
    #       }
    #
    # @!attribute [rw] connection_id
    #   The ID of the connection to disassociate from the LAG.
    #
    #   Example: dxcon-abc123
    #
    #   Default: None
    #   @return [String]
    #
    # @!attribute [rw] lag_id
    #   The ID of the LAG.
    #
    #   Example: dxlag-abc123
    #
    #   Default: None
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DisassociateConnectionFromLagRequest AWS API Documentation
    #
    class DisassociateConnectionFromLagRequest < Struct.new(
      :connection_id,
      :lag_id)
      include Aws::Structure
    end

    # An interconnect is a connection that can host other connections.
    #
    # Like a standard AWS Direct Connect connection, an interconnect
    # represents the physical connection between an AWS Direct Connect
    # partner's network and a specific Direct Connect location. An AWS
    # Direct Connect partner who owns an interconnect can provision hosted
    # connections on the interconnect for their end customers, thereby
    # providing the end customers with connectivity to AWS services.
    #
    # The resources of the interconnect, including bandwidth and VLAN
    # numbers, are shared by all of the hosted connections on the
    # interconnect, and the owner of the interconnect determines how these
    # resources are assigned.
    #
    # @!attribute [rw] interconnect_id
    #   The ID of the interconnect.
    #
    #   Example: dxcon-abc123
    #   @return [String]
    #
    # @!attribute [rw] interconnect_name
    #   The name of the interconnect.
    #
    #   Example: "*1G Interconnect to AWS*"
    #   @return [String]
    #
    # @!attribute [rw] interconnect_state
    #   State of the interconnect.
    #
    #   * **Requested**\: The initial state of an interconnect. The
    #     interconnect stays in the requested state until the Letter of
    #     Authorization (LOA) is sent to the customer.
    #
    #   * **Pending**\: The interconnect has been approved, and is being
    #     initialized.
    #
    #   * **Available**\: The network link is up, and the interconnect is
    #     ready for use.
    #
    #   * **Down**\: The network link is down.
    #
    #   * **Deleting**\: The interconnect is in the process of being
    #     deleted.
    #
    #   * **Deleted**\: The interconnect has been deleted.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The AWS region where the connection is located.
    #
    #   Example: us-east-1
    #
    #   Default: None
    #   @return [String]
    #
    # @!attribute [rw] location
    #   Where the connection is located.
    #
    #   Example: EqSV5
    #
    #   Default: None
    #   @return [String]
    #
    # @!attribute [rw] bandwidth
    #   Bandwidth of the connection.
    #
    #   Example: 1Gbps
    #
    #   Default: None
    #   @return [String]
    #
    # @!attribute [rw] loa_issue_time
    #   The time of the most recent call to DescribeInterconnectLoa for this
    #   Interconnect.
    #   @return [Time]
    #
    # @!attribute [rw] lag_id
    #   The ID of the LAG.
    #
    #   Example: dxlag-fg5678gh
    #   @return [String]
    #
    # @!attribute [rw] aws_device
    #   Deprecated in favor of awsDeviceV2.
    #
    #   The Direct Connection endpoint which the physical connection
    #   terminates on.
    #   @return [String]
    #
    # @!attribute [rw] aws_device_v2
    #   The Direct Connection endpoint which the physical connection
    #   terminates on.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/Interconnect AWS API Documentation
    #
    class Interconnect < Struct.new(
      :interconnect_id,
      :interconnect_name,
      :interconnect_state,
      :region,
      :location,
      :bandwidth,
      :loa_issue_time,
      :lag_id,
      :aws_device,
      :aws_device_v2)
      include Aws::Structure
    end

    # A structure containing a list of interconnects.
    #
    # @!attribute [rw] interconnects
    #   A list of interconnects.
    #   @return [Array<Types::Interconnect>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/Interconnects AWS API Documentation
    #
    class Interconnects < Struct.new(
      :interconnects)
      include Aws::Structure
    end

    # Describes a link aggregation group (LAG). A LAG is a connection that
    # uses the Link Aggregation Control Protocol (LACP) to logically
    # aggregate a bundle of physical connections. Like an interconnect, it
    # can host other connections. All connections in a LAG must terminate on
    # the same physical AWS Direct Connect endpoint, and must be the same
    # bandwidth.
    #
    # @!attribute [rw] connections_bandwidth
    #   The individual bandwidth of the physical connections bundled by the
    #   LAG.
    #
    #   Available values: 1Gbps, 10Gbps
    #   @return [String]
    #
    # @!attribute [rw] number_of_connections
    #   The number of physical connections bundled by the LAG, up to a
    #   maximum of 10.
    #   @return [Integer]
    #
    # @!attribute [rw] lag_id
    #   The ID of the LAG.
    #
    #   Example: dxlag-fg5678gh
    #   @return [String]
    #
    # @!attribute [rw] owner_account
    #   The owner of the LAG.
    #   @return [String]
    #
    # @!attribute [rw] lag_name
    #   The name of the LAG.
    #   @return [String]
    #
    # @!attribute [rw] lag_state
    #   The state of the LAG.
    #
    #   * **Requested**\: The initial state of a LAG. The LAG stays in the
    #     requested state until the Letter of Authorization (LOA) is
    #     available.
    #
    #   * **Pending**\: The LAG has been approved, and is being initialized.
    #
    #   * **Available**\: The network link is established, and the LAG is
    #     ready for use.
    #
    #   * **Down**\: The network link is down.
    #
    #   * **Deleting**\: The LAG is in the process of being deleted.
    #
    #   * **Deleted**\: The LAG has been deleted.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   Where the connection is located.
    #
    #   Example: EqSV5
    #
    #   Default: None
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The AWS region where the connection is located.
    #
    #   Example: us-east-1
    #
    #   Default: None
    #   @return [String]
    #
    # @!attribute [rw] minimum_links
    #   The minimum number of physical connections that must be operational
    #   for the LAG itself to be operational. If the number of operational
    #   connections drops below this setting, the LAG state changes to
    #   `down`. This value can help to ensure that a LAG is not overutilized
    #   if a significant number of its bundled connections go down.
    #   @return [Integer]
    #
    # @!attribute [rw] aws_device
    #   Deprecated in favor of awsDeviceV2.
    #
    #   The AWS Direct Connection endpoint that hosts the LAG.
    #   @return [String]
    #
    # @!attribute [rw] aws_device_v2
    #   The AWS Direct Connection endpoint that hosts the LAG.
    #   @return [String]
    #
    # @!attribute [rw] connections
    #   A list of connections bundled by this LAG.
    #   @return [Array<Types::Connection>]
    #
    # @!attribute [rw] allows_hosted_connections
    #   Indicates whether the LAG can host other connections.
    #
    #   <note markdown="1"> This is intended for use by AWS Direct Connect partners only.
    #
    #    </note>
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/Lag AWS API Documentation
    #
    class Lag < Struct.new(
      :connections_bandwidth,
      :number_of_connections,
      :lag_id,
      :owner_account,
      :lag_name,
      :lag_state,
      :location,
      :region,
      :minimum_links,
      :aws_device,
      :aws_device_v2,
      :connections,
      :allows_hosted_connections)
      include Aws::Structure
    end

    # A structure containing a list of LAGs.
    #
    # @!attribute [rw] lags
    #   A list of LAGs.
    #   @return [Array<Types::Lag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/Lags AWS API Documentation
    #
    class Lags < Struct.new(
      :lags)
      include Aws::Structure
    end

    # A structure containing the Letter of Authorization - Connecting
    # Facility Assignment (LOA-CFA) for a connection.
    #
    # @!attribute [rw] loa_content
    #   The binary contents of the LOA-CFA document.
    #   @return [String]
    #
    # @!attribute [rw] loa_content_type
    #   A standard media type indicating the content type of the LOA-CFA
    #   document. Currently, the only supported value is
    #   "application/pdf".
    #
    #   Default: application/pdf
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/Loa AWS API Documentation
    #
    class Loa < Struct.new(
      :loa_content,
      :loa_content_type)
      include Aws::Structure
    end

    # An AWS Direct Connect location where connections and interconnects can
    # be requested.
    #
    # @!attribute [rw] location_code
    #   The code used to indicate the AWS Direct Connect location.
    #   @return [String]
    #
    # @!attribute [rw] location_name
    #   The name of the AWS Direct Connect location. The name includes the
    #   colocation partner name and the physical site of the lit building.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The AWS region where the AWS Direct connect location is located.
    #
    #   Example: us-east-1
    #
    #   Default: None
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/Location AWS API Documentation
    #
    class Location < Struct.new(
      :location_code,
      :location_name,
      :region)
      include Aws::Structure
    end

    # A location is a network facility where AWS Direct Connect routers are
    # available to be connected. Generally, these are colocation hubs where
    # many network providers have equipment, and where cross connects can be
    # delivered. Locations include a name and facility code, and must be
    # provided when creating a connection.
    #
    # @!attribute [rw] locations
    #   A list of colocation hubs where network providers have equipment.
    #   Most regions have multiple locations available.
    #   @return [Array<Types::Location>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/Locations AWS API Documentation
    #
    class Locations < Struct.new(
      :locations)
      include Aws::Structure
    end

    # A structure containing information about a new BGP peer.
    #
    # @note When making an API call, you may pass NewBGPPeer
    #   data as a hash:
    #
    #       {
    #         asn: 1,
    #         auth_key: "BGPAuthKey",
    #         address_family: "ipv4", # accepts ipv4, ipv6
    #         amazon_address: "AmazonAddress",
    #         customer_address: "CustomerAddress",
    #       }
    #
    # @!attribute [rw] asn
    #   The autonomous system (AS) number for Border Gateway Protocol (BGP)
    #   configuration.
    #
    #   Example: 65000
    #   @return [Integer]
    #
    # @!attribute [rw] auth_key
    #   The authentication key for BGP configuration.
    #
    #   Example: asdf34example
    #   @return [String]
    #
    # @!attribute [rw] address_family
    #   Indicates the address family for the BGP peer.
    #
    #   * **ipv4**\: IPv4 address family
    #
    #   * **ipv6**\: IPv6 address family
    #   @return [String]
    #
    # @!attribute [rw] amazon_address
    #   IP address assigned to the Amazon interface.
    #
    #   Example: 192.168.1.1/30 or 2001:db8::1/125
    #   @return [String]
    #
    # @!attribute [rw] customer_address
    #   IP address assigned to the customer interface.
    #
    #   Example: 192.168.1.2/30 or 2001:db8::2/125
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/NewBGPPeer AWS API Documentation
    #
    class NewBGPPeer < Struct.new(
      :asn,
      :auth_key,
      :address_family,
      :amazon_address,
      :customer_address)
      include Aws::Structure
    end

    # A structure containing information about a new private virtual
    # interface.
    #
    # @note When making an API call, you may pass NewPrivateVirtualInterface
    #   data as a hash:
    #
    #       {
    #         virtual_interface_name: "VirtualInterfaceName", # required
    #         vlan: 1, # required
    #         asn: 1, # required
    #         auth_key: "BGPAuthKey",
    #         amazon_address: "AmazonAddress",
    #         customer_address: "CustomerAddress",
    #         address_family: "ipv4", # accepts ipv4, ipv6
    #         virtual_gateway_id: "VirtualGatewayId",
    #         direct_connect_gateway_id: "DirectConnectGatewayId",
    #       }
    #
    # @!attribute [rw] virtual_interface_name
    #   The name of the virtual interface assigned by the customer.
    #
    #   Example: "My VPC"
    #   @return [String]
    #
    # @!attribute [rw] vlan
    #   The VLAN ID.
    #
    #   Example: 101
    #   @return [Integer]
    #
    # @!attribute [rw] asn
    #   The autonomous system (AS) number for Border Gateway Protocol (BGP)
    #   configuration.
    #
    #   Example: 65000
    #   @return [Integer]
    #
    # @!attribute [rw] auth_key
    #   The authentication key for BGP configuration.
    #
    #   Example: asdf34example
    #   @return [String]
    #
    # @!attribute [rw] amazon_address
    #   IP address assigned to the Amazon interface.
    #
    #   Example: 192.168.1.1/30 or 2001:db8::1/125
    #   @return [String]
    #
    # @!attribute [rw] customer_address
    #   IP address assigned to the customer interface.
    #
    #   Example: 192.168.1.2/30 or 2001:db8::2/125
    #   @return [String]
    #
    # @!attribute [rw] address_family
    #   Indicates the address family for the BGP peer.
    #
    #   * **ipv4**\: IPv4 address family
    #
    #   * **ipv6**\: IPv6 address family
    #   @return [String]
    #
    # @!attribute [rw] virtual_gateway_id
    #   The ID of the virtual private gateway to a VPC. This only applies to
    #   private virtual interfaces.
    #
    #   Example: vgw-123er56
    #   @return [String]
    #
    # @!attribute [rw] direct_connect_gateway_id
    #   The ID of the direct connect gateway.
    #
    #   Example: "abcd1234-dcba-5678-be23-cdef9876ab45"
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/NewPrivateVirtualInterface AWS API Documentation
    #
    class NewPrivateVirtualInterface < Struct.new(
      :virtual_interface_name,
      :vlan,
      :asn,
      :auth_key,
      :amazon_address,
      :customer_address,
      :address_family,
      :virtual_gateway_id,
      :direct_connect_gateway_id)
      include Aws::Structure
    end

    # A structure containing information about a private virtual interface
    # that will be provisioned on a connection.
    #
    # @note When making an API call, you may pass NewPrivateVirtualInterfaceAllocation
    #   data as a hash:
    #
    #       {
    #         virtual_interface_name: "VirtualInterfaceName", # required
    #         vlan: 1, # required
    #         asn: 1, # required
    #         auth_key: "BGPAuthKey",
    #         amazon_address: "AmazonAddress",
    #         address_family: "ipv4", # accepts ipv4, ipv6
    #         customer_address: "CustomerAddress",
    #       }
    #
    # @!attribute [rw] virtual_interface_name
    #   The name of the virtual interface assigned by the customer.
    #
    #   Example: "My VPC"
    #   @return [String]
    #
    # @!attribute [rw] vlan
    #   The VLAN ID.
    #
    #   Example: 101
    #   @return [Integer]
    #
    # @!attribute [rw] asn
    #   The autonomous system (AS) number for Border Gateway Protocol (BGP)
    #   configuration.
    #
    #   Example: 65000
    #   @return [Integer]
    #
    # @!attribute [rw] auth_key
    #   The authentication key for BGP configuration.
    #
    #   Example: asdf34example
    #   @return [String]
    #
    # @!attribute [rw] amazon_address
    #   IP address assigned to the Amazon interface.
    #
    #   Example: 192.168.1.1/30 or 2001:db8::1/125
    #   @return [String]
    #
    # @!attribute [rw] address_family
    #   Indicates the address family for the BGP peer.
    #
    #   * **ipv4**\: IPv4 address family
    #
    #   * **ipv6**\: IPv6 address family
    #   @return [String]
    #
    # @!attribute [rw] customer_address
    #   IP address assigned to the customer interface.
    #
    #   Example: 192.168.1.2/30 or 2001:db8::2/125
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/NewPrivateVirtualInterfaceAllocation AWS API Documentation
    #
    class NewPrivateVirtualInterfaceAllocation < Struct.new(
      :virtual_interface_name,
      :vlan,
      :asn,
      :auth_key,
      :amazon_address,
      :address_family,
      :customer_address)
      include Aws::Structure
    end

    # A structure containing information about a new public virtual
    # interface.
    #
    # @note When making an API call, you may pass NewPublicVirtualInterface
    #   data as a hash:
    #
    #       {
    #         virtual_interface_name: "VirtualInterfaceName", # required
    #         vlan: 1, # required
    #         asn: 1, # required
    #         auth_key: "BGPAuthKey",
    #         amazon_address: "AmazonAddress",
    #         customer_address: "CustomerAddress",
    #         address_family: "ipv4", # accepts ipv4, ipv6
    #         route_filter_prefixes: [
    #           {
    #             cidr: "CIDR",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] virtual_interface_name
    #   The name of the virtual interface assigned by the customer.
    #
    #   Example: "My VPC"
    #   @return [String]
    #
    # @!attribute [rw] vlan
    #   The VLAN ID.
    #
    #   Example: 101
    #   @return [Integer]
    #
    # @!attribute [rw] asn
    #   The autonomous system (AS) number for Border Gateway Protocol (BGP)
    #   configuration.
    #
    #   Example: 65000
    #   @return [Integer]
    #
    # @!attribute [rw] auth_key
    #   The authentication key for BGP configuration.
    #
    #   Example: asdf34example
    #   @return [String]
    #
    # @!attribute [rw] amazon_address
    #   IP address assigned to the Amazon interface.
    #
    #   Example: 192.168.1.1/30 or 2001:db8::1/125
    #   @return [String]
    #
    # @!attribute [rw] customer_address
    #   IP address assigned to the customer interface.
    #
    #   Example: 192.168.1.2/30 or 2001:db8::2/125
    #   @return [String]
    #
    # @!attribute [rw] address_family
    #   Indicates the address family for the BGP peer.
    #
    #   * **ipv4**\: IPv4 address family
    #
    #   * **ipv6**\: IPv6 address family
    #   @return [String]
    #
    # @!attribute [rw] route_filter_prefixes
    #   A list of routes to be advertised to the AWS network in this region
    #   (public virtual interface).
    #   @return [Array<Types::RouteFilterPrefix>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/NewPublicVirtualInterface AWS API Documentation
    #
    class NewPublicVirtualInterface < Struct.new(
      :virtual_interface_name,
      :vlan,
      :asn,
      :auth_key,
      :amazon_address,
      :customer_address,
      :address_family,
      :route_filter_prefixes)
      include Aws::Structure
    end

    # A structure containing information about a public virtual interface
    # that will be provisioned on a connection.
    #
    # @note When making an API call, you may pass NewPublicVirtualInterfaceAllocation
    #   data as a hash:
    #
    #       {
    #         virtual_interface_name: "VirtualInterfaceName", # required
    #         vlan: 1, # required
    #         asn: 1, # required
    #         auth_key: "BGPAuthKey",
    #         amazon_address: "AmazonAddress",
    #         customer_address: "CustomerAddress",
    #         address_family: "ipv4", # accepts ipv4, ipv6
    #         route_filter_prefixes: [
    #           {
    #             cidr: "CIDR",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] virtual_interface_name
    #   The name of the virtual interface assigned by the customer.
    #
    #   Example: "My VPC"
    #   @return [String]
    #
    # @!attribute [rw] vlan
    #   The VLAN ID.
    #
    #   Example: 101
    #   @return [Integer]
    #
    # @!attribute [rw] asn
    #   The autonomous system (AS) number for Border Gateway Protocol (BGP)
    #   configuration.
    #
    #   Example: 65000
    #   @return [Integer]
    #
    # @!attribute [rw] auth_key
    #   The authentication key for BGP configuration.
    #
    #   Example: asdf34example
    #   @return [String]
    #
    # @!attribute [rw] amazon_address
    #   IP address assigned to the Amazon interface.
    #
    #   Example: 192.168.1.1/30 or 2001:db8::1/125
    #   @return [String]
    #
    # @!attribute [rw] customer_address
    #   IP address assigned to the customer interface.
    #
    #   Example: 192.168.1.2/30 or 2001:db8::2/125
    #   @return [String]
    #
    # @!attribute [rw] address_family
    #   Indicates the address family for the BGP peer.
    #
    #   * **ipv4**\: IPv4 address family
    #
    #   * **ipv6**\: IPv6 address family
    #   @return [String]
    #
    # @!attribute [rw] route_filter_prefixes
    #   A list of routes to be advertised to the AWS network in this region
    #   (public virtual interface).
    #   @return [Array<Types::RouteFilterPrefix>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/NewPublicVirtualInterfaceAllocation AWS API Documentation
    #
    class NewPublicVirtualInterfaceAllocation < Struct.new(
      :virtual_interface_name,
      :vlan,
      :asn,
      :auth_key,
      :amazon_address,
      :customer_address,
      :address_family,
      :route_filter_prefixes)
      include Aws::Structure
    end

    # The tags associated with a Direct Connect resource.
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the Direct Connect resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/ResourceTag AWS API Documentation
    #
    class ResourceTag < Struct.new(
      :resource_arn,
      :tags)
      include Aws::Structure
    end

    # A route filter prefix that the customer can advertise through Border
    # Gateway Protocol (BGP) over a public virtual interface.
    #
    # @note When making an API call, you may pass RouteFilterPrefix
    #   data as a hash:
    #
    #       {
    #         cidr: "CIDR",
    #       }
    #
    # @!attribute [rw] cidr
    #   CIDR notation for the advertised route. Multiple routes are
    #   separated by commas.
    #
    #   IPv6 CIDRs must be at least a /64 or shorter
    #
    #   Example: 10.10.10.0/24,10.10.11.0/24,2001:db8::/64
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/RouteFilterPrefix AWS API Documentation
    #
    class RouteFilterPrefix < Struct.new(
      :cidr)
      include Aws::Structure
    end

    # Information about a tag.
    #
    # @note When making an API call, you may pass Tag
    #   data as a hash:
    #
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       }
    #
    # @!attribute [rw] key
    #   The key of the tag.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the tag.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      include Aws::Structure
    end

    # Container for the parameters to the TagResource operation.
    #
    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ResourceArn", # required
    #         tags: [ # required
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the Direct Connect resource.
    #
    #   Example:
    #   arn:aws:directconnect:us-east-1:123456789012:dxcon/dxcon-fg5678gh
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The list of tags to add.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      include Aws::Structure
    end

    # The response received when TagResource is called.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # Container for the parameters to the UntagResource operation.
    #
    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ResourceArn", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the Direct Connect resource.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The list of tag keys to remove.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      include Aws::Structure
    end

    # The response received when UntagResource is called.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # Container for the parameters to the UpdateLag operation.
    #
    # @note When making an API call, you may pass UpdateLagRequest
    #   data as a hash:
    #
    #       {
    #         lag_id: "LagId", # required
    #         lag_name: "LagName",
    #         minimum_links: 1,
    #       }
    #
    # @!attribute [rw] lag_id
    #   The ID of the LAG to update.
    #
    #   Example: dxlag-abc123
    #
    #   Default: None
    #   @return [String]
    #
    # @!attribute [rw] lag_name
    #   The name for the LAG.
    #
    #   Example: "`3x10G LAG to AWS`"
    #
    #   Default: None
    #   @return [String]
    #
    # @!attribute [rw] minimum_links
    #   The minimum number of physical connections that must be operational
    #   for the LAG itself to be operational.
    #
    #   Default: None
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/UpdateLagRequest AWS API Documentation
    #
    class UpdateLagRequest < Struct.new(
      :lag_id,
      :lag_name,
      :minimum_links)
      include Aws::Structure
    end

    # You can create one or more AWS Direct Connect private virtual
    # interfaces linking to your virtual private gateway.
    #
    # Virtual private gateways can be managed using the Amazon Virtual
    # Private Cloud (Amazon VPC) console or the [Amazon EC2 CreateVpnGateway
    # action][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-CreateVpnGateway.html
    #
    # @!attribute [rw] virtual_gateway_id
    #   The ID of the virtual private gateway to a VPC. This only applies to
    #   private virtual interfaces.
    #
    #   Example: vgw-123er56
    #   @return [String]
    #
    # @!attribute [rw] virtual_gateway_state
    #   State of the virtual private gateway.
    #
    #   * **Pending**\: This is the initial state after calling
    #     *CreateVpnGateway*.
    #
    #   * **Available**\: Ready for use by a private virtual interface.
    #
    #   * **Deleting**\: This is the initial state after calling
    #     *DeleteVpnGateway*.
    #
    #   * **Deleted**\: In this state, a private virtual interface is unable
    #     to send traffic over this gateway.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/VirtualGateway AWS API Documentation
    #
    class VirtualGateway < Struct.new(
      :virtual_gateway_id,
      :virtual_gateway_state)
      include Aws::Structure
    end

    # A structure containing a list of virtual private gateways.
    #
    # @!attribute [rw] virtual_gateways
    #   A list of virtual private gateways.
    #   @return [Array<Types::VirtualGateway>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/VirtualGateways AWS API Documentation
    #
    class VirtualGateways < Struct.new(
      :virtual_gateways)
      include Aws::Structure
    end

    # A virtual interface (VLAN) transmits the traffic between the AWS
    # Direct Connect location and the customer.
    #
    # @!attribute [rw] owner_account
    #   The AWS account that will own the new virtual interface.
    #   @return [String]
    #
    # @!attribute [rw] virtual_interface_id
    #   The ID of the virtual interface.
    #
    #   Example: dxvif-123dfg56
    #
    #   Default: None
    #   @return [String]
    #
    # @!attribute [rw] location
    #   Where the connection is located.
    #
    #   Example: EqSV5
    #
    #   Default: None
    #   @return [String]
    #
    # @!attribute [rw] connection_id
    #   The ID of the connection. This field is also used as the ID type for
    #   operations that use multiple connection types (LAG, interconnect,
    #   and/or connection).
    #
    #   Example: dxcon-fg5678gh
    #
    #   Default: None
    #   @return [String]
    #
    # @!attribute [rw] virtual_interface_type
    #   The type of virtual interface.
    #
    #   Example: private (Amazon VPC) or public (Amazon S3, Amazon DynamoDB,
    #   and so on.)
    #   @return [String]
    #
    # @!attribute [rw] virtual_interface_name
    #   The name of the virtual interface assigned by the customer.
    #
    #   Example: "My VPC"
    #   @return [String]
    #
    # @!attribute [rw] vlan
    #   The VLAN ID.
    #
    #   Example: 101
    #   @return [Integer]
    #
    # @!attribute [rw] asn
    #   The autonomous system (AS) number for Border Gateway Protocol (BGP)
    #   configuration.
    #
    #   Example: 65000
    #   @return [Integer]
    #
    # @!attribute [rw] amazon_side_asn
    #   The autonomous system number (ASN) for the Amazon side of the
    #   connection.
    #   @return [Integer]
    #
    # @!attribute [rw] auth_key
    #   The authentication key for BGP configuration.
    #
    #   Example: asdf34example
    #   @return [String]
    #
    # @!attribute [rw] amazon_address
    #   IP address assigned to the Amazon interface.
    #
    #   Example: 192.168.1.1/30 or 2001:db8::1/125
    #   @return [String]
    #
    # @!attribute [rw] customer_address
    #   IP address assigned to the customer interface.
    #
    #   Example: 192.168.1.2/30 or 2001:db8::2/125
    #   @return [String]
    #
    # @!attribute [rw] address_family
    #   Indicates the address family for the BGP peer.
    #
    #   * **ipv4**\: IPv4 address family
    #
    #   * **ipv6**\: IPv6 address family
    #   @return [String]
    #
    # @!attribute [rw] virtual_interface_state
    #   State of the virtual interface.
    #
    #   * **Confirming**\: The creation of the virtual interface is pending
    #     confirmation from the virtual interface owner. If the owner of the
    #     virtual interface is different from the owner of the connection on
    #     which it is provisioned, then the virtual interface will remain in
    #     this state until it is confirmed by the virtual interface owner.
    #
    #   * **Verifying**\: This state only applies to public virtual
    #     interfaces. Each public virtual interface needs validation before
    #     the virtual interface can be created.
    #
    #   * **Pending**\: A virtual interface is in this state from the time
    #     that it is created until the virtual interface is ready to forward
    #     traffic.
    #
    #   * **Available**\: A virtual interface that is able to forward
    #     traffic.
    #
    #   * **Down**\: A virtual interface that is BGP down.
    #
    #   * **Deleting**\: A virtual interface is in this state immediately
    #     after calling DeleteVirtualInterface until it can no longer
    #     forward traffic.
    #
    #   * **Deleted**\: A virtual interface that cannot forward traffic.
    #
    #   * **Rejected**\: The virtual interface owner has declined creation
    #     of the virtual interface. If a virtual interface in the
    #     'Confirming' state is deleted by the virtual interface owner,
    #     the virtual interface will enter the 'Rejected' state.
    #   @return [String]
    #
    # @!attribute [rw] customer_router_config
    #   Information for generating the customer router configuration.
    #   @return [String]
    #
    # @!attribute [rw] virtual_gateway_id
    #   The ID of the virtual private gateway to a VPC. This only applies to
    #   private virtual interfaces.
    #
    #   Example: vgw-123er56
    #   @return [String]
    #
    # @!attribute [rw] direct_connect_gateway_id
    #   The ID of the direct connect gateway.
    #
    #   Example: "abcd1234-dcba-5678-be23-cdef9876ab45"
    #   @return [String]
    #
    # @!attribute [rw] route_filter_prefixes
    #   A list of routes to be advertised to the AWS network in this region
    #   (public virtual interface).
    #   @return [Array<Types::RouteFilterPrefix>]
    #
    # @!attribute [rw] bgp_peers
    #   A list of the BGP peers configured on this virtual interface.
    #   @return [Array<Types::BGPPeer>]
    #
    # @!attribute [rw] region
    #   The AWS region where the virtual interface is located.
    #
    #   Example: us-east-1
    #
    #   Default: None
    #   @return [String]
    #
    # @!attribute [rw] aws_device_v2
    #   The Direct Connection endpoint which the virtual interface
    #   terminates on.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/VirtualInterface AWS API Documentation
    #
    class VirtualInterface < Struct.new(
      :owner_account,
      :virtual_interface_id,
      :location,
      :connection_id,
      :virtual_interface_type,
      :virtual_interface_name,
      :vlan,
      :asn,
      :amazon_side_asn,
      :auth_key,
      :amazon_address,
      :customer_address,
      :address_family,
      :virtual_interface_state,
      :customer_router_config,
      :virtual_gateway_id,
      :direct_connect_gateway_id,
      :route_filter_prefixes,
      :bgp_peers,
      :region,
      :aws_device_v2)
      include Aws::Structure
    end

    # A structure containing a list of virtual interfaces.
    #
    # @!attribute [rw] virtual_interfaces
    #   A list of virtual interfaces.
    #   @return [Array<Types::VirtualInterface>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/VirtualInterfaces AWS API Documentation
    #
    class VirtualInterfaces < Struct.new(
      :virtual_interfaces)
      include Aws::Structure
    end

  end
end
