# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::EC2
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
    #     dry_run: false,
    #   })
    # @param [Hash] options ({})
    # @option options [required, Array<Types::NewDhcpConfiguration>] :dhcp_configurations
    #   A DHCP configuration option.
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
    #           snapshot_id: "String",
    #           volume_size: 1,
    #           volume_type: "standard", # accepts standard, io1, gp2, sc1, st1
    #           encrypted: false,
    #           kms_key_id: "String",
    #         },
    #         no_device: "String",
    #       },
    #     ],
    #     image_id: "String",
    #     instance_type: "t1.micro", # accepts t1.micro, t2.nano, t2.micro, t2.small, t2.medium, t2.large, t2.xlarge, t2.2xlarge, t3.nano, t3.micro, t3.small, t3.medium, t3.large, t3.xlarge, t3.2xlarge, m1.small, m1.medium, m1.large, m1.xlarge, m3.medium, m3.large, m3.xlarge, m3.2xlarge, m4.large, m4.xlarge, m4.2xlarge, m4.4xlarge, m4.10xlarge, m4.16xlarge, m2.xlarge, m2.2xlarge, m2.4xlarge, cr1.8xlarge, r3.large, r3.xlarge, r3.2xlarge, r3.4xlarge, r3.8xlarge, r4.large, r4.xlarge, r4.2xlarge, r4.4xlarge, r4.8xlarge, r4.16xlarge, r5.large, r5.xlarge, r5.2xlarge, r5.4xlarge, r5.8xlarge, r5.12xlarge, r5.16xlarge, r5.24xlarge, r5.metal, r5d.large, r5d.xlarge, r5d.2xlarge, r5d.4xlarge, r5d.8xlarge, r5d.12xlarge, r5d.16xlarge, r5d.24xlarge, r5d.metal, x1.16xlarge, x1.32xlarge, x1e.xlarge, x1e.2xlarge, x1e.4xlarge, x1e.8xlarge, x1e.16xlarge, x1e.32xlarge, i2.xlarge, i2.2xlarge, i2.4xlarge, i2.8xlarge, i3.large, i3.xlarge, i3.2xlarge, i3.4xlarge, i3.8xlarge, i3.16xlarge, i3.metal, hi1.4xlarge, hs1.8xlarge, c1.medium, c1.xlarge, c3.large, c3.xlarge, c3.2xlarge, c3.4xlarge, c3.8xlarge, c4.large, c4.xlarge, c4.2xlarge, c4.4xlarge, c4.8xlarge, c5.large, c5.xlarge, c5.2xlarge, c5.4xlarge, c5.9xlarge, c5.18xlarge, c5d.large, c5d.xlarge, c5d.2xlarge, c5d.4xlarge, c5d.9xlarge, c5d.18xlarge, cc1.4xlarge, cc2.8xlarge, g2.2xlarge, g2.8xlarge, g3.4xlarge, g3.8xlarge, g3.16xlarge, cg1.4xlarge, p2.xlarge, p2.8xlarge, p2.16xlarge, p3.2xlarge, p3.8xlarge, p3.16xlarge, d2.xlarge, d2.2xlarge, d2.4xlarge, d2.8xlarge, f1.2xlarge, f1.4xlarge, f1.16xlarge, m5.large, m5.xlarge, m5.2xlarge, m5.4xlarge, m5.12xlarge, m5.24xlarge, m5d.large, m5d.xlarge, m5d.2xlarge, m5d.4xlarge, m5d.12xlarge, m5d.24xlarge, h1.2xlarge, h1.4xlarge, h1.8xlarge, h1.16xlarge, z1d.large, z1d.xlarge, z1d.2xlarge, z1d.3xlarge, z1d.6xlarge, z1d.12xlarge
    #     ipv_6_address_count: 1,
    #     ipv_6_addresses: [
    #       {
    #         ipv_6_address: "String",
    #       },
    #     ],
    #     kernel_id: "String",
    #     key_name: "String",
    #     max_count: 1, # required
    #     min_count: 1, # required
    #     monitoring: {
    #       enabled: false, # required
    #     },
    #     placement: {
    #       availability_zone: "String",
    #       affinity: "String",
    #       group_name: "String",
    #       host_id: "String",
    #       tenancy: "default", # accepts default, dedicated, host
    #       spread_domain: "String",
    #     },
    #     ramdisk_id: "String",
    #     security_group_ids: ["String"],
    #     security_groups: ["String"],
    #     subnet_id: "String",
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
    #         groups: ["String"],
    #         ipv_6_address_count: 1,
    #         ipv_6_addresses: [
    #           {
    #             ipv_6_address: "String",
    #           },
    #         ],
    #         network_interface_id: "String",
    #         private_ip_address: "String",
    #         private_ip_addresses: [
    #           {
    #             primary: false,
    #             private_ip_address: "String",
    #           },
    #         ],
    #         secondary_private_ip_address_count: 1,
    #         subnet_id: "String",
    #       },
    #     ],
    #     private_ip_address: "String",
    #     elastic_gpu_specification: [
    #       {
    #         type: "String", # required
    #       },
    #     ],
    #     tag_specifications: [
    #       {
    #         resource_type: "customer-gateway", # accepts customer-gateway, dedicated-host, dhcp-options, image, instance, internet-gateway, network-acl, network-interface, reserved-instances, route-table, snapshot, spot-instances-request, subnet, security-group, volume, vpc, vpn-connection, vpn-gateway
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String",
    #           },
    #         ],
    #       },
    #     ],
    #     launch_template: {
    #       launch_template_id: "String",
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
    #   })
    # @param [Hash] options ({})
    # @option options [Array<Types::BlockDeviceMapping>] :block_device_mappings
    #   One or more block device mapping entries. You can't specify both a
    #   snapshot ID and an encryption value. This is because only blank
    #   volumes can be encrypted on creation. If a snapshot is the basis for a
    #   volume, it is not blank and its encryption status is used for the
    #   volume encryption status.
    # @option options [String] :image_id
    #   The ID of the AMI, which you can get by calling DescribeImages. An AMI
    #   is required to launch an instance and must be specified here or in a
    #   launch template.
    # @option options [String] :instance_type
    #   The instance type. For more information, see [Instance Types][1] in
    #   the *Amazon Elastic Compute Cloud User Guide*.
    #
    #   Default: `m1.small`
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html
    # @option options [Integer] :ipv_6_address_count
    #   \[EC2-VPC\] A number of IPv6 addresses to associate with the primary
    #   network interface. Amazon EC2 chooses the IPv6 addresses from the
    #   range of your subnet. You cannot specify this option and the option to
    #   assign specific IPv6 addresses in the same request. You can specify
    #   this option if you've specified a minimum number of instances to
    #   launch.
    # @option options [Array<Types::InstanceIpv6Address>] :ipv_6_addresses
    #   \[EC2-VPC\] Specify one or more IPv6 addresses from the range of the
    #   subnet to associate with the primary network interface. You cannot
    #   specify this option and the option to assign a number of IPv6
    #   addresses in the same request. You cannot specify this option if
    #   you've specified a minimum number of instances to launch.
    # @option options [String] :kernel_id
    #   The ID of the kernel.
    #
    #   We recommend that you use PV-GRUB instead of kernels and RAM disks.
    #   For more information, see [ PV-GRUB][1] in the *Amazon Elastic Compute
    #   Cloud User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedkernels.html
    # @option options [String] :key_name
    #   The name of the key pair. You can create a key pair using
    #   CreateKeyPair or ImportKeyPair.
    #
    #   If you do not specify a key pair, you can't connect to the instance
    #   unless you choose an AMI that is configured to allow users another way
    #   to log in.
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
    #   The monitoring for the instance.
    # @option options [Types::Placement] :placement
    #   The placement for the instance.
    # @option options [String] :ramdisk_id
    #   The ID of the RAM disk.
    #
    #   We recommend that you use PV-GRUB instead of kernels and RAM disks.
    #   For more information, see [ PV-GRUB][1] in the *Amazon Elastic Compute
    #   Cloud User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedkernels.html
    # @option options [Array<String>] :security_group_ids
    #   One or more security group IDs. You can create a security group using
    #   CreateSecurityGroup.
    #
    #   Default: Amazon EC2 uses the default security group.
    # @option options [Array<String>] :security_groups
    #   \[EC2-Classic, default VPC\] One or more security group names. For a
    #   nondefault VPC, you must use security group IDs instead.
    #
    #   Default: Amazon EC2 uses the default security group.
    # @option options [String] :subnet_id
    #   \[EC2-VPC\] The ID of the subnet to launch the instance into.
    # @option options [String] :user_data
    #   The user data to make available to the instance. For more information,
    #   see [Running Commands on Your Linux Instance at Launch][1] (Linux) and
    #   [Adding User Data][2] (Windows). If you are using a command line tool,
    #   base64-encoding is performed for you, and you can load the text from a
    #   file. Otherwise, you must provide base64-encoded text.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/user-data.html
    #   [2]: http://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ec2-instance-metadata.html#instancedata-add-user-data
    # @option options [String] :additional_info
    #   Reserved.
    # @option options [String] :client_token
    #   Unique, case-sensitive identifier you provide to ensure the
    #   idempotency of the request. For more information, see [Ensuring
    #   Idempotency][1].
    #
    #   Constraints: Maximum 64 ASCII characters
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    # @option options [Boolean] :disable_api_termination
    #   If you set this parameter to `true`, you can't terminate the instance
    #   using the Amazon EC2 console, CLI, or API; otherwise, you can. To
    #   change this attribute to `false` after launch, use
    #   ModifyInstanceAttribute. Alternatively, if you set
    #   `InstanceInitiatedShutdownBehavior` to `terminate`, you can terminate
    #   the instance by running the shutdown command from the instance.
    #
    #   Default: `false`
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
    #   The IAM instance profile.
    # @option options [String] :instance_initiated_shutdown_behavior
    #   Indicates whether an instance stops or terminates when you initiate
    #   shutdown from the instance (using the operating system command for
    #   system shutdown).
    #
    #   Default: `stop`
    # @option options [Array<Types::InstanceNetworkInterfaceSpecification>] :network_interfaces
    #   One or more network interfaces.
    # @option options [String] :private_ip_address
    #   \[EC2-VPC\] The primary IPv4 address. You must specify a value from
    #   the IPv4 address range of the subnet.
    #
    #   Only one private IP address can be designated as primary. You can't
    #   specify this option if you've specified the option to designate a
    #   private IP address as the primary IP address in a network interface
    #   specification. You cannot specify this option if you're launching
    #   more than one instance in the request.
    # @option options [Array<Types::ElasticGpuSpecification>] :elastic_gpu_specification
    #   An elastic GPU to associate with the instance.
    # @option options [Array<Types::TagSpecification>] :tag_specifications
    #   The tags to apply to the resources during launch. You can only tag
    #   instances and volumes on launch. The specified tags are applied to all
    #   instances or volumes that are created during launch. To tag a resource
    #   after it has been created, see CreateTags.
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
    #   The credit option for CPU usage of the instance. Valid values are
    #   `standard` and `unlimited`. To change this attribute after launch, use
    #   ModifyInstanceCreditSpecification. For more information, see
    #   [Burstable Performance Instances][1] in the *Amazon Elastic Compute
    #   Cloud User Guide*.
    #
    #   Default: `standard` (T2 instances) or `unlimited` (T3 instances)
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/burstable-performance-instances.html
    # @option options [Types::CpuOptionsRequest] :cpu_options
    #   The CPU options for the instance. For more information, see
    #   [Optimizing CPU Options][1] in the *Amazon Elastic Compute Cloud User
    #   Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-optimize-cpu.html
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
    #     dry_run: false,
    #   })
    # @param [Hash] options ({})
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
    #   networkacl = ec2.create_network_acl({
    #     dry_run: false,
    #     vpc_id: "String", # required
    #   })
    # @param [Hash] options ({})
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @option options [required, String] :vpc_id
    #   The ID of the VPC.
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
    #     groups: ["String"],
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
    #     subnet_id: "String", # required
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
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-eni.html#AvailableIpPerENI
    # @option options [required, String] :subnet_id
    #   The ID of the subnet to associate with the network interface.
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
    #     group_name: "String", # required
    #     strategy: "cluster", # required, accepts cluster, spread
    #   })
    # @param [Hash] options ({})
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @option options [required, String] :group_name
    #   A name for the placement group. Must be unique within the scope of
    #   your account for the region.
    #
    #   Constraints: Up to 255 ASCII characters
    # @option options [required, String] :strategy
    #   The placement strategy.
    # @return [PlacementGroup]
    def create_placement_group(options = {})
      resp = @client.create_placement_group(options)
      PlacementGroup.new(
        name: options[:group_name],
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   routetable = ec2.create_route_table({
    #     dry_run: false,
    #     vpc_id: "String", # required
    #   })
    # @param [Hash] options ({})
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @option options [required, String] :vpc_id
    #   The ID of the VPC.
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
    #     vpc_id: "String",
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
    #     volume_id: "String", # required
    #     tag_specifications: [
    #       {
    #         resource_type: "customer-gateway", # accepts customer-gateway, dedicated-host, dhcp-options, image, instance, internet-gateway, network-acl, network-interface, reserved-instances, route-table, snapshot, spot-instances-request, subnet, security-group, volume, vpc, vpn-connection, vpn-gateway
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
    # @option options [required, String] :volume_id
    #   The ID of the EBS volume.
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
    #     availability_zone: "String",
    #     cidr_block: "String", # required
    #     ipv_6_cidr_block: "String",
    #     vpc_id: "String", # required
    #     dry_run: false,
    #   })
    # @param [Hash] options ({})
    # @option options [String] :availability_zone
    #   The Availability Zone for the subnet.
    #
    #   Default: AWS selects one for you. If you create more than one subnet
    #   in your VPC, we may not necessarily select a different zone for each
    #   subnet.
    # @option options [required, String] :cidr_block
    #   The IPv4 network range for the subnet, in CIDR notation. For example,
    #   `10.0.0.0/24`.
    # @option options [String] :ipv_6_cidr_block
    #   The IPv6 network range for the subnet, in CIDR notation. The subnet
    #   size must use a /64 prefix length.
    # @option options [required, String] :vpc_id
    #   The ID of the VPC.
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
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
    #     resources: ["String"], # required
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
    #   The IDs of one or more resources to tag. For example, ami-1a2b3c4d.
    # @option options [required, Array<Types::Tag>] :tags
    #   One or more tags. The `value` parameter is required, but if you don't
    #   want the tag to have a value, specify the parameter with no value, and
    #   we set the value to an empty string.
    # @return [EmptyStructure]
    def create_tags(options = {})
      resp = @client.create_tags(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   volume = ec2.create_volume({
    #     availability_zone: "String", # required
    #     encrypted: false,
    #     iops: 1,
    #     kms_key_id: "String",
    #     size: 1,
    #     snapshot_id: "String",
    #     volume_type: "standard", # accepts standard, io1, gp2, sc1, st1
    #     dry_run: false,
    #     tag_specifications: [
    #       {
    #         resource_type: "customer-gateway", # accepts customer-gateway, dedicated-host, dhcp-options, image, instance, internet-gateway, network-acl, network-interface, reserved-instances, route-table, snapshot, spot-instances-request, subnet, security-group, volume, vpc, vpn-connection, vpn-gateway
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
    # @option options [required, String] :availability_zone
    #   The Availability Zone in which to create the volume. Use
    #   DescribeAvailabilityZones to list the Availability Zones that are
    #   currently available to you.
    # @option options [Boolean] :encrypted
    #   Specifies whether the volume should be encrypted. Encrypted Amazon EBS
    #   volumes may only be attached to instances that support Amazon EBS
    #   encryption. Volumes that are created from encrypted snapshots are
    #   automatically encrypted. There is no way to create an encrypted volume
    #   from an unencrypted snapshot or vice versa. If your AMI uses encrypted
    #   volumes, you can only launch it on supported instance types. For more
    #   information, see [Amazon EBS Encryption][1] in the *Amazon Elastic
    #   Compute Cloud User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html
    # @option options [Integer] :iops
    #   The number of I/O operations per second (IOPS) to provision for the
    #   volume, with a maximum ratio of 50 IOPS/GiB. Range is 100 to 32000
    #   IOPS for volumes in most regions. For exceptions, see [Amazon EBS
    #   Volume Types][1] in the *Amazon Elastic Compute Cloud User Guide*.
    #
    #   This parameter is valid only for Provisioned IOPS SSD (io1) volumes.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html
    # @option options [String] :kms_key_id
    #   An identifier for the AWS Key Management Service (AWS KMS) customer
    #   master key (CMK) to use when creating the encrypted volume. This
    #   parameter is only required if you want to use a non-default CMK; if
    #   this parameter is not specified, the default CMK for EBS is used. If a
    #   `KmsKeyId` is specified, the `Encrypted` flag must also be set.
    #
    #   The CMK identifier may be provided in any of the following formats:
    #
    #   * Key ID
    #
    #   * Key alias
    #
    #   * ARN using key ID. The ID ARN contains the `arn:aws:kms` namespace,
    #     followed by the region of the CMK, the AWS account ID of the CMK
    #     owner, the `key` namespace, and then the CMK ID. For example,
    #     arn:aws:kms:*us-east-1*\:*012345678910*\:key/*abcd1234-a123-456a-a12b-a123b4cd56ef*.
    #
    #   * ARN using key alias. The alias ARN contains the `arn:aws:kms`
    #     namespace, followed by the region of the CMK, the AWS account ID of
    #     the CMK owner, the `alias` namespace, and then the CMK alias. For
    #     example,
    #     arn:aws:kms:*us-east-1*\:*012345678910*\:alias/*ExampleAlias*.
    #
    #   AWS parses `KmsKeyId` asynchronously, meaning that the action you call
    #   may appear to complete even though you provided an invalid identifier.
    #   The action will eventually fail.
    # @option options [Integer] :size
    #   The size of the volume, in GiBs.
    #
    #   Constraints: 1-16384 for `gp2`, 4-16384 for `io1`, 500-16384 for
    #   `st1`, 500-16384 for `sc1`, and 1-1024 for `standard`. If you specify
    #   a snapshot, the volume size must be equal to or larger than the
    #   snapshot size.
    #
    #   Default: If you're creating the volume from a snapshot and don't
    #   specify a volume size, the default is the snapshot size.
    # @option options [String] :snapshot_id
    #   The snapshot from which to create the volume.
    # @option options [String] :volume_type
    #   The volume type. This can be `gp2` for General Purpose SSD, `io1` for
    #   Provisioned IOPS SSD, `st1` for Throughput Optimized HDD, `sc1` for
    #   Cold HDD, or `standard` for Magnetic volumes.
    #
    #   Defaults: If no volume type is specified, the default is `standard` in
    #   us-east-1, eu-west-1, eu-central-1, us-west-2, us-west-1, sa-east-1,
    #   ap-northeast-1, ap-northeast-2, ap-southeast-1, ap-southeast-2,
    #   ap-south-1, us-gov-west-1, and cn-north-1. In all other regions, EBS
    #   defaults to `gp2`.
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @option options [Array<Types::TagSpecification>] :tag_specifications
    #   The tags to apply to the volume during creation.
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
    #     cidr_block: "String", # required
    #     amazon_provided_ipv_6_cidr_block: false,
    #     dry_run: false,
    #     instance_tenancy: "default", # accepts default, dedicated, host
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :cidr_block
    #   The IPv4 network range for the VPC, in CIDR notation. For example,
    #   `10.0.0.0/16`.
    # @option options [Boolean] :amazon_provided_ipv_6_cidr_block
    #   Requests an Amazon-provided IPv6 CIDR block with a /56 prefix length
    #   for the VPC. You cannot specify the range of IP addresses, or the size
    #   of the CIDR block.
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
    #     vpc_id: "String",
    #     peer_region: "String",
    #   })
    # @param [Hash] options ({})
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @option options [String] :peer_owner_id
    #   The AWS account ID of the owner of the accepter VPC.
    #
    #   Default: Your AWS account ID
    # @option options [String] :peer_vpc_id
    #   The ID of the VPC with which you are creating the VPC peering
    #   connection. You must specify this parameter in the request.
    # @option options [String] :vpc_id
    #   The ID of the requester VPC. You must specify this parameter in the
    #   request.
    # @option options [String] :peer_region
    #   The region code for the accepter VPC, if the accepter VPC is located
    #   in a region other than the region in which you make the request.
    #
    #   Default: The region in which you make the request.
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
    #     association_id: "String", # required
    #     dry_run: false,
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :association_id
    #   The association ID representing the current association between the
    #   route table and subnet.
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
    #   })
    # @param [Hash] options ({})
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @option options [required, String] :key_name
    #   A unique name for the key pair.
    # @option options [required, String, IO] :public_key_material
    #   The public key. For API calls, the text must be base64-encoded. For
    #   command line tools, base64 encoding is performed for you.
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
    #     architecture: "i386", # accepts i386, x86_64
    #     block_device_mappings: [
    #       {
    #         device_name: "String",
    #         virtual_name: "String",
    #         ebs: {
    #           delete_on_termination: false,
    #           iops: 1,
    #           snapshot_id: "String",
    #           volume_size: 1,
    #           volume_type: "standard", # accepts standard, io1, gp2, sc1, st1
    #           encrypted: false,
    #           kms_key_id: "String",
    #         },
    #         no_device: "String",
    #       },
    #     ],
    #     description: "String",
    #     dry_run: false,
    #     ena_support: false,
    #     kernel_id: "String",
    #     name: "String", # required
    #     billing_products: ["String"],
    #     ramdisk_id: "String",
    #     root_device_name: "String",
    #     sriov_net_support: "String",
    #     virtualization_type: "String",
    #   })
    # @param [Hash] options ({})
    # @option options [String] :image_location
    #   The full path to your AMI manifest in Amazon S3 storage.
    # @option options [String] :architecture
    #   The architecture of the AMI.
    #
    #   Default: For Amazon EBS-backed AMIs, `i386`. For instance store-backed
    #   AMIs, the architecture specified in the manifest file.
    # @option options [Array<Types::BlockDeviceMapping>] :block_device_mappings
    #   One or more block device mapping entries.
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
    #   billing product codes. Otherwise, you can use the AWS Marketplace to
    #   bill for the use of an AMI.
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
    #     allocation_ids: ["String"],
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
    #   * `network-interface-id` - \[EC2-VPC\] The ID of the network interface
    #     that the address is associated with, if any.
    #
    #   * `network-interface-owner-id` - The AWS account ID of the owner.
    #
    #   * `private-ip-address` - \[EC2-VPC\] The private IP address associated
    #     with the Elastic IP address.
    #
    #   * `public-ip` - The Elastic IP address.
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
    #   \[EC2-Classic\] One or more Elastic IP addresses.
    #
    #   Default: Describes all your Elastic IP addresses.
    # @option options [Array<String>] :allocation_ids
    #   \[EC2-VPC\] One or more allocation IDs.
    #
    #   Default: Describes all your Elastic IP addresses.
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
    #     dhcp_options_ids: ["String"],
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
    #   * `dhcp-options-id` - The ID of a set of DHCP options.
    #
    #   * `key` - The key for one of the options (for example, `domain-name`).
    #
    #   * `value` - The value for one of the options.
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
        batch = []
        resp = @client.describe_dhcp_options(options)
        resp.data.dhcp_options.each do |d|
          batch << DhcpOptions.new(
            id: d.dhcp_options_id,
            data: d,
            client: @client
          )
        end
        y.yield(batch)
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
    #     image_ids: ["String"],
    #     owners: ["String"],
    #     dry_run: false,
    #   })
    # @param [Hash] options ({})
    # @option options [Array<String>] :executable_users
    #   Scopes the images by users with explicit launch permissions. Specify
    #   an AWS account ID, `self` (the sender of the request), or `all`
    #   (public AMIs).
    # @option options [Array<Types::Filter>] :filters
    #   One or more filters.
    #
    #   * `architecture` - The image architecture (`i386` \| `x86_64`).
    #
    #   * `block-device-mapping.delete-on-termination` - A Boolean value that
    #     indicates whether the Amazon EBS volume is deleted on instance
    #     termination.
    #
    #   * `block-device-mapping.device-name` - The device name specified in
    #     the block device mapping (for example, `/dev/sdh` or `xvdh`).
    #
    #   * `block-device-mapping.snapshot-id` - The ID of the snapshot used for
    #     the EBS volume.
    #
    #   * `block-device-mapping.volume-size` - The volume size of the EBS
    #     volume, in GiB.
    #
    #   * `block-device-mapping.volume-type` - The volume type of the EBS
    #     volume (`gp2` \| `io1` \| `st1 `\| `sc1` \| `standard`).
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
    #   * `owner-alias` - String value from an Amazon-maintained list
    #     (`amazon` \| `aws-marketplace` \| `microsoft`) of snapshot owners.
    #     Not to be confused with the user-configured AWS account alias, which
    #     is set from the IAM console.
    #
    #   * `owner-id` - The AWS account ID of the image owner.
    #
    #   * `platform` - The platform. To only list Windows-based AMIs, use
    #     `windows`.
    #
    #   * `product-code` - The product code.
    #
    #   * `product-code.type` - The type of the product code (`devpay` \|
    #     `marketplace`).
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
    #   One or more image IDs.
    #
    #   Default: Describes all images available to you.
    # @option options [Array<String>] :owners
    #   Filters the images by the owner. Specify an AWS account ID, `self`
    #   (owner is the sender of the request), or an AWS owner alias (valid
    #   values are `amazon` \| `aws-marketplace` \| `microsoft`). Omitting
    #   this option returns all images for which you have launch permissions,
    #   regardless of ownership.
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
    #     instance_ids: ["String"],
    #     dry_run: false,
    #   })
    # @param [Hash] options ({})
    # @option options [Array<Types::Filter>] :filters
    #   One or more filters.
    #
    #   * `affinity` - The affinity setting for an instance running on a
    #     Dedicated Host (`default` \| `host`).
    #
    #   * `architecture` - The instance architecture (`i386` \| `x86_64`).
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
    #   * `host-id` - The ID of the Dedicated Host on which the instance is
    #     running, if applicable.
    #
    #   * `hypervisor` - The hypervisor type of the instance (`ovm` \| `xen`).
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
    #   * `launch-time` - The time when the instance was launched.
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
    #     network interface is being managed by AWS.
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
    #   * `owner-id` - The AWS account ID of the instance owner.
    #
    #   * `placement-group-name` - The name of the placement group for the
    #     instance.
    #
    #   * `platform` - The platform. Use `windows` if you have Windows
    #     instances; otherwise, leave blank.
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
    #     your behalf (for example, AWS Management Console, Auto Scaling, and
    #     so on).
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
    #   * `tag`\:&lt;key&gt; - The key/value combination of a tag assigned to
    #     the resource. Use the tag key in the filter name and the tag value
    #     as the filter value. For example, to find all resources that have a
    #     tag with the key `Owner` and the value `TeamA`, specify `tag:Owner`
    #     for the filter name and `TeamA` for the filter value.
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
    #   One or more instance IDs.
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
    #     internet_gateway_ids: ["String"],
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
        batch = []
        resp = @client.describe_internet_gateways(options)
        resp.data.internet_gateways.each do |i|
          batch << InternetGateway.new(
            id: i.internet_gateway_id,
            data: i,
            client: @client
          )
        end
        y.yield(batch)
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
    #     key_names: ["String"],
    #     dry_run: false,
    #   })
    # @param [Hash] options ({})
    # @option options [Array<Types::Filter>] :filters
    #   One or more filters.
    #
    #   * `fingerprint` - The fingerprint of the key pair.
    #
    #   * `key-name` - The name of the key pair.
    # @option options [Array<String>] :key_names
    #   One or more key pair names.
    #
    #   Default: Describes all your key pairs.
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
    #     network_acl_ids: ["String"],
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
        batch = []
        resp = @client.describe_network_acls(options)
        resp.data.network_acls.each do |n|
          batch << NetworkAcl.new(
            id: n.network_acl_id,
            data: n,
            client: @client
          )
        end
        y.yield(batch)
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
    #     network_interface_ids: ["String"],
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
    #   * `attachment.attach.time` - The time that the network interface was
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
    #   * `attachment.nat-gateway-id` - The ID of the NAT gateway to which the
    #     network interface is attached.
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
    #   * `owner-id` - The AWS account ID of the network interface owner.
    #
    #   * `private-ip-address` - The private IPv4 address or addresses of the
    #     network interface.
    #
    #   * `private-dns-name` - The private DNS name of the network interface
    #     (IPv4).
    #
    #   * `requester-id` - The ID of the entity that launched the instance on
    #     your behalf (for example, AWS Management Console, Auto Scaling, and
    #     so on).
    #
    #   * `requester-managed` - Indicates whether the network interface is
    #     being managed by an AWS service (for example, AWS Management
    #     Console, Auto Scaling, and so on).
    #
    #   * `source-desk-check` - Indicates whether the network interface
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
    #     group_names: ["String"],
    #   })
    # @param [Hash] options ({})
    # @option options [Array<Types::Filter>] :filters
    #   One or more filters.
    #
    #   * `group-name` - The name of the placement group.
    #
    #   * `state` - The state of the placement group (`pending` \| `available`
    #     \| `deleting` \| `deleted`).
    #
    #   * `strategy` - The strategy of the placement group (`cluster` \|
    #     `spread`).
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @option options [Array<String>] :group_names
    #   One or more placement group names.
    #
    #   Default: Describes all your placement groups, or only those otherwise
    #   specified.
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
    #     route_table_ids: ["String"],
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
    #   * `route-table-id` - The ID of the route table.
    #
    #   * `route.destination-cidr-block` - The IPv4 CIDR range specified in a
    #     route in the table.
    #
    #   * `route.destination-ipv6-cidr-block` - The IPv6 CIDR range specified
    #     in a route in the route table.
    #
    #   * `route.destination-prefix-list-id` - The ID (prefix) of the AWS
    #     service specified in a route in the table.
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
        batch = []
        resp = @client.describe_route_tables(options)
        resp.data.route_tables.each do |r|
          batch << RouteTable.new(
            id: r.route_table_id,
            data: r,
            client: @client
          )
        end
        y.yield(batch)
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
    #     group_ids: ["String"],
    #     group_names: ["String"],
    #     dry_run: false,
    #     next_token: "String",
    #     max_results: 1,
    #   })
    # @param [Hash] options ({})
    # @option options [Array<Types::Filter>] :filters
    #   One or more filters. If using multiple filters for rules, the results
    #   include security groups for which any combination of rules - not
    #   necessarily a single rule - match all filters.
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
    #     that has been referenced in an outbound security group rule.
    #
    #   * `egress.ip-permission.ipv6-cidr` - An IPv6 CIDR block for an
    #     outbound security group rule.
    #
    #   * `egress.ip-permission.prefix-list-id` - The ID (prefix) of the AWS
    #     service to which a security group rule allows outbound access.
    #
    #   * `egress.ip-permission.protocol` - The IP protocol for an outbound
    #     security group rule (`tcp` \| `udp` \| `icmp` or a protocol number).
    #
    #   * `egress.ip-permission.to-port` - For an outbound rule, the end of
    #     port range for the TCP and UDP protocols, or an ICMP code.
    #
    #   * `egress.ip-permission.user-id` - The ID of an AWS account that has
    #     been referenced in an outbound security group rule.
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
    #   * `ip-permission.group-name` - The name of a security group that has
    #     been referenced in an inbound security group rule.
    #
    #   * `ip-permission.ipv6-cidr` - An IPv6 CIDR block for an inbound
    #     security group rule.
    #
    #   * `ip-permission.prefix-list-id` - The ID (prefix) of the AWS service
    #     from which a security group rule allows inbound access.
    #
    #   * `ip-permission.protocol` - The IP protocol for an inbound security
    #     group rule (`tcp` \| `udp` \| `icmp` or a protocol number).
    #
    #   * `ip-permission.to-port` - For an inbound rule, the end of port range
    #     for the TCP and UDP protocols, or an ICMP code.
    #
    #   * `ip-permission.user-id` - The ID of an AWS account that has been
    #     referenced in an inbound security group rule.
    #
    #   * `owner-id` - The AWS account ID of the owner of the security group.
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
    #   One or more security group IDs. Required for security groups in a
    #   nondefault VPC.
    #
    #   Default: Describes all your security groups.
    # @option options [Array<String>] :group_names
    #   \[EC2-Classic and default VPC only\] One or more security group names.
    #   You can specify either the security group name or the security group
    #   ID. For security groups in a nondefault VPC, use the `group-name`
    #   filter to describe security groups by name.
    #
    #   Default: Describes all your security groups.
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @option options [String] :next_token
    #   The token to request the next page of results.
    # @option options [Integer] :max_results
    #   The maximum number of results to return in a single call. To retrieve
    #   the remaining results, make another request with the returned
    #   `NextToken` value. This value can be between 5 and 1000. If this
    #   parameter is not specified, then all results are returned.
    # @return [SecurityGroup::Collection]
    def security_groups(options = {})
      batches = Enumerator.new do |y|
        batch = []
        resp = @client.describe_security_groups(options)
        resp.data.security_groups.each do |s|
          batch << SecurityGroup.new(
            id: s.group_id,
            data: s,
            client: @client
          )
        end
        y.yield(batch)
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
    #     snapshot_ids: ["String"],
    #     dry_run: false,
    #   })
    # @param [Hash] options ({})
    # @option options [Array<Types::Filter>] :filters
    #   One or more filters.
    #
    #   * `description` - A description of the snapshot.
    #
    #   * `owner-alias` - Value from an Amazon-maintained list (`amazon` \|
    #     `aws-marketplace` \| `microsoft`) of snapshot owners. Not to be
    #     confused with the user-configured AWS account alias, which is set
    #     from the IAM console.
    #
    #   * `owner-id` - The ID of the AWS account that owns the snapshot.
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
    #   Returns the snapshots owned by the specified owner. Multiple owners
    #   can be specified.
    # @option options [Array<String>] :restorable_by_user_ids
    #   One or more AWS accounts IDs that can create volumes from the
    #   snapshot.
    # @option options [Array<String>] :snapshot_ids
    #   One or more snapshot IDs.
    #
    #   Default: Describes snapshots for which you have launch permissions.
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
    #     subnet_ids: ["String"],
    #     dry_run: false,
    #   })
    # @param [Hash] options ({})
    # @option options [Array<Types::Filter>] :filters
    #   One or more filters.
    #
    #   * `availabilityZone` - The Availability Zone for the subnet. You can
    #     also use `availability-zone` as the filter name.
    #
    #   * `available-ip-address-count` - The number of IPv4 addresses in the
    #     subnet that are available.
    #
    #   * `cidrBlock` - The IPv4 CIDR block of the subnet. The CIDR block you
    #     specify must exactly match the subnet's CIDR block for information
    #     to be returned for the subnet. You can also use `cidr` or
    #     `cidr-block` as the filter names.
    #
    #   * `defaultForAz` - Indicates whether this is the default subnet for
    #     the Availability Zone. You can also use `default-for-az` as the
    #     filter name.
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
    #   * `state` - The state of the subnet (`pending` \| `available`).
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
        batch = []
        resp = @client.describe_subnets(options)
        resp.data.subnets.each do |s|
          batch << Subnet.new(
            id: s.subnet_id,
            data: s,
            client: @client
          )
        end
        y.yield(batch)
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
    #     volume_ids: ["String"],
    #     dry_run: false,
    #   })
    # @param [Hash] options ({})
    # @option options [Array<Types::Filter>] :filters
    #   One or more filters.
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
    #   * `encrypted` - The encryption status of the volume.
    #
    #   * `size` - The size of the volume, in GiB.
    #
    #   * `snapshot-id` - The snapshot from which the volume was created.
    #
    #   * `status` - The status of the volume (`creating` \| `available` \|
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
    #   * `volume-type` - The Amazon EBS volume type. This can be `gp2` for
    #     General Purpose SSD, `io1` for Provisioned IOPS SSD, `st1` for
    #     Throughput Optimized HDD, `sc1` for Cold HDD, or `standard` for
    #     Magnetic volumes.
    # @option options [Array<String>] :volume_ids
    #   One or more volume IDs.
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
    #     allocation_ids: ["String"],
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
    #   * `network-interface-id` - \[EC2-VPC\] The ID of the network interface
    #     that the address is associated with, if any.
    #
    #   * `network-interface-owner-id` - The AWS account ID of the owner.
    #
    #   * `private-ip-address` - \[EC2-VPC\] The private IP address associated
    #     with the Elastic IP address.
    #
    #   * `public-ip` - The Elastic IP address.
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
    #   \[EC2-Classic\] One or more Elastic IP addresses.
    #
    #   Default: Describes all your Elastic IP addresses.
    # @option options [Array<String>] :allocation_ids
    #   \[EC2-VPC\] One or more allocation IDs.
    #
    #   Default: Describes all your Elastic IP addresses.
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
    #     vpc_peering_connection_ids: ["String"],
    #   })
    # @param [Hash] options ({})
    # @option options [Array<Types::Filter>] :filters
    #   One or more filters.
    #
    #   * `accepter-vpc-info.cidr-block` - The IPv4 CIDR block of the accepter
    #     VPC.
    #
    #   * `accepter-vpc-info.owner-id` - The AWS account ID of the owner of
    #     the accepter VPC.
    #
    #   * `accepter-vpc-info.vpc-id` - The ID of the accepter VPC.
    #
    #   * `expiration-time` - The expiration date and time for the VPC peering
    #     connection.
    #
    #   * `requester-vpc-info.cidr-block` - The IPv4 CIDR block of the
    #     requester's VPC.
    #
    #   * `requester-vpc-info.owner-id` - The AWS account ID of the owner of
    #     the requester VPC.
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
        batch = []
        resp = @client.describe_vpc_peering_connections(options)
        resp.data.vpc_peering_connections.each do |v|
          batch << VpcPeeringConnection.new(
            id: v.vpc_peering_connection_id,
            data: v,
            client: @client
          )
        end
        y.yield(batch)
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
    #     vpc_ids: ["String"],
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
    #   * `ipv6-cidr-block-association.association-id` - The association ID
    #     for an IPv6 CIDR block associated with the VPC.
    #
    #   * `ipv6-cidr-block-association.state` - The state of an IPv6 CIDR
    #     block associated with the VPC.
    #
    #   * `isDefault` - Indicates whether the VPC is the default VPC.
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
        batch = []
        resp = @client.describe_vpcs(options)
        resp.data.vpcs.each do |v|
          batch << Vpc.new(
            id: v.vpc_id,
            data: v,
            client: @client
          )
        end
        y.yield(batch)
      end
      Vpc::Collection.new(batches)
    end

  end
end
