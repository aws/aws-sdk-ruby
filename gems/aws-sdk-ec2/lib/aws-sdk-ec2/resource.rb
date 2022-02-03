# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::EC2

  # This class provides a resource oriented interface for EC2.
  # To create a resource object:
  #
  #     resource = Aws::EC2::Resource.new(region: 'us-west-2')
  #
  # You can supply a client object with custom configuration that will be used for all resource operations.
  # If you do not pass `:client`, a default client will be constructed.
  #
  #     client = Aws::EC2::Client.new(region: 'us-west-2')
  #     resource = Aws::EC2::Resource.new(client: client)
  #
  class Resource

    # @param options ({})
    # @option options [Client] :client
    def initialize(options = {})
      @client = options[:client] || Client.new(options)
    end

    # @return [Client]
    def client
      @client
    end

    # @!group Actions

    # @example Request syntax with placeholder values
    #
    #   dhcpoptions = ec2.create_dhcp_options({
    #     dhcp_configurations: [ # required
    #       {
    #         key: "String",
    #         values: ["String"],
    #       },
    #     ],
    #     tag_specifications: [
    #       {
    #         resource_type: "capacity-reservation", # accepts capacity-reservation, client-vpn-endpoint, customer-gateway, carrier-gateway, dedicated-host, dhcp-options, egress-only-internet-gateway, elastic-ip, elastic-gpu, export-image-task, export-instance-task, fleet, fpga-image, host-reservation, image, import-image-task, import-snapshot-task, instance, instance-event-window, internet-gateway, ipam, ipam-pool, ipam-scope, ipv4pool-ec2, ipv6pool-ec2, key-pair, launch-template, local-gateway, local-gateway-route-table, local-gateway-virtual-interface, local-gateway-virtual-interface-group, local-gateway-route-table-vpc-association, local-gateway-route-table-virtual-interface-group-association, natgateway, network-acl, network-interface, network-insights-analysis, network-insights-path, network-insights-access-scope, network-insights-access-scope-analysis, placement-group, prefix-list, replace-root-volume-task, reserved-instances, route-table, security-group, security-group-rule, snapshot, spot-fleet-request, spot-instances-request, subnet, traffic-mirror-filter, traffic-mirror-session, traffic-mirror-target, transit-gateway, transit-gateway-attachment, transit-gateway-connect-peer, transit-gateway-multicast-domain, transit-gateway-route-table, volume, vpc, vpc-endpoint, vpc-endpoint-service, vpc-peering-connection, vpn-connection, vpn-gateway, vpc-flow-log
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String",
    #           },
    #         ],
    #       },
    #     ],
    #     dry_run: false,
    #   })
    # @param [Hash] options ({})
    # @option options [required, Array<Types::NewDhcpConfiguration>] :dhcp_configurations
    #   A DHCP configuration option.
    # @option options [Array<Types::TagSpecification>] :tag_specifications
    #   The tags to assign to the DHCP option.
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @return [DhcpOptions]
    def create_dhcp_options(options = {})
      resp = @client.create_dhcp_options(options)
      DhcpOptions.new(
        id: resp.data.dhcp_options.dhcp_options_id,
        data: resp.data.dhcp_options,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   instance = ec2.create_instances({
    #     block_device_mappings: [
    #       {
    #         device_name: "String",
    #         virtual_name: "String",
    #         ebs: {
    #           delete_on_termination: false,
    #           iops: 1,
    #           snapshot_id: "SnapshotId",
    #           volume_size: 1,
    #           volume_type: "standard", # accepts standard, io1, io2, gp2, sc1, st1, gp3
    #           kms_key_id: "String",
    #           throughput: 1,
    #           outpost_arn: "String",
    #           encrypted: false,
    #         },
    #         no_device: "String",
    #       },
    #     ],
    #     image_id: "ImageId",
    #     instance_type: "a1.medium", # accepts a1.medium, a1.large, a1.xlarge, a1.2xlarge, a1.4xlarge, a1.metal, c1.medium, c1.xlarge, c3.large, c3.xlarge, c3.2xlarge, c3.4xlarge, c3.8xlarge, c4.large, c4.xlarge, c4.2xlarge, c4.4xlarge, c4.8xlarge, c5.large, c5.xlarge, c5.2xlarge, c5.4xlarge, c5.9xlarge, c5.12xlarge, c5.18xlarge, c5.24xlarge, c5.metal, c5a.large, c5a.xlarge, c5a.2xlarge, c5a.4xlarge, c5a.8xlarge, c5a.12xlarge, c5a.16xlarge, c5a.24xlarge, c5ad.large, c5ad.xlarge, c5ad.2xlarge, c5ad.4xlarge, c5ad.8xlarge, c5ad.12xlarge, c5ad.16xlarge, c5ad.24xlarge, c5d.large, c5d.xlarge, c5d.2xlarge, c5d.4xlarge, c5d.9xlarge, c5d.12xlarge, c5d.18xlarge, c5d.24xlarge, c5d.metal, c5n.large, c5n.xlarge, c5n.2xlarge, c5n.4xlarge, c5n.9xlarge, c5n.18xlarge, c5n.metal, c6g.medium, c6g.large, c6g.xlarge, c6g.2xlarge, c6g.4xlarge, c6g.8xlarge, c6g.12xlarge, c6g.16xlarge, c6g.metal, c6gd.medium, c6gd.large, c6gd.xlarge, c6gd.2xlarge, c6gd.4xlarge, c6gd.8xlarge, c6gd.12xlarge, c6gd.16xlarge, c6gd.metal, c6gn.medium, c6gn.large, c6gn.xlarge, c6gn.2xlarge, c6gn.4xlarge, c6gn.8xlarge, c6gn.12xlarge, c6gn.16xlarge, c6i.large, c6i.xlarge, c6i.2xlarge, c6i.4xlarge, c6i.8xlarge, c6i.12xlarge, c6i.16xlarge, c6i.24xlarge, c6i.32xlarge, c6i.metal, cc1.4xlarge, cc2.8xlarge, cg1.4xlarge, cr1.8xlarge, d2.xlarge, d2.2xlarge, d2.4xlarge, d2.8xlarge, d3.xlarge, d3.2xlarge, d3.4xlarge, d3.8xlarge, d3en.xlarge, d3en.2xlarge, d3en.4xlarge, d3en.6xlarge, d3en.8xlarge, d3en.12xlarge, dl1.24xlarge, f1.2xlarge, f1.4xlarge, f1.16xlarge, g2.2xlarge, g2.8xlarge, g3.4xlarge, g3.8xlarge, g3.16xlarge, g3s.xlarge, g4ad.xlarge, g4ad.2xlarge, g4ad.4xlarge, g4ad.8xlarge, g4ad.16xlarge, g4dn.xlarge, g4dn.2xlarge, g4dn.4xlarge, g4dn.8xlarge, g4dn.12xlarge, g4dn.16xlarge, g4dn.metal, g5.xlarge, g5.2xlarge, g5.4xlarge, g5.8xlarge, g5.12xlarge, g5.16xlarge, g5.24xlarge, g5.48xlarge, g5g.xlarge, g5g.2xlarge, g5g.4xlarge, g5g.8xlarge, g5g.16xlarge, g5g.metal, hi1.4xlarge, hpc6a.48xlarge, hs1.8xlarge, h1.2xlarge, h1.4xlarge, h1.8xlarge, h1.16xlarge, i2.xlarge, i2.2xlarge, i2.4xlarge, i2.8xlarge, i3.large, i3.xlarge, i3.2xlarge, i3.4xlarge, i3.8xlarge, i3.16xlarge, i3.metal, i3en.large, i3en.xlarge, i3en.2xlarge, i3en.3xlarge, i3en.6xlarge, i3en.12xlarge, i3en.24xlarge, i3en.metal, im4gn.large, im4gn.xlarge, im4gn.2xlarge, im4gn.4xlarge, im4gn.8xlarge, im4gn.16xlarge, inf1.xlarge, inf1.2xlarge, inf1.6xlarge, inf1.24xlarge, is4gen.medium, is4gen.large, is4gen.xlarge, is4gen.2xlarge, is4gen.4xlarge, is4gen.8xlarge, m1.small, m1.medium, m1.large, m1.xlarge, m2.xlarge, m2.2xlarge, m2.4xlarge, m3.medium, m3.large, m3.xlarge, m3.2xlarge, m4.large, m4.xlarge, m4.2xlarge, m4.4xlarge, m4.10xlarge, m4.16xlarge, m5.large, m5.xlarge, m5.2xlarge, m5.4xlarge, m5.8xlarge, m5.12xlarge, m5.16xlarge, m5.24xlarge, m5.metal, m5a.large, m5a.xlarge, m5a.2xlarge, m5a.4xlarge, m5a.8xlarge, m5a.12xlarge, m5a.16xlarge, m5a.24xlarge, m5ad.large, m5ad.xlarge, m5ad.2xlarge, m5ad.4xlarge, m5ad.8xlarge, m5ad.12xlarge, m5ad.16xlarge, m5ad.24xlarge, m5d.large, m5d.xlarge, m5d.2xlarge, m5d.4xlarge, m5d.8xlarge, m5d.12xlarge, m5d.16xlarge, m5d.24xlarge, m5d.metal, m5dn.large, m5dn.xlarge, m5dn.2xlarge, m5dn.4xlarge, m5dn.8xlarge, m5dn.12xlarge, m5dn.16xlarge, m5dn.24xlarge, m5dn.metal, m5n.large, m5n.xlarge, m5n.2xlarge, m5n.4xlarge, m5n.8xlarge, m5n.12xlarge, m5n.16xlarge, m5n.24xlarge, m5n.metal, m5zn.large, m5zn.xlarge, m5zn.2xlarge, m5zn.3xlarge, m5zn.6xlarge, m5zn.12xlarge, m5zn.metal, m6a.large, m6a.xlarge, m6a.2xlarge, m6a.4xlarge, m6a.8xlarge, m6a.12xlarge, m6a.16xlarge, m6a.24xlarge, m6a.32xlarge, m6a.48xlarge, m6g.metal, m6g.medium, m6g.large, m6g.xlarge, m6g.2xlarge, m6g.4xlarge, m6g.8xlarge, m6g.12xlarge, m6g.16xlarge, m6gd.metal, m6gd.medium, m6gd.large, m6gd.xlarge, m6gd.2xlarge, m6gd.4xlarge, m6gd.8xlarge, m6gd.12xlarge, m6gd.16xlarge, m6i.large, m6i.xlarge, m6i.2xlarge, m6i.4xlarge, m6i.8xlarge, m6i.12xlarge, m6i.16xlarge, m6i.24xlarge, m6i.32xlarge, m6i.metal, mac1.metal, p2.xlarge, p2.8xlarge, p2.16xlarge, p3.2xlarge, p3.8xlarge, p3.16xlarge, p3dn.24xlarge, p4d.24xlarge, r3.large, r3.xlarge, r3.2xlarge, r3.4xlarge, r3.8xlarge, r4.large, r4.xlarge, r4.2xlarge, r4.4xlarge, r4.8xlarge, r4.16xlarge, r5.large, r5.xlarge, r5.2xlarge, r5.4xlarge, r5.8xlarge, r5.12xlarge, r5.16xlarge, r5.24xlarge, r5.metal, r5a.large, r5a.xlarge, r5a.2xlarge, r5a.4xlarge, r5a.8xlarge, r5a.12xlarge, r5a.16xlarge, r5a.24xlarge, r5ad.large, r5ad.xlarge, r5ad.2xlarge, r5ad.4xlarge, r5ad.8xlarge, r5ad.12xlarge, r5ad.16xlarge, r5ad.24xlarge, r5b.large, r5b.xlarge, r5b.2xlarge, r5b.4xlarge, r5b.8xlarge, r5b.12xlarge, r5b.16xlarge, r5b.24xlarge, r5b.metal, r5d.large, r5d.xlarge, r5d.2xlarge, r5d.4xlarge, r5d.8xlarge, r5d.12xlarge, r5d.16xlarge, r5d.24xlarge, r5d.metal, r5dn.large, r5dn.xlarge, r5dn.2xlarge, r5dn.4xlarge, r5dn.8xlarge, r5dn.12xlarge, r5dn.16xlarge, r5dn.24xlarge, r5dn.metal, r5n.large, r5n.xlarge, r5n.2xlarge, r5n.4xlarge, r5n.8xlarge, r5n.12xlarge, r5n.16xlarge, r5n.24xlarge, r5n.metal, r6g.medium, r6g.large, r6g.xlarge, r6g.2xlarge, r6g.4xlarge, r6g.8xlarge, r6g.12xlarge, r6g.16xlarge, r6g.metal, r6gd.medium, r6gd.large, r6gd.xlarge, r6gd.2xlarge, r6gd.4xlarge, r6gd.8xlarge, r6gd.12xlarge, r6gd.16xlarge, r6gd.metal, r6i.large, r6i.xlarge, r6i.2xlarge, r6i.4xlarge, r6i.8xlarge, r6i.12xlarge, r6i.16xlarge, r6i.24xlarge, r6i.32xlarge, r6i.metal, t1.micro, t2.nano, t2.micro, t2.small, t2.medium, t2.large, t2.xlarge, t2.2xlarge, t3.nano, t3.micro, t3.small, t3.medium, t3.large, t3.xlarge, t3.2xlarge, t3a.nano, t3a.micro, t3a.small, t3a.medium, t3a.large, t3a.xlarge, t3a.2xlarge, t4g.nano, t4g.micro, t4g.small, t4g.medium, t4g.large, t4g.xlarge, t4g.2xlarge, u-6tb1.56xlarge, u-6tb1.112xlarge, u-9tb1.112xlarge, u-12tb1.112xlarge, u-6tb1.metal, u-9tb1.metal, u-12tb1.metal, u-18tb1.metal, u-24tb1.metal, vt1.3xlarge, vt1.6xlarge, vt1.24xlarge, x1.16xlarge, x1.32xlarge, x1e.xlarge, x1e.2xlarge, x1e.4xlarge, x1e.8xlarge, x1e.16xlarge, x1e.32xlarge, x2iezn.2xlarge, x2iezn.4xlarge, x2iezn.6xlarge, x2iezn.8xlarge, x2iezn.12xlarge, x2iezn.metal, x2gd.medium, x2gd.large, x2gd.xlarge, x2gd.2xlarge, x2gd.4xlarge, x2gd.8xlarge, x2gd.12xlarge, x2gd.16xlarge, x2gd.metal, z1d.large, z1d.xlarge, z1d.2xlarge, z1d.3xlarge, z1d.6xlarge, z1d.12xlarge, z1d.metal
    #     ipv_6_address_count: 1,
    #     ipv_6_addresses: [
    #       {
    #         ipv_6_address: "String",
    #       },
    #     ],
    #     kernel_id: "KernelId",
    #     key_name: "KeyPairName",
    #     max_count: 1, # required
    #     min_count: 1, # required
    #     monitoring: {
    #       enabled: false, # required
    #     },
    #     placement: {
    #       availability_zone: "String",
    #       affinity: "String",
    #       group_name: "PlacementGroupName",
    #       partition_number: 1,
    #       host_id: "String",
    #       tenancy: "default", # accepts default, dedicated, host
    #       spread_domain: "String",
    #       host_resource_group_arn: "String",
    #     },
    #     ramdisk_id: "RamdiskId",
    #     security_group_ids: ["SecurityGroupId"],
    #     security_groups: ["SecurityGroupName"],
    #     subnet_id: "SubnetId",
    #     user_data: "String",
    #     additional_info: "String",
    #     client_token: "String",
    #     disable_api_termination: false,
    #     dry_run: false,
    #     ebs_optimized: false,
    #     iam_instance_profile: {
    #       arn: "String",
    #       name: "String",
    #     },
    #     instance_initiated_shutdown_behavior: "stop", # accepts stop, terminate
    #     network_interfaces: [
    #       {
    #         associate_public_ip_address: false,
    #         delete_on_termination: false,
    #         description: "String",
    #         device_index: 1,
    #         groups: ["SecurityGroupId"],
    #         ipv_6_address_count: 1,
    #         ipv_6_addresses: [
    #           {
    #             ipv_6_address: "String",
    #           },
    #         ],
    #         network_interface_id: "NetworkInterfaceId",
    #         private_ip_address: "String",
    #         private_ip_addresses: [
    #           {
    #             primary: false,
    #             private_ip_address: "String",
    #           },
    #         ],
    #         secondary_private_ip_address_count: 1,
    #         subnet_id: "String",
    #         associate_carrier_ip_address: false,
    #         interface_type: "String",
    #         network_card_index: 1,
    #         ipv_4_prefixes: [
    #           {
    #             ipv_4_prefix: "String",
    #           },
    #         ],
    #         ipv_4_prefix_count: 1,
    #         ipv_6_prefixes: [
    #           {
    #             ipv_6_prefix: "String",
    #           },
    #         ],
    #         ipv_6_prefix_count: 1,
    #       },
    #     ],
    #     private_ip_address: "String",
    #     elastic_gpu_specification: [
    #       {
    #         type: "String", # required
    #       },
    #     ],
    #     elastic_inference_accelerators: [
    #       {
    #         type: "String", # required
    #         count: 1,
    #       },
    #     ],
    #     tag_specifications: [
    #       {
    #         resource_type: "capacity-reservation", # accepts capacity-reservation, client-vpn-endpoint, customer-gateway, carrier-gateway, dedicated-host, dhcp-options, egress-only-internet-gateway, elastic-ip, elastic-gpu, export-image-task, export-instance-task, fleet, fpga-image, host-reservation, image, import-image-task, import-snapshot-task, instance, instance-event-window, internet-gateway, ipam, ipam-pool, ipam-scope, ipv4pool-ec2, ipv6pool-ec2, key-pair, launch-template, local-gateway, local-gateway-route-table, local-gateway-virtual-interface, local-gateway-virtual-interface-group, local-gateway-route-table-vpc-association, local-gateway-route-table-virtual-interface-group-association, natgateway, network-acl, network-interface, network-insights-analysis, network-insights-path, network-insights-access-scope, network-insights-access-scope-analysis, placement-group, prefix-list, replace-root-volume-task, reserved-instances, route-table, security-group, security-group-rule, snapshot, spot-fleet-request, spot-instances-request, subnet, traffic-mirror-filter, traffic-mirror-session, traffic-mirror-target, transit-gateway, transit-gateway-attachment, transit-gateway-connect-peer, transit-gateway-multicast-domain, transit-gateway-route-table, volume, vpc, vpc-endpoint, vpc-endpoint-service, vpc-peering-connection, vpn-connection, vpn-gateway, vpc-flow-log
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String",
    #           },
    #         ],
    #       },
    #     ],
    #     launch_template: {
    #       launch_template_id: "LaunchTemplateId",
    #       launch_template_name: "String",
    #       version: "String",
    #     },
    #     instance_market_options: {
    #       market_type: "spot", # accepts spot
    #       spot_options: {
    #         max_price: "String",
    #         spot_instance_type: "one-time", # accepts one-time, persistent
    #         block_duration_minutes: 1,
    #         valid_until: Time.now,
    #         instance_interruption_behavior: "hibernate", # accepts hibernate, stop, terminate
    #       },
    #     },
    #     credit_specification: {
    #       cpu_credits: "String", # required
    #     },
    #     cpu_options: {
    #       core_count: 1,
    #       threads_per_core: 1,
    #     },
    #     capacity_reservation_specification: {
    #       capacity_reservation_preference: "open", # accepts open, none
    #       capacity_reservation_target: {
    #         capacity_reservation_id: "CapacityReservationId",
    #         capacity_reservation_resource_group_arn: "String",
    #       },
    #     },
    #     hibernation_options: {
    #       configured: false,
    #     },
    #     license_specifications: [
    #       {
    #         license_configuration_arn: "String",
    #       },
    #     ],
    #     metadata_options: {
    #       http_tokens: "optional", # accepts optional, required
    #       http_put_response_hop_limit: 1,
    #       http_endpoint: "disabled", # accepts disabled, enabled
    #       http_protocol_ipv_6: "disabled", # accepts disabled, enabled
    #       instance_metadata_tags: "disabled", # accepts disabled, enabled
    #     },
    #     enclave_options: {
    #       enabled: false,
    #     },
    #     private_dns_name_options: {
    #       hostname_type: "ip-name", # accepts ip-name, resource-name
    #       enable_resource_name_dns_a_record: false,
    #       enable_resource_name_dns_aaaa_record: false,
    #     },
    #   })
    # @param [Hash] options ({})
    # @option options [Array<Types::BlockDeviceMapping>] :block_device_mappings
    #   The block device mapping, which defines the EBS volumes and instance
    #   store volumes to attach to the instance at launch. For more
    #   information, see [Block device mappings][1] in the *Amazon EC2 User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/block-device-mapping-concepts.html
    # @option options [String] :image_id
    #   The ID of the AMI. An AMI ID is required to launch an instance and
    #   must be specified here or in a launch template.
    # @option options [String] :instance_type
    #   The instance type. For more information, see [Instance types][1] in
    #   the *Amazon EC2 User Guide*.
    #
    #   Default: `m1.small`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html
    # @option options [Integer] :ipv_6_address_count
    #   \[EC2-VPC\] The number of IPv6 addresses to associate with the primary
    #   network interface. Amazon EC2 chooses the IPv6 addresses from the
    #   range of your subnet. You cannot specify this option and the option to
    #   assign specific IPv6 addresses in the same request. You can specify
    #   this option if you've specified a minimum number of instances to
    #   launch.
    #
    #   You cannot specify this option and the network interfaces option in
    #   the same request.
    # @option options [Array<Types::InstanceIpv6Address>] :ipv_6_addresses
    #   \[EC2-VPC\] The IPv6 addresses from the range of the subnet to
    #   associate with the primary network interface. You cannot specify this
    #   option and the option to assign a number of IPv6 addresses in the same
    #   request. You cannot specify this option if you've specified a minimum
    #   number of instances to launch.
    #
    #   You cannot specify this option and the network interfaces option in
    #   the same request.
    # @option options [String] :kernel_id
    #   The ID of the kernel.
    #
    #   We recommend that you use PV-GRUB instead of kernels and RAM disks.
    #   For more information, see [PV-GRUB][1] in the *Amazon EC2 User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedkernels.html
    # @option options [String] :key_name
    #   The name of the key pair. You can create a key pair using
    #   [CreateKeyPair][1] or [ImportKeyPair][2].
    #
    #   If you do not specify a key pair, you can't connect to the instance
    #   unless you choose an AMI that is configured to allow users another way
    #   to log in.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateKeyPair.html
    #   [2]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ImportKeyPair.html
    # @option options [required, Integer] :max_count
    #   The maximum number of instances to launch. If you specify more
    #   instances than Amazon EC2 can launch in the target Availability Zone,
    #   Amazon EC2 launches the largest possible number of instances above
    #   `MinCount`.
    #
    #   Constraints: Between 1 and the maximum number you're allowed for the
    #   specified instance type. For more information about the default
    #   limits, and how to request an increase, see [How many instances can I
    #   run in Amazon EC2][1] in the Amazon EC2 FAQ.
    #
    #
    #
    #   [1]: http://aws.amazon.com/ec2/faqs/#How_many_instances_can_I_run_in_Amazon_EC2
    # @option options [required, Integer] :min_count
    #   The minimum number of instances to launch. If you specify a minimum
    #   that is more instances than Amazon EC2 can launch in the target
    #   Availability Zone, Amazon EC2 launches no instances.
    #
    #   Constraints: Between 1 and the maximum number you're allowed for the
    #   specified instance type. For more information about the default
    #   limits, and how to request an increase, see [How many instances can I
    #   run in Amazon EC2][1] in the Amazon EC2 General FAQ.
    #
    #
    #
    #   [1]: http://aws.amazon.com/ec2/faqs/#How_many_instances_can_I_run_in_Amazon_EC2
    # @option options [Types::RunInstancesMonitoringEnabled] :monitoring
    #   Specifies whether detailed monitoring is enabled for the instance.
    # @option options [Types::Placement] :placement
    #   The placement for the instance.
    # @option options [String] :ramdisk_id
    #   The ID of the RAM disk to select. Some kernels require additional
    #   drivers at launch. Check the kernel requirements for information about
    #   whether you need to specify a RAM disk. To find kernel requirements,
    #   go to the Amazon Web Services Resource Center and search for the
    #   kernel ID.
    #
    #   We recommend that you use PV-GRUB instead of kernels and RAM disks.
    #   For more information, see [PV-GRUB][1] in the *Amazon EC2 User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedkernels.html
    # @option options [Array<String>] :security_group_ids
    #   The IDs of the security groups. You can create a security group using
    #   [CreateSecurityGroup][1].
    #
    #   If you specify a network interface, you must specify any security
    #   groups as part of the network interface.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateSecurityGroup.html
    # @option options [Array<String>] :security_groups
    #   \[EC2-Classic, default VPC\] The names of the security groups. For a
    #   nondefault VPC, you must use security group IDs instead.
    #
    #   If you specify a network interface, you must specify any security
    #   groups as part of the network interface.
    #
    #   Default: Amazon EC2 uses the default security group.
    # @option options [String] :subnet_id
    #   \[EC2-VPC\] The ID of the subnet to launch the instance into.
    #
    #   If you specify a network interface, you must specify any subnets as
    #   part of the network interface.
    # @option options [String] :user_data
    #   The user data to make available to the instance. For more information,
    #   see [Run commands on your Linux instance at launch][1] and [Run
    #   commands on your Windows instance at launch][2]. If you are using a
    #   command line tool, base64-encoding is performed for you, and you can
    #   load the text from a file. Otherwise, you must provide base64-encoded
    #   text. User data is limited to 16 KB.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/user-data.html
    #   [2]: https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ec2-windows-user-data.html
    # @option options [String] :additional_info
    #   Reserved.
    # @option options [String] :client_token
    #   Unique, case-sensitive identifier you provide to ensure the
    #   idempotency of the request. If you do not specify a client token, a
    #   randomly generated token is used for the request to ensure
    #   idempotency.
    #
    #   For more information, see [Ensuring Idempotency][1].
    #
    #   Constraints: Maximum 64 ASCII characters
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    # @option options [Boolean] :disable_api_termination
    #   If you set this parameter to `true`, you can't terminate the instance
    #   using the Amazon EC2 console, CLI, or API; otherwise, you can. To
    #   change this attribute after launch, use [ModifyInstanceAttribute][1].
    #   Alternatively, if you set `InstanceInitiatedShutdownBehavior` to
    #   `terminate`, you can terminate the instance by running the shutdown
    #   command from the instance.
    #
    #   Default: `false`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ModifyInstanceAttribute.html
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @option options [Boolean] :ebs_optimized
    #   Indicates whether the instance is optimized for Amazon EBS I/O. This
    #   optimization provides dedicated throughput to Amazon EBS and an
    #   optimized configuration stack to provide optimal Amazon EBS I/O
    #   performance. This optimization isn't available with all instance
    #   types. Additional usage charges apply when using an EBS-optimized
    #   instance.
    #
    #   Default: `false`
    # @option options [Types::IamInstanceProfileSpecification] :iam_instance_profile
    #   The name or Amazon Resource Name (ARN) of an IAM instance profile.
    # @option options [String] :instance_initiated_shutdown_behavior
    #   Indicates whether an instance stops or terminates when you initiate
    #   shutdown from the instance (using the operating system command for
    #   system shutdown).
    #
    #   Default: `stop`
    # @option options [Array<Types::InstanceNetworkInterfaceSpecification>] :network_interfaces
    #   The network interfaces to associate with the instance. If you specify
    #   a network interface, you must specify any security groups and subnets
    #   as part of the network interface.
    # @option options [String] :private_ip_address
    #   \[EC2-VPC\] The primary IPv4 address. You must specify a value from
    #   the IPv4 address range of the subnet.
    #
    #   Only one private IP address can be designated as primary. You can't
    #   specify this option if you've specified the option to designate a
    #   private IP address as the primary IP address in a network interface
    #   specification. You cannot specify this option if you're launching
    #   more than one instance in the request.
    #
    #   You cannot specify this option and the network interfaces option in
    #   the same request.
    # @option options [Array<Types::ElasticGpuSpecification>] :elastic_gpu_specification
    #   An elastic GPU to associate with the instance. An Elastic GPU is a GPU
    #   resource that you can attach to your Windows instance to accelerate
    #   the graphics performance of your applications. For more information,
    #   see [Amazon EC2 Elastic GPUs][1] in the *Amazon EC2 User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/elastic-graphics.html
    # @option options [Array<Types::ElasticInferenceAccelerator>] :elastic_inference_accelerators
    #   An elastic inference accelerator to associate with the instance.
    #   Elastic inference accelerators are a resource you can attach to your
    #   Amazon EC2 instances to accelerate your Deep Learning (DL) inference
    #   workloads.
    #
    #   You cannot specify accelerators from different generations in the same
    #   request.
    # @option options [Array<Types::TagSpecification>] :tag_specifications
    #   The tags to apply to the resources during launch. You can only tag
    #   instances and volumes on launch. The specified tags are applied to all
    #   instances or volumes that are created during launch. To tag a resource
    #   after it has been created, see [CreateTags][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateTags.html
    # @option options [Types::LaunchTemplateSpecification] :launch_template
    #   The launch template to use to launch the instances. Any parameters
    #   that you specify in RunInstances override the same parameters in the
    #   launch template. You can specify either the name or ID of a launch
    #   template, but not both.
    # @option options [Types::InstanceMarketOptionsRequest] :instance_market_options
    #   The market (purchasing) option for the instances.
    #
    #   For RunInstances, persistent Spot Instance requests are only supported
    #   when **InstanceInterruptionBehavior** is set to either `hibernate` or
    #   `stop`.
    # @option options [Types::CreditSpecificationRequest] :credit_specification
    #   The credit option for CPU usage of the burstable performance instance.
    #   Valid values are `standard` and `unlimited`. To change this attribute
    #   after launch, use [ ModifyInstanceCreditSpecification][1]. For more
    #   information, see [Burstable performance instances][2] in the *Amazon
    #   EC2 User Guide*.
    #
    #   Default: `standard` (T2 instances) or `unlimited` (T3/T3a instances)
    #
    #   For T3 instances with `host` tenancy, only `standard` is supported.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ModifyInstanceCreditSpecification.html
    #   [2]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/burstable-performance-instances.html
    # @option options [Types::CpuOptionsRequest] :cpu_options
    #   The CPU options for the instance. For more information, see [Optimize
    #   CPU options][1] in the *Amazon EC2 User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-optimize-cpu.html
    # @option options [Types::CapacityReservationSpecification] :capacity_reservation_specification
    #   Information about the Capacity Reservation targeting option. If you do
    #   not specify this parameter, the instance's Capacity Reservation
    #   preference defaults to `open`, which enables it to run in any open
    #   Capacity Reservation that has matching attributes (instance type,
    #   platform, Availability Zone).
    # @option options [Types::HibernationOptionsRequest] :hibernation_options
    #   Indicates whether an instance is enabled for hibernation. For more
    #   information, see [Hibernate your instance][1] in the *Amazon EC2 User
    #   Guide*.
    #
    #   You can't enable hibernation and Amazon Web Services Nitro Enclaves
    #   on the same instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Hibernate.html
    # @option options [Array<Types::LicenseConfigurationRequest>] :license_specifications
    #   The license configurations.
    # @option options [Types::InstanceMetadataOptionsRequest] :metadata_options
    #   The metadata options for the instance. For more information, see
    #   [Instance metadata and user data][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html
    # @option options [Types::EnclaveOptionsRequest] :enclave_options
    #   Indicates whether the instance is enabled for Amazon Web Services
    #   Nitro Enclaves. For more information, see [ What is Amazon Web
    #   Services Nitro Enclaves?][1] in the *Amazon Web Services Nitro
    #   Enclaves User Guide*.
    #
    #   You can't enable Amazon Web Services Nitro Enclaves and hibernation
    #   on the same instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/enclaves/latest/user/nitro-enclave.html
    # @option options [Types::PrivateDnsNameOptionsRequest] :private_dns_name_options
    #   The options for the instance hostname. The default values are
    #   inherited from the subnet.
    # @return [Instance::Collection]
    def create_instances(options = {})
      batch = []
      resp = @client.run_instances(options)
      resp.data.instances.each do |i|
        batch << Instance.new(
          id: i.instance_id,
          data: i,
          client: @client
        )
      end
      Instance::Collection.new([batch], size: batch.size)
    end

    # @example Request syntax with placeholder values
    #
    #   internetgateway = ec2.create_internet_gateway({
    #     tag_specifications: [
    #       {
    #         resource_type: "capacity-reservation", # accepts capacity-reservation, client-vpn-endpoint, customer-gateway, carrier-gateway, dedicated-host, dhcp-options, egress-only-internet-gateway, elastic-ip, elastic-gpu, export-image-task, export-instance-task, fleet, fpga-image, host-reservation, image, import-image-task, import-snapshot-task, instance, instance-event-window, internet-gateway, ipam, ipam-pool, ipam-scope, ipv4pool-ec2, ipv6pool-ec2, key-pair, launch-template, local-gateway, local-gateway-route-table, local-gateway-virtual-interface, local-gateway-virtual-interface-group, local-gateway-route-table-vpc-association, local-gateway-route-table-virtual-interface-group-association, natgateway, network-acl, network-interface, network-insights-analysis, network-insights-path, network-insights-access-scope, network-insights-access-scope-analysis, placement-group, prefix-list, replace-root-volume-task, reserved-instances, route-table, security-group, security-group-rule, snapshot, spot-fleet-request, spot-instances-request, subnet, traffic-mirror-filter, traffic-mirror-session, traffic-mirror-target, transit-gateway, transit-gateway-attachment, transit-gateway-connect-peer, transit-gateway-multicast-domain, transit-gateway-route-table, volume, vpc, vpc-endpoint, vpc-endpoint-service, vpc-peering-connection, vpn-connection, vpn-gateway, vpc-flow-log
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String",
    #           },
    #         ],
    #       },
    #     ],
    #     dry_run: false,
    #   })
    # @param [Hash] options ({})
    # @option options [Array<Types::TagSpecification>] :tag_specifications
    #   The tags to assign to the internet gateway.
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @return [InternetGateway]
    def create_internet_gateway(options = {})
      resp = @client.create_internet_gateway(options)
      InternetGateway.new(
        id: resp.data.internet_gateway.internet_gateway_id,
        data: resp.data.internet_gateway,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   keypair = ec2.create_key_pair({
    #     key_name: "String", # required
    #     dry_run: false,
    #     key_type: "rsa", # accepts rsa, ed25519
    #     tag_specifications: [
    #       {
    #         resource_type: "capacity-reservation", # accepts capacity-reservation, client-vpn-endpoint, customer-gateway, carrier-gateway, dedicated-host, dhcp-options, egress-only-internet-gateway, elastic-ip, elastic-gpu, export-image-task, export-instance-task, fleet, fpga-image, host-reservation, image, import-image-task, import-snapshot-task, instance, instance-event-window, internet-gateway, ipam, ipam-pool, ipam-scope, ipv4pool-ec2, ipv6pool-ec2, key-pair, launch-template, local-gateway, local-gateway-route-table, local-gateway-virtual-interface, local-gateway-virtual-interface-group, local-gateway-route-table-vpc-association, local-gateway-route-table-virtual-interface-group-association, natgateway, network-acl, network-interface, network-insights-analysis, network-insights-path, network-insights-access-scope, network-insights-access-scope-analysis, placement-group, prefix-list, replace-root-volume-task, reserved-instances, route-table, security-group, security-group-rule, snapshot, spot-fleet-request, spot-instances-request, subnet, traffic-mirror-filter, traffic-mirror-session, traffic-mirror-target, transit-gateway, transit-gateway-attachment, transit-gateway-connect-peer, transit-gateway-multicast-domain, transit-gateway-route-table, volume, vpc, vpc-endpoint, vpc-endpoint-service, vpc-peering-connection, vpn-connection, vpn-gateway, vpc-flow-log
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String",
    #           },
    #         ],
    #       },
    #     ],
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :key_name
    #   A unique name for the key pair.
    #
    #   Constraints: Up to 255 ASCII characters
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @option options [String] :key_type
    #   The type of key pair. Note that ED25519 keys are not supported for
    #   Windows instances, EC2 Instance Connect, and EC2 Serial Console.
    #
    #   Default: `rsa`
    # @option options [Array<Types::TagSpecification>] :tag_specifications
    #   The tags to apply to the new key pair.
    # @return [KeyPair]
    def create_key_pair(options = {})
      resp = @client.create_key_pair(options)
      KeyPair.new(
        name: resp.data.key_name,
        data: resp.data,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   natgateway = ec2.create_nat_gateway({
    #     allocation_id: "AllocationId",
    #     client_token: "String",
    #     dry_run: false,
    #     subnet_id: "SubnetId", # required
    #     tag_specifications: [
    #       {
    #         resource_type: "capacity-reservation", # accepts capacity-reservation, client-vpn-endpoint, customer-gateway, carrier-gateway, dedicated-host, dhcp-options, egress-only-internet-gateway, elastic-ip, elastic-gpu, export-image-task, export-instance-task, fleet, fpga-image, host-reservation, image, import-image-task, import-snapshot-task, instance, instance-event-window, internet-gateway, ipam, ipam-pool, ipam-scope, ipv4pool-ec2, ipv6pool-ec2, key-pair, launch-template, local-gateway, local-gateway-route-table, local-gateway-virtual-interface, local-gateway-virtual-interface-group, local-gateway-route-table-vpc-association, local-gateway-route-table-virtual-interface-group-association, natgateway, network-acl, network-interface, network-insights-analysis, network-insights-path, network-insights-access-scope, network-insights-access-scope-analysis, placement-group, prefix-list, replace-root-volume-task, reserved-instances, route-table, security-group, security-group-rule, snapshot, spot-fleet-request, spot-instances-request, subnet, traffic-mirror-filter, traffic-mirror-session, traffic-mirror-target, transit-gateway, transit-gateway-attachment, transit-gateway-connect-peer, transit-gateway-multicast-domain, transit-gateway-route-table, volume, vpc, vpc-endpoint, vpc-endpoint-service, vpc-peering-connection, vpn-connection, vpn-gateway, vpc-flow-log
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String",
    #           },
    #         ],
    #       },
    #     ],
    #     connectivity_type: "private", # accepts private, public
    #   })
    # @param [Hash] options ({})
    # @option options [String] :allocation_id
    #   \[Public NAT gateways only\] The allocation ID of an Elastic IP
    #   address to associate with the NAT gateway. You cannot specify an
    #   Elastic IP address with a private NAT gateway. If the Elastic IP
    #   address is associated with another resource, you must first
    #   disassociate it.
    # @option options [String] :client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. For more information, see [How to ensure
    #   idempotency][1].
    #
    #   Constraint: Maximum 64 ASCII characters.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @option options [required, String] :subnet_id
    #   The subnet in which to create the NAT gateway.
    # @option options [Array<Types::TagSpecification>] :tag_specifications
    #   The tags to assign to the NAT gateway.
    # @option options [String] :connectivity_type
    #   Indicates whether the NAT gateway supports public or private
    #   connectivity. The default is public connectivity.
    # @return [NatGateway]
    def create_nat_gateway(options = {})
      resp = @client.create_nat_gateway(options)
      NatGateway.new(
        id: resp.data.nat_gateway.nat_gateway_id,
        data: resp.data.nat_gateway,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   networkacl = ec2.create_network_acl({
    #     dry_run: false,
    #     vpc_id: "VpcId", # required
    #     tag_specifications: [
    #       {
    #         resource_type: "capacity-reservation", # accepts capacity-reservation, client-vpn-endpoint, customer-gateway, carrier-gateway, dedicated-host, dhcp-options, egress-only-internet-gateway, elastic-ip, elastic-gpu, export-image-task, export-instance-task, fleet, fpga-image, host-reservation, image, import-image-task, import-snapshot-task, instance, instance-event-window, internet-gateway, ipam, ipam-pool, ipam-scope, ipv4pool-ec2, ipv6pool-ec2, key-pair, launch-template, local-gateway, local-gateway-route-table, local-gateway-virtual-interface, local-gateway-virtual-interface-group, local-gateway-route-table-vpc-association, local-gateway-route-table-virtual-interface-group-association, natgateway, network-acl, network-interface, network-insights-analysis, network-insights-path, network-insights-access-scope, network-insights-access-scope-analysis, placement-group, prefix-list, replace-root-volume-task, reserved-instances, route-table, security-group, security-group-rule, snapshot, spot-fleet-request, spot-instances-request, subnet, traffic-mirror-filter, traffic-mirror-session, traffic-mirror-target, transit-gateway, transit-gateway-attachment, transit-gateway-connect-peer, transit-gateway-multicast-domain, transit-gateway-route-table, volume, vpc, vpc-endpoint, vpc-endpoint-service, vpc-peering-connection, vpn-connection, vpn-gateway, vpc-flow-log
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String",
    #           },
    #         ],
    #       },
    #     ],
    #   })
    # @param [Hash] options ({})
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @option options [required, String] :vpc_id
    #   The ID of the VPC.
    # @option options [Array<Types::TagSpecification>] :tag_specifications
    #   The tags to assign to the network ACL.
    # @return [NetworkAcl]
    def create_network_acl(options = {})
      resp = @client.create_network_acl(options)
      NetworkAcl.new(
        id: resp.data.network_acl.network_acl_id,
        data: resp.data.network_acl,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   networkinterface = ec2.create_network_interface({
    #     description: "String",
    #     dry_run: false,
    #     groups: ["SecurityGroupId"],
    #     ipv_6_address_count: 1,
    #     ipv_6_addresses: [
    #       {
    #         ipv_6_address: "String",
    #       },
    #     ],
    #     private_ip_address: "String",
    #     private_ip_addresses: [
    #       {
    #         primary: false,
    #         private_ip_address: "String",
    #       },
    #     ],
    #     secondary_private_ip_address_count: 1,
    #     ipv_4_prefixes: [
    #       {
    #         ipv_4_prefix: "String",
    #       },
    #     ],
    #     ipv_4_prefix_count: 1,
    #     ipv_6_prefixes: [
    #       {
    #         ipv_6_prefix: "String",
    #       },
    #     ],
    #     ipv_6_prefix_count: 1,
    #     interface_type: "efa", # accepts efa, branch, trunk
    #     subnet_id: "SubnetId", # required
    #     tag_specifications: [
    #       {
    #         resource_type: "capacity-reservation", # accepts capacity-reservation, client-vpn-endpoint, customer-gateway, carrier-gateway, dedicated-host, dhcp-options, egress-only-internet-gateway, elastic-ip, elastic-gpu, export-image-task, export-instance-task, fleet, fpga-image, host-reservation, image, import-image-task, import-snapshot-task, instance, instance-event-window, internet-gateway, ipam, ipam-pool, ipam-scope, ipv4pool-ec2, ipv6pool-ec2, key-pair, launch-template, local-gateway, local-gateway-route-table, local-gateway-virtual-interface, local-gateway-virtual-interface-group, local-gateway-route-table-vpc-association, local-gateway-route-table-virtual-interface-group-association, natgateway, network-acl, network-interface, network-insights-analysis, network-insights-path, network-insights-access-scope, network-insights-access-scope-analysis, placement-group, prefix-list, replace-root-volume-task, reserved-instances, route-table, security-group, security-group-rule, snapshot, spot-fleet-request, spot-instances-request, subnet, traffic-mirror-filter, traffic-mirror-session, traffic-mirror-target, transit-gateway, transit-gateway-attachment, transit-gateway-connect-peer, transit-gateway-multicast-domain, transit-gateway-route-table, volume, vpc, vpc-endpoint, vpc-endpoint-service, vpc-peering-connection, vpn-connection, vpn-gateway, vpc-flow-log
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String",
    #           },
    #         ],
    #       },
    #     ],
    #     client_token: "String",
    #   })
    # @param [Hash] options ({})
    # @option options [String] :description
    #   A description for the network interface.
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @option options [Array<String>] :groups
    #   The IDs of one or more security groups.
    # @option options [Integer] :ipv_6_address_count
    #   The number of IPv6 addresses to assign to a network interface. Amazon
    #   EC2 automatically selects the IPv6 addresses from the subnet range.
    #   You can't use this option if specifying specific IPv6 addresses. If
    #   your subnet has the `AssignIpv6AddressOnCreation` attribute set to
    #   `true`, you can specify `0` to override this setting.
    # @option options [Array<Types::InstanceIpv6Address>] :ipv_6_addresses
    #   One or more specific IPv6 addresses from the IPv6 CIDR block range of
    #   your subnet. You can't use this option if you're specifying a number
    #   of IPv6 addresses.
    # @option options [String] :private_ip_address
    #   The primary private IPv4 address of the network interface. If you
    #   don't specify an IPv4 address, Amazon EC2 selects one for you from
    #   the subnet's IPv4 CIDR range. If you specify an IP address, you
    #   cannot indicate any IP addresses specified in `privateIpAddresses` as
    #   primary (only one IP address can be designated as primary).
    # @option options [Array<Types::PrivateIpAddressSpecification>] :private_ip_addresses
    #   One or more private IPv4 addresses.
    # @option options [Integer] :secondary_private_ip_address_count
    #   The number of secondary private IPv4 addresses to assign to a network
    #   interface. When you specify a number of secondary IPv4 addresses,
    #   Amazon EC2 selects these IP addresses within the subnet's IPv4 CIDR
    #   range. You can't specify this option and specify more than one
    #   private IP address using `privateIpAddresses`.
    #
    #   The number of IP addresses you can assign to a network interface
    #   varies by instance type. For more information, see [IP Addresses Per
    #   ENI Per Instance Type][1] in the *Amazon Virtual Private Cloud User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-eni.html#AvailableIpPerENI
    # @option options [Array<Types::Ipv4PrefixSpecificationRequest>] :ipv_4_prefixes
    #   One or more IPv4 prefixes assigned to the network interface. You
    #   cannot use this option if you use the `Ipv4PrefixCount` option.
    # @option options [Integer] :ipv_4_prefix_count
    #   The number of IPv4 prefixes that Amazon Web Services automatically
    #   assigns to the network interface. You cannot use this option if you
    #   use the `Ipv4 Prefixes` option.
    # @option options [Array<Types::Ipv6PrefixSpecificationRequest>] :ipv_6_prefixes
    #   One or more IPv6 prefixes assigned to the network interface. You
    #   cannot use this option if you use the `Ipv6PrefixCount` option.
    # @option options [Integer] :ipv_6_prefix_count
    #   The number of IPv6 prefixes that Amazon Web Services automatically
    #   assigns to the network interface. You cannot use this option if you
    #   use the `Ipv6Prefixes` option.
    # @option options [String] :interface_type
    #   Indicates the type of network interface. To create an Elastic Fabric
    #   Adapter (EFA), specify `efa`. For more information, see [ Elastic
    #   Fabric Adapter][1] in the *Amazon Elastic Compute Cloud User Guide*.
    #   To create a trunk network interface, specify `trunk`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/efa.html
    # @option options [required, String] :subnet_id
    #   The ID of the subnet to associate with the network interface.
    # @option options [Array<Types::TagSpecification>] :tag_specifications
    #   The tags to apply to the new network interface.
    # @option options [String] :client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. For more information, see [Ensuring
    #   Idempotency][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    # @return [NetworkInterface]
    def create_network_interface(options = {})
      resp = @client.create_network_interface(options)
      NetworkInterface.new(
        id: resp.data.network_interface.network_interface_id,
        data: resp.data.network_interface,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   placementgroup = ec2.create_placement_group({
    #     dry_run: false,
    #     group_name: "String",
    #     strategy: "cluster", # accepts cluster, spread, partition
    #     partition_count: 1,
    #     tag_specifications: [
    #       {
    #         resource_type: "capacity-reservation", # accepts capacity-reservation, client-vpn-endpoint, customer-gateway, carrier-gateway, dedicated-host, dhcp-options, egress-only-internet-gateway, elastic-ip, elastic-gpu, export-image-task, export-instance-task, fleet, fpga-image, host-reservation, image, import-image-task, import-snapshot-task, instance, instance-event-window, internet-gateway, ipam, ipam-pool, ipam-scope, ipv4pool-ec2, ipv6pool-ec2, key-pair, launch-template, local-gateway, local-gateway-route-table, local-gateway-virtual-interface, local-gateway-virtual-interface-group, local-gateway-route-table-vpc-association, local-gateway-route-table-virtual-interface-group-association, natgateway, network-acl, network-interface, network-insights-analysis, network-insights-path, network-insights-access-scope, network-insights-access-scope-analysis, placement-group, prefix-list, replace-root-volume-task, reserved-instances, route-table, security-group, security-group-rule, snapshot, spot-fleet-request, spot-instances-request, subnet, traffic-mirror-filter, traffic-mirror-session, traffic-mirror-target, transit-gateway, transit-gateway-attachment, transit-gateway-connect-peer, transit-gateway-multicast-domain, transit-gateway-route-table, volume, vpc, vpc-endpoint, vpc-endpoint-service, vpc-peering-connection, vpn-connection, vpn-gateway, vpc-flow-log
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String",
    #           },
    #         ],
    #       },
    #     ],
    #   })
    # @param [Hash] options ({})
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @option options [String] :group_name
    #   A name for the placement group. Must be unique within the scope of
    #   your account for the Region.
    #
    #   Constraints: Up to 255 ASCII characters
    # @option options [String] :strategy
    #   The placement strategy.
    # @option options [Integer] :partition_count
    #   The number of partitions. Valid only when **Strategy** is set to
    #   `partition`.
    # @option options [Array<Types::TagSpecification>] :tag_specifications
    #   The tags to apply to the new placement group.
    # @return [PlacementGroup]
    def create_placement_group(options = {})
      @client.create_placement_group(options)
      PlacementGroup.new(
        name: options[:group_name],
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   routetable = ec2.create_route_table({
    #     dry_run: false,
    #     vpc_id: "VpcId", # required
    #     tag_specifications: [
    #       {
    #         resource_type: "capacity-reservation", # accepts capacity-reservation, client-vpn-endpoint, customer-gateway, carrier-gateway, dedicated-host, dhcp-options, egress-only-internet-gateway, elastic-ip, elastic-gpu, export-image-task, export-instance-task, fleet, fpga-image, host-reservation, image, import-image-task, import-snapshot-task, instance, instance-event-window, internet-gateway, ipam, ipam-pool, ipam-scope, ipv4pool-ec2, ipv6pool-ec2, key-pair, launch-template, local-gateway, local-gateway-route-table, local-gateway-virtual-interface, local-gateway-virtual-interface-group, local-gateway-route-table-vpc-association, local-gateway-route-table-virtual-interface-group-association, natgateway, network-acl, network-interface, network-insights-analysis, network-insights-path, network-insights-access-scope, network-insights-access-scope-analysis, placement-group, prefix-list, replace-root-volume-task, reserved-instances, route-table, security-group, security-group-rule, snapshot, spot-fleet-request, spot-instances-request, subnet, traffic-mirror-filter, traffic-mirror-session, traffic-mirror-target, transit-gateway, transit-gateway-attachment, transit-gateway-connect-peer, transit-gateway-multicast-domain, transit-gateway-route-table, volume, vpc, vpc-endpoint, vpc-endpoint-service, vpc-peering-connection, vpn-connection, vpn-gateway, vpc-flow-log
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String",
    #           },
    #         ],
    #       },
    #     ],
    #   })
    # @param [Hash] options ({})
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @option options [required, String] :vpc_id
    #   The ID of the VPC.
    # @option options [Array<Types::TagSpecification>] :tag_specifications
    #   The tags to assign to the route table.
    # @return [RouteTable]
    def create_route_table(options = {})
      resp = @client.create_route_table(options)
      RouteTable.new(
        id: resp.data.route_table.route_table_id,
        data: resp.data.route_table,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   securitygroup = ec2.create_security_group({
    #     description: "String", # required
    #     group_name: "String", # required
    #     vpc_id: "VpcId",
    #     tag_specifications: [
    #       {
    #         resource_type: "capacity-reservation", # accepts capacity-reservation, client-vpn-endpoint, customer-gateway, carrier-gateway, dedicated-host, dhcp-options, egress-only-internet-gateway, elastic-ip, elastic-gpu, export-image-task, export-instance-task, fleet, fpga-image, host-reservation, image, import-image-task, import-snapshot-task, instance, instance-event-window, internet-gateway, ipam, ipam-pool, ipam-scope, ipv4pool-ec2, ipv6pool-ec2, key-pair, launch-template, local-gateway, local-gateway-route-table, local-gateway-virtual-interface, local-gateway-virtual-interface-group, local-gateway-route-table-vpc-association, local-gateway-route-table-virtual-interface-group-association, natgateway, network-acl, network-interface, network-insights-analysis, network-insights-path, network-insights-access-scope, network-insights-access-scope-analysis, placement-group, prefix-list, replace-root-volume-task, reserved-instances, route-table, security-group, security-group-rule, snapshot, spot-fleet-request, spot-instances-request, subnet, traffic-mirror-filter, traffic-mirror-session, traffic-mirror-target, transit-gateway, transit-gateway-attachment, transit-gateway-connect-peer, transit-gateway-multicast-domain, transit-gateway-route-table, volume, vpc, vpc-endpoint, vpc-endpoint-service, vpc-peering-connection, vpn-connection, vpn-gateway, vpc-flow-log
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String",
    #           },
    #         ],
    #       },
    #     ],
    #     dry_run: false,
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :description
    #   A description for the security group. This is informational only.
    #
    #   Constraints: Up to 255 characters in length
    #
    #   Constraints for EC2-Classic: ASCII characters
    #
    #   Constraints for EC2-VPC: a-z, A-Z, 0-9, spaces, and
    #   .\_-:/()#,@\[\]+=&amp;;\\\{\\}!$*
    # @option options [required, String] :group_name
    #   The name of the security group.
    #
    #   Constraints: Up to 255 characters in length. Cannot start with `sg-`.
    #
    #   Constraints for EC2-Classic: ASCII characters
    #
    #   Constraints for EC2-VPC: a-z, A-Z, 0-9, spaces, and
    #   .\_-:/()#,@\[\]+=&amp;;\\\{\\}!$*
    # @option options [String] :vpc_id
    #   \[EC2-VPC\] The ID of the VPC. Required for EC2-VPC.
    # @option options [Array<Types::TagSpecification>] :tag_specifications
    #   The tags to assign to the security group.
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @return [SecurityGroup]
    def create_security_group(options = {})
      resp = @client.create_security_group(options)
      SecurityGroup.new(
        id: resp.data.group_id,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   snapshot = ec2.create_snapshot({
    #     description: "String",
    #     outpost_arn: "String",
    #     volume_id: "VolumeId", # required
    #     tag_specifications: [
    #       {
    #         resource_type: "capacity-reservation", # accepts capacity-reservation, client-vpn-endpoint, customer-gateway, carrier-gateway, dedicated-host, dhcp-options, egress-only-internet-gateway, elastic-ip, elastic-gpu, export-image-task, export-instance-task, fleet, fpga-image, host-reservation, image, import-image-task, import-snapshot-task, instance, instance-event-window, internet-gateway, ipam, ipam-pool, ipam-scope, ipv4pool-ec2, ipv6pool-ec2, key-pair, launch-template, local-gateway, local-gateway-route-table, local-gateway-virtual-interface, local-gateway-virtual-interface-group, local-gateway-route-table-vpc-association, local-gateway-route-table-virtual-interface-group-association, natgateway, network-acl, network-interface, network-insights-analysis, network-insights-path, network-insights-access-scope, network-insights-access-scope-analysis, placement-group, prefix-list, replace-root-volume-task, reserved-instances, route-table, security-group, security-group-rule, snapshot, spot-fleet-request, spot-instances-request, subnet, traffic-mirror-filter, traffic-mirror-session, traffic-mirror-target, transit-gateway, transit-gateway-attachment, transit-gateway-connect-peer, transit-gateway-multicast-domain, transit-gateway-route-table, volume, vpc, vpc-endpoint, vpc-endpoint-service, vpc-peering-connection, vpn-connection, vpn-gateway, vpc-flow-log
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String",
    #           },
    #         ],
    #       },
    #     ],
    #     dry_run: false,
    #   })
    # @param [Hash] options ({})
    # @option options [String] :description
    #   A description for the snapshot.
    # @option options [String] :outpost_arn
    #   The Amazon Resource Name (ARN) of the Outpost on which to create a
    #   local snapshot.
    #
    #   * To create a snapshot of a volume in a Region, omit this parameter.
    #     The snapshot is created in the same Region as the volume.
    #
    #   * To create a snapshot of a volume on an Outpost and store the
    #     snapshot in the Region, omit this parameter. The snapshot is created
    #     in the Region for the Outpost.
    #
    #   * To create a snapshot of a volume on an Outpost and store the
    #     snapshot on an Outpost, specify the ARN of the destination Outpost.
    #     The snapshot must be created on the same Outpost as the volume.
    #
    #   For more information, see [Create local snapshots from volumes on an
    #   Outpost][1] in the *Amazon Elastic Compute Cloud User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/snapshots-outposts.html#create-snapshot
    # @option options [required, String] :volume_id
    #   The ID of the Amazon EBS volume.
    # @option options [Array<Types::TagSpecification>] :tag_specifications
    #   The tags to apply to the snapshot during creation.
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @return [Snapshot]
    def create_snapshot(options = {})
      resp = @client.create_snapshot(options)
      Snapshot.new(
        id: resp.data.snapshot_id,
        data: resp.data,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   subnet = ec2.create_subnet({
    #     tag_specifications: [
    #       {
    #         resource_type: "capacity-reservation", # accepts capacity-reservation, client-vpn-endpoint, customer-gateway, carrier-gateway, dedicated-host, dhcp-options, egress-only-internet-gateway, elastic-ip, elastic-gpu, export-image-task, export-instance-task, fleet, fpga-image, host-reservation, image, import-image-task, import-snapshot-task, instance, instance-event-window, internet-gateway, ipam, ipam-pool, ipam-scope, ipv4pool-ec2, ipv6pool-ec2, key-pair, launch-template, local-gateway, local-gateway-route-table, local-gateway-virtual-interface, local-gateway-virtual-interface-group, local-gateway-route-table-vpc-association, local-gateway-route-table-virtual-interface-group-association, natgateway, network-acl, network-interface, network-insights-analysis, network-insights-path, network-insights-access-scope, network-insights-access-scope-analysis, placement-group, prefix-list, replace-root-volume-task, reserved-instances, route-table, security-group, security-group-rule, snapshot, spot-fleet-request, spot-instances-request, subnet, traffic-mirror-filter, traffic-mirror-session, traffic-mirror-target, transit-gateway, transit-gateway-attachment, transit-gateway-connect-peer, transit-gateway-multicast-domain, transit-gateway-route-table, volume, vpc, vpc-endpoint, vpc-endpoint-service, vpc-peering-connection, vpn-connection, vpn-gateway, vpc-flow-log
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String",
    #           },
    #         ],
    #       },
    #     ],
    #     availability_zone: "String",
    #     availability_zone_id: "String",
    #     cidr_block: "String",
    #     ipv_6_cidr_block: "String",
    #     outpost_arn: "String",
    #     vpc_id: "VpcId", # required
    #     dry_run: false,
    #     ipv_6_native: false,
    #   })
    # @param [Hash] options ({})
    # @option options [Array<Types::TagSpecification>] :tag_specifications
    #   The tags to assign to the subnet.
    # @option options [String] :availability_zone
    #   The Availability Zone or Local Zone for the subnet.
    #
    #   Default: Amazon Web Services selects one for you. If you create more
    #   than one subnet in your VPC, we do not necessarily select a different
    #   zone for each subnet.
    #
    #   To create a subnet in a Local Zone, set this value to the Local Zone
    #   ID, for example `us-west-2-lax-1a`. For information about the Regions
    #   that support Local Zones, see [Available Regions][1] in the *Amazon
    #   Elastic Compute Cloud User Guide*.
    #
    #   To create a subnet in an Outpost, set this value to the Availability
    #   Zone for the Outpost and specify the Outpost ARN.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-regions-availability-zones.html#concepts-available-regions
    # @option options [String] :availability_zone_id
    #   The AZ ID or the Local Zone ID of the subnet.
    # @option options [String] :cidr_block
    #   The IPv4 network range for the subnet, in CIDR notation. For example,
    #   `10.0.0.0/24`. We modify the specified CIDR block to its canonical
    #   form; for example, if you specify `100.68.0.18/18`, we modify it to
    #   `100.68.0.0/18`.
    #
    #   This parameter is not supported for an IPv6 only subnet.
    # @option options [String] :ipv_6_cidr_block
    #   The IPv6 network range for the subnet, in CIDR notation. The subnet
    #   size must use a /64 prefix length.
    #
    #   This parameter is required for an IPv6 only subnet.
    # @option options [String] :outpost_arn
    #   The Amazon Resource Name (ARN) of the Outpost. If you specify an
    #   Outpost ARN, you must also specify the Availability Zone of the
    #   Outpost subnet.
    # @option options [required, String] :vpc_id
    #   The ID of the VPC.
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @option options [Boolean] :ipv_6_native
    #   Indicates whether to create an IPv6 only subnet.
    # @return [Subnet]
    def create_subnet(options = {})
      resp = @client.create_subnet(options)
      Subnet.new(
        id: resp.data.subnet.subnet_id,
        data: resp.data.subnet,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   ec2.create_tags({
    #     dry_run: false,
    #     resources: ["TaggableResourceId"], # required
    #     tags: [ # required
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #   })
    # @param [Hash] options ({})
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @option options [required, Array<String>] :resources
    #   The IDs of the resources, separated by spaces.
    #
    #   Constraints: Up to 1000 resource IDs. We recommend breaking up this
    #   request into smaller batches.
    # @option options [required, Array<Types::Tag>] :tags
    #   The tags. The `value` parameter is required, but if you don't want
    #   the tag to have a value, specify the parameter with no value, and we
    #   set the value to an empty string.
    # @return [EmptyStructure]
    def create_tags(options = {})
      resp = @client.create_tags(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   ec2.delete_tags({
    #     dry_run: false,
    #     resources: ["TaggableResourceId"], # required
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #   })
    # @param [Hash] options ({})
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @option options [required, Array<String>] :resources
    #   The IDs of the resources, separated by spaces.
    #
    #   Constraints: Up to 1000 resource IDs. We recommend breaking up this
    #   request into smaller batches.
    # @option options [Array<Types::Tag>] :tags
    #   The tags to delete. Specify a tag key and an optional tag value to
    #   delete specific tags. If you specify a tag key without a tag value, we
    #   delete any tag with this key regardless of its value. If you specify a
    #   tag key with an empty string as the tag value, we delete the tag only
    #   if its value is an empty string.
    #
    #   If you omit this parameter, we delete all user-defined tags for the
    #   specified resources. We do not delete Amazon Web Services-generated
    #   tags (tags that have the `aws:` prefix).
    #
    #   Constraints: Up to 1000 tags.
    # @return [EmptyStructure]
    def delete_tags(options = {})
      resp = @client.delete_tags(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   volume = ec2.create_volume({
    #     availability_zone: "String", # required
    #     encrypted: false,
    #     iops: 1,
    #     kms_key_id: "KmsKeyId",
    #     outpost_arn: "String",
    #     size: 1,
    #     snapshot_id: "SnapshotId",
    #     volume_type: "standard", # accepts standard, io1, io2, gp2, sc1, st1, gp3
    #     dry_run: false,
    #     tag_specifications: [
    #       {
    #         resource_type: "capacity-reservation", # accepts capacity-reservation, client-vpn-endpoint, customer-gateway, carrier-gateway, dedicated-host, dhcp-options, egress-only-internet-gateway, elastic-ip, elastic-gpu, export-image-task, export-instance-task, fleet, fpga-image, host-reservation, image, import-image-task, import-snapshot-task, instance, instance-event-window, internet-gateway, ipam, ipam-pool, ipam-scope, ipv4pool-ec2, ipv6pool-ec2, key-pair, launch-template, local-gateway, local-gateway-route-table, local-gateway-virtual-interface, local-gateway-virtual-interface-group, local-gateway-route-table-vpc-association, local-gateway-route-table-virtual-interface-group-association, natgateway, network-acl, network-interface, network-insights-analysis, network-insights-path, network-insights-access-scope, network-insights-access-scope-analysis, placement-group, prefix-list, replace-root-volume-task, reserved-instances, route-table, security-group, security-group-rule, snapshot, spot-fleet-request, spot-instances-request, subnet, traffic-mirror-filter, traffic-mirror-session, traffic-mirror-target, transit-gateway, transit-gateway-attachment, transit-gateway-connect-peer, transit-gateway-multicast-domain, transit-gateway-route-table, volume, vpc, vpc-endpoint, vpc-endpoint-service, vpc-peering-connection, vpn-connection, vpn-gateway, vpc-flow-log
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String",
    #           },
    #         ],
    #       },
    #     ],
    #     multi_attach_enabled: false,
    #     throughput: 1,
    #     client_token: "String",
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :availability_zone
    #   The Availability Zone in which to create the volume.
    # @option options [Boolean] :encrypted
    #   Indicates whether the volume should be encrypted. The effect of
    #   setting the encryption state to `true` depends on the volume origin
    #   (new or from a snapshot), starting encryption state, ownership, and
    #   whether encryption by default is enabled. For more information, see
    #   [Encryption by default][1] in the *Amazon Elastic Compute Cloud User
    #   Guide*.
    #
    #   Encrypted Amazon EBS volumes must be attached to instances that
    #   support Amazon EBS encryption. For more information, see [Supported
    #   instance types][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html#encryption-by-default
    #   [2]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html#EBSEncryption_supported_instances
    # @option options [Integer] :iops
    #   The number of I/O operations per second (IOPS). For `gp3`, `io1`, and
    #   `io2` volumes, this represents the number of IOPS that are provisioned
    #   for the volume. For `gp2` volumes, this represents the baseline
    #   performance of the volume and the rate at which the volume accumulates
    #   I/O credits for bursting.
    #
    #   The following are the supported values for each volume type:
    #
    #   * `gp3`\: 3,000-16,000 IOPS
    #
    #   * `io1`\: 100-64,000 IOPS
    #
    #   * `io2`\: 100-64,000 IOPS
    #
    #   `io1` and `io2` volumes support up to 64,000 IOPS only on [Instances
    #   built on the Nitro System][1]. Other instance families support
    #   performance up to 32,000 IOPS.
    #
    #   This parameter is required for `io1` and `io2` volumes. The default
    #   for `gp3` volumes is 3,000 IOPS. This parameter is not supported for
    #   `gp2`, `st1`, `sc1`, or `standard` volumes.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html#ec2-nitro-instances
    # @option options [String] :kms_key_id
    #   The identifier of the Key Management Service (KMS) KMS key to use for
    #   Amazon EBS encryption. If this parameter is not specified, your KMS
    #   key for Amazon EBS is used. If `KmsKeyId` is specified, the encrypted
    #   state must be `true`.
    #
    #   You can specify the KMS key using any of the following:
    #
    #   * Key ID. For example, 1234abcd-12ab-34cd-56ef-1234567890ab.
    #
    #   * Key alias. For example, alias/ExampleAlias.
    #
    #   * Key ARN. For example,
    #     arn:aws:kms:us-east-1:012345678910:key/1234abcd-12ab-34cd-56ef-1234567890ab.
    #
    #   * Alias ARN. For example,
    #     arn:aws:kms:us-east-1:012345678910:alias/ExampleAlias.
    #
    #   Amazon Web Services authenticates the KMS key asynchronously.
    #   Therefore, if you specify an ID, alias, or ARN that is not valid, the
    #   action can appear to complete, but eventually fails.
    # @option options [String] :outpost_arn
    #   The Amazon Resource Name (ARN) of the Outpost.
    # @option options [Integer] :size
    #   The size of the volume, in GiBs. You must specify either a snapshot ID
    #   or a volume size. If you specify a snapshot, the default is the
    #   snapshot size. You can specify a volume size that is equal to or
    #   larger than the snapshot size.
    #
    #   The following are the supported volumes sizes for each volume type:
    #
    #   * `gp2` and `gp3`\: 1-16,384
    #
    #   * `io1` and `io2`\: 4-16,384
    #
    #   * `st1` and `sc1`\: 125-16,384
    #
    #   * `standard`\: 1-1,024
    # @option options [String] :snapshot_id
    #   The snapshot from which to create the volume. You must specify either
    #   a snapshot ID or a volume size.
    # @option options [String] :volume_type
    #   The volume type. This parameter can be one of the following values:
    #
    #   * General Purpose SSD: `gp2` \| `gp3`
    #
    #   * Provisioned IOPS SSD: `io1` \| `io2`
    #
    #   * Throughput Optimized HDD: `st1`
    #
    #   * Cold HDD: `sc1`
    #
    #   * Magnetic: `standard`
    #
    #   For more information, see [Amazon EBS volume types][1] in the *Amazon
    #   Elastic Compute Cloud User Guide*.
    #
    #   Default: `gp2`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @option options [Array<Types::TagSpecification>] :tag_specifications
    #   The tags to apply to the volume during creation.
    # @option options [Boolean] :multi_attach_enabled
    #   Indicates whether to enable Amazon EBS Multi-Attach. If you enable
    #   Multi-Attach, you can attach the volume to up to 16 [Instances built
    #   on the Nitro System][1] in the same Availability Zone. This parameter
    #   is supported with `io1` and `io2` volumes only. For more information,
    #   see [ Amazon EBS Multi-Attach][2] in the *Amazon Elastic Compute Cloud
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html#ec2-nitro-instances
    #   [2]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-volumes-multi.html
    # @option options [Integer] :throughput
    #   The throughput to provision for a volume, with a maximum of 1,000
    #   MiB/s.
    #
    #   This parameter is valid only for `gp3` volumes.
    #
    #   Valid Range: Minimum value of 125. Maximum value of 1000.
    # @option options [String] :client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. For more information, see [Ensure
    #   Idempotency][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    # @return [Volume]
    def create_volume(options = {})
      resp = @client.create_volume(options)
      Volume.new(
        id: resp.data.volume_id,
        data: resp.data,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   vpc = ec2.create_vpc({
    #     cidr_block: "String",
    #     amazon_provided_ipv_6_cidr_block: false,
    #     ipv_6_pool: "Ipv6PoolEc2Id",
    #     ipv_6_cidr_block: "String",
    #     ipv_4_ipam_pool_id: "IpamPoolId",
    #     ipv_4_netmask_length: 1,
    #     ipv_6_ipam_pool_id: "IpamPoolId",
    #     ipv_6_netmask_length: 1,
    #     dry_run: false,
    #     instance_tenancy: "default", # accepts default, dedicated, host
    #     ipv_6_cidr_block_network_border_group: "String",
    #     tag_specifications: [
    #       {
    #         resource_type: "capacity-reservation", # accepts capacity-reservation, client-vpn-endpoint, customer-gateway, carrier-gateway, dedicated-host, dhcp-options, egress-only-internet-gateway, elastic-ip, elastic-gpu, export-image-task, export-instance-task, fleet, fpga-image, host-reservation, image, import-image-task, import-snapshot-task, instance, instance-event-window, internet-gateway, ipam, ipam-pool, ipam-scope, ipv4pool-ec2, ipv6pool-ec2, key-pair, launch-template, local-gateway, local-gateway-route-table, local-gateway-virtual-interface, local-gateway-virtual-interface-group, local-gateway-route-table-vpc-association, local-gateway-route-table-virtual-interface-group-association, natgateway, network-acl, network-interface, network-insights-analysis, network-insights-path, network-insights-access-scope, network-insights-access-scope-analysis, placement-group, prefix-list, replace-root-volume-task, reserved-instances, route-table, security-group, security-group-rule, snapshot, spot-fleet-request, spot-instances-request, subnet, traffic-mirror-filter, traffic-mirror-session, traffic-mirror-target, transit-gateway, transit-gateway-attachment, transit-gateway-connect-peer, transit-gateway-multicast-domain, transit-gateway-route-table, volume, vpc, vpc-endpoint, vpc-endpoint-service, vpc-peering-connection, vpn-connection, vpn-gateway, vpc-flow-log
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String",
    #           },
    #         ],
    #       },
    #     ],
    #   })
    # @param [Hash] options ({})
    # @option options [String] :cidr_block
    #   The IPv4 network range for the VPC, in CIDR notation. For example,
    #   `10.0.0.0/16`. We modify the specified CIDR block to its canonical
    #   form; for example, if you specify `100.68.0.18/18`, we modify it to
    #   `100.68.0.0/18`.
    # @option options [Boolean] :amazon_provided_ipv_6_cidr_block
    #   Requests an Amazon-provided IPv6 CIDR block with a /56 prefix length
    #   for the VPC. You cannot specify the range of IP addresses, or the size
    #   of the CIDR block.
    # @option options [String] :ipv_6_pool
    #   The ID of an IPv6 address pool from which to allocate the IPv6 CIDR
    #   block.
    # @option options [String] :ipv_6_cidr_block
    #   The IPv6 CIDR block from the IPv6 address pool. You must also specify
    #   `Ipv6Pool` in the request.
    #
    #   To let Amazon choose the IPv6 CIDR block for you, omit this parameter.
    # @option options [String] :ipv_4_ipam_pool_id
    #   The ID of an IPv4 IPAM pool you want to use for allocating this VPC's
    #   CIDR. For more information, see [What is
    #   IPAM?](/vpc/latest/ipam/what-is-it-ipam.html) in the *Amazon VPC IPAM
    #   User Guide*.
    # @option options [Integer] :ipv_4_netmask_length
    #   The netmask length of the IPv4 CIDR you want to allocate to this VPC
    #   from an Amazon VPC IP Address Manager (IPAM) pool. For more
    #   information about IPAM, see [What is
    #   IPAM?](/vpc/latest/ipam/what-is-it-ipam.html) in the *Amazon VPC IPAM
    #   User Guide*.
    # @option options [String] :ipv_6_ipam_pool_id
    #   The ID of an IPv6 IPAM pool which will be used to allocate this VPC an
    #   IPv6 CIDR. IPAM is a VPC feature that you can use to automate your IP
    #   address management workflows including assigning, tracking,
    #   troubleshooting, and auditing IP addresses across Amazon Web Services
    #   Regions and accounts throughout your Amazon Web Services Organization.
    #   For more information, see [What is
    #   IPAM?](/vpc/latest/ipam/what-is-it-ipam.html) in the *Amazon VPC IPAM
    #   User Guide*.
    # @option options [Integer] :ipv_6_netmask_length
    #   The netmask length of the IPv6 CIDR you want to allocate to this VPC
    #   from an Amazon VPC IP Address Manager (IPAM) pool. For more
    #   information about IPAM, see [What is
    #   IPAM?](/vpc/latest/ipam/what-is-it-ipam.html) in the *Amazon VPC IPAM
    #   User Guide*.
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @option options [String] :instance_tenancy
    #   The tenancy options for instances launched into the VPC. For
    #   `default`, instances are launched with shared tenancy by default. You
    #   can launch instances with any tenancy into a shared tenancy VPC. For
    #   `dedicated`, instances are launched as dedicated tenancy instances by
    #   default. You can only launch instances with a tenancy of `dedicated`
    #   or `host` into a dedicated tenancy VPC.
    #
    #   **Important:** The `host` value cannot be used with this parameter.
    #   Use the `default` or `dedicated` values only.
    #
    #   Default: `default`
    # @option options [String] :ipv_6_cidr_block_network_border_group
    #   The name of the location from which we advertise the IPV6 CIDR block.
    #   Use this parameter to limit the address to this location.
    #
    #   You must set `AmazonProvidedIpv6CidrBlock` to `true` to use this
    #   parameter.
    # @option options [Array<Types::TagSpecification>] :tag_specifications
    #   The tags to assign to the VPC.
    # @return [Vpc]
    def create_vpc(options = {})
      resp = @client.create_vpc(options)
      Vpc.new(
        id: resp.data.vpc.vpc_id,
        data: resp.data.vpc,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   vpcpeeringconnection = ec2.create_vpc_peering_connection({
    #     dry_run: false,
    #     peer_owner_id: "String",
    #     peer_vpc_id: "String",
    #     vpc_id: "VpcId",
    #     peer_region: "String",
    #     tag_specifications: [
    #       {
    #         resource_type: "capacity-reservation", # accepts capacity-reservation, client-vpn-endpoint, customer-gateway, carrier-gateway, dedicated-host, dhcp-options, egress-only-internet-gateway, elastic-ip, elastic-gpu, export-image-task, export-instance-task, fleet, fpga-image, host-reservation, image, import-image-task, import-snapshot-task, instance, instance-event-window, internet-gateway, ipam, ipam-pool, ipam-scope, ipv4pool-ec2, ipv6pool-ec2, key-pair, launch-template, local-gateway, local-gateway-route-table, local-gateway-virtual-interface, local-gateway-virtual-interface-group, local-gateway-route-table-vpc-association, local-gateway-route-table-virtual-interface-group-association, natgateway, network-acl, network-interface, network-insights-analysis, network-insights-path, network-insights-access-scope, network-insights-access-scope-analysis, placement-group, prefix-list, replace-root-volume-task, reserved-instances, route-table, security-group, security-group-rule, snapshot, spot-fleet-request, spot-instances-request, subnet, traffic-mirror-filter, traffic-mirror-session, traffic-mirror-target, transit-gateway, transit-gateway-attachment, transit-gateway-connect-peer, transit-gateway-multicast-domain, transit-gateway-route-table, volume, vpc, vpc-endpoint, vpc-endpoint-service, vpc-peering-connection, vpn-connection, vpn-gateway, vpc-flow-log
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String",
    #           },
    #         ],
    #       },
    #     ],
    #   })
    # @param [Hash] options ({})
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @option options [String] :peer_owner_id
    #   The Amazon Web Services account ID of the owner of the accepter VPC.
    #
    #   Default: Your Amazon Web Services account ID
    # @option options [String] :peer_vpc_id
    #   The ID of the VPC with which you are creating the VPC peering
    #   connection. You must specify this parameter in the request.
    # @option options [String] :vpc_id
    #   The ID of the requester VPC. You must specify this parameter in the
    #   request.
    # @option options [String] :peer_region
    #   The Region code for the accepter VPC, if the accepter VPC is located
    #   in a Region other than the Region in which you make the request.
    #
    #   Default: The Region in which you make the request.
    # @option options [Array<Types::TagSpecification>] :tag_specifications
    #   The tags to assign to the peering connection.
    # @return [VpcPeeringConnection]
    def create_vpc_peering_connection(options = {})
      resp = @client.create_vpc_peering_connection(options)
      VpcPeeringConnection.new(
        id: resp.data.vpc_peering_connection.vpc_peering_connection_id,
        data: resp.data.vpc_peering_connection,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   ec2.disassociate_route_table({
    #     association_id: "RouteTableAssociationId", # required
    #     dry_run: false,
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :association_id
    #   The association ID representing the current association between the
    #   route table and subnet or gateway.
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @return [EmptyStructure]
    def disassociate_route_table(options = {})
      resp = @client.disassociate_route_table(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   keypairinfo = ec2.import_key_pair({
    #     dry_run: false,
    #     key_name: "String", # required
    #     public_key_material: "data", # required
    #     tag_specifications: [
    #       {
    #         resource_type: "capacity-reservation", # accepts capacity-reservation, client-vpn-endpoint, customer-gateway, carrier-gateway, dedicated-host, dhcp-options, egress-only-internet-gateway, elastic-ip, elastic-gpu, export-image-task, export-instance-task, fleet, fpga-image, host-reservation, image, import-image-task, import-snapshot-task, instance, instance-event-window, internet-gateway, ipam, ipam-pool, ipam-scope, ipv4pool-ec2, ipv6pool-ec2, key-pair, launch-template, local-gateway, local-gateway-route-table, local-gateway-virtual-interface, local-gateway-virtual-interface-group, local-gateway-route-table-vpc-association, local-gateway-route-table-virtual-interface-group-association, natgateway, network-acl, network-interface, network-insights-analysis, network-insights-path, network-insights-access-scope, network-insights-access-scope-analysis, placement-group, prefix-list, replace-root-volume-task, reserved-instances, route-table, security-group, security-group-rule, snapshot, spot-fleet-request, spot-instances-request, subnet, traffic-mirror-filter, traffic-mirror-session, traffic-mirror-target, transit-gateway, transit-gateway-attachment, transit-gateway-connect-peer, transit-gateway-multicast-domain, transit-gateway-route-table, volume, vpc, vpc-endpoint, vpc-endpoint-service, vpc-peering-connection, vpn-connection, vpn-gateway, vpc-flow-log
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String",
    #           },
    #         ],
    #       },
    #     ],
    #   })
    # @param [Hash] options ({})
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @option options [required, String] :key_name
    #   A unique name for the key pair.
    # @option options [required, String, StringIO, File] :public_key_material
    #   The public key. For API calls, the text must be base64-encoded. For
    #   command line tools, base64 encoding is performed for you.
    # @option options [Array<Types::TagSpecification>] :tag_specifications
    #   The tags to apply to the imported key pair.
    # @return [KeyPairInfo]
    def import_key_pair(options = {})
      resp = @client.import_key_pair(options)
      KeyPairInfo.new(
        name: resp.data.key_name,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   image = ec2.register_image({
    #     image_location: "String",
    #     architecture: "i386", # accepts i386, x86_64, arm64, x86_64_mac
    #     block_device_mappings: [
    #       {
    #         device_name: "String",
    #         virtual_name: "String",
    #         ebs: {
    #           delete_on_termination: false,
    #           iops: 1,
    #           snapshot_id: "SnapshotId",
    #           volume_size: 1,
    #           volume_type: "standard", # accepts standard, io1, io2, gp2, sc1, st1, gp3
    #           kms_key_id: "String",
    #           throughput: 1,
    #           outpost_arn: "String",
    #           encrypted: false,
    #         },
    #         no_device: "String",
    #       },
    #     ],
    #     description: "String",
    #     dry_run: false,
    #     ena_support: false,
    #     kernel_id: "KernelId",
    #     name: "String", # required
    #     billing_products: ["String"],
    #     ramdisk_id: "RamdiskId",
    #     root_device_name: "String",
    #     sriov_net_support: "String",
    #     virtualization_type: "String",
    #     boot_mode: "legacy-bios", # accepts legacy-bios, uefi
    #   })
    # @param [Hash] options ({})
    # @option options [String] :image_location
    #   The full path to your AMI manifest in Amazon S3 storage. The specified
    #   bucket must have the `aws-exec-read` canned access control list (ACL)
    #   to ensure that it can be accessed by Amazon EC2. For more information,
    #   see [Canned ACLs][1] in the *Amazon S3 Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#canned-acl
    # @option options [String] :architecture
    #   The architecture of the AMI.
    #
    #   Default: For Amazon EBS-backed AMIs, `i386`. For instance store-backed
    #   AMIs, the architecture specified in the manifest file.
    # @option options [Array<Types::BlockDeviceMapping>] :block_device_mappings
    #   The block device mapping entries.
    #
    #   If you specify an Amazon EBS volume using the ID of an Amazon EBS
    #   snapshot, you can't specify the encryption state of the volume.
    #
    #   If you create an AMI on an Outpost, then all backing snapshots must be
    #   on the same Outpost or in the Region of that Outpost. AMIs on an
    #   Outpost that include local snapshots can be used to launch instances
    #   on the same Outpost only. For more information, [ Amazon EBS local
    #   snapshots on Outposts][1] in the *Amazon Elastic Compute Cloud User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/snapshots-outposts.html#ami
    # @option options [String] :description
    #   A description for your AMI.
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @option options [Boolean] :ena_support
    #   Set to `true` to enable enhanced networking with ENA for the AMI and
    #   any instances that you launch from the AMI.
    #
    #   This option is supported only for HVM AMIs. Specifying this option
    #   with a PV AMI can make instances launched from the AMI unreachable.
    # @option options [String] :kernel_id
    #   The ID of the kernel.
    # @option options [required, String] :name
    #   A name for your AMI.
    #
    #   Constraints: 3-128 alphanumeric characters, parentheses (()), square
    #   brackets (\[\]), spaces ( ), periods (.), slashes (/), dashes (-),
    #   single quotes ('), at-signs (@), or underscores(\_)
    # @option options [Array<String>] :billing_products
    #   The billing product codes. Your account must be authorized to specify
    #   billing product codes. Otherwise, you can use the Amazon Web Services
    #   Marketplace to bill for the use of an AMI.
    # @option options [String] :ramdisk_id
    #   The ID of the RAM disk.
    # @option options [String] :root_device_name
    #   The device name of the root device volume (for example, `/dev/sda1`).
    # @option options [String] :sriov_net_support
    #   Set to `simple` to enable enhanced networking with the Intel 82599
    #   Virtual Function interface for the AMI and any instances that you
    #   launch from the AMI.
    #
    #   There is no way to disable `sriovNetSupport` at this time.
    #
    #   This option is supported only for HVM AMIs. Specifying this option
    #   with a PV AMI can make instances launched from the AMI unreachable.
    # @option options [String] :virtualization_type
    #   The type of virtualization (`hvm` \| `paravirtual`).
    #
    #   Default: `paravirtual`
    # @option options [String] :boot_mode
    #   The boot mode of the AMI. For more information, see [Boot modes][1] in
    #   the *Amazon Elastic Compute Cloud User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-boot.html
    # @return [Image]
    def register_image(options = {})
      resp = @client.register_image(options)
      Image.new(
        id: resp.data.image_id,
        client: @client
      )
    end

    # @!group Associations

    # @example Request syntax with placeholder values
    #
    #   classic_addresses = ec2.classic_addresses({
    #     filters: [
    #       {
    #         name: "String",
    #         values: ["String"],
    #       },
    #     ],
    #     public_ips: ["String"],
    #     allocation_ids: ["AllocationId"],
    #     dry_run: false,
    #   })
    # @param [Hash] options ({})
    # @option options [Array<Types::Filter>] :filters
    #   One or more filters. Filter names and values are case-sensitive.
    #
    #   * `allocation-id` - \[EC2-VPC\] The allocation ID for the address.
    #
    #   * `association-id` - \[EC2-VPC\] The association ID for the address.
    #
    #   * `domain` - Indicates whether the address is for use in EC2-Classic
    #     (`standard`) or in a VPC (`vpc`).
    #
    #   * `instance-id` - The ID of the instance the address is associated
    #     with, if any.
    #
    #   * `network-border-group` - A unique set of Availability Zones, Local
    #     Zones, or Wavelength Zones from where Amazon Web Services advertises
    #     IP addresses.
    #
    #   * `network-interface-id` - \[EC2-VPC\] The ID of the network interface
    #     that the address is associated with, if any.
    #
    #   * `network-interface-owner-id` - The Amazon Web Services account ID of
    #     the owner.
    #
    #   * `private-ip-address` - \[EC2-VPC\] The private IP address associated
    #     with the Elastic IP address.
    #
    #   * `public-ip` - The Elastic IP address, or the carrier IP address.
    #
    #   * `tag`\:&lt;key&gt; - The key/value combination of a tag assigned to
    #     the resource. Use the tag key in the filter name and the tag value
    #     as the filter value. For example, to find all resources that have a
    #     tag with the key `Owner` and the value `TeamA`, specify `tag:Owner`
    #     for the filter name and `TeamA` for the filter value.
    #
    #   * `tag-key` - The key of a tag assigned to the resource. Use this
    #     filter to find all resources assigned a tag with a specific key,
    #     regardless of the tag value.
    # @option options [Array<String>] :public_ips
    #   One or more Elastic IP addresses.
    #
    #   Default: Describes all your Elastic IP addresses.
    # @option options [Array<String>] :allocation_ids
    #   \[EC2-VPC\] Information about the allocation IDs.
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @return [ClassicAddress::Collection]
    def classic_addresses(options = {})
      batches = Enumerator.new do |y|
        batch = []
        options = Aws::Util.deep_merge(options, filters: [{
          name: "domain",
          values: ["standard"]
        }])
        resp = @client.describe_addresses(options)
        resp.data.addresses.each do |a|
          batch << ClassicAddress.new(
            public_ip: a.public_ip,
            data: a,
            client: @client
          )
        end
        y.yield(batch)
      end
      ClassicAddress::Collection.new(batches)
    end

    # @param [String] id
    # @return [DhcpOptions]
    def dhcp_options(id)
      DhcpOptions.new(
        id: id,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   dhcp_options_sets = ec2.dhcp_options_sets({
    #     dhcp_options_ids: ["DhcpOptionsId"],
    #     filters: [
    #       {
    #         name: "String",
    #         values: ["String"],
    #       },
    #     ],
    #     dry_run: false,
    #   })
    # @param [Hash] options ({})
    # @option options [Array<String>] :dhcp_options_ids
    #   The IDs of one or more DHCP options sets.
    #
    #   Default: Describes all your DHCP options sets.
    # @option options [Array<Types::Filter>] :filters
    #   One or more filters.
    #
    #   * `dhcp-options-id` - The ID of a DHCP options set.
    #
    #   * `key` - The key for one of the options (for example, `domain-name`).
    #
    #   * `value` - The value for one of the options.
    #
    #   * `owner-id` - The ID of the Amazon Web Services account that owns the
    #     DHCP options set.
    #
    #   * `tag`\:&lt;key&gt; - The key/value combination of a tag assigned to
    #     the resource. Use the tag key in the filter name and the tag value
    #     as the filter value. For example, to find all resources that have a
    #     tag with the key `Owner` and the value `TeamA`, specify `tag:Owner`
    #     for the filter name and `TeamA` for the filter value.
    #
    #   * `tag-key` - The key of a tag assigned to the resource. Use this
    #     filter to find all resources assigned a tag with a specific key,
    #     regardless of the tag value.
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @return [DhcpOptions::Collection]
    def dhcp_options_sets(options = {})
      batches = Enumerator.new do |y|
        resp = @client.describe_dhcp_options(options)
        resp.each_page do |page|
          batch = []
          page.data.dhcp_options.each do |d|
            batch << DhcpOptions.new(
              id: d.dhcp_options_id,
              data: d,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      DhcpOptions::Collection.new(batches)
    end

    # @param [String] id
    # @return [Image]
    def image(id)
      Image.new(
        id: id,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   images = ec2.images({
    #     executable_users: ["String"],
    #     filters: [
    #       {
    #         name: "String",
    #         values: ["String"],
    #       },
    #     ],
    #     image_ids: ["ImageId"],
    #     owners: ["String"],
    #     include_deprecated: false,
    #     dry_run: false,
    #   })
    # @param [Hash] options ({})
    # @option options [Array<String>] :executable_users
    #   Scopes the images by users with explicit launch permissions. Specify
    #   an Amazon Web Services account ID, `self` (the sender of the request),
    #   or `all` (public AMIs).
    #
    #   * If you specify an Amazon Web Services account ID that is not your
    #     own, only AMIs shared with that specific Amazon Web Services account
    #     ID are returned. However, AMIs that are shared with the account’s
    #     organization or organizational unit (OU) are not returned.
    #
    #   * If you specify `self` or your own Amazon Web Services account ID,
    #     AMIs shared with your account are returned. In addition, AMIs that
    #     are shared with the organization or OU of which you are member are
    #     also returned.
    #
    #   * If you specify `all`, all public AMIs are returned.
    # @option options [Array<Types::Filter>] :filters
    #   The filters.
    #
    #   * `architecture` - The image architecture (`i386` \| `x86_64` \|
    #     `arm64`).
    #
    #   * `block-device-mapping.delete-on-termination` - A Boolean value that
    #     indicates whether the Amazon EBS volume is deleted on instance
    #     termination.
    #
    #   * `block-device-mapping.device-name` - The device name specified in
    #     the block device mapping (for example, `/dev/sdh` or `xvdh`).
    #
    #   * `block-device-mapping.snapshot-id` - The ID of the snapshot used for
    #     the Amazon EBS volume.
    #
    #   * `block-device-mapping.volume-size` - The volume size of the Amazon
    #     EBS volume, in GiB.
    #
    #   * `block-device-mapping.volume-type` - The volume type of the Amazon
    #     EBS volume (`io1` \| `io2` \| `gp2` \| `gp3` \| `sc1 `\| `st1` \|
    #     `standard`).
    #
    #   * `block-device-mapping.encrypted` - A Boolean that indicates whether
    #     the Amazon EBS volume is encrypted.
    #
    #   * `description` - The description of the image (provided during image
    #     creation).
    #
    #   * `ena-support` - A Boolean that indicates whether enhanced networking
    #     with ENA is enabled.
    #
    #   * `hypervisor` - The hypervisor type (`ovm` \| `xen`).
    #
    #   * `image-id` - The ID of the image.
    #
    #   * `image-type` - The image type (`machine` \| `kernel` \| `ramdisk`).
    #
    #   * `is-public` - A Boolean that indicates whether the image is public.
    #
    #   * `kernel-id` - The kernel ID.
    #
    #   * `manifest-location` - The location of the image manifest.
    #
    #   * `name` - The name of the AMI (provided during image creation).
    #
    #   * `owner-alias` - The owner alias (`amazon` \| `aws-marketplace`). The
    #     valid aliases are defined in an Amazon-maintained list. This is not
    #     the Amazon Web Services account alias that can be set using the IAM
    #     console. We recommend that you use the **Owner** request parameter
    #     instead of this filter.
    #
    #   * `owner-id` - The Amazon Web Services account ID of the owner. We
    #     recommend that you use the **Owner** request parameter instead of
    #     this filter.
    #
    #   * `platform` - The platform. To only list Windows-based AMIs, use
    #     `windows`.
    #
    #   * `product-code` - The product code.
    #
    #   * `product-code.type` - The type of the product code (`marketplace`).
    #
    #   * `ramdisk-id` - The RAM disk ID.
    #
    #   * `root-device-name` - The device name of the root device volume (for
    #     example, `/dev/sda1`).
    #
    #   * `root-device-type` - The type of the root device volume (`ebs` \|
    #     `instance-store`).
    #
    #   * `state` - The state of the image (`available` \| `pending` \|
    #     `failed`).
    #
    #   * `state-reason-code` - The reason code for the state change.
    #
    #   * `state-reason-message` - The message for the state change.
    #
    #   * `sriov-net-support` - A value of `simple` indicates that enhanced
    #     networking with the Intel 82599 VF interface is enabled.
    #
    #   * `tag`\:&lt;key&gt; - The key/value combination of a tag assigned to
    #     the resource. Use the tag key in the filter name and the tag value
    #     as the filter value. For example, to find all resources that have a
    #     tag with the key `Owner` and the value `TeamA`, specify `tag:Owner`
    #     for the filter name and `TeamA` for the filter value.
    #
    #   * `tag-key` - The key of a tag assigned to the resource. Use this
    #     filter to find all resources assigned a tag with a specific key,
    #     regardless of the tag value.
    #
    #   * `virtualization-type` - The virtualization type (`paravirtual` \|
    #     `hvm`).
    # @option options [Array<String>] :image_ids
    #   The image IDs.
    #
    #   Default: Describes all images available to you.
    # @option options [Array<String>] :owners
    #   Scopes the results to images with the specified owners. You can
    #   specify a combination of Amazon Web Services account IDs, `self`,
    #   `amazon`, and `aws-marketplace`. If you omit this parameter, the
    #   results include all images for which you have launch permissions,
    #   regardless of ownership.
    # @option options [Boolean] :include_deprecated
    #   If `true`, all deprecated AMIs are included in the response. If
    #   `false`, no deprecated AMIs are included in the response. If no value
    #   is specified, the default value is `false`.
    #
    #   <note markdown="1"> If you are the AMI owner, all deprecated AMIs appear in the response
    #   regardless of the value (`true` or `false`) that you set for this
    #   parameter.
    #
    #    </note>
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @return [Image::Collection]
    def images(options = {})
      batches = Enumerator.new do |y|
        batch = []
        resp = @client.describe_images(options)
        resp.data.images.each do |i|
          batch << Image.new(
            id: i.image_id,
            data: i,
            client: @client
          )
        end
        y.yield(batch)
      end
      Image::Collection.new(batches)
    end

    # @param [String] id
    # @return [Instance]
    def instance(id)
      Instance.new(
        id: id,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   instances = ec2.instances({
    #     filters: [
    #       {
    #         name: "String",
    #         values: ["String"],
    #       },
    #     ],
    #     instance_ids: ["InstanceId"],
    #     dry_run: false,
    #   })
    # @param [Hash] options ({})
    # @option options [Array<Types::Filter>] :filters
    #   The filters.
    #
    #   * `affinity` - The affinity setting for an instance running on a
    #     Dedicated Host (`default` \| `host`).
    #
    #   * `architecture` - The instance architecture (`i386` \| `x86_64` \|
    #     `arm64`).
    #
    #   * `availability-zone` - The Availability Zone of the instance.
    #
    #   * `block-device-mapping.attach-time` - The attach time for an EBS
    #     volume mapped to the instance, for example,
    #     `2010-09-15T17:15:20.000Z`.
    #
    #   * `block-device-mapping.delete-on-termination` - A Boolean that
    #     indicates whether the EBS volume is deleted on instance termination.
    #
    #   * `block-device-mapping.device-name` - The device name specified in
    #     the block device mapping (for example, `/dev/sdh` or `xvdh`).
    #
    #   * `block-device-mapping.status` - The status for the EBS volume
    #     (`attaching` \| `attached` \| `detaching` \| `detached`).
    #
    #   * `block-device-mapping.volume-id` - The volume ID of the EBS volume.
    #
    #   * `client-token` - The idempotency token you provided when you
    #     launched the instance.
    #
    #   * `dns-name` - The public DNS name of the instance.
    #
    #   * `group-id` - The ID of the security group for the instance.
    #     EC2-Classic only.
    #
    #   * `group-name` - The name of the security group for the instance.
    #     EC2-Classic only.
    #
    #   * `hibernation-options.configured` - A Boolean that indicates whether
    #     the instance is enabled for hibernation. A value of `true` means
    #     that the instance is enabled for hibernation.
    #
    #   * `host-id` - The ID of the Dedicated Host on which the instance is
    #     running, if applicable.
    #
    #   * `hypervisor` - The hypervisor type of the instance (`ovm` \| `xen`).
    #     The value `xen` is used for both Xen and Nitro hypervisors.
    #
    #   * `iam-instance-profile.arn` - The instance profile associated with
    #     the instance. Specified as an ARN.
    #
    #   * `image-id` - The ID of the image used to launch the instance.
    #
    #   * `instance-id` - The ID of the instance.
    #
    #   * `instance-lifecycle` - Indicates whether this is a Spot Instance or
    #     a Scheduled Instance (`spot` \| `scheduled`).
    #
    #   * `instance-state-code` - The state of the instance, as a 16-bit
    #     unsigned integer. The high byte is used for internal purposes and
    #     should be ignored. The low byte is set based on the state
    #     represented. The valid values are: 0 (pending), 16 (running), 32
    #     (shutting-down), 48 (terminated), 64 (stopping), and 80 (stopped).
    #
    #   * `instance-state-name` - The state of the instance (`pending` \|
    #     `running` \| `shutting-down` \| `terminated` \| `stopping` \|
    #     `stopped`).
    #
    #   * `instance-type` - The type of instance (for example, `t2.micro`).
    #
    #   * `instance.group-id` - The ID of the security group for the instance.
    #
    #   * `instance.group-name` - The name of the security group for the
    #     instance.
    #
    #   * `ip-address` - The public IPv4 address of the instance.
    #
    #   * `kernel-id` - The kernel ID.
    #
    #   * `key-name` - The name of the key pair used when the instance was
    #     launched.
    #
    #   * `launch-index` - When launching multiple instances, this is the
    #     index for the instance in the launch group (for example, 0, 1, 2,
    #     and so on).
    #
    #   * `launch-time` - The time when the instance was launched, in the ISO
    #     8601 format in the UTC time zone (YYYY-MM-DDThh:mm:ss.sssZ), for
    #     example, `2021-09-29T11:04:43.305Z`. You can use a wildcard (`*`),
    #     for example, `2021-09-29T*`, which matches an entire day.
    #
    #   * `metadata-options.http-tokens` - The metadata request authorization
    #     state (`optional` \| `required`)
    #
    #   * `metadata-options.http-put-response-hop-limit` - The http metadata
    #     request put response hop limit (integer, possible values `1` to
    #     `64`)
    #
    #   * `metadata-options.http-endpoint` - Enable or disable metadata access
    #     on http endpoint (`enabled` \| `disabled`)
    #
    #   * `monitoring-state` - Indicates whether detailed monitoring is
    #     enabled (`disabled` \| `enabled`).
    #
    #   * `network-interface.addresses.private-ip-address` - The private IPv4
    #     address associated with the network interface.
    #
    #   * `network-interface.addresses.primary` - Specifies whether the IPv4
    #     address of the network interface is the primary private IPv4
    #     address.
    #
    #   * `network-interface.addresses.association.public-ip` - The ID of the
    #     association of an Elastic IP address (IPv4) with a network
    #     interface.
    #
    #   * `network-interface.addresses.association.ip-owner-id` - The owner ID
    #     of the private IPv4 address associated with the network interface.
    #
    #   * `network-interface.association.public-ip` - The address of the
    #     Elastic IP address (IPv4) bound to the network interface.
    #
    #   * `network-interface.association.ip-owner-id` - The owner of the
    #     Elastic IP address (IPv4) associated with the network interface.
    #
    #   * `network-interface.association.allocation-id` - The allocation ID
    #     returned when you allocated the Elastic IP address (IPv4) for your
    #     network interface.
    #
    #   * `network-interface.association.association-id` - The association ID
    #     returned when the network interface was associated with an IPv4
    #     address.
    #
    #   * `network-interface.attachment.attachment-id` - The ID of the
    #     interface attachment.
    #
    #   * `network-interface.attachment.instance-id` - The ID of the instance
    #     to which the network interface is attached.
    #
    #   * `network-interface.attachment.instance-owner-id` - The owner ID of
    #     the instance to which the network interface is attached.
    #
    #   * `network-interface.attachment.device-index` - The device index to
    #     which the network interface is attached.
    #
    #   * `network-interface.attachment.status` - The status of the attachment
    #     (`attaching` \| `attached` \| `detaching` \| `detached`).
    #
    #   * `network-interface.attachment.attach-time` - The time that the
    #     network interface was attached to an instance.
    #
    #   * `network-interface.attachment.delete-on-termination` - Specifies
    #     whether the attachment is deleted when an instance is terminated.
    #
    #   * `network-interface.availability-zone` - The Availability Zone for
    #     the network interface.
    #
    #   * `network-interface.description` - The description of the network
    #     interface.
    #
    #   * `network-interface.group-id` - The ID of a security group associated
    #     with the network interface.
    #
    #   * `network-interface.group-name` - The name of a security group
    #     associated with the network interface.
    #
    #   * `network-interface.ipv6-addresses.ipv6-address` - The IPv6 address
    #     associated with the network interface.
    #
    #   * `network-interface.mac-address` - The MAC address of the network
    #     interface.
    #
    #   * `network-interface.network-interface-id` - The ID of the network
    #     interface.
    #
    #   * `network-interface.owner-id` - The ID of the owner of the network
    #     interface.
    #
    #   * `network-interface.private-dns-name` - The private DNS name of the
    #     network interface.
    #
    #   * `network-interface.requester-id` - The requester ID for the network
    #     interface.
    #
    #   * `network-interface.requester-managed` - Indicates whether the
    #     network interface is being managed by Amazon Web Services.
    #
    #   * `network-interface.status` - The status of the network interface
    #     (`available`) \| `in-use`).
    #
    #   * `network-interface.source-dest-check` - Whether the network
    #     interface performs source/destination checking. A value of `true`
    #     means that checking is enabled, and `false` means that checking is
    #     disabled. The value must be `false` for the network interface to
    #     perform network address translation (NAT) in your VPC.
    #
    #   * `network-interface.subnet-id` - The ID of the subnet for the network
    #     interface.
    #
    #   * `network-interface.vpc-id` - The ID of the VPC for the network
    #     interface.
    #
    #   * `outpost-arn` - The Amazon Resource Name (ARN) of the Outpost.
    #
    #   * `owner-id` - The Amazon Web Services account ID of the instance
    #     owner.
    #
    #   * `placement-group-name` - The name of the placement group for the
    #     instance.
    #
    #   * `placement-partition-number` - The partition in which the instance
    #     is located.
    #
    #   * `platform` - The platform. To list only Windows instances, use
    #     `windows`.
    #
    #   * `private-dns-name` - The private IPv4 DNS name of the instance.
    #
    #   * `private-ip-address` - The private IPv4 address of the instance.
    #
    #   * `product-code` - The product code associated with the AMI used to
    #     launch the instance.
    #
    #   * `product-code.type` - The type of product code (`devpay` \|
    #     `marketplace`).
    #
    #   * `ramdisk-id` - The RAM disk ID.
    #
    #   * `reason` - The reason for the current state of the instance (for
    #     example, shows "User Initiated \[date\]" when you stop or
    #     terminate the instance). Similar to the state-reason-code filter.
    #
    #   * `requester-id` - The ID of the entity that launched the instance on
    #     your behalf (for example, Amazon Web Services Management Console,
    #     Auto Scaling, and so on).
    #
    #   * `reservation-id` - The ID of the instance's reservation. A
    #     reservation ID is created any time you launch an instance. A
    #     reservation ID has a one-to-one relationship with an instance launch
    #     request, but can be associated with more than one instance if you
    #     launch multiple instances using the same launch request. For
    #     example, if you launch one instance, you get one reservation ID. If
    #     you launch ten instances using the same launch request, you also get
    #     one reservation ID.
    #
    #   * `root-device-name` - The device name of the root device volume (for
    #     example, `/dev/sda1`).
    #
    #   * `root-device-type` - The type of the root device volume (`ebs` \|
    #     `instance-store`).
    #
    #   * `source-dest-check` - Indicates whether the instance performs
    #     source/destination checking. A value of `true` means that checking
    #     is enabled, and `false` means that checking is disabled. The value
    #     must be `false` for the instance to perform network address
    #     translation (NAT) in your VPC.
    #
    #   * `spot-instance-request-id` - The ID of the Spot Instance request.
    #
    #   * `state-reason-code` - The reason code for the state change.
    #
    #   * `state-reason-message` - A message that describes the state change.
    #
    #   * `subnet-id` - The ID of the subnet for the instance.
    #
    #   * `tag:<key>` - The key/value combination of a tag assigned to the
    #     resource. Use the tag key in the filter name and the tag value as
    #     the filter value. For example, to find all resources that have a tag
    #     with the key `Owner` and the value `TeamA`, specify `tag:Owner` for
    #     the filter name and `TeamA` for the filter value.
    #
    #   * `tag-key` - The key of a tag assigned to the resource. Use this
    #     filter to find all resources that have a tag with a specific key,
    #     regardless of the tag value.
    #
    #   * `tenancy` - The tenancy of an instance (`dedicated` \| `default` \|
    #     `host`).
    #
    #   * `virtualization-type` - The virtualization type of the instance
    #     (`paravirtual` \| `hvm`).
    #
    #   * `vpc-id` - The ID of the VPC that the instance is running in.
    # @option options [Array<String>] :instance_ids
    #   The instance IDs.
    #
    #   Default: Describes all your instances.
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @return [Instance::Collection]
    def instances(options = {})
      batches = Enumerator.new do |y|
        resp = @client.describe_instances(options)
        resp.each_page do |page|
          batch = []
          page.data.reservations.each do |r|
            r.instances.each do |i|
              batch << Instance.new(
                id: i.instance_id,
                data: i,
                client: @client
              )
            end
          end
          y.yield(batch)
        end
      end
      Instance::Collection.new(batches)
    end

    # @param [String] id
    # @return [InternetGateway]
    def internet_gateway(id)
      InternetGateway.new(
        id: id,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   internet_gateways = ec2.internet_gateways({
    #     filters: [
    #       {
    #         name: "String",
    #         values: ["String"],
    #       },
    #     ],
    #     dry_run: false,
    #     internet_gateway_ids: ["InternetGatewayId"],
    #   })
    # @param [Hash] options ({})
    # @option options [Array<Types::Filter>] :filters
    #   One or more filters.
    #
    #   * `attachment.state` - The current state of the attachment between the
    #     gateway and the VPC (`available`). Present only if a VPC is
    #     attached.
    #
    #   * `attachment.vpc-id` - The ID of an attached VPC.
    #
    #   * `internet-gateway-id` - The ID of the Internet gateway.
    #
    #   * `owner-id` - The ID of the Amazon Web Services account that owns the
    #     internet gateway.
    #
    #   * `tag`\:&lt;key&gt; - The key/value combination of a tag assigned to
    #     the resource. Use the tag key in the filter name and the tag value
    #     as the filter value. For example, to find all resources that have a
    #     tag with the key `Owner` and the value `TeamA`, specify `tag:Owner`
    #     for the filter name and `TeamA` for the filter value.
    #
    #   * `tag-key` - The key of a tag assigned to the resource. Use this
    #     filter to find all resources assigned a tag with a specific key,
    #     regardless of the tag value.
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @option options [Array<String>] :internet_gateway_ids
    #   One or more internet gateway IDs.
    #
    #   Default: Describes all your internet gateways.
    # @return [InternetGateway::Collection]
    def internet_gateways(options = {})
      batches = Enumerator.new do |y|
        resp = @client.describe_internet_gateways(options)
        resp.each_page do |page|
          batch = []
          page.data.internet_gateways.each do |i|
            batch << InternetGateway.new(
              id: i.internet_gateway_id,
              data: i,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      InternetGateway::Collection.new(batches)
    end

    # @param [String] name
    # @return [KeyPairInfo]
    def key_pair(name)
      KeyPairInfo.new(
        name: name,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   key_pairs = ec2.key_pairs({
    #     filters: [
    #       {
    #         name: "String",
    #         values: ["String"],
    #       },
    #     ],
    #     key_names: ["KeyPairName"],
    #     key_pair_ids: ["KeyPairId"],
    #     dry_run: false,
    #   })
    # @param [Hash] options ({})
    # @option options [Array<Types::Filter>] :filters
    #   The filters.
    #
    #   * `key-pair-id` - The ID of the key pair.
    #
    #   * `fingerprint` - The fingerprint of the key pair.
    #
    #   * `key-name` - The name of the key pair.
    #
    #   * `tag-key` - The key of a tag assigned to the resource. Use this
    #     filter to find all resources assigned a tag with a specific key,
    #     regardless of the tag value.
    #
    #   * `tag`\:&lt;key&gt; - The key/value combination of a tag assigned to
    #     the resource. Use the tag key in the filter name and the tag value
    #     as the filter value. For example, to find all resources that have a
    #     tag with the key `Owner` and the value `TeamA`, specify `tag:Owner`
    #     for the filter name and `TeamA` for the filter value.
    # @option options [Array<String>] :key_names
    #   The key pair names.
    #
    #   Default: Describes all of your key pairs.
    # @option options [Array<String>] :key_pair_ids
    #   The IDs of the key pairs.
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @return [KeyPairInfo::Collection]
    def key_pairs(options = {})
      batches = Enumerator.new do |y|
        batch = []
        resp = @client.describe_key_pairs(options)
        resp.data.key_pairs.each do |k|
          batch << KeyPairInfo.new(
            name: k.key_name,
            data: k,
            client: @client
          )
        end
        y.yield(batch)
      end
      KeyPairInfo::Collection.new(batches)
    end

    # @param [String] id
    # @return [NatGateway]
    def nat_gateway(id)
      NatGateway.new(
        id: id,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   nat_gateways = ec2.nat_gateways({
    #     dry_run: false,
    #     filter: [
    #       {
    #         name: "String",
    #         values: ["String"],
    #       },
    #     ],
    #     nat_gateway_ids: ["NatGatewayId"],
    #   })
    # @param [Hash] options ({})
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @option options [Array<Types::Filter>] :filter
    #   One or more filters.
    #
    #   * `nat-gateway-id` - The ID of the NAT gateway.
    #
    #   * `state` - The state of the NAT gateway (`pending` \| `failed` \|
    #     `available` \| `deleting` \| `deleted`).
    #
    #   * `subnet-id` - The ID of the subnet in which the NAT gateway resides.
    #
    #   * `tag`\:&lt;key&gt; - The key/value combination of a tag assigned to
    #     the resource. Use the tag key in the filter name and the tag value
    #     as the filter value. For example, to find all resources that have a
    #     tag with the key `Owner` and the value `TeamA`, specify `tag:Owner`
    #     for the filter name and `TeamA` for the filter value.
    #
    #   * `tag-key` - The key of a tag assigned to the resource. Use this
    #     filter to find all resources assigned a tag with a specific key,
    #     regardless of the tag value.
    #
    #   * `vpc-id` - The ID of the VPC in which the NAT gateway resides.
    # @option options [Array<String>] :nat_gateway_ids
    #   One or more NAT gateway IDs.
    # @return [NatGateway::Collection]
    def nat_gateways(options = {})
      batches = Enumerator.new do |y|
        resp = @client.describe_nat_gateways(options)
        resp.each_page do |page|
          batch = []
          page.data.nat_gateways.each do |n|
            batch << NatGateway.new(
              id: n.nat_gateway_id,
              data: n,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      NatGateway::Collection.new(batches)
    end

    # @param [String] id
    # @return [NetworkAcl]
    def network_acl(id)
      NetworkAcl.new(
        id: id,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   network_acls = ec2.network_acls({
    #     filters: [
    #       {
    #         name: "String",
    #         values: ["String"],
    #       },
    #     ],
    #     dry_run: false,
    #     network_acl_ids: ["NetworkAclId"],
    #   })
    # @param [Hash] options ({})
    # @option options [Array<Types::Filter>] :filters
    #   One or more filters.
    #
    #   * `association.association-id` - The ID of an association ID for the
    #     ACL.
    #
    #   * `association.network-acl-id` - The ID of the network ACL involved in
    #     the association.
    #
    #   * `association.subnet-id` - The ID of the subnet involved in the
    #     association.
    #
    #   * `default` - Indicates whether the ACL is the default network ACL for
    #     the VPC.
    #
    #   * `entry.cidr` - The IPv4 CIDR range specified in the entry.
    #
    #   * `entry.icmp.code` - The ICMP code specified in the entry, if any.
    #
    #   * `entry.icmp.type` - The ICMP type specified in the entry, if any.
    #
    #   * `entry.ipv6-cidr` - The IPv6 CIDR range specified in the entry.
    #
    #   * `entry.port-range.from` - The start of the port range specified in
    #     the entry.
    #
    #   * `entry.port-range.to` - The end of the port range specified in the
    #     entry.
    #
    #   * `entry.protocol` - The protocol specified in the entry (`tcp` \|
    #     `udp` \| `icmp` or a protocol number).
    #
    #   * `entry.rule-action` - Allows or denies the matching traffic (`allow`
    #     \| `deny`).
    #
    #   * `entry.rule-number` - The number of an entry (in other words, rule)
    #     in the set of ACL entries.
    #
    #   * `network-acl-id` - The ID of the network ACL.
    #
    #   * `owner-id` - The ID of the Amazon Web Services account that owns the
    #     network ACL.
    #
    #   * `tag`\:&lt;key&gt; - The key/value combination of a tag assigned to
    #     the resource. Use the tag key in the filter name and the tag value
    #     as the filter value. For example, to find all resources that have a
    #     tag with the key `Owner` and the value `TeamA`, specify `tag:Owner`
    #     for the filter name and `TeamA` for the filter value.
    #
    #   * `tag-key` - The key of a tag assigned to the resource. Use this
    #     filter to find all resources assigned a tag with a specific key,
    #     regardless of the tag value.
    #
    #   * `vpc-id` - The ID of the VPC for the network ACL.
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @option options [Array<String>] :network_acl_ids
    #   One or more network ACL IDs.
    #
    #   Default: Describes all your network ACLs.
    # @return [NetworkAcl::Collection]
    def network_acls(options = {})
      batches = Enumerator.new do |y|
        resp = @client.describe_network_acls(options)
        resp.each_page do |page|
          batch = []
          page.data.network_acls.each do |n|
            batch << NetworkAcl.new(
              id: n.network_acl_id,
              data: n,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      NetworkAcl::Collection.new(batches)
    end

    # @param [String] id
    # @return [NetworkInterface]
    def network_interface(id)
      NetworkInterface.new(
        id: id,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   network_interfaces = ec2.network_interfaces({
    #     filters: [
    #       {
    #         name: "String",
    #         values: ["String"],
    #       },
    #     ],
    #     dry_run: false,
    #     network_interface_ids: ["NetworkInterfaceId"],
    #   })
    # @param [Hash] options ({})
    # @option options [Array<Types::Filter>] :filters
    #   One or more filters.
    #
    #   * `addresses.private-ip-address` - The private IPv4 addresses
    #     associated with the network interface.
    #
    #   * `addresses.primary` - Whether the private IPv4 address is the
    #     primary IP address associated with the network interface.
    #
    #   * `addresses.association.public-ip` - The association ID returned when
    #     the network interface was associated with the Elastic IP address
    #     (IPv4).
    #
    #   * `addresses.association.owner-id` - The owner ID of the addresses
    #     associated with the network interface.
    #
    #   * `association.association-id` - The association ID returned when the
    #     network interface was associated with an IPv4 address.
    #
    #   * `association.allocation-id` - The allocation ID returned when you
    #     allocated the Elastic IP address (IPv4) for your network interface.
    #
    #   * `association.ip-owner-id` - The owner of the Elastic IP address
    #     (IPv4) associated with the network interface.
    #
    #   * `association.public-ip` - The address of the Elastic IP address
    #     (IPv4) bound to the network interface.
    #
    #   * `association.public-dns-name` - The public DNS name for the network
    #     interface (IPv4).
    #
    #   * `attachment.attachment-id` - The ID of the interface attachment.
    #
    #   * `attachment.attach-time` - The time that the network interface was
    #     attached to an instance.
    #
    #   * `attachment.delete-on-termination` - Indicates whether the
    #     attachment is deleted when an instance is terminated.
    #
    #   * `attachment.device-index` - The device index to which the network
    #     interface is attached.
    #
    #   * `attachment.instance-id` - The ID of the instance to which the
    #     network interface is attached.
    #
    #   * `attachment.instance-owner-id` - The owner ID of the instance to
    #     which the network interface is attached.
    #
    #   * `attachment.status` - The status of the attachment (`attaching` \|
    #     `attached` \| `detaching` \| `detached`).
    #
    #   * `availability-zone` - The Availability Zone of the network
    #     interface.
    #
    #   * `description` - The description of the network interface.
    #
    #   * `group-id` - The ID of a security group associated with the network
    #     interface.
    #
    #   * `group-name` - The name of a security group associated with the
    #     network interface.
    #
    #   * `ipv6-addresses.ipv6-address` - An IPv6 address associated with the
    #     network interface.
    #
    #   * `mac-address` - The MAC address of the network interface.
    #
    #   * `network-interface-id` - The ID of the network interface.
    #
    #   * `owner-id` - The Amazon Web Services account ID of the network
    #     interface owner.
    #
    #   * `private-ip-address` - The private IPv4 address or addresses of the
    #     network interface.
    #
    #   * `private-dns-name` - The private DNS name of the network interface
    #     (IPv4).
    #
    #   * `requester-id` - The alias or Amazon Web Services account ID of the
    #     principal or service that created the network interface.
    #
    #   * `requester-managed` - Indicates whether the network interface is
    #     being managed by an Amazon Web Service (for example, Amazon Web
    #     Services Management Console, Auto Scaling, and so on).
    #
    #   * `source-dest-check` - Indicates whether the network interface
    #     performs source/destination checking. A value of `true` means
    #     checking is enabled, and `false` means checking is disabled. The
    #     value must be `false` for the network interface to perform network
    #     address translation (NAT) in your VPC.
    #
    #   * `status` - The status of the network interface. If the network
    #     interface is not attached to an instance, the status is `available`;
    #     if a network interface is attached to an instance the status is
    #     `in-use`.
    #
    #   * `subnet-id` - The ID of the subnet for the network interface.
    #
    #   * `tag`\:&lt;key&gt; - The key/value combination of a tag assigned to
    #     the resource. Use the tag key in the filter name and the tag value
    #     as the filter value. For example, to find all resources that have a
    #     tag with the key `Owner` and the value `TeamA`, specify `tag:Owner`
    #     for the filter name and `TeamA` for the filter value.
    #
    #   * `tag-key` - The key of a tag assigned to the resource. Use this
    #     filter to find all resources assigned a tag with a specific key,
    #     regardless of the tag value.
    #
    #   * `vpc-id` - The ID of the VPC for the network interface.
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @option options [Array<String>] :network_interface_ids
    #   One or more network interface IDs.
    #
    #   Default: Describes all your network interfaces.
    # @return [NetworkInterface::Collection]
    def network_interfaces(options = {})
      batches = Enumerator.new do |y|
        resp = @client.describe_network_interfaces(options)
        resp.each_page do |page|
          batch = []
          page.data.network_interfaces.each do |n|
            batch << NetworkInterface.new(
              id: n.network_interface_id,
              data: n,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      NetworkInterface::Collection.new(batches)
    end

    # @param [String] name
    # @return [PlacementGroup]
    def placement_group(name)
      PlacementGroup.new(
        name: name,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   placement_groups = ec2.placement_groups({
    #     filters: [
    #       {
    #         name: "String",
    #         values: ["String"],
    #       },
    #     ],
    #     dry_run: false,
    #     group_names: ["PlacementGroupName"],
    #     group_ids: ["PlacementGroupId"],
    #   })
    # @param [Hash] options ({})
    # @option options [Array<Types::Filter>] :filters
    #   The filters.
    #
    #   * `group-name` - The name of the placement group.
    #
    #   * `group-arn` - The Amazon Resource Name (ARN) of the placement group.
    #
    #   * `state` - The state of the placement group (`pending` \| `available`
    #     \| `deleting` \| `deleted`).
    #
    #   * `strategy` - The strategy of the placement group (`cluster` \|
    #     `spread` \| `partition`).
    #
    #   * `tag:<key>` - The key/value combination of a tag assigned to the
    #     resource. Use the tag key in the filter name and the tag value as
    #     the filter value. For example, to find all resources that have a tag
    #     with the key `Owner` and the value `TeamA`, specify `tag:Owner` for
    #     the filter name and `TeamA` for the filter value.
    #
    #   * `tag-key` - The key of a tag assigned to the resource. Use this
    #     filter to find all resources that have a tag with a specific key,
    #     regardless of the tag value.
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @option options [Array<String>] :group_names
    #   The names of the placement groups.
    #
    #   Default: Describes all your placement groups, or only those otherwise
    #   specified.
    # @option options [Array<String>] :group_ids
    #   The IDs of the placement groups.
    # @return [PlacementGroup::Collection]
    def placement_groups(options = {})
      batches = Enumerator.new do |y|
        batch = []
        resp = @client.describe_placement_groups(options)
        resp.data.placement_groups.each do |p|
          batch << PlacementGroup.new(
            name: p.group_name,
            data: p,
            client: @client
          )
        end
        y.yield(batch)
      end
      PlacementGroup::Collection.new(batches)
    end

    # @param [String] id
    # @return [RouteTable]
    def route_table(id)
      RouteTable.new(
        id: id,
        client: @client
      )
    end

    # @param [String] id
    # @return [RouteTableAssociation]
    def route_table_association(id)
      RouteTableAssociation.new(
        id: id,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   route_tables = ec2.route_tables({
    #     filters: [
    #       {
    #         name: "String",
    #         values: ["String"],
    #       },
    #     ],
    #     dry_run: false,
    #     route_table_ids: ["RouteTableId"],
    #   })
    # @param [Hash] options ({})
    # @option options [Array<Types::Filter>] :filters
    #   One or more filters.
    #
    #   * `association.route-table-association-id` - The ID of an association
    #     ID for the route table.
    #
    #   * `association.route-table-id` - The ID of the route table involved in
    #     the association.
    #
    #   * `association.subnet-id` - The ID of the subnet involved in the
    #     association.
    #
    #   * `association.main` - Indicates whether the route table is the main
    #     route table for the VPC (`true` \| `false`). Route tables that do
    #     not have an association ID are not returned in the response.
    #
    #   * `owner-id` - The ID of the Amazon Web Services account that owns the
    #     route table.
    #
    #   * `route-table-id` - The ID of the route table.
    #
    #   * `route.destination-cidr-block` - The IPv4 CIDR range specified in a
    #     route in the table.
    #
    #   * `route.destination-ipv6-cidr-block` - The IPv6 CIDR range specified
    #     in a route in the route table.
    #
    #   * `route.destination-prefix-list-id` - The ID (prefix) of the Amazon
    #     Web Service specified in a route in the table.
    #
    #   * `route.egress-only-internet-gateway-id` - The ID of an egress-only
    #     Internet gateway specified in a route in the route table.
    #
    #   * `route.gateway-id` - The ID of a gateway specified in a route in the
    #     table.
    #
    #   * `route.instance-id` - The ID of an instance specified in a route in
    #     the table.
    #
    #   * `route.nat-gateway-id` - The ID of a NAT gateway.
    #
    #   * `route.transit-gateway-id` - The ID of a transit gateway.
    #
    #   * `route.origin` - Describes how the route was created.
    #     `CreateRouteTable` indicates that the route was automatically
    #     created when the route table was created; `CreateRoute` indicates
    #     that the route was manually added to the route table;
    #     `EnableVgwRoutePropagation` indicates that the route was propagated
    #     by route propagation.
    #
    #   * `route.state` - The state of a route in the route table (`active` \|
    #     `blackhole`). The blackhole state indicates that the route's target
    #     isn't available (for example, the specified gateway isn't attached
    #     to the VPC, the specified NAT instance has been terminated, and so
    #     on).
    #
    #   * `route.vpc-peering-connection-id` - The ID of a VPC peering
    #     connection specified in a route in the table.
    #
    #   * `tag`\:&lt;key&gt; - The key/value combination of a tag assigned to
    #     the resource. Use the tag key in the filter name and the tag value
    #     as the filter value. For example, to find all resources that have a
    #     tag with the key `Owner` and the value `TeamA`, specify `tag:Owner`
    #     for the filter name and `TeamA` for the filter value.
    #
    #   * `tag-key` - The key of a tag assigned to the resource. Use this
    #     filter to find all resources assigned a tag with a specific key,
    #     regardless of the tag value.
    #
    #   * `vpc-id` - The ID of the VPC for the route table.
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @option options [Array<String>] :route_table_ids
    #   One or more route table IDs.
    #
    #   Default: Describes all your route tables.
    # @return [RouteTable::Collection]
    def route_tables(options = {})
      batches = Enumerator.new do |y|
        resp = @client.describe_route_tables(options)
        resp.each_page do |page|
          batch = []
          page.data.route_tables.each do |r|
            batch << RouteTable.new(
              id: r.route_table_id,
              data: r,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      RouteTable::Collection.new(batches)
    end

    # @param [String] id
    # @return [SecurityGroup]
    def security_group(id)
      SecurityGroup.new(
        id: id,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   security_groups = ec2.security_groups({
    #     filters: [
    #       {
    #         name: "String",
    #         values: ["String"],
    #       },
    #     ],
    #     group_ids: ["SecurityGroupId"],
    #     group_names: ["SecurityGroupName"],
    #     dry_run: false,
    #   })
    # @param [Hash] options ({})
    # @option options [Array<Types::Filter>] :filters
    #   The filters. If using multiple filters for rules, the results include
    #   security groups for which any combination of rules - not necessarily a
    #   single rule - match all filters.
    #
    #   * `description` - The description of the security group.
    #
    #   * `egress.ip-permission.cidr` - An IPv4 CIDR block for an outbound
    #     security group rule.
    #
    #   * `egress.ip-permission.from-port` - For an outbound rule, the start
    #     of port range for the TCP and UDP protocols, or an ICMP type number.
    #
    #   * `egress.ip-permission.group-id` - The ID of a security group that
    #     has been referenced in an outbound security group rule.
    #
    #   * `egress.ip-permission.group-name` - The name of a security group
    #     that is referenced in an outbound security group rule.
    #
    #   * `egress.ip-permission.ipv6-cidr` - An IPv6 CIDR block for an
    #     outbound security group rule.
    #
    #   * `egress.ip-permission.prefix-list-id` - The ID of a prefix list to
    #     which a security group rule allows outbound access.
    #
    #   * `egress.ip-permission.protocol` - The IP protocol for an outbound
    #     security group rule (`tcp` \| `udp` \| `icmp`, a protocol number, or
    #     -1 for all protocols).
    #
    #   * `egress.ip-permission.to-port` - For an outbound rule, the end of
    #     port range for the TCP and UDP protocols, or an ICMP code.
    #
    #   * `egress.ip-permission.user-id` - The ID of an Amazon Web Services
    #     account that has been referenced in an outbound security group rule.
    #
    #   * `group-id` - The ID of the security group.
    #
    #   * `group-name` - The name of the security group.
    #
    #   * `ip-permission.cidr` - An IPv4 CIDR block for an inbound security
    #     group rule.
    #
    #   * `ip-permission.from-port` - For an inbound rule, the start of port
    #     range for the TCP and UDP protocols, or an ICMP type number.
    #
    #   * `ip-permission.group-id` - The ID of a security group that has been
    #     referenced in an inbound security group rule.
    #
    #   * `ip-permission.group-name` - The name of a security group that is
    #     referenced in an inbound security group rule.
    #
    #   * `ip-permission.ipv6-cidr` - An IPv6 CIDR block for an inbound
    #     security group rule.
    #
    #   * `ip-permission.prefix-list-id` - The ID of a prefix list from which
    #     a security group rule allows inbound access.
    #
    #   * `ip-permission.protocol` - The IP protocol for an inbound security
    #     group rule (`tcp` \| `udp` \| `icmp`, a protocol number, or -1 for
    #     all protocols).
    #
    #   * `ip-permission.to-port` - For an inbound rule, the end of port range
    #     for the TCP and UDP protocols, or an ICMP code.
    #
    #   * `ip-permission.user-id` - The ID of an Amazon Web Services account
    #     that has been referenced in an inbound security group rule.
    #
    #   * `owner-id` - The Amazon Web Services account ID of the owner of the
    #     security group.
    #
    #   * `tag`\:&lt;key&gt; - The key/value combination of a tag assigned to
    #     the resource. Use the tag key in the filter name and the tag value
    #     as the filter value. For example, to find all resources that have a
    #     tag with the key `Owner` and the value `TeamA`, specify `tag:Owner`
    #     for the filter name and `TeamA` for the filter value.
    #
    #   * `tag-key` - The key of a tag assigned to the resource. Use this
    #     filter to find all resources assigned a tag with a specific key,
    #     regardless of the tag value.
    #
    #   * `vpc-id` - The ID of the VPC specified when the security group was
    #     created.
    # @option options [Array<String>] :group_ids
    #   The IDs of the security groups. Required for security groups in a
    #   nondefault VPC.
    #
    #   Default: Describes all of your security groups.
    # @option options [Array<String>] :group_names
    #   \[EC2-Classic and default VPC only\] The names of the security groups.
    #   You can specify either the security group name or the security group
    #   ID. For security groups in a nondefault VPC, use the `group-name`
    #   filter to describe security groups by name.
    #
    #   Default: Describes all of your security groups.
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @return [SecurityGroup::Collection]
    def security_groups(options = {})
      batches = Enumerator.new do |y|
        resp = @client.describe_security_groups(options)
        resp.each_page do |page|
          batch = []
          page.data.security_groups.each do |s|
            batch << SecurityGroup.new(
              id: s.group_id,
              data: s,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      SecurityGroup::Collection.new(batches)
    end

    # @param [String] id
    # @return [Snapshot]
    def snapshot(id)
      Snapshot.new(
        id: id,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   snapshots = ec2.snapshots({
    #     filters: [
    #       {
    #         name: "String",
    #         values: ["String"],
    #       },
    #     ],
    #     owner_ids: ["String"],
    #     restorable_by_user_ids: ["String"],
    #     snapshot_ids: ["SnapshotId"],
    #     dry_run: false,
    #   })
    # @param [Hash] options ({})
    # @option options [Array<Types::Filter>] :filters
    #   The filters.
    #
    #   * `description` - A description of the snapshot.
    #
    #   * `encrypted` - Indicates whether the snapshot is encrypted (`true` \|
    #     `false`)
    #
    #   * `owner-alias` - The owner alias, from an Amazon-maintained list
    #     (`amazon`). This is not the user-configured Amazon Web Services
    #     account alias set using the IAM console. We recommend that you use
    #     the related parameter instead of this filter.
    #
    #   * `owner-id` - The Amazon Web Services account ID of the owner. We
    #     recommend that you use the related parameter instead of this filter.
    #
    #   * `progress` - The progress of the snapshot, as a percentage (for
    #     example, 80%).
    #
    #   * `snapshot-id` - The snapshot ID.
    #
    #   * `start-time` - The time stamp when the snapshot was initiated.
    #
    #   * `status` - The status of the snapshot (`pending` \| `completed` \|
    #     `error`).
    #
    #   * `storage-tier` - The storage tier of the snapshot (`archive` \|
    #     `standard`).
    #
    #   * `tag`\:&lt;key&gt; - The key/value combination of a tag assigned to
    #     the resource. Use the tag key in the filter name and the tag value
    #     as the filter value. For example, to find all resources that have a
    #     tag with the key `Owner` and the value `TeamA`, specify `tag:Owner`
    #     for the filter name and `TeamA` for the filter value.
    #
    #   * `tag-key` - The key of a tag assigned to the resource. Use this
    #     filter to find all resources assigned a tag with a specific key,
    #     regardless of the tag value.
    #
    #   * `volume-id` - The ID of the volume the snapshot is for.
    #
    #   * `volume-size` - The size of the volume, in GiB.
    # @option options [Array<String>] :owner_ids
    #   Scopes the results to snapshots with the specified owners. You can
    #   specify a combination of Amazon Web Services account IDs, `self`, and
    #   `amazon`.
    # @option options [Array<String>] :restorable_by_user_ids
    #   The IDs of the Amazon Web Services accounts that can create volumes
    #   from the snapshot.
    # @option options [Array<String>] :snapshot_ids
    #   The snapshot IDs.
    #
    #   Default: Describes the snapshots for which you have create volume
    #   permissions.
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @return [Snapshot::Collection]
    def snapshots(options = {})
      batches = Enumerator.new do |y|
        resp = @client.describe_snapshots(options)
        resp.each_page do |page|
          batch = []
          page.data.snapshots.each do |s|
            batch << Snapshot.new(
              id: s.snapshot_id,
              data: s,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      Snapshot::Collection.new(batches)
    end

    # @param [String] id
    # @return [Subnet]
    def subnet(id)
      Subnet.new(
        id: id,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   subnets = ec2.subnets({
    #     filters: [
    #       {
    #         name: "String",
    #         values: ["String"],
    #       },
    #     ],
    #     subnet_ids: ["SubnetId"],
    #     dry_run: false,
    #   })
    # @param [Hash] options ({})
    # @option options [Array<Types::Filter>] :filters
    #   One or more filters.
    #
    #   * `availability-zone` - The Availability Zone for the subnet. You can
    #     also use `availabilityZone` as the filter name.
    #
    #   * `availability-zone-id` - The ID of the Availability Zone for the
    #     subnet. You can also use `availabilityZoneId` as the filter name.
    #
    #   * `available-ip-address-count` - The number of IPv4 addresses in the
    #     subnet that are available.
    #
    #   * `cidr-block` - The IPv4 CIDR block of the subnet. The CIDR block you
    #     specify must exactly match the subnet's CIDR block for information
    #     to be returned for the subnet. You can also use `cidr` or
    #     `cidrBlock` as the filter names.
    #
    #   * `default-for-az` - Indicates whether this is the default subnet for
    #     the Availability Zone (`true` \| `false`). You can also use
    #     `defaultForAz` as the filter name.
    #
    #   * `ipv6-cidr-block-association.ipv6-cidr-block` - An IPv6 CIDR block
    #     associated with the subnet.
    #
    #   * `ipv6-cidr-block-association.association-id` - An association ID for
    #     an IPv6 CIDR block associated with the subnet.
    #
    #   * `ipv6-cidr-block-association.state` - The state of an IPv6 CIDR
    #     block associated with the subnet.
    #
    #   * `ipv6-native` - Indicates whether this is an IPv6 only subnet
    #     (`true` \| `false`).
    #
    #   * `outpost-arn` - The Amazon Resource Name (ARN) of the Outpost.
    #
    #   * `owner-id` - The ID of the Amazon Web Services account that owns the
    #     subnet.
    #
    #   * `state` - The state of the subnet (`pending` \| `available`).
    #
    #   * `subnet-arn` - The Amazon Resource Name (ARN) of the subnet.
    #
    #   * `subnet-id` - The ID of the subnet.
    #
    #   * `tag`\:&lt;key&gt; - The key/value combination of a tag assigned to
    #     the resource. Use the tag key in the filter name and the tag value
    #     as the filter value. For example, to find all resources that have a
    #     tag with the key `Owner` and the value `TeamA`, specify `tag:Owner`
    #     for the filter name and `TeamA` for the filter value.
    #
    #   * `tag-key` - The key of a tag assigned to the resource. Use this
    #     filter to find all resources assigned a tag with a specific key,
    #     regardless of the tag value.
    #
    #   * `vpc-id` - The ID of the VPC for the subnet.
    # @option options [Array<String>] :subnet_ids
    #   One or more subnet IDs.
    #
    #   Default: Describes all your subnets.
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @return [Subnet::Collection]
    def subnets(options = {})
      batches = Enumerator.new do |y|
        resp = @client.describe_subnets(options)
        resp.each_page do |page|
          batch = []
          page.data.subnets.each do |s|
            batch << Subnet.new(
              id: s.subnet_id,
              data: s,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      Subnet::Collection.new(batches)
    end

    # @param [String] id
    # @return [Volume]
    def volume(id)
      Volume.new(
        id: id,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   volumes = ec2.volumes({
    #     filters: [
    #       {
    #         name: "String",
    #         values: ["String"],
    #       },
    #     ],
    #     volume_ids: ["VolumeId"],
    #     dry_run: false,
    #   })
    # @param [Hash] options ({})
    # @option options [Array<Types::Filter>] :filters
    #   The filters.
    #
    #   * `attachment.attach-time` - The time stamp when the attachment
    #     initiated.
    #
    #   * `attachment.delete-on-termination` - Whether the volume is deleted
    #     on instance termination.
    #
    #   * `attachment.device` - The device name specified in the block device
    #     mapping (for example, `/dev/sda1`).
    #
    #   * `attachment.instance-id` - The ID of the instance the volume is
    #     attached to.
    #
    #   * `attachment.status` - The attachment state (`attaching` \|
    #     `attached` \| `detaching`).
    #
    #   * `availability-zone` - The Availability Zone in which the volume was
    #     created.
    #
    #   * `create-time` - The time stamp when the volume was created.
    #
    #   * `encrypted` - Indicates whether the volume is encrypted (`true` \|
    #     `false`)
    #
    #   * `multi-attach-enabled` - Indicates whether the volume is enabled for
    #     Multi-Attach (`true` \| `false`)
    #
    #   * `fast-restored` - Indicates whether the volume was created from a
    #     snapshot that is enabled for fast snapshot restore (`true` \|
    #     `false`).
    #
    #   * `size` - The size of the volume, in GiB.
    #
    #   * `snapshot-id` - The snapshot from which the volume was created.
    #
    #   * `status` - The state of the volume (`creating` \| `available` \|
    #     `in-use` \| `deleting` \| `deleted` \| `error`).
    #
    #   * `tag`\:&lt;key&gt; - The key/value combination of a tag assigned to
    #     the resource. Use the tag key in the filter name and the tag value
    #     as the filter value. For example, to find all resources that have a
    #     tag with the key `Owner` and the value `TeamA`, specify `tag:Owner`
    #     for the filter name and `TeamA` for the filter value.
    #
    #   * `tag-key` - The key of a tag assigned to the resource. Use this
    #     filter to find all resources assigned a tag with a specific key,
    #     regardless of the tag value.
    #
    #   * `volume-id` - The volume ID.
    #
    #   * `volume-type` - The Amazon EBS volume type (`gp2` \| `gp3` \| `io1`
    #     \| `io2` \| `st1` \| `sc1`\| `standard`)
    # @option options [Array<String>] :volume_ids
    #   The volume IDs.
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @return [Volume::Collection]
    def volumes(options = {})
      batches = Enumerator.new do |y|
        resp = @client.describe_volumes(options)
        resp.each_page do |page|
          batch = []
          page.data.volumes.each do |v|
            batch << Volume.new(
              id: v.volume_id,
              data: v,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      Volume::Collection.new(batches)
    end

    # @param [String] id
    # @return [Vpc]
    def vpc(id)
      Vpc.new(
        id: id,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   vpc_addresses = ec2.vpc_addresses({
    #     filters: [
    #       {
    #         name: "String",
    #         values: ["String"],
    #       },
    #     ],
    #     public_ips: ["String"],
    #     allocation_ids: ["AllocationId"],
    #     dry_run: false,
    #   })
    # @param [Hash] options ({})
    # @option options [Array<Types::Filter>] :filters
    #   One or more filters. Filter names and values are case-sensitive.
    #
    #   * `allocation-id` - \[EC2-VPC\] The allocation ID for the address.
    #
    #   * `association-id` - \[EC2-VPC\] The association ID for the address.
    #
    #   * `domain` - Indicates whether the address is for use in EC2-Classic
    #     (`standard`) or in a VPC (`vpc`).
    #
    #   * `instance-id` - The ID of the instance the address is associated
    #     with, if any.
    #
    #   * `network-border-group` - A unique set of Availability Zones, Local
    #     Zones, or Wavelength Zones from where Amazon Web Services advertises
    #     IP addresses.
    #
    #   * `network-interface-id` - \[EC2-VPC\] The ID of the network interface
    #     that the address is associated with, if any.
    #
    #   * `network-interface-owner-id` - The Amazon Web Services account ID of
    #     the owner.
    #
    #   * `private-ip-address` - \[EC2-VPC\] The private IP address associated
    #     with the Elastic IP address.
    #
    #   * `public-ip` - The Elastic IP address, or the carrier IP address.
    #
    #   * `tag`\:&lt;key&gt; - The key/value combination of a tag assigned to
    #     the resource. Use the tag key in the filter name and the tag value
    #     as the filter value. For example, to find all resources that have a
    #     tag with the key `Owner` and the value `TeamA`, specify `tag:Owner`
    #     for the filter name and `TeamA` for the filter value.
    #
    #   * `tag-key` - The key of a tag assigned to the resource. Use this
    #     filter to find all resources assigned a tag with a specific key,
    #     regardless of the tag value.
    # @option options [Array<String>] :public_ips
    #   One or more Elastic IP addresses.
    #
    #   Default: Describes all your Elastic IP addresses.
    # @option options [Array<String>] :allocation_ids
    #   \[EC2-VPC\] Information about the allocation IDs.
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @return [VpcAddress::Collection]
    def vpc_addresses(options = {})
      batches = Enumerator.new do |y|
        batch = []
        options = Aws::Util.deep_merge(options, filters: [{
          name: "domain",
          values: ["vpc"]
        }])
        resp = @client.describe_addresses(options)
        resp.data.addresses.each do |a|
          batch << VpcAddress.new(
            allocation_id: a.allocation_id,
            data: a,
            client: @client
          )
        end
        y.yield(batch)
      end
      VpcAddress::Collection.new(batches)
    end

    # @param [String] id
    # @return [VpcPeeringConnection]
    def vpc_peering_connection(id)
      VpcPeeringConnection.new(
        id: id,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   vpc_peering_connections = ec2.vpc_peering_connections({
    #     filters: [
    #       {
    #         name: "String",
    #         values: ["String"],
    #       },
    #     ],
    #     dry_run: false,
    #     vpc_peering_connection_ids: ["VpcPeeringConnectionId"],
    #   })
    # @param [Hash] options ({})
    # @option options [Array<Types::Filter>] :filters
    #   One or more filters.
    #
    #   * `accepter-vpc-info.cidr-block` - The IPv4 CIDR block of the accepter
    #     VPC.
    #
    #   * `accepter-vpc-info.owner-id` - The ID of the Amazon Web Services
    #     account that owns the accepter VPC.
    #
    #   * `accepter-vpc-info.vpc-id` - The ID of the accepter VPC.
    #
    #   * `expiration-time` - The expiration date and time for the VPC peering
    #     connection.
    #
    #   * `requester-vpc-info.cidr-block` - The IPv4 CIDR block of the
    #     requester's VPC.
    #
    #   * `requester-vpc-info.owner-id` - The ID of the Amazon Web Services
    #     account that owns the requester VPC.
    #
    #   * `requester-vpc-info.vpc-id` - The ID of the requester VPC.
    #
    #   * `status-code` - The status of the VPC peering connection
    #     (`pending-acceptance` \| `failed` \| `expired` \| `provisioning` \|
    #     `active` \| `deleting` \| `deleted` \| `rejected`).
    #
    #   * `status-message` - A message that provides more information about
    #     the status of the VPC peering connection, if applicable.
    #
    #   * `tag`\:&lt;key&gt; - The key/value combination of a tag assigned to
    #     the resource. Use the tag key in the filter name and the tag value
    #     as the filter value. For example, to find all resources that have a
    #     tag with the key `Owner` and the value `TeamA`, specify `tag:Owner`
    #     for the filter name and `TeamA` for the filter value.
    #
    #   * `tag-key` - The key of a tag assigned to the resource. Use this
    #     filter to find all resources assigned a tag with a specific key,
    #     regardless of the tag value.
    #
    #   * `vpc-peering-connection-id` - The ID of the VPC peering connection.
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @option options [Array<String>] :vpc_peering_connection_ids
    #   One or more VPC peering connection IDs.
    #
    #   Default: Describes all your VPC peering connections.
    # @return [VpcPeeringConnection::Collection]
    def vpc_peering_connections(options = {})
      batches = Enumerator.new do |y|
        resp = @client.describe_vpc_peering_connections(options)
        resp.each_page do |page|
          batch = []
          page.data.vpc_peering_connections.each do |v|
            batch << VpcPeeringConnection.new(
              id: v.vpc_peering_connection_id,
              data: v,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      VpcPeeringConnection::Collection.new(batches)
    end

    # @example Request syntax with placeholder values
    #
    #   vpcs = ec2.vpcs({
    #     filters: [
    #       {
    #         name: "String",
    #         values: ["String"],
    #       },
    #     ],
    #     vpc_ids: ["VpcId"],
    #     dry_run: false,
    #   })
    # @param [Hash] options ({})
    # @option options [Array<Types::Filter>] :filters
    #   One or more filters.
    #
    #   * `cidr` - The primary IPv4 CIDR block of the VPC. The CIDR block you
    #     specify must exactly match the VPC's CIDR block for information to
    #     be returned for the VPC. Must contain the slash followed by one or
    #     two digits (for example, `/28`).
    #
    #   * `cidr-block-association.cidr-block` - An IPv4 CIDR block associated
    #     with the VPC.
    #
    #   * `cidr-block-association.association-id` - The association ID for an
    #     IPv4 CIDR block associated with the VPC.
    #
    #   * `cidr-block-association.state` - The state of an IPv4 CIDR block
    #     associated with the VPC.
    #
    #   * `dhcp-options-id` - The ID of a set of DHCP options.
    #
    #   * `ipv6-cidr-block-association.ipv6-cidr-block` - An IPv6 CIDR block
    #     associated with the VPC.
    #
    #   * `ipv6-cidr-block-association.ipv6-pool` - The ID of the IPv6 address
    #     pool from which the IPv6 CIDR block is allocated.
    #
    #   * `ipv6-cidr-block-association.association-id` - The association ID
    #     for an IPv6 CIDR block associated with the VPC.
    #
    #   * `ipv6-cidr-block-association.state` - The state of an IPv6 CIDR
    #     block associated with the VPC.
    #
    #   * `is-default` - Indicates whether the VPC is the default VPC.
    #
    #   * `owner-id` - The ID of the Amazon Web Services account that owns the
    #     VPC.
    #
    #   * `state` - The state of the VPC (`pending` \| `available`).
    #
    #   * `tag`\:&lt;key&gt; - The key/value combination of a tag assigned to
    #     the resource. Use the tag key in the filter name and the tag value
    #     as the filter value. For example, to find all resources that have a
    #     tag with the key `Owner` and the value `TeamA`, specify `tag:Owner`
    #     for the filter name and `TeamA` for the filter value.
    #
    #   * `tag-key` - The key of a tag assigned to the resource. Use this
    #     filter to find all resources assigned a tag with a specific key,
    #     regardless of the tag value.
    #
    #   * `vpc-id` - The ID of the VPC.
    # @option options [Array<String>] :vpc_ids
    #   One or more VPC IDs.
    #
    #   Default: Describes all your VPCs.
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @return [Vpc::Collection]
    def vpcs(options = {})
      batches = Enumerator.new do |y|
        resp = @client.describe_vpcs(options)
        resp.each_page do |page|
          batch = []
          page.data.vpcs.each do |v|
            batch << Vpc.new(
              id: v.vpc_id,
              data: v,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      Vpc::Collection.new(batches)
    end

  end
end
