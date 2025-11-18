# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
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

    # The AZ ID of the subnet.
    # @return [String]
    def availability_zone_id
      data[:availability_zone_id]
    end

    # Indicates the device position for local network interfaces in this
    # subnet. For example, `1` indicates local network interfaces in this
    # subnet are the secondary network interface (eth1).
    # @return [Integer]
    def enable_lni_at_device_index
      data[:enable_lni_at_device_index]
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

    # The ID of the Amazon Web Services account that owns the subnet.
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

    # Indicates whether DNS queries made to the Amazon-provided DNS Resolver
    # in this subnet should return synthetic IPv6 addresses for IPv4-only
    # destinations.
    # @return [Boolean]
    def enable_dns_64
      data[:enable_dns_64]
    end

    # Indicates whether this is an IPv6 only subnet.
    # @return [Boolean]
    def ipv_6_native
      data[:ipv_6_native]
    end

    # The type of hostnames to assign to instances in the subnet at launch.
    # An instance hostname is based on the IPv4 address or ID of the
    # instance.
    # @return [Types::PrivateDnsNameOptionsOnLaunch]
    def private_dns_name_options_on_launch
      data[:private_dns_name_options_on_launch]
    end

    # The state of VPC Block Public Access (BPA).
    # @return [Types::BlockPublicAccessStates]
    def block_public_access_states
      data[:block_public_access_states]
    end

    # Indicates if this is a subnet used with Amazon Elastic VMware Service
    # (EVS). Possible values are `Elastic VMware Service` or no value. For
    # more information about Amazon EVS, see [ *Amazon Elastic VMware
    # Service API Reference* ][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/evs/latest/APIReference/Welcome.html
    # @return [String]
    def type
      data[:type]
    end

    # The current state of the subnet.
    #
    # * `failed`: The underlying infrastructure to support the subnet failed
    #   to provision as expected.
    #
    # * `failed-insufficient-capacity`: The underlying infrastructure to
    #   support the subnet failed to provision due to a shortage of EC2
    #   instance capacity.
    # @return [String]
    def state
      data[:state]
    end

    # The ID of the VPC the subnet is in.
    # @return [String]
    def vpc_id
      data[:vpc_id]
    end

    # The IPv4 CIDR block assigned to the subnet.
    # @return [String]
    def cidr_block
      data[:cidr_block]
    end

    # The number of unused private IPv4 addresses in the subnet. The IPv4
    # addresses for any stopped instances are considered unavailable.
    # @return [Integer]
    def available_ip_address_count
      data[:available_ip_address_count]
    end

    # The Availability Zone of the subnet.
    # @return [String]
    def availability_zone
      data[:availability_zone]
    end

    # Indicates whether this is the default subnet for the Availability
    # Zone.
    # @return [Boolean]
    def default_for_az
      data[:default_for_az]
    end

    # Indicates whether instances launched in this subnet receive a public
    # IPv4 address.
    #
    # Amazon Web Services charges for all public IPv4 addresses, including
    # public IPv4 addresses associated with running instances and Elastic IP
    # addresses. For more information, see the *Public IPv4 Address* tab on
    # the [Amazon VPC pricing page][1].
    #
    #
    #
    # [1]: http://aws.amazon.com/vpc/pricing/
    # @return [Boolean]
    def map_public_ip_on_launch
      data[:map_public_ip_on_launch]
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
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.describe_subnets(subnet_ids: [@id])
      end
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
      Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        Aws::Waiters::Waiter.new(options).wait({})
      end
    end

    # @!group Actions

    # @example Request syntax with placeholder values
    #
    #   instance = subnet.create_instances({
    #     block_device_mappings: [
    #       {
    #         ebs: {
    #           delete_on_termination: false,
    #           iops: 1,
    #           snapshot_id: "SnapshotId",
    #           volume_size: 1,
    #           volume_type: "standard", # accepts standard, io1, io2, gp2, sc1, st1, gp3
    #           kms_key_id: "String",
    #           throughput: 1,
    #           outpost_arn: "String",
    #           availability_zone: "String",
    #           encrypted: false,
    #           volume_initialization_rate: 1,
    #           availability_zone_id: "String",
    #         },
    #         no_device: "String",
    #         device_name: "String",
    #         virtual_name: "String",
    #       },
    #     ],
    #     image_id: "ImageId",
    #     instance_type: "a1.medium", # accepts a1.medium, a1.large, a1.xlarge, a1.2xlarge, a1.4xlarge, a1.metal, c1.medium, c1.xlarge, c3.large, c3.xlarge, c3.2xlarge, c3.4xlarge, c3.8xlarge, c4.large, c4.xlarge, c4.2xlarge, c4.4xlarge, c4.8xlarge, c5.large, c5.xlarge, c5.2xlarge, c5.4xlarge, c5.9xlarge, c5.12xlarge, c5.18xlarge, c5.24xlarge, c5.metal, c5a.large, c5a.xlarge, c5a.2xlarge, c5a.4xlarge, c5a.8xlarge, c5a.12xlarge, c5a.16xlarge, c5a.24xlarge, c5ad.large, c5ad.xlarge, c5ad.2xlarge, c5ad.4xlarge, c5ad.8xlarge, c5ad.12xlarge, c5ad.16xlarge, c5ad.24xlarge, c5d.large, c5d.xlarge, c5d.2xlarge, c5d.4xlarge, c5d.9xlarge, c5d.12xlarge, c5d.18xlarge, c5d.24xlarge, c5d.metal, c5n.large, c5n.xlarge, c5n.2xlarge, c5n.4xlarge, c5n.9xlarge, c5n.18xlarge, c5n.metal, c6g.medium, c6g.large, c6g.xlarge, c6g.2xlarge, c6g.4xlarge, c6g.8xlarge, c6g.12xlarge, c6g.16xlarge, c6g.metal, c6gd.medium, c6gd.large, c6gd.xlarge, c6gd.2xlarge, c6gd.4xlarge, c6gd.8xlarge, c6gd.12xlarge, c6gd.16xlarge, c6gd.metal, c6gn.medium, c6gn.large, c6gn.xlarge, c6gn.2xlarge, c6gn.4xlarge, c6gn.8xlarge, c6gn.12xlarge, c6gn.16xlarge, c6i.large, c6i.xlarge, c6i.2xlarge, c6i.4xlarge, c6i.8xlarge, c6i.12xlarge, c6i.16xlarge, c6i.24xlarge, c6i.32xlarge, c6i.metal, cc1.4xlarge, cc2.8xlarge, cg1.4xlarge, cr1.8xlarge, d2.xlarge, d2.2xlarge, d2.4xlarge, d2.8xlarge, d3.xlarge, d3.2xlarge, d3.4xlarge, d3.8xlarge, d3en.xlarge, d3en.2xlarge, d3en.4xlarge, d3en.6xlarge, d3en.8xlarge, d3en.12xlarge, dl1.24xlarge, f1.2xlarge, f1.4xlarge, f1.16xlarge, g2.2xlarge, g2.8xlarge, g3.4xlarge, g3.8xlarge, g3.16xlarge, g3s.xlarge, g4ad.xlarge, g4ad.2xlarge, g4ad.4xlarge, g4ad.8xlarge, g4ad.16xlarge, g4dn.xlarge, g4dn.2xlarge, g4dn.4xlarge, g4dn.8xlarge, g4dn.12xlarge, g4dn.16xlarge, g4dn.metal, g5.xlarge, g5.2xlarge, g5.4xlarge, g5.8xlarge, g5.12xlarge, g5.16xlarge, g5.24xlarge, g5.48xlarge, g5g.xlarge, g5g.2xlarge, g5g.4xlarge, g5g.8xlarge, g5g.16xlarge, g5g.metal, hi1.4xlarge, hpc6a.48xlarge, hs1.8xlarge, h1.2xlarge, h1.4xlarge, h1.8xlarge, h1.16xlarge, i2.xlarge, i2.2xlarge, i2.4xlarge, i2.8xlarge, i3.large, i3.xlarge, i3.2xlarge, i3.4xlarge, i3.8xlarge, i3.16xlarge, i3.metal, i3en.large, i3en.xlarge, i3en.2xlarge, i3en.3xlarge, i3en.6xlarge, i3en.12xlarge, i3en.24xlarge, i3en.metal, im4gn.large, im4gn.xlarge, im4gn.2xlarge, im4gn.4xlarge, im4gn.8xlarge, im4gn.16xlarge, inf1.xlarge, inf1.2xlarge, inf1.6xlarge, inf1.24xlarge, is4gen.medium, is4gen.large, is4gen.xlarge, is4gen.2xlarge, is4gen.4xlarge, is4gen.8xlarge, m1.small, m1.medium, m1.large, m1.xlarge, m2.xlarge, m2.2xlarge, m2.4xlarge, m3.medium, m3.large, m3.xlarge, m3.2xlarge, m4.large, m4.xlarge, m4.2xlarge, m4.4xlarge, m4.10xlarge, m4.16xlarge, m5.large, m5.xlarge, m5.2xlarge, m5.4xlarge, m5.8xlarge, m5.12xlarge, m5.16xlarge, m5.24xlarge, m5.metal, m5a.large, m5a.xlarge, m5a.2xlarge, m5a.4xlarge, m5a.8xlarge, m5a.12xlarge, m5a.16xlarge, m5a.24xlarge, m5ad.large, m5ad.xlarge, m5ad.2xlarge, m5ad.4xlarge, m5ad.8xlarge, m5ad.12xlarge, m5ad.16xlarge, m5ad.24xlarge, m5d.large, m5d.xlarge, m5d.2xlarge, m5d.4xlarge, m5d.8xlarge, m5d.12xlarge, m5d.16xlarge, m5d.24xlarge, m5d.metal, m5dn.large, m5dn.xlarge, m5dn.2xlarge, m5dn.4xlarge, m5dn.8xlarge, m5dn.12xlarge, m5dn.16xlarge, m5dn.24xlarge, m5dn.metal, m5n.large, m5n.xlarge, m5n.2xlarge, m5n.4xlarge, m5n.8xlarge, m5n.12xlarge, m5n.16xlarge, m5n.24xlarge, m5n.metal, m5zn.large, m5zn.xlarge, m5zn.2xlarge, m5zn.3xlarge, m5zn.6xlarge, m5zn.12xlarge, m5zn.metal, m6a.large, m6a.xlarge, m6a.2xlarge, m6a.4xlarge, m6a.8xlarge, m6a.12xlarge, m6a.16xlarge, m6a.24xlarge, m6a.32xlarge, m6a.48xlarge, m6g.metal, m6g.medium, m6g.large, m6g.xlarge, m6g.2xlarge, m6g.4xlarge, m6g.8xlarge, m6g.12xlarge, m6g.16xlarge, m6gd.metal, m6gd.medium, m6gd.large, m6gd.xlarge, m6gd.2xlarge, m6gd.4xlarge, m6gd.8xlarge, m6gd.12xlarge, m6gd.16xlarge, m6i.large, m6i.xlarge, m6i.2xlarge, m6i.4xlarge, m6i.8xlarge, m6i.12xlarge, m6i.16xlarge, m6i.24xlarge, m6i.32xlarge, m6i.metal, mac1.metal, p2.xlarge, p2.8xlarge, p2.16xlarge, p3.2xlarge, p3.8xlarge, p3.16xlarge, p3dn.24xlarge, p4d.24xlarge, r3.large, r3.xlarge, r3.2xlarge, r3.4xlarge, r3.8xlarge, r4.large, r4.xlarge, r4.2xlarge, r4.4xlarge, r4.8xlarge, r4.16xlarge, r5.large, r5.xlarge, r5.2xlarge, r5.4xlarge, r5.8xlarge, r5.12xlarge, r5.16xlarge, r5.24xlarge, r5.metal, r5a.large, r5a.xlarge, r5a.2xlarge, r5a.4xlarge, r5a.8xlarge, r5a.12xlarge, r5a.16xlarge, r5a.24xlarge, r5ad.large, r5ad.xlarge, r5ad.2xlarge, r5ad.4xlarge, r5ad.8xlarge, r5ad.12xlarge, r5ad.16xlarge, r5ad.24xlarge, r5b.large, r5b.xlarge, r5b.2xlarge, r5b.4xlarge, r5b.8xlarge, r5b.12xlarge, r5b.16xlarge, r5b.24xlarge, r5b.metal, r5d.large, r5d.xlarge, r5d.2xlarge, r5d.4xlarge, r5d.8xlarge, r5d.12xlarge, r5d.16xlarge, r5d.24xlarge, r5d.metal, r5dn.large, r5dn.xlarge, r5dn.2xlarge, r5dn.4xlarge, r5dn.8xlarge, r5dn.12xlarge, r5dn.16xlarge, r5dn.24xlarge, r5dn.metal, r5n.large, r5n.xlarge, r5n.2xlarge, r5n.4xlarge, r5n.8xlarge, r5n.12xlarge, r5n.16xlarge, r5n.24xlarge, r5n.metal, r6g.medium, r6g.large, r6g.xlarge, r6g.2xlarge, r6g.4xlarge, r6g.8xlarge, r6g.12xlarge, r6g.16xlarge, r6g.metal, r6gd.medium, r6gd.large, r6gd.xlarge, r6gd.2xlarge, r6gd.4xlarge, r6gd.8xlarge, r6gd.12xlarge, r6gd.16xlarge, r6gd.metal, r6i.large, r6i.xlarge, r6i.2xlarge, r6i.4xlarge, r6i.8xlarge, r6i.12xlarge, r6i.16xlarge, r6i.24xlarge, r6i.32xlarge, r6i.metal, t1.micro, t2.nano, t2.micro, t2.small, t2.medium, t2.large, t2.xlarge, t2.2xlarge, t3.nano, t3.micro, t3.small, t3.medium, t3.large, t3.xlarge, t3.2xlarge, t3a.nano, t3a.micro, t3a.small, t3a.medium, t3a.large, t3a.xlarge, t3a.2xlarge, t4g.nano, t4g.micro, t4g.small, t4g.medium, t4g.large, t4g.xlarge, t4g.2xlarge, u-6tb1.56xlarge, u-6tb1.112xlarge, u-9tb1.112xlarge, u-12tb1.112xlarge, u-6tb1.metal, u-9tb1.metal, u-12tb1.metal, u-18tb1.metal, u-24tb1.metal, vt1.3xlarge, vt1.6xlarge, vt1.24xlarge, x1.16xlarge, x1.32xlarge, x1e.xlarge, x1e.2xlarge, x1e.4xlarge, x1e.8xlarge, x1e.16xlarge, x1e.32xlarge, x2iezn.2xlarge, x2iezn.4xlarge, x2iezn.6xlarge, x2iezn.8xlarge, x2iezn.12xlarge, x2iezn.metal, x2gd.medium, x2gd.large, x2gd.xlarge, x2gd.2xlarge, x2gd.4xlarge, x2gd.8xlarge, x2gd.12xlarge, x2gd.16xlarge, x2gd.metal, z1d.large, z1d.xlarge, z1d.2xlarge, z1d.3xlarge, z1d.6xlarge, z1d.12xlarge, z1d.metal, x2idn.16xlarge, x2idn.24xlarge, x2idn.32xlarge, x2iedn.xlarge, x2iedn.2xlarge, x2iedn.4xlarge, x2iedn.8xlarge, x2iedn.16xlarge, x2iedn.24xlarge, x2iedn.32xlarge, c6a.large, c6a.xlarge, c6a.2xlarge, c6a.4xlarge, c6a.8xlarge, c6a.12xlarge, c6a.16xlarge, c6a.24xlarge, c6a.32xlarge, c6a.48xlarge, c6a.metal, m6a.metal, i4i.large, i4i.xlarge, i4i.2xlarge, i4i.4xlarge, i4i.8xlarge, i4i.16xlarge, i4i.32xlarge, i4i.metal, x2idn.metal, x2iedn.metal, c7g.medium, c7g.large, c7g.xlarge, c7g.2xlarge, c7g.4xlarge, c7g.8xlarge, c7g.12xlarge, c7g.16xlarge, mac2.metal, c6id.large, c6id.xlarge, c6id.2xlarge, c6id.4xlarge, c6id.8xlarge, c6id.12xlarge, c6id.16xlarge, c6id.24xlarge, c6id.32xlarge, c6id.metal, m6id.large, m6id.xlarge, m6id.2xlarge, m6id.4xlarge, m6id.8xlarge, m6id.12xlarge, m6id.16xlarge, m6id.24xlarge, m6id.32xlarge, m6id.metal, r6id.large, r6id.xlarge, r6id.2xlarge, r6id.4xlarge, r6id.8xlarge, r6id.12xlarge, r6id.16xlarge, r6id.24xlarge, r6id.32xlarge, r6id.metal, r6a.large, r6a.xlarge, r6a.2xlarge, r6a.4xlarge, r6a.8xlarge, r6a.12xlarge, r6a.16xlarge, r6a.24xlarge, r6a.32xlarge, r6a.48xlarge, r6a.metal, p4de.24xlarge, u-3tb1.56xlarge, u-18tb1.112xlarge, u-24tb1.112xlarge, trn1.2xlarge, trn1.32xlarge, hpc6id.32xlarge, c6in.large, c6in.xlarge, c6in.2xlarge, c6in.4xlarge, c6in.8xlarge, c6in.12xlarge, c6in.16xlarge, c6in.24xlarge, c6in.32xlarge, m6in.large, m6in.xlarge, m6in.2xlarge, m6in.4xlarge, m6in.8xlarge, m6in.12xlarge, m6in.16xlarge, m6in.24xlarge, m6in.32xlarge, m6idn.large, m6idn.xlarge, m6idn.2xlarge, m6idn.4xlarge, m6idn.8xlarge, m6idn.12xlarge, m6idn.16xlarge, m6idn.24xlarge, m6idn.32xlarge, r6in.large, r6in.xlarge, r6in.2xlarge, r6in.4xlarge, r6in.8xlarge, r6in.12xlarge, r6in.16xlarge, r6in.24xlarge, r6in.32xlarge, r6idn.large, r6idn.xlarge, r6idn.2xlarge, r6idn.4xlarge, r6idn.8xlarge, r6idn.12xlarge, r6idn.16xlarge, r6idn.24xlarge, r6idn.32xlarge, c7g.metal, m7g.medium, m7g.large, m7g.xlarge, m7g.2xlarge, m7g.4xlarge, m7g.8xlarge, m7g.12xlarge, m7g.16xlarge, m7g.metal, r7g.medium, r7g.large, r7g.xlarge, r7g.2xlarge, r7g.4xlarge, r7g.8xlarge, r7g.12xlarge, r7g.16xlarge, r7g.metal, c6in.metal, m6in.metal, m6idn.metal, r6in.metal, r6idn.metal, inf2.xlarge, inf2.8xlarge, inf2.24xlarge, inf2.48xlarge, trn1n.32xlarge, i4g.large, i4g.xlarge, i4g.2xlarge, i4g.4xlarge, i4g.8xlarge, i4g.16xlarge, hpc7g.4xlarge, hpc7g.8xlarge, hpc7g.16xlarge, c7gn.medium, c7gn.large, c7gn.xlarge, c7gn.2xlarge, c7gn.4xlarge, c7gn.8xlarge, c7gn.12xlarge, c7gn.16xlarge, p5.48xlarge, m7i.large, m7i.xlarge, m7i.2xlarge, m7i.4xlarge, m7i.8xlarge, m7i.12xlarge, m7i.16xlarge, m7i.24xlarge, m7i.48xlarge, m7i-flex.large, m7i-flex.xlarge, m7i-flex.2xlarge, m7i-flex.4xlarge, m7i-flex.8xlarge, m7a.medium, m7a.large, m7a.xlarge, m7a.2xlarge, m7a.4xlarge, m7a.8xlarge, m7a.12xlarge, m7a.16xlarge, m7a.24xlarge, m7a.32xlarge, m7a.48xlarge, m7a.metal-48xl, hpc7a.12xlarge, hpc7a.24xlarge, hpc7a.48xlarge, hpc7a.96xlarge, c7gd.medium, c7gd.large, c7gd.xlarge, c7gd.2xlarge, c7gd.4xlarge, c7gd.8xlarge, c7gd.12xlarge, c7gd.16xlarge, m7gd.medium, m7gd.large, m7gd.xlarge, m7gd.2xlarge, m7gd.4xlarge, m7gd.8xlarge, m7gd.12xlarge, m7gd.16xlarge, r7gd.medium, r7gd.large, r7gd.xlarge, r7gd.2xlarge, r7gd.4xlarge, r7gd.8xlarge, r7gd.12xlarge, r7gd.16xlarge, r7a.medium, r7a.large, r7a.xlarge, r7a.2xlarge, r7a.4xlarge, r7a.8xlarge, r7a.12xlarge, r7a.16xlarge, r7a.24xlarge, r7a.32xlarge, r7a.48xlarge, c7i.large, c7i.xlarge, c7i.2xlarge, c7i.4xlarge, c7i.8xlarge, c7i.12xlarge, c7i.16xlarge, c7i.24xlarge, c7i.48xlarge, mac2-m2pro.metal, r7iz.large, r7iz.xlarge, r7iz.2xlarge, r7iz.4xlarge, r7iz.8xlarge, r7iz.12xlarge, r7iz.16xlarge, r7iz.32xlarge, c7a.medium, c7a.large, c7a.xlarge, c7a.2xlarge, c7a.4xlarge, c7a.8xlarge, c7a.12xlarge, c7a.16xlarge, c7a.24xlarge, c7a.32xlarge, c7a.48xlarge, c7a.metal-48xl, r7a.metal-48xl, r7i.large, r7i.xlarge, r7i.2xlarge, r7i.4xlarge, r7i.8xlarge, r7i.12xlarge, r7i.16xlarge, r7i.24xlarge, r7i.48xlarge, dl2q.24xlarge, mac2-m2.metal, i4i.12xlarge, i4i.24xlarge, c7i.metal-24xl, c7i.metal-48xl, m7i.metal-24xl, m7i.metal-48xl, r7i.metal-24xl, r7i.metal-48xl, r7iz.metal-16xl, r7iz.metal-32xl, c7gd.metal, m7gd.metal, r7gd.metal, g6.xlarge, g6.2xlarge, g6.4xlarge, g6.8xlarge, g6.12xlarge, g6.16xlarge, g6.24xlarge, g6.48xlarge, gr6.4xlarge, gr6.8xlarge, c7i-flex.large, c7i-flex.xlarge, c7i-flex.2xlarge, c7i-flex.4xlarge, c7i-flex.8xlarge, u7i-12tb.224xlarge, u7in-16tb.224xlarge, u7in-24tb.224xlarge, u7in-32tb.224xlarge, u7ib-12tb.224xlarge, c7gn.metal, r8g.medium, r8g.large, r8g.xlarge, r8g.2xlarge, r8g.4xlarge, r8g.8xlarge, r8g.12xlarge, r8g.16xlarge, r8g.24xlarge, r8g.48xlarge, r8g.metal-24xl, r8g.metal-48xl, mac2-m1ultra.metal, g6e.xlarge, g6e.2xlarge, g6e.4xlarge, g6e.8xlarge, g6e.12xlarge, g6e.16xlarge, g6e.24xlarge, g6e.48xlarge, c8g.medium, c8g.large, c8g.xlarge, c8g.2xlarge, c8g.4xlarge, c8g.8xlarge, c8g.12xlarge, c8g.16xlarge, c8g.24xlarge, c8g.48xlarge, c8g.metal-24xl, c8g.metal-48xl, m8g.medium, m8g.large, m8g.xlarge, m8g.2xlarge, m8g.4xlarge, m8g.8xlarge, m8g.12xlarge, m8g.16xlarge, m8g.24xlarge, m8g.48xlarge, m8g.metal-24xl, m8g.metal-48xl, x8g.medium, x8g.large, x8g.xlarge, x8g.2xlarge, x8g.4xlarge, x8g.8xlarge, x8g.12xlarge, x8g.16xlarge, x8g.24xlarge, x8g.48xlarge, x8g.metal-24xl, x8g.metal-48xl, i7ie.large, i7ie.xlarge, i7ie.2xlarge, i7ie.3xlarge, i7ie.6xlarge, i7ie.12xlarge, i7ie.18xlarge, i7ie.24xlarge, i7ie.48xlarge, i8g.large, i8g.xlarge, i8g.2xlarge, i8g.4xlarge, i8g.8xlarge, i8g.12xlarge, i8g.16xlarge, i8g.24xlarge, i8g.metal-24xl, u7i-6tb.112xlarge, u7i-8tb.112xlarge, u7inh-32tb.480xlarge, p5e.48xlarge, p5en.48xlarge, f2.12xlarge, f2.48xlarge, trn2.48xlarge, c7i-flex.12xlarge, c7i-flex.16xlarge, m7i-flex.12xlarge, m7i-flex.16xlarge, i7ie.metal-24xl, i7ie.metal-48xl, i8g.48xlarge, c8gd.medium, c8gd.large, c8gd.xlarge, c8gd.2xlarge, c8gd.4xlarge, c8gd.8xlarge, c8gd.12xlarge, c8gd.16xlarge, c8gd.24xlarge, c8gd.48xlarge, c8gd.metal-24xl, c8gd.metal-48xl, i7i.large, i7i.xlarge, i7i.2xlarge, i7i.4xlarge, i7i.8xlarge, i7i.12xlarge, i7i.16xlarge, i7i.24xlarge, i7i.48xlarge, i7i.metal-24xl, i7i.metal-48xl, p6-b200.48xlarge, m8gd.medium, m8gd.large, m8gd.xlarge, m8gd.2xlarge, m8gd.4xlarge, m8gd.8xlarge, m8gd.12xlarge, m8gd.16xlarge, m8gd.24xlarge, m8gd.48xlarge, m8gd.metal-24xl, m8gd.metal-48xl, r8gd.medium, r8gd.large, r8gd.xlarge, r8gd.2xlarge, r8gd.4xlarge, r8gd.8xlarge, r8gd.12xlarge, r8gd.16xlarge, r8gd.24xlarge, r8gd.48xlarge, r8gd.metal-24xl, r8gd.metal-48xl, c8gn.medium, c8gn.large, c8gn.xlarge, c8gn.2xlarge, c8gn.4xlarge, c8gn.8xlarge, c8gn.12xlarge, c8gn.16xlarge, c8gn.24xlarge, c8gn.48xlarge, c8gn.metal-24xl, c8gn.metal-48xl, f2.6xlarge, p6e-gb200.36xlarge, g6f.large, g6f.xlarge, g6f.2xlarge, g6f.4xlarge, gr6f.4xlarge, p5.4xlarge, r8i.large, r8i.xlarge, r8i.2xlarge, r8i.4xlarge, r8i.8xlarge, r8i.12xlarge, r8i.16xlarge, r8i.24xlarge, r8i.32xlarge, r8i.48xlarge, r8i.96xlarge, r8i.metal-48xl, r8i.metal-96xl, r8i-flex.large, r8i-flex.xlarge, r8i-flex.2xlarge, r8i-flex.4xlarge, r8i-flex.8xlarge, r8i-flex.12xlarge, r8i-flex.16xlarge, m8i.large, m8i.xlarge, m8i.2xlarge, m8i.4xlarge, m8i.8xlarge, m8i.12xlarge, m8i.16xlarge, m8i.24xlarge, m8i.32xlarge, m8i.48xlarge, m8i.96xlarge, m8i.metal-48xl, m8i.metal-96xl, m8i-flex.large, m8i-flex.xlarge, m8i-flex.2xlarge, m8i-flex.4xlarge, m8i-flex.8xlarge, m8i-flex.12xlarge, m8i-flex.16xlarge, i8ge.large, i8ge.xlarge, i8ge.2xlarge, i8ge.3xlarge, i8ge.6xlarge, i8ge.12xlarge, i8ge.18xlarge, i8ge.24xlarge, i8ge.48xlarge, i8ge.metal-24xl, i8ge.metal-48xl, mac-m4.metal, mac-m4pro.metal, r8gn.medium, r8gn.large, r8gn.xlarge, r8gn.2xlarge, r8gn.4xlarge, r8gn.8xlarge, r8gn.12xlarge, r8gn.16xlarge, r8gn.24xlarge, r8gn.48xlarge, r8gn.metal-24xl, r8gn.metal-48xl, c8i.large, c8i.xlarge, c8i.2xlarge, c8i.4xlarge, c8i.8xlarge, c8i.12xlarge, c8i.16xlarge, c8i.24xlarge, c8i.32xlarge, c8i.48xlarge, c8i.96xlarge, c8i.metal-48xl, c8i.metal-96xl, c8i-flex.large, c8i-flex.xlarge, c8i-flex.2xlarge, c8i-flex.4xlarge, c8i-flex.8xlarge, c8i-flex.12xlarge, c8i-flex.16xlarge, r8gb.medium, r8gb.large, r8gb.xlarge, r8gb.2xlarge, r8gb.4xlarge, r8gb.8xlarge, r8gb.12xlarge, r8gb.16xlarge, r8gb.24xlarge, r8gb.metal-24xl, m8a.medium, m8a.large, m8a.xlarge, m8a.2xlarge, m8a.4xlarge, m8a.8xlarge, m8a.12xlarge, m8a.16xlarge, m8a.24xlarge, m8a.48xlarge, m8a.metal-24xl, m8a.metal-48xl, trn2.3xlarge, r8a.medium, r8a.large, r8a.xlarge, r8a.2xlarge, r8a.4xlarge, r8a.8xlarge, r8a.12xlarge, r8a.16xlarge, r8a.24xlarge, r8a.48xlarge, r8a.metal-24xl, r8a.metal-48xl
    #     ipv_6_address_count: 1,
    #     ipv_6_addresses: [
    #       {
    #         ipv_6_address: "String",
    #         is_primary_ipv_6: false,
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
    #       availability_zone_id: "AvailabilityZoneId",
    #       affinity: "String",
    #       group_name: "PlacementGroupName",
    #       partition_number: 1,
    #       host_id: "String",
    #       tenancy: "default", # accepts default, dedicated, host
    #       spread_domain: "String",
    #       host_resource_group_arn: "String",
    #       group_id: "PlacementGroupId",
    #       availability_zone: "String",
    #     },
    #     ramdisk_id: "RamdiskId",
    #     security_group_ids: ["SecurityGroupId"],
    #     security_groups: ["SecurityGroupName"],
    #     user_data: "RunInstancesUserData",
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
    #         resource_type: "capacity-reservation", # accepts capacity-reservation, client-vpn-endpoint, customer-gateway, carrier-gateway, coip-pool, declarative-policies-report, dedicated-host, dhcp-options, egress-only-internet-gateway, elastic-ip, elastic-gpu, export-image-task, export-instance-task, fleet, fpga-image, host-reservation, image, image-usage-report, import-image-task, import-snapshot-task, instance, instance-event-window, internet-gateway, ipam, ipam-pool, ipam-scope, ipv4pool-ec2, ipv6pool-ec2, key-pair, launch-template, local-gateway, local-gateway-route-table, local-gateway-virtual-interface, local-gateway-virtual-interface-group, local-gateway-route-table-vpc-association, local-gateway-route-table-virtual-interface-group-association, natgateway, network-acl, network-interface, network-insights-analysis, network-insights-path, network-insights-access-scope, network-insights-access-scope-analysis, outpost-lag, placement-group, prefix-list, replace-root-volume-task, reserved-instances, route-table, security-group, security-group-rule, service-link-virtual-interface, snapshot, spot-fleet-request, spot-instances-request, subnet, subnet-cidr-reservation, traffic-mirror-filter, traffic-mirror-session, traffic-mirror-target, transit-gateway, transit-gateway-attachment, transit-gateway-connect-peer, transit-gateway-multicast-domain, transit-gateway-policy-table, transit-gateway-route-table, transit-gateway-route-table-announcement, volume, vpc, vpc-endpoint, vpc-endpoint-connection, vpc-endpoint-service, vpc-endpoint-service-permission, vpc-peering-connection, vpn-connection, vpn-gateway, vpc-flow-log, capacity-reservation-fleet, traffic-mirror-filter-rule, vpc-endpoint-connection-device-type, verified-access-instance, verified-access-group, verified-access-endpoint, verified-access-policy, verified-access-trust-provider, vpn-connection-device-type, vpc-block-public-access-exclusion, route-server, route-server-endpoint, route-server-peer, ipam-resource-discovery, ipam-resource-discovery-association, instance-connect-endpoint, verified-access-endpoint-target, ipam-external-resource-verification-token, capacity-block, mac-modification-task, ipam-prefix-list-resolver, ipam-prefix-list-resolver-target, capacity-manager-data-export, vpn-concentrator
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
    #       market_type: "spot", # accepts spot, capacity-block
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
    #       amd_sev_snp: "enabled", # accepts enabled, disabled
    #     },
    #     capacity_reservation_specification: {
    #       capacity_reservation_preference: "capacity-reservations-only", # accepts capacity-reservations-only, open, none
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
    #     maintenance_options: {
    #       auto_recovery: "disabled", # accepts disabled, default
    #     },
    #     disable_api_stop: false,
    #     enable_primary_ipv_6: false,
    #     network_performance_options: {
    #       bandwidth_weighting: "default", # accepts default, vpc-1, ebs-1
    #     },
    #     operator: {
    #       principal: "String",
    #     },
    #     dry_run: false,
    #     disable_api_termination: false,
    #     instance_initiated_shutdown_behavior: "stop", # accepts stop, terminate
    #     private_ip_address: "String",
    #     client_token: "String",
    #     additional_info: "String",
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
    #             is_primary_ipv_6: false,
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
    #         primary_ipv_6: false,
    #         ena_srd_specification: {
    #           ena_srd_enabled: false,
    #           ena_srd_udp_specification: {
    #             ena_srd_udp_enabled: false,
    #           },
    #         },
    #         connection_tracking_specification: {
    #           tcp_established_timeout: 1,
    #           udp_stream_timeout: 1,
    #           udp_timeout: 1,
    #         },
    #         ena_queue_count: 1,
    #       },
    #     ],
    #     iam_instance_profile: {
    #       arn: "String",
    #       name: "String",
    #     },
    #     ebs_optimized: false,
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
    #   The instance type. For more information, see [Amazon EC2 Instance
    #   Types Guide][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/ec2/latest/instancetypes/instance-types.html
    # @option options [Integer] :ipv_6_address_count
    #   The number of IPv6 addresses to associate with the primary network
    #   interface. Amazon EC2 chooses the IPv6 addresses from the range of
    #   your subnet. You cannot specify this option and the option to assign
    #   specific IPv6 addresses in the same request. You can specify this
    #   option if you've specified a minimum number of instances to launch.
    #
    #   You cannot specify this option and the network interfaces option in
    #   the same request.
    # @option options [Array<Types::InstanceIpv6Address>] :ipv_6_addresses
    #   The IPv6 addresses from the range of the subnet to associate with the
    #   primary network interface. You cannot specify this option and the
    #   option to assign a number of IPv6 addresses in the same request. You
    #   cannot specify this option if you've specified a minimum number of
    #   instances to launch.
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
    #   The name of the key pair. For more information, see [Create a key pair
    #   for your EC2 instance][1].
    #
    #   If you do not specify a key pair, you can't connect to the instance
    #   unless you choose an AMI that is configured to allow users another way
    #   to log in.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/create-key-pairs.html
    # @option options [required, Integer] :max_count
    #   The maximum number of instances to launch. If you specify a value that
    #   is more capacity than Amazon EC2 can launch in the target Availability
    #   Zone, Amazon EC2 launches the largest possible number of instances
    #   above the specified minimum count.
    #
    #   Constraints: Between 1 and the quota for the specified instance type
    #   for your account for this Region. For more information, see [Amazon
    #   EC2 instance type quotas][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/ec2/latest/instancetypes/ec2-instance-quotas.html
    # @option options [required, Integer] :min_count
    #   The minimum number of instances to launch. If you specify a value that
    #   is more capacity than Amazon EC2 can provide in the target
    #   Availability Zone, Amazon EC2 does not launch any instances.
    #
    #   Constraints: Between 1 and the quota for the specified instance type
    #   for your account for this Region. For more information, see [Amazon
    #   EC2 instance type quotas][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/ec2/latest/instancetypes/ec2-instance-quotas.html
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
    #   The IDs of the security groups.
    #
    #   If you specify a network interface, you must specify any security
    #   groups as part of the network interface instead of using this
    #   parameter.
    # @option options [Array<String>] :security_groups
    #   \[Default VPC\] The names of the security groups.
    #
    #   If you specify a network interface, you must specify any security
    #   groups as part of the network interface instead of using this
    #   parameter.
    #
    #   Default: Amazon EC2 uses the default security group.
    # @option options [String] :user_data
    #   The user data to make available to the instance. User data must be
    #   base64-encoded. Depending on the tool or SDK that you're using, the
    #   base64-encoding might be performed for you. For more information, see
    #   [Run commands at launch using instance user data][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/user-data.html
    # @option options [Array<Types::ElasticGpuSpecification>] :elastic_gpu_specification
    #   An elastic GPU to associate with the instance.
    #
    #   <note markdown="1"> Amazon Elastic Graphics reached end of life on January 8, 2024.
    #
    #    </note>
    # @option options [Array<Types::ElasticInferenceAccelerator>] :elastic_inference_accelerators
    #   An elastic inference accelerator to associate with the instance.
    #
    #   <note markdown="1"> Amazon Elastic Inference is no longer available.
    #
    #    </note>
    # @option options [Array<Types::TagSpecification>] :tag_specifications
    #   The tags to apply to the resources that are created during instance
    #   launch.
    #
    #   You can specify tags for the following resources only:
    #
    #   * Instances
    #
    #   * Volumes
    #
    #   * Spot Instance requests
    #
    #   * Network interfaces
    #
    #   To tag a resource after it has been created, see [CreateTags][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateTags.html
    # @option options [Types::LaunchTemplateSpecification] :launch_template
    #   The launch template. Any additional parameters that you specify for
    #   the new instance overwrite the corresponding parameters included in
    #   the launch template.
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
    #   Default: `standard` (T2 instances) or `unlimited` (T3/T3a/T4g
    #   instances)
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
    #   platform, Availability Zone, and tenancy).
    # @option options [Types::HibernationOptionsRequest] :hibernation_options
    #   Indicates whether an instance is enabled for hibernation. This
    #   parameter is valid only if the instance meets the [hibernation
    #   prerequisites][1]. For more information, see [Hibernate your Amazon
    #   EC2 instance][2] in the *Amazon EC2 User Guide*.
    #
    #   You can't enable hibernation and Amazon Web Services Nitro Enclaves
    #   on the same instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/hibernating-prerequisites.html
    #   [2]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Hibernate.html
    # @option options [Array<Types::LicenseConfigurationRequest>] :license_specifications
    #   The license configurations.
    # @option options [Types::InstanceMetadataOptionsRequest] :metadata_options
    #   The metadata options for the instance. For more information, see
    #   [Configure the Instance Metadata Service options][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/configuring-instance-metadata-options.html
    # @option options [Types::EnclaveOptionsRequest] :enclave_options
    #   Indicates whether the instance is enabled for Amazon Web Services
    #   Nitro Enclaves. For more information, see [Amazon Web Services Nitro
    #   Enclaves User Guide][1].
    #
    #   You can't enable Amazon Web Services Nitro Enclaves and hibernation
    #   on the same instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/enclaves/latest/user/
    # @option options [Types::PrivateDnsNameOptionsRequest] :private_dns_name_options
    #   The options for the instance hostname. The default values are
    #   inherited from the subnet. Applies only if creating a network
    #   interface, not attaching an existing one.
    # @option options [Types::InstanceMaintenanceOptionsRequest] :maintenance_options
    #   The maintenance and recovery options for the instance.
    # @option options [Boolean] :disable_api_stop
    #   Indicates whether an instance is enabled for stop protection. For more
    #   information, see [Enable stop protection for your EC2 instances][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-stop-protection.html
    # @option options [Boolean] :enable_primary_ipv_6
    #   If you’re launching an instance into a dual-stack or IPv6-only subnet,
    #   you can enable assigning a primary IPv6 address. A primary IPv6
    #   address is an IPv6 GUA address associated with an ENI that you have
    #   enabled to use a primary IPv6 address. Use this option if an instance
    #   relies on its IPv6 address not changing. When you launch the instance,
    #   Amazon Web Services will automatically assign an IPv6 address
    #   associated with the ENI attached to your instance to be the primary
    #   IPv6 address. Once you enable an IPv6 GUA address to be a primary
    #   IPv6, you cannot disable it. When you enable an IPv6 GUA address to be
    #   a primary IPv6, the first IPv6 GUA will be made the primary IPv6
    #   address until the instance is terminated or the network interface is
    #   detached. If you have multiple IPv6 addresses associated with an ENI
    #   attached to your instance and you enable a primary IPv6 address, the
    #   first IPv6 GUA address associated with the ENI becomes the primary
    #   IPv6 address.
    # @option options [Types::InstanceNetworkPerformanceOptionsRequest] :network_performance_options
    #   Contains settings for the network performance options for the
    #   instance.
    # @option options [Types::OperatorRequest] :operator
    #   Reserved for internal use.
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the operation,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @option options [Boolean] :disable_api_termination
    #   Indicates whether termination protection is enabled for the instance.
    #   The default is `false`, which means that you can terminate the
    #   instance using the Amazon EC2 console, command line tools, or API. You
    #   can enable termination protection when you launch an instance, while
    #   the instance is running, or while the instance is stopped.
    # @option options [String] :instance_initiated_shutdown_behavior
    #   Indicates whether an instance stops or terminates when you initiate
    #   shutdown from the instance (using the operating system command for
    #   system shutdown).
    #
    #   Default: `stop`
    # @option options [String] :private_ip_address
    #   The primary IPv4 address. You must specify a value from the IPv4
    #   address range of the subnet.
    #
    #   Only one private IP address can be designated as primary. You can't
    #   specify this option if you've specified the option to designate a
    #   private IP address as the primary IP address in a network interface
    #   specification. You cannot specify this option if you're launching
    #   more than one instance in the request.
    #
    #   You cannot specify this option and the network interfaces option in
    #   the same request.
    # @option options [String] :client_token
    #   Unique, case-sensitive identifier you provide to ensure the
    #   idempotency of the request. If you do not specify a client token, a
    #   randomly generated token is used for the request to ensure
    #   idempotency.
    #
    #   For more information, see [Ensuring idempotency in Amazon EC2 API
    #   requests][1].
    #
    #   Constraints: Maximum 64 ASCII characters
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/ec2/latest/devguide/ec2-api-idempotency.html
    # @option options [String] :additional_info
    #   Reserved.
    # @option options [Array<Types::InstanceNetworkInterfaceSpecification>] :network_interfaces
    #   The network interfaces to associate with the instance.
    # @option options [Types::IamInstanceProfileSpecification] :iam_instance_profile
    #   The name or Amazon Resource Name (ARN) of an IAM instance profile.
    # @option options [Boolean] :ebs_optimized
    #   Indicates whether the instance is optimized for Amazon EBS I/O. This
    #   optimization provides dedicated throughput to Amazon EBS and an
    #   optimized configuration stack to provide optimal Amazon EBS I/O
    #   performance. This optimization isn't available with all instance
    #   types. Additional usage charges apply when using an EBS-optimized
    #   instance.
    #
    #   Default: `false`
    # @return [Instance::Collection]
    def create_instances(options = {})
      batch = []
      options = options.merge(subnet_id: @id)
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.run_instances(options)
      end
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
    #     interface_type: "efa", # accepts efa, efa-only, branch, trunk
    #     tag_specifications: [
    #       {
    #         resource_type: "capacity-reservation", # accepts capacity-reservation, client-vpn-endpoint, customer-gateway, carrier-gateway, coip-pool, declarative-policies-report, dedicated-host, dhcp-options, egress-only-internet-gateway, elastic-ip, elastic-gpu, export-image-task, export-instance-task, fleet, fpga-image, host-reservation, image, image-usage-report, import-image-task, import-snapshot-task, instance, instance-event-window, internet-gateway, ipam, ipam-pool, ipam-scope, ipv4pool-ec2, ipv6pool-ec2, key-pair, launch-template, local-gateway, local-gateway-route-table, local-gateway-virtual-interface, local-gateway-virtual-interface-group, local-gateway-route-table-vpc-association, local-gateway-route-table-virtual-interface-group-association, natgateway, network-acl, network-interface, network-insights-analysis, network-insights-path, network-insights-access-scope, network-insights-access-scope-analysis, outpost-lag, placement-group, prefix-list, replace-root-volume-task, reserved-instances, route-table, security-group, security-group-rule, service-link-virtual-interface, snapshot, spot-fleet-request, spot-instances-request, subnet, subnet-cidr-reservation, traffic-mirror-filter, traffic-mirror-session, traffic-mirror-target, transit-gateway, transit-gateway-attachment, transit-gateway-connect-peer, transit-gateway-multicast-domain, transit-gateway-policy-table, transit-gateway-route-table, transit-gateway-route-table-announcement, volume, vpc, vpc-endpoint, vpc-endpoint-connection, vpc-endpoint-service, vpc-endpoint-service-permission, vpc-peering-connection, vpn-connection, vpn-gateway, vpc-flow-log, capacity-reservation-fleet, traffic-mirror-filter-rule, vpc-endpoint-connection-device-type, verified-access-instance, verified-access-group, verified-access-endpoint, verified-access-policy, verified-access-trust-provider, vpn-connection-device-type, vpc-block-public-access-exclusion, route-server, route-server-endpoint, route-server-peer, ipam-resource-discovery, ipam-resource-discovery-association, instance-connect-endpoint, verified-access-endpoint-target, ipam-external-resource-verification-token, capacity-block, mac-modification-task, ipam-prefix-list-resolver, ipam-prefix-list-resolver-target, capacity-manager-data-export, vpn-concentrator
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String",
    #           },
    #         ],
    #       },
    #     ],
    #     client_token: "String",
    #     enable_primary_ipv_6: false,
    #     connection_tracking_specification: {
    #       tcp_established_timeout: 1,
    #       udp_stream_timeout: 1,
    #       udp_timeout: 1,
    #     },
    #     operator: {
    #       principal: "String",
    #     },
    #     description: "String",
    #     private_ip_address: "String",
    #     groups: ["SecurityGroupId"],
    #     private_ip_addresses: [
    #       {
    #         primary: false,
    #         private_ip_address: "String",
    #       },
    #     ],
    #     secondary_private_ip_address_count: 1,
    #     ipv_6_addresses: [
    #       {
    #         ipv_6_address: "String",
    #         is_primary_ipv_6: false,
    #       },
    #     ],
    #     ipv_6_address_count: 1,
    #     dry_run: false,
    #   })
    # @param [Hash] options ({})
    # @option options [Array<Types::Ipv4PrefixSpecificationRequest>] :ipv_4_prefixes
    #   The IPv4 prefixes assigned to the network interface.
    #
    #   You can't specify IPv4 prefixes if you've specified one of the
    #   following: a count of IPv4 prefixes, specific private IPv4 addresses,
    #   or a count of private IPv4 addresses.
    # @option options [Integer] :ipv_4_prefix_count
    #   The number of IPv4 prefixes that Amazon Web Services automatically
    #   assigns to the network interface.
    #
    #   You can't specify a count of IPv4 prefixes if you've specified one
    #   of the following: specific IPv4 prefixes, specific private IPv4
    #   addresses, or a count of private IPv4 addresses.
    # @option options [Array<Types::Ipv6PrefixSpecificationRequest>] :ipv_6_prefixes
    #   The IPv6 prefixes assigned to the network interface.
    #
    #   You can't specify IPv6 prefixes if you've specified one of the
    #   following: a count of IPv6 prefixes, specific IPv6 addresses, or a
    #   count of IPv6 addresses.
    # @option options [Integer] :ipv_6_prefix_count
    #   The number of IPv6 prefixes that Amazon Web Services automatically
    #   assigns to the network interface.
    #
    #   You can't specify a count of IPv6 prefixes if you've specified one
    #   of the following: specific IPv6 prefixes, specific IPv6 addresses, or
    #   a count of IPv6 addresses.
    # @option options [String] :interface_type
    #   The type of network interface. The default is `interface`.
    #
    #   If you specify `efa-only`, do not assign any IP addresses to the
    #   network interface. EFA-only network interfaces do not support IP
    #   addresses.
    #
    #   The only supported values are `interface`, `efa`, `efa-only`, and
    #   `trunk`.
    # @option options [Array<Types::TagSpecification>] :tag_specifications
    #   The tags to apply to the new network interface.
    # @option options [String] :client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. For more information, see [Ensuring
    #   idempotency][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/ec2/latest/devguide/ec2-api-idempotency.html
    # @option options [Boolean] :enable_primary_ipv_6
    #   If you’re creating a network interface in a dual-stack or IPv6-only
    #   subnet, you have the option to assign a primary IPv6 IP address. A
    #   primary IPv6 address is an IPv6 GUA address associated with an ENI
    #   that you have enabled to use a primary IPv6 address. Use this option
    #   if the instance that this ENI will be attached to relies on its IPv6
    #   address not changing. Amazon Web Services will automatically assign an
    #   IPv6 address associated with the ENI attached to your instance to be
    #   the primary IPv6 address. Once you enable an IPv6 GUA address to be a
    #   primary IPv6, you cannot disable it. When you enable an IPv6 GUA
    #   address to be a primary IPv6, the first IPv6 GUA will be made the
    #   primary IPv6 address until the instance is terminated or the network
    #   interface is detached. If you have multiple IPv6 addresses associated
    #   with an ENI attached to your instance and you enable a primary IPv6
    #   address, the first IPv6 GUA address associated with the ENI becomes
    #   the primary IPv6 address.
    # @option options [Types::ConnectionTrackingSpecificationRequest] :connection_tracking_specification
    #   A connection tracking specification for the network interface.
    # @option options [Types::OperatorRequest] :operator
    #   Reserved for internal use.
    # @option options [String] :description
    #   A description for the network interface.
    # @option options [String] :private_ip_address
    #   The primary private IPv4 address of the network interface. If you
    #   don't specify an IPv4 address, Amazon EC2 selects one for you from
    #   the subnet's IPv4 CIDR range. If you specify an IP address, you
    #   cannot indicate any IP addresses specified in `privateIpAddresses` as
    #   primary (only one IP address can be designated as primary).
    # @option options [Array<String>] :groups
    #   The IDs of the security groups.
    # @option options [Array<Types::PrivateIpAddressSpecification>] :private_ip_addresses
    #   The private IPv4 addresses.
    #
    #   You can't specify private IPv4 addresses if you've specified one of
    #   the following: a count of private IPv4 addresses, specific IPv4
    #   prefixes, or a count of IPv4 prefixes.
    # @option options [Integer] :secondary_private_ip_address_count
    #   The number of secondary private IPv4 addresses to assign to a network
    #   interface. When you specify a number of secondary IPv4 addresses,
    #   Amazon EC2 selects these IP addresses within the subnet's IPv4 CIDR
    #   range. You can't specify this option and specify more than one
    #   private IP address using `privateIpAddresses`.
    #
    #   You can't specify a count of private IPv4 addresses if you've
    #   specified one of the following: specific private IPv4 addresses,
    #   specific IPv4 prefixes, or a count of IPv4 prefixes.
    # @option options [Array<Types::InstanceIpv6Address>] :ipv_6_addresses
    #   The IPv6 addresses from the IPv6 CIDR block range of your subnet.
    #
    #   You can't specify IPv6 addresses using this parameter if you've
    #   specified one of the following: a count of IPv6 addresses, specific
    #   IPv6 prefixes, or a count of IPv6 prefixes.
    # @option options [Integer] :ipv_6_address_count
    #   The number of IPv6 addresses to assign to a network interface. Amazon
    #   EC2 automatically selects the IPv6 addresses from the subnet range.
    #
    #   You can't specify a count of IPv6 addresses using this parameter if
    #   you've specified one of the following: specific IPv6 addresses,
    #   specific IPv6 prefixes, or a count of IPv6 prefixes.
    #
    #   If your subnet has the `AssignIpv6AddressOnCreation` attribute set,
    #   you can override that setting by specifying 0 as the IPv6 address
    #   count.
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @return [NetworkInterface]
    def create_network_interface(options = {})
      options = options.merge(subnet_id: @id)
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.create_network_interface(options)
      end
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
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.create_tags(options)
      end
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
    #   specified resources. We do not delete Amazon Web Services-generated
    #   tags (tags that have the `aws:` prefix).
    #
    #   Constraints: Up to 1000 tags.
    # @return [Tag::Collection]
    def delete_tags(options = {})
      batch = []
      options = Aws::Util.deep_merge(options, resources: [@id])
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.delete_tags(options)
      end
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
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.delete_subnet(options)
      end
      resp.data
    end

    # @!group Associations

    # @example Request syntax with placeholder values
    #
    #   instances = subnet.instances({
    #     instance_ids: ["InstanceId"],
    #     dry_run: false,
    #     filters: [
    #       {
    #         name: "String",
    #         values: ["String"],
    #       },
    #     ],
    #   })
    # @param [Hash] options ({})
    # @option options [Array<String>] :instance_ids
    #   The instance IDs.
    #
    #   Default: Describes all your instances.
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the operation,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
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
    #   * `availability-zone-id` - The ID of the Availability Zone of the
    #     instance.
    #
    #   * `block-device-mapping.attach-time` - The attach time for an EBS
    #     volume mapped to the instance, for example,
    #     `2022-09-15T17:15:20.000Z`.
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
    #   * `boot-mode` - The boot mode that was specified by the AMI
    #     (`legacy-bios` \| `uefi` \| `uefi-preferred`).
    #
    #   * `capacity-reservation-id` - The ID of the Capacity Reservation into
    #     which the instance was launched.
    #
    #   * `capacity-reservation-specification.capacity-reservation-preference`
    #     - The instance's Capacity Reservation preference (`open` \|
    #     `none`).
    #
    #   * `capacity-reservation-specification.capacity-reservation-target.capacity-reservation-id`
    #     - The ID of the targeted Capacity Reservation.
    #
    #   * `capacity-reservation-specification.capacity-reservation-target.capacity-reservation-resource-group-arn`
    #     - The ARN of the targeted Capacity Reservation group.
    #
    #   * `client-token` - The idempotency token you provided when you
    #     launched the instance.
    #
    #   * `current-instance-boot-mode` - The boot mode that is used to launch
    #     the instance at launch or start (`legacy-bios` \| `uefi`).
    #
    #   * `dns-name` - The public DNS name of the instance.
    #
    #   * `ebs-optimized` - A Boolean that indicates whether the instance is
    #     optimized for Amazon EBS I/O.
    #
    #   * `ena-support` - A Boolean that indicates whether the instance is
    #     enabled for enhanced networking with ENA.
    #
    #   * `enclave-options.enabled` - A Boolean that indicates whether the
    #     instance is enabled for Amazon Web Services Nitro Enclaves.
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
    #   * `iam-instance-profile.id` - The instance profile associated with the
    #     instance. Specified as an ID.
    #
    #   * `image-id` - The ID of the image used to launch the instance.
    #
    #   * `instance-id` - The ID of the instance.
    #
    #   * `instance-lifecycle` - Indicates whether this is a Spot Instance, a
    #     Scheduled Instance, or a Capacity Block (`spot` \| `scheduled` \|
    #     `capacity-block`).
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
    #   * `ipv6-address` - The IPv6 address of the instance.
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
    #   * `maintenance-options.auto-recovery` - The current automatic recovery
    #     behavior of the instance (`disabled` \| `default`).
    #
    #   * `metadata-options.http-endpoint` - The status of access to the HTTP
    #     metadata endpoint on your instance (`enabled` \| `disabled`)
    #
    #   * `metadata-options.http-protocol-ipv4` - Indicates whether the IPv4
    #     endpoint is enabled (`disabled` \| `enabled`).
    #
    #   * `metadata-options.http-protocol-ipv6` - Indicates whether the IPv6
    #     endpoint is enabled (`disabled` \| `enabled`).
    #
    #   * `metadata-options.http-put-response-hop-limit` - The HTTP metadata
    #     request put response hop limit (integer, possible values `1` to
    #     `64`)
    #
    #   * `metadata-options.http-tokens` - The metadata request authorization
    #     state (`optional` \| `required`)
    #
    #   * `metadata-options.instance-metadata-tags` - The status of access to
    #     instance tags from the instance metadata (`enabled` \| `disabled`)
    #
    #   * `metadata-options.state` - The state of the metadata option changes
    #     (`pending` \| `applied`).
    #
    #   * `monitoring-state` - Indicates whether detailed monitoring is
    #     enabled (`disabled` \| `enabled`).
    #
    #   * `network-interface.addresses.association.allocation-id` - The
    #     allocation ID.
    #
    #   * `network-interface.addresses.association.association-id` - The
    #     association ID.
    #
    #   * `network-interface.addresses.association.carrier-ip` - The carrier
    #     IP address.
    #
    #   * `network-interface.addresses.association.customer-owned-ip` - The
    #     customer-owned IP address.
    #
    #   * `network-interface.addresses.association.ip-owner-id` - The owner ID
    #     of the private IPv4 address associated with the network interface.
    #
    #   * `network-interface.addresses.association.public-dns-name` - The
    #     public DNS name.
    #
    #   * `network-interface.addresses.association.public-ip` - The ID of the
    #     association of an Elastic IP address (IPv4) with a network
    #     interface.
    #
    #   * `network-interface.addresses.primary` - Specifies whether the IPv4
    #     address of the network interface is the primary private IPv4
    #     address.
    #
    #   * `network-interface.addresses.private-dns-name` - The private DNS
    #     name.
    #
    #   * `network-interface.addresses.private-ip-address` - The private IPv4
    #     address associated with the network interface.
    #
    #   * `network-interface.association.allocation-id` - The allocation ID
    #     returned when you allocated the Elastic IP address (IPv4) for your
    #     network interface.
    #
    #   * `network-interface.association.association-id` - The association ID
    #     returned when the network interface was associated with an IPv4
    #     address.
    #
    #   * `network-interface.association.carrier-ip` - The customer-owned IP
    #     address.
    #
    #   * `network-interface.association.customer-owned-ip` - The
    #     customer-owned IP address.
    #
    #   * `network-interface.association.ip-owner-id` - The owner of the
    #     Elastic IP address (IPv4) associated with the network interface.
    #
    #   * `network-interface.association.public-dns-name` - The public DNS
    #     name.
    #
    #   * `network-interface.association.public-ip` - The address of the
    #     Elastic IP address (IPv4) bound to the network interface.
    #
    #   * `network-interface.attachment.attach-time` - The time that the
    #     network interface was attached to an instance.
    #
    #   * `network-interface.attachment.attachment-id` - The ID of the
    #     interface attachment.
    #
    #   * `network-interface.attachment.delete-on-termination` - Specifies
    #     whether the attachment is deleted when an instance is terminated.
    #
    #   * `network-interface.attachment.device-index` - The device index to
    #     which the network interface is attached.
    #
    #   * `network-interface.attachment.instance-id` - The ID of the instance
    #     to which the network interface is attached.
    #
    #   * `network-interface.attachment.instance-owner-id` - The owner ID of
    #     the instance to which the network interface is attached.
    #
    #   * `network-interface.attachment.network-card-index` - The index of the
    #     network card.
    #
    #   * `network-interface.attachment.status` - The status of the attachment
    #     (`attaching` \| `attached` \| `detaching` \| `detached`).
    #
    #   * `network-interface.availability-zone` - The Availability Zone for
    #     the network interface.
    #
    #   * `network-interface.deny-all-igw-traffic` - A Boolean that indicates
    #     whether a network interface with an IPv6 address is unreachable from
    #     the public internet.
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
    #   * `network-interface.ipv4-prefixes.ipv4-prefix` - The IPv4 prefixes
    #     that are assigned to the network interface.
    #
    #   * `network-interface.ipv6-address` - The IPv6 address associated with
    #     the network interface.
    #
    #   * `network-interface.ipv6-addresses.ipv6-address` - The IPv6 address
    #     associated with the network interface.
    #
    #   * `network-interface.ipv6-addresses.is-primary-ipv6` - A Boolean that
    #     indicates whether this is the primary IPv6 address.
    #
    #   * `network-interface.ipv6-native` - A Boolean that indicates whether
    #     this is an IPv6 only network interface.
    #
    #   * `network-interface.ipv6-prefixes.ipv6-prefix` - The IPv6 prefix
    #     assigned to the network interface.
    #
    #   * `network-interface.mac-address` - The MAC address of the network
    #     interface.
    #
    #   * `network-interface.network-interface-id` - The ID of the network
    #     interface.
    #
    #   * `network-interface.operator.managed` - A Boolean that indicates
    #     whether the instance has a managed network interface.
    #
    #   * `network-interface.operator.principal` - The principal that manages
    #     the network interface. Only valid for instances with managed network
    #     interfaces, where `managed` is `true`.
    #
    #   * `network-interface.outpost-arn` - The ARN of the Outpost.
    #
    #   * `network-interface.owner-id` - The ID of the owner of the network
    #     interface.
    #
    #   * `network-interface.private-dns-name` - The private DNS name of the
    #     network interface.
    #
    #   * `network-interface.private-ip-address` - The private IPv4 address.
    #
    #   * `network-interface.public-dns-name` - The public DNS name.
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
    #   * `network-interface.tag-key` - The key of a tag assigned to the
    #     network interface.
    #
    #   * `network-interface.tag-value` - The value of a tag assigned to the
    #     network interface.
    #
    #   * `network-interface.vpc-id` - The ID of the VPC for the network
    #     interface.
    #
    #   * `network-performance-options.bandwidth-weighting` - Where the
    #     performance boost is applied, if applicable. Valid values:
    #     `default`, `vpc-1`, `ebs-1`.
    #
    #   * `operator.managed` - A Boolean that indicates whether this is a
    #     managed instance.
    #
    #   * `operator.principal` - The principal that manages the instance. Only
    #     valid for managed instances, where `managed` is `true`.
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
    #   * `platform-details` - The platform (`Linux/UNIX` \| `Red Hat BYOL
    #     Linux` \| ` Red Hat Enterprise Linux` \| `Red Hat Enterprise Linux
    #     with HA` \| `Red Hat Enterprise Linux with High Availability` \|
    #     `Red Hat Enterprise Linux with SQL Server Standard and HA` \| `Red
    #     Hat Enterprise Linux with SQL Server Enterprise and HA` \| `Red Hat
    #     Enterprise Linux with SQL Server Standard` \| `Red Hat Enterprise
    #     Linux with SQL Server Web` \| `Red Hat Enterprise Linux with SQL
    #     Server Enterprise` \| `SQL Server Enterprise` \| `SQL Server
    #     Standard` \| `SQL Server Web` \| `SUSE Linux` \| `Ubuntu Pro` \|
    #     `Windows` \| `Windows BYOL` \| `Windows with SQL Server Enterprise`
    #     \| `Windows with SQL Server Standard` \| `Windows with SQL Server
    #     Web`).
    #
    #   * `private-dns-name` - The private IPv4 DNS name of the instance.
    #
    #   * `private-dns-name-options.enable-resource-name-dns-a-record` - A
    #     Boolean that indicates whether to respond to DNS queries for
    #     instance hostnames with DNS A records.
    #
    #   * `private-dns-name-options.enable-resource-name-dns-aaaa-record` - A
    #     Boolean that indicates whether to respond to DNS queries for
    #     instance hostnames with DNS AAAA records.
    #
    #   * `private-dns-name-options.hostname-type` - The type of hostname
    #     (`ip-name` \| `resource-name`).
    #
    #   * `private-ip-address` - The private IPv4 address of the instance.
    #     This can only be used to filter by the primary IP address of the
    #     network interface attached to the instance. To filter by additional
    #     IP addresses assigned to the network interface, use the filter
    #     `network-interface.addresses.private-ip-address`.
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
    #   * `tpm-support` - Indicates if the instance is configured for NitroTPM
    #     support (`v2.0`).
    #
    #   * `usage-operation` - The usage operation value for the instance
    #     (`RunInstances` \| `RunInstances:00g0` \| `RunInstances:0010` \|
    #     `RunInstances:1010` \| `RunInstances:1014` \| `RunInstances:1110` \|
    #     `RunInstances:0014` \| `RunInstances:0210` \| `RunInstances:0110` \|
    #     `RunInstances:0100` \| `RunInstances:0004` \| `RunInstances:0200` \|
    #     `RunInstances:000g` \| `RunInstances:0g00` \| `RunInstances:0002` \|
    #     `RunInstances:0800` \| `RunInstances:0102` \| `RunInstances:0006` \|
    #     `RunInstances:0202`).
    #
    #   * `usage-operation-update-time` - The time that the usage operation
    #     was last updated, for example, `2022-09-15T17:15:20.000Z`.
    #
    #   * `virtualization-type` - The virtualization type of the instance
    #     (`paravirtual` \| `hvm`).
    #
    #   * `vpc-id` - The ID of the VPC that the instance is running in.
    # @return [Instance::Collection]
    def instances(options = {})
      batches = Enumerator.new do |y|
        options = Aws::Util.deep_merge(options, filters: [{
          name: "subnet-id",
          values: [@id]
        }])
        resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
          @client.describe_instances(options)
        end
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
    #   The filters.
    #
    #   * `nat-gateway-id` - The ID of the NAT gateway.
    #
    #   * `state` - The state of the NAT gateway (`pending` \| `failed` \|
    #     `available` \| `deleting` \| `deleted`).
    #
    #   * `subnet-id` - The ID of the subnet in which the NAT gateway resides.
    #
    #   * `tag` - The key/value combination of a tag assigned to the resource.
    #     Use the tag key in the filter name and the tag value as the filter
    #     value. For example, to find all resources that have a tag with the
    #     key `Owner` and the value `TeamA`, specify `tag:Owner` for the
    #     filter name and `TeamA` for the filter value.
    #
    #   * `tag-key` - The key of a tag assigned to the resource. Use this
    #     filter to find all resources assigned a tag with a specific key,
    #     regardless of the tag value.
    #
    #   * `vpc-id` - The ID of the VPC in which the NAT gateway resides.
    # @option options [Array<String>] :nat_gateway_ids
    #   The IDs of the NAT gateways.
    # @return [NatGateway::Collection]
    def nat_gateways(options = {})
      batches = Enumerator.new do |y|
        options = Aws::Util.deep_merge(options, filter: [{
          name: "subnet-id",
          values: [@id]
        }])
        resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
          @client.describe_nat_gateways(options)
        end
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
    #     dry_run: false,
    #     network_interface_ids: ["NetworkInterfaceId"],
    #     filters: [
    #       {
    #         name: "String",
    #         values: ["String"],
    #       },
    #     ],
    #   })
    # @param [Hash] options ({})
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @option options [Array<String>] :network_interface_ids
    #   The network interface IDs.
    #
    #   Default: Describes all your network interfaces.
    # @option options [Array<Types::Filter>] :filters
    #   One or more filters.
    #
    #   * `association.allocation-id` - The allocation ID returned when you
    #     allocated the Elastic IP address (IPv4) for your network interface.
    #
    #   * `association.association-id` - The association ID returned when the
    #     network interface was associated with an IPv4 address.
    #
    #   * `addresses.association.owner-id` - The owner ID of the addresses
    #     associated with the network interface.
    #
    #   * `addresses.association.public-ip` - The association ID returned when
    #     the network interface was associated with the Elastic IP address
    #     (IPv4).
    #
    #   * `addresses.primary` - Whether the private IPv4 address is the
    #     primary IP address associated with the network interface.
    #
    #   * `addresses.private-ip-address` - The private IPv4 addresses
    #     associated with the network interface.
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
    #   * `attachment.attach-time` - The time that the network interface was
    #     attached to an instance.
    #
    #   * `attachment.attachment-id` - The ID of the interface attachment.
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
    #   * `availability-zone-id` - The ID of the Availability Zone of the
    #     network interface.
    #
    #   * `description` - The description of the network interface.
    #
    #   * `group-id` - The ID of a security group associated with the network
    #     interface.
    #
    #   * `ipv6-addresses.ipv6-address` - An IPv6 address associated with the
    #     network interface.
    #
    #   * `interface-type` - The type of network interface
    #     (`api_gateway_managed` \| `aws_codestar_connections_managed` \|
    #     `branch` \| `ec2_instance_connect_endpoint` \| `efa` \| `efa-only`
    #     \| `efs` \| `evs` \| `gateway_load_balancer` \|
    #     `gateway_load_balancer_endpoint` \| `global_accelerator_managed` \|
    #     `interface` \| `iot_rules_managed` \| `lambda` \| `load_balancer` \|
    #     `nat_gateway` \| `network_load_balancer` \| `quicksight` \|
    #     `transit_gateway` \| `trunk` \| `vpc_endpoint`).
    #
    #   * `mac-address` - The MAC address of the network interface.
    #
    #   * `network-interface-id` - The ID of the network interface.
    #
    #   * `operator.managed` - A Boolean that indicates whether this is a
    #     managed network interface.
    #
    #   * `operator.principal` - The principal that manages the network
    #     interface. Only valid for managed network interfaces, where
    #     `managed` is `true`.
    #
    #   * `owner-id` - The Amazon Web Services account ID of the network
    #     interface owner.
    #
    #   * `private-dns-name` - The private DNS name of the network interface
    #     (IPv4).
    #
    #   * `private-ip-address` - The private IPv4 address or addresses of the
    #     network interface.
    #
    #   * `requester-id` - The alias or Amazon Web Services account ID of the
    #     principal or service that created the network interface.
    #
    #   * `requester-managed` - Indicates whether the network interface is
    #     being managed by an Amazon Web Services service (for example, Amazon
    #     Web Services Management Console, Auto Scaling, and so on).
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
    #   * `tag`:&lt;key&gt; - The key/value combination of a tag assigned to
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
    # @return [NetworkInterface::Collection]
    def network_interfaces(options = {})
      batches = Enumerator.new do |y|
        options = Aws::Util.deep_merge(options, filters: [{
          name: "subnet-id",
          values: [@id]
        }])
        resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
          @client.describe_network_interfaces(options)
        end
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
