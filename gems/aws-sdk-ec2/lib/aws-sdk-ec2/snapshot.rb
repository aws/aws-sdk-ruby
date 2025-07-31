# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::EC2

  class Snapshot

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
    alias :snapshot_id :id

    # The Amazon Web Services owner alias, from an Amazon-maintained list
    # (`amazon`). This is not the user-configured Amazon Web Services
    # account alias set using the IAM console.
    # @return [String]
    def owner_alias
      data[:owner_alias]
    end

    # The ARN of the Outpost on which the snapshot is stored. For more
    # information, see [Amazon EBS local snapshots on Outposts][1] in the
    # *Amazon EBS User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/ebs/latest/userguide/snapshots-outposts.html
    # @return [String]
    def outpost_arn
      data[:outpost_arn]
    end

    # Any tags assigned to the snapshot.
    # @return [Array<Types::Tag>]
    def tags
      data[:tags]
    end

    # The storage tier in which the snapshot is stored. `standard` indicates
    # that the snapshot is stored in the standard snapshot storage tier and
    # that it is ready for use. `archive` indicates that the snapshot is
    # currently archived and that it must be restored before it can be used.
    # @return [String]
    def storage_tier
      data[:storage_tier]
    end

    # Only for archived snapshots that are temporarily restored. Indicates
    # the date and time when a temporarily restored snapshot will be
    # automatically re-archived.
    # @return [Time]
    def restore_expiry_time
      data[:restore_expiry_time]
    end

    # Reserved for future use.
    # @return [String]
    def sse_type
      data[:sse_type]
    end

    # The Availability Zone or Local Zone of the snapshot. For example,
    # `us-west-1a` (Availability Zone) or `us-west-2-lax-1a` (Local Zone).
    # @return [String]
    def availability_zone
      data[:availability_zone]
    end

    # <note markdown="1"> Only for snapshot copies.
    #
    #  </note>
    #
    # Indicates whether the snapshot copy was created with a standard or
    # time-based snapshot copy operation. Time-based snapshot copy
    # operations complete within the completion duration specified in the
    # request. Standard snapshot copy operations are completed on a
    # best-effort basis.
    #
    # * `standard` - The snapshot copy was created with a standard snapshot
    #   copy operation.
    #
    # * `time-based` - The snapshot copy was created with a time-based
    #   snapshot copy operation.
    # @return [String]
    def transfer_type
      data[:transfer_type]
    end

    # <note markdown="1"> Only for snapshot copies created with time-based snapshot copy
    # operations.
    #
    #  </note>
    #
    # The completion duration requested for the time-based snapshot copy
    # operation.
    # @return [Integer]
    def completion_duration_minutes
      data[:completion_duration_minutes]
    end

    # The time stamp when the snapshot was completed.
    # @return [Time]
    def completion_time
      data[:completion_time]
    end

    # The full size of the snapshot, in bytes.
    #
    # This is **not** the incremental size of the snapshot. This is the full
    # snapshot size and represents the size of all the blocks that were
    # written to the source volume at the time the snapshot was created.
    # @return [Integer]
    def full_snapshot_size_in_bytes
      data[:full_snapshot_size_in_bytes]
    end

    # The ID of the volume that was used to create the snapshot. Snapshots
    # created by a copy snapshot operation have an arbitrary volume ID that
    # you should not use for any purpose.
    # @return [String]
    def volume_id
      data[:volume_id]
    end

    # The snapshot state.
    # @return [String]
    def state
      data[:state]
    end

    # Encrypted Amazon EBS snapshots are copied asynchronously. If a
    # snapshot copy operation fails (for example, if the proper KMS
    # permissions are not obtained) this field displays error state details
    # to help you diagnose why the error occurred. This parameter is only
    # returned by DescribeSnapshots.
    # @return [String]
    def state_message
      data[:state_message]
    end

    # The time stamp when the snapshot was initiated.
    # @return [Time]
    def start_time
      data[:start_time]
    end

    # The progress of the snapshot, as a percentage.
    # @return [String]
    def progress
      data[:progress]
    end

    # The ID of the Amazon Web Services account that owns the EBS snapshot.
    # @return [String]
    def owner_id
      data[:owner_id]
    end

    # The description for the snapshot.
    # @return [String]
    def description
      data[:description]
    end

    # The size of the volume, in GiB.
    # @return [Integer]
    def volume_size
      data[:volume_size]
    end

    # Indicates whether the snapshot is encrypted.
    # @return [Boolean]
    def encrypted
      data[:encrypted]
    end

    # The Amazon Resource Name (ARN) of the KMS key that was used to protect
    # the volume encryption key for the parent volume.
    # @return [String]
    def kms_key_id
      data[:kms_key_id]
    end

    # The data encryption key identifier for the snapshot. This value is a
    # unique identifier that corresponds to the data encryption key that was
    # used to encrypt the original volume or snapshot copy. Because data
    # encryption keys are inherited by volumes created from snapshots, and
    # vice versa, if snapshots share the same data encryption key
    # identifier, then they belong to the same volume/snapshot lineage. This
    # parameter is only returned by DescribeSnapshots.
    # @return [String]
    def data_encryption_key_id
      data[:data_encryption_key_id]
    end

    # @!endgroup

    # @return [Client]
    def client
      @client
    end

    # Loads, or reloads {#data} for the current {Snapshot}.
    # Returns `self` making it possible to chain methods.
    #
    #     snapshot.reload.data
    #
    # @return [self]
    def load
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.describe_snapshots(snapshot_ids: [@id])
      end
      @data = resp.snapshots[0]
      self
    end
    alias :reload :load

    # @return [Types::Snapshot]
    #   Returns the data for this {Snapshot}. Calls
    #   {Client#describe_snapshots} if {#data_loaded?} is `false`.
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

    # @param [Hash] options ({})
    # @option options [Integer] :max_attempts (40)
    # @option options [Float] :delay (15)
    # @option options [Proc] :before_attempt
    # @option options [Proc] :before_wait
    # @return [Snapshot]
    def wait_until_completed(options = {}, &block)
      options, params = separate_params_and_options(options)
      waiter = Waiters::SnapshotCompleted.new(options)
      yield_waiter_and_warn(waiter, &block) if block_given?
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        waiter.wait(params.merge(snapshot_ids: [@id]))
      end
      Snapshot.new({
        id: @id,
        data: resp.data.snapshots[0],
        client: @client
      })
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
    #   snapshot.copy({
    #     description: "String",
    #     destination_outpost_arn: "String",
    #     destination_region: "String",
    #     encrypted: false,
    #     kms_key_id: "KmsKeyId",
    #     presigned_url: "CopySnapshotRequestPSU",
    #     source_region: "String", # required
    #     tag_specifications: [
    #       {
    #         resource_type: "capacity-reservation", # accepts capacity-reservation, client-vpn-endpoint, customer-gateway, carrier-gateway, coip-pool, declarative-policies-report, dedicated-host, dhcp-options, egress-only-internet-gateway, elastic-ip, elastic-gpu, export-image-task, export-instance-task, fleet, fpga-image, host-reservation, image, import-image-task, import-snapshot-task, instance, instance-event-window, internet-gateway, ipam, ipam-pool, ipam-scope, ipv4pool-ec2, ipv6pool-ec2, key-pair, launch-template, local-gateway, local-gateway-route-table, local-gateway-virtual-interface, local-gateway-virtual-interface-group, local-gateway-route-table-vpc-association, local-gateway-route-table-virtual-interface-group-association, natgateway, network-acl, network-interface, network-insights-analysis, network-insights-path, network-insights-access-scope, network-insights-access-scope-analysis, outpost-lag, placement-group, prefix-list, replace-root-volume-task, reserved-instances, route-table, security-group, security-group-rule, service-link-virtual-interface, snapshot, spot-fleet-request, spot-instances-request, subnet, subnet-cidr-reservation, traffic-mirror-filter, traffic-mirror-session, traffic-mirror-target, transit-gateway, transit-gateway-attachment, transit-gateway-connect-peer, transit-gateway-multicast-domain, transit-gateway-policy-table, transit-gateway-route-table, transit-gateway-route-table-announcement, volume, vpc, vpc-endpoint, vpc-endpoint-connection, vpc-endpoint-service, vpc-endpoint-service-permission, vpc-peering-connection, vpn-connection, vpn-gateway, vpc-flow-log, capacity-reservation-fleet, traffic-mirror-filter-rule, vpc-endpoint-connection-device-type, verified-access-instance, verified-access-group, verified-access-endpoint, verified-access-policy, verified-access-trust-provider, vpn-connection-device-type, vpc-block-public-access-exclusion, route-server, route-server-endpoint, route-server-peer, ipam-resource-discovery, ipam-resource-discovery-association, instance-connect-endpoint, verified-access-endpoint-target, ipam-external-resource-verification-token, capacity-block, mac-modification-task
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String",
    #           },
    #         ],
    #       },
    #     ],
    #     completion_duration_minutes: 1,
    #     dry_run: false,
    #   })
    # @param [Hash] options ({})
    # @option options [String] :description
    #   A description for the EBS snapshot.
    # @option options [String] :destination_outpost_arn
    #   The Amazon Resource Name (ARN) of the Outpost to which to copy the
    #   snapshot. Only specify this parameter when copying a snapshot from an
    #   Amazon Web Services Region to an Outpost. The snapshot must be in the
    #   Region for the destination Outpost. You cannot copy a snapshot from an
    #   Outpost to a Region, from one Outpost to another, or within the same
    #   Outpost.
    #
    #   For more information, see [ Copy snapshots from an Amazon Web Services
    #   Region to an Outpost][1] in the *Amazon EBS User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/ebs/latest/userguide/snapshots-outposts.html#copy-snapshots
    # @option options [String] :destination_region
    #   The destination Region to use in the `PresignedUrl` parameter of a
    #   snapshot copy operation. This parameter is only valid for specifying
    #   the destination Region in a `PresignedUrl` parameter, where it is
    #   required.
    #
    #   The snapshot copy is sent to the regional endpoint that you sent the
    #   HTTP request to (for example, `ec2.us-east-1.amazonaws.com`). With the
    #   CLI, this is specified using the `--region` parameter or the default
    #   Region in your Amazon Web Services configuration file.
    # @option options [Boolean] :encrypted
    #   To encrypt a copy of an unencrypted snapshot if encryption by default
    #   is not enabled, enable encryption using this parameter. Otherwise,
    #   omit this parameter. Encrypted snapshots are encrypted, even if you
    #   omit this parameter and encryption by default is not enabled. You
    #   cannot set this parameter to false. For more information, see [Amazon
    #   EBS encryption][1] in the *Amazon EBS User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/ebs/latest/userguide/ebs-encryption.html
    # @option options [String] :kms_key_id
    #   The identifier of the KMS key to use for Amazon EBS encryption. If
    #   this parameter is not specified, your KMS key for Amazon EBS is used.
    #   If `KmsKeyId` is specified, the encrypted state must be `true`.
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
    # @option options [String] :presigned_url
    #   When you copy an encrypted source snapshot using the Amazon EC2 Query
    #   API, you must supply a pre-signed URL. This parameter is optional for
    #   unencrypted snapshots. For more information, see [Query requests][1].
    #
    #   The `PresignedUrl` should use the snapshot source endpoint, the
    #   `CopySnapshot` action, and include the `SourceRegion`,
    #   `SourceSnapshotId`, and `DestinationRegion` parameters. The
    #   `PresignedUrl` must be signed using Amazon Web Services Signature
    #   Version 4. Because EBS snapshots are stored in Amazon S3, the signing
    #   algorithm for this parameter uses the same logic that is described in
    #   [ Authenticating Requests: Using Query Parameters (Amazon Web Services
    #   Signature Version 4)][2] in the *Amazon S3 API Reference*. An invalid
    #   or improperly signed `PresignedUrl` will cause the copy operation to
    #   fail asynchronously, and the snapshot will move to an `error` state.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html
    #   [2]: https://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html
    # @option options [required, String] :source_region
    #   The ID of the Region that contains the snapshot to be copied.
    # @option options [Array<Types::TagSpecification>] :tag_specifications
    #   The tags to apply to the new snapshot.
    # @option options [Integer] :completion_duration_minutes
    #   Specify a completion duration, in 15 minute increments, to initiate a
    #   time-based snapshot copy. Time-based snapshot copy operations complete
    #   within the specified duration. For more information, see [ Time-based
    #   copies][1].
    #
    #   If you do not specify a value, the snapshot copy operation is
    #   completed on a best-effort basis.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/ebs/latest/userguide/time-based-copies.html
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @return [Types::CopySnapshotResult]
    def copy(options = {})
      options = options.merge(source_snapshot_id: @id)
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.copy_snapshot(options)
      end
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   tag = snapshot.create_tags({
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
    #   tag = snapshot.delete_tags({
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
    #   snapshot.delete({
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
      options = options.merge(snapshot_id: @id)
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.delete_snapshot(options)
      end
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   snapshot.describe_attribute({
    #     attribute: "productCodes", # required, accepts productCodes, createVolumePermission
    #     dry_run: false,
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :attribute
    #   The snapshot attribute you would like to view.
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @return [Types::DescribeSnapshotAttributeResult]
    def describe_attribute(options = {})
      options = options.merge(snapshot_id: @id)
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.describe_snapshot_attribute(options)
      end
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   snapshot.modify_attribute({
    #     attribute: "productCodes", # accepts productCodes, createVolumePermission
    #     create_volume_permission: {
    #       add: [
    #         {
    #           user_id: "String",
    #           group: "all", # accepts all
    #         },
    #       ],
    #       remove: [
    #         {
    #           user_id: "String",
    #           group: "all", # accepts all
    #         },
    #       ],
    #     },
    #     group_names: ["SecurityGroupName"],
    #     operation_type: "add", # accepts add, remove
    #     user_ids: ["String"],
    #     dry_run: false,
    #   })
    # @param [Hash] options ({})
    # @option options [String] :attribute
    #   The snapshot attribute to modify. Only volume creation permissions can
    #   be modified.
    # @option options [Types::CreateVolumePermissionModifications] :create_volume_permission
    #   A JSON representation of the snapshot attribute modification.
    # @option options [Array<String>] :group_names
    #   The group to modify for the snapshot.
    # @option options [String] :operation_type
    #   The type of operation to perform to the attribute.
    # @option options [Array<String>] :user_ids
    #   The account ID to modify for the snapshot.
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @return [EmptyStructure]
    def modify_attribute(options = {})
      options = options.merge(snapshot_id: @id)
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.modify_snapshot_attribute(options)
      end
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   snapshot.reset_attribute({
    #     attribute: "productCodes", # required, accepts productCodes, createVolumePermission
    #     dry_run: false,
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :attribute
    #   The attribute to reset. Currently, only the attribute for permission
    #   to create volumes can be reset.
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @return [EmptyStructure]
    def reset_attribute(options = {})
      options = options.merge(snapshot_id: @id)
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.reset_snapshot_attribute(options)
      end
      resp.data
    end

    # @!group Associations

    # @return [Volume, nil]
    def volume
      if data[:volume_id]
        Volume.new(
          id: data[:volume_id],
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

    def yield_waiter_and_warn(waiter, &block)
      if !@waiter_block_warned
        msg = "pass options to configure the waiter; "\
              "yielding the waiter is deprecated"
        warn(msg)
        @waiter_block_warned = true
      end
      yield(waiter.waiter)
    end

    def separate_params_and_options(options)
      opts = Set.new(
        [:client, :max_attempts, :delay, :before_attempt, :before_wait]
      )
      waiter_opts = {}
      waiter_params = {}
      options.each_pair do |key, value|
        if opts.include?(key)
          waiter_opts[key] = value
        else
          waiter_params[key] = value
        end
      end
      waiter_opts[:client] ||= @client
      [waiter_opts, waiter_params]
    end

    class Collection < Aws::Resources::Collection; end
  end
end
