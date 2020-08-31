# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
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

    # The description for the snapshot.
    # @return [String]
    def description
      data[:description]
    end

    # Indicates whether the snapshot is encrypted.
    # @return [Boolean]
    def encrypted
      data[:encrypted]
    end

    # The Amazon Resource Name (ARN) of the AWS Key Management Service (AWS
    # KMS) customer master key (CMK) that was used to protect the volume
    # encryption key for the parent volume.
    # @return [String]
    def kms_key_id
      data[:kms_key_id]
    end

    # The AWS account ID of the EBS snapshot owner.
    # @return [String]
    def owner_id
      data[:owner_id]
    end

    # The progress of the snapshot, as a percentage.
    # @return [String]
    def progress
      data[:progress]
    end

    # The time stamp when the snapshot was initiated.
    # @return [Time]
    def start_time
      data[:start_time]
    end

    # The snapshot state.
    # @return [String]
    def state
      data[:state]
    end

    # Encrypted Amazon EBS snapshots are copied asynchronously. If a
    # snapshot copy operation fails (for example, if the proper AWS Key
    # Management Service (AWS KMS) permissions are not obtained) this field
    # displays error state details to help you diagnose why the error
    # occurred. This parameter is only returned by DescribeSnapshots.
    # @return [String]
    def state_message
      data[:state_message]
    end

    # The ID of the volume that was used to create the snapshot. Snapshots
    # created by the CopySnapshot action have an arbitrary volume ID that
    # should not be used for any purpose.
    # @return [String]
    def volume_id
      data[:volume_id]
    end

    # The size of the volume, in GiB.
    # @return [Integer]
    def volume_size
      data[:volume_size]
    end

    # The AWS owner alias, as maintained by Amazon. The possible values are:
    # `amazon` \| `self` \| `all` \| `aws-marketplace` \| `microsoft`. This
    # AWS owner alias is not to be confused with the user-configured AWS
    # account alias, which is set from the IAM console.
    # @return [String]
    def owner_alias
      data[:owner_alias]
    end

    # Any tags assigned to the snapshot.
    # @return [Array<Types::Tag>]
    def tags
      data[:tags]
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
      resp = @client.describe_snapshots(snapshot_ids: [@id])
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
      resp = waiter.wait(params.merge(snapshot_ids: [@id]))
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
      Aws::Waiters::Waiter.new(options).wait({})
    end

    # @!group Actions

    # @example Request syntax with placeholder values
    #
    #   snapshot.copy({
    #     description: "String",
    #     destination_region: "String",
    #     encrypted: false,
    #     kms_key_id: "KmsKeyId",
    #     presigned_url: "String",
    #     source_region: "String", # required
    #     tag_specifications: [
    #       {
    #         resource_type: "client-vpn-endpoint", # accepts client-vpn-endpoint, customer-gateway, dedicated-host, dhcp-options, egress-only-internet-gateway, elastic-ip, elastic-gpu, export-image-task, export-instance-task, fleet, fpga-image, host-reservation, image, import-image-task, import-snapshot-task, instance, internet-gateway, key-pair, launch-template, local-gateway-route-table-vpc-association, natgateway, network-acl, network-interface, placement-group, reserved-instances, route-table, security-group, snapshot, spot-fleet-request, spot-instances-request, subnet, traffic-mirror-filter, traffic-mirror-session, traffic-mirror-target, transit-gateway, transit-gateway-attachment, transit-gateway-multicast-domain, transit-gateway-route-table, volume, vpc, vpc-peering-connection, vpn-connection, vpn-gateway, vpc-flow-log
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
    #   A description for the EBS snapshot.
    # @option options [String] :destination_region
    #   The destination Region to use in the `PresignedUrl` parameter of a
    #   snapshot copy operation. This parameter is only valid for specifying
    #   the destination Region in a `PresignedUrl` parameter, where it is
    #   required.
    #
    #   The snapshot copy is sent to the regional endpoint that you sent the
    #   HTTP request to (for example, `ec2.us-east-1.amazonaws.com`). With the
    #   AWS CLI, this is specified using the `--region` parameter or the
    #   default Region in your AWS configuration file.
    # @option options [Boolean] :encrypted
    #   To encrypt a copy of an unencrypted snapshot if encryption by default
    #   is not enabled, enable encryption using this parameter. Otherwise,
    #   omit this parameter. Encrypted snapshots are encrypted, even if you
    #   omit this parameter and encryption by default is not enabled. You
    #   cannot set this parameter to false. For more information, see [Amazon
    #   EBS Encryption][1] in the *Amazon Elastic Compute Cloud User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html
    # @option options [String] :kms_key_id
    #   The identifier of the AWS Key Management Service (AWS KMS) customer
    #   master key (CMK) to use for Amazon EBS encryption. If this parameter
    #   is not specified, your AWS managed CMK for EBS is used. If `KmsKeyId`
    #   is specified, the encrypted state must be `true`.
    #
    #   You can specify the CMK using any of the following:
    #
    #   * Key ID. For example, key/1234abcd-12ab-34cd-56ef-1234567890ab.
    #
    #   * Key alias. For example, alias/ExampleAlias.
    #
    #   * Key ARN. For example,
    #     arn:aws:kms:*us-east-1*\:*012345678910*\:key/*abcd1234-a123-456a-a12b-a123b4cd56ef*.
    #
    #   * Alias ARN. For example,
    #     arn:aws:kms:*us-east-1*\:*012345678910*\:alias/*ExampleAlias*.
    #
    #   AWS authenticates the CMK asynchronously. Therefore, if you specify an
    #   ID, alias, or ARN that is not valid, the action can appear to
    #   complete, but eventually fails.
    # @option options [String] :presigned_url
    #   When you copy an encrypted source snapshot using the Amazon EC2 Query
    #   API, you must supply a pre-signed URL. This parameter is optional for
    #   unencrypted snapshots. For more information, see [Query Requests][1].
    #
    #   The `PresignedUrl` should use the snapshot source endpoint, the
    #   `CopySnapshot` action, and include the `SourceRegion`,
    #   `SourceSnapshotId`, and `DestinationRegion` parameters. The
    #   `PresignedUrl` must be signed using AWS Signature Version 4. Because
    #   EBS snapshots are stored in Amazon S3, the signing algorithm for this
    #   parameter uses the same logic that is described in [Authenticating
    #   Requests by Using Query Parameters (AWS Signature Version 4)][2] in
    #   the *Amazon Simple Storage Service API Reference*. An invalid or
    #   improperly signed `PresignedUrl` will cause the copy operation to fail
    #   asynchronously, and the snapshot will move to an `error` state.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html
    #   [2]: https://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html
    # @option options [required, String] :source_region
    #   The ID of the Region that contains the snapshot to be copied.
    # @option options [Array<Types::TagSpecification>] :tag_specifications
    #   The tags to apply to the new snapshot.
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @return [Types::CopySnapshotResult]
    def copy(options = {})
      options = options.merge(source_snapshot_id: @id)
      resp = @client.copy_snapshot(options)
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
      resp = @client.delete_snapshot(options)
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
      resp = @client.describe_snapshot_attribute(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   snapshot.modify_attribute({
    #     attribute: "productCodes", # accepts productCodes, createVolumePermission
    #     create_volume_permission: {
    #       add: [
    #         {
    #           group: "all", # accepts all
    #           user_id: "String",
    #         },
    #       ],
    #       remove: [
    #         {
    #           group: "all", # accepts all
    #           user_id: "String",
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
      resp = @client.modify_snapshot_attribute(options)
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
      resp = @client.reset_snapshot_attribute(options)
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
