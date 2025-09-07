# frozen_string_literal: true

# This is generated code!

module Aws::DirectConnect
  # This module contains the types returned by client operations.
  module Types

    # @!attribute direct_connect_gateway_id
    #   <p>The ID of the Direct Connect gateway.</p>
    #   @return [String]
    # @!attribute proposal_id
    #   <p>The ID of the request proposal.</p>
    #   @return [String]
    # @!attribute associated_gateway_owner_account
    #   <p>The ID of the Amazon Web Services account that owns the virtual private gateway or transit gateway.</p>
    #   @return [String]
    # @!attribute override_allowed_prefixes_to_direct_connect_gateway
    #   <p>Overrides the Amazon VPC prefixes advertised to the Direct Connect gateway.</p>
    #            <p>For information about how to set the prefixes, see <a href="https://docs.aws.amazon.com/directconnect/latest/UserGuide/multi-account-associate-vgw.html#allowed-prefixes">Allowed Prefixes</a> in the <i>Direct Connect User Guide</i>.</p>
    #   @return [Array<Types::RouteFilterPrefix>]
    class AcceptDirectConnectGatewayAssociationProposalRequest < Struct.new(
      :direct_connect_gateway_id,
      :proposal_id,
      :associated_gateway_owner_account,
      :override_allowed_prefixes_to_direct_connect_gateway,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute direct_connect_gateway_association
    #   <p>Information about an association between a Direct Connect gateway and a virtual gateway or transit gateway.</p>
    #   @return [Types::DirectConnectGatewayAssociation]
    class AcceptDirectConnectGatewayAssociationProposalResult < Struct.new(
      :direct_connect_gateway_association,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about an Direct Connect connection.</p>
    # @!attribute owner_account
    #   <p>The ID of the Amazon Web Services account that owns the connection.</p>
    #   @return [String]
    # @!attribute connection_id
    #   <p>The ID of the connection.</p>
    #   @return [String]
    # @!attribute connection_name
    #   <p>The name of the connection.</p>
    #   @return [String]
    # @!attribute connection_state
    #   <p>The state of the connection. The following are the possible values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ordering</code>: The initial state of a hosted connection provisioned on an interconnect. The connection stays in the ordering state until the owner of the hosted connection confirms or declines the connection order.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>requested</code>: The initial state of a standard connection. The connection stays in the requested state until the Letter of Authorization (LOA) is sent to the customer.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>pending</code>: The connection has been approved and is being initialized.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>available</code>: The network link is up and the connection is ready for use.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>down</code>: The network link is down.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleting</code>: The connection is being deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleted</code>: The connection has been deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>rejected</code>: A hosted connection in the <code>ordering</code> state enters the <code>rejected</code> state if it is deleted by the customer.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>unknown</code>: The state of the connection is not available.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute region
    #   <p>The Amazon Web Services Region where the connection is located.</p>
    #   @return [String]
    # @!attribute location
    #   <p>The location of the connection.</p>
    #   @return [String]
    # @!attribute bandwidth
    #   <p>The bandwidth of the connection.</p>
    #   @return [String]
    # @!attribute vlan
    #   <p>The ID of the VLAN.</p>
    #   @return [Integer]
    # @!attribute partner_name
    #   <p>The name of the Direct Connect service provider associated with the connection.</p>
    #   @return [String]
    # @!attribute loa_issue_time
    #   <p>The time of the most recent call to <a>DescribeLoa</a> for this connection.</p>
    #   @return [Time]
    # @!attribute lag_id
    #   <p>The ID of the LAG.</p>
    #   @return [String]
    # @!attribute aws_device
    #   <p>The Direct Connect endpoint on which the physical connection terminates.</p>
    #   @return [String]
    # @!attribute jumbo_frame_capable
    #   <p>Indicates whether jumbo frames are supported.</p>
    #   @return [Boolean]
    # @!attribute aws_device_v2
    #   <p>The Direct Connect endpoint that terminates the physical connection.</p>
    #   @return [String]
    # @!attribute aws_logical_device_id
    #   <p>The Direct Connect endpoint that terminates the logical connection. This device might be
    #         different than the device that terminates the physical connection.</p>
    #   @return [String]
    # @!attribute has_logical_redundancy
    #   <p>Indicates whether the connection supports a secondary BGP peer in the same address family (IPv4/IPv6).</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags associated with the connection.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute provider_name
    #   <p>The name of the service provider associated with the connection.</p>
    #   @return [String]
    # @!attribute mac_sec_capable
    #   <p>Indicates whether the connection supports MAC Security (MACsec).</p>
    #   @return [Boolean]
    # @!attribute port_encryption_status
    #   <p>The MAC Security (MACsec) port link status of the connection.</p>
    #            <p>The valid values are <code>Encryption Up</code>, which means that there is an active Connection Key Name, or <code>Encryption Down</code>.</p>
    #   @return [String]
    # @!attribute encryption_mode
    #   <p>The MAC Security (MACsec) connection encryption mode.</p>
    #            <p>The valid values are <code>no_encrypt</code>, <code>should_encrypt</code>, and <code>must_encrypt</code>.</p>
    #   @return [String]
    # @!attribute mac_sec_keys
    #   <p>The MAC Security (MACsec) security keys associated with the connection.</p>
    #   @return [Array<Types::MacSecKey>]
    # @!attribute partner_interconnect_mac_sec_capable
    #   <p>Indicates whether the interconnect hosting this connection supports MAC Security (MACsec).</p>
    #   @return [Boolean]
    class AllocateConnectionOnInterconnectOutput < Struct.new(
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
      :aws_logical_device_id,
      :has_logical_redundancy,
      :tags,
      :provider_name,
      :mac_sec_capable,
      :port_encryption_status,
      :encryption_mode,
      :mac_sec_keys,
      :partner_interconnect_mac_sec_capable,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:vlan] = 0 unless options.key?(:vlan)
        super
      end
    end

    # @!attribute bandwidth
    #   <p>The bandwidth of the connection. The possible values are 50Mbps, 100Mbps, 200Mbps,
    #         300Mbps, 400Mbps, 500Mbps, 1Gbps, 2Gbps, 5Gbps, and 10Gbps. Note that only those Direct Connect Partners
    #         who have met specific requirements
    #       are allowed to create a 1Gbps, 2Gbps, 5Gbps or 10Gbps hosted connection.</p>
    #   @return [String]
    # @!attribute connection_name
    #   <p>The name of the provisioned connection.</p>
    #   @return [String]
    # @!attribute owner_account
    #   <p>The ID of the Amazon Web Services account of the customer for whom the connection will be provisioned.</p>
    #   @return [String]
    # @!attribute interconnect_id
    #   <p>The ID of the interconnect on which the connection will be provisioned.</p>
    #   @return [String]
    # @!attribute vlan
    #   <p>The dedicated VLAN provisioned to the connection.</p>
    #   @return [Integer]
    class AllocateConnectionOnInterconnectRequest < Struct.new(
      :bandwidth,
      :connection_name,
      :owner_account,
      :interconnect_id,
      :vlan,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about an Direct Connect connection.</p>
    # @!attribute owner_account
    #   <p>The ID of the Amazon Web Services account that owns the connection.</p>
    #   @return [String]
    # @!attribute connection_id
    #   <p>The ID of the connection.</p>
    #   @return [String]
    # @!attribute connection_name
    #   <p>The name of the connection.</p>
    #   @return [String]
    # @!attribute connection_state
    #   <p>The state of the connection. The following are the possible values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ordering</code>: The initial state of a hosted connection provisioned on an interconnect. The connection stays in the ordering state until the owner of the hosted connection confirms or declines the connection order.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>requested</code>: The initial state of a standard connection. The connection stays in the requested state until the Letter of Authorization (LOA) is sent to the customer.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>pending</code>: The connection has been approved and is being initialized.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>available</code>: The network link is up and the connection is ready for use.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>down</code>: The network link is down.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleting</code>: The connection is being deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleted</code>: The connection has been deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>rejected</code>: A hosted connection in the <code>ordering</code> state enters the <code>rejected</code> state if it is deleted by the customer.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>unknown</code>: The state of the connection is not available.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute region
    #   <p>The Amazon Web Services Region where the connection is located.</p>
    #   @return [String]
    # @!attribute location
    #   <p>The location of the connection.</p>
    #   @return [String]
    # @!attribute bandwidth
    #   <p>The bandwidth of the connection.</p>
    #   @return [String]
    # @!attribute vlan
    #   <p>The ID of the VLAN.</p>
    #   @return [Integer]
    # @!attribute partner_name
    #   <p>The name of the Direct Connect service provider associated with the connection.</p>
    #   @return [String]
    # @!attribute loa_issue_time
    #   <p>The time of the most recent call to <a>DescribeLoa</a> for this connection.</p>
    #   @return [Time]
    # @!attribute lag_id
    #   <p>The ID of the LAG.</p>
    #   @return [String]
    # @!attribute aws_device
    #   <p>The Direct Connect endpoint on which the physical connection terminates.</p>
    #   @return [String]
    # @!attribute jumbo_frame_capable
    #   <p>Indicates whether jumbo frames are supported.</p>
    #   @return [Boolean]
    # @!attribute aws_device_v2
    #   <p>The Direct Connect endpoint that terminates the physical connection.</p>
    #   @return [String]
    # @!attribute aws_logical_device_id
    #   <p>The Direct Connect endpoint that terminates the logical connection. This device might be
    #         different than the device that terminates the physical connection.</p>
    #   @return [String]
    # @!attribute has_logical_redundancy
    #   <p>Indicates whether the connection supports a secondary BGP peer in the same address family (IPv4/IPv6).</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags associated with the connection.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute provider_name
    #   <p>The name of the service provider associated with the connection.</p>
    #   @return [String]
    # @!attribute mac_sec_capable
    #   <p>Indicates whether the connection supports MAC Security (MACsec).</p>
    #   @return [Boolean]
    # @!attribute port_encryption_status
    #   <p>The MAC Security (MACsec) port link status of the connection.</p>
    #            <p>The valid values are <code>Encryption Up</code>, which means that there is an active Connection Key Name, or <code>Encryption Down</code>.</p>
    #   @return [String]
    # @!attribute encryption_mode
    #   <p>The MAC Security (MACsec) connection encryption mode.</p>
    #            <p>The valid values are <code>no_encrypt</code>, <code>should_encrypt</code>, and <code>must_encrypt</code>.</p>
    #   @return [String]
    # @!attribute mac_sec_keys
    #   <p>The MAC Security (MACsec) security keys associated with the connection.</p>
    #   @return [Array<Types::MacSecKey>]
    # @!attribute partner_interconnect_mac_sec_capable
    #   <p>Indicates whether the interconnect hosting this connection supports MAC Security (MACsec).</p>
    #   @return [Boolean]
    class AllocateHostedConnectionOutput < Struct.new(
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
      :aws_logical_device_id,
      :has_logical_redundancy,
      :tags,
      :provider_name,
      :mac_sec_capable,
      :port_encryption_status,
      :encryption_mode,
      :mac_sec_keys,
      :partner_interconnect_mac_sec_capable,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:vlan] = 0 unless options.key?(:vlan)
        super
      end
    end

    # @!attribute connection_id
    #   <p>The ID of the interconnect or LAG.</p>
    #   @return [String]
    # @!attribute owner_account
    #   <p>The ID of the Amazon Web Services account ID of the customer for the connection.</p>
    #   @return [String]
    # @!attribute bandwidth
    #   <p>The bandwidth of the connection. The possible values are 50Mbps, 100Mbps, 200Mbps,
    #         300Mbps, 400Mbps, 500Mbps, 1Gbps, 2Gbps, 5Gbps, 10Gbps, and 25Gbps. Note that only those
    #         Direct Connect Partners who have met specific requirements are allowed to create a 1Gbps, 2Gbps, 5Gbps,
    #         10Gbps, or 25Gbps hosted connection. </p>
    #   @return [String]
    # @!attribute connection_name
    #   <p>The name of the hosted connection.</p>
    #   @return [String]
    # @!attribute vlan
    #   <p>The dedicated VLAN provisioned to the hosted connection.</p>
    #   @return [Integer]
    # @!attribute tags
    #   <p>The tags associated with the connection.</p>
    #   @return [Array<Types::Tag>]
    class AllocateHostedConnectionRequest < Struct.new(
      :connection_id,
      :owner_account,
      :bandwidth,
      :connection_name,
      :vlan,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a virtual interface.</p>
    # @!attribute owner_account
    #   <p>The ID of the Amazon Web Services account that owns the virtual interface.</p>
    #   @return [String]
    # @!attribute virtual_interface_id
    #   <p>The ID of the virtual interface.</p>
    #   @return [String]
    # @!attribute location
    #   <p>The location of the connection.</p>
    #   @return [String]
    # @!attribute connection_id
    #   <p>The ID of the connection.</p>
    #   @return [String]
    # @!attribute virtual_interface_type
    #   <p>The type of virtual interface. The possible values are <code>private</code>, <code>public</code> and <code>transit</code>.</p>
    #   @return [String]
    # @!attribute virtual_interface_name
    #   <p>The name of the virtual interface assigned by the customer network. The name has a maximum of 100 characters. The following are valid characters: a-z, 0-9 and a hyphen (-).</p>
    #   @return [String]
    # @!attribute vlan
    #   <p>The ID of the VLAN.</p>
    #   @return [Integer]
    # @!attribute asn
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
    #   @return [Integer]
    # @!attribute asn_long
    #   <p>The long ASN for the virtual interface. The valid range is from 1 to 4294967294 for BGP configuration.</p>
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
    #   @return [Integer]
    # @!attribute amazon_side_asn
    #   <p>The autonomous system number (AS) for the Amazon side of the connection.</p>
    #   @return [Integer]
    # @!attribute auth_key
    #   <p>The authentication key for BGP configuration. This string has a minimum length of 6 characters and and a maximun lenth of 80 characters.</p>
    #   @return [String]
    # @!attribute amazon_address
    #   <p>The IP address assigned to the Amazon interface.</p>
    #   @return [String]
    # @!attribute customer_address
    #   <p>The IP address assigned to the customer interface.</p>
    #   @return [String]
    # @!attribute address_family
    #   <p>The address family for the BGP peer.</p>
    #   @return [String]
    # @!attribute virtual_interface_state
    #   <p>The state of the virtual interface. The following are the possible values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>confirming</code>: The creation of the virtual interface is pending confirmation from the virtual interface owner. If the owner of the virtual interface is different from the owner of the connection on which it is provisioned, then the virtual interface will remain in this state until it is confirmed by the virtual interface owner.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>verifying</code>: This state only applies to public virtual interfaces. Each public virtual interface needs validation before the virtual interface can be created.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>pending</code>: A virtual interface is in this state from the time that it is created until the virtual interface is ready to forward traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>available</code>: A virtual interface that is able to forward traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>down</code>: A virtual interface that is BGP down.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>testing</code>: A virtual interface is in this state immediately after calling <a>StartBgpFailoverTest</a> and remains in this state during the duration of the test.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleting</code>: A virtual interface is in this state immediately after calling <a>DeleteVirtualInterface</a> until it can no longer forward traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleted</code>: A virtual interface that cannot forward traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>rejected</code>: The virtual interface owner has declined creation of the virtual interface. If a virtual interface in the <code>Confirming</code> state is deleted by the virtual interface owner, the virtual interface enters the <code>Rejected</code> state.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>unknown</code>: The state of the virtual interface is not available.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute customer_router_config
    #   <p>The customer router configuration.</p>
    #   @return [String]
    # @!attribute mtu
    #   <p>The maximum transmission unit (MTU), in bytes. The supported values are 1500 and 8500. The default value is 1500</p>
    #   @return [Integer]
    # @!attribute jumbo_frame_capable
    #   <p>Indicates whether jumbo frames are supported.</p>
    #   @return [Boolean]
    # @!attribute virtual_gateway_id
    #   <p>The ID of the virtual private gateway. Applies only to private virtual interfaces.</p>
    #   @return [String]
    # @!attribute direct_connect_gateway_id
    #   <p>The ID of the Direct Connect gateway.</p>
    #   @return [String]
    # @!attribute route_filter_prefixes
    #   <p>The routes to be advertised to the Amazon Web Services network in this Region. Applies to public virtual interfaces.</p>
    #   @return [Array<Types::RouteFilterPrefix>]
    # @!attribute bgp_peers
    #   <p>The BGP peers configured on this virtual interface.</p>
    #   @return [Array<Types::BGPPeer>]
    # @!attribute region
    #   <p>The Amazon Web Services Region where the virtual interface is located.</p>
    #   @return [String]
    # @!attribute aws_device_v2
    #   <p>The Direct Connect endpoint that terminates the physical connection.</p>
    #   @return [String]
    # @!attribute aws_logical_device_id
    #   <p>The Direct Connect endpoint that terminates the logical connection. This device might be
    #         different than the device that terminates the physical connection.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags associated with the virtual interface.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute site_link_enabled
    #   <p>Indicates whether SiteLink is enabled.</p>
    #   @return [Boolean]
    class AllocatePrivateVirtualInterfaceOutput < Struct.new(
      :owner_account,
      :virtual_interface_id,
      :location,
      :connection_id,
      :virtual_interface_type,
      :virtual_interface_name,
      :vlan,
      :asn,
      :asn_long,
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
      :aws_logical_device_id,
      :tags,
      :site_link_enabled,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:vlan] = 0 unless options.key?(:vlan)
        options[:asn] = 0 unless options.key?(:asn)
        super
      end
    end

    # @!attribute connection_id
    #   <p>The ID of the connection on which the private virtual interface is provisioned.</p>
    #   @return [String]
    # @!attribute owner_account
    #   <p>The ID of the Amazon Web Services account that owns the virtual private interface.</p>
    #   @return [String]
    # @!attribute new_private_virtual_interface_allocation
    #   <p>Information about the private virtual interface.</p>
    #   @return [Types::NewPrivateVirtualInterfaceAllocation]
    class AllocatePrivateVirtualInterfaceRequest < Struct.new(
      :connection_id,
      :owner_account,
      :new_private_virtual_interface_allocation,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a virtual interface.</p>
    # @!attribute owner_account
    #   <p>The ID of the Amazon Web Services account that owns the virtual interface.</p>
    #   @return [String]
    # @!attribute virtual_interface_id
    #   <p>The ID of the virtual interface.</p>
    #   @return [String]
    # @!attribute location
    #   <p>The location of the connection.</p>
    #   @return [String]
    # @!attribute connection_id
    #   <p>The ID of the connection.</p>
    #   @return [String]
    # @!attribute virtual_interface_type
    #   <p>The type of virtual interface. The possible values are <code>private</code>, <code>public</code> and <code>transit</code>.</p>
    #   @return [String]
    # @!attribute virtual_interface_name
    #   <p>The name of the virtual interface assigned by the customer network. The name has a maximum of 100 characters. The following are valid characters: a-z, 0-9 and a hyphen (-).</p>
    #   @return [String]
    # @!attribute vlan
    #   <p>The ID of the VLAN.</p>
    #   @return [Integer]
    # @!attribute asn
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
    #   @return [Integer]
    # @!attribute asn_long
    #   <p>The long ASN for the virtual interface. The valid range is from 1 to 4294967294 for BGP configuration.</p>
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
    #   @return [Integer]
    # @!attribute amazon_side_asn
    #   <p>The autonomous system number (AS) for the Amazon side of the connection.</p>
    #   @return [Integer]
    # @!attribute auth_key
    #   <p>The authentication key for BGP configuration. This string has a minimum length of 6 characters and and a maximun lenth of 80 characters.</p>
    #   @return [String]
    # @!attribute amazon_address
    #   <p>The IP address assigned to the Amazon interface.</p>
    #   @return [String]
    # @!attribute customer_address
    #   <p>The IP address assigned to the customer interface.</p>
    #   @return [String]
    # @!attribute address_family
    #   <p>The address family for the BGP peer.</p>
    #   @return [String]
    # @!attribute virtual_interface_state
    #   <p>The state of the virtual interface. The following are the possible values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>confirming</code>: The creation of the virtual interface is pending confirmation from the virtual interface owner. If the owner of the virtual interface is different from the owner of the connection on which it is provisioned, then the virtual interface will remain in this state until it is confirmed by the virtual interface owner.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>verifying</code>: This state only applies to public virtual interfaces. Each public virtual interface needs validation before the virtual interface can be created.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>pending</code>: A virtual interface is in this state from the time that it is created until the virtual interface is ready to forward traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>available</code>: A virtual interface that is able to forward traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>down</code>: A virtual interface that is BGP down.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>testing</code>: A virtual interface is in this state immediately after calling <a>StartBgpFailoverTest</a> and remains in this state during the duration of the test.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleting</code>: A virtual interface is in this state immediately after calling <a>DeleteVirtualInterface</a> until it can no longer forward traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleted</code>: A virtual interface that cannot forward traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>rejected</code>: The virtual interface owner has declined creation of the virtual interface. If a virtual interface in the <code>Confirming</code> state is deleted by the virtual interface owner, the virtual interface enters the <code>Rejected</code> state.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>unknown</code>: The state of the virtual interface is not available.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute customer_router_config
    #   <p>The customer router configuration.</p>
    #   @return [String]
    # @!attribute mtu
    #   <p>The maximum transmission unit (MTU), in bytes. The supported values are 1500 and 8500. The default value is 1500</p>
    #   @return [Integer]
    # @!attribute jumbo_frame_capable
    #   <p>Indicates whether jumbo frames are supported.</p>
    #   @return [Boolean]
    # @!attribute virtual_gateway_id
    #   <p>The ID of the virtual private gateway. Applies only to private virtual interfaces.</p>
    #   @return [String]
    # @!attribute direct_connect_gateway_id
    #   <p>The ID of the Direct Connect gateway.</p>
    #   @return [String]
    # @!attribute route_filter_prefixes
    #   <p>The routes to be advertised to the Amazon Web Services network in this Region. Applies to public virtual interfaces.</p>
    #   @return [Array<Types::RouteFilterPrefix>]
    # @!attribute bgp_peers
    #   <p>The BGP peers configured on this virtual interface.</p>
    #   @return [Array<Types::BGPPeer>]
    # @!attribute region
    #   <p>The Amazon Web Services Region where the virtual interface is located.</p>
    #   @return [String]
    # @!attribute aws_device_v2
    #   <p>The Direct Connect endpoint that terminates the physical connection.</p>
    #   @return [String]
    # @!attribute aws_logical_device_id
    #   <p>The Direct Connect endpoint that terminates the logical connection. This device might be
    #         different than the device that terminates the physical connection.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags associated with the virtual interface.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute site_link_enabled
    #   <p>Indicates whether SiteLink is enabled.</p>
    #   @return [Boolean]
    class AllocatePublicVirtualInterfaceOutput < Struct.new(
      :owner_account,
      :virtual_interface_id,
      :location,
      :connection_id,
      :virtual_interface_type,
      :virtual_interface_name,
      :vlan,
      :asn,
      :asn_long,
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
      :aws_logical_device_id,
      :tags,
      :site_link_enabled,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:vlan] = 0 unless options.key?(:vlan)
        options[:asn] = 0 unless options.key?(:asn)
        super
      end
    end

    # @!attribute connection_id
    #   <p>The ID of the connection on which the public virtual interface is provisioned.</p>
    #   @return [String]
    # @!attribute owner_account
    #   <p>The ID of the Amazon Web Services account that owns the public virtual interface.</p>
    #   @return [String]
    # @!attribute new_public_virtual_interface_allocation
    #   <p>Information about the public virtual interface.</p>
    #   @return [Types::NewPublicVirtualInterfaceAllocation]
    class AllocatePublicVirtualInterfaceRequest < Struct.new(
      :connection_id,
      :owner_account,
      :new_public_virtual_interface_allocation,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute connection_id
    #   <p>The ID of the connection on which the transit virtual interface is provisioned.</p>
    #   @return [String]
    # @!attribute owner_account
    #   <p>The ID of the Amazon Web Services account that owns the transit virtual interface.</p>
    #   @return [String]
    # @!attribute new_transit_virtual_interface_allocation
    #   <p>Information about the transit virtual interface.</p>
    #   @return [Types::NewTransitVirtualInterfaceAllocation]
    class AllocateTransitVirtualInterfaceRequest < Struct.new(
      :connection_id,
      :owner_account,
      :new_transit_virtual_interface_allocation,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute virtual_interface
    #   <p>Information about the transit virtual interface.</p>
    #   @return [Types::VirtualInterface]
    class AllocateTransitVirtualInterfaceResult < Struct.new(
      :virtual_interface,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about an Direct Connect connection.</p>
    # @!attribute owner_account
    #   <p>The ID of the Amazon Web Services account that owns the connection.</p>
    #   @return [String]
    # @!attribute connection_id
    #   <p>The ID of the connection.</p>
    #   @return [String]
    # @!attribute connection_name
    #   <p>The name of the connection.</p>
    #   @return [String]
    # @!attribute connection_state
    #   <p>The state of the connection. The following are the possible values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ordering</code>: The initial state of a hosted connection provisioned on an interconnect. The connection stays in the ordering state until the owner of the hosted connection confirms or declines the connection order.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>requested</code>: The initial state of a standard connection. The connection stays in the requested state until the Letter of Authorization (LOA) is sent to the customer.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>pending</code>: The connection has been approved and is being initialized.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>available</code>: The network link is up and the connection is ready for use.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>down</code>: The network link is down.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleting</code>: The connection is being deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleted</code>: The connection has been deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>rejected</code>: A hosted connection in the <code>ordering</code> state enters the <code>rejected</code> state if it is deleted by the customer.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>unknown</code>: The state of the connection is not available.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute region
    #   <p>The Amazon Web Services Region where the connection is located.</p>
    #   @return [String]
    # @!attribute location
    #   <p>The location of the connection.</p>
    #   @return [String]
    # @!attribute bandwidth
    #   <p>The bandwidth of the connection.</p>
    #   @return [String]
    # @!attribute vlan
    #   <p>The ID of the VLAN.</p>
    #   @return [Integer]
    # @!attribute partner_name
    #   <p>The name of the Direct Connect service provider associated with the connection.</p>
    #   @return [String]
    # @!attribute loa_issue_time
    #   <p>The time of the most recent call to <a>DescribeLoa</a> for this connection.</p>
    #   @return [Time]
    # @!attribute lag_id
    #   <p>The ID of the LAG.</p>
    #   @return [String]
    # @!attribute aws_device
    #   <p>The Direct Connect endpoint on which the physical connection terminates.</p>
    #   @return [String]
    # @!attribute jumbo_frame_capable
    #   <p>Indicates whether jumbo frames are supported.</p>
    #   @return [Boolean]
    # @!attribute aws_device_v2
    #   <p>The Direct Connect endpoint that terminates the physical connection.</p>
    #   @return [String]
    # @!attribute aws_logical_device_id
    #   <p>The Direct Connect endpoint that terminates the logical connection. This device might be
    #         different than the device that terminates the physical connection.</p>
    #   @return [String]
    # @!attribute has_logical_redundancy
    #   <p>Indicates whether the connection supports a secondary BGP peer in the same address family (IPv4/IPv6).</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags associated with the connection.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute provider_name
    #   <p>The name of the service provider associated with the connection.</p>
    #   @return [String]
    # @!attribute mac_sec_capable
    #   <p>Indicates whether the connection supports MAC Security (MACsec).</p>
    #   @return [Boolean]
    # @!attribute port_encryption_status
    #   <p>The MAC Security (MACsec) port link status of the connection.</p>
    #            <p>The valid values are <code>Encryption Up</code>, which means that there is an active Connection Key Name, or <code>Encryption Down</code>.</p>
    #   @return [String]
    # @!attribute encryption_mode
    #   <p>The MAC Security (MACsec) connection encryption mode.</p>
    #            <p>The valid values are <code>no_encrypt</code>, <code>should_encrypt</code>, and <code>must_encrypt</code>.</p>
    #   @return [String]
    # @!attribute mac_sec_keys
    #   <p>The MAC Security (MACsec) security keys associated with the connection.</p>
    #   @return [Array<Types::MacSecKey>]
    # @!attribute partner_interconnect_mac_sec_capable
    #   <p>Indicates whether the interconnect hosting this connection supports MAC Security (MACsec).</p>
    #   @return [Boolean]
    class AssociateConnectionWithLagOutput < Struct.new(
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
      :aws_logical_device_id,
      :has_logical_redundancy,
      :tags,
      :provider_name,
      :mac_sec_capable,
      :port_encryption_status,
      :encryption_mode,
      :mac_sec_keys,
      :partner_interconnect_mac_sec_capable,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:vlan] = 0 unless options.key?(:vlan)
        super
      end
    end

    # @!attribute connection_id
    #   <p>The ID of the connection.</p>
    #   @return [String]
    # @!attribute lag_id
    #   <p>The ID of the LAG with which to associate the connection.</p>
    #   @return [String]
    class AssociateConnectionWithLagRequest < Struct.new(
      :connection_id,
      :lag_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about an Direct Connect connection.</p>
    # @!attribute owner_account
    #   <p>The ID of the Amazon Web Services account that owns the connection.</p>
    #   @return [String]
    # @!attribute connection_id
    #   <p>The ID of the connection.</p>
    #   @return [String]
    # @!attribute connection_name
    #   <p>The name of the connection.</p>
    #   @return [String]
    # @!attribute connection_state
    #   <p>The state of the connection. The following are the possible values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ordering</code>: The initial state of a hosted connection provisioned on an interconnect. The connection stays in the ordering state until the owner of the hosted connection confirms or declines the connection order.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>requested</code>: The initial state of a standard connection. The connection stays in the requested state until the Letter of Authorization (LOA) is sent to the customer.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>pending</code>: The connection has been approved and is being initialized.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>available</code>: The network link is up and the connection is ready for use.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>down</code>: The network link is down.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleting</code>: The connection is being deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleted</code>: The connection has been deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>rejected</code>: A hosted connection in the <code>ordering</code> state enters the <code>rejected</code> state if it is deleted by the customer.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>unknown</code>: The state of the connection is not available.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute region
    #   <p>The Amazon Web Services Region where the connection is located.</p>
    #   @return [String]
    # @!attribute location
    #   <p>The location of the connection.</p>
    #   @return [String]
    # @!attribute bandwidth
    #   <p>The bandwidth of the connection.</p>
    #   @return [String]
    # @!attribute vlan
    #   <p>The ID of the VLAN.</p>
    #   @return [Integer]
    # @!attribute partner_name
    #   <p>The name of the Direct Connect service provider associated with the connection.</p>
    #   @return [String]
    # @!attribute loa_issue_time
    #   <p>The time of the most recent call to <a>DescribeLoa</a> for this connection.</p>
    #   @return [Time]
    # @!attribute lag_id
    #   <p>The ID of the LAG.</p>
    #   @return [String]
    # @!attribute aws_device
    #   <p>The Direct Connect endpoint on which the physical connection terminates.</p>
    #   @return [String]
    # @!attribute jumbo_frame_capable
    #   <p>Indicates whether jumbo frames are supported.</p>
    #   @return [Boolean]
    # @!attribute aws_device_v2
    #   <p>The Direct Connect endpoint that terminates the physical connection.</p>
    #   @return [String]
    # @!attribute aws_logical_device_id
    #   <p>The Direct Connect endpoint that terminates the logical connection. This device might be
    #         different than the device that terminates the physical connection.</p>
    #   @return [String]
    # @!attribute has_logical_redundancy
    #   <p>Indicates whether the connection supports a secondary BGP peer in the same address family (IPv4/IPv6).</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags associated with the connection.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute provider_name
    #   <p>The name of the service provider associated with the connection.</p>
    #   @return [String]
    # @!attribute mac_sec_capable
    #   <p>Indicates whether the connection supports MAC Security (MACsec).</p>
    #   @return [Boolean]
    # @!attribute port_encryption_status
    #   <p>The MAC Security (MACsec) port link status of the connection.</p>
    #            <p>The valid values are <code>Encryption Up</code>, which means that there is an active Connection Key Name, or <code>Encryption Down</code>.</p>
    #   @return [String]
    # @!attribute encryption_mode
    #   <p>The MAC Security (MACsec) connection encryption mode.</p>
    #            <p>The valid values are <code>no_encrypt</code>, <code>should_encrypt</code>, and <code>must_encrypt</code>.</p>
    #   @return [String]
    # @!attribute mac_sec_keys
    #   <p>The MAC Security (MACsec) security keys associated with the connection.</p>
    #   @return [Array<Types::MacSecKey>]
    # @!attribute partner_interconnect_mac_sec_capable
    #   <p>Indicates whether the interconnect hosting this connection supports MAC Security (MACsec).</p>
    #   @return [Boolean]
    class AssociateHostedConnectionOutput < Struct.new(
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
      :aws_logical_device_id,
      :has_logical_redundancy,
      :tags,
      :provider_name,
      :mac_sec_capable,
      :port_encryption_status,
      :encryption_mode,
      :mac_sec_keys,
      :partner_interconnect_mac_sec_capable,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:vlan] = 0 unless options.key?(:vlan)
        super
      end
    end

    # @!attribute connection_id
    #   <p>The ID of the hosted connection.</p>
    #   @return [String]
    # @!attribute parent_connection_id
    #   <p>The ID of the interconnect or the LAG.</p>
    #   @return [String]
    class AssociateHostedConnectionRequest < Struct.new(
      :connection_id,
      :parent_connection_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute connection_id
    #   <p>The ID of the dedicated connection (dxcon-xxxx), interconnect (dxcon-xxxx), or LAG (dxlag-xxxx).</p>
    #            <p>You can use <a>DescribeConnections</a>, <a>DescribeInterconnects</a>, or <a>DescribeLags</a> to retrieve connection ID.</p>
    #   @return [String]
    # @!attribute secret_arn
    #   <p>The Amazon Resource Name (ARN) of the MAC Security (MACsec) secret key to associate with the connection.</p>
    #            <p>You can use <a>DescribeConnections</a> or <a>DescribeLags</a> to retrieve the MAC Security (MACsec) secret key.</p>
    #            <p>If you use this request parameter, you do not use the <code>ckn</code> and <code>cak</code> request parameters.</p>
    #   @return [String]
    # @!attribute ckn
    #   <p>The MAC Security (MACsec) CKN to associate with the connection.</p>
    #            <p>You can create the CKN/CAK pair using an industry standard tool.</p>
    #            <p> The valid values are 64 hexadecimal characters (0-9, A-E).</p>
    #            <p>If you use this request parameter, you must use the <code>cak</code> request parameter and not use the <code>secretARN</code> request parameter.</p>
    #   @return [String]
    # @!attribute cak
    #   <p>The MAC Security (MACsec) CAK to associate with the connection.</p>
    #            <p>You can create the CKN/CAK pair using an industry standard tool.</p>
    #            <p> The valid values are 64 hexadecimal characters (0-9, A-E).</p>
    #            <p>If you use this request parameter, you must use the <code>ckn</code> request parameter and not use the <code>secretARN</code> request parameter.</p>
    #   @return [String]
    class AssociateMacSecKeyRequest < Struct.new(
      :connection_id,
      :secret_arn,
      :ckn,
      :cak,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute connection_id
    #   <p>The ID of the dedicated connection (dxcon-xxxx), interconnect (dxcon-xxxx), or LAG (dxlag-xxxx).</p>
    #   @return [String]
    # @!attribute mac_sec_keys
    #   <p>The MAC Security (MACsec) security keys associated with the connection.</p>
    #   @return [Array<Types::MacSecKey>]
    class AssociateMacSecKeyResponse < Struct.new(
      :connection_id,
      :mac_sec_keys,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a virtual interface.</p>
    # @!attribute owner_account
    #   <p>The ID of the Amazon Web Services account that owns the virtual interface.</p>
    #   @return [String]
    # @!attribute virtual_interface_id
    #   <p>The ID of the virtual interface.</p>
    #   @return [String]
    # @!attribute location
    #   <p>The location of the connection.</p>
    #   @return [String]
    # @!attribute connection_id
    #   <p>The ID of the connection.</p>
    #   @return [String]
    # @!attribute virtual_interface_type
    #   <p>The type of virtual interface. The possible values are <code>private</code>, <code>public</code> and <code>transit</code>.</p>
    #   @return [String]
    # @!attribute virtual_interface_name
    #   <p>The name of the virtual interface assigned by the customer network. The name has a maximum of 100 characters. The following are valid characters: a-z, 0-9 and a hyphen (-).</p>
    #   @return [String]
    # @!attribute vlan
    #   <p>The ID of the VLAN.</p>
    #   @return [Integer]
    # @!attribute asn
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
    #   @return [Integer]
    # @!attribute asn_long
    #   <p>The long ASN for the virtual interface. The valid range is from 1 to 4294967294 for BGP configuration.</p>
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
    #   @return [Integer]
    # @!attribute amazon_side_asn
    #   <p>The autonomous system number (AS) for the Amazon side of the connection.</p>
    #   @return [Integer]
    # @!attribute auth_key
    #   <p>The authentication key for BGP configuration. This string has a minimum length of 6 characters and and a maximun lenth of 80 characters.</p>
    #   @return [String]
    # @!attribute amazon_address
    #   <p>The IP address assigned to the Amazon interface.</p>
    #   @return [String]
    # @!attribute customer_address
    #   <p>The IP address assigned to the customer interface.</p>
    #   @return [String]
    # @!attribute address_family
    #   <p>The address family for the BGP peer.</p>
    #   @return [String]
    # @!attribute virtual_interface_state
    #   <p>The state of the virtual interface. The following are the possible values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>confirming</code>: The creation of the virtual interface is pending confirmation from the virtual interface owner. If the owner of the virtual interface is different from the owner of the connection on which it is provisioned, then the virtual interface will remain in this state until it is confirmed by the virtual interface owner.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>verifying</code>: This state only applies to public virtual interfaces. Each public virtual interface needs validation before the virtual interface can be created.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>pending</code>: A virtual interface is in this state from the time that it is created until the virtual interface is ready to forward traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>available</code>: A virtual interface that is able to forward traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>down</code>: A virtual interface that is BGP down.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>testing</code>: A virtual interface is in this state immediately after calling <a>StartBgpFailoverTest</a> and remains in this state during the duration of the test.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleting</code>: A virtual interface is in this state immediately after calling <a>DeleteVirtualInterface</a> until it can no longer forward traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleted</code>: A virtual interface that cannot forward traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>rejected</code>: The virtual interface owner has declined creation of the virtual interface. If a virtual interface in the <code>Confirming</code> state is deleted by the virtual interface owner, the virtual interface enters the <code>Rejected</code> state.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>unknown</code>: The state of the virtual interface is not available.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute customer_router_config
    #   <p>The customer router configuration.</p>
    #   @return [String]
    # @!attribute mtu
    #   <p>The maximum transmission unit (MTU), in bytes. The supported values are 1500 and 8500. The default value is 1500</p>
    #   @return [Integer]
    # @!attribute jumbo_frame_capable
    #   <p>Indicates whether jumbo frames are supported.</p>
    #   @return [Boolean]
    # @!attribute virtual_gateway_id
    #   <p>The ID of the virtual private gateway. Applies only to private virtual interfaces.</p>
    #   @return [String]
    # @!attribute direct_connect_gateway_id
    #   <p>The ID of the Direct Connect gateway.</p>
    #   @return [String]
    # @!attribute route_filter_prefixes
    #   <p>The routes to be advertised to the Amazon Web Services network in this Region. Applies to public virtual interfaces.</p>
    #   @return [Array<Types::RouteFilterPrefix>]
    # @!attribute bgp_peers
    #   <p>The BGP peers configured on this virtual interface.</p>
    #   @return [Array<Types::BGPPeer>]
    # @!attribute region
    #   <p>The Amazon Web Services Region where the virtual interface is located.</p>
    #   @return [String]
    # @!attribute aws_device_v2
    #   <p>The Direct Connect endpoint that terminates the physical connection.</p>
    #   @return [String]
    # @!attribute aws_logical_device_id
    #   <p>The Direct Connect endpoint that terminates the logical connection. This device might be
    #         different than the device that terminates the physical connection.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags associated with the virtual interface.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute site_link_enabled
    #   <p>Indicates whether SiteLink is enabled.</p>
    #   @return [Boolean]
    class AssociateVirtualInterfaceOutput < Struct.new(
      :owner_account,
      :virtual_interface_id,
      :location,
      :connection_id,
      :virtual_interface_type,
      :virtual_interface_name,
      :vlan,
      :asn,
      :asn_long,
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
      :aws_logical_device_id,
      :tags,
      :site_link_enabled,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:vlan] = 0 unless options.key?(:vlan)
        options[:asn] = 0 unless options.key?(:asn)
        super
      end
    end

    # @!attribute virtual_interface_id
    #   <p>The ID of the virtual interface.</p>
    #   @return [String]
    # @!attribute connection_id
    #   <p>The ID of the LAG or connection.</p>
    #   @return [String]
    class AssociateVirtualInterfaceRequest < Struct.new(
      :virtual_interface_id,
      :connection_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The Amazon Web Services Cloud WAN core network that the Direct Connect gateway is associated to. This is only returned when a Direct Connect gateway is associated to a Cloud WAN core network.</p>
    # @!attribute id
    #   <p>The ID of the Cloud WAN core network that the Direct Connect gateway is associated to.</p>
    #   @return [String]
    # @!attribute owner_account
    #   <p>The account owner of the Cloud WAN core network.</p>
    #   @return [String]
    # @!attribute attachment_id
    #   <p>the ID of the Direct Connect gateway attachment.</p>
    #   @return [String]
    class AssociatedCoreNetwork < Struct.new(
      :id,
      :owner_account,
      :attachment_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the associated gateway.</p>
    # @!attribute id
    #   <p>The ID of the associated gateway.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of associated gateway.</p>
    #   @return [String]
    # @!attribute owner_account
    #   <p>The ID of the Amazon Web Services account that owns the associated virtual private gateway or transit gateway.</p>
    #   @return [String]
    # @!attribute region
    #   <p>The Region where the associated gateway is located.</p>
    #   @return [String]
    class AssociatedGateway < Struct.new(
      :id,
      :type,
      :owner_account,
      :region,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a BGP peer.</p>
    # @!attribute bgp_peer_id
    #   <p>The ID of the BGP peer.</p>
    #   @return [String]
    # @!attribute asn
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
    #   @return [Integer]
    # @!attribute asn_long
    #   <p>The long ASN for the BGP peer. The valid range is from 1 to 4294967294 for BGP configuration. </p>
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
    #   @return [Integer]
    # @!attribute auth_key
    #   <p>The authentication key for BGP configuration. This string has a minimum length of 6 characters and and a maximun lenth of 80 characters.</p>
    #   @return [String]
    # @!attribute address_family
    #   <p>The address family for the BGP peer.</p>
    #   @return [String]
    # @!attribute amazon_address
    #   <p>The IP address assigned to the Amazon interface.</p>
    #   @return [String]
    # @!attribute customer_address
    #   <p>The IP address assigned to the customer interface.</p>
    #   @return [String]
    # @!attribute bgp_peer_state
    #   <p>The state of the BGP peer. The following are the possible values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>verifying</code>: The BGP peering addresses or ASN require validation before the BGP peer can be created. This state applies only to public virtual interfaces.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>pending</code>: The BGP peer is created, and remains in this state until it is ready to be established.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>available</code>: The BGP peer is ready to be established.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleting</code>:  The BGP peer is being deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleted</code>:  The BGP peer is deleted and cannot be established.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute bgp_status
    #   <p>The status of the BGP peer. The following are the possible values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>up</code>: The BGP peer is established. This state does not indicate the 
    #           state of the routing function. Ensure that you are receiving routes over the BGP session.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>down</code>: The BGP peer is down.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>unknown</code>: The BGP peer status is not available.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute aws_device_v2
    #   <p>The Direct Connect endpoint that terminates the BGP peer.</p>
    #   @return [String]
    # @!attribute aws_logical_device_id
    #   <p>The Direct Connect endpoint that terminates the logical connection. This device might be
    #         different than the device that terminates the physical connection.</p>
    #   @return [String]
    class BGPPeer < Struct.new(
      :bgp_peer_id,
      :asn,
      :asn_long,
      :auth_key,
      :address_family,
      :amazon_address,
      :customer_address,
      :bgp_peer_state,
      :bgp_status,
      :aws_device_v2,
      :aws_logical_device_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:asn] = 0 unless options.key?(:asn)
        super
      end
    end

    # @!attribute connection_id
    #   <p>The ID of the hosted connection.</p>
    #   @return [String]
    class ConfirmConnectionRequest < Struct.new(
      :connection_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute connection_state
    #   <p>The state of the connection. The following are the possible values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ordering</code>: The initial state of a hosted connection provisioned on an interconnect. The connection stays in the ordering state until the owner of the hosted connection confirms or declines the connection order.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>requested</code>: The initial state of a standard connection. The connection stays in the requested state until the Letter of Authorization (LOA) is sent to the customer.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>pending</code>: The connection has been approved and is being initialized.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>available</code>: The network link is up and the connection is ready for use.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>down</code>: The network link is down.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleting</code>: The connection is being deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleted</code>: The connection has been deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>rejected</code>: A hosted connection in the <code>ordering</code> state enters the <code>rejected</code> state if it is deleted by the customer.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>unknown</code>: The state of the connection is not available.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class ConfirmConnectionResponse < Struct.new(
      :connection_state,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute agreement_name
    #   <p>
    #   
    #         The name of the customer agreement.
    #   
    #       </p>
    #   @return [String]
    class ConfirmCustomerAgreementRequest < Struct.new(
      :agreement_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>
    #         The status of the customer agreement when the connection was created. This will be either <code>signed</code> or <code>unsigned</code>.
    #       </p>
    #   @return [String]
    class ConfirmCustomerAgreementResponse < Struct.new(
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute virtual_interface_id
    #   <p>The ID of the virtual interface.</p>
    #   @return [String]
    # @!attribute virtual_gateway_id
    #   <p>The ID of the virtual private gateway.</p>
    #   @return [String]
    # @!attribute direct_connect_gateway_id
    #   <p>The ID of the Direct Connect gateway.</p>
    #   @return [String]
    class ConfirmPrivateVirtualInterfaceRequest < Struct.new(
      :virtual_interface_id,
      :virtual_gateway_id,
      :direct_connect_gateway_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute virtual_interface_state
    #   <p>The state of the virtual interface. The following are the possible values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>confirming</code>: The creation of the virtual interface is pending confirmation from the virtual interface owner. If the owner of the virtual interface is different from the owner of the connection on which it is provisioned, then the virtual interface will remain in this state until it is confirmed by the virtual interface owner.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>verifying</code>: This state only applies to public virtual interfaces. Each public virtual interface needs validation before the virtual interface can be created.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>pending</code>: A virtual interface is in this state from the time that it is created until the virtual interface is ready to forward traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>available</code>: A virtual interface that is able to forward traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>down</code>: A virtual interface that is BGP down.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>testing</code>: A virtual interface is in this state immediately after calling <a>StartBgpFailoverTest</a> and remains in this state during the duration of the test.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleting</code>: A virtual interface is in this state immediately after calling <a>DeleteVirtualInterface</a> until it can no longer forward traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleted</code>: A virtual interface that cannot forward traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>rejected</code>: The virtual interface owner has declined creation of the virtual interface. If a virtual interface in the <code>Confirming</code> state is deleted by the virtual interface owner, the virtual interface enters the <code>Rejected</code> state.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>unknown</code>: The state of the virtual interface is not available.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class ConfirmPrivateVirtualInterfaceResponse < Struct.new(
      :virtual_interface_state,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute virtual_interface_id
    #   <p>The ID of the virtual interface.</p>
    #   @return [String]
    class ConfirmPublicVirtualInterfaceRequest < Struct.new(
      :virtual_interface_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute virtual_interface_state
    #   <p>The state of the virtual interface. The following are the possible values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>confirming</code>: The creation of the virtual interface is pending confirmation from the virtual interface owner. If the owner of the virtual interface is different from the owner of the connection on which it is provisioned, then the virtual interface will remain in this state until it is confirmed by the virtual interface owner.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>verifying</code>: This state only applies to public virtual interfaces. Each public virtual interface needs validation before the virtual interface can be created.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>pending</code>: A virtual interface is in this state from the time that it is created until the virtual interface is ready to forward traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>available</code>: A virtual interface that is able to forward traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>down</code>: A virtual interface that is BGP down.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>testing</code>: A virtual interface is in this state immediately after calling <a>StartBgpFailoverTest</a> and remains in this state during the duration of the test.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleting</code>: A virtual interface is in this state immediately after calling <a>DeleteVirtualInterface</a> until it can no longer forward traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleted</code>: A virtual interface that cannot forward traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>rejected</code>: The virtual interface owner has declined creation of the virtual interface. If a virtual interface in the <code>Confirming</code> state is deleted by the virtual interface owner, the virtual interface enters the <code>Rejected</code> state.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>unknown</code>: The state of the virtual interface is not available.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class ConfirmPublicVirtualInterfaceResponse < Struct.new(
      :virtual_interface_state,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute virtual_interface_id
    #   <p>The ID of the virtual interface.</p>
    #   @return [String]
    # @!attribute direct_connect_gateway_id
    #   <p>The ID of the Direct Connect gateway.</p>
    #   @return [String]
    class ConfirmTransitVirtualInterfaceRequest < Struct.new(
      :virtual_interface_id,
      :direct_connect_gateway_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute virtual_interface_state
    #   <p>The state of the virtual interface. The following are the possible values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>confirming</code>: The creation of the virtual interface is pending confirmation from the virtual interface owner. If the owner of the virtual interface is different from the owner of the connection on which it is provisioned, then the virtual interface will remain in this state until it is confirmed by the virtual interface owner.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>verifying</code>: This state only applies to public virtual interfaces. Each public virtual interface needs validation before the virtual interface can be created.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>pending</code>: A virtual interface is in this state from the time that it is created until the virtual interface is ready to forward traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>available</code>: A virtual interface that is able to forward traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>down</code>: A virtual interface that is BGP down.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>testing</code>: A virtual interface is in this state immediately after calling <a>StartBgpFailoverTest</a> and remains in this state during the duration of the test.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleting</code>: A virtual interface is in this state immediately after calling <a>DeleteVirtualInterface</a> until it can no longer forward traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleted</code>: A virtual interface that cannot forward traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>rejected</code>: The virtual interface owner has declined creation of the virtual interface. If a virtual interface in the <code>Confirming</code> state is deleted by the virtual interface owner, the virtual interface enters the <code>Rejected</code> state.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>unknown</code>: The state of the virtual interface is not available.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class ConfirmTransitVirtualInterfaceResponse < Struct.new(
      :virtual_interface_state,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about an Direct Connect connection.</p>
    # @!attribute owner_account
    #   <p>The ID of the Amazon Web Services account that owns the connection.</p>
    #   @return [String]
    # @!attribute connection_id
    #   <p>The ID of the connection.</p>
    #   @return [String]
    # @!attribute connection_name
    #   <p>The name of the connection.</p>
    #   @return [String]
    # @!attribute connection_state
    #   <p>The state of the connection. The following are the possible values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ordering</code>: The initial state of a hosted connection provisioned on an interconnect. The connection stays in the ordering state until the owner of the hosted connection confirms or declines the connection order.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>requested</code>: The initial state of a standard connection. The connection stays in the requested state until the Letter of Authorization (LOA) is sent to the customer.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>pending</code>: The connection has been approved and is being initialized.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>available</code>: The network link is up and the connection is ready for use.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>down</code>: The network link is down.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleting</code>: The connection is being deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleted</code>: The connection has been deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>rejected</code>: A hosted connection in the <code>ordering</code> state enters the <code>rejected</code> state if it is deleted by the customer.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>unknown</code>: The state of the connection is not available.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute region
    #   <p>The Amazon Web Services Region where the connection is located.</p>
    #   @return [String]
    # @!attribute location
    #   <p>The location of the connection.</p>
    #   @return [String]
    # @!attribute bandwidth
    #   <p>The bandwidth of the connection.</p>
    #   @return [String]
    # @!attribute vlan
    #   <p>The ID of the VLAN.</p>
    #   @return [Integer]
    # @!attribute partner_name
    #   <p>The name of the Direct Connect service provider associated with the connection.</p>
    #   @return [String]
    # @!attribute loa_issue_time
    #   <p>The time of the most recent call to <a>DescribeLoa</a> for this connection.</p>
    #   @return [Time]
    # @!attribute lag_id
    #   <p>The ID of the LAG.</p>
    #   @return [String]
    # @!attribute aws_device
    #   <p>The Direct Connect endpoint on which the physical connection terminates.</p>
    #   @return [String]
    # @!attribute jumbo_frame_capable
    #   <p>Indicates whether jumbo frames are supported.</p>
    #   @return [Boolean]
    # @!attribute aws_device_v2
    #   <p>The Direct Connect endpoint that terminates the physical connection.</p>
    #   @return [String]
    # @!attribute aws_logical_device_id
    #   <p>The Direct Connect endpoint that terminates the logical connection. This device might be
    #         different than the device that terminates the physical connection.</p>
    #   @return [String]
    # @!attribute has_logical_redundancy
    #   <p>Indicates whether the connection supports a secondary BGP peer in the same address family (IPv4/IPv6).</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags associated with the connection.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute provider_name
    #   <p>The name of the service provider associated with the connection.</p>
    #   @return [String]
    # @!attribute mac_sec_capable
    #   <p>Indicates whether the connection supports MAC Security (MACsec).</p>
    #   @return [Boolean]
    # @!attribute port_encryption_status
    #   <p>The MAC Security (MACsec) port link status of the connection.</p>
    #            <p>The valid values are <code>Encryption Up</code>, which means that there is an active Connection Key Name, or <code>Encryption Down</code>.</p>
    #   @return [String]
    # @!attribute encryption_mode
    #   <p>The MAC Security (MACsec) connection encryption mode.</p>
    #            <p>The valid values are <code>no_encrypt</code>, <code>should_encrypt</code>, and <code>must_encrypt</code>.</p>
    #   @return [String]
    # @!attribute mac_sec_keys
    #   <p>The MAC Security (MACsec) security keys associated with the connection.</p>
    #   @return [Array<Types::MacSecKey>]
    # @!attribute partner_interconnect_mac_sec_capable
    #   <p>Indicates whether the interconnect hosting this connection supports MAC Security (MACsec).</p>
    #   @return [Boolean]
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
      :aws_logical_device_id,
      :has_logical_redundancy,
      :tags,
      :provider_name,
      :mac_sec_capable,
      :port_encryption_status,
      :encryption_mode,
      :mac_sec_keys,
      :partner_interconnect_mac_sec_capable,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:vlan] = 0 unless options.key?(:vlan)
        super
      end
    end

    # @!attribute virtual_interface_id
    #   <p>The ID of the virtual interface.</p>
    #   @return [String]
    # @!attribute new_bgp_peer
    #   <p>Information about the BGP peer.</p>
    #   @return [Types::NewBGPPeer]
    class CreateBGPPeerRequest < Struct.new(
      :virtual_interface_id,
      :new_bgp_peer,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute virtual_interface
    #   <p>The virtual interface.</p>
    #   @return [Types::VirtualInterface]
    class CreateBGPPeerResponse < Struct.new(
      :virtual_interface,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about an Direct Connect connection.</p>
    # @!attribute owner_account
    #   <p>The ID of the Amazon Web Services account that owns the connection.</p>
    #   @return [String]
    # @!attribute connection_id
    #   <p>The ID of the connection.</p>
    #   @return [String]
    # @!attribute connection_name
    #   <p>The name of the connection.</p>
    #   @return [String]
    # @!attribute connection_state
    #   <p>The state of the connection. The following are the possible values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ordering</code>: The initial state of a hosted connection provisioned on an interconnect. The connection stays in the ordering state until the owner of the hosted connection confirms or declines the connection order.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>requested</code>: The initial state of a standard connection. The connection stays in the requested state until the Letter of Authorization (LOA) is sent to the customer.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>pending</code>: The connection has been approved and is being initialized.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>available</code>: The network link is up and the connection is ready for use.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>down</code>: The network link is down.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleting</code>: The connection is being deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleted</code>: The connection has been deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>rejected</code>: A hosted connection in the <code>ordering</code> state enters the <code>rejected</code> state if it is deleted by the customer.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>unknown</code>: The state of the connection is not available.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute region
    #   <p>The Amazon Web Services Region where the connection is located.</p>
    #   @return [String]
    # @!attribute location
    #   <p>The location of the connection.</p>
    #   @return [String]
    # @!attribute bandwidth
    #   <p>The bandwidth of the connection.</p>
    #   @return [String]
    # @!attribute vlan
    #   <p>The ID of the VLAN.</p>
    #   @return [Integer]
    # @!attribute partner_name
    #   <p>The name of the Direct Connect service provider associated with the connection.</p>
    #   @return [String]
    # @!attribute loa_issue_time
    #   <p>The time of the most recent call to <a>DescribeLoa</a> for this connection.</p>
    #   @return [Time]
    # @!attribute lag_id
    #   <p>The ID of the LAG.</p>
    #   @return [String]
    # @!attribute aws_device
    #   <p>The Direct Connect endpoint on which the physical connection terminates.</p>
    #   @return [String]
    # @!attribute jumbo_frame_capable
    #   <p>Indicates whether jumbo frames are supported.</p>
    #   @return [Boolean]
    # @!attribute aws_device_v2
    #   <p>The Direct Connect endpoint that terminates the physical connection.</p>
    #   @return [String]
    # @!attribute aws_logical_device_id
    #   <p>The Direct Connect endpoint that terminates the logical connection. This device might be
    #         different than the device that terminates the physical connection.</p>
    #   @return [String]
    # @!attribute has_logical_redundancy
    #   <p>Indicates whether the connection supports a secondary BGP peer in the same address family (IPv4/IPv6).</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags associated with the connection.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute provider_name
    #   <p>The name of the service provider associated with the connection.</p>
    #   @return [String]
    # @!attribute mac_sec_capable
    #   <p>Indicates whether the connection supports MAC Security (MACsec).</p>
    #   @return [Boolean]
    # @!attribute port_encryption_status
    #   <p>The MAC Security (MACsec) port link status of the connection.</p>
    #            <p>The valid values are <code>Encryption Up</code>, which means that there is an active Connection Key Name, or <code>Encryption Down</code>.</p>
    #   @return [String]
    # @!attribute encryption_mode
    #   <p>The MAC Security (MACsec) connection encryption mode.</p>
    #            <p>The valid values are <code>no_encrypt</code>, <code>should_encrypt</code>, and <code>must_encrypt</code>.</p>
    #   @return [String]
    # @!attribute mac_sec_keys
    #   <p>The MAC Security (MACsec) security keys associated with the connection.</p>
    #   @return [Array<Types::MacSecKey>]
    # @!attribute partner_interconnect_mac_sec_capable
    #   <p>Indicates whether the interconnect hosting this connection supports MAC Security (MACsec).</p>
    #   @return [Boolean]
    class CreateConnectionOutput < Struct.new(
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
      :aws_logical_device_id,
      :has_logical_redundancy,
      :tags,
      :provider_name,
      :mac_sec_capable,
      :port_encryption_status,
      :encryption_mode,
      :mac_sec_keys,
      :partner_interconnect_mac_sec_capable,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:vlan] = 0 unless options.key?(:vlan)
        super
      end
    end

    # @!attribute location
    #   <p>The location of the connection.</p>
    #   @return [String]
    # @!attribute bandwidth
    #   <p>The bandwidth of the connection.</p>
    #   @return [String]
    # @!attribute connection_name
    #   <p>The name of the connection.</p>
    #   @return [String]
    # @!attribute lag_id
    #   <p>The ID of the LAG.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to associate with the lag.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute provider_name
    #   <p>The name of the service provider associated with the requested connection.</p>
    #   @return [String]
    # @!attribute request_mac_sec
    #   <p>Indicates whether you want the connection to support MAC Security (MACsec).</p>
    #            <p>MAC Security (MACsec) is unavailable on hosted connections. For information about MAC Security (MACsec) prerequisites, see  <a href="https://docs.aws.amazon.com/directconnect/latest/UserGuide/MACSec.html">MAC Security in Direct Connect</a> in the <i>Direct Connect User Guide</i>.</p>
    #   @return [Boolean]
    class CreateConnectionRequest < Struct.new(
      :location,
      :bandwidth,
      :connection_name,
      :lag_id,
      :tags,
      :provider_name,
      :request_mac_sec,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute direct_connect_gateway_id
    #   <p>The ID of the Direct Connect gateway.</p>
    #   @return [String]
    # @!attribute direct_connect_gateway_owner_account
    #   <p>The ID of the Amazon Web Services account that owns the Direct Connect gateway.</p>
    #   @return [String]
    # @!attribute gateway_id
    #   <p>The ID of the virtual private gateway or transit gateway.</p>
    #   @return [String]
    # @!attribute add_allowed_prefixes_to_direct_connect_gateway
    #   <p>The Amazon VPC prefixes to advertise to the Direct Connect gateway.</p>
    #   @return [Array<Types::RouteFilterPrefix>]
    # @!attribute remove_allowed_prefixes_to_direct_connect_gateway
    #   <p>The Amazon VPC prefixes to no longer advertise to the Direct Connect gateway.</p>
    #   @return [Array<Types::RouteFilterPrefix>]
    class CreateDirectConnectGatewayAssociationProposalRequest < Struct.new(
      :direct_connect_gateway_id,
      :direct_connect_gateway_owner_account,
      :gateway_id,
      :add_allowed_prefixes_to_direct_connect_gateway,
      :remove_allowed_prefixes_to_direct_connect_gateway,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute direct_connect_gateway_association_proposal
    #   <p>Information about the Direct Connect gateway proposal.</p>
    #   @return [Types::DirectConnectGatewayAssociationProposal]
    class CreateDirectConnectGatewayAssociationProposalResult < Struct.new(
      :direct_connect_gateway_association_proposal,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute direct_connect_gateway_id
    #   <p>The ID of the Direct Connect gateway.</p>
    #   @return [String]
    # @!attribute gateway_id
    #   <p>The ID of the virtual private gateway or transit gateway.</p>
    #   @return [String]
    # @!attribute add_allowed_prefixes_to_direct_connect_gateway
    #   <p>The Amazon VPC prefixes to advertise to the Direct Connect gateway</p>
    #            <p>This parameter is required when you create an association to a transit gateway.</p>
    #            <p>For information about how to set the prefixes, see <a href="https://docs.aws.amazon.com/directconnect/latest/UserGuide/multi-account-associate-vgw.html#allowed-prefixes">Allowed Prefixes</a> in the <i>Direct Connect User Guide</i>.</p>
    #   @return [Array<Types::RouteFilterPrefix>]
    # @!attribute virtual_gateway_id
    #   <p>The ID of the virtual private gateway.</p>
    #   @return [String]
    class CreateDirectConnectGatewayAssociationRequest < Struct.new(
      :direct_connect_gateway_id,
      :gateway_id,
      :add_allowed_prefixes_to_direct_connect_gateway,
      :virtual_gateway_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute direct_connect_gateway_association
    #   <p>The association to be created.</p>
    #   @return [Types::DirectConnectGatewayAssociation]
    class CreateDirectConnectGatewayAssociationResult < Struct.new(
      :direct_connect_gateway_association,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute direct_connect_gateway_name
    #   <p>The name of the Direct Connect gateway.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The key-value pair tags associated with the request.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute amazon_side_asn
    #   <p>The autonomous system number (ASN) for Border Gateway Protocol (BGP) to be configured
    #         on the Amazon side of the connection. The ASN must be in the private range of 64,512 to
    #         65,534 or 4,200,000,000 to 4,294,967,294. The default is 64512.</p>
    #   @return [Integer]
    class CreateDirectConnectGatewayRequest < Struct.new(
      :direct_connect_gateway_name,
      :tags,
      :amazon_side_asn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute direct_connect_gateway
    #   <p>The Direct Connect gateway.</p>
    #   @return [Types::DirectConnectGateway]
    class CreateDirectConnectGatewayResult < Struct.new(
      :direct_connect_gateway,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about an interconnect.</p>
    # @!attribute interconnect_id
    #   <p>The ID of the interconnect.</p>
    #   @return [String]
    # @!attribute interconnect_name
    #   <p>The name of the interconnect.</p>
    #   @return [String]
    # @!attribute interconnect_state
    #   <p>The state of the interconnect. The following are the possible values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>requested</code>: The initial state of an interconnect. The interconnect stays in the
    #           requested state until the Letter of Authorization (LOA) is sent to the customer.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>pending</code>: The interconnect is approved, and is being initialized.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>available</code>: The network link is up, and the interconnect is ready for use.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>down</code>: The network link is down.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleting</code>: The interconnect is being deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleted</code>: The interconnect is deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>unknown</code>: The state of the interconnect is not available.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute region
    #   <p>The Amazon Web Services Region where the connection is located.</p>
    #   @return [String]
    # @!attribute location
    #   <p>The location of the connection.</p>
    #   @return [String]
    # @!attribute bandwidth
    #   <p>The bandwidth of the connection.</p>
    #   @return [String]
    # @!attribute loa_issue_time
    #   <p>The time of the most recent call to <a>DescribeLoa</a> for this connection.</p>
    #   @return [Time]
    # @!attribute lag_id
    #   <p>The ID of the LAG.</p>
    #   @return [String]
    # @!attribute aws_device
    #   <p>The Direct Connect endpoint on which the physical connection terminates.</p>
    #   @return [String]
    # @!attribute jumbo_frame_capable
    #   <p>Indicates whether jumbo frames are supported.</p>
    #   @return [Boolean]
    # @!attribute aws_device_v2
    #   <p>The Direct Connect endpoint that terminates the physical connection.</p>
    #   @return [String]
    # @!attribute aws_logical_device_id
    #   <p>The Direct Connect endpoint that terminates the logical connection. This device might be
    #         different than the device that terminates the physical connection.</p>
    #   @return [String]
    # @!attribute has_logical_redundancy
    #   <p>Indicates whether the interconnect supports a secondary BGP in the same address family (IPv4/IPv6).</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags associated with the interconnect.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute provider_name
    #   <p>The name of the service provider associated with the interconnect.</p>
    #   @return [String]
    # @!attribute mac_sec_capable
    #   <p>Indicates whether the interconnect supports MAC Security (MACsec).</p>
    #   @return [Boolean]
    # @!attribute port_encryption_status
    #   <p>The MAC Security (MACsec) port link status.</p>
    #            <p>The valid values are <code>Encryption Up</code>, which means that there is an active Connection Key Name, or <code>Encryption Down</code>.</p>
    #   @return [String]
    # @!attribute encryption_mode
    #   <p>The MAC Security (MACsec) encryption mode.</p>
    #            <p>The valid values are <code>no_encrypt</code>, <code>should_encrypt</code>, and <code>must_encrypt</code>.</p>
    #   @return [String]
    # @!attribute mac_sec_keys
    #   <p>The MAC Security (MACsec) security keys.</p>
    #   @return [Array<Types::MacSecKey>]
    class CreateInterconnectOutput < Struct.new(
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
      :aws_logical_device_id,
      :has_logical_redundancy,
      :tags,
      :provider_name,
      :mac_sec_capable,
      :port_encryption_status,
      :encryption_mode,
      :mac_sec_keys,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute interconnect_name
    #   <p>The name of the interconnect.</p>
    #   @return [String]
    # @!attribute bandwidth
    #   <p>The port bandwidth, in Gbps. The possible values are 1, 10, and 100.</p>
    #   @return [String]
    # @!attribute location
    #   <p>The location of the interconnect.</p>
    #   @return [String]
    # @!attribute lag_id
    #   <p>The ID of the LAG.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to associate with the interconnect.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute provider_name
    #   <p>The name of the service provider associated with the interconnect.</p>
    #   @return [String]
    # @!attribute request_mac_sec
    #   <p>Indicates whether you want the interconnect to support MAC Security (MACsec).</p>
    #   @return [Boolean]
    class CreateInterconnectRequest < Struct.new(
      :interconnect_name,
      :bandwidth,
      :location,
      :lag_id,
      :tags,
      :provider_name,
      :request_mac_sec,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a link aggregation group (LAG).</p>
    # @!attribute connections_bandwidth
    #   <p>The individual bandwidth of the physical connections bundled by the LAG. The possible
    #         values are 1Gbps, 10Gbps, 100Gbps, or 400 Gbps.. </p>
    #   @return [String]
    # @!attribute number_of_connections
    #   <p>The number of physical dedicated connections initially provisioned and bundled by the LAG.
    #         You can have a maximum of four connections when the port speed is 1 Gbps or 10 Gbps, or two
    #         when the port speed is 100 Gbps or 400 Gbps.</p>
    #   @return [Integer]
    # @!attribute lag_id
    #   <p>The ID of the LAG.</p>
    #   @return [String]
    # @!attribute owner_account
    #   <p>The ID of the Amazon Web Services account that owns the LAG.</p>
    #   @return [String]
    # @!attribute lag_name
    #   <p>The name of the LAG.</p>
    #   @return [String]
    # @!attribute lag_state
    #   <p>The state of the LAG. The following are the possible values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>requested</code>: The initial state of a LAG. The LAG stays in the
    #                   requested state until the Letter of Authorization (LOA) is available.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>pending</code>: The LAG has been approved and is being initialized.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>available</code>: The network link is established and the LAG is ready for use.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>down</code>: The network link is down.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleting</code>: The LAG is being deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleted</code>: The LAG is deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>unknown</code>: The state of the LAG is not available.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute location
    #   <p>The location of the LAG.</p>
    #   @return [String]
    # @!attribute region
    #   <p>The Amazon Web Services Region where the connection is located.</p>
    #   @return [String]
    # @!attribute minimum_links
    #   <p>The minimum number of physical dedicated connections that must be operational for the LAG itself to be operational.</p>
    #   @return [Integer]
    # @!attribute aws_device
    #   <p>The Direct Connect endpoint that hosts the LAG.</p>
    #   @return [String]
    # @!attribute aws_device_v2
    #   <p>The Direct Connect endpoint that hosts the LAG.</p>
    #   @return [String]
    # @!attribute aws_logical_device_id
    #   <p>The Direct Connect endpoint that terminates the logical connection. This device might be
    #         different than the device that terminates the physical connection.</p>
    #   @return [String]
    # @!attribute connections
    #   <p>The connections bundled by the LAG.</p>
    #   @return [Array<Types::Connection>]
    # @!attribute allows_hosted_connections
    #   <p>Indicates whether the LAG can host other connections.</p>
    #   @return [Boolean]
    # @!attribute jumbo_frame_capable
    #   <p>Indicates whether jumbo frames are supported.</p>
    #   @return [Boolean]
    # @!attribute has_logical_redundancy
    #   <p>Indicates whether the LAG supports a secondary BGP peer in the same address family (IPv4/IPv6).</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags associated with the LAG.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute provider_name
    #   <p>The name of the service provider associated with the LAG.</p>
    #   @return [String]
    # @!attribute mac_sec_capable
    #   <p>Indicates whether the LAG supports MAC Security (MACsec).</p>
    #   @return [Boolean]
    # @!attribute encryption_mode
    #   <p>The LAG MAC Security (MACsec) encryption mode.</p>
    #            <p>The valid values are <code>no_encrypt</code>, <code>should_encrypt</code>, and <code>must_encrypt</code>.</p>
    #   @return [String]
    # @!attribute mac_sec_keys
    #   <p>The MAC Security (MACsec) security keys associated with the LAG.</p>
    #   @return [Array<Types::MacSecKey>]
    class CreateLagOutput < Struct.new(
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
      :aws_logical_device_id,
      :connections,
      :allows_hosted_connections,
      :jumbo_frame_capable,
      :has_logical_redundancy,
      :tags,
      :provider_name,
      :mac_sec_capable,
      :encryption_mode,
      :mac_sec_keys,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:number_of_connections] = 0 unless options.key?(:number_of_connections)
        options[:minimum_links] = 0 unless options.key?(:minimum_links)
        options[:allows_hosted_connections] = false unless options.key?(:allows_hosted_connections)
        super
      end
    end

    # @!attribute number_of_connections
    #   <p>The number of physical dedicated connections initially provisioned and bundled by the LAG.
    #         You can have a maximum of four connections when the port speed is 1Gbps or 10Gbps, or two when
    #         the port speed is 100Gbps or 400Gbps.</p>
    #   @return [Integer]
    # @!attribute location
    #   <p>The location for the LAG.</p>
    #   @return [String]
    # @!attribute connections_bandwidth
    #   <p>The bandwidth of the individual physical dedicated connections bundled by the LAG. The
    #         possible values are  1Gbps,10Gbps, 100Gbps, and 400Gbps. </p>
    #   @return [String]
    # @!attribute lag_name
    #   <p>The name of the LAG.</p>
    #   @return [String]
    # @!attribute connection_id
    #   <p>The ID of an existing dedicated connection to migrate to the LAG.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to associate with the LAG.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute child_connection_tags
    #   <p>The tags to associate with the automtically created LAGs.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute provider_name
    #   <p>The name of the service provider associated with the LAG.</p>
    #   @return [String]
    # @!attribute request_mac_sec
    #   <p>Indicates whether the connection will support MAC Security (MACsec).</p>
    #            <note>
    #               <p>All connections in the LAG must be capable of  supporting MAC Security (MACsec). For information about MAC Security (MACsec) prerequisties, see  <a href="https://docs.aws.amazon.com/directconnect/latest/UserGuide/direct-connect-mac-sec-getting-started.html#mac-sec-prerequisites">MACsec prerequisties</a> in the <i>Direct Connect User Guide</i>.</p>
    #            </note>
    #   @return [Boolean]
    class CreateLagRequest < Struct.new(
      :number_of_connections,
      :location,
      :connections_bandwidth,
      :lag_name,
      :connection_id,
      :tags,
      :child_connection_tags,
      :provider_name,
      :request_mac_sec,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a virtual interface.</p>
    # @!attribute owner_account
    #   <p>The ID of the Amazon Web Services account that owns the virtual interface.</p>
    #   @return [String]
    # @!attribute virtual_interface_id
    #   <p>The ID of the virtual interface.</p>
    #   @return [String]
    # @!attribute location
    #   <p>The location of the connection.</p>
    #   @return [String]
    # @!attribute connection_id
    #   <p>The ID of the connection.</p>
    #   @return [String]
    # @!attribute virtual_interface_type
    #   <p>The type of virtual interface. The possible values are <code>private</code>, <code>public</code> and <code>transit</code>.</p>
    #   @return [String]
    # @!attribute virtual_interface_name
    #   <p>The name of the virtual interface assigned by the customer network. The name has a maximum of 100 characters. The following are valid characters: a-z, 0-9 and a hyphen (-).</p>
    #   @return [String]
    # @!attribute vlan
    #   <p>The ID of the VLAN.</p>
    #   @return [Integer]
    # @!attribute asn
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
    #   @return [Integer]
    # @!attribute asn_long
    #   <p>The long ASN for the virtual interface. The valid range is from 1 to 4294967294 for BGP configuration.</p>
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
    #   @return [Integer]
    # @!attribute amazon_side_asn
    #   <p>The autonomous system number (AS) for the Amazon side of the connection.</p>
    #   @return [Integer]
    # @!attribute auth_key
    #   <p>The authentication key for BGP configuration. This string has a minimum length of 6 characters and and a maximun lenth of 80 characters.</p>
    #   @return [String]
    # @!attribute amazon_address
    #   <p>The IP address assigned to the Amazon interface.</p>
    #   @return [String]
    # @!attribute customer_address
    #   <p>The IP address assigned to the customer interface.</p>
    #   @return [String]
    # @!attribute address_family
    #   <p>The address family for the BGP peer.</p>
    #   @return [String]
    # @!attribute virtual_interface_state
    #   <p>The state of the virtual interface. The following are the possible values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>confirming</code>: The creation of the virtual interface is pending confirmation from the virtual interface owner. If the owner of the virtual interface is different from the owner of the connection on which it is provisioned, then the virtual interface will remain in this state until it is confirmed by the virtual interface owner.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>verifying</code>: This state only applies to public virtual interfaces. Each public virtual interface needs validation before the virtual interface can be created.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>pending</code>: A virtual interface is in this state from the time that it is created until the virtual interface is ready to forward traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>available</code>: A virtual interface that is able to forward traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>down</code>: A virtual interface that is BGP down.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>testing</code>: A virtual interface is in this state immediately after calling <a>StartBgpFailoverTest</a> and remains in this state during the duration of the test.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleting</code>: A virtual interface is in this state immediately after calling <a>DeleteVirtualInterface</a> until it can no longer forward traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleted</code>: A virtual interface that cannot forward traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>rejected</code>: The virtual interface owner has declined creation of the virtual interface. If a virtual interface in the <code>Confirming</code> state is deleted by the virtual interface owner, the virtual interface enters the <code>Rejected</code> state.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>unknown</code>: The state of the virtual interface is not available.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute customer_router_config
    #   <p>The customer router configuration.</p>
    #   @return [String]
    # @!attribute mtu
    #   <p>The maximum transmission unit (MTU), in bytes. The supported values are 1500 and 8500. The default value is 1500</p>
    #   @return [Integer]
    # @!attribute jumbo_frame_capable
    #   <p>Indicates whether jumbo frames are supported.</p>
    #   @return [Boolean]
    # @!attribute virtual_gateway_id
    #   <p>The ID of the virtual private gateway. Applies only to private virtual interfaces.</p>
    #   @return [String]
    # @!attribute direct_connect_gateway_id
    #   <p>The ID of the Direct Connect gateway.</p>
    #   @return [String]
    # @!attribute route_filter_prefixes
    #   <p>The routes to be advertised to the Amazon Web Services network in this Region. Applies to public virtual interfaces.</p>
    #   @return [Array<Types::RouteFilterPrefix>]
    # @!attribute bgp_peers
    #   <p>The BGP peers configured on this virtual interface.</p>
    #   @return [Array<Types::BGPPeer>]
    # @!attribute region
    #   <p>The Amazon Web Services Region where the virtual interface is located.</p>
    #   @return [String]
    # @!attribute aws_device_v2
    #   <p>The Direct Connect endpoint that terminates the physical connection.</p>
    #   @return [String]
    # @!attribute aws_logical_device_id
    #   <p>The Direct Connect endpoint that terminates the logical connection. This device might be
    #         different than the device that terminates the physical connection.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags associated with the virtual interface.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute site_link_enabled
    #   <p>Indicates whether SiteLink is enabled.</p>
    #   @return [Boolean]
    class CreatePrivateVirtualInterfaceOutput < Struct.new(
      :owner_account,
      :virtual_interface_id,
      :location,
      :connection_id,
      :virtual_interface_type,
      :virtual_interface_name,
      :vlan,
      :asn,
      :asn_long,
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
      :aws_logical_device_id,
      :tags,
      :site_link_enabled,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:vlan] = 0 unless options.key?(:vlan)
        options[:asn] = 0 unless options.key?(:asn)
        super
      end
    end

    # @!attribute connection_id
    #   <p>The ID of the connection.</p>
    #   @return [String]
    # @!attribute new_private_virtual_interface
    #   <p>Information about the private virtual interface.</p>
    #   @return [Types::NewPrivateVirtualInterface]
    class CreatePrivateVirtualInterfaceRequest < Struct.new(
      :connection_id,
      :new_private_virtual_interface,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a virtual interface.</p>
    # @!attribute owner_account
    #   <p>The ID of the Amazon Web Services account that owns the virtual interface.</p>
    #   @return [String]
    # @!attribute virtual_interface_id
    #   <p>The ID of the virtual interface.</p>
    #   @return [String]
    # @!attribute location
    #   <p>The location of the connection.</p>
    #   @return [String]
    # @!attribute connection_id
    #   <p>The ID of the connection.</p>
    #   @return [String]
    # @!attribute virtual_interface_type
    #   <p>The type of virtual interface. The possible values are <code>private</code>, <code>public</code> and <code>transit</code>.</p>
    #   @return [String]
    # @!attribute virtual_interface_name
    #   <p>The name of the virtual interface assigned by the customer network. The name has a maximum of 100 characters. The following are valid characters: a-z, 0-9 and a hyphen (-).</p>
    #   @return [String]
    # @!attribute vlan
    #   <p>The ID of the VLAN.</p>
    #   @return [Integer]
    # @!attribute asn
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
    #   @return [Integer]
    # @!attribute asn_long
    #   <p>The long ASN for the virtual interface. The valid range is from 1 to 4294967294 for BGP configuration.</p>
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
    #   @return [Integer]
    # @!attribute amazon_side_asn
    #   <p>The autonomous system number (AS) for the Amazon side of the connection.</p>
    #   @return [Integer]
    # @!attribute auth_key
    #   <p>The authentication key for BGP configuration. This string has a minimum length of 6 characters and and a maximun lenth of 80 characters.</p>
    #   @return [String]
    # @!attribute amazon_address
    #   <p>The IP address assigned to the Amazon interface.</p>
    #   @return [String]
    # @!attribute customer_address
    #   <p>The IP address assigned to the customer interface.</p>
    #   @return [String]
    # @!attribute address_family
    #   <p>The address family for the BGP peer.</p>
    #   @return [String]
    # @!attribute virtual_interface_state
    #   <p>The state of the virtual interface. The following are the possible values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>confirming</code>: The creation of the virtual interface is pending confirmation from the virtual interface owner. If the owner of the virtual interface is different from the owner of the connection on which it is provisioned, then the virtual interface will remain in this state until it is confirmed by the virtual interface owner.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>verifying</code>: This state only applies to public virtual interfaces. Each public virtual interface needs validation before the virtual interface can be created.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>pending</code>: A virtual interface is in this state from the time that it is created until the virtual interface is ready to forward traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>available</code>: A virtual interface that is able to forward traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>down</code>: A virtual interface that is BGP down.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>testing</code>: A virtual interface is in this state immediately after calling <a>StartBgpFailoverTest</a> and remains in this state during the duration of the test.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleting</code>: A virtual interface is in this state immediately after calling <a>DeleteVirtualInterface</a> until it can no longer forward traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleted</code>: A virtual interface that cannot forward traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>rejected</code>: The virtual interface owner has declined creation of the virtual interface. If a virtual interface in the <code>Confirming</code> state is deleted by the virtual interface owner, the virtual interface enters the <code>Rejected</code> state.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>unknown</code>: The state of the virtual interface is not available.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute customer_router_config
    #   <p>The customer router configuration.</p>
    #   @return [String]
    # @!attribute mtu
    #   <p>The maximum transmission unit (MTU), in bytes. The supported values are 1500 and 8500. The default value is 1500</p>
    #   @return [Integer]
    # @!attribute jumbo_frame_capable
    #   <p>Indicates whether jumbo frames are supported.</p>
    #   @return [Boolean]
    # @!attribute virtual_gateway_id
    #   <p>The ID of the virtual private gateway. Applies only to private virtual interfaces.</p>
    #   @return [String]
    # @!attribute direct_connect_gateway_id
    #   <p>The ID of the Direct Connect gateway.</p>
    #   @return [String]
    # @!attribute route_filter_prefixes
    #   <p>The routes to be advertised to the Amazon Web Services network in this Region. Applies to public virtual interfaces.</p>
    #   @return [Array<Types::RouteFilterPrefix>]
    # @!attribute bgp_peers
    #   <p>The BGP peers configured on this virtual interface.</p>
    #   @return [Array<Types::BGPPeer>]
    # @!attribute region
    #   <p>The Amazon Web Services Region where the virtual interface is located.</p>
    #   @return [String]
    # @!attribute aws_device_v2
    #   <p>The Direct Connect endpoint that terminates the physical connection.</p>
    #   @return [String]
    # @!attribute aws_logical_device_id
    #   <p>The Direct Connect endpoint that terminates the logical connection. This device might be
    #         different than the device that terminates the physical connection.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags associated with the virtual interface.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute site_link_enabled
    #   <p>Indicates whether SiteLink is enabled.</p>
    #   @return [Boolean]
    class CreatePublicVirtualInterfaceOutput < Struct.new(
      :owner_account,
      :virtual_interface_id,
      :location,
      :connection_id,
      :virtual_interface_type,
      :virtual_interface_name,
      :vlan,
      :asn,
      :asn_long,
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
      :aws_logical_device_id,
      :tags,
      :site_link_enabled,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:vlan] = 0 unless options.key?(:vlan)
        options[:asn] = 0 unless options.key?(:asn)
        super
      end
    end

    # @!attribute connection_id
    #   <p>The ID of the connection.</p>
    #   @return [String]
    # @!attribute new_public_virtual_interface
    #   <p>Information about the public virtual interface.</p>
    #   @return [Types::NewPublicVirtualInterface]
    class CreatePublicVirtualInterfaceRequest < Struct.new(
      :connection_id,
      :new_public_virtual_interface,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute connection_id
    #   <p>The ID of the connection.</p>
    #   @return [String]
    # @!attribute new_transit_virtual_interface
    #   <p>Information about the transit virtual interface.</p>
    #   @return [Types::NewTransitVirtualInterface]
    class CreateTransitVirtualInterfaceRequest < Struct.new(
      :connection_id,
      :new_transit_virtual_interface,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute virtual_interface
    #   <p>Information about a virtual interface.</p>
    #   @return [Types::VirtualInterface]
    class CreateTransitVirtualInterfaceResult < Struct.new(
      :virtual_interface,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The name and status of a customer agreement. </p>
    # @!attribute agreement_name
    #   <p>The name of the agreement.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the customer agreement. This will be either <code>signed</code> or <code>unsigned</code>
    #            </p>
    #   @return [String]
    class CustomerAgreement < Struct.new(
      :agreement_name,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute virtual_interface_id
    #   <p>The ID of the virtual interface.</p>
    #   @return [String]
    # @!attribute asn
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
    #   @return [Integer]
    # @!attribute asn_long
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
    #   @return [Integer]
    # @!attribute customer_address
    #   <p>The IP address assigned to the customer interface.</p>
    #   @return [String]
    # @!attribute bgp_peer_id
    #   <p>The ID of the BGP peer.</p>
    #   @return [String]
    class DeleteBGPPeerRequest < Struct.new(
      :virtual_interface_id,
      :asn,
      :asn_long,
      :customer_address,
      :bgp_peer_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute virtual_interface
    #   <p>The virtual interface.</p>
    #   @return [Types::VirtualInterface]
    class DeleteBGPPeerResponse < Struct.new(
      :virtual_interface,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about an Direct Connect connection.</p>
    # @!attribute owner_account
    #   <p>The ID of the Amazon Web Services account that owns the connection.</p>
    #   @return [String]
    # @!attribute connection_id
    #   <p>The ID of the connection.</p>
    #   @return [String]
    # @!attribute connection_name
    #   <p>The name of the connection.</p>
    #   @return [String]
    # @!attribute connection_state
    #   <p>The state of the connection. The following are the possible values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ordering</code>: The initial state of a hosted connection provisioned on an interconnect. The connection stays in the ordering state until the owner of the hosted connection confirms or declines the connection order.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>requested</code>: The initial state of a standard connection. The connection stays in the requested state until the Letter of Authorization (LOA) is sent to the customer.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>pending</code>: The connection has been approved and is being initialized.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>available</code>: The network link is up and the connection is ready for use.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>down</code>: The network link is down.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleting</code>: The connection is being deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleted</code>: The connection has been deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>rejected</code>: A hosted connection in the <code>ordering</code> state enters the <code>rejected</code> state if it is deleted by the customer.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>unknown</code>: The state of the connection is not available.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute region
    #   <p>The Amazon Web Services Region where the connection is located.</p>
    #   @return [String]
    # @!attribute location
    #   <p>The location of the connection.</p>
    #   @return [String]
    # @!attribute bandwidth
    #   <p>The bandwidth of the connection.</p>
    #   @return [String]
    # @!attribute vlan
    #   <p>The ID of the VLAN.</p>
    #   @return [Integer]
    # @!attribute partner_name
    #   <p>The name of the Direct Connect service provider associated with the connection.</p>
    #   @return [String]
    # @!attribute loa_issue_time
    #   <p>The time of the most recent call to <a>DescribeLoa</a> for this connection.</p>
    #   @return [Time]
    # @!attribute lag_id
    #   <p>The ID of the LAG.</p>
    #   @return [String]
    # @!attribute aws_device
    #   <p>The Direct Connect endpoint on which the physical connection terminates.</p>
    #   @return [String]
    # @!attribute jumbo_frame_capable
    #   <p>Indicates whether jumbo frames are supported.</p>
    #   @return [Boolean]
    # @!attribute aws_device_v2
    #   <p>The Direct Connect endpoint that terminates the physical connection.</p>
    #   @return [String]
    # @!attribute aws_logical_device_id
    #   <p>The Direct Connect endpoint that terminates the logical connection. This device might be
    #         different than the device that terminates the physical connection.</p>
    #   @return [String]
    # @!attribute has_logical_redundancy
    #   <p>Indicates whether the connection supports a secondary BGP peer in the same address family (IPv4/IPv6).</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags associated with the connection.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute provider_name
    #   <p>The name of the service provider associated with the connection.</p>
    #   @return [String]
    # @!attribute mac_sec_capable
    #   <p>Indicates whether the connection supports MAC Security (MACsec).</p>
    #   @return [Boolean]
    # @!attribute port_encryption_status
    #   <p>The MAC Security (MACsec) port link status of the connection.</p>
    #            <p>The valid values are <code>Encryption Up</code>, which means that there is an active Connection Key Name, or <code>Encryption Down</code>.</p>
    #   @return [String]
    # @!attribute encryption_mode
    #   <p>The MAC Security (MACsec) connection encryption mode.</p>
    #            <p>The valid values are <code>no_encrypt</code>, <code>should_encrypt</code>, and <code>must_encrypt</code>.</p>
    #   @return [String]
    # @!attribute mac_sec_keys
    #   <p>The MAC Security (MACsec) security keys associated with the connection.</p>
    #   @return [Array<Types::MacSecKey>]
    # @!attribute partner_interconnect_mac_sec_capable
    #   <p>Indicates whether the interconnect hosting this connection supports MAC Security (MACsec).</p>
    #   @return [Boolean]
    class DeleteConnectionOutput < Struct.new(
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
      :aws_logical_device_id,
      :has_logical_redundancy,
      :tags,
      :provider_name,
      :mac_sec_capable,
      :port_encryption_status,
      :encryption_mode,
      :mac_sec_keys,
      :partner_interconnect_mac_sec_capable,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:vlan] = 0 unless options.key?(:vlan)
        super
      end
    end

    # @!attribute connection_id
    #   <p>The ID of the connection.</p>
    #   @return [String]
    class DeleteConnectionRequest < Struct.new(
      :connection_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute proposal_id
    #   <p>The ID of the proposal.</p>
    #   @return [String]
    class DeleteDirectConnectGatewayAssociationProposalRequest < Struct.new(
      :proposal_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute direct_connect_gateway_association_proposal
    #   <p>The ID of the associated gateway.</p>
    #   @return [Types::DirectConnectGatewayAssociationProposal]
    class DeleteDirectConnectGatewayAssociationProposalResult < Struct.new(
      :direct_connect_gateway_association_proposal,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute association_id
    #   <p>The ID of the Direct Connect gateway association.</p>
    #   @return [String]
    # @!attribute direct_connect_gateway_id
    #   <p>The ID of the Direct Connect gateway.</p>
    #   @return [String]
    # @!attribute virtual_gateway_id
    #   <p>The ID of the virtual private gateway.</p>
    #   @return [String]
    class DeleteDirectConnectGatewayAssociationRequest < Struct.new(
      :association_id,
      :direct_connect_gateway_id,
      :virtual_gateway_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute direct_connect_gateway_association
    #   <p>Information about the deleted association.</p>
    #   @return [Types::DirectConnectGatewayAssociation]
    class DeleteDirectConnectGatewayAssociationResult < Struct.new(
      :direct_connect_gateway_association,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute direct_connect_gateway_id
    #   <p>The ID of the Direct Connect gateway.</p>
    #   @return [String]
    class DeleteDirectConnectGatewayRequest < Struct.new(
      :direct_connect_gateway_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute direct_connect_gateway
    #   <p>The Direct Connect gateway.</p>
    #   @return [Types::DirectConnectGateway]
    class DeleteDirectConnectGatewayResult < Struct.new(
      :direct_connect_gateway,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute interconnect_id
    #   <p>The ID of the interconnect.</p>
    #   @return [String]
    class DeleteInterconnectRequest < Struct.new(
      :interconnect_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute interconnect_state
    #   <p>The state of the interconnect. The following are the possible values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>requested</code>: The initial state of an interconnect. The interconnect stays in the
    #           requested state until the Letter of Authorization (LOA) is sent to the customer.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>pending</code>: The interconnect is approved, and is being initialized.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>available</code>: The network link is up, and the interconnect is ready for use.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>down</code>: The network link is down.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleting</code>: The interconnect is being deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleted</code>: The interconnect is deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>unknown</code>: The state of the interconnect is not available.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class DeleteInterconnectResponse < Struct.new(
      :interconnect_state,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a link aggregation group (LAG).</p>
    # @!attribute connections_bandwidth
    #   <p>The individual bandwidth of the physical connections bundled by the LAG. The possible
    #         values are 1Gbps, 10Gbps, 100Gbps, or 400 Gbps.. </p>
    #   @return [String]
    # @!attribute number_of_connections
    #   <p>The number of physical dedicated connections initially provisioned and bundled by the LAG.
    #         You can have a maximum of four connections when the port speed is 1 Gbps or 10 Gbps, or two
    #         when the port speed is 100 Gbps or 400 Gbps.</p>
    #   @return [Integer]
    # @!attribute lag_id
    #   <p>The ID of the LAG.</p>
    #   @return [String]
    # @!attribute owner_account
    #   <p>The ID of the Amazon Web Services account that owns the LAG.</p>
    #   @return [String]
    # @!attribute lag_name
    #   <p>The name of the LAG.</p>
    #   @return [String]
    # @!attribute lag_state
    #   <p>The state of the LAG. The following are the possible values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>requested</code>: The initial state of a LAG. The LAG stays in the
    #                   requested state until the Letter of Authorization (LOA) is available.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>pending</code>: The LAG has been approved and is being initialized.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>available</code>: The network link is established and the LAG is ready for use.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>down</code>: The network link is down.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleting</code>: The LAG is being deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleted</code>: The LAG is deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>unknown</code>: The state of the LAG is not available.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute location
    #   <p>The location of the LAG.</p>
    #   @return [String]
    # @!attribute region
    #   <p>The Amazon Web Services Region where the connection is located.</p>
    #   @return [String]
    # @!attribute minimum_links
    #   <p>The minimum number of physical dedicated connections that must be operational for the LAG itself to be operational.</p>
    #   @return [Integer]
    # @!attribute aws_device
    #   <p>The Direct Connect endpoint that hosts the LAG.</p>
    #   @return [String]
    # @!attribute aws_device_v2
    #   <p>The Direct Connect endpoint that hosts the LAG.</p>
    #   @return [String]
    # @!attribute aws_logical_device_id
    #   <p>The Direct Connect endpoint that terminates the logical connection. This device might be
    #         different than the device that terminates the physical connection.</p>
    #   @return [String]
    # @!attribute connections
    #   <p>The connections bundled by the LAG.</p>
    #   @return [Array<Types::Connection>]
    # @!attribute allows_hosted_connections
    #   <p>Indicates whether the LAG can host other connections.</p>
    #   @return [Boolean]
    # @!attribute jumbo_frame_capable
    #   <p>Indicates whether jumbo frames are supported.</p>
    #   @return [Boolean]
    # @!attribute has_logical_redundancy
    #   <p>Indicates whether the LAG supports a secondary BGP peer in the same address family (IPv4/IPv6).</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags associated with the LAG.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute provider_name
    #   <p>The name of the service provider associated with the LAG.</p>
    #   @return [String]
    # @!attribute mac_sec_capable
    #   <p>Indicates whether the LAG supports MAC Security (MACsec).</p>
    #   @return [Boolean]
    # @!attribute encryption_mode
    #   <p>The LAG MAC Security (MACsec) encryption mode.</p>
    #            <p>The valid values are <code>no_encrypt</code>, <code>should_encrypt</code>, and <code>must_encrypt</code>.</p>
    #   @return [String]
    # @!attribute mac_sec_keys
    #   <p>The MAC Security (MACsec) security keys associated with the LAG.</p>
    #   @return [Array<Types::MacSecKey>]
    class DeleteLagOutput < Struct.new(
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
      :aws_logical_device_id,
      :connections,
      :allows_hosted_connections,
      :jumbo_frame_capable,
      :has_logical_redundancy,
      :tags,
      :provider_name,
      :mac_sec_capable,
      :encryption_mode,
      :mac_sec_keys,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:number_of_connections] = 0 unless options.key?(:number_of_connections)
        options[:minimum_links] = 0 unless options.key?(:minimum_links)
        options[:allows_hosted_connections] = false unless options.key?(:allows_hosted_connections)
        super
      end
    end

    # @!attribute lag_id
    #   <p>The ID of the LAG.</p>
    #   @return [String]
    class DeleteLagRequest < Struct.new(
      :lag_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute virtual_interface_id
    #   <p>The ID of the virtual interface.</p>
    #   @return [String]
    class DeleteVirtualInterfaceRequest < Struct.new(
      :virtual_interface_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute virtual_interface_state
    #   <p>The state of the virtual interface. The following are the possible values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>confirming</code>: The creation of the virtual interface is pending confirmation from the virtual interface owner. If the owner of the virtual interface is different from the owner of the connection on which it is provisioned, then the virtual interface will remain in this state until it is confirmed by the virtual interface owner.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>verifying</code>: This state only applies to public virtual interfaces. Each public virtual interface needs validation before the virtual interface can be created.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>pending</code>: A virtual interface is in this state from the time that it is created until the virtual interface is ready to forward traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>available</code>: A virtual interface that is able to forward traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>down</code>: A virtual interface that is BGP down.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>testing</code>: A virtual interface is in this state immediately after calling <a>StartBgpFailoverTest</a> and remains in this state during the duration of the test.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleting</code>: A virtual interface is in this state immediately after calling <a>DeleteVirtualInterface</a> until it can no longer forward traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleted</code>: A virtual interface that cannot forward traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>rejected</code>: The virtual interface owner has declined creation of the virtual interface. If a virtual interface in the <code>Confirming</code> state is deleted by the virtual interface owner, the virtual interface enters the <code>Rejected</code> state.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>unknown</code>: The state of the virtual interface is not available.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class DeleteVirtualInterfaceResponse < Struct.new(
      :virtual_interface_state,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute connection_id
    #   <p>The ID of the connection.</p>
    #   @return [String]
    # @!attribute provider_name
    #   <p>The name of the APN partner or service provider who establishes connectivity on your behalf. If you specify this parameter, 
    #         the LOA-CFA lists the provider name alongside your company name as the requester of the cross connect.</p>
    #   @return [String]
    # @!attribute loa_content_type
    #   <p>The standard media type for the LOA-CFA document. The only supported value is application/pdf.</p>
    #   @return [String]
    class DescribeConnectionLoaRequest < Struct.new(
      :connection_id,
      :provider_name,
      :loa_content_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute loa
    #   <p>The Letter of Authorization - Connecting Facility Assignment (LOA-CFA).</p>
    #   @return [Types::Loa]
    class DescribeConnectionLoaResponse < Struct.new(
      :loa,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute connections
    #   <p>The connections.</p>
    #   @return [Array<Types::Connection>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>
    #   @return [String]
    class DescribeConnectionsOnInterconnectOutput < Struct.new(
      :connections,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute interconnect_id
    #   <p>The ID of the interconnect.</p>
    #   @return [String]
    class DescribeConnectionsOnInterconnectRequest < Struct.new(
      :interconnect_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute connections
    #   <p>The connections.</p>
    #   @return [Array<Types::Connection>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>
    #   @return [String]
    class DescribeConnectionsOutput < Struct.new(
      :connections,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute connection_id
    #   <p>The ID of the connection.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return with a single call.
    #   	To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    #            <p>If <code>MaxResults</code> is given a value larger than 100, only 100 results are
    #         returned.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    class DescribeConnectionsRequest < Struct.new(
      :connection_id,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute agreements
    #   <p>The list of customer agreements.</p>
    #   @return [Array<Types::CustomerAgreement>]
    # @!attribute nni_partner_type
    #   <p>The type of network-to-network interface (NNI) partner. The partner type will be one of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>V1: This partner can only allocate 50Mbps, 100Mbps, 200Mbps, 300Mbps, 400Mbps, or 500Mbps subgigabit connections.</p>
    #               </li>
    #               <li>
    #                  <p>V2: This partner can only allocate 1GB, 2GB, 5GB, or 10GB hosted connections.</p>
    #               </li>
    #               <li>
    #                  <p>nonPartner: The customer is not a partner.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class DescribeCustomerMetadataResponse < Struct.new(
      :agreements,
      :nni_partner_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute direct_connect_gateway_id
    #   <p>The ID of the Direct Connect gateway.</p>
    #   @return [String]
    # @!attribute proposal_id
    #   <p>The ID of the proposal.</p>
    #   @return [String]
    # @!attribute associated_gateway_id
    #   <p>The ID of the associated gateway.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return with a single call.
    #   	To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    #            <p>If <code>MaxResults</code> is given a value larger than 100, only 100 results are
    #         returned.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    class DescribeDirectConnectGatewayAssociationProposalsRequest < Struct.new(
      :direct_connect_gateway_id,
      :proposal_id,
      :associated_gateway_id,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute direct_connect_gateway_association_proposals
    #   <p>Describes the Direct Connect gateway association proposals.</p>
    #   @return [Array<Types::DirectConnectGatewayAssociationProposal>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>
    #   @return [String]
    class DescribeDirectConnectGatewayAssociationProposalsResult < Struct.new(
      :direct_connect_gateway_association_proposals,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute association_id
    #   <p>The ID of the Direct Connect gateway association.</p>
    #   @return [String]
    # @!attribute associated_gateway_id
    #   <p>The ID of the associated gateway.</p>
    #   @return [String]
    # @!attribute direct_connect_gateway_id
    #   <p>The ID of the Direct Connect gateway.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return with a single call.
    #   	To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    #            <p>If <code>MaxResults</code> is given a value larger than 100, only 100 results are
    #         returned.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token provided in the previous call to retrieve the next page.</p>
    #   @return [String]
    # @!attribute virtual_gateway_id
    #   <p>The ID of the virtual private gateway or transit gateway.</p>
    #   @return [String]
    class DescribeDirectConnectGatewayAssociationsRequest < Struct.new(
      :association_id,
      :associated_gateway_id,
      :direct_connect_gateway_id,
      :max_results,
      :next_token,
      :virtual_gateway_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute direct_connect_gateway_associations
    #   <p>Information about the associations.</p>
    #   @return [Array<Types::DirectConnectGatewayAssociation>]
    # @!attribute next_token
    #   <p>The token to retrieve the next page.</p>
    #   @return [String]
    class DescribeDirectConnectGatewayAssociationsResult < Struct.new(
      :direct_connect_gateway_associations,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute direct_connect_gateway_id
    #   <p>The ID of the Direct Connect gateway.</p>
    #   @return [String]
    # @!attribute virtual_interface_id
    #   <p>The ID of the virtual interface.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return with a single call.
    #   	To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    #            <p>If <code>MaxResults</code> is given a value larger than 100, only 100 results are
    #         returned.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token provided in the previous call to retrieve the next page.</p>
    #   @return [String]
    class DescribeDirectConnectGatewayAttachmentsRequest < Struct.new(
      :direct_connect_gateway_id,
      :virtual_interface_id,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute direct_connect_gateway_attachments
    #   <p>The attachments.</p>
    #   @return [Array<Types::DirectConnectGatewayAttachment>]
    # @!attribute next_token
    #   <p>The token to retrieve the next page.</p>
    #   @return [String]
    class DescribeDirectConnectGatewayAttachmentsResult < Struct.new(
      :direct_connect_gateway_attachments,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute direct_connect_gateway_id
    #   <p>The ID of the Direct Connect gateway.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return with a single call.
    #   	To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    #            <p>If <code>MaxResults</code> is given a value larger than 100, only 100 results are
    #         returned.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token provided in the previous call to retrieve the next page.</p>
    #   @return [String]
    class DescribeDirectConnectGatewaysRequest < Struct.new(
      :direct_connect_gateway_id,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute direct_connect_gateways
    #   <p>The Direct Connect gateways.</p>
    #   @return [Array<Types::DirectConnectGateway>]
    # @!attribute next_token
    #   <p>The token to retrieve the next page.</p>
    #   @return [String]
    class DescribeDirectConnectGatewaysResult < Struct.new(
      :direct_connect_gateways,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute connections
    #   <p>The connections.</p>
    #   @return [Array<Types::Connection>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>
    #   @return [String]
    class DescribeHostedConnectionsOutput < Struct.new(
      :connections,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute connection_id
    #   <p>The ID of the interconnect or LAG.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return with a single call.
    #   	To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    #            <p>If <code>MaxResults</code> is given a value larger than 100, only 100 results are
    #         returned.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    class DescribeHostedConnectionsRequest < Struct.new(
      :connection_id,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute interconnect_id
    #   <p>The ID of the interconnect.</p>
    #   @return [String]
    # @!attribute provider_name
    #   <p>The name of the service provider who establishes connectivity on your behalf. If you supply this parameter, the LOA-CFA lists the provider name alongside your company name as the requester of the cross connect.</p>
    #   @return [String]
    # @!attribute loa_content_type
    #   <p>The standard media type for the LOA-CFA document. The only supported value is application/pdf.</p>
    #   @return [String]
    class DescribeInterconnectLoaRequest < Struct.new(
      :interconnect_id,
      :provider_name,
      :loa_content_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute loa
    #   <p>The Letter of Authorization - Connecting Facility Assignment (LOA-CFA).</p>
    #   @return [Types::Loa]
    class DescribeInterconnectLoaResponse < Struct.new(
      :loa,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute interconnects
    #   <p>The interconnects.</p>
    #   @return [Array<Types::Interconnect>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>
    #   @return [String]
    class DescribeInterconnectsOutput < Struct.new(
      :interconnects,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute interconnect_id
    #   <p>The ID of the interconnect.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return with a single call.
    #   	To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    #            <p>If <code>MaxResults</code> is given a value larger than 100, only 100 results are
    #         returned.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    class DescribeInterconnectsRequest < Struct.new(
      :interconnect_id,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute lags
    #   <p>The LAGs.</p>
    #   @return [Array<Types::Lag>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>
    #   @return [String]
    class DescribeLagsOutput < Struct.new(
      :lags,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute lag_id
    #   <p>The ID of the LAG.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return with a single call.
    #   	To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    #            <p>If <code>MaxResults</code> is given a value larger than 100, only 100 results are
    #         returned.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    class DescribeLagsRequest < Struct.new(
      :lag_id,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a Letter of Authorization - Connecting Facility Assignment (LOA-CFA) for a connection.</p>
    # @!attribute loa_content
    #   <p>The binary contents of the LOA-CFA document.</p>
    #   @return [String]
    # @!attribute loa_content_type
    #   <p>The standard media type for the LOA-CFA document. The only supported value is application/pdf.</p>
    #   @return [String]
    class DescribeLoaOutput < Struct.new(
      :loa_content,
      :loa_content_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute connection_id
    #   <p>The ID of a connection, LAG, or interconnect.</p>
    #   @return [String]
    # @!attribute provider_name
    #   <p>The name of the service provider who establishes connectivity on your behalf. If you specify this parameter, the 
    #         LOA-CFA lists the provider name alongside your company name as the requester of the cross connect.</p>
    #   @return [String]
    # @!attribute loa_content_type
    #   <p>The standard media type for the LOA-CFA document. The only supported value is application/pdf.</p>
    #   @return [String]
    class DescribeLoaRequest < Struct.new(
      :connection_id,
      :provider_name,
      :loa_content_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute locations
    #   <p>The locations.</p>
    #   @return [Array<Types::Location>]
    class DescribeLocationsOutput < Struct.new(
      :locations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides the details about a virtual interface's router.</p>
    # @!attribute virtual_interface_id
    #   <p>The ID of the virtual interface.</p>
    #   @return [String]
    # @!attribute router_type_identifier
    #   <p>Identifies the router by a combination of vendor, platform, and software version. For example, <code>CiscoSystemsInc-2900SeriesRouters-IOS124</code>.</p>
    #   @return [String]
    class DescribeRouterConfigurationRequest < Struct.new(
      :virtual_interface_id,
      :router_type_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute customer_router_config
    #   <p>The customer router configuration.</p>
    #   @return [String]
    # @!attribute router
    #   <p>The details about the router.</p>
    #   @return [Types::RouterType]
    # @!attribute virtual_interface_id
    #   <p>The ID assigned to the virtual interface.</p>
    #   @return [String]
    # @!attribute virtual_interface_name
    #   <p>Provides the details about a virtual interface's router.</p>
    #   @return [String]
    class DescribeRouterConfigurationResponse < Struct.new(
      :customer_router_config,
      :router,
      :virtual_interface_id,
      :virtual_interface_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arns
    #   <p>The Amazon Resource Names (ARNs) of the resources.</p>
    #   @return [Array<String>]
    class DescribeTagsRequest < Struct.new(
      :resource_arns,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_tags
    #   <p>Information about the tags.</p>
    #   @return [Array<Types::ResourceTag>]
    class DescribeTagsResponse < Struct.new(
      :resource_tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute virtual_gateways
    #   <p>The virtual private gateways.</p>
    #   @return [Array<Types::VirtualGateway>]
    class DescribeVirtualGatewaysOutput < Struct.new(
      :virtual_gateways,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute virtual_interfaces
    #   <p>The virtual interfaces</p>
    #   @return [Array<Types::VirtualInterface>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>
    #   @return [String]
    class DescribeVirtualInterfacesOutput < Struct.new(
      :virtual_interfaces,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute connection_id
    #   <p>The ID of the connection.</p>
    #   @return [String]
    # @!attribute virtual_interface_id
    #   <p>The ID of the virtual interface.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return with a single call.
    #   	To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    #            <p>If <code>MaxResults</code> is given a value larger than 100, only 100 results are
    #         returned.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    class DescribeVirtualInterfacesRequest < Struct.new(
      :connection_id,
      :virtual_interface_id,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>One or more parameters are not valid.</p>
    # @!attribute message
    #   @return [String]
    class DirectConnectClientException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a Direct Connect gateway, which enables you to connect virtual interfaces and virtual private gateway or transit gateways.</p>
    # @!attribute direct_connect_gateway_id
    #   <p>The ID of the Direct Connect gateway.</p>
    #   @return [String]
    # @!attribute direct_connect_gateway_name
    #   <p>The name of the Direct Connect gateway.</p>
    #   @return [String]
    # @!attribute amazon_side_asn
    #   <p>The autonomous system number (AS) for the Amazon side of the connection.</p>
    #   @return [Integer]
    # @!attribute owner_account
    #   <p>The ID of the Amazon Web Services account that owns the Direct Connect gateway.</p>
    #   @return [String]
    # @!attribute direct_connect_gateway_state
    #   <p>The state of the Direct Connect gateway. The following are the possible values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>pending</code>: The initial state after calling <a>CreateDirectConnectGateway</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>available</code>: The Direct Connect gateway is ready for use.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleting</code>: The initial state after calling <a>DeleteDirectConnectGateway</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleted</code>: The Direct Connect gateway is deleted and cannot pass traffic.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute state_change_error
    #   <p>The error message if the state of an object failed to advance.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Information about a tag.</p>
    #   @return [Array<Types::Tag>]
    class DirectConnectGateway < Struct.new(
      :direct_connect_gateway_id,
      :direct_connect_gateway_name,
      :amazon_side_asn,
      :owner_account,
      :direct_connect_gateway_state,
      :state_change_error,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about an association between a Direct Connect gateway and a virtual private gateway or transit gateway.</p>
    # @!attribute direct_connect_gateway_id
    #   <p>The ID of the Direct Connect gateway.</p>
    #   @return [String]
    # @!attribute direct_connect_gateway_owner_account
    #   <p>The ID of the Amazon Web Services account that owns the associated gateway.</p>
    #   @return [String]
    # @!attribute association_state
    #   <p>The state of the association. The following are the possible values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>associating</code>: The initial state after calling <a>CreateDirectConnectGatewayAssociation</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>associated</code>: The Direct Connect gateway and virtual private gateway or transit gateway are successfully associated and ready to pass traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>disassociating</code>: The initial state after calling <a>DeleteDirectConnectGatewayAssociation</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>disassociated</code>: The virtual private gateway or transit gateway is disassociated from the Direct Connect gateway. Traffic flow between the Direct Connect gateway and virtual private gateway or transit gateway is stopped.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>updating</code>: The CIDR blocks for the virtual private gateway or transit gateway are currently being updated. This could
    #             be new CIDR blocks added or current CIDR blocks removed.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute state_change_error
    #   <p>The error message if the state of an object failed to advance.</p>
    #   @return [String]
    # @!attribute associated_gateway
    #   <p>Information about the associated gateway.</p>
    #   @return [Types::AssociatedGateway]
    # @!attribute association_id
    #   <p>The ID of the Direct Connect gateway association.</p>
    #   @return [String]
    # @!attribute allowed_prefixes_to_direct_connect_gateway
    #   <p>The Amazon VPC prefixes to advertise to the Direct Connect gateway.</p>
    #   @return [Array<Types::RouteFilterPrefix>]
    # @!attribute associated_core_network
    #   <p>The ID of the Cloud WAN core network associated with the Direct Connect gateway attachment.</p>
    #   @return [Types::AssociatedCoreNetwork]
    # @!attribute virtual_gateway_id
    #   <p>The ID of the virtual private gateway. Applies only to private virtual interfaces.</p>
    #   @return [String]
    # @!attribute virtual_gateway_region
    #   <p>The Amazon Web Services Region where the virtual private gateway is located.</p>
    #   @return [String]
    # @!attribute virtual_gateway_owner_account
    #   <p>The ID of the Amazon Web Services account that owns the virtual private gateway.</p>
    #   @return [String]
    class DirectConnectGatewayAssociation < Struct.new(
      :direct_connect_gateway_id,
      :direct_connect_gateway_owner_account,
      :association_state,
      :state_change_error,
      :associated_gateway,
      :association_id,
      :allowed_prefixes_to_direct_connect_gateway,
      :associated_core_network,
      :virtual_gateway_id,
      :virtual_gateway_region,
      :virtual_gateway_owner_account,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the  proposal request to attach a virtual private gateway to a Direct Connect gateway. </p>
    # @!attribute proposal_id
    #   <p>The ID of the association proposal.</p>
    #   @return [String]
    # @!attribute direct_connect_gateway_id
    #   <p>The ID of the Direct Connect gateway.</p>
    #   @return [String]
    # @!attribute direct_connect_gateway_owner_account
    #   <p>The ID of the Amazon Web Services account that owns the Direct Connect gateway.</p>
    #   @return [String]
    # @!attribute proposal_state
    #   <p>The state of the proposal. The following are possible values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>accepted</code>: The proposal has been accepted. The Direct Connect gateway association is available to use in this state.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleted</code>: The proposal has been deleted by the owner that made the proposal.  The Direct Connect gateway association cannot be used in this state.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>requested</code>: The proposal has been requested. The Direct Connect gateway association cannot be used in this state.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute associated_gateway
    #   <p>Information about the associated gateway.</p>
    #   @return [Types::AssociatedGateway]
    # @!attribute existing_allowed_prefixes_to_direct_connect_gateway
    #   <p>The existing Amazon VPC prefixes advertised to the Direct Connect gateway.</p>
    #   @return [Array<Types::RouteFilterPrefix>]
    # @!attribute requested_allowed_prefixes_to_direct_connect_gateway
    #   <p>The Amazon VPC prefixes to advertise to the Direct Connect gateway.</p>
    #   @return [Array<Types::RouteFilterPrefix>]
    class DirectConnectGatewayAssociationProposal < Struct.new(
      :proposal_id,
      :direct_connect_gateway_id,
      :direct_connect_gateway_owner_account,
      :proposal_state,
      :associated_gateway,
      :existing_allowed_prefixes_to_direct_connect_gateway,
      :requested_allowed_prefixes_to_direct_connect_gateway,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about an attachment between a Direct Connect gateway and a virtual interface.</p>
    # @!attribute direct_connect_gateway_id
    #   <p>The ID of the Direct Connect gateway.</p>
    #   @return [String]
    # @!attribute virtual_interface_id
    #   <p>The ID of the virtual interface.</p>
    #   @return [String]
    # @!attribute virtual_interface_region
    #   <p>The Amazon Web Services Region where the virtual interface is located.</p>
    #   @return [String]
    # @!attribute virtual_interface_owner_account
    #   <p>The ID of the Amazon Web Services account that owns the virtual interface.</p>
    #   @return [String]
    # @!attribute attachment_state
    #   <p>The state of the attachment. The following are the possible values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>attaching</code>: The initial state after a virtual interface is created using the Direct Connect gateway.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>attached</code>: The Direct Connect gateway and virtual interface are attached and ready to pass traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>detaching</code>: The initial state after calling <a>DeleteVirtualInterface</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>detached</code>: The virtual interface is detached from the Direct Connect gateway. Traffic flow between the Direct Connect gateway and virtual interface is stopped.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute attachment_type
    #   <p>The type of attachment.</p>
    #   @return [String]
    # @!attribute state_change_error
    #   <p>The error message if the state of an object failed to advance.</p>
    #   @return [String]
    class DirectConnectGatewayAttachment < Struct.new(
      :direct_connect_gateway_id,
      :virtual_interface_id,
      :virtual_interface_region,
      :virtual_interface_owner_account,
      :attachment_state,
      :attachment_type,
      :state_change_error,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A server-side error occurred.</p>
    # @!attribute message
    #   @return [String]
    class DirectConnectServerException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about an Direct Connect connection.</p>
    # @!attribute owner_account
    #   <p>The ID of the Amazon Web Services account that owns the connection.</p>
    #   @return [String]
    # @!attribute connection_id
    #   <p>The ID of the connection.</p>
    #   @return [String]
    # @!attribute connection_name
    #   <p>The name of the connection.</p>
    #   @return [String]
    # @!attribute connection_state
    #   <p>The state of the connection. The following are the possible values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ordering</code>: The initial state of a hosted connection provisioned on an interconnect. The connection stays in the ordering state until the owner of the hosted connection confirms or declines the connection order.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>requested</code>: The initial state of a standard connection. The connection stays in the requested state until the Letter of Authorization (LOA) is sent to the customer.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>pending</code>: The connection has been approved and is being initialized.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>available</code>: The network link is up and the connection is ready for use.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>down</code>: The network link is down.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleting</code>: The connection is being deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleted</code>: The connection has been deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>rejected</code>: A hosted connection in the <code>ordering</code> state enters the <code>rejected</code> state if it is deleted by the customer.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>unknown</code>: The state of the connection is not available.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute region
    #   <p>The Amazon Web Services Region where the connection is located.</p>
    #   @return [String]
    # @!attribute location
    #   <p>The location of the connection.</p>
    #   @return [String]
    # @!attribute bandwidth
    #   <p>The bandwidth of the connection.</p>
    #   @return [String]
    # @!attribute vlan
    #   <p>The ID of the VLAN.</p>
    #   @return [Integer]
    # @!attribute partner_name
    #   <p>The name of the Direct Connect service provider associated with the connection.</p>
    #   @return [String]
    # @!attribute loa_issue_time
    #   <p>The time of the most recent call to <a>DescribeLoa</a> for this connection.</p>
    #   @return [Time]
    # @!attribute lag_id
    #   <p>The ID of the LAG.</p>
    #   @return [String]
    # @!attribute aws_device
    #   <p>The Direct Connect endpoint on which the physical connection terminates.</p>
    #   @return [String]
    # @!attribute jumbo_frame_capable
    #   <p>Indicates whether jumbo frames are supported.</p>
    #   @return [Boolean]
    # @!attribute aws_device_v2
    #   <p>The Direct Connect endpoint that terminates the physical connection.</p>
    #   @return [String]
    # @!attribute aws_logical_device_id
    #   <p>The Direct Connect endpoint that terminates the logical connection. This device might be
    #         different than the device that terminates the physical connection.</p>
    #   @return [String]
    # @!attribute has_logical_redundancy
    #   <p>Indicates whether the connection supports a secondary BGP peer in the same address family (IPv4/IPv6).</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags associated with the connection.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute provider_name
    #   <p>The name of the service provider associated with the connection.</p>
    #   @return [String]
    # @!attribute mac_sec_capable
    #   <p>Indicates whether the connection supports MAC Security (MACsec).</p>
    #   @return [Boolean]
    # @!attribute port_encryption_status
    #   <p>The MAC Security (MACsec) port link status of the connection.</p>
    #            <p>The valid values are <code>Encryption Up</code>, which means that there is an active Connection Key Name, or <code>Encryption Down</code>.</p>
    #   @return [String]
    # @!attribute encryption_mode
    #   <p>The MAC Security (MACsec) connection encryption mode.</p>
    #            <p>The valid values are <code>no_encrypt</code>, <code>should_encrypt</code>, and <code>must_encrypt</code>.</p>
    #   @return [String]
    # @!attribute mac_sec_keys
    #   <p>The MAC Security (MACsec) security keys associated with the connection.</p>
    #   @return [Array<Types::MacSecKey>]
    # @!attribute partner_interconnect_mac_sec_capable
    #   <p>Indicates whether the interconnect hosting this connection supports MAC Security (MACsec).</p>
    #   @return [Boolean]
    class DisassociateConnectionFromLagOutput < Struct.new(
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
      :aws_logical_device_id,
      :has_logical_redundancy,
      :tags,
      :provider_name,
      :mac_sec_capable,
      :port_encryption_status,
      :encryption_mode,
      :mac_sec_keys,
      :partner_interconnect_mac_sec_capable,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:vlan] = 0 unless options.key?(:vlan)
        super
      end
    end

    # @!attribute connection_id
    #   <p>The ID of the connection.</p>
    #   @return [String]
    # @!attribute lag_id
    #   <p>The ID of the LAG.</p>
    #   @return [String]
    class DisassociateConnectionFromLagRequest < Struct.new(
      :connection_id,
      :lag_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute connection_id
    #   <p>The ID of the dedicated connection (dxcon-xxxx), interconnect (dxcon-xxxx), or LAG (dxlag-xxxx).</p>
    #            <p>You can use <a>DescribeConnections</a>, <a>DescribeInterconnects</a>, or <a>DescribeLags</a> to retrieve connection ID.</p>
    #   @return [String]
    # @!attribute secret_arn
    #   <p>The Amazon Resource Name (ARN) of the MAC Security (MACsec) secret key.</p>
    #            <p>You can use <a>DescribeConnections</a> to retrieve the ARN of the MAC Security (MACsec) secret key.</p>
    #   @return [String]
    class DisassociateMacSecKeyRequest < Struct.new(
      :connection_id,
      :secret_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute connection_id
    #   <p>The ID of the dedicated connection (dxcon-xxxx), interconnect (dxcon-xxxx), or LAG (dxlag-xxxx).</p>
    #   @return [String]
    # @!attribute mac_sec_keys
    #   <p>The MAC Security (MACsec) security keys no longer associated with the connection.</p>
    #   @return [Array<Types::MacSecKey>]
    class DisassociateMacSecKeyResponse < Struct.new(
      :connection_id,
      :mac_sec_keys,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A tag key was specified more than once.</p>
    # @!attribute message
    #   @return [String]
    class DuplicateTagKeysException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about an interconnect.</p>
    # @!attribute interconnect_id
    #   <p>The ID of the interconnect.</p>
    #   @return [String]
    # @!attribute interconnect_name
    #   <p>The name of the interconnect.</p>
    #   @return [String]
    # @!attribute interconnect_state
    #   <p>The state of the interconnect. The following are the possible values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>requested</code>: The initial state of an interconnect. The interconnect stays in the
    #           requested state until the Letter of Authorization (LOA) is sent to the customer.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>pending</code>: The interconnect is approved, and is being initialized.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>available</code>: The network link is up, and the interconnect is ready for use.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>down</code>: The network link is down.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleting</code>: The interconnect is being deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleted</code>: The interconnect is deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>unknown</code>: The state of the interconnect is not available.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute region
    #   <p>The Amazon Web Services Region where the connection is located.</p>
    #   @return [String]
    # @!attribute location
    #   <p>The location of the connection.</p>
    #   @return [String]
    # @!attribute bandwidth
    #   <p>The bandwidth of the connection.</p>
    #   @return [String]
    # @!attribute loa_issue_time
    #   <p>The time of the most recent call to <a>DescribeLoa</a> for this connection.</p>
    #   @return [Time]
    # @!attribute lag_id
    #   <p>The ID of the LAG.</p>
    #   @return [String]
    # @!attribute aws_device
    #   <p>The Direct Connect endpoint on which the physical connection terminates.</p>
    #   @return [String]
    # @!attribute jumbo_frame_capable
    #   <p>Indicates whether jumbo frames are supported.</p>
    #   @return [Boolean]
    # @!attribute aws_device_v2
    #   <p>The Direct Connect endpoint that terminates the physical connection.</p>
    #   @return [String]
    # @!attribute aws_logical_device_id
    #   <p>The Direct Connect endpoint that terminates the logical connection. This device might be
    #         different than the device that terminates the physical connection.</p>
    #   @return [String]
    # @!attribute has_logical_redundancy
    #   <p>Indicates whether the interconnect supports a secondary BGP in the same address family (IPv4/IPv6).</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags associated with the interconnect.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute provider_name
    #   <p>The name of the service provider associated with the interconnect.</p>
    #   @return [String]
    # @!attribute mac_sec_capable
    #   <p>Indicates whether the interconnect supports MAC Security (MACsec).</p>
    #   @return [Boolean]
    # @!attribute port_encryption_status
    #   <p>The MAC Security (MACsec) port link status.</p>
    #            <p>The valid values are <code>Encryption Up</code>, which means that there is an active Connection Key Name, or <code>Encryption Down</code>.</p>
    #   @return [String]
    # @!attribute encryption_mode
    #   <p>The MAC Security (MACsec) encryption mode.</p>
    #            <p>The valid values are <code>no_encrypt</code>, <code>should_encrypt</code>, and <code>must_encrypt</code>.</p>
    #   @return [String]
    # @!attribute mac_sec_keys
    #   <p>The MAC Security (MACsec) security keys.</p>
    #   @return [Array<Types::MacSecKey>]
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
      :aws_logical_device_id,
      :has_logical_redundancy,
      :tags,
      :provider_name,
      :mac_sec_capable,
      :port_encryption_status,
      :encryption_mode,
      :mac_sec_keys,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a link aggregation group (LAG).</p>
    # @!attribute connections_bandwidth
    #   <p>The individual bandwidth of the physical connections bundled by the LAG. The possible
    #         values are 1Gbps, 10Gbps, 100Gbps, or 400 Gbps.. </p>
    #   @return [String]
    # @!attribute number_of_connections
    #   <p>The number of physical dedicated connections initially provisioned and bundled by the LAG.
    #         You can have a maximum of four connections when the port speed is 1 Gbps or 10 Gbps, or two
    #         when the port speed is 100 Gbps or 400 Gbps.</p>
    #   @return [Integer]
    # @!attribute lag_id
    #   <p>The ID of the LAG.</p>
    #   @return [String]
    # @!attribute owner_account
    #   <p>The ID of the Amazon Web Services account that owns the LAG.</p>
    #   @return [String]
    # @!attribute lag_name
    #   <p>The name of the LAG.</p>
    #   @return [String]
    # @!attribute lag_state
    #   <p>The state of the LAG. The following are the possible values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>requested</code>: The initial state of a LAG. The LAG stays in the
    #                   requested state until the Letter of Authorization (LOA) is available.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>pending</code>: The LAG has been approved and is being initialized.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>available</code>: The network link is established and the LAG is ready for use.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>down</code>: The network link is down.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleting</code>: The LAG is being deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleted</code>: The LAG is deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>unknown</code>: The state of the LAG is not available.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute location
    #   <p>The location of the LAG.</p>
    #   @return [String]
    # @!attribute region
    #   <p>The Amazon Web Services Region where the connection is located.</p>
    #   @return [String]
    # @!attribute minimum_links
    #   <p>The minimum number of physical dedicated connections that must be operational for the LAG itself to be operational.</p>
    #   @return [Integer]
    # @!attribute aws_device
    #   <p>The Direct Connect endpoint that hosts the LAG.</p>
    #   @return [String]
    # @!attribute aws_device_v2
    #   <p>The Direct Connect endpoint that hosts the LAG.</p>
    #   @return [String]
    # @!attribute aws_logical_device_id
    #   <p>The Direct Connect endpoint that terminates the logical connection. This device might be
    #         different than the device that terminates the physical connection.</p>
    #   @return [String]
    # @!attribute connections
    #   <p>The connections bundled by the LAG.</p>
    #   @return [Array<Types::Connection>]
    # @!attribute allows_hosted_connections
    #   <p>Indicates whether the LAG can host other connections.</p>
    #   @return [Boolean]
    # @!attribute jumbo_frame_capable
    #   <p>Indicates whether jumbo frames are supported.</p>
    #   @return [Boolean]
    # @!attribute has_logical_redundancy
    #   <p>Indicates whether the LAG supports a secondary BGP peer in the same address family (IPv4/IPv6).</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags associated with the LAG.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute provider_name
    #   <p>The name of the service provider associated with the LAG.</p>
    #   @return [String]
    # @!attribute mac_sec_capable
    #   <p>Indicates whether the LAG supports MAC Security (MACsec).</p>
    #   @return [Boolean]
    # @!attribute encryption_mode
    #   <p>The LAG MAC Security (MACsec) encryption mode.</p>
    #            <p>The valid values are <code>no_encrypt</code>, <code>should_encrypt</code>, and <code>must_encrypt</code>.</p>
    #   @return [String]
    # @!attribute mac_sec_keys
    #   <p>The MAC Security (MACsec) security keys associated with the LAG.</p>
    #   @return [Array<Types::MacSecKey>]
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
      :aws_logical_device_id,
      :connections,
      :allows_hosted_connections,
      :jumbo_frame_capable,
      :has_logical_redundancy,
      :tags,
      :provider_name,
      :mac_sec_capable,
      :encryption_mode,
      :mac_sec_keys,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:number_of_connections] = 0 unless options.key?(:number_of_connections)
        options[:minimum_links] = 0 unless options.key?(:minimum_links)
        options[:allows_hosted_connections] = false unless options.key?(:allows_hosted_connections)
        super
      end
    end

    # @!attribute test_id
    #   <p>The ID of the virtual interface failover test.</p>
    #   @return [String]
    # @!attribute virtual_interface_id
    #   <p>The ID of the virtual interface that was tested.</p>
    #   @return [String]
    # @!attribute bgp_peers
    #   <p>The BGP peers that were placed in the DOWN state during the virtual interface failover test.</p>
    #   @return [Array<String>]
    # @!attribute status
    #   <p>The status of the virtual interface failover test.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return with a single call.
    #   	To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    #            <p>If <code>MaxResults</code> is given a value larger than 100, only 100 results are
    #         returned.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    class ListVirtualInterfaceTestHistoryRequest < Struct.new(
      :test_id,
      :virtual_interface_id,
      :bgp_peers,
      :status,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute virtual_interface_test_history
    #   <p>The ID of the tested virtual interface.</p>
    #   @return [Array<Types::VirtualInterfaceTestHistory>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>
    #   @return [String]
    class ListVirtualInterfaceTestHistoryResponse < Struct.new(
      :virtual_interface_test_history,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a Letter of Authorization - Connecting Facility Assignment (LOA-CFA) for a connection.</p>
    # @!attribute loa_content
    #   <p>The binary contents of the LOA-CFA document.</p>
    #   @return [String]
    # @!attribute loa_content_type
    #   <p>The standard media type for the LOA-CFA document. The only supported value is application/pdf.</p>
    #   @return [String]
    class Loa < Struct.new(
      :loa_content,
      :loa_content_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about an Direct Connect location.</p>
    # @!attribute location_code
    #   <p>The code for the location.</p>
    #   @return [String]
    # @!attribute location_name
    #   <p>The name of the location. This includes the name of the colocation partner and the physical site of the building.</p>
    #   @return [String]
    # @!attribute region
    #   <p>The Amazon Web Services Region for the location.</p>
    #   @return [String]
    # @!attribute available_port_speeds
    #   <p>The available port speeds for the location.</p>
    #   @return [Array<String>]
    # @!attribute available_providers
    #   <p>The name of the service provider for the location.</p>
    #   @return [Array<String>]
    # @!attribute available_mac_sec_port_speeds
    #   <p>The available MAC Security (MACsec) port speeds for the location.</p>
    #   @return [Array<String>]
    class Location < Struct.new(
      :location_code,
      :location_name,
      :region,
      :available_port_speeds,
      :available_providers,
      :available_mac_sec_port_speeds,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the MAC Security (MACsec) secret key.</p>
    # @!attribute secret_arn
    #   <p>The Amazon Resource Name (ARN) of the MAC Security (MACsec) secret key.</p>
    #   @return [String]
    # @!attribute ckn
    #   <p>The Connection Key Name (CKN) for the MAC Security secret key.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the MAC Security (MACsec) secret key.</p>
    #            <p>The possible values are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>associating</code>: The MAC Security (MACsec) secret key is being validated and not yet associated with the connection or LAG.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>associated</code>: The MAC Security (MACsec) secret key is validated and associated with the connection or LAG.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>disassociating</code>: The MAC Security (MACsec) secret key is being disassociated from the connection or LAG</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>disassociated</code>: The MAC Security (MACsec) secret key is no longer associated with the connection or LAG.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute start_on
    #   <p>The date that the MAC Security (MACsec) secret key takes effect. The value is displayed in UTC format.</p>
    #   @return [String]
    class MacSecKey < Struct.new(
      :secret_arn,
      :ckn,
      :state,
      :start_on,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a new BGP peer.</p>
    # @!attribute asn
    #   <p>The autonomous system number (ASN). The valid range is from 1 to 2147483646 for Border Gateway Protocol (BGP) configuration. If you provide a number greater than the maximum, an error is returned. Use <code>asnLong</code> instead.</p>
    #   @return [Integer]
    # @!attribute asn_long
    #   <p>The long ASN for a new BGP peer.  The valid range is  from 1 to 4294967294.</p>
    #   @return [Integer]
    # @!attribute auth_key
    #   <p>The authentication key for BGP configuration. This string has a minimum length of 6 characters and and a maximun lenth of 80 characters.</p>
    #   @return [String]
    # @!attribute address_family
    #   <p>The address family for the BGP peer.</p>
    #   @return [String]
    # @!attribute amazon_address
    #   <p>The IP address assigned to the Amazon interface.</p>
    #   @return [String]
    # @!attribute customer_address
    #   <p>The IP address assigned to the customer interface.</p>
    #   @return [String]
    class NewBGPPeer < Struct.new(
      :asn,
      :asn_long,
      :auth_key,
      :address_family,
      :amazon_address,
      :customer_address,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:asn] = 0 unless options.key?(:asn)
        super
      end
    end

    # <p>Information about a private virtual interface.</p>
    # @!attribute virtual_interface_name
    #   <p>The name of the virtual interface assigned by the customer network. The name has a maximum of 100 characters. The following are valid characters: a-z, 0-9 and a hyphen (-).</p>
    #   @return [String]
    # @!attribute vlan
    #   <p>The ID of the VLAN.</p>
    #   @return [Integer]
    # @!attribute asn
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
    #            <p>The valid values are 1-2147483646.</p>
    #   @return [Integer]
    # @!attribute asn_long
    #   <p>The long ASN for a new private virtual interface. The valid range is from 1 to 4294967294 for BGP configuration.</p>
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
    #   @return [Integer]
    # @!attribute mtu
    #   <p>The maximum transmission unit (MTU), in bytes. The supported values are 1500 and 8500. The default value is 1500.</p>
    #   @return [Integer]
    # @!attribute auth_key
    #   <p>The authentication key for BGP configuration. This string has a minimum length of 6 characters and and a maximun lenth of 80 characters.</p>
    #   @return [String]
    # @!attribute amazon_address
    #   <p>The IP address assigned to the Amazon interface.</p>
    #   @return [String]
    # @!attribute customer_address
    #   <p>The IP address assigned to the customer interface.</p>
    #   @return [String]
    # @!attribute address_family
    #   <p>The address family for the BGP peer.</p>
    #   @return [String]
    # @!attribute virtual_gateway_id
    #   <p>The ID of the virtual private gateway.</p>
    #   @return [String]
    # @!attribute direct_connect_gateway_id
    #   <p>The ID of the Direct Connect gateway.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags associated with the private virtual interface.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute enable_site_link
    #   <p>Indicates whether to enable or disable SiteLink.</p>
    #   @return [Boolean]
    class NewPrivateVirtualInterface < Struct.new(
      :virtual_interface_name,
      :vlan,
      :asn,
      :asn_long,
      :mtu,
      :auth_key,
      :amazon_address,
      :customer_address,
      :address_family,
      :virtual_gateway_id,
      :direct_connect_gateway_id,
      :tags,
      :enable_site_link,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:vlan] = 0 unless options.key?(:vlan)
        options[:asn] = 0 unless options.key?(:asn)
        super
      end
    end

    # <p>Information about a private virtual interface to be provisioned on a connection.</p>
    # @!attribute virtual_interface_name
    #   <p>The name of the virtual interface assigned by the customer network. The name has a maximum of 100 characters. The following are valid characters: a-z, 0-9 and a hyphen (-).</p>
    #   @return [String]
    # @!attribute vlan
    #   <p>The ID of the VLAN.</p>
    #   @return [Integer]
    # @!attribute asn
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
    #            <p>The valid values are 1-2147483646.</p>
    #   @return [Integer]
    # @!attribute asn_long
    #   <p>The ASN when allocating a new private virtual interface. The valid range is from 1 to 4294967294 for BGP configuration.</p>
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
    #   @return [Integer]
    # @!attribute mtu
    #   <p>The maximum transmission unit (MTU), in bytes. The supported values are 1500 and 8500. The default value is 1500.</p>
    #   @return [Integer]
    # @!attribute auth_key
    #   <p>The authentication key for BGP configuration. This string has a minimum length of 6 characters and and a maximun lenth of 80 characters.</p>
    #   @return [String]
    # @!attribute amazon_address
    #   <p>The IP address assigned to the Amazon interface.</p>
    #   @return [String]
    # @!attribute address_family
    #   <p>The address family for the BGP peer.</p>
    #   @return [String]
    # @!attribute customer_address
    #   <p>The IP address assigned to the customer interface.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags associated with the private virtual interface.</p>
    #   @return [Array<Types::Tag>]
    class NewPrivateVirtualInterfaceAllocation < Struct.new(
      :virtual_interface_name,
      :vlan,
      :asn,
      :asn_long,
      :mtu,
      :auth_key,
      :amazon_address,
      :address_family,
      :customer_address,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:vlan] = 0 unless options.key?(:vlan)
        options[:asn] = 0 unless options.key?(:asn)
        super
      end
    end

    # <p>Information about a public virtual interface.</p>
    # @!attribute virtual_interface_name
    #   <p>The name of the virtual interface assigned by the customer network. The name has a maximum of 100 characters. The following are valid characters: a-z, 0-9 and a hyphen (-).</p>
    #   @return [String]
    # @!attribute vlan
    #   <p>The ID of the VLAN.</p>
    #   @return [Integer]
    # @!attribute asn
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
    #   @return [Integer]
    # @!attribute asn_long
    #   <p>The long ASN for a new public virtual interface. The valid range is from 1 to 4294967294 for BGP configuration.</p>
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
    #   @return [Integer]
    # @!attribute auth_key
    #   <p>The authentication key for BGP configuration. This string has a minimum length of 6 characters and and a maximun lenth of 80 characters.</p>
    #   @return [String]
    # @!attribute amazon_address
    #   <p>The IP address assigned to the Amazon interface.</p>
    #   @return [String]
    # @!attribute customer_address
    #   <p>The IP address assigned to the customer interface.</p>
    #   @return [String]
    # @!attribute address_family
    #   <p>The address family for the BGP peer.</p>
    #   @return [String]
    # @!attribute route_filter_prefixes
    #   <p>The routes to be advertised to the Amazon Web Services network in this Region. Applies to public virtual interfaces.</p>
    #   @return [Array<Types::RouteFilterPrefix>]
    # @!attribute tags
    #   <p>The tags associated with the public virtual interface.</p>
    #   @return [Array<Types::Tag>]
    class NewPublicVirtualInterface < Struct.new(
      :virtual_interface_name,
      :vlan,
      :asn,
      :asn_long,
      :auth_key,
      :amazon_address,
      :customer_address,
      :address_family,
      :route_filter_prefixes,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:vlan] = 0 unless options.key?(:vlan)
        options[:asn] = 0 unless options.key?(:asn)
        super
      end
    end

    # <p>Information about a public virtual interface to be provisioned on a connection.</p>
    # @!attribute virtual_interface_name
    #   <p>The name of the virtual interface assigned by the customer network. The name has a maximum of 100 characters. The following are valid characters: a-z, 0-9 and a hyphen (-).</p>
    #   @return [String]
    # @!attribute vlan
    #   <p>The ID of the VLAN.</p>
    #   @return [Integer]
    # @!attribute asn
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
    #            <p>The valid values are 1-2147483646.</p>
    #   @return [Integer]
    # @!attribute asn_long
    #   <p>The ASN when allocating a new public virtual interface. The valid range is from 1 to 4294967294 for BGP configuration.</p>
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
    #   @return [Integer]
    # @!attribute auth_key
    #   <p>The authentication key for BGP configuration. This string has a minimum length of 6 characters and and a maximun lenth of 80 characters.</p>
    #   @return [String]
    # @!attribute amazon_address
    #   <p>The IP address assigned to the Amazon interface.</p>
    #   @return [String]
    # @!attribute customer_address
    #   <p>The IP address assigned to the customer interface.</p>
    #   @return [String]
    # @!attribute address_family
    #   <p>The address family for the BGP peer.</p>
    #   @return [String]
    # @!attribute route_filter_prefixes
    #   <p>The routes to be advertised to the Amazon Web Services network in this Region. Applies to public virtual interfaces.</p>
    #   @return [Array<Types::RouteFilterPrefix>]
    # @!attribute tags
    #   <p>The tags associated with the public virtual interface.</p>
    #   @return [Array<Types::Tag>]
    class NewPublicVirtualInterfaceAllocation < Struct.new(
      :virtual_interface_name,
      :vlan,
      :asn,
      :asn_long,
      :auth_key,
      :amazon_address,
      :customer_address,
      :address_family,
      :route_filter_prefixes,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:vlan] = 0 unless options.key?(:vlan)
        options[:asn] = 0 unless options.key?(:asn)
        super
      end
    end

    # <p>Information about a transit virtual interface.</p>
    # @!attribute virtual_interface_name
    #   <p>The name of the virtual interface assigned by the customer network. The name has a maximum of 100 characters. The following are valid characters: a-z, 0-9 and a hyphen (-).</p>
    #   @return [String]
    # @!attribute vlan
    #   <p>The ID of the VLAN.</p>
    #   @return [Integer]
    # @!attribute asn
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
    #   @return [Integer]
    # @!attribute asn_long
    #   <p>The long ASN for a new transit virtual interface.The valid range is from 1 to 4294967294 for BGP configuration.</p>
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
    #   @return [Integer]
    # @!attribute mtu
    #   <p>The maximum transmission unit (MTU), in bytes. The supported values are 1500 and 8500. The default value is 1500.</p>
    #   @return [Integer]
    # @!attribute auth_key
    #   <p>The authentication key for BGP configuration. This string has a minimum length of 6 characters and and a maximun lenth of 80 characters.</p>
    #   @return [String]
    # @!attribute amazon_address
    #   <p>The IP address assigned to the Amazon interface.</p>
    #   @return [String]
    # @!attribute customer_address
    #   <p>The IP address assigned to the customer interface.</p>
    #   @return [String]
    # @!attribute address_family
    #   <p>The address family for the BGP peer.</p>
    #   @return [String]
    # @!attribute direct_connect_gateway_id
    #   <p>The ID of the Direct Connect gateway.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags associated with the transitive virtual interface.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute enable_site_link
    #   <p>Indicates whether to enable or disable SiteLink.</p>
    #   @return [Boolean]
    class NewTransitVirtualInterface < Struct.new(
      :virtual_interface_name,
      :vlan,
      :asn,
      :asn_long,
      :mtu,
      :auth_key,
      :amazon_address,
      :customer_address,
      :address_family,
      :direct_connect_gateway_id,
      :tags,
      :enable_site_link,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:vlan] = 0 unless options.key?(:vlan)
        options[:asn] = 0 unless options.key?(:asn)
        super
      end
    end

    # <p>Information about a transit virtual interface to be provisioned on a connection.</p>
    # @!attribute virtual_interface_name
    #   <p>The name of the virtual interface assigned by the customer network. The name has a maximum of 100 characters. The following are valid characters: a-z, 0-9 and a hyphen (-).</p>
    #   @return [String]
    # @!attribute vlan
    #   <p>The ID of the VLAN.</p>
    #   @return [Integer]
    # @!attribute asn
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
    #            <p>The valid values are 1-2147483646.</p>
    #   @return [Integer]
    # @!attribute asn_long
    #   <p>The ASN when allocating a new transit virtual interface. The valid range is from 1 to 4294967294 for BGP configuration.</p>
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
    #   @return [Integer]
    # @!attribute mtu
    #   <p>The maximum transmission unit (MTU), in bytes. The supported values are 1500 and 8500. The default value is 1500 </p>
    #   @return [Integer]
    # @!attribute auth_key
    #   <p>The authentication key for BGP configuration. This string has a minimum length of 6 characters and and a maximun lenth of 80 characters.</p>
    #   @return [String]
    # @!attribute amazon_address
    #   <p>The IP address assigned to the Amazon interface.</p>
    #   @return [String]
    # @!attribute customer_address
    #   <p>The IP address assigned to the customer interface.</p>
    #   @return [String]
    # @!attribute address_family
    #   <p>The address family for the BGP peer.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags associated with the transitive virtual interface.</p>
    #   @return [Array<Types::Tag>]
    class NewTransitVirtualInterfaceAllocation < Struct.new(
      :virtual_interface_name,
      :vlan,
      :asn,
      :asn_long,
      :mtu,
      :auth_key,
      :amazon_address,
      :customer_address,
      :address_family,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:vlan] = 0 unless options.key?(:vlan)
        options[:asn] = 0 unless options.key?(:asn)
        super
      end
    end

    # <p>Information about a tag associated with an Direct Connect resource.</p>
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags.</p>
    #   @return [Array<Types::Tag>]
    class ResourceTag < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a route filter prefix that a customer can advertise through Border Gateway Protocol (BGP) 
    #         over a public virtual interface.</p>
    # @!attribute cidr
    #   <p>The CIDR block for the advertised route. Separate multiple routes using commas. An IPv6 CIDR must use /64 or shorter.</p>
    #   @return [String]
    class RouteFilterPrefix < Struct.new(
      :cidr,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the virtual router.</p>
    # @!attribute vendor
    #   <p>The vendor for the virtual interface's router.</p>
    #   @return [String]
    # @!attribute platform
    #   <p>The virtual interface router platform.</p>
    #   @return [String]
    # @!attribute software
    #   <p>The router software. </p>
    #   @return [String]
    # @!attribute xslt_template_name
    #   <p>The template for the virtual interface's router.</p>
    #   @return [String]
    # @!attribute xslt_template_name_for_mac_sec
    #   <p>The MAC Security (MACsec) template for the virtual interface's router.</p>
    #   @return [String]
    # @!attribute router_type_identifier
    #   <p>Identifies the router by a combination of vendor, platform, and software version. For example, <code>CiscoSystemsInc-2900SeriesRouters-IOS124</code>.</p>
    #   @return [String]
    class RouterType < Struct.new(
      :vendor,
      :platform,
      :software,
      :xslt_template_name,
      :xslt_template_name_for_mac_sec,
      :router_type_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute virtual_interface_id
    #   <p>The ID of the virtual interface you want to test.</p>
    #   @return [String]
    # @!attribute bgp_peers
    #   <p>The BGP peers to place in the DOWN state.</p>
    #   @return [Array<String>]
    # @!attribute test_duration_in_minutes
    #   <p>The time in minutes that the virtual interface failover test will last.</p>
    #            <p>Maximum value: 4,320 minutes (72 hours).</p>
    #            <p>Default: 180 minutes (3 hours).</p>
    #   @return [Integer]
    class StartBgpFailoverTestRequest < Struct.new(
      :virtual_interface_id,
      :bgp_peers,
      :test_duration_in_minutes,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute virtual_interface_test
    #   <p>Information about the virtual interface failover test.</p>
    #   @return [Types::VirtualInterfaceTestHistory]
    class StartBgpFailoverTestResponse < Struct.new(
      :virtual_interface_test,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute virtual_interface_id
    #   <p>The ID of the virtual interface you no longer want to test.</p>
    #   @return [String]
    class StopBgpFailoverTestRequest < Struct.new(
      :virtual_interface_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute virtual_interface_test
    #   <p>Information about the virtual interface failover test.</p>
    #   @return [Types::VirtualInterfaceTestHistory]
    class StopBgpFailoverTestResponse < Struct.new(
      :virtual_interface_test,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a tag.</p>
    # @!attribute key
    #   <p>The key.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value.</p>
    #   @return [String]
    class Tag < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to add.</p>
    #   @return [Array<Types::Tag>]
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>You have reached the limit on the number of tags that can be assigned.</p>
    # @!attribute message
    #   @return [String]
    class TooManyTagsException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The tag keys of the tags to remove.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about an Direct Connect connection.</p>
    # @!attribute owner_account
    #   <p>The ID of the Amazon Web Services account that owns the connection.</p>
    #   @return [String]
    # @!attribute connection_id
    #   <p>The ID of the connection.</p>
    #   @return [String]
    # @!attribute connection_name
    #   <p>The name of the connection.</p>
    #   @return [String]
    # @!attribute connection_state
    #   <p>The state of the connection. The following are the possible values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ordering</code>: The initial state of a hosted connection provisioned on an interconnect. The connection stays in the ordering state until the owner of the hosted connection confirms or declines the connection order.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>requested</code>: The initial state of a standard connection. The connection stays in the requested state until the Letter of Authorization (LOA) is sent to the customer.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>pending</code>: The connection has been approved and is being initialized.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>available</code>: The network link is up and the connection is ready for use.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>down</code>: The network link is down.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleting</code>: The connection is being deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleted</code>: The connection has been deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>rejected</code>: A hosted connection in the <code>ordering</code> state enters the <code>rejected</code> state if it is deleted by the customer.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>unknown</code>: The state of the connection is not available.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute region
    #   <p>The Amazon Web Services Region where the connection is located.</p>
    #   @return [String]
    # @!attribute location
    #   <p>The location of the connection.</p>
    #   @return [String]
    # @!attribute bandwidth
    #   <p>The bandwidth of the connection.</p>
    #   @return [String]
    # @!attribute vlan
    #   <p>The ID of the VLAN.</p>
    #   @return [Integer]
    # @!attribute partner_name
    #   <p>The name of the Direct Connect service provider associated with the connection.</p>
    #   @return [String]
    # @!attribute loa_issue_time
    #   <p>The time of the most recent call to <a>DescribeLoa</a> for this connection.</p>
    #   @return [Time]
    # @!attribute lag_id
    #   <p>The ID of the LAG.</p>
    #   @return [String]
    # @!attribute aws_device
    #   <p>The Direct Connect endpoint on which the physical connection terminates.</p>
    #   @return [String]
    # @!attribute jumbo_frame_capable
    #   <p>Indicates whether jumbo frames are supported.</p>
    #   @return [Boolean]
    # @!attribute aws_device_v2
    #   <p>The Direct Connect endpoint that terminates the physical connection.</p>
    #   @return [String]
    # @!attribute aws_logical_device_id
    #   <p>The Direct Connect endpoint that terminates the logical connection. This device might be
    #         different than the device that terminates the physical connection.</p>
    #   @return [String]
    # @!attribute has_logical_redundancy
    #   <p>Indicates whether the connection supports a secondary BGP peer in the same address family (IPv4/IPv6).</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags associated with the connection.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute provider_name
    #   <p>The name of the service provider associated with the connection.</p>
    #   @return [String]
    # @!attribute mac_sec_capable
    #   <p>Indicates whether the connection supports MAC Security (MACsec).</p>
    #   @return [Boolean]
    # @!attribute port_encryption_status
    #   <p>The MAC Security (MACsec) port link status of the connection.</p>
    #            <p>The valid values are <code>Encryption Up</code>, which means that there is an active Connection Key Name, or <code>Encryption Down</code>.</p>
    #   @return [String]
    # @!attribute encryption_mode
    #   <p>The MAC Security (MACsec) connection encryption mode.</p>
    #            <p>The valid values are <code>no_encrypt</code>, <code>should_encrypt</code>, and <code>must_encrypt</code>.</p>
    #   @return [String]
    # @!attribute mac_sec_keys
    #   <p>The MAC Security (MACsec) security keys associated with the connection.</p>
    #   @return [Array<Types::MacSecKey>]
    # @!attribute partner_interconnect_mac_sec_capable
    #   <p>Indicates whether the interconnect hosting this connection supports MAC Security (MACsec).</p>
    #   @return [Boolean]
    class UpdateConnectionOutput < Struct.new(
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
      :aws_logical_device_id,
      :has_logical_redundancy,
      :tags,
      :provider_name,
      :mac_sec_capable,
      :port_encryption_status,
      :encryption_mode,
      :mac_sec_keys,
      :partner_interconnect_mac_sec_capable,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:vlan] = 0 unless options.key?(:vlan)
        super
      end
    end

    # @!attribute connection_id
    #   <p>The ID of the connection.</p>
    #            <p>You can use <a>DescribeConnections</a> to retrieve the connection ID.</p>
    #   @return [String]
    # @!attribute connection_name
    #   <p>The name of the connection.</p>
    #   @return [String]
    # @!attribute encryption_mode
    #   <p>The connection MAC Security (MACsec) encryption mode.</p>
    #            <p>The valid values are <code>no_encrypt</code>, <code>should_encrypt</code>, and <code>must_encrypt</code>.</p>
    #   @return [String]
    class UpdateConnectionRequest < Struct.new(
      :connection_id,
      :connection_name,
      :encryption_mode,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute association_id
    #   <p>The ID of the Direct Connect gateway association.</p>
    #   @return [String]
    # @!attribute add_allowed_prefixes_to_direct_connect_gateway
    #   <p>The Amazon VPC prefixes to advertise to the Direct Connect gateway.</p>
    #   @return [Array<Types::RouteFilterPrefix>]
    # @!attribute remove_allowed_prefixes_to_direct_connect_gateway
    #   <p>The Amazon VPC prefixes to no longer advertise to the Direct Connect gateway.</p>
    #   @return [Array<Types::RouteFilterPrefix>]
    class UpdateDirectConnectGatewayAssociationRequest < Struct.new(
      :association_id,
      :add_allowed_prefixes_to_direct_connect_gateway,
      :remove_allowed_prefixes_to_direct_connect_gateway,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute direct_connect_gateway_association
    #   <p>Information about an association between a Direct Connect gateway and a virtual private gateway or transit gateway.</p>
    #   @return [Types::DirectConnectGatewayAssociation]
    class UpdateDirectConnectGatewayAssociationResult < Struct.new(
      :direct_connect_gateway_association,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute direct_connect_gateway_id
    #   <p>The ID of the Direct Connect gateway to update.</p>
    #   @return [String]
    # @!attribute new_direct_connect_gateway_name
    #   <p>The new name for the Direct Connect gateway.</p>
    #   @return [String]
    class UpdateDirectConnectGatewayRequest < Struct.new(
      :direct_connect_gateway_id,
      :new_direct_connect_gateway_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute direct_connect_gateway
    #   <p>Informaiton about a Direct Connect gateway, which enables you to connect virtual interfaces and virtual private gateways or transit gateways.</p>
    #   @return [Types::DirectConnectGateway]
    class UpdateDirectConnectGatewayResponse < Struct.new(
      :direct_connect_gateway,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a link aggregation group (LAG).</p>
    # @!attribute connections_bandwidth
    #   <p>The individual bandwidth of the physical connections bundled by the LAG. The possible
    #         values are 1Gbps, 10Gbps, 100Gbps, or 400 Gbps.. </p>
    #   @return [String]
    # @!attribute number_of_connections
    #   <p>The number of physical dedicated connections initially provisioned and bundled by the LAG.
    #         You can have a maximum of four connections when the port speed is 1 Gbps or 10 Gbps, or two
    #         when the port speed is 100 Gbps or 400 Gbps.</p>
    #   @return [Integer]
    # @!attribute lag_id
    #   <p>The ID of the LAG.</p>
    #   @return [String]
    # @!attribute owner_account
    #   <p>The ID of the Amazon Web Services account that owns the LAG.</p>
    #   @return [String]
    # @!attribute lag_name
    #   <p>The name of the LAG.</p>
    #   @return [String]
    # @!attribute lag_state
    #   <p>The state of the LAG. The following are the possible values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>requested</code>: The initial state of a LAG. The LAG stays in the
    #                   requested state until the Letter of Authorization (LOA) is available.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>pending</code>: The LAG has been approved and is being initialized.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>available</code>: The network link is established and the LAG is ready for use.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>down</code>: The network link is down.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleting</code>: The LAG is being deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleted</code>: The LAG is deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>unknown</code>: The state of the LAG is not available.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute location
    #   <p>The location of the LAG.</p>
    #   @return [String]
    # @!attribute region
    #   <p>The Amazon Web Services Region where the connection is located.</p>
    #   @return [String]
    # @!attribute minimum_links
    #   <p>The minimum number of physical dedicated connections that must be operational for the LAG itself to be operational.</p>
    #   @return [Integer]
    # @!attribute aws_device
    #   <p>The Direct Connect endpoint that hosts the LAG.</p>
    #   @return [String]
    # @!attribute aws_device_v2
    #   <p>The Direct Connect endpoint that hosts the LAG.</p>
    #   @return [String]
    # @!attribute aws_logical_device_id
    #   <p>The Direct Connect endpoint that terminates the logical connection. This device might be
    #         different than the device that terminates the physical connection.</p>
    #   @return [String]
    # @!attribute connections
    #   <p>The connections bundled by the LAG.</p>
    #   @return [Array<Types::Connection>]
    # @!attribute allows_hosted_connections
    #   <p>Indicates whether the LAG can host other connections.</p>
    #   @return [Boolean]
    # @!attribute jumbo_frame_capable
    #   <p>Indicates whether jumbo frames are supported.</p>
    #   @return [Boolean]
    # @!attribute has_logical_redundancy
    #   <p>Indicates whether the LAG supports a secondary BGP peer in the same address family (IPv4/IPv6).</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags associated with the LAG.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute provider_name
    #   <p>The name of the service provider associated with the LAG.</p>
    #   @return [String]
    # @!attribute mac_sec_capable
    #   <p>Indicates whether the LAG supports MAC Security (MACsec).</p>
    #   @return [Boolean]
    # @!attribute encryption_mode
    #   <p>The LAG MAC Security (MACsec) encryption mode.</p>
    #            <p>The valid values are <code>no_encrypt</code>, <code>should_encrypt</code>, and <code>must_encrypt</code>.</p>
    #   @return [String]
    # @!attribute mac_sec_keys
    #   <p>The MAC Security (MACsec) security keys associated with the LAG.</p>
    #   @return [Array<Types::MacSecKey>]
    class UpdateLagOutput < Struct.new(
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
      :aws_logical_device_id,
      :connections,
      :allows_hosted_connections,
      :jumbo_frame_capable,
      :has_logical_redundancy,
      :tags,
      :provider_name,
      :mac_sec_capable,
      :encryption_mode,
      :mac_sec_keys,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:number_of_connections] = 0 unless options.key?(:number_of_connections)
        options[:minimum_links] = 0 unless options.key?(:minimum_links)
        options[:allows_hosted_connections] = false unless options.key?(:allows_hosted_connections)
        super
      end
    end

    # @!attribute lag_id
    #   <p>The ID of the LAG.</p>
    #   @return [String]
    # @!attribute lag_name
    #   <p>The name of the LAG.</p>
    #   @return [String]
    # @!attribute minimum_links
    #   <p>The minimum number of physical connections that must be operational for the LAG itself to be operational.</p>
    #   @return [Integer]
    # @!attribute encryption_mode
    #   <p>The LAG MAC Security (MACsec) encryption mode.</p>
    #            <p>Amazon Web Services applies the value to all connections which are part of the LAG.</p>
    #   @return [String]
    class UpdateLagRequest < Struct.new(
      :lag_id,
      :lag_name,
      :minimum_links,
      :encryption_mode,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a virtual interface.</p>
    # @!attribute owner_account
    #   <p>The ID of the Amazon Web Services account that owns the virtual interface.</p>
    #   @return [String]
    # @!attribute virtual_interface_id
    #   <p>The ID of the virtual interface.</p>
    #   @return [String]
    # @!attribute location
    #   <p>The location of the connection.</p>
    #   @return [String]
    # @!attribute connection_id
    #   <p>The ID of the connection.</p>
    #   @return [String]
    # @!attribute virtual_interface_type
    #   <p>The type of virtual interface. The possible values are <code>private</code>, <code>public</code> and <code>transit</code>.</p>
    #   @return [String]
    # @!attribute virtual_interface_name
    #   <p>The name of the virtual interface assigned by the customer network. The name has a maximum of 100 characters. The following are valid characters: a-z, 0-9 and a hyphen (-).</p>
    #   @return [String]
    # @!attribute vlan
    #   <p>The ID of the VLAN.</p>
    #   @return [Integer]
    # @!attribute asn
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
    #   @return [Integer]
    # @!attribute asn_long
    #   <p>The long ASN for the virtual interface. The valid range is from 1 to 4294967294 for BGP configuration.</p>
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
    #   @return [Integer]
    # @!attribute amazon_side_asn
    #   <p>The autonomous system number (AS) for the Amazon side of the connection.</p>
    #   @return [Integer]
    # @!attribute auth_key
    #   <p>The authentication key for BGP configuration. This string has a minimum length of 6 characters and and a maximun lenth of 80 characters.</p>
    #   @return [String]
    # @!attribute amazon_address
    #   <p>The IP address assigned to the Amazon interface.</p>
    #   @return [String]
    # @!attribute customer_address
    #   <p>The IP address assigned to the customer interface.</p>
    #   @return [String]
    # @!attribute address_family
    #   <p>The address family for the BGP peer.</p>
    #   @return [String]
    # @!attribute virtual_interface_state
    #   <p>The state of the virtual interface. The following are the possible values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>confirming</code>: The creation of the virtual interface is pending confirmation from the virtual interface owner. If the owner of the virtual interface is different from the owner of the connection on which it is provisioned, then the virtual interface will remain in this state until it is confirmed by the virtual interface owner.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>verifying</code>: This state only applies to public virtual interfaces. Each public virtual interface needs validation before the virtual interface can be created.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>pending</code>: A virtual interface is in this state from the time that it is created until the virtual interface is ready to forward traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>available</code>: A virtual interface that is able to forward traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>down</code>: A virtual interface that is BGP down.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>testing</code>: A virtual interface is in this state immediately after calling <a>StartBgpFailoverTest</a> and remains in this state during the duration of the test.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleting</code>: A virtual interface is in this state immediately after calling <a>DeleteVirtualInterface</a> until it can no longer forward traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleted</code>: A virtual interface that cannot forward traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>rejected</code>: The virtual interface owner has declined creation of the virtual interface. If a virtual interface in the <code>Confirming</code> state is deleted by the virtual interface owner, the virtual interface enters the <code>Rejected</code> state.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>unknown</code>: The state of the virtual interface is not available.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute customer_router_config
    #   <p>The customer router configuration.</p>
    #   @return [String]
    # @!attribute mtu
    #   <p>The maximum transmission unit (MTU), in bytes. The supported values are 1500 and 8500. The default value is 1500</p>
    #   @return [Integer]
    # @!attribute jumbo_frame_capable
    #   <p>Indicates whether jumbo frames are supported.</p>
    #   @return [Boolean]
    # @!attribute virtual_gateway_id
    #   <p>The ID of the virtual private gateway. Applies only to private virtual interfaces.</p>
    #   @return [String]
    # @!attribute direct_connect_gateway_id
    #   <p>The ID of the Direct Connect gateway.</p>
    #   @return [String]
    # @!attribute route_filter_prefixes
    #   <p>The routes to be advertised to the Amazon Web Services network in this Region. Applies to public virtual interfaces.</p>
    #   @return [Array<Types::RouteFilterPrefix>]
    # @!attribute bgp_peers
    #   <p>The BGP peers configured on this virtual interface.</p>
    #   @return [Array<Types::BGPPeer>]
    # @!attribute region
    #   <p>The Amazon Web Services Region where the virtual interface is located.</p>
    #   @return [String]
    # @!attribute aws_device_v2
    #   <p>The Direct Connect endpoint that terminates the physical connection.</p>
    #   @return [String]
    # @!attribute aws_logical_device_id
    #   <p>The Direct Connect endpoint that terminates the logical connection. This device might be
    #         different than the device that terminates the physical connection.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags associated with the virtual interface.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute site_link_enabled
    #   <p>Indicates whether SiteLink is enabled.</p>
    #   @return [Boolean]
    class UpdateVirtualInterfaceAttributesOutput < Struct.new(
      :owner_account,
      :virtual_interface_id,
      :location,
      :connection_id,
      :virtual_interface_type,
      :virtual_interface_name,
      :vlan,
      :asn,
      :asn_long,
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
      :aws_logical_device_id,
      :tags,
      :site_link_enabled,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:vlan] = 0 unless options.key?(:vlan)
        options[:asn] = 0 unless options.key?(:asn)
        super
      end
    end

    # @!attribute virtual_interface_id
    #   <p>The ID of the virtual private interface.</p>
    #   @return [String]
    # @!attribute mtu
    #   <p>The maximum transmission unit (MTU), in bytes. The supported values are 1500 and 8500. The default value is 1500.</p>
    #   @return [Integer]
    # @!attribute enable_site_link
    #   <p>Indicates whether to enable or disable SiteLink.</p>
    #   @return [Boolean]
    # @!attribute virtual_interface_name
    #   <p>The name of the virtual private interface.</p>
    #   @return [String]
    class UpdateVirtualInterfaceAttributesRequest < Struct.new(
      :virtual_interface_id,
      :mtu,
      :enable_site_link,
      :virtual_interface_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a virtual private gateway for a private virtual interface.</p>
    # @!attribute virtual_gateway_id
    #   <p>The ID of the virtual private gateway.</p>
    #   @return [String]
    # @!attribute virtual_gateway_state
    #   <p>The state of the virtual private gateway. The following are the possible values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>pending</code>: Initial state after creating the virtual private gateway.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>available</code>: Ready for use by a private virtual interface.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleting</code>: Initial state after deleting the virtual private gateway.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleted</code>: The virtual private gateway is deleted. The private virtual interface is unable to send traffic over this gateway.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class VirtualGateway < Struct.new(
      :virtual_gateway_id,
      :virtual_gateway_state,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a virtual interface.</p>
    # @!attribute owner_account
    #   <p>The ID of the Amazon Web Services account that owns the virtual interface.</p>
    #   @return [String]
    # @!attribute virtual_interface_id
    #   <p>The ID of the virtual interface.</p>
    #   @return [String]
    # @!attribute location
    #   <p>The location of the connection.</p>
    #   @return [String]
    # @!attribute connection_id
    #   <p>The ID of the connection.</p>
    #   @return [String]
    # @!attribute virtual_interface_type
    #   <p>The type of virtual interface. The possible values are <code>private</code>, <code>public</code> and <code>transit</code>.</p>
    #   @return [String]
    # @!attribute virtual_interface_name
    #   <p>The name of the virtual interface assigned by the customer network. The name has a maximum of 100 characters. The following are valid characters: a-z, 0-9 and a hyphen (-).</p>
    #   @return [String]
    # @!attribute vlan
    #   <p>The ID of the VLAN.</p>
    #   @return [Integer]
    # @!attribute asn
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
    #   @return [Integer]
    # @!attribute asn_long
    #   <p>The long ASN for the virtual interface. The valid range is from 1 to 4294967294 for BGP configuration.</p>
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
    #   @return [Integer]
    # @!attribute amazon_side_asn
    #   <p>The autonomous system number (AS) for the Amazon side of the connection.</p>
    #   @return [Integer]
    # @!attribute auth_key
    #   <p>The authentication key for BGP configuration. This string has a minimum length of 6 characters and and a maximun lenth of 80 characters.</p>
    #   @return [String]
    # @!attribute amazon_address
    #   <p>The IP address assigned to the Amazon interface.</p>
    #   @return [String]
    # @!attribute customer_address
    #   <p>The IP address assigned to the customer interface.</p>
    #   @return [String]
    # @!attribute address_family
    #   <p>The address family for the BGP peer.</p>
    #   @return [String]
    # @!attribute virtual_interface_state
    #   <p>The state of the virtual interface. The following are the possible values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>confirming</code>: The creation of the virtual interface is pending confirmation from the virtual interface owner. If the owner of the virtual interface is different from the owner of the connection on which it is provisioned, then the virtual interface will remain in this state until it is confirmed by the virtual interface owner.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>verifying</code>: This state only applies to public virtual interfaces. Each public virtual interface needs validation before the virtual interface can be created.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>pending</code>: A virtual interface is in this state from the time that it is created until the virtual interface is ready to forward traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>available</code>: A virtual interface that is able to forward traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>down</code>: A virtual interface that is BGP down.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>testing</code>: A virtual interface is in this state immediately after calling <a>StartBgpFailoverTest</a> and remains in this state during the duration of the test.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleting</code>: A virtual interface is in this state immediately after calling <a>DeleteVirtualInterface</a> until it can no longer forward traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleted</code>: A virtual interface that cannot forward traffic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>rejected</code>: The virtual interface owner has declined creation of the virtual interface. If a virtual interface in the <code>Confirming</code> state is deleted by the virtual interface owner, the virtual interface enters the <code>Rejected</code> state.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>unknown</code>: The state of the virtual interface is not available.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute customer_router_config
    #   <p>The customer router configuration.</p>
    #   @return [String]
    # @!attribute mtu
    #   <p>The maximum transmission unit (MTU), in bytes. The supported values are 1500 and 8500. The default value is 1500</p>
    #   @return [Integer]
    # @!attribute jumbo_frame_capable
    #   <p>Indicates whether jumbo frames are supported.</p>
    #   @return [Boolean]
    # @!attribute virtual_gateway_id
    #   <p>The ID of the virtual private gateway. Applies only to private virtual interfaces.</p>
    #   @return [String]
    # @!attribute direct_connect_gateway_id
    #   <p>The ID of the Direct Connect gateway.</p>
    #   @return [String]
    # @!attribute route_filter_prefixes
    #   <p>The routes to be advertised to the Amazon Web Services network in this Region. Applies to public virtual interfaces.</p>
    #   @return [Array<Types::RouteFilterPrefix>]
    # @!attribute bgp_peers
    #   <p>The BGP peers configured on this virtual interface.</p>
    #   @return [Array<Types::BGPPeer>]
    # @!attribute region
    #   <p>The Amazon Web Services Region where the virtual interface is located.</p>
    #   @return [String]
    # @!attribute aws_device_v2
    #   <p>The Direct Connect endpoint that terminates the physical connection.</p>
    #   @return [String]
    # @!attribute aws_logical_device_id
    #   <p>The Direct Connect endpoint that terminates the logical connection. This device might be
    #         different than the device that terminates the physical connection.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags associated with the virtual interface.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute site_link_enabled
    #   <p>Indicates whether SiteLink is enabled.</p>
    #   @return [Boolean]
    class VirtualInterface < Struct.new(
      :owner_account,
      :virtual_interface_id,
      :location,
      :connection_id,
      :virtual_interface_type,
      :virtual_interface_name,
      :vlan,
      :asn,
      :asn_long,
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
      :aws_logical_device_id,
      :tags,
      :site_link_enabled,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:vlan] = 0 unless options.key?(:vlan)
        options[:asn] = 0 unless options.key?(:asn)
        super
      end
    end

    # <p>Information about the virtual interface failover test.</p>
    # @!attribute test_id
    #   <p>The ID of the virtual interface failover test.</p>
    #   @return [String]
    # @!attribute virtual_interface_id
    #   <p>The ID of the tested virtual interface.</p>
    #   @return [String]
    # @!attribute bgp_peers
    #   <p>The BGP peers that were put in the DOWN state as part of the virtual interface failover test.</p>
    #   @return [Array<String>]
    # @!attribute status
    #   <p>The status of the virtual interface failover test.</p>
    #   @return [String]
    # @!attribute owner_account
    #   <p>The owner ID of the tested virtual interface.</p>
    #   @return [String]
    # @!attribute test_duration_in_minutes
    #   <p>The time that the virtual interface failover test ran in minutes.</p>
    #   @return [Integer]
    # @!attribute start_time
    #   <p>The time that the virtual interface moves to the DOWN state.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The time that the virtual interface moves out of the DOWN state.</p>
    #   @return [Time]
    class VirtualInterfaceTestHistory < Struct.new(
      :test_id,
      :virtual_interface_id,
      :bgp_peers,
      :status,
      :owner_account,
      :test_duration_in_minutes,
      :start_time,
      :end_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end
