# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::EC2
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::EC2::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::EC2::EndpointParameters`'
      ) do |cfg|
        Aws::EC2::EndpointProvider.new
      end

      # @api private
      class Handler < Seahorse::Client::Handler
        def call(context)
          # If endpoint was discovered, do not resolve or apply the endpoint.
          unless context[:discovered_endpoint]
            params = parameters_for_operation(context)
            endpoint = context.config.endpoint_provider.resolve_endpoint(params)

            context.http_request.endpoint = endpoint.url
            apply_endpoint_headers(context, endpoint.headers)
          end

          context[:endpoint_params] = params
          context[:auth_scheme] =
            Aws::Endpoints.resolve_auth_scheme(context, endpoint)

          @handler.call(context)
        end

        private

        def apply_endpoint_headers(context, headers)
          headers.each do |key, values|
            value = values
              .compact
              .map { |s| Seahorse::Util.escape_header_list_string(s.to_s) }
              .join(',')

            context.http_request.headers[key] = value
          end
        end

        def parameters_for_operation(context)
          case context.operation_name
          when :accept_address_transfer
            Aws::EC2::Endpoints::AcceptAddressTransfer.build(context)
          when :accept_reserved_instances_exchange_quote
            Aws::EC2::Endpoints::AcceptReservedInstancesExchangeQuote.build(context)
          when :accept_transit_gateway_multicast_domain_associations
            Aws::EC2::Endpoints::AcceptTransitGatewayMulticastDomainAssociations.build(context)
          when :accept_transit_gateway_peering_attachment
            Aws::EC2::Endpoints::AcceptTransitGatewayPeeringAttachment.build(context)
          when :accept_transit_gateway_vpc_attachment
            Aws::EC2::Endpoints::AcceptTransitGatewayVpcAttachment.build(context)
          when :accept_vpc_endpoint_connections
            Aws::EC2::Endpoints::AcceptVpcEndpointConnections.build(context)
          when :accept_vpc_peering_connection
            Aws::EC2::Endpoints::AcceptVpcPeeringConnection.build(context)
          when :advertise_byoip_cidr
            Aws::EC2::Endpoints::AdvertiseByoipCidr.build(context)
          when :allocate_address
            Aws::EC2::Endpoints::AllocateAddress.build(context)
          when :allocate_hosts
            Aws::EC2::Endpoints::AllocateHosts.build(context)
          when :allocate_ipam_pool_cidr
            Aws::EC2::Endpoints::AllocateIpamPoolCidr.build(context)
          when :apply_security_groups_to_client_vpn_target_network
            Aws::EC2::Endpoints::ApplySecurityGroupsToClientVpnTargetNetwork.build(context)
          when :assign_ipv_6_addresses
            Aws::EC2::Endpoints::AssignIpv6Addresses.build(context)
          when :assign_private_ip_addresses
            Aws::EC2::Endpoints::AssignPrivateIpAddresses.build(context)
          when :assign_private_nat_gateway_address
            Aws::EC2::Endpoints::AssignPrivateNatGatewayAddress.build(context)
          when :associate_address
            Aws::EC2::Endpoints::AssociateAddress.build(context)
          when :associate_client_vpn_target_network
            Aws::EC2::Endpoints::AssociateClientVpnTargetNetwork.build(context)
          when :associate_dhcp_options
            Aws::EC2::Endpoints::AssociateDhcpOptions.build(context)
          when :associate_enclave_certificate_iam_role
            Aws::EC2::Endpoints::AssociateEnclaveCertificateIamRole.build(context)
          when :associate_iam_instance_profile
            Aws::EC2::Endpoints::AssociateIamInstanceProfile.build(context)
          when :associate_instance_event_window
            Aws::EC2::Endpoints::AssociateInstanceEventWindow.build(context)
          when :associate_ipam_resource_discovery
            Aws::EC2::Endpoints::AssociateIpamResourceDiscovery.build(context)
          when :associate_nat_gateway_address
            Aws::EC2::Endpoints::AssociateNatGatewayAddress.build(context)
          when :associate_route_table
            Aws::EC2::Endpoints::AssociateRouteTable.build(context)
          when :associate_subnet_cidr_block
            Aws::EC2::Endpoints::AssociateSubnetCidrBlock.build(context)
          when :associate_transit_gateway_multicast_domain
            Aws::EC2::Endpoints::AssociateTransitGatewayMulticastDomain.build(context)
          when :associate_transit_gateway_policy_table
            Aws::EC2::Endpoints::AssociateTransitGatewayPolicyTable.build(context)
          when :associate_transit_gateway_route_table
            Aws::EC2::Endpoints::AssociateTransitGatewayRouteTable.build(context)
          when :associate_trunk_interface
            Aws::EC2::Endpoints::AssociateTrunkInterface.build(context)
          when :associate_vpc_cidr_block
            Aws::EC2::Endpoints::AssociateVpcCidrBlock.build(context)
          when :attach_classic_link_vpc
            Aws::EC2::Endpoints::AttachClassicLinkVpc.build(context)
          when :attach_internet_gateway
            Aws::EC2::Endpoints::AttachInternetGateway.build(context)
          when :attach_network_interface
            Aws::EC2::Endpoints::AttachNetworkInterface.build(context)
          when :attach_verified_access_trust_provider
            Aws::EC2::Endpoints::AttachVerifiedAccessTrustProvider.build(context)
          when :attach_volume
            Aws::EC2::Endpoints::AttachVolume.build(context)
          when :attach_vpn_gateway
            Aws::EC2::Endpoints::AttachVpnGateway.build(context)
          when :authorize_client_vpn_ingress
            Aws::EC2::Endpoints::AuthorizeClientVpnIngress.build(context)
          when :authorize_security_group_egress
            Aws::EC2::Endpoints::AuthorizeSecurityGroupEgress.build(context)
          when :authorize_security_group_ingress
            Aws::EC2::Endpoints::AuthorizeSecurityGroupIngress.build(context)
          when :bundle_instance
            Aws::EC2::Endpoints::BundleInstance.build(context)
          when :cancel_bundle_task
            Aws::EC2::Endpoints::CancelBundleTask.build(context)
          when :cancel_capacity_reservation
            Aws::EC2::Endpoints::CancelCapacityReservation.build(context)
          when :cancel_capacity_reservation_fleets
            Aws::EC2::Endpoints::CancelCapacityReservationFleets.build(context)
          when :cancel_conversion_task
            Aws::EC2::Endpoints::CancelConversionTask.build(context)
          when :cancel_export_task
            Aws::EC2::Endpoints::CancelExportTask.build(context)
          when :cancel_image_launch_permission
            Aws::EC2::Endpoints::CancelImageLaunchPermission.build(context)
          when :cancel_import_task
            Aws::EC2::Endpoints::CancelImportTask.build(context)
          when :cancel_reserved_instances_listing
            Aws::EC2::Endpoints::CancelReservedInstancesListing.build(context)
          when :cancel_spot_fleet_requests
            Aws::EC2::Endpoints::CancelSpotFleetRequests.build(context)
          when :cancel_spot_instance_requests
            Aws::EC2::Endpoints::CancelSpotInstanceRequests.build(context)
          when :confirm_product_instance
            Aws::EC2::Endpoints::ConfirmProductInstance.build(context)
          when :copy_fpga_image
            Aws::EC2::Endpoints::CopyFpgaImage.build(context)
          when :copy_image
            Aws::EC2::Endpoints::CopyImage.build(context)
          when :copy_snapshot
            Aws::EC2::Endpoints::CopySnapshot.build(context)
          when :create_capacity_reservation
            Aws::EC2::Endpoints::CreateCapacityReservation.build(context)
          when :create_capacity_reservation_fleet
            Aws::EC2::Endpoints::CreateCapacityReservationFleet.build(context)
          when :create_carrier_gateway
            Aws::EC2::Endpoints::CreateCarrierGateway.build(context)
          when :create_client_vpn_endpoint
            Aws::EC2::Endpoints::CreateClientVpnEndpoint.build(context)
          when :create_client_vpn_route
            Aws::EC2::Endpoints::CreateClientVpnRoute.build(context)
          when :create_coip_cidr
            Aws::EC2::Endpoints::CreateCoipCidr.build(context)
          when :create_coip_pool
            Aws::EC2::Endpoints::CreateCoipPool.build(context)
          when :create_customer_gateway
            Aws::EC2::Endpoints::CreateCustomerGateway.build(context)
          when :create_default_subnet
            Aws::EC2::Endpoints::CreateDefaultSubnet.build(context)
          when :create_default_vpc
            Aws::EC2::Endpoints::CreateDefaultVpc.build(context)
          when :create_dhcp_options
            Aws::EC2::Endpoints::CreateDhcpOptions.build(context)
          when :create_egress_only_internet_gateway
            Aws::EC2::Endpoints::CreateEgressOnlyInternetGateway.build(context)
          when :create_fleet
            Aws::EC2::Endpoints::CreateFleet.build(context)
          when :create_flow_logs
            Aws::EC2::Endpoints::CreateFlowLogs.build(context)
          when :create_fpga_image
            Aws::EC2::Endpoints::CreateFpgaImage.build(context)
          when :create_image
            Aws::EC2::Endpoints::CreateImage.build(context)
          when :create_instance_connect_endpoint
            Aws::EC2::Endpoints::CreateInstanceConnectEndpoint.build(context)
          when :create_instance_event_window
            Aws::EC2::Endpoints::CreateInstanceEventWindow.build(context)
          when :create_instance_export_task
            Aws::EC2::Endpoints::CreateInstanceExportTask.build(context)
          when :create_internet_gateway
            Aws::EC2::Endpoints::CreateInternetGateway.build(context)
          when :create_ipam
            Aws::EC2::Endpoints::CreateIpam.build(context)
          when :create_ipam_pool
            Aws::EC2::Endpoints::CreateIpamPool.build(context)
          when :create_ipam_resource_discovery
            Aws::EC2::Endpoints::CreateIpamResourceDiscovery.build(context)
          when :create_ipam_scope
            Aws::EC2::Endpoints::CreateIpamScope.build(context)
          when :create_key_pair
            Aws::EC2::Endpoints::CreateKeyPair.build(context)
          when :create_launch_template
            Aws::EC2::Endpoints::CreateLaunchTemplate.build(context)
          when :create_launch_template_version
            Aws::EC2::Endpoints::CreateLaunchTemplateVersion.build(context)
          when :create_local_gateway_route
            Aws::EC2::Endpoints::CreateLocalGatewayRoute.build(context)
          when :create_local_gateway_route_table
            Aws::EC2::Endpoints::CreateLocalGatewayRouteTable.build(context)
          when :create_local_gateway_route_table_virtual_interface_group_association
            Aws::EC2::Endpoints::CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociation.build(context)
          when :create_local_gateway_route_table_vpc_association
            Aws::EC2::Endpoints::CreateLocalGatewayRouteTableVpcAssociation.build(context)
          when :create_managed_prefix_list
            Aws::EC2::Endpoints::CreateManagedPrefixList.build(context)
          when :create_nat_gateway
            Aws::EC2::Endpoints::CreateNatGateway.build(context)
          when :create_network_acl
            Aws::EC2::Endpoints::CreateNetworkAcl.build(context)
          when :create_network_acl_entry
            Aws::EC2::Endpoints::CreateNetworkAclEntry.build(context)
          when :create_network_insights_access_scope
            Aws::EC2::Endpoints::CreateNetworkInsightsAccessScope.build(context)
          when :create_network_insights_path
            Aws::EC2::Endpoints::CreateNetworkInsightsPath.build(context)
          when :create_network_interface
            Aws::EC2::Endpoints::CreateNetworkInterface.build(context)
          when :create_network_interface_permission
            Aws::EC2::Endpoints::CreateNetworkInterfacePermission.build(context)
          when :create_placement_group
            Aws::EC2::Endpoints::CreatePlacementGroup.build(context)
          when :create_public_ipv_4_pool
            Aws::EC2::Endpoints::CreatePublicIpv4Pool.build(context)
          when :create_replace_root_volume_task
            Aws::EC2::Endpoints::CreateReplaceRootVolumeTask.build(context)
          when :create_reserved_instances_listing
            Aws::EC2::Endpoints::CreateReservedInstancesListing.build(context)
          when :create_restore_image_task
            Aws::EC2::Endpoints::CreateRestoreImageTask.build(context)
          when :create_route
            Aws::EC2::Endpoints::CreateRoute.build(context)
          when :create_route_table
            Aws::EC2::Endpoints::CreateRouteTable.build(context)
          when :create_security_group
            Aws::EC2::Endpoints::CreateSecurityGroup.build(context)
          when :create_snapshot
            Aws::EC2::Endpoints::CreateSnapshot.build(context)
          when :create_snapshots
            Aws::EC2::Endpoints::CreateSnapshots.build(context)
          when :create_spot_datafeed_subscription
            Aws::EC2::Endpoints::CreateSpotDatafeedSubscription.build(context)
          when :create_store_image_task
            Aws::EC2::Endpoints::CreateStoreImageTask.build(context)
          when :create_subnet
            Aws::EC2::Endpoints::CreateSubnet.build(context)
          when :create_subnet_cidr_reservation
            Aws::EC2::Endpoints::CreateSubnetCidrReservation.build(context)
          when :create_tags
            Aws::EC2::Endpoints::CreateTags.build(context)
          when :create_traffic_mirror_filter
            Aws::EC2::Endpoints::CreateTrafficMirrorFilter.build(context)
          when :create_traffic_mirror_filter_rule
            Aws::EC2::Endpoints::CreateTrafficMirrorFilterRule.build(context)
          when :create_traffic_mirror_session
            Aws::EC2::Endpoints::CreateTrafficMirrorSession.build(context)
          when :create_traffic_mirror_target
            Aws::EC2::Endpoints::CreateTrafficMirrorTarget.build(context)
          when :create_transit_gateway
            Aws::EC2::Endpoints::CreateTransitGateway.build(context)
          when :create_transit_gateway_connect
            Aws::EC2::Endpoints::CreateTransitGatewayConnect.build(context)
          when :create_transit_gateway_connect_peer
            Aws::EC2::Endpoints::CreateTransitGatewayConnectPeer.build(context)
          when :create_transit_gateway_multicast_domain
            Aws::EC2::Endpoints::CreateTransitGatewayMulticastDomain.build(context)
          when :create_transit_gateway_peering_attachment
            Aws::EC2::Endpoints::CreateTransitGatewayPeeringAttachment.build(context)
          when :create_transit_gateway_policy_table
            Aws::EC2::Endpoints::CreateTransitGatewayPolicyTable.build(context)
          when :create_transit_gateway_prefix_list_reference
            Aws::EC2::Endpoints::CreateTransitGatewayPrefixListReference.build(context)
          when :create_transit_gateway_route
            Aws::EC2::Endpoints::CreateTransitGatewayRoute.build(context)
          when :create_transit_gateway_route_table
            Aws::EC2::Endpoints::CreateTransitGatewayRouteTable.build(context)
          when :create_transit_gateway_route_table_announcement
            Aws::EC2::Endpoints::CreateTransitGatewayRouteTableAnnouncement.build(context)
          when :create_transit_gateway_vpc_attachment
            Aws::EC2::Endpoints::CreateTransitGatewayVpcAttachment.build(context)
          when :create_verified_access_endpoint
            Aws::EC2::Endpoints::CreateVerifiedAccessEndpoint.build(context)
          when :create_verified_access_group
            Aws::EC2::Endpoints::CreateVerifiedAccessGroup.build(context)
          when :create_verified_access_instance
            Aws::EC2::Endpoints::CreateVerifiedAccessInstance.build(context)
          when :create_verified_access_trust_provider
            Aws::EC2::Endpoints::CreateVerifiedAccessTrustProvider.build(context)
          when :create_volume
            Aws::EC2::Endpoints::CreateVolume.build(context)
          when :create_vpc
            Aws::EC2::Endpoints::CreateVpc.build(context)
          when :create_vpc_endpoint
            Aws::EC2::Endpoints::CreateVpcEndpoint.build(context)
          when :create_vpc_endpoint_connection_notification
            Aws::EC2::Endpoints::CreateVpcEndpointConnectionNotification.build(context)
          when :create_vpc_endpoint_service_configuration
            Aws::EC2::Endpoints::CreateVpcEndpointServiceConfiguration.build(context)
          when :create_vpc_peering_connection
            Aws::EC2::Endpoints::CreateVpcPeeringConnection.build(context)
          when :create_vpn_connection
            Aws::EC2::Endpoints::CreateVpnConnection.build(context)
          when :create_vpn_connection_route
            Aws::EC2::Endpoints::CreateVpnConnectionRoute.build(context)
          when :create_vpn_gateway
            Aws::EC2::Endpoints::CreateVpnGateway.build(context)
          when :delete_carrier_gateway
            Aws::EC2::Endpoints::DeleteCarrierGateway.build(context)
          when :delete_client_vpn_endpoint
            Aws::EC2::Endpoints::DeleteClientVpnEndpoint.build(context)
          when :delete_client_vpn_route
            Aws::EC2::Endpoints::DeleteClientVpnRoute.build(context)
          when :delete_coip_cidr
            Aws::EC2::Endpoints::DeleteCoipCidr.build(context)
          when :delete_coip_pool
            Aws::EC2::Endpoints::DeleteCoipPool.build(context)
          when :delete_customer_gateway
            Aws::EC2::Endpoints::DeleteCustomerGateway.build(context)
          when :delete_dhcp_options
            Aws::EC2::Endpoints::DeleteDhcpOptions.build(context)
          when :delete_egress_only_internet_gateway
            Aws::EC2::Endpoints::DeleteEgressOnlyInternetGateway.build(context)
          when :delete_fleets
            Aws::EC2::Endpoints::DeleteFleets.build(context)
          when :delete_flow_logs
            Aws::EC2::Endpoints::DeleteFlowLogs.build(context)
          when :delete_fpga_image
            Aws::EC2::Endpoints::DeleteFpgaImage.build(context)
          when :delete_instance_connect_endpoint
            Aws::EC2::Endpoints::DeleteInstanceConnectEndpoint.build(context)
          when :delete_instance_event_window
            Aws::EC2::Endpoints::DeleteInstanceEventWindow.build(context)
          when :delete_internet_gateway
            Aws::EC2::Endpoints::DeleteInternetGateway.build(context)
          when :delete_ipam
            Aws::EC2::Endpoints::DeleteIpam.build(context)
          when :delete_ipam_pool
            Aws::EC2::Endpoints::DeleteIpamPool.build(context)
          when :delete_ipam_resource_discovery
            Aws::EC2::Endpoints::DeleteIpamResourceDiscovery.build(context)
          when :delete_ipam_scope
            Aws::EC2::Endpoints::DeleteIpamScope.build(context)
          when :delete_key_pair
            Aws::EC2::Endpoints::DeleteKeyPair.build(context)
          when :delete_launch_template
            Aws::EC2::Endpoints::DeleteLaunchTemplate.build(context)
          when :delete_launch_template_versions
            Aws::EC2::Endpoints::DeleteLaunchTemplateVersions.build(context)
          when :delete_local_gateway_route
            Aws::EC2::Endpoints::DeleteLocalGatewayRoute.build(context)
          when :delete_local_gateway_route_table
            Aws::EC2::Endpoints::DeleteLocalGatewayRouteTable.build(context)
          when :delete_local_gateway_route_table_virtual_interface_group_association
            Aws::EC2::Endpoints::DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociation.build(context)
          when :delete_local_gateway_route_table_vpc_association
            Aws::EC2::Endpoints::DeleteLocalGatewayRouteTableVpcAssociation.build(context)
          when :delete_managed_prefix_list
            Aws::EC2::Endpoints::DeleteManagedPrefixList.build(context)
          when :delete_nat_gateway
            Aws::EC2::Endpoints::DeleteNatGateway.build(context)
          when :delete_network_acl
            Aws::EC2::Endpoints::DeleteNetworkAcl.build(context)
          when :delete_network_acl_entry
            Aws::EC2::Endpoints::DeleteNetworkAclEntry.build(context)
          when :delete_network_insights_access_scope
            Aws::EC2::Endpoints::DeleteNetworkInsightsAccessScope.build(context)
          when :delete_network_insights_access_scope_analysis
            Aws::EC2::Endpoints::DeleteNetworkInsightsAccessScopeAnalysis.build(context)
          when :delete_network_insights_analysis
            Aws::EC2::Endpoints::DeleteNetworkInsightsAnalysis.build(context)
          when :delete_network_insights_path
            Aws::EC2::Endpoints::DeleteNetworkInsightsPath.build(context)
          when :delete_network_interface
            Aws::EC2::Endpoints::DeleteNetworkInterface.build(context)
          when :delete_network_interface_permission
            Aws::EC2::Endpoints::DeleteNetworkInterfacePermission.build(context)
          when :delete_placement_group
            Aws::EC2::Endpoints::DeletePlacementGroup.build(context)
          when :delete_public_ipv_4_pool
            Aws::EC2::Endpoints::DeletePublicIpv4Pool.build(context)
          when :delete_queued_reserved_instances
            Aws::EC2::Endpoints::DeleteQueuedReservedInstances.build(context)
          when :delete_route
            Aws::EC2::Endpoints::DeleteRoute.build(context)
          when :delete_route_table
            Aws::EC2::Endpoints::DeleteRouteTable.build(context)
          when :delete_security_group
            Aws::EC2::Endpoints::DeleteSecurityGroup.build(context)
          when :delete_snapshot
            Aws::EC2::Endpoints::DeleteSnapshot.build(context)
          when :delete_spot_datafeed_subscription
            Aws::EC2::Endpoints::DeleteSpotDatafeedSubscription.build(context)
          when :delete_subnet
            Aws::EC2::Endpoints::DeleteSubnet.build(context)
          when :delete_subnet_cidr_reservation
            Aws::EC2::Endpoints::DeleteSubnetCidrReservation.build(context)
          when :delete_tags
            Aws::EC2::Endpoints::DeleteTags.build(context)
          when :delete_traffic_mirror_filter
            Aws::EC2::Endpoints::DeleteTrafficMirrorFilter.build(context)
          when :delete_traffic_mirror_filter_rule
            Aws::EC2::Endpoints::DeleteTrafficMirrorFilterRule.build(context)
          when :delete_traffic_mirror_session
            Aws::EC2::Endpoints::DeleteTrafficMirrorSession.build(context)
          when :delete_traffic_mirror_target
            Aws::EC2::Endpoints::DeleteTrafficMirrorTarget.build(context)
          when :delete_transit_gateway
            Aws::EC2::Endpoints::DeleteTransitGateway.build(context)
          when :delete_transit_gateway_connect
            Aws::EC2::Endpoints::DeleteTransitGatewayConnect.build(context)
          when :delete_transit_gateway_connect_peer
            Aws::EC2::Endpoints::DeleteTransitGatewayConnectPeer.build(context)
          when :delete_transit_gateway_multicast_domain
            Aws::EC2::Endpoints::DeleteTransitGatewayMulticastDomain.build(context)
          when :delete_transit_gateway_peering_attachment
            Aws::EC2::Endpoints::DeleteTransitGatewayPeeringAttachment.build(context)
          when :delete_transit_gateway_policy_table
            Aws::EC2::Endpoints::DeleteTransitGatewayPolicyTable.build(context)
          when :delete_transit_gateway_prefix_list_reference
            Aws::EC2::Endpoints::DeleteTransitGatewayPrefixListReference.build(context)
          when :delete_transit_gateway_route
            Aws::EC2::Endpoints::DeleteTransitGatewayRoute.build(context)
          when :delete_transit_gateway_route_table
            Aws::EC2::Endpoints::DeleteTransitGatewayRouteTable.build(context)
          when :delete_transit_gateway_route_table_announcement
            Aws::EC2::Endpoints::DeleteTransitGatewayRouteTableAnnouncement.build(context)
          when :delete_transit_gateway_vpc_attachment
            Aws::EC2::Endpoints::DeleteTransitGatewayVpcAttachment.build(context)
          when :delete_verified_access_endpoint
            Aws::EC2::Endpoints::DeleteVerifiedAccessEndpoint.build(context)
          when :delete_verified_access_group
            Aws::EC2::Endpoints::DeleteVerifiedAccessGroup.build(context)
          when :delete_verified_access_instance
            Aws::EC2::Endpoints::DeleteVerifiedAccessInstance.build(context)
          when :delete_verified_access_trust_provider
            Aws::EC2::Endpoints::DeleteVerifiedAccessTrustProvider.build(context)
          when :delete_volume
            Aws::EC2::Endpoints::DeleteVolume.build(context)
          when :delete_vpc
            Aws::EC2::Endpoints::DeleteVpc.build(context)
          when :delete_vpc_endpoint_connection_notifications
            Aws::EC2::Endpoints::DeleteVpcEndpointConnectionNotifications.build(context)
          when :delete_vpc_endpoint_service_configurations
            Aws::EC2::Endpoints::DeleteVpcEndpointServiceConfigurations.build(context)
          when :delete_vpc_endpoints
            Aws::EC2::Endpoints::DeleteVpcEndpoints.build(context)
          when :delete_vpc_peering_connection
            Aws::EC2::Endpoints::DeleteVpcPeeringConnection.build(context)
          when :delete_vpn_connection
            Aws::EC2::Endpoints::DeleteVpnConnection.build(context)
          when :delete_vpn_connection_route
            Aws::EC2::Endpoints::DeleteVpnConnectionRoute.build(context)
          when :delete_vpn_gateway
            Aws::EC2::Endpoints::DeleteVpnGateway.build(context)
          when :deprovision_byoip_cidr
            Aws::EC2::Endpoints::DeprovisionByoipCidr.build(context)
          when :deprovision_ipam_pool_cidr
            Aws::EC2::Endpoints::DeprovisionIpamPoolCidr.build(context)
          when :deprovision_public_ipv_4_pool_cidr
            Aws::EC2::Endpoints::DeprovisionPublicIpv4PoolCidr.build(context)
          when :deregister_image
            Aws::EC2::Endpoints::DeregisterImage.build(context)
          when :deregister_instance_event_notification_attributes
            Aws::EC2::Endpoints::DeregisterInstanceEventNotificationAttributes.build(context)
          when :deregister_transit_gateway_multicast_group_members
            Aws::EC2::Endpoints::DeregisterTransitGatewayMulticastGroupMembers.build(context)
          when :deregister_transit_gateway_multicast_group_sources
            Aws::EC2::Endpoints::DeregisterTransitGatewayMulticastGroupSources.build(context)
          when :describe_account_attributes
            Aws::EC2::Endpoints::DescribeAccountAttributes.build(context)
          when :describe_address_transfers
            Aws::EC2::Endpoints::DescribeAddressTransfers.build(context)
          when :describe_addresses
            Aws::EC2::Endpoints::DescribeAddresses.build(context)
          when :describe_addresses_attribute
            Aws::EC2::Endpoints::DescribeAddressesAttribute.build(context)
          when :describe_aggregate_id_format
            Aws::EC2::Endpoints::DescribeAggregateIdFormat.build(context)
          when :describe_availability_zones
            Aws::EC2::Endpoints::DescribeAvailabilityZones.build(context)
          when :describe_aws_network_performance_metric_subscriptions
            Aws::EC2::Endpoints::DescribeAwsNetworkPerformanceMetricSubscriptions.build(context)
          when :describe_bundle_tasks
            Aws::EC2::Endpoints::DescribeBundleTasks.build(context)
          when :describe_byoip_cidrs
            Aws::EC2::Endpoints::DescribeByoipCidrs.build(context)
          when :describe_capacity_reservation_fleets
            Aws::EC2::Endpoints::DescribeCapacityReservationFleets.build(context)
          when :describe_capacity_reservations
            Aws::EC2::Endpoints::DescribeCapacityReservations.build(context)
          when :describe_carrier_gateways
            Aws::EC2::Endpoints::DescribeCarrierGateways.build(context)
          when :describe_classic_link_instances
            Aws::EC2::Endpoints::DescribeClassicLinkInstances.build(context)
          when :describe_client_vpn_authorization_rules
            Aws::EC2::Endpoints::DescribeClientVpnAuthorizationRules.build(context)
          when :describe_client_vpn_connections
            Aws::EC2::Endpoints::DescribeClientVpnConnections.build(context)
          when :describe_client_vpn_endpoints
            Aws::EC2::Endpoints::DescribeClientVpnEndpoints.build(context)
          when :describe_client_vpn_routes
            Aws::EC2::Endpoints::DescribeClientVpnRoutes.build(context)
          when :describe_client_vpn_target_networks
            Aws::EC2::Endpoints::DescribeClientVpnTargetNetworks.build(context)
          when :describe_coip_pools
            Aws::EC2::Endpoints::DescribeCoipPools.build(context)
          when :describe_conversion_tasks
            Aws::EC2::Endpoints::DescribeConversionTasks.build(context)
          when :describe_customer_gateways
            Aws::EC2::Endpoints::DescribeCustomerGateways.build(context)
          when :describe_dhcp_options
            Aws::EC2::Endpoints::DescribeDhcpOptions.build(context)
          when :describe_egress_only_internet_gateways
            Aws::EC2::Endpoints::DescribeEgressOnlyInternetGateways.build(context)
          when :describe_elastic_gpus
            Aws::EC2::Endpoints::DescribeElasticGpus.build(context)
          when :describe_export_image_tasks
            Aws::EC2::Endpoints::DescribeExportImageTasks.build(context)
          when :describe_export_tasks
            Aws::EC2::Endpoints::DescribeExportTasks.build(context)
          when :describe_fast_launch_images
            Aws::EC2::Endpoints::DescribeFastLaunchImages.build(context)
          when :describe_fast_snapshot_restores
            Aws::EC2::Endpoints::DescribeFastSnapshotRestores.build(context)
          when :describe_fleet_history
            Aws::EC2::Endpoints::DescribeFleetHistory.build(context)
          when :describe_fleet_instances
            Aws::EC2::Endpoints::DescribeFleetInstances.build(context)
          when :describe_fleets
            Aws::EC2::Endpoints::DescribeFleets.build(context)
          when :describe_flow_logs
            Aws::EC2::Endpoints::DescribeFlowLogs.build(context)
          when :describe_fpga_image_attribute
            Aws::EC2::Endpoints::DescribeFpgaImageAttribute.build(context)
          when :describe_fpga_images
            Aws::EC2::Endpoints::DescribeFpgaImages.build(context)
          when :describe_host_reservation_offerings
            Aws::EC2::Endpoints::DescribeHostReservationOfferings.build(context)
          when :describe_host_reservations
            Aws::EC2::Endpoints::DescribeHostReservations.build(context)
          when :describe_hosts
            Aws::EC2::Endpoints::DescribeHosts.build(context)
          when :describe_iam_instance_profile_associations
            Aws::EC2::Endpoints::DescribeIamInstanceProfileAssociations.build(context)
          when :describe_id_format
            Aws::EC2::Endpoints::DescribeIdFormat.build(context)
          when :describe_identity_id_format
            Aws::EC2::Endpoints::DescribeIdentityIdFormat.build(context)
          when :describe_image_attribute
            Aws::EC2::Endpoints::DescribeImageAttribute.build(context)
          when :describe_images
            Aws::EC2::Endpoints::DescribeImages.build(context)
          when :describe_import_image_tasks
            Aws::EC2::Endpoints::DescribeImportImageTasks.build(context)
          when :describe_import_snapshot_tasks
            Aws::EC2::Endpoints::DescribeImportSnapshotTasks.build(context)
          when :describe_instance_attribute
            Aws::EC2::Endpoints::DescribeInstanceAttribute.build(context)
          when :describe_instance_connect_endpoints
            Aws::EC2::Endpoints::DescribeInstanceConnectEndpoints.build(context)
          when :describe_instance_credit_specifications
            Aws::EC2::Endpoints::DescribeInstanceCreditSpecifications.build(context)
          when :describe_instance_event_notification_attributes
            Aws::EC2::Endpoints::DescribeInstanceEventNotificationAttributes.build(context)
          when :describe_instance_event_windows
            Aws::EC2::Endpoints::DescribeInstanceEventWindows.build(context)
          when :describe_instance_status
            Aws::EC2::Endpoints::DescribeInstanceStatus.build(context)
          when :describe_instance_type_offerings
            Aws::EC2::Endpoints::DescribeInstanceTypeOfferings.build(context)
          when :describe_instance_types
            Aws::EC2::Endpoints::DescribeInstanceTypes.build(context)
          when :describe_instances
            Aws::EC2::Endpoints::DescribeInstances.build(context)
          when :describe_internet_gateways
            Aws::EC2::Endpoints::DescribeInternetGateways.build(context)
          when :describe_ipam_pools
            Aws::EC2::Endpoints::DescribeIpamPools.build(context)
          when :describe_ipam_resource_discoveries
            Aws::EC2::Endpoints::DescribeIpamResourceDiscoveries.build(context)
          when :describe_ipam_resource_discovery_associations
            Aws::EC2::Endpoints::DescribeIpamResourceDiscoveryAssociations.build(context)
          when :describe_ipam_scopes
            Aws::EC2::Endpoints::DescribeIpamScopes.build(context)
          when :describe_ipams
            Aws::EC2::Endpoints::DescribeIpams.build(context)
          when :describe_ipv_6_pools
            Aws::EC2::Endpoints::DescribeIpv6Pools.build(context)
          when :describe_key_pairs
            Aws::EC2::Endpoints::DescribeKeyPairs.build(context)
          when :describe_launch_template_versions
            Aws::EC2::Endpoints::DescribeLaunchTemplateVersions.build(context)
          when :describe_launch_templates
            Aws::EC2::Endpoints::DescribeLaunchTemplates.build(context)
          when :describe_local_gateway_route_table_virtual_interface_group_associations
            Aws::EC2::Endpoints::DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations.build(context)
          when :describe_local_gateway_route_table_vpc_associations
            Aws::EC2::Endpoints::DescribeLocalGatewayRouteTableVpcAssociations.build(context)
          when :describe_local_gateway_route_tables
            Aws::EC2::Endpoints::DescribeLocalGatewayRouteTables.build(context)
          when :describe_local_gateway_virtual_interface_groups
            Aws::EC2::Endpoints::DescribeLocalGatewayVirtualInterfaceGroups.build(context)
          when :describe_local_gateway_virtual_interfaces
            Aws::EC2::Endpoints::DescribeLocalGatewayVirtualInterfaces.build(context)
          when :describe_local_gateways
            Aws::EC2::Endpoints::DescribeLocalGateways.build(context)
          when :describe_managed_prefix_lists
            Aws::EC2::Endpoints::DescribeManagedPrefixLists.build(context)
          when :describe_moving_addresses
            Aws::EC2::Endpoints::DescribeMovingAddresses.build(context)
          when :describe_nat_gateways
            Aws::EC2::Endpoints::DescribeNatGateways.build(context)
          when :describe_network_acls
            Aws::EC2::Endpoints::DescribeNetworkAcls.build(context)
          when :describe_network_insights_access_scope_analyses
            Aws::EC2::Endpoints::DescribeNetworkInsightsAccessScopeAnalyses.build(context)
          when :describe_network_insights_access_scopes
            Aws::EC2::Endpoints::DescribeNetworkInsightsAccessScopes.build(context)
          when :describe_network_insights_analyses
            Aws::EC2::Endpoints::DescribeNetworkInsightsAnalyses.build(context)
          when :describe_network_insights_paths
            Aws::EC2::Endpoints::DescribeNetworkInsightsPaths.build(context)
          when :describe_network_interface_attribute
            Aws::EC2::Endpoints::DescribeNetworkInterfaceAttribute.build(context)
          when :describe_network_interface_permissions
            Aws::EC2::Endpoints::DescribeNetworkInterfacePermissions.build(context)
          when :describe_network_interfaces
            Aws::EC2::Endpoints::DescribeNetworkInterfaces.build(context)
          when :describe_placement_groups
            Aws::EC2::Endpoints::DescribePlacementGroups.build(context)
          when :describe_prefix_lists
            Aws::EC2::Endpoints::DescribePrefixLists.build(context)
          when :describe_principal_id_format
            Aws::EC2::Endpoints::DescribePrincipalIdFormat.build(context)
          when :describe_public_ipv_4_pools
            Aws::EC2::Endpoints::DescribePublicIpv4Pools.build(context)
          when :describe_regions
            Aws::EC2::Endpoints::DescribeRegions.build(context)
          when :describe_replace_root_volume_tasks
            Aws::EC2::Endpoints::DescribeReplaceRootVolumeTasks.build(context)
          when :describe_reserved_instances
            Aws::EC2::Endpoints::DescribeReservedInstances.build(context)
          when :describe_reserved_instances_listings
            Aws::EC2::Endpoints::DescribeReservedInstancesListings.build(context)
          when :describe_reserved_instances_modifications
            Aws::EC2::Endpoints::DescribeReservedInstancesModifications.build(context)
          when :describe_reserved_instances_offerings
            Aws::EC2::Endpoints::DescribeReservedInstancesOfferings.build(context)
          when :describe_route_tables
            Aws::EC2::Endpoints::DescribeRouteTables.build(context)
          when :describe_scheduled_instance_availability
            Aws::EC2::Endpoints::DescribeScheduledInstanceAvailability.build(context)
          when :describe_scheduled_instances
            Aws::EC2::Endpoints::DescribeScheduledInstances.build(context)
          when :describe_security_group_references
            Aws::EC2::Endpoints::DescribeSecurityGroupReferences.build(context)
          when :describe_security_group_rules
            Aws::EC2::Endpoints::DescribeSecurityGroupRules.build(context)
          when :describe_security_groups
            Aws::EC2::Endpoints::DescribeSecurityGroups.build(context)
          when :describe_snapshot_attribute
            Aws::EC2::Endpoints::DescribeSnapshotAttribute.build(context)
          when :describe_snapshot_tier_status
            Aws::EC2::Endpoints::DescribeSnapshotTierStatus.build(context)
          when :describe_snapshots
            Aws::EC2::Endpoints::DescribeSnapshots.build(context)
          when :describe_spot_datafeed_subscription
            Aws::EC2::Endpoints::DescribeSpotDatafeedSubscription.build(context)
          when :describe_spot_fleet_instances
            Aws::EC2::Endpoints::DescribeSpotFleetInstances.build(context)
          when :describe_spot_fleet_request_history
            Aws::EC2::Endpoints::DescribeSpotFleetRequestHistory.build(context)
          when :describe_spot_fleet_requests
            Aws::EC2::Endpoints::DescribeSpotFleetRequests.build(context)
          when :describe_spot_instance_requests
            Aws::EC2::Endpoints::DescribeSpotInstanceRequests.build(context)
          when :describe_spot_price_history
            Aws::EC2::Endpoints::DescribeSpotPriceHistory.build(context)
          when :describe_stale_security_groups
            Aws::EC2::Endpoints::DescribeStaleSecurityGroups.build(context)
          when :describe_store_image_tasks
            Aws::EC2::Endpoints::DescribeStoreImageTasks.build(context)
          when :describe_subnets
            Aws::EC2::Endpoints::DescribeSubnets.build(context)
          when :describe_tags
            Aws::EC2::Endpoints::DescribeTags.build(context)
          when :describe_traffic_mirror_filters
            Aws::EC2::Endpoints::DescribeTrafficMirrorFilters.build(context)
          when :describe_traffic_mirror_sessions
            Aws::EC2::Endpoints::DescribeTrafficMirrorSessions.build(context)
          when :describe_traffic_mirror_targets
            Aws::EC2::Endpoints::DescribeTrafficMirrorTargets.build(context)
          when :describe_transit_gateway_attachments
            Aws::EC2::Endpoints::DescribeTransitGatewayAttachments.build(context)
          when :describe_transit_gateway_connect_peers
            Aws::EC2::Endpoints::DescribeTransitGatewayConnectPeers.build(context)
          when :describe_transit_gateway_connects
            Aws::EC2::Endpoints::DescribeTransitGatewayConnects.build(context)
          when :describe_transit_gateway_multicast_domains
            Aws::EC2::Endpoints::DescribeTransitGatewayMulticastDomains.build(context)
          when :describe_transit_gateway_peering_attachments
            Aws::EC2::Endpoints::DescribeTransitGatewayPeeringAttachments.build(context)
          when :describe_transit_gateway_policy_tables
            Aws::EC2::Endpoints::DescribeTransitGatewayPolicyTables.build(context)
          when :describe_transit_gateway_route_table_announcements
            Aws::EC2::Endpoints::DescribeTransitGatewayRouteTableAnnouncements.build(context)
          when :describe_transit_gateway_route_tables
            Aws::EC2::Endpoints::DescribeTransitGatewayRouteTables.build(context)
          when :describe_transit_gateway_vpc_attachments
            Aws::EC2::Endpoints::DescribeTransitGatewayVpcAttachments.build(context)
          when :describe_transit_gateways
            Aws::EC2::Endpoints::DescribeTransitGateways.build(context)
          when :describe_trunk_interface_associations
            Aws::EC2::Endpoints::DescribeTrunkInterfaceAssociations.build(context)
          when :describe_verified_access_endpoints
            Aws::EC2::Endpoints::DescribeVerifiedAccessEndpoints.build(context)
          when :describe_verified_access_groups
            Aws::EC2::Endpoints::DescribeVerifiedAccessGroups.build(context)
          when :describe_verified_access_instance_logging_configurations
            Aws::EC2::Endpoints::DescribeVerifiedAccessInstanceLoggingConfigurations.build(context)
          when :describe_verified_access_instances
            Aws::EC2::Endpoints::DescribeVerifiedAccessInstances.build(context)
          when :describe_verified_access_trust_providers
            Aws::EC2::Endpoints::DescribeVerifiedAccessTrustProviders.build(context)
          when :describe_volume_attribute
            Aws::EC2::Endpoints::DescribeVolumeAttribute.build(context)
          when :describe_volume_status
            Aws::EC2::Endpoints::DescribeVolumeStatus.build(context)
          when :describe_volumes
            Aws::EC2::Endpoints::DescribeVolumes.build(context)
          when :describe_volumes_modifications
            Aws::EC2::Endpoints::DescribeVolumesModifications.build(context)
          when :describe_vpc_attribute
            Aws::EC2::Endpoints::DescribeVpcAttribute.build(context)
          when :describe_vpc_classic_link
            Aws::EC2::Endpoints::DescribeVpcClassicLink.build(context)
          when :describe_vpc_classic_link_dns_support
            Aws::EC2::Endpoints::DescribeVpcClassicLinkDnsSupport.build(context)
          when :describe_vpc_endpoint_connection_notifications
            Aws::EC2::Endpoints::DescribeVpcEndpointConnectionNotifications.build(context)
          when :describe_vpc_endpoint_connections
            Aws::EC2::Endpoints::DescribeVpcEndpointConnections.build(context)
          when :describe_vpc_endpoint_service_configurations
            Aws::EC2::Endpoints::DescribeVpcEndpointServiceConfigurations.build(context)
          when :describe_vpc_endpoint_service_permissions
            Aws::EC2::Endpoints::DescribeVpcEndpointServicePermissions.build(context)
          when :describe_vpc_endpoint_services
            Aws::EC2::Endpoints::DescribeVpcEndpointServices.build(context)
          when :describe_vpc_endpoints
            Aws::EC2::Endpoints::DescribeVpcEndpoints.build(context)
          when :describe_vpc_peering_connections
            Aws::EC2::Endpoints::DescribeVpcPeeringConnections.build(context)
          when :describe_vpcs
            Aws::EC2::Endpoints::DescribeVpcs.build(context)
          when :describe_vpn_connections
            Aws::EC2::Endpoints::DescribeVpnConnections.build(context)
          when :describe_vpn_gateways
            Aws::EC2::Endpoints::DescribeVpnGateways.build(context)
          when :detach_classic_link_vpc
            Aws::EC2::Endpoints::DetachClassicLinkVpc.build(context)
          when :detach_internet_gateway
            Aws::EC2::Endpoints::DetachInternetGateway.build(context)
          when :detach_network_interface
            Aws::EC2::Endpoints::DetachNetworkInterface.build(context)
          when :detach_verified_access_trust_provider
            Aws::EC2::Endpoints::DetachVerifiedAccessTrustProvider.build(context)
          when :detach_volume
            Aws::EC2::Endpoints::DetachVolume.build(context)
          when :detach_vpn_gateway
            Aws::EC2::Endpoints::DetachVpnGateway.build(context)
          when :disable_address_transfer
            Aws::EC2::Endpoints::DisableAddressTransfer.build(context)
          when :disable_aws_network_performance_metric_subscription
            Aws::EC2::Endpoints::DisableAwsNetworkPerformanceMetricSubscription.build(context)
          when :disable_ebs_encryption_by_default
            Aws::EC2::Endpoints::DisableEbsEncryptionByDefault.build(context)
          when :disable_fast_launch
            Aws::EC2::Endpoints::DisableFastLaunch.build(context)
          when :disable_fast_snapshot_restores
            Aws::EC2::Endpoints::DisableFastSnapshotRestores.build(context)
          when :disable_image_deprecation
            Aws::EC2::Endpoints::DisableImageDeprecation.build(context)
          when :disable_ipam_organization_admin_account
            Aws::EC2::Endpoints::DisableIpamOrganizationAdminAccount.build(context)
          when :disable_serial_console_access
            Aws::EC2::Endpoints::DisableSerialConsoleAccess.build(context)
          when :disable_transit_gateway_route_table_propagation
            Aws::EC2::Endpoints::DisableTransitGatewayRouteTablePropagation.build(context)
          when :disable_vgw_route_propagation
            Aws::EC2::Endpoints::DisableVgwRoutePropagation.build(context)
          when :disable_vpc_classic_link
            Aws::EC2::Endpoints::DisableVpcClassicLink.build(context)
          when :disable_vpc_classic_link_dns_support
            Aws::EC2::Endpoints::DisableVpcClassicLinkDnsSupport.build(context)
          when :disassociate_address
            Aws::EC2::Endpoints::DisassociateAddress.build(context)
          when :disassociate_client_vpn_target_network
            Aws::EC2::Endpoints::DisassociateClientVpnTargetNetwork.build(context)
          when :disassociate_enclave_certificate_iam_role
            Aws::EC2::Endpoints::DisassociateEnclaveCertificateIamRole.build(context)
          when :disassociate_iam_instance_profile
            Aws::EC2::Endpoints::DisassociateIamInstanceProfile.build(context)
          when :disassociate_instance_event_window
            Aws::EC2::Endpoints::DisassociateInstanceEventWindow.build(context)
          when :disassociate_ipam_resource_discovery
            Aws::EC2::Endpoints::DisassociateIpamResourceDiscovery.build(context)
          when :disassociate_nat_gateway_address
            Aws::EC2::Endpoints::DisassociateNatGatewayAddress.build(context)
          when :disassociate_route_table
            Aws::EC2::Endpoints::DisassociateRouteTable.build(context)
          when :disassociate_subnet_cidr_block
            Aws::EC2::Endpoints::DisassociateSubnetCidrBlock.build(context)
          when :disassociate_transit_gateway_multicast_domain
            Aws::EC2::Endpoints::DisassociateTransitGatewayMulticastDomain.build(context)
          when :disassociate_transit_gateway_policy_table
            Aws::EC2::Endpoints::DisassociateTransitGatewayPolicyTable.build(context)
          when :disassociate_transit_gateway_route_table
            Aws::EC2::Endpoints::DisassociateTransitGatewayRouteTable.build(context)
          when :disassociate_trunk_interface
            Aws::EC2::Endpoints::DisassociateTrunkInterface.build(context)
          when :disassociate_vpc_cidr_block
            Aws::EC2::Endpoints::DisassociateVpcCidrBlock.build(context)
          when :enable_address_transfer
            Aws::EC2::Endpoints::EnableAddressTransfer.build(context)
          when :enable_aws_network_performance_metric_subscription
            Aws::EC2::Endpoints::EnableAwsNetworkPerformanceMetricSubscription.build(context)
          when :enable_ebs_encryption_by_default
            Aws::EC2::Endpoints::EnableEbsEncryptionByDefault.build(context)
          when :enable_fast_launch
            Aws::EC2::Endpoints::EnableFastLaunch.build(context)
          when :enable_fast_snapshot_restores
            Aws::EC2::Endpoints::EnableFastSnapshotRestores.build(context)
          when :enable_image_deprecation
            Aws::EC2::Endpoints::EnableImageDeprecation.build(context)
          when :enable_ipam_organization_admin_account
            Aws::EC2::Endpoints::EnableIpamOrganizationAdminAccount.build(context)
          when :enable_reachability_analyzer_organization_sharing
            Aws::EC2::Endpoints::EnableReachabilityAnalyzerOrganizationSharing.build(context)
          when :enable_serial_console_access
            Aws::EC2::Endpoints::EnableSerialConsoleAccess.build(context)
          when :enable_transit_gateway_route_table_propagation
            Aws::EC2::Endpoints::EnableTransitGatewayRouteTablePropagation.build(context)
          when :enable_vgw_route_propagation
            Aws::EC2::Endpoints::EnableVgwRoutePropagation.build(context)
          when :enable_volume_io
            Aws::EC2::Endpoints::EnableVolumeIO.build(context)
          when :enable_vpc_classic_link
            Aws::EC2::Endpoints::EnableVpcClassicLink.build(context)
          when :enable_vpc_classic_link_dns_support
            Aws::EC2::Endpoints::EnableVpcClassicLinkDnsSupport.build(context)
          when :export_client_vpn_client_certificate_revocation_list
            Aws::EC2::Endpoints::ExportClientVpnClientCertificateRevocationList.build(context)
          when :export_client_vpn_client_configuration
            Aws::EC2::Endpoints::ExportClientVpnClientConfiguration.build(context)
          when :export_image
            Aws::EC2::Endpoints::ExportImage.build(context)
          when :export_transit_gateway_routes
            Aws::EC2::Endpoints::ExportTransitGatewayRoutes.build(context)
          when :get_associated_enclave_certificate_iam_roles
            Aws::EC2::Endpoints::GetAssociatedEnclaveCertificateIamRoles.build(context)
          when :get_associated_ipv_6_pool_cidrs
            Aws::EC2::Endpoints::GetAssociatedIpv6PoolCidrs.build(context)
          when :get_aws_network_performance_data
            Aws::EC2::Endpoints::GetAwsNetworkPerformanceData.build(context)
          when :get_capacity_reservation_usage
            Aws::EC2::Endpoints::GetCapacityReservationUsage.build(context)
          when :get_coip_pool_usage
            Aws::EC2::Endpoints::GetCoipPoolUsage.build(context)
          when :get_console_output
            Aws::EC2::Endpoints::GetConsoleOutput.build(context)
          when :get_console_screenshot
            Aws::EC2::Endpoints::GetConsoleScreenshot.build(context)
          when :get_default_credit_specification
            Aws::EC2::Endpoints::GetDefaultCreditSpecification.build(context)
          when :get_ebs_default_kms_key_id
            Aws::EC2::Endpoints::GetEbsDefaultKmsKeyId.build(context)
          when :get_ebs_encryption_by_default
            Aws::EC2::Endpoints::GetEbsEncryptionByDefault.build(context)
          when :get_flow_logs_integration_template
            Aws::EC2::Endpoints::GetFlowLogsIntegrationTemplate.build(context)
          when :get_groups_for_capacity_reservation
            Aws::EC2::Endpoints::GetGroupsForCapacityReservation.build(context)
          when :get_host_reservation_purchase_preview
            Aws::EC2::Endpoints::GetHostReservationPurchasePreview.build(context)
          when :get_instance_types_from_instance_requirements
            Aws::EC2::Endpoints::GetInstanceTypesFromInstanceRequirements.build(context)
          when :get_instance_uefi_data
            Aws::EC2::Endpoints::GetInstanceUefiData.build(context)
          when :get_ipam_address_history
            Aws::EC2::Endpoints::GetIpamAddressHistory.build(context)
          when :get_ipam_discovered_accounts
            Aws::EC2::Endpoints::GetIpamDiscoveredAccounts.build(context)
          when :get_ipam_discovered_resource_cidrs
            Aws::EC2::Endpoints::GetIpamDiscoveredResourceCidrs.build(context)
          when :get_ipam_pool_allocations
            Aws::EC2::Endpoints::GetIpamPoolAllocations.build(context)
          when :get_ipam_pool_cidrs
            Aws::EC2::Endpoints::GetIpamPoolCidrs.build(context)
          when :get_ipam_resource_cidrs
            Aws::EC2::Endpoints::GetIpamResourceCidrs.build(context)
          when :get_launch_template_data
            Aws::EC2::Endpoints::GetLaunchTemplateData.build(context)
          when :get_managed_prefix_list_associations
            Aws::EC2::Endpoints::GetManagedPrefixListAssociations.build(context)
          when :get_managed_prefix_list_entries
            Aws::EC2::Endpoints::GetManagedPrefixListEntries.build(context)
          when :get_network_insights_access_scope_analysis_findings
            Aws::EC2::Endpoints::GetNetworkInsightsAccessScopeAnalysisFindings.build(context)
          when :get_network_insights_access_scope_content
            Aws::EC2::Endpoints::GetNetworkInsightsAccessScopeContent.build(context)
          when :get_password_data
            Aws::EC2::Endpoints::GetPasswordData.build(context)
          when :get_reserved_instances_exchange_quote
            Aws::EC2::Endpoints::GetReservedInstancesExchangeQuote.build(context)
          when :get_serial_console_access_status
            Aws::EC2::Endpoints::GetSerialConsoleAccessStatus.build(context)
          when :get_spot_placement_scores
            Aws::EC2::Endpoints::GetSpotPlacementScores.build(context)
          when :get_subnet_cidr_reservations
            Aws::EC2::Endpoints::GetSubnetCidrReservations.build(context)
          when :get_transit_gateway_attachment_propagations
            Aws::EC2::Endpoints::GetTransitGatewayAttachmentPropagations.build(context)
          when :get_transit_gateway_multicast_domain_associations
            Aws::EC2::Endpoints::GetTransitGatewayMulticastDomainAssociations.build(context)
          when :get_transit_gateway_policy_table_associations
            Aws::EC2::Endpoints::GetTransitGatewayPolicyTableAssociations.build(context)
          when :get_transit_gateway_policy_table_entries
            Aws::EC2::Endpoints::GetTransitGatewayPolicyTableEntries.build(context)
          when :get_transit_gateway_prefix_list_references
            Aws::EC2::Endpoints::GetTransitGatewayPrefixListReferences.build(context)
          when :get_transit_gateway_route_table_associations
            Aws::EC2::Endpoints::GetTransitGatewayRouteTableAssociations.build(context)
          when :get_transit_gateway_route_table_propagations
            Aws::EC2::Endpoints::GetTransitGatewayRouteTablePropagations.build(context)
          when :get_verified_access_endpoint_policy
            Aws::EC2::Endpoints::GetVerifiedAccessEndpointPolicy.build(context)
          when :get_verified_access_group_policy
            Aws::EC2::Endpoints::GetVerifiedAccessGroupPolicy.build(context)
          when :get_vpn_connection_device_sample_configuration
            Aws::EC2::Endpoints::GetVpnConnectionDeviceSampleConfiguration.build(context)
          when :get_vpn_connection_device_types
            Aws::EC2::Endpoints::GetVpnConnectionDeviceTypes.build(context)
          when :get_vpn_tunnel_replacement_status
            Aws::EC2::Endpoints::GetVpnTunnelReplacementStatus.build(context)
          when :import_client_vpn_client_certificate_revocation_list
            Aws::EC2::Endpoints::ImportClientVpnClientCertificateRevocationList.build(context)
          when :import_image
            Aws::EC2::Endpoints::ImportImage.build(context)
          when :import_instance
            Aws::EC2::Endpoints::ImportInstance.build(context)
          when :import_key_pair
            Aws::EC2::Endpoints::ImportKeyPair.build(context)
          when :import_snapshot
            Aws::EC2::Endpoints::ImportSnapshot.build(context)
          when :import_volume
            Aws::EC2::Endpoints::ImportVolume.build(context)
          when :list_images_in_recycle_bin
            Aws::EC2::Endpoints::ListImagesInRecycleBin.build(context)
          when :list_snapshots_in_recycle_bin
            Aws::EC2::Endpoints::ListSnapshotsInRecycleBin.build(context)
          when :modify_address_attribute
            Aws::EC2::Endpoints::ModifyAddressAttribute.build(context)
          when :modify_availability_zone_group
            Aws::EC2::Endpoints::ModifyAvailabilityZoneGroup.build(context)
          when :modify_capacity_reservation
            Aws::EC2::Endpoints::ModifyCapacityReservation.build(context)
          when :modify_capacity_reservation_fleet
            Aws::EC2::Endpoints::ModifyCapacityReservationFleet.build(context)
          when :modify_client_vpn_endpoint
            Aws::EC2::Endpoints::ModifyClientVpnEndpoint.build(context)
          when :modify_default_credit_specification
            Aws::EC2::Endpoints::ModifyDefaultCreditSpecification.build(context)
          when :modify_ebs_default_kms_key_id
            Aws::EC2::Endpoints::ModifyEbsDefaultKmsKeyId.build(context)
          when :modify_fleet
            Aws::EC2::Endpoints::ModifyFleet.build(context)
          when :modify_fpga_image_attribute
            Aws::EC2::Endpoints::ModifyFpgaImageAttribute.build(context)
          when :modify_hosts
            Aws::EC2::Endpoints::ModifyHosts.build(context)
          when :modify_id_format
            Aws::EC2::Endpoints::ModifyIdFormat.build(context)
          when :modify_identity_id_format
            Aws::EC2::Endpoints::ModifyIdentityIdFormat.build(context)
          when :modify_image_attribute
            Aws::EC2::Endpoints::ModifyImageAttribute.build(context)
          when :modify_instance_attribute
            Aws::EC2::Endpoints::ModifyInstanceAttribute.build(context)
          when :modify_instance_capacity_reservation_attributes
            Aws::EC2::Endpoints::ModifyInstanceCapacityReservationAttributes.build(context)
          when :modify_instance_credit_specification
            Aws::EC2::Endpoints::ModifyInstanceCreditSpecification.build(context)
          when :modify_instance_event_start_time
            Aws::EC2::Endpoints::ModifyInstanceEventStartTime.build(context)
          when :modify_instance_event_window
            Aws::EC2::Endpoints::ModifyInstanceEventWindow.build(context)
          when :modify_instance_maintenance_options
            Aws::EC2::Endpoints::ModifyInstanceMaintenanceOptions.build(context)
          when :modify_instance_metadata_options
            Aws::EC2::Endpoints::ModifyInstanceMetadataOptions.build(context)
          when :modify_instance_placement
            Aws::EC2::Endpoints::ModifyInstancePlacement.build(context)
          when :modify_ipam
            Aws::EC2::Endpoints::ModifyIpam.build(context)
          when :modify_ipam_pool
            Aws::EC2::Endpoints::ModifyIpamPool.build(context)
          when :modify_ipam_resource_cidr
            Aws::EC2::Endpoints::ModifyIpamResourceCidr.build(context)
          when :modify_ipam_resource_discovery
            Aws::EC2::Endpoints::ModifyIpamResourceDiscovery.build(context)
          when :modify_ipam_scope
            Aws::EC2::Endpoints::ModifyIpamScope.build(context)
          when :modify_launch_template
            Aws::EC2::Endpoints::ModifyLaunchTemplate.build(context)
          when :modify_local_gateway_route
            Aws::EC2::Endpoints::ModifyLocalGatewayRoute.build(context)
          when :modify_managed_prefix_list
            Aws::EC2::Endpoints::ModifyManagedPrefixList.build(context)
          when :modify_network_interface_attribute
            Aws::EC2::Endpoints::ModifyNetworkInterfaceAttribute.build(context)
          when :modify_private_dns_name_options
            Aws::EC2::Endpoints::ModifyPrivateDnsNameOptions.build(context)
          when :modify_reserved_instances
            Aws::EC2::Endpoints::ModifyReservedInstances.build(context)
          when :modify_security_group_rules
            Aws::EC2::Endpoints::ModifySecurityGroupRules.build(context)
          when :modify_snapshot_attribute
            Aws::EC2::Endpoints::ModifySnapshotAttribute.build(context)
          when :modify_snapshot_tier
            Aws::EC2::Endpoints::ModifySnapshotTier.build(context)
          when :modify_spot_fleet_request
            Aws::EC2::Endpoints::ModifySpotFleetRequest.build(context)
          when :modify_subnet_attribute
            Aws::EC2::Endpoints::ModifySubnetAttribute.build(context)
          when :modify_traffic_mirror_filter_network_services
            Aws::EC2::Endpoints::ModifyTrafficMirrorFilterNetworkServices.build(context)
          when :modify_traffic_mirror_filter_rule
            Aws::EC2::Endpoints::ModifyTrafficMirrorFilterRule.build(context)
          when :modify_traffic_mirror_session
            Aws::EC2::Endpoints::ModifyTrafficMirrorSession.build(context)
          when :modify_transit_gateway
            Aws::EC2::Endpoints::ModifyTransitGateway.build(context)
          when :modify_transit_gateway_prefix_list_reference
            Aws::EC2::Endpoints::ModifyTransitGatewayPrefixListReference.build(context)
          when :modify_transit_gateway_vpc_attachment
            Aws::EC2::Endpoints::ModifyTransitGatewayVpcAttachment.build(context)
          when :modify_verified_access_endpoint
            Aws::EC2::Endpoints::ModifyVerifiedAccessEndpoint.build(context)
          when :modify_verified_access_endpoint_policy
            Aws::EC2::Endpoints::ModifyVerifiedAccessEndpointPolicy.build(context)
          when :modify_verified_access_group
            Aws::EC2::Endpoints::ModifyVerifiedAccessGroup.build(context)
          when :modify_verified_access_group_policy
            Aws::EC2::Endpoints::ModifyVerifiedAccessGroupPolicy.build(context)
          when :modify_verified_access_instance
            Aws::EC2::Endpoints::ModifyVerifiedAccessInstance.build(context)
          when :modify_verified_access_instance_logging_configuration
            Aws::EC2::Endpoints::ModifyVerifiedAccessInstanceLoggingConfiguration.build(context)
          when :modify_verified_access_trust_provider
            Aws::EC2::Endpoints::ModifyVerifiedAccessTrustProvider.build(context)
          when :modify_volume
            Aws::EC2::Endpoints::ModifyVolume.build(context)
          when :modify_volume_attribute
            Aws::EC2::Endpoints::ModifyVolumeAttribute.build(context)
          when :modify_vpc_attribute
            Aws::EC2::Endpoints::ModifyVpcAttribute.build(context)
          when :modify_vpc_endpoint
            Aws::EC2::Endpoints::ModifyVpcEndpoint.build(context)
          when :modify_vpc_endpoint_connection_notification
            Aws::EC2::Endpoints::ModifyVpcEndpointConnectionNotification.build(context)
          when :modify_vpc_endpoint_service_configuration
            Aws::EC2::Endpoints::ModifyVpcEndpointServiceConfiguration.build(context)
          when :modify_vpc_endpoint_service_payer_responsibility
            Aws::EC2::Endpoints::ModifyVpcEndpointServicePayerResponsibility.build(context)
          when :modify_vpc_endpoint_service_permissions
            Aws::EC2::Endpoints::ModifyVpcEndpointServicePermissions.build(context)
          when :modify_vpc_peering_connection_options
            Aws::EC2::Endpoints::ModifyVpcPeeringConnectionOptions.build(context)
          when :modify_vpc_tenancy
            Aws::EC2::Endpoints::ModifyVpcTenancy.build(context)
          when :modify_vpn_connection
            Aws::EC2::Endpoints::ModifyVpnConnection.build(context)
          when :modify_vpn_connection_options
            Aws::EC2::Endpoints::ModifyVpnConnectionOptions.build(context)
          when :modify_vpn_tunnel_certificate
            Aws::EC2::Endpoints::ModifyVpnTunnelCertificate.build(context)
          when :modify_vpn_tunnel_options
            Aws::EC2::Endpoints::ModifyVpnTunnelOptions.build(context)
          when :monitor_instances
            Aws::EC2::Endpoints::MonitorInstances.build(context)
          when :move_address_to_vpc
            Aws::EC2::Endpoints::MoveAddressToVpc.build(context)
          when :move_byoip_cidr_to_ipam
            Aws::EC2::Endpoints::MoveByoipCidrToIpam.build(context)
          when :provision_byoip_cidr
            Aws::EC2::Endpoints::ProvisionByoipCidr.build(context)
          when :provision_ipam_pool_cidr
            Aws::EC2::Endpoints::ProvisionIpamPoolCidr.build(context)
          when :provision_public_ipv_4_pool_cidr
            Aws::EC2::Endpoints::ProvisionPublicIpv4PoolCidr.build(context)
          when :purchase_host_reservation
            Aws::EC2::Endpoints::PurchaseHostReservation.build(context)
          when :purchase_reserved_instances_offering
            Aws::EC2::Endpoints::PurchaseReservedInstancesOffering.build(context)
          when :purchase_scheduled_instances
            Aws::EC2::Endpoints::PurchaseScheduledInstances.build(context)
          when :reboot_instances
            Aws::EC2::Endpoints::RebootInstances.build(context)
          when :register_image
            Aws::EC2::Endpoints::RegisterImage.build(context)
          when :register_instance_event_notification_attributes
            Aws::EC2::Endpoints::RegisterInstanceEventNotificationAttributes.build(context)
          when :register_transit_gateway_multicast_group_members
            Aws::EC2::Endpoints::RegisterTransitGatewayMulticastGroupMembers.build(context)
          when :register_transit_gateway_multicast_group_sources
            Aws::EC2::Endpoints::RegisterTransitGatewayMulticastGroupSources.build(context)
          when :reject_transit_gateway_multicast_domain_associations
            Aws::EC2::Endpoints::RejectTransitGatewayMulticastDomainAssociations.build(context)
          when :reject_transit_gateway_peering_attachment
            Aws::EC2::Endpoints::RejectTransitGatewayPeeringAttachment.build(context)
          when :reject_transit_gateway_vpc_attachment
            Aws::EC2::Endpoints::RejectTransitGatewayVpcAttachment.build(context)
          when :reject_vpc_endpoint_connections
            Aws::EC2::Endpoints::RejectVpcEndpointConnections.build(context)
          when :reject_vpc_peering_connection
            Aws::EC2::Endpoints::RejectVpcPeeringConnection.build(context)
          when :release_address
            Aws::EC2::Endpoints::ReleaseAddress.build(context)
          when :release_hosts
            Aws::EC2::Endpoints::ReleaseHosts.build(context)
          when :release_ipam_pool_allocation
            Aws::EC2::Endpoints::ReleaseIpamPoolAllocation.build(context)
          when :replace_iam_instance_profile_association
            Aws::EC2::Endpoints::ReplaceIamInstanceProfileAssociation.build(context)
          when :replace_network_acl_association
            Aws::EC2::Endpoints::ReplaceNetworkAclAssociation.build(context)
          when :replace_network_acl_entry
            Aws::EC2::Endpoints::ReplaceNetworkAclEntry.build(context)
          when :replace_route
            Aws::EC2::Endpoints::ReplaceRoute.build(context)
          when :replace_route_table_association
            Aws::EC2::Endpoints::ReplaceRouteTableAssociation.build(context)
          when :replace_transit_gateway_route
            Aws::EC2::Endpoints::ReplaceTransitGatewayRoute.build(context)
          when :replace_vpn_tunnel
            Aws::EC2::Endpoints::ReplaceVpnTunnel.build(context)
          when :report_instance_status
            Aws::EC2::Endpoints::ReportInstanceStatus.build(context)
          when :request_spot_fleet
            Aws::EC2::Endpoints::RequestSpotFleet.build(context)
          when :request_spot_instances
            Aws::EC2::Endpoints::RequestSpotInstances.build(context)
          when :reset_address_attribute
            Aws::EC2::Endpoints::ResetAddressAttribute.build(context)
          when :reset_ebs_default_kms_key_id
            Aws::EC2::Endpoints::ResetEbsDefaultKmsKeyId.build(context)
          when :reset_fpga_image_attribute
            Aws::EC2::Endpoints::ResetFpgaImageAttribute.build(context)
          when :reset_image_attribute
            Aws::EC2::Endpoints::ResetImageAttribute.build(context)
          when :reset_instance_attribute
            Aws::EC2::Endpoints::ResetInstanceAttribute.build(context)
          when :reset_network_interface_attribute
            Aws::EC2::Endpoints::ResetNetworkInterfaceAttribute.build(context)
          when :reset_snapshot_attribute
            Aws::EC2::Endpoints::ResetSnapshotAttribute.build(context)
          when :restore_address_to_classic
            Aws::EC2::Endpoints::RestoreAddressToClassic.build(context)
          when :restore_image_from_recycle_bin
            Aws::EC2::Endpoints::RestoreImageFromRecycleBin.build(context)
          when :restore_managed_prefix_list_version
            Aws::EC2::Endpoints::RestoreManagedPrefixListVersion.build(context)
          when :restore_snapshot_from_recycle_bin
            Aws::EC2::Endpoints::RestoreSnapshotFromRecycleBin.build(context)
          when :restore_snapshot_tier
            Aws::EC2::Endpoints::RestoreSnapshotTier.build(context)
          when :revoke_client_vpn_ingress
            Aws::EC2::Endpoints::RevokeClientVpnIngress.build(context)
          when :revoke_security_group_egress
            Aws::EC2::Endpoints::RevokeSecurityGroupEgress.build(context)
          when :revoke_security_group_ingress
            Aws::EC2::Endpoints::RevokeSecurityGroupIngress.build(context)
          when :run_instances
            Aws::EC2::Endpoints::RunInstances.build(context)
          when :run_scheduled_instances
            Aws::EC2::Endpoints::RunScheduledInstances.build(context)
          when :search_local_gateway_routes
            Aws::EC2::Endpoints::SearchLocalGatewayRoutes.build(context)
          when :search_transit_gateway_multicast_groups
            Aws::EC2::Endpoints::SearchTransitGatewayMulticastGroups.build(context)
          when :search_transit_gateway_routes
            Aws::EC2::Endpoints::SearchTransitGatewayRoutes.build(context)
          when :send_diagnostic_interrupt
            Aws::EC2::Endpoints::SendDiagnosticInterrupt.build(context)
          when :start_instances
            Aws::EC2::Endpoints::StartInstances.build(context)
          when :start_network_insights_access_scope_analysis
            Aws::EC2::Endpoints::StartNetworkInsightsAccessScopeAnalysis.build(context)
          when :start_network_insights_analysis
            Aws::EC2::Endpoints::StartNetworkInsightsAnalysis.build(context)
          when :start_vpc_endpoint_service_private_dns_verification
            Aws::EC2::Endpoints::StartVpcEndpointServicePrivateDnsVerification.build(context)
          when :stop_instances
            Aws::EC2::Endpoints::StopInstances.build(context)
          when :terminate_client_vpn_connections
            Aws::EC2::Endpoints::TerminateClientVpnConnections.build(context)
          when :terminate_instances
            Aws::EC2::Endpoints::TerminateInstances.build(context)
          when :unassign_ipv_6_addresses
            Aws::EC2::Endpoints::UnassignIpv6Addresses.build(context)
          when :unassign_private_ip_addresses
            Aws::EC2::Endpoints::UnassignPrivateIpAddresses.build(context)
          when :unassign_private_nat_gateway_address
            Aws::EC2::Endpoints::UnassignPrivateNatGatewayAddress.build(context)
          when :unmonitor_instances
            Aws::EC2::Endpoints::UnmonitorInstances.build(context)
          when :update_security_group_rule_descriptions_egress
            Aws::EC2::Endpoints::UpdateSecurityGroupRuleDescriptionsEgress.build(context)
          when :update_security_group_rule_descriptions_ingress
            Aws::EC2::Endpoints::UpdateSecurityGroupRuleDescriptionsIngress.build(context)
          when :withdraw_byoip_cidr
            Aws::EC2::Endpoints::WithdrawByoipCidr.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
