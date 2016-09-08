# WARNING ABOUT GENERATED CODE
#
# The AWS SDK for Ruby is largely generated from JSON service definitions. Edits
# made against this file will be lost the next time the SDK updates.  To resolve
# an issue with generated code, a change is likely needed in the generator or
# in one of the service JSON definitions.
#
# * https://github.com/aws/aws-sdk-ruby/tree/master/gems/aws-sdk-code-generator
# * https://github.com/aws/aws-sdk-ruby/tree/master/apis
#
# Open a GitHub issue if you have questions before making changes.  Pull
# requests against this file will be automatically closed.
#
# WARNING ABOUT GENERATED CODE
module Aws
  module EC2
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
      end

      # @!group Read-Only Attributes

      # @return [String]
      def id
        @id
      end
      alias :subnet_id :id

      # The current state of the subnet.
      # @return [String]
      def state
        data.state
      end

      # The ID of the VPC the subnet is in.
      # @return [String]
      def vpc_id
        data.vpc_id
      end

      # The CIDR block assigned to the subnet.
      # @return [String]
      def cidr_block
        data.cidr_block
      end

      # The number of unused IP addresses in the subnet. Note that the IP
      # addresses for any stopped instances are considered unavailable.
      # @return [Integer]
      def available_ip_address_count
        data.available_ip_address_count
      end

      # The Availability Zone of the subnet.
      # @return [String]
      def availability_zone
        data.availability_zone
      end

      # Indicates whether this is the default subnet for the Availability
      # Zone.
      # @return [Boolean]
      def default_for_az
        data.default_for_az
      end

      # Indicates whether instances launched in this subnet receive a public
      # IP address.
      # @return [Boolean]
      def map_public_ip_on_launch
        data.map_public_ip_on_launch
      end

      # Any tags assigned to the subnet.
      # @return [Array<Types::Tag>]
      def tags
        data.tags
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

      # @!group Actions

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

      # @param [Hash] options ({})
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
        options = options.merge(subnet_id: @id)
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
      # @option options [required, Array<Types::Tag>] :tags
      #   One or more tags. The `value` parameter is required, but if you don\'t
      #   want the tag to have a value, specify the parameter with no value, and
      #   we set the value to an empty string.
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
      # @return [NetworkInterface::Collection]
      def network_interfaces(options = {})
        batches = Enumerator.new do |y|
          batch = []
          options = Aws::Util.deep_merge(options, filters: [{
            name: "subnet-id",
            values: [@id]
          }])
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

      # @return [Vpc, nil]
      def vpc
        if data.vpc_id
          Vpc.new(
            id: data.vpc_id,
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

      class Collection

        include Aws::Resources::Collection

        # @return [Enumerator<Subnet>]
        def each(&block)
          enum = super
          enum.each(&block) if block
          enum
        end

      end
    end
  end
end
