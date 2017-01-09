# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::StorageGateway
  module Types

    # A JSON object containing one or more of the following fields:
    #
    # * ActivateGatewayInput$ActivationKey
    #
    # * ActivateGatewayInput$GatewayName
    #
    # * ActivateGatewayInput$GatewayRegion
    #
    # * ActivateGatewayInput$GatewayTimezone
    #
    # * ActivateGatewayInput$GatewayType
    #
    # * ActivateGatewayInput$TapeDriveType
    #
    # * ActivateGatewayInput$MediumChangerType
    #
    # @note When making an API call, you may pass ActivateGatewayInput
    #   data as a hash:
    #
    #       {
    #         activation_key: "ActivationKey", # required
    #         gateway_name: "GatewayName", # required
    #         gateway_timezone: "GatewayTimezone", # required
    #         gateway_region: "RegionId", # required
    #         gateway_type: "GatewayType",
    #         tape_drive_type: "TapeDriveType",
    #         medium_changer_type: "MediumChangerType",
    #       }
    #
    # @!attribute [rw] activation_key
    #   Your gateway activation key. You can obtain the activation key by
    #   sending an HTTP GET request with redirects enabled to the gateway IP
    #   address (port 80). The redirect URL returned in the response
    #   provides you the activation key for your gateway in the query string
    #   parameter `activationKey`. It may also include other
    #   activation-related parameters, however, these are merely defaults --
    #   the arguments you pass to the `ActivateGateway` API call determine
    #   the actual configuration of your gateway.
    #   @return [String]
    #
    # @!attribute [rw] gateway_name
    #   The name you configured for your gateway.
    #   @return [String]
    #
    # @!attribute [rw] gateway_timezone
    #   A value that indicates the time zone you want to set for the
    #   gateway. The time zone is used, for example, for scheduling
    #   snapshots and your gateway's maintenance schedule.
    #   @return [String]
    #
    # @!attribute [rw] gateway_region
    #   A value that indicates the region where you want to store the
    #   snapshot backups. The gateway region specified must be the same
    #   region as the region in your `Host` header in the request. For more
    #   information about available regions and endpoints for AWS Storage
    #   Gateway, see [Regions and Endpoints][1] in the *Amazon Web Services
    #   Glossary*.
    #
    #   Valid Values: "us-east-1", "us-west-1", "us-west-2",
    #   "eu-west-1", "eu-central-1", "ap-northeast-1",
    #   "ap-northeast-2", "ap-southeast-1", "ap-southeast-2",
    #   "sa-east-1"
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/rande.html#sg_region
    #   @return [String]
    #
    # @!attribute [rw] gateway_type
    #   A value that defines the type of gateway to activate. The type
    #   specified is critical to all later functions of the gateway and
    #   cannot be changed after activation. The default value is `STORED`.
    #   @return [String]
    #
    # @!attribute [rw] tape_drive_type
    #   The value that indicates the type of tape drive to use for
    #   gateway-VTL. This field is optional.
    #
    #   Valid Values: "IBM-ULT3580-TD5"
    #   @return [String]
    #
    # @!attribute [rw] medium_changer_type
    #   The value that indicates the type of medium changer to use for
    #   gateway-VTL. This field is optional.
    #
    #   Valid Values: "STK-L700", "AWS-Gateway-VTL"
    #   @return [String]
    #
    class ActivateGatewayInput < Struct.new(
      :activation_key,
      :gateway_name,
      :gateway_timezone,
      :gateway_region,
      :gateway_type,
      :tape_drive_type,
      :medium_changer_type)
      include Aws::Structure
    end

    # AWS Storage Gateway returns the Amazon Resource Name (ARN) of the
    # activated gateway. It is a string made of information such as your
    # account, gateway name, and region. This ARN is used to reference the
    # gateway in other API operations as well as resource-based
    # authorization.
    #
    # <note markdown="1">For gateways activated prior to September 02, 2015 the gateway ARN
    # contains the gateway name rather than the gateway id. Changing the
    # name of the gateway has no effect on the gateway ARN.
    #
    #  </note>
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #   @return [String]
    #
    class ActivateGatewayOutput < Struct.new(
      :gateway_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass AddCacheInput
    #   data as a hash:
    #
    #       {
    #         gateway_arn: "GatewayARN", # required
    #         disk_ids: ["DiskId"], # required
    #       }
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #   @return [String]
    #
    # @!attribute [rw] disk_ids
    #   @return [Array<String>]
    #
    class AddCacheInput < Struct.new(
      :gateway_arn,
      :disk_ids)
      include Aws::Structure
    end

    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #   @return [String]
    #
    class AddCacheOutput < Struct.new(
      :gateway_arn)
      include Aws::Structure
    end

    # AddTagsToResourceInput
    #
    # @note When making an API call, you may pass AddTagsToResourceInput
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ResourceARN", # required
    #         tags: [ # required
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource you want to add tags
    #   to.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The key-value pair that represents the tag you want to add to the
    #   resource. The value can be an empty string.
    #
    #   <note markdown="1"> Valid characters for key and value are letters, spaces, and numbers
    #   representable in UTF-8 format, and the following special characters:
    #   + - = . \_ : / @.
    #
    #    </note>
    #   @return [Array<Types::Tag>]
    #
    class AddTagsToResourceInput < Struct.new(
      :resource_arn,
      :tags)
      include Aws::Structure
    end

    # AddTagsToResourceOutput
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource you want to add tags
    #   to.
    #   @return [String]
    #
    class AddTagsToResourceOutput < Struct.new(
      :resource_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass AddUploadBufferInput
    #   data as a hash:
    #
    #       {
    #         gateway_arn: "GatewayARN", # required
    #         disk_ids: ["DiskId"], # required
    #       }
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #   @return [String]
    #
    # @!attribute [rw] disk_ids
    #   @return [Array<String>]
    #
    class AddUploadBufferInput < Struct.new(
      :gateway_arn,
      :disk_ids)
      include Aws::Structure
    end

    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #   @return [String]
    #
    class AddUploadBufferOutput < Struct.new(
      :gateway_arn)
      include Aws::Structure
    end

    # A JSON object containing one or more of the following fields:
    #
    # * AddWorkingStorageInput$DiskIds
    #
    # ^
    #
    # @note When making an API call, you may pass AddWorkingStorageInput
    #   data as a hash:
    #
    #       {
    #         gateway_arn: "GatewayARN", # required
    #         disk_ids: ["DiskId"], # required
    #       }
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #   @return [String]
    #
    # @!attribute [rw] disk_ids
    #   An array of strings that identify disks that are to be configured as
    #   working storage. Each string have a minimum length of 1 and maximum
    #   length of 300. You can get the disk IDs from the ListLocalDisks API.
    #   @return [Array<String>]
    #
    class AddWorkingStorageInput < Struct.new(
      :gateway_arn,
      :disk_ids)
      include Aws::Structure
    end

    # A JSON object containing the of the gateway for which working storage
    # was configured.
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #   @return [String]
    #
    class AddWorkingStorageOutput < Struct.new(
      :gateway_arn)
      include Aws::Structure
    end

    # @!attribute [rw] volume_arn
    #   @return [String]
    #
    # @!attribute [rw] volume_id
    #   @return [String]
    #
    # @!attribute [rw] volume_type
    #   @return [String]
    #
    # @!attribute [rw] volume_status
    #   @return [String]
    #
    # @!attribute [rw] volume_size_in_bytes
    #   @return [Integer]
    #
    # @!attribute [rw] volume_progress
    #   @return [Float]
    #
    # @!attribute [rw] source_snapshot_id
    #   @return [String]
    #
    # @!attribute [rw] volume_iscsi_attributes
    #   Lists iSCSI information about a volume.
    #   @return [Types::VolumeiSCSIAttributes]
    #
    class CachediSCSIVolume < Struct.new(
      :volume_arn,
      :volume_id,
      :volume_type,
      :volume_status,
      :volume_size_in_bytes,
      :volume_progress,
      :source_snapshot_id,
      :volume_iscsi_attributes)
      include Aws::Structure
    end

    # CancelArchivalInput
    #
    # @note When making an API call, you may pass CancelArchivalInput
    #   data as a hash:
    #
    #       {
    #         gateway_arn: "GatewayARN", # required
    #         tape_arn: "TapeARN", # required
    #       }
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #   @return [String]
    #
    # @!attribute [rw] tape_arn
    #   The Amazon Resource Name (ARN) of the virtual tape you want to
    #   cancel archiving for.
    #   @return [String]
    #
    class CancelArchivalInput < Struct.new(
      :gateway_arn,
      :tape_arn)
      include Aws::Structure
    end

    # CancelArchivalOutput
    #
    # @!attribute [rw] tape_arn
    #   The Amazon Resource Name (ARN) of the virtual tape for which
    #   archiving was canceled.
    #   @return [String]
    #
    class CancelArchivalOutput < Struct.new(
      :tape_arn)
      include Aws::Structure
    end

    # CancelRetrievalInput
    #
    # @note When making an API call, you may pass CancelRetrievalInput
    #   data as a hash:
    #
    #       {
    #         gateway_arn: "GatewayARN", # required
    #         tape_arn: "TapeARN", # required
    #       }
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #   @return [String]
    #
    # @!attribute [rw] tape_arn
    #   The Amazon Resource Name (ARN) of the virtual tape you want to
    #   cancel retrieval for.
    #   @return [String]
    #
    class CancelRetrievalInput < Struct.new(
      :gateway_arn,
      :tape_arn)
      include Aws::Structure
    end

    # CancelRetrievalOutput
    #
    # @!attribute [rw] tape_arn
    #   The Amazon Resource Name (ARN) of the virtual tape for which
    #   retrieval was canceled.
    #   @return [String]
    #
    class CancelRetrievalOutput < Struct.new(
      :tape_arn)
      include Aws::Structure
    end

    # Describes Challenge-Handshake Authentication Protocol (CHAP)
    # information that supports authentication between your gateway and
    # iSCSI initiators.
    #
    # @!attribute [rw] target_arn
    #   The Amazon Resource Name (ARN) of the volume.
    #
    #   Valid Values: 50 to 500 lowercase letters, numbers, periods (.), and
    #   hyphens (-).
    #   @return [String]
    #
    # @!attribute [rw] secret_to_authenticate_initiator
    #   The secret key that the initiator (for example, the Windows client)
    #   must provide to participate in mutual CHAP with the target.
    #   @return [String]
    #
    # @!attribute [rw] initiator_name
    #   The iSCSI initiator that connects to the target.
    #   @return [String]
    #
    # @!attribute [rw] secret_to_authenticate_target
    #   The secret key that the target must provide to participate in mutual
    #   CHAP with the initiator (e.g. Windows client).
    #   @return [String]
    #
    class ChapInfo < Struct.new(
      :target_arn,
      :secret_to_authenticate_initiator,
      :initiator_name,
      :secret_to_authenticate_target)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateCachediSCSIVolumeInput
    #   data as a hash:
    #
    #       {
    #         gateway_arn: "GatewayARN", # required
    #         volume_size_in_bytes: 1, # required
    #         snapshot_id: "SnapshotId",
    #         target_name: "TargetName", # required
    #         network_interface_id: "NetworkInterfaceId", # required
    #         client_token: "ClientToken", # required
    #       }
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #   @return [String]
    #
    # @!attribute [rw] volume_size_in_bytes
    #   @return [Integer]
    #
    # @!attribute [rw] snapshot_id
    #   @return [String]
    #
    # @!attribute [rw] target_name
    #   @return [String]
    #
    # @!attribute [rw] network_interface_id
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   @return [String]
    #
    class CreateCachediSCSIVolumeInput < Struct.new(
      :gateway_arn,
      :volume_size_in_bytes,
      :snapshot_id,
      :target_name,
      :network_interface_id,
      :client_token)
      include Aws::Structure
    end

    # @!attribute [rw] volume_arn
    #   @return [String]
    #
    # @!attribute [rw] target_arn
    #   @return [String]
    #
    class CreateCachediSCSIVolumeOutput < Struct.new(
      :volume_arn,
      :target_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateSnapshotFromVolumeRecoveryPointInput
    #   data as a hash:
    #
    #       {
    #         volume_arn: "VolumeARN", # required
    #         snapshot_description: "SnapshotDescription", # required
    #       }
    #
    # @!attribute [rw] volume_arn
    #   @return [String]
    #
    # @!attribute [rw] snapshot_description
    #   @return [String]
    #
    class CreateSnapshotFromVolumeRecoveryPointInput < Struct.new(
      :volume_arn,
      :snapshot_description)
      include Aws::Structure
    end

    # @!attribute [rw] snapshot_id
    #   @return [String]
    #
    # @!attribute [rw] volume_arn
    #   @return [String]
    #
    # @!attribute [rw] volume_recovery_point_time
    #   @return [String]
    #
    class CreateSnapshotFromVolumeRecoveryPointOutput < Struct.new(
      :snapshot_id,
      :volume_arn,
      :volume_recovery_point_time)
      include Aws::Structure
    end

    # A JSON object containing one or more of the following fields:
    #
    # * CreateSnapshotInput$SnapshotDescription
    #
    # * CreateSnapshotInput$VolumeARN
    #
    # @note When making an API call, you may pass CreateSnapshotInput
    #   data as a hash:
    #
    #       {
    #         volume_arn: "VolumeARN", # required
    #         snapshot_description: "SnapshotDescription", # required
    #       }
    #
    # @!attribute [rw] volume_arn
    #   The Amazon Resource Name (ARN) of the volume. Use the ListVolumes
    #   operation to return a list of gateway volumes.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_description
    #   Textual description of the snapshot that appears in the Amazon EC2
    #   console, Elastic Block Store snapshots panel in the **Description**
    #   field, and in the AWS Storage Gateway snapshot **Details** pane,
    #   **Description** field
    #   @return [String]
    #
    class CreateSnapshotInput < Struct.new(
      :volume_arn,
      :snapshot_description)
      include Aws::Structure
    end

    # A JSON object containing the following fields:
    #
    # @!attribute [rw] volume_arn
    #   The Amazon Resource Name (ARN) of the volume of which the snapshot
    #   was taken.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_id
    #   The snapshot ID that is used to refer to the snapshot in future
    #   operations such as describing snapshots (Amazon Elastic Compute
    #   Cloud API `DescribeSnapshots`) or creating a volume from a snapshot
    #   (CreateStorediSCSIVolume).
    #   @return [String]
    #
    class CreateSnapshotOutput < Struct.new(
      :volume_arn,
      :snapshot_id)
      include Aws::Structure
    end

    # A JSON object containing one or more of the following fields:
    #
    # * CreateStorediSCSIVolumeInput$DiskId
    #
    # * CreateStorediSCSIVolumeInput$NetworkInterfaceId
    #
    # * CreateStorediSCSIVolumeInput$PreserveExistingData
    #
    # * CreateStorediSCSIVolumeInput$SnapshotId
    #
    # * CreateStorediSCSIVolumeInput$TargetName
    #
    # @note When making an API call, you may pass CreateStorediSCSIVolumeInput
    #   data as a hash:
    #
    #       {
    #         gateway_arn: "GatewayARN", # required
    #         disk_id: "DiskId", # required
    #         snapshot_id: "SnapshotId",
    #         preserve_existing_data: false, # required
    #         target_name: "TargetName", # required
    #         network_interface_id: "NetworkInterfaceId", # required
    #       }
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #   @return [String]
    #
    # @!attribute [rw] disk_id
    #   The unique identifier for the gateway local disk that is configured
    #   as a stored volume. Use [ListLocalDisks][1] to list disk IDs for a
    #   gateway.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/storagegateway/latest/userguide/API_ListLocalDisks.html
    #   @return [String]
    #
    # @!attribute [rw] snapshot_id
    #   The snapshot ID (e.g. "snap-1122aabb") of the snapshot to restore
    #   as the new stored volume. Specify this field if you want to create
    #   the iSCSI storage volume from a snapshot otherwise do not include
    #   this field. To list snapshots for your account use
    #   [DescribeSnapshots][1] in the *Amazon Elastic Compute Cloud API
    #   Reference*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-DescribeSnapshots.html
    #   @return [String]
    #
    # @!attribute [rw] preserve_existing_data
    #   Specify this field as true if you want to preserve the data on the
    #   local disk. Otherwise, specifying this field as false creates an
    #   empty volume.
    #
    #   Valid Values: true, false
    #   @return [Boolean]
    #
    # @!attribute [rw] target_name
    #   The name of the iSCSI target used by initiators to connect to the
    #   target and as a suffix for the target ARN. For example, specifying
    #   `TargetName` as *myvolume* results in the target ARN of
    #   arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume.
    #   The target name must be unique across all volumes of a gateway.
    #   @return [String]
    #
    # @!attribute [rw] network_interface_id
    #   The network interface of the gateway on which to expose the iSCSI
    #   target. Only IPv4 addresses are accepted. Use
    #   DescribeGatewayInformation to get a list of the network interfaces
    #   available on a gateway.
    #
    #   Valid Values: A valid IP address.
    #   @return [String]
    #
    class CreateStorediSCSIVolumeInput < Struct.new(
      :gateway_arn,
      :disk_id,
      :snapshot_id,
      :preserve_existing_data,
      :target_name,
      :network_interface_id)
      include Aws::Structure
    end

    # A JSON object containing the following fields:
    #
    # @!attribute [rw] volume_arn
    #   The Amazon Resource Name (ARN) of the configured volume.
    #   @return [String]
    #
    # @!attribute [rw] volume_size_in_bytes
    #   The size of the volume in bytes.
    #   @return [Integer]
    #
    # @!attribute [rw] target_arn
    #   he Amazon Resource Name (ARN) of the volume target that includes the
    #   iSCSI name that initiators can use to connect to the target.
    #   @return [String]
    #
    class CreateStorediSCSIVolumeOutput < Struct.new(
      :volume_arn,
      :volume_size_in_bytes,
      :target_arn)
      include Aws::Structure
    end

    # CreateTapeWithBarcodeInput
    #
    # @note When making an API call, you may pass CreateTapeWithBarcodeInput
    #   data as a hash:
    #
    #       {
    #         gateway_arn: "GatewayARN", # required
    #         tape_size_in_bytes: 1, # required
    #         tape_barcode: "TapeBarcode", # required
    #       }
    #
    # @!attribute [rw] gateway_arn
    #   The unique Amazon Resource Name (ARN) that represents the gateway to
    #   associate the virtual tape with. Use the ListGateways operation to
    #   return a list of gateways for your account and region.
    #   @return [String]
    #
    # @!attribute [rw] tape_size_in_bytes
    #   The size, in bytes, of the virtual tape that you want to create.
    #
    #   <note markdown="1">The size must be aligned by gigabyte (1024*1024*1024 byte).
    #
    #    </note>
    #   @return [Integer]
    #
    # @!attribute [rw] tape_barcode
    #   The barcode that you want to assign to the tape.
    #   @return [String]
    #
    class CreateTapeWithBarcodeInput < Struct.new(
      :gateway_arn,
      :tape_size_in_bytes,
      :tape_barcode)
      include Aws::Structure
    end

    # CreateTapeOutput
    #
    # @!attribute [rw] tape_arn
    #   A unique Amazon Resource Name (ARN) that represents the virtual tape
    #   that was created.
    #   @return [String]
    #
    class CreateTapeWithBarcodeOutput < Struct.new(
      :tape_arn)
      include Aws::Structure
    end

    # CreateTapesInput
    #
    # @note When making an API call, you may pass CreateTapesInput
    #   data as a hash:
    #
    #       {
    #         gateway_arn: "GatewayARN", # required
    #         tape_size_in_bytes: 1, # required
    #         client_token: "ClientToken", # required
    #         num_tapes_to_create: 1, # required
    #         tape_barcode_prefix: "TapeBarcodePrefix", # required
    #       }
    #
    # @!attribute [rw] gateway_arn
    #   The unique Amazon Resource Name (ARN) that represents the gateway to
    #   associate the virtual tapes with. Use the ListGateways operation to
    #   return a list of gateways for your account and region.
    #   @return [String]
    #
    # @!attribute [rw] tape_size_in_bytes
    #   The size, in bytes, of the virtual tapes that you want to create.
    #
    #   <note markdown="1">The size must be aligned by gigabyte (1024*1024*1024 byte).
    #
    #    </note>
    #   @return [Integer]
    #
    # @!attribute [rw] client_token
    #   A unique identifier that you use to retry a request. If you retry a
    #   request, use the same `ClientToken` you specified in the initial
    #   request.
    #
    #   <note markdown="1">Using the same `ClientToken` prevents creating the tape multiple
    #   times.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] num_tapes_to_create
    #   The number of virtual tapes that you want to create.
    #   @return [Integer]
    #
    # @!attribute [rw] tape_barcode_prefix
    #   A prefix that you append to the barcode of the virtual tape you are
    #   creating. This prefix makes the barcode unique.
    #
    #   <note markdown="1">The prefix must be 1 to 4 characters in length and must be one of
    #   the uppercase letters from A to Z.
    #
    #    </note>
    #   @return [String]
    #
    class CreateTapesInput < Struct.new(
      :gateway_arn,
      :tape_size_in_bytes,
      :client_token,
      :num_tapes_to_create,
      :tape_barcode_prefix)
      include Aws::Structure
    end

    # CreateTapeOutput
    #
    # @!attribute [rw] tape_arns
    #   A list of unique Amazon Resource Names (ARNs) that represents the
    #   virtual tapes that were created.
    #   @return [Array<String>]
    #
    class CreateTapesOutput < Struct.new(
      :tape_arns)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteBandwidthRateLimitInput
    #   data as a hash:
    #
    #       {
    #         gateway_arn: "GatewayARN", # required
    #         bandwidth_type: "BandwidthType", # required
    #       }
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #   @return [String]
    #
    # @!attribute [rw] bandwidth_type
    #   @return [String]
    #
    class DeleteBandwidthRateLimitInput < Struct.new(
      :gateway_arn,
      :bandwidth_type)
      include Aws::Structure
    end

    # A JSON object containing the of the gateway whose bandwidth rate
    # information was deleted.
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #   @return [String]
    #
    class DeleteBandwidthRateLimitOutput < Struct.new(
      :gateway_arn)
      include Aws::Structure
    end

    # A JSON object containing one or more of the following fields:
    #
    # * DeleteChapCredentialsInput$InitiatorName
    #
    # * DeleteChapCredentialsInput$TargetARN
    #
    # @note When making an API call, you may pass DeleteChapCredentialsInput
    #   data as a hash:
    #
    #       {
    #         target_arn: "TargetARN", # required
    #         initiator_name: "IqnName", # required
    #       }
    #
    # @!attribute [rw] target_arn
    #   The Amazon Resource Name (ARN) of the iSCSI volume target. Use the
    #   DescribeStorediSCSIVolumes operation to return to retrieve the
    #   TargetARN for specified VolumeARN.
    #   @return [String]
    #
    # @!attribute [rw] initiator_name
    #   The iSCSI initiator that connects to the target.
    #   @return [String]
    #
    class DeleteChapCredentialsInput < Struct.new(
      :target_arn,
      :initiator_name)
      include Aws::Structure
    end

    # A JSON object containing the following fields:
    #
    # @!attribute [rw] target_arn
    #   The Amazon Resource Name (ARN) of the target.
    #   @return [String]
    #
    # @!attribute [rw] initiator_name
    #   The iSCSI initiator that connects to the target.
    #   @return [String]
    #
    class DeleteChapCredentialsOutput < Struct.new(
      :target_arn,
      :initiator_name)
      include Aws::Structure
    end

    # A JSON object containing the id of the gateway to delete.
    #
    # @note When making an API call, you may pass DeleteGatewayInput
    #   data as a hash:
    #
    #       {
    #         gateway_arn: "GatewayARN", # required
    #       }
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #   @return [String]
    #
    class DeleteGatewayInput < Struct.new(
      :gateway_arn)
      include Aws::Structure
    end

    # A JSON object containing the id of the deleted gateway.
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #   @return [String]
    #
    class DeleteGatewayOutput < Struct.new(
      :gateway_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteSnapshotScheduleInput
    #   data as a hash:
    #
    #       {
    #         volume_arn: "VolumeARN", # required
    #       }
    #
    # @!attribute [rw] volume_arn
    #   @return [String]
    #
    class DeleteSnapshotScheduleInput < Struct.new(
      :volume_arn)
      include Aws::Structure
    end

    # @!attribute [rw] volume_arn
    #   @return [String]
    #
    class DeleteSnapshotScheduleOutput < Struct.new(
      :volume_arn)
      include Aws::Structure
    end

    # DeleteTapeArchiveInput
    #
    # @note When making an API call, you may pass DeleteTapeArchiveInput
    #   data as a hash:
    #
    #       {
    #         tape_arn: "TapeARN", # required
    #       }
    #
    # @!attribute [rw] tape_arn
    #   The Amazon Resource Name (ARN) of the virtual tape to delete from
    #   the virtual tape shelf (VTS).
    #   @return [String]
    #
    class DeleteTapeArchiveInput < Struct.new(
      :tape_arn)
      include Aws::Structure
    end

    # DeleteTapeArchiveOutput
    #
    # @!attribute [rw] tape_arn
    #   The Amazon Resource Name (ARN) of the virtual tape that was deleted
    #   from the virtual tape shelf (VTS).
    #   @return [String]
    #
    class DeleteTapeArchiveOutput < Struct.new(
      :tape_arn)
      include Aws::Structure
    end

    # DeleteTapeInput
    #
    # @note When making an API call, you may pass DeleteTapeInput
    #   data as a hash:
    #
    #       {
    #         gateway_arn: "GatewayARN", # required
    #         tape_arn: "TapeARN", # required
    #       }
    #
    # @!attribute [rw] gateway_arn
    #   The unique Amazon Resource Name (ARN) of the gateway that the
    #   virtual tape to delete is associated with. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #   @return [String]
    #
    # @!attribute [rw] tape_arn
    #   The Amazon Resource Name (ARN) of the virtual tape to delete.
    #   @return [String]
    #
    class DeleteTapeInput < Struct.new(
      :gateway_arn,
      :tape_arn)
      include Aws::Structure
    end

    # DeleteTapeOutput
    #
    # @!attribute [rw] tape_arn
    #   The Amazon Resource Name (ARN) of the deleted virtual tape.
    #   @return [String]
    #
    class DeleteTapeOutput < Struct.new(
      :tape_arn)
      include Aws::Structure
    end

    # A JSON object containing the DeleteVolumeInput$VolumeARN to delete.
    #
    # @note When making an API call, you may pass DeleteVolumeInput
    #   data as a hash:
    #
    #       {
    #         volume_arn: "VolumeARN", # required
    #       }
    #
    # @!attribute [rw] volume_arn
    #   The Amazon Resource Name (ARN) of the volume. Use the ListVolumes
    #   operation to return a list of gateway volumes.
    #   @return [String]
    #
    class DeleteVolumeInput < Struct.new(
      :volume_arn)
      include Aws::Structure
    end

    # A JSON object containing the of the storage volume that was deleted
    #
    # @!attribute [rw] volume_arn
    #   The Amazon Resource Name (ARN) of the storage volume that was
    #   deleted. It is the same ARN you provided in the request.
    #   @return [String]
    #
    class DeleteVolumeOutput < Struct.new(
      :volume_arn)
      include Aws::Structure
    end

    # A JSON object containing the of the gateway.
    #
    # @note When making an API call, you may pass DescribeBandwidthRateLimitInput
    #   data as a hash:
    #
    #       {
    #         gateway_arn: "GatewayARN", # required
    #       }
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #   @return [String]
    #
    class DescribeBandwidthRateLimitInput < Struct.new(
      :gateway_arn)
      include Aws::Structure
    end

    # A JSON object containing the following fields:
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #   @return [String]
    #
    # @!attribute [rw] average_upload_rate_limit_in_bits_per_sec
    #   The average upload bandwidth rate limit in bits per second. This
    #   field does not appear in the response if the upload rate limit is
    #   not set.
    #   @return [Integer]
    #
    # @!attribute [rw] average_download_rate_limit_in_bits_per_sec
    #   The average download bandwidth rate limit in bits per second. This
    #   field does not appear in the response if the download rate limit is
    #   not set.
    #   @return [Integer]
    #
    class DescribeBandwidthRateLimitOutput < Struct.new(
      :gateway_arn,
      :average_upload_rate_limit_in_bits_per_sec,
      :average_download_rate_limit_in_bits_per_sec)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeCacheInput
    #   data as a hash:
    #
    #       {
    #         gateway_arn: "GatewayARN", # required
    #       }
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #   @return [String]
    #
    class DescribeCacheInput < Struct.new(
      :gateway_arn)
      include Aws::Structure
    end

    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #   @return [String]
    #
    # @!attribute [rw] disk_ids
    #   @return [Array<String>]
    #
    # @!attribute [rw] cache_allocated_in_bytes
    #   @return [Integer]
    #
    # @!attribute [rw] cache_used_percentage
    #   @return [Float]
    #
    # @!attribute [rw] cache_dirty_percentage
    #   @return [Float]
    #
    # @!attribute [rw] cache_hit_percentage
    #   @return [Float]
    #
    # @!attribute [rw] cache_miss_percentage
    #   @return [Float]
    #
    class DescribeCacheOutput < Struct.new(
      :gateway_arn,
      :disk_ids,
      :cache_allocated_in_bytes,
      :cache_used_percentage,
      :cache_dirty_percentage,
      :cache_hit_percentage,
      :cache_miss_percentage)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeCachediSCSIVolumesInput
    #   data as a hash:
    #
    #       {
    #         volume_arns: ["VolumeARN"], # required
    #       }
    #
    # @!attribute [rw] volume_arns
    #   @return [Array<String>]
    #
    class DescribeCachediSCSIVolumesInput < Struct.new(
      :volume_arns)
      include Aws::Structure
    end

    # A JSON object containing the following fields:
    #
    # @!attribute [rw] cached_iscsi_volumes
    #   An array of objects where each object contains metadata about one
    #   cached volume.
    #   @return [Array<Types::CachediSCSIVolume>]
    #
    class DescribeCachediSCSIVolumesOutput < Struct.new(
      :cached_iscsi_volumes)
      include Aws::Structure
    end

    # A JSON object containing the Amazon Resource Name (ARN) of the iSCSI
    # volume target.
    #
    # @note When making an API call, you may pass DescribeChapCredentialsInput
    #   data as a hash:
    #
    #       {
    #         target_arn: "TargetARN", # required
    #       }
    #
    # @!attribute [rw] target_arn
    #   The Amazon Resource Name (ARN) of the iSCSI volume target. Use the
    #   DescribeStorediSCSIVolumes operation to return to retrieve the
    #   TargetARN for specified VolumeARN.
    #   @return [String]
    #
    class DescribeChapCredentialsInput < Struct.new(
      :target_arn)
      include Aws::Structure
    end

    # A JSON object containing a .
    #
    # @!attribute [rw] chap_credentials
    #   An array of ChapInfo objects that represent CHAP credentials. Each
    #   object in the array contains CHAP credential information for one
    #   target-initiator pair. If no CHAP credentials are set, an empty
    #   array is returned. CHAP credential information is provided in a JSON
    #   object with the following fields:
    #
    #   * **InitiatorName**\: The iSCSI initiator that connects to the
    #     target.
    #
    #   * **SecretToAuthenticateInitiator**\: The secret key that the
    #     initiator (for example, the Windows client) must provide to
    #     participate in mutual CHAP with the target.
    #
    #   * **SecretToAuthenticateTarget**\: The secret key that the target
    #     must provide to participate in mutual CHAP with the initiator
    #     (e.g. Windows client).
    #
    #   * **TargetARN**\: The Amazon Resource Name (ARN) of the storage
    #     volume.
    #   @return [Array<Types::ChapInfo>]
    #
    class DescribeChapCredentialsOutput < Struct.new(
      :chap_credentials)
      include Aws::Structure
    end

    # A JSON object containing the id of the gateway.
    #
    # @note When making an API call, you may pass DescribeGatewayInformationInput
    #   data as a hash:
    #
    #       {
    #         gateway_arn: "GatewayARN", # required
    #       }
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #   @return [String]
    #
    class DescribeGatewayInformationInput < Struct.new(
      :gateway_arn)
      include Aws::Structure
    end

    # A JSON object containing the following fields:
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #   @return [String]
    #
    # @!attribute [rw] gateway_id
    #   The unique identifier assigned to your gateway during activation.
    #   This ID becomes part of the gateway Amazon Resource Name (ARN),
    #   which you use as input for other operations.
    #   @return [String]
    #
    # @!attribute [rw] gateway_name
    #   The name you configured for your gateway.
    #   @return [String]
    #
    # @!attribute [rw] gateway_timezone
    #   A value that indicates the time zone configured for the gateway.
    #   @return [String]
    #
    # @!attribute [rw] gateway_state
    #   A value that indicates the operating state of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] gateway_network_interfaces
    #   A NetworkInterface array that contains descriptions of the gateway
    #   network interfaces.
    #   @return [Array<Types::NetworkInterface>]
    #
    # @!attribute [rw] gateway_type
    #   The type of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] next_update_availability_date
    #   The date on which an update to the gateway is available. This date
    #   is in the time zone of the gateway. If the gateway is not available
    #   for an update this field is not returned in the response.
    #   @return [String]
    #
    # @!attribute [rw] last_software_update
    #   The date on which the last software update was applied to the
    #   gateway. If the gateway has never been updated, this field does not
    #   return a value in the response.
    #   @return [String]
    #
    class DescribeGatewayInformationOutput < Struct.new(
      :gateway_arn,
      :gateway_id,
      :gateway_name,
      :gateway_timezone,
      :gateway_state,
      :gateway_network_interfaces,
      :gateway_type,
      :next_update_availability_date,
      :last_software_update)
      include Aws::Structure
    end

    # A JSON object containing the of the gateway.
    #
    # @note When making an API call, you may pass DescribeMaintenanceStartTimeInput
    #   data as a hash:
    #
    #       {
    #         gateway_arn: "GatewayARN", # required
    #       }
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #   @return [String]
    #
    class DescribeMaintenanceStartTimeInput < Struct.new(
      :gateway_arn)
      include Aws::Structure
    end

    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #   @return [String]
    #
    # @!attribute [rw] hour_of_day
    #   @return [Integer]
    #
    # @!attribute [rw] minute_of_hour
    #   @return [Integer]
    #
    # @!attribute [rw] day_of_week
    #   @return [Integer]
    #
    # @!attribute [rw] timezone
    #   @return [String]
    #
    class DescribeMaintenanceStartTimeOutput < Struct.new(
      :gateway_arn,
      :hour_of_day,
      :minute_of_hour,
      :day_of_week,
      :timezone)
      include Aws::Structure
    end

    # A JSON object containing the DescribeSnapshotScheduleInput$VolumeARN
    # of the volume.
    #
    # @note When making an API call, you may pass DescribeSnapshotScheduleInput
    #   data as a hash:
    #
    #       {
    #         volume_arn: "VolumeARN", # required
    #       }
    #
    # @!attribute [rw] volume_arn
    #   The Amazon Resource Name (ARN) of the volume. Use the ListVolumes
    #   operation to return a list of gateway volumes.
    #   @return [String]
    #
    class DescribeSnapshotScheduleInput < Struct.new(
      :volume_arn)
      include Aws::Structure
    end

    # @!attribute [rw] volume_arn
    #   @return [String]
    #
    # @!attribute [rw] start_at
    #   @return [Integer]
    #
    # @!attribute [rw] recurrence_in_hours
    #   @return [Integer]
    #
    # @!attribute [rw] description
    #   @return [String]
    #
    # @!attribute [rw] timezone
    #   @return [String]
    #
    class DescribeSnapshotScheduleOutput < Struct.new(
      :volume_arn,
      :start_at,
      :recurrence_in_hours,
      :description,
      :timezone)
      include Aws::Structure
    end

    # A JSON object containing a list of
    # DescribeStorediSCSIVolumesInput$VolumeARNs.
    #
    # @note When making an API call, you may pass DescribeStorediSCSIVolumesInput
    #   data as a hash:
    #
    #       {
    #         volume_arns: ["VolumeARN"], # required
    #       }
    #
    # @!attribute [rw] volume_arns
    #   An array of strings where each string represents the Amazon Resource
    #   Name (ARN) of a stored volume. All of the specified stored volumes
    #   must from the same gateway. Use ListVolumes to get volume ARNs for a
    #   gateway.
    #   @return [Array<String>]
    #
    class DescribeStorediSCSIVolumesInput < Struct.new(
      :volume_arns)
      include Aws::Structure
    end

    # @!attribute [rw] stored_iscsi_volumes
    #   @return [Array<Types::StorediSCSIVolume>]
    #
    class DescribeStorediSCSIVolumesOutput < Struct.new(
      :stored_iscsi_volumes)
      include Aws::Structure
    end

    # DescribeTapeArchivesInput
    #
    # @note When making an API call, you may pass DescribeTapeArchivesInput
    #   data as a hash:
    #
    #       {
    #         tape_arns: ["TapeARN"],
    #         marker: "Marker",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] tape_arns
    #   Specifies one or more unique Amazon Resource Names (ARNs) that
    #   represent the virtual tapes you want to describe.
    #   @return [Array<String>]
    #
    # @!attribute [rw] marker
    #   An opaque string that indicates the position at which to begin
    #   describing virtual tapes.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   Specifies that the number of virtual tapes descried be limited to
    #   the specified number.
    #   @return [Integer]
    #
    class DescribeTapeArchivesInput < Struct.new(
      :tape_arns,
      :marker,
      :limit)
      include Aws::Structure
    end

    # DescribeTapeArchivesOutput
    #
    # @!attribute [rw] tape_archives
    #   An array of virtual tape objects in the virtual tape shelf (VTS).
    #   The description includes of the Amazon Resource Name(ARN) of the
    #   virtual tapes. The information returned includes the Amazon Resource
    #   Names (ARNs) of the tapes, size of the tapes, status of the tapes,
    #   progress of the description and tape barcode.
    #   @return [Array<Types::TapeArchive>]
    #
    # @!attribute [rw] marker
    #   An opaque string that indicates the position at which the virtual
    #   tapes that were fetched for description ended. Use this marker in
    #   your next request to fetch the next set of virtual tapes in the
    #   virtual tape shelf (VTS). If there are no more virtual tapes to
    #   describe, this field does not appear in the response.
    #   @return [String]
    #
    class DescribeTapeArchivesOutput < Struct.new(
      :tape_archives,
      :marker)
      include Aws::Structure
    end

    # DescribeTapeRecoveryPointsInput
    #
    # @note When making an API call, you may pass DescribeTapeRecoveryPointsInput
    #   data as a hash:
    #
    #       {
    #         gateway_arn: "GatewayARN", # required
    #         marker: "Marker",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   An opaque string that indicates the position at which to begin
    #   describing the virtual tape recovery points.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   Specifies that the number of virtual tape recovery points that are
    #   described be limited to the specified number.
    #   @return [Integer]
    #
    class DescribeTapeRecoveryPointsInput < Struct.new(
      :gateway_arn,
      :marker,
      :limit)
      include Aws::Structure
    end

    # DescribeTapeRecoveryPointsOutput
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #   @return [String]
    #
    # @!attribute [rw] tape_recovery_point_infos
    #   An array of TapeRecoveryPointInfos that are available for the
    #   specified gateway.
    #   @return [Array<Types::TapeRecoveryPointInfo>]
    #
    # @!attribute [rw] marker
    #   An opaque string that indicates the position at which the virtual
    #   tape recovery points that were listed for description ended.
    #
    #   Use this marker in your next request to list the next set of virtual
    #   tape recovery points in the list. If there are no more recovery
    #   points to describe, this field does not appear in the response.
    #   @return [String]
    #
    class DescribeTapeRecoveryPointsOutput < Struct.new(
      :gateway_arn,
      :tape_recovery_point_infos,
      :marker)
      include Aws::Structure
    end

    # DescribeTapesInput
    #
    # @note When making an API call, you may pass DescribeTapesInput
    #   data as a hash:
    #
    #       {
    #         gateway_arn: "GatewayARN", # required
    #         tape_arns: ["TapeARN"],
    #         marker: "Marker",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #   @return [String]
    #
    # @!attribute [rw] tape_arns
    #   Specifies one or more unique Amazon Resource Names (ARNs) that
    #   represent the virtual tapes you want to describe. If this parameter
    #   is not specified, AWS Storage Gateway returns a description of all
    #   virtual tapes associated with the specified gateway.
    #   @return [Array<String>]
    #
    # @!attribute [rw] marker
    #   A marker value, obtained in a previous call to `DescribeTapes`. This
    #   marker indicates which page of results to retrieve.
    #
    #   If not specified, the first page of results is retrieved.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   Specifies that the number of virtual tapes described be limited to
    #   the specified number.
    #
    #   <note markdown="1">Amazon Web Services may impose its own limit, if this field is not
    #   set.
    #
    #    </note>
    #   @return [Integer]
    #
    class DescribeTapesInput < Struct.new(
      :gateway_arn,
      :tape_arns,
      :marker,
      :limit)
      include Aws::Structure
    end

    # DescribeTapesOutput
    #
    # @!attribute [rw] tapes
    #   An array of virtual tape descriptions.
    #   @return [Array<Types::Tape>]
    #
    # @!attribute [rw] marker
    #   An opaque string which can be used as part of a subsequent
    #   DescribeTapes call to retrieve the next page of results.
    #
    #   If a response does not contain a marker, then there are no more
    #   results to be retrieved.
    #   @return [String]
    #
    class DescribeTapesOutput < Struct.new(
      :tapes,
      :marker)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeUploadBufferInput
    #   data as a hash:
    #
    #       {
    #         gateway_arn: "GatewayARN", # required
    #       }
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #   @return [String]
    #
    class DescribeUploadBufferInput < Struct.new(
      :gateway_arn)
      include Aws::Structure
    end

    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #   @return [String]
    #
    # @!attribute [rw] disk_ids
    #   @return [Array<String>]
    #
    # @!attribute [rw] upload_buffer_used_in_bytes
    #   @return [Integer]
    #
    # @!attribute [rw] upload_buffer_allocated_in_bytes
    #   @return [Integer]
    #
    class DescribeUploadBufferOutput < Struct.new(
      :gateway_arn,
      :disk_ids,
      :upload_buffer_used_in_bytes,
      :upload_buffer_allocated_in_bytes)
      include Aws::Structure
    end

    # DescribeVTLDevicesInput
    #
    # @note When making an API call, you may pass DescribeVTLDevicesInput
    #   data as a hash:
    #
    #       {
    #         gateway_arn: "GatewayARN", # required
    #         vtl_device_arns: ["VTLDeviceARN"],
    #         marker: "Marker",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #   @return [String]
    #
    # @!attribute [rw] vtl_device_arns
    #   An array of strings, where each string represents the Amazon
    #   Resource Name (ARN) of a VTL device.
    #
    #   <note markdown="1">All of the specified VTL devices must be from the same gateway. If
    #   no VTL devices are specified, the result will contain all devices on
    #   the specified gateway.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @!attribute [rw] marker
    #   An opaque string that indicates the position at which to begin
    #   describing the VTL devices.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   Specifies that the number of VTL devices described be limited to the
    #   specified number.
    #   @return [Integer]
    #
    class DescribeVTLDevicesInput < Struct.new(
      :gateway_arn,
      :vtl_device_arns,
      :marker,
      :limit)
      include Aws::Structure
    end

    # DescribeVTLDevicesOutput
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #   @return [String]
    #
    # @!attribute [rw] vtl_devices
    #   An array of VTL device objects composed of the Amazon Resource
    #   Name(ARN) of the VTL devices.
    #   @return [Array<Types::VTLDevice>]
    #
    # @!attribute [rw] marker
    #   An opaque string that indicates the position at which the VTL
    #   devices that were fetched for description ended. Use the marker in
    #   your next request to fetch the next set of VTL devices in the list.
    #   If there are no more VTL devices to describe, this field does not
    #   appear in the response.
    #   @return [String]
    #
    class DescribeVTLDevicesOutput < Struct.new(
      :gateway_arn,
      :vtl_devices,
      :marker)
      include Aws::Structure
    end

    # A JSON object containing the of the gateway.
    #
    # @note When making an API call, you may pass DescribeWorkingStorageInput
    #   data as a hash:
    #
    #       {
    #         gateway_arn: "GatewayARN", # required
    #       }
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #   @return [String]
    #
    class DescribeWorkingStorageInput < Struct.new(
      :gateway_arn)
      include Aws::Structure
    end

    # A JSON object containing the following fields:
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #   @return [String]
    #
    # @!attribute [rw] disk_ids
    #   An array of the gateway's local disk IDs that are configured as
    #   working storage. Each local disk ID is specified as a string
    #   (minimum length of 1 and maximum length of 300). If no local disks
    #   are configured as working storage, then the DiskIds array is empty.
    #   @return [Array<String>]
    #
    # @!attribute [rw] working_storage_used_in_bytes
    #   The total working storage in bytes in use by the gateway. If no
    #   working storage is configured for the gateway, this field returns 0.
    #   @return [Integer]
    #
    # @!attribute [rw] working_storage_allocated_in_bytes
    #   The total working storage in bytes allocated for the gateway. If no
    #   working storage is configured for the gateway, this field returns 0.
    #   @return [Integer]
    #
    class DescribeWorkingStorageOutput < Struct.new(
      :gateway_arn,
      :disk_ids,
      :working_storage_used_in_bytes,
      :working_storage_allocated_in_bytes)
      include Aws::Structure
    end

    # Lists iSCSI information about a VTL device.
    #
    # @!attribute [rw] target_arn
    #   Specifies the unique Amazon Resource Name(ARN) that encodes the
    #   iSCSI qualified name(iqn) of a tape drive or media changer target.
    #   @return [String]
    #
    # @!attribute [rw] network_interface_id
    #   The network interface identifier of the VTL device.
    #   @return [String]
    #
    # @!attribute [rw] network_interface_port
    #   The port used to communicate with iSCSI VTL device targets.
    #   @return [Integer]
    #
    # @!attribute [rw] chap_enabled
    #   Indicates whether mutual CHAP is enabled for the iSCSI target.
    #   @return [Boolean]
    #
    class DeviceiSCSIAttributes < Struct.new(
      :target_arn,
      :network_interface_id,
      :network_interface_port,
      :chap_enabled)
      include Aws::Structure
    end

    # DisableGatewayInput
    #
    # @note When making an API call, you may pass DisableGatewayInput
    #   data as a hash:
    #
    #       {
    #         gateway_arn: "GatewayARN", # required
    #       }
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #   @return [String]
    #
    class DisableGatewayInput < Struct.new(
      :gateway_arn)
      include Aws::Structure
    end

    # DisableGatewayOutput
    #
    # @!attribute [rw] gateway_arn
    #   The unique Amazon Resource Name of the disabled gateway.
    #   @return [String]
    #
    class DisableGatewayOutput < Struct.new(
      :gateway_arn)
      include Aws::Structure
    end

    # @!attribute [rw] disk_id
    #   @return [String]
    #
    # @!attribute [rw] disk_path
    #   @return [String]
    #
    # @!attribute [rw] disk_node
    #   @return [String]
    #
    # @!attribute [rw] disk_status
    #   @return [String]
    #
    # @!attribute [rw] disk_size_in_bytes
    #   @return [Integer]
    #
    # @!attribute [rw] disk_allocation_type
    #   @return [String]
    #
    # @!attribute [rw] disk_allocation_resource
    #   @return [String]
    #
    class Disk < Struct.new(
      :disk_id,
      :disk_path,
      :disk_node,
      :disk_status,
      :disk_size_in_bytes,
      :disk_allocation_type,
      :disk_allocation_resource)
      include Aws::Structure
    end

    # Describes a gateway object.
    #
    # @!attribute [rw] gateway_id
    #   The unique identifier assigned to your gateway during activation.
    #   This ID becomes part of the gateway Amazon Resource Name (ARN),
    #   which you use as input for other operations.
    #   @return [String]
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #   @return [String]
    #
    # @!attribute [rw] gateway_type
    #   The type of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] gateway_operational_state
    #   The state of the gateway.
    #
    #   Valid Values: DISABLED or ACTIVE
    #   @return [String]
    #
    # @!attribute [rw] gateway_name
    #   The name of the gateway.
    #   @return [String]
    #
    class GatewayInfo < Struct.new(
      :gateway_id,
      :gateway_arn,
      :gateway_type,
      :gateway_operational_state,
      :gateway_name)
      include Aws::Structure
    end

    # A JSON object containing zero or more of the following fields:
    #
    # * ListGatewaysInput$Limit
    #
    # * ListGatewaysInput$Marker
    #
    # @note When making an API call, you may pass ListGatewaysInput
    #   data as a hash:
    #
    #       {
    #         marker: "Marker",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] marker
    #   An opaque string that indicates the position at which to begin the
    #   returned list of gateways.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   Specifies that the list of gateways returned be limited to the
    #   specified number of items.
    #   @return [Integer]
    #
    class ListGatewaysInput < Struct.new(
      :marker,
      :limit)
      include Aws::Structure
    end

    # @!attribute [rw] gateways
    #   @return [Array<Types::GatewayInfo>]
    #
    # @!attribute [rw] marker
    #   @return [String]
    #
    class ListGatewaysOutput < Struct.new(
      :gateways,
      :marker)
      include Aws::Structure
    end

    # A JSON object containing the of the gateway.
    #
    # @note When making an API call, you may pass ListLocalDisksInput
    #   data as a hash:
    #
    #       {
    #         gateway_arn: "GatewayARN", # required
    #       }
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #   @return [String]
    #
    class ListLocalDisksInput < Struct.new(
      :gateway_arn)
      include Aws::Structure
    end

    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #   @return [String]
    #
    # @!attribute [rw] disks
    #   @return [Array<Types::Disk>]
    #
    class ListLocalDisksOutput < Struct.new(
      :gateway_arn,
      :disks)
      include Aws::Structure
    end

    # ListTagsForResourceInput
    #
    # @note When making an API call, you may pass ListTagsForResourceInput
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ResourceARN", # required
    #         marker: "Marker",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource for which you want to
    #   list tags.
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   An opaque string that indicates the position at which to begin
    #   returning the list of tags.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   Specifies that the list of tags returned be limited to the specified
    #   number of items.
    #   @return [Integer]
    #
    class ListTagsForResourceInput < Struct.new(
      :resource_arn,
      :marker,
      :limit)
      include Aws::Structure
    end

    # ListTagsForResourceOutput
    #
    # @!attribute [rw] resource_arn
    #   he Amazon Resource Name (ARN) of the resource for which you want to
    #   list tags.
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   An opaque string that indicates the position at which to stop
    #   returning the list of tags.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   An array that contains the tags for the specified resource.
    #   @return [Array<Types::Tag>]
    #
    class ListTagsForResourceOutput < Struct.new(
      :resource_arn,
      :marker,
      :tags)
      include Aws::Structure
    end

    # A JSON object that contains one or more of the following fields:
    #
    # * ListTapesInput$Limit
    #
    # * ListTapesInput$Marker
    #
    # * ListTapesInput$TapeARNs
    #
    # @note When making an API call, you may pass ListTapesInput
    #   data as a hash:
    #
    #       {
    #         tape_arns: ["TapeARN"],
    #         marker: "Marker",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] tape_arns
    #   The Amazon Resource Name (ARN) of each of the tapes you want to
    #   list. If you don't specify a tape ARN, the response lists all tapes
    #   in both your VTL and VTS.
    #   @return [Array<String>]
    #
    # @!attribute [rw] marker
    #   A string that indicates the position at which to begin the returned
    #   list of tapes.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   An optional number limit for the tapes in the list returned by this
    #   call.
    #   @return [Integer]
    #
    class ListTapesInput < Struct.new(
      :tape_arns,
      :marker,
      :limit)
      include Aws::Structure
    end

    # A JSON object containing the following fields:
    #
    # * ListTapesOutput$Marker
    #
    # * ListTapesOutput$VolumeInfos
    #
    # @!attribute [rw] tape_infos
    #   An array of TapeInfo objects, where each object describes an a
    #   single tape. If there not tapes in the tape library or VTS, then the
    #   `TapeInfos` is an empty array.
    #   @return [Array<Types::TapeInfo>]
    #
    # @!attribute [rw] marker
    #   A string that indicates the position at which to begin returning the
    #   next list of tapes. Use the marker in your next request to continue
    #   pagination of tapes. If there are no more tapes to list, this
    #   element does not appear in the response body.
    #   @return [String]
    #
    class ListTapesOutput < Struct.new(
      :tape_infos,
      :marker)
      include Aws::Structure
    end

    # ListVolumeInitiatorsInput
    #
    # @note When making an API call, you may pass ListVolumeInitiatorsInput
    #   data as a hash:
    #
    #       {
    #         volume_arn: "VolumeARN", # required
    #       }
    #
    # @!attribute [rw] volume_arn
    #   The Amazon Resource Name (ARN) of the volume. Use the ListVolumes
    #   operation to return a list of gateway volumes for the gateway.
    #   @return [String]
    #
    class ListVolumeInitiatorsInput < Struct.new(
      :volume_arn)
      include Aws::Structure
    end

    # ListVolumeInitiatorsOutput
    #
    # @!attribute [rw] initiators
    #   The host names and port numbers of all iSCSI initiators that are
    #   connected to the gateway.
    #   @return [Array<String>]
    #
    class ListVolumeInitiatorsOutput < Struct.new(
      :initiators)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListVolumeRecoveryPointsInput
    #   data as a hash:
    #
    #       {
    #         gateway_arn: "GatewayARN", # required
    #       }
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #   @return [String]
    #
    class ListVolumeRecoveryPointsInput < Struct.new(
      :gateway_arn)
      include Aws::Structure
    end

    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #   @return [String]
    #
    # @!attribute [rw] volume_recovery_point_infos
    #   @return [Array<Types::VolumeRecoveryPointInfo>]
    #
    class ListVolumeRecoveryPointsOutput < Struct.new(
      :gateway_arn,
      :volume_recovery_point_infos)
      include Aws::Structure
    end

    # A JSON object that contains one or more of the following fields:
    #
    # * ListVolumesInput$Limit
    #
    # * ListVolumesInput$Marker
    #
    # @note When making an API call, you may pass ListVolumesInput
    #   data as a hash:
    #
    #       {
    #         gateway_arn: "GatewayARN",
    #         marker: "Marker",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   A string that indicates the position at which to begin the returned
    #   list of volumes. Obtain the marker from the response of a previous
    #   List iSCSI Volumes request.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   Specifies that the list of volumes returned be limited to the
    #   specified number of items.
    #   @return [Integer]
    #
    class ListVolumesInput < Struct.new(
      :gateway_arn,
      :marker,
      :limit)
      include Aws::Structure
    end

    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   @return [String]
    #
    # @!attribute [rw] volume_infos
    #   @return [Array<Types::VolumeInfo>]
    #
    class ListVolumesOutput < Struct.new(
      :gateway_arn,
      :marker,
      :volume_infos)
      include Aws::Structure
    end

    # Describes a gateway's network interface.
    #
    # @!attribute [rw] ipv_4_address
    #   The Internet Protocol version 4 (IPv4) address of the interface.
    #   @return [String]
    #
    # @!attribute [rw] mac_address
    #   The Media Access Control (MAC) address of the interface.
    #
    #   <note markdown="1">This is currently unsupported and will not be returned in output.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] ipv_6_address
    #   The Internet Protocol version 6 (IPv6) address of the interface.
    #   *Currently not supported*.
    #   @return [String]
    #
    class NetworkInterface < Struct.new(
      :ipv_4_address,
      :mac_address,
      :ipv_6_address)
      include Aws::Structure
    end

    # RemoveTagsFromResourceInput
    #
    # @note When making an API call, you may pass RemoveTagsFromResourceInput
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ResourceARN", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource you want to remove
    #   the tags from.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The keys of the tags you want to remove from the specified resource.
    #   A tag is composed of a key/value pair.
    #   @return [Array<String>]
    #
    class RemoveTagsFromResourceInput < Struct.new(
      :resource_arn,
      :tag_keys)
      include Aws::Structure
    end

    # RemoveTagsFromResourceOutput
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource that the tags were
    #   removed from.
    #   @return [String]
    #
    class RemoveTagsFromResourceOutput < Struct.new(
      :resource_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ResetCacheInput
    #   data as a hash:
    #
    #       {
    #         gateway_arn: "GatewayARN", # required
    #       }
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #   @return [String]
    #
    class ResetCacheInput < Struct.new(
      :gateway_arn)
      include Aws::Structure
    end

    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #   @return [String]
    #
    class ResetCacheOutput < Struct.new(
      :gateway_arn)
      include Aws::Structure
    end

    # RetrieveTapeArchiveInput
    #
    # @note When making an API call, you may pass RetrieveTapeArchiveInput
    #   data as a hash:
    #
    #       {
    #         tape_arn: "TapeARN", # required
    #         gateway_arn: "GatewayARN", # required
    #       }
    #
    # @!attribute [rw] tape_arn
    #   The Amazon Resource Name (ARN) of the virtual tape you want to
    #   retrieve from the virtual tape shelf (VTS).
    #   @return [String]
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway you want to retrieve
    #   the virtual tape to. Use the ListGateways operation to return a list
    #   of gateways for your account and region.
    #
    #   You retrieve archived virtual tapes to only one gateway and the
    #   gateway must be a gateway-VTL.
    #   @return [String]
    #
    class RetrieveTapeArchiveInput < Struct.new(
      :tape_arn,
      :gateway_arn)
      include Aws::Structure
    end

    # RetrieveTapeArchiveOutput
    #
    # @!attribute [rw] tape_arn
    #   The Amazon Resource Name (ARN) of the retrieved virtual tape.
    #   @return [String]
    #
    class RetrieveTapeArchiveOutput < Struct.new(
      :tape_arn)
      include Aws::Structure
    end

    # RetrieveTapeRecoveryPointInput
    #
    # @note When making an API call, you may pass RetrieveTapeRecoveryPointInput
    #   data as a hash:
    #
    #       {
    #         tape_arn: "TapeARN", # required
    #         gateway_arn: "GatewayARN", # required
    #       }
    #
    # @!attribute [rw] tape_arn
    #   The Amazon Resource Name (ARN) of the virtual tape for which you
    #   want to retrieve the recovery point.
    #   @return [String]
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #   @return [String]
    #
    class RetrieveTapeRecoveryPointInput < Struct.new(
      :tape_arn,
      :gateway_arn)
      include Aws::Structure
    end

    # RetrieveTapeRecoveryPointOutput
    #
    # @!attribute [rw] tape_arn
    #   The Amazon Resource Name (ARN) of the virtual tape for which the
    #   recovery point was retrieved.
    #   @return [String]
    #
    class RetrieveTapeRecoveryPointOutput < Struct.new(
      :tape_arn)
      include Aws::Structure
    end

    # SetLocalConsolePasswordInput
    #
    # @note When making an API call, you may pass SetLocalConsolePasswordInput
    #   data as a hash:
    #
    #       {
    #         gateway_arn: "GatewayARN", # required
    #         local_console_password: "LocalConsolePassword", # required
    #       }
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #   @return [String]
    #
    # @!attribute [rw] local_console_password
    #   The password you want to set for your VM local console.
    #   @return [String]
    #
    class SetLocalConsolePasswordInput < Struct.new(
      :gateway_arn,
      :local_console_password)
      include Aws::Structure
    end

    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #   @return [String]
    #
    class SetLocalConsolePasswordOutput < Struct.new(
      :gateway_arn)
      include Aws::Structure
    end

    # A JSON object containing the of the gateway to shut down.
    #
    # @note When making an API call, you may pass ShutdownGatewayInput
    #   data as a hash:
    #
    #       {
    #         gateway_arn: "GatewayARN", # required
    #       }
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #   @return [String]
    #
    class ShutdownGatewayInput < Struct.new(
      :gateway_arn)
      include Aws::Structure
    end

    # A JSON object containing the of the gateway that was shut down.
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #   @return [String]
    #
    class ShutdownGatewayOutput < Struct.new(
      :gateway_arn)
      include Aws::Structure
    end

    # A JSON object containing the of the gateway to start.
    #
    # @note When making an API call, you may pass StartGatewayInput
    #   data as a hash:
    #
    #       {
    #         gateway_arn: "GatewayARN", # required
    #       }
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #   @return [String]
    #
    class StartGatewayInput < Struct.new(
      :gateway_arn)
      include Aws::Structure
    end

    # A JSON object containing the of the gateway that was restarted.
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #   @return [String]
    #
    class StartGatewayOutput < Struct.new(
      :gateway_arn)
      include Aws::Structure
    end

    # Provides additional information about an error that was returned by
    # the service as an or. See the `errorCode` and `errorDetails` members
    # for more information about the error.
    #
    # @!attribute [rw] error_code
    #   Additional information about the error.
    #   @return [String]
    #
    # @!attribute [rw] error_details
    #   Human-readable text that provides detail about the error that
    #   occurred.
    #   @return [Hash<String,String>]
    #
    class StorageGatewayError < Struct.new(
      :error_code,
      :error_details)
      include Aws::Structure
    end

    # @!attribute [rw] volume_arn
    #   @return [String]
    #
    # @!attribute [rw] volume_id
    #   @return [String]
    #
    # @!attribute [rw] volume_type
    #   @return [String]
    #
    # @!attribute [rw] volume_status
    #   @return [String]
    #
    # @!attribute [rw] volume_size_in_bytes
    #   @return [Integer]
    #
    # @!attribute [rw] volume_progress
    #   @return [Float]
    #
    # @!attribute [rw] volume_disk_id
    #   @return [String]
    #
    # @!attribute [rw] source_snapshot_id
    #   @return [String]
    #
    # @!attribute [rw] preserved_existing_data
    #   @return [Boolean]
    #
    # @!attribute [rw] volume_iscsi_attributes
    #   Lists iSCSI information about a volume.
    #   @return [Types::VolumeiSCSIAttributes]
    #
    class StorediSCSIVolume < Struct.new(
      :volume_arn,
      :volume_id,
      :volume_type,
      :volume_status,
      :volume_size_in_bytes,
      :volume_progress,
      :volume_disk_id,
      :source_snapshot_id,
      :preserved_existing_data,
      :volume_iscsi_attributes)
      include Aws::Structure
    end

    # @note When making an API call, you may pass Tag
    #   data as a hash:
    #
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #
    # @!attribute [rw] key
    #   @return [String]
    #
    # @!attribute [rw] value
    #   @return [String]
    #
    class Tag < Struct.new(
      :key,
      :value)
      include Aws::Structure
    end

    # Describes a virtual tape object.
    #
    # @!attribute [rw] tape_arn
    #   The Amazon Resource Name (ARN) of the virtual tape.
    #   @return [String]
    #
    # @!attribute [rw] tape_barcode
    #   The barcode that identifies a specific virtual tape.
    #   @return [String]
    #
    # @!attribute [rw] tape_size_in_bytes
    #   The size, in bytes, of the virtual tape.
    #   @return [Integer]
    #
    # @!attribute [rw] tape_status
    #   The current state of the virtual tape.
    #   @return [String]
    #
    # @!attribute [rw] vtl_device
    #   The virtual tape library (VTL) device that the virtual tape is
    #   associated with.
    #   @return [String]
    #
    # @!attribute [rw] progress
    #   For archiving virtual tapes, indicates how much data remains to be
    #   uploaded before archiving is complete.
    #
    #   Range: 0 (not started) to 100 (complete).
    #   @return [Float]
    #
    class Tape < Struct.new(
      :tape_arn,
      :tape_barcode,
      :tape_size_in_bytes,
      :tape_status,
      :vtl_device,
      :progress)
      include Aws::Structure
    end

    # Represents a virtual tape that is archived in the virtual tape shelf
    # (VTS).
    #
    # @!attribute [rw] tape_arn
    #   The Amazon Resource Name (ARN) of an archived virtual tape.
    #   @return [String]
    #
    # @!attribute [rw] tape_barcode
    #   The barcode that identifies the archived virtual tape.
    #   @return [String]
    #
    # @!attribute [rw] tape_size_in_bytes
    #   The size, in bytes, of the archived virtual tape.
    #   @return [Integer]
    #
    # @!attribute [rw] completion_time
    #   The time that the archiving of the virtual tape was completed.
    #
    #   The string format of the completion time is in the ISO8601 extended
    #   YYYY-MM-DD'T'HH:MM:SS'Z' format.
    #   @return [Time]
    #
    # @!attribute [rw] retrieved_to
    #   The Amazon Resource Name (ARN) of the gateway-VTL that the virtual
    #   tape is being retrieved to.
    #
    #   The virtual tape is retrieved from the virtual tape shelf (VTS).
    #   @return [String]
    #
    # @!attribute [rw] tape_status
    #   The current state of the archived virtual tape.
    #   @return [String]
    #
    class TapeArchive < Struct.new(
      :tape_arn,
      :tape_barcode,
      :tape_size_in_bytes,
      :completion_time,
      :retrieved_to,
      :tape_status)
      include Aws::Structure
    end

    # Describes a virtual tape.
    #
    # @!attribute [rw] tape_arn
    #   The Amazon Resource Name (ARN) of a virtual tape.
    #   @return [String]
    #
    # @!attribute [rw] tape_barcode
    #   The barcode that identifies a specific virtual tape.
    #   @return [String]
    #
    # @!attribute [rw] tape_size_in_bytes
    #   The size, in bytes, of a virtual tape.
    #   @return [Integer]
    #
    # @!attribute [rw] tape_status
    #   The status of the tape.
    #   @return [String]
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #   @return [String]
    #
    class TapeInfo < Struct.new(
      :tape_arn,
      :tape_barcode,
      :tape_size_in_bytes,
      :tape_status,
      :gateway_arn)
      include Aws::Structure
    end

    # Describes a recovery point.
    #
    # @!attribute [rw] tape_arn
    #   The Amazon Resource Name (ARN) of the virtual tape.
    #   @return [String]
    #
    # @!attribute [rw] tape_recovery_point_time
    #   The time when the point-in-time view of the virtual tape was
    #   replicated for later recovery.
    #
    #   The string format of the tape recovery point time is in the ISO8601
    #   extended YYYY-MM-DD'T'HH:MM:SS'Z' format.
    #   @return [Time]
    #
    # @!attribute [rw] tape_size_in_bytes
    #   The size, in bytes, of the virtual tapes to recover.
    #   @return [Integer]
    #
    # @!attribute [rw] tape_status
    #   @return [String]
    #
    class TapeRecoveryPointInfo < Struct.new(
      :tape_arn,
      :tape_recovery_point_time,
      :tape_size_in_bytes,
      :tape_status)
      include Aws::Structure
    end

    # A JSON object containing one or more of the following fields:
    #
    # * UpdateBandwidthRateLimitInput$AverageDownloadRateLimitInBitsPerSec
    #
    # * UpdateBandwidthRateLimitInput$AverageUploadRateLimitInBitsPerSec
    #
    # @note When making an API call, you may pass UpdateBandwidthRateLimitInput
    #   data as a hash:
    #
    #       {
    #         gateway_arn: "GatewayARN", # required
    #         average_upload_rate_limit_in_bits_per_sec: 1,
    #         average_download_rate_limit_in_bits_per_sec: 1,
    #       }
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #   @return [String]
    #
    # @!attribute [rw] average_upload_rate_limit_in_bits_per_sec
    #   The average upload bandwidth rate limit in bits per second.
    #   @return [Integer]
    #
    # @!attribute [rw] average_download_rate_limit_in_bits_per_sec
    #   The average download bandwidth rate limit in bits per second.
    #   @return [Integer]
    #
    class UpdateBandwidthRateLimitInput < Struct.new(
      :gateway_arn,
      :average_upload_rate_limit_in_bits_per_sec,
      :average_download_rate_limit_in_bits_per_sec)
      include Aws::Structure
    end

    # A JSON object containing the of the gateway whose throttle information
    # was updated.
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #   @return [String]
    #
    class UpdateBandwidthRateLimitOutput < Struct.new(
      :gateway_arn)
      include Aws::Structure
    end

    # A JSON object containing one or more of the following fields:
    #
    # * UpdateChapCredentialsInput$InitiatorName
    #
    # * UpdateChapCredentialsInput$SecretToAuthenticateInitiator
    #
    # * UpdateChapCredentialsInput$SecretToAuthenticateTarget
    #
    # * UpdateChapCredentialsInput$TargetARN
    #
    # @note When making an API call, you may pass UpdateChapCredentialsInput
    #   data as a hash:
    #
    #       {
    #         target_arn: "TargetARN", # required
    #         secret_to_authenticate_initiator: "ChapSecret", # required
    #         initiator_name: "IqnName", # required
    #         secret_to_authenticate_target: "ChapSecret",
    #       }
    #
    # @!attribute [rw] target_arn
    #   The Amazon Resource Name (ARN) of the iSCSI volume target. Use the
    #   DescribeStorediSCSIVolumes operation to return the TargetARN for
    #   specified VolumeARN.
    #   @return [String]
    #
    # @!attribute [rw] secret_to_authenticate_initiator
    #   The secret key that the initiator (for example, the Windows client)
    #   must provide to participate in mutual CHAP with the target.
    #
    #   <note markdown="1">The secret key must be between 12 and 16 bytes when encoded in
    #   UTF-8.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] initiator_name
    #   The iSCSI initiator that connects to the target.
    #   @return [String]
    #
    # @!attribute [rw] secret_to_authenticate_target
    #   The secret key that the target must provide to participate in mutual
    #   CHAP with the initiator (e.g. Windows client).
    #
    #   Byte constraints: Minimum bytes of 12. Maximum bytes of 16.
    #
    #   <note markdown="1">The secret key must be between 12 and 16 bytes when encoded in
    #   UTF-8.
    #
    #    </note>
    #   @return [String]
    #
    class UpdateChapCredentialsInput < Struct.new(
      :target_arn,
      :secret_to_authenticate_initiator,
      :initiator_name,
      :secret_to_authenticate_target)
      include Aws::Structure
    end

    # A JSON object containing the following fields:
    #
    # @!attribute [rw] target_arn
    #   The Amazon Resource Name (ARN) of the target. This is the same
    #   target specified in the request.
    #   @return [String]
    #
    # @!attribute [rw] initiator_name
    #   The iSCSI initiator that connects to the target. This is the same
    #   initiator name specified in the request.
    #   @return [String]
    #
    class UpdateChapCredentialsOutput < Struct.new(
      :target_arn,
      :initiator_name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateGatewayInformationInput
    #   data as a hash:
    #
    #       {
    #         gateway_arn: "GatewayARN", # required
    #         gateway_name: "GatewayName",
    #         gateway_timezone: "GatewayTimezone",
    #       }
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #   @return [String]
    #
    # @!attribute [rw] gateway_name
    #   The name you configured for your gateway.
    #   @return [String]
    #
    # @!attribute [rw] gateway_timezone
    #   @return [String]
    #
    class UpdateGatewayInformationInput < Struct.new(
      :gateway_arn,
      :gateway_name,
      :gateway_timezone)
      include Aws::Structure
    end

    # A JSON object containing the ARN of the gateway that was updated.
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #   @return [String]
    #
    # @!attribute [rw] gateway_name
    #   @return [String]
    #
    class UpdateGatewayInformationOutput < Struct.new(
      :gateway_arn,
      :gateway_name)
      include Aws::Structure
    end

    # A JSON object containing the of the gateway to update.
    #
    # @note When making an API call, you may pass UpdateGatewaySoftwareNowInput
    #   data as a hash:
    #
    #       {
    #         gateway_arn: "GatewayARN", # required
    #       }
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #   @return [String]
    #
    class UpdateGatewaySoftwareNowInput < Struct.new(
      :gateway_arn)
      include Aws::Structure
    end

    # A JSON object containing the of the gateway that was updated.
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #   @return [String]
    #
    class UpdateGatewaySoftwareNowOutput < Struct.new(
      :gateway_arn)
      include Aws::Structure
    end

    # A JSON object containing the following fields:
    #
    # * UpdateMaintenanceStartTimeInput$DayOfWeek
    #
    # * UpdateMaintenanceStartTimeInput$HourOfDay
    #
    # * UpdateMaintenanceStartTimeInput$MinuteOfHour
    #
    # @note When making an API call, you may pass UpdateMaintenanceStartTimeInput
    #   data as a hash:
    #
    #       {
    #         gateway_arn: "GatewayARN", # required
    #         hour_of_day: 1, # required
    #         minute_of_hour: 1, # required
    #         day_of_week: 1, # required
    #       }
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #   @return [String]
    #
    # @!attribute [rw] hour_of_day
    #   The hour component of the maintenance start time represented as
    #   *hh*, where *hh* is the hour (00 to 23). The hour of the day is in
    #   the time zone of the gateway.
    #   @return [Integer]
    #
    # @!attribute [rw] minute_of_hour
    #   The minute component of the maintenance start time represented as
    #   *mm*, where *mm* is the minute (00 to 59). The minute of the hour is
    #   in the time zone of the gateway.
    #   @return [Integer]
    #
    # @!attribute [rw] day_of_week
    #   The maintenance start time day of the week.
    #   @return [Integer]
    #
    class UpdateMaintenanceStartTimeInput < Struct.new(
      :gateway_arn,
      :hour_of_day,
      :minute_of_hour,
      :day_of_week)
      include Aws::Structure
    end

    # A JSON object containing the of the gateway whose maintenance start
    # time is updated.
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #   @return [String]
    #
    class UpdateMaintenanceStartTimeOutput < Struct.new(
      :gateway_arn)
      include Aws::Structure
    end

    # A JSON object containing one or more of the following fields:
    #
    # * UpdateSnapshotScheduleInput$Description
    #
    # * UpdateSnapshotScheduleInput$RecurrenceInHours
    #
    # * UpdateSnapshotScheduleInput$StartAt
    #
    # * UpdateSnapshotScheduleInput$VolumeARN
    #
    # @note When making an API call, you may pass UpdateSnapshotScheduleInput
    #   data as a hash:
    #
    #       {
    #         volume_arn: "VolumeARN", # required
    #         start_at: 1, # required
    #         recurrence_in_hours: 1, # required
    #         description: "Description",
    #       }
    #
    # @!attribute [rw] volume_arn
    #   The Amazon Resource Name (ARN) of the volume. Use the ListVolumes
    #   operation to return a list of gateway volumes.
    #   @return [String]
    #
    # @!attribute [rw] start_at
    #   The hour of the day at which the snapshot schedule begins
    #   represented as *hh*, where *hh* is the hour (0 to 23). The hour of
    #   the day is in the time zone of the gateway.
    #   @return [Integer]
    #
    # @!attribute [rw] recurrence_in_hours
    #   Frequency of snapshots. Specify the number of hours between
    #   snapshots.
    #   @return [Integer]
    #
    # @!attribute [rw] description
    #   Optional description of the snapshot that overwrites the existing
    #   description.
    #   @return [String]
    #
    class UpdateSnapshotScheduleInput < Struct.new(
      :volume_arn,
      :start_at,
      :recurrence_in_hours,
      :description)
      include Aws::Structure
    end

    # A JSON object containing the of the updated storage volume.
    #
    # @!attribute [rw] volume_arn
    #   @return [String]
    #
    class UpdateSnapshotScheduleOutput < Struct.new(
      :volume_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateVTLDeviceTypeInput
    #   data as a hash:
    #
    #       {
    #         vtl_device_arn: "VTLDeviceARN", # required
    #         device_type: "DeviceType", # required
    #       }
    #
    # @!attribute [rw] vtl_device_arn
    #   The Amazon Resource Name (ARN) of the medium changer you want to
    #   select.
    #   @return [String]
    #
    # @!attribute [rw] device_type
    #   The type of medium changer you want to select.
    #
    #   Valid Values: "STK-L700", "AWS-Gateway-VTL"
    #   @return [String]
    #
    class UpdateVTLDeviceTypeInput < Struct.new(
      :vtl_device_arn,
      :device_type)
      include Aws::Structure
    end

    # UpdateVTLDeviceTypeOutput
    #
    # @!attribute [rw] vtl_device_arn
    #   The Amazon Resource Name (ARN) of the medium changer you have
    #   selected.
    #   @return [String]
    #
    class UpdateVTLDeviceTypeOutput < Struct.new(
      :vtl_device_arn)
      include Aws::Structure
    end

    # Represents a device object associated with a gateway-VTL.
    #
    # @!attribute [rw] vtl_device_arn
    #   Specifies the unique Amazon Resource Name (ARN) of the device (tape
    #   drive or media changer).
    #   @return [String]
    #
    # @!attribute [rw] vtl_device_type
    #   @return [String]
    #
    # @!attribute [rw] vtl_device_vendor
    #   @return [String]
    #
    # @!attribute [rw] vtl_device_product_identifier
    #   @return [String]
    #
    # @!attribute [rw] device_iscsi_attributes
    #   A list of iSCSI information about a VTL device.
    #   @return [Types::DeviceiSCSIAttributes]
    #
    class VTLDevice < Struct.new(
      :vtl_device_arn,
      :vtl_device_type,
      :vtl_device_vendor,
      :vtl_device_product_identifier,
      :device_iscsi_attributes)
      include Aws::Structure
    end

    # Describes a storage volume object.
    #
    # @!attribute [rw] volume_arn
    #   The Amazon Resource Name (ARN) for the storage volume. For example,
    #   the following is a valid ARN:
    #
    #   `arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABB`
    #
    #   Valid Values: 50 to 500 lowercase letters, numbers, periods (.), and
    #   hyphens (-).
    #   @return [String]
    #
    # @!attribute [rw] volume_id
    #   The unique identifier assigned to the volume. This ID becomes part
    #   of the volume Amazon Resource Name (ARN), which you use as input for
    #   other operations.
    #
    #   Valid Values: 50 to 500 lowercase letters, numbers, periods (.), and
    #   hyphens (-).
    #   @return [String]
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #   @return [String]
    #
    # @!attribute [rw] gateway_id
    #   The unique identifier assigned to your gateway during activation.
    #   This ID becomes part of the gateway Amazon Resource Name (ARN),
    #   which you use as input for other operations.
    #
    #   Valid Values: 50 to 500 lowercase letters, numbers, periods (.), and
    #   hyphens (-).
    #   @return [String]
    #
    # @!attribute [rw] volume_type
    #   @return [String]
    #
    # @!attribute [rw] volume_size_in_bytes
    #   The size, in bytes, of the volume.
    #
    #   Valid Values: 50 to 500 lowercase letters, numbers, periods (.), and
    #   hyphens (-).
    #   @return [Integer]
    #
    class VolumeInfo < Struct.new(
      :volume_arn,
      :volume_id,
      :gateway_arn,
      :gateway_id,
      :volume_type,
      :volume_size_in_bytes)
      include Aws::Structure
    end

    # @!attribute [rw] volume_arn
    #   @return [String]
    #
    # @!attribute [rw] volume_size_in_bytes
    #   @return [Integer]
    #
    # @!attribute [rw] volume_usage_in_bytes
    #   @return [Integer]
    #
    # @!attribute [rw] volume_recovery_point_time
    #   @return [String]
    #
    class VolumeRecoveryPointInfo < Struct.new(
      :volume_arn,
      :volume_size_in_bytes,
      :volume_usage_in_bytes,
      :volume_recovery_point_time)
      include Aws::Structure
    end

    # Lists iSCSI information about a volume.
    #
    # @!attribute [rw] target_arn
    #   The Amazon Resource Name (ARN) of the volume target.
    #   @return [String]
    #
    # @!attribute [rw] network_interface_id
    #   The network interface identifier.
    #   @return [String]
    #
    # @!attribute [rw] network_interface_port
    #   The port used to communicate with iSCSI targets.
    #   @return [Integer]
    #
    # @!attribute [rw] lun_number
    #   The logical disk number.
    #   @return [Integer]
    #
    # @!attribute [rw] chap_enabled
    #   Indicates whether mutual CHAP is enabled for the iSCSI target.
    #   @return [Boolean]
    #
    class VolumeiSCSIAttributes < Struct.new(
      :target_arn,
      :network_interface_id,
      :network_interface_port,
      :lun_number,
      :chap_enabled)
      include Aws::Structure
    end

  end
end
