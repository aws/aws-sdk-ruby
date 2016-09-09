# WARNING ABOUT GENERATED CODE
#
# This file is generated from a JSON service definition. See the contributing
# guide for more information:
#
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE
module Aws
  module EC2
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

      # @param [Hash] options ({})
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the action,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @option options [required, Array<Types::NewDhcpConfiguration>] :dhcp_configurations
      #   A DHCP configuration option.
      # @return [DhcpOptions]
      def create_dhcp_options(options = {})
        resp = @client.create_dhcp_options(options)
        DhcpOptions.new(
          id: resp.data.dhcp_options.dhcp_options_id,
          data: resp.data.dhcp_options,
          client: @client
        )
      end

      # @param [Hash] options ({})
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the action,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @option options [required, String] :image_id
      #   The ID of the AMI, which you can get by calling DescribeImages.
      # @option options [required, Integer] :min_count
      #   The minimum number of instances to launch. If you specify a minimum
      #   that is more instances than Amazon EC2 can launch in the target
      #   Availability Zone, Amazon EC2 launches no instances.
      #
      #   Constraints: Between 1 and the maximum number you\'re allowed for the
      #   specified instance type. For more information about the default
      #   limits, and how to request an increase, see [How many instances can I
      #   run in Amazon EC2][1] in the Amazon EC2 General FAQ.
      #
      #
      #
      #   [1]: http://aws.amazon.com/ec2/faqs/#How_many_instances_can_I_run_in_Amazon_EC2
      # @option options [required, Integer] :max_count
      #   The maximum number of instances to launch. If you specify more
      #   instances than Amazon EC2 can launch in the target Availability Zone,
      #   Amazon EC2 launches the largest possible number of instances above
      #   `MinCount`.
      #
      #   Constraints: Between 1 and the maximum number you\'re allowed for the
      #   specified instance type. For more information about the default
      #   limits, and how to request an increase, see [How many instances can I
      #   run in Amazon EC2][1] in the Amazon EC2 FAQ.
      #
      #
      #
      #   [1]: http://aws.amazon.com/ec2/faqs/#How_many_instances_can_I_run_in_Amazon_EC2
      # @option options [String] :key_name
      #   The name of the key pair. You can create a key pair using
      #   CreateKeyPair or ImportKeyPair.
      #
      #   <important markdown="1"> If you do not specify a key pair, you can\'t connect to the instance
      #   unless you choose an AMI that is configured to allow users another way
      #   to log in.
      #
      #    </important>
      # @option options [Array<String>] :security_groups
      #   \[EC2-Classic, default VPC\] One or more security group names. For a
      #   nondefault VPC, you must use security group IDs instead.
      #
      #   Default: Amazon EC2 uses the default security group.
      # @option options [Array<String>] :security_group_ids
      #   One or more security group IDs. You can create a security group using
      #   CreateSecurityGroup.
      #
      #   Default: Amazon EC2 uses the default security group.
      # @option options [String] :user_data
      #   The user data to make available to the instance. For more information,
      #   see [Running Commands on Your Linux Instance at Launch][1] (Linux) and
      #   [Adding User Data][2] (Windows). If you are using an AWS SDK or
      #   command line tool, Base64-encoding is performed for you, and you can
      #   load the text from a file. Otherwise, you must provide Base64-encoded
      #   text.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/user-data.html
      #   [2]: http://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ec2-instance-metadata.html#instancedata-add-user-data
      # @option options [String] :instance_type
      #   The instance type. For more information, see [Instance Types][1] in
      #   the *Amazon Elastic Compute Cloud User Guide*.
      #
      #   Default: `m1.small`
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html
      # @option options [Types::Placement] :placement
      #   The placement for the instance.
      # @option options [String] :kernel_id
      #   The ID of the kernel.
      #
      #   <important markdown="1"> We recommend that you use PV-GRUB instead of kernels and RAM disks.
      #   For more information, see [ PV-GRUB][1] in the *Amazon Elastic Compute
      #   Cloud User Guide*.
      #
      #    </important>
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedkernels.html
      # @option options [String] :ramdisk_id
      #   The ID of the RAM disk.
      #
      #   <important markdown="1"> We recommend that you use PV-GRUB instead of kernels and RAM disks.
      #   For more information, see [ PV-GRUB][1] in the *Amazon Elastic Compute
      #   Cloud User Guide*.
      #
      #    </important>
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedkernels.html
      # @option options [Array<Types::BlockDeviceMapping>] :block_device_mappings
      #   The block device mapping.
      #
      #   <important markdown="1"> Supplying both a snapshot ID and an encryption value as arguments for
      #   block-device mapping results in an error. This is because only blank
      #   volumes can be encrypted on start, and these are not created from a
      #   snapshot. If a snapshot is the basis for the volume, it contains data
      #   by definition and its encryption status cannot be changed using this
      #   action.
      #
      #    </important>
      # @option options [Types::RunInstancesMonitoringEnabled] :monitoring
      #   The monitoring for the instance.
      # @option options [String] :subnet_id
      #   \[EC2-VPC\] The ID of the subnet to launch the instance into.
      # @option options [Boolean] :disable_api_termination
      #   If you set this parameter to `true`, you can\'t terminate the instance
      #   using the Amazon EC2 console, CLI, or API; otherwise, you can. If you
      #   set this parameter to `true` and then later want to be able to
      #   terminate the instance, you must first change the value of the
      #   `disableApiTermination` attribute to `false` using
      #   ModifyInstanceAttribute. Alternatively, if you set
      #   `InstanceInitiatedShutdownBehavior` to `terminate`, you can terminate
      #   the instance by running the shutdown command from the instance.
      #
      #   Default: `false`
      # @option options [String] :instance_initiated_shutdown_behavior
      #   Indicates whether an instance stops or terminates when you initiate
      #   shutdown from the instance (using the operating system command for
      #   system shutdown).
      #
      #   Default: `stop`
      # @option options [String] :private_ip_address
      #   \[EC2-VPC\] The primary IP address. You must specify a value from the
      #   IP address range of the subnet.
      #
      #   Only one private IP address can be designated as primary. Therefore,
      #   you can\'t specify this parameter if `PrivateIpAddresses.n.Primary` is
      #   set to `true` and `PrivateIpAddresses.n.PrivateIpAddress` is set to an
      #   IP address.
      #
      #   Default: We select an IP address from the IP address range of the
      #   subnet.
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
      # @option options [String] :additional_info
      #   Reserved.
      # @option options [Array<Types::InstanceNetworkInterfaceSpecification>] :network_interfaces
      #   One or more network interfaces.
      # @option options [Types::IamInstanceProfileSpecification] :iam_instance_profile
      #   The IAM instance profile.
      # @option options [Boolean] :ebs_optimized
      #   Indicates whether the instance is optimized for EBS I/O. This
      #   optimization provides dedicated throughput to Amazon EBS and an
      #   optimized configuration stack to provide optimal EBS I/O performance.
      #   This optimization isn\'t available with all instance types. Additional
      #   usage charges apply when using an EBS-optimized instance.
      #
      #   Default: `false`
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

      # @param [Hash] options ({})
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the action,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @option options [required, String] :key_name
      #   A unique name for the key pair.
      #
      #   Constraints: Up to 255 ASCII characters
      # @return [KeyPair]
      def create_key_pair(options = {})
        resp = @client.create_key_pair(options)
        KeyPair.new(
          name: resp.data.key_name,
          data: resp.data,
          client: @client
        )
      end

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

      # @param [Hash] options ({})
      # @option options [required, String] :subnet_id
      #   The ID of the subnet to associate with the network interface.
      # @option options [String] :description
      #   A description for the network interface.
      # @option options [String] :private_ip_address
      #   The primary private IP address of the network interface. If you don\'t
      #   specify an IP address, Amazon EC2 selects one for you from the subnet
      #   range. If you specify an IP address, you cannot indicate any IP
      #   addresses specified in `privateIpAddresses` as primary (only one IP
      #   address can be designated as primary).
      # @option options [Array<String>] :groups
      #   The IDs of one or more security groups.
      # @option options [Array<Types::PrivateIpAddressSpecification>] :private_ip_addresses
      #   One or more private IP addresses.
      # @option options [Integer] :secondary_private_ip_address_count
      #   The number of secondary private IP addresses to assign to a network
      #   interface. When you specify a number of secondary IP addresses, Amazon
      #   EC2 selects these IP addresses within the subnet range. You can\'t
      #   specify this option and specify more than one private IP address using
      #   `privateIpAddresses`.
      #
      #   The number of IP addresses you can assign to a network interface
      #   varies by instance type. For more information, see [Private IP
      #   Addresses Per ENI Per Instance Type][1] in the *Amazon Elastic Compute
      #   Cloud User Guide*.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-eni.html#AvailableIpPerENI
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the action,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @return [NetworkInterface]
      def create_network_interface(options = {})
        resp = @client.create_network_interface(options)
        NetworkInterface.new(
          id: resp.data.network_interface.network_interface_id,
          data: resp.data.network_interface,
          client: @client
        )
      end

      # @param [Hash] options ({})
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the action,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @option options [required, String] :group_name
      #   A name for the placement group.
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

      # @param [Hash] options ({})
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the action,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @option options [required, String] :group_name
      #   The name of the security group.
      #
      #   Constraints: Up to 255 characters in length
      #
      #   Constraints for EC2-Classic: ASCII characters
      #
      #   Constraints for EC2-VPC: a-z, A-Z, 0-9, spaces, and
      #   .\_-:/()#,@\[\]+=&amp;;\\\{\\}!$\*
      # @option options [required, String] :description
      #   A description for the security group. This is informational only.
      #
      #   Constraints: Up to 255 characters in length
      #
      #   Constraints for EC2-Classic: ASCII characters
      #
      #   Constraints for EC2-VPC: a-z, A-Z, 0-9, spaces, and
      #   .\_-:/()#,@\[\]+=&amp;;\\\{\\}!$\*
      # @option options [String] :vpc_id
      #   \[EC2-VPC\] The ID of the VPC. Required for EC2-VPC.
      # @return [SecurityGroup]
      def create_security_group(options = {})
        resp = @client.create_security_group(options)
        SecurityGroup.new(
          id: resp.data.group_id,
          client: @client
        )
      end

      # @param [Hash] options ({})
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the action,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @option options [required, String] :volume_id
      #   The ID of the EBS volume.
      # @option options [String] :description
      #   A description for the snapshot.
      # @return [Snapshot]
      def create_snapshot(options = {})
        resp = @client.create_snapshot(options)
        Snapshot.new(
          id: resp.data.snapshot_id,
          data: resp.data,
          client: @client
        )
      end

      # @param [Hash] options ({})
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the action,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @option options [required, String] :vpc_id
      #   The ID of the VPC.
      # @option options [required, String] :cidr_block
      #   The network range for the subnet, in CIDR notation. For example,
      #   `10.0.0.0/24`.
      # @option options [String] :availability_zone
      #   The Availability Zone for the subnet.
      #
      #   Default: AWS selects one for you. If you create more than one subnet
      #   in your VPC, we may not necessarily select a different zone for each
      #   subnet.
      # @return [Subnet]
      def create_subnet(options = {})
        resp = @client.create_subnet(options)
        Subnet.new(
          id: resp.data.subnet.subnet_id,
          data: resp.data.subnet,
          client: @client
        )
      end

      # @param [Hash] options ({})
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the action,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @option options [required, Array<String>] :resources
      #   The IDs of one or more resources to tag. For example, ami-1a2b3c4d.
      # @option options [required, Array<Types::Tag>] :tags
      #   One or more tags. The `value` parameter is required, but if you don\'t
      #   want the tag to have a value, specify the parameter with no value, and
      #   we set the value to an empty string.
      # @return [EmptyStructure]
      def create_tags(options = {})
        resp = @client.create_tags(options)
        resp.data
      end

      # @param [Hash] options ({})
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the action,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @option options [Integer] :size
      #   The size of the volume, in GiBs.
      #
      #   Constraints: 1-16384 for `gp2`, 4-16384 for `io1`, 500-16384 for
      #   `st1`, 500-16384 for `sc1`, and 1-1024 for `standard`. If you specify
      #   a snapshot, the volume size must be equal to or larger than the
      #   snapshot size.
      #
      #   Default: If you\'re creating the volume from a snapshot and don\'t
      #   specify a volume size, the default is the snapshot size.
      # @option options [String] :snapshot_id
      #   The snapshot from which to create the volume.
      # @option options [required, String] :availability_zone
      #   The Availability Zone in which to create the volume. Use
      #   DescribeAvailabilityZones to list the Availability Zones that are
      #   currently available to you.
      # @option options [String] :volume_type
      #   The volume type. This can be `gp2` for General Purpose SSD, `io1` for
      #   Provisioned IOPS SSD, `st1` for Throughput Optimized HDD, `sc1` for
      #   Cold HDD, or `standard` for Magnetic volumes.
      #
      #   Default: `standard`
      # @option options [Integer] :iops
      #   Only valid for Provisioned IOPS SSD volumes. The number of I/O
      #   operations per second (IOPS) to provision for the volume, with a
      #   maximum ratio of 30 IOPS/GiB.
      #
      #   Constraint: Range is 100 to 20000 for Provisioned IOPS SSD volumes
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
      # @option options [String] :kms_key_id
      #   The full ARN of the AWS Key Management Service (AWS KMS) customer
      #   master key (CMK) to use when creating the encrypted volume. This
      #   parameter is only required if you want to use a non-default CMK; if
      #   this parameter is not specified, the default CMK for EBS is used. The
      #   ARN contains the `arn:aws:kms` namespace, followed by the region of
      #   the CMK, the AWS account ID of the CMK owner, the `key` namespace, and
      #   then the CMK ID. For example,
      #   arn:aws:kms:*us-east-1*\:*012345678910*\:key/*abcd1234-a123-456a-a12b-a123b4cd56ef*.
      #   If a `KmsKeyId` is specified, the `Encrypted` flag must also be set.
      # @return [Volume]
      def create_volume(options = {})
        resp = @client.create_volume(options)
        Volume.new(
          id: resp.data.volume_id,
          data: resp.data,
          client: @client
        )
      end

      # @param [Hash] options ({})
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the action,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @option options [required, String] :cidr_block
      #   The network range for the VPC, in CIDR notation. For example,
      #   `10.0.0.0/16`.
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

      # @param [Hash] options ({})
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the action,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @option options [String] :vpc_id
      #   The ID of the requester VPC.
      # @option options [String] :peer_vpc_id
      #   The ID of the VPC with which you are creating the VPC peering
      #   connection.
      # @option options [String] :peer_owner_id
      #   The AWS account ID of the owner of the peer VPC.
      #
      #   Default: Your AWS account ID
      # @return [VpcPeeringConnection]
      def create_vpc_peering_connection(options = {})
        resp = @client.create_vpc_peering_connection(options)
        VpcPeeringConnection.new(
          id: resp.data.vpc_peering_connection.vpc_peering_connection_id,
          data: resp.data.vpc_peering_connection,
          client: @client
        )
      end

      # @param [Hash] options ({})
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the action,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @option options [required, String] :association_id
      #   The association ID representing the current association between the
      #   route table and subnet.
      # @return [EmptyStructure]
      def disassociate_route_table(options = {})
        resp = @client.disassociate_route_table(options)
        resp.data
      end

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

      # @param [Hash] options ({})
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the action,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @option options [String] :image_location
      #   The full path to your AMI manifest in Amazon S3 storage.
      # @option options [required, String] :name
      #   A name for your AMI.
      #
      #   Constraints: 3-128 alphanumeric characters, parentheses (()), square
      #   brackets (\[\]), spaces ( ), periods (.), slashes (/), dashes (-),
      #   single quotes (\'), at-signs (@), or underscores(\_)
      # @option options [String] :description
      #   A description for your AMI.
      # @option options [String] :architecture
      #   The architecture of the AMI.
      #
      #   Default: For Amazon EBS-backed AMIs, `i386`. For instance store-backed
      #   AMIs, the architecture specified in the manifest file.
      # @option options [String] :kernel_id
      #   The ID of the kernel.
      # @option options [String] :ramdisk_id
      #   The ID of the RAM disk.
      # @option options [String] :root_device_name
      #   The name of the root device (for example, `/dev/sda1`, or
      #   `/dev/xvda`).
      # @option options [Array<Types::BlockDeviceMapping>] :block_device_mappings
      #   One or more block device mapping entries.
      # @option options [String] :virtualization_type
      #   The type of virtualization.
      #
      #   Default: `paravirtual`
      # @option options [String] :sriov_net_support
      #   Set to `simple` to enable enhanced networking with the Intel 82599
      #   Virtual Function interface for the AMI and any instances that you
      #   launch from the AMI.
      #
      #   There is no way to disable `sriovNetSupport` at this time.
      #
      #   This option is supported only for HVM AMIs. Specifying this option
      #   with a PV AMI can make instances launched from the AMI unreachable.
      # @option options [Boolean] :ena_support
      #   Set to `true` to enable enhanced networking with ENA for the AMI and
      #   any instances that you launch from the AMI.
      #
      #   This option is supported only for HVM AMIs. Specifying this option
      #   with a PV AMI can make instances launched from the AMI unreachable.
      # @return [Image]
      def register_image(options = {})
        resp = @client.register_image(options)
        Image.new(
          id: resp.data.image_id,
          client: @client
        )
      end

      # @!group Associations

      # @param [Hash] options ({})
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the action,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @option options [Array<String>] :public_ips
      #   \[EC2-Classic\] One or more Elastic IP addresses.
      #
      #   Default: Describes all your Elastic IP addresses.
      # @option options [Array<String>] :allocation_ids
      #   \[EC2-VPC\] One or more allocation IDs.
      #
      #   Default: Describes all your Elastic IP addresses.
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

      # @param [Hash] options ({})
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the action,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
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
      #   * `tag`\:*key*=*value* - The key/value combination of a tag assigned
      #     to the resource.
      #
      #   * `tag-key` - The key of a tag assigned to the resource. This filter
      #     is independent of the `tag-value` filter. For example, if you use
      #     both the filter \"tag-key=Purpose\" and the filter \"tag-value=X\",
      #     you get any resources assigned both the tag key Purpose (regardless
      #     of what the tag\'s value is), and the tag value X (regardless of
      #     what the tag\'s key is). If you want to list only resources where
      #     Purpose is X, see the `tag`\:*key*=*value* filter.
      #
      #   * `tag-value` - The value of a tag assigned to the resource. This
      #     filter is independent of the `tag-key` filter.
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

      # @param [Hash] options ({})
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the action,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
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
      #   * `block-device-mapping.device-name` - The device name for the EBS
      #     volume (for example, `/dev/sdh`).
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
      #   * `root-device-name` - The name of the root device volume (for
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
      #   * `tag`\:*key*=*value* - The key/value combination of a tag assigned
      #     to the resource.
      #
      #   * `tag-key` - The key of a tag assigned to the resource. This filter
      #     is independent of the tag-value filter. For example, if you use both
      #     the filter \"tag-key=Purpose\" and the filter \"tag-value=X\", you
      #     get any resources assigned both the tag key Purpose (regardless of
      #     what the tag\'s value is), and the tag value X (regardless of what
      #     the tag\'s key is). If you want to list only resources where Purpose
      #     is X, see the `tag`\:*key*=*value* filter.
      #
      #   * `tag-value` - The value of a tag assigned to the resource. This
      #     filter is independent of the `tag-key` filter.
      #
      #   * `virtualization-type` - The virtualization type (`paravirtual` \|
      #     `hvm`).
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

      # @param [Hash] options ({})
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the action,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @option options [Array<String>] :instance_ids
      #   One or more instance IDs.
      #
      #   Default: Describes all your instances.
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
      #   * `block-device-mapping.device-name` - The device name for the EBS
      #     volume (for example, `/dev/sdh` or `xvdh`).
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
      #     unsigned integer. The high byte is an opaque internal value and
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
      #   * `ip-address` - The public IP address of the instance.
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
      #   * `monitoring-state` - Indicates whether monitoring is enabled for the
      #     instance (`disabled` \| `enabled`).
      #
      #   * `owner-id` - The AWS account ID of the instance owner.
      #
      #   * `placement-group-name` - The name of the placement group for the
      #     instance.
      #
      #   * `platform` - The platform. Use `windows` if you have Windows
      #     instances; otherwise, leave blank.
      #
      #   * `private-dns-name` - The private DNS name of the instance.
      #
      #   * `private-ip-address` - The private IP address of the instance.
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
      #     example, shows \"User Initiated \[date\]\" when you stop or
      #     terminate the instance). Similar to the state-reason-code filter.
      #
      #   * `requester-id` - The ID of the entity that launched the instance on
      #     your behalf (for example, AWS Management Console, Auto Scaling, and
      #     so on).
      #
      #   * `reservation-id` - The ID of the instance\'s reservation. A
      #     reservation ID is created any time you launch an instance. A
      #     reservation ID has a one-to-one relationship with an instance launch
      #     request, but can be associated with more than one instance if you
      #     launch multiple instances using the same launch request. For
      #     example, if you launch one instance, you\'ll get one reservation ID.
      #     If you launch ten instances using the same launch request, you\'ll
      #     also get one reservation ID.
      #
      #   * `root-device-name` - The name of the root device for the instance
      #     (for example, `/dev/sda1` or `/dev/xvda`).
      #
      #   * `root-device-type` - The type of root device that the instance uses
      #     (`ebs` \| `instance-store`).
      #
      #   * `source-dest-check` - Indicates whether the instance performs
      #     source/destination checking. A value of `true` means that checking
      #     is enabled, and `false` means checking is disabled. The value must
      #     be `false` for the instance to perform network address translation
      #     (NAT) in your VPC.
      #
      #   * `spot-instance-request-id` - The ID of the Spot instance request.
      #
      #   * `state-reason-code` - The reason code for the state change.
      #
      #   * `state-reason-message` - A message that describes the state change.
      #
      #   * `subnet-id` - The ID of the subnet for the instance.
      #
      #   * `tag`\:*key*=*value* - The key/value combination of a tag assigned
      #     to the resource, where `tag`\:*key* is the tag\'s key.
      #
      #   * `tag-key` - The key of a tag assigned to the resource. This filter
      #     is independent of the `tag-value` filter. For example, if you use
      #     both the filter \"tag-key=Purpose\" and the filter \"tag-value=X\",
      #     you get any resources assigned both the tag key Purpose (regardless
      #     of what the tag\'s value is), and the tag value X (regardless of
      #     what the tag\'s key is). If you want to list only resources where
      #     Purpose is X, see the `tag`\:*key*=*value* filter.
      #
      #   * `tag-value` - The value of a tag assigned to the resource. This
      #     filter is independent of the `tag-key` filter.
      #
      #   * `tenancy` - The tenancy of an instance (`dedicated` \| `default` \|
      #     `host`).
      #
      #   * `virtualization-type` - The virtualization type of the instance
      #     (`paravirtual` \| `hvm`).
      #
      #   * `vpc-id` - The ID of the VPC that the instance is running in.
      #
      #   * `network-interface.description` - The description of the network
      #     interface.
      #
      #   * `network-interface.subnet-id` - The ID of the subnet for the network
      #     interface.
      #
      #   * `network-interface.vpc-id` - The ID of the VPC for the network
      #     interface.
      #
      #   * `network-interface.network-interface-id` - The ID of the network
      #     interface.
      #
      #   * `network-interface.owner-id` - The ID of the owner of the network
      #     interface.
      #
      #   * `network-interface.availability-zone` - The Availability Zone for
      #     the network interface.
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
      #   * `network-interface.mac-address` - The MAC address of the network
      #     interface.
      #
      #   * `network-interface.private-dns-name` - The private DNS name of the
      #     network interface.
      #
      #   * `network-interface.source-dest-check` - Whether the network
      #     interface performs source/destination checking. A value of `true`
      #     means checking is enabled, and `false` means checking is disabled.
      #     The value must be `false` for the network interface to perform
      #     network address translation (NAT) in your VPC.
      #
      #   * `network-interface.group-id` - The ID of a security group associated
      #     with the network interface.
      #
      #   * `network-interface.group-name` - The name of a security group
      #     associated with the network interface.
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
      #   * `network-interface.addresses.private-ip-address` - The private IP
      #     address associated with the network interface.
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
      #   * `network-interface.addresses.primary` - Specifies whether the IP
      #     address of the network interface is the primary private IP address.
      #
      #   * `network-interface.addresses.association.public-ip` - The ID of the
      #     association of an Elastic IP address with a network interface.
      #
      #   * `network-interface.addresses.association.ip-owner-id` - The owner ID
      #     of the private IP address associated with the network interface.
      #
      #   * `association.public-ip` - The address of the Elastic IP address
      #     bound to the network interface.
      #
      #   * `association.ip-owner-id` - The owner of the Elastic IP address
      #     associated with the network interface.
      #
      #   * `association.allocation-id` - The allocation ID returned when you
      #     allocated the Elastic IP address for your network interface.
      #
      #   * `association.association-id` - The association ID returned when the
      #     network interface was associated with an IP address.
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

      # @param [Hash] options ({})
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the action,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @option options [Array<String>] :internet_gateway_ids
      #   One or more Internet gateway IDs.
      #
      #   Default: Describes all your Internet gateways.
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
      #   * `tag`\:*key*=*value* - The key/value combination of a tag assigned
      #     to the resource.
      #
      #   * `tag-key` - The key of a tag assigned to the resource. This filter
      #     is independent of the `tag-value` filter. For example, if you use
      #     both the filter \"tag-key=Purpose\" and the filter \"tag-value=X\",
      #     you get any resources assigned both the tag key Purpose (regardless
      #     of what the tag\'s value is), and the tag value X (regardless of
      #     what the tag\'s key is). If you want to list only resources where
      #     Purpose is X, see the `tag`\:*key*=*value* filter.
      #
      #   * `tag-value` - The value of a tag assigned to the resource. This
      #     filter is independent of the `tag-key` filter.
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

      # @param [Hash] options ({})
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the action,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @option options [Array<String>] :key_names
      #   One or more key pair names.
      #
      #   Default: Describes all your key pairs.
      # @option options [Array<Types::Filter>] :filters
      #   One or more filters.
      #
      #   * `fingerprint` - The fingerprint of the key pair.
      #
      #   * `key-name` - The name of the key pair.
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

      # @param [Hash] options ({})
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the action,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @option options [Array<String>] :network_acl_ids
      #   One or more network ACL IDs.
      #
      #   Default: Describes all your network ACLs.
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
      #   * `entry.cidr` - The CIDR range specified in the entry.
      #
      #   * `entry.egress` - Indicates whether the entry applies to egress
      #     traffic.
      #
      #   * `entry.icmp.code` - The ICMP code specified in the entry, if any.
      #
      #   * `entry.icmp.type` - The ICMP type specified in the entry, if any.
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
      #     in the ACL\'s set of entries.
      #
      #   * `network-acl-id` - The ID of the network ACL.
      #
      #   * `tag`\:*key*=*value* - The key/value combination of a tag assigned
      #     to the resource.
      #
      #   * `tag-key` - The key of a tag assigned to the resource. This filter
      #     is independent of the `tag-value` filter. For example, if you use
      #     both the filter \"tag-key=Purpose\" and the filter \"tag-value=X\",
      #     you get any resources assigned both the tag key Purpose (regardless
      #     of what the tag\'s value is), and the tag value X (regardless of
      #     what the tag\'s key is). If you want to list only resources where
      #     Purpose is X, see the `tag`\:*key*=*value* filter.
      #
      #   * `tag-value` - The value of a tag assigned to the resource. This
      #     filter is independent of the `tag-key` filter.
      #
      #   * `vpc-id` - The ID of the VPC for the network ACL.
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

      # @param [Hash] options ({})
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the action,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @option options [Array<String>] :network_interface_ids
      #   One or more network interface IDs.
      #
      #   Default: Describes all your network interfaces.
      # @option options [Array<Types::Filter>] :filters
      #   One or more filters.
      #
      #   * `addresses.private-ip-address` - The private IP addresses associated
      #     with the network interface.
      #
      #   * `addresses.primary` - Whether the private IP address is the primary
      #     IP address associated with the network interface.
      #
      #   * `addresses.association.public-ip` - The association ID returned when
      #     the network interface was associated with the Elastic IP address.
      #
      #   * `addresses.association.owner-id` - The owner ID of the addresses
      #     associated with the network interface.
      #
      #   * `association.association-id` - The association ID returned when the
      #     network interface was associated with an IP address.
      #
      #   * `association.allocation-id` - The allocation ID returned when you
      #     allocated the Elastic IP address for your network interface.
      #
      #   * `association.ip-owner-id` - The owner of the Elastic IP address
      #     associated with the network interface.
      #
      #   * `association.public-ip` - The address of the Elastic IP address
      #     bound to the network interface.
      #
      #   * `association.public-dns-name` - The public DNS name for the network
      #     interface.
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
      #   * `mac-address` - The MAC address of the network interface.
      #
      #   * `network-interface-id` - The ID of the network interface.
      #
      #   * `owner-id` - The AWS account ID of the network interface owner.
      #
      #   * `private-ip-address` - The private IP address or addresses of the
      #     network interface.
      #
      #   * `private-dns-name` - The private DNS name of the network interface.
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
      #   * `tag`\:*key*=*value* - The key/value combination of a tag assigned
      #     to the resource.
      #
      #   * `tag-key` - The key of a tag assigned to the resource. This filter
      #     is independent of the `tag-value` filter. For example, if you use
      #     both the filter \"tag-key=Purpose\" and the filter \"tag-value=X\",
      #     you get any resources assigned both the tag key Purpose (regardless
      #     of what the tag\'s value is), and the tag value X (regardless of
      #     what the tag\'s key is). If you want to list only resources where
      #     Purpose is X, see the `tag`\:*key*=*value* filter.
      #
      #   * `tag-value` - The value of a tag assigned to the resource. This
      #     filter is independent of the `tag-key` filter.
      #
      #   * `vpc-id` - The ID of the VPC for the network interface.
      # @return [NetworkInterface::Collection]
      def network_interfaces(options = {})
        batches = Enumerator.new do |y|
          batch = []
          resp = @client.describe_network_interfaces(options)
          resp.data.network_interfaces.each do |n|
            batch << NetworkInterface.new(
              id: n.network_interface_id,
              data: n,
              client: @client
            )
          end
          y.yield(batch)
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

      # @param [Hash] options ({})
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
      # @option options [Array<Types::Filter>] :filters
      #   One or more filters.
      #
      #   * `group-name` - The name of the placement group.
      #
      #   * `state` - The state of the placement group (`pending` \| `available`
      #     \| `deleting` \| `deleted`).
      #
      #   * `strategy` - The strategy of the placement group (`cluster`).
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

      # @param [Hash] options ({})
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the action,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @option options [Array<String>] :route_table_ids
      #   One or more route table IDs.
      #
      #   Default: Describes all your route tables.
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
      #     route table for the VPC (`true` \| `false`).
      #
      #   * `route-table-id` - The ID of the route table.
      #
      #   * `route.destination-cidr-block` - The CIDR range specified in a route
      #     in the table.
      #
      #   * `route.destination-prefix-list-id` - The ID (prefix) of the AWS
      #     service specified in a route in the table.
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
      #     `blackhole`). The blackhole state indicates that the route\'s target
      #     isn\'t available (for example, the specified gateway isn\'t attached
      #     to the VPC, the specified NAT instance has been terminated, and so
      #     on).
      #
      #   * `route.vpc-peering-connection-id` - The ID of a VPC peering
      #     connection specified in a route in the table.
      #
      #   * `tag`\:*key*=*value* - The key/value combination of a tag assigned
      #     to the resource.
      #
      #   * `tag-key` - The key of a tag assigned to the resource. This filter
      #     is independent of the `tag-value` filter. For example, if you use
      #     both the filter \"tag-key=Purpose\" and the filter \"tag-value=X\",
      #     you get any resources assigned both the tag key Purpose (regardless
      #     of what the tag\'s value is), and the tag value X (regardless of
      #     what the tag\'s key is). If you want to list only resources where
      #     Purpose is X, see the `tag`\:*key*=*value* filter.
      #
      #   * `tag-value` - The value of a tag assigned to the resource. This
      #     filter is independent of the `tag-key` filter.
      #
      #   * `vpc-id` - The ID of the VPC for the route table.
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

      # @param [Hash] options ({})
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the action,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @option options [Array<String>] :group_names
      #   \[EC2-Classic and default VPC only\] One or more security group names.
      #   You can specify either the security group name or the security group
      #   ID. For security groups in a nondefault VPC, use the `group-name`
      #   filter to describe security groups by name.
      #
      #   Default: Describes all your security groups.
      # @option options [Array<String>] :group_ids
      #   One or more security group IDs. Required for security groups in a
      #   nondefault VPC.
      #
      #   Default: Describes all your security groups.
      # @option options [Array<Types::Filter>] :filters
      #   One or more filters. If using multiple filters for rules, the results
      #   include security groups for which any combination of rules - not
      #   necessarily a single rule - match all filters.
      #
      #   * `description` - The description of the security group.
      #
      #   * `egress.ip-permission.prefix-list-id` - The ID (prefix) of the AWS
      #     service to which the security group allows access.
      #
      #   * `group-id` - The ID of the security group.
      #
      #   * `group-name` - The name of the security group.
      #
      #   * `ip-permission.cidr` - A CIDR range that has been granted
      #     permission.
      #
      #   * `ip-permission.from-port` - The start of port range for the TCP and
      #     UDP protocols, or an ICMP type number.
      #
      #   * `ip-permission.group-id` - The ID of a security group that has been
      #     granted permission.
      #
      #   * `ip-permission.group-name` - The name of a security group that has
      #     been granted permission.
      #
      #   * `ip-permission.protocol` - The IP protocol for the permission (`tcp`
      #     \| `udp` \| `icmp` or a protocol number).
      #
      #   * `ip-permission.to-port` - The end of port range for the TCP and UDP
      #     protocols, or an ICMP code.
      #
      #   * `ip-permission.user-id` - The ID of an AWS account that has been
      #     granted permission.
      #
      #   * `owner-id` - The AWS account ID of the owner of the security group.
      #
      #   * `tag-key` - The key of a tag assigned to the security group.
      #
      #   * `tag-value` - The value of a tag assigned to the security group.
      #
      #   * `vpc-id` - The ID of the VPC specified when the security group was
      #     created.
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

      # @param [Hash] options ({})
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the action,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @option options [Array<String>] :snapshot_ids
      #   One or more snapshot IDs.
      #
      #   Default: Describes snapshots for which you have launch permissions.
      # @option options [Array<String>] :owner_ids
      #   Returns the snapshots owned by the specified owner. Multiple owners
      #   can be specified.
      # @option options [Array<String>] :restorable_by_user_ids
      #   One or more AWS accounts IDs that can create volumes from the
      #   snapshot.
      # @option options [Array<Types::Filter>] :filters
      #   One or more filters.
      #
      #   * `description` - A description of the snapshot.
      #
      #   * `owner-alias` - Value from an Amazon-maintained list (`amazon` \|
      #     `aws-marketplace` \| `microsoft`) of snapshot owners. Not to be
      #     confused with the user-configured AWS account alias, which is set
      #     from the IAM consolew.
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
      #   * `tag`\:*key*=*value* - The key/value combination of a tag assigned
      #     to the resource.
      #
      #   * `tag-key` - The key of a tag assigned to the resource. This filter
      #     is independent of the `tag-value` filter. For example, if you use
      #     both the filter \"tag-key=Purpose\" and the filter \"tag-value=X\",
      #     you get any resources assigned both the tag key Purpose (regardless
      #     of what the tag\'s value is), and the tag value X (regardless of
      #     what the tag\'s key is). If you want to list only resources where
      #     Purpose is X, see the `tag`\:*key*=*value* filter.
      #
      #   * `tag-value` - The value of a tag assigned to the resource. This
      #     filter is independent of the `tag-key` filter.
      #
      #   * `volume-id` - The ID of the volume the snapshot is for.
      #
      #   * `volume-size` - The size of the volume, in GiB.
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

      # @param [Hash] options ({})
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the action,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @option options [Array<String>] :subnet_ids
      #   One or more subnet IDs.
      #
      #   Default: Describes all your subnets.
      # @option options [Array<Types::Filter>] :filters
      #   One or more filters.
      #
      #   * `availabilityZone` - The Availability Zone for the subnet. You can
      #     also use `availability-zone` as the filter name.
      #
      #   * `available-ip-address-count` - The number of IP addresses in the
      #     subnet that are available.
      #
      #   * `cidrBlock` - The CIDR block of the subnet. The CIDR block you
      #     specify must exactly match the subnet\'s CIDR block for information
      #     to be returned for the subnet. You can also use `cidr` or
      #     `cidr-block` as the filter names.
      #
      #   * `defaultForAz` - Indicates whether this is the default subnet for
      #     the Availability Zone. You can also use `default-for-az` as the
      #     filter name.
      #
      #   * `state` - The state of the subnet (`pending` \| `available`).
      #
      #   * `subnet-id` - The ID of the subnet.
      #
      #   * `tag`\:*key*=*value* - The key/value combination of a tag assigned
      #     to the resource.
      #
      #   * `tag-key` - The key of a tag assigned to the resource. This filter
      #     is independent of the `tag-value` filter. For example, if you use
      #     both the filter \"tag-key=Purpose\" and the filter \"tag-value=X\",
      #     you get any resources assigned both the tag key Purpose (regardless
      #     of what the tag\'s value is), and the tag value X (regardless of
      #     what the tag\'s key is). If you want to list only resources where
      #     Purpose is X, see the `tag`\:*key*=*value* filter.
      #
      #   * `tag-value` - The value of a tag assigned to the resource. This
      #     filter is independent of the `tag-key` filter.
      #
      #   * `vpc-id` - The ID of the VPC for the subnet.
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

      # @param [Hash] options ({})
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the action,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @option options [Array<String>] :volume_ids
      #   One or more volume IDs.
      # @option options [Array<Types::Filter>] :filters
      #   One or more filters.
      #
      #   * `attachment.attach-time` - The time stamp when the attachment
      #     initiated.
      #
      #   * `attachment.delete-on-termination` - Whether the volume is deleted
      #     on instance termination.
      #
      #   * `attachment.device` - The device name that is exposed to the
      #     instance (for example, `/dev/sda1`).
      #
      #   * `attachment.instance-id` - The ID of the instance the volume is
      #     attached to.
      #
      #   * `attachment.status` - The attachment state (`attaching` \|
      #     `attached` \| `detaching` \| `detached`).
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
      #   * `tag`\:*key*=*value* - The key/value combination of a tag assigned
      #     to the resource.
      #
      #   * `tag-key` - The key of a tag assigned to the resource. This filter
      #     is independent of the `tag-value` filter. For example, if you use
      #     both the filter \"tag-key=Purpose\" and the filter \"tag-value=X\",
      #     you get any resources assigned both the tag key Purpose (regardless
      #     of what the tag\'s value is), and the tag value X (regardless of
      #     what the tag\'s key is). If you want to list only resources where
      #     Purpose is X, see the `tag`\:*key*=*value* filter.
      #
      #   * `tag-value` - The value of a tag assigned to the resource. This
      #     filter is independent of the `tag-key` filter.
      #
      #   * `volume-id` - The volume ID.
      #
      #   * `volume-type` - The Amazon EBS volume type. This can be `gp2` for
      #     General Purpose SSD, `io1` for Provisioned IOPS SSD, `st1` for
      #     Throughput Optimized HDD, `sc1` for Cold HDD, or `standard` for
      #     Magnetic volumes.
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

      # @param [Hash] options ({})
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the action,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @option options [Array<String>] :public_ips
      #   \[EC2-Classic\] One or more Elastic IP addresses.
      #
      #   Default: Describes all your Elastic IP addresses.
      # @option options [Array<String>] :allocation_ids
      #   \[EC2-VPC\] One or more allocation IDs.
      #
      #   Default: Describes all your Elastic IP addresses.
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

      # @param [Hash] options ({})
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the action,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @option options [Array<String>] :vpc_peering_connection_ids
      #   One or more VPC peering connection IDs.
      #
      #   Default: Describes all your VPC peering connections.
      # @option options [Array<Types::Filter>] :filters
      #   One or more filters.
      #
      #   * `accepter-vpc-info.cidr-block` - The CIDR block of the peer VPC.
      #
      #   * `accepter-vpc-info.owner-id` - The AWS account ID of the owner of
      #     the peer VPC.
      #
      #   * `accepter-vpc-info.vpc-id` - The ID of the peer VPC.
      #
      #   * `expiration-time` - The expiration date and time for the VPC peering
      #     connection.
      #
      #   * `requester-vpc-info.cidr-block` - The CIDR block of the requester\'s
      #     VPC.
      #
      #   * `requester-vpc-info.owner-id` - The AWS account ID of the owner of
      #     the requester VPC.
      #
      #   * `requester-vpc-info.vpc-id` - The ID of the requester VPC.
      #
      #   * `status-code` - The status of the VPC peering connection
      #     (`pending-acceptance` \| `failed` \| `expired` \| `provisioning` \|
      #     `active` \| `deleted` \| `rejected`).
      #
      #   * `status-message` - A message that provides more information about
      #     the status of the VPC peering connection, if applicable.
      #
      #   * `tag`\:*key*=*value* - The key/value combination of a tag assigned
      #     to the resource.
      #
      #   * `tag-key` - The key of a tag assigned to the resource. This filter
      #     is independent of the `tag-value` filter. For example, if you use
      #     both the filter \"tag-key=Purpose\" and the filter \"tag-value=X\",
      #     you get any resources assigned both the tag key Purpose (regardless
      #     of what the tag\'s value is), and the tag value X (regardless of
      #     what the tag\'s key is). If you want to list only resources where
      #     Purpose is X, see the `tag`\:*key*=*value* filter.
      #
      #   * `tag-value` - The value of a tag assigned to the resource. This
      #     filter is independent of the `tag-key` filter.
      #
      #   * `vpc-peering-connection-id` - The ID of the VPC peering connection.
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

      # @param [Hash] options ({})
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the action,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @option options [Array<String>] :vpc_ids
      #   One or more VPC IDs.
      #
      #   Default: Describes all your VPCs.
      # @option options [Array<Types::Filter>] :filters
      #   One or more filters.
      #
      #   * `cidr` - The CIDR block of the VPC. The CIDR block you specify must
      #     exactly match the VPC\'s CIDR block for information to be returned
      #     for the VPC. Must contain the slash followed by one or two digits
      #     (for example, `/28`).
      #
      #   * `dhcp-options-id` - The ID of a set of DHCP options.
      #
      #   * `isDefault` - Indicates whether the VPC is the default VPC.
      #
      #   * `state` - The state of the VPC (`pending` \| `available`).
      #
      #   * `tag`\:*key*=*value* - The key/value combination of a tag assigned
      #     to the resource.
      #
      #   * `tag-key` - The key of a tag assigned to the resource. This filter
      #     is independent of the `tag-value` filter. For example, if you use
      #     both the filter \"tag-key=Purpose\" and the filter \"tag-value=X\",
      #     you get any resources assigned both the tag key Purpose (regardless
      #     of what the tag\'s value is), and the tag value X (regardless of
      #     what the tag\'s key is). If you want to list only resources where
      #     Purpose is X, see the `tag`\:*key*=*value* filter.
      #
      #   * `tag-value` - The value of a tag assigned to the resource. This
      #     filter is independent of the `tag-key` filter.
      #
      #   * `vpc-id` - The ID of the VPC.
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
end
