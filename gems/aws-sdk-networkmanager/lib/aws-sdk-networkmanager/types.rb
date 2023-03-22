# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::NetworkManager
  module Types

    # Specifies a location in Amazon Web Services.
    #
    # @!attribute [rw] zone
    #   The Zone that the device is located in. Specify the ID of an
    #   Availability Zone, Local Zone, Wavelength Zone, or an Outpost.
    #   @return [String]
    #
    # @!attribute [rw] subnet_arn
    #   The Amazon Resource Name (ARN) of the subnet that the device is
    #   located in.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/AWSLocation AWS API Documentation
    #
    class AWSLocation < Struct.new(
      :zone,
      :subnet_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] attachment_id
    #   The ID of the attachment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/AcceptAttachmentRequest AWS API Documentation
    #
    class AcceptAttachmentRequest < Struct.new(
      :attachment_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] attachment
    #   The response to the attachment request.
    #   @return [Types::Attachment]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/AcceptAttachmentResponse AWS API Documentation
    #
    class AcceptAttachmentResponse < Struct.new(
      :attachment)
      SENSITIVE = []
      include Aws::Structure
    end

    # You do not have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the current status of an account within an Amazon Web
    # Services Organization, including service-linked roles (SLRs).
    #
    # @!attribute [rw] account_id
    #   The ID of an account within the Amazon Web Services Organization.
    #   @return [String]
    #
    # @!attribute [rw] slr_deployment_status
    #   The status of SLR deployment for the account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/AccountStatus AWS API Documentation
    #
    class AccountStatus < Struct.new(
      :account_id,
      :slr_deployment_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] global_network_id
    #   The ID of your global network.
    #   @return [String]
    #
    # @!attribute [rw] connect_peer_id
    #   The ID of the Connect peer.
    #   @return [String]
    #
    # @!attribute [rw] device_id
    #   The ID of the device.
    #   @return [String]
    #
    # @!attribute [rw] link_id
    #   The ID of the link.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/AssociateConnectPeerRequest AWS API Documentation
    #
    class AssociateConnectPeerRequest < Struct.new(
      :global_network_id,
      :connect_peer_id,
      :device_id,
      :link_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connect_peer_association
    #   The response to the Connect peer request.
    #   @return [Types::ConnectPeerAssociation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/AssociateConnectPeerResponse AWS API Documentation
    #
    class AssociateConnectPeerResponse < Struct.new(
      :connect_peer_association)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] customer_gateway_arn
    #   The Amazon Resource Name (ARN) of the customer gateway.
    #   @return [String]
    #
    # @!attribute [rw] global_network_id
    #   The ID of the global network.
    #   @return [String]
    #
    # @!attribute [rw] device_id
    #   The ID of the device.
    #   @return [String]
    #
    # @!attribute [rw] link_id
    #   The ID of the link.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/AssociateCustomerGatewayRequest AWS API Documentation
    #
    class AssociateCustomerGatewayRequest < Struct.new(
      :customer_gateway_arn,
      :global_network_id,
      :device_id,
      :link_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] customer_gateway_association
    #   The customer gateway association.
    #   @return [Types::CustomerGatewayAssociation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/AssociateCustomerGatewayResponse AWS API Documentation
    #
    class AssociateCustomerGatewayResponse < Struct.new(
      :customer_gateway_association)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] global_network_id
    #   The ID of the global network.
    #   @return [String]
    #
    # @!attribute [rw] device_id
    #   The ID of the device.
    #   @return [String]
    #
    # @!attribute [rw] link_id
    #   The ID of the link.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/AssociateLinkRequest AWS API Documentation
    #
    class AssociateLinkRequest < Struct.new(
      :global_network_id,
      :device_id,
      :link_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] link_association
    #   The link association.
    #   @return [Types::LinkAssociation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/AssociateLinkResponse AWS API Documentation
    #
    class AssociateLinkResponse < Struct.new(
      :link_association)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] global_network_id
    #   The ID of the global network.
    #   @return [String]
    #
    # @!attribute [rw] transit_gateway_connect_peer_arn
    #   The Amazon Resource Name (ARN) of the Connect peer.
    #   @return [String]
    #
    # @!attribute [rw] device_id
    #   The ID of the device.
    #   @return [String]
    #
    # @!attribute [rw] link_id
    #   The ID of the link.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/AssociateTransitGatewayConnectPeerRequest AWS API Documentation
    #
    class AssociateTransitGatewayConnectPeerRequest < Struct.new(
      :global_network_id,
      :transit_gateway_connect_peer_arn,
      :device_id,
      :link_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] transit_gateway_connect_peer_association
    #   The transit gateway Connect peer association.
    #   @return [Types::TransitGatewayConnectPeerAssociation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/AssociateTransitGatewayConnectPeerResponse AWS API Documentation
    #
    class AssociateTransitGatewayConnectPeerResponse < Struct.new(
      :transit_gateway_connect_peer_association)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a core network attachment.
    #
    # @!attribute [rw] core_network_id
    #   The ID of a core network.
    #   @return [String]
    #
    # @!attribute [rw] core_network_arn
    #   The ARN of a core network.
    #   @return [String]
    #
    # @!attribute [rw] attachment_id
    #   The ID of the attachment.
    #   @return [String]
    #
    # @!attribute [rw] owner_account_id
    #   The ID of the attachment account owner.
    #   @return [String]
    #
    # @!attribute [rw] attachment_type
    #   The type of attachment.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the attachment.
    #   @return [String]
    #
    # @!attribute [rw] edge_location
    #   The Region where the edge is located.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The attachment resource ARN.
    #   @return [String]
    #
    # @!attribute [rw] attachment_policy_rule_number
    #   The policy rule number associated with the attachment.
    #   @return [Integer]
    #
    # @!attribute [rw] segment_name
    #   The name of the segment attachment.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags associated with the attachment.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] proposed_segment_change
    #   The attachment to move from one segment to another.
    #   @return [Types::ProposedSegmentChange]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the attachment was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the attachment was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/Attachment AWS API Documentation
    #
    class Attachment < Struct.new(
      :core_network_id,
      :core_network_arn,
      :attachment_id,
      :owner_account_id,
      :attachment_type,
      :state,
      :edge_location,
      :resource_arn,
      :attachment_policy_rule_number,
      :segment_name,
      :tags,
      :proposed_segment_change,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes bandwidth information.
    #
    # @!attribute [rw] upload_speed
    #   Upload speed in Mbps.
    #   @return [Integer]
    #
    # @!attribute [rw] download_speed
    #   Download speed in Mbps.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/Bandwidth AWS API Documentation
    #
    class Bandwidth < Struct.new(
      :upload_speed,
      :download_speed)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the BGP options.
    #
    # @!attribute [rw] peer_asn
    #   The Peer ASN of the BGP.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/BgpOptions AWS API Documentation
    #
    class BgpOptions < Struct.new(
      :peer_asn)
      SENSITIVE = []
      include Aws::Structure
    end

    # There was a conflict processing the request. Updating or deleting the
    # resource can cause an inconsistent state.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a core network Connect attachment.
    #
    # @!attribute [rw] attachment
    #   The attachment details.
    #   @return [Types::Attachment]
    #
    # @!attribute [rw] transport_attachment_id
    #   The ID of the transport attachment.
    #   @return [String]
    #
    # @!attribute [rw] options
    #   Options for connecting an attachment.
    #   @return [Types::ConnectAttachmentOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/ConnectAttachment AWS API Documentation
    #
    class ConnectAttachment < Struct.new(
      :attachment,
      :transport_attachment_id,
      :options)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a core network Connect attachment options.
    #
    # @!attribute [rw] protocol
    #   The protocol used for the attachment connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/ConnectAttachmentOptions AWS API Documentation
    #
    class ConnectAttachmentOptions < Struct.new(
      :protocol)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a core network Connect peer.
    #
    # @!attribute [rw] core_network_id
    #   The ID of a core network.
    #   @return [String]
    #
    # @!attribute [rw] connect_attachment_id
    #   The ID of the attachment to connect.
    #   @return [String]
    #
    # @!attribute [rw] connect_peer_id
    #   The ID of the Connect peer.
    #   @return [String]
    #
    # @!attribute [rw] edge_location
    #   The Connect peer Regions where edges are located.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the Connect peer.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the Connect peer was created.
    #   @return [Time]
    #
    # @!attribute [rw] configuration
    #   The configuration of the Connect peer.
    #   @return [Types::ConnectPeerConfiguration]
    #
    # @!attribute [rw] tags
    #   The list of key-value tags associated with the Connect peer.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/ConnectPeer AWS API Documentation
    #
    class ConnectPeer < Struct.new(
      :core_network_id,
      :connect_attachment_id,
      :connect_peer_id,
      :edge_location,
      :state,
      :created_at,
      :configuration,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a core network Connect peer association.
    #
    # @!attribute [rw] connect_peer_id
    #   The ID of the Connect peer.
    #   @return [String]
    #
    # @!attribute [rw] global_network_id
    #   The ID of the global network.
    #   @return [String]
    #
    # @!attribute [rw] device_id
    #   The ID of the device to connect to.
    #   @return [String]
    #
    # @!attribute [rw] link_id
    #   The ID of the link.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the Connect peer association.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/ConnectPeerAssociation AWS API Documentation
    #
    class ConnectPeerAssociation < Struct.new(
      :connect_peer_id,
      :global_network_id,
      :device_id,
      :link_id,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a core network BGP configuration.
    #
    # @!attribute [rw] core_network_asn
    #   The ASN of the Coret Network.
    #   @return [Integer]
    #
    # @!attribute [rw] peer_asn
    #   The ASN of the Connect peer.
    #   @return [Integer]
    #
    # @!attribute [rw] core_network_address
    #   The address of a core network.
    #   @return [String]
    #
    # @!attribute [rw] peer_address
    #   The address of a core network Connect peer.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/ConnectPeerBgpConfiguration AWS API Documentation
    #
    class ConnectPeerBgpConfiguration < Struct.new(
      :core_network_asn,
      :peer_asn,
      :core_network_address,
      :peer_address)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a core network Connect peer configuration.
    #
    # @!attribute [rw] core_network_address
    #   The IP address of a core network.
    #   @return [String]
    #
    # @!attribute [rw] peer_address
    #   The IP address of the Connect peer.
    #   @return [String]
    #
    # @!attribute [rw] inside_cidr_blocks
    #   The inside IP addresses used for a Connect peer configuration.
    #   @return [Array<String>]
    #
    # @!attribute [rw] protocol
    #   The protocol used for a Connect peer configuration.
    #   @return [String]
    #
    # @!attribute [rw] bgp_configurations
    #   The Connect peer BGP configurations.
    #   @return [Array<Types::ConnectPeerBgpConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/ConnectPeerConfiguration AWS API Documentation
    #
    class ConnectPeerConfiguration < Struct.new(
      :core_network_address,
      :peer_address,
      :inside_cidr_blocks,
      :protocol,
      :bgp_configurations)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary description of a Connect peer.
    #
    # @!attribute [rw] core_network_id
    #   The ID of a core network.
    #   @return [String]
    #
    # @!attribute [rw] connect_attachment_id
    #   The ID of a Connect peer attachment.
    #   @return [String]
    #
    # @!attribute [rw] connect_peer_id
    #   The ID of a Connect peer.
    #   @return [String]
    #
    # @!attribute [rw] edge_location
    #   The Region where the edge is located.
    #   @return [String]
    #
    # @!attribute [rw] connect_peer_state
    #   The state of a Connect peer.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when a Connect peer was created.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The list of key-value tags associated with the Connect peer summary.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/ConnectPeerSummary AWS API Documentation
    #
    class ConnectPeerSummary < Struct.new(
      :core_network_id,
      :connect_attachment_id,
      :connect_peer_id,
      :edge_location,
      :connect_peer_state,
      :created_at,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a connection.
    #
    # @!attribute [rw] connection_id
    #   The ID of the connection.
    #   @return [String]
    #
    # @!attribute [rw] connection_arn
    #   The Amazon Resource Name (ARN) of the connection.
    #   @return [String]
    #
    # @!attribute [rw] global_network_id
    #   The ID of the global network.
    #   @return [String]
    #
    # @!attribute [rw] device_id
    #   The ID of the first device in the connection.
    #   @return [String]
    #
    # @!attribute [rw] connected_device_id
    #   The ID of the second device in the connection.
    #   @return [String]
    #
    # @!attribute [rw] link_id
    #   The ID of the link for the first device in the connection.
    #   @return [String]
    #
    # @!attribute [rw] connected_link_id
    #   The ID of the link for the second device in the connection.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the connection.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time that the connection was created.
    #   @return [Time]
    #
    # @!attribute [rw] state
    #   The state of the connection.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags for the connection.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/Connection AWS API Documentation
    #
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
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes connection health.
    #
    # @!attribute [rw] type
    #   The connection type.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The connection status.
    #   @return [String]
    #
    # @!attribute [rw] timestamp
    #   The time the status was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/ConnectionHealth AWS API Documentation
    #
    class ConnectionHealth < Struct.new(
      :type,
      :status,
      :timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a core network.
    #
    # @!attribute [rw] global_network_id
    #   The ID of the global network that your core network is a part of.
    #   @return [String]
    #
    # @!attribute [rw] core_network_id
    #   The ID of a core network.
    #   @return [String]
    #
    # @!attribute [rw] core_network_arn
    #   The ARN of a core network.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of a core network.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when a core network was created.
    #   @return [Time]
    #
    # @!attribute [rw] state
    #   The current state of a core network.
    #   @return [String]
    #
    # @!attribute [rw] segments
    #   The segments within a core network.
    #   @return [Array<Types::CoreNetworkSegment>]
    #
    # @!attribute [rw] edges
    #   The edges within a core network.
    #   @return [Array<Types::CoreNetworkEdge>]
    #
    # @!attribute [rw] tags
    #   The list of key-value tags associated with a core network.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/CoreNetwork AWS API Documentation
    #
    class CoreNetwork < Struct.new(
      :global_network_id,
      :core_network_id,
      :core_network_arn,
      :description,
      :created_at,
      :state,
      :segments,
      :edges,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details describing a core network change.
    #
    # @!attribute [rw] type
    #   The type of change.
    #   @return [String]
    #
    # @!attribute [rw] action
    #   The action to take for a core network.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The resource identifier.
    #   @return [String]
    #
    # @!attribute [rw] previous_values
    #   The previous values for a core network.
    #   @return [Types::CoreNetworkChangeValues]
    #
    # @!attribute [rw] new_values
    #   The new value for a core network
    #   @return [Types::CoreNetworkChangeValues]
    #
    # @!attribute [rw] identifier_path
    #   Uniquely identifies the path for a change within the changeset. For
    #   example, the `IdentifierPath` for a core network segment change
    #   might be `"CORE_NETWORK_SEGMENT/us-east-1/devsegment"`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/CoreNetworkChange AWS API Documentation
    #
    class CoreNetworkChange < Struct.new(
      :type,
      :action,
      :identifier,
      :previous_values,
      :new_values,
      :identifier_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a core network change event. This can be a change to a
    # segment, attachment, route, etc.
    #
    # @!attribute [rw] type
    #   Describes the type of change event.
    #   @return [String]
    #
    # @!attribute [rw] action
    #   The action taken for the change event.
    #   @return [String]
    #
    # @!attribute [rw] identifier_path
    #   Uniquely identifies the path for a change within the changeset. For
    #   example, the `IdentifierPath` for a core network segment change
    #   might be `"CORE_NETWORK_SEGMENT/us-east-1/devsegment"`.
    #   @return [String]
    #
    # @!attribute [rw] event_time
    #   The timestamp for an event change in status.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the core network change event.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   Details of the change event.
    #   @return [Types::CoreNetworkChangeEventValues]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/CoreNetworkChangeEvent AWS API Documentation
    #
    class CoreNetworkChangeEvent < Struct.new(
      :type,
      :action,
      :identifier_path,
      :event_time,
      :status,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a core network change event.
    #
    # @!attribute [rw] edge_location
    #   The edge location for the core network change event.
    #   @return [String]
    #
    # @!attribute [rw] segment_name
    #   The segment name if the change event is associated with a segment.
    #   @return [String]
    #
    # @!attribute [rw] attachment_id
    #   The ID of the attachment if the change event is associated with an
    #   attachment.
    #   @return [String]
    #
    # @!attribute [rw] cidr
    #   For a `STATIC_ROUTE` event, this is the IP address.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/CoreNetworkChangeEventValues AWS API Documentation
    #
    class CoreNetworkChangeEventValues < Struct.new(
      :edge_location,
      :segment_name,
      :attachment_id,
      :cidr)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a core network change.
    #
    # @!attribute [rw] segment_name
    #   The names of the segments in a core network.
    #   @return [String]
    #
    # @!attribute [rw] edge_locations
    #   The Regions where edges are located in a core network.
    #   @return [Array<String>]
    #
    # @!attribute [rw] asn
    #   The ASN of a core network.
    #   @return [Integer]
    #
    # @!attribute [rw] cidr
    #   The IP addresses used for a core network.
    #   @return [String]
    #
    # @!attribute [rw] destination_identifier
    #   The ID of the destination.
    #   @return [String]
    #
    # @!attribute [rw] inside_cidr_blocks
    #   The inside IP addresses used for core network change values.
    #   @return [Array<String>]
    #
    # @!attribute [rw] shared_segments
    #   The shared segments for a core network change value.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/CoreNetworkChangeValues AWS API Documentation
    #
    class CoreNetworkChangeValues < Struct.new(
      :segment_name,
      :edge_locations,
      :asn,
      :cidr,
      :destination_identifier,
      :inside_cidr_blocks,
      :shared_segments)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a core network edge.
    #
    # @!attribute [rw] edge_location
    #   The Region where a core network edge is located.
    #   @return [String]
    #
    # @!attribute [rw] asn
    #   The ASN of a core network edge.
    #   @return [Integer]
    #
    # @!attribute [rw] inside_cidr_blocks
    #   The inside IP addresses used for core network edges.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/CoreNetworkEdge AWS API Documentation
    #
    class CoreNetworkEdge < Struct.new(
      :edge_location,
      :asn,
      :inside_cidr_blocks)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a core network policy. You can have only one LIVE Core
    # Policy.
    #
    # @!attribute [rw] core_network_id
    #   The ID of a core network.
    #   @return [String]
    #
    # @!attribute [rw] policy_version_id
    #   The ID of the policy version.
    #   @return [Integer]
    #
    # @!attribute [rw] alias
    #   Whether a core network policy is the current LIVE policy or the most
    #   recently submitted policy.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of a core network policy.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when a core network policy was created.
    #   @return [Time]
    #
    # @!attribute [rw] change_set_state
    #   The state of a core network policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_errors
    #   Describes any errors in a core network policy.
    #   @return [Array<Types::CoreNetworkPolicyError>]
    #
    # @!attribute [rw] policy_document
    #   Describes a core network policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/CoreNetworkPolicy AWS API Documentation
    #
    class CoreNetworkPolicy < Struct.new(
      :core_network_id,
      :policy_version_id,
      :alias,
      :description,
      :created_at,
      :change_set_state,
      :policy_errors,
      :policy_document)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides details about an error in a core network policy.
    #
    # @!attribute [rw] error_code
    #   The error code associated with a core network policy error.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The message associated with a core network policy error code.
    #   @return [String]
    #
    # @!attribute [rw] path
    #   The JSON path where the error was discovered in the policy document.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/CoreNetworkPolicyError AWS API Documentation
    #
    class CoreNetworkPolicyError < Struct.new(
      :error_code,
      :message,
      :path)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a core network policy exception.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] errors
    #   Describes a core network policy exception.
    #   @return [Array<Types::CoreNetworkPolicyError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/CoreNetworkPolicyException AWS API Documentation
    #
    class CoreNetworkPolicyException < Struct.new(
      :message,
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a core network policy version.
    #
    # @!attribute [rw] core_network_id
    #   The ID of a core network.
    #   @return [String]
    #
    # @!attribute [rw] policy_version_id
    #   The ID of the policy version.
    #   @return [Integer]
    #
    # @!attribute [rw] alias
    #   Whether a core network policy is the current policy or the most
    #   recently submitted policy.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of a core network policy version.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when a core network policy version was created.
    #   @return [Time]
    #
    # @!attribute [rw] change_set_state
    #   The status of the policy version change set.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/CoreNetworkPolicyVersion AWS API Documentation
    #
    class CoreNetworkPolicyVersion < Struct.new(
      :core_network_id,
      :policy_version_id,
      :alias,
      :description,
      :created_at,
      :change_set_state)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a core network segment, which are dedicated routes. Only
    # attachments within this segment can communicate with each other.
    #
    # @!attribute [rw] name
    #   The name of a core network segment.
    #   @return [String]
    #
    # @!attribute [rw] edge_locations
    #   The Regions where the edges are located.
    #   @return [Array<String>]
    #
    # @!attribute [rw] shared_segments
    #   The shared segments of a core network.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/CoreNetworkSegment AWS API Documentation
    #
    class CoreNetworkSegment < Struct.new(
      :name,
      :edge_locations,
      :shared_segments)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns details about a core network edge.
    #
    # @!attribute [rw] core_network_id
    #   The ID of a core network.
    #   @return [String]
    #
    # @!attribute [rw] segment_name
    #   The name of the segment edge.
    #   @return [String]
    #
    # @!attribute [rw] edge_location
    #   The Region where the segment edge is located.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/CoreNetworkSegmentEdgeIdentifier AWS API Documentation
    #
    class CoreNetworkSegmentEdgeIdentifier < Struct.new(
      :core_network_id,
      :segment_name,
      :edge_location)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns summary information about a core network.
    #
    # @!attribute [rw] core_network_id
    #   The ID of a core network.
    #   @return [String]
    #
    # @!attribute [rw] core_network_arn
    #   a core network ARN.
    #   @return [String]
    #
    # @!attribute [rw] global_network_id
    #   The global network ID.
    #   @return [String]
    #
    # @!attribute [rw] owner_account_id
    #   The ID of the account owner.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of a core network.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of a core network.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The key-value tags associated with a core network summary.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/CoreNetworkSummary AWS API Documentation
    #
    class CoreNetworkSummary < Struct.new(
      :core_network_id,
      :core_network_arn,
      :global_network_id,
      :owner_account_id,
      :state,
      :description,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] core_network_id
    #   The ID of a core network where you want to create the attachment.
    #   @return [String]
    #
    # @!attribute [rw] edge_location
    #   The Region where the edge is located.
    #   @return [String]
    #
    # @!attribute [rw] transport_attachment_id
    #   The ID of the attachment between the two connections.
    #   @return [String]
    #
    # @!attribute [rw] options
    #   Options for creating an attachment.
    #   @return [Types::ConnectAttachmentOptions]
    #
    # @!attribute [rw] tags
    #   The list of key-value tags associated with the request.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] client_token
    #   The client token associated with the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/CreateConnectAttachmentRequest AWS API Documentation
    #
    class CreateConnectAttachmentRequest < Struct.new(
      :core_network_id,
      :edge_location,
      :transport_attachment_id,
      :options,
      :tags,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connect_attachment
    #   The response to a Connect attachment request.
    #   @return [Types::ConnectAttachment]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/CreateConnectAttachmentResponse AWS API Documentation
    #
    class CreateConnectAttachmentResponse < Struct.new(
      :connect_attachment)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connect_attachment_id
    #   The ID of the connection attachment.
    #   @return [String]
    #
    # @!attribute [rw] core_network_address
    #   A Connect peer core network address.
    #   @return [String]
    #
    # @!attribute [rw] peer_address
    #   The Connect peer address.
    #   @return [String]
    #
    # @!attribute [rw] bgp_options
    #   The Connect peer BGP options.
    #   @return [Types::BgpOptions]
    #
    # @!attribute [rw] inside_cidr_blocks
    #   The inside IP addresses used for BGP peering.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   The tags associated with the peer request.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] client_token
    #   The client token associated with the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/CreateConnectPeerRequest AWS API Documentation
    #
    class CreateConnectPeerRequest < Struct.new(
      :connect_attachment_id,
      :core_network_address,
      :peer_address,
      :bgp_options,
      :inside_cidr_blocks,
      :tags,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connect_peer
    #   The response to the request.
    #   @return [Types::ConnectPeer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/CreateConnectPeerResponse AWS API Documentation
    #
    class CreateConnectPeerResponse < Struct.new(
      :connect_peer)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] global_network_id
    #   The ID of the global network.
    #   @return [String]
    #
    # @!attribute [rw] device_id
    #   The ID of the first device in the connection.
    #   @return [String]
    #
    # @!attribute [rw] connected_device_id
    #   The ID of the second device in the connection.
    #   @return [String]
    #
    # @!attribute [rw] link_id
    #   The ID of the link for the first device.
    #   @return [String]
    #
    # @!attribute [rw] connected_link_id
    #   The ID of the link for the second device.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the connection.
    #
    #   Length Constraints: Maximum length of 256 characters.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to apply to the resource during creation.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/CreateConnectionRequest AWS API Documentation
    #
    class CreateConnectionRequest < Struct.new(
      :global_network_id,
      :device_id,
      :connected_device_id,
      :link_id,
      :connected_link_id,
      :description,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connection
    #   Information about the connection.
    #   @return [Types::Connection]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/CreateConnectionResponse AWS API Documentation
    #
    class CreateConnectionResponse < Struct.new(
      :connection)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] global_network_id
    #   The ID of the global network that a core network will be a part of.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of a core network.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Key-value tags associated with a core network request.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] policy_document
    #   The policy document for creating a core network.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The client token associated with a core network request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/CreateCoreNetworkRequest AWS API Documentation
    #
    class CreateCoreNetworkRequest < Struct.new(
      :global_network_id,
      :description,
      :tags,
      :policy_document,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] core_network
    #   Returns details about a core network.
    #   @return [Types::CoreNetwork]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/CreateCoreNetworkResponse AWS API Documentation
    #
    class CreateCoreNetworkResponse < Struct.new(
      :core_network)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] global_network_id
    #   The ID of the global network.
    #   @return [String]
    #
    # @!attribute [rw] aws_location
    #   The Amazon Web Services location of the device, if applicable. For
    #   an on-premises device, you can omit this parameter.
    #   @return [Types::AWSLocation]
    #
    # @!attribute [rw] description
    #   A description of the device.
    #
    #   Constraints: Maximum length of 256 characters.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the device.
    #   @return [String]
    #
    # @!attribute [rw] vendor
    #   The vendor of the device.
    #
    #   Constraints: Maximum length of 128 characters.
    #   @return [String]
    #
    # @!attribute [rw] model
    #   The model of the device.
    #
    #   Constraints: Maximum length of 128 characters.
    #   @return [String]
    #
    # @!attribute [rw] serial_number
    #   The serial number of the device.
    #
    #   Constraints: Maximum length of 128 characters.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   The location of the device.
    #   @return [Types::Location]
    #
    # @!attribute [rw] site_id
    #   The ID of the site.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to apply to the resource during creation.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/CreateDeviceRequest AWS API Documentation
    #
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
      :tags)
      SENSITIVE = [:location]
      include Aws::Structure
    end

    # @!attribute [rw] device
    #   Information about the device.
    #   @return [Types::Device]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/CreateDeviceResponse AWS API Documentation
    #
    class CreateDeviceResponse < Struct.new(
      :device)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   A description of the global network.
    #
    #   Constraints: Maximum length of 256 characters.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to apply to the resource during creation.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/CreateGlobalNetworkRequest AWS API Documentation
    #
    class CreateGlobalNetworkRequest < Struct.new(
      :description,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] global_network
    #   Information about the global network object.
    #   @return [Types::GlobalNetwork]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/CreateGlobalNetworkResponse AWS API Documentation
    #
    class CreateGlobalNetworkResponse < Struct.new(
      :global_network)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] global_network_id
    #   The ID of the global network.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the link.
    #
    #   Constraints: Maximum length of 256 characters.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the link.
    #
    #   Constraints: Maximum length of 128 characters. Cannot include the
    #   following characters: \| \\ ^
    #   @return [String]
    #
    # @!attribute [rw] bandwidth
    #   The upload speed and download speed in Mbps.
    #   @return [Types::Bandwidth]
    #
    # @!attribute [rw] provider
    #   The provider of the link.
    #
    #   Constraints: Maximum length of 128 characters. Cannot include the
    #   following characters: \| \\ ^
    #   @return [String]
    #
    # @!attribute [rw] site_id
    #   The ID of the site.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to apply to the resource during creation.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/CreateLinkRequest AWS API Documentation
    #
    class CreateLinkRequest < Struct.new(
      :global_network_id,
      :description,
      :type,
      :bandwidth,
      :provider,
      :site_id,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] link
    #   Information about the link.
    #   @return [Types::Link]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/CreateLinkResponse AWS API Documentation
    #
    class CreateLinkResponse < Struct.new(
      :link)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] global_network_id
    #   The ID of the global network.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of your site.
    #
    #   Constraints: Maximum length of 256 characters.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   The site location. This information is used for visualization in the
    #   Network Manager console. If you specify the address, the latitude
    #   and longitude are automatically calculated.
    #
    #   * `Address`: The physical address of the site.
    #
    #   * `Latitude`: The latitude of the site.
    #
    #   * `Longitude`: The longitude of the site.
    #   @return [Types::Location]
    #
    # @!attribute [rw] tags
    #   The tags to apply to the resource during creation.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/CreateSiteRequest AWS API Documentation
    #
    class CreateSiteRequest < Struct.new(
      :global_network_id,
      :description,
      :location,
      :tags)
      SENSITIVE = [:location]
      include Aws::Structure
    end

    # @!attribute [rw] site
    #   Information about the site.
    #   @return [Types::Site]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/CreateSiteResponse AWS API Documentation
    #
    class CreateSiteResponse < Struct.new(
      :site)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] core_network_id
    #   The ID of a core network where you're creating a site-to-site VPN
    #   attachment.
    #   @return [String]
    #
    # @!attribute [rw] vpn_connection_arn
    #   The ARN identifying the VPN attachment.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags associated with the request.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] client_token
    #   The client token associated with the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/CreateSiteToSiteVpnAttachmentRequest AWS API Documentation
    #
    class CreateSiteToSiteVpnAttachmentRequest < Struct.new(
      :core_network_id,
      :vpn_connection_arn,
      :tags,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] site_to_site_vpn_attachment
    #   Details about a site-to-site VPN attachment.
    #   @return [Types::SiteToSiteVpnAttachment]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/CreateSiteToSiteVpnAttachmentResponse AWS API Documentation
    #
    class CreateSiteToSiteVpnAttachmentResponse < Struct.new(
      :site_to_site_vpn_attachment)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] core_network_id
    #   The ID of a core network.
    #   @return [String]
    #
    # @!attribute [rw] transit_gateway_arn
    #   The ARN of the transit gateway for the peering request.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The list of key-value tags associated with the request.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] client_token
    #   The client token associated with the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/CreateTransitGatewayPeeringRequest AWS API Documentation
    #
    class CreateTransitGatewayPeeringRequest < Struct.new(
      :core_network_id,
      :transit_gateway_arn,
      :tags,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] transit_gateway_peering
    #   Returns information about the transit gateway peering connection
    #   request.
    #   @return [Types::TransitGatewayPeering]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/CreateTransitGatewayPeeringResponse AWS API Documentation
    #
    class CreateTransitGatewayPeeringResponse < Struct.new(
      :transit_gateway_peering)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] peering_id
    #   The ID of the peer for the
    #   @return [String]
    #
    # @!attribute [rw] transit_gateway_route_table_arn
    #   The ARN of the transit gateway route table for the attachment
    #   request. For example, `"TransitGatewayRouteTableArn":
    #   "arn:aws:ec2:us-west-2:123456789012:transit-gateway-route-table/tgw-rtb-9876543210123456"`.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The list of key-value tags associated with the request.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] client_token
    #   The client token associated with the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/CreateTransitGatewayRouteTableAttachmentRequest AWS API Documentation
    #
    class CreateTransitGatewayRouteTableAttachmentRequest < Struct.new(
      :peering_id,
      :transit_gateway_route_table_arn,
      :tags,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] transit_gateway_route_table_attachment
    #   The route table associated with the create transit gateway route
    #   table attachment request.
    #   @return [Types::TransitGatewayRouteTableAttachment]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/CreateTransitGatewayRouteTableAttachmentResponse AWS API Documentation
    #
    class CreateTransitGatewayRouteTableAttachmentResponse < Struct.new(
      :transit_gateway_route_table_attachment)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] core_network_id
    #   The ID of a core network for the VPC attachment.
    #   @return [String]
    #
    # @!attribute [rw] vpc_arn
    #   The ARN of the VPC.
    #   @return [String]
    #
    # @!attribute [rw] subnet_arns
    #   The subnet ARN of the VPC attachment.
    #   @return [Array<String>]
    #
    # @!attribute [rw] options
    #   Options for the VPC attachment.
    #   @return [Types::VpcOptions]
    #
    # @!attribute [rw] tags
    #   The key-value tags associated with the request.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] client_token
    #   The client token associated with the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/CreateVpcAttachmentRequest AWS API Documentation
    #
    class CreateVpcAttachmentRequest < Struct.new(
      :core_network_id,
      :vpc_arn,
      :subnet_arns,
      :options,
      :tags,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vpc_attachment
    #   Provides details about the VPC attachment.
    #   @return [Types::VpcAttachment]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/CreateVpcAttachmentResponse AWS API Documentation
    #
    class CreateVpcAttachmentResponse < Struct.new(
      :vpc_attachment)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the association between a customer gateway, a device, and a
    # link.
    #
    # @!attribute [rw] customer_gateway_arn
    #   The Amazon Resource Name (ARN) of the customer gateway.
    #   @return [String]
    #
    # @!attribute [rw] global_network_id
    #   The ID of the global network.
    #   @return [String]
    #
    # @!attribute [rw] device_id
    #   The ID of the device.
    #   @return [String]
    #
    # @!attribute [rw] link_id
    #   The ID of the link.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The association state.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/CustomerGatewayAssociation AWS API Documentation
    #
    class CustomerGatewayAssociation < Struct.new(
      :customer_gateway_arn,
      :global_network_id,
      :device_id,
      :link_id,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] attachment_id
    #   The ID of the attachment to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/DeleteAttachmentRequest AWS API Documentation
    #
    class DeleteAttachmentRequest < Struct.new(
      :attachment_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] attachment
    #   Information about the deleted attachment.
    #   @return [Types::Attachment]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/DeleteAttachmentResponse AWS API Documentation
    #
    class DeleteAttachmentResponse < Struct.new(
      :attachment)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connect_peer_id
    #   The ID of the deleted Connect peer.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/DeleteConnectPeerRequest AWS API Documentation
    #
    class DeleteConnectPeerRequest < Struct.new(
      :connect_peer_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connect_peer
    #   Information about the deleted Connect peer.
    #   @return [Types::ConnectPeer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/DeleteConnectPeerResponse AWS API Documentation
    #
    class DeleteConnectPeerResponse < Struct.new(
      :connect_peer)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] global_network_id
    #   The ID of the global network.
    #   @return [String]
    #
    # @!attribute [rw] connection_id
    #   The ID of the connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/DeleteConnectionRequest AWS API Documentation
    #
    class DeleteConnectionRequest < Struct.new(
      :global_network_id,
      :connection_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connection
    #   Information about the connection.
    #   @return [Types::Connection]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/DeleteConnectionResponse AWS API Documentation
    #
    class DeleteConnectionResponse < Struct.new(
      :connection)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] core_network_id
    #   The ID of a core network for the deleted policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_version_id
    #   The version ID of the deleted policy.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/DeleteCoreNetworkPolicyVersionRequest AWS API Documentation
    #
    class DeleteCoreNetworkPolicyVersionRequest < Struct.new(
      :core_network_id,
      :policy_version_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] core_network_policy
    #   Returns information about the deleted policy version.
    #   @return [Types::CoreNetworkPolicy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/DeleteCoreNetworkPolicyVersionResponse AWS API Documentation
    #
    class DeleteCoreNetworkPolicyVersionResponse < Struct.new(
      :core_network_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] core_network_id
    #   The network ID of the deleted core network.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/DeleteCoreNetworkRequest AWS API Documentation
    #
    class DeleteCoreNetworkRequest < Struct.new(
      :core_network_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] core_network
    #   Information about the deleted core network.
    #   @return [Types::CoreNetwork]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/DeleteCoreNetworkResponse AWS API Documentation
    #
    class DeleteCoreNetworkResponse < Struct.new(
      :core_network)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] global_network_id
    #   The ID of the global network.
    #   @return [String]
    #
    # @!attribute [rw] device_id
    #   The ID of the device.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/DeleteDeviceRequest AWS API Documentation
    #
    class DeleteDeviceRequest < Struct.new(
      :global_network_id,
      :device_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] device
    #   Information about the device.
    #   @return [Types::Device]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/DeleteDeviceResponse AWS API Documentation
    #
    class DeleteDeviceResponse < Struct.new(
      :device)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] global_network_id
    #   The ID of the global network.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/DeleteGlobalNetworkRequest AWS API Documentation
    #
    class DeleteGlobalNetworkRequest < Struct.new(
      :global_network_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] global_network
    #   Information about the global network.
    #   @return [Types::GlobalNetwork]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/DeleteGlobalNetworkResponse AWS API Documentation
    #
    class DeleteGlobalNetworkResponse < Struct.new(
      :global_network)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] global_network_id
    #   The ID of the global network.
    #   @return [String]
    #
    # @!attribute [rw] link_id
    #   The ID of the link.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/DeleteLinkRequest AWS API Documentation
    #
    class DeleteLinkRequest < Struct.new(
      :global_network_id,
      :link_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] link
    #   Information about the link.
    #   @return [Types::Link]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/DeleteLinkResponse AWS API Documentation
    #
    class DeleteLinkResponse < Struct.new(
      :link)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] peering_id
    #   The ID of the peering connection to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/DeletePeeringRequest AWS API Documentation
    #
    class DeletePeeringRequest < Struct.new(
      :peering_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] peering
    #   Information about a deleted peering connection.
    #   @return [Types::Peering]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/DeletePeeringResponse AWS API Documentation
    #
    class DeletePeeringResponse < Struct.new(
      :peering)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the policy to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/DeleteResourcePolicyRequest AWS API Documentation
    #
    class DeleteResourcePolicyRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/DeleteResourcePolicyResponse AWS API Documentation
    #
    class DeleteResourcePolicyResponse < Aws::EmptyStructure; end

    # @!attribute [rw] global_network_id
    #   The ID of the global network.
    #   @return [String]
    #
    # @!attribute [rw] site_id
    #   The ID of the site.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/DeleteSiteRequest AWS API Documentation
    #
    class DeleteSiteRequest < Struct.new(
      :global_network_id,
      :site_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] site
    #   Information about the site.
    #   @return [Types::Site]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/DeleteSiteResponse AWS API Documentation
    #
    class DeleteSiteResponse < Struct.new(
      :site)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] global_network_id
    #   The ID of the global network.
    #   @return [String]
    #
    # @!attribute [rw] transit_gateway_arn
    #   The Amazon Resource Name (ARN) of the transit gateway.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/DeregisterTransitGatewayRequest AWS API Documentation
    #
    class DeregisterTransitGatewayRequest < Struct.new(
      :global_network_id,
      :transit_gateway_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] transit_gateway_registration
    #   The transit gateway registration information.
    #   @return [Types::TransitGatewayRegistration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/DeregisterTransitGatewayResponse AWS API Documentation
    #
    class DeregisterTransitGatewayResponse < Struct.new(
      :transit_gateway_registration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] global_network_ids
    #   The IDs of one or more global networks. The maximum is 10.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/DescribeGlobalNetworksRequest AWS API Documentation
    #
    class DescribeGlobalNetworksRequest < Struct.new(
      :global_network_ids,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] global_networks
    #   Information about the global networks.
    #   @return [Array<Types::GlobalNetwork>]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/DescribeGlobalNetworksResponse AWS API Documentation
    #
    class DescribeGlobalNetworksResponse < Struct.new(
      :global_networks,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a device.
    #
    # @!attribute [rw] device_id
    #   The ID of the device.
    #   @return [String]
    #
    # @!attribute [rw] device_arn
    #   The Amazon Resource Name (ARN) of the device.
    #   @return [String]
    #
    # @!attribute [rw] global_network_id
    #   The ID of the global network.
    #   @return [String]
    #
    # @!attribute [rw] aws_location
    #   The Amazon Web Services location of the device.
    #   @return [Types::AWSLocation]
    #
    # @!attribute [rw] description
    #   The description of the device.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The device type.
    #   @return [String]
    #
    # @!attribute [rw] vendor
    #   The device vendor.
    #   @return [String]
    #
    # @!attribute [rw] model
    #   The device model.
    #   @return [String]
    #
    # @!attribute [rw] serial_number
    #   The device serial number.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   The site location.
    #   @return [Types::Location]
    #
    # @!attribute [rw] site_id
    #   The site ID.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time that the site was created.
    #   @return [Time]
    #
    # @!attribute [rw] state
    #   The device state.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags for the device.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/Device AWS API Documentation
    #
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
      :tags)
      SENSITIVE = [:location]
      include Aws::Structure
    end

    # @!attribute [rw] global_network_id
    #   The ID of the global network.
    #   @return [String]
    #
    # @!attribute [rw] connect_peer_id
    #   The ID of the Connect peer to disassociate from a device.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/DisassociateConnectPeerRequest AWS API Documentation
    #
    class DisassociateConnectPeerRequest < Struct.new(
      :global_network_id,
      :connect_peer_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connect_peer_association
    #   Describes the Connect peer association.
    #   @return [Types::ConnectPeerAssociation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/DisassociateConnectPeerResponse AWS API Documentation
    #
    class DisassociateConnectPeerResponse < Struct.new(
      :connect_peer_association)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] global_network_id
    #   The ID of the global network.
    #   @return [String]
    #
    # @!attribute [rw] customer_gateway_arn
    #   The Amazon Resource Name (ARN) of the customer gateway.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/DisassociateCustomerGatewayRequest AWS API Documentation
    #
    class DisassociateCustomerGatewayRequest < Struct.new(
      :global_network_id,
      :customer_gateway_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] customer_gateway_association
    #   Information about the customer gateway association.
    #   @return [Types::CustomerGatewayAssociation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/DisassociateCustomerGatewayResponse AWS API Documentation
    #
    class DisassociateCustomerGatewayResponse < Struct.new(
      :customer_gateway_association)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] global_network_id
    #   The ID of the global network.
    #   @return [String]
    #
    # @!attribute [rw] device_id
    #   The ID of the device.
    #   @return [String]
    #
    # @!attribute [rw] link_id
    #   The ID of the link.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/DisassociateLinkRequest AWS API Documentation
    #
    class DisassociateLinkRequest < Struct.new(
      :global_network_id,
      :device_id,
      :link_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] link_association
    #   Information about the link association.
    #   @return [Types::LinkAssociation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/DisassociateLinkResponse AWS API Documentation
    #
    class DisassociateLinkResponse < Struct.new(
      :link_association)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] global_network_id
    #   The ID of the global network.
    #   @return [String]
    #
    # @!attribute [rw] transit_gateway_connect_peer_arn
    #   The Amazon Resource Name (ARN) of the transit gateway Connect peer.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/DisassociateTransitGatewayConnectPeerRequest AWS API Documentation
    #
    class DisassociateTransitGatewayConnectPeerRequest < Struct.new(
      :global_network_id,
      :transit_gateway_connect_peer_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] transit_gateway_connect_peer_association
    #   The transit gateway Connect peer association.
    #   @return [Types::TransitGatewayConnectPeerAssociation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/DisassociateTransitGatewayConnectPeerResponse AWS API Documentation
    #
    class DisassociateTransitGatewayConnectPeerResponse < Struct.new(
      :transit_gateway_connect_peer_association)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] core_network_id
    #   The ID of a core network.
    #   @return [String]
    #
    # @!attribute [rw] policy_version_id
    #   The ID of the policy version.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/ExecuteCoreNetworkChangeSetRequest AWS API Documentation
    #
    class ExecuteCoreNetworkChangeSetRequest < Struct.new(
      :core_network_id,
      :policy_version_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/ExecuteCoreNetworkChangeSetResponse AWS API Documentation
    #
    class ExecuteCoreNetworkChangeSetResponse < Aws::EmptyStructure; end

    # @!attribute [rw] attachment_id
    #   The ID of the attachment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetConnectAttachmentRequest AWS API Documentation
    #
    class GetConnectAttachmentRequest < Struct.new(
      :attachment_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connect_attachment
    #   Details about the Connect attachment.
    #   @return [Types::ConnectAttachment]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetConnectAttachmentResponse AWS API Documentation
    #
    class GetConnectAttachmentResponse < Struct.new(
      :connect_attachment)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] global_network_id
    #   The ID of the global network.
    #   @return [String]
    #
    # @!attribute [rw] connect_peer_ids
    #   The IDs of the Connect peers.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetConnectPeerAssociationsRequest AWS API Documentation
    #
    class GetConnectPeerAssociationsRequest < Struct.new(
      :global_network_id,
      :connect_peer_ids,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connect_peer_associations
    #   Displays a list of Connect peer associations.
    #   @return [Array<Types::ConnectPeerAssociation>]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetConnectPeerAssociationsResponse AWS API Documentation
    #
    class GetConnectPeerAssociationsResponse < Struct.new(
      :connect_peer_associations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connect_peer_id
    #   The ID of the Connect peer.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetConnectPeerRequest AWS API Documentation
    #
    class GetConnectPeerRequest < Struct.new(
      :connect_peer_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connect_peer
    #   Returns information about a core network Connect peer.
    #   @return [Types::ConnectPeer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetConnectPeerResponse AWS API Documentation
    #
    class GetConnectPeerResponse < Struct.new(
      :connect_peer)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] global_network_id
    #   The ID of the global network.
    #   @return [String]
    #
    # @!attribute [rw] connection_ids
    #   One or more connection IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] device_id
    #   The ID of the device.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetConnectionsRequest AWS API Documentation
    #
    class GetConnectionsRequest < Struct.new(
      :global_network_id,
      :connection_ids,
      :device_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connections
    #   Information about the connections.
    #   @return [Array<Types::Connection>]
    #
    # @!attribute [rw] next_token
    #   The token to use for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetConnectionsResponse AWS API Documentation
    #
    class GetConnectionsResponse < Struct.new(
      :connections,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] core_network_id
    #   The ID of a core network.
    #   @return [String]
    #
    # @!attribute [rw] policy_version_id
    #   The ID of the policy version.
    #   @return [Integer]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetCoreNetworkChangeEventsRequest AWS API Documentation
    #
    class GetCoreNetworkChangeEventsRequest < Struct.new(
      :core_network_id,
      :policy_version_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] core_network_change_events
    #   The response to `GetCoreNetworkChangeEventsRequest`.
    #   @return [Array<Types::CoreNetworkChangeEvent>]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetCoreNetworkChangeEventsResponse AWS API Documentation
    #
    class GetCoreNetworkChangeEventsResponse < Struct.new(
      :core_network_change_events,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] core_network_id
    #   The ID of a core network.
    #   @return [String]
    #
    # @!attribute [rw] policy_version_id
    #   The ID of the policy version.
    #   @return [Integer]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetCoreNetworkChangeSetRequest AWS API Documentation
    #
    class GetCoreNetworkChangeSetRequest < Struct.new(
      :core_network_id,
      :policy_version_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] core_network_changes
    #   Describes a core network changes.
    #   @return [Array<Types::CoreNetworkChange>]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetCoreNetworkChangeSetResponse AWS API Documentation
    #
    class GetCoreNetworkChangeSetResponse < Struct.new(
      :core_network_changes,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] core_network_id
    #   The ID of a core network.
    #   @return [String]
    #
    # @!attribute [rw] policy_version_id
    #   The ID of a core network policy version.
    #   @return [Integer]
    #
    # @!attribute [rw] alias
    #   The alias of a core network policy
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetCoreNetworkPolicyRequest AWS API Documentation
    #
    class GetCoreNetworkPolicyRequest < Struct.new(
      :core_network_id,
      :policy_version_id,
      :alias)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] core_network_policy
    #   The details about a core network policy.
    #   @return [Types::CoreNetworkPolicy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetCoreNetworkPolicyResponse AWS API Documentation
    #
    class GetCoreNetworkPolicyResponse < Struct.new(
      :core_network_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] core_network_id
    #   The ID of a core network.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetCoreNetworkRequest AWS API Documentation
    #
    class GetCoreNetworkRequest < Struct.new(
      :core_network_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] core_network
    #   Details about a core network.
    #   @return [Types::CoreNetwork]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetCoreNetworkResponse AWS API Documentation
    #
    class GetCoreNetworkResponse < Struct.new(
      :core_network)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] global_network_id
    #   The ID of the global network.
    #   @return [String]
    #
    # @!attribute [rw] customer_gateway_arns
    #   One or more customer gateway Amazon Resource Names (ARNs). The
    #   maximum is 10.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetCustomerGatewayAssociationsRequest AWS API Documentation
    #
    class GetCustomerGatewayAssociationsRequest < Struct.new(
      :global_network_id,
      :customer_gateway_arns,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] customer_gateway_associations
    #   The customer gateway associations.
    #   @return [Array<Types::CustomerGatewayAssociation>]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetCustomerGatewayAssociationsResponse AWS API Documentation
    #
    class GetCustomerGatewayAssociationsResponse < Struct.new(
      :customer_gateway_associations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] global_network_id
    #   The ID of the global network.
    #   @return [String]
    #
    # @!attribute [rw] device_ids
    #   One or more device IDs. The maximum is 10.
    #   @return [Array<String>]
    #
    # @!attribute [rw] site_id
    #   The ID of the site.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetDevicesRequest AWS API Documentation
    #
    class GetDevicesRequest < Struct.new(
      :global_network_id,
      :device_ids,
      :site_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] devices
    #   The devices.
    #   @return [Array<Types::Device>]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetDevicesResponse AWS API Documentation
    #
    class GetDevicesResponse < Struct.new(
      :devices,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] global_network_id
    #   The ID of the global network.
    #   @return [String]
    #
    # @!attribute [rw] device_id
    #   The ID of the device.
    #   @return [String]
    #
    # @!attribute [rw] link_id
    #   The ID of the link.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetLinkAssociationsRequest AWS API Documentation
    #
    class GetLinkAssociationsRequest < Struct.new(
      :global_network_id,
      :device_id,
      :link_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] link_associations
    #   The link associations.
    #   @return [Array<Types::LinkAssociation>]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetLinkAssociationsResponse AWS API Documentation
    #
    class GetLinkAssociationsResponse < Struct.new(
      :link_associations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] global_network_id
    #   The ID of the global network.
    #   @return [String]
    #
    # @!attribute [rw] link_ids
    #   One or more link IDs. The maximum is 10.
    #   @return [Array<String>]
    #
    # @!attribute [rw] site_id
    #   The ID of the site.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The link type.
    #   @return [String]
    #
    # @!attribute [rw] provider
    #   The link provider.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetLinksRequest AWS API Documentation
    #
    class GetLinksRequest < Struct.new(
      :global_network_id,
      :link_ids,
      :site_id,
      :type,
      :provider,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] links
    #   The links.
    #   @return [Array<Types::Link>]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetLinksResponse AWS API Documentation
    #
    class GetLinksResponse < Struct.new(
      :links,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] global_network_id
    #   The ID of the global network.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type.
    #
    #   The following are the supported resource types for Direct Connect:
    #
    #   * `dxcon`
    #
    #   * `dx-gateway`
    #
    #   * `dx-vif`
    #
    #   The following are the supported resource types for Network Manager:
    #
    #   * `connection`
    #
    #   * `device`
    #
    #   * `link`
    #
    #   * `site`
    #
    #   The following are the supported resource types for Amazon VPC:
    #
    #   * `customer-gateway`
    #
    #   * `transit-gateway`
    #
    #   * `transit-gateway-attachment`
    #
    #   * `transit-gateway-connect-peer`
    #
    #   * `transit-gateway-route-table`
    #
    #   * `vpn-connection`
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetNetworkResourceCountsRequest AWS API Documentation
    #
    class GetNetworkResourceCountsRequest < Struct.new(
      :global_network_id,
      :resource_type,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] network_resource_counts
    #   The count of resources.
    #   @return [Array<Types::NetworkResourceCount>]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetNetworkResourceCountsResponse AWS API Documentation
    #
    class GetNetworkResourceCountsResponse < Struct.new(
      :network_resource_counts,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] global_network_id
    #   The ID of the global network.
    #   @return [String]
    #
    # @!attribute [rw] core_network_id
    #   The ID of a core network.
    #   @return [String]
    #
    # @!attribute [rw] registered_gateway_arn
    #   The ARN of the registered gateway.
    #   @return [String]
    #
    # @!attribute [rw] aws_region
    #   The Amazon Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type.
    #
    #   The following are the supported resource types for Direct Connect:
    #
    #   * `dxcon`
    #
    #   * `dx-gateway`
    #
    #   * `dx-vif`
    #
    #   The following are the supported resource types for Network Manager:
    #
    #   * `connection`
    #
    #   * `device`
    #
    #   * `link`
    #
    #   * `site`
    #
    #   The following are the supported resource types for Amazon VPC:
    #
    #   * `customer-gateway`
    #
    #   * `transit-gateway`
    #
    #   * `transit-gateway-attachment`
    #
    #   * `transit-gateway-connect-peer`
    #
    #   * `transit-gateway-route-table`
    #
    #   * `vpn-connection`
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetNetworkResourceRelationshipsRequest AWS API Documentation
    #
    class GetNetworkResourceRelationshipsRequest < Struct.new(
      :global_network_id,
      :core_network_id,
      :registered_gateway_arn,
      :aws_region,
      :account_id,
      :resource_type,
      :resource_arn,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] relationships
    #   The resource relationships.
    #   @return [Array<Types::Relationship>]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetNetworkResourceRelationshipsResponse AWS API Documentation
    #
    class GetNetworkResourceRelationshipsResponse < Struct.new(
      :relationships,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] global_network_id
    #   The ID of the global network.
    #   @return [String]
    #
    # @!attribute [rw] core_network_id
    #   The ID of a core network.
    #   @return [String]
    #
    # @!attribute [rw] registered_gateway_arn
    #   The ARN of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] aws_region
    #   The Amazon Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type.
    #
    #   The following are the supported resource types for Direct Connect:
    #
    #   * `dxcon` - The definition model is [Connection][1].
    #
    #   * `dx-gateway` - The definition model is [DirectConnectGateway][2].
    #
    #   * `dx-vif` - The definition model is [VirtualInterface][3].
    #
    #   The following are the supported resource types for Network Manager:
    #
    #   * `connection` - The definition model is [Connection][4].
    #
    #   * `device` - The definition model is [Device][5].
    #
    #   * `link` - The definition model is [Link][6].
    #
    #   * `site` - The definition model is [Site][7].
    #
    #   The following are the supported resource types for Amazon VPC:
    #
    #   * `customer-gateway` - The definition model is [CustomerGateway][8].
    #
    #   * `transit-gateway` - The definition model is [TransitGateway][9].
    #
    #   * `transit-gateway-attachment` - The definition model is
    #     [TransitGatewayAttachment][10].
    #
    #   * `transit-gateway-connect-peer` - The definition model is
    #     [TransitGatewayConnectPeer][11].
    #
    #   * `transit-gateway-route-table` - The definition model is
    #     [TransitGatewayRouteTable][12].
    #
    #   * `vpn-connection` - The definition model is [VpnConnection][13].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/directconnect/latest/APIReference/API_Connection.html
    #   [2]: https://docs.aws.amazon.com/directconnect/latest/APIReference/API_DirectConnectGateway.html
    #   [3]: https://docs.aws.amazon.com/directconnect/latest/APIReference/API_VirtualInterface.html
    #   [4]: https://docs.aws.amazon.com/networkmanager/latest/APIReference/API_Connection.html
    #   [5]: https://docs.aws.amazon.com/networkmanager/latest/APIReference/API_Device.html
    #   [6]: https://docs.aws.amazon.com/networkmanager/latest/APIReference/API_Link.html
    #   [7]: https://docs.aws.amazon.com/networkmanager/latest/APIReference/API_Site.html
    #   [8]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CustomerGateway.html
    #   [9]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_TransitGateway.html
    #   [10]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_TransitGatewayAttachment.html
    #   [11]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_TransitGatewayConnectPeer.html
    #   [12]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_TransitGatewayRouteTable.html
    #   [13]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_VpnConnection.html
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the resource.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetNetworkResourcesRequest AWS API Documentation
    #
    class GetNetworkResourcesRequest < Struct.new(
      :global_network_id,
      :core_network_id,
      :registered_gateway_arn,
      :aws_region,
      :account_id,
      :resource_type,
      :resource_arn,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] network_resources
    #   The network resources.
    #   @return [Array<Types::NetworkResource>]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetNetworkResourcesResponse AWS API Documentation
    #
    class GetNetworkResourcesResponse < Struct.new(
      :network_resources,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] global_network_id
    #   The ID of the global network.
    #   @return [String]
    #
    # @!attribute [rw] route_table_identifier
    #   The ID of the route table.
    #   @return [Types::RouteTableIdentifier]
    #
    # @!attribute [rw] exact_cidr_matches
    #   An exact CIDR block.
    #   @return [Array<String>]
    #
    # @!attribute [rw] longest_prefix_matches
    #   The most specific route that matches the traffic (longest prefix
    #   match).
    #   @return [Array<String>]
    #
    # @!attribute [rw] subnet_of_matches
    #   The routes with a subnet that match the specified CIDR filter.
    #   @return [Array<String>]
    #
    # @!attribute [rw] supernet_of_matches
    #   The routes with a CIDR that encompasses the CIDR filter. Example: If
    #   you specify 10.0.1.0/30, then the result returns 10.0.1.0/29.
    #   @return [Array<String>]
    #
    # @!attribute [rw] prefix_list_ids
    #   The IDs of the prefix lists.
    #   @return [Array<String>]
    #
    # @!attribute [rw] states
    #   The route states.
    #   @return [Array<String>]
    #
    # @!attribute [rw] types
    #   The route types.
    #   @return [Array<String>]
    #
    # @!attribute [rw] destination_filters
    #   Filter by route table destination. Possible Values:
    #   TRANSIT\_GATEWAY\_ATTACHMENT\_ID, RESOURCE\_ID, or RESOURCE\_TYPE.
    #   @return [Hash<String,Array<String>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetNetworkRoutesRequest AWS API Documentation
    #
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
      :destination_filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] route_table_arn
    #   The ARN of the route table.
    #   @return [String]
    #
    # @!attribute [rw] core_network_segment_edge
    #   Describes a core network segment edge.
    #   @return [Types::CoreNetworkSegmentEdgeIdentifier]
    #
    # @!attribute [rw] route_table_type
    #   The route table type.
    #   @return [String]
    #
    # @!attribute [rw] route_table_timestamp
    #   The route table creation time.
    #   @return [Time]
    #
    # @!attribute [rw] network_routes
    #   The network routes.
    #   @return [Array<Types::NetworkRoute>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetNetworkRoutesResponse AWS API Documentation
    #
    class GetNetworkRoutesResponse < Struct.new(
      :route_table_arn,
      :core_network_segment_edge,
      :route_table_type,
      :route_table_timestamp,
      :network_routes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] global_network_id
    #   The ID of the global network.
    #   @return [String]
    #
    # @!attribute [rw] core_network_id
    #   The ID of a core network.
    #   @return [String]
    #
    # @!attribute [rw] registered_gateway_arn
    #   The ARN of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] aws_region
    #   The Amazon Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type.
    #
    #   The following are the supported resource types for Direct Connect:
    #
    #   * `dxcon`
    #
    #   * `dx-gateway`
    #
    #   * `dx-vif`
    #
    #   The following are the supported resource types for Network Manager:
    #
    #   * `connection`
    #
    #   * `device`
    #
    #   * `link`
    #
    #   * `site`
    #
    #   The following are the supported resource types for Amazon VPC:
    #
    #   * `customer-gateway`
    #
    #   * `transit-gateway`
    #
    #   * `transit-gateway-attachment`
    #
    #   * `transit-gateway-connect-peer`
    #
    #   * `transit-gateway-route-table`
    #
    #   * `vpn-connection`
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the resource.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetNetworkTelemetryRequest AWS API Documentation
    #
    class GetNetworkTelemetryRequest < Struct.new(
      :global_network_id,
      :core_network_id,
      :registered_gateway_arn,
      :aws_region,
      :account_id,
      :resource_type,
      :resource_arn,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] network_telemetry
    #   The network telemetry.
    #   @return [Array<Types::NetworkTelemetry>]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetNetworkTelemetryResponse AWS API Documentation
    #
    class GetNetworkTelemetryResponse < Struct.new(
      :network_telemetry,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetResourcePolicyRequest AWS API Documentation
    #
    class GetResourcePolicyRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_document
    #   The resource policy document.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetResourcePolicyResponse AWS API Documentation
    #
    class GetResourcePolicyResponse < Struct.new(
      :policy_document)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] global_network_id
    #   The ID of the global network.
    #   @return [String]
    #
    # @!attribute [rw] route_analysis_id
    #   The ID of the route analysis.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetRouteAnalysisRequest AWS API Documentation
    #
    class GetRouteAnalysisRequest < Struct.new(
      :global_network_id,
      :route_analysis_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] route_analysis
    #   The route analysis.
    #   @return [Types::RouteAnalysis]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetRouteAnalysisResponse AWS API Documentation
    #
    class GetRouteAnalysisResponse < Struct.new(
      :route_analysis)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] attachment_id
    #   The ID of the attachment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetSiteToSiteVpnAttachmentRequest AWS API Documentation
    #
    class GetSiteToSiteVpnAttachmentRequest < Struct.new(
      :attachment_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] site_to_site_vpn_attachment
    #   Describes the site-to-site attachment.
    #   @return [Types::SiteToSiteVpnAttachment]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetSiteToSiteVpnAttachmentResponse AWS API Documentation
    #
    class GetSiteToSiteVpnAttachmentResponse < Struct.new(
      :site_to_site_vpn_attachment)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] global_network_id
    #   The ID of the global network.
    #   @return [String]
    #
    # @!attribute [rw] site_ids
    #   One or more site IDs. The maximum is 10.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetSitesRequest AWS API Documentation
    #
    class GetSitesRequest < Struct.new(
      :global_network_id,
      :site_ids,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sites
    #   The sites.
    #   @return [Array<Types::Site>]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetSitesResponse AWS API Documentation
    #
    class GetSitesResponse < Struct.new(
      :sites,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] global_network_id
    #   The ID of the global network.
    #   @return [String]
    #
    # @!attribute [rw] transit_gateway_connect_peer_arns
    #   One or more transit gateway Connect peer Amazon Resource Names
    #   (ARNs).
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetTransitGatewayConnectPeerAssociationsRequest AWS API Documentation
    #
    class GetTransitGatewayConnectPeerAssociationsRequest < Struct.new(
      :global_network_id,
      :transit_gateway_connect_peer_arns,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] transit_gateway_connect_peer_associations
    #   Information about the transit gateway Connect peer associations.
    #   @return [Array<Types::TransitGatewayConnectPeerAssociation>]
    #
    # @!attribute [rw] next_token
    #   The token to use for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetTransitGatewayConnectPeerAssociationsResponse AWS API Documentation
    #
    class GetTransitGatewayConnectPeerAssociationsResponse < Struct.new(
      :transit_gateway_connect_peer_associations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] peering_id
    #   The ID of the peering request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetTransitGatewayPeeringRequest AWS API Documentation
    #
    class GetTransitGatewayPeeringRequest < Struct.new(
      :peering_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] transit_gateway_peering
    #   Returns information about a transit gateway peering.
    #   @return [Types::TransitGatewayPeering]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetTransitGatewayPeeringResponse AWS API Documentation
    #
    class GetTransitGatewayPeeringResponse < Struct.new(
      :transit_gateway_peering)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] global_network_id
    #   The ID of the global network.
    #   @return [String]
    #
    # @!attribute [rw] transit_gateway_arns
    #   The Amazon Resource Names (ARNs) of one or more transit gateways.
    #   The maximum is 10.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetTransitGatewayRegistrationsRequest AWS API Documentation
    #
    class GetTransitGatewayRegistrationsRequest < Struct.new(
      :global_network_id,
      :transit_gateway_arns,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] transit_gateway_registrations
    #   The transit gateway registrations.
    #   @return [Array<Types::TransitGatewayRegistration>]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetTransitGatewayRegistrationsResponse AWS API Documentation
    #
    class GetTransitGatewayRegistrationsResponse < Struct.new(
      :transit_gateway_registrations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] attachment_id
    #   The ID of the transit gateway route table attachment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetTransitGatewayRouteTableAttachmentRequest AWS API Documentation
    #
    class GetTransitGatewayRouteTableAttachmentRequest < Struct.new(
      :attachment_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] transit_gateway_route_table_attachment
    #   Returns information about the transit gateway route table
    #   attachment.
    #   @return [Types::TransitGatewayRouteTableAttachment]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetTransitGatewayRouteTableAttachmentResponse AWS API Documentation
    #
    class GetTransitGatewayRouteTableAttachmentResponse < Struct.new(
      :transit_gateway_route_table_attachment)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] attachment_id
    #   The ID of the attachment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetVpcAttachmentRequest AWS API Documentation
    #
    class GetVpcAttachmentRequest < Struct.new(
      :attachment_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vpc_attachment
    #   Returns details about a VPC attachment.
    #   @return [Types::VpcAttachment]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetVpcAttachmentResponse AWS API Documentation
    #
    class GetVpcAttachmentResponse < Struct.new(
      :vpc_attachment)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a global network. This is a single private network acting as
    # a high-level container for your network objects, including an Amazon
    # Web Services-managed Core Network.
    #
    # @!attribute [rw] global_network_id
    #   The ID of the global network.
    #   @return [String]
    #
    # @!attribute [rw] global_network_arn
    #   The Amazon Resource Name (ARN) of the global network.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the global network.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time that the global network was created.
    #   @return [Time]
    #
    # @!attribute [rw] state
    #   The state of the global network.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags for the global network.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GlobalNetwork AWS API Documentation
    #
    class GlobalNetwork < Struct.new(
      :global_network_id,
      :global_network_arn,
      :description,
      :created_at,
      :state,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request has failed due to an internal error.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   Indicates when to retry the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a link.
    #
    # @!attribute [rw] link_id
    #   The ID of the link.
    #   @return [String]
    #
    # @!attribute [rw] link_arn
    #   The Amazon Resource Name (ARN) of the link.
    #   @return [String]
    #
    # @!attribute [rw] global_network_id
    #   The ID of the global network.
    #   @return [String]
    #
    # @!attribute [rw] site_id
    #   The ID of the site.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the link.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the link.
    #   @return [String]
    #
    # @!attribute [rw] bandwidth
    #   The bandwidth for the link.
    #   @return [Types::Bandwidth]
    #
    # @!attribute [rw] provider
    #   The provider of the link.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time that the link was created.
    #   @return [Time]
    #
    # @!attribute [rw] state
    #   The state of the link.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags for the link.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/Link AWS API Documentation
    #
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
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the association between a device and a link.
    #
    # @!attribute [rw] global_network_id
    #   The ID of the global network.
    #   @return [String]
    #
    # @!attribute [rw] device_id
    #   The device ID for the link association.
    #   @return [String]
    #
    # @!attribute [rw] link_id
    #   The ID of the link.
    #   @return [String]
    #
    # @!attribute [rw] link_association_state
    #   The state of the association.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/LinkAssociation AWS API Documentation
    #
    class LinkAssociation < Struct.new(
      :global_network_id,
      :device_id,
      :link_id,
      :link_association_state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] core_network_id
    #   The ID of a core network.
    #   @return [String]
    #
    # @!attribute [rw] attachment_type
    #   The type of attachment.
    #   @return [String]
    #
    # @!attribute [rw] edge_location
    #   The Region where the edge is located.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the attachment.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/ListAttachmentsRequest AWS API Documentation
    #
    class ListAttachmentsRequest < Struct.new(
      :core_network_id,
      :attachment_type,
      :edge_location,
      :state,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] attachments
    #   Describes the list of attachments.
    #   @return [Array<Types::Attachment>]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/ListAttachmentsResponse AWS API Documentation
    #
    class ListAttachmentsResponse < Struct.new(
      :attachments,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] core_network_id
    #   The ID of a core network.
    #   @return [String]
    #
    # @!attribute [rw] connect_attachment_id
    #   The ID of the attachment.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/ListConnectPeersRequest AWS API Documentation
    #
    class ListConnectPeersRequest < Struct.new(
      :core_network_id,
      :connect_attachment_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connect_peers
    #   Describes the Connect peers.
    #   @return [Array<Types::ConnectPeerSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/ListConnectPeersResponse AWS API Documentation
    #
    class ListConnectPeersResponse < Struct.new(
      :connect_peers,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] core_network_id
    #   The ID of a core network.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/ListCoreNetworkPolicyVersionsRequest AWS API Documentation
    #
    class ListCoreNetworkPolicyVersionsRequest < Struct.new(
      :core_network_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] core_network_policy_versions
    #   Describes core network policy versions.
    #   @return [Array<Types::CoreNetworkPolicyVersion>]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/ListCoreNetworkPolicyVersionsResponse AWS API Documentation
    #
    class ListCoreNetworkPolicyVersionsResponse < Struct.new(
      :core_network_policy_versions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/ListCoreNetworksRequest AWS API Documentation
    #
    class ListCoreNetworksRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] core_networks
    #   Describes the list of core networks.
    #   @return [Array<Types::CoreNetworkSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/ListCoreNetworksResponse AWS API Documentation
    #
    class ListCoreNetworksResponse < Struct.new(
      :core_networks,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/ListOrganizationServiceAccessStatusRequest AWS API Documentation
    #
    class ListOrganizationServiceAccessStatusRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] organization_status
    #   Displays the status of an Amazon Web Services Organization.
    #   @return [Types::OrganizationStatus]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/ListOrganizationServiceAccessStatusResponse AWS API Documentation
    #
    class ListOrganizationServiceAccessStatusResponse < Struct.new(
      :organization_status,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] core_network_id
    #   The ID of a core network.
    #   @return [String]
    #
    # @!attribute [rw] peering_type
    #   Returns a list of a peering requests.
    #   @return [String]
    #
    # @!attribute [rw] edge_location
    #   Returns a list edge locations for the
    #   @return [String]
    #
    # @!attribute [rw] state
    #   Returns a list of the peering request states.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/ListPeeringsRequest AWS API Documentation
    #
    class ListPeeringsRequest < Struct.new(
      :core_network_id,
      :peering_type,
      :edge_location,
      :state,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] peerings
    #   Lists the transit gateway peerings for the `ListPeerings` request.
    #   @return [Array<Types::Peering>]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/ListPeeringsResponse AWS API Documentation
    #
    class ListPeeringsResponse < Struct.new(
      :peerings,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tag_list
    #   The list of tags.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tag_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a location.
    #
    # @!attribute [rw] address
    #   The physical address.
    #   @return [String]
    #
    # @!attribute [rw] latitude
    #   The latitude.
    #   @return [String]
    #
    # @!attribute [rw] longitude
    #   The longitude.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/Location AWS API Documentation
    #
    class Location < Struct.new(
      :address,
      :latitude,
      :longitude)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a network resource.
    #
    # @!attribute [rw] registered_gateway_arn
    #   The ARN of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] core_network_id
    #   The ID of a core network.
    #   @return [String]
    #
    # @!attribute [rw] aws_region
    #   The Amazon Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type.
    #
    #   The following are the supported resource types for Direct Connect:
    #
    #   * `dxcon`
    #
    #   * `dx-gateway`
    #
    #   * `dx-vif`
    #
    #   The following are the supported resource types for Network Manager:
    #
    #   * `connection`
    #
    #   * `device`
    #
    #   * `link`
    #
    #   * `site`
    #
    #   The following are the supported resource types for Amazon VPC:
    #
    #   * `customer-gateway`
    #
    #   * `transit-gateway`
    #
    #   * `transit-gateway-attachment`
    #
    #   * `transit-gateway-connect-peer`
    #
    #   * `transit-gateway-route-table`
    #
    #   * `vpn-connection`
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the resource.
    #   @return [String]
    #
    # @!attribute [rw] definition
    #   Information about the resource, in JSON format. Network Manager gets
    #   this information by describing the resource using its Describe API
    #   call.
    #   @return [String]
    #
    # @!attribute [rw] definition_timestamp
    #   The time that the resource definition was retrieved.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The tags.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] metadata
    #   The resource metadata.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/NetworkResource AWS API Documentation
    #
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
      :metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a resource count.
    #
    # @!attribute [rw] resource_type
    #   The resource type.
    #   @return [String]
    #
    # @!attribute [rw] count
    #   The resource count.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/NetworkResourceCount AWS API Documentation
    #
    class NetworkResourceCount < Struct.new(
      :resource_type,
      :count)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a network resource.
    #
    # @!attribute [rw] registered_gateway_arn
    #   The ARN of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type.
    #   @return [String]
    #
    # @!attribute [rw] definition
    #   Information about the resource, in JSON format. Network Manager gets
    #   this information by describing the resource using its Describe API
    #   call.
    #   @return [String]
    #
    # @!attribute [rw] name_tag
    #   The value for the Name tag.
    #   @return [String]
    #
    # @!attribute [rw] is_middlebox
    #   Indicates whether this is a middlebox appliance.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/NetworkResourceSummary AWS API Documentation
    #
    class NetworkResourceSummary < Struct.new(
      :registered_gateway_arn,
      :resource_arn,
      :resource_type,
      :definition,
      :name_tag,
      :is_middlebox)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a network route.
    #
    # @!attribute [rw] destination_cidr_block
    #   A unique identifier for the route, such as a CIDR block.
    #   @return [String]
    #
    # @!attribute [rw] destinations
    #   The destinations.
    #   @return [Array<Types::NetworkRouteDestination>]
    #
    # @!attribute [rw] prefix_list_id
    #   The ID of the prefix list.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The route state. The possible values are `active` and `blackhole`.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The route type. The possible values are `propagated` and `static`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/NetworkRoute AWS API Documentation
    #
    class NetworkRoute < Struct.new(
      :destination_cidr_block,
      :destinations,
      :prefix_list_id,
      :state,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the destination of a network route.
    #
    # @!attribute [rw] core_network_attachment_id
    #   The ID of a core network attachment.
    #   @return [String]
    #
    # @!attribute [rw] transit_gateway_attachment_id
    #   The ID of the transit gateway attachment.
    #   @return [String]
    #
    # @!attribute [rw] segment_name
    #   The name of the segment.
    #   @return [String]
    #
    # @!attribute [rw] edge_location
    #   The edge location for the network destination.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/NetworkRouteDestination AWS API Documentation
    #
    class NetworkRouteDestination < Struct.new(
      :core_network_attachment_id,
      :transit_gateway_attachment_id,
      :segment_name,
      :edge_location,
      :resource_type,
      :resource_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the telemetry information for a resource.
    #
    # @!attribute [rw] registered_gateway_arn
    #   The ARN of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] core_network_id
    #   The ID of a core network.
    #   @return [String]
    #
    # @!attribute [rw] aws_region
    #   The Amazon Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the resource.
    #   @return [String]
    #
    # @!attribute [rw] address
    #   The address.
    #   @return [String]
    #
    # @!attribute [rw] health
    #   The connection health.
    #   @return [Types::ConnectionHealth]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/NetworkTelemetry AWS API Documentation
    #
    class NetworkTelemetry < Struct.new(
      :registered_gateway_arn,
      :core_network_id,
      :aws_region,
      :account_id,
      :resource_type,
      :resource_id,
      :resource_arn,
      :address,
      :health)
      SENSITIVE = []
      include Aws::Structure
    end

    # The status of an Amazon Web Services Organization and the accounts
    # within that organization.
    #
    # @!attribute [rw] organization_id
    #   The ID of an Amazon Web Services Organization.
    #   @return [String]
    #
    # @!attribute [rw] organization_aws_service_access_status
    #   The status of the organization's AWS service access. This will be
    #   `ENABLED` or `DISABLED`.
    #   @return [String]
    #
    # @!attribute [rw] slr_deployment_status
    #   The status of the SLR deployment for the account. This will be
    #   either `SUCCEEDED` or `IN_PROGRESS`.
    #   @return [String]
    #
    # @!attribute [rw] account_status_list
    #   The current service-linked role (SLR) deployment status for an
    #   Amazon Web Services Organization's accounts. This will be either
    #   `SUCCEEDED` or `IN_PROGRESS`.
    #   @return [Array<Types::AccountStatus>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/OrganizationStatus AWS API Documentation
    #
    class OrganizationStatus < Struct.new(
      :organization_id,
      :organization_aws_service_access_status,
      :slr_deployment_status,
      :account_status_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a path component.
    #
    # @!attribute [rw] sequence
    #   The sequence number in the path. The destination is 0.
    #   @return [Integer]
    #
    # @!attribute [rw] resource
    #   The resource.
    #   @return [Types::NetworkResourceSummary]
    #
    # @!attribute [rw] destination_cidr_block
    #   The destination CIDR block in the route table.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/PathComponent AWS API Documentation
    #
    class PathComponent < Struct.new(
      :sequence,
      :resource,
      :destination_cidr_block)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a peering connection.
    #
    # @!attribute [rw] core_network_id
    #   The ID of the core network for the peering request.
    #   @return [String]
    #
    # @!attribute [rw] core_network_arn
    #   The ARN of a core network.
    #   @return [String]
    #
    # @!attribute [rw] peering_id
    #   The ID of the peering attachment.
    #   @return [String]
    #
    # @!attribute [rw] owner_account_id
    #   The ID of the account owner.
    #   @return [String]
    #
    # @!attribute [rw] peering_type
    #   The type of peering. This will be `TRANSIT_GATEWAY`.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state of the peering connection.
    #   @return [String]
    #
    # @!attribute [rw] edge_location
    #   The edge location for the peer.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The resource ARN of the peer.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The list of key-value tags associated with the peering.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the attachment peer was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/Peering AWS API Documentation
    #
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
      :created_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a proposed segment change. In some cases, the segment change
    # must first be evaluated and accepted.
    #
    # @!attribute [rw] tags
    #   The list of key-value tags that changed for the segment.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] attachment_policy_rule_number
    #   The rule number in the policy document that applies to this change.
    #   @return [Integer]
    #
    # @!attribute [rw] segment_name
    #   The name of the segment to change.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/ProposedSegmentChange AWS API Documentation
    #
    class ProposedSegmentChange < Struct.new(
      :tags,
      :attachment_policy_rule_number,
      :segment_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] core_network_id
    #   The ID of a core network.
    #   @return [String]
    #
    # @!attribute [rw] policy_document
    #   The policy document.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   a core network policy description.
    #   @return [String]
    #
    # @!attribute [rw] latest_version_id
    #   The ID of a core network policy.
    #   @return [Integer]
    #
    # @!attribute [rw] client_token
    #   The client token associated with the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/PutCoreNetworkPolicyRequest AWS API Documentation
    #
    class PutCoreNetworkPolicyRequest < Struct.new(
      :core_network_id,
      :policy_document,
      :description,
      :latest_version_id,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] core_network_policy
    #   Describes the changed core network policy.
    #   @return [Types::CoreNetworkPolicy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/PutCoreNetworkPolicyResponse AWS API Documentation
    #
    class PutCoreNetworkPolicyResponse < Struct.new(
      :core_network_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_document
    #   The JSON resource policy document.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the resource policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/PutResourcePolicyRequest AWS API Documentation
    #
    class PutResourcePolicyRequest < Struct.new(
      :policy_document,
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/PutResourcePolicyResponse AWS API Documentation
    #
    class PutResourcePolicyResponse < Aws::EmptyStructure; end

    # @!attribute [rw] global_network_id
    #   The ID of the global network.
    #   @return [String]
    #
    # @!attribute [rw] transit_gateway_arn
    #   The Amazon Resource Name (ARN) of the transit gateway.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/RegisterTransitGatewayRequest AWS API Documentation
    #
    class RegisterTransitGatewayRequest < Struct.new(
      :global_network_id,
      :transit_gateway_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] transit_gateway_registration
    #   Information about the transit gateway registration.
    #   @return [Types::TransitGatewayRegistration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/RegisterTransitGatewayResponse AWS API Documentation
    #
    class RegisterTransitGatewayResponse < Struct.new(
      :transit_gateway_registration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] attachment_id
    #   The ID of the attachment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/RejectAttachmentRequest AWS API Documentation
    #
    class RejectAttachmentRequest < Struct.new(
      :attachment_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] attachment
    #   Describes the rejected attachment request.
    #   @return [Types::Attachment]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/RejectAttachmentResponse AWS API Documentation
    #
    class RejectAttachmentResponse < Struct.new(
      :attachment)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a resource relationship.
    #
    # @!attribute [rw] from
    #   The ARN of the resource.
    #   @return [String]
    #
    # @!attribute [rw] to
    #   The ARN of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/Relationship AWS API Documentation
    #
    class Relationship < Struct.new(
      :from,
      :to)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource could not be found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type.
    #   @return [String]
    #
    # @!attribute [rw] context
    #   The specified resource could not be found.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      :context)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] core_network_id
    #   The ID of a core network.
    #   @return [String]
    #
    # @!attribute [rw] policy_version_id
    #   The ID of the policy version to restore.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/RestoreCoreNetworkPolicyVersionRequest AWS API Documentation
    #
    class RestoreCoreNetworkPolicyVersionRequest < Struct.new(
      :core_network_id,
      :policy_version_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] core_network_policy
    #   Describes the restored core network policy.
    #   @return [Types::CoreNetworkPolicy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/RestoreCoreNetworkPolicyVersionResponse AWS API Documentation
    #
    class RestoreCoreNetworkPolicyVersionResponse < Struct.new(
      :core_network_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a route analysis.
    #
    # @!attribute [rw] global_network_id
    #   The ID of the global network.
    #   @return [String]
    #
    # @!attribute [rw] owner_account_id
    #   The ID of the AWS account that created the route analysis.
    #   @return [String]
    #
    # @!attribute [rw] route_analysis_id
    #   The ID of the route analysis.
    #   @return [String]
    #
    # @!attribute [rw] start_timestamp
    #   The time that the analysis started.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the route analysis.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   The source.
    #   @return [Types::RouteAnalysisEndpointOptions]
    #
    # @!attribute [rw] destination
    #   The destination.
    #   @return [Types::RouteAnalysisEndpointOptions]
    #
    # @!attribute [rw] include_return_path
    #   Indicates whether to analyze the return path. The return path is not
    #   analyzed if the forward path analysis does not succeed.
    #   @return [Boolean]
    #
    # @!attribute [rw] use_middleboxes
    #   Indicates whether to include the location of middlebox appliances in
    #   the route analysis.
    #   @return [Boolean]
    #
    # @!attribute [rw] forward_path
    #   The forward path.
    #   @return [Types::RouteAnalysisPath]
    #
    # @!attribute [rw] return_path
    #   The return path.
    #   @return [Types::RouteAnalysisPath]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/RouteAnalysis AWS API Documentation
    #
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
      :return_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the status of an analysis at completion.
    #
    # @!attribute [rw] result_code
    #   The result of the analysis. If the status is `NOT_CONNECTED`, check
    #   the reason code.
    #   @return [String]
    #
    # @!attribute [rw] reason_code
    #   The reason code. Available only if a connection is not found.
    #
    #   * `BLACKHOLE_ROUTE_FOR_DESTINATION_FOUND` - Found a black hole route
    #     with the destination CIDR block.
    #
    #   * `CYCLIC_PATH_DETECTED` - Found the same resource multiple times
    #     while traversing the path.
    #
    #   * `INACTIVE_ROUTE_FOR_DESTINATION_FOUND` - Found an inactive route
    #     with the destination CIDR block.
    #
    #   * `MAX_HOPS_EXCEEDED` - Analysis exceeded 64 hops without finding
    #     the destination.
    #
    #   * `ROUTE_NOT_FOUND` - Cannot find a route table with the destination
    #     CIDR block.
    #
    #   * `TGW_ATTACH_ARN_NO_MATCH` - Found an attachment, but not with the
    #     correct destination ARN.
    #
    #   * `TGW_ATTACH_NOT_FOUND` - Cannot find an attachment.
    #
    #   * `TGW_ATTACH_NOT_IN_TGW` - Found an attachment, but not to the
    #     correct transit gateway.
    #
    #   * `TGW_ATTACH_STABLE_ROUTE_TABLE_NOT_FOUND` - The state of the route
    #     table association is not associated.
    #   @return [String]
    #
    # @!attribute [rw] reason_context
    #   Additional information about the path. Available only if a
    #   connection is not found.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/RouteAnalysisCompletion AWS API Documentation
    #
    class RouteAnalysisCompletion < Struct.new(
      :result_code,
      :reason_code,
      :reason_context)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a source or a destination.
    #
    # @!attribute [rw] transit_gateway_attachment_arn
    #   The ARN of the transit gateway attachment.
    #   @return [String]
    #
    # @!attribute [rw] transit_gateway_arn
    #   The ARN of the transit gateway.
    #   @return [String]
    #
    # @!attribute [rw] ip_address
    #   The IP address.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/RouteAnalysisEndpointOptions AWS API Documentation
    #
    class RouteAnalysisEndpointOptions < Struct.new(
      :transit_gateway_attachment_arn,
      :transit_gateway_arn,
      :ip_address)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a source or a destination.
    #
    # @!attribute [rw] transit_gateway_attachment_arn
    #   The ARN of the transit gateway attachment.
    #   @return [String]
    #
    # @!attribute [rw] ip_address
    #   The IP address.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/RouteAnalysisEndpointOptionsSpecification AWS API Documentation
    #
    class RouteAnalysisEndpointOptionsSpecification < Struct.new(
      :transit_gateway_attachment_arn,
      :ip_address)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a route analysis path.
    #
    # @!attribute [rw] completion_status
    #   The status of the analysis at completion.
    #   @return [Types::RouteAnalysisCompletion]
    #
    # @!attribute [rw] path
    #   The route analysis path.
    #   @return [Array<Types::PathComponent>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/RouteAnalysisPath AWS API Documentation
    #
    class RouteAnalysisPath < Struct.new(
      :completion_status,
      :path)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a route table.
    #
    # @!attribute [rw] transit_gateway_route_table_arn
    #   The ARN of the transit gateway route table.
    #   @return [String]
    #
    # @!attribute [rw] core_network_segment_edge
    #   The segment edge in a core network.
    #   @return [Types::CoreNetworkSegmentEdgeIdentifier]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/RouteTableIdentifier AWS API Documentation
    #
    class RouteTableIdentifier < Struct.new(
      :transit_gateway_route_table_arn,
      :core_network_segment_edge)
      SENSITIVE = []
      include Aws::Structure
    end

    # A service limit was exceeded.
    #
    # @!attribute [rw] message
    #   The error message.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type.
    #   @return [String]
    #
    # @!attribute [rw] limit_code
    #   The limit code.
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   The service code.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      :limit_code,
      :service_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a site.
    #
    # @!attribute [rw] site_id
    #   The ID of the site.
    #   @return [String]
    #
    # @!attribute [rw] site_arn
    #   The Amazon Resource Name (ARN) of the site.
    #   @return [String]
    #
    # @!attribute [rw] global_network_id
    #   The ID of the global network.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the site.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   The location of the site.
    #   @return [Types::Location]
    #
    # @!attribute [rw] created_at
    #   The date and time that the site was created.
    #   @return [Time]
    #
    # @!attribute [rw] state
    #   The state of the site.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags for the site.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/Site AWS API Documentation
    #
    class Site < Struct.new(
      :site_id,
      :site_arn,
      :global_network_id,
      :description,
      :location,
      :created_at,
      :state,
      :tags)
      SENSITIVE = [:location]
      include Aws::Structure
    end

    # Creates a site-to-site VPN attachment.
    #
    # @!attribute [rw] attachment
    #   Provides details about a site-to-site VPN attachment.
    #   @return [Types::Attachment]
    #
    # @!attribute [rw] vpn_connection_arn
    #   The ARN of the site-to-site VPN attachment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/SiteToSiteVpnAttachment AWS API Documentation
    #
    class SiteToSiteVpnAttachment < Struct.new(
      :attachment,
      :vpn_connection_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] action
    #   The action to take for the update request. This can be either
    #   `ENABLE` or `DISABLE`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/StartOrganizationServiceAccessUpdateRequest AWS API Documentation
    #
    class StartOrganizationServiceAccessUpdateRequest < Struct.new(
      :action)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] organization_status
    #   The status of the service access update request for an Amazon Web
    #   Services Organization.
    #   @return [Types::OrganizationStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/StartOrganizationServiceAccessUpdateResponse AWS API Documentation
    #
    class StartOrganizationServiceAccessUpdateResponse < Struct.new(
      :organization_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] global_network_id
    #   The ID of the global network.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   The source from which traffic originates.
    #   @return [Types::RouteAnalysisEndpointOptionsSpecification]
    #
    # @!attribute [rw] destination
    #   The destination.
    #   @return [Types::RouteAnalysisEndpointOptionsSpecification]
    #
    # @!attribute [rw] include_return_path
    #   Indicates whether to analyze the return path. The default is
    #   `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] use_middleboxes
    #   Indicates whether to include the location of middlebox appliances in
    #   the route analysis. The default is `false`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/StartRouteAnalysisRequest AWS API Documentation
    #
    class StartRouteAnalysisRequest < Struct.new(
      :global_network_id,
      :source,
      :destination,
      :include_return_path,
      :use_middleboxes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] route_analysis
    #   The route analysis.
    #   @return [Types::RouteAnalysis]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/StartRouteAnalysisResponse AWS API Documentation
    #
    class StartRouteAnalysisResponse < Struct.new(
      :route_analysis)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a tag.
    #
    # @!attribute [rw] key
    #   The tag key.
    #
    #   Constraints: Maximum length of 128 characters.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The tag value.
    #
    #   Constraints: Maximum length of 256 characters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to apply to the specified resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # The request was denied due to request throttling.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   Indicates when to retry the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a transit gateway Connect peer association.
    #
    # @!attribute [rw] transit_gateway_connect_peer_arn
    #   The Amazon Resource Name (ARN) of the transit gateway Connect peer.
    #   @return [String]
    #
    # @!attribute [rw] global_network_id
    #   The ID of the global network.
    #   @return [String]
    #
    # @!attribute [rw] device_id
    #   The ID of the device.
    #   @return [String]
    #
    # @!attribute [rw] link_id
    #   The ID of the link.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the association.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/TransitGatewayConnectPeerAssociation AWS API Documentation
    #
    class TransitGatewayConnectPeerAssociation < Struct.new(
      :transit_gateway_connect_peer_arn,
      :global_network_id,
      :device_id,
      :link_id,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a transit gateway peering attachment.
    #
    # @!attribute [rw] peering
    #   Describes a transit gateway peer connection.
    #   @return [Types::Peering]
    #
    # @!attribute [rw] transit_gateway_arn
    #   The ARN of the transit gateway.
    #   @return [String]
    #
    # @!attribute [rw] transit_gateway_peering_attachment_id
    #   The ID of the transit gateway peering attachment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/TransitGatewayPeering AWS API Documentation
    #
    class TransitGatewayPeering < Struct.new(
      :peering,
      :transit_gateway_arn,
      :transit_gateway_peering_attachment_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the registration of a transit gateway to a global network.
    #
    # @!attribute [rw] global_network_id
    #   The ID of the global network.
    #   @return [String]
    #
    # @!attribute [rw] transit_gateway_arn
    #   The Amazon Resource Name (ARN) of the transit gateway.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the transit gateway registration.
    #   @return [Types::TransitGatewayRegistrationStateReason]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/TransitGatewayRegistration AWS API Documentation
    #
    class TransitGatewayRegistration < Struct.new(
      :global_network_id,
      :transit_gateway_arn,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the status of a transit gateway registration.
    #
    # @!attribute [rw] code
    #   The code for the state reason.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The message for the state reason.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/TransitGatewayRegistrationStateReason AWS API Documentation
    #
    class TransitGatewayRegistrationStateReason < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a transit gateway route table attachment.
    #
    # @!attribute [rw] attachment
    #   Describes a core network attachment.
    #   @return [Types::Attachment]
    #
    # @!attribute [rw] peering_id
    #   The ID of the peering attachment.
    #   @return [String]
    #
    # @!attribute [rw] transit_gateway_route_table_arn
    #   The ARN of the transit gateway attachment route table. For example,
    #   `"TransitGatewayRouteTableArn":
    #   "arn:aws:ec2:us-west-2:123456789012:transit-gateway-route-table/tgw-rtb-9876543210123456"`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/TransitGatewayRouteTableAttachment AWS API Documentation
    #
    class TransitGatewayRouteTableAttachment < Struct.new(
      :attachment,
      :peering_id,
      :transit_gateway_route_table_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The tag keys to remove from the specified resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] global_network_id
    #   The ID of the global network.
    #   @return [String]
    #
    # @!attribute [rw] connection_id
    #   The ID of the connection.
    #   @return [String]
    #
    # @!attribute [rw] link_id
    #   The ID of the link for the first device in the connection.
    #   @return [String]
    #
    # @!attribute [rw] connected_link_id
    #   The ID of the link for the second device in the connection.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the connection.
    #
    #   Length Constraints: Maximum length of 256 characters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/UpdateConnectionRequest AWS API Documentation
    #
    class UpdateConnectionRequest < Struct.new(
      :global_network_id,
      :connection_id,
      :link_id,
      :connected_link_id,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connection
    #   Information about the connection.
    #   @return [Types::Connection]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/UpdateConnectionResponse AWS API Documentation
    #
    class UpdateConnectionResponse < Struct.new(
      :connection)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] core_network_id
    #   The ID of a core network.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the update.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/UpdateCoreNetworkRequest AWS API Documentation
    #
    class UpdateCoreNetworkRequest < Struct.new(
      :core_network_id,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] core_network
    #   Returns information about a core network update.
    #   @return [Types::CoreNetwork]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/UpdateCoreNetworkResponse AWS API Documentation
    #
    class UpdateCoreNetworkResponse < Struct.new(
      :core_network)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] global_network_id
    #   The ID of the global network.
    #   @return [String]
    #
    # @!attribute [rw] device_id
    #   The ID of the device.
    #   @return [String]
    #
    # @!attribute [rw] aws_location
    #   The Amazon Web Services location of the device, if applicable. For
    #   an on-premises device, you can omit this parameter.
    #   @return [Types::AWSLocation]
    #
    # @!attribute [rw] description
    #   A description of the device.
    #
    #   Constraints: Maximum length of 256 characters.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the device.
    #   @return [String]
    #
    # @!attribute [rw] vendor
    #   The vendor of the device.
    #
    #   Constraints: Maximum length of 128 characters.
    #   @return [String]
    #
    # @!attribute [rw] model
    #   The model of the device.
    #
    #   Constraints: Maximum length of 128 characters.
    #   @return [String]
    #
    # @!attribute [rw] serial_number
    #   The serial number of the device.
    #
    #   Constraints: Maximum length of 128 characters.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   Describes a location.
    #   @return [Types::Location]
    #
    # @!attribute [rw] site_id
    #   The ID of the site.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/UpdateDeviceRequest AWS API Documentation
    #
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
      :site_id)
      SENSITIVE = [:location]
      include Aws::Structure
    end

    # @!attribute [rw] device
    #   Information about the device.
    #   @return [Types::Device]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/UpdateDeviceResponse AWS API Documentation
    #
    class UpdateDeviceResponse < Struct.new(
      :device)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] global_network_id
    #   The ID of your global network.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the global network.
    #
    #   Constraints: Maximum length of 256 characters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/UpdateGlobalNetworkRequest AWS API Documentation
    #
    class UpdateGlobalNetworkRequest < Struct.new(
      :global_network_id,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] global_network
    #   Information about the global network object.
    #   @return [Types::GlobalNetwork]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/UpdateGlobalNetworkResponse AWS API Documentation
    #
    class UpdateGlobalNetworkResponse < Struct.new(
      :global_network)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] global_network_id
    #   The ID of the global network.
    #   @return [String]
    #
    # @!attribute [rw] link_id
    #   The ID of the link.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the link.
    #
    #   Constraints: Maximum length of 256 characters.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the link.
    #
    #   Constraints: Maximum length of 128 characters.
    #   @return [String]
    #
    # @!attribute [rw] bandwidth
    #   The upload and download speed in Mbps.
    #   @return [Types::Bandwidth]
    #
    # @!attribute [rw] provider
    #   The provider of the link.
    #
    #   Constraints: Maximum length of 128 characters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/UpdateLinkRequest AWS API Documentation
    #
    class UpdateLinkRequest < Struct.new(
      :global_network_id,
      :link_id,
      :description,
      :type,
      :bandwidth,
      :provider)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] link
    #   Information about the link.
    #   @return [Types::Link]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/UpdateLinkResponse AWS API Documentation
    #
    class UpdateLinkResponse < Struct.new(
      :link)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] global_network_id
    #   The ID of the global network.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the resource.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   The resource metadata.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/UpdateNetworkResourceMetadataRequest AWS API Documentation
    #
    class UpdateNetworkResourceMetadataRequest < Struct.new(
      :global_network_id,
      :resource_arn,
      :metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   The updated resource metadata.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/UpdateNetworkResourceMetadataResponse AWS API Documentation
    #
    class UpdateNetworkResourceMetadataResponse < Struct.new(
      :resource_arn,
      :metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] global_network_id
    #   The ID of the global network.
    #   @return [String]
    #
    # @!attribute [rw] site_id
    #   The ID of your site.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of your site.
    #
    #   Constraints: Maximum length of 256 characters.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   The site location:
    #
    #   * `Address`: The physical address of the site.
    #
    #   * `Latitude`: The latitude of the site.
    #
    #   * `Longitude`: The longitude of the site.
    #   @return [Types::Location]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/UpdateSiteRequest AWS API Documentation
    #
    class UpdateSiteRequest < Struct.new(
      :global_network_id,
      :site_id,
      :description,
      :location)
      SENSITIVE = [:location]
      include Aws::Structure
    end

    # @!attribute [rw] site
    #   Information about the site.
    #   @return [Types::Site]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/UpdateSiteResponse AWS API Documentation
    #
    class UpdateSiteResponse < Struct.new(
      :site)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] attachment_id
    #   The ID of the attachment.
    #   @return [String]
    #
    # @!attribute [rw] add_subnet_arns
    #   Adds a subnet ARN to the VPC attachment.
    #   @return [Array<String>]
    #
    # @!attribute [rw] remove_subnet_arns
    #   Removes a subnet ARN from the attachment.
    #   @return [Array<String>]
    #
    # @!attribute [rw] options
    #   Additional options for updating the VPC attachment.
    #   @return [Types::VpcOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/UpdateVpcAttachmentRequest AWS API Documentation
    #
    class UpdateVpcAttachmentRequest < Struct.new(
      :attachment_id,
      :add_subnet_arns,
      :remove_subnet_arns,
      :options)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vpc_attachment
    #   Describes the updated VPC attachment.
    #   @return [Types::VpcAttachment]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/UpdateVpcAttachmentResponse AWS API Documentation
    #
    class UpdateVpcAttachmentResponse < Struct.new(
      :vpc_attachment)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input fails to satisfy the constraints.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for the error.
    #   @return [String]
    #
    # @!attribute [rw] fields
    #   The fields that caused the error, if applicable.
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :reason,
      :fields)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a validation exception for a field.
    #
    # @!attribute [rw] name
    #   The name of the field.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The message for the field.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :name,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a VPC attachment.
    #
    # @!attribute [rw] attachment
    #   Provides details about the VPC attachment.
    #   @return [Types::Attachment]
    #
    # @!attribute [rw] subnet_arns
    #   The subnet ARNs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] options
    #   Provides details about the VPC attachment.
    #   @return [Types::VpcOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/VpcAttachment AWS API Documentation
    #
    class VpcAttachment < Struct.new(
      :attachment,
      :subnet_arns,
      :options)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the VPC options.
    #
    # @!attribute [rw] ipv_6_support
    #   Indicates whether IPv6 is supported.
    #   @return [Boolean]
    #
    # @!attribute [rw] appliance_mode_support
    #   Indicates whether appliance mode is supported. If enabled, traffic
    #   flow between a source and destination use the same Availability Zone
    #   for the VPC attachment for the lifetime of that flow. The default
    #   value is `false`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/VpcOptions AWS API Documentation
    #
    class VpcOptions < Struct.new(
      :ipv_6_support,
      :appliance_mode_support)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
