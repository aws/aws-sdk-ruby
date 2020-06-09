# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::DirectConnect
  module Types

    # @note When making an API call, you may pass AcceptDirectConnectGatewayAssociationProposalRequest
    #   data as a hash:
    #
    #       {
    #         direct_connect_gateway_id: "DirectConnectGatewayId", # required
    #         proposal_id: "DirectConnectGatewayAssociationProposalId", # required
    #         associated_gateway_owner_account: "OwnerAccount", # required
    #         override_allowed_prefixes_to_direct_connect_gateway: [
    #           {
    #             cidr: "CIDR",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] direct_connect_gateway_id
    #   The ID of the Direct Connect gateway.
    #   @return [String]
    #
    # @!attribute [rw] proposal_id
    #   The ID of the request proposal.
    #   @return [String]
    #
    # @!attribute [rw] associated_gateway_owner_account
    #   The ID of the AWS account that owns the virtual private gateway or
    #   transit gateway.
    #   @return [String]
    #
    # @!attribute [rw] override_allowed_prefixes_to_direct_connect_gateway
    #   Overrides the Amazon VPC prefixes advertised to the Direct Connect
    #   gateway.
    #
    #   For information about how to set the prefixes, see [Allowed
    #   Prefixes][1] in the *AWS Direct Connect User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/directconnect/latest/UserGuide/multi-account-associate-vgw.html#allowed-prefixes
    #   @return [Array<Types::RouteFilterPrefix>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/AcceptDirectConnectGatewayAssociationProposalRequest AWS API Documentation
    #
    class AcceptDirectConnectGatewayAssociationProposalRequest < Struct.new(
      :direct_connect_gateway_id,
      :proposal_id,
      :associated_gateway_owner_account,
      :override_allowed_prefixes_to_direct_connect_gateway)
      include Aws::Structure
    end

    # @!attribute [rw] direct_connect_gateway_association
    #   Information about an association between a Direct Connect gateway
    #   and a virtual private gateway or transit gateway.
    #   @return [Types::DirectConnectGatewayAssociation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/AcceptDirectConnectGatewayAssociationProposalResult AWS API Documentation
    #
    class AcceptDirectConnectGatewayAssociationProposalResult < Struct.new(
      :direct_connect_gateway_association)
      include Aws::Structure
    end

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
    #   The bandwidth of the connection. The possible values are 50Mbps,
    #   100Mbps, 200Mbps, 300Mbps, 400Mbps, 500Mbps, 1Gbps, 2Gbps, 5Gbps,
    #   and 10Gbps. Note that only those AWS Direct Connect Partners who
    #   have met specific requirements are allowed to create a 1Gbps, 2Gbps,
    #   5Gbps or 10Gbps hosted connection.
    #   @return [String]
    #
    # @!attribute [rw] connection_name
    #   The name of the provisioned connection.
    #   @return [String]
    #
    # @!attribute [rw] owner_account
    #   The ID of the AWS account of the customer for whom the connection
    #   will be provisioned.
    #   @return [String]
    #
    # @!attribute [rw] interconnect_id
    #   The ID of the interconnect on which the connection will be
    #   provisioned.
    #   @return [String]
    #
    # @!attribute [rw] vlan
    #   The dedicated VLAN provisioned to the connection.
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

    # @note When making an API call, you may pass AllocateHostedConnectionRequest
    #   data as a hash:
    #
    #       {
    #         connection_id: "ConnectionId", # required
    #         owner_account: "OwnerAccount", # required
    #         bandwidth: "Bandwidth", # required
    #         connection_name: "ConnectionName", # required
    #         vlan: 1, # required
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] connection_id
    #   The ID of the interconnect or LAG.
    #   @return [String]
    #
    # @!attribute [rw] owner_account
    #   The ID of the AWS account ID of the customer for the connection.
    #   @return [String]
    #
    # @!attribute [rw] bandwidth
    #   The bandwidth of the connection. The possible values are 50Mbps,
    #   100Mbps, 200Mbps, 300Mbps, 400Mbps, 500Mbps, 1Gbps, 2Gbps, 5Gbps,
    #   and 10Gbps. Note that only those AWS Direct Connect Partners who
    #   have met specific requirements are allowed to create a 1Gbps, 2Gbps,
    #   5Gbps or 10Gbps hosted connection.
    #   @return [String]
    #
    # @!attribute [rw] connection_name
    #   The name of the hosted connection.
    #   @return [String]
    #
    # @!attribute [rw] vlan
    #   The dedicated VLAN provisioned to the hosted connection.
    #   @return [Integer]
    #
    # @!attribute [rw] tags
    #   The tags associated with the connection.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/AllocateHostedConnectionRequest AWS API Documentation
    #
    class AllocateHostedConnectionRequest < Struct.new(
      :connection_id,
      :owner_account,
      :bandwidth,
      :connection_name,
      :vlan,
      :tags)
      include Aws::Structure
    end

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
    #           mtu: 1,
    #           auth_key: "BGPAuthKey",
    #           amazon_address: "AmazonAddress",
    #           address_family: "ipv4", # accepts ipv4, ipv6
    #           customer_address: "CustomerAddress",
    #           tags: [
    #             {
    #               key: "TagKey", # required
    #               value: "TagValue",
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] connection_id
    #   The ID of the connection on which the private virtual interface is
    #   provisioned.
    #   @return [String]
    #
    # @!attribute [rw] owner_account
    #   The ID of the AWS account that owns the virtual private interface.
    #   @return [String]
    #
    # @!attribute [rw] new_private_virtual_interface_allocation
    #   Information about the private virtual interface.
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
    #           tags: [
    #             {
    #               key: "TagKey", # required
    #               value: "TagValue",
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] connection_id
    #   The ID of the connection on which the public virtual interface is
    #   provisioned.
    #   @return [String]
    #
    # @!attribute [rw] owner_account
    #   The ID of the AWS account that owns the public virtual interface.
    #   @return [String]
    #
    # @!attribute [rw] new_public_virtual_interface_allocation
    #   Information about the public virtual interface.
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

    # @note When making an API call, you may pass AllocateTransitVirtualInterfaceRequest
    #   data as a hash:
    #
    #       {
    #         connection_id: "ConnectionId", # required
    #         owner_account: "OwnerAccount", # required
    #         new_transit_virtual_interface_allocation: { # required
    #           virtual_interface_name: "VirtualInterfaceName",
    #           vlan: 1,
    #           asn: 1,
    #           mtu: 1,
    #           auth_key: "BGPAuthKey",
    #           amazon_address: "AmazonAddress",
    #           customer_address: "CustomerAddress",
    #           address_family: "ipv4", # accepts ipv4, ipv6
    #           tags: [
    #             {
    #               key: "TagKey", # required
    #               value: "TagValue",
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] connection_id
    #   The ID of the connection on which the transit virtual interface is
    #   provisioned.
    #   @return [String]
    #
    # @!attribute [rw] owner_account
    #   The ID of the AWS account that owns the transit virtual interface.
    #   @return [String]
    #
    # @!attribute [rw] new_transit_virtual_interface_allocation
    #   Information about the transit virtual interface.
    #   @return [Types::NewTransitVirtualInterfaceAllocation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/AllocateTransitVirtualInterfaceRequest AWS API Documentation
    #
    class AllocateTransitVirtualInterfaceRequest < Struct.new(
      :connection_id,
      :owner_account,
      :new_transit_virtual_interface_allocation)
      include Aws::Structure
    end

    # @!attribute [rw] virtual_interface
    #   Information about a virtual interface.
    #   @return [Types::VirtualInterface]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/AllocateTransitVirtualInterfaceResult AWS API Documentation
    #
    class AllocateTransitVirtualInterfaceResult < Struct.new(
      :virtual_interface)
      include Aws::Structure
    end

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
    #   @return [String]
    #
    # @!attribute [rw] lag_id
    #   The ID of the LAG with which to associate the connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/AssociateConnectionWithLagRequest AWS API Documentation
    #
    class AssociateConnectionWithLagRequest < Struct.new(
      :connection_id,
      :lag_id)
      include Aws::Structure
    end

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
    #   @return [String]
    #
    # @!attribute [rw] parent_connection_id
    #   The ID of the interconnect or the LAG.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/AssociateHostedConnectionRequest AWS API Documentation
    #
    class AssociateHostedConnectionRequest < Struct.new(
      :connection_id,
      :parent_connection_id)
      include Aws::Structure
    end

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
    #   @return [String]
    #
    # @!attribute [rw] connection_id
    #   The ID of the LAG or connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/AssociateVirtualInterfaceRequest AWS API Documentation
    #
    class AssociateVirtualInterfaceRequest < Struct.new(
      :virtual_interface_id,
      :connection_id)
      include Aws::Structure
    end

    # Information about the associated gateway.
    #
    # @!attribute [rw] id
    #   The ID of the associated gateway.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of associated gateway.
    #   @return [String]
    #
    # @!attribute [rw] owner_account
    #   The ID of the AWS account that owns the associated virtual private
    #   gateway or transit gateway.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The Region where the associated gateway is located.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/AssociatedGateway AWS API Documentation
    #
    class AssociatedGateway < Struct.new(
      :id,
      :type,
      :owner_account,
      :region)
      include Aws::Structure
    end

    # Information about a BGP peer.
    #
    # @!attribute [rw] bgp_peer_id
    #   The ID of the BGP peer.
    #   @return [String]
    #
    # @!attribute [rw] asn
    #   The autonomous system (AS) number for Border Gateway Protocol (BGP)
    #   configuration.
    #   @return [Integer]
    #
    # @!attribute [rw] auth_key
    #   The authentication key for BGP configuration. This string has a
    #   minimum length of 6 characters and and a maximun lenth of 80
    #   characters.
    #   @return [String]
    #
    # @!attribute [rw] address_family
    #   The address family for the BGP peer.
    #   @return [String]
    #
    # @!attribute [rw] amazon_address
    #   The IP address assigned to the Amazon interface.
    #   @return [String]
    #
    # @!attribute [rw] customer_address
    #   The IP address assigned to the customer interface.
    #   @return [String]
    #
    # @!attribute [rw] bgp_peer_state
    #   The state of the BGP peer. The following are the possible values:
    #
    #   * `verifying`\: The BGP peering addresses or ASN require validation
    #     before the BGP peer can be created. This state applies only to
    #     public virtual interfaces.
    #
    #   * `pending`\: The BGP peer is created, and remains in this state
    #     until it is ready to be established.
    #
    #   * `available`\: The BGP peer is ready to be established.
    #
    #   * `deleting`\: The BGP peer is being deleted.
    #
    #   * `deleted`\: The BGP peer is deleted and cannot be established.
    #   @return [String]
    #
    # @!attribute [rw] bgp_status
    #   The status of the BGP peer. The following are the possible values:
    #
    #   * `up`\: The BGP peer is established. This state does not indicate
    #     the state of the routing function. Ensure that you are receiving
    #     routes over the BGP session.
    #
    #   * `down`\: The BGP peer is down.
    #
    #   * `unknown`\: The BGP peer status is not available.
    #   @return [String]
    #
    # @!attribute [rw] aws_device_v2
    #   The Direct Connect endpoint on which the BGP peer terminates.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/BGPPeer AWS API Documentation
    #
    class BGPPeer < Struct.new(
      :bgp_peer_id,
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

    # @note When making an API call, you may pass ConfirmConnectionRequest
    #   data as a hash:
    #
    #       {
    #         connection_id: "ConnectionId", # required
    #       }
    #
    # @!attribute [rw] connection_id
    #   The ID of the hosted connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/ConfirmConnectionRequest AWS API Documentation
    #
    class ConfirmConnectionRequest < Struct.new(
      :connection_id)
      include Aws::Structure
    end

    # @!attribute [rw] connection_state
    #   The state of the connection. The following are the possible values:
    #
    #   * `ordering`\: The initial state of a hosted connection provisioned
    #     on an interconnect. The connection stays in the ordering state
    #     until the owner of the hosted connection confirms or declines the
    #     connection order.
    #
    #   * `requested`\: The initial state of a standard connection. The
    #     connection stays in the requested state until the Letter of
    #     Authorization (LOA) is sent to the customer.
    #
    #   * `pending`\: The connection has been approved and is being
    #     initialized.
    #
    #   * `available`\: The network link is up and the connection is ready
    #     for use.
    #
    #   * `down`\: The network link is down.
    #
    #   * `deleting`\: The connection is being deleted.
    #
    #   * `deleted`\: The connection has been deleted.
    #
    #   * `rejected`\: A hosted connection in the `ordering` state enters
    #     the `rejected` state if it is deleted by the customer.
    #
    #   * `unknown`\: The state of the connection is not available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/ConfirmConnectionResponse AWS API Documentation
    #
    class ConfirmConnectionResponse < Struct.new(
      :connection_state)
      include Aws::Structure
    end

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
    #   @return [String]
    #
    # @!attribute [rw] virtual_gateway_id
    #   The ID of the virtual private gateway.
    #   @return [String]
    #
    # @!attribute [rw] direct_connect_gateway_id
    #   The ID of the Direct Connect gateway.
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

    # @!attribute [rw] virtual_interface_state
    #   The state of the virtual interface. The following are the possible
    #   values:
    #
    #   * `confirming`\: The creation of the virtual interface is pending
    #     confirmation from the virtual interface owner. If the owner of the
    #     virtual interface is different from the owner of the connection on
    #     which it is provisioned, then the virtual interface will remain in
    #     this state until it is confirmed by the virtual interface owner.
    #
    #   * `verifying`\: This state only applies to public virtual
    #     interfaces. Each public virtual interface needs validation before
    #     the virtual interface can be created.
    #
    #   * `pending`\: A virtual interface is in this state from the time
    #     that it is created until the virtual interface is ready to forward
    #     traffic.
    #
    #   * `available`\: A virtual interface that is able to forward traffic.
    #
    #   * `down`\: A virtual interface that is BGP down.
    #
    #   * `deleting`\: A virtual interface is in this state immediately
    #     after calling DeleteVirtualInterface until it can no longer
    #     forward traffic.
    #
    #   * `deleted`\: A virtual interface that cannot forward traffic.
    #
    #   * `rejected`\: The virtual interface owner has declined creation of
    #     the virtual interface. If a virtual interface in the `Confirming`
    #     state is deleted by the virtual interface owner, the virtual
    #     interface enters the `Rejected` state.
    #
    #   * `unknown`\: The state of the virtual interface is not available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/ConfirmPrivateVirtualInterfaceResponse AWS API Documentation
    #
    class ConfirmPrivateVirtualInterfaceResponse < Struct.new(
      :virtual_interface_state)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ConfirmPublicVirtualInterfaceRequest
    #   data as a hash:
    #
    #       {
    #         virtual_interface_id: "VirtualInterfaceId", # required
    #       }
    #
    # @!attribute [rw] virtual_interface_id
    #   The ID of the virtual interface.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/ConfirmPublicVirtualInterfaceRequest AWS API Documentation
    #
    class ConfirmPublicVirtualInterfaceRequest < Struct.new(
      :virtual_interface_id)
      include Aws::Structure
    end

    # @!attribute [rw] virtual_interface_state
    #   The state of the virtual interface. The following are the possible
    #   values:
    #
    #   * `confirming`\: The creation of the virtual interface is pending
    #     confirmation from the virtual interface owner. If the owner of the
    #     virtual interface is different from the owner of the connection on
    #     which it is provisioned, then the virtual interface will remain in
    #     this state until it is confirmed by the virtual interface owner.
    #
    #   * `verifying`\: This state only applies to public virtual
    #     interfaces. Each public virtual interface needs validation before
    #     the virtual interface can be created.
    #
    #   * `pending`\: A virtual interface is in this state from the time
    #     that it is created until the virtual interface is ready to forward
    #     traffic.
    #
    #   * `available`\: A virtual interface that is able to forward traffic.
    #
    #   * `down`\: A virtual interface that is BGP down.
    #
    #   * `deleting`\: A virtual interface is in this state immediately
    #     after calling DeleteVirtualInterface until it can no longer
    #     forward traffic.
    #
    #   * `deleted`\: A virtual interface that cannot forward traffic.
    #
    #   * `rejected`\: The virtual interface owner has declined creation of
    #     the virtual interface. If a virtual interface in the `Confirming`
    #     state is deleted by the virtual interface owner, the virtual
    #     interface enters the `Rejected` state.
    #
    #   * `unknown`\: The state of the virtual interface is not available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/ConfirmPublicVirtualInterfaceResponse AWS API Documentation
    #
    class ConfirmPublicVirtualInterfaceResponse < Struct.new(
      :virtual_interface_state)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ConfirmTransitVirtualInterfaceRequest
    #   data as a hash:
    #
    #       {
    #         virtual_interface_id: "VirtualInterfaceId", # required
    #         direct_connect_gateway_id: "DirectConnectGatewayId", # required
    #       }
    #
    # @!attribute [rw] virtual_interface_id
    #   The ID of the virtual interface.
    #   @return [String]
    #
    # @!attribute [rw] direct_connect_gateway_id
    #   The ID of the Direct Connect gateway.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/ConfirmTransitVirtualInterfaceRequest AWS API Documentation
    #
    class ConfirmTransitVirtualInterfaceRequest < Struct.new(
      :virtual_interface_id,
      :direct_connect_gateway_id)
      include Aws::Structure
    end

    # @!attribute [rw] virtual_interface_state
    #   The state of the virtual interface. The following are the possible
    #   values:
    #
    #   * `confirming`\: The creation of the virtual interface is pending
    #     confirmation from the virtual interface owner. If the owner of the
    #     virtual interface is different from the owner of the connection on
    #     which it is provisioned, then the virtual interface will remain in
    #     this state until it is confirmed by the virtual interface owner.
    #
    #   * `verifying`\: This state only applies to public virtual
    #     interfaces. Each public virtual interface needs validation before
    #     the virtual interface can be created.
    #
    #   * `pending`\: A virtual interface is in this state from the time
    #     that it is created until the virtual interface is ready to forward
    #     traffic.
    #
    #   * `available`\: A virtual interface that is able to forward traffic.
    #
    #   * `down`\: A virtual interface that is BGP down.
    #
    #   * `deleting`\: A virtual interface is in this state immediately
    #     after calling DeleteVirtualInterface until it can no longer
    #     forward traffic.
    #
    #   * `deleted`\: A virtual interface that cannot forward traffic.
    #
    #   * `rejected`\: The virtual interface owner has declined creation of
    #     the virtual interface. If a virtual interface in the `Confirming`
    #     state is deleted by the virtual interface owner, the virtual
    #     interface enters the `Rejected` state.
    #
    #   * `unknown`\: The state of the virtual interface is not available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/ConfirmTransitVirtualInterfaceResponse AWS API Documentation
    #
    class ConfirmTransitVirtualInterfaceResponse < Struct.new(
      :virtual_interface_state)
      include Aws::Structure
    end

    # Information about an AWS Direct Connect connection.
    #
    # @!attribute [rw] owner_account
    #   The ID of the AWS account that owns the connection.
    #   @return [String]
    #
    # @!attribute [rw] connection_id
    #   The ID of the connection.
    #   @return [String]
    #
    # @!attribute [rw] connection_name
    #   The name of the connection.
    #   @return [String]
    #
    # @!attribute [rw] connection_state
    #   The state of the connection. The following are the possible values:
    #
    #   * `ordering`\: The initial state of a hosted connection provisioned
    #     on an interconnect. The connection stays in the ordering state
    #     until the owner of the hosted connection confirms or declines the
    #     connection order.
    #
    #   * `requested`\: The initial state of a standard connection. The
    #     connection stays in the requested state until the Letter of
    #     Authorization (LOA) is sent to the customer.
    #
    #   * `pending`\: The connection has been approved and is being
    #     initialized.
    #
    #   * `available`\: The network link is up and the connection is ready
    #     for use.
    #
    #   * `down`\: The network link is down.
    #
    #   * `deleting`\: The connection is being deleted.
    #
    #   * `deleted`\: The connection has been deleted.
    #
    #   * `rejected`\: A hosted connection in the `ordering` state enters
    #     the `rejected` state if it is deleted by the customer.
    #
    #   * `unknown`\: The state of the connection is not available.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The AWS Region where the connection is located.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   The location of the connection.
    #   @return [String]
    #
    # @!attribute [rw] bandwidth
    #   The bandwidth of the connection.
    #   @return [String]
    #
    # @!attribute [rw] vlan
    #   The ID of the VLAN.
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
    #   @return [String]
    #
    # @!attribute [rw] aws_device
    #   The Direct Connect endpoint on which the physical connection
    #   terminates.
    #   @return [String]
    #
    # @!attribute [rw] jumbo_frame_capable
    #   Indicates whether jumbo frames (9001 MTU) are supported.
    #   @return [Boolean]
    #
    # @!attribute [rw] aws_device_v2
    #   The Direct Connect endpoint on which the physical connection
    #   terminates.
    #   @return [String]
    #
    # @!attribute [rw] has_logical_redundancy
    #   Indicates whether the connection supports a secondary BGP peer in
    #   the same address family (IPv4/IPv6).
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags associated with the connection.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] provider_name
    #   The name of the service provider associated with the connection.
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
      :jumbo_frame_capable,
      :aws_device_v2,
      :has_logical_redundancy,
      :tags,
      :provider_name)
      include Aws::Structure
    end

    # @!attribute [rw] connections
    #   The connections.
    #   @return [Array<Types::Connection>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/Connections AWS API Documentation
    #
    class Connections < Struct.new(
      :connections)
      include Aws::Structure
    end

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
    #   The ID of the virtual interface.
    #   @return [String]
    #
    # @!attribute [rw] new_bgp_peer
    #   Information about the BGP peer.
    #   @return [Types::NewBGPPeer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/CreateBGPPeerRequest AWS API Documentation
    #
    class CreateBGPPeerRequest < Struct.new(
      :virtual_interface_id,
      :new_bgp_peer)
      include Aws::Structure
    end

    # @!attribute [rw] virtual_interface
    #   The virtual interface.
    #   @return [Types::VirtualInterface]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/CreateBGPPeerResponse AWS API Documentation
    #
    class CreateBGPPeerResponse < Struct.new(
      :virtual_interface)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateConnectionRequest
    #   data as a hash:
    #
    #       {
    #         location: "LocationCode", # required
    #         bandwidth: "Bandwidth", # required
    #         connection_name: "ConnectionName", # required
    #         lag_id: "LagId",
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue",
    #           },
    #         ],
    #         provider_name: "ProviderName",
    #       }
    #
    # @!attribute [rw] location
    #   The location of the connection.
    #   @return [String]
    #
    # @!attribute [rw] bandwidth
    #   The bandwidth of the connection.
    #   @return [String]
    #
    # @!attribute [rw] connection_name
    #   The name of the connection.
    #   @return [String]
    #
    # @!attribute [rw] lag_id
    #   The ID of the LAG.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to associate with the lag.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] provider_name
    #   The name of the service provider associated with the requested
    #   connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/CreateConnectionRequest AWS API Documentation
    #
    class CreateConnectionRequest < Struct.new(
      :location,
      :bandwidth,
      :connection_name,
      :lag_id,
      :tags,
      :provider_name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateDirectConnectGatewayAssociationProposalRequest
    #   data as a hash:
    #
    #       {
    #         direct_connect_gateway_id: "DirectConnectGatewayId", # required
    #         direct_connect_gateway_owner_account: "OwnerAccount", # required
    #         gateway_id: "GatewayIdToAssociate", # required
    #         add_allowed_prefixes_to_direct_connect_gateway: [
    #           {
    #             cidr: "CIDR",
    #           },
    #         ],
    #         remove_allowed_prefixes_to_direct_connect_gateway: [
    #           {
    #             cidr: "CIDR",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] direct_connect_gateway_id
    #   The ID of the Direct Connect gateway.
    #   @return [String]
    #
    # @!attribute [rw] direct_connect_gateway_owner_account
    #   The ID of the AWS account that owns the Direct Connect gateway.
    #   @return [String]
    #
    # @!attribute [rw] gateway_id
    #   The ID of the virtual private gateway or transit gateway.
    #   @return [String]
    #
    # @!attribute [rw] add_allowed_prefixes_to_direct_connect_gateway
    #   The Amazon VPC prefixes to advertise to the Direct Connect gateway.
    #   @return [Array<Types::RouteFilterPrefix>]
    #
    # @!attribute [rw] remove_allowed_prefixes_to_direct_connect_gateway
    #   The Amazon VPC prefixes to no longer advertise to the Direct Connect
    #   gateway.
    #   @return [Array<Types::RouteFilterPrefix>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/CreateDirectConnectGatewayAssociationProposalRequest AWS API Documentation
    #
    class CreateDirectConnectGatewayAssociationProposalRequest < Struct.new(
      :direct_connect_gateway_id,
      :direct_connect_gateway_owner_account,
      :gateway_id,
      :add_allowed_prefixes_to_direct_connect_gateway,
      :remove_allowed_prefixes_to_direct_connect_gateway)
      include Aws::Structure
    end

    # @!attribute [rw] direct_connect_gateway_association_proposal
    #   Information about the Direct Connect gateway proposal.
    #   @return [Types::DirectConnectGatewayAssociationProposal]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/CreateDirectConnectGatewayAssociationProposalResult AWS API Documentation
    #
    class CreateDirectConnectGatewayAssociationProposalResult < Struct.new(
      :direct_connect_gateway_association_proposal)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateDirectConnectGatewayAssociationRequest
    #   data as a hash:
    #
    #       {
    #         direct_connect_gateway_id: "DirectConnectGatewayId", # required
    #         gateway_id: "GatewayIdToAssociate",
    #         add_allowed_prefixes_to_direct_connect_gateway: [
    #           {
    #             cidr: "CIDR",
    #           },
    #         ],
    #         virtual_gateway_id: "VirtualGatewayId",
    #       }
    #
    # @!attribute [rw] direct_connect_gateway_id
    #   The ID of the Direct Connect gateway.
    #   @return [String]
    #
    # @!attribute [rw] gateway_id
    #   The ID of the virtual private gateway or transit gateway.
    #   @return [String]
    #
    # @!attribute [rw] add_allowed_prefixes_to_direct_connect_gateway
    #   The Amazon VPC prefixes to advertise to the Direct Connect gateway
    #
    #   This parameter is required when you create an association to a
    #   transit gateway.
    #
    #   For information about how to set the prefixes, see [Allowed
    #   Prefixes][1] in the *AWS Direct Connect User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/directconnect/latest/UserGuide/multi-account-associate-vgw.html#allowed-prefixes
    #   @return [Array<Types::RouteFilterPrefix>]
    #
    # @!attribute [rw] virtual_gateway_id
    #   The ID of the virtual private gateway.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/CreateDirectConnectGatewayAssociationRequest AWS API Documentation
    #
    class CreateDirectConnectGatewayAssociationRequest < Struct.new(
      :direct_connect_gateway_id,
      :gateway_id,
      :add_allowed_prefixes_to_direct_connect_gateway,
      :virtual_gateway_id)
      include Aws::Structure
    end

    # @!attribute [rw] direct_connect_gateway_association
    #   The association to be created.
    #   @return [Types::DirectConnectGatewayAssociation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/CreateDirectConnectGatewayAssociationResult AWS API Documentation
    #
    class CreateDirectConnectGatewayAssociationResult < Struct.new(
      :direct_connect_gateway_association)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateDirectConnectGatewayRequest
    #   data as a hash:
    #
    #       {
    #         direct_connect_gateway_name: "DirectConnectGatewayName", # required
    #         amazon_side_asn: 1,
    #       }
    #
    # @!attribute [rw] direct_connect_gateway_name
    #   The name of the Direct Connect gateway.
    #   @return [String]
    #
    # @!attribute [rw] amazon_side_asn
    #   The autonomous system number (ASN) for Border Gateway Protocol (BGP)
    #   to be configured on the Amazon side of the connection. The ASN must
    #   be in the private range of 64,512 to 65,534 or 4,200,000,000 to
    #   4,294,967,294. The default is 64512.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/CreateDirectConnectGatewayRequest AWS API Documentation
    #
    class CreateDirectConnectGatewayRequest < Struct.new(
      :direct_connect_gateway_name,
      :amazon_side_asn)
      include Aws::Structure
    end

    # @!attribute [rw] direct_connect_gateway
    #   The Direct Connect gateway.
    #   @return [Types::DirectConnectGateway]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/CreateDirectConnectGatewayResult AWS API Documentation
    #
    class CreateDirectConnectGatewayResult < Struct.new(
      :direct_connect_gateway)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateInterconnectRequest
    #   data as a hash:
    #
    #       {
    #         interconnect_name: "InterconnectName", # required
    #         bandwidth: "Bandwidth", # required
    #         location: "LocationCode", # required
    #         lag_id: "LagId",
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue",
    #           },
    #         ],
    #         provider_name: "ProviderName",
    #       }
    #
    # @!attribute [rw] interconnect_name
    #   The name of the interconnect.
    #   @return [String]
    #
    # @!attribute [rw] bandwidth
    #   The port bandwidth, in Gbps. The possible values are 1 and 10.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   The location of the interconnect.
    #   @return [String]
    #
    # @!attribute [rw] lag_id
    #   The ID of the LAG.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to associate with the interconnect.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] provider_name
    #   The name of the service provider associated with the interconnect.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/CreateInterconnectRequest AWS API Documentation
    #
    class CreateInterconnectRequest < Struct.new(
      :interconnect_name,
      :bandwidth,
      :location,
      :lag_id,
      :tags,
      :provider_name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateLagRequest
    #   data as a hash:
    #
    #       {
    #         number_of_connections: 1, # required
    #         location: "LocationCode", # required
    #         connections_bandwidth: "Bandwidth", # required
    #         lag_name: "LagName", # required
    #         connection_id: "ConnectionId",
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue",
    #           },
    #         ],
    #         child_connection_tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue",
    #           },
    #         ],
    #         provider_name: "ProviderName",
    #       }
    #
    # @!attribute [rw] number_of_connections
    #   The number of physical connections initially provisioned and bundled
    #   by the LAG.
    #   @return [Integer]
    #
    # @!attribute [rw] location
    #   The location for the LAG.
    #   @return [String]
    #
    # @!attribute [rw] connections_bandwidth
    #   The bandwidth of the individual physical connections bundled by the
    #   LAG. The possible values are 50Mbps, 100Mbps, 200Mbps, 300Mbps,
    #   400Mbps, 500Mbps, 1Gbps, 2Gbps, 5Gbps, and 10Gbps.
    #   @return [String]
    #
    # @!attribute [rw] lag_name
    #   The name of the LAG.
    #   @return [String]
    #
    # @!attribute [rw] connection_id
    #   The ID of an existing connection to migrate to the LAG.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to associate with the LAG.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] child_connection_tags
    #   The tags to associate with the automtically created LAGs.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] provider_name
    #   The name of the service provider associated with the LAG.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/CreateLagRequest AWS API Documentation
    #
    class CreateLagRequest < Struct.new(
      :number_of_connections,
      :location,
      :connections_bandwidth,
      :lag_name,
      :connection_id,
      :tags,
      :child_connection_tags,
      :provider_name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreatePrivateVirtualInterfaceRequest
    #   data as a hash:
    #
    #       {
    #         connection_id: "ConnectionId", # required
    #         new_private_virtual_interface: { # required
    #           virtual_interface_name: "VirtualInterfaceName", # required
    #           vlan: 1, # required
    #           asn: 1, # required
    #           mtu: 1,
    #           auth_key: "BGPAuthKey",
    #           amazon_address: "AmazonAddress",
    #           customer_address: "CustomerAddress",
    #           address_family: "ipv4", # accepts ipv4, ipv6
    #           virtual_gateway_id: "VirtualGatewayId",
    #           direct_connect_gateway_id: "DirectConnectGatewayId",
    #           tags: [
    #             {
    #               key: "TagKey", # required
    #               value: "TagValue",
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] connection_id
    #   The ID of the connection.
    #   @return [String]
    #
    # @!attribute [rw] new_private_virtual_interface
    #   Information about the private virtual interface.
    #   @return [Types::NewPrivateVirtualInterface]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/CreatePrivateVirtualInterfaceRequest AWS API Documentation
    #
    class CreatePrivateVirtualInterfaceRequest < Struct.new(
      :connection_id,
      :new_private_virtual_interface)
      include Aws::Structure
    end

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
    #           tags: [
    #             {
    #               key: "TagKey", # required
    #               value: "TagValue",
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] connection_id
    #   The ID of the connection.
    #   @return [String]
    #
    # @!attribute [rw] new_public_virtual_interface
    #   Information about the public virtual interface.
    #   @return [Types::NewPublicVirtualInterface]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/CreatePublicVirtualInterfaceRequest AWS API Documentation
    #
    class CreatePublicVirtualInterfaceRequest < Struct.new(
      :connection_id,
      :new_public_virtual_interface)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateTransitVirtualInterfaceRequest
    #   data as a hash:
    #
    #       {
    #         connection_id: "ConnectionId", # required
    #         new_transit_virtual_interface: { # required
    #           virtual_interface_name: "VirtualInterfaceName",
    #           vlan: 1,
    #           asn: 1,
    #           mtu: 1,
    #           auth_key: "BGPAuthKey",
    #           amazon_address: "AmazonAddress",
    #           customer_address: "CustomerAddress",
    #           address_family: "ipv4", # accepts ipv4, ipv6
    #           direct_connect_gateway_id: "DirectConnectGatewayId",
    #           tags: [
    #             {
    #               key: "TagKey", # required
    #               value: "TagValue",
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] connection_id
    #   The ID of the connection.
    #   @return [String]
    #
    # @!attribute [rw] new_transit_virtual_interface
    #   Information about the transit virtual interface.
    #   @return [Types::NewTransitVirtualInterface]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/CreateTransitVirtualInterfaceRequest AWS API Documentation
    #
    class CreateTransitVirtualInterfaceRequest < Struct.new(
      :connection_id,
      :new_transit_virtual_interface)
      include Aws::Structure
    end

    # @!attribute [rw] virtual_interface
    #   Information about a virtual interface.
    #   @return [Types::VirtualInterface]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/CreateTransitVirtualInterfaceResult AWS API Documentation
    #
    class CreateTransitVirtualInterfaceResult < Struct.new(
      :virtual_interface)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteBGPPeerRequest
    #   data as a hash:
    #
    #       {
    #         virtual_interface_id: "VirtualInterfaceId",
    #         asn: 1,
    #         customer_address: "CustomerAddress",
    #         bgp_peer_id: "BGPPeerId",
    #       }
    #
    # @!attribute [rw] virtual_interface_id
    #   The ID of the virtual interface.
    #   @return [String]
    #
    # @!attribute [rw] asn
    #   The autonomous system (AS) number for Border Gateway Protocol (BGP)
    #   configuration.
    #   @return [Integer]
    #
    # @!attribute [rw] customer_address
    #   The IP address assigned to the customer interface.
    #   @return [String]
    #
    # @!attribute [rw] bgp_peer_id
    #   The ID of the BGP peer.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DeleteBGPPeerRequest AWS API Documentation
    #
    class DeleteBGPPeerRequest < Struct.new(
      :virtual_interface_id,
      :asn,
      :customer_address,
      :bgp_peer_id)
      include Aws::Structure
    end

    # @!attribute [rw] virtual_interface
    #   The virtual interface.
    #   @return [Types::VirtualInterface]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DeleteBGPPeerResponse AWS API Documentation
    #
    class DeleteBGPPeerResponse < Struct.new(
      :virtual_interface)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteConnectionRequest
    #   data as a hash:
    #
    #       {
    #         connection_id: "ConnectionId", # required
    #       }
    #
    # @!attribute [rw] connection_id
    #   The ID of the connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DeleteConnectionRequest AWS API Documentation
    #
    class DeleteConnectionRequest < Struct.new(
      :connection_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteDirectConnectGatewayAssociationProposalRequest
    #   data as a hash:
    #
    #       {
    #         proposal_id: "DirectConnectGatewayAssociationProposalId", # required
    #       }
    #
    # @!attribute [rw] proposal_id
    #   The ID of the proposal.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DeleteDirectConnectGatewayAssociationProposalRequest AWS API Documentation
    #
    class DeleteDirectConnectGatewayAssociationProposalRequest < Struct.new(
      :proposal_id)
      include Aws::Structure
    end

    # @!attribute [rw] direct_connect_gateway_association_proposal
    #   The ID of the associated gateway.
    #   @return [Types::DirectConnectGatewayAssociationProposal]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DeleteDirectConnectGatewayAssociationProposalResult AWS API Documentation
    #
    class DeleteDirectConnectGatewayAssociationProposalResult < Struct.new(
      :direct_connect_gateway_association_proposal)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteDirectConnectGatewayAssociationRequest
    #   data as a hash:
    #
    #       {
    #         association_id: "DirectConnectGatewayAssociationId",
    #         direct_connect_gateway_id: "DirectConnectGatewayId",
    #         virtual_gateway_id: "VirtualGatewayId",
    #       }
    #
    # @!attribute [rw] association_id
    #   The ID of the Direct Connect gateway association.
    #   @return [String]
    #
    # @!attribute [rw] direct_connect_gateway_id
    #   The ID of the Direct Connect gateway.
    #   @return [String]
    #
    # @!attribute [rw] virtual_gateway_id
    #   The ID of the virtual private gateway.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DeleteDirectConnectGatewayAssociationRequest AWS API Documentation
    #
    class DeleteDirectConnectGatewayAssociationRequest < Struct.new(
      :association_id,
      :direct_connect_gateway_id,
      :virtual_gateway_id)
      include Aws::Structure
    end

    # @!attribute [rw] direct_connect_gateway_association
    #   Information about the deleted association.
    #   @return [Types::DirectConnectGatewayAssociation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DeleteDirectConnectGatewayAssociationResult AWS API Documentation
    #
    class DeleteDirectConnectGatewayAssociationResult < Struct.new(
      :direct_connect_gateway_association)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteDirectConnectGatewayRequest
    #   data as a hash:
    #
    #       {
    #         direct_connect_gateway_id: "DirectConnectGatewayId", # required
    #       }
    #
    # @!attribute [rw] direct_connect_gateway_id
    #   The ID of the Direct Connect gateway.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DeleteDirectConnectGatewayRequest AWS API Documentation
    #
    class DeleteDirectConnectGatewayRequest < Struct.new(
      :direct_connect_gateway_id)
      include Aws::Structure
    end

    # @!attribute [rw] direct_connect_gateway
    #   The Direct Connect gateway.
    #   @return [Types::DirectConnectGateway]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DeleteDirectConnectGatewayResult AWS API Documentation
    #
    class DeleteDirectConnectGatewayResult < Struct.new(
      :direct_connect_gateway)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteInterconnectRequest
    #   data as a hash:
    #
    #       {
    #         interconnect_id: "InterconnectId", # required
    #       }
    #
    # @!attribute [rw] interconnect_id
    #   The ID of the interconnect.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DeleteInterconnectRequest AWS API Documentation
    #
    class DeleteInterconnectRequest < Struct.new(
      :interconnect_id)
      include Aws::Structure
    end

    # @!attribute [rw] interconnect_state
    #   The state of the interconnect. The following are the possible
    #   values:
    #
    #   * `requested`\: The initial state of an interconnect. The
    #     interconnect stays in the requested state until the Letter of
    #     Authorization (LOA) is sent to the customer.
    #
    #   * `pending`\: The interconnect is approved, and is being
    #     initialized.
    #
    #   * `available`\: The network link is up, and the interconnect is
    #     ready for use.
    #
    #   * `down`\: The network link is down.
    #
    #   * `deleting`\: The interconnect is being deleted.
    #
    #   * `deleted`\: The interconnect is deleted.
    #
    #   * `unknown`\: The state of the interconnect is not available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DeleteInterconnectResponse AWS API Documentation
    #
    class DeleteInterconnectResponse < Struct.new(
      :interconnect_state)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteLagRequest
    #   data as a hash:
    #
    #       {
    #         lag_id: "LagId", # required
    #       }
    #
    # @!attribute [rw] lag_id
    #   The ID of the LAG.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DeleteLagRequest AWS API Documentation
    #
    class DeleteLagRequest < Struct.new(
      :lag_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteVirtualInterfaceRequest
    #   data as a hash:
    #
    #       {
    #         virtual_interface_id: "VirtualInterfaceId", # required
    #       }
    #
    # @!attribute [rw] virtual_interface_id
    #   The ID of the virtual interface.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DeleteVirtualInterfaceRequest AWS API Documentation
    #
    class DeleteVirtualInterfaceRequest < Struct.new(
      :virtual_interface_id)
      include Aws::Structure
    end

    # @!attribute [rw] virtual_interface_state
    #   The state of the virtual interface. The following are the possible
    #   values:
    #
    #   * `confirming`\: The creation of the virtual interface is pending
    #     confirmation from the virtual interface owner. If the owner of the
    #     virtual interface is different from the owner of the connection on
    #     which it is provisioned, then the virtual interface will remain in
    #     this state until it is confirmed by the virtual interface owner.
    #
    #   * `verifying`\: This state only applies to public virtual
    #     interfaces. Each public virtual interface needs validation before
    #     the virtual interface can be created.
    #
    #   * `pending`\: A virtual interface is in this state from the time
    #     that it is created until the virtual interface is ready to forward
    #     traffic.
    #
    #   * `available`\: A virtual interface that is able to forward traffic.
    #
    #   * `down`\: A virtual interface that is BGP down.
    #
    #   * `deleting`\: A virtual interface is in this state immediately
    #     after calling DeleteVirtualInterface until it can no longer
    #     forward traffic.
    #
    #   * `deleted`\: A virtual interface that cannot forward traffic.
    #
    #   * `rejected`\: The virtual interface owner has declined creation of
    #     the virtual interface. If a virtual interface in the `Confirming`
    #     state is deleted by the virtual interface owner, the virtual
    #     interface enters the `Rejected` state.
    #
    #   * `unknown`\: The state of the virtual interface is not available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DeleteVirtualInterfaceResponse AWS API Documentation
    #
    class DeleteVirtualInterfaceResponse < Struct.new(
      :virtual_interface_state)
      include Aws::Structure
    end

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
    #   The ID of the connection.
    #   @return [String]
    #
    # @!attribute [rw] provider_name
    #   The name of the APN partner or service provider who establishes
    #   connectivity on your behalf. If you specify this parameter, the
    #   LOA-CFA lists the provider name alongside your company name as the
    #   requester of the cross connect.
    #   @return [String]
    #
    # @!attribute [rw] loa_content_type
    #   The standard media type for the LOA-CFA document. The only supported
    #   value is application/pdf.
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

    # @!attribute [rw] loa
    #   The Letter of Authorization - Connecting Facility Assignment
    #   (LOA-CFA).
    #   @return [Types::Loa]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DescribeConnectionLoaResponse AWS API Documentation
    #
    class DescribeConnectionLoaResponse < Struct.new(
      :loa)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeConnectionsOnInterconnectRequest
    #   data as a hash:
    #
    #       {
    #         interconnect_id: "InterconnectId", # required
    #       }
    #
    # @!attribute [rw] interconnect_id
    #   The ID of the interconnect.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DescribeConnectionsOnInterconnectRequest AWS API Documentation
    #
    class DescribeConnectionsOnInterconnectRequest < Struct.new(
      :interconnect_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeConnectionsRequest
    #   data as a hash:
    #
    #       {
    #         connection_id: "ConnectionId",
    #       }
    #
    # @!attribute [rw] connection_id
    #   The ID of the connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DescribeConnectionsRequest AWS API Documentation
    #
    class DescribeConnectionsRequest < Struct.new(
      :connection_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeDirectConnectGatewayAssociationProposalsRequest
    #   data as a hash:
    #
    #       {
    #         direct_connect_gateway_id: "DirectConnectGatewayId",
    #         proposal_id: "DirectConnectGatewayAssociationProposalId",
    #         associated_gateway_id: "AssociatedGatewayId",
    #         max_results: 1,
    #         next_token: "PaginationToken",
    #       }
    #
    # @!attribute [rw] direct_connect_gateway_id
    #   The ID of the Direct Connect gateway.
    #   @return [String]
    #
    # @!attribute [rw] proposal_id
    #   The ID of the proposal.
    #   @return [String]
    #
    # @!attribute [rw] associated_gateway_id
    #   The ID of the associated gateway.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `nextToken` value.
    #
    #   If `MaxResults` is given a value larger than 100, only 100 results
    #   are returned.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DescribeDirectConnectGatewayAssociationProposalsRequest AWS API Documentation
    #
    class DescribeDirectConnectGatewayAssociationProposalsRequest < Struct.new(
      :direct_connect_gateway_id,
      :proposal_id,
      :associated_gateway_id,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] direct_connect_gateway_association_proposals
    #   Describes the Direct Connect gateway association proposals.
    #   @return [Array<Types::DirectConnectGatewayAssociationProposal>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results. This value is
    #   `null` when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DescribeDirectConnectGatewayAssociationProposalsResult AWS API Documentation
    #
    class DescribeDirectConnectGatewayAssociationProposalsResult < Struct.new(
      :direct_connect_gateway_association_proposals,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeDirectConnectGatewayAssociationsRequest
    #   data as a hash:
    #
    #       {
    #         association_id: "DirectConnectGatewayAssociationId",
    #         associated_gateway_id: "AssociatedGatewayId",
    #         direct_connect_gateway_id: "DirectConnectGatewayId",
    #         max_results: 1,
    #         next_token: "PaginationToken",
    #         virtual_gateway_id: "VirtualGatewayId",
    #       }
    #
    # @!attribute [rw] association_id
    #   The ID of the Direct Connect gateway association.
    #   @return [String]
    #
    # @!attribute [rw] associated_gateway_id
    #   The ID of the associated gateway.
    #   @return [String]
    #
    # @!attribute [rw] direct_connect_gateway_id
    #   The ID of the Direct Connect gateway.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `nextToken` value.
    #
    #   If `MaxResults` is given a value larger than 100, only 100 results
    #   are returned.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token provided in the previous call to retrieve the next page.
    #   @return [String]
    #
    # @!attribute [rw] virtual_gateway_id
    #   The ID of the virtual private gateway.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DescribeDirectConnectGatewayAssociationsRequest AWS API Documentation
    #
    class DescribeDirectConnectGatewayAssociationsRequest < Struct.new(
      :association_id,
      :associated_gateway_id,
      :direct_connect_gateway_id,
      :max_results,
      :next_token,
      :virtual_gateway_id)
      include Aws::Structure
    end

    # @!attribute [rw] direct_connect_gateway_associations
    #   Information about the associations.
    #   @return [Array<Types::DirectConnectGatewayAssociation>]
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DescribeDirectConnectGatewayAssociationsResult AWS API Documentation
    #
    class DescribeDirectConnectGatewayAssociationsResult < Struct.new(
      :direct_connect_gateway_associations,
      :next_token)
      include Aws::Structure
    end

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
    #   The ID of the Direct Connect gateway.
    #   @return [String]
    #
    # @!attribute [rw] virtual_interface_id
    #   The ID of the virtual interface.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `nextToken` value.
    #
    #   If `MaxResults` is given a value larger than 100, only 100 results
    #   are returned.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token provided in the previous call to retrieve the next page.
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

    # @!attribute [rw] direct_connect_gateway_attachments
    #   The attachments.
    #   @return [Array<Types::DirectConnectGatewayAttachment>]
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DescribeDirectConnectGatewayAttachmentsResult AWS API Documentation
    #
    class DescribeDirectConnectGatewayAttachmentsResult < Struct.new(
      :direct_connect_gateway_attachments,
      :next_token)
      include Aws::Structure
    end

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
    #   The ID of the Direct Connect gateway.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `nextToken` value.
    #
    #   If `MaxResults` is given a value larger than 100, only 100 results
    #   are returned.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token provided in the previous call to retrieve the next page.
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

    # @!attribute [rw] direct_connect_gateways
    #   The Direct Connect gateways.
    #   @return [Array<Types::DirectConnectGateway>]
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DescribeDirectConnectGatewaysResult AWS API Documentation
    #
    class DescribeDirectConnectGatewaysResult < Struct.new(
      :direct_connect_gateways,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeHostedConnectionsRequest
    #   data as a hash:
    #
    #       {
    #         connection_id: "ConnectionId", # required
    #       }
    #
    # @!attribute [rw] connection_id
    #   The ID of the interconnect or LAG.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DescribeHostedConnectionsRequest AWS API Documentation
    #
    class DescribeHostedConnectionsRequest < Struct.new(
      :connection_id)
      include Aws::Structure
    end

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
    #   @return [String]
    #
    # @!attribute [rw] provider_name
    #   The name of the service provider who establishes connectivity on
    #   your behalf. If you supply this parameter, the LOA-CFA lists the
    #   provider name alongside your company name as the requester of the
    #   cross connect.
    #   @return [String]
    #
    # @!attribute [rw] loa_content_type
    #   The standard media type for the LOA-CFA document. The only supported
    #   value is application/pdf.
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

    # @!attribute [rw] loa
    #   The Letter of Authorization - Connecting Facility Assignment
    #   (LOA-CFA).
    #   @return [Types::Loa]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DescribeInterconnectLoaResponse AWS API Documentation
    #
    class DescribeInterconnectLoaResponse < Struct.new(
      :loa)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeInterconnectsRequest
    #   data as a hash:
    #
    #       {
    #         interconnect_id: "InterconnectId",
    #       }
    #
    # @!attribute [rw] interconnect_id
    #   The ID of the interconnect.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DescribeInterconnectsRequest AWS API Documentation
    #
    class DescribeInterconnectsRequest < Struct.new(
      :interconnect_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeLagsRequest
    #   data as a hash:
    #
    #       {
    #         lag_id: "LagId",
    #       }
    #
    # @!attribute [rw] lag_id
    #   The ID of the LAG.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DescribeLagsRequest AWS API Documentation
    #
    class DescribeLagsRequest < Struct.new(
      :lag_id)
      include Aws::Structure
    end

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
    #   The ID of a connection, LAG, or interconnect.
    #   @return [String]
    #
    # @!attribute [rw] provider_name
    #   The name of the service provider who establishes connectivity on
    #   your behalf. If you specify this parameter, the LOA-CFA lists the
    #   provider name alongside your company name as the requester of the
    #   cross connect.
    #   @return [String]
    #
    # @!attribute [rw] loa_content_type
    #   The standard media type for the LOA-CFA document. The only supported
    #   value is application/pdf.
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

    # @note When making an API call, you may pass DescribeTagsRequest
    #   data as a hash:
    #
    #       {
    #         resource_arns: ["ResourceArn"], # required
    #       }
    #
    # @!attribute [rw] resource_arns
    #   The Amazon Resource Names (ARNs) of the resources.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DescribeTagsRequest AWS API Documentation
    #
    class DescribeTagsRequest < Struct.new(
      :resource_arns)
      include Aws::Structure
    end

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

    # @note When making an API call, you may pass DescribeVirtualInterfacesRequest
    #   data as a hash:
    #
    #       {
    #         connection_id: "ConnectionId",
    #         virtual_interface_id: "VirtualInterfaceId",
    #       }
    #
    # @!attribute [rw] connection_id
    #   The ID of the connection.
    #   @return [String]
    #
    # @!attribute [rw] virtual_interface_id
    #   The ID of the virtual interface.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DescribeVirtualInterfacesRequest AWS API Documentation
    #
    class DescribeVirtualInterfacesRequest < Struct.new(
      :connection_id,
      :virtual_interface_id)
      include Aws::Structure
    end

    # One or more parameters are not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DirectConnectClientException AWS API Documentation
    #
    class DirectConnectClientException < Struct.new(
      :message)
      include Aws::Structure
    end

    # Information about a Direct Connect gateway, which enables you to
    # connect virtual interfaces and virtual private gateway or transit
    # gateways.
    #
    # @!attribute [rw] direct_connect_gateway_id
    #   The ID of the Direct Connect gateway.
    #   @return [String]
    #
    # @!attribute [rw] direct_connect_gateway_name
    #   The name of the Direct Connect gateway.
    #   @return [String]
    #
    # @!attribute [rw] amazon_side_asn
    #   The autonomous system number (ASN) for the Amazon side of the
    #   connection.
    #   @return [Integer]
    #
    # @!attribute [rw] owner_account
    #   The ID of the AWS account that owns the Direct Connect gateway.
    #   @return [String]
    #
    # @!attribute [rw] direct_connect_gateway_state
    #   The state of the Direct Connect gateway. The following are the
    #   possible values:
    #
    #   * `pending`\: The initial state after calling
    #     CreateDirectConnectGateway.
    #
    #   * `available`\: The Direct Connect gateway is ready for use.
    #
    #   * `deleting`\: The initial state after calling
    #     DeleteDirectConnectGateway.
    #
    #   * `deleted`\: The Direct Connect gateway is deleted and cannot pass
    #     traffic.
    #   @return [String]
    #
    # @!attribute [rw] state_change_error
    #   The error message if the state of an object failed to advance.
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

    # Information about an association between a Direct Connect gateway and
    # a virtual private gateway or transit gateway.
    #
    # @!attribute [rw] direct_connect_gateway_id
    #   The ID of the Direct Connect gateway.
    #   @return [String]
    #
    # @!attribute [rw] direct_connect_gateway_owner_account
    #   The ID of the AWS account that owns the associated gateway.
    #   @return [String]
    #
    # @!attribute [rw] association_state
    #   The state of the association. The following are the possible values:
    #
    #   * `associating`\: The initial state after calling
    #     CreateDirectConnectGatewayAssociation.
    #
    #   * `associated`\: The Direct Connect gateway and virtual private
    #     gateway or transit gateway are successfully associated and ready
    #     to pass traffic.
    #
    #   * `disassociating`\: The initial state after calling
    #     DeleteDirectConnectGatewayAssociation.
    #
    #   * `disassociated`\: The virtual private gateway or transit gateway
    #     is disassociated from the Direct Connect gateway. Traffic flow
    #     between the Direct Connect gateway and virtual private gateway or
    #     transit gateway is stopped.
    #   @return [String]
    #
    # @!attribute [rw] state_change_error
    #   The error message if the state of an object failed to advance.
    #   @return [String]
    #
    # @!attribute [rw] associated_gateway
    #   Information about the associated gateway.
    #   @return [Types::AssociatedGateway]
    #
    # @!attribute [rw] association_id
    #   The ID of the Direct Connect gateway association.
    #   @return [String]
    #
    # @!attribute [rw] allowed_prefixes_to_direct_connect_gateway
    #   The Amazon VPC prefixes to advertise to the Direct Connect gateway.
    #   @return [Array<Types::RouteFilterPrefix>]
    #
    # @!attribute [rw] virtual_gateway_id
    #   The ID of the virtual private gateway. Applies only to private
    #   virtual interfaces.
    #   @return [String]
    #
    # @!attribute [rw] virtual_gateway_region
    #   The AWS Region where the virtual private gateway is located.
    #   @return [String]
    #
    # @!attribute [rw] virtual_gateway_owner_account
    #   The ID of the AWS account that owns the virtual private gateway.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DirectConnectGatewayAssociation AWS API Documentation
    #
    class DirectConnectGatewayAssociation < Struct.new(
      :direct_connect_gateway_id,
      :direct_connect_gateway_owner_account,
      :association_state,
      :state_change_error,
      :associated_gateway,
      :association_id,
      :allowed_prefixes_to_direct_connect_gateway,
      :virtual_gateway_id,
      :virtual_gateway_region,
      :virtual_gateway_owner_account)
      include Aws::Structure
    end

    # Information about the proposal request to attach a virtual private
    # gateway to a Direct Connect gateway.
    #
    # @!attribute [rw] proposal_id
    #   The ID of the association proposal.
    #   @return [String]
    #
    # @!attribute [rw] direct_connect_gateway_id
    #   The ID of the Direct Connect gateway.
    #   @return [String]
    #
    # @!attribute [rw] direct_connect_gateway_owner_account
    #   The ID of the AWS account that owns the Direct Connect gateway.
    #   @return [String]
    #
    # @!attribute [rw] proposal_state
    #   The state of the proposal. The following are possible values:
    #
    #   * `accepted`\: The proposal has been accepted. The Direct Connect
    #     gateway association is available to use in this state.
    #
    #   * `deleted`\: The proposal has been deleted by the owner that made
    #     the proposal. The Direct Connect gateway association cannot be
    #     used in this state.
    #
    #   * `requested`\: The proposal has been requested. The Direct Connect
    #     gateway association cannot be used in this state.
    #   @return [String]
    #
    # @!attribute [rw] associated_gateway
    #   Information about the associated gateway.
    #   @return [Types::AssociatedGateway]
    #
    # @!attribute [rw] existing_allowed_prefixes_to_direct_connect_gateway
    #   The existing Amazon VPC prefixes advertised to the Direct Connect
    #   gateway.
    #   @return [Array<Types::RouteFilterPrefix>]
    #
    # @!attribute [rw] requested_allowed_prefixes_to_direct_connect_gateway
    #   The Amazon VPC prefixes to advertise to the Direct Connect gateway.
    #   @return [Array<Types::RouteFilterPrefix>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DirectConnectGatewayAssociationProposal AWS API Documentation
    #
    class DirectConnectGatewayAssociationProposal < Struct.new(
      :proposal_id,
      :direct_connect_gateway_id,
      :direct_connect_gateway_owner_account,
      :proposal_state,
      :associated_gateway,
      :existing_allowed_prefixes_to_direct_connect_gateway,
      :requested_allowed_prefixes_to_direct_connect_gateway)
      include Aws::Structure
    end

    # Information about an attachment between a Direct Connect gateway and a
    # virtual interface.
    #
    # @!attribute [rw] direct_connect_gateway_id
    #   The ID of the Direct Connect gateway.
    #   @return [String]
    #
    # @!attribute [rw] virtual_interface_id
    #   The ID of the virtual interface.
    #   @return [String]
    #
    # @!attribute [rw] virtual_interface_region
    #   The AWS Region where the virtual interface is located.
    #   @return [String]
    #
    # @!attribute [rw] virtual_interface_owner_account
    #   The ID of the AWS account that owns the virtual interface.
    #   @return [String]
    #
    # @!attribute [rw] attachment_state
    #   The state of the attachment. The following are the possible values:
    #
    #   * `attaching`\: The initial state after a virtual interface is
    #     created using the Direct Connect gateway.
    #
    #   * `attached`\: The Direct Connect gateway and virtual interface are
    #     attached and ready to pass traffic.
    #
    #   * `detaching`\: The initial state after calling
    #     DeleteVirtualInterface.
    #
    #   * `detached`\: The virtual interface is detached from the Direct
    #     Connect gateway. Traffic flow between the Direct Connect gateway
    #     and virtual interface is stopped.
    #   @return [String]
    #
    # @!attribute [rw] attachment_type
    #   The type of attachment.
    #   @return [String]
    #
    # @!attribute [rw] state_change_error
    #   The error message if the state of an object failed to advance.
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
      :attachment_type,
      :state_change_error)
      include Aws::Structure
    end

    # A server-side error occurred.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DirectConnectServerException AWS API Documentation
    #
    class DirectConnectServerException < Struct.new(
      :message)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DisassociateConnectionFromLagRequest
    #   data as a hash:
    #
    #       {
    #         connection_id: "ConnectionId", # required
    #         lag_id: "LagId", # required
    #       }
    #
    # @!attribute [rw] connection_id
    #   The ID of the connection.
    #   @return [String]
    #
    # @!attribute [rw] lag_id
    #   The ID of the LAG.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DisassociateConnectionFromLagRequest AWS API Documentation
    #
    class DisassociateConnectionFromLagRequest < Struct.new(
      :connection_id,
      :lag_id)
      include Aws::Structure
    end

    # A tag key was specified more than once.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DuplicateTagKeysException AWS API Documentation
    #
    class DuplicateTagKeysException < Aws::EmptyStructure; end

    # Information about an interconnect.
    #
    # @!attribute [rw] interconnect_id
    #   The ID of the interconnect.
    #   @return [String]
    #
    # @!attribute [rw] interconnect_name
    #   The name of the interconnect.
    #   @return [String]
    #
    # @!attribute [rw] interconnect_state
    #   The state of the interconnect. The following are the possible
    #   values:
    #
    #   * `requested`\: The initial state of an interconnect. The
    #     interconnect stays in the requested state until the Letter of
    #     Authorization (LOA) is sent to the customer.
    #
    #   * `pending`\: The interconnect is approved, and is being
    #     initialized.
    #
    #   * `available`\: The network link is up, and the interconnect is
    #     ready for use.
    #
    #   * `down`\: The network link is down.
    #
    #   * `deleting`\: The interconnect is being deleted.
    #
    #   * `deleted`\: The interconnect is deleted.
    #
    #   * `unknown`\: The state of the interconnect is not available.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The AWS Region where the connection is located.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   The location of the connection.
    #   @return [String]
    #
    # @!attribute [rw] bandwidth
    #   The bandwidth of the connection.
    #   @return [String]
    #
    # @!attribute [rw] loa_issue_time
    #   The time of the most recent call to DescribeLoa for this connection.
    #   @return [Time]
    #
    # @!attribute [rw] lag_id
    #   The ID of the LAG.
    #   @return [String]
    #
    # @!attribute [rw] aws_device
    #   The Direct Connect endpoint on which the physical connection
    #   terminates.
    #   @return [String]
    #
    # @!attribute [rw] jumbo_frame_capable
    #   Indicates whether jumbo frames (9001 MTU) are supported.
    #   @return [Boolean]
    #
    # @!attribute [rw] aws_device_v2
    #   The Direct Connect endpoint on which the physical connection
    #   terminates.
    #   @return [String]
    #
    # @!attribute [rw] has_logical_redundancy
    #   Indicates whether the interconnect supports a secondary BGP in the
    #   same address family (IPv4/IPv6).
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags associated with the interconnect.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] provider_name
    #   The name of the service provider associated with the interconnect.
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
      :jumbo_frame_capable,
      :aws_device_v2,
      :has_logical_redundancy,
      :tags,
      :provider_name)
      include Aws::Structure
    end

    # @!attribute [rw] interconnects
    #   The interconnects.
    #   @return [Array<Types::Interconnect>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/Interconnects AWS API Documentation
    #
    class Interconnects < Struct.new(
      :interconnects)
      include Aws::Structure
    end

    # Information about a link aggregation group (LAG).
    #
    # @!attribute [rw] connections_bandwidth
    #   The individual bandwidth of the physical connections bundled by the
    #   LAG. The possible values are 1Gbps and 10Gbps.
    #   @return [String]
    #
    # @!attribute [rw] number_of_connections
    #   The number of physical connections bundled by the LAG, up to a
    #   maximum of 10.
    #   @return [Integer]
    #
    # @!attribute [rw] lag_id
    #   The ID of the LAG.
    #   @return [String]
    #
    # @!attribute [rw] owner_account
    #   The ID of the AWS account that owns the LAG.
    #   @return [String]
    #
    # @!attribute [rw] lag_name
    #   The name of the LAG.
    #   @return [String]
    #
    # @!attribute [rw] lag_state
    #   The state of the LAG. The following are the possible values:
    #
    #   * `requested`\: The initial state of a LAG. The LAG stays in the
    #     requested state until the Letter of Authorization (LOA) is
    #     available.
    #
    #   * `pending`\: The LAG has been approved and is being initialized.
    #
    #   * `available`\: The network link is established and the LAG is ready
    #     for use.
    #
    #   * `down`\: The network link is down.
    #
    #   * `deleting`\: The LAG is being deleted.
    #
    #   * `deleted`\: The LAG is deleted.
    #
    #   * `unknown`\: The state of the LAG is not available.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   The location of the LAG.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The AWS Region where the connection is located.
    #   @return [String]
    #
    # @!attribute [rw] minimum_links
    #   The minimum number of physical connections that must be operational
    #   for the LAG itself to be operational.
    #   @return [Integer]
    #
    # @!attribute [rw] aws_device
    #   The AWS Direct Connect endpoint that hosts the LAG.
    #   @return [String]
    #
    # @!attribute [rw] aws_device_v2
    #   The AWS Direct Connect endpoint that hosts the LAG.
    #   @return [String]
    #
    # @!attribute [rw] connections
    #   The connections bundled by the LAG.
    #   @return [Array<Types::Connection>]
    #
    # @!attribute [rw] allows_hosted_connections
    #   Indicates whether the LAG can host other connections.
    #   @return [Boolean]
    #
    # @!attribute [rw] jumbo_frame_capable
    #   Indicates whether jumbo frames (9001 MTU) are supported.
    #   @return [Boolean]
    #
    # @!attribute [rw] has_logical_redundancy
    #   Indicates whether the LAG supports a secondary BGP peer in the same
    #   address family (IPv4/IPv6).
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags associated with the LAG.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] provider_name
    #   The name of the service provider associated with the LAG.
    #   @return [String]
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
      :allows_hosted_connections,
      :jumbo_frame_capable,
      :has_logical_redundancy,
      :tags,
      :provider_name)
      include Aws::Structure
    end

    # @!attribute [rw] lags
    #   The LAGs.
    #   @return [Array<Types::Lag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/Lags AWS API Documentation
    #
    class Lags < Struct.new(
      :lags)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListVirtualInterfaceTestHistoryRequest
    #   data as a hash:
    #
    #       {
    #         test_id: "TestId",
    #         virtual_interface_id: "VirtualInterfaceId",
    #         bgp_peers: ["BGPPeerId"],
    #         status: "FailureTestHistoryStatus",
    #         max_results: 1,
    #         next_token: "PaginationToken",
    #       }
    #
    # @!attribute [rw] test_id
    #   The ID of the virtual interface failover test.
    #   @return [String]
    #
    # @!attribute [rw] virtual_interface_id
    #   The ID of the virtual interface that was tested.
    #   @return [String]
    #
    # @!attribute [rw] bgp_peers
    #   The BGP peers that were placed in the DOWN state during the virtual
    #   interface failover test.
    #   @return [Array<String>]
    #
    # @!attribute [rw] status
    #   The status of the virtual interface failover test.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `nextToken` value.
    #
    #   If `MaxResults` is given a value larger than 100, only 100 results
    #   are returned.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/ListVirtualInterfaceTestHistoryRequest AWS API Documentation
    #
    class ListVirtualInterfaceTestHistoryRequest < Struct.new(
      :test_id,
      :virtual_interface_id,
      :bgp_peers,
      :status,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] virtual_interface_test_history
    #   The ID of the tested virtual interface.
    #   @return [Array<Types::VirtualInterfaceTestHistory>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results. This value is
    #   `null` when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/ListVirtualInterfaceTestHistoryResponse AWS API Documentation
    #
    class ListVirtualInterfaceTestHistoryResponse < Struct.new(
      :virtual_interface_test_history,
      :next_token)
      include Aws::Structure
    end

    # Information about a Letter of Authorization - Connecting Facility
    # Assignment (LOA-CFA) for a connection.
    #
    # @!attribute [rw] loa_content
    #   The binary contents of the LOA-CFA document.
    #   @return [String]
    #
    # @!attribute [rw] loa_content_type
    #   The standard media type for the LOA-CFA document. The only supported
    #   value is application/pdf.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/Loa AWS API Documentation
    #
    class Loa < Struct.new(
      :loa_content,
      :loa_content_type)
      include Aws::Structure
    end

    # Information about an AWS Direct Connect location.
    #
    # @!attribute [rw] location_code
    #   The code for the location.
    #   @return [String]
    #
    # @!attribute [rw] location_name
    #   The name of the location. This includes the name of the colocation
    #   partner and the physical site of the building.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The AWS Region for the location.
    #   @return [String]
    #
    # @!attribute [rw] available_port_speeds
    #   The available port speeds for the location.
    #   @return [Array<String>]
    #
    # @!attribute [rw] available_providers
    #   The name of the service provider for the location.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/Location AWS API Documentation
    #
    class Location < Struct.new(
      :location_code,
      :location_name,
      :region,
      :available_port_speeds,
      :available_providers)
      include Aws::Structure
    end

    # @!attribute [rw] locations
    #   The locations.
    #   @return [Array<Types::Location>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/Locations AWS API Documentation
    #
    class Locations < Struct.new(
      :locations)
      include Aws::Structure
    end

    # Information about a new BGP peer.
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
    #   @return [Integer]
    #
    # @!attribute [rw] auth_key
    #   The authentication key for BGP configuration. This string has a
    #   minimum length of 6 characters and and a maximun lenth of 80
    #   characters.
    #   @return [String]
    #
    # @!attribute [rw] address_family
    #   The address family for the BGP peer.
    #   @return [String]
    #
    # @!attribute [rw] amazon_address
    #   The IP address assigned to the Amazon interface.
    #   @return [String]
    #
    # @!attribute [rw] customer_address
    #   The IP address assigned to the customer interface.
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

    # Information about a private virtual interface.
    #
    # @note When making an API call, you may pass NewPrivateVirtualInterface
    #   data as a hash:
    #
    #       {
    #         virtual_interface_name: "VirtualInterfaceName", # required
    #         vlan: 1, # required
    #         asn: 1, # required
    #         mtu: 1,
    #         auth_key: "BGPAuthKey",
    #         amazon_address: "AmazonAddress",
    #         customer_address: "CustomerAddress",
    #         address_family: "ipv4", # accepts ipv4, ipv6
    #         virtual_gateway_id: "VirtualGatewayId",
    #         direct_connect_gateway_id: "DirectConnectGatewayId",
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] virtual_interface_name
    #   The name of the virtual interface assigned by the customer network.
    #   The name has a maximum of 100 characters. The following are valid
    #   characters: a-z, 0-9 and a hyphen (-).
    #   @return [String]
    #
    # @!attribute [rw] vlan
    #   The ID of the VLAN.
    #   @return [Integer]
    #
    # @!attribute [rw] asn
    #   The autonomous system (AS) number for Border Gateway Protocol (BGP)
    #   configuration.
    #
    #   The valid values are 1-2147483647.
    #   @return [Integer]
    #
    # @!attribute [rw] mtu
    #   The maximum transmission unit (MTU), in bytes. The supported values
    #   are 1500 and 9001. The default value is 1500.
    #   @return [Integer]
    #
    # @!attribute [rw] auth_key
    #   The authentication key for BGP configuration. This string has a
    #   minimum length of 6 characters and and a maximun lenth of 80
    #   characters.
    #   @return [String]
    #
    # @!attribute [rw] amazon_address
    #   The IP address assigned to the Amazon interface.
    #   @return [String]
    #
    # @!attribute [rw] customer_address
    #   The IP address assigned to the customer interface.
    #   @return [String]
    #
    # @!attribute [rw] address_family
    #   The address family for the BGP peer.
    #   @return [String]
    #
    # @!attribute [rw] virtual_gateway_id
    #   The ID of the virtual private gateway.
    #   @return [String]
    #
    # @!attribute [rw] direct_connect_gateway_id
    #   The ID of the Direct Connect gateway.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags associated with the private virtual interface.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/NewPrivateVirtualInterface AWS API Documentation
    #
    class NewPrivateVirtualInterface < Struct.new(
      :virtual_interface_name,
      :vlan,
      :asn,
      :mtu,
      :auth_key,
      :amazon_address,
      :customer_address,
      :address_family,
      :virtual_gateway_id,
      :direct_connect_gateway_id,
      :tags)
      include Aws::Structure
    end

    # Information about a private virtual interface to be provisioned on a
    # connection.
    #
    # @note When making an API call, you may pass NewPrivateVirtualInterfaceAllocation
    #   data as a hash:
    #
    #       {
    #         virtual_interface_name: "VirtualInterfaceName", # required
    #         vlan: 1, # required
    #         asn: 1, # required
    #         mtu: 1,
    #         auth_key: "BGPAuthKey",
    #         amazon_address: "AmazonAddress",
    #         address_family: "ipv4", # accepts ipv4, ipv6
    #         customer_address: "CustomerAddress",
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] virtual_interface_name
    #   The name of the virtual interface assigned by the customer network.
    #   The name has a maximum of 100 characters. The following are valid
    #   characters: a-z, 0-9 and a hyphen (-).
    #   @return [String]
    #
    # @!attribute [rw] vlan
    #   The ID of the VLAN.
    #   @return [Integer]
    #
    # @!attribute [rw] asn
    #   The autonomous system (AS) number for Border Gateway Protocol (BGP)
    #   configuration.
    #
    #   The valid values are 1-2147483647.
    #   @return [Integer]
    #
    # @!attribute [rw] mtu
    #   The maximum transmission unit (MTU), in bytes. The supported values
    #   are 1500 and 9001. The default value is 1500.
    #   @return [Integer]
    #
    # @!attribute [rw] auth_key
    #   The authentication key for BGP configuration. This string has a
    #   minimum length of 6 characters and and a maximun lenth of 80
    #   characters.
    #   @return [String]
    #
    # @!attribute [rw] amazon_address
    #   The IP address assigned to the Amazon interface.
    #   @return [String]
    #
    # @!attribute [rw] address_family
    #   The address family for the BGP peer.
    #   @return [String]
    #
    # @!attribute [rw] customer_address
    #   The IP address assigned to the customer interface.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags associated with the private virtual interface.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/NewPrivateVirtualInterfaceAllocation AWS API Documentation
    #
    class NewPrivateVirtualInterfaceAllocation < Struct.new(
      :virtual_interface_name,
      :vlan,
      :asn,
      :mtu,
      :auth_key,
      :amazon_address,
      :address_family,
      :customer_address,
      :tags)
      include Aws::Structure
    end

    # Information about a public virtual interface.
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
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] virtual_interface_name
    #   The name of the virtual interface assigned by the customer network.
    #   The name has a maximum of 100 characters. The following are valid
    #   characters: a-z, 0-9 and a hyphen (-).
    #   @return [String]
    #
    # @!attribute [rw] vlan
    #   The ID of the VLAN.
    #   @return [Integer]
    #
    # @!attribute [rw] asn
    #   The autonomous system (AS) number for Border Gateway Protocol (BGP)
    #   configuration.
    #
    #   The valid values are 1-2147483647.
    #   @return [Integer]
    #
    # @!attribute [rw] auth_key
    #   The authentication key for BGP configuration. This string has a
    #   minimum length of 6 characters and and a maximun lenth of 80
    #   characters.
    #   @return [String]
    #
    # @!attribute [rw] amazon_address
    #   The IP address assigned to the Amazon interface.
    #   @return [String]
    #
    # @!attribute [rw] customer_address
    #   The IP address assigned to the customer interface.
    #   @return [String]
    #
    # @!attribute [rw] address_family
    #   The address family for the BGP peer.
    #   @return [String]
    #
    # @!attribute [rw] route_filter_prefixes
    #   The routes to be advertised to the AWS network in this Region.
    #   Applies to public virtual interfaces.
    #   @return [Array<Types::RouteFilterPrefix>]
    #
    # @!attribute [rw] tags
    #   The tags associated with the public virtual interface.
    #   @return [Array<Types::Tag>]
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
      :route_filter_prefixes,
      :tags)
      include Aws::Structure
    end

    # Information about a public virtual interface to be provisioned on a
    # connection.
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
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] virtual_interface_name
    #   The name of the virtual interface assigned by the customer network.
    #   The name has a maximum of 100 characters. The following are valid
    #   characters: a-z, 0-9 and a hyphen (-).
    #   @return [String]
    #
    # @!attribute [rw] vlan
    #   The ID of the VLAN.
    #   @return [Integer]
    #
    # @!attribute [rw] asn
    #   The autonomous system (AS) number for Border Gateway Protocol (BGP)
    #   configuration.
    #
    #   The valid values are 1-2147483647.
    #   @return [Integer]
    #
    # @!attribute [rw] auth_key
    #   The authentication key for BGP configuration. This string has a
    #   minimum length of 6 characters and and a maximun lenth of 80
    #   characters.
    #   @return [String]
    #
    # @!attribute [rw] amazon_address
    #   The IP address assigned to the Amazon interface.
    #   @return [String]
    #
    # @!attribute [rw] customer_address
    #   The IP address assigned to the customer interface.
    #   @return [String]
    #
    # @!attribute [rw] address_family
    #   The address family for the BGP peer.
    #   @return [String]
    #
    # @!attribute [rw] route_filter_prefixes
    #   The routes to be advertised to the AWS network in this Region.
    #   Applies to public virtual interfaces.
    #   @return [Array<Types::RouteFilterPrefix>]
    #
    # @!attribute [rw] tags
    #   The tags associated with the public virtual interface.
    #   @return [Array<Types::Tag>]
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
      :route_filter_prefixes,
      :tags)
      include Aws::Structure
    end

    # Information about a transit virtual interface.
    #
    # @note When making an API call, you may pass NewTransitVirtualInterface
    #   data as a hash:
    #
    #       {
    #         virtual_interface_name: "VirtualInterfaceName",
    #         vlan: 1,
    #         asn: 1,
    #         mtu: 1,
    #         auth_key: "BGPAuthKey",
    #         amazon_address: "AmazonAddress",
    #         customer_address: "CustomerAddress",
    #         address_family: "ipv4", # accepts ipv4, ipv6
    #         direct_connect_gateway_id: "DirectConnectGatewayId",
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] virtual_interface_name
    #   The name of the virtual interface assigned by the customer network.
    #   The name has a maximum of 100 characters. The following are valid
    #   characters: a-z, 0-9 and a hyphen (-).
    #   @return [String]
    #
    # @!attribute [rw] vlan
    #   The ID of the VLAN.
    #   @return [Integer]
    #
    # @!attribute [rw] asn
    #   The autonomous system (AS) number for Border Gateway Protocol (BGP)
    #   configuration.
    #
    #   The valid values are 1-2147483647.
    #   @return [Integer]
    #
    # @!attribute [rw] mtu
    #   The maximum transmission unit (MTU), in bytes. The supported values
    #   are 1500 and 9001. The default value is 1500.
    #   @return [Integer]
    #
    # @!attribute [rw] auth_key
    #   The authentication key for BGP configuration. This string has a
    #   minimum length of 6 characters and and a maximun lenth of 80
    #   characters.
    #   @return [String]
    #
    # @!attribute [rw] amazon_address
    #   The IP address assigned to the Amazon interface.
    #   @return [String]
    #
    # @!attribute [rw] customer_address
    #   The IP address assigned to the customer interface.
    #   @return [String]
    #
    # @!attribute [rw] address_family
    #   The address family for the BGP peer.
    #   @return [String]
    #
    # @!attribute [rw] direct_connect_gateway_id
    #   The ID of the Direct Connect gateway.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags associated with the transitive virtual interface.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/NewTransitVirtualInterface AWS API Documentation
    #
    class NewTransitVirtualInterface < Struct.new(
      :virtual_interface_name,
      :vlan,
      :asn,
      :mtu,
      :auth_key,
      :amazon_address,
      :customer_address,
      :address_family,
      :direct_connect_gateway_id,
      :tags)
      include Aws::Structure
    end

    # Information about a transit virtual interface to be provisioned on a
    # connection.
    #
    # @note When making an API call, you may pass NewTransitVirtualInterfaceAllocation
    #   data as a hash:
    #
    #       {
    #         virtual_interface_name: "VirtualInterfaceName",
    #         vlan: 1,
    #         asn: 1,
    #         mtu: 1,
    #         auth_key: "BGPAuthKey",
    #         amazon_address: "AmazonAddress",
    #         customer_address: "CustomerAddress",
    #         address_family: "ipv4", # accepts ipv4, ipv6
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] virtual_interface_name
    #   The name of the virtual interface assigned by the customer network.
    #   The name has a maximum of 100 characters. The following are valid
    #   characters: a-z, 0-9 and a hyphen (-).
    #   @return [String]
    #
    # @!attribute [rw] vlan
    #   The ID of the VLAN.
    #   @return [Integer]
    #
    # @!attribute [rw] asn
    #   The autonomous system (AS) number for Border Gateway Protocol (BGP)
    #   configuration.
    #
    #   The valid values are 1-2147483647.
    #   @return [Integer]
    #
    # @!attribute [rw] mtu
    #   The maximum transmission unit (MTU), in bytes. The supported values
    #   are 1500 and 9001. The default value is 1500.
    #   @return [Integer]
    #
    # @!attribute [rw] auth_key
    #   The authentication key for BGP configuration. This string has a
    #   minimum length of 6 characters and and a maximun lenth of 80
    #   characters.
    #   @return [String]
    #
    # @!attribute [rw] amazon_address
    #   The IP address assigned to the Amazon interface.
    #   @return [String]
    #
    # @!attribute [rw] customer_address
    #   The IP address assigned to the customer interface.
    #   @return [String]
    #
    # @!attribute [rw] address_family
    #   The address family for the BGP peer.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags associated with the transitive virtual interface.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/NewTransitVirtualInterfaceAllocation AWS API Documentation
    #
    class NewTransitVirtualInterfaceAllocation < Struct.new(
      :virtual_interface_name,
      :vlan,
      :asn,
      :mtu,
      :auth_key,
      :amazon_address,
      :customer_address,
      :address_family,
      :tags)
      include Aws::Structure
    end

    # Information about a tag associated with an AWS Direct Connect
    # resource.
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
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

    # Information about a route filter prefix that a customer can advertise
    # through Border Gateway Protocol (BGP) over a public virtual interface.
    #
    # @note When making an API call, you may pass RouteFilterPrefix
    #   data as a hash:
    #
    #       {
    #         cidr: "CIDR",
    #       }
    #
    # @!attribute [rw] cidr
    #   The CIDR block for the advertised route. Separate multiple routes
    #   using commas. An IPv6 CIDR must use /64 or shorter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/RouteFilterPrefix AWS API Documentation
    #
    class RouteFilterPrefix < Struct.new(
      :cidr)
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartBgpFailoverTestRequest
    #   data as a hash:
    #
    #       {
    #         virtual_interface_id: "VirtualInterfaceId", # required
    #         bgp_peers: ["BGPPeerId"],
    #         test_duration_in_minutes: 1,
    #       }
    #
    # @!attribute [rw] virtual_interface_id
    #   The ID of the virtual interface you want to test.
    #   @return [String]
    #
    # @!attribute [rw] bgp_peers
    #   The BGP peers to place in the DOWN state.
    #   @return [Array<String>]
    #
    # @!attribute [rw] test_duration_in_minutes
    #   The time in minutes that the virtual interface failover test will
    #   last.
    #
    #   Maximum value: 180 minutes (3 hours).
    #
    #   Default: 180 minutes (3 hours).
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/StartBgpFailoverTestRequest AWS API Documentation
    #
    class StartBgpFailoverTestRequest < Struct.new(
      :virtual_interface_id,
      :bgp_peers,
      :test_duration_in_minutes)
      include Aws::Structure
    end

    # @!attribute [rw] virtual_interface_test
    #   Information about the virtual interface failover test.
    #   @return [Types::VirtualInterfaceTestHistory]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/StartBgpFailoverTestResponse AWS API Documentation
    #
    class StartBgpFailoverTestResponse < Struct.new(
      :virtual_interface_test)
      include Aws::Structure
    end

    # @note When making an API call, you may pass StopBgpFailoverTestRequest
    #   data as a hash:
    #
    #       {
    #         virtual_interface_id: "VirtualInterfaceId", # required
    #       }
    #
    # @!attribute [rw] virtual_interface_id
    #   The ID of the virtual interface you no longer want to test.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/StopBgpFailoverTestRequest AWS API Documentation
    #
    class StopBgpFailoverTestRequest < Struct.new(
      :virtual_interface_id)
      include Aws::Structure
    end

    # @!attribute [rw] virtual_interface_test
    #   Information about the virtual interface failover test.
    #   @return [Types::VirtualInterfaceTestHistory]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/StopBgpFailoverTestResponse AWS API Documentation
    #
    class StopBgpFailoverTestResponse < Struct.new(
      :virtual_interface_test)
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
    #   The key.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      include Aws::Structure
    end

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
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to add.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # You have reached the limit on the number of tags that can be assigned.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/TooManyTagsException AWS API Documentation
    #
    class TooManyTagsException < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ResourceArn", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The tag keys of the tags to remove.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateDirectConnectGatewayAssociationRequest
    #   data as a hash:
    #
    #       {
    #         association_id: "DirectConnectGatewayAssociationId",
    #         add_allowed_prefixes_to_direct_connect_gateway: [
    #           {
    #             cidr: "CIDR",
    #           },
    #         ],
    #         remove_allowed_prefixes_to_direct_connect_gateway: [
    #           {
    #             cidr: "CIDR",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] association_id
    #   The ID of the Direct Connect gateway association.
    #   @return [String]
    #
    # @!attribute [rw] add_allowed_prefixes_to_direct_connect_gateway
    #   The Amazon VPC prefixes to advertise to the Direct Connect gateway.
    #   @return [Array<Types::RouteFilterPrefix>]
    #
    # @!attribute [rw] remove_allowed_prefixes_to_direct_connect_gateway
    #   The Amazon VPC prefixes to no longer advertise to the Direct Connect
    #   gateway.
    #   @return [Array<Types::RouteFilterPrefix>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/UpdateDirectConnectGatewayAssociationRequest AWS API Documentation
    #
    class UpdateDirectConnectGatewayAssociationRequest < Struct.new(
      :association_id,
      :add_allowed_prefixes_to_direct_connect_gateway,
      :remove_allowed_prefixes_to_direct_connect_gateway)
      include Aws::Structure
    end

    # @!attribute [rw] direct_connect_gateway_association
    #   Information about an association between a Direct Connect gateway
    #   and a virtual private gateway or transit gateway.
    #   @return [Types::DirectConnectGatewayAssociation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/UpdateDirectConnectGatewayAssociationResult AWS API Documentation
    #
    class UpdateDirectConnectGatewayAssociationResult < Struct.new(
      :direct_connect_gateway_association)
      include Aws::Structure
    end

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
    #   The ID of the LAG.
    #   @return [String]
    #
    # @!attribute [rw] lag_name
    #   The name of the LAG.
    #   @return [String]
    #
    # @!attribute [rw] minimum_links
    #   The minimum number of physical connections that must be operational
    #   for the LAG itself to be operational.
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

    # @note When making an API call, you may pass UpdateVirtualInterfaceAttributesRequest
    #   data as a hash:
    #
    #       {
    #         virtual_interface_id: "VirtualInterfaceId", # required
    #         mtu: 1,
    #       }
    #
    # @!attribute [rw] virtual_interface_id
    #   The ID of the virtual private interface.
    #   @return [String]
    #
    # @!attribute [rw] mtu
    #   The maximum transmission unit (MTU), in bytes. The supported values
    #   are 1500 and 9001. The default value is 1500.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/UpdateVirtualInterfaceAttributesRequest AWS API Documentation
    #
    class UpdateVirtualInterfaceAttributesRequest < Struct.new(
      :virtual_interface_id,
      :mtu)
      include Aws::Structure
    end

    # Information about a virtual private gateway for a private virtual
    # interface.
    #
    # @!attribute [rw] virtual_gateway_id
    #   The ID of the virtual private gateway.
    #   @return [String]
    #
    # @!attribute [rw] virtual_gateway_state
    #   The state of the virtual private gateway. The following are the
    #   possible values:
    #
    #   * `pending`\: Initial state after creating the virtual private
    #     gateway.
    #
    #   * `available`\: Ready for use by a private virtual interface.
    #
    #   * `deleting`\: Initial state after deleting the virtual private
    #     gateway.
    #
    #   * `deleted`\: The virtual private gateway is deleted. The private
    #     virtual interface is unable to send traffic over this gateway.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/VirtualGateway AWS API Documentation
    #
    class VirtualGateway < Struct.new(
      :virtual_gateway_id,
      :virtual_gateway_state)
      include Aws::Structure
    end

    # @!attribute [rw] virtual_gateways
    #   The virtual private gateways.
    #   @return [Array<Types::VirtualGateway>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/VirtualGateways AWS API Documentation
    #
    class VirtualGateways < Struct.new(
      :virtual_gateways)
      include Aws::Structure
    end

    # Information about a virtual interface.
    #
    # @!attribute [rw] owner_account
    #   The ID of the AWS account that owns the virtual interface.
    #   @return [String]
    #
    # @!attribute [rw] virtual_interface_id
    #   The ID of the virtual interface.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   The location of the connection.
    #   @return [String]
    #
    # @!attribute [rw] connection_id
    #   The ID of the connection.
    #   @return [String]
    #
    # @!attribute [rw] virtual_interface_type
    #   The type of virtual interface. The possible values are `private` and
    #   `public`.
    #   @return [String]
    #
    # @!attribute [rw] virtual_interface_name
    #   The name of the virtual interface assigned by the customer network.
    #   The name has a maximum of 100 characters. The following are valid
    #   characters: a-z, 0-9 and a hyphen (-).
    #   @return [String]
    #
    # @!attribute [rw] vlan
    #   The ID of the VLAN.
    #   @return [Integer]
    #
    # @!attribute [rw] asn
    #   The autonomous system (AS) number for Border Gateway Protocol (BGP)
    #   configuration.
    #
    #   The valid values are 1-2147483647.
    #   @return [Integer]
    #
    # @!attribute [rw] amazon_side_asn
    #   The autonomous system number (ASN) for the Amazon side of the
    #   connection.
    #   @return [Integer]
    #
    # @!attribute [rw] auth_key
    #   The authentication key for BGP configuration. This string has a
    #   minimum length of 6 characters and and a maximun lenth of 80
    #   characters.
    #   @return [String]
    #
    # @!attribute [rw] amazon_address
    #   The IP address assigned to the Amazon interface.
    #   @return [String]
    #
    # @!attribute [rw] customer_address
    #   The IP address assigned to the customer interface.
    #   @return [String]
    #
    # @!attribute [rw] address_family
    #   The address family for the BGP peer.
    #   @return [String]
    #
    # @!attribute [rw] virtual_interface_state
    #   The state of the virtual interface. The following are the possible
    #   values:
    #
    #   * `confirming`\: The creation of the virtual interface is pending
    #     confirmation from the virtual interface owner. If the owner of the
    #     virtual interface is different from the owner of the connection on
    #     which it is provisioned, then the virtual interface will remain in
    #     this state until it is confirmed by the virtual interface owner.
    #
    #   * `verifying`\: This state only applies to public virtual
    #     interfaces. Each public virtual interface needs validation before
    #     the virtual interface can be created.
    #
    #   * `pending`\: A virtual interface is in this state from the time
    #     that it is created until the virtual interface is ready to forward
    #     traffic.
    #
    #   * `available`\: A virtual interface that is able to forward traffic.
    #
    #   * `down`\: A virtual interface that is BGP down.
    #
    #   * `deleting`\: A virtual interface is in this state immediately
    #     after calling DeleteVirtualInterface until it can no longer
    #     forward traffic.
    #
    #   * `deleted`\: A virtual interface that cannot forward traffic.
    #
    #   * `rejected`\: The virtual interface owner has declined creation of
    #     the virtual interface. If a virtual interface in the `Confirming`
    #     state is deleted by the virtual interface owner, the virtual
    #     interface enters the `Rejected` state.
    #
    #   * `unknown`\: The state of the virtual interface is not available.
    #   @return [String]
    #
    # @!attribute [rw] customer_router_config
    #   The customer router configuration.
    #   @return [String]
    #
    # @!attribute [rw] mtu
    #   The maximum transmission unit (MTU), in bytes. The supported values
    #   are 1500 and 9001. The default value is 1500.
    #   @return [Integer]
    #
    # @!attribute [rw] jumbo_frame_capable
    #   Indicates whether jumbo frames (9001 MTU) are supported.
    #   @return [Boolean]
    #
    # @!attribute [rw] virtual_gateway_id
    #   The ID of the virtual private gateway. Applies only to private
    #   virtual interfaces.
    #   @return [String]
    #
    # @!attribute [rw] direct_connect_gateway_id
    #   The ID of the Direct Connect gateway.
    #   @return [String]
    #
    # @!attribute [rw] route_filter_prefixes
    #   The routes to be advertised to the AWS network in this Region.
    #   Applies to public virtual interfaces.
    #   @return [Array<Types::RouteFilterPrefix>]
    #
    # @!attribute [rw] bgp_peers
    #   The BGP peers configured on this virtual interface.
    #   @return [Array<Types::BGPPeer>]
    #
    # @!attribute [rw] region
    #   The AWS Region where the virtual interface is located.
    #   @return [String]
    #
    # @!attribute [rw] aws_device_v2
    #   The Direct Connect endpoint on which the virtual interface
    #   terminates.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags associated with the virtual interface.
    #   @return [Array<Types::Tag>]
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
      :mtu,
      :jumbo_frame_capable,
      :virtual_gateway_id,
      :direct_connect_gateway_id,
      :route_filter_prefixes,
      :bgp_peers,
      :region,
      :aws_device_v2,
      :tags)
      include Aws::Structure
    end

    # Information about the virtual interface failover test.
    #
    # @!attribute [rw] test_id
    #   The ID of the virtual interface failover test.
    #   @return [String]
    #
    # @!attribute [rw] virtual_interface_id
    #   The ID of the tested virtual interface.
    #   @return [String]
    #
    # @!attribute [rw] bgp_peers
    #   The BGP peers that were put in the DOWN state as part of the virtual
    #   interface failover test.
    #   @return [Array<String>]
    #
    # @!attribute [rw] status
    #   The status of the virtual interface failover test.
    #   @return [String]
    #
    # @!attribute [rw] owner_account
    #   The owner ID of the tested virtual interface.
    #   @return [String]
    #
    # @!attribute [rw] test_duration_in_minutes
    #   The time that the virtual interface failover test ran in minutes.
    #   @return [Integer]
    #
    # @!attribute [rw] start_time
    #   The time that the virtual interface moves to the DOWN state.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The time that the virtual interface moves out of the DOWN state.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/VirtualInterfaceTestHistory AWS API Documentation
    #
    class VirtualInterfaceTestHistory < Struct.new(
      :test_id,
      :virtual_interface_id,
      :bgp_peers,
      :status,
      :owner_account,
      :test_duration_in_minutes,
      :start_time,
      :end_time)
      include Aws::Structure
    end

    # @!attribute [rw] virtual_interfaces
    #   The virtual interfaces
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
