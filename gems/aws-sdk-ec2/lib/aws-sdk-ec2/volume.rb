# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::EC2

  class Volume

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
    alias :volume_id :id

    # Information about the volume attachments.
    # @return [Array<Types::VolumeAttachment>]
    def attachments
      data[:attachments]
    end

    # The Availability Zone for the volume.
    # @return [String]
    def availability_zone
      data[:availability_zone]
    end

    # The time stamp when volume creation was initiated.
    # @return [Time]
    def create_time
      data[:create_time]
    end

    # Indicates whether the volume is encrypted.
    # @return [Boolean]
    def encrypted
      data[:encrypted]
    end

    # The Amazon Resource Name (ARN) of the Key Management Service (KMS) KMS
    # key that was used to protect the volume encryption key for the volume.
    # @return [String]
    def kms_key_id
      data[:kms_key_id]
    end

    # The Amazon Resource Name (ARN) of the Outpost.
    # @return [String]
    def outpost_arn
      data[:outpost_arn]
    end

    # The size of the volume, in GiBs.
    # @return [Integer]
    def size
      data[:size]
    end

    # The snapshot from which the volume was created, if applicable.
    # @return [String]
    def snapshot_id
      data[:snapshot_id]
    end

    # The volume state.
    # @return [String]
    def state
      data[:state]
    end

    # The number of I/O operations per second (IOPS). For `gp3`, `io1`, and
    # `io2` volumes, this represents the number of IOPS that are provisioned
    # for the volume. For `gp2` volumes, this represents the baseline
    # performance of the volume and the rate at which the volume accumulates
    # I/O credits for bursting.
    # @return [Integer]
    def iops
      data[:iops]
    end

    # Any tags assigned to the volume.
    # @return [Array<Types::Tag>]
    def tags
      data[:tags]
    end

    # The volume type.
    # @return [String]
    def volume_type
      data[:volume_type]
    end

    # Indicates whether the volume was created using fast snapshot restore.
    # @return [Boolean]
    def fast_restored
      data[:fast_restored]
    end

    # Indicates whether Amazon EBS Multi-Attach is enabled.
    # @return [Boolean]
    def multi_attach_enabled
      data[:multi_attach_enabled]
    end

    # The throughput that the volume supports, in MiB/s.
    # @return [Integer]
    def throughput
      data[:throughput]
    end

    # @!endgroup

    # @return [Client]
    def client
      @client
    end

    # Loads, or reloads {#data} for the current {Volume}.
    # Returns `self` making it possible to chain methods.
    #
    #     volume.reload.data
    #
    # @return [self]
    def load
      resp = Aws::Plugins::UserAgent.feature('resource') do
        @client.describe_volumes(volume_ids: [@id])
      end
      @data = resp.volumes[0]
      self
    end
    alias :reload :load

    # @return [Types::Volume]
    #   Returns the data for this {Volume}. Calls
    #   {Client#describe_volumes} if {#data_loaded?} is `false`.
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
      Aws::Plugins::UserAgent.feature('resource') do
        Aws::Waiters::Waiter.new(options).wait({})
      end
    end

    # @!group Actions

    # @example Request syntax with placeholder values
    #
    #   volume.attach_to_instance({
    #     device: "String", # required
    #     instance_id: "InstanceId", # required
    #     dry_run: false,
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :device
    #   The device name (for example, `/dev/sdh` or `xvdh`).
    # @option options [required, String] :instance_id
    #   The ID of the instance.
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @return [Types::VolumeAttachment]
    def attach_to_instance(options = {})
      options = options.merge(volume_id: @id)
      resp = Aws::Plugins::UserAgent.feature('resource') do
        @client.attach_volume(options)
      end
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   snapshot = volume.create_snapshot({
    #     description: "String",
    #     outpost_arn: "String",
    #     tag_specifications: [
    #       {
    #         resource_type: "capacity-reservation", # accepts capacity-reservation, client-vpn-endpoint, customer-gateway, carrier-gateway, coip-pool, dedicated-host, dhcp-options, egress-only-internet-gateway, elastic-ip, elastic-gpu, export-image-task, export-instance-task, fleet, fpga-image, host-reservation, image, import-image-task, import-snapshot-task, instance, instance-event-window, internet-gateway, ipam, ipam-pool, ipam-scope, ipv4pool-ec2, ipv6pool-ec2, key-pair, launch-template, local-gateway, local-gateway-route-table, local-gateway-virtual-interface, local-gateway-virtual-interface-group, local-gateway-route-table-vpc-association, local-gateway-route-table-virtual-interface-group-association, natgateway, network-acl, network-interface, network-insights-analysis, network-insights-path, network-insights-access-scope, network-insights-access-scope-analysis, placement-group, prefix-list, replace-root-volume-task, reserved-instances, route-table, security-group, security-group-rule, snapshot, spot-fleet-request, spot-instances-request, subnet, subnet-cidr-reservation, traffic-mirror-filter, traffic-mirror-session, traffic-mirror-target, transit-gateway, transit-gateway-attachment, transit-gateway-connect-peer, transit-gateway-multicast-domain, transit-gateway-policy-table, transit-gateway-route-table, transit-gateway-route-table-announcement, volume, vpc, vpc-endpoint, vpc-endpoint-connection, vpc-endpoint-service, vpc-endpoint-service-permission, vpc-peering-connection, vpn-connection, vpn-gateway, vpc-flow-log, capacity-reservation-fleet, traffic-mirror-filter-rule, vpc-endpoint-connection-device-type, verified-access-instance, verified-access-group, verified-access-endpoint, verified-access-policy, verified-access-trust-provider, vpn-connection-device-type, vpc-block-public-access-exclusion, ipam-resource-discovery, ipam-resource-discovery-association, instance-connect-endpoint
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
    # @option options [Array<Types::TagSpecification>] :tag_specifications
    #   The tags to apply to the snapshot during creation.
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @return [Snapshot]
    def create_snapshot(options = {})
      options = options.merge(volume_id: @id)
      resp = Aws::Plugins::UserAgent.feature('resource') do
        @client.create_snapshot(options)
      end
      Snapshot.new(
        id: resp.data.snapshot_id,
        data: resp.data,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   tag = volume.create_tags({
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
      resp = Aws::Plugins::UserAgent.feature('resource') do
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
    #   tag = volume.delete_tags({
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
      resp = Aws::Plugins::UserAgent.feature('resource') do
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
    #   volume.delete({
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
      options = options.merge(volume_id: @id)
      resp = Aws::Plugins::UserAgent.feature('resource') do
        @client.delete_volume(options)
      end
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   volume.describe_attribute({
    #     attribute: "autoEnableIO", # required, accepts autoEnableIO, productCodes
    #     dry_run: false,
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :attribute
    #   The attribute of the volume. This parameter is required.
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @return [Types::DescribeVolumeAttributeResult]
    def describe_attribute(options = {})
      options = options.merge(volume_id: @id)
      resp = Aws::Plugins::UserAgent.feature('resource') do
        @client.describe_volume_attribute(options)
      end
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   volume.describe_status({
    #     filters: [
    #       {
    #         name: "String",
    #         values: ["String"],
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "String",
    #     dry_run: false,
    #   })
    # @param [Hash] options ({})
    # @option options [Array<Types::Filter>] :filters
    #   The filters.
    #
    #   * `action.code` - The action code for the event (for example,
    #     `enable-volume-io`).
    #
    #   * `action.description` - A description of the action.
    #
    #   * `action.event-id` - The event ID associated with the action.
    #
    #   * `availability-zone` - The Availability Zone of the instance.
    #
    #   * `event.description` - A description of the event.
    #
    #   * `event.event-id` - The event ID.
    #
    #   * `event.event-type` - The event type (for `io-enabled`: `passed` \|
    #     `failed`; for `io-performance`: `io-performance:degraded` \|
    #     `io-performance:severely-degraded` \| `io-performance:stalled`).
    #
    #   * `event.not-after` - The latest end time for the event.
    #
    #   * `event.not-before` - The earliest start time for the event.
    #
    #   * `volume-status.details-name` - The cause for `volume-status.status`
    #     (`io-enabled` \| `io-performance`).
    #
    #   * `volume-status.details-status` - The status of
    #     `volume-status.details-name` (for `io-enabled`: `passed` \|
    #     `failed`; for `io-performance`: `normal` \| `degraded` \|
    #     `severely-degraded` \| `stalled`).
    #
    #   * `volume-status.status` - The status of the volume (`ok` \|
    #     `impaired` \| `warning` \| `insufficient-data`).
    # @option options [Integer] :max_results
    #   The maximum number of items to return for this request. To get the
    #   next page of items, make another request with the token returned in
    #   the output. This value can be between 5 and 1,000; if the value is
    #   larger than 1,000, only 1,000 results are returned. If this parameter
    #   is not used, then all items are returned. You cannot specify this
    #   parameter and the volume IDs parameter in the same request. For more
    #   information, see [Pagination][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination
    # @option options [String] :next_token
    #   The token returned from a previous paginated request. Pagination
    #   continues from the end of the items returned by the previous request.
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @return [Types::DescribeVolumeStatusResult]
    def describe_status(options = {})
      options = Aws::Util.deep_merge(options, volume_ids: [@id])
      resp = Aws::Plugins::UserAgent.feature('resource') do
        @client.describe_volume_status(options)
      end
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   volume.detach_from_instance({
    #     device: "String",
    #     force: false,
    #     instance_id: "InstanceIdForResolver",
    #     dry_run: false,
    #   })
    # @param [Hash] options ({})
    # @option options [String] :device
    #   The device name.
    # @option options [Boolean] :force
    #   Forces detachment if the previous detachment attempt did not occur
    #   cleanly (for example, logging into an instance, unmounting the volume,
    #   and detaching normally). This option can lead to data loss or a
    #   corrupted file system. Use this option only as a last resort to detach
    #   a volume from a failed instance. The instance won't have an
    #   opportunity to flush file system caches or file system metadata. If
    #   you use this option, you must perform file system check and repair
    #   procedures.
    # @option options [String] :instance_id
    #   The ID of the instance. If you are detaching a Multi-Attach enabled
    #   volume, you must specify an instance ID.
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @return [Types::VolumeAttachment]
    def detach_from_instance(options = {})
      options = options.merge(volume_id: @id)
      resp = Aws::Plugins::UserAgent.feature('resource') do
        @client.detach_volume(options)
      end
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   volume.enable_io({
    #     dry_run: false,
    #   })
    # @param [Hash] options ({})
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @return [EmptyStructure]
    def enable_io(options = {})
      options = options.merge(volume_id: @id)
      resp = Aws::Plugins::UserAgent.feature('resource') do
        @client.enable_volume_io(options)
      end
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   volume.modify_attribute({
    #     auto_enable_io: {
    #       value: false,
    #     },
    #     dry_run: false,
    #   })
    # @param [Hash] options ({})
    # @option options [Types::AttributeBooleanValue] :auto_enable_io
    #   Indicates whether the volume should be auto-enabled for I/O
    #   operations.
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @return [EmptyStructure]
    def modify_attribute(options = {})
      options = options.merge(volume_id: @id)
      resp = Aws::Plugins::UserAgent.feature('resource') do
        @client.modify_volume_attribute(options)
      end
      resp.data
    end

    # @!group Associations

    # @example Request syntax with placeholder values
    #
    #   snapshots = volume.snapshots({
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
        options = Aws::Util.deep_merge(options, filters: [{
          name: "volume-id",
          values: [@id]
        }])
        resp = Aws::Plugins::UserAgent.feature('resource') do
          @client.describe_snapshots(options)
        end
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
