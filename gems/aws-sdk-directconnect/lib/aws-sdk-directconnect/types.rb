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
    #   Values: 50M, 100M, 200M, 300M, 400M, or 500M
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

    # A structure containing information about a BGP peer.
    #
    # @!attribute [rw] asn
    #   Autonomous system (AS) number for Border Gateway Protocol (BGP)
    #   configuration.
    #
    #   Example: 65000
    #   @return [Integer]
    #
    # @!attribute [rw] auth_key
    #   Authentication key for BGP configuration.
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
    #   * **Down**\: The BGP peer is down.
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
      :bgp_status)
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
    #   ID of the connection.
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
    #         virtual_gateway_id: "VirtualGatewayId", # required
    #       }
    #
    # @!attribute [rw] virtual_interface_id
    #   ID of the virtual interface.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/ConfirmPrivateVirtualInterfaceRequest AWS API Documentation
    #
    class ConfirmPrivateVirtualInterfaceRequest < Struct.new(
      :virtual_interface_id,
      :virtual_gateway_id)
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
    #     after calling *DeleteVirtualInterface* until it can no longer
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
    #   ID of the virtual interface.
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
    #     after calling *DeleteVirtualInterface* until it can no longer
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
    #   ID of the connection.
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
    #   The time of the most recent call to DescribeConnectionLoa for this
    #   Connection.
    #   @return [Time]
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
      :loa_issue_time)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/CreateConnectionRequest AWS API Documentation
    #
    class CreateConnectionRequest < Struct.new(
      :location,
      :bandwidth,
      :connection_name)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/CreateInterconnectRequest AWS API Documentation
    #
    class CreateInterconnectRequest < Struct.new(
      :interconnect_name,
      :bandwidth,
      :location)
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
    #           virtual_gateway_id: "VirtualGatewayId", # required
    #         },
    #       }
    #
    # @!attribute [rw] connection_id
    #   ID of the connection.
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
    #   ID of the connection.
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
    #   Autonomous system (AS) number for Border Gateway Protocol (BGP)
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
    #   ID of the connection.
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
    #   * **Pending**&gt;\: The interconnect has been approved, and is being
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
    #   ID of the virtual interface.
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
    #     after calling *DeleteVirtualInterface* until it can no longer
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
    #   ID of the connection.
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
    #   ID of the connection.
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
    #   ID of the connection.
    #
    #   Example: dxcon-fg5678gh
    #
    #   Default: None
    #   @return [String]
    #
    # @!attribute [rw] virtual_interface_id
    #   ID of the virtual interface.
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
    #   * **Pending**&gt;\: The interconnect has been approved, and is being
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/Interconnect AWS API Documentation
    #
    class Interconnect < Struct.new(
      :interconnect_id,
      :interconnect_name,
      :interconnect_state,
      :region,
      :location,
      :bandwidth,
      :loa_issue_time)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/Location AWS API Documentation
    #
    class Location < Struct.new(
      :location_code,
      :location_name)
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
    #   Autonomous system (AS) number for Border Gateway Protocol (BGP)
    #   configuration.
    #
    #   Example: 65000
    #   @return [Integer]
    #
    # @!attribute [rw] auth_key
    #   Authentication key for BGP configuration.
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
    #         virtual_gateway_id: "VirtualGatewayId", # required
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
    #   Autonomous system (AS) number for Border Gateway Protocol (BGP)
    #   configuration.
    #
    #   Example: 65000
    #   @return [Integer]
    #
    # @!attribute [rw] auth_key
    #   Authentication key for BGP configuration.
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
      :virtual_gateway_id)
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
    #   Autonomous system (AS) number for Border Gateway Protocol (BGP)
    #   configuration.
    #
    #   Example: 65000
    #   @return [Integer]
    #
    # @!attribute [rw] auth_key
    #   Authentication key for BGP configuration.
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
    #   Autonomous system (AS) number for Border Gateway Protocol (BGP)
    #   configuration.
    #
    #   Example: 65000
    #   @return [Integer]
    #
    # @!attribute [rw] auth_key
    #   Authentication key for BGP configuration.
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
    #   Autonomous system (AS) number for Border Gateway Protocol (BGP)
    #   configuration.
    #
    #   Example: 65000
    #   @return [Integer]
    #
    # @!attribute [rw] auth_key
    #   Authentication key for BGP configuration.
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
    #   ID of the virtual interface.
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
    #   ID of the connection.
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
    #   Autonomous system (AS) number for Border Gateway Protocol (BGP)
    #   configuration.
    #
    #   Example: 65000
    #   @return [Integer]
    #
    # @!attribute [rw] auth_key
    #   Authentication key for BGP configuration.
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
    #     after calling *DeleteVirtualInterface* until it can no longer
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
    # @!attribute [rw] route_filter_prefixes
    #   A list of routes to be advertised to the AWS network in this region
    #   (public virtual interface).
    #   @return [Array<Types::RouteFilterPrefix>]
    #
    # @!attribute [rw] bgp_peers
    #   A list of the BGP peers configured on this virtual interface.
    #   @return [Array<Types::BGPPeer>]
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
      :auth_key,
      :amazon_address,
      :customer_address,
      :address_family,
      :virtual_interface_state,
      :customer_router_config,
      :virtual_gateway_id,
      :route_filter_prefixes,
      :bgp_peers)
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
