# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::EC2

  class PlacementGroup

    extend Aws::Deprecations

    # @overload def initialize(name, options = {})
    #   @param [String] name
    #   @option options [Client] :client
    # @overload def initialize(options = {})
    #   @option options [required, String] :name
    #   @option options [Client] :client
    def initialize(*args)
      options = Hash === args.last ? args.pop.dup : {}
      @name = extract_name(args, options)
      @data = options.delete(:data)
      @client = options.delete(:client) || Client.new(options)
      @waiter_block_warned = false
    end

    # @!group Read-Only Attributes

    # @return [String]
    def name
      @name
    end
    alias :group_name :name

    # The state of the placement group.
    # @return [String]
    def state
      data[:state]
    end

    # The placement strategy.
    # @return [String]
    def strategy
      data[:strategy]
    end

    # The number of partitions. Valid only if **strategy** is set to
    # `partition`.
    # @return [Integer]
    def partition_count
      data[:partition_count]
    end

    # The ID of the placement group.
    # @return [String]
    def group_id
      data[:group_id]
    end

    # Any tags applied to the placement group.
    # @return [Array<Types::Tag>]
    def tags
      data[:tags]
    end

    # The Amazon Resource Name (ARN) of the placement group.
    # @return [String]
    def group_arn
      data[:group_arn]
    end

    # The spread level for the placement group. *Only* Outpost placement
    # groups can be spread across hosts.
    # @return [String]
    def spread_level
      data[:spread_level]
    end

    # @!endgroup

    # @return [Client]
    def client
      @client
    end

    # Loads, or reloads {#data} for the current {PlacementGroup}.
    # Returns `self` making it possible to chain methods.
    #
    #     placement_group.reload.data
    #
    # @return [self]
    def load
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.describe_placement_groups(group_names: [@name])
      end
      @data = resp.placement_groups[0]
      self
    end
    alias :reload :load

    # @return [Types::PlacementGroup]
    #   Returns the data for this {PlacementGroup}. Calls
    #   {Client#describe_placement_groups} if {#data_loaded?} is `false`.
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
    #   placement_group.delete({
    #     dry_run: false,
    #   })
    # @param [Hash] options ({})
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the operation,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @return [EmptyStructure]
    def delete(options = {})
      options = options.merge(group_name: @name)
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.delete_placement_group(options)
      end
      resp.data
    end

    # @!group Associations

    # @example Request syntax with placeholder values
    #
    #   instances = placement_group.instances({
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
    #     Amazon EC2 Auto Scaling, and so on).
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
          name: "placement-group-name",
          values: [@name]
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

    # @deprecated
    # @api private
    def identifiers
      { name: @name }
    end
    deprecated(:identifiers)

    private

    def extract_name(args, options)
      value = args[0] || options.delete(:name)
      case value
      when String then value
      when nil then raise ArgumentError, "missing required option :name"
      else
        msg = "expected :name to be a String, got #{value.class}"
        raise ArgumentError, msg
      end
    end

    class Collection < Aws::Resources::Collection; end
  end
end
