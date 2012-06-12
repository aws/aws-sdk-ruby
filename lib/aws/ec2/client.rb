# Copyright 2011-2012 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"). You
# may not use this file except in compliance with the License. A copy of
# the License is located at
#
#     http://aws.amazon.com/apache2.0/
#
# or in the "license" file accompanying this file. This file is
# distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
# ANY KIND, either express or implied. See the License for the specific
# language governing permissions and limitations under the License.

module AWS
  class EC2

    # Client class for Amazon Elastic Compute Cloud (EC2).
    class Client < Core::Client

      API_VERSION = '2012-06-01'

      extend Core::Client::QueryXML

      # @private
      CACHEABLE_REQUESTS = Set[
        :describe_addresses,
        :describe_availability_zones,
        :describe_bundle_tasks,
        :describe_customer_gateways,
        :describe_dhcp_options,
        :describe_image_attribute,
        :describe_images,
        :describe_instances,
        :describe_key_pairs,
        :describe_regions,
        :describe_reserved_instances,
        :describe_reserved_instances_offerings,
        :describe_security_groups,
        :describe_snapshot_attribute,
        :describe_snapshots,
        :describe_subnets,
        :describe_volume_status,
        :describe_volumes,
        :describe_vpcs,
        :describe_vpn_connections,
        :describe_vpn_gateways,
        :describe_instance_attribute,
        :describe_spot_instance_requests,
        :describe_spot_price_history,
        :describe_spot_datafeed_subscription,
        :describe_licenses,
        :describe_placement_groups,
        :describe_tags,
        :describe_internet_gateways,
        :describe_route_tables,
        :describe_network_acls,
        :describe_instance_status,
        :describe_conversion_tasks,
        :describe_network_interfaces,
        :describe_network_interface_attribute,
      ]

      ## client methods ##

      # Calls the ActivateLicense API operation.
      # @method activate_license(options = {})
      #
      # === Options:
      #
      # * +:license_id+ - *required* - (String) Specifies the ID for the
      #   specific license to activate against.
      # * +:capacity+ - *required* - (Integer) Specifies the additional number
      #   of licenses to activate.
      #
      # === Response Structure:
      #
      # This method returns no response data.
      #
      # @return [Core::Response]
      #
      define_client_method :activate_license, 'ActivateLicense'

      # Calls the AllocateAddress API operation.
      # @method allocate_address(options = {})
      #
      # === Options:
      #
      # * +:domain+ - (String) Set to vpc to allocate the address to your VPC.
      #   By default, will allocate to EC2.
      #
      # === Response Structure:
      #
      # * +:public_ip+ - (String)
      # * +:domain+ - (String)
      # * +:allocation_id+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :allocate_address, 'AllocateAddress'

      # Calls the AssociateAddress API operation.
      # @method associate_address(options = {})
      #
      # === Options:
      #
      # * +:instance_id+ - *required* - (String) The instance to associate with
      #   the IP address.
      # * +:public_ip+ - (String) IP address that you are assigning to the
      #   instance.
      # * +:allocation_id+ - (String) The allocation ID that AWS returned when
      #   you allocated the elastic IP address for use with Amazon VPC.
      # * +:network_interface_id+ - (String)
      #
      # === Response Structure:
      #
      # * +:association_id+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :associate_address, 'AssociateAddress'

      # Calls the AssociateDhcpOptions API operation.
      # @method associate_dhcp_options(options = {})
      #
      # === Options:
      #
      # * +:dhcp_options_id+ - *required* - (String) The ID of the DHCP options
      #   to associate with the VPC. Specify "default" to associate the default
      #   DHCP options with the VPC.
      # * +:vpc_id+ - *required* - (String) The ID of the VPC to associate the
      #   DHCP options with.
      #
      # === Response Structure:
      #
      # This method returns no response data.
      #
      # @return [Core::Response]
      #
      define_client_method :associate_dhcp_options, 'AssociateDhcpOptions'

      # Calls the AssociateRouteTable API operation.
      # @method associate_route_table(options = {})
      #
      # === Options:
      #
      # * +:subnet_id+ - *required* - (String) The ID of the subnet.
      # * +:route_table_id+ - *required* - (String) The ID of the route table.
      #
      # === Response Structure:
      #
      # * +:association_id+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :associate_route_table, 'AssociateRouteTable'

      # Calls the AttachInternetGateway API operation.
      # @method attach_internet_gateway(options = {})
      #
      # === Options:
      #
      # * +:internet_gateway_id+ - *required* - (String) The ID of the Internet
      #   gateway to attach.
      # * +:vpc_id+ - *required* - (String) The ID of the VPC.
      #
      # === Response Structure:
      #
      # This method returns no response data.
      #
      # @return [Core::Response]
      #
      define_client_method :attach_internet_gateway, 'AttachInternetGateway'

      # Calls the AttachNetworkInterface API operation.
      # @method attach_network_interface(options = {})
      #
      # === Options:
      #
      # * +:network_interface_id+ - *required* - (String)
      # * +:instance_id+ - *required* - (String)
      # * +:device_index+ - *required* - (Integer)
      #
      # === Response Structure:
      #
      # * +:attachment_id+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :attach_network_interface, 'AttachNetworkInterface'

      # Calls the AttachVolume API operation.
      # @method attach_volume(options = {})
      #
      # === Options:
      #
      # * +:volume_id+ - *required* - (String) The ID of the Amazon EBS volume.
      #   The volume and instance must be within the same Availability Zone and
      #   the instance must be running.
      # * +:instance_id+ - *required* - (String) The ID of the instance to
      #   which the volume attaches. The volume and instance must be within the
      #   same Availability Zone and the instance must be running.
      # * +:device+ - *required* - (String) Specifies how the device is exposed
      #   to the instance (e.g., /dev/sdh).
      #
      # === Response Structure:
      #
      # * +:volume_id+ - (String)
      # * +:instance_id+ - (String)
      # * +:device+ - (String)
      # * +:status+ - (String)
      # * +:attach_time+ - (Time)
      # * +:delete_on_termination+ - (Boolean)
      #
      # @return [Core::Response]
      #
      define_client_method :attach_volume, 'AttachVolume'

      # Calls the AttachVpnGateway API operation.
      # @method attach_vpn_gateway(options = {})
      #
      # === Options:
      #
      # * +:vpn_gateway_id+ - *required* - (String) The ID of the VPN gateway
      #   to attach to the VPC.
      # * +:vpc_id+ - *required* - (String) The ID of the VPC to attach to the
      #   VPN gateway.
      #
      # === Response Structure:
      #
      # * +:attachment+ - (Hash)
      #   * +:vpc_id+ - (String)
      #   * +:state+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :attach_vpn_gateway, 'AttachVpnGateway'

      # Calls the AuthorizeSecurityGroupEgress API operation.
      # @method authorize_security_group_egress(options = {})
      #
      # === Options:
      #
      # * +:group_id+ - *required* - (String) ID of the VPC security group to
      #   modify.
      # * +:source_security_group_name+ - (String) Deprecated.
      # * +:source_security_group_owner_id+ - (String) Deprecated.
      # * +:ip_protocol+ - (String) Deprecated.
      # * +:from_port+ - (Integer) Deprecated.
      # * +:to_port+ - (Integer) Deprecated.
      # * +:cidr_ip+ - (String) Deprecated.
      # * +:ip_permissions+ - (Array<Hash>) List of IP permissions to authorize
      #   on the specified security group. Specifying permissions through IP
      #   permissions is the preferred way of authorizing permissions since it
      #   offers more flexibility and control.
      #   * +:ip_protocol+ - (String) The IP protocol of this permission. Valid
      #     protocol values: tcp, udp, icmp
      #   * +:from_port+ - (Integer) Start of port range for the TCP and UDP
      #     protocols, or an ICMP type number. An ICMP type number of -1
      #     indicates a wildcard (i.e., any ICMP type number).
      #   * +:to_port+ - (Integer) End of port range for the TCP and UDP
      #     protocols, or an ICMP code. An ICMP code of -1 indicates a wildcard
      #     (i.e., any ICMP code).
      #   * +:user_id_group_pairs+ - (Array<Hash>) The list of AWS user IDs and
      #     groups included in this permission.
      #     * +:user_id+ - (String) The AWS user ID of an account.
      #     * +:group_name+ - (String) Name of the security group in the
      #       specified AWS account. Cannot be used when specifying a CIDR IP
      #       address range.
      #     * +:group_id+ - (String) ID of the security group in the specified
      #       AWS account. Cannot be used when specifying a CIDR IP address
      #       range.
      #   * +:ip_ranges+ - (Array<Hash>) The list of CIDR IP ranges included in
      #     this permission.
      #     * +:cidr_ip+ - (String) The list of CIDR IP ranges.
      #
      # === Response Structure:
      #
      # This method returns no response data.
      #
      # @return [Core::Response]
      #
      define_client_method :authorize_security_group_egress, 'AuthorizeSecurityGroupEgress'

      # Calls the AuthorizeSecurityGroupIngress API operation.
      # @method authorize_security_group_ingress(options = {})
      #
      # === Options:
      #
      # * +:group_name+ - (String) Name of the standard (EC2) security group to
      #   modify. The group must belong to your account. Can be used instead of
      #   GroupID for standard (EC2) security groups.
      # * +:group_id+ - (String) ID of the standard (EC2) or VPC security group
      #   to modify. The group must belong to your account. Required for VPC
      #   security groups; can be used instead of GroupName for standard (EC2)
      #   security groups.
      # * +:source_security_group_name+ - (String) Deprecated
      # * +:source_security_group_owner_id+ - (String) Deprecated
      # * +:ip_protocol+ - (String) Deprecated
      # * +:from_port+ - (Integer) Deprecated
      # * +:to_port+ - (Integer) Deprecated
      # * +:cidr_ip+ - (String) Deprecated
      # * +:ip_permissions+ - (Array<Hash>) List of IP permissions to authorize
      #   on the specified security group. Specifying permissions through IP
      #   permissions is the preferred way of authorizing permissions since it
      #   offers more flexibility and control.
      #   * +:ip_protocol+ - (String) The IP protocol of this permission. Valid
      #     protocol values: tcp, udp, icmp
      #   * +:from_port+ - (Integer) Start of port range for the TCP and UDP
      #     protocols, or an ICMP type number. An ICMP type number of -1
      #     indicates a wildcard (i.e., any ICMP type number).
      #   * +:to_port+ - (Integer) End of port range for the TCP and UDP
      #     protocols, or an ICMP code. An ICMP code of -1 indicates a wildcard
      #     (i.e., any ICMP code).
      #   * +:user_id_group_pairs+ - (Array<Hash>) The list of AWS user IDs and
      #     groups included in this permission.
      #     * +:user_id+ - (String) The AWS user ID of an account.
      #     * +:group_name+ - (String) Name of the security group in the
      #       specified AWS account. Cannot be used when specifying a CIDR IP
      #       address range.
      #     * +:group_id+ - (String) ID of the security group in the specified
      #       AWS account. Cannot be used when specifying a CIDR IP address
      #       range.
      #   * +:ip_ranges+ - (Array<Hash>) The list of CIDR IP ranges included in
      #     this permission.
      #     * +:cidr_ip+ - (String) The list of CIDR IP ranges.
      #
      # === Response Structure:
      #
      # This method returns no response data.
      #
      # @return [Core::Response]
      #
      define_client_method :authorize_security_group_ingress, 'AuthorizeSecurityGroupIngress'

      # Calls the BundleInstance API operation.
      # @method bundle_instance(options = {})
      #
      # === Options:
      #
      # * +:instance_id+ - *required* - (String) The ID of the instance to
      #   bundle.
      # * +:storage+ - *required* - (Hash)
      #   * +:s3+ - (Hash) The details of S3 storage for bundling a Windows
      #     instance.
      #     * +:bucket+ - (String) The bucket in which to store the AMI. You
      #       can specify a bucket that you already own or a new bucket that
      #       Amazon EC2 creates on your behalf. If you specify a bucket that
      #       belongs to someone else, Amazon EC2 returns an error.
      #     * +:prefix+ - (String) The prefix to use when storing the AMI in
      #       S3.
      #     * +:aws_access_key_id+ - (String) The Access Key ID of the owner of
      #       the Amazon S3 bucket.
      #     * +:upload_policy+ - (String) A Base64-encoded Amazon S3 upload
      #       policy that gives Amazon EC2 permission to upload items into
      #       Amazon S3 on the user's behalf.
      #     * +:upload_policy_signature+ - (String) The signature of the Base64
      #       encoded JSON document.
      #
      # === Response Structure:
      #
      # * +:bundle_instance_task+ - (Hash)
      #   * +:instance_id+ - (String)
      #   * +:bundle_id+ - (String)
      #   * +:state+ - (String)
      #   * +:start_time+ - (Time)
      #   * +:update_time+ - (Time)
      #   * +:storage+ - (Hash)
      #     * +:s3+ - (Hash)
      #       * +:bucket+ - (String)
      #       * +:prefix+ - (String)
      #       * +:aws_access_key_id+ - (String)
      #       * +:upload_policy+ - (String)
      #       * +:upload_policy_signature+ - (String)
      #   * +:progress+ - (String)
      #   * +:error+ - (Hash)
      #     * +:code+ - (String)
      #     * +:message+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :bundle_instance, 'BundleInstance'

      # Calls the CancelBundleTask API operation.
      # @method cancel_bundle_task(options = {})
      #
      # === Options:
      #
      # * +:bundle_id+ - *required* - (String) The ID of the bundle task to
      #   cancel.
      #
      # === Response Structure:
      #
      # * +:bundle_instance_task+ - (Hash)
      #   * +:instance_id+ - (String)
      #   * +:bundle_id+ - (String)
      #   * +:state+ - (String)
      #   * +:start_time+ - (Time)
      #   * +:update_time+ - (Time)
      #   * +:storage+ - (Hash)
      #     * +:s3+ - (Hash)
      #       * +:bucket+ - (String)
      #       * +:prefix+ - (String)
      #       * +:aws_access_key_id+ - (String)
      #       * +:upload_policy+ - (String)
      #       * +:upload_policy_signature+ - (String)
      #   * +:progress+ - (String)
      #   * +:error+ - (Hash)
      #     * +:code+ - (String)
      #     * +:message+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :cancel_bundle_task, 'CancelBundleTask'

      # Calls the CancelConversionTask API operation.
      # @method cancel_conversion_task(options = {})
      #
      # === Options:
      #
      # * +:conversion_task_id+ - *required* - (String)
      # * +:reason_message+ - (String)
      #
      # === Response Structure:
      #
      # This method returns no response data.
      #
      # @return [Core::Response]
      #
      define_client_method :cancel_conversion_task, 'CancelConversionTask'

      # Calls the CancelSpotInstanceRequests API operation.
      # @method cancel_spot_instance_requests(options = {})
      #
      # === Options:
      #
      # * +:spot_instance_request_ids+ - *required* - (Array<String>) Specifies
      #   the ID of the Spot Instance request.
      #
      # === Response Structure:
      #
      # * +:spot_instance_request_set+ - (Array<Hash>)
      #   * +:spot_instance_request_id+ - (String)
      #   * +:state+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :cancel_spot_instance_requests, 'CancelSpotInstanceRequests'

      # Calls the ConfirmProductInstance API operation.
      # @method confirm_product_instance(options = {})
      #
      # === Options:
      #
      # * +:product_code+ - *required* - (String) The product code to confirm.
      # * +:instance_id+ - *required* - (String) The ID of the instance to
      #   confirm.
      #
      # === Response Structure:
      #
      # * +:owner_id+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :confirm_product_instance, 'ConfirmProductInstance'

      # Calls the CreateCustomerGateway API operation.
      # @method create_customer_gateway(options = {})
      #
      # === Options:
      #
      # * +:type+ - *required* - (String) The type of VPN connection this
      #   customer gateway supports.
      # * +:public_ip+ - *required* - (String) The Internet-routable IP address
      #   for the customer gateway's outside interface. The address must be
      #   static
      # * +:bgp_asn+ - *required* - (Integer) The customer gateway's Border
      #   Gateway Protocol (BGP) Autonomous System Number (ASN).
      #
      # === Response Structure:
      #
      # * +:customer_gateway+ - (Hash)
      #   * +:customer_gateway_id+ - (String)
      #   * +:state+ - (String)
      #   * +:type+ - (String)
      #   * +:ip_address+ - (String)
      #   * +:bgp_asn+ - (String)
      #   * +:tag_set+ - (Array<Hash>)
      #     * +:key+ - (String)
      #     * +:value+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :create_customer_gateway, 'CreateCustomerGateway'

      # Calls the CreateDhcpOptions API operation.
      # @method create_dhcp_options(options = {})
      #
      # === Options:
      #
      # * +:dhcp_configurations+ - *required* - (Array<Hash>) A set of one or
      #   more DHCP configurations.
      #   * +:key+ - (String) Contains the name of a DHCP option.
      #   * +:values+ - (Array<String>) Contains a set of values for a DHCP
      #     option.
      #
      # === Response Structure:
      #
      # * +:dhcp_options+ - (Hash)
      #   * +:dhcp_options_id+ - (String)
      #   * +:dhcp_configuration_set+ - (Array<Hash>)
      #     * +:key+ - (String)
      #     * +:value_set+ - (Array<String>)
      #   * +:tag_set+ - (Array<Hash>)
      #     * +:key+ - (String)
      #     * +:value+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :create_dhcp_options, 'CreateDhcpOptions'

      # Calls the CreateImage API operation.
      # @method create_image(options = {})
      #
      # === Options:
      #
      # * +:instance_id+ - *required* - (String) The ID of the instance from
      #   which to create the new image.
      # * +:name+ - *required* - (String) The name for the new AMI being
      #   created.
      # * +:description+ - (String) The description for the new AMI being
      #   created.
      # * +:no_reboot+ - (Boolean) By default this property is set to +false+ ,
      #   which means Amazon EC2 attempts to cleanly shut down the instance
      #   before image creation and reboots the instance afterwards. When set
      #   to +true+ , Amazon EC2 will not shut down the instance before
      #   creating the image. When this option is used, file system integrity
      #   on the created image cannot be guaranteed.
      #
      # === Response Structure:
      #
      # * +:image_id+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :create_image, 'CreateImage'

      # Calls the CreateInternetGateway API operation.
      # @method create_internet_gateway(options = {})
      #
      # === Options:
      #
      # This method accepts no options.
      #
      # === Response Structure:
      #
      # * +:internet_gateway+ - (Hash)
      #   * +:internet_gateway_id+ - (String)
      #   * +:attachment_set+ - (Array<Hash>)
      #     * +:vpc_id+ - (String)
      #     * +:state+ - (String)
      #   * +:tag_set+ - (Array<Hash>)
      #     * +:key+ - (String)
      #     * +:value+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :create_internet_gateway, 'CreateInternetGateway'

      # Calls the CreateKeyPair API operation.
      # @method create_key_pair(options = {})
      #
      # === Options:
      #
      # * +:key_name+ - *required* - (String) The unique name for the new key
      #   pair.
      #
      # === Response Structure:
      #
      # * +:key_pair+ - (Hash)
      #   * +:key_name+ - (String)
      #   * +:key_fingerprint+ - (String)
      #   * +:key_material+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :create_key_pair, 'CreateKeyPair'

      # Calls the CreateNetworkAcl API operation.
      # @method create_network_acl(options = {})
      #
      # === Options:
      #
      # * +:vpc_id+ - *required* - (String) The ID of the VPC where the network
      #   ACL will be created.
      #
      # === Response Structure:
      #
      # * +:network_acl+ - (Hash)
      #   * +:network_acl_id+ - (String)
      #   * +:vpc_id+ - (String)
      #   * +:default+ - (Boolean)
      #   * +:entry_set+ - (Array<Hash>)
      #     * +:rule_number+ - (Integer)
      #     * +:protocol+ - (String)
      #     * +:rule_action+ - (String)
      #     * +:egress+ - (Boolean)
      #     * +:cidr_block+ - (String)
      #     * +:icmp_type_code+ - (Hash)
      #       * +:type+ - (Integer)
      #       * +:code+ - (Integer)
      #     * +:port_range+ - (Hash)
      #       * +:from+ - (Integer)
      #       * +:to+ - (Integer)
      #   * +:association_set+ - (Array<Hash>)
      #     * +:network_acl_association_id+ - (String)
      #     * +:network_acl_id+ - (String)
      #     * +:subnet_id+ - (String)
      #   * +:tag_set+ - (Array<Hash>)
      #     * +:key+ - (String)
      #     * +:value+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :create_network_acl, 'CreateNetworkAcl'

      # Calls the CreateNetworkAclEntry API operation.
      # @method create_network_acl_entry(options = {})
      #
      # === Options:
      #
      # * +:network_acl_id+ - *required* - (String) ID of the ACL where the
      #   entry will be created.
      # * +:rule_number+ - *required* - (Integer) Rule number to assign to the
      #   entry (e.g., 100). ACL entries are processed in ascending order by
      #   rule number.
      # * +:protocol+ - *required* - (String) IP protocol the rule applies to.
      #   Valid Values: tcp, udp, icmp or an IP protocol number.
      # * +:rule_action+ - *required* - (String) Whether to allow or deny
      #   traffic that matches the rule.
      # * +:egress+ - *required* - (Boolean) Whether this rule applies to
      #   egress traffic from the subnet ( +true+ ) or ingress traffic to the
      #   subnet ( +false+ ).
      # * +:cidr_block+ - *required* - (String) The CIDR range to allow or
      #   deny, in CIDR notation (e.g., 172.16.0.0/24).
      # * +:icmp_type_code+ - (Hash) ICMP values.
      #   * +:type+ - (Integer) For the ICMP protocol, the ICMP type. A value
      #     of -1 is a wildcard meaning all types. Required if specifying icmp
      #     for the protocol.
      #   * +:code+ - (Integer) For the ICMP protocol, the ICMP code. A value
      #     of -1 is a wildcard meaning all codes. Required if specifying icmp
      #     for the protocol.
      # * +:port_range+ - (Hash) Port ranges.
      #   * +:from+ - (Integer) The first port in the range. Required if
      #     specifying tcp or udp for the protocol.
      #   * +:to+ - (Integer) The last port in the range. Required if
      #     specifying tcp or udp for the protocol.
      #
      # === Response Structure:
      #
      # This method returns no response data.
      #
      # @return [Core::Response]
      #
      define_client_method :create_network_acl_entry, 'CreateNetworkAclEntry'

      # Calls the CreateNetworkInterface API operation.
      # @method create_network_interface(options = {})
      #
      # === Options:
      #
      # * +:subnet_id+ - *required* - (String)
      # * +:description+ - (String)
      # * +:private_ip_address+ - (String)
      # * +:groups+ - (Array<String>)
      #
      # === Response Structure:
      #
      # * +:network_interface+ - (Hash)
      #   * +:network_interface_id+ - (String)
      #   * +:subnet_id+ - (String)
      #   * +:vpc_id+ - (String)
      #   * +:availability_zone+ - (String)
      #   * +:description+ - (String)
      #   * +:owner_id+ - (String)
      #   * +:requester_id+ - (String)
      #   * +:requester_managed+ - (Boolean)
      #   * +:status+ - (String)
      #   * +:mac_address+ - (String)
      #   * +:private_ip_address+ - (String)
      #   * +:private_dns_name+ - (String)
      #   * +:source_dest_check+ - (Boolean)
      #   * +:group_set+ - (Array<Hash>)
      #     * +:group_name+ - (String)
      #     * +:group_id+ - (String)
      #   * +:attachment+ - (Hash)
      #     * +:attachment_id+ - (String)
      #     * +:instance_id+ - (String)
      #     * +:instance_owner_id+ - (String)
      #     * +:device_index+ - (Integer)
      #     * +:status+ - (String)
      #     * +:attach_time+ - (Time)
      #     * +:delete_on_termination+ - (Boolean)
      #   * +:association+ - (Hash)
      #     * +:public_ip+ - (String)
      #     * +:ip_owner_id+ - (String)
      #     * +:allocation_id+ - (String)
      #     * +:association_id+ - (String)
      #   * +:tag_set+ - (Array<Hash>)
      #     * +:key+ - (String)
      #     * +:value+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :create_network_interface, 'CreateNetworkInterface'

      # Calls the CreatePlacementGroup API operation.
      # @method create_placement_group(options = {})
      #
      # === Options:
      #
      # * +:group_name+ - *required* - (String) The name of the PlacementGroup.
      # * +:strategy+ - *required* - (String) The PlacementGroup strategy.
      #
      # === Response Structure:
      #
      # This method returns no response data.
      #
      # @return [Core::Response]
      #
      define_client_method :create_placement_group, 'CreatePlacementGroup'

      # Calls the CreateRoute API operation.
      # @method create_route(options = {})
      #
      # === Options:
      #
      # * +:route_table_id+ - *required* - (String) The ID of the route table
      #   where the route will be added.
      # * +:destination_cidr_block+ - *required* - (String) The CIDR address
      #   block used for the destination match. For example: 0.0.0.0/0. Routing
      #   decisions are based on the most specific match.
      # * +:gateway_id+ - (String) The ID of a VPN or Internet gateway attached
      #   to your VPC. You must provide either GatewayId or InstanceId, but not
      #   both.
      # * +:instance_id+ - (String) The ID of a NAT instance in your VPC. You
      #   must provide either GatewayId or InstanceId, but not both.
      # * +:network_interface_id+ - (String)
      #
      # === Response Structure:
      #
      # This method returns no response data.
      #
      # @return [Core::Response]
      #
      define_client_method :create_route, 'CreateRoute'

      # Calls the CreateRouteTable API operation.
      # @method create_route_table(options = {})
      #
      # === Options:
      #
      # * +:vpc_id+ - *required* - (String) The ID of the VPC where the route
      #   table will be created.
      #
      # === Response Structure:
      #
      # * +:route_table+ - (Hash)
      #   * +:route_table_id+ - (String)
      #   * +:vpc_id+ - (String)
      #   * +:route_set+ - (Array<Hash>)
      #     * +:destination_cidr_block+ - (String)
      #     * +:gateway_id+ - (String)
      #     * +:instance_id+ - (String)
      #     * +:instance_owner_id+ - (String)
      #     * +:network_interface_id+ - (String)
      #     * +:state+ - (String)
      #   * +:association_set+ - (Array<Hash>)
      #     * +:route_table_association_id+ - (String)
      #     * +:route_table_id+ - (String)
      #     * +:subnet_id+ - (String)
      #     * +:main+ - (Boolean)
      #   * +:tag_set+ - (Array<Hash>)
      #     * +:key+ - (String)
      #     * +:value+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :create_route_table, 'CreateRouteTable'

      # Calls the CreateSecurityGroup API operation.
      # @method create_security_group(options = {})
      #
      # === Options:
      #
      # * +:group_name+ - *required* - (String) Name of the security group.
      # * +:description+ - *required* - (String) Description of the group. This
      #   is informational only.
      # * +:vpc_id+ - (String) ID of the VPC.
      #
      # === Response Structure:
      #
      # * +:group_id+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :create_security_group, 'CreateSecurityGroup'

      # Calls the CreateSnapshot API operation.
      # @method create_snapshot(options = {})
      #
      # === Options:
      #
      # * +:volume_id+ - *required* - (String) The ID of the volume from which
      #   to create the snapshot.
      # * +:description+ - (String) The description for the new snapshot.
      #
      # === Response Structure:
      #
      # * +:snapshot_id+ - (String)
      # * +:volume_id+ - (String)
      # * +:status+ - (String)
      # * +:start_time+ - (Time)
      # * +:progress+ - (String)
      # * +:owner_id+ - (String)
      # * +:description+ - (String)
      # * +:volume_size+ - (Integer)
      # * +:owner_alias+ - (String)
      # * +:tag_set+ - (Array<Hash>)
      #   * +:key+ - (String)
      #   * +:value+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :create_snapshot, 'CreateSnapshot'

      # Calls the CreateSpotDatafeedSubscription API operation.
      # @method create_spot_datafeed_subscription(options = {})
      #
      # === Options:
      #
      # * +:bucket+ - *required* - (String) The Amazon S3 bucket in which to
      #   store the Spot Instance datafeed.
      # * +:prefix+ - (String) The prefix that is prepended to datafeed files.
      #
      # === Response Structure:
      #
      # * +:spot_datafeed_subscription+ - (Hash)
      #   * +:owner_id+ - (String)
      #   * +:bucket+ - (String)
      #   * +:prefix+ - (String)
      #   * +:state+ - (String)
      #   * +:fault+ - (Hash)
      #     * +:code+ - (String)
      #     * +:message+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :create_spot_datafeed_subscription, 'CreateSpotDatafeedSubscription'

      # Calls the CreateSubnet API operation.
      # @method create_subnet(options = {})
      #
      # === Options:
      #
      # * +:vpc_id+ - *required* - (String) The ID of the VPC to create the
      #   subnet in.
      # * +:cidr_block+ - *required* - (String) The CIDR block the subnet is to
      #   cover.
      # * +:availability_zone+ - (String) The Availability Zone to create the
      #   subnet in.
      #
      # === Response Structure:
      #
      # * +:subnet+ - (Hash)
      #   * +:subnet_id+ - (String)
      #   * +:state+ - (String)
      #   * +:vpc_id+ - (String)
      #   * +:cidr_block+ - (String)
      #   * +:available_ip_address_count+ - (Integer)
      #   * +:availability_zone+ - (String)
      #   * +:tag_set+ - (Array<Hash>)
      #     * +:key+ - (String)
      #     * +:value+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :create_subnet, 'CreateSubnet'

      # Calls the CreateTags API operation.
      # @method create_tags(options = {})
      #
      # === Options:
      #
      # * +:resources+ - *required* - (Array<String>) One or more IDs of
      #   resources to tag. This could be the ID of an AMI, an instance, an EBS
      #   volume, or snapshot, etc.
      # * +:tags+ - *required* - (Array<Hash>) The tags to add or overwrite for
      #   the specified resources. Each tag item consists of a key-value pair.
      #   * +:key+ - (String) The tag's key.
      #   * +:value+ - (String) The tag's value.
      #
      # === Response Structure:
      #
      # This method returns no response data.
      #
      # @return [Core::Response]
      #
      define_client_method :create_tags, 'CreateTags'

      # Calls the CreateVolume API operation.
      # @method create_volume(options = {})
      #
      # === Options:
      #
      # * +:size+ - (Integer) The size of the volume, in gigabytes. Required if
      #   you are not creating a volume from a snapshot.
      # * +:snapshot_id+ - (String) The ID of the snapshot from which to create
      #   the new volume.
      # * +:availability_zone+ - *required* - (String) The Availability Zone in
      #   which to create the new volume.
      #
      # === Response Structure:
      #
      # * +:volume_id+ - (String)
      # * +:size+ - (Integer)
      # * +:snapshot_id+ - (String)
      # * +:availability_zone+ - (String)
      # * +:status+ - (String)
      # * +:create_time+ - (Time)
      # * +:attachment_set+ - (Array<Hash>)
      #   * +:volume_id+ - (String)
      #   * +:instance_id+ - (String)
      #   * +:device+ - (String)
      #   * +:status+ - (String)
      #   * +:attach_time+ - (Time)
      #   * +:delete_on_termination+ - (Boolean)
      # * +:tag_set+ - (Array<Hash>)
      #   * +:key+ - (String)
      #   * +:value+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :create_volume, 'CreateVolume'

      # Calls the CreateVpc API operation.
      # @method create_vpc(options = {})
      #
      # === Options:
      #
      # * +:cidr_block+ - *required* - (String) A valid CIDR block.
      # * +:instance_tenancy+ - (String) The allowed tenancy of instances
      #   launched into the VPC. A value of default means instances can be
      #   launched with any tenancy; a value of dedicated means instances must
      #   be launched with tenancy as dedicated.
      #
      # === Response Structure:
      #
      # * +:vpc+ - (Hash)
      #   * +:vpc_id+ - (String)
      #   * +:state+ - (String)
      #   * +:cidr_block+ - (String)
      #   * +:dhcp_options_id+ - (String)
      #   * +:tag_set+ - (Array<Hash>)
      #     * +:key+ - (String)
      #     * +:value+ - (String)
      #   * +:instance_tenancy+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :create_vpc, 'CreateVpc'

      # Calls the CreateVpnConnection API operation.
      # @method create_vpn_connection(options = {})
      #
      # === Options:
      #
      # * +:type+ - *required* - (String) The type of VPN connection.
      # * +:customer_gateway_id+ - *required* - (String) The ID of the customer
      #   gateway.
      # * +:vpn_gateway_id+ - *required* - (String) The ID of the VPN gateway.
      #
      # === Response Structure:
      #
      # * +:vpn_connection+ - (Hash)
      #   * +:vpn_connection_id+ - (String)
      #   * +:state+ - (String)
      #   * +:customer_gateway_configuration+ - (String)
      #   * +:type+ - (String)
      #   * +:customer_gateway_id+ - (String)
      #   * +:vpn_gateway_id+ - (String)
      #   * +:tag_set+ - (Array<Hash>)
      #     * +:key+ - (String)
      #     * +:value+ - (String)
      #   * +:vgw_telemetry+ - (Array<Hash>)
      #     * +:outside_ip_address+ - (String)
      #     * +:status+ - (String)
      #     * +:last_status_change+ - (Time)
      #     * +:status_message+ - (String)
      #     * +:accepted_route_count+ - (Integer)
      #
      # @return [Core::Response]
      #
      define_client_method :create_vpn_connection, 'CreateVpnConnection'

      # Calls the CreateVpnGateway API operation.
      # @method create_vpn_gateway(options = {})
      #
      # === Options:
      #
      # * +:type+ - *required* - (String) The type of VPN connection this VPN
      #   gateway supports.
      # * +:availability_zone+ - (String) The Availability Zone in which to
      #   create the VPN gateway.
      #
      # === Response Structure:
      #
      # * +:vpn_gateway+ - (Hash)
      #   * +:vpn_gateway_id+ - (String)
      #   * +:state+ - (String)
      #   * +:vpn_type+ - (String)
      #   * +:availability_zone+ - (String)
      #   * +:attachments+ - (Array<Hash>)
      #     * +:vpc_id+ - (String)
      #     * +:state+ - (String)
      #   * +:tag_set+ - (Array<Hash>)
      #     * +:key+ - (String)
      #     * +:value+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :create_vpn_gateway, 'CreateVpnGateway'

      # Calls the DeactivateLicense API operation.
      # @method deactivate_license(options = {})
      #
      # === Options:
      #
      # * +:license_id+ - *required* - (String) Specifies the ID for the
      #   specific license to deactivate against.
      # * +:capacity+ - *required* - (Integer) Specifies the amount of capacity
      #   to deactivate against the license.
      #
      # === Response Structure:
      #
      # This method returns no response data.
      #
      # @return [Core::Response]
      #
      define_client_method :deactivate_license, 'DeactivateLicense'

      # Calls the DeleteCustomerGateway API operation.
      # @method delete_customer_gateway(options = {})
      #
      # === Options:
      #
      # * +:customer_gateway_id+ - *required* - (String) The ID of the customer
      #   gateway to delete.
      #
      # === Response Structure:
      #
      # This method returns no response data.
      #
      # @return [Core::Response]
      #
      define_client_method :delete_customer_gateway, 'DeleteCustomerGateway'

      # Calls the DeleteDhcpOptions API operation.
      # @method delete_dhcp_options(options = {})
      #
      # === Options:
      #
      # * +:dhcp_options_id+ - *required* - (String) The ID of the DHCP options
      #   set to delete.
      #
      # === Response Structure:
      #
      # This method returns no response data.
      #
      # @return [Core::Response]
      #
      define_client_method :delete_dhcp_options, 'DeleteDhcpOptions'

      # Calls the DeleteInternetGateway API operation.
      # @method delete_internet_gateway(options = {})
      #
      # === Options:
      #
      # * +:internet_gateway_id+ - *required* - (String) The ID of the Internet
      #   gateway to be deleted.
      #
      # === Response Structure:
      #
      # This method returns no response data.
      #
      # @return [Core::Response]
      #
      define_client_method :delete_internet_gateway, 'DeleteInternetGateway'

      # Calls the DeleteKeyPair API operation.
      # @method delete_key_pair(options = {})
      #
      # === Options:
      #
      # * +:key_name+ - *required* - (String) The name of the Amazon EC2 key
      #   pair to delete.
      #
      # === Response Structure:
      #
      # This method returns no response data.
      #
      # @return [Core::Response]
      #
      define_client_method :delete_key_pair, 'DeleteKeyPair'

      # Calls the DeleteNetworkAcl API operation.
      # @method delete_network_acl(options = {})
      #
      # === Options:
      #
      # * +:network_acl_id+ - *required* - (String) The ID of the network ACL
      #   to be deleted.
      #
      # === Response Structure:
      #
      # This method returns no response data.
      #
      # @return [Core::Response]
      #
      define_client_method :delete_network_acl, 'DeleteNetworkAcl'

      # Calls the DeleteNetworkAclEntry API operation.
      # @method delete_network_acl_entry(options = {})
      #
      # === Options:
      #
      # * +:network_acl_id+ - *required* - (String) ID of the network ACL.
      # * +:rule_number+ - *required* - (Integer) Rule number for the entry to
      #   delete.
      # * +:egress+ - *required* - (Boolean) Whether the rule to delete is an
      #   egress rule ( +true+ ) or ingress rule ( +false+ ).
      #
      # === Response Structure:
      #
      # This method returns no response data.
      #
      # @return [Core::Response]
      #
      define_client_method :delete_network_acl_entry, 'DeleteNetworkAclEntry'

      # Calls the DeleteNetworkInterface API operation.
      # @method delete_network_interface(options = {})
      #
      # === Options:
      #
      # * +:network_interface_id+ - *required* - (String)
      #
      # === Response Structure:
      #
      # This method returns no response data.
      #
      # @return [Core::Response]
      #
      define_client_method :delete_network_interface, 'DeleteNetworkInterface'

      # Calls the DeletePlacementGroup API operation.
      # @method delete_placement_group(options = {})
      #
      # === Options:
      #
      # * +:group_name+ - *required* - (String) The name of the PlacementGroup
      #   to delete.
      #
      # === Response Structure:
      #
      # This method returns no response data.
      #
      # @return [Core::Response]
      #
      define_client_method :delete_placement_group, 'DeletePlacementGroup'

      # Calls the DeleteRoute API operation.
      # @method delete_route(options = {})
      #
      # === Options:
      #
      # * +:route_table_id+ - *required* - (String) The ID of the route table
      #   where the route will be deleted.
      # * +:destination_cidr_block+ - *required* - (String) The CIDR range for
      #   the route you want to delete. The value you specify must exactly
      #   match the CIDR for the route you want to delete.
      #
      # === Response Structure:
      #
      # This method returns no response data.
      #
      # @return [Core::Response]
      #
      define_client_method :delete_route, 'DeleteRoute'

      # Calls the DeleteRouteTable API operation.
      # @method delete_route_table(options = {})
      #
      # === Options:
      #
      # * +:route_table_id+ - *required* - (String) The ID of the route table
      #   to be deleted.
      #
      # === Response Structure:
      #
      # This method returns no response data.
      #
      # @return [Core::Response]
      #
      define_client_method :delete_route_table, 'DeleteRouteTable'

      # Calls the DeleteSecurityGroup API operation.
      # @method delete_security_group(options = {})
      #
      # === Options:
      #
      # * +:group_name+ - (String) The name of the Amazon EC2 security group to
      #   delete.
      # * +:group_id+ - (String) The ID of the Amazon EC2 security group to
      #   delete.
      #
      # === Response Structure:
      #
      # This method returns no response data.
      #
      # @return [Core::Response]
      #
      define_client_method :delete_security_group, 'DeleteSecurityGroup'

      # Calls the DeleteSnapshot API operation.
      # @method delete_snapshot(options = {})
      #
      # === Options:
      #
      # * +:snapshot_id+ - *required* - (String) The ID of the snapshot to
      #   delete.
      #
      # === Response Structure:
      #
      # This method returns no response data.
      #
      # @return [Core::Response]
      #
      define_client_method :delete_snapshot, 'DeleteSnapshot'

      # Calls the DeleteSpotDatafeedSubscription API operation.
      # @method delete_spot_datafeed_subscription(options = {})
      #
      # === Options:
      #
      # This method accepts no options.
      #
      # === Response Structure:
      #
      # This method returns no response data.
      #
      # @return [Core::Response]
      #
      define_client_method :delete_spot_datafeed_subscription, 'DeleteSpotDatafeedSubscription'

      # Calls the DeleteSubnet API operation.
      # @method delete_subnet(options = {})
      #
      # === Options:
      #
      # * +:subnet_id+ - *required* - (String) The ID of the subnet you want to
      #   delete.
      #
      # === Response Structure:
      #
      # This method returns no response data.
      #
      # @return [Core::Response]
      #
      define_client_method :delete_subnet, 'DeleteSubnet'

      # Calls the DeleteTags API operation.
      # @method delete_tags(options = {})
      #
      # === Options:
      #
      # * +:resources+ - *required* - (Array<String>) A list of one or more
      #   resource IDs. This could be the ID of an AMI, an instance, an EBS
      #   volume, or snapshot, etc.
      # * +:tags+ - (Array<Hash>) The tags to delete from the specified
      #   resources. Each tag item consists of a key-value pair. If a tag is
      #   specified without a value, the tag and all of its values are deleted.
      #   * +:key+ - (String) The tag's key.
      #   * +:value+ - (String) The tag's value.
      #
      # === Response Structure:
      #
      # This method returns no response data.
      #
      # @return [Core::Response]
      #
      define_client_method :delete_tags, 'DeleteTags'

      # Calls the DeleteVolume API operation.
      # @method delete_volume(options = {})
      #
      # === Options:
      #
      # * +:volume_id+ - *required* - (String) The ID of the EBS volume to
      #   delete.
      #
      # === Response Structure:
      #
      # This method returns no response data.
      #
      # @return [Core::Response]
      #
      define_client_method :delete_volume, 'DeleteVolume'

      # Calls the DeleteVpc API operation.
      # @method delete_vpc(options = {})
      #
      # === Options:
      #
      # * +:vpc_id+ - *required* - (String) The ID of the VPC you want to
      #   delete.
      #
      # === Response Structure:
      #
      # This method returns no response data.
      #
      # @return [Core::Response]
      #
      define_client_method :delete_vpc, 'DeleteVpc'

      # Calls the DeleteVpnConnection API operation.
      # @method delete_vpn_connection(options = {})
      #
      # === Options:
      #
      # * +:vpn_connection_id+ - *required* - (String) The ID of the VPN
      #   connection to delete
      #
      # === Response Structure:
      #
      # This method returns no response data.
      #
      # @return [Core::Response]
      #
      define_client_method :delete_vpn_connection, 'DeleteVpnConnection'

      # Calls the DeleteVpnGateway API operation.
      # @method delete_vpn_gateway(options = {})
      #
      # === Options:
      #
      # * +:vpn_gateway_id+ - *required* - (String) The ID of the VPN gateway
      #   to delete.
      #
      # === Response Structure:
      #
      # This method returns no response data.
      #
      # @return [Core::Response]
      #
      define_client_method :delete_vpn_gateway, 'DeleteVpnGateway'

      # Calls the DeregisterImage API operation.
      # @method deregister_image(options = {})
      #
      # === Options:
      #
      # * +:image_id+ - *required* - (String) The ID of the AMI to deregister.
      #
      # === Response Structure:
      #
      # This method returns no response data.
      #
      # @return [Core::Response]
      #
      define_client_method :deregister_image, 'DeregisterImage'

      # Calls the DescribeAddresses API operation.
      # @method describe_addresses(options = {})
      #
      # === Options:
      #
      # * +:public_ips+ - (Array<String>) The optional list of Elastic IP
      #   addresses to describe.
      # * +:filters+ - (Array<Hash>) A list of filters used to match properties
      #   for Addresses. For a complete reference to the available filter keys
      #   for this operation, see the Amazon EC2 API reference.
      #   * +:name+ - (String) Specifies the name of the filter.
      #   * +:values+ - (Array<String>) Contains one or more values for the
      #     filter.
      # * +:allocation_ids+ - (Array<String>)
      #
      # === Response Structure:
      #
      # * +:addresses_set+ - (Array<Hash>)
      #   * +:instance_id+ - (String)
      #   * +:public_ip+ - (String)
      #   * +:allocation_id+ - (String)
      #   * +:association_id+ - (String)
      #   * +:domain+ - (String)
      #   * +:network_interface_id+ - (String)
      #   * +:network_interface_owner_id+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :describe_addresses, 'DescribeAddresses'

      # Calls the DescribeAvailabilityZones API operation.
      # @method describe_availability_zones(options = {})
      #
      # === Options:
      #
      # * +:zone_names+ - (Array<String>) A list of the availability zone names
      #   to describe.
      # * +:filters+ - (Array<Hash>) A list of filters used to match properties
      #   for AvailabilityZones. For a complete reference to the available
      #   filter keys for this operation, see the Amazon EC2 API reference.
      #   * +:name+ - (String) Specifies the name of the filter.
      #   * +:values+ - (Array<String>) Contains one or more values for the
      #     filter.
      #
      # === Response Structure:
      #
      # * +:availability_zone_info+ - (Array<Hash>)
      #   * +:zone_name+ - (String)
      #   * +:zone_state+ - (String)
      #   * +:region_name+ - (String)
      #   * +:message_set+ - (Array<Hash>)
      #     * +:message+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :describe_availability_zones, 'DescribeAvailabilityZones'

      # Calls the DescribeBundleTasks API operation.
      # @method describe_bundle_tasks(options = {})
      #
      # === Options:
      #
      # * +:bundle_ids+ - (Array<String>) The list of bundle task IDs to
      #   describe.
      # * +:filters+ - (Array<Hash>) A list of filters used to match properties
      #   for BundleTasks. For a complete reference to the available filter
      #   keys for this operation, see the Amazon EC2 API reference.
      #   * +:name+ - (String) Specifies the name of the filter.
      #   * +:values+ - (Array<String>) Contains one or more values for the
      #     filter.
      #
      # === Response Structure:
      #
      # * +:bundle_instance_tasks_set+ - (Array<Hash>)
      #   * +:instance_id+ - (String)
      #   * +:bundle_id+ - (String)
      #   * +:state+ - (String)
      #   * +:start_time+ - (Time)
      #   * +:update_time+ - (Time)
      #   * +:storage+ - (Hash)
      #     * +:s3+ - (Hash)
      #       * +:bucket+ - (String)
      #       * +:prefix+ - (String)
      #       * +:aws_access_key_id+ - (String)
      #       * +:upload_policy+ - (String)
      #       * +:upload_policy_signature+ - (String)
      #   * +:progress+ - (String)
      #   * +:error+ - (Hash)
      #     * +:code+ - (String)
      #     * +:message+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :describe_bundle_tasks, 'DescribeBundleTasks'

      # Calls the DescribeConversionTasks API operation.
      # @method describe_conversion_tasks(options = {})
      #
      # === Options:
      #
      # * +:filters+ - (Array<Hash>)
      #   * +:name+ - (String) Specifies the name of the filter.
      #   * +:values+ - (Array<String>) Contains one or more values for the
      #     filter.
      # * +:conversion_task_ids+ - (Array<String>)
      #
      # === Response Structure:
      #
      # * +:conversion_tasks+ - (Array<Hash>)
      #   * +:conversion_task_id+ - (String)
      #   * +:expiration_time+ - (String)
      #   * +:import_instance+ - (Hash)
      #     * +:volumes+ - (Array<Hash>)
      #       * +:bytes_converted+ - (Integer)
      #       * +:availability_zone+ - (String)
      #       * +:image+ - (Hash)
      #         * +:format+ - (String)
      #         * +:size+ - (Integer)
      #         * +:import_manifest_url+ - (String)
      #         * +:checksum+ - (String)
      #       * +:volume+ - (Hash)
      #         * +:size+ - (Integer)
      #         * +:id+ - (String)
      #       * +:status+ - (String)
      #       * +:status_message+ - (String)
      #       * +:description+ - (String)
      #     * +:instance_id+ - (String)
      #     * +:platform+ - (String)
      #     * +:description+ - (String)
      #   * +:import_volume+ - (Hash)
      #     * +:bytes_converted+ - (Integer)
      #     * +:availability_zone+ - (String)
      #     * +:description+ - (String)
      #     * +:image+ - (Hash)
      #       * +:format+ - (String)
      #       * +:size+ - (Integer)
      #       * +:import_manifest_url+ - (String)
      #       * +:checksum+ - (String)
      #     * +:volume+ - (Hash)
      #       * +:size+ - (Integer)
      #       * +:id+ - (String)
      #   * +:state+ - (String)
      #   * +:status_message+ - (String)
      #   * +:tag_set+ - (Array<Hash>)
      #     * +:key+ - (String)
      #     * +:value+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :describe_conversion_tasks, 'DescribeConversionTasks'

      # Calls the DescribeCustomerGateways API operation.
      # @method describe_customer_gateways(options = {})
      #
      # === Options:
      #
      # * +:customer_gateway_ids+ - (Array<String>) A set of one or more
      #   customer gateway IDs.
      # * +:filters+ - (Array<Hash>) A list of filters used to match properties
      #   for Customer Gateways. For a complete reference to the available
      #   filter keys for this operation, see the Amazon EC2 API reference.
      #   * +:name+ - (String) Specifies the name of the filter.
      #   * +:values+ - (Array<String>) Contains one or more values for the
      #     filter.
      #
      # === Response Structure:
      #
      # * +:customer_gateway_set+ - (Array<Hash>)
      #   * +:customer_gateway_id+ - (String)
      #   * +:state+ - (String)
      #   * +:vpn_type+ - (String)
      #   * +:ip_address+ - (String)
      #   * +:bgp_asn+ - (String)
      #   * +:tag_set+ - (Array<Hash>)
      #     * +:key+ - (String)
      #     * +:value+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :describe_customer_gateways, 'DescribeCustomerGateways'

      # Calls the DescribeDhcpOptions API operation.
      # @method describe_dhcp_options(options = {})
      #
      # === Options:
      #
      # * +:dhcp_options_ids+ - (Array<String>)
      # * +:filters+ - (Array<Hash>) A list of filters used to match properties
      #   for DhcpOptions. For a complete reference to the available filter
      #   keys for this operation, see the Amazon EC2 API reference.
      #   * +:name+ - (String) Specifies the name of the filter.
      #   * +:values+ - (Array<String>) Contains one or more values for the
      #     filter.
      #
      # === Response Structure:
      #
      # * +:dhcp_options_set+ - (Array<Hash>)
      #   * +:dhcp_options_id+ - (String)
      #   * +:dhcp_configuration_set+ - (Array<Hash>)
      #     * +:key+ - (String)
      #     * +:value_set+ - (Array<String>)
      #   * +:tag_set+ - (Array<Hash>)
      #     * +:key+ - (String)
      #     * +:value+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :describe_dhcp_options, 'DescribeDhcpOptions'

      # Calls the DescribeImageAttribute API operation.
      # @method describe_image_attribute(options = {})
      #
      # === Options:
      #
      # * +:image_id+ - *required* - (String) The ID of the AMI whose attribute
      #   is to be described.
      # * +:attribute+ - *required* - (String) The name of the attribute to
      #   describe. Available attribute names: productCodes, kernel, ramdisk,
      #   launchPermisson, blockDeviceMapping
      #
      # === Response Structure:
      #
      # * +:image_id+ - (String)
      # * +:launch_permission+ - (Array<Hash>)
      #   * +:user_id+ - (String)
      #   * +:group+ - (String)
      # * +:product_codes+ - (Array<Hash>)
      #   * +:product_code+ - (String)
      #   * +:type+ - (String)
      # * +:kernel+ - (Hash)
      #   * +:value+ - (String)
      # * +:ramdisk+ - (Hash)
      #   * +:value+ - (String)
      # * +:description+ - (Hash)
      #   * +:value+ - (String)
      # * +:block_device_mapping+ - (Array<Hash>)
      #   * +:virtual_name+ - (String)
      #   * +:device_name+ - (String)
      #   * +:ebs+ - (Hash)
      #     * +:snapshot_id+ - (String)
      #     * +:volume_size+ - (Integer)
      #     * +:delete_on_termination+ - (Boolean)
      #   * +:no_device+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :describe_image_attribute, 'DescribeImageAttribute'

      # Calls the DescribeImages API operation.
      # @method describe_images(options = {})
      #
      # === Options:
      #
      # * +:image_ids+ - (Array<String>) An optional list of the AMI IDs to
      #   describe. If not specified, all AMIs will be described.
      # * +:owners+ - (Array<String>) The optional list of owners for the
      #   described AMIs. The IDs amazon, self, and explicit can be used to
      #   include AMIs owned by Amazon, AMIs owned by the user, and AMIs for
      #   which the user has explicit launch permissions, respectively.
      # * +:executable_users+ - (Array<String>) The optional list of users with
      #   explicit launch permissions for the described AMIs. The user ID can
      #   be a user's account ID, 'self' to return AMIs for which the sender of
      #   the request has explicit launch permissions, or 'all' to return AMIs
      #   with public launch permissions.
      # * +:filters+ - (Array<Hash>) A list of filters used to match properties
      #   for Images. For a complete reference to the available filter keys for
      #   this operation, see the Amazon EC2 API reference.
      #   * +:name+ - (String) Specifies the name of the filter.
      #   * +:values+ - (Array<String>) Contains one or more values for the
      #     filter.
      #
      # === Response Structure:
      #
      # * +:images_set+ - (Array<Hash>)
      #   * +:image_id+ - (String)
      #   * +:image_location+ - (String)
      #   * +:image_state+ - (String)
      #   * +:image_owner_id+ - (String)
      #   * +:is_public+ - (Boolean)
      #   * +:product_codes+ - (Array<Hash>)
      #     * +:product_code+ - (String)
      #     * +:type+ - (String)
      #   * +:architecture+ - (String)
      #   * +:image_type+ - (String)
      #   * +:kernel_id+ - (String)
      #   * +:ramdisk_id+ - (String)
      #   * +:platform+ - (String)
      #   * +:state_reason+ - (Hash)
      #     * +:code+ - (String)
      #     * +:message+ - (String)
      #   * +:image_owner_alias+ - (String)
      #   * +:name+ - (String)
      #   * +:description+ - (String)
      #   * +:root_device_type+ - (String)
      #   * +:root_device_name+ - (String)
      #   * +:block_device_mapping+ - (Array<Hash>)
      #     * +:virtual_name+ - (String)
      #     * +:device_name+ - (String)
      #     * +:ebs+ - (Hash)
      #       * +:snapshot_id+ - (String)
      #       * +:volume_size+ - (Integer)
      #       * +:delete_on_termination+ - (Boolean)
      #     * +:no_device+ - (String)
      #   * +:virtualization_type+ - (String)
      #   * +:tag_set+ - (Array<Hash>)
      #     * +:key+ - (String)
      #     * +:value+ - (String)
      #   * +:hypervisor+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :describe_images, 'DescribeImages'

      # Calls the DescribeInstanceAttribute API operation.
      # @method describe_instance_attribute(options = {})
      #
      # === Options:
      #
      # * +:instance_id+ - *required* - (String) The ID of the instance whose
      #   instance attribute is being described.
      # * +:attribute+ - *required* - (String) The name of the attribute to
      #   describe. Available attribute names: instanceType, kernel, ramdisk,
      #   userData, disableApiTermination, instanceInitiatedShutdownBehavior,
      #   rootDeviceName, blockDeviceMapping
      #
      # === Response Structure:
      #
      # * +:instance_id+ - (String)
      # * +:instance_type+ - (Hash)
      #   * +:value+ - (String)
      # * +:kernel+ - (Hash)
      #   * +:value+ - (String)
      # * +:ramdisk+ - (Hash)
      #   * +:value+ - (String)
      # * +:user_data+ - (Hash)
      #   * +:value+ - (String)
      # * +:disable_api_termination+ - (Hash)
      #   * +:value+ - (Boolean)
      # * +:instance_initiated_shutdown_behavior+ - (Hash)
      #   * +:value+ - (String)
      # * +:root_device_name+ - (Hash)
      #   * +:value+ - (String)
      # * +:block_device_mapping+ - (Array<Hash>)
      #   * +:device_name+ - (String)
      #   * +:ebs+ - (Hash)
      #     * +:volume_id+ - (String)
      #     * +:status+ - (String)
      #     * +:attach_time+ - (Time)
      #     * +:delete_on_termination+ - (Boolean)
      # * +:product_codes+ - (Array<Hash>)
      #   * +:product_code+ - (String)
      #   * +:type+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :describe_instance_attribute, 'DescribeInstanceAttribute'

      # Calls the DescribeInstanceStatus API operation.
      # @method describe_instance_status(options = {})
      #
      # === Options:
      #
      # * +:instance_ids+ - (Array<String>) The list of instance IDs. If not
      #   specified, all instances are described.
      # * +:filters+ - (Array<Hash>) The list of filters to limit returned
      #   results.
      #   * +:name+ - (String) Specifies the name of the filter.
      #   * +:values+ - (Array<String>) Contains one or more values for the
      #     filter.
      # * +:next_token+ - (String) A string specifying the next paginated set
      #   of results to return.
      # * +:max_results+ - (Integer) The maximum number of paginated instance
      #   items per response.
      #
      # === Response Structure:
      #
      # * +:instance_status_set+ - (Array<Hash>)
      #   * +:instance_id+ - (String)
      #   * +:availability_zone+ - (String)
      #   * +:events_set+ - (Array<Hash>)
      #     * +:code+ - (String)
      #     * +:description+ - (String)
      #     * +:not_before+ - (Time)
      #     * +:not_after+ - (Time)
      #   * +:instance_state+ - (Hash)
      #     * +:code+ - (Integer)
      #     * +:name+ - (String)
      #   * +:system_status+ - (Hash)
      #     * +:status+ - (String)
      #     * +:details+ - (Array<Hash>)
      #       * +:name+ - (String)
      #       * +:status+ - (String)
      #   * +:instance_status+ - (Hash)
      #     * +:status+ - (String)
      #     * +:details+ - (Array<Hash>)
      #       * +:name+ - (String)
      #       * +:status+ - (String)
      # * +:next_token+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :describe_instance_status, 'DescribeInstanceStatus'

      # Calls the DescribeInstances API operation.
      # @method describe_instances(options = {})
      #
      # === Options:
      #
      # * +:instance_ids+ - (Array<String>) An optional list of the instances
      #   to describe.
      # * +:filters+ - (Array<Hash>) A list of filters used to match properties
      #   for Instances. For a complete reference to the available filter keys
      #   for this operation, see the Amazon EC2 API reference.
      #   * +:name+ - (String) Specifies the name of the filter.
      #   * +:values+ - (Array<String>) Contains one or more values for the
      #     filter.
      #
      # === Response Structure:
      #
      # * +:reservation_set+ - (Array<Hash>)
      #   * +:reservation_id+ - (String)
      #   * +:owner_id+ - (String)
      #   * +:requester_id+ - (String)
      #   * +:group_set+ - (Array<Hash>)
      #     * +:group_name+ - (String)
      #     * +:group_id+ - (String)
      #   * +:instances_set+ - (Array<Hash>)
      #     * +:instance_id+ - (String)
      #     * +:image_id+ - (String)
      #     * +:instance_state+ - (Hash)
      #       * +:code+ - (Integer)
      #       * +:name+ - (String)
      #     * +:private_dns_name+ - (String)
      #     * +:dns_name+ - (String)
      #     * +:reason+ - (String)
      #     * +:key_name+ - (String)
      #     * +:ami_launch_index+ - (Integer)
      #     * +:product_codes+ - (Array<Hash>)
      #       * +:product_code+ - (String)
      #       * +:type+ - (String)
      #     * +:instance_type+ - (String)
      #     * +:launch_time+ - (Time)
      #     * +:placement+ - (Hash)
      #       * +:availability_zone+ - (String)
      #       * +:group_name+ - (String)
      #       * +:tenancy+ - (String)
      #     * +:kernel_id+ - (String)
      #     * +:ramdisk_id+ - (String)
      #     * +:platform+ - (String)
      #     * +:monitoring+ - (Hash)
      #       * +:state+ - (String)
      #     * +:subnet_id+ - (String)
      #     * +:vpc_id+ - (String)
      #     * +:private_ip_address+ - (String)
      #     * +:ip_address+ - (String)
      #     * +:state_reason+ - (Hash)
      #       * +:code+ - (String)
      #       * +:message+ - (String)
      #     * +:architecture+ - (String)
      #     * +:root_device_type+ - (String)
      #     * +:root_device_name+ - (String)
      #     * +:block_device_mapping+ - (Array<Hash>)
      #       * +:device_name+ - (String)
      #       * +:ebs+ - (Hash)
      #         * +:volume_id+ - (String)
      #         * +:status+ - (String)
      #         * +:attach_time+ - (Time)
      #         * +:delete_on_termination+ - (Boolean)
      #     * +:virtualization_type+ - (String)
      #     * +:instance_lifecycle+ - (String)
      #     * +:spot_instance_request_id+ - (String)
      #     * +:license+ - (Hash)
      #       * +:pool+ - (String)
      #     * +:client_token+ - (String)
      #     * +:tag_set+ - (Array<Hash>)
      #       * +:key+ - (String)
      #       * +:value+ - (String)
      #     * +:group_set+ - (Array<Hash>)
      #       * +:group_name+ - (String)
      #       * +:group_id+ - (String)
      #     * +:source_dest_check+ - (Boolean)
      #     * +:hypervisor+ - (String)
      #     * +:network_interface_set+ - (Array<Hash>)
      #       * +:network_interface_id+ - (String)
      #       * +:subnet_id+ - (String)
      #       * +:vpc_id+ - (String)
      #       * +:description+ - (String)
      #       * +:owner_id+ - (String)
      #       * +:status+ - (String)
      #       * +:private_ip_address+ - (String)
      #       * +:private_dns_name+ - (String)
      #       * +:source_dest_check+ - (Boolean)
      #       * +:group_set+ - (Array<Hash>)
      #         * +:group_name+ - (String)
      #         * +:group_id+ - (String)
      #       * +:attachment+ - (Hash)
      #         * +:attachment_id+ - (String)
      #         * +:device_index+ - (Integer)
      #         * +:status+ - (String)
      #         * +:attach_time+ - (Time)
      #         * +:delete_on_termination+ - (Boolean)
      #       * +:association+ - (Hash)
      #         * +:public_ip+ - (String)
      #         * +:ip_owner_id+ - (String)
      #     * +:iam_instance_profile+ - (Hash)
      #       * +:arn+ - (String)
      #       * +:id+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :describe_instances, 'DescribeInstances'

      # Calls the DescribeInternetGateways API operation.
      # @method describe_internet_gateways(options = {})
      #
      # === Options:
      #
      # * +:internet_gateway_ids+ - (Array<String>) One or more Internet
      #   gateway IDs.
      # * +:filters+ - (Array<Hash>) A list of filters used to match properties
      #   for Internet Gateways. For a complete reference to the available
      #   filter keys for this operation, see the Amazon EC2 API reference.
      #   * +:name+ - (String) Specifies the name of the filter.
      #   * +:values+ - (Array<String>) Contains one or more values for the
      #     filter.
      #
      # === Response Structure:
      #
      # * +:internet_gateway_set+ - (Array<Hash>)
      #   * +:internet_gateway_id+ - (String)
      #   * +:attachment_set+ - (Array<Hash>)
      #     * +:vpc_id+ - (String)
      #     * +:state+ - (String)
      #   * +:tag_set+ - (Array<Hash>)
      #     * +:key+ - (String)
      #     * +:value+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :describe_internet_gateways, 'DescribeInternetGateways'

      # Calls the DescribeKeyPairs API operation.
      # @method describe_key_pairs(options = {})
      #
      # === Options:
      #
      # * +:key_names+ - (Array<String>) The optional list of key pair names to
      #   describe.
      # * +:filters+ - (Array<Hash>) A list of filters used to match properties
      #   for KeyPairs. For a complete reference to the available filter keys
      #   for this operation, see the Amazon EC2 API reference.
      #   * +:name+ - (String) Specifies the name of the filter.
      #   * +:values+ - (Array<String>) Contains one or more values for the
      #     filter.
      #
      # === Response Structure:
      #
      # * +:key_set+ - (Array<Hash>)
      #   * +:key_name+ - (String)
      #   * +:key_fingerprint+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :describe_key_pairs, 'DescribeKeyPairs'

      # Calls the DescribeLicenses API operation.
      # @method describe_licenses(options = {})
      #
      # === Options:
      #
      # * +:license_ids+ - (Array<String>) Specifies the license registration
      #   for which details are to be returned.
      # * +:filters+ - (Array<Hash>) A list of filters used to match properties
      #   for Licenses. For a complete reference to the available filter keys
      #   for this operation, see the Amazon EC2 API reference.
      #   * +:name+ - (String) Specifies the name of the filter.
      #   * +:values+ - (Array<String>) Contains one or more values for the
      #     filter.
      #
      # === Response Structure:
      #
      # * +:license_set+ - (Array<Hash>)
      #   * +:license_id+ - (String)
      #   * +:type+ - (String)
      #   * +:pool+ - (String)
      #   * +:capacity_set+ - (Array<Hash>)
      #     * +:capacity+ - (Integer)
      #     * +:instance_capacity+ - (Integer)
      #     * +:state+ - (String)
      #     * +:earliest_allowed_deactivation_time+ - (Time)
      #   * +:tag_set+ - (Array<Hash>)
      #     * +:key+ - (String)
      #     * +:value+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :describe_licenses, 'DescribeLicenses'

      # Calls the DescribeNetworkAcls API operation.
      # @method describe_network_acls(options = {})
      #
      # === Options:
      #
      # * +:network_acl_ids+ - (Array<String>) One or more network ACL IDs.
      # * +:filters+ - (Array<Hash>) A list of filters used to match properties
      #   for Network ACLs. For a complete reference to the available filter
      #   keys for this operation, see the Amazon EC2 API reference.
      #   * +:name+ - (String) Specifies the name of the filter.
      #   * +:values+ - (Array<String>) Contains one or more values for the
      #     filter.
      #
      # === Response Structure:
      #
      # * +:network_acl_set+ - (Array<Hash>)
      #   * +:network_acl_id+ - (String)
      #   * +:vpc_id+ - (String)
      #   * +:default+ - (Boolean)
      #   * +:entry_set+ - (Array<Hash>)
      #     * +:rule_number+ - (Integer)
      #     * +:protocol+ - (String)
      #     * +:rule_action+ - (String)
      #     * +:egress+ - (Boolean)
      #     * +:cidr_block+ - (String)
      #     * +:icmp_type_code+ - (Hash)
      #       * +:type+ - (Integer)
      #       * +:code+ - (Integer)
      #     * +:port_range+ - (Hash)
      #       * +:from+ - (Integer)
      #       * +:to+ - (Integer)
      #   * +:association_set+ - (Array<Hash>)
      #     * +:network_acl_association_id+ - (String)
      #     * +:network_acl_id+ - (String)
      #     * +:subnet_id+ - (String)
      #   * +:tag_set+ - (Array<Hash>)
      #     * +:key+ - (String)
      #     * +:value+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :describe_network_acls, 'DescribeNetworkAcls'

      # Calls the DescribeNetworkInterfaceAttribute API operation.
      # @method describe_network_interface_attribute(options = {})
      #
      # === Options:
      #
      # * +:network_interface_id+ - *required* - (String)
      # * +:description+ - (String)
      # * +:source_dest_check+ - (String)
      # * +:groups+ - (String)
      # * +:attachment+ - (String)
      #
      # === Response Structure:
      #
      # * +:network_interface_id+ - (String)
      # * +:description+ - (Hash)
      #   * +:value+ - (String)
      # * +:source_dest_check+ - (Hash)
      #   * +:value+ - (Boolean)
      # * +:group_set+ - (Array<Hash>)
      #   * +:group_name+ - (String)
      #   * +:group_id+ - (String)
      # * +:attachment+ - (Hash)
      #   * +:attachment_id+ - (String)
      #   * +:instance_id+ - (String)
      #   * +:instance_owner_id+ - (String)
      #   * +:device_index+ - (Integer)
      #   * +:status+ - (String)
      #   * +:attach_time+ - (Time)
      #   * +:delete_on_termination+ - (Boolean)
      #
      # @return [Core::Response]
      #
      define_client_method :describe_network_interface_attribute, 'DescribeNetworkInterfaceAttribute'

      # Calls the DescribeNetworkInterfaces API operation.
      # @method describe_network_interfaces(options = {})
      #
      # === Options:
      #
      # * +:network_interface_ids+ - (Array<String>)
      # * +:filters+ - (Array<Hash>)
      #   * +:name+ - (String) Specifies the name of the filter.
      #   * +:values+ - (Array<String>) Contains one or more values for the
      #     filter.
      #
      # === Response Structure:
      #
      # * +:network_interface_set+ - (Array<Hash>)
      #   * +:network_interface_id+ - (String)
      #   * +:subnet_id+ - (String)
      #   * +:vpc_id+ - (String)
      #   * +:availability_zone+ - (String)
      #   * +:description+ - (String)
      #   * +:owner_id+ - (String)
      #   * +:requester_id+ - (String)
      #   * +:requester_managed+ - (Boolean)
      #   * +:status+ - (String)
      #   * +:mac_address+ - (String)
      #   * +:private_ip_address+ - (String)
      #   * +:private_dns_name+ - (String)
      #   * +:source_dest_check+ - (Boolean)
      #   * +:groups+ - (Array<Hash>)
      #     * +:group_name+ - (String)
      #     * +:group_id+ - (String)
      #   * +:attachment+ - (Hash)
      #     * +:attachment_id+ - (String)
      #     * +:instance_id+ - (String)
      #     * +:instance_owner_id+ - (String)
      #     * +:device_index+ - (Integer)
      #     * +:status+ - (String)
      #     * +:attach_time+ - (Time)
      #     * +:delete_on_termination+ - (Boolean)
      #   * +:association+ - (Hash)
      #     * +:public_ip+ - (String)
      #     * +:ip_owner_id+ - (String)
      #     * +:allocation_id+ - (String)
      #     * +:association_id+ - (String)
      #   * +:tag_set+ - (Array<Hash>)
      #     * +:key+ - (String)
      #     * +:value+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :describe_network_interfaces, 'DescribeNetworkInterfaces'

      # Calls the DescribePlacementGroups API operation.
      # @method describe_placement_groups(options = {})
      #
      # === Options:
      #
      # * +:group_names+ - (Array<String>) The name of the PlacementGroup.
      # * +:filters+ - (Array<Hash>) A list of filters used to match properties
      #   for Placement Groups. For a complete reference to the available
      #   filter keys for this operation, see the Amazon EC2 API reference.
      #   * +:name+ - (String) Specifies the name of the filter.
      #   * +:values+ - (Array<String>) Contains one or more values for the
      #     filter.
      #
      # === Response Structure:
      #
      # * +:placement_group_set+ - (Array<Hash>)
      #   * +:group_name+ - (String)
      #   * +:strategy+ - (String)
      #   * +:state+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :describe_placement_groups, 'DescribePlacementGroups'

      # Calls the DescribeRegions API operation.
      # @method describe_regions(options = {})
      #
      # === Options:
      #
      # * +:region_names+ - (Array<String>) The optional list of regions to
      #   describe.
      # * +:filters+ - (Array<Hash>) A list of filters used to match properties
      #   for Regions. For a complete reference to the available filter keys
      #   for this operation, see the Amazon EC2 API reference.
      #   * +:name+ - (String) Specifies the name of the filter.
      #   * +:values+ - (Array<String>) Contains one or more values for the
      #     filter.
      #
      # === Response Structure:
      #
      # * +:region_info+ - (Array<Hash>)
      #   * +:region_name+ - (String)
      #   * +:region_endpoint+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :describe_regions, 'DescribeRegions'

      # Calls the DescribeReservedInstances API operation.
      # @method describe_reserved_instances(options = {})
      #
      # === Options:
      #
      # * +:reserved_instances_ids+ - (Array<String>) The optional list of
      #   Reserved Instance IDs to describe.
      # * +:filters+ - (Array<Hash>) A list of filters used to match properties
      #   for ReservedInstances. For a complete reference to the available
      #   filter keys for this operation, see the Amazon EC2 API reference.
      #   * +:name+ - (String) Specifies the name of the filter.
      #   * +:values+ - (Array<String>) Contains one or more values for the
      #     filter.
      # * +:offering_type+ - (String) The Reserved Instance offering type.
      #
      # === Response Structure:
      #
      # * +:reserved_instances_set+ - (Array<Hash>)
      #   * +:reserved_instances_id+ - (String)
      #   * +:instance_type+ - (String)
      #   * +:availability_zone+ - (String)
      #   * +:start+ - (Time)
      #   * +:duration+ - (Integer)
      #   * +:usage_price+ - (Numeric)
      #   * +:fixed_price+ - (Numeric)
      #   * +:instance_count+ - (Integer)
      #   * +:product_description+ - (String)
      #   * +:state+ - (String)
      #   * +:tag_set+ - (Array<Hash>)
      #     * +:key+ - (String)
      #     * +:value+ - (String)
      #   * +:instance_tenancy+ - (String)
      #   * +:currency_code+ - (String)
      #   * +:offering_type+ - (String)
      #   * +:recurring_charges+ - (Array<Hash>)
      #     * +:frequency+ - (String)
      #     * +:amount+ - (Numeric)
      #
      # @return [Core::Response]
      #
      define_client_method :describe_reserved_instances, 'DescribeReservedInstances'

      # Calls the DescribeReservedInstancesOfferings API operation.
      # @method describe_reserved_instances_offerings(options = {})
      #
      # === Options:
      #
      # * +:reserved_instances_offering_ids+ - (Array<String>) An optional list
      #   of the unique IDs of the Reserved Instance offerings to describe.
      # * +:instance_type+ - (String) The instance type on which the Reserved
      #   Instance can be used.
      # * +:availability_zone+ - (String) The Availability Zone in which the
      #   Reserved Instance can be used.
      # * +:product_description+ - (String) The Reserved Instance product
      #   description.
      # * +:filters+ - (Array<Hash>) A list of filters used to match properties
      #   for ReservedInstancesOfferings. For a complete reference to the
      #   available filter keys for this operation, see the Amazon EC2 API
      #   reference.
      #   * +:name+ - (String) Specifies the name of the filter.
      #   * +:values+ - (Array<String>) Contains one or more values for the
      #     filter.
      # * +:instance_tenancy+ - (String) The tenancy of the Reserved Instance
      #   offering. A Reserved Instance with tenancy of dedicated will run on
      #   single-tenant hardware and can only be launched within a VPC.
      # * +:offering_type+ - (String) The Reserved Instance offering type.
      #
      # === Response Structure:
      #
      # * +:reserved_instances_offerings_set+ - (Array<Hash>)
      #   * +:reserved_instances_offering_id+ - (String)
      #   * +:instance_type+ - (String)
      #   * +:availability_zone+ - (String)
      #   * +:duration+ - (Integer)
      #   * +:usage_price+ - (Numeric)
      #   * +:fixed_price+ - (Numeric)
      #   * +:product_description+ - (String)
      #   * +:instance_tenancy+ - (String)
      #   * +:currency_code+ - (String)
      #   * +:offering_type+ - (String)
      #   * +:recurring_charges+ - (Array<Hash>)
      #     * +:frequency+ - (String)
      #     * +:amount+ - (Numeric)
      #
      # @return [Core::Response]
      #
      define_client_method :describe_reserved_instances_offerings, 'DescribeReservedInstancesOfferings'

      # Calls the DescribeRouteTables API operation.
      # @method describe_route_tables(options = {})
      #
      # === Options:
      #
      # * +:route_table_ids+ - (Array<String>) One or more route table IDs.
      # * +:filters+ - (Array<Hash>) A list of filters used to match properties
      #   for Route Tables. For a complete reference to the available filter
      #   keys for this operation, see the Amazon EC2 API reference.
      #   * +:name+ - (String) Specifies the name of the filter.
      #   * +:values+ - (Array<String>) Contains one or more values for the
      #     filter.
      #
      # === Response Structure:
      #
      # * +:route_table_set+ - (Array<Hash>)
      #   * +:route_table_id+ - (String)
      #   * +:vpc_id+ - (String)
      #   * +:route_set+ - (Array<Hash>)
      #     * +:destination_cidr_block+ - (String)
      #     * +:gateway_id+ - (String)
      #     * +:instance_id+ - (String)
      #     * +:instance_owner_id+ - (String)
      #     * +:network_interface_id+ - (String)
      #     * +:state+ - (String)
      #   * +:association_set+ - (Array<Hash>)
      #     * +:route_table_association_id+ - (String)
      #     * +:route_table_id+ - (String)
      #     * +:subnet_id+ - (String)
      #     * +:main+ - (Boolean)
      #   * +:tag_set+ - (Array<Hash>)
      #     * +:key+ - (String)
      #     * +:value+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :describe_route_tables, 'DescribeRouteTables'

      # Calls the DescribeSecurityGroups API operation.
      # @method describe_security_groups(options = {})
      #
      # === Options:
      #
      # * +:group_names+ - (Array<String>) The optional list of Amazon EC2
      #   security groups to describe.
      # * +:group_ids+ - (Array<String>)
      # * +:filters+ - (Array<Hash>) A list of filters used to match properties
      #   for SecurityGroups. For a complete reference to the available filter
      #   keys for this operation, see the Amazon EC2 API reference.
      #   * +:name+ - (String) Specifies the name of the filter.
      #   * +:values+ - (Array<String>) Contains one or more values for the
      #     filter.
      #
      # === Response Structure:
      #
      # * +:security_group_info+ - (Array<Hash>)
      #   * +:owner_id+ - (String)
      #   * +:group_name+ - (String)
      #   * +:group_id+ - (String)
      #   * +:group_description+ - (String)
      #   * +:ip_permissions+ - (Array<Hash>)
      #     * +:ip_protocol+ - (String)
      #     * +:from_port+ - (Integer)
      #     * +:to_port+ - (Integer)
      #     * +:groups+ - (Array<Hash>)
      #       * +:user_id+ - (String)
      #       * +:group_name+ - (String)
      #       * +:group_id+ - (String)
      #     * +:ip_ranges+ - (Array<Hash>)
      #       * +:cidr_ip+ - (String)
      #   * +:ip_permissions_egress+ - (Array<Hash>)
      #     * +:ip_protocol+ - (String)
      #     * +:from_port+ - (Integer)
      #     * +:to_port+ - (Integer)
      #     * +:groups+ - (Array<Hash>)
      #       * +:user_id+ - (String)
      #       * +:group_name+ - (String)
      #       * +:group_id+ - (String)
      #     * +:ip_ranges+ - (Array<Hash>)
      #       * +:cidr_ip+ - (String)
      #   * +:vpc_id+ - (String)
      #   * +:tag_set+ - (Array<Hash>)
      #     * +:key+ - (String)
      #     * +:value+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :describe_security_groups, 'DescribeSecurityGroups'

      # Calls the DescribeSnapshotAttribute API operation.
      # @method describe_snapshot_attribute(options = {})
      #
      # === Options:
      #
      # * +:snapshot_id+ - *required* - (String) The ID of the EBS snapshot
      #   whose attribute is being described.
      # * +:attribute+ - *required* - (String) The name of the EBS attribute to
      #   describe. Available attribute names: createVolumePermission
      #
      # === Response Structure:
      #
      # * +:snapshot_id+ - (String)
      # * +:create_volume_permission+ - (Array<Hash>)
      #   * +:user_id+ - (String)
      #   * +:group+ - (String)
      # * +:product_codes+ - (Array<Hash>)
      #   * +:product_code+ - (String)
      #   * +:type+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :describe_snapshot_attribute, 'DescribeSnapshotAttribute'

      # Calls the DescribeSnapshots API operation.
      # @method describe_snapshots(options = {})
      #
      # === Options:
      #
      # * +:snapshot_ids+ - (Array<String>) The optional list of EBS snapshot
      #   IDs to describe.
      # * +:owner_ids+ - (Array<String>) The optional list of EBS snapshot
      #   owners.
      # * +:restorable_by_user_ids+ - (Array<String>) The optional list of
      #   users who have permission to create volumes from the described EBS
      #   snapshots.
      # * +:filters+ - (Array<Hash>) A list of filters used to match properties
      #   for Snapshots. For a complete reference to the available filter keys
      #   for this operation, see the Amazon EC2 API reference.
      #   * +:name+ - (String) Specifies the name of the filter.
      #   * +:values+ - (Array<String>) Contains one or more values for the
      #     filter.
      #
      # === Response Structure:
      #
      # * +:snapshot_set+ - (Array<Hash>)
      #   * +:snapshot_id+ - (String)
      #   * +:volume_id+ - (String)
      #   * +:status+ - (String)
      #   * +:start_time+ - (Time)
      #   * +:progress+ - (String)
      #   * +:owner_id+ - (String)
      #   * +:description+ - (String)
      #   * +:volume_size+ - (Integer)
      #   * +:owner_alias+ - (String)
      #   * +:tag_set+ - (Array<Hash>)
      #     * +:key+ - (String)
      #     * +:value+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :describe_snapshots, 'DescribeSnapshots'

      # Calls the DescribeSpotDatafeedSubscription API operation.
      # @method describe_spot_datafeed_subscription(options = {})
      #
      # === Options:
      #
      # This method accepts no options.
      #
      # === Response Structure:
      #
      # * +:spot_datafeed_subscription+ - (Hash)
      #   * +:owner_id+ - (String)
      #   * +:bucket+ - (String)
      #   * +:prefix+ - (String)
      #   * +:state+ - (String)
      #   * +:fault+ - (Hash)
      #     * +:code+ - (String)
      #     * +:message+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :describe_spot_datafeed_subscription, 'DescribeSpotDatafeedSubscription'

      # Calls the DescribeSpotInstanceRequests API operation.
      # @method describe_spot_instance_requests(options = {})
      #
      # === Options:
      #
      # * +:spot_instance_request_ids+ - (Array<String>) The ID of the request.
      # * +:filters+ - (Array<Hash>) A list of filters used to match properties
      #   for SpotInstances. For a complete reference to the available filter
      #   keys for this operation, see the Amazon EC2 API reference.
      #   * +:name+ - (String) Specifies the name of the filter.
      #   * +:values+ - (Array<String>) Contains one or more values for the
      #     filter.
      #
      # === Response Structure:
      #
      # * +:spot_instance_request_set+ - (Array<Hash>)
      #   * +:spot_instance_request_id+ - (String)
      #   * +:spot_price+ - (String)
      #   * +:type+ - (String)
      #   * +:state+ - (String)
      #   * +:fault+ - (Hash)
      #     * +:code+ - (String)
      #     * +:message+ - (String)
      #   * +:valid_from+ - (Time)
      #   * +:valid_until+ - (Time)
      #   * +:launch_group+ - (String)
      #   * +:availability_zone_group+ - (String)
      #   * +:launch_specification+ - (Hash)
      #     * +:image_id+ - (String)
      #     * +:key_name+ - (String)
      #     * +:group_set+ - (Array<Hash>)
      #       * +:group_name+ - (String)
      #       * +:group_id+ - (String)
      #     * +:user_data+ - (String)
      #     * +:addressing_type+ - (String)
      #     * +:instance_type+ - (String)
      #     * +:placement+ - (Hash)
      #       * +:availability_zone+ - (String)
      #       * +:group_name+ - (String)
      #     * +:kernel_id+ - (String)
      #     * +:ramdisk_id+ - (String)
      #     * +:block_device_mapping+ - (Array<Hash>)
      #       * +:virtual_name+ - (String)
      #       * +:device_name+ - (String)
      #       * +:ebs+ - (Hash)
      #         * +:snapshot_id+ - (String)
      #         * +:volume_size+ - (Integer)
      #         * +:delete_on_termination+ - (Boolean)
      #       * +:no_device+ - (String)
      #     * +:monitoring_enabled+ - (Boolean)
      #     * +:subnet_id+ - (String)
      #     * +:network_interface_set+ - (Array<Hash>)
      #       * +:network_interface_id+ - (String)
      #       * +:device_index+ - (Integer)
      #       * +:subnet_id+ - (String)
      #       * +:description+ - (String)
      #       * +:private_ip_address+ - (String)
      #       * +:security_group_id+ - (Array<String>)
      #       * +:delete_on_termination+ - (Boolean)
      #     * +:iam_instance_profile+ - (Hash)
      #       * +:arn+ - (String)
      #       * +:name+ - (String)
      #   * +:instance_id+ - (String)
      #   * +:create_time+ - (Time)
      #   * +:product_description+ - (String)
      #   * +:tag_set+ - (Array<Hash>)
      #     * +:key+ - (String)
      #     * +:value+ - (String)
      #   * +:launched_availability_zone+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :describe_spot_instance_requests, 'DescribeSpotInstanceRequests'

      # Calls the DescribeSpotPriceHistory API operation.
      # @method describe_spot_price_history(options = {})
      #
      # === Options:
      #
      # * +:start_time+ - (String<ISO8601 datetime>) The start date and time of
      #   the Spot Instance price history data.
      # * +:end_time+ - (String<ISO8601 datetime>) The end date and time of the
      #   Spot Instance price history data.
      # * +:instance_types+ - (Array<String>) Specifies the instance type to
      #   return.
      # * +:product_descriptions+ - (Array<String>) The description of the AMI.
      # * +:filters+ - (Array<Hash>) A list of filters used to match properties
      #   for SpotPriceHistory. For a complete reference to the available
      #   filter keys for this operation, see the Amazon EC2 API reference.
      #   * +:name+ - (String) Specifies the name of the filter.
      #   * +:values+ - (Array<String>) Contains one or more values for the
      #     filter.
      # * +:availability_zone+ - (String) Filters the results by availability
      #   zone (ex: 'us-east-1a').
      # * +:max_results+ - (Integer) Specifies the number of rows to return.
      # * +:next_token+ - (String) Specifies the next set of rows to return.
      #
      # === Response Structure:
      #
      # * +:spot_price_history_set+ - (Array<Hash>)
      #   * +:instance_type+ - (String)
      #   * +:product_description+ - (String)
      #   * +:spot_price+ - (String)
      #   * +:timestamp+ - (Time)
      #   * +:availability_zone+ - (String)
      # * +:next_token+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :describe_spot_price_history, 'DescribeSpotPriceHistory'

      # Calls the DescribeSubnets API operation.
      # @method describe_subnets(options = {})
      #
      # === Options:
      #
      # * +:subnet_ids+ - (Array<String>) A set of one or more subnet IDs.
      # * +:filters+ - (Array<Hash>) A list of filters used to match properties
      #   for Subnets. For a complete reference to the available filter keys
      #   for this operation, see the Amazon EC2 API reference.
      #   * +:name+ - (String) Specifies the name of the filter.
      #   * +:values+ - (Array<String>) Contains one or more values for the
      #     filter.
      #
      # === Response Structure:
      #
      # * +:subnet_set+ - (Array<Hash>)
      #   * +:subnet_id+ - (String)
      #   * +:state+ - (String)
      #   * +:vpc_id+ - (String)
      #   * +:cidr_block+ - (String)
      #   * +:available_ip_address_count+ - (Integer)
      #   * +:availability_zone+ - (String)
      #   * +:tag_set+ - (Array<Hash>)
      #     * +:key+ - (String)
      #     * +:value+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :describe_subnets, 'DescribeSubnets'

      # Calls the DescribeTags API operation.
      # @method describe_tags(options = {})
      #
      # === Options:
      #
      # * +:filters+ - (Array<Hash>) A list of filters used to match properties
      #   for tags.
      #   * +:name+ - (String) Specifies the name of the filter.
      #   * +:values+ - (Array<String>) Contains one or more values for the
      #     filter.
      #
      # === Response Structure:
      #
      # * +:tag_set+ - (Array<Hash>)
      #   * +:resource_id+ - (String)
      #   * +:resource_type+ - (String)
      #   * +:key+ - (String)
      #   * +:value+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :describe_tags, 'DescribeTags'

      # Calls the DescribeVolumeAttribute API operation.
      # @method describe_volume_attribute(options = {})
      #
      # === Options:
      #
      # * +:volume_id+ - *required* - (String)
      # * +:attribute+ - (String)
      #
      # === Response Structure:
      #
      # * +:volume_id+ - (String)
      # * +:auto_enable_io+ - (Hash)
      #   * +:value+ - (Boolean)
      # * +:product_codes+ - (Array<Hash>)
      #   * +:product_code+ - (String)
      #   * +:type+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :describe_volume_attribute, 'DescribeVolumeAttribute'

      # Calls the DescribeVolumeStatus API operation.
      # @method describe_volume_status(options = {})
      #
      # === Options:
      #
      # * +:volume_ids+ - (Array<String>)
      # * +:filters+ - (Array<Hash>)
      #   * +:name+ - (String) Specifies the name of the filter.
      #   * +:values+ - (Array<String>) Contains one or more values for the
      #     filter.
      # * +:next_token+ - (String)
      # * +:max_results+ - (Integer)
      #
      # === Response Structure:
      #
      # * +:volume_status_set+ - (Array<Hash>)
      #   * +:volume_id+ - (String)
      #   * +:availability_zone+ - (String)
      #   * +:volume_status+ - (Hash)
      #     * +:status+ - (String)
      #     * +:details+ - (Array<Hash>)
      #       * +:name+ - (String)
      #       * +:status+ - (String)
      #   * +:events_set+ - (Array<Hash>)
      #     * +:event_type+ - (String)
      #     * +:description+ - (String)
      #     * +:not_before+ - (Time)
      #     * +:not_after+ - (Time)
      #     * +:event_id+ - (String)
      #   * +:actions_set+ - (Array<Hash>)
      #     * +:code+ - (String)
      #     * +:description+ - (String)
      #     * +:event_type+ - (String)
      #     * +:event_id+ - (String)
      # * +:next_token+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :describe_volume_status, 'DescribeVolumeStatus'

      # Calls the DescribeVolumes API operation.
      # @method describe_volumes(options = {})
      #
      # === Options:
      #
      # * +:volume_ids+ - (Array<String>) The optional list of EBS volumes to
      #   describe.
      # * +:filters+ - (Array<Hash>) A list of filters used to match properties
      #   for Volumes. For a complete reference to the available filter keys
      #   for this operation, see the Amazon EC2 API reference.
      #   * +:name+ - (String) Specifies the name of the filter.
      #   * +:values+ - (Array<String>) Contains one or more values for the
      #     filter.
      #
      # === Response Structure:
      #
      # * +:volume_set+ - (Array<Hash>)
      #   * +:volume_id+ - (String)
      #   * +:size+ - (Integer)
      #   * +:snapshot_id+ - (String)
      #   * +:availability_zone+ - (String)
      #   * +:status+ - (String)
      #   * +:create_time+ - (Time)
      #   * +:attachment_set+ - (Array<Hash>)
      #     * +:volume_id+ - (String)
      #     * +:instance_id+ - (String)
      #     * +:device+ - (String)
      #     * +:status+ - (String)
      #     * +:attach_time+ - (Time)
      #     * +:delete_on_termination+ - (Boolean)
      #   * +:tag_set+ - (Array<Hash>)
      #     * +:key+ - (String)
      #     * +:value+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :describe_volumes, 'DescribeVolumes'

      # Calls the DescribeVpcs API operation.
      # @method describe_vpcs(options = {})
      #
      # === Options:
      #
      # * +:vpc_ids+ - (Array<String>) The ID of a VPC you want information
      #   about.
      # * +:filters+ - (Array<Hash>) A list of filters used to match properties
      #   for VPCs. For a complete reference to the available filter keys for
      #   this operation, see the Amazon EC2 API reference.
      #   * +:name+ - (String) Specifies the name of the filter.
      #   * +:values+ - (Array<String>) Contains one or more values for the
      #     filter.
      #
      # === Response Structure:
      #
      # * +:vpc_set+ - (Array<Hash>)
      #   * +:vpc_id+ - (String)
      #   * +:state+ - (String)
      #   * +:cidr_block+ - (String)
      #   * +:dhcp_options_id+ - (String)
      #   * +:tag_set+ - (Array<Hash>)
      #     * +:key+ - (String)
      #     * +:value+ - (String)
      #   * +:instance_tenancy+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :describe_vpcs, 'DescribeVpcs'

      # Calls the DescribeVpnConnections API operation.
      # @method describe_vpn_connections(options = {})
      #
      # === Options:
      #
      # * +:vpn_connection_ids+ - (Array<String>) A VPN connection ID. More
      #   than one may be specified per request.
      # * +:filters+ - (Array<Hash>) A list of filters used to match properties
      #   for VPN Connections. For a complete reference to the available filter
      #   keys for this operation, see the Amazon EC2 API reference.
      #   * +:name+ - (String) Specifies the name of the filter.
      #   * +:values+ - (Array<String>) Contains one or more values for the
      #     filter.
      #
      # === Response Structure:
      #
      # * +:vpn_connection_set+ - (Array<Hash>)
      #   * +:vpn_connection_id+ - (String)
      #   * +:state+ - (String)
      #   * +:customer_gateway_configuration+ - (String)
      #   * +:vpn_type+ - (String)
      #   * +:customer_gateway_id+ - (String)
      #   * +:vpn_gateway_id+ - (String)
      #   * +:tag_set+ - (Array<Hash>)
      #     * +:key+ - (String)
      #     * +:value+ - (String)
      #   * +:vgw_telemetry+ - (Array<Hash>)
      #     * +:outside_ip_address+ - (String)
      #     * +:status+ - (String)
      #     * +:last_status_change+ - (Time)
      #     * +:status_message+ - (String)
      #     * +:accepted_route_count+ - (Integer)
      #
      # @return [Core::Response]
      #
      define_client_method :describe_vpn_connections, 'DescribeVpnConnections'

      # Calls the DescribeVpnGateways API operation.
      # @method describe_vpn_gateways(options = {})
      #
      # === Options:
      #
      # * +:vpn_gateway_ids+ - (Array<String>) A list of filters used to match
      #   properties for VPN Gateways. For a complete reference to the
      #   available filter keys for this operation, see the Amazon EC2 API
      #   reference.
      # * +:filters+ - (Array<Hash>) A list of filters used to match properties
      #   for VPN Gateways. For a complete reference to the available filter
      #   keys for this operation, see the Amazon EC2 API reference.
      #   * +:name+ - (String) Specifies the name of the filter.
      #   * +:values+ - (Array<String>) Contains one or more values for the
      #     filter.
      #
      # === Response Structure:
      #
      # * +:vpn_gateway_set+ - (Array<Hash>)
      #   * +:vpn_gateway_id+ - (String)
      #   * +:state+ - (String)
      #   * +:vpn_type+ - (String)
      #   * +:availability_zone+ - (String)
      #   * +:attachments+ - (Array<Hash>)
      #     * +:vpc_id+ - (String)
      #     * +:state+ - (String)
      #   * +:tag_set+ - (Array<Hash>)
      #     * +:key+ - (String)
      #     * +:value+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :describe_vpn_gateways, 'DescribeVpnGateways'

      # Calls the DetachInternetGateway API operation.
      # @method detach_internet_gateway(options = {})
      #
      # === Options:
      #
      # * +:internet_gateway_id+ - *required* - (String) The ID of the Internet
      #   gateway to detach.
      # * +:vpc_id+ - *required* - (String) The ID of the VPC.
      #
      # === Response Structure:
      #
      # This method returns no response data.
      #
      # @return [Core::Response]
      #
      define_client_method :detach_internet_gateway, 'DetachInternetGateway'

      # Calls the DetachNetworkInterface API operation.
      # @method detach_network_interface(options = {})
      #
      # === Options:
      #
      # * +:attachment_id+ - *required* - (String)
      # * +:force+ - (Boolean)
      #
      # === Response Structure:
      #
      # This method returns no response data.
      #
      # @return [Core::Response]
      #
      define_client_method :detach_network_interface, 'DetachNetworkInterface'

      # Calls the DetachVolume API operation.
      # @method detach_volume(options = {})
      #
      # === Options:
      #
      # * +:volume_id+ - *required* - (String) The ID of the volume to detach.
      # * +:instance_id+ - (String) The ID of the instance from which to detach
      #   the the specified volume.
      # * +:device+ - (String) The device name to which the volume is attached
      #   on the specified instance.
      # * +:force+ - (Boolean) Forces detachment if the previous detachment
      #   attempt did not occur cleanly (logging into an instance, unmounting
      #   the volume, and detaching normally). This option can lead to data
      #   loss or a corrupted file system. Use this option only as a last
      #   resort to detach a volume from a failed instance. The instance will
      #   not have an opportunity to flush file system caches nor file system
      #   meta data. If you use this option, you must perform file system check
      #   and repair procedures.
      #
      # === Response Structure:
      #
      # * +:volume_id+ - (String)
      # * +:instance_id+ - (String)
      # * +:device+ - (String)
      # * +:status+ - (String)
      # * +:attach_time+ - (Time)
      # * +:delete_on_termination+ - (Boolean)
      #
      # @return [Core::Response]
      #
      define_client_method :detach_volume, 'DetachVolume'

      # Calls the DetachVpnGateway API operation.
      # @method detach_vpn_gateway(options = {})
      #
      # === Options:
      #
      # * +:vpn_gateway_id+ - *required* - (String) The ID of the VPN gateway
      #   to detach from the VPC.
      # * +:vpc_id+ - *required* - (String) The ID of the VPC to detach the VPN
      #   gateway from.
      #
      # === Response Structure:
      #
      # This method returns no response data.
      #
      # @return [Core::Response]
      #
      define_client_method :detach_vpn_gateway, 'DetachVpnGateway'

      # Calls the DisassociateAddress API operation.
      # @method disassociate_address(options = {})
      #
      # === Options:
      #
      # * +:public_ip+ - (String) The elastic IP address that you are
      #   disassociating from the instance.
      # * +:association_id+ - (String) Association ID corresponding to the VPC
      #   elastic IP address you want to disassociate.
      #
      # === Response Structure:
      #
      # This method returns no response data.
      #
      # @return [Core::Response]
      #
      define_client_method :disassociate_address, 'DisassociateAddress'

      # Calls the DisassociateRouteTable API operation.
      # @method disassociate_route_table(options = {})
      #
      # === Options:
      #
      # * +:association_id+ - *required* - (String) The association ID
      #   representing the current association between the route table and
      #   subnet.
      #
      # === Response Structure:
      #
      # This method returns no response data.
      #
      # @return [Core::Response]
      #
      define_client_method :disassociate_route_table, 'DisassociateRouteTable'

      # Calls the EnableVolumeIO API operation.
      # @method enable_volume_io(options = {})
      #
      # === Options:
      #
      # * +:volume_id+ - *required* - (String)
      #
      # === Response Structure:
      #
      # This method returns no response data.
      #
      # @return [Core::Response]
      #
      define_client_method :enable_volume_io, 'EnableVolumeIO'

      # Calls the GetConsoleOutput API operation.
      # @method get_console_output(options = {})
      #
      # === Options:
      #
      # * +:instance_id+ - *required* - (String) The ID of the instance for
      #   which you want console output.
      #
      # === Response Structure:
      #
      # * +:instance_id+ - (String)
      # * +:timestamp+ - (Time)
      # * +:output+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :get_console_output, 'GetConsoleOutput'

      # Calls the GetPasswordData API operation.
      # @method get_password_data(options = {})
      #
      # === Options:
      #
      # * +:instance_id+ - *required* - (String) The ID of the instance for
      #   which you want the Windows administrator password.
      #
      # === Response Structure:
      #
      # * +:instance_id+ - (String)
      # * +:timestamp+ - (Time)
      # * +:password_data+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :get_password_data, 'GetPasswordData'

      # Calls the ImportInstance API operation.
      # @method import_instance(options = {})
      #
      # === Options:
      #
      # * +:description+ - (String)
      # * +:launch_specification+ - (Hash)
      #   * +:architecture+ - (String)
      #   * +:security_groups+ - (Array<String>)
      #   * +:additional_info+ - (String)
      #   * +:user_data+ - (String)
      #   * +:instance_type+ - (String)
      #   * +:placement+ - (Hash)
      #     * +:availability_zone+ - (String) The availability zone in which an
      #       Amazon EC2 instance runs.
      #     * +:group_name+ - (String) The name of the PlacementGroup in which
      #       an Amazon EC2 instance runs. Placement groups are primarily used
      #       for launching High Performance Computing instances in the same
      #       group to ensure fast connection speeds.
      #     * +:tenancy+ - (String) The allowed tenancy of instances launched
      #       into the VPC. A value of default means instances can be launched
      #       with any tenancy; a value of dedicated means all instances
      #       launched into the VPC will be launched as dedicated tenancy
      #       regardless of the tenancy assigned to the instance at launch.
      #   * +:block_device_mappings+ - (Array<Hash>)
      #     * +:virtual_name+ - (String) Specifies the virtual device name.
      #     * +:device_name+ - (String) Specifies the device name (e.g.,
      #       /dev/sdh).
      #     * +:ebs+ - (Hash) Specifies parameters used to automatically setup
      #       Amazon EBS volumes when the instance is launched.
      #       * +:snapshot_id+ - (String) The ID of the snapshot from which the
      #         volume will be created.
      #       * +:volume_size+ - (Integer) The size of the volume, in
      #         gigabytes.
      #       * +:delete_on_termination+ - (Boolean) Specifies whether the
      #         Amazon EBS volume is deleted on instance termination.
      #     * +:no_device+ - (String) Specifies the device name to suppress
      #       during instance launch.
      #   * +:monitoring+ - (Boolean)
      #   * +:subnet_id+ - (String)
      #   * +:disable_api_termination+ - (Boolean)
      #   * +:instance_initiated_shutdown_behavior+ - (String)
      #   * +:private_ip_address+ - (String)
      # * +:disk_images+ - (Array<Hash>)
      #   * +:image+ - (Hash)
      #     * +:format+ - *required* - (String)
      #     * +:bytes+ - *required* - (Integer)
      #     * +:import_manifest_url+ - *required* - (String)
      #   * +:description+ - (String)
      #   * +:volume+ - (Hash)
      #     * +:size+ - *required* - (Integer)
      # * +:platform+ - *required* - (String)
      #
      # === Response Structure:
      #
      # * +:conversion_task+ - (Hash)
      #   * +:conversion_task_id+ - (String)
      #   * +:expiration_time+ - (String)
      #   * +:import_instance+ - (Hash)
      #     * +:volumes+ - (Array<Hash>)
      #       * +:bytes_converted+ - (Integer)
      #       * +:availability_zone+ - (String)
      #       * +:image+ - (Hash)
      #         * +:format+ - (String)
      #         * +:size+ - (Integer)
      #         * +:import_manifest_url+ - (String)
      #         * +:checksum+ - (String)
      #       * +:volume+ - (Hash)
      #         * +:size+ - (Integer)
      #         * +:id+ - (String)
      #       * +:status+ - (String)
      #       * +:status_message+ - (String)
      #       * +:description+ - (String)
      #     * +:instance_id+ - (String)
      #     * +:platform+ - (String)
      #     * +:description+ - (String)
      #   * +:import_volume+ - (Hash)
      #     * +:bytes_converted+ - (Integer)
      #     * +:availability_zone+ - (String)
      #     * +:description+ - (String)
      #     * +:image+ - (Hash)
      #       * +:format+ - (String)
      #       * +:size+ - (Integer)
      #       * +:import_manifest_url+ - (String)
      #       * +:checksum+ - (String)
      #     * +:volume+ - (Hash)
      #       * +:size+ - (Integer)
      #       * +:id+ - (String)
      #   * +:state+ - (String)
      #   * +:status_message+ - (String)
      #   * +:tag_set+ - (Array<Hash>)
      #     * +:key+ - (String)
      #     * +:value+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :import_instance, 'ImportInstance'

      # Calls the ImportKeyPair API operation.
      # @method import_key_pair(options = {})
      #
      # === Options:
      #
      # * +:key_name+ - *required* - (String) The unique name for the key pair.
      # * +:public_key_material+ - *required* - (String) The public key portion
      #   of the key pair being imported.
      #
      # === Response Structure:
      #
      # * +:key_name+ - (String)
      # * +:key_fingerprint+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :import_key_pair, 'ImportKeyPair'

      # Calls the ImportVolume API operation.
      # @method import_volume(options = {})
      #
      # === Options:
      #
      # * +:availability_zone+ - (String)
      # * +:image+ - (Hash)
      #   * +:format+ - *required* - (String)
      #   * +:bytes+ - *required* - (Integer)
      #   * +:import_manifest_url+ - *required* - (String)
      # * +:description+ - (String)
      # * +:volume+ - (Hash)
      #   * +:size+ - *required* - (Integer)
      #
      # === Response Structure:
      #
      # * +:conversion_task+ - (Hash)
      #   * +:conversion_task_id+ - (String)
      #   * +:expiration_time+ - (String)
      #   * +:import_instance+ - (Hash)
      #     * +:volumes+ - (Array<Hash>)
      #       * +:bytes_converted+ - (Integer)
      #       * +:availability_zone+ - (String)
      #       * +:image+ - (Hash)
      #         * +:format+ - (String)
      #         * +:size+ - (Integer)
      #         * +:import_manifest_url+ - (String)
      #         * +:checksum+ - (String)
      #       * +:volume+ - (Hash)
      #         * +:size+ - (Integer)
      #         * +:id+ - (String)
      #       * +:status+ - (String)
      #       * +:status_message+ - (String)
      #       * +:description+ - (String)
      #     * +:instance_id+ - (String)
      #     * +:platform+ - (String)
      #     * +:description+ - (String)
      #   * +:import_volume+ - (Hash)
      #     * +:bytes_converted+ - (Integer)
      #     * +:availability_zone+ - (String)
      #     * +:description+ - (String)
      #     * +:image+ - (Hash)
      #       * +:format+ - (String)
      #       * +:size+ - (Integer)
      #       * +:import_manifest_url+ - (String)
      #       * +:checksum+ - (String)
      #     * +:volume+ - (Hash)
      #       * +:size+ - (Integer)
      #       * +:id+ - (String)
      #   * +:state+ - (String)
      #   * +:status_message+ - (String)
      #   * +:tag_set+ - (Array<Hash>)
      #     * +:key+ - (String)
      #     * +:value+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :import_volume, 'ImportVolume'

      # Calls the ModifyImageAttribute API operation.
      # @method modify_image_attribute(options = {})
      #
      # === Options:
      #
      # * +:image_id+ - *required* - (String) The ID of the AMI whose attribute
      #   you want to modify.
      # * +:attribute+ - (String) The name of the AMI attribute you want to
      #   modify. Available attributes: launchPermission, productCodes
      # * +:operation_type+ - (String) The type of operation being requested.
      #   Available operation types: add, remove
      # * +:user_ids+ - (Array<String>) The AWS user ID being added to or
      #   removed from the list of users with launch permissions for this AMI.
      #   Only valid when the launchPermission attribute is being modified.
      # * +:user_groups+ - (Array<String>) The user group being added to or
      #   removed from the list of user groups with launch permissions for this
      #   AMI. Only valid when the launchPermission attribute is being
      #   modified. Available user groups: all
      # * +:product_codes+ - (Array<String>) The list of product codes being
      #   added to or removed from the specified AMI. Only valid when the
      #   productCodes attribute is being modified.
      # * +:value+ - (String) The value of the attribute being modified. Only
      #   valid when the description attribute is being modified.
      # * +:launch_permission+ - (Hash)
      #   * +:add+ - (Array<Hash>)
      #     * +:user_id+ - (String) The AWS user ID of the user involved in
      #       this launch permission.
      #     * +:group+ - (String) The AWS group of the user involved in this
      #       launch permission. Available groups: all
      #   * +:remove+ - (Array<Hash>)
      #     * +:user_id+ - (String) The AWS user ID of the user involved in
      #       this launch permission.
      #     * +:group+ - (String) The AWS group of the user involved in this
      #       launch permission. Available groups: all
      # * +:description+ - (Hash)
      #   * +:value+ - (String) String value
      #
      # === Response Structure:
      #
      # This method returns no response data.
      #
      # @return [Core::Response]
      #
      define_client_method :modify_image_attribute, 'ModifyImageAttribute'

      # Calls the ModifyInstanceAttribute API operation.
      # @method modify_instance_attribute(options = {})
      #
      # === Options:
      #
      # * +:instance_id+ - *required* - (String) The ID of the instance whose
      #   attribute is being modified.
      # * +:attribute+ - (String) The name of the attribute being modified.
      #   Available attribute names: instanceType, kernel, ramdisk, userData,
      #   disableApiTermination, instanceInitiatedShutdownBehavior, rootDevice,
      #   blockDeviceMapping
      # * +:value+ - (String) The new value of the instance attribute being
      #   modified. Only valid when kernel, ramdisk, userData,
      #   disableApiTermination or instanceInitiateShutdownBehavior is
      #   specified as the attribute being modified.
      # * +:block_device_mappings+ - (Array<Hash>) The new block device
      #   mappings for the instance whose attributes are being modified. Only
      #   valid when blockDeviceMapping is specified as the attribute being
      #   modified.
      #   * +:device_name+ - (String) The device name (e.g., /dev/sdh) at which
      #     the block device is exposed on the instance.
      #   * +:ebs+ - (Hash) The EBS instance block device specification
      #     describing the EBS block device to map to the specified device name
      #     on a running instance.
      #     * +:volume_id+ - (String) The ID of the EBS volume that should be
      #       mounted as a block device on an Amazon EC2 instance.
      #     * +:delete_on_termination+ - (Boolean) Specifies whether the Amazon
      #       EBS volume is deleted on instance termination.
      #   * +:virtual_name+ - (String) The virtual device name.
      #   * +:no_device+ - (String) When set to the empty string, specifies
      #     that the device name in this object should not be mapped to any
      #     real device.
      # * +:source_dest_check+ - (Hash)
      #   * +:value+ - (Boolean) Boolean value
      # * +:disable_api_termination+ - (Hash)
      #   * +:value+ - (Boolean) Boolean value
      # * +:instance_type+ - (Hash)
      #   * +:value+ - (String) String value
      # * +:kernel+ - (Hash)
      #   * +:value+ - (String) String value
      # * +:ramdisk+ - (Hash)
      #   * +:value+ - (String) String value
      # * +:user_data+ - (Hash)
      #   * +:value+ - (String) String value
      # * +:instance_initiated_shutdown_behavior+ - (Hash)
      #   * +:value+ - (String) String value
      # * +:groups+ - (Array<String>)
      #
      # === Response Structure:
      #
      # This method returns no response data.
      #
      # @return [Core::Response]
      #
      define_client_method :modify_instance_attribute, 'ModifyInstanceAttribute'

      # Calls the ModifyNetworkInterfaceAttribute API operation.
      # @method modify_network_interface_attribute(options = {})
      #
      # === Options:
      #
      # * +:network_interface_id+ - *required* - (String)
      # * +:description+ - (Hash)
      #   * +:value+ - (String) String value
      # * +:source_dest_check+ - (Hash)
      #   * +:value+ - (Boolean) Boolean value
      # * +:groups+ - (Array<String>)
      # * +:attachment+ - (Hash)
      #   * +:attachment_id+ - (String)
      #   * +:delete_on_termination+ - (Boolean)
      #
      # === Response Structure:
      #
      # This method returns no response data.
      #
      # @return [Core::Response]
      #
      define_client_method :modify_network_interface_attribute, 'ModifyNetworkInterfaceAttribute'

      # Calls the ModifySnapshotAttribute API operation.
      # @method modify_snapshot_attribute(options = {})
      #
      # === Options:
      #
      # * +:snapshot_id+ - *required* - (String) The ID of the EBS snapshot
      #   whose attributes are being modified.
      # * +:attribute+ - (String) The name of the attribute being modified.
      #   Available attribute names: createVolumePermission
      # * +:operation_type+ - (String) The operation to perform on the
      #   attribute. Available operation names: add, remove
      # * +:user_ids+ - (Array<String>) The AWS user IDs to add to or remove
      #   from the list of users that have permission to create EBS volumes
      #   from the specified snapshot. Currently supports "all". Only valid
      #   when the createVolumePermission attribute is being modified.
      # * +:group_names+ - (Array<String>) The AWS group names to add to or
      #   remove from the list of groups that have permission to create EBS
      #   volumes from the specified snapshot. Currently supports "all". Only
      #   valid when the createVolumePermission attribute is being modified.
      # * +:create_volume_permission+ - (Hash)
      #   * +:add+ - (Array<Hash>)
      #     * +:user_id+ - (String) The user ID of the user that can create
      #       volumes from the snapshot.
      #     * +:group+ - (String) The group that is allowed to create volumes
      #       from the snapshot (currently supports "all").
      #   * +:remove+ - (Array<Hash>)
      #     * +:user_id+ - (String) The user ID of the user that can create
      #       volumes from the snapshot.
      #     * +:group+ - (String) The group that is allowed to create volumes
      #       from the snapshot (currently supports "all").
      #
      # === Response Structure:
      #
      # This method returns no response data.
      #
      # @return [Core::Response]
      #
      define_client_method :modify_snapshot_attribute, 'ModifySnapshotAttribute'

      # Calls the ModifyVolumeAttribute API operation.
      # @method modify_volume_attribute(options = {})
      #
      # === Options:
      #
      # * +:volume_id+ - *required* - (String)
      # * +:auto_enable_io+ - (Boolean)
      #
      # === Response Structure:
      #
      # This method returns no response data.
      #
      # @return [Core::Response]
      #
      define_client_method :modify_volume_attribute, 'ModifyVolumeAttribute'

      # Calls the MonitorInstances API operation.
      # @method monitor_instances(options = {})
      #
      # === Options:
      #
      # * +:instance_ids+ - *required* - (Array<String>) The list of Amazon EC2
      #   instances on which to enable monitoring.
      #
      # === Response Structure:
      #
      # * +:instances_set+ - (Array<Hash>)
      #   * +:instance_id+ - (String)
      #   * +:monitoring+ - (Hash)
      #     * +:state+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :monitor_instances, 'MonitorInstances'

      # Calls the PurchaseReservedInstancesOffering API operation.
      # @method purchase_reserved_instances_offering(options = {})
      #
      # === Options:
      #
      # * +:reserved_instances_offering_id+ - *required* - (String) The unique
      #   ID of the Reserved Instances offering being purchased.
      # * +:instance_count+ - *required* - (Integer) The number of Reserved
      #   Instances to purchase.
      #
      # === Response Structure:
      #
      # * +:reserved_instances_id+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :purchase_reserved_instances_offering, 'PurchaseReservedInstancesOffering'

      # Calls the RebootInstances API operation.
      # @method reboot_instances(options = {})
      #
      # === Options:
      #
      # * +:instance_ids+ - *required* - (Array<String>) The list of instances
      #   to terminate.
      #
      # === Response Structure:
      #
      # This method returns no response data.
      #
      # @return [Core::Response]
      #
      define_client_method :reboot_instances, 'RebootInstances'

      # Calls the RegisterImage API operation.
      # @method register_image(options = {})
      #
      # === Options:
      #
      # * +:image_location+ - (String) The full path to your AMI manifest in
      #   Amazon S3 storage.
      # * +:name+ - (String) The name to give the new Amazon Machine Image.
      #   Constraints: 3-128 alphanumeric characters, parenthesis (()), commas
      #   (,), slashes (/), dashes (-), or underscores(_)
      # * +:description+ - (String) The description describing the new AMI.
      # * +:architecture+ - (String) The architecture of the image. Valid
      #   Values: i386, x86_64
      # * +:kernel_id+ - (String) The optional ID of a specific kernel to
      #   register with the new AMI.
      # * +:ramdisk_id+ - (String) The optional ID of a specific ramdisk to
      #   register with the new AMI. Some kernels require additional drivers at
      #   launch. Check the kernel requirements for information on whether you
      #   need to specify a RAM disk.
      # * +:root_device_name+ - (String) The root device name (e.g.,
      #   /dev/sda1).
      # * +:block_device_mappings+ - (Array<Hash>) The block device mappings
      #   for the new AMI, which specify how different block devices (ex: EBS
      #   volumes and ephemeral drives) will be exposed on instances launched
      #   from the new image.
      #   * +:virtual_name+ - (String) Specifies the virtual device name.
      #   * +:device_name+ - (String) Specifies the device name (e.g.,
      #     /dev/sdh).
      #   * +:ebs+ - (Hash) Specifies parameters used to automatically setup
      #     Amazon EBS volumes when the instance is launched.
      #     * +:snapshot_id+ - (String) The ID of the snapshot from which the
      #       volume will be created.
      #     * +:volume_size+ - (Integer) The size of the volume, in gigabytes.
      #     * +:delete_on_termination+ - (Boolean) Specifies whether the Amazon
      #       EBS volume is deleted on instance termination.
      #   * +:no_device+ - (String) Specifies the device name to suppress
      #     during instance launch.
      #
      # === Response Structure:
      #
      # * +:image_id+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :register_image, 'RegisterImage'

      # Calls the ReleaseAddress API operation.
      # @method release_address(options = {})
      #
      # === Options:
      #
      # * +:public_ip+ - (String) The elastic IP address that you are releasing
      #   from your account.
      # * +:allocation_id+ - (String) The allocation ID that AWS provided when
      #   you allocated the address for use with Amazon VPC.
      #
      # === Response Structure:
      #
      # This method returns no response data.
      #
      # @return [Core::Response]
      #
      define_client_method :release_address, 'ReleaseAddress'

      # Calls the ReplaceNetworkAclAssociation API operation.
      # @method replace_network_acl_association(options = {})
      #
      # === Options:
      #
      # * +:association_id+ - *required* - (String) The ID representing the
      #   current association between the original network ACL and the subnet.
      # * +:network_acl_id+ - *required* - (String) The ID of the new ACL to
      #   associate with the subnet.
      #
      # === Response Structure:
      #
      # * +:new_association_id+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :replace_network_acl_association, 'ReplaceNetworkAclAssociation'

      # Calls the ReplaceNetworkAclEntry API operation.
      # @method replace_network_acl_entry(options = {})
      #
      # === Options:
      #
      # * +:network_acl_id+ - *required* - (String) ID of the ACL where the
      #   entry will be replaced.
      # * +:rule_number+ - *required* - (Integer) Rule number of the entry to
      #   replace.
      # * +:protocol+ - *required* - (String) IP protocol the rule applies to.
      #   Valid Values: tcp, udp, icmp or an IP protocol number.
      # * +:rule_action+ - *required* - (String) Whether to allow or deny
      #   traffic that matches the rule.
      # * +:egress+ - *required* - (Boolean) Whether this rule applies to
      #   egress traffic from the subnet ( +true+ ) or ingress traffic (
      #   +false+ ).
      # * +:cidr_block+ - *required* - (String) The CIDR range to allow or
      #   deny, in CIDR notation (e.g., 172.16.0.0/24).
      # * +:icmp_type_code+ - (Hash) ICMP values.
      #   * +:type+ - (Integer) For the ICMP protocol, the ICMP type. A value
      #     of -1 is a wildcard meaning all types. Required if specifying icmp
      #     for the protocol.
      #   * +:code+ - (Integer) For the ICMP protocol, the ICMP code. A value
      #     of -1 is a wildcard meaning all codes. Required if specifying icmp
      #     for the protocol.
      # * +:port_range+ - (Hash) Port ranges.
      #   * +:from+ - (Integer) The first port in the range. Required if
      #     specifying tcp or udp for the protocol.
      #   * +:to+ - (Integer) The last port in the range. Required if
      #     specifying tcp or udp for the protocol.
      #
      # === Response Structure:
      #
      # This method returns no response data.
      #
      # @return [Core::Response]
      #
      define_client_method :replace_network_acl_entry, 'ReplaceNetworkAclEntry'

      # Calls the ReplaceRoute API operation.
      # @method replace_route(options = {})
      #
      # === Options:
      #
      # * +:route_table_id+ - *required* - (String) The ID of the route table
      #   where the route will be replaced.
      # * +:destination_cidr_block+ - *required* - (String) The CIDR address
      #   block used for the destination match. For example: 0.0.0.0/0. The
      #   value you provide must match the CIDR of an existing route in the
      #   table.
      # * +:gateway_id+ - (String) The ID of a VPN or Internet gateway attached
      #   to your VPC.
      # * +:instance_id+ - (String) The ID of a NAT instance in your VPC.
      # * +:network_interface_id+ - (String)
      #
      # === Response Structure:
      #
      # This method returns no response data.
      #
      # @return [Core::Response]
      #
      define_client_method :replace_route, 'ReplaceRoute'

      # Calls the ReplaceRouteTableAssociation API operation.
      # @method replace_route_table_association(options = {})
      #
      # === Options:
      #
      # * +:association_id+ - *required* - (String) The ID representing the
      #   current association between the original route table and the subnet.
      # * +:route_table_id+ - *required* - (String) The ID of the new route
      #   table to associate with the subnet.
      #
      # === Response Structure:
      #
      # * +:new_association_id+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :replace_route_table_association, 'ReplaceRouteTableAssociation'

      # Calls the ReportInstanceStatus API operation.
      # @method report_instance_status(options = {})
      #
      # === Options:
      #
      # * +:instances+ - (Array<String>)
      # * +:status+ - (String)
      # * +:start_time+ - (String<ISO8601 datetime>)
      # * +:end_time+ - (String<ISO8601 datetime>)
      # * +:reason_codes+ - (Array<String>)
      # * +:description+ - (String)
      #
      # === Response Structure:
      #
      # This method returns no response data.
      #
      # @return [Core::Response]
      #
      define_client_method :report_instance_status, 'ReportInstanceStatus'

      # Calls the RequestSpotInstances API operation.
      # @method request_spot_instances(options = {})
      #
      # === Options:
      #
      # * +:spot_price+ - *required* - (String) Specifies the maximum hourly
      #   price for any Spot Instance launched to fulfill the request.
      # * +:instance_count+ - (Integer) Specifies the maximum number of Spot
      #   Instances to launch.
      # * +:type+ - (String) Specifies the Spot Instance type.
      # * +:valid_from+ - (String<ISO8601 datetime>) Defines the start date of
      #   the request. If this is a one-time request, the request becomes
      #   active at this date and time and remains active until all instances
      #   launch, the request expires, or the request is canceled. If the
      #   request is persistent, the request becomes active at this date and
      #   time and remains active until it expires or is canceled.
      # * +:valid_until+ - (String<ISO8601 datetime>) End date of the request.
      #   If this is a one-time request, the request remains active until all
      #   instances launch, the request is canceled, or this date is reached.
      #   If the request is persistent, it remains active until it is canceled
      #   or this date and time is reached.
      # * +:launch_group+ - (String) Specifies the instance launch group.
      #   Launch groups are Spot Instances that launch and terminate together.
      # * +:availability_zone_group+ - (String) Specifies the Availability Zone
      #   group. When specifying the same Availability Zone group for all Spot
      #   Instance requests, all Spot Instances are launched in the same
      #   Availability Zone.
      # * +:launch_specification+ - (Hash) Specifies additional launch instance
      #   information.
      #   * +:image_id+ - (String) The AMI ID.
      #   * +:key_name+ - (String) The name of the key pair.
      #   * +:security_groups+ - (Array<Hash>)
      #     * +:group_name+ - (String)
      #     * +:group_id+ - (String)
      #   * +:user_data+ - (String) Optional data, specific to a user's
      #     application, to provide in the launch request. All instances that
      #     collectively comprise the launch request have access to this data.
      #     User data is never returned through API responses.
      #   * +:addressing_type+ - (String) Deprecated.
      #   * +:instance_type+ - (String) Specifies the instance type.
      #   * +:placement+ - (Hash) Defines a placement item.
      #     * +:availability_zone+ - (String) The availability zone in which an
      #       Amazon EC2 instance runs.
      #     * +:group_name+ - (String) The name of the PlacementGroup in which
      #       an Amazon EC2 instance runs. Placement groups are primarily used
      #       for launching High Performance Computing instances in the same
      #       group to ensure fast connection speeds.
      #   * +:kernel_id+ - (String) Specifies the ID of the kernel to select.
      #   * +:ramdisk_id+ - (String) Specifies the ID of the RAM disk to
      #     select. Some kernels require additional drivers at launch. Check
      #     the kernel requirements for information on whether or not you need
      #     to specify a RAM disk and search for the kernel ID.
      #   * +:block_device_mappings+ - (Array<Hash>) Specifies how block
      #     devices are exposed to the instance. Each mapping is made up of a
      #     virtualName and a deviceName.
      #     * +:virtual_name+ - (String) Specifies the virtual device name.
      #     * +:device_name+ - (String) Specifies the device name (e.g.,
      #       /dev/sdh).
      #     * +:ebs+ - (Hash) Specifies parameters used to automatically setup
      #       Amazon EBS volumes when the instance is launched.
      #       * +:snapshot_id+ - (String) The ID of the snapshot from which the
      #         volume will be created.
      #       * +:volume_size+ - (Integer) The size of the volume, in
      #         gigabytes.
      #       * +:delete_on_termination+ - (Boolean) Specifies whether the
      #         Amazon EBS volume is deleted on instance termination.
      #     * +:no_device+ - (String) Specifies the device name to suppress
      #       during instance launch.
      #   * +:monitoring_enabled+ - (Boolean) Enables monitoring for the
      #     instance.
      #   * +:subnet_id+ - (String) Specifies the Amazon VPC subnet ID within
      #     which to launch the instance(s) for Amazon Virtual Private Cloud.
      #   * +:network_interfaces+ - (Array<Hash>)
      #     * +:network_interface_id+ - (String)
      #     * +:device_index+ - (Integer)
      #     * +:subnet_id+ - (String)
      #     * +:description+ - (String)
      #     * +:private_ip_address+ - (String)
      #     * +:groups+ - (Array<String>)
      #     * +:delete_on_termination+ - (Boolean)
      #   * +:iam_instance_profile+ - (Hash)
      #     * +:arn+ - (String)
      #     * +:name+ - (String)
      #
      # === Response Structure:
      #
      # * +:spot_instance_request_set+ - (Array<Hash>)
      #   * +:spot_instance_request_id+ - (String)
      #   * +:spot_price+ - (String)
      #   * +:type+ - (String)
      #   * +:state+ - (String)
      #   * +:fault+ - (Hash)
      #     * +:code+ - (String)
      #     * +:message+ - (String)
      #   * +:valid_from+ - (Time)
      #   * +:valid_until+ - (Time)
      #   * +:launch_group+ - (String)
      #   * +:availability_zone_group+ - (String)
      #   * +:launch_specification+ - (Hash)
      #     * +:image_id+ - (String)
      #     * +:key_name+ - (String)
      #     * +:group_set+ - (Array<Hash>)
      #       * +:group_name+ - (String)
      #       * +:group_id+ - (String)
      #     * +:user_data+ - (String)
      #     * +:addressing_type+ - (String)
      #     * +:instance_type+ - (String)
      #     * +:placement+ - (Hash)
      #       * +:availability_zone+ - (String)
      #       * +:group_name+ - (String)
      #     * +:kernel_id+ - (String)
      #     * +:ramdisk_id+ - (String)
      #     * +:block_device_mapping+ - (Array<Hash>)
      #       * +:virtual_name+ - (String)
      #       * +:device_name+ - (String)
      #       * +:ebs+ - (Hash)
      #         * +:snapshot_id+ - (String)
      #         * +:volume_size+ - (Integer)
      #         * +:delete_on_termination+ - (Boolean)
      #       * +:no_device+ - (String)
      #     * +:monitoring_enabled+ - (Boolean)
      #     * +:subnet_id+ - (String)
      #     * +:network_interface_set+ - (Array<Hash>)
      #       * +:network_interface_id+ - (String)
      #       * +:device_index+ - (Integer)
      #       * +:subnet_id+ - (String)
      #       * +:description+ - (String)
      #       * +:private_ip_address+ - (String)
      #       * +:security_group_id+ - (Array<String>)
      #       * +:delete_on_termination+ - (Boolean)
      #     * +:iam_instance_profile+ - (Hash)
      #       * +:arn+ - (String)
      #       * +:name+ - (String)
      #   * +:instance_id+ - (String)
      #   * +:create_time+ - (Time)
      #   * +:product_description+ - (String)
      #   * +:tag_set+ - (Array<Hash>)
      #     * +:key+ - (String)
      #     * +:value+ - (String)
      #   * +:launched_availability_zone+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :request_spot_instances, 'RequestSpotInstances'

      # Calls the ResetImageAttribute API operation.
      # @method reset_image_attribute(options = {})
      #
      # === Options:
      #
      # * +:image_id+ - *required* - (String) The ID of the AMI whose attribute
      #   is being reset.
      # * +:attribute+ - *required* - (String) The name of the attribute being
      #   reset. Available attribute names: launchPermission
      #
      # === Response Structure:
      #
      # This method returns no response data.
      #
      # @return [Core::Response]
      #
      define_client_method :reset_image_attribute, 'ResetImageAttribute'

      # Calls the ResetInstanceAttribute API operation.
      # @method reset_instance_attribute(options = {})
      #
      # === Options:
      #
      # * +:instance_id+ - *required* - (String) The ID of the Amazon EC2
      #   instance whose attribute is being reset.
      # * +:attribute+ - *required* - (String) The name of the attribute being
      #   reset. Available attribute names: kernel, ramdisk
      #
      # === Response Structure:
      #
      # This method returns no response data.
      #
      # @return [Core::Response]
      #
      define_client_method :reset_instance_attribute, 'ResetInstanceAttribute'

      # Calls the ResetNetworkInterfaceAttribute API operation.
      # @method reset_network_interface_attribute(options = {})
      #
      # === Options:
      #
      # * +:network_interface_id+ - *required* - (String)
      # * +:source_dest_check+ - (String)
      #
      # === Response Structure:
      #
      # This method returns no response data.
      #
      # @return [Core::Response]
      #
      define_client_method :reset_network_interface_attribute, 'ResetNetworkInterfaceAttribute'

      # Calls the ResetSnapshotAttribute API operation.
      # @method reset_snapshot_attribute(options = {})
      #
      # === Options:
      #
      # * +:snapshot_id+ - *required* - (String) The ID of the snapshot whose
      #   attribute is being reset.
      # * +:attribute+ - *required* - (String) The name of the attribute being
      #   reset. Available attribute names: createVolumePermission
      #
      # === Response Structure:
      #
      # This method returns no response data.
      #
      # @return [Core::Response]
      #
      define_client_method :reset_snapshot_attribute, 'ResetSnapshotAttribute'

      # Calls the RevokeSecurityGroupEgress API operation.
      # @method revoke_security_group_egress(options = {})
      #
      # === Options:
      #
      # * +:group_id+ - *required* - (String) ID of the VPC security group to
      #   modify.
      # * +:source_security_group_name+ - (String) Deprecated.
      # * +:source_security_group_owner_id+ - (String) Deprecated.
      # * +:ip_protocol+ - (String) Deprecated.
      # * +:from_port+ - (Integer) Deprecated.
      # * +:to_port+ - (Integer) Deprecated.
      # * +:cidr_ip+ - (String) Deprecated.
      # * +:ip_permissions+ - (Array<Hash>) List of IP permissions to authorize
      #   on the specified security group. Specifying permissions through IP
      #   permissions is the preferred way of authorizing permissions since it
      #   offers more flexibility and control.
      #   * +:ip_protocol+ - (String) The IP protocol of this permission. Valid
      #     protocol values: tcp, udp, icmp
      #   * +:from_port+ - (Integer) Start of port range for the TCP and UDP
      #     protocols, or an ICMP type number. An ICMP type number of -1
      #     indicates a wildcard (i.e., any ICMP type number).
      #   * +:to_port+ - (Integer) End of port range for the TCP and UDP
      #     protocols, or an ICMP code. An ICMP code of -1 indicates a wildcard
      #     (i.e., any ICMP code).
      #   * +:user_id_group_pairs+ - (Array<Hash>) The list of AWS user IDs and
      #     groups included in this permission.
      #     * +:user_id+ - (String) The AWS user ID of an account.
      #     * +:group_name+ - (String) Name of the security group in the
      #       specified AWS account. Cannot be used when specifying a CIDR IP
      #       address range.
      #     * +:group_id+ - (String) ID of the security group in the specified
      #       AWS account. Cannot be used when specifying a CIDR IP address
      #       range.
      #   * +:ip_ranges+ - (Array<Hash>) The list of CIDR IP ranges included in
      #     this permission.
      #     * +:cidr_ip+ - (String) The list of CIDR IP ranges.
      #
      # === Response Structure:
      #
      # This method returns no response data.
      #
      # @return [Core::Response]
      #
      define_client_method :revoke_security_group_egress, 'RevokeSecurityGroupEgress'

      # Calls the RevokeSecurityGroupIngress API operation.
      # @method revoke_security_group_ingress(options = {})
      #
      # === Options:
      #
      # * +:group_name+ - (String) Name of the standard (EC2) security group to
      #   modify. The group must belong to your account. Can be used instead of
      #   GroupID for standard (EC2) security groups.
      # * +:group_id+ - (String) ID of the standard (EC2) or VPC security group
      #   to modify. The group must belong to your account. Required for VPC
      #   security groups; can be used instead of GroupName for standard (EC2)
      #   security groups.
      # * +:source_security_group_name+ - (String) Deprecated
      # * +:source_security_group_owner_id+ - (String) Deprecated
      # * +:ip_protocol+ - (String) Deprecated
      # * +:from_port+ - (Integer) Deprecated
      # * +:to_port+ - (Integer) Deprecated
      # * +:cidr_ip+ - (String) Deprecated
      # * +:ip_permissions+ - (Array<Hash>) List of IP permissions to revoke on
      #   the specified security group. For an IP permission to be removed, it
      #   must exactly match one of the IP permissions you specify in this
      #   list. Specifying permissions through IP permissions is the preferred
      #   way of revoking permissions since it offers more flexibility and
      #   control.
      #   * +:ip_protocol+ - (String) The IP protocol of this permission. Valid
      #     protocol values: tcp, udp, icmp
      #   * +:from_port+ - (Integer) Start of port range for the TCP and UDP
      #     protocols, or an ICMP type number. An ICMP type number of -1
      #     indicates a wildcard (i.e., any ICMP type number).
      #   * +:to_port+ - (Integer) End of port range for the TCP and UDP
      #     protocols, or an ICMP code. An ICMP code of -1 indicates a wildcard
      #     (i.e., any ICMP code).
      #   * +:user_id_group_pairs+ - (Array<Hash>) The list of AWS user IDs and
      #     groups included in this permission.
      #     * +:user_id+ - (String) The AWS user ID of an account.
      #     * +:group_name+ - (String) Name of the security group in the
      #       specified AWS account. Cannot be used when specifying a CIDR IP
      #       address range.
      #     * +:group_id+ - (String) ID of the security group in the specified
      #       AWS account. Cannot be used when specifying a CIDR IP address
      #       range.
      #   * +:ip_ranges+ - (Array<Hash>) The list of CIDR IP ranges included in
      #     this permission.
      #     * +:cidr_ip+ - (String) The list of CIDR IP ranges.
      #
      # === Response Structure:
      #
      # This method returns no response data.
      #
      # @return [Core::Response]
      #
      define_client_method :revoke_security_group_ingress, 'RevokeSecurityGroupIngress'

      # Calls the RunInstances API operation.
      # @method run_instances(options = {})
      #
      # === Options:
      #
      # * +:image_id+ - *required* - (String) Unique ID of a machine image,
      #   returned by a call to DescribeImages.
      # * +:min_count+ - *required* - (Integer) Minimum number of instances to
      #   launch. If the value is more than Amazon EC2 can launch, no instances
      #   are launched at all.
      # * +:max_count+ - *required* - (Integer) Maximum number of instances to
      #   launch. If the value is more than Amazon EC2 can launch, the largest
      #   possible number above minCount will be launched instead. Between 1
      #   and the maximum number allowed for your account (default: 20).
      # * +:key_name+ - (String) The name of the key pair.
      # * +:security_groups+ - (Array<String>) The names of the security groups
      #   into which the instances will be launched.
      # * +:security_group_ids+ - (Array<String>)
      # * +:user_data+ - (String) Specifies additional information to make
      #   available to the instance(s).
      # * +:addressing_type+ - (String)
      # * +:instance_type+ - (String) Specifies the instance type for the
      #   launched instances.
      # * +:placement+ - (Hash) Specifies the placement constraints
      #   (Availability Zones) for launching the instances.
      #   * +:availability_zone+ - (String) The availability zone in which an
      #     Amazon EC2 instance runs.
      #   * +:group_name+ - (String) The name of the PlacementGroup in which an
      #     Amazon EC2 instance runs. Placement groups are primarily used for
      #     launching High Performance Computing instances in the same group to
      #     ensure fast connection speeds.
      #   * +:tenancy+ - (String) The allowed tenancy of instances launched
      #     into the VPC. A value of default means instances can be launched
      #     with any tenancy; a value of dedicated means all instances launched
      #     into the VPC will be launched as dedicated tenancy regardless of
      #     the tenancy assigned to the instance at launch.
      # * +:kernel_id+ - (String) The ID of the kernel with which to launch the
      #   instance.
      # * +:ramdisk_id+ - (String) The ID of the RAM disk with which to launch
      #   the instance. Some kernels require additional drivers at launch.
      #   Check the kernel requirements for information on whether you need to
      #   specify a RAM disk. To find kernel requirements, go to the Resource
      #   Center and search for the kernel ID.
      # * +:block_device_mappings+ - (Array<Hash>) Specifies how block devices
      #   are exposed to the instance. Each mapping is made up of a virtualName
      #   and a deviceName.
      #   * +:virtual_name+ - (String) Specifies the virtual device name.
      #   * +:device_name+ - (String) Specifies the device name (e.g.,
      #     /dev/sdh).
      #   * +:ebs+ - (Hash) Specifies parameters used to automatically setup
      #     Amazon EBS volumes when the instance is launched.
      #     * +:snapshot_id+ - (String) The ID of the snapshot from which the
      #       volume will be created.
      #     * +:volume_size+ - (Integer) The size of the volume, in gigabytes.
      #     * +:delete_on_termination+ - (Boolean) Specifies whether the Amazon
      #       EBS volume is deleted on instance termination.
      #   * +:no_device+ - (String) Specifies the device name to suppress
      #     during instance launch.
      # * +:monitoring+ - (Hash) Enables monitoring for the instance.
      #   * +:enabled+ - *required* - (Boolean)
      # * +:subnet_id+ - (String) Specifies the subnet ID within which to
      #   launch the instance(s) for Amazon Virtual Private Cloud.
      # * +:disable_api_termination+ - (Boolean) Specifies whether the instance
      #   can be terminated using the APIs. You must modify this attribute
      #   before you can terminate any "locked" instances from the APIs.
      # * +:instance_initiated_shutdown_behavior+ - (String) Specifies whether
      #   the instance's Amazon EBS volumes are stopped or terminated when the
      #   instance is shut down.
      # * +:license+ - (Hash) Specifies active licenses in use and attached to
      #   an Amazon EC2 instance.
      #   * +:pool+ - (String) The license pool from which to take a license
      #     when starting Amazon EC2 instances in the associated RunInstances
      #     request.
      # * +:private_ip_address+ - (String) If you're using Amazon Virtual
      #   Private Cloud, you can optionally use this parameter to assign the
      #   instance a specific available IP address from the subnet.
      # * +:client_token+ - (String) Unique, case-sensitive identifier you
      #   provide to ensure idempotency of the request. For more information,
      #   go to How to Ensure Idempotency in the Amazon Elastic Compute Cloud
      #   User Guide.
      # * +:additional_info+ - (String)
      # * +:network_interfaces+ - (Array<Hash>)
      #   * +:network_interface_id+ - (String)
      #   * +:device_index+ - (Integer)
      #   * +:subnet_id+ - (String)
      #   * +:description+ - (String)
      #   * +:private_ip_address+ - (String)
      #   * +:groups+ - (Array<String>)
      #   * +:delete_on_termination+ - (Boolean)
      # * +:iam_instance_profile+ - (Hash)
      #   * +:arn+ - (String)
      #   * +:name+ - (String)
      #
      # === Response Structure:
      #
      # * +:reservation_id+ - (String)
      # * +:owner_id+ - (String)
      # * +:requester_id+ - (String)
      # * +:group_set+ - (Array<Hash>)
      #   * +:group_name+ - (String)
      #   * +:group_id+ - (String)
      # * +:instances_set+ - (Array<Hash>)
      #   * +:instance_id+ - (String)
      #   * +:image_id+ - (String)
      #   * +:instance_state+ - (Hash)
      #     * +:code+ - (Integer)
      #     * +:name+ - (String)
      #   * +:private_dns_name+ - (String)
      #   * +:dns_name+ - (String)
      #   * +:reason+ - (String)
      #   * +:key_name+ - (String)
      #   * +:ami_launch_index+ - (Integer)
      #   * +:product_codes+ - (Array<Hash>)
      #     * +:product_code+ - (String)
      #     * +:type+ - (String)
      #   * +:instance_type+ - (String)
      #   * +:launch_time+ - (Time)
      #   * +:placement+ - (Hash)
      #     * +:availability_zone+ - (String)
      #     * +:group_name+ - (String)
      #     * +:tenancy+ - (String)
      #   * +:kernel_id+ - (String)
      #   * +:ramdisk_id+ - (String)
      #   * +:platform+ - (String)
      #   * +:monitoring+ - (Hash)
      #     * +:state+ - (String)
      #   * +:subnet_id+ - (String)
      #   * +:vpc_id+ - (String)
      #   * +:private_ip_address+ - (String)
      #   * +:ip_address+ - (String)
      #   * +:state_reason+ - (Hash)
      #     * +:code+ - (String)
      #     * +:message+ - (String)
      #   * +:architecture+ - (String)
      #   * +:root_device_type+ - (String)
      #   * +:root_device_name+ - (String)
      #   * +:block_device_mapping+ - (Array<Hash>)
      #     * +:device_name+ - (String)
      #     * +:ebs+ - (Hash)
      #       * +:volume_id+ - (String)
      #       * +:status+ - (String)
      #       * +:attach_time+ - (Time)
      #       * +:delete_on_termination+ - (Boolean)
      #   * +:virtualization_type+ - (String)
      #   * +:instance_lifecycle+ - (String)
      #   * +:spot_instance_request_id+ - (String)
      #   * +:license+ - (Hash)
      #     * +:pool+ - (String)
      #   * +:client_token+ - (String)
      #   * +:tag_set+ - (Array<Hash>)
      #     * +:key+ - (String)
      #     * +:value+ - (String)
      #   * +:group_set+ - (Array<Hash>)
      #     * +:group_name+ - (String)
      #     * +:group_id+ - (String)
      #   * +:source_dest_check+ - (Boolean)
      #   * +:hypervisor+ - (String)
      #   * +:network_interface_set+ - (Array<Hash>)
      #     * +:network_interface_id+ - (String)
      #     * +:subnet_id+ - (String)
      #     * +:vpc_id+ - (String)
      #     * +:description+ - (String)
      #     * +:owner_id+ - (String)
      #     * +:status+ - (String)
      #     * +:private_ip_address+ - (String)
      #     * +:private_dns_name+ - (String)
      #     * +:source_dest_check+ - (Boolean)
      #     * +:group_set+ - (Array<Hash>)
      #       * +:group_name+ - (String)
      #       * +:group_id+ - (String)
      #     * +:attachment+ - (Hash)
      #       * +:attachment_id+ - (String)
      #       * +:device_index+ - (Integer)
      #       * +:status+ - (String)
      #       * +:attach_time+ - (Time)
      #       * +:delete_on_termination+ - (Boolean)
      #     * +:association+ - (Hash)
      #       * +:public_ip+ - (String)
      #       * +:ip_owner_id+ - (String)
      #   * +:iam_instance_profile+ - (Hash)
      #     * +:arn+ - (String)
      #     * +:id+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :run_instances, 'RunInstances'

      # Calls the StartInstances API operation.
      # @method start_instances(options = {})
      #
      # === Options:
      #
      # * +:instance_ids+ - *required* - (Array<String>) The list of Amazon EC2
      #   instances to start.
      #
      # === Response Structure:
      #
      # * +:instances_set+ - (Array<Hash>)
      #   * +:instance_id+ - (String)
      #   * +:current_state+ - (Hash)
      #     * +:code+ - (Integer)
      #     * +:name+ - (String)
      #   * +:previous_state+ - (Hash)
      #     * +:code+ - (Integer)
      #     * +:name+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :start_instances, 'StartInstances'

      # Calls the StopInstances API operation.
      # @method stop_instances(options = {})
      #
      # === Options:
      #
      # * +:instance_ids+ - *required* - (Array<String>) The list of Amazon EC2
      #   instances to stop.
      # * +:force+ - (Boolean) Forces the instance to stop. The instance will
      #   not have an opportunity to flush file system caches nor file system
      #   meta data. If you use this option, you must perform file system check
      #   and repair procedures. This option is not recommended for Windows
      #   instances.
      #
      # === Response Structure:
      #
      # * +:instances_set+ - (Array<Hash>)
      #   * +:instance_id+ - (String)
      #   * +:current_state+ - (Hash)
      #     * +:code+ - (Integer)
      #     * +:name+ - (String)
      #   * +:previous_state+ - (Hash)
      #     * +:code+ - (Integer)
      #     * +:name+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :stop_instances, 'StopInstances'

      # Calls the TerminateInstances API operation.
      # @method terminate_instances(options = {})
      #
      # === Options:
      #
      # * +:instance_ids+ - *required* - (Array<String>) The list of instances
      #   to terminate.
      #
      # === Response Structure:
      #
      # * +:instances_set+ - (Array<Hash>)
      #   * +:instance_id+ - (String)
      #   * +:current_state+ - (Hash)
      #     * +:code+ - (Integer)
      #     * +:name+ - (String)
      #   * +:previous_state+ - (Hash)
      #     * +:code+ - (Integer)
      #     * +:name+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :terminate_instances, 'TerminateInstances'

      # Calls the UnmonitorInstances API operation.
      # @method unmonitor_instances(options = {})
      #
      # === Options:
      #
      # * +:instance_ids+ - *required* - (Array<String>) The list of Amazon EC2
      #   instances on which to disable monitoring.
      #
      # === Response Structure:
      #
      # * +:instances_set+ - (Array<Hash>)
      #   * +:instance_id+ - (String)
      #   * +:monitoring+ - (Hash)
      #     * +:state+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :unmonitor_instances, 'UnmonitorInstances'

      ## end client methods ##

    end
  end
end
