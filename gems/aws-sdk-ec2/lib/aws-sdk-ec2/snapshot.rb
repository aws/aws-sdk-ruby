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
    # parameter is only returned by the DescribeSnapshots API operation.
    # @return [String]
    def data_encryption_key_id
      data.data_encryption_key_id
    end

    # The description for the snapshot.
    # @return [String]
    def description
      data.description
    end

    # Indicates whether the snapshot is encrypted.
    # @return [Boolean]
    def encrypted
      data.encrypted
    end

    # The full ARN of the AWS Key Management Service (AWS KMS) customer
    # master key (CMK) that was used to protect the volume encryption key
    # for the parent volume.
    # @return [String]
    def kms_key_id
      data.kms_key_id
    end

    # The AWS account ID of the EBS snapshot owner.
    # @return [String]
    def owner_id
      data.owner_id
    end

    # The progress of the snapshot, as a percentage.
    # @return [String]
    def progress
      data.progress
    end

    # The time stamp when the snapshot was initiated.
    # @return [Time]
    def start_time
      data.start_time
    end

    # The snapshot state.
    # @return [String]
    def state
      data.state
    end

    # Encrypted Amazon EBS snapshots are copied asynchronously. If a
    # snapshot copy operation fails (for example, if the proper AWS Key
    # Management Service (AWS KMS) permissions are not obtained) this field
    # displays error state details to help you diagnose why the error
    # occurred. This parameter is only returned by the DescribeSnapshots API
    # operation.
    # @return [String]
    def state_message
      data.state_message
    end

    # The ID of the volume that was used to create the snapshot. Snapshots
    # created by the CopySnapshot action have an arbitrary volume ID that
    # should not be used for any purpose.
    # @return [String]
    def volume_id
      data.volume_id
    end

    # The size of the volume, in GiB.
    # @return [Integer]
    def volume_size
      data.volume_size
    end

    # Value from an Amazon-maintained list (`amazon` \| `aws-marketplace` \|
    # `microsoft`) of snapshot owners. Not to be confused with the
    # user-configured AWS account alias, which is set from the IAM console.
    # @return [String]
    def owner_alias
      data.owner_alias
    end

    # Any tags assigned to the snapshot.
    # @return [Array<Types::Tag>]
    def tags
      data.tags
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
    def wait_until_completed(options = {})
      options, params = separate_params_and_options(options)
      waiter = Waiters::SnapshotCompleted.new(options)
      yield_waiter_and_warn(waiter, &Proc.new) if block_given?
      resp = waiter.wait(params.merge(snapshot_ids: [@id]))
      Snapshot.new({
        id: @id,
        data: resp.data.snapshots[],
        client: @client
      })
    end

    # @!group Actions

    # @example Request syntax with placeholder values
    #
    #   snapshot.copy({
    #     description: "String",
    #     destination_region: "String",
    #     encrypted: false,
    #     kms_key_id: "String",
    #     presigned_url: "String",
    #     source_region: "String", # required
    #     dry_run: false,
    #   })
    # @param [Hash] options ({})
    # @option options [String] :description
    #   A description for the EBS snapshot.
    # @option options [String] :destination_region
    #   The destination region to use in the `PresignedUrl` parameter of a
    #   snapshot copy operation. This parameter is only valid for specifying
    #   the destination region in a `PresignedUrl` parameter, where it is
    #   required.
    #
    #   <note markdown="1"> `CopySnapshot` sends the snapshot copy to the regional endpoint that
    #   you send the HTTP request to, such as `ec2.us-east-1.amazonaws.com`
    #   (in the AWS CLI, this is specified with the `--region` parameter or
    #   the default region in your AWS configuration file).
    #
    #    </note>
    # @option options [Boolean] :encrypted
    #   Specifies whether the destination snapshot should be encrypted. You
    #   can encrypt a copy of an unencrypted snapshot using this flag, but you
    #   cannot use it to create an unencrypted copy from an encrypted
    #   snapshot. Your default CMK for EBS is used unless a non-default AWS
    #   Key Management Service (AWS KMS) CMK is specified with `KmsKeyId`. For
    #   more information, see [Amazon EBS Encryption][1] in the *Amazon
    #   Elastic Compute Cloud User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html
    # @option options [String] :kms_key_id
    #   The full ARN of the AWS Key Management Service (AWS KMS) CMK to use
    #   when creating the snapshot copy. This parameter is only required if
    #   you want to use a non-default CMK; if this parameter is not specified,
    #   the default CMK for EBS is used. The ARN contains the `arn:aws:kms`
    #   namespace, followed by the region of the CMK, the AWS account ID of
    #   the CMK owner, the `key` namespace, and then the CMK ID. For example,
    #   arn:aws:kms:*us-east-1*\:*012345678910*\:key/*abcd1234-a123-456a-a12b-a123b4cd56ef*.
    #   The specified CMK must exist in the region that the snapshot is being
    #   copied to. If a `KmsKeyId` is specified, the `Encrypted` flag must
    #   also be set.
    # @option options [String] :presigned_url
    #   The pre-signed URL that facilitates copying an encrypted snapshot.
    #   This parameter is only required when copying an encrypted snapshot
    #   with the Amazon EC2 Query API; it is available as an optional
    #   parameter in all other cases. The `PresignedUrl` should use the
    #   snapshot source endpoint, the `CopySnapshot` action, and include the
    #   `SourceRegion`, `SourceSnapshotId`, and `DestinationRegion`
    #   parameters. The `PresignedUrl` must be signed using AWS Signature
    #   Version 4. Because EBS snapshots are stored in Amazon S3, the signing
    #   algorithm for this parameter uses the same logic that is described in
    #   [Authenticating Requests by Using Query Parameters (AWS Signature
    #   Version 4)][1] in the *Amazon Simple Storage Service API Reference*.
    #   An invalid or improperly signed `PresignedUrl` will cause the copy
    #   operation to fail asynchronously, and the snapshot will move to an
    #   `error` state.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html
    # @option options [required, String] :source_region
    #   The ID of the region that contains the snapshot to be copied.
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
    #     group_names: ["String"],
    #     operation_type: "add", # accepts add, remove
    #     user_ids: ["String"],
    #     dry_run: false,
    #   })
    # @param [Hash] options ({})
    # @option options [String] :attribute
    #   The snapshot attribute to modify.
    #
    #   <note markdown="1"> Only volume creation permissions may be modified at the customer
    #   level.
    #
    #    </note>
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
      if data.volume_id
        Volume.new(
          id: data.volume_id,
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
        msg = "pass options to configure the waiter; "
        msg << "yielding the waiter is deprecated"
        warn(msg)
        @waiter_block_warned = true
      end
      yield(waiter.waiter)
    end

    def separate_params_and_options(options)
      opts = Set.new([:client, :max_attempts, :delay, :before_attempt, :before_wait])
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
