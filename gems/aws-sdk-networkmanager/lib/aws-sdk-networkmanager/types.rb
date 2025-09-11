# frozen_string_literal: true

# This is generated code!

module Aws::NetworkManager
  # This module contains the types returned by client operations.
  module Types

    # <p>Specifies a location in Amazon Web Services.</p>
    # @!attribute zone
    #   <p>The Zone that the device is located in. Specify the ID of an Availability Zone, Local
    #               Zone, Wavelength Zone, or an Outpost.</p>
    #   @return [String]
    # @!attribute subnet_arn
    #   <p>The Amazon Resource Name (ARN) of the subnet that the device is located in.</p>
    #   @return [String]
    class AWSLocation < Struct.new(
      :zone,
      :subnet_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute attachment_id
    #   <p>The ID of the attachment. </p>
    #   @return [String]
    class AcceptAttachmentRequest < Struct.new(
      :attachment_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute attachment
    #   <p>The response to the attachment request. </p>
    #   @return [Types::Attachment]
    class AcceptAttachmentResponse < Struct.new(
      :attachment,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You do not have sufficient access to perform this action.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the current status of an account within an Amazon Web Services Organization, including service-linked roles (SLRs).</p>
    # @!attribute account_id
    #   <p>The ID of an account within the Amazon Web Services Organization.</p>
    #   @return [String]
    # @!attribute slr_deployment_status
    #   <p>The status of SLR deployment for the account.</p>
    #   @return [String]
    class AccountStatus < Struct.new(
      :account_id,
      :slr_deployment_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute global_network_id
    #   <p>The ID of your global network.</p>
    #   @return [String]
    # @!attribute connect_peer_id
    #   <p>The ID of the Connect peer.</p>
    #   @return [String]
    # @!attribute device_id
    #   <p>The ID of the device.</p>
    #   @return [String]
    # @!attribute link_id
    #   <p>The ID of the link.</p>
    #   @return [String]
    class AssociateConnectPeerRequest < Struct.new(
      :global_network_id,
      :connect_peer_id,
      :device_id,
      :link_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute connect_peer_association
    #   <p>The response to the Connect peer request.</p>
    #   @return [Types::ConnectPeerAssociation]
    class AssociateConnectPeerResponse < Struct.new(
      :connect_peer_association,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute customer_gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the customer gateway.</p>
    #   @return [String]
    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #   @return [String]
    # @!attribute device_id
    #   <p>The ID of the device.</p>
    #   @return [String]
    # @!attribute link_id
    #   <p>The ID of the link.</p>
    #   @return [String]
    class AssociateCustomerGatewayRequest < Struct.new(
      :customer_gateway_arn,
      :global_network_id,
      :device_id,
      :link_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute customer_gateway_association
    #   <p>The customer gateway association.</p>
    #   @return [Types::CustomerGatewayAssociation]
    class AssociateCustomerGatewayResponse < Struct.new(
      :customer_gateway_association,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #   @return [String]
    # @!attribute device_id
    #   <p>The ID of the device.</p>
    #   @return [String]
    # @!attribute link_id
    #   <p>The ID of the link.</p>
    #   @return [String]
    class AssociateLinkRequest < Struct.new(
      :global_network_id,
      :device_id,
      :link_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute link_association
    #   <p>The link association.</p>
    #   @return [Types::LinkAssociation]
    class AssociateLinkResponse < Struct.new(
      :link_association,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #   @return [String]
    # @!attribute transit_gateway_connect_peer_arn
    #   <p>The Amazon Resource Name (ARN) of the Connect peer.</p>
    #   @return [String]
    # @!attribute device_id
    #   <p>The ID of the device.</p>
    #   @return [String]
    # @!attribute link_id
    #   <p>The ID of the link.</p>
    #   @return [String]
    class AssociateTransitGatewayConnectPeerRequest < Struct.new(
      :global_network_id,
      :transit_gateway_connect_peer_arn,
      :device_id,
      :link_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute transit_gateway_connect_peer_association
    #   <p>The transit gateway Connect peer association.</p>
    #   @return [Types::TransitGatewayConnectPeerAssociation]
    class AssociateTransitGatewayConnectPeerResponse < Struct.new(
      :transit_gateway_connect_peer_association,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a core network attachment.</p>
    # @!attribute core_network_id
    #   <p>The ID of a core network.</p>
    #   @return [String]
    # @!attribute core_network_arn
    #   <p>The ARN of a core network.</p>
    #   @return [String]
    # @!attribute attachment_id
    #   <p>The ID of the attachment.</p>
    #   @return [String]
    # @!attribute owner_account_id
    #   <p>The ID of the attachment account owner.</p>
    #   @return [String]
    # @!attribute attachment_type
    #   <p>The type of attachment.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the attachment.</p>
    #   @return [String]
    # @!attribute edge_location
    #   <p>The Region where the edge is located. This is returned for all attachment types except a Direct Connect gateway attachment, which instead returns <code>EdgeLocations</code>.</p>
    #   @return [String]
    # @!attribute edge_locations
    #   <p>The edge locations that the Direct Connect gateway is associated with. This is returned only for Direct Connect gateway attachments. All other attachment types retrun <code>EdgeLocation</code>.</p>
    #   @return [Array<String>]
    # @!attribute resource_arn
    #   <p>The attachment resource ARN.</p>
    #   @return [String]
    # @!attribute attachment_policy_rule_number
    #   <p>The policy rule number associated with the attachment.</p>
    #   @return [Integer]
    # @!attribute segment_name
    #   <p>The name of the segment attachment.</p>
    #   @return [String]
    # @!attribute network_function_group_name
    #   <p>The name of the network function group.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags associated with the attachment.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute proposed_segment_change
    #   <p>The attachment to move from one segment to another.</p>
    #   @return [Types::ProposedSegmentChange]
    # @!attribute proposed_network_function_group_change
    #   <p>Describes a proposed change to a network function group associated with the attachment.</p>
    #   @return [Types::ProposedNetworkFunctionGroupChange]
    # @!attribute created_at
    #   <p>The timestamp when the attachment was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the attachment was last updated.</p>
    #   @return [Time]
    # @!attribute last_modification_errors
    #   <p>Describes the error associated with the attachment request.</p>
    #   @return [Array<Types::AttachmentError>]
    class Attachment < Struct.new(
      :core_network_id,
      :core_network_arn,
      :attachment_id,
      :owner_account_id,
      :attachment_type,
      :state,
      :edge_location,
      :edge_locations,
      :resource_arn,
      :attachment_policy_rule_number,
      :segment_name,
      :network_function_group_name,
      :tags,
      :proposed_segment_change,
      :proposed_network_function_group_change,
      :created_at,
      :updated_at,
      :last_modification_errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the error associated with an attachment request.</p>
    # @!attribute code
    #   <p>The error code for the attachment request. </p>
    #   @return [String]
    # @!attribute message
    #   <p>The message associated with the error <code>code</code>.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The ARN of the requested attachment resource.</p>
    #   @return [String]
    # @!attribute request_id
    #   <p>The ID of the attachment request.</p>
    #   @return [String]
    class AttachmentError < Struct.new(
      :code,
      :message,
      :resource_arn,
      :request_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes bandwidth information.</p>
    # @!attribute upload_speed
    #   <p>Upload speed in Mbps.</p>
    #   @return [Integer]
    # @!attribute download_speed
    #   <p>Download speed in Mbps.</p>
    #   @return [Integer]
    class Bandwidth < Struct.new(
      :upload_speed,
      :download_speed,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the BGP options.</p>
    # @!attribute peer_asn
    #   <p>The Peer ASN of the BGP.</p>
    #   @return [Integer]
    class BgpOptions < Struct.new(
      :peer_asn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>There was a conflict processing the request. Updating or deleting the resource can
    #             cause an inconsistent state.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the resource.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The resource type.</p>
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a core network Connect attachment.</p>
    # @!attribute attachment
    #   <p>The attachment details.</p>
    #   @return [Types::Attachment]
    # @!attribute transport_attachment_id
    #   <p>The ID of the transport attachment.</p>
    #   @return [String]
    # @!attribute options
    #   <p>Options for connecting an attachment.</p>
    #   @return [Types::ConnectAttachmentOptions]
    class ConnectAttachment < Struct.new(
      :attachment,
      :transport_attachment_id,
      :options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a core network Connect attachment options.</p>
    # @!attribute protocol
    #   <p>The protocol used for the attachment connection.</p>
    #   @return [String]
    class ConnectAttachmentOptions < Struct.new(
      :protocol,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a core network Connect peer.</p>
    # @!attribute core_network_id
    #   <p>The ID of a core network.</p>
    #   @return [String]
    # @!attribute connect_attachment_id
    #   <p>The ID of the attachment to connect.</p>
    #   @return [String]
    # @!attribute connect_peer_id
    #   <p>The ID of the Connect peer.</p>
    #   @return [String]
    # @!attribute edge_location
    #   <p>The Connect peer Regions where edges are located.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the Connect peer.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the Connect peer was created.</p>
    #   @return [Time]
    # @!attribute configuration
    #   <p>The configuration of the Connect peer.</p>
    #   @return [Types::ConnectPeerConfiguration]
    # @!attribute tags
    #   <p>The list of key-value tags associated with the Connect peer.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute subnet_arn
    #   <p>The subnet ARN for the Connect peer. This only applies only when the protocol is NO_ENCAP.</p>
    #   @return [String]
    # @!attribute last_modification_errors
    #   <p>Describes the error associated with the attachment request.</p>
    #   @return [Array<Types::ConnectPeerError>]
    class ConnectPeer < Struct.new(
      :core_network_id,
      :connect_attachment_id,
      :connect_peer_id,
      :edge_location,
      :state,
      :created_at,
      :configuration,
      :tags,
      :subnet_arn,
      :last_modification_errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a core network Connect peer association.</p>
    # @!attribute connect_peer_id
    #   <p>The ID of the Connect peer.</p>
    #   @return [String]
    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #   @return [String]
    # @!attribute device_id
    #   <p>The ID of the device to connect to.</p>
    #   @return [String]
    # @!attribute link_id
    #   <p>The ID of the link.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the Connect peer association.</p>
    #   @return [String]
    class ConnectPeerAssociation < Struct.new(
      :connect_peer_id,
      :global_network_id,
      :device_id,
      :link_id,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a core network BGP configuration.</p>
    # @!attribute core_network_asn
    #   <p>The ASN of the Coret Network.</p>
    #   @return [Integer]
    # @!attribute peer_asn
    #   <p>The ASN of the Connect peer.</p>
    #   @return [Integer]
    # @!attribute core_network_address
    #   <p>The address of a core network.</p>
    #   @return [String]
    # @!attribute peer_address
    #   <p>The address of a core network Connect peer.</p>
    #   @return [String]
    class ConnectPeerBgpConfiguration < Struct.new(
      :core_network_asn,
      :peer_asn,
      :core_network_address,
      :peer_address,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a core network Connect peer configuration.</p>
    # @!attribute core_network_address
    #   <p>The IP address of a core network.</p>
    #   @return [String]
    # @!attribute peer_address
    #   <p>The IP address of the Connect peer.</p>
    #   @return [String]
    # @!attribute inside_cidr_blocks
    #   <p>The inside IP addresses used for a Connect peer configuration.</p>
    #   @return [Array<String>]
    # @!attribute protocol
    #   <p>The protocol used for a Connect peer configuration.</p>
    #   @return [String]
    # @!attribute bgp_configurations
    #   <p>The Connect peer BGP configurations.</p>
    #   @return [Array<Types::ConnectPeerBgpConfiguration>]
    class ConnectPeerConfiguration < Struct.new(
      :core_network_address,
      :peer_address,
      :inside_cidr_blocks,
      :protocol,
      :bgp_configurations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an error associated with a Connect peer request</p>
    # @!attribute code
    #   <p>The error code for the Connect peer request.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The message associated with the error <code>code</code>.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The ARN of the requested Connect peer resource.</p>
    #   @return [String]
    # @!attribute request_id
    #   <p>The ID of the Connect peer request.</p>
    #   @return [String]
    class ConnectPeerError < Struct.new(
      :code,
      :message,
      :resource_arn,
      :request_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary description of a Connect peer.</p>
    # @!attribute core_network_id
    #   <p>The ID of a core network.</p>
    #   @return [String]
    # @!attribute connect_attachment_id
    #   <p>The ID of a Connect peer attachment.</p>
    #   @return [String]
    # @!attribute connect_peer_id
    #   <p>The ID of a Connect peer.</p>
    #   @return [String]
    # @!attribute edge_location
    #   <p>The Region where the edge is located.</p>
    #   @return [String]
    # @!attribute connect_peer_state
    #   <p>The state of a Connect peer.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when a Connect peer was created.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>The list of key-value tags associated with the Connect peer summary.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute subnet_arn
    #   <p>The subnet ARN for the Connect peer summary.</p>
    #   @return [String]
    class ConnectPeerSummary < Struct.new(
      :core_network_id,
      :connect_attachment_id,
      :connect_peer_id,
      :edge_location,
      :connect_peer_state,
      :created_at,
      :tags,
      :subnet_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a connection.</p>
    # @!attribute connection_id
    #   <p>The ID of the connection.</p>
    #   @return [String]
    # @!attribute connection_arn
    #   <p>The Amazon Resource Name (ARN) of the connection.</p>
    #   @return [String]
    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #   @return [String]
    # @!attribute device_id
    #   <p>The ID of the first device in the connection.</p>
    #   @return [String]
    # @!attribute connected_device_id
    #   <p>The ID of the second device in the connection.</p>
    #   @return [String]
    # @!attribute link_id
    #   <p>The ID of the link for the first device in the connection.</p>
    #   @return [String]
    # @!attribute connected_link_id
    #   <p>The ID of the link for the second device in the connection.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the connection.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time that the connection was created.</p>
    #   @return [Time]
    # @!attribute state
    #   <p>The state of the connection.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags for the connection.</p>
    #   @return [Array<Types::Tag>]
    class Connection < Struct.new(
      :connection_id,
      :connection_arn,
      :global_network_id,
      :device_id,
      :connected_device_id,
      :link_id,
      :connected_link_id,
      :description,
      :created_at,
      :state,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes connection health.</p>
    # @!attribute type
    #   <p>The connection type.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The connection status.</p>
    #   @return [String]
    # @!attribute timestamp
    #   <p>The time the status was last updated.</p>
    #   @return [Time]
    class ConnectionHealth < Struct.new(
      :type,
      :status,
      :timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a core network.</p>
    # @!attribute global_network_id
    #   <p>The ID of the global network that your core network is a part of. </p>
    #   @return [String]
    # @!attribute core_network_id
    #   <p>The ID of a core network.</p>
    #   @return [String]
    # @!attribute core_network_arn
    #   <p>The ARN of a core network.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of a core network.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when a core network was created.</p>
    #   @return [Time]
    # @!attribute state
    #   <p>The current state of a core network.</p>
    #   @return [String]
    # @!attribute segments
    #   <p>The segments within a core network.</p>
    #   @return [Array<Types::CoreNetworkSegment>]
    # @!attribute network_function_groups
    #   <p>The network function groups associated with a core network.</p>
    #   @return [Array<Types::CoreNetworkNetworkFunctionGroup>]
    # @!attribute edges
    #   <p>The edges within a core network.</p>
    #   @return [Array<Types::CoreNetworkEdge>]
    # @!attribute tags
    #   <p>The list of key-value tags associated with a core network.</p>
    #   @return [Array<Types::Tag>]
    class CoreNetwork < Struct.new(
      :global_network_id,
      :core_network_id,
      :core_network_arn,
      :description,
      :created_at,
      :state,
      :segments,
      :network_function_groups,
      :edges,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details describing a core network change.</p>
    # @!attribute type
    #   <p>The type of change.</p>
    #   @return [String]
    # @!attribute action
    #   <p>The action to take for a core network.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The resource identifier.</p>
    #   @return [String]
    # @!attribute previous_values
    #   <p>The previous values for a core network.</p>
    #   @return [Types::CoreNetworkChangeValues]
    # @!attribute new_values
    #   <p>The new value for a core network</p>
    #   @return [Types::CoreNetworkChangeValues]
    # @!attribute identifier_path
    #   <p>Uniquely identifies the path for a change within the changeset. For example, the <code>IdentifierPath</code> for a core network segment change might be <code>"CORE_NETWORK_SEGMENT/us-east-1/devsegment"</code>.</p>
    #   @return [String]
    class CoreNetworkChange < Struct.new(
      :type,
      :action,
      :identifier,
      :previous_values,
      :new_values,
      :identifier_path,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a core network change event. This can be a change to a segment, attachment, route, etc.</p>
    # @!attribute type
    #   <p>Describes the type of change event. </p>
    #   @return [String]
    # @!attribute action
    #   <p>The action taken for the change event.</p>
    #   @return [String]
    # @!attribute identifier_path
    #   <p>Uniquely identifies the path for a change within the changeset. For example, the <code>IdentifierPath</code> for a core network segment change might be <code>"CORE_NETWORK_SEGMENT/us-east-1/devsegment"</code>.</p>
    #   @return [String]
    # @!attribute event_time
    #   <p>The timestamp for an event change in status.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The status of the core network change event.</p>
    #   @return [String]
    # @!attribute values
    #   <p>Details of the change event.</p>
    #   @return [Types::CoreNetworkChangeEventValues]
    class CoreNetworkChangeEvent < Struct.new(
      :type,
      :action,
      :identifier_path,
      :event_time,
      :status,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a core network change event.</p>
    # @!attribute edge_location
    #   <p>The edge location for the core network change event.</p>
    #   @return [String]
    # @!attribute segment_name
    #   <p>The segment name if the change event is associated with a segment.</p>
    #   @return [String]
    # @!attribute network_function_group_name
    #   <p>The changed network function group name.</p>
    #   @return [String]
    # @!attribute attachment_id
    #   <p>The ID of the attachment if the change event is associated with an attachment.  </p>
    #   @return [String]
    # @!attribute cidr
    #   <p>For a <code>STATIC_ROUTE</code> event, this is the IP address.</p>
    #   @return [String]
    class CoreNetworkChangeEventValues < Struct.new(
      :edge_location,
      :segment_name,
      :network_function_group_name,
      :attachment_id,
      :cidr,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a core network change.</p>
    # @!attribute segment_name
    #   <p>The names of the segments in a core network.</p>
    #   @return [String]
    # @!attribute network_function_group_name
    #   <p>The network function group name if the change event is associated with a network function group.</p>
    #   @return [String]
    # @!attribute edge_locations
    #   <p>The Regions where edges are located in a core network. </p>
    #   @return [Array<String>]
    # @!attribute asn
    #   <p>The ASN of a core network.</p>
    #   @return [Integer]
    # @!attribute cidr
    #   <p>The IP addresses used for a core network.</p>
    #   @return [String]
    # @!attribute destination_identifier
    #   <p>The ID of the destination.</p>
    #   @return [String]
    # @!attribute inside_cidr_blocks
    #   <p>The inside IP addresses used for core network change values.</p>
    #   @return [Array<String>]
    # @!attribute shared_segments
    #   <p>The shared segments for a core network change value. </p>
    #   @return [Array<String>]
    # @!attribute service_insertion_actions
    #   <p>Describes the service insertion action. </p>
    #   @return [Array<Types::ServiceInsertionAction>]
    # @!attribute vpn_ecmp_support
    #   <p>Indicates whether Equal Cost Multipath (ECMP) is enabled for the core network.</p>
    #   @return [Boolean]
    # @!attribute dns_support
    #   <p>Indicates whether public DNS support is supported. The default is <code>true</code>. </p>
    #   @return [Boolean]
    # @!attribute security_group_referencing_support
    #   <p>Indicates whether security group referencing is enabled for the core network.</p>
    #   @return [Boolean]
    class CoreNetworkChangeValues < Struct.new(
      :segment_name,
      :network_function_group_name,
      :edge_locations,
      :asn,
      :cidr,
      :destination_identifier,
      :inside_cidr_blocks,
      :shared_segments,
      :service_insertion_actions,
      :vpn_ecmp_support,
      :dns_support,
      :security_group_referencing_support,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:vpn_ecmp_support] = false unless options.key?(:vpn_ecmp_support)
        options[:dns_support] = false unless options.key?(:dns_support)
        options[:security_group_referencing_support] = false unless options.key?(:security_group_referencing_support)
        super
      end
    end

    # <p>Describes a core network edge.</p>
    # @!attribute edge_location
    #   <p>The Region where a core network edge is located.</p>
    #   @return [String]
    # @!attribute asn
    #   <p>The ASN of a core network edge.</p>
    #   @return [Integer]
    # @!attribute inside_cidr_blocks
    #   <p>The inside IP addresses used for core network edges.</p>
    #   @return [Array<String>]
    class CoreNetworkEdge < Struct.new(
      :edge_location,
      :asn,
      :inside_cidr_blocks,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a network function group.</p>
    # @!attribute name
    #   <p>The name of the network function group.</p>
    #   @return [String]
    # @!attribute edge_locations
    #   <p>The core network edge locations.</p>
    #   @return [Array<String>]
    # @!attribute segments
    #   <p>The segments associated with the network function group.</p>
    #   @return [Types::ServiceInsertionSegments]
    class CoreNetworkNetworkFunctionGroup < Struct.new(
      :name,
      :edge_locations,
      :segments,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a core network </p>
    # @!attribute core_network_id
    #   <p>The ID of the core network.</p>
    #   @return [String]
    # @!attribute network_function_group_name
    #   <p>The network function group name.</p>
    #   @return [String]
    # @!attribute edge_location
    #   <p>The location for the core network edge.</p>
    #   @return [String]
    class CoreNetworkNetworkFunctionGroupIdentifier < Struct.new(
      :core_network_id,
      :network_function_group_name,
      :edge_location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a core network policy. You can have only one LIVE Core Policy.</p>
    # @!attribute core_network_id
    #   <p>The ID of a core network.</p>
    #   @return [String]
    # @!attribute policy_version_id
    #   <p>The ID of the policy version.</p>
    #   @return [Integer]
    # @!attribute alias
    #   <p>Whether a core network policy is the current LIVE policy or the most recently submitted policy.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of a core network policy.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when a core network policy was created.</p>
    #   @return [Time]
    # @!attribute change_set_state
    #   <p>The state of a core network policy.</p>
    #   @return [String]
    # @!attribute policy_errors
    #   <p>Describes any errors in a core network policy.</p>
    #   @return [Array<Types::CoreNetworkPolicyError>]
    # @!attribute policy_document
    #   <p>Describes a core network policy.</p>
    #   @return [String]
    class CoreNetworkPolicy < Struct.new(
      :core_network_id,
      :policy_version_id,
      :alias,
      :description,
      :created_at,
      :change_set_state,
      :policy_errors,
      :policy_document,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides details about an error in a core network policy.</p>
    # @!attribute error_code
    #   <p>The error code associated with a core network policy error.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The message associated with a core network policy error code.</p>
    #   @return [String]
    # @!attribute path
    #   <p>The JSON path where the error was discovered in the policy document.</p>
    #   @return [String]
    class CoreNetworkPolicyError < Struct.new(
      :error_code,
      :message,
      :path,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a core network policy exception.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute errors
    #   <p>Describes a core network policy exception.</p>
    #   @return [Array<Types::CoreNetworkPolicyError>]
    class CoreNetworkPolicyException < Struct.new(
      :message,
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a core network policy version.</p>
    # @!attribute core_network_id
    #   <p>The ID of a core network.</p>
    #   @return [String]
    # @!attribute policy_version_id
    #   <p>The ID of the policy version.</p>
    #   @return [Integer]
    # @!attribute alias
    #   <p>Whether a core network policy is the current policy or the most recently submitted policy.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of a core network policy version.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when a core network policy version was created.</p>
    #   @return [Time]
    # @!attribute change_set_state
    #   <p>The status of the policy version change set.</p>
    #   @return [String]
    class CoreNetworkPolicyVersion < Struct.new(
      :core_network_id,
      :policy_version_id,
      :alias,
      :description,
      :created_at,
      :change_set_state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a core network segment, which are dedicated routes. Only attachments within this segment can communicate with each other.</p>
    # @!attribute name
    #   <p>The name of a core network segment.</p>
    #   @return [String]
    # @!attribute edge_locations
    #   <p>The Regions where the edges are located.</p>
    #   @return [Array<String>]
    # @!attribute shared_segments
    #   <p>The shared segments of a core network.</p>
    #   @return [Array<String>]
    class CoreNetworkSegment < Struct.new(
      :name,
      :edge_locations,
      :shared_segments,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns details about a core network edge.</p>
    # @!attribute core_network_id
    #   <p>The ID of a core network.</p>
    #   @return [String]
    # @!attribute segment_name
    #   <p>The name of the segment edge.</p>
    #   @return [String]
    # @!attribute edge_location
    #   <p>The Region where the segment edge is located.</p>
    #   @return [String]
    class CoreNetworkSegmentEdgeIdentifier < Struct.new(
      :core_network_id,
      :segment_name,
      :edge_location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns summary information about a core network.</p>
    # @!attribute core_network_id
    #   <p>The ID of a core network.</p>
    #   @return [String]
    # @!attribute core_network_arn
    #   <p>a core network ARN.</p>
    #   @return [String]
    # @!attribute global_network_id
    #   <p>The global network ID.</p>
    #   @return [String]
    # @!attribute owner_account_id
    #   <p>The ID of the account owner.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of a core network.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of a core network.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The key-value tags associated with a core network summary.</p>
    #   @return [Array<Types::Tag>]
    class CoreNetworkSummary < Struct.new(
      :core_network_id,
      :core_network_arn,
      :global_network_id,
      :owner_account_id,
      :state,
      :description,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute core_network_id
    #   <p>The ID of a core network where you want to create the attachment. </p>
    #   @return [String]
    # @!attribute edge_location
    #   <p>The Region where the edge is located.</p>
    #   @return [String]
    # @!attribute transport_attachment_id
    #   <p>The ID of the attachment between the two connections.</p>
    #   @return [String]
    # @!attribute options
    #   <p>Options for creating an attachment.</p>
    #   @return [Types::ConnectAttachmentOptions]
    # @!attribute tags
    #   <p>The list of key-value tags associated with the request.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute client_token
    #   <p>The client token associated with the request.</p>
    #   @return [String]
    class CreateConnectAttachmentRequest < Struct.new(
      :core_network_id,
      :edge_location,
      :transport_attachment_id,
      :options,
      :tags,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute connect_attachment
    #   <p>The response to a Connect attachment request.</p>
    #   @return [Types::ConnectAttachment]
    class CreateConnectAttachmentResponse < Struct.new(
      :connect_attachment,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute connect_attachment_id
    #   <p>The ID of the connection attachment.</p>
    #   @return [String]
    # @!attribute core_network_address
    #   <p>A Connect peer core network address. This only applies only when the protocol is <code>GRE</code>.</p>
    #   @return [String]
    # @!attribute peer_address
    #   <p>The Connect peer address.</p>
    #   @return [String]
    # @!attribute bgp_options
    #   <p>The Connect peer BGP options. This only applies only when the protocol is <code>GRE</code>.</p>
    #   @return [Types::BgpOptions]
    # @!attribute inside_cidr_blocks
    #   <p>The inside IP addresses used for BGP peering.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>The tags associated with the peer request.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute client_token
    #   <p>The client token associated with the request.</p>
    #   @return [String]
    # @!attribute subnet_arn
    #   <p>The subnet ARN for the Connect peer. This only applies only when the protocol is NO_ENCAP.</p>
    #   @return [String]
    class CreateConnectPeerRequest < Struct.new(
      :connect_attachment_id,
      :core_network_address,
      :peer_address,
      :bgp_options,
      :inside_cidr_blocks,
      :tags,
      :client_token,
      :subnet_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute connect_peer
    #   <p>The response to the request.</p>
    #   @return [Types::ConnectPeer]
    class CreateConnectPeerResponse < Struct.new(
      :connect_peer,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #   @return [String]
    # @!attribute device_id
    #   <p>The ID of the first device in the connection.</p>
    #   @return [String]
    # @!attribute connected_device_id
    #   <p>The ID of the second device in the connection.</p>
    #   @return [String]
    # @!attribute link_id
    #   <p>The ID of the link for the first device.</p>
    #   @return [String]
    # @!attribute connected_link_id
    #   <p>The ID of the link for the second device.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the connection.</p>
    #            <p>Length Constraints: Maximum length of 256 characters.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to apply to the resource during creation.</p>
    #   @return [Array<Types::Tag>]
    class CreateConnectionRequest < Struct.new(
      :global_network_id,
      :device_id,
      :connected_device_id,
      :link_id,
      :connected_link_id,
      :description,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute connection
    #   <p>Information about the connection.</p>
    #   @return [Types::Connection]
    class CreateConnectionResponse < Struct.new(
      :connection,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute global_network_id
    #   <p>The ID of the global network that a core network will be a part of. </p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of a core network.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Key-value tags associated with a core network request.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute policy_document
    #   <p>The policy document for creating a core network.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>The client token associated with a core network request.</p>
    #   @return [String]
    class CreateCoreNetworkRequest < Struct.new(
      :global_network_id,
      :description,
      :tags,
      :policy_document,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute core_network
    #   <p>Returns details about a core network.</p>
    #   @return [Types::CoreNetwork]
    class CreateCoreNetworkResponse < Struct.new(
      :core_network,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #   @return [String]
    # @!attribute aws_location
    #   <p>The Amazon Web Services location of the device, if applicable. For an on-premises device, you can omit this parameter.</p>
    #   @return [Types::AWSLocation]
    # @!attribute description
    #   <p>A description of the device.</p>
    #            <p>Constraints: Maximum length of 256 characters.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the device.</p>
    #   @return [String]
    # @!attribute vendor
    #   <p>The vendor of the device.</p>
    #            <p>Constraints: Maximum length of 128 characters.</p>
    #   @return [String]
    # @!attribute model
    #   <p>The model of the device.</p>
    #            <p>Constraints: Maximum length of 128 characters.</p>
    #   @return [String]
    # @!attribute serial_number
    #   <p>The serial number of the device.</p>
    #            <p>Constraints: Maximum length of 128 characters.</p>
    #   @return [String]
    # @!attribute location
    #   <p>The location of the device.</p>
    #   @return [Types::Location]
    # @!attribute site_id
    #   <p>The ID of the site.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to apply to the resource during creation.</p>
    #   @return [Array<Types::Tag>]
    class CreateDeviceRequest < Struct.new(
      :global_network_id,
      :aws_location,
      :description,
      :type,
      :vendor,
      :model,
      :serial_number,
      :location,
      :site_id,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute device
    #   <p>Information about the device.</p>
    #   @return [Types::Device]
    class CreateDeviceResponse < Struct.new(
      :device,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute core_network_id
    #   <p>The ID of the Cloud WAN core network that the Direct Connect gateway attachment should be attached to.</p>
    #   @return [String]
    # @!attribute direct_connect_gateway_arn
    #   <p>The ARN of the Direct Connect gateway attachment.</p>
    #   @return [String]
    # @!attribute edge_locations
    #   <p>One or more core network edge locations that the Direct Connect gateway attachment is associated with. </p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>The key value tags to apply to the Direct Connect gateway attachment during creation.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute client_token
    #   <p>client token</p>
    #   @return [String]
    class CreateDirectConnectGatewayAttachmentRequest < Struct.new(
      :core_network_id,
      :direct_connect_gateway_arn,
      :edge_locations,
      :tags,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute direct_connect_gateway_attachment
    #   <p>Describes the details of a <code>CreateDirectConnectGatewayAttachment</code> request.</p>
    #   @return [Types::DirectConnectGatewayAttachment]
    class CreateDirectConnectGatewayAttachmentResponse < Struct.new(
      :direct_connect_gateway_attachment,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute description
    #   <p>A description of the global network.</p>
    #            <p>Constraints: Maximum length of 256 characters.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to apply to the resource during creation.</p>
    #   @return [Array<Types::Tag>]
    class CreateGlobalNetworkRequest < Struct.new(
      :description,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute global_network
    #   <p>Information about the global network object.</p>
    #   @return [Types::GlobalNetwork]
    class CreateGlobalNetworkResponse < Struct.new(
      :global_network,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the link.</p>
    #            <p>Constraints: Maximum length of 256 characters.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the link.</p>
    #            <p>Constraints: Maximum length of 128 characters. Cannot include the following characters: | \ ^</p>
    #   @return [String]
    # @!attribute bandwidth
    #   <p> The upload speed and download speed in Mbps. </p>
    #   @return [Types::Bandwidth]
    # @!attribute provider
    #   <p>The provider of the link.</p>
    #            <p>Constraints: Maximum length of 128 characters. Cannot include the following characters: | \ ^</p>
    #   @return [String]
    # @!attribute site_id
    #   <p>The ID of the site.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to apply to the resource during creation.</p>
    #   @return [Array<Types::Tag>]
    class CreateLinkRequest < Struct.new(
      :global_network_id,
      :description,
      :type,
      :bandwidth,
      :provider,
      :site_id,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute link
    #   <p>Information about the link.</p>
    #   @return [Types::Link]
    class CreateLinkResponse < Struct.new(
      :link,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of your site.</p>
    #            <p>Constraints: Maximum length of 256 characters.</p>
    #   @return [String]
    # @!attribute location
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
    #   @return [Types::Location]
    # @!attribute tags
    #   <p>The tags to apply to the resource during creation.</p>
    #   @return [Array<Types::Tag>]
    class CreateSiteRequest < Struct.new(
      :global_network_id,
      :description,
      :location,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute site
    #   <p>Information about the site.</p>
    #   @return [Types::Site]
    class CreateSiteResponse < Struct.new(
      :site,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute core_network_id
    #   <p>The ID of a core network where you're creating a site-to-site VPN attachment.</p>
    #   @return [String]
    # @!attribute vpn_connection_arn
    #   <p>The ARN identifying the VPN attachment.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags associated with the request.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute client_token
    #   <p>The client token associated with the request.</p>
    #   @return [String]
    class CreateSiteToSiteVpnAttachmentRequest < Struct.new(
      :core_network_id,
      :vpn_connection_arn,
      :tags,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute site_to_site_vpn_attachment
    #   <p>Details about a site-to-site VPN attachment.</p>
    #   @return [Types::SiteToSiteVpnAttachment]
    class CreateSiteToSiteVpnAttachmentResponse < Struct.new(
      :site_to_site_vpn_attachment,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute core_network_id
    #   <p>The ID of a core network.</p>
    #   @return [String]
    # @!attribute transit_gateway_arn
    #   <p>The ARN of the transit gateway for the peering request.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The list of key-value tags associated with the request.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute client_token
    #   <p>The client token associated with the request.</p>
    #   @return [String]
    class CreateTransitGatewayPeeringRequest < Struct.new(
      :core_network_id,
      :transit_gateway_arn,
      :tags,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute transit_gateway_peering
    #   <p>Returns information about the transit gateway peering connection request.</p>
    #   @return [Types::TransitGatewayPeering]
    class CreateTransitGatewayPeeringResponse < Struct.new(
      :transit_gateway_peering,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute peering_id
    #   <p>The ID of the peer for the </p>
    #   @return [String]
    # @!attribute transit_gateway_route_table_arn
    #   <p>The ARN of the transit gateway route table for the attachment request. For example, <code>"TransitGatewayRouteTableArn": "arn:aws:ec2:us-west-2:123456789012:transit-gateway-route-table/tgw-rtb-9876543210123456"</code>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The list of key-value tags associated with the request.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute client_token
    #   <p>The client token associated with the request.</p>
    #   @return [String]
    class CreateTransitGatewayRouteTableAttachmentRequest < Struct.new(
      :peering_id,
      :transit_gateway_route_table_arn,
      :tags,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute transit_gateway_route_table_attachment
    #   <p>The route table associated with the create transit gateway route table attachment request.</p>
    #   @return [Types::TransitGatewayRouteTableAttachment]
    class CreateTransitGatewayRouteTableAttachmentResponse < Struct.new(
      :transit_gateway_route_table_attachment,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute core_network_id
    #   <p>The ID of a core network for the VPC attachment.</p>
    #   @return [String]
    # @!attribute vpc_arn
    #   <p>The ARN of the VPC.</p>
    #   @return [String]
    # @!attribute subnet_arns
    #   <p>The subnet ARN of the VPC attachment.</p>
    #   @return [Array<String>]
    # @!attribute options
    #   <p>Options for the VPC attachment.</p>
    #   @return [Types::VpcOptions]
    # @!attribute tags
    #   <p>The key-value tags associated with the request.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute client_token
    #   <p>The client token associated with the request.</p>
    #   @return [String]
    class CreateVpcAttachmentRequest < Struct.new(
      :core_network_id,
      :vpc_arn,
      :subnet_arns,
      :options,
      :tags,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute vpc_attachment
    #   <p>Provides details about the VPC attachment.</p>
    #   @return [Types::VpcAttachment]
    class CreateVpcAttachmentResponse < Struct.new(
      :vpc_attachment,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the association between a customer gateway, a device, and a link.</p>
    # @!attribute customer_gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the customer gateway.</p>
    #   @return [String]
    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #   @return [String]
    # @!attribute device_id
    #   <p>The ID of the device.</p>
    #   @return [String]
    # @!attribute link_id
    #   <p>The ID of the link.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The association state.</p>
    #   @return [String]
    class CustomerGatewayAssociation < Struct.new(
      :customer_gateway_arn,
      :global_network_id,
      :device_id,
      :link_id,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute attachment_id
    #   <p>The ID of the attachment to delete.</p>
    #   @return [String]
    class DeleteAttachmentRequest < Struct.new(
      :attachment_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute attachment
    #   <p>Information about the deleted attachment.</p>
    #   @return [Types::Attachment]
    class DeleteAttachmentResponse < Struct.new(
      :attachment,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute connect_peer_id
    #   <p>The ID of the deleted Connect peer.</p>
    #   @return [String]
    class DeleteConnectPeerRequest < Struct.new(
      :connect_peer_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute connect_peer
    #   <p>Information about the deleted Connect peer.</p>
    #   @return [Types::ConnectPeer]
    class DeleteConnectPeerResponse < Struct.new(
      :connect_peer,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #   @return [String]
    # @!attribute connection_id
    #   <p>The ID of the connection.</p>
    #   @return [String]
    class DeleteConnectionRequest < Struct.new(
      :global_network_id,
      :connection_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute connection
    #   <p>Information about the connection.</p>
    #   @return [Types::Connection]
    class DeleteConnectionResponse < Struct.new(
      :connection,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute core_network_id
    #   <p>The ID of a core network for the deleted policy.</p>
    #   @return [String]
    # @!attribute policy_version_id
    #   <p>The version ID of the deleted policy.</p>
    #   @return [Integer]
    class DeleteCoreNetworkPolicyVersionRequest < Struct.new(
      :core_network_id,
      :policy_version_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute core_network_policy
    #   <p>Returns information about the deleted policy version. </p>
    #   @return [Types::CoreNetworkPolicy]
    class DeleteCoreNetworkPolicyVersionResponse < Struct.new(
      :core_network_policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute core_network_id
    #   <p>The network ID of the deleted core network.</p>
    #   @return [String]
    class DeleteCoreNetworkRequest < Struct.new(
      :core_network_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute core_network
    #   <p>Information about the deleted core network.</p>
    #   @return [Types::CoreNetwork]
    class DeleteCoreNetworkResponse < Struct.new(
      :core_network,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #   @return [String]
    # @!attribute device_id
    #   <p>The ID of the device.</p>
    #   @return [String]
    class DeleteDeviceRequest < Struct.new(
      :global_network_id,
      :device_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute device
    #   <p>Information about the device.</p>
    #   @return [Types::Device]
    class DeleteDeviceResponse < Struct.new(
      :device,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #   @return [String]
    class DeleteGlobalNetworkRequest < Struct.new(
      :global_network_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute global_network
    #   <p>Information about the global network.</p>
    #   @return [Types::GlobalNetwork]
    class DeleteGlobalNetworkResponse < Struct.new(
      :global_network,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #   @return [String]
    # @!attribute link_id
    #   <p>The ID of the link.</p>
    #   @return [String]
    class DeleteLinkRequest < Struct.new(
      :global_network_id,
      :link_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute link
    #   <p>Information about the link.</p>
    #   @return [Types::Link]
    class DeleteLinkResponse < Struct.new(
      :link,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute peering_id
    #   <p>The ID of the peering connection to delete.</p>
    #   @return [String]
    class DeletePeeringRequest < Struct.new(
      :peering_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute peering
    #   <p>Information about a deleted peering connection.</p>
    #   @return [Types::Peering]
    class DeletePeeringResponse < Struct.new(
      :peering,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the policy to delete.</p>
    #   @return [String]
    class DeleteResourcePolicyRequest < Struct.new(
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteResourcePolicyResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #   @return [String]
    # @!attribute site_id
    #   <p>The ID of the site.</p>
    #   @return [String]
    class DeleteSiteRequest < Struct.new(
      :global_network_id,
      :site_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute site
    #   <p>Information about the site.</p>
    #   @return [Types::Site]
    class DeleteSiteResponse < Struct.new(
      :site,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #   @return [String]
    # @!attribute transit_gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the transit gateway.</p>
    #   @return [String]
    class DeregisterTransitGatewayRequest < Struct.new(
      :global_network_id,
      :transit_gateway_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute transit_gateway_registration
    #   <p>The transit gateway registration information.</p>
    #   @return [Types::TransitGatewayRegistration]
    class DeregisterTransitGatewayResponse < Struct.new(
      :transit_gateway_registration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute global_network_ids
    #   <p>The IDs of one or more global networks. The maximum is 10.</p>
    #   @return [Array<String>]
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    class DescribeGlobalNetworksRequest < Struct.new(
      :global_network_ids,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute global_networks
    #   <p>Information about the global networks.</p>
    #   @return [Array<Types::GlobalNetwork>]
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    class DescribeGlobalNetworksResponse < Struct.new(
      :global_networks,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a device.</p>
    # @!attribute device_id
    #   <p>The ID of the device.</p>
    #   @return [String]
    # @!attribute device_arn
    #   <p>The Amazon Resource Name (ARN) of the device.</p>
    #   @return [String]
    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #   @return [String]
    # @!attribute aws_location
    #   <p>The Amazon Web Services location of the device.</p>
    #   @return [Types::AWSLocation]
    # @!attribute description
    #   <p>The description of the device.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The device type.</p>
    #   @return [String]
    # @!attribute vendor
    #   <p>The device vendor.</p>
    #   @return [String]
    # @!attribute model
    #   <p>The device model.</p>
    #   @return [String]
    # @!attribute serial_number
    #   <p>The device serial number.</p>
    #   @return [String]
    # @!attribute location
    #   <p>The site location.</p>
    #   @return [Types::Location]
    # @!attribute site_id
    #   <p>The site ID.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time that the site was created.</p>
    #   @return [Time]
    # @!attribute state
    #   <p>The device state.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags for the device.</p>
    #   @return [Array<Types::Tag>]
    class Device < Struct.new(
      :device_id,
      :device_arn,
      :global_network_id,
      :aws_location,
      :description,
      :type,
      :vendor,
      :model,
      :serial_number,
      :location,
      :site_id,
      :created_at,
      :state,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a Direct Connect gateway attachment.</p>
    # @!attribute attachment
    #   <p>Describes a core network attachment.</p>
    #   @return [Types::Attachment]
    # @!attribute direct_connect_gateway_arn
    #   <p>The Direct Connect gateway attachment ARN.</p>
    #   @return [String]
    class DirectConnectGatewayAttachment < Struct.new(
      :attachment,
      :direct_connect_gateway_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #   @return [String]
    # @!attribute connect_peer_id
    #   <p>The ID of the Connect peer to disassociate from a device.</p>
    #   @return [String]
    class DisassociateConnectPeerRequest < Struct.new(
      :global_network_id,
      :connect_peer_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute connect_peer_association
    #   <p>Describes the Connect peer association.</p>
    #   @return [Types::ConnectPeerAssociation]
    class DisassociateConnectPeerResponse < Struct.new(
      :connect_peer_association,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #   @return [String]
    # @!attribute customer_gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the customer gateway.</p>
    #   @return [String]
    class DisassociateCustomerGatewayRequest < Struct.new(
      :global_network_id,
      :customer_gateway_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute customer_gateway_association
    #   <p>Information about the customer gateway association.</p>
    #   @return [Types::CustomerGatewayAssociation]
    class DisassociateCustomerGatewayResponse < Struct.new(
      :customer_gateway_association,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #   @return [String]
    # @!attribute device_id
    #   <p>The ID of the device.</p>
    #   @return [String]
    # @!attribute link_id
    #   <p>The ID of the link.</p>
    #   @return [String]
    class DisassociateLinkRequest < Struct.new(
      :global_network_id,
      :device_id,
      :link_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute link_association
    #   <p>Information about the link association.</p>
    #   @return [Types::LinkAssociation]
    class DisassociateLinkResponse < Struct.new(
      :link_association,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #   @return [String]
    # @!attribute transit_gateway_connect_peer_arn
    #   <p>The Amazon Resource Name (ARN) of the transit gateway Connect peer.</p>
    #   @return [String]
    class DisassociateTransitGatewayConnectPeerRequest < Struct.new(
      :global_network_id,
      :transit_gateway_connect_peer_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute transit_gateway_connect_peer_association
    #   <p>The transit gateway Connect peer association.</p>
    #   @return [Types::TransitGatewayConnectPeerAssociation]
    class DisassociateTransitGatewayConnectPeerResponse < Struct.new(
      :transit_gateway_connect_peer_association,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the edge that's used for the override. </p>
    # @!attribute edge_sets
    #   <p>The list of edge locations.</p>
    #   @return [Array<Array<String>>]
    # @!attribute use_edge
    #   <p>The edge that should be used when overriding the current edge order.</p>
    #   @return [String]
    class EdgeOverride < Struct.new(
      :edge_sets,
      :use_edge,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute core_network_id
    #   <p>The ID of a core network.</p>
    #   @return [String]
    # @!attribute policy_version_id
    #   <p>The ID of the policy version.</p>
    #   @return [Integer]
    class ExecuteCoreNetworkChangeSetRequest < Struct.new(
      :core_network_id,
      :policy_version_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class ExecuteCoreNetworkChangeSetResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute attachment_id
    #   <p>The ID of the attachment.</p>
    #   @return [String]
    class GetConnectAttachmentRequest < Struct.new(
      :attachment_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute connect_attachment
    #   <p>Details about the Connect attachment.</p>
    #   @return [Types::ConnectAttachment]
    class GetConnectAttachmentResponse < Struct.new(
      :connect_attachment,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #   @return [String]
    # @!attribute connect_peer_ids
    #   <p>The IDs of the Connect peers.</p>
    #   @return [Array<String>]
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    class GetConnectPeerAssociationsRequest < Struct.new(
      :global_network_id,
      :connect_peer_ids,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute connect_peer_associations
    #   <p>Displays a list of Connect peer associations.</p>
    #   @return [Array<Types::ConnectPeerAssociation>]
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    class GetConnectPeerAssociationsResponse < Struct.new(
      :connect_peer_associations,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute connect_peer_id
    #   <p>The ID of the Connect peer.</p>
    #   @return [String]
    class GetConnectPeerRequest < Struct.new(
      :connect_peer_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute connect_peer
    #   <p>Returns information about a core network Connect peer.</p>
    #   @return [Types::ConnectPeer]
    class GetConnectPeerResponse < Struct.new(
      :connect_peer,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #   @return [String]
    # @!attribute connection_ids
    #   <p>One or more connection IDs.</p>
    #   @return [Array<String>]
    # @!attribute device_id
    #   <p>The ID of the device.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    class GetConnectionsRequest < Struct.new(
      :global_network_id,
      :connection_ids,
      :device_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute connections
    #   <p>Information about the connections.</p>
    #   @return [Array<Types::Connection>]
    # @!attribute next_token
    #   <p>The token to use for the next page of results.</p>
    #   @return [String]
    class GetConnectionsResponse < Struct.new(
      :connections,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute core_network_id
    #   <p>The ID of a core network.</p>
    #   @return [String]
    # @!attribute policy_version_id
    #   <p>The ID of the policy version.</p>
    #   @return [Integer]
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    class GetCoreNetworkChangeEventsRequest < Struct.new(
      :core_network_id,
      :policy_version_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute core_network_change_events
    #   <p>The response to <code>GetCoreNetworkChangeEventsRequest</code>.</p>
    #   @return [Array<Types::CoreNetworkChangeEvent>]
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    class GetCoreNetworkChangeEventsResponse < Struct.new(
      :core_network_change_events,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute core_network_id
    #   <p>The ID of a core network.</p>
    #   @return [String]
    # @!attribute policy_version_id
    #   <p>The ID of the policy version.</p>
    #   @return [Integer]
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    class GetCoreNetworkChangeSetRequest < Struct.new(
      :core_network_id,
      :policy_version_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute core_network_changes
    #   <p>Describes a core network changes.</p>
    #   @return [Array<Types::CoreNetworkChange>]
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    class GetCoreNetworkChangeSetResponse < Struct.new(
      :core_network_changes,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute core_network_id
    #   <p>The ID of a core network.</p>
    #   @return [String]
    # @!attribute policy_version_id
    #   <p>The ID of a core network policy version.</p>
    #   @return [Integer]
    # @!attribute alias
    #   <p>The alias of a core network policy </p>
    #   @return [String]
    class GetCoreNetworkPolicyRequest < Struct.new(
      :core_network_id,
      :policy_version_id,
      :alias,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute core_network_policy
    #   <p>The details about a core network policy.</p>
    #   @return [Types::CoreNetworkPolicy]
    class GetCoreNetworkPolicyResponse < Struct.new(
      :core_network_policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute core_network_id
    #   <p>The ID of a core network.</p>
    #   @return [String]
    class GetCoreNetworkRequest < Struct.new(
      :core_network_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute core_network
    #   <p>Details about a core network.</p>
    #   @return [Types::CoreNetwork]
    class GetCoreNetworkResponse < Struct.new(
      :core_network,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #   @return [String]
    # @!attribute customer_gateway_arns
    #   <p>One or more customer gateway Amazon Resource Names (ARNs). The maximum is 10.</p>
    #   @return [Array<String>]
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    class GetCustomerGatewayAssociationsRequest < Struct.new(
      :global_network_id,
      :customer_gateway_arns,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute customer_gateway_associations
    #   <p>The customer gateway associations.</p>
    #   @return [Array<Types::CustomerGatewayAssociation>]
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    class GetCustomerGatewayAssociationsResponse < Struct.new(
      :customer_gateway_associations,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #   @return [String]
    # @!attribute device_ids
    #   <p>One or more device IDs. The maximum is 10.</p>
    #   @return [Array<String>]
    # @!attribute site_id
    #   <p>The ID of the site.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    class GetDevicesRequest < Struct.new(
      :global_network_id,
      :device_ids,
      :site_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute devices
    #   <p>The devices.</p>
    #   @return [Array<Types::Device>]
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    class GetDevicesResponse < Struct.new(
      :devices,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute attachment_id
    #   <p>The ID of the Direct Connect gateway attachment that you want to see details about.</p>
    #   @return [String]
    class GetDirectConnectGatewayAttachmentRequest < Struct.new(
      :attachment_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute direct_connect_gateway_attachment
    #   <p>Shows details about the Direct Connect gateway attachment. </p>
    #   @return [Types::DirectConnectGatewayAttachment]
    class GetDirectConnectGatewayAttachmentResponse < Struct.new(
      :direct_connect_gateway_attachment,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #   @return [String]
    # @!attribute device_id
    #   <p>The ID of the device.</p>
    #   @return [String]
    # @!attribute link_id
    #   <p>The ID of the link.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    class GetLinkAssociationsRequest < Struct.new(
      :global_network_id,
      :device_id,
      :link_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute link_associations
    #   <p>The link associations.</p>
    #   @return [Array<Types::LinkAssociation>]
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    class GetLinkAssociationsResponse < Struct.new(
      :link_associations,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #   @return [String]
    # @!attribute link_ids
    #   <p>One or more link IDs. The maximum is 10.</p>
    #   @return [Array<String>]
    # @!attribute site_id
    #   <p>The ID of the site.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The link type.</p>
    #   @return [String]
    # @!attribute provider
    #   <p>The link provider.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    class GetLinksRequest < Struct.new(
      :global_network_id,
      :link_ids,
      :site_id,
      :type,
      :provider,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute links
    #   <p>The links.</p>
    #   @return [Array<Types::Link>]
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    class GetLinksResponse < Struct.new(
      :links,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #   @return [String]
    # @!attribute resource_type
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
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    class GetNetworkResourceCountsRequest < Struct.new(
      :global_network_id,
      :resource_type,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute network_resource_counts
    #   <p>The count of resources.</p>
    #   @return [Array<Types::NetworkResourceCount>]
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    class GetNetworkResourceCountsResponse < Struct.new(
      :network_resource_counts,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #   @return [String]
    # @!attribute core_network_id
    #   <p>The ID of a core network.</p>
    #   @return [String]
    # @!attribute registered_gateway_arn
    #   <p>The ARN of the registered gateway.</p>
    #   @return [String]
    # @!attribute aws_region
    #   <p>The Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID.</p>
    #   @return [String]
    # @!attribute resource_type
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
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The ARN of the gateway.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    class GetNetworkResourceRelationshipsRequest < Struct.new(
      :global_network_id,
      :core_network_id,
      :registered_gateway_arn,
      :aws_region,
      :account_id,
      :resource_type,
      :resource_arn,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute relationships
    #   <p>The resource relationships.</p>
    #   @return [Array<Types::Relationship>]
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    class GetNetworkResourceRelationshipsResponse < Struct.new(
      :relationships,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #   @return [String]
    # @!attribute core_network_id
    #   <p>The ID of a core network.</p>
    #   @return [String]
    # @!attribute registered_gateway_arn
    #   <p>The ARN of the gateway.</p>
    #   @return [String]
    # @!attribute aws_region
    #   <p>The Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID.</p>
    #   @return [String]
    # @!attribute resource_type
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
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The ARN of the resource.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    class GetNetworkResourcesRequest < Struct.new(
      :global_network_id,
      :core_network_id,
      :registered_gateway_arn,
      :aws_region,
      :account_id,
      :resource_type,
      :resource_arn,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute network_resources
    #   <p>The network resources.</p>
    #   @return [Array<Types::NetworkResource>]
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    class GetNetworkResourcesResponse < Struct.new(
      :network_resources,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #   @return [String]
    # @!attribute route_table_identifier
    #   <p>The ID of the route table.</p>
    #   @return [Types::RouteTableIdentifier]
    # @!attribute exact_cidr_matches
    #   <p>An exact CIDR block.</p>
    #   @return [Array<String>]
    # @!attribute longest_prefix_matches
    #   <p>The most specific route that matches the traffic (longest prefix match).</p>
    #   @return [Array<String>]
    # @!attribute subnet_of_matches
    #   <p>The routes with a subnet that match the specified CIDR filter.</p>
    #   @return [Array<String>]
    # @!attribute supernet_of_matches
    #   <p>The routes with a CIDR that encompasses the CIDR filter. Example: If you specify 10.0.1.0/30, then the result returns 10.0.1.0/29.</p>
    #   @return [Array<String>]
    # @!attribute prefix_list_ids
    #   <p>The IDs of the prefix lists.</p>
    #   @return [Array<String>]
    # @!attribute states
    #   <p>The route states.</p>
    #   @return [Array<String>]
    # @!attribute types
    #   <p>The route types.</p>
    #   @return [Array<String>]
    # @!attribute destination_filters
    #   <p>Filter by route table destination. Possible Values: TRANSIT_GATEWAY_ATTACHMENT_ID, RESOURCE_ID, or RESOURCE_TYPE.</p>
    #   @return [Hash<String, Array<String>>]
    class GetNetworkRoutesRequest < Struct.new(
      :global_network_id,
      :route_table_identifier,
      :exact_cidr_matches,
      :longest_prefix_matches,
      :subnet_of_matches,
      :supernet_of_matches,
      :prefix_list_ids,
      :states,
      :types,
      :destination_filters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute route_table_arn
    #   <p>The ARN of the route table.</p>
    #   @return [String]
    # @!attribute core_network_segment_edge
    #   <p>Describes a core network segment edge.</p>
    #   @return [Types::CoreNetworkSegmentEdgeIdentifier]
    # @!attribute route_table_type
    #   <p>The route table type.</p>
    #   @return [String]
    # @!attribute route_table_timestamp
    #   <p>The route table creation time.</p>
    #   @return [Time]
    # @!attribute network_routes
    #   <p>The network routes.</p>
    #   @return [Array<Types::NetworkRoute>]
    class GetNetworkRoutesResponse < Struct.new(
      :route_table_arn,
      :core_network_segment_edge,
      :route_table_type,
      :route_table_timestamp,
      :network_routes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #   @return [String]
    # @!attribute core_network_id
    #   <p>The ID of a core network.</p>
    #   @return [String]
    # @!attribute registered_gateway_arn
    #   <p>The ARN of the gateway.</p>
    #   @return [String]
    # @!attribute aws_region
    #   <p>The Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID.</p>
    #   @return [String]
    # @!attribute resource_type
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
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The ARN of the resource.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    class GetNetworkTelemetryRequest < Struct.new(
      :global_network_id,
      :core_network_id,
      :registered_gateway_arn,
      :aws_region,
      :account_id,
      :resource_type,
      :resource_arn,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute network_telemetry
    #   <p>The network telemetry.</p>
    #   @return [Array<Types::NetworkTelemetry>]
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    class GetNetworkTelemetryResponse < Struct.new(
      :network_telemetry,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource.</p>
    #   @return [String]
    class GetResourcePolicyRequest < Struct.new(
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_document
    #   <p>The resource policy document.</p>
    #   @return [String]
    class GetResourcePolicyResponse < Struct.new(
      :policy_document,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #   @return [String]
    # @!attribute route_analysis_id
    #   <p>The ID of the route analysis.</p>
    #   @return [String]
    class GetRouteAnalysisRequest < Struct.new(
      :global_network_id,
      :route_analysis_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute route_analysis
    #   <p>The route analysis.</p>
    #   @return [Types::RouteAnalysis]
    class GetRouteAnalysisResponse < Struct.new(
      :route_analysis,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute attachment_id
    #   <p>The ID of the attachment.</p>
    #   @return [String]
    class GetSiteToSiteVpnAttachmentRequest < Struct.new(
      :attachment_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute site_to_site_vpn_attachment
    #   <p>Describes the site-to-site attachment.</p>
    #   @return [Types::SiteToSiteVpnAttachment]
    class GetSiteToSiteVpnAttachmentResponse < Struct.new(
      :site_to_site_vpn_attachment,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #   @return [String]
    # @!attribute site_ids
    #   <p>One or more site IDs. The maximum is 10.</p>
    #   @return [Array<String>]
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    class GetSitesRequest < Struct.new(
      :global_network_id,
      :site_ids,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute sites
    #   <p>The sites.</p>
    #   @return [Array<Types::Site>]
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    class GetSitesResponse < Struct.new(
      :sites,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #   @return [String]
    # @!attribute transit_gateway_connect_peer_arns
    #   <p>One or more transit gateway Connect peer Amazon Resource Names (ARNs).</p>
    #   @return [Array<String>]
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    class GetTransitGatewayConnectPeerAssociationsRequest < Struct.new(
      :global_network_id,
      :transit_gateway_connect_peer_arns,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute transit_gateway_connect_peer_associations
    #   <p>Information about the transit gateway Connect peer associations.</p>
    #   @return [Array<Types::TransitGatewayConnectPeerAssociation>]
    # @!attribute next_token
    #   <p>The token to use for the next page of results.</p>
    #   @return [String]
    class GetTransitGatewayConnectPeerAssociationsResponse < Struct.new(
      :transit_gateway_connect_peer_associations,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute peering_id
    #   <p>The ID of the peering request.</p>
    #   @return [String]
    class GetTransitGatewayPeeringRequest < Struct.new(
      :peering_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute transit_gateway_peering
    #   <p>Returns information about a transit gateway peering. </p>
    #   @return [Types::TransitGatewayPeering]
    class GetTransitGatewayPeeringResponse < Struct.new(
      :transit_gateway_peering,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #   @return [String]
    # @!attribute transit_gateway_arns
    #   <p>The Amazon Resource Names (ARNs) of one or more transit gateways. The maximum is
    #               10.</p>
    #   @return [Array<String>]
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    class GetTransitGatewayRegistrationsRequest < Struct.new(
      :global_network_id,
      :transit_gateway_arns,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute transit_gateway_registrations
    #   <p>The transit gateway registrations.</p>
    #   @return [Array<Types::TransitGatewayRegistration>]
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    class GetTransitGatewayRegistrationsResponse < Struct.new(
      :transit_gateway_registrations,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute attachment_id
    #   <p>The ID of the transit gateway route table attachment.</p>
    #   @return [String]
    class GetTransitGatewayRouteTableAttachmentRequest < Struct.new(
      :attachment_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute transit_gateway_route_table_attachment
    #   <p>Returns information about the transit gateway route table attachment.</p>
    #   @return [Types::TransitGatewayRouteTableAttachment]
    class GetTransitGatewayRouteTableAttachmentResponse < Struct.new(
      :transit_gateway_route_table_attachment,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute attachment_id
    #   <p>The ID of the attachment.</p>
    #   @return [String]
    class GetVpcAttachmentRequest < Struct.new(
      :attachment_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute vpc_attachment
    #   <p>Returns details about a VPC attachment.</p>
    #   @return [Types::VpcAttachment]
    class GetVpcAttachmentResponse < Struct.new(
      :vpc_attachment,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a global network. This is a single private network acting as a high-level container for your network objects, including an Amazon Web Services-managed Core Network.</p>
    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #   @return [String]
    # @!attribute global_network_arn
    #   <p>The Amazon Resource Name (ARN) of the global network.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the global network.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time that the global network was created.</p>
    #   @return [Time]
    # @!attribute state
    #   <p>The state of the global network.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags for the global network.</p>
    #   @return [Array<Types::Tag>]
    class GlobalNetwork < Struct.new(
      :global_network_id,
      :global_network_arn,
      :description,
      :created_at,
      :state,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request has failed due to an internal error.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p>Indicates when to retry the request.</p>
    #   @return [Integer]
    class InternalServerException < Struct.new(
      :message,
      :retry_after_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a link.</p>
    # @!attribute link_id
    #   <p>The ID of the link.</p>
    #   @return [String]
    # @!attribute link_arn
    #   <p>The Amazon Resource Name (ARN) of the link.</p>
    #   @return [String]
    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #   @return [String]
    # @!attribute site_id
    #   <p>The ID of the site.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the link.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the link.</p>
    #   @return [String]
    # @!attribute bandwidth
    #   <p>The bandwidth for the link.</p>
    #   @return [Types::Bandwidth]
    # @!attribute provider
    #   <p>The provider of the link.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time that the link was created.</p>
    #   @return [Time]
    # @!attribute state
    #   <p>The state of the link.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags for the link.</p>
    #   @return [Array<Types::Tag>]
    class Link < Struct.new(
      :link_id,
      :link_arn,
      :global_network_id,
      :site_id,
      :description,
      :type,
      :bandwidth,
      :provider,
      :created_at,
      :state,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the association between a device and a link.</p>
    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #   @return [String]
    # @!attribute device_id
    #   <p>The device ID for the link association.</p>
    #   @return [String]
    # @!attribute link_id
    #   <p>The ID of the link.</p>
    #   @return [String]
    # @!attribute link_association_state
    #   <p>The state of the association.</p>
    #   @return [String]
    class LinkAssociation < Struct.new(
      :global_network_id,
      :device_id,
      :link_id,
      :link_association_state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute core_network_id
    #   <p>The ID of a core network.</p>
    #   @return [String]
    # @!attribute attachment_type
    #   <p>The type of attachment.</p>
    #   @return [String]
    # @!attribute edge_location
    #   <p>The Region where the edge is located.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the attachment.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    class ListAttachmentsRequest < Struct.new(
      :core_network_id,
      :attachment_type,
      :edge_location,
      :state,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute attachments
    #   <p>Describes the list of attachments.</p>
    #   @return [Array<Types::Attachment>]
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    class ListAttachmentsResponse < Struct.new(
      :attachments,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute core_network_id
    #   <p>The ID of a core network.</p>
    #   @return [String]
    # @!attribute connect_attachment_id
    #   <p>The ID of the attachment.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    class ListConnectPeersRequest < Struct.new(
      :core_network_id,
      :connect_attachment_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute connect_peers
    #   <p>Describes the Connect peers.</p>
    #   @return [Array<Types::ConnectPeerSummary>]
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    class ListConnectPeersResponse < Struct.new(
      :connect_peers,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute core_network_id
    #   <p>The ID of a core network.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    class ListCoreNetworkPolicyVersionsRequest < Struct.new(
      :core_network_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute core_network_policy_versions
    #   <p>Describes core network policy versions.</p>
    #   @return [Array<Types::CoreNetworkPolicyVersion>]
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    class ListCoreNetworkPolicyVersionsResponse < Struct.new(
      :core_network_policy_versions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    class ListCoreNetworksRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute core_networks
    #   <p>Describes the list of core networks.</p>
    #   @return [Array<Types::CoreNetworkSummary>]
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    class ListCoreNetworksResponse < Struct.new(
      :core_networks,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    class ListOrganizationServiceAccessStatusRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute organization_status
    #   <p>Displays the status of an Amazon Web Services Organization.</p>
    #   @return [Types::OrganizationStatus]
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    class ListOrganizationServiceAccessStatusResponse < Struct.new(
      :organization_status,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute core_network_id
    #   <p>The ID of a core network.</p>
    #   @return [String]
    # @!attribute peering_type
    #   <p>Returns a list of a peering requests.</p>
    #   @return [String]
    # @!attribute edge_location
    #   <p>Returns a list edge locations for the </p>
    #   @return [String]
    # @!attribute state
    #   <p>Returns a list of the peering request states.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    class ListPeeringsRequest < Struct.new(
      :core_network_id,
      :peering_type,
      :edge_location,
      :state,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute peerings
    #   <p>Lists the transit gateway peerings for the <code>ListPeerings</code> request.</p>
    #   @return [Array<Types::Peering>]
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    class ListPeeringsResponse < Struct.new(
      :peerings,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tag_list
    #   <p>The list of tags.</p>
    #   @return [Array<Types::Tag>]
    class ListTagsForResourceResponse < Struct.new(
      :tag_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a location.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute address
    #   <p>The physical address.</p>
    #   @return [String]
    # @!attribute latitude
    #   <p>The latitude.</p>
    #   @return [String]
    # @!attribute longitude
    #   <p>The longitude.</p>
    #   @return [String]
    class Location < Struct.new(
      :address,
      :latitude,
      :longitude,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a network function group for service insertion.</p>
    # @!attribute name
    #   <p>The name of the network function group.</p>
    #   @return [String]
    class NetworkFunctionGroup < Struct.new(
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a network resource.</p>
    # @!attribute registered_gateway_arn
    #   <p>The ARN of the gateway.</p>
    #   @return [String]
    # @!attribute core_network_id
    #   <p>The ID of a core network.</p>
    #   @return [String]
    # @!attribute aws_region
    #   <p>The Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID.</p>
    #   @return [String]
    # @!attribute resource_type
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
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the resource.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The ARN of the resource.</p>
    #   @return [String]
    # @!attribute definition
    #   <p>Information about the resource, in JSON format. Network Manager gets this information by describing the resource using its Describe API call.</p>
    #   @return [String]
    # @!attribute definition_timestamp
    #   <p>The time that the resource definition was retrieved.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>The tags.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute metadata
    #   <p>The resource metadata.</p>
    #   @return [Hash<String, String>]
    class NetworkResource < Struct.new(
      :registered_gateway_arn,
      :core_network_id,
      :aws_region,
      :account_id,
      :resource_type,
      :resource_id,
      :resource_arn,
      :definition,
      :definition_timestamp,
      :tags,
      :metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a resource count.</p>
    # @!attribute resource_type
    #   <p>The resource type.</p>
    #   @return [String]
    # @!attribute count
    #   <p>The resource count.</p>
    #   @return [Integer]
    class NetworkResourceCount < Struct.new(
      :resource_type,
      :count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a network resource.</p>
    # @!attribute registered_gateway_arn
    #   <p>The ARN of the gateway.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The ARN of the resource.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The resource type.</p>
    #   @return [String]
    # @!attribute definition
    #   <p>Information about the resource, in JSON format. Network Manager gets this information by describing the resource using its Describe API call.</p>
    #   @return [String]
    # @!attribute name_tag
    #   <p>The value for the Name tag.</p>
    #   @return [String]
    # @!attribute is_middlebox
    #   <p>Indicates whether this is a middlebox appliance.</p>
    #   @return [Boolean]
    class NetworkResourceSummary < Struct.new(
      :registered_gateway_arn,
      :resource_arn,
      :resource_type,
      :definition,
      :name_tag,
      :is_middlebox,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_middlebox] = false unless options.key?(:is_middlebox)
        super
      end
    end

    # <p>Describes a network route.</p>
    # @!attribute destination_cidr_block
    #   <p>A unique identifier for the route, such as a CIDR block.</p>
    #   @return [String]
    # @!attribute destinations
    #   <p>The destinations.</p>
    #   @return [Array<Types::NetworkRouteDestination>]
    # @!attribute prefix_list_id
    #   <p>The ID of the prefix list.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The route state. The possible values are <code>active</code> and <code>blackhole</code>.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The route type. The possible values are <code>propagated</code> and <code>static</code>.</p>
    #   @return [String]
    class NetworkRoute < Struct.new(
      :destination_cidr_block,
      :destinations,
      :prefix_list_id,
      :state,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the destination of a network route.</p>
    # @!attribute core_network_attachment_id
    #   <p>The ID of a core network attachment.</p>
    #   @return [String]
    # @!attribute transit_gateway_attachment_id
    #   <p>The ID of the transit gateway attachment.</p>
    #   @return [String]
    # @!attribute segment_name
    #   <p>The name of the segment.</p>
    #   @return [String]
    # @!attribute network_function_group_name
    #   <p>The network function group name associated with the destination.</p>
    #   @return [String]
    # @!attribute edge_location
    #   <p>The edge location for the network destination.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The resource type.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the resource.</p>
    #   @return [String]
    class NetworkRouteDestination < Struct.new(
      :core_network_attachment_id,
      :transit_gateway_attachment_id,
      :segment_name,
      :network_function_group_name,
      :edge_location,
      :resource_type,
      :resource_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the telemetry information for a resource.</p>
    # @!attribute registered_gateway_arn
    #   <p>The ARN of the gateway.</p>
    #   @return [String]
    # @!attribute core_network_id
    #   <p>The ID of a core network.</p>
    #   @return [String]
    # @!attribute aws_region
    #   <p>The Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The resource type.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the resource.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The ARN of the resource.</p>
    #   @return [String]
    # @!attribute address
    #   <p>The address.</p>
    #   @return [String]
    # @!attribute health
    #   <p>The connection health.</p>
    #   @return [Types::ConnectionHealth]
    class NetworkTelemetry < Struct.new(
      :registered_gateway_arn,
      :core_network_id,
      :aws_region,
      :account_id,
      :resource_type,
      :resource_id,
      :resource_arn,
      :address,
      :health,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The status of an Amazon Web Services Organization and the accounts within that organization.</p>
    # @!attribute organization_id
    #   <p>The ID of an Amazon Web Services Organization.</p>
    #   @return [String]
    # @!attribute organization_aws_service_access_status
    #   <p>The status  of the organization's AWS service access. This will be <code>ENABLED</code> or <code>DISABLED</code>.</p>
    #   @return [String]
    # @!attribute slr_deployment_status
    #   <p>The status of the SLR deployment for the account. This will be either <code>SUCCEEDED</code> or <code>IN_PROGRESS</code>.</p>
    #   @return [String]
    # @!attribute account_status_list
    #   <p>The current service-linked role (SLR) deployment status for an Amazon Web Services Organization's accounts. This will be either <code>SUCCEEDED</code> or <code>IN_PROGRESS</code>.</p>
    #   @return [Array<Types::AccountStatus>]
    class OrganizationStatus < Struct.new(
      :organization_id,
      :organization_aws_service_access_status,
      :slr_deployment_status,
      :account_status_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a path component.</p>
    # @!attribute sequence
    #   <p>The sequence number in the path. The destination is 0.</p>
    #   @return [Integer]
    # @!attribute resource
    #   <p>The resource.</p>
    #   @return [Types::NetworkResourceSummary]
    # @!attribute destination_cidr_block
    #   <p>The destination CIDR block in the route table.</p>
    #   @return [String]
    class PathComponent < Struct.new(
      :sequence,
      :resource,
      :destination_cidr_block,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a peering connection.</p>
    # @!attribute core_network_id
    #   <p>The ID of the core network for the peering request.</p>
    #   @return [String]
    # @!attribute core_network_arn
    #   <p>The ARN of a core network.</p>
    #   @return [String]
    # @!attribute peering_id
    #   <p>The ID of the peering attachment. </p>
    #   @return [String]
    # @!attribute owner_account_id
    #   <p>The ID of the account owner.</p>
    #   @return [String]
    # @!attribute peering_type
    #   <p>The type of peering. This will be <code>TRANSIT_GATEWAY</code>.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The current state of the peering connection. </p>
    #   @return [String]
    # @!attribute edge_location
    #   <p>The edge location for the peer.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The resource ARN of the peer.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The list of key-value tags associated with the peering.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute created_at
    #   <p>The timestamp when the attachment peer was created.</p>
    #   @return [Time]
    # @!attribute last_modification_errors
    #   <p>Describes the error associated with the Connect peer request.</p>
    #   @return [Array<Types::PeeringError>]
    class Peering < Struct.new(
      :core_network_id,
      :core_network_arn,
      :peering_id,
      :owner_account_id,
      :peering_type,
      :state,
      :edge_location,
      :resource_arn,
      :tags,
      :created_at,
      :last_modification_errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an error associated with a peering request.</p>
    # @!attribute code
    #   <p>The error code for the peering request.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The message associated with the error <code>code</code>.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The ARN of the requested peering resource.</p>
    #   @return [String]
    # @!attribute request_id
    #   <p>The ID of the Peering request.</p>
    #   @return [String]
    # @!attribute missing_permissions_context
    #   <p>Provides additional information about missing permissions for the peering
    #               error.</p>
    #   @return [Types::PermissionsErrorContext]
    class PeeringError < Struct.new(
      :code,
      :message,
      :resource_arn,
      :request_id,
      :missing_permissions_context,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes additional information about missing permissions. </p>
    # @!attribute missing_permission
    #   <p>The missing permissions.</p>
    #   @return [String]
    class PermissionsErrorContext < Struct.new(
      :missing_permission,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes proposed changes to a network function group. </p>
    # @!attribute tags
    #   <p>The list of proposed changes to the key-value tags associated with the network function group.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute attachment_policy_rule_number
    #   <p>The proposed new attachment policy rule number for the network function group.</p>
    #   @return [Integer]
    # @!attribute network_function_group_name
    #   <p>The proposed name change for the network function group name.</p>
    #   @return [String]
    class ProposedNetworkFunctionGroupChange < Struct.new(
      :tags,
      :attachment_policy_rule_number,
      :network_function_group_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a proposed segment change. In some cases, the segment change must first be evaluated and accepted. </p>
    # @!attribute tags
    #   <p>The list of key-value tags that changed for the segment.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute attachment_policy_rule_number
    #   <p>The rule number in the policy document that applies to this change.</p>
    #   @return [Integer]
    # @!attribute segment_name
    #   <p>The name of the segment to change.</p>
    #   @return [String]
    class ProposedSegmentChange < Struct.new(
      :tags,
      :attachment_policy_rule_number,
      :segment_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute core_network_id
    #   <p>The ID of a core network.</p>
    #   @return [String]
    # @!attribute policy_document
    #   <p>The policy document.</p>
    #   @return [String]
    # @!attribute description
    #   <p>a core network policy description.</p>
    #   @return [String]
    # @!attribute latest_version_id
    #   <p>The ID of a core network policy. </p>
    #   @return [Integer]
    # @!attribute client_token
    #   <p>The client token associated with the request.</p>
    #   @return [String]
    class PutCoreNetworkPolicyRequest < Struct.new(
      :core_network_id,
      :policy_document,
      :description,
      :latest_version_id,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute core_network_policy
    #   <p>Describes the changed core network policy.</p>
    #   @return [Types::CoreNetworkPolicy]
    class PutCoreNetworkPolicyResponse < Struct.new(
      :core_network_policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_document
    #   <p>The JSON resource policy document.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The ARN of the resource policy. </p>
    #   @return [String]
    class PutResourcePolicyRequest < Struct.new(
      :policy_document,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class PutResourcePolicyResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #   @return [String]
    # @!attribute transit_gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the transit gateway.</p>
    #   @return [String]
    class RegisterTransitGatewayRequest < Struct.new(
      :global_network_id,
      :transit_gateway_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute transit_gateway_registration
    #   <p>Information about the transit gateway registration.</p>
    #   @return [Types::TransitGatewayRegistration]
    class RegisterTransitGatewayResponse < Struct.new(
      :transit_gateway_registration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute attachment_id
    #   <p>The ID of the attachment.</p>
    #   @return [String]
    class RejectAttachmentRequest < Struct.new(
      :attachment_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute attachment
    #   <p>Describes the rejected attachment request.</p>
    #   @return [Types::Attachment]
    class RejectAttachmentResponse < Struct.new(
      :attachment,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a resource relationship.</p>
    # @!attribute from
    #   <p>The ARN of the resource.</p>
    #   @return [String]
    # @!attribute to
    #   <p>The ARN of the resource.</p>
    #   @return [String]
    class Relationship < Struct.new(
      :from,
      :to,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified resource could not be found.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the resource.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The resource type.</p>
    #   @return [String]
    # @!attribute context
    #   <p>The specified resource could not be found.</p>
    #   @return [Hash<String, String>]
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      :context,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute core_network_id
    #   <p>The ID of a core network.</p>
    #   @return [String]
    # @!attribute policy_version_id
    #   <p>The ID of the policy version to restore.</p>
    #   @return [Integer]
    class RestoreCoreNetworkPolicyVersionRequest < Struct.new(
      :core_network_id,
      :policy_version_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute core_network_policy
    #   <p>Describes the restored core network policy.</p>
    #   @return [Types::CoreNetworkPolicy]
    class RestoreCoreNetworkPolicyVersionResponse < Struct.new(
      :core_network_policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a route analysis.</p>
    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #   @return [String]
    # @!attribute owner_account_id
    #   <p>The ID of the AWS account that created the route analysis.</p>
    #   @return [String]
    # @!attribute route_analysis_id
    #   <p>The ID of the route analysis.</p>
    #   @return [String]
    # @!attribute start_timestamp
    #   <p>The time that the analysis started.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The status of the route analysis.</p>
    #   @return [String]
    # @!attribute source
    #   <p>The source.</p>
    #   @return [Types::RouteAnalysisEndpointOptions]
    # @!attribute destination
    #   <p>The destination.</p>
    #   @return [Types::RouteAnalysisEndpointOptions]
    # @!attribute include_return_path
    #   <p>Indicates whether to analyze the return path. The return path is not analyzed if the forward path
    #               analysis does not succeed.</p>
    #   @return [Boolean]
    # @!attribute use_middleboxes
    #   <p>Indicates whether to include the location of middlebox appliances in the route analysis.</p>
    #   @return [Boolean]
    # @!attribute forward_path
    #   <p>The forward path.</p>
    #   @return [Types::RouteAnalysisPath]
    # @!attribute return_path
    #   <p>The return path.</p>
    #   @return [Types::RouteAnalysisPath]
    class RouteAnalysis < Struct.new(
      :global_network_id,
      :owner_account_id,
      :route_analysis_id,
      :start_timestamp,
      :status,
      :source,
      :destination,
      :include_return_path,
      :use_middleboxes,
      :forward_path,
      :return_path,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:include_return_path] = false unless options.key?(:include_return_path)
        options[:use_middleboxes] = false unless options.key?(:use_middleboxes)
        super
      end
    end

    # <p>Describes the status of an analysis at completion.</p>
    # @!attribute result_code
    #   <p>The result of the analysis. If the status is <code>NOT_CONNECTED</code>, check the 
    #               reason code.</p>
    #   @return [String]
    # @!attribute reason_code
    #   <p>The reason code. Available only if a connection is not found.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>BLACKHOLE_ROUTE_FOR_DESTINATION_FOUND</code> - Found a black hole route with the destination CIDR block.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CYCLIC_PATH_DETECTED</code> - Found the same resource multiple times while traversing the path.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INACTIVE_ROUTE_FOR_DESTINATION_FOUND</code> - Found an inactive route with the destination CIDR block.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MAX_HOPS_EXCEEDED</code> - Analysis exceeded 64 hops without finding the destination.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ROUTE_NOT_FOUND</code> - Cannot find a route table with the destination CIDR block.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TGW_ATTACH_ARN_NO_MATCH</code> - Found an attachment, but not with the correct destination ARN.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TGW_ATTACH_NOT_FOUND</code> - Cannot find an attachment.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TGW_ATTACH_NOT_IN_TGW</code> - Found an attachment, but not to the correct transit gateway.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TGW_ATTACH_STABLE_ROUTE_TABLE_NOT_FOUND</code> - The state of the route table association is not associated.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute reason_context
    #   <p>Additional information about the path. Available only if a connection is not found.</p>
    #   @return [Hash<String, String>]
    class RouteAnalysisCompletion < Struct.new(
      :result_code,
      :reason_code,
      :reason_context,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a source or a destination.</p>
    # @!attribute transit_gateway_attachment_arn
    #   <p>The ARN of the transit gateway attachment.</p>
    #   @return [String]
    # @!attribute transit_gateway_arn
    #   <p>The ARN of the transit gateway.</p>
    #   @return [String]
    # @!attribute ip_address
    #   <p>The IP address.</p>
    #   @return [String]
    class RouteAnalysisEndpointOptions < Struct.new(
      :transit_gateway_attachment_arn,
      :transit_gateway_arn,
      :ip_address,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a source or a destination.</p>
    # @!attribute transit_gateway_attachment_arn
    #   <p>The ARN of the transit gateway attachment.</p>
    #   @return [String]
    # @!attribute ip_address
    #   <p>The IP address.</p>
    #   @return [String]
    class RouteAnalysisEndpointOptionsSpecification < Struct.new(
      :transit_gateway_attachment_arn,
      :ip_address,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a route analysis path.</p>
    # @!attribute completion_status
    #   <p>The status of the analysis at completion.</p>
    #   @return [Types::RouteAnalysisCompletion]
    # @!attribute path
    #   <p>The route analysis path.</p>
    #   @return [Array<Types::PathComponent>]
    class RouteAnalysisPath < Struct.new(
      :completion_status,
      :path,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a route table.</p>
    # @!attribute transit_gateway_route_table_arn
    #   <p>The ARN of the transit gateway route table for the attachment request. For example, <code>"TransitGatewayRouteTableArn": "arn:aws:ec2:us-west-2:123456789012:transit-gateway-route-table/tgw-rtb-9876543210123456"</code>.</p>
    #   @return [String]
    # @!attribute core_network_segment_edge
    #   <p>The segment edge in a core network.</p>
    #   @return [Types::CoreNetworkSegmentEdgeIdentifier]
    # @!attribute core_network_network_function_group
    #   <p>The route table identifier associated with the network function group.</p>
    #   @return [Types::CoreNetworkNetworkFunctionGroupIdentifier]
    class RouteTableIdentifier < Struct.new(
      :transit_gateway_route_table_arn,
      :core_network_segment_edge,
      :core_network_network_function_group,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the action that the service insertion will take for any segments associated with it.</p>
    # @!attribute action
    #   <p>The action the service insertion takes for traffic. 
    #               <code>send-via</code> sends east-west traffic between attachments. 
    #               <code>send-to</code> sends north-south traffic to the 
    #               security appliance, and then from that to either the Internet or to an on-premesis 
    #               location.  </p>
    #   @return [String]
    # @!attribute mode
    #   <p>Describes the mode packets take for the <code>send-via</code> action. This is not used when the action is <code>send-to</code>. <code>dual-hop</code> packets traverse attachments in both the source to the destination core network edges. This mode requires that an inspection attachment must be present in all Regions of the service insertion-enabled segments. 
    #               For <code>single-hop</code>, packets traverse a single intermediate inserted attachment. You can use <code>EdgeOverride</code> to specify a specific edge to use. </p>
    #   @return [String]
    # @!attribute when_sent_to
    #   <p>The list of destination segments if the service insertion action is <code>send-via</code>.</p>
    #   @return [Types::WhenSentTo]
    # @!attribute via
    #   <p>The list of network function groups and any edge overrides for the chosen service
    #               insertion action. Used for both <code>send-to</code> or <code>send-via</code>.</p>
    #   @return [Types::Via]
    class ServiceInsertionAction < Struct.new(
      :action,
      :mode,
      :when_sent_to,
      :via,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the segments associated with the service insertion action.</p>
    # @!attribute send_via
    #   <p>The list of segments associated with the <code>send-via</code> action.</p>
    #   @return [Array<String>]
    # @!attribute send_to
    #   <p>The list of segments associated with the <code>send-to</code> action.</p>
    #   @return [Array<String>]
    class ServiceInsertionSegments < Struct.new(
      :send_via,
      :send_to,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A service limit was exceeded.</p>
    # @!attribute message
    #   <p>The error message.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the resource.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The resource type.</p>
    #   @return [String]
    # @!attribute limit_code
    #   <p>The limit code.</p>
    #   @return [String]
    # @!attribute service_code
    #   <p>The service code.</p>
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      :limit_code,
      :service_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a site.</p>
    # @!attribute site_id
    #   <p>The ID of the site.</p>
    #   @return [String]
    # @!attribute site_arn
    #   <p>The Amazon Resource Name (ARN) of the site.</p>
    #   @return [String]
    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the site.</p>
    #   @return [String]
    # @!attribute location
    #   <p>The location of the site.</p>
    #   @return [Types::Location]
    # @!attribute created_at
    #   <p>The date and time that the site was created.</p>
    #   @return [Time]
    # @!attribute state
    #   <p>The state of the site.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags for the site.</p>
    #   @return [Array<Types::Tag>]
    class Site < Struct.new(
      :site_id,
      :site_arn,
      :global_network_id,
      :description,
      :location,
      :created_at,
      :state,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Creates a site-to-site VPN attachment.</p>
    # @!attribute attachment
    #   <p>Provides details about a site-to-site VPN attachment.</p>
    #   @return [Types::Attachment]
    # @!attribute vpn_connection_arn
    #   <p>The ARN of the site-to-site VPN attachment. </p>
    #   @return [String]
    class SiteToSiteVpnAttachment < Struct.new(
      :attachment,
      :vpn_connection_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute action
    #   <p>The action to take for the update request. This can be either <code>ENABLE</code> or <code>DISABLE</code>.</p>
    #   @return [String]
    class StartOrganizationServiceAccessUpdateRequest < Struct.new(
      :action,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute organization_status
    #   <p>The status of the service access update request for an Amazon Web Services Organization.</p>
    #   @return [Types::OrganizationStatus]
    class StartOrganizationServiceAccessUpdateResponse < Struct.new(
      :organization_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #   @return [String]
    # @!attribute source
    #   <p>The source from which traffic originates.</p>
    #   @return [Types::RouteAnalysisEndpointOptionsSpecification]
    # @!attribute destination
    #   <p>The destination.</p>
    #   @return [Types::RouteAnalysisEndpointOptionsSpecification]
    # @!attribute include_return_path
    #   <p>Indicates whether to analyze the return path. The default is <code>false</code>.</p>
    #   @return [Boolean]
    # @!attribute use_middleboxes
    #   <p>Indicates whether to include the location of middlebox appliances in the route analysis.
    #               The default is <code>false</code>.</p>
    #   @return [Boolean]
    class StartRouteAnalysisRequest < Struct.new(
      :global_network_id,
      :source,
      :destination,
      :include_return_path,
      :use_middleboxes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute route_analysis
    #   <p>The route analysis.</p>
    #   @return [Types::RouteAnalysis]
    class StartRouteAnalysisResponse < Struct.new(
      :route_analysis,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a tag.</p>
    # @!attribute key
    #   <p>The tag key.</p>
    #            <p>Constraints: Maximum length of 128 characters.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The tag value.</p>
    #            <p>Constraints: Maximum length of 256 characters.</p>
    #   @return [String]
    class Tag < Struct.new(
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to apply to the specified resource.</p>
    #   @return [Array<Types::Tag>]
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied due to request throttling.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p>Indicates when to retry the request.</p>
    #   @return [Integer]
    class ThrottlingException < Struct.new(
      :message,
      :retry_after_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a transit gateway Connect peer association.</p>
    # @!attribute transit_gateway_connect_peer_arn
    #   <p>The Amazon Resource Name (ARN) of the transit gateway Connect peer.</p>
    #   @return [String]
    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #   @return [String]
    # @!attribute device_id
    #   <p>The ID of the device.</p>
    #   @return [String]
    # @!attribute link_id
    #   <p>The ID of the link.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the association.</p>
    #   @return [String]
    class TransitGatewayConnectPeerAssociation < Struct.new(
      :transit_gateway_connect_peer_arn,
      :global_network_id,
      :device_id,
      :link_id,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a transit gateway peering attachment.</p>
    # @!attribute peering
    #   <p>Describes a transit gateway peer connection.</p>
    #   @return [Types::Peering]
    # @!attribute transit_gateway_arn
    #   <p>The ARN of the transit gateway.</p>
    #   @return [String]
    # @!attribute transit_gateway_peering_attachment_id
    #   <p>The ID of the transit gateway peering attachment.</p>
    #   @return [String]
    class TransitGatewayPeering < Struct.new(
      :peering,
      :transit_gateway_arn,
      :transit_gateway_peering_attachment_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the registration of a transit gateway to a global network.</p>
    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #   @return [String]
    # @!attribute transit_gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the transit gateway.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the transit gateway registration.</p>
    #   @return [Types::TransitGatewayRegistrationStateReason]
    class TransitGatewayRegistration < Struct.new(
      :global_network_id,
      :transit_gateway_arn,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the status of a transit gateway registration.</p>
    # @!attribute code
    #   <p>The code for the state reason.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The message for the state reason.</p>
    #   @return [String]
    class TransitGatewayRegistrationStateReason < Struct.new(
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a transit gateway route table attachment.</p>
    # @!attribute attachment
    #   <p>Describes a core network attachment.</p>
    #   @return [Types::Attachment]
    # @!attribute peering_id
    #   <p>The ID of the peering attachment.</p>
    #   @return [String]
    # @!attribute transit_gateway_route_table_arn
    #   <p>The ARN of the transit gateway attachment route table. For example, <code>"TransitGatewayRouteTableArn": "arn:aws:ec2:us-west-2:123456789012:transit-gateway-route-table/tgw-rtb-9876543210123456"</code>.</p>
    #   @return [String]
    class TransitGatewayRouteTableAttachment < Struct.new(
      :attachment,
      :peering_id,
      :transit_gateway_route_table_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The tag keys to remove from the specified resource.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #   @return [String]
    # @!attribute connection_id
    #   <p>The ID of the connection.</p>
    #   @return [String]
    # @!attribute link_id
    #   <p>The ID of the link for the first device in the connection.</p>
    #   @return [String]
    # @!attribute connected_link_id
    #   <p>The ID of the link for the second device in the connection.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the connection.</p>
    #            <p>Length Constraints: Maximum length of 256 characters.</p>
    #   @return [String]
    class UpdateConnectionRequest < Struct.new(
      :global_network_id,
      :connection_id,
      :link_id,
      :connected_link_id,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute connection
    #   <p>Information about the connection.</p>
    #   @return [Types::Connection]
    class UpdateConnectionResponse < Struct.new(
      :connection,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute core_network_id
    #   <p>The ID of a core network.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the update.</p>
    #   @return [String]
    class UpdateCoreNetworkRequest < Struct.new(
      :core_network_id,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute core_network
    #   <p>Returns information about a core network update.</p>
    #   @return [Types::CoreNetwork]
    class UpdateCoreNetworkResponse < Struct.new(
      :core_network,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #   @return [String]
    # @!attribute device_id
    #   <p>The ID of the device.</p>
    #   @return [String]
    # @!attribute aws_location
    #   <p>The Amazon Web Services location of the device, if applicable. For an on-premises device, you can omit this parameter.</p>
    #   @return [Types::AWSLocation]
    # @!attribute description
    #   <p>A description of the device.</p>
    #            <p>Constraints: Maximum length of 256 characters.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the device.</p>
    #   @return [String]
    # @!attribute vendor
    #   <p>The vendor of the device.</p>
    #            <p>Constraints: Maximum length of 128 characters.</p>
    #   @return [String]
    # @!attribute model
    #   <p>The model of the device.</p>
    #            <p>Constraints: Maximum length of 128 characters.</p>
    #   @return [String]
    # @!attribute serial_number
    #   <p>The serial number of the device.</p>
    #            <p>Constraints: Maximum length of 128 characters.</p>
    #   @return [String]
    # @!attribute location
    #   <p>Describes a location.</p>
    #   @return [Types::Location]
    # @!attribute site_id
    #   <p>The ID of the site.</p>
    #   @return [String]
    class UpdateDeviceRequest < Struct.new(
      :global_network_id,
      :device_id,
      :aws_location,
      :description,
      :type,
      :vendor,
      :model,
      :serial_number,
      :location,
      :site_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute device
    #   <p>Information about the device.</p>
    #   @return [Types::Device]
    class UpdateDeviceResponse < Struct.new(
      :device,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute attachment_id
    #   <p>The ID of the Direct Connect gateway attachment for the updated edge locations. </p>
    #   @return [String]
    # @!attribute edge_locations
    #   <p>One or more edge locations to update for the Direct Connect gateway attachment. The updated array of edge locations overwrites the previous array of locations. <code>EdgeLocations</code> is only used for Direct Connect gateway attachments.</p>
    #   @return [Array<String>]
    class UpdateDirectConnectGatewayAttachmentRequest < Struct.new(
      :attachment_id,
      :edge_locations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute direct_connect_gateway_attachment
    #   <p>Returns details of the Direct Connect gateway attachment with the updated edge locations.</p>
    #   @return [Types::DirectConnectGatewayAttachment]
    class UpdateDirectConnectGatewayAttachmentResponse < Struct.new(
      :direct_connect_gateway_attachment,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute global_network_id
    #   <p>The ID of your global network.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the global network.</p>
    #            <p>Constraints: Maximum length of 256 characters.</p>
    #   @return [String]
    class UpdateGlobalNetworkRequest < Struct.new(
      :global_network_id,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute global_network
    #   <p>Information about the global network object.</p>
    #   @return [Types::GlobalNetwork]
    class UpdateGlobalNetworkResponse < Struct.new(
      :global_network,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #   @return [String]
    # @!attribute link_id
    #   <p>The ID of the link.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the link.</p>
    #            <p>Constraints: Maximum length of 256 characters.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the link.</p>
    #            <p>Constraints: Maximum length of 128 characters.</p>
    #   @return [String]
    # @!attribute bandwidth
    #   <p>The upload and download speed in Mbps. </p>
    #   @return [Types::Bandwidth]
    # @!attribute provider
    #   <p>The provider of the link.</p>
    #            <p>Constraints: Maximum length of 128 characters.</p>
    #   @return [String]
    class UpdateLinkRequest < Struct.new(
      :global_network_id,
      :link_id,
      :description,
      :type,
      :bandwidth,
      :provider,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute link
    #   <p>Information about the link.</p>
    #   @return [Types::Link]
    class UpdateLinkResponse < Struct.new(
      :link,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The ARN of the resource.</p>
    #   @return [String]
    # @!attribute metadata
    #   <p>The resource metadata.</p>
    #   @return [Hash<String, String>]
    class UpdateNetworkResourceMetadataRequest < Struct.new(
      :global_network_id,
      :resource_arn,
      :metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource.</p>
    #   @return [String]
    # @!attribute metadata
    #   <p>The updated resource metadata.</p>
    #   @return [Hash<String, String>]
    class UpdateNetworkResourceMetadataResponse < Struct.new(
      :resource_arn,
      :metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute global_network_id
    #   <p>The ID of the global network.</p>
    #   @return [String]
    # @!attribute site_id
    #   <p>The ID of your site.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of your site.</p>
    #            <p>Constraints: Maximum length of 256 characters.</p>
    #   @return [String]
    # @!attribute location
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
    #   @return [Types::Location]
    class UpdateSiteRequest < Struct.new(
      :global_network_id,
      :site_id,
      :description,
      :location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute site
    #   <p>Information about the site.</p>
    #   @return [Types::Site]
    class UpdateSiteResponse < Struct.new(
      :site,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute attachment_id
    #   <p>The ID of the attachment.</p>
    #   @return [String]
    # @!attribute add_subnet_arns
    #   <p>Adds a subnet ARN to the VPC attachment.</p>
    #   @return [Array<String>]
    # @!attribute remove_subnet_arns
    #   <p>Removes a subnet ARN from the attachment.</p>
    #   @return [Array<String>]
    # @!attribute options
    #   <p>Additional options for updating the VPC attachment. </p>
    #   @return [Types::VpcOptions]
    class UpdateVpcAttachmentRequest < Struct.new(
      :attachment_id,
      :add_subnet_arns,
      :remove_subnet_arns,
      :options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute vpc_attachment
    #   <p>Describes the updated VPC attachment.</p>
    #   @return [Types::VpcAttachment]
    class UpdateVpcAttachmentResponse < Struct.new(
      :vpc_attachment,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input fails to satisfy the constraints.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   <p>The reason for the error.</p>
    #   @return [String]
    # @!attribute fields
    #   <p>The fields that caused the error, if applicable.</p>
    #   @return [Array<Types::ValidationExceptionField>]
    class ValidationException < Struct.new(
      :message,
      :reason,
      :fields,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a validation exception for a field.</p>
    # @!attribute name
    #   <p>The name of the field.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The message for the field.</p>
    #   @return [String]
    class ValidationExceptionField < Struct.new(
      :name,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The list of network function groups and edge overrides for the service insertion
    #             action. Used for both the <code>send-to</code> and <code>send-via</code> actions.</p>
    # @!attribute network_function_groups
    #   <p>The list of network function groups associated with the service insertion action.</p>
    #   @return [Array<Types::NetworkFunctionGroup>]
    # @!attribute with_edge_overrides
    #   <p>Describes any edge overrides. An edge override is a specific edge to be used for traffic.</p>
    #   @return [Array<Types::EdgeOverride>]
    class Via < Struct.new(
      :network_function_groups,
      :with_edge_overrides,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a VPC attachment.</p>
    # @!attribute attachment
    #   <p>Provides details about the VPC attachment.</p>
    #   @return [Types::Attachment]
    # @!attribute subnet_arns
    #   <p>The subnet ARNs.</p>
    #   @return [Array<String>]
    # @!attribute options
    #   <p>Provides details about the VPC attachment.</p>
    #   @return [Types::VpcOptions]
    class VpcAttachment < Struct.new(
      :attachment,
      :subnet_arns,
      :options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the VPC options.</p>
    # @!attribute ipv6_support
    #   <p>Indicates whether IPv6 is supported.</p>
    #   @return [Boolean]
    # @!attribute appliance_mode_support
    #   <p>Indicates whether appliance mode is supported.  If enabled, traffic flow between a source and destination use the same Availability Zone for the VPC attachment for the lifetime of that flow. The default value is <code>false</code>.</p>
    #   @return [Boolean]
    # @!attribute dns_support
    #   <p>Indicates whether DNS is supported.</p>
    #   @return [Boolean]
    # @!attribute security_group_referencing_support
    #   <p>Indicates whether security group referencing is enabled for this VPC attachment. The default is <code>true</code>. However, at the core network policy-level the default is set to <code>false</code>.</p>
    #   @return [Boolean]
    class VpcOptions < Struct.new(
      :ipv6_support,
      :appliance_mode_support,
      :dns_support,
      :security_group_referencing_support,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:ipv6_support] = false unless options.key?(:ipv6_support)
        options[:appliance_mode_support] = false unless options.key?(:appliance_mode_support)
        options[:dns_support] = false unless options.key?(:dns_support)
        options[:security_group_referencing_support] = false unless options.key?(:security_group_referencing_support)
        super
      end
    end

    # <p>Displays a list of the destination segments. Used only when the service insertion
    #             action is <code>send-to</code>.  </p>
    # @!attribute when_sent_to_segments_list
    #   <p>The list of destination segments when the service insertion action is <code>send-to</code>.</p>
    #   @return [Array<String>]
    class WhenSentTo < Struct.new(
      :when_sent_to_segments_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
