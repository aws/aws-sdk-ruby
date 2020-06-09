# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::EC2

  class Subnet

    extend Aws::Deprecations

    # @overload def initialize(id, options = {})
    #   @param [String] id
    #   @option options [Client] :client
    # @overload def initialize(options = {})
    #   @option options [required, String] :id
    #   @option options [Client] :client
    def initialize(*args)
      options = Hash === args.last ? args.pop.dup : {}
      @id = extract_id(args, options)
      @data = options.delete(:data)
      @client = options.delete(:client) || Client.new(options)
      @waiter_block_warned = false
    end

    # @!group Read-Only Attributes

    # @return [String]
    def id
      @id
    end
    alias :subnet_id :id

    # The Availability Zone of the subnet.
    # @return [String]
    def availability_zone
      data[:availability_zone]
    end

    # The AZ ID of the subnet.
    # @return [String]
    def availability_zone_id
      data[:availability_zone_id]
    end

    # The number of unused private IPv4 addresses in the subnet. The IPv4
    # addresses for any stopped instances are considered unavailable.
    # @return [Integer]
    def available_ip_address_count
      data[:available_ip_address_count]
    end

    # The IPv4 CIDR block assigned to the subnet.
    # @return [String]
    def cidr_block
      data[:cidr_block]
    end

    # Indicates whether this is the default subnet for the Availability
    # Zone.
    # @return [Boolean]
    def default_for_az
      data[:default_for_az]
    end

    # Indicates whether instances launched in this subnet receive a public
    # IPv4 address.
    # @return [Boolean]
    def map_public_ip_on_launch
      data[:map_public_ip_on_launch]
    end

    # Indicates whether a network interface created in this subnet
    # (including a network interface created by RunInstances) receives a
    # customer-owned IPv4 address.
    # @return [Boolean]
    def map_customer_owned_ip_on_launch
      data[:map_customer_owned_ip_on_launch]
    end

    # The customer-owned IPv4 address pool associated with the subnet.
    # @return [String]
    def customer_owned_ipv_4_pool
      data[:customer_owned_ipv_4_pool]
    end

    # The current state of the subnet.
    # @return [String]
    def state
      data[:state]
    end

    # The ID of the VPC the subnet is in.
    # @return [String]
    def vpc_id
      data[:vpc_id]
    end

    # The ID of the AWS account that owns the subnet.
    # @return [String]
    def owner_id
      data[:owner_id]
    end

    # Indicates whether a network interface created in this subnet
    # (including a network interface created by RunInstances) receives an
    # IPv6 address.
    # @return [Boolean]
    def assign_ipv_6_address_on_creation
      data[:assign_ipv_6_address_on_creation]
    end

    # Information about the IPv6 CIDR blocks associated with the subnet.
    # @return [Array<Types::SubnetIpv6CidrBlockAssociation>]
    def ipv_6_cidr_block_association_set
      data[:ipv_6_cidr_block_association_set]
    end

    # Any tags assigned to the subnet.
    # @return [Array<Types::Tag>]
    def tags
      data[:tags]
    end

    # The Amazon Resource Name (ARN) of the subnet.
    # @return [String]
    def subnet_arn
      data[:subnet_arn]
    end

    # The Amazon Resource Name (ARN) of the Outpost.
    # @return [String]
    def outpost_arn
      data[:outpost_arn]
    end

    # @!endgroup

    # @return [Client]
    def client
      @client
    end

    # Loads, or reloads {#data} for the current {Subnet}.
    # Returns `self` making it possible to chain methods.
    #
    #     subnet.reload.data
    #
    # @return [self]
    def load
      resp = @client.describe_subnets(subnet_ids: [@id])
      @data = resp.subnets[0]
      self
    end
    alias :reload :load

    # @return [Types::Subnet]
    #   Returns the data for this {Subnet}. Calls
    #   {Client#describe_subnets} if {#data_loaded?} is `false`.
    def data
      load unless @data
      @data
    end

    # @return [Boolean]
    #   Returns `true` if this resource is loaded.  Accessing attributes or
    #   {#data} on an unloaded resource will trigger a call to {#load}.
    def data_loaded?
      !!@data
    end

    # @deprecated Use [Aws::EC2::Client] #wait_until instead
    #
    # Waiter polls an API operation until a resource enters a desired
    # state.
    #
    # @note The waiting operation is performed on a copy. The original resource
    #   remains unchanged.
    #
    # ## Basic Usage
    #
    # Waiter will polls until it is successful, it fails by
    # entering a terminal state, or until a maximum number of attempts
    # are made.
    #
    #     # polls in a loop until condition is true
    #     resource.wait_until(options) {|resource| condition}
    #
    # ## Example
    #
    #     instance.wait_until(max_attempts:10, delay:5) do |instance|
    #       instance.state.name == 'running'
    #     end
    #
    # ## Configuration
    #
    # You can configure the maximum number of polling attempts, and the
    # delay (in seconds) between each polling attempt. The waiting condition is
    # set by passing a block to {#wait_until}:
    #
    #     # poll for ~25 seconds
    #     resource.wait_until(max_attempts:5,delay:5) {|resource|...}
    #
    # ## Callbacks
    #
    # You can be notified before each polling attempt and before each
    # delay. If you throw `:success` or `:failure` from these callbacks,
    # it will terminate the waiter.
    #
    #     started_at = Time.now
    #     # poll for 1 hour, instead of a number of attempts
    #     proc = Proc.new do |attempts, response|
    #       throw :failure if Time.now - started_at > 3600
    #     end
    #
    #       # disable max attempts
    #     instance.wait_until(before_wait:proc, max_attempts:nil) {...}
    #
    # ## Handling Errors
    #
    # When a waiter is successful, it returns the Resource. When a waiter
    # fails, it raises an error.
    #
    #     begin
    #       resource.wait_until(...)
    #     rescue Aws::Waiters::Errors::WaiterFailed
    #       # resource did not enter the desired state in time
    #     end
    #
    # @yieldparam [Resource] resource to be used in the waiting condition.
    #
    # @raise [Aws::Waiters::Errors::FailureStateError] Raised when the waiter
    #   terminates because the waiter has entered a state that it will not
    #   transition out of, preventing success.
    #
    #   yet successful.
    #
    # @raise [Aws::Waiters::Errors::UnexpectedError] Raised when an error is
    #   encountered while polling for a resource that is not expected.
    #
    # @raise [NotImplementedError] Raised when the resource does not
    #
    # @option options [Integer] :max_attempts (10) Maximum number of
    # attempts
    # @option options [Integer] :delay (10) Delay between each
    # attempt in seconds
    # @option options [Proc] :before_attempt (nil) Callback
    # invoked before each attempt
    # @option options [Proc] :before_wait (nil) Callback
    # invoked before each wait
    # @return [Resource] if the waiter was successful
    def wait_until(options = {}, &block)
      self_copy = self.dup
      attempts = 0
      options[:max_attempts] = 10 unless options.key?(:max_attempts)
      options[:delay] ||= 10
      options[:poller] = Proc.new do
        attempts += 1
        if block.call(self_copy)
          [:success, self_copy]
        else
          self_copy.reload unless attempts == options[:max_attempts]
          :retry
        end
      end
      Aws::Waiters::Waiter.new(options).wait({})
    end

    # @!group Actions

    # @example Request syntax with placeholder values
    #
    #   instance = subnet.create_instances({
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
    #           kms_key_id: "String",
    #           encrypted: false,
    #         },
    #         no_device: "String",
    #       },
    #     ],
    #     image_id: "ImageId",
    #     instance_type: "t1.micro", # accepts t1.micro, t2.nano, t2.micro, t2.small, t2.medium, t2.large, t2.xlarge, t2.2xlarge, t3.nano, t3.micro, t3.small, t3.medium, t3.large, t3.xlarge, t3.2xlarge, t3a.nano, t3a.micro, t3a.small, t3a.medium, t3a.large, t3a.xlarge, t3a.2xlarge, m1.small, m1.medium, m1.large, m1.xlarge, m3.medium, m3.large, m3.xlarge, m3.2xlarge, m4.large, m4.xlarge, m4.2xlarge, m4.4xlarge, m4.10xlarge, m4.16xlarge, m2.xlarge, m2.2xlarge, m2.4xlarge, cr1.8xlarge, r3.large, r3.xlarge, r3.2xlarge, r3.4xlarge, r3.8xlarge, r4.large, r4.xlarge, r4.2xlarge, r4.4xlarge, r4.8xlarge, r4.16xlarge, r5.large, r5.xlarge, r5.2xlarge, r5.4xlarge, r5.8xlarge, r5.12xlarge, r5.16xlarge, r5.24xlarge, r5.metal, r5a.large, r5a.xlarge, r5a.2xlarge, r5a.4xlarge, r5a.8xlarge, r5a.12xlarge, r5a.16xlarge, r5a.24xlarge, r5d.large, r5d.xlarge, r5d.2xlarge, r5d.4xlarge, r5d.8xlarge, r5d.12xlarge, r5d.16xlarge, r5d.24xlarge, r5d.metal, r5ad.large, r5ad.xlarge, r5ad.2xlarge, r5ad.4xlarge, r5ad.8xlarge, r5ad.12xlarge, r5ad.16xlarge, r5ad.24xlarge, x1.16xlarge, x1.32xlarge, x1e.xlarge, x1e.2xlarge, x1e.4xlarge, x1e.8xlarge, x1e.16xlarge, x1e.32xlarge, i2.xlarge, i2.2xlarge, i2.4xlarge, i2.8xlarge, i3.large, i3.xlarge, i3.2xlarge, i3.4xlarge, i3.8xlarge, i3.16xlarge, i3.metal, i3en.large, i3en.xlarge, i3en.2xlarge, i3en.3xlarge, i3en.6xlarge, i3en.12xlarge, i3en.24xlarge, i3en.metal, hi1.4xlarge, hs1.8xlarge, c1.medium, c1.xlarge, c3.large, c3.xlarge, c3.2xlarge, c3.4xlarge, c3.8xlarge, c4.large, c4.xlarge, c4.2xlarge, c4.4xlarge, c4.8xlarge, c5.large, c5.xlarge, c5.2xlarge, c5.4xlarge, c5.9xlarge, c5.12xlarge, c5.18xlarge, c5.24xlarge, c5.metal, c5a.large, c5a.xlarge, c5a.2xlarge, c5a.4xlarge, c5a.8xlarge, c5a.12xlarge, c5a.16xlarge, c5a.24xlarge, c5d.large, c5d.xlarge, c5d.2xlarge, c5d.4xlarge, c5d.9xlarge, c5d.12xlarge, c5d.18xlarge, c5d.24xlarge, c5d.metal, c5n.large, c5n.xlarge, c5n.2xlarge, c5n.4xlarge, c5n.9xlarge, c5n.18xlarge, cc1.4xlarge, cc2.8xlarge, g2.2xlarge, g2.8xlarge, g3.4xlarge, g3.8xlarge, g3.16xlarge, g3s.xlarge, g4dn.xlarge, g4dn.2xlarge, g4dn.4xlarge, g4dn.8xlarge, g4dn.12xlarge, g4dn.16xlarge, g4dn.metal, cg1.4xlarge, p2.xlarge, p2.8xlarge, p2.16xlarge, p3.2xlarge, p3.8xlarge, p3.16xlarge, p3dn.24xlarge, d2.xlarge, d2.2xlarge, d2.4xlarge, d2.8xlarge, f1.2xlarge, f1.4xlarge, f1.16xlarge, m5.large, m5.xlarge, m5.2xlarge, m5.4xlarge, m5.8xlarge, m5.12xlarge, m5.16xlarge, m5.24xlarge, m5.metal, m5a.large, m5a.xlarge, m5a.2xlarge, m5a.4xlarge, m5a.8xlarge, m5a.12xlarge, m5a.16xlarge, m5a.24xlarge, m5d.large, m5d.xlarge, m5d.2xlarge, m5d.4xlarge, m5d.8xlarge, m5d.12xlarge, m5d.16xlarge, m5d.24xlarge, m5d.metal, m5ad.large, m5ad.xlarge, m5ad.2xlarge, m5ad.4xlarge, m5ad.8xlarge, m5ad.12xlarge, m5ad.16xlarge, m5ad.24xlarge, h1.2xlarge, h1.4xlarge, h1.8xlarge, h1.16xlarge, z1d.large, z1d.xlarge, z1d.2xlarge, z1d.3xlarge, z1d.6xlarge, z1d.12xlarge, z1d.metal, u-6tb1.metal, u-9tb1.metal, u-12tb1.metal, u-18tb1.metal, u-24tb1.metal, a1.medium, a1.large, a1.xlarge, a1.2xlarge, a1.4xlarge, a1.metal, m5dn.large, m5dn.xlarge, m5dn.2xlarge, m5dn.4xlarge, m5dn.8xlarge, m5dn.12xlarge, m5dn.16xlarge, m5dn.24xlarge, m5n.large, m5n.xlarge, m5n.2xlarge, m5n.4xlarge, m5n.8xlarge, m5n.12xlarge, m5n.16xlarge, m5n.24xlarge, r5dn.large, r5dn.xlarge, r5dn.2xlarge, r5dn.4xlarge, r5dn.8xlarge, r5dn.12xlarge, r5dn.16xlarge, r5dn.24xlarge, r5n.large, r5n.xlarge, r5n.2xlarge, r5n.4xlarge, r5n.8xlarge, r5n.12xlarge, r5n.16xlarge, r5n.24xlarge, inf1.xlarge, inf1.2xlarge, inf1.6xlarge, inf1.24xlarge, m6g.metal, m6g.medium, m6g.large, m6g.xlarge, m6g.2xlarge, m6g.4xlarge, m6g.8xlarge, m6g.12xlarge, m6g.16xlarge
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
    #       group_name: "String",
    #       partition_number: 1,
    #       host_id: "String",
    #       tenancy: "default", # accepts default, dedicated, host
    #       spread_domain: "String",
    #       host_resource_group_arn: "String",
    #     },
    #     ramdisk_id: "RamdiskId",
    #     security_group_ids: ["SecurityGroupId"],
    #     security_groups: ["SecurityGroupName"],
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
    #         interface_type: "String",
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
    #         resource_type: "client-vpn-endpoint", # accepts client-vpn-endpoint, customer-gateway, dedicated-host, dhcp-options, elastic-ip, fleet, fpga-image, host-reservation, image, instance, internet-gateway, key-pair, launch-template, natgateway, network-acl, network-interface, placement-group, reserved-instances, route-table, security-group, snapshot, spot-fleet-request, spot-instances-request, subnet, traffic-mirror-filter, traffic-mirror-session, traffic-mirror-target, transit-gateway, transit-gateway-attachment, transit-gateway-multicast-domain, transit-gateway-route-table, volume, vpc, vpc-peering-connection, vpn-connection, vpn-gateway, vpc-flow-log
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
    #     },
    #   })
    # @param [Hash] options ({})
    # @option options [Array<Types::BlockDeviceMapping>] :block_device_mappings
    #   The block device mapping entries.
    # @option options [String] :image_id
    #   The ID of the AMI. An AMI ID is required to launch an instance and
    #   must be specified here or in a launch template.
    # @option options [String] :instance_type
    #   The instance type. For more information, see [Instance Types][1] in
    #   the *Amazon Elastic Compute Cloud User Guide*.
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
    #   For more information, see [ PV-GRUB][1] in the *Amazon Elastic Compute
    #   Cloud User Guide*.
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
    #   go to the AWS Resource Center and search for the kernel ID.
    #
    #   We recommend that you use PV-GRUB instead of kernels and RAM disks.
    #   For more information, see [ PV-GRUB][1] in the *Amazon Elastic Compute
    #   Cloud User Guide*.
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
    # @option options [String] :user_data
    #   The user data to make available to the instance. For more information,
    #   see [Running Commands on Your Linux Instance at Launch][1] (Linux) and
    #   [Adding User Data][2] (Windows). If you are using a command line tool,
    #   base64-encoding is performed for you, and you can load the text from a
    #   file. Otherwise, you must provide base64-encoded text. User data is
    #   limited to 16 KB.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/user-data.html
    #   [2]: https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ec2-instance-metadata.html#instancedata-add-user-data
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
    #   The IAM instance profile.
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
    #   see [ Amazon EC2 Elastic GPUs][1] in the *Amazon Elastic Compute Cloud
    #   User Guide*.
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
    #   information, see [Burstable Performance Instances][2] in the *Amazon
    #   Elastic Compute Cloud User Guide*.
    #
    #   Default: `standard` (T2 instances) or `unlimited` (T3/T3a instances)
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ModifyInstanceCreditSpecification.html
    #   [2]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/burstable-performance-instances.html
    # @option options [Types::CpuOptionsRequest] :cpu_options
    #   The CPU options for the instance. For more information, see
    #   [Optimizing CPU Options][1] in the *Amazon Elastic Compute Cloud User
    #   Guide*.
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
    #   information, see [Hibernate Your Instance][1] in the *Amazon Elastic
    #   Compute Cloud User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Hibernate.html
    # @option options [Array<Types::LicenseConfigurationRequest>] :license_specifications
    #   The license configurations.
    # @option options [Types::InstanceMetadataOptionsRequest] :metadata_options
    #   The metadata options for the instance. For more information, see
    #   [Instance Metadata and User Data][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html
    # @return [Instance::Collection]
    def create_instances(options = {})
      batch = []
      options = options.merge(subnet_id: @id)
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
    #   networkinterface = subnet.create_network_interface({
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
    #     interface_type: "efa", # accepts efa
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
    # @option options [String] :interface_type
    #   Indicates the type of network interface. To create an Elastic Fabric
    #   Adapter (EFA), specify `efa`. For more information, see [ Elastic
    #   Fabric Adapter][1] in the *Amazon Elastic Compute Cloud User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/efa.html
    # @return [NetworkInterface]
    def create_network_interface(options = {})
      options = options.merge(subnet_id: @id)
      resp = @client.create_network_interface(options)
      NetworkInterface.new(
        id: resp.data.network_interface.network_interface_id,
        data: resp.data.network_interface,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   tag = subnet.create_tags({
    #     dry_run: false,
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
    # @option options [required, Array<Types::Tag>] :tags
    #   The tags. The `value` parameter is required, but if you don't want
    #   the tag to have a value, specify the parameter with no value, and we
    #   set the value to an empty string.
    # @return [Tag::Collection]
    def create_tags(options = {})
      batch = []
      options = Aws::Util.deep_merge(options, resources: [@id])
      resp = @client.create_tags(options)
      options[:tags].each do |t|
        batch << Tag.new(
          resource_id: @id,
          key: t[:key],
          value: t[:value],
          client: @client
        )
      end
      Tag::Collection.new([batch], size: batch.size)
    end

    # @example Request syntax with placeholder values
    #
    #   tag = subnet.delete_tags({
    #     dry_run: false,
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
    # @option options [Array<Types::Tag>] :tags
    #   The tags to delete. Specify a tag key and an optional tag value to
    #   delete specific tags. If you specify a tag key without a tag value, we
    #   delete any tag with this key regardless of its value. If you specify a
    #   tag key with an empty string as the tag value, we delete the tag only
    #   if its value is an empty string.
    #
    #   If you omit this parameter, we delete all user-defined tags for the
    #   specified resources. We do not delete AWS-generated tags (tags that
    #   have the `aws:` prefix).
    # @return [Tag::Collection]
    def delete_tags(options = {})
      batch = []
      options = Aws::Util.deep_merge(options, resources: [@id])
      resp = @client.delete_tags(options)
      options[:tags].each do |t|
        batch << Tag.new(
          resource_id: @id,
          key: t[:key],
          value: t[:value],
          client: @client
        )
      end
      Tag::Collection.new([batch], size: batch.size)
    end

    # @example Request syntax with placeholder values
    #
    #   subnet.delete({
    #     dry_run: false,
    #   })
    # @param [Hash] options ({})
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @return [EmptyStructure]
    def delete(options = {})
      options = options.merge(subnet_id: @id)
      resp = @client.delete_subnet(options)
      resp.data
    end

    # @!group Associations

    # @example Request syntax with placeholder values
    #
    #   instances = subnet.instances({
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
    #   * `launch-time` - The time when the instance was launched.
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
        options = Aws::Util.deep_merge(options, filters: [{
          name: "subnet-id",
          values: [@id]
        }])
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

    # @example Request syntax with placeholder values
    #
    #   nat_gateways = subnet.nat_gateways({
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
        options = Aws::Util.deep_merge(options, filter: [{
          name: "subnet-id",
          values: [@id]
        }])
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

    # @example Request syntax with placeholder values
    #
    #   network_interfaces = subnet.network_interfaces({
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
        options = Aws::Util.deep_merge(options, filters: [{
          name: "subnet-id",
          values: [@id]
        }])
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

    # @return [Vpc, nil]
    def vpc
      if data[:vpc_id]
        Vpc.new(
          id: data[:vpc_id],
          client: @client
        )
      else
        nil
      end
    end

    # @deprecated
    # @api private
    def identifiers
      { id: @id }
    end
    deprecated(:identifiers)

    private

    def extract_id(args, options)
      value = args[0] || options.delete(:id)
      case value
      when String then value
      when nil then raise ArgumentError, "missing required option :id"
      else
        msg = "expected :id to be a String, got #{value.class}"
        raise ArgumentError, msg
      end
    end

    class Collection < Aws::Resources::Collection; end
  end
end
