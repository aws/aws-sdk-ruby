# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
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

    # Indicates whether the volume will be encrypted.
    # @return [Boolean]
    def encrypted
      data[:encrypted]
    end

    # The full ARN of the AWS Key Management Service (AWS KMS) customer
    # master key (CMK) that was used to protect the volume encryption key
    # for the volume.
    # @return [String]
    def kms_key_id
      data[:kms_key_id]
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

    # The number of I/O operations per second (IOPS) that the volume
    # supports. For Provisioned IOPS SSD volumes, this represents the number
    # of IOPS that are provisioned for the volume. For General Purpose SSD
    # volumes, this represents the baseline performance of the volume and
    # the rate at which the volume accumulates I/O credits for bursting. For
    # more information about General Purpose SSD baseline performance, I/O
    # credits, and bursting, see [Amazon EBS Volume Types][1] in the *Amazon
    # Elastic Compute Cloud User Guide*.
    #
    # Constraint: Range is 100-32000 IOPS for io1 volumes and 100-10000 IOPS
    # for `gp2` volumes.
    #
    # Condition: This parameter is required for requests to create `io1`
    # volumes; it is not used in requests to create `gp2`, `st1`, `sc1`, or
    # `standard` volumes.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html
    # @return [Integer]
    def iops
      data[:iops]
    end

    # Any tags assigned to the volume.
    # @return [Array<Types::Tag>]
    def tags
      data[:tags]
    end

    # The volume type. This can be `gp2` for General Purpose SSD, `io1` for
    # Provisioned IOPS SSD, `st1` for Throughput Optimized HDD, `sc1` for
    # Cold HDD, or `standard` for Magnetic volumes.
    # @return [String]
    def volume_type
      data[:volume_type]
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
      resp = @client.describe_volumes(volume_ids: [@id])
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
    # @note The waiting operation is performed on a copy. The original resource remains unchanged
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
    #     instance.wait_until(max_attempts:10, delay:5) {|instance| instance.state.name == 'running' }
    #
    # ## Configuration
    #
    # You can configure the maximum number of polling attempts, and the
    # delay (in seconds) between each polling attempt. The waiting condition is set
    # by passing a block to {#wait_until}:
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
    #
    # @yield param [Resource] resource to be used in the waiting condition
    #
    # @raise [Aws::Waiters::Errors::FailureStateError] Raised when the waiter terminates
    #   because the waiter has entered a state that it will not transition
    #   out of, preventing success.
    #
    #   yet successful.
    #
    # @raise [Aws::Waiters::Errors::UnexpectedError] Raised when an error is encountered
    #   while polling for a resource that is not expected.
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
    #   volume.attach_to_instance({
    #     device: "String", # required
    #     instance_id: "String", # required
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
      resp = @client.attach_volume(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   snapshot = volume.create_snapshot({
    #     description: "String",
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
      resp = @client.create_snapshot(options)
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
    #   One or more tags. The `value` parameter is required, but if you don't
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
      resp = @client.delete_volume(options)
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
      resp = @client.describe_volume_attribute(options)
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
    #   One or more filters.
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
    #   * `event.event-type` - The event type (for `io-enabled`\: `passed` \|
    #     `failed`; for `io-performance`\: `io-performance:degraded` \|
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
    #     `volume-status.details-name` (for `io-enabled`\: `passed` \|
    #     `failed`; for `io-performance`\: `normal` \| `degraded` \|
    #     `severely-degraded` \| `stalled`).
    #
    #   * `volume-status.status` - The status of the volume (`ok` \|
    #     `impaired` \| `warning` \| `insufficient-data`).
    # @option options [Integer] :max_results
    #   The maximum number of volume results returned by
    #   `DescribeVolumeStatus` in paginated output. When this parameter is
    #   used, the request only returns `MaxResults` results in a single page
    #   along with a `NextToken` response element. The remaining results of
    #   the initial request can be seen by sending another request with the
    #   returned `NextToken` value. This value can be between 5 and 1000; if
    #   `MaxResults` is given a value larger than 1000, only 1000 results are
    #   returned. If this parameter is not used, then `DescribeVolumeStatus`
    #   returns all results. You cannot specify this parameter and the volume
    #   IDs parameter in the same request.
    # @option options [String] :next_token
    #   The `NextToken` value to include in a future `DescribeVolumeStatus`
    #   request. When the results of the request exceed `MaxResults`, this
    #   value can be used to retrieve the next page of results. This value is
    #   `null` when there are no more results to return.
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @return [Types::DescribeVolumeStatusResult]
    def describe_status(options = {})
      options = Aws::Util.deep_merge(options, volume_ids: [@id])
      resp = @client.describe_volume_status(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   volume.detach_from_instance({
    #     device: "String",
    #     force: false,
    #     instance_id: "String",
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
    #   The ID of the instance.
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @return [Types::VolumeAttachment]
    def detach_from_instance(options = {})
      options = options.merge(volume_id: @id)
      resp = @client.detach_volume(options)
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
      resp = @client.enable_volume_io(options)
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
      resp = @client.modify_volume_attribute(options)
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
        options = Aws::Util.deep_merge(options, filters: [{
          name: "volume-id",
          values: [@id]
        }])
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
