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
  module EFS
    module Types

      # @note When making an API call, pass CreateFileSystemRequest
      #   data as a hash:
      #
      #       {
      #         creation_token: "CreationToken", # required
      #       }
      class CreateFileSystemRequest < Aws::Structure.new(
        :creation_token)

        # @!attribute [rw] creation_token
        #   String of up to 64 ASCII characters. Amazon EFS uses this to ensure
        #   idempotent creation.
        #   @return [String]

      end

      # @note When making an API call, pass CreateMountTargetRequest
      #   data as a hash:
      #
      #       {
      #         file_system_id: "FileSystemId", # required
      #         subnet_id: "SubnetId", # required
      #         ip_address: "IpAddress",
      #         security_groups: ["SecurityGroup"],
      #       }
      class CreateMountTargetRequest < Aws::Structure.new(
        :file_system_id,
        :subnet_id,
        :ip_address,
        :security_groups)

        # @!attribute [rw] file_system_id
        #   The ID of the file system for which to create the mount target.
        #   @return [String]

        # @!attribute [rw] subnet_id
        #   The ID of the subnet to add the mount target in.
        #   @return [String]

        # @!attribute [rw] ip_address
        #   A valid IPv4 address within the address range of the specified
        #   subnet.
        #   @return [String]

        # @!attribute [rw] security_groups
        #   Up to 5 VPC security group IDs, of the form \"sg-xxxxxxxx\". These
        #   must be for the same VPC as subnet specified.
        #   @return [Array<String>]

      end

      # @note When making an API call, pass CreateTagsRequest
      #   data as a hash:
      #
      #       {
      #         file_system_id: "FileSystemId", # required
      #         tags: [ # required
      #           {
      #             key: "TagKey", # required
      #             value: "TagValue", # required
      #           },
      #         ],
      #       }
      class CreateTagsRequest < Aws::Structure.new(
        :file_system_id,
        :tags)

        # @!attribute [rw] file_system_id
        #   String. The ID of the file system whose tags you want to modify.
        #   This operation modifies only the tags and not the file system.
        #   @return [String]

        # @!attribute [rw] tags
        #   An array of `Tag` objects to add. Each `Tag` object is a key-value
        #   pair.
        #   @return [Array<Types::Tag>]

      end

      # @note When making an API call, pass DeleteFileSystemRequest
      #   data as a hash:
      #
      #       {
      #         file_system_id: "FileSystemId", # required
      #       }
      class DeleteFileSystemRequest < Aws::Structure.new(
        :file_system_id)

        # @!attribute [rw] file_system_id
        #   The ID of the file system you want to delete.
        #   @return [String]

      end

      # @note When making an API call, pass DeleteMountTargetRequest
      #   data as a hash:
      #
      #       {
      #         mount_target_id: "MountTargetId", # required
      #       }
      class DeleteMountTargetRequest < Aws::Structure.new(
        :mount_target_id)

        # @!attribute [rw] mount_target_id
        #   String. The ID of the mount target to delete.
        #   @return [String]

      end

      # @note When making an API call, pass DeleteTagsRequest
      #   data as a hash:
      #
      #       {
      #         file_system_id: "FileSystemId", # required
      #         tag_keys: ["TagKey"], # required
      #       }
      class DeleteTagsRequest < Aws::Structure.new(
        :file_system_id,
        :tag_keys)

        # @!attribute [rw] file_system_id
        #   String. The ID of the file system whose tags you want to delete.
        #   @return [String]

        # @!attribute [rw] tag_keys
        #   A list of tag keys to delete.
        #   @return [Array<String>]

      end

      # @note When making an API call, pass DescribeFileSystemsRequest
      #   data as a hash:
      #
      #       {
      #         max_items: 1,
      #         marker: "Marker",
      #         creation_token: "CreationToken",
      #         file_system_id: "FileSystemId",
      #       }
      class DescribeFileSystemsRequest < Aws::Structure.new(
        :max_items,
        :marker,
        :creation_token,
        :file_system_id)

        # @!attribute [rw] max_items
        #   Optional integer. Specifies the maximum number of file systems to
        #   return in the response. This parameter value must be greater than 0.
        #   The number of items Amazon EFS returns will be the minimum of the
        #   `MaxItems` parameter specified in the request and the service\'s
        #   internal maximum number of items per page.
        #   @return [Integer]

        # @!attribute [rw] marker
        #   Optional string. Opaque pagination token returned from a previous
        #   `DescribeFileSystems` operation. If present, specifies to continue
        #   the list from where the returning call had left off.
        #   @return [String]

        # @!attribute [rw] creation_token
        #   Optional string. Restricts the list to the file system with this
        #   creation token (you specify a creation token at the time of creating
        #   an Amazon EFS file system).
        #   @return [String]

        # @!attribute [rw] file_system_id
        #   Optional string. File system ID whose description you want to
        #   retrieve.
        #   @return [String]

      end

      class DescribeFileSystemsResponse < Aws::Structure.new(
        :marker,
        :file_systems,
        :next_marker)

        # @!attribute [rw] marker
        #   A string, present if provided by caller in the request.
        #   @return [String]

        # @!attribute [rw] file_systems
        #   An array of file system descriptions.
        #   @return [Array<Types::FileSystemDescription>]

        # @!attribute [rw] next_marker
        #   A string, present if there are more file systems than returned in
        #   the response. You can use the `NextMarker` in the subsequent request
        #   to fetch the descriptions.
        #   @return [String]

      end

      # @note When making an API call, pass DescribeMountTargetSecurityGroupsRequest
      #   data as a hash:
      #
      #       {
      #         mount_target_id: "MountTargetId", # required
      #       }
      class DescribeMountTargetSecurityGroupsRequest < Aws::Structure.new(
        :mount_target_id)

        # @!attribute [rw] mount_target_id
        #   The ID of the mount target whose security groups you want to
        #   retrieve.
        #   @return [String]

      end

      class DescribeMountTargetSecurityGroupsResponse < Aws::Structure.new(
        :security_groups)

        # @!attribute [rw] security_groups
        #   An array of security groups.
        #   @return [Array<String>]

      end

      # @note When making an API call, pass DescribeMountTargetsRequest
      #   data as a hash:
      #
      #       {
      #         max_items: 1,
      #         marker: "Marker",
      #         file_system_id: "FileSystemId",
      #         mount_target_id: "MountTargetId",
      #       }
      class DescribeMountTargetsRequest < Aws::Structure.new(
        :max_items,
        :marker,
        :file_system_id,
        :mount_target_id)

        # @!attribute [rw] max_items
        #   Optional. Maximum number of mount targets to return in the response.
        #   It must be an integer with a value greater than zero.
        #   @return [Integer]

        # @!attribute [rw] marker
        #   Optional. String. Opaque pagination token returned from a previous
        #   `DescribeMountTargets` operation. If present, it specifies to
        #   continue the list from where the previous returning call left off.
        #   @return [String]

        # @!attribute [rw] file_system_id
        #   Optional. String. The ID of the file system whose mount targets you
        #   want to list. It must be included in your request if `MountTargetId`
        #   is not included.
        #   @return [String]

        # @!attribute [rw] mount_target_id
        #   Optional. String. The ID of the mount target that you want to have
        #   described. It must be included in your request if `FileSystemId` is
        #   not included.
        #   @return [String]

      end

      class DescribeMountTargetsResponse < Aws::Structure.new(
        :marker,
        :mount_targets,
        :next_marker)

        # @!attribute [rw] marker
        #   If the request included the `Marker`, the response returns that
        #   value in this field.
        #   @return [String]

        # @!attribute [rw] mount_targets
        #   Returns the file system\'s mount targets as an array of
        #   `MountTargetDescription` objects.
        #   @return [Array<Types::MountTargetDescription>]

        # @!attribute [rw] next_marker
        #   If a value is present, there are more mount targets to return. In a
        #   subsequent request, you can provide `Marker` in your request with
        #   this value to retrieve the next set of mount targets.
        #   @return [String]

      end

      # @note When making an API call, pass DescribeTagsRequest
      #   data as a hash:
      #
      #       {
      #         max_items: 1,
      #         marker: "Marker",
      #         file_system_id: "FileSystemId", # required
      #       }
      class DescribeTagsRequest < Aws::Structure.new(
        :max_items,
        :marker,
        :file_system_id)

        # @!attribute [rw] max_items
        #   Optional. Maximum number of file system tags to return in the
        #   response. It must be an integer with a value greater than zero.
        #   @return [Integer]

        # @!attribute [rw] marker
        #   Optional. String. Opaque pagination token returned from a previous
        #   `DescribeTags` operation. If present, it specifies to continue the
        #   list from where the previous call left off.
        #   @return [String]

        # @!attribute [rw] file_system_id
        #   The ID of the file system whose tag set you want to retrieve.
        #   @return [String]

      end

      class DescribeTagsResponse < Aws::Structure.new(
        :marker,
        :tags,
        :next_marker)

        # @!attribute [rw] marker
        #   If the request included a `Marker`, the response returns that value
        #   in this field.
        #   @return [String]

        # @!attribute [rw] tags
        #   Returns tags associated with the file system as an array of `Tag`
        #   objects.
        #   @return [Array<Types::Tag>]

        # @!attribute [rw] next_marker
        #   If a value is present, there are more tags to return. In a
        #   subsequent request, you can provide the value of `NextMarker` as the
        #   value of the `Marker` parameter in your next request to retrieve the
        #   next set of tags.
        #   @return [String]

      end

      # This object provides description of a file system.
      class FileSystemDescription < Aws::Structure.new(
        :owner_id,
        :creation_token,
        :file_system_id,
        :creation_time,
        :life_cycle_state,
        :name,
        :number_of_mount_targets,
        :size_in_bytes)

        # @!attribute [rw] owner_id
        #   The AWS account that created the file system. If the file system was
        #   created by an IAM user, the parent account to which the user belongs
        #   is the owner.
        #   @return [String]

        # @!attribute [rw] creation_token
        #   Opaque string specified in the request.
        #   @return [String]

        # @!attribute [rw] file_system_id
        #   The file system ID assigned by Amazon EFS.
        #   @return [String]

        # @!attribute [rw] creation_time
        #   The time at which the file system was created, in seconds, since
        #   1970-01-01T00:00:00Z.
        #   @return [Time]

        # @!attribute [rw] life_cycle_state
        #   A predefined string value that indicates the lifecycle phase of the
        #   file system.
        #   @return [String]

        # @!attribute [rw] name
        #   You can add tags to a file system (see CreateTags) including a
        #   \"Name\" tag. If the file system has a \"Name\" tag, Amazon EFS
        #   returns the value in this field.
        #   @return [String]

        # @!attribute [rw] number_of_mount_targets
        #   The current number of mount targets (see CreateMountTarget) the file
        #   system has.
        #   @return [Integer]

        # @!attribute [rw] size_in_bytes
        #   This object provides the latest known metered size of data stored in
        #   the file system, in bytes, in its `Value` field, and the time at
        #   which that size was determined in its `Timestamp` field. The
        #   `Timestamp` value is the integer number of seconds since
        #   1970-01-01T00:00:00Z. Note that the value does not represent the
        #   size of a consistent snapshot of the file system, but it is
        #   eventually consistent when there are no writes to the file system.
        #   That is, the value will represent actual size only if the file
        #   system is not modified for a period longer than a couple of hours.
        #   Otherwise, the value is not the exact size the file system was at
        #   any instant in time.
        #   @return [Types::FileSystemSize]

      end

      # This object provides the latest known metered size, in bytes, of data
      # stored in the file system, in its `Value` field, and the time at which
      # that size was determined in its `Timestamp` field. Note that the value
      # does not represent the size of a consistent snapshot of the file
      # system, but it is eventually consistent when there are no writes to
      # the file system. That is, the value will represent the actual size
      # only if the file system is not modified for a period longer than a
      # couple of hours. Otherwise, the value is not necessarily the exact
      # size the file system was at any instant in time.
      class FileSystemSize < Aws::Structure.new(
        :value,
        :timestamp)

        # @!attribute [rw] value
        #   The latest known metered size, in bytes, of data stored in the file
        #   system.
        #   @return [Integer]

        # @!attribute [rw] timestamp
        #   The time at which the size of data, returned in the `Value` field,
        #   was determined. The value is the integer number of seconds since
        #   1970-01-01T00:00:00Z.
        #   @return [Time]

      end

      # @note When making an API call, pass ModifyMountTargetSecurityGroupsRequest
      #   data as a hash:
      #
      #       {
      #         mount_target_id: "MountTargetId", # required
      #         security_groups: ["SecurityGroup"],
      #       }
      class ModifyMountTargetSecurityGroupsRequest < Aws::Structure.new(
        :mount_target_id,
        :security_groups)

        # @!attribute [rw] mount_target_id
        #   The ID of the mount target whose security groups you want to modify.
        #   @return [String]

        # @!attribute [rw] security_groups
        #   An array of up to five VPC security group IDs.
        #   @return [Array<String>]

      end

      # This object provides description of a mount target.
      class MountTargetDescription < Aws::Structure.new(
        :owner_id,
        :mount_target_id,
        :file_system_id,
        :subnet_id,
        :life_cycle_state,
        :ip_address,
        :network_interface_id)

        # @!attribute [rw] owner_id
        #   The AWS account ID that owns the resource.
        #   @return [String]

        # @!attribute [rw] mount_target_id
        #   The system-assigned mount target ID.
        #   @return [String]

        # @!attribute [rw] file_system_id
        #   The ID of the file system for which the mount target is intended.
        #   @return [String]

        # @!attribute [rw] subnet_id
        #   The ID of the subnet that the mount target is in.
        #   @return [String]

        # @!attribute [rw] life_cycle_state
        #   The lifecycle state the mount target is in.
        #   @return [String]

        # @!attribute [rw] ip_address
        #   The address at which the file system may be mounted via the mount
        #   target.
        #   @return [String]

        # @!attribute [rw] network_interface_id
        #   The ID of the network interface that Amazon EFS created when it
        #   created the mount target.
        #   @return [String]

      end

      # A tag is a pair of key and value. The allowed characters in keys and
      # values are letters, whitespace, and numbers, representable in UTF-8,
      # and the characters \'+\', \'-\', \'=\', \'.\', \'\_\', \':\', and
      # \'/\'.
      # @note When making an API call, pass Tag
      #   data as a hash:
      #
      #       {
      #         key: "TagKey", # required
      #         value: "TagValue", # required
      #       }
      class Tag < Aws::Structure.new(
        :key,
        :value)

        # @!attribute [rw] key
        #   Tag key, a string. The key must not start with \"aws:\".
        #   @return [String]

        # @!attribute [rw] value
        #   Value of the tag key.
        #   @return [String]

      end

    end
  end
end
