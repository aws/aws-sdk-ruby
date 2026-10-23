# frozen_string_literal: true

# This is generated code!

module Aws::StorageGateway
  # This module contains the types returned by client operations.
  module Types

    # <p>A JSON object containing one or more of the following fields:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>ActivateGatewayInput$ActivationKey</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>ActivateGatewayInput$GatewayName</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>ActivateGatewayInput$GatewayRegion</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>ActivateGatewayInput$GatewayTimezone</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>ActivateGatewayInput$GatewayType</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>ActivateGatewayInput$MediumChangerType</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>ActivateGatewayInput$TapeDriveType</a>
    #                </p>
    #             </li>
    #          </ul>
    # @!attribute activation_key
    #   <p>Your gateway activation key. You can obtain the activation key by sending an HTTP GET
    #            request with redirects enabled to the gateway IP address (port 80). The redirect URL
    #            returned in the response provides you the activation key for your gateway in the query
    #            string parameter <code>activationKey</code>. It may also include other activation-related
    #            parameters, however, these are merely defaults -- the arguments you pass to the
    #               <code>ActivateGateway</code> API call determine the actual configuration of your
    #            gateway.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/storagegateway/latest/userguide/get-activation-key.html">Getting activation
    #               key</a> in the <i>Storage Gateway User Guide</i>.</p>
    #   @return [String]
    # @!attribute gateway_name
    #   <p>The name you configured for your gateway.</p>
    #   @return [String]
    # @!attribute gateway_timezone
    #   <p>A value that indicates the time zone you want to set for the gateway. The time zone is
    #            of the format "GMT", "GMT-hr:mm", or "GMT+hr:mm". For example, GMT indicates Greenwich Mean
    #            Time without any offset. GMT-4:00 indicates the time is 4 hours behind GMT. GMT+2:00
    #            indicates the time is 2 hours ahead of GMT. The time zone is used, for example, for
    #            scheduling snapshots and your gateway's maintenance schedule.</p>
    #   @return [String]
    # @!attribute gateway_region
    #   <p>A value that indicates the Amazon Web Services Region where you want to store your data.
    #            The gateway Amazon Web Services Region specified must be the same Amazon Web Services Region
    #            as the Amazon Web Services Region in your <code>Host</code> header in the request. For more
    #            information about available Amazon Web Services Regions and endpoints for Storage Gateway, see <a href="https://docs.aws.amazon.com/general/latest/gr/sg.html">
    #               Storage Gateway endpoints and quotas</a> in the <i>Amazon Web Services
    #               General Reference</i>.</p>
    #            <p>Valid Values: See <a href="https://docs.aws.amazon.com/general/latest/gr/sg.html">
    #               Storage Gateway endpoints and quotas</a> in the <i>Amazon Web Services
    #               General Reference</i>.
    #            
    #         </p>
    #   @return [String]
    # @!attribute gateway_type
    #   <p>A value that defines the type of gateway to activate. The type specified is critical to
    #            all later functions of the gateway and cannot be changed after activation. The default
    #            value is <code>CACHED</code>.</p>
    #            <important>
    #               <p>Amazon FSx File Gateway is no longer available to new customers. Existing
    #               customers of FSx File Gateway can continue to use the service normally. For
    #               capabilities similar to FSx File Gateway, visit <a href="https://aws.amazon.com/blogs/storage/switch-your-file-share-access-from-amazon-fsx-file-gateway-to-amazon-fsx-for-windows-file-server/">this blog post</a>.</p>
    #            </important>
    #            <p>Valid Values: <code>STORED</code> | <code>CACHED</code> | <code>VTL</code>
    #            | <code>FILE_S3</code> |
    #            <code>FILE_FSX_SMB</code>
    #            </p>
    #   @return [String]
    # @!attribute tape_drive_type
    #   <p>The value that indicates the type of tape drive to use for tape gateway. This field is
    #            optional.</p>
    #            <p>Valid Values: <code>IBM-ULT3580-TD5</code>
    #            </p>
    #   @return [String]
    # @!attribute medium_changer_type
    #   <p>The value that indicates the type of medium changer to use for tape gateway. This field
    #            is optional.</p>
    #            <p>Valid Values: <code>STK-L700</code> | <code>AWS-Gateway-VTL</code> |
    #               <code>IBM-03584L32-0402</code>
    #            </p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of up to 50 tags that you can assign to the gateway. Each tag is a key-value
    #            pair.</p>
    #            <note>
    #               <p>Valid characters for key and value are letters, spaces, and numbers that can be
    #               represented in UTF-8 format, and the following special characters: + - = . _ : / @. The
    #               maximum length of a tag's key is 128 characters, and the maximum length for a
    #               tag's value is 256 characters.</p>
    #            </note>
    #   @return [Array<Types::Tag>]
    class ActivateGatewayInput < Struct.new(
      nil,
      :activation_key,
      :gateway_name,
      :gateway_timezone,
      :gateway_region,
      :gateway_type,
      :tape_drive_type,
      :medium_changer_type,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Storage Gateway returns the Amazon Resource Name (ARN) of the activated gateway. It
    #          is a string made of information such as your account, gateway name, and Amazon Web Services Region. This ARN is used to reference the gateway in other API operations as
    #          well as resource-based authorization.</p>
    #          <note>
    #             <p>For gateways activated prior to September 02, 2015, the gateway ARN contains the
    #             gateway name rather than the gateway ID. Changing the name of the gateway has no effect
    #             on the gateway ARN.</p>
    #          </note>
    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    class ActivateGatewayOutput < Struct.new(
      nil,
      :gateway_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute disk_ids
    #   <p>An array of strings that identify disks that are to be configured as working storage.
    #            Each string has a minimum length of 1 and maximum length of 300. You can get the disk IDs
    #            from the <a>ListLocalDisks</a> API.</p>
    #   @return [Array<String>]
    class AddCacheInput < Struct.new(
      nil,
      :gateway_arn,
      :disk_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    class AddCacheOutput < Struct.new(
      nil,
      :gateway_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>AddTagsToResourceInput</p>
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource you want to add tags to.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The key-value pair that represents the tag you want to add to the resource. The value
    #            can be an empty string.</p>
    #            <note>
    #               <p>Valid characters for key and value are letters, spaces, and numbers representable in
    #               UTF-8 format, and the following special characters: + - = . _ : / @. The maximum length
    #               of a tag's key is 128 characters, and the maximum length for a tag's value is
    #               256.</p>
    #            </note>
    #   @return [Array<Types::Tag>]
    class AddTagsToResourceInput < Struct.new(
      nil,
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>AddTagsToResourceOutput</p>
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource you want to add tags to.</p>
    #   @return [String]
    class AddTagsToResourceOutput < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute disk_ids
    #   <p>An array of strings that identify disks that are to be configured as working storage.
    #            Each string has a minimum length of 1 and maximum length of 300. You can get the disk IDs
    #            from the <a>ListLocalDisks</a> API.</p>
    #   @return [Array<String>]
    class AddUploadBufferInput < Struct.new(
      nil,
      :gateway_arn,
      :disk_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    class AddUploadBufferOutput < Struct.new(
      nil,
      :gateway_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A JSON object containing one or more of the following fields:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>AddWorkingStorageInput$DiskIds</a>
    #                </p>
    #             </li>
    #          </ul>
    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute disk_ids
    #   <p>An array of strings that identify disks that are to be configured as working storage.
    #            Each string has a minimum length of 1 and maximum length of 300. You can get the disk IDs
    #            from the <a>ListLocalDisks</a> API.</p>
    #   @return [Array<String>]
    class AddWorkingStorageInput < Struct.new(
      nil,
      :gateway_arn,
      :disk_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A JSON object containing the Amazon Resource Name (ARN) of the gateway for which working
    #          storage was configured.</p>
    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    class AddWorkingStorageOutput < Struct.new(
      nil,
      :gateway_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tape_arn
    #   <p>The unique Amazon Resource Name (ARN) of the virtual tape that you want to add to the
    #            tape pool.</p>
    #   @return [String]
    # @!attribute pool_id
    #   <p>The ID of the pool that you want to add your tape to for archiving. The tape in this
    #            pool is archived in the S3 storage class that is associated with the pool. When you use
    #            your backup application to eject the tape, the tape is archived directly into the storage
    #            class (S3 Glacier or S3 Glacier Deep Archive) that corresponds to the pool.</p>
    #   @return [String]
    # @!attribute bypass_governance_retention
    #   <p>Set permissions to bypass governance retention. If the lock type of the archived tape is
    #               <code>Governance</code>, the tape's archived age is not older than
    #               <code>RetentionLockInDays</code>, and the user does not already have
    #               <code>BypassGovernanceRetention</code>, setting this to TRUE enables the user to bypass
    #            the retention lock. This parameter is set to true by default for calls from the
    #            console.</p>
    #            <p>Valid values: <code>TRUE</code> | <code>FALSE</code>
    #            </p>
    #   @return [Boolean]
    class AssignTapePoolInput < Struct.new(
      nil,
      :tape_arn,
      :pool_id,
      :bypass_governance_retention,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tape_arn
    #   <p>The unique Amazon Resource Names (ARN) of the virtual tape that was added to the tape
    #            pool.</p>
    #   @return [String]
    class AssignTapePoolOutput < Struct.new(
      nil,
      :tape_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_name
    #   <p>The user name of the user credential that has permission to access the root share D$ of
    #            the Amazon FSx file system. The user account must belong to the Amazon FSx
    #            delegated admin user group.</p>
    #   @return [String]
    # @!attribute password
    #   <p>The password of the user credential.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique string value that you supply that is used by the FSx File Gateway to ensure
    #            idempotent file system association creation.</p>
    #   @return [String]
    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute location_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon FSx file system to associate with
    #            the FSx File Gateway.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of up to 50 tags that can be assigned to the file system association. Each tag is
    #            a key-value pair.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute audit_destination_arn
    #   <p>The Amazon Resource Name (ARN) of the storage used for the audit logs.</p>
    #   @return [String]
    # @!attribute cache_attributes
    #   <p>The refresh cache information for the file share or FSx file systems.</p>
    #   @return [Types::CacheAttributes]
    # @!attribute endpoint_network_configuration
    #   <p>Specifies the network configuration information for the gateway associated with the
    #               Amazon FSx file system.</p>
    #            <note>
    #               <p>If multiple file systems are associated with this gateway, this parameter's
    #                  <code>IpAddresses</code> field is required.</p>
    #            </note>
    #   @return [Types::EndpointNetworkConfiguration]
    class AssociateFileSystemInput < Struct.new(
      nil,
      :user_name,
      :password,
      :client_token,
      :gateway_arn,
      :location_arn,
      :tags,
      :audit_destination_arn,
      :cache_attributes,
      :endpoint_network_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute file_system_association_arn
    #   <p>The ARN of the newly created file system association.</p>
    #   @return [String]
    class AssociateFileSystemOutput < Struct.new(
      nil,
      :file_system_association_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>AttachVolumeInput</p>
    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway that you want to attach the volume
    #            to.</p>
    #   @return [String]
    # @!attribute target_name
    #   <p>The name of the iSCSI target used by an initiator to connect to a volume and used as a
    #            suffix for the target ARN. For example, specifying <code>TargetName</code> as
    #               <i>myvolume</i> results in the target ARN of
    #               <code>arn:aws:storagegateway:us-east-2:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume</code>.
    #            The target name must be unique across all volumes on a gateway.</p>
    #            <p>If you don't specify a value, Storage Gateway uses the value that was previously
    #            used for this volume as the new target name.</p>
    #   @return [String]
    # @!attribute volume_arn
    #   <p>The Amazon Resource Name (ARN) of the volume to attach to the specified gateway.</p>
    #   @return [String]
    # @!attribute network_interface_id
    #   <p>The network interface of the gateway on which to expose the iSCSI target. Accepts IPv4
    #            and IPv6 addresses. Use <a>DescribeGatewayInformation</a> to get a list of the
    #            network interfaces available on a gateway.</p>
    #            <p>Valid Values: A valid IP address.</p>
    #   @return [String]
    # @!attribute disk_id
    #   <p>The unique device ID or other distinguishing data that identifies the local disk used to
    #            create the volume. This value is only required when you are attaching a stored
    #            volume.</p>
    #   @return [String]
    class AttachVolumeInput < Struct.new(
      nil,
      :gateway_arn,
      :target_name,
      :volume_arn,
      :network_interface_id,
      :disk_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>AttachVolumeOutput</p>
    # @!attribute volume_arn
    #   <p>The Amazon Resource Name (ARN) of the volume that was attached to the gateway.</p>
    #   @return [String]
    # @!attribute target_arn
    #   <p>The Amazon Resource Name (ARN) of the volume target, which includes the iSCSI name for
    #            the initiator that was used to connect to the target.</p>
    #   @return [String]
    class AttachVolumeOutput < Struct.new(
      nil,
      :volume_arn,
      :target_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the gateway's automatic tape creation policies, including the
    #          automatic tape creation rules and the gateway that is using the policies.</p>
    # @!attribute automatic_tape_creation_rules
    #   <p>An automatic tape creation policy consists of a list of automatic tape creation rules.
    #            This returns the rules that determine when and how to automatically create new
    #            tapes.</p>
    #   @return [Array<Types::AutomaticTapeCreationRule>]
    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    class AutomaticTapeCreationPolicyInfo < Struct.new(
      nil,
      :automatic_tape_creation_rules,
      :gateway_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An automatic tape creation policy consists of automatic tape creation rules where each
    #          rule defines when and how to create new tapes. For more information about automatic tape
    #          creation, see <a href="https://docs.aws.amazon.com/storagegateway/latest/userguide/GettingStartedCreateTapes.html#CreateTapesAutomatically">Creating Tapes Automatically</a>.</p>
    # @!attribute tape_barcode_prefix
    #   <p>A prefix that you append to the barcode of the virtual tape that you are creating. This
    #            prefix makes the barcode unique.</p>
    #            <note>
    #               <p>The prefix must be 1-4 characters in length and must be one of the uppercase letters
    #               from A to Z.</p>
    #            </note>
    #   @return [String]
    # @!attribute pool_id
    #   <p>The ID of the pool that you want to add your tape to for archiving. The tape in this
    #            pool is archived in the Amazon S3 storage class that is associated with the pool.
    #            When you use your backup application to eject the tape, the tape is archived directly into
    #            the storage class (S3 Glacier or S3 Glacier Deep Archive) that corresponds to the
    #            pool.</p>
    #   @return [String]
    # @!attribute tape_size_in_bytes
    #   <p>The size, in bytes, of the virtual tape capacity.</p>
    #   @return [Integer]
    # @!attribute minimum_num_tapes
    #   <p>The minimum number of available virtual tapes that the gateway maintains at all times.
    #            If the number of tapes on the gateway goes below this value, the gateway creates as many
    #            new tapes as are needed to have <code>MinimumNumTapes</code> on the gateway. For more
    #            information about automatic tape creation, see <a href="https://docs.aws.amazon.com/storagegateway/latest/userguide/GettingStartedCreateTapes.html#CreateTapesAutomatically">Creating Tapes Automatically</a>.</p>
    #   @return [Integer]
    # @!attribute worm
    #   <p>Set to <code>true</code> to indicate that tapes are to be archived as
    #            write-once-read-many (WORM). Set to <code>false</code> when WORM is not enabled for
    #            tapes.</p>
    #   @return [Boolean]
    class AutomaticTapeCreationRule < Struct.new(
      nil,
      :tape_barcode_prefix,
      :pool_id,
      :tape_size_in_bytes,
      :minimum_num_tapes,
      :worm,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:worm] = false unless options.key?(:worm)
        super
      end
    end

    # <p>Describes a bandwidth rate limit interval for a gateway. A bandwidth rate limit schedule
    #          consists of one or more bandwidth rate limit intervals. A bandwidth rate limit interval
    #          defines a period of time on one or more days of the week, during which bandwidth rate
    #          limits are specified for uploading, downloading, or both.</p>
    #          <note>
    #             <p>FSx File Gateway does not support this feature.</p>
    #          </note>
    # @!attribute start_hour_of_day
    #   <p> The hour of the day to start the bandwidth rate limit interval. </p>
    #   @return [Integer]
    # @!attribute start_minute_of_hour
    #   <p> The minute of the hour to start the bandwidth rate limit interval. The interval begins
    #            at the start of that minute. To begin an interval exactly at the start of the hour, use the
    #            value <code>0</code>. </p>
    #   @return [Integer]
    # @!attribute end_hour_of_day
    #   <p> The hour of the day to end the bandwidth rate limit interval. </p>
    #   @return [Integer]
    # @!attribute end_minute_of_hour
    #   <p> The minute of the hour to end the bandwidth rate limit interval. </p>
    #            <important>
    #               <p> The bandwidth rate limit interval ends at the end of the minute. To end an interval
    #               at the end of an hour, use the value <code>59</code>. </p>
    #            </important>
    #   @return [Integer]
    # @!attribute days_of_week
    #   <p> The days of the week component of the bandwidth rate limit interval, represented as
    #            ordinal numbers from 0 to 6, where 0 represents Sunday and 6 represents Saturday. </p>
    #   @return [Array<Integer>]
    # @!attribute average_upload_rate_limit_in_bits_per_sec
    #   <p> The average upload rate limit component of the bandwidth rate limit interval, in bits
    #            per second. This field does not appear in the response if the upload rate limit is not set. </p>
    #            <note>
    #               <p>For Tape Gateway and Volume Gateway, the minimum value is <code>51200</code>.</p>
    #               <p>This field is required for S3 File Gateway, and the minimum value is
    #                  <code>104857600</code>.</p>
    #            </note>
    #   @return [Integer]
    # @!attribute average_download_rate_limit_in_bits_per_sec
    #   <p> The average download rate limit component of the bandwidth rate limit interval, in bits
    #            per second. This field does not appear in the response if the download rate limit is not
    #            set. </p>
    #            <note>
    #               <p>S3 File Gateway does not support this feature.</p>
    #            </note>
    #   @return [Integer]
    class BandwidthRateLimitInterval < Struct.new(
      nil,
      :start_hour_of_day,
      :start_minute_of_hour,
      :end_hour_of_day,
      :end_minute_of_hour,
      :days_of_week,
      :average_upload_rate_limit_in_bits_per_sec,
      :average_download_rate_limit_in_bits_per_sec,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The refresh cache information for the file share or FSx file systems.</p>
    # @!attribute cache_stale_timeout_in_seconds
    #   <p>Refreshes a file share's cache by using Time To Live (TTL). TTL is the length of
    #            time since the last refresh after which access to the directory would cause the file
    #            gateway to first refresh that directory's contents from the Amazon S3 bucket
    #            or Amazon FSx file system. The TTL duration is in seconds.</p>
    #            <p>Valid Values:0, 300 to 2,592,000 seconds (5 minutes to 30 days)</p>
    #   @return [Integer]
    class CacheAttributes < Struct.new(
      nil,
      :cache_stale_timeout_in_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A list of filter parameters and associated values that determine which files are
    #          included or excluded from a cache report created by a <code>StartCacheReport</code>
    #          request. Multiple instances of the same filter parameter are combined with an OR operation,
    #          while different parameters are combined with an AND operation.</p>
    # @!attribute name
    #   <p>The parameter name for a filter that determines which files are included or excluded
    #            from a cache report.</p>
    #            <p>
    #               <b>Valid Names:</b>
    #            </p>
    #            <p>UploadFailureReason | UploadState</p>
    #   @return [String]
    # @!attribute values
    #   <p>The parameter value for a filter that determines which files are included or excluded
    #            from a cache report.</p>
    #            <p>
    #               <b>Valid <code>UploadFailureReason</code> Values:</b>
    #            </p>
    #            <p>
    #               <code>InaccessibleStorageClass</code> | <code>InvalidObjectState</code> |
    #               <code>ObjectMissing</code> | <code>S3AccessDenied</code>
    #            </p>
    #            <p>
    #               <b>Valid <code>UploadState</code> Values:</b>
    #            </p>
    #            <p>
    #               <code>FailingUpload</code>
    #            </p>
    #   @return [Array<String>]
    class CacheReportFilter < Struct.new(
      nil,
      :name,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains all informational fields associated with a cache report. Includes name, ARN,
    #          tags, status, progress, filters, start time, and end time.</p>
    # @!attribute cache_report_arn
    #   <p>The Amazon Resource Name (ARN) of the cache report you want to describe.</p>
    #   @return [String]
    # @!attribute cache_report_status
    #   <p>The status of the specified cache report.</p>
    #   @return [String]
    # @!attribute report_completion_percent
    #   <p>The percentage of the report generation process that has been completed at time of
    #            inquiry.</p>
    #   @return [Integer]
    # @!attribute end_time
    #   <p>The time at which the gateway stopped generating the cache report.</p>
    #   @return [Time]
    # @!attribute role
    #   <p>The ARN of the IAM role that an S3 File Gateway assumes when it accesses the underlying
    #            storage.</p>
    #   @return [String]
    # @!attribute file_share_arn
    #   <p>The Amazon Resource Name (ARN) of the file share.</p>
    #   @return [String]
    # @!attribute location_arn
    #   <p>The ARN of the Amazon S3 bucket location where the cache report is saved.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The time at which the gateway started generating the cache report.</p>
    #   @return [Time]
    # @!attribute inclusion_filters
    #   <p>The list of filters and parameters that determine which files are included in the
    #            report.</p>
    #   @return [Array<Types::CacheReportFilter>]
    # @!attribute exclusion_filters
    #   <p>The list of filters and parameters that determine which files are excluded from the
    #            report.</p>
    #   @return [Array<Types::CacheReportFilter>]
    # @!attribute report_name
    #   <p>The file name of the completed cache report object stored in Amazon S3.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The list of key/value tags associated with the report.</p>
    #   @return [Array<Types::Tag>]
    class CacheReportInfo < Struct.new(
      nil,
      :cache_report_arn,
      :cache_report_status,
      :report_completion_percent,
      :end_time,
      :role,
      :file_share_arn,
      :location_arn,
      :start_time,
      :inclusion_filters,
      :exclusion_filters,
      :report_name,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an iSCSI cached volume.</p>
    # @!attribute volume_arn
    #   <p>The Amazon Resource Name (ARN) of the storage volume.</p>
    #   @return [String]
    # @!attribute volume_id
    #   <p>The unique identifier of the volume, e.g., vol-AE4B946D.</p>
    #   @return [String]
    # @!attribute volume_type
    #   <p>One of the VolumeType enumeration values that describes the type of the volume.</p>
    #   @return [String]
    # @!attribute volume_status
    #   <p>One of the VolumeStatus values that indicates the state of the storage volume.</p>
    #   @return [String]
    # @!attribute volume_attachment_status
    #   <p>A value that indicates whether a storage volume is attached to or detached from a
    #            gateway. For more information, see <a href="https://docs.aws.amazon.com/storagegateway/latest/userguide/managing-volumes.html#attach-detach-volume">Moving
    #               your volumes to a different gateway</a>.</p>
    #   @return [String]
    # @!attribute volume_size_in_bytes
    #   <p>The size, in bytes, of the volume capacity.</p>
    #   @return [Integer]
    # @!attribute volume_progress
    #   <p>Represents the percentage complete if the volume is restoring or bootstrapping that
    #            represents the percent of data transferred. This field does not appear in the response if
    #            the cached volume is not restoring or bootstrapping.</p>
    #   @return [Float]
    # @!attribute source_snapshot_id
    #   <p>If the cached volume was created from a snapshot, this field contains the snapshot ID
    #            used, e.g., snap-78e22663. Otherwise, this field is not included.</p>
    #   @return [String]
    # @!attribute volumei_scsi_attributes
    #   <p>An <a>VolumeiSCSIAttributes</a> object that represents a collection of iSCSI
    #            attributes for one stored volume.</p>
    #   @return [Types::VolumeiSCSIAttributes]
    # @!attribute created_date
    #   <p>The date the volume was created. Volumes created prior to March 28, 2017 don’t have this
    #            timestamp.</p>
    #   @return [Time]
    # @!attribute volume_used_in_bytes
    #   <p>The size of the data stored on the volume in bytes. This value is calculated based on
    #            the number of blocks that are touched, instead of the actual amount of data written. This
    #            value can be useful for sequential write patterns but less accurate for random write
    #            patterns. <code>VolumeUsedInBytes</code> is different from the compressed size of the
    #            volume, which is the value that is used to calculate your bill.</p>
    #            <note>
    #               <p>This value is not available for volumes created prior to May 13, 2015, until you
    #               store data on the volume.</p>
    #               <p>If you use a delete tool that overwrites the data on your volume with random data,
    #               your usage will not be reduced. This is because the random data is not compressible. If
    #               you want to reduce the amount of billed storage on your volume, we recommend overwriting
    #               your files with zeros to compress the data to a negligible amount of actual
    #               storage.</p>
    #            </note>
    #   @return [Integer]
    # @!attribute kms_key
    #   <p>Optional. The Amazon Resource Name (ARN) of a symmetric customer master key (CMK) used
    #            for Amazon S3 server-side encryption. Storage Gateway does not support asymmetric
    #            CMKs. This value must be set if <code>KMSEncrypted</code> is <code>true</code>, or if
    #               <code>EncryptionType</code> is <code>SseKms</code> or <code>DsseKms</code>.</p>
    #   @return [String]
    # @!attribute target_name
    #   <p>The name of the iSCSI target used by an initiator to connect to a volume and used as a
    #            suffix for the target ARN. For example, specifying <code>TargetName</code> as
    #               <i>myvolume</i> results in the target ARN of
    #               <code>arn:aws:storagegateway:us-east-2:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume</code>.
    #            The target name must be unique across all volumes on a gateway.</p>
    #            <p>If you don't specify a value, Storage Gateway uses the value that was previously
    #            used for this volume as the new target name.</p>
    #   @return [String]
    class CachediSCSIVolume < Struct.new(
      nil,
      :volume_arn,
      :volume_id,
      :volume_type,
      :volume_status,
      :volume_attachment_status,
      :volume_size_in_bytes,
      :volume_progress,
      :source_snapshot_id,
      :volumei_scsi_attributes,
      :created_date,
      :volume_used_in_bytes,
      :kms_key,
      :target_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:volume_size_in_bytes] = 0 unless options.key?(:volume_size_in_bytes)
        super
      end
    end

    # <p>CancelArchivalInput</p>
    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute tape_arn
    #   <p>The Amazon Resource Name (ARN) of the virtual tape you want to cancel archiving
    #            for.</p>
    #   @return [String]
    class CancelArchivalInput < Struct.new(
      nil,
      :gateway_arn,
      :tape_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>CancelArchivalOutput</p>
    # @!attribute tape_arn
    #   <p>The Amazon Resource Name (ARN) of the virtual tape for which archiving was
    #            canceled.</p>
    #   @return [String]
    class CancelArchivalOutput < Struct.new(
      nil,
      :tape_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cache_report_arn
    #   <p>The Amazon Resource Name (ARN) of the cache report you want to cancel.</p>
    #   @return [String]
    class CancelCacheReportInput < Struct.new(
      nil,
      :cache_report_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cache_report_arn
    #   <p>The Amazon Resource Name (ARN) of the cache report you want to cancel.</p>
    #   @return [String]
    class CancelCacheReportOutput < Struct.new(
      nil,
      :cache_report_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>CancelRetrievalInput</p>
    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute tape_arn
    #   <p>The Amazon Resource Name (ARN) of the virtual tape you want to cancel retrieval
    #            for.</p>
    #   @return [String]
    class CancelRetrievalInput < Struct.new(
      nil,
      :gateway_arn,
      :tape_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>CancelRetrievalOutput</p>
    # @!attribute tape_arn
    #   <p>The Amazon Resource Name (ARN) of the virtual tape for which retrieval was
    #            canceled.</p>
    #   @return [String]
    class CancelRetrievalOutput < Struct.new(
      nil,
      :tape_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes Challenge-Handshake Authentication Protocol (CHAP) information that supports
    #          authentication between your gateway and iSCSI initiators.</p>
    # @!attribute target_arn
    #   <p>The Amazon Resource Name (ARN) of the volume.</p>
    #            <p>Valid Values: 50 to 500 lowercase letters, numbers, periods (.), and hyphens (-).</p>
    #   @return [String]
    # @!attribute secret_to_authenticate_initiator
    #   <p>The secret key that the initiator (for example, the Windows client) must provide to
    #            participate in mutual CHAP with the target.</p>
    #   @return [String]
    # @!attribute initiator_name
    #   <p>The iSCSI initiator that connects to the target.</p>
    #   @return [String]
    # @!attribute secret_to_authenticate_target
    #   <p>The secret key that the target must provide to participate in mutual CHAP with the
    #            initiator (e.g., Windows client).</p>
    #   @return [String]
    class ChapInfo < Struct.new(
      nil,
      :target_arn,
      :secret_to_authenticate_initiator,
      :initiator_name,
      :secret_to_authenticate_target,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute volume_size_in_bytes
    #   <p>The size of the volume in bytes.</p>
    #   @return [Integer]
    # @!attribute snapshot_id
    #   <p>The snapshot ID (e.g. "snap-1122aabb") of the snapshot to restore as the new cached
    #            volume. Specify this field if you want to create the iSCSI storage volume from a snapshot;
    #            otherwise, do not include this field. To list snapshots for your account use <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-DescribeSnapshots.html">DescribeSnapshots</a> in the <i>Amazon Elastic Compute Cloud API
    #               Reference</i>.</p>
    #   @return [String]
    # @!attribute target_name
    #   <p>The name of the iSCSI target used by an initiator to connect to a volume and used as a
    #            suffix for the target ARN. For example, specifying <code>TargetName</code> as
    #               <i>myvolume</i> results in the target ARN of
    #               <code>arn:aws:storagegateway:us-east-2:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume</code>.
    #            The target name must be unique across all volumes on a gateway.</p>
    #            <p>If you don't specify a value, Storage Gateway uses the value that was previously
    #            used for this volume as the new target name.</p>
    #   @return [String]
    # @!attribute source_volume_arn
    #   <p>The ARN for an existing volume. Specifying this ARN makes the new volume into an exact
    #            copy of the specified existing volume's latest recovery point. The
    #               <code>VolumeSizeInBytes</code> value for this new volume must be equal to or larger than
    #            the size of the existing volume, in bytes.</p>
    #   @return [String]
    # @!attribute network_interface_id
    #   <p>The network interface of the gateway on which to expose the iSCSI target. Accepts IPv4
    #            and IPv6 addresses. Use <a>DescribeGatewayInformation</a> to get a list of the
    #            network interfaces available on a gateway.</p>
    #            <p>Valid Values: A valid IP address.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique identifier that you use to retry a request. If you retry a request, use the
    #            same <code>ClientToken</code> you specified in the initial request.</p>
    #   @return [String]
    # @!attribute kms_encrypted
    #   <p>Set to <code>true</code> to use Amazon S3 server-side encryption with your own
    #               KMS key, or <code>false</code> to use a key managed by Amazon S3.
    #            Optional.</p>
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    #   @return [Boolean]
    # @!attribute kms_key
    #   <p>The Amazon Resource Name (ARN) of a symmetric customer master key (CMK) used for Amazon S3 server-side encryption. Storage Gateway does not support asymmetric CMKs. This
    #            value can only be set when <code>KMSEncrypted</code> is <code>true</code>. Optional.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of up to 50 tags that you can assign to a cached volume. Each tag is a key-value
    #            pair.</p>
    #            <note>
    #               <p>Valid characters for key and value are letters, spaces, and numbers that you can
    #               represent in UTF-8 format, and the following special characters: + - = . _ : / @. The
    #               maximum length of a tag's key is 128 characters, and the maximum length for a
    #               tag's value is 256 characters.</p>
    #            </note>
    #   @return [Array<Types::Tag>]
    class CreateCachediSCSIVolumeInput < Struct.new(
      nil,
      :gateway_arn,
      :volume_size_in_bytes,
      :snapshot_id,
      :target_name,
      :source_volume_arn,
      :network_interface_id,
      :client_token,
      :kms_encrypted,
      :kms_key,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute volume_arn
    #   <p>The Amazon Resource Name (ARN) of the configured volume.</p>
    #   @return [String]
    # @!attribute target_arn
    #   <p>The Amazon Resource Name (ARN) of the volume target, which includes the iSCSI name that
    #            initiators can use to connect to the target.</p>
    #   @return [String]
    class CreateCachediSCSIVolumeOutput < Struct.new(
      nil,
      :volume_arn,
      :target_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>CreateNFSFileShareInput</p>
    # @!attribute client_token
    #   <p>A unique string value that you supply that is used by S3 File Gateway to ensure
    #            idempotent file share creation.</p>
    #   @return [String]
    # @!attribute nfs_file_share_defaults
    #   <p>File share default values. Optional.</p>
    #   @return [Types::NFSFileShareDefaults]
    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the S3 File Gateway on which you want to create a file
    #            share.</p>
    #   @return [String]
    # @!attribute encryption_type
    #   <p>A value that specifies the type of server-side encryption that the file share will use
    #            for the data that it stores in Amazon S3.</p>
    #            <note>
    #               <p>We recommend using <code>EncryptionType</code> instead of <code>KMSEncrypted</code>
    #               to set the file share encryption method. You do not need to provide values for both
    #               parameters.</p>
    #               <p>If values for both parameters exist in the same request, then the specified
    #               encryption methods must not conflict. For example, if <code>EncryptionType</code> is
    #                  <code>SseS3</code>, then <code>KMSEncrypted</code> must be <code>false</code>. If
    #                  <code>EncryptionType</code> is <code>SseKms</code> or <code>DsseKms</code>, then
    #                  <code>KMSEncrypted</code> must be <code>true</code>.</p>
    #            </note>
    #   @return [String]
    # @!attribute kms_encrypted
    #   <p>Optional. Set to <code>true</code> to use Amazon S3 server-side encryption with
    #            your own KMS key (SSE-KMS), or <code>false</code> to use a key managed by
    #               Amazon S3 (SSE-S3). To use dual-layer encryption (DSSE-KMS), set the
    #               <code>EncryptionType</code> parameter instead.</p>
    #            <note>
    #               <p>We recommend using <code>EncryptionType</code> instead of <code>KMSEncrypted</code>
    #               to set the file share encryption method. You do not need to provide values for both
    #               parameters.</p>
    #               <p>If values for both parameters exist in the same request, then the specified
    #               encryption methods must not conflict. For example, if <code>EncryptionType</code> is
    #                  <code>SseS3</code>, then <code>KMSEncrypted</code> must be <code>false</code>. If
    #                  <code>EncryptionType</code> is <code>SseKms</code> or <code>DsseKms</code>, then
    #                  <code>KMSEncrypted</code> must be <code>true</code>.</p>
    #            </note>
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    #   @deprecated
    #     KMSEncrypted is deprecated, use EncryptionType instead.
    #   @return [Boolean]
    # @!attribute kms_key
    #   <p>Optional. The Amazon Resource Name (ARN) of a symmetric customer master key (CMK) used
    #            for Amazon S3 server-side encryption. Storage Gateway does not support asymmetric
    #            CMKs. This value must be set if <code>KMSEncrypted</code> is <code>true</code>, or if
    #               <code>EncryptionType</code> is <code>SseKms</code> or <code>DsseKms</code>.</p>
    #   @return [String]
    # @!attribute role
    #   <p>The ARN of the Identity and Access Management (IAM) role that an S3 File Gateway assumes when it
    #            accesses the underlying storage.</p>
    #   @return [String]
    # @!attribute location_arn
    #   <p>A custom ARN for the backend storage used for storing data for file shares. It includes
    #            a resource ARN with an optional prefix concatenation. The prefix must end with a forward
    #            slash (/).</p>
    #            <note>
    #               <p>You can specify LocationARN as a bucket ARN, access point ARN or access point alias,
    #               as shown in the following examples.</p>
    #               <p>Bucket ARN:</p>
    #               <p>
    #                  <code>arn:aws:s3:::amzn-s3-demo-bucket/prefix/</code>
    #               </p>
    #               <p>Access point ARN:</p>
    #               <p>
    #                  <code>arn:aws:s3:region:account-id:accesspoint/access-point-name/prefix/</code>
    #               </p>
    #               <p>If you specify an access point, the bucket policy must be configured to delegate
    #               access control to the access point. For information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points-policies.html#access-points-delegating-control">Delegating access control to access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #               <p>Access point alias:</p>
    #               <p>
    #                  <code>test-ap-ab123cdef4gehijklmn5opqrstuvuse1a-s3alias</code>
    #               </p>
    #            </note>
    #   @return [String]
    # @!attribute default_storage_class
    #   <p>The default storage class for objects put into an Amazon S3 bucket by the S3
    #            File Gateway. The default value is <code>S3_STANDARD</code>. Optional.</p>
    #            <p>Valid Values: <code>S3_STANDARD</code> | <code>S3_INTELLIGENT_TIERING</code> |
    #               <code>S3_STANDARD_IA</code> | <code>S3_ONEZONE_IA</code>
    #            </p>
    #   @return [String]
    # @!attribute object_acl
    #   <p>A value that sets the access control list (ACL) permission for objects in the S3 bucket
    #            that a S3 File Gateway puts objects into. The default value is <code>private</code>.</p>
    #   @return [String]
    # @!attribute client_list
    #   <p>The list of clients that are allowed to access the S3 File Gateway. The list must
    #            contain either valid IPv4/IPv6 addresses or valid CIDR blocks.</p>
    #   @return [Array<String>]
    # @!attribute squash
    #   <p>A value that maps a user to anonymous user.</p>
    #            <p>Valid values are the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>RootSquash</code>: Only root is mapped to anonymous user.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NoSquash</code>: No one is mapped to anonymous user.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AllSquash</code>: Everyone is mapped to anonymous user.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute read_only
    #   <p>A value that sets the write status of a file share. Set this value to <code>true</code>
    #            to set the write status to read-only, otherwise set to <code>false</code>.</p>
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    #   @return [Boolean]
    # @!attribute guess_mime_type_enabled
    #   <p>A value that enables guessing of the MIME type for uploaded objects based on file
    #            extensions. Set this value to <code>true</code> to enable MIME type guessing, otherwise set
    #            to <code>false</code>. The default value is <code>true</code>.</p>
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    #   @return [Boolean]
    # @!attribute requester_pays
    #   <p>A value that sets who pays the cost of the request and the cost associated with data
    #            download from the S3 bucket. If this value is set to <code>true</code>, the requester pays
    #            the costs; otherwise, the S3 bucket owner pays. However, the S3 bucket owner always pays
    #            the cost of storing data.</p>
    #            <note>
    #               <p>
    #                  <code>RequesterPays</code> is a configuration for the S3 bucket that backs the file
    #               share, so make sure that the configuration on the file share is the same as the S3
    #               bucket configuration.</p>
    #            </note>
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>A list of up to 50 tags that can be assigned to the NFS file share. Each tag is a
    #            key-value pair.</p>
    #            <note>
    #               <p>Valid characters for key and value are letters, spaces, and numbers representable in
    #               UTF-8 format, and the following special characters: + - = . _ : / @. The maximum length
    #               of a tag's key is 128 characters, and the maximum length for a tag's value is
    #               256.</p>
    #            </note>
    #   @return [Array<Types::Tag>]
    # @!attribute file_share_name
    #   <p>The name of the file share. Optional.</p>
    #            <note>
    #               <p>
    #                  <code>FileShareName</code> must be set if an S3 prefix name is set in
    #                  <code>LocationARN</code>, or if an access point or access point alias is used.</p>
    #               <p>A valid NFS file share name can only contain the following characters:
    #                  <code>a</code>-<code>z</code>, <code>A</code>-<code>Z</code>,
    #                  <code>0</code>-<code>9</code>, <code>-</code>, <code>.</code>, and
    #               <code>_</code>.</p>
    #            </note>
    #   @return [String]
    # @!attribute cache_attributes
    #   <p>Specifies refresh cache information for the file share.</p>
    #   @return [Types::CacheAttributes]
    # @!attribute notification_policy
    #   <p>The notification policy of the file share. <code>SettlingTimeInSeconds</code> controls
    #            the number of seconds to wait after the last point in time a client wrote to a file before
    #            generating an <code>ObjectUploaded</code> notification. Because clients can make many small
    #            writes to files, it's best to set this parameter for as long as possible to avoid
    #            generating multiple notifications for the same file in a small time period.</p>
    #            <note>
    #               <p>
    #                  <code>SettlingTimeInSeconds</code> has no effect on the timing of the object
    #               uploading to Amazon S3, only the timing of the notification.</p>
    #               <p>This setting is not meant to specify an exact time at which the notification will be
    #               sent. In some cases, the gateway might require more than the specified delay time to
    #               generate and send notifications.</p>
    #            </note>
    #            <p>The following example sets <code>NotificationPolicy</code> on with
    #               <code>SettlingTimeInSeconds</code> set to 60.</p>
    #            <p>
    #               <code>{\"Upload\": {\"SettlingTimeInSeconds\": 60}}</code>
    #            </p>
    #            <p>The following example sets <code>NotificationPolicy</code> off.</p>
    #            <p>
    #               <code>{}</code>
    #            </p>
    #   @return [String]
    # @!attribute vpc_endpoint_dns_name
    #   <p>Specifies the DNS name for the VPC endpoint that the NFS file share uses to connect to
    #               Amazon S3.</p>
    #            <note>
    #               <p>This parameter is required for NFS file shares that connect to Amazon S3
    #               through a VPC endpoint, a VPC access point, or an access point alias that points to a
    #               VPC access point.</p>
    #            </note>
    #   @return [String]
    # @!attribute bucket_region
    #   <p>Specifies the Region of the S3 bucket where the NFS file share stores files.</p>
    #            <note>
    #               <p>This parameter is required for NFS file shares that connect to Amazon S3
    #               through a VPC endpoint, a VPC access point, or an access point alias that points to a
    #               VPC access point.</p>
    #            </note>
    #   @return [String]
    # @!attribute audit_destination_arn
    #   <p>The Amazon Resource Name (ARN) of the storage used for audit logs.</p>
    #   @return [String]
    class CreateNFSFileShareInput < Struct.new(
      nil,
      :client_token,
      :nfs_file_share_defaults,
      :gateway_arn,
      :encryption_type,
      :kms_encrypted,
      :kms_key,
      :role,
      :location_arn,
      :default_storage_class,
      :object_acl,
      :client_list,
      :squash,
      :read_only,
      :guess_mime_type_enabled,
      :requester_pays,
      :tags,
      :file_share_name,
      :cache_attributes,
      :notification_policy,
      :vpc_endpoint_dns_name,
      :bucket_region,
      :audit_destination_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>CreateNFSFileShareOutput</p>
    # @!attribute file_share_arn
    #   <p>The Amazon Resource Name (ARN) of the newly created file share.</p>
    #   @return [String]
    class CreateNFSFileShareOutput < Struct.new(
      nil,
      :file_share_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>CreateSMBFileShareInput</p>
    # @!attribute client_token
    #   <p>A unique string value that you supply that is used by S3 File Gateway to ensure
    #            idempotent file share creation.</p>
    #   @return [String]
    # @!attribute gateway_arn
    #   <p>The ARN of the S3 File Gateway on which you want to create a file share.</p>
    #   @return [String]
    # @!attribute encryption_type
    #   <p>A value that specifies the type of server-side encryption that the file share will use
    #            for the data that it stores in Amazon S3.</p>
    #            <note>
    #               <p>We recommend using <code>EncryptionType</code> instead of <code>KMSEncrypted</code>
    #               to set the file share encryption method. You do not need to provide values for both
    #               parameters.</p>
    #               <p>If values for both parameters exist in the same request, then the specified
    #               encryption methods must not conflict. For example, if <code>EncryptionType</code> is
    #                  <code>SseS3</code>, then <code>KMSEncrypted</code> must be <code>false</code>. If
    #                  <code>EncryptionType</code> is <code>SseKms</code> or <code>DsseKms</code>, then
    #                  <code>KMSEncrypted</code> must be <code>true</code>.</p>
    #            </note>
    #   @return [String]
    # @!attribute kms_encrypted
    #   <p>Optional. Set to <code>true</code> to use Amazon S3 server-side encryption with
    #            your own KMS key (SSE-KMS), or <code>false</code> to use a key managed by
    #               Amazon S3 (SSE-S3). To use dual-layer encryption (DSSE-KMS), set the
    #               <code>EncryptionType</code> parameter instead.</p>
    #            <note>
    #               <p>We recommend using <code>EncryptionType</code> instead of <code>KMSEncrypted</code>
    #               to set the file share encryption method. You do not need to provide values for both
    #               parameters.</p>
    #               <p>If values for both parameters exist in the same request, then the specified
    #               encryption methods must not conflict. For example, if <code>EncryptionType</code> is
    #                  <code>SseS3</code>, then <code>KMSEncrypted</code> must be <code>false</code>. If
    #                  <code>EncryptionType</code> is <code>SseKms</code> or <code>DsseKms</code>, then
    #                  <code>KMSEncrypted</code> must be <code>true</code>.</p>
    #            </note>
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    #   @deprecated
    #     KMSEncrypted is deprecated, use EncryptionType instead.
    #   @return [Boolean]
    # @!attribute kms_key
    #   <p>Optional. The Amazon Resource Name (ARN) of a symmetric customer master key (CMK) used
    #            for Amazon S3 server-side encryption. Storage Gateway does not support asymmetric
    #            CMKs. This value must be set if <code>KMSEncrypted</code> is <code>true</code>, or if
    #               <code>EncryptionType</code> is <code>SseKms</code> or <code>DsseKms</code>.</p>
    #   @return [String]
    # @!attribute role
    #   <p>The ARN of the Identity and Access Management (IAM) role that an S3 File Gateway assumes when it
    #            accesses the underlying storage.</p>
    #   @return [String]
    # @!attribute location_arn
    #   <p>A custom ARN for the backend storage used for storing data for file shares. It includes
    #            a resource ARN with an optional prefix concatenation. The prefix must end with a forward
    #            slash (/).</p>
    #            <note>
    #               <p>You can specify LocationARN as a bucket ARN, access point ARN or access point alias,
    #               as shown in the following examples.</p>
    #               <p>Bucket ARN:</p>
    #               <p>
    #                  <code>arn:aws:s3:::amzn-s3-demo-bucket/prefix/</code>
    #               </p>
    #               <p>Access point ARN:</p>
    #               <p>
    #                  <code>arn:aws:s3:region:account-id:accesspoint/access-point-name/prefix/</code>
    #               </p>
    #               <p>If you specify an access point, the bucket policy must be configured to delegate
    #               access control to the access point. For information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points-policies.html#access-points-delegating-control">Delegating access control to access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #               <p>Access point alias:</p>
    #               <p>
    #                  <code>test-ap-ab123cdef4gehijklmn5opqrstuvuse1a-s3alias</code>
    #               </p>
    #            </note>
    #   @return [String]
    # @!attribute default_storage_class
    #   <p>The default storage class for objects put into an Amazon S3 bucket by the S3
    #            File Gateway. The default value is <code>S3_STANDARD</code>. Optional.</p>
    #            <p>Valid Values: <code>S3_STANDARD</code> | <code>S3_INTELLIGENT_TIERING</code> |
    #               <code>S3_STANDARD_IA</code> | <code>S3_ONEZONE_IA</code>
    #            </p>
    #   @return [String]
    # @!attribute object_acl
    #   <p>A value that sets the access control list (ACL) permission for objects in the S3 bucket
    #            that a S3 File Gateway puts objects into. The default value is <code>private</code>.</p>
    #   @return [String]
    # @!attribute read_only
    #   <p>A value that sets the write status of a file share. Set this value to <code>true</code>
    #            to set the write status to read-only, otherwise set to <code>false</code>.</p>
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    #   @return [Boolean]
    # @!attribute guess_mime_type_enabled
    #   <p>A value that enables guessing of the MIME type for uploaded objects based on file
    #            extensions. Set this value to <code>true</code> to enable MIME type guessing, otherwise set
    #            to <code>false</code>. The default value is <code>true</code>.</p>
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    #   @return [Boolean]
    # @!attribute requester_pays
    #   <p>A value that sets who pays the cost of the request and the cost associated with data
    #            download from the S3 bucket. If this value is set to <code>true</code>, the requester pays
    #            the costs; otherwise, the S3 bucket owner pays. However, the S3 bucket owner always pays
    #            the cost of storing data.</p>
    #            <note>
    #               <p>
    #                  <code>RequesterPays</code> is a configuration for the S3 bucket that backs the file
    #               share, so make sure that the configuration on the file share is the same as the S3
    #               bucket configuration.</p>
    #            </note>
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    #   @return [Boolean]
    # @!attribute smbacl_enabled
    #   <p>Set this value to <code>true</code> to enable access control list (ACL) on the SMB file
    #            share. Set it to <code>false</code> to map file and directory permissions to the POSIX
    #            permissions.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/filegateway/latest/files3/smb-acl.html">Using Windows ACLs to limit SMB file share
    #               access</a> in the <i>Amazon S3 File Gateway User
    #            Guide</i>.</p>
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    #   @return [Boolean]
    # @!attribute access_based_enumeration
    #   <p>The files and folders on this share will only be visible to users with read
    #            access.</p>
    #   @return [Boolean]
    # @!attribute admin_user_list
    #   <p>A list of users or groups in the Active Directory that will be granted administrator
    #            privileges on the file share. These users can do all file operations as the super-user.
    #            Acceptable formats include: <code>DOMAIN\User1</code>, <code>user1</code>,
    #               <code>@group1</code>, and <code>@DOMAIN\group1</code>.</p>
    #            <important>
    #               <p>Use this option very carefully, because any user in this list can do anything they
    #               like on the file share, regardless of file permissions.</p>
    #            </important>
    #   @return [Array<String>]
    # @!attribute valid_user_list
    #   <p>A list of users or groups in the Active Directory that are allowed to access the file
    #               <a href=""></a> share. A group must be prefixed with the @ character. Acceptable formats
    #            include: <code>DOMAIN\User1</code>, <code>user1</code>, <code>@group1</code>, and
    #               <code>@DOMAIN\group1</code>. Can only be set if Authentication is set to
    #               <code>ActiveDirectory</code>.</p>
    #   @return [Array<String>]
    # @!attribute invalid_user_list
    #   <p>A list of users or groups in the Active Directory that are not allowed to access the
    #            file share. A group must be prefixed with the @ character. Acceptable formats include:
    #               <code>DOMAIN\User1</code>, <code>user1</code>, <code>@group1</code>, and
    #               <code>@DOMAIN\group1</code>. Can only be set if Authentication is set to
    #               <code>ActiveDirectory</code>.</p>
    #   @return [Array<String>]
    # @!attribute audit_destination_arn
    #   <p>The Amazon Resource Name (ARN) of the storage used for audit logs.</p>
    #   @return [String]
    # @!attribute authentication
    #   <p>The authentication method that users use to access the file share. The default is
    #               <code>ActiveDirectory</code>.</p>
    #            <p>Valid Values: <code>ActiveDirectory</code> | <code>GuestAccess</code>
    #            </p>
    #   @return [String]
    # @!attribute case_sensitivity
    #   <p>The case of an object name in an Amazon S3 bucket. For
    #               <code>ClientSpecified</code>, the client determines the case sensitivity. For
    #               <code>CaseSensitive</code>, the gateway determines the case sensitivity. The default
    #            value is <code>ClientSpecified</code>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of up to 50 tags that can be assigned to the NFS file share. Each tag is a
    #            key-value pair.</p>
    #            <note>
    #               <p>Valid characters for key and value are letters, spaces, and numbers representable in
    #               UTF-8 format, and the following special characters: + - = . _ : / @. The maximum length
    #               of a tag's key is 128 characters, and the maximum length for a tag's value is
    #               256.</p>
    #            </note>
    #   @return [Array<Types::Tag>]
    # @!attribute file_share_name
    #   <p>The name of the file share. Optional.</p>
    #            <note>
    #               <p>
    #                  <code>FileShareName</code> must be set if an S3 prefix name is set in
    #                  <code>LocationARN</code>, or if an access point or access point alias is used.</p>
    #               <p>A valid SMB file share name cannot contain the following characters:
    #                  <code>[</code>,<code>]</code>,<code>#</code>,<code>;</code>,<code><</code>,<code>></code>,<code>:</code>,<code>"</code>,<code>\</code>,<code>/</code>,<code>|</code>,<code>?</code>,<code>*</code>,<code>+</code>,
    #               or ASCII control characters <code>1-31</code>.</p>
    #            </note>
    #   @return [String]
    # @!attribute cache_attributes
    #   <p>Specifies refresh cache information for the file share.</p>
    #   @return [Types::CacheAttributes]
    # @!attribute notification_policy
    #   <p>The notification policy of the file share. <code>SettlingTimeInSeconds</code> controls
    #            the number of seconds to wait after the last point in time a client wrote to a file before
    #            generating an <code>ObjectUploaded</code> notification. Because clients can make many small
    #            writes to files, it's best to set this parameter for as long as possible to avoid
    #            generating multiple notifications for the same file in a small time period.</p>
    #            <note>
    #               <p>
    #                  <code>SettlingTimeInSeconds</code> has no effect on the timing of the object
    #               uploading to Amazon S3, only the timing of the notification.</p>
    #               <p>This setting is not meant to specify an exact time at which the notification will be
    #               sent. In some cases, the gateway might require more than the specified delay time to
    #               generate and send notifications.</p>
    #            </note>
    #            <p>The following example sets <code>NotificationPolicy</code> on with
    #               <code>SettlingTimeInSeconds</code> set to 60.</p>
    #            <p>
    #               <code>{\"Upload\": {\"SettlingTimeInSeconds\": 60}}</code>
    #            </p>
    #            <p>The following example sets <code>NotificationPolicy</code> off.</p>
    #            <p>
    #               <code>{}</code>
    #            </p>
    #   @return [String]
    # @!attribute vpc_endpoint_dns_name
    #   <p>Specifies the DNS name for the VPC endpoint that the SMB file share uses to connect to
    #               Amazon S3.</p>
    #            <note>
    #               <p>This parameter is required for SMB file shares that connect to Amazon S3
    #               through a VPC endpoint, a VPC access point, or an access point alias that points to a
    #               VPC access point.</p>
    #            </note>
    #   @return [String]
    # @!attribute bucket_region
    #   <p>Specifies the Region of the S3 bucket where the SMB file share stores files.</p>
    #            <note>
    #               <p>This parameter is required for SMB file shares that connect to Amazon S3
    #               through a VPC endpoint, a VPC access point, or an access point alias that points to a
    #               VPC access point.</p>
    #            </note>
    #   @return [String]
    # @!attribute oplocks_enabled
    #   <p>Specifies whether opportunistic locking is enabled for the SMB file share.</p>
    #            <note>
    #               <p>Enabling opportunistic locking on case-sensitive shares is not recommended for
    #               workloads that involve access to files with the same name in different case.</p>
    #            </note>
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    #   @return [Boolean]
    class CreateSMBFileShareInput < Struct.new(
      nil,
      :client_token,
      :gateway_arn,
      :encryption_type,
      :kms_encrypted,
      :kms_key,
      :role,
      :location_arn,
      :default_storage_class,
      :object_acl,
      :read_only,
      :guess_mime_type_enabled,
      :requester_pays,
      :smbacl_enabled,
      :access_based_enumeration,
      :admin_user_list,
      :valid_user_list,
      :invalid_user_list,
      :audit_destination_arn,
      :authentication,
      :case_sensitivity,
      :tags,
      :file_share_name,
      :cache_attributes,
      :notification_policy,
      :vpc_endpoint_dns_name,
      :bucket_region,
      :oplocks_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>CreateSMBFileShareOutput</p>
    # @!attribute file_share_arn
    #   <p>The Amazon Resource Name (ARN) of the newly created file share.</p>
    #   @return [String]
    class CreateSMBFileShareOutput < Struct.new(
      nil,
      :file_share_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute volume_arn
    #   <p>The Amazon Resource Name (ARN) of the iSCSI volume target. Use the <a>DescribeStorediSCSIVolumes</a> operation to return to retrieve the TargetARN for
    #            specified VolumeARN.</p>
    #   @return [String]
    # @!attribute snapshot_description
    #   <p>Textual description of the snapshot that appears in the Amazon EC2 console, Elastic
    #            Block Store snapshots panel in the <b>Description</b> field, and
    #            in the Storage Gateway snapshot <b>Details</b> pane,
    #               <b>Description</b> field.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of up to 50 tags that can be assigned to a snapshot. Each tag is a key-value
    #            pair.</p>
    #            <note>
    #               <p>Valid characters for key and value are letters, spaces, and numbers representable in
    #               UTF-8 format, and the following special characters: + - = . _ : / @. The maximum length
    #               of a tag's key is 128 characters, and the maximum length for a tag's value is
    #               256.</p>
    #            </note>
    #   @return [Array<Types::Tag>]
    class CreateSnapshotFromVolumeRecoveryPointInput < Struct.new(
      nil,
      :volume_arn,
      :snapshot_description,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute snapshot_id
    #   <p>The ID of the snapshot.</p>
    #   @return [String]
    # @!attribute volume_arn
    #   <p>The Amazon Resource Name (ARN) of the iSCSI volume target. Use the <a>DescribeStorediSCSIVolumes</a> operation to return to retrieve the TargetARN for
    #            specified VolumeARN.</p>
    #   @return [String]
    # @!attribute volume_recovery_point_time
    #   <p>The time the volume was created from the recovery point.</p>
    #   @return [String]
    class CreateSnapshotFromVolumeRecoveryPointOutput < Struct.new(
      nil,
      :snapshot_id,
      :volume_arn,
      :volume_recovery_point_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A JSON object containing one or more of the following fields:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>CreateSnapshotInput$SnapshotDescription</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>CreateSnapshotInput$VolumeARN</a>
    #                </p>
    #             </li>
    #          </ul>
    # @!attribute volume_arn
    #   <p>The Amazon Resource Name (ARN) of the volume. Use the <a>ListVolumes</a>
    #            operation to return a list of gateway volumes.</p>
    #   @return [String]
    # @!attribute snapshot_description
    #   <p>Textual description of the snapshot that appears in the Amazon EC2 console, Elastic
    #            Block Store snapshots panel in the <b>Description</b> field, and
    #            in the Storage Gateway snapshot <b>Details</b> pane,
    #               <b>Description</b> field.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of up to 50 tags that can be assigned to a snapshot. Each tag is a key-value
    #            pair.</p>
    #            <note>
    #               <p>Valid characters for key and value are letters, spaces, and numbers representable in
    #               UTF-8 format, and the following special characters: + - = . _ : / @. The maximum length
    #               of a tag's key is 128 characters, and the maximum length for a tag's value is
    #               256.</p>
    #            </note>
    #   @return [Array<Types::Tag>]
    class CreateSnapshotInput < Struct.new(
      nil,
      :volume_arn,
      :snapshot_description,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A JSON object containing the following fields:</p>
    # @!attribute volume_arn
    #   <p>The Amazon Resource Name (ARN) of the volume of which the snapshot was taken.</p>
    #   @return [String]
    # @!attribute snapshot_id
    #   <p>The snapshot ID that is used to refer to the snapshot in future operations such as
    #            describing snapshots (Amazon Elastic Compute Cloud API <code>DescribeSnapshots</code>) or
    #            creating a volume from a snapshot (<a>CreateStorediSCSIVolume</a>).</p>
    #   @return [String]
    class CreateSnapshotOutput < Struct.new(
      nil,
      :volume_arn,
      :snapshot_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A JSON object containing one or more of the following fields:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>CreateStorediSCSIVolumeInput$DiskId</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>CreateStorediSCSIVolumeInput$NetworkInterfaceId</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>CreateStorediSCSIVolumeInput$PreserveExistingData</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>CreateStorediSCSIVolumeInput$SnapshotId</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>CreateStorediSCSIVolumeInput$TargetName</a>
    #                </p>
    #             </li>
    #          </ul>
    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute disk_id
    #   <p>The unique identifier for the gateway local disk that is configured as a stored volume.
    #            Use <a href="https://docs.aws.amazon.com/storagegateway/latest/userguide/API_ListLocalDisks.html">ListLocalDisks</a> to
    #            list disk IDs for a gateway.</p>
    #   @return [String]
    # @!attribute snapshot_id
    #   <p>The snapshot ID (e.g., "snap-1122aabb") of the snapshot to restore as the new stored
    #            volume. Specify this field if you want to create the iSCSI storage volume from a snapshot;
    #            otherwise, do not include this field. To list snapshots for your account use <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-DescribeSnapshots.html">DescribeSnapshots</a> in the <i>Amazon Elastic Compute Cloud API
    #               Reference</i>.</p>
    #   @return [String]
    # @!attribute preserve_existing_data
    #   <p>Set to <code>true</code> if you want to preserve the data on the local disk. Otherwise,
    #            set to <code>false</code> to create an empty volume.</p>
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    #   @return [Boolean]
    # @!attribute target_name
    #   <p>The name of the iSCSI target used by an initiator to connect to a volume and used as a
    #            suffix for the target ARN. For example, specifying <code>TargetName</code> as
    #               <i>myvolume</i> results in the target ARN of
    #               <code>arn:aws:storagegateway:us-east-2:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume</code>.
    #            The target name must be unique across all volumes on a gateway.</p>
    #            <p>If you don't specify a value, Storage Gateway uses the value that was previously
    #            used for this volume as the new target name.</p>
    #   @return [String]
    # @!attribute network_interface_id
    #   <p>The network interface of the gateway on which to expose the iSCSI target. Accepts IPv4
    #            and IPv6 addresses. Use <a>DescribeGatewayInformation</a> to get a list of the
    #            network interfaces available on a gateway.</p>
    #            <p>Valid Values: A valid IP address.</p>
    #   @return [String]
    # @!attribute kms_encrypted
    #   <p>Set to <code>true</code> to use Amazon S3 server-side encryption with your own
    #               KMS key, or <code>false</code> to use a key managed by Amazon S3.
    #            Optional.</p>
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    #   @return [Boolean]
    # @!attribute kms_key
    #   <p>The Amazon Resource Name (ARN) of a symmetric customer master key (CMK) used for Amazon S3 server-side encryption. Storage Gateway does not support asymmetric CMKs. This
    #            value can only be set when <code>KMSEncrypted</code> is <code>true</code>. Optional.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of up to 50 tags that can be assigned to a stored volume. Each tag is a key-value
    #            pair.</p>
    #            <note>
    #               <p>Valid characters for key and value are letters, spaces, and numbers representable in
    #               UTF-8 format, and the following special characters: + - = . _ : / @. The maximum length
    #               of a tag's key is 128 characters, and the maximum length for a tag's value is
    #               256.</p>
    #            </note>
    #   @return [Array<Types::Tag>]
    class CreateStorediSCSIVolumeInput < Struct.new(
      nil,
      :gateway_arn,
      :disk_id,
      :snapshot_id,
      :preserve_existing_data,
      :target_name,
      :network_interface_id,
      :kms_encrypted,
      :kms_key,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A JSON object containing the following fields:</p>
    # @!attribute volume_arn
    #   <p>The Amazon Resource Name (ARN) of the configured volume.</p>
    #   @return [String]
    # @!attribute volume_size_in_bytes
    #   <p>The size of the volume in bytes.</p>
    #   @return [Integer]
    # @!attribute target_arn
    #   <p>The Amazon Resource Name (ARN) of the volume target, which includes the iSCSI name that
    #            initiators can use to connect to the target.</p>
    #   @return [String]
    class CreateStorediSCSIVolumeOutput < Struct.new(
      nil,
      :volume_arn,
      :volume_size_in_bytes,
      :target_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:volume_size_in_bytes] = 0 unless options.key?(:volume_size_in_bytes)
        super
      end
    end

    # @!attribute pool_name
    #   <p>The name of the new custom tape pool.</p>
    #   @return [String]
    # @!attribute storage_class
    #   <p>The storage class that is associated with the new custom pool. When you use your backup
    #            application to eject the tape, the tape is archived directly into the storage class (S3
    #            Glacier or S3 Glacier Deep Archive) that corresponds to the pool.</p>
    #   @return [String]
    # @!attribute retention_lock_type
    #   <p>Tape retention lock can be configured in two modes. When configured in governance mode,
    #               Amazon Web Services accounts with specific IAM permissions are authorized to remove the
    #            tape retention lock from archived virtual tapes. When configured in compliance mode, the
    #            tape retention lock cannot be removed by any user, including the root Amazon Web Services account.</p>
    #   @return [String]
    # @!attribute retention_lock_time_in_days
    #   <p>Tape retention lock time is set in days. Tape retention lock can be enabled for up to
    #            100 years (36,500 days).</p>
    #   @return [Integer]
    # @!attribute tags
    #   <p>A list of up to 50 tags that can be assigned to tape pool. Each tag is a key-value
    #            pair.</p>
    #            <note>
    #               <p>Valid characters for key and value are letters, spaces, and numbers representable in
    #               UTF-8 format, and the following special characters: + - = . _ : / @. The maximum length
    #               of a tag's key is 128 characters, and the maximum length for a tag's value is
    #               256.</p>
    #            </note>
    #   @return [Array<Types::Tag>]
    class CreateTapePoolInput < Struct.new(
      nil,
      :pool_name,
      :storage_class,
      :retention_lock_type,
      :retention_lock_time_in_days,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pool_arn
    #   <p>The unique Amazon Resource Name (ARN) that represents the custom tape pool. Use the
    #               <a>ListTapePools</a> operation to return a list of tape pools for your
    #            account and Amazon Web Services Region.</p>
    #   @return [String]
    class CreateTapePoolOutput < Struct.new(
      nil,
      :pool_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>CreateTapeWithBarcodeInput</p>
    # @!attribute gateway_arn
    #   <p>The unique Amazon Resource Name (ARN) that represents the gateway to associate the
    #            virtual tape with. Use the <a>ListGateways</a> operation to return a list of
    #            gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute tape_size_in_bytes
    #   <p>The size, in bytes, of the virtual tape that you want to create.</p>
    #            <note>
    #               <p>The size must be aligned by gigabyte (1024*1024*1024 bytes).</p>
    #            </note>
    #   @return [Integer]
    # @!attribute tape_barcode
    #   <p>The barcode that you want to assign to the tape.</p>
    #            <note>
    #               <p>Barcodes cannot be reused. This includes barcodes used for tapes that have been
    #               deleted.</p>
    #            </note>
    #   @return [String]
    # @!attribute kms_encrypted
    #   <p>Set to <code>true</code> to use Amazon S3 server-side encryption with your own
    #               KMS key, or <code>false</code> to use a key managed by Amazon S3.
    #            Optional.</p>
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    #   @return [Boolean]
    # @!attribute kms_key
    #   <p>The Amazon Resource Name (ARN) of a symmetric customer master key (CMK) used for Amazon S3 server-side encryption. Storage Gateway does not support asymmetric CMKs. This
    #            value can only be set when <code>KMSEncrypted</code> is <code>true</code>. Optional.</p>
    #   @return [String]
    # @!attribute pool_id
    #   <p>The ID of the pool that you want to add your tape to for archiving. The tape in this
    #            pool is archived in the S3 storage class that is associated with the pool. When you use
    #            your backup application to eject the tape, the tape is archived directly into the storage
    #            class (S3 Glacier or S3 Deep Archive) that corresponds to the pool.</p>
    #   @return [String]
    # @!attribute worm
    #   <p>Set to <code>TRUE</code> if the tape you are creating is to be configured as a
    #            write-once-read-many (WORM) tape.</p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>A list of up to 50 tags that can be assigned to a virtual tape that has a barcode. Each
    #            tag is a key-value pair.</p>
    #            <note>
    #               <p>Valid characters for key and value are letters, spaces, and numbers representable in
    #               UTF-8 format, and the following special characters: + - = . _ : / @. The maximum length
    #               of a tag's key is 128 characters, and the maximum length for a tag's value is
    #               256.</p>
    #            </note>
    #   @return [Array<Types::Tag>]
    class CreateTapeWithBarcodeInput < Struct.new(
      nil,
      :gateway_arn,
      :tape_size_in_bytes,
      :tape_barcode,
      :kms_encrypted,
      :kms_key,
      :pool_id,
      :worm,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>CreateTapeOutput</p>
    # @!attribute tape_arn
    #   <p>A unique Amazon Resource Name (ARN) that represents the virtual tape that was
    #            created.</p>
    #   @return [String]
    class CreateTapeWithBarcodeOutput < Struct.new(
      nil,
      :tape_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>CreateTapesInput</p>
    # @!attribute gateway_arn
    #   <p>The unique Amazon Resource Name (ARN) that represents the gateway to associate the
    #            virtual tapes with. Use the <a>ListGateways</a> operation to return a list of
    #            gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute tape_size_in_bytes
    #   <p>The size, in bytes, of the virtual tapes that you want to create.</p>
    #            <note>
    #               <p>The size must be aligned by gigabyte (1024*1024*1024 bytes).</p>
    #            </note>
    #   @return [Integer]
    # @!attribute client_token
    #   <p>A unique identifier that you use to retry a request. If you retry a request, use the
    #            same <code>ClientToken</code> you specified in the initial request.</p>
    #            <note>
    #               <p>Using the same <code>ClientToken</code> prevents creating the tape multiple
    #               times.</p>
    #            </note>
    #   @return [String]
    # @!attribute num_tapes_to_create
    #   <p>The number of virtual tapes that you want to create.</p>
    #   @return [Integer]
    # @!attribute tape_barcode_prefix
    #   <p>A prefix that you append to the barcode of the virtual tape you are creating. This
    #            prefix makes the barcode unique.</p>
    #            <note>
    #               <p>The prefix must be 1-4 characters in length and must be one of the uppercase letters
    #               from A to Z.</p>
    #            </note>
    #   @return [String]
    # @!attribute kms_encrypted
    #   <p>Set to <code>true</code> to use Amazon S3 server-side encryption with your own
    #               KMS key, or <code>false</code> to use a key managed by Amazon S3.
    #            Optional.</p>
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    #   @return [Boolean]
    # @!attribute kms_key
    #   <p>The Amazon Resource Name (ARN) of a symmetric customer master key (CMK) used for Amazon S3 server-side encryption. Storage Gateway does not support asymmetric CMKs. This
    #            value can only be set when <code>KMSEncrypted</code> is <code>true</code>. Optional.</p>
    #   @return [String]
    # @!attribute pool_id
    #   <p>The ID of the pool that you want to add your tape to for archiving. The tape in this
    #            pool is archived in the S3 storage class that is associated with the pool. When you use
    #            your backup application to eject the tape, the tape is archived directly into the storage
    #            class (S3 Glacier or S3 Glacier Deep Archive) that corresponds to the pool.</p>
    #   @return [String]
    # @!attribute worm
    #   <p>Set to <code>TRUE</code> if the tape you are creating is to be configured as a
    #            write-once-read-many (WORM) tape.</p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>A list of up to 50 tags that can be assigned to a virtual tape. Each tag is a key-value
    #            pair.</p>
    #            <note>
    #               <p>Valid characters for key and value are letters, spaces, and numbers representable in
    #               UTF-8 format, and the following special characters: + - = . _ : / @. The maximum length
    #               of a tag's key is 128 characters, and the maximum length for a tag's value is
    #               256.</p>
    #            </note>
    #   @return [Array<Types::Tag>]
    class CreateTapesInput < Struct.new(
      nil,
      :gateway_arn,
      :tape_size_in_bytes,
      :client_token,
      :num_tapes_to_create,
      :tape_barcode_prefix,
      :kms_encrypted,
      :kms_key,
      :pool_id,
      :worm,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>CreateTapeOutput</p>
    # @!attribute tape_ar_ns
    #   <p>A list of unique Amazon Resource Names (ARNs) that represents the virtual tapes that
    #            were created.</p>
    #   @return [Array<String>]
    class CreateTapesOutput < Struct.new(
      nil,
      :tape_ar_ns,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    class DeleteAutomaticTapeCreationPolicyInput < Struct.new(
      nil,
      :gateway_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    class DeleteAutomaticTapeCreationPolicyOutput < Struct.new(
      nil,
      :gateway_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A JSON object containing the following fields:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>DeleteBandwidthRateLimitInput$BandwidthType</a>
    #                </p>
    #             </li>
    #          </ul>
    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute bandwidth_type
    #   <p>One of the BandwidthType values that indicates the gateway bandwidth rate limit to
    #            delete.</p>
    #            <p>Valid Values: <code>UPLOAD</code> | <code>DOWNLOAD</code> | <code>ALL</code>
    #            </p>
    #   @return [String]
    class DeleteBandwidthRateLimitInput < Struct.new(
      nil,
      :gateway_arn,
      :bandwidth_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A JSON object containing the Amazon Resource Name (ARN) of the gateway whose bandwidth
    #          rate information was deleted.</p>
    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    class DeleteBandwidthRateLimitOutput < Struct.new(
      nil,
      :gateway_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cache_report_arn
    #   <p>The Amazon Resource Name (ARN) of the cache report you want to delete.</p>
    #   @return [String]
    class DeleteCacheReportInput < Struct.new(
      nil,
      :cache_report_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cache_report_arn
    #   <p>The Amazon Resource Name (ARN) of the cache report you want to delete.</p>
    #   @return [String]
    class DeleteCacheReportOutput < Struct.new(
      nil,
      :cache_report_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A JSON object containing one or more of the following fields:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>DeleteChapCredentialsInput$InitiatorName</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>DeleteChapCredentialsInput$TargetARN</a>
    #                </p>
    #             </li>
    #          </ul>
    # @!attribute target_arn
    #   <p>The Amazon Resource Name (ARN) of the iSCSI volume target. Use the <a>DescribeStorediSCSIVolumes</a> operation to return to retrieve the TargetARN for
    #            specified VolumeARN.</p>
    #   @return [String]
    # @!attribute initiator_name
    #   <p>The iSCSI initiator that connects to the target.</p>
    #   @return [String]
    class DeleteChapCredentialsInput < Struct.new(
      nil,
      :target_arn,
      :initiator_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A JSON object containing the following fields:</p>
    # @!attribute target_arn
    #   <p>The Amazon Resource Name (ARN) of the target.</p>
    #   @return [String]
    # @!attribute initiator_name
    #   <p>The iSCSI initiator that connects to the target.</p>
    #   @return [String]
    class DeleteChapCredentialsOutput < Struct.new(
      nil,
      :target_arn,
      :initiator_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>DeleteFileShareInput</p>
    # @!attribute file_share_arn
    #   <p>The Amazon Resource Name (ARN) of the file share to be deleted.</p>
    #   @return [String]
    # @!attribute force_delete
    #   <p>If this value is set to <code>true</code>, the operation deletes a file share
    #            immediately and aborts all data uploads to Amazon Web Services. Otherwise, the file share is
    #            not deleted until all data is uploaded to Amazon Web Services. This process aborts the data
    #            upload process, and the file share enters the <code>FORCE_DELETING</code> status.</p>
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    #   @return [Boolean]
    class DeleteFileShareInput < Struct.new(
      nil,
      :file_share_arn,
      :force_delete,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>DeleteFileShareOutput</p>
    # @!attribute file_share_arn
    #   <p>The Amazon Resource Name (ARN) of the deleted file share.</p>
    #   @return [String]
    class DeleteFileShareOutput < Struct.new(
      nil,
      :file_share_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A JSON object containing the ID of the gateway to delete.</p>
    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    class DeleteGatewayInput < Struct.new(
      nil,
      :gateway_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A JSON object containing the ID of the deleted gateway.</p>
    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    class DeleteGatewayOutput < Struct.new(
      nil,
      :gateway_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute volume_arn
    #   <p>The volume which snapshot schedule to delete.</p>
    #   @return [String]
    class DeleteSnapshotScheduleInput < Struct.new(
      nil,
      :volume_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute volume_arn
    #   <p>The volume which snapshot schedule was deleted.</p>
    #   @return [String]
    class DeleteSnapshotScheduleOutput < Struct.new(
      nil,
      :volume_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>DeleteTapeArchiveInput</p>
    # @!attribute tape_arn
    #   <p>The Amazon Resource Name (ARN) of the virtual tape to delete from the virtual tape shelf
    #            (VTS).</p>
    #   @return [String]
    # @!attribute bypass_governance_retention
    #   <p>Set to <code>TRUE</code> to delete an archived tape that belongs to a custom pool with
    #            tape retention lock. Only archived tapes with tape retention lock set to
    #               <code>governance</code> can be deleted. Archived tapes with tape retention lock set to
    #               <code>compliance</code> can't be deleted.</p>
    #   @return [Boolean]
    class DeleteTapeArchiveInput < Struct.new(
      nil,
      :tape_arn,
      :bypass_governance_retention,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>DeleteTapeArchiveOutput</p>
    # @!attribute tape_arn
    #   <p>The Amazon Resource Name (ARN) of the virtual tape that was deleted from the virtual
    #            tape shelf (VTS).</p>
    #   @return [String]
    class DeleteTapeArchiveOutput < Struct.new(
      nil,
      :tape_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>DeleteTapeInput</p>
    # @!attribute gateway_arn
    #   <p>The unique Amazon Resource Name (ARN) of the gateway that the virtual tape to delete is
    #            associated with. Use the <a>ListGateways</a> operation to return a list of
    #            gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute tape_arn
    #   <p>The Amazon Resource Name (ARN) of the virtual tape to delete.</p>
    #   @return [String]
    # @!attribute bypass_governance_retention
    #   <p>Set to <code>TRUE</code> to delete an archived tape that belongs to a custom pool with
    #            tape retention lock. Only archived tapes with tape retention lock set to
    #               <code>governance</code> can be deleted. Archived tapes with tape retention lock set to
    #               <code>compliance</code> can't be deleted.</p>
    #   @return [Boolean]
    class DeleteTapeInput < Struct.new(
      nil,
      :gateway_arn,
      :tape_arn,
      :bypass_governance_retention,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>DeleteTapeOutput</p>
    # @!attribute tape_arn
    #   <p>The Amazon Resource Name (ARN) of the deleted virtual tape.</p>
    #   @return [String]
    class DeleteTapeOutput < Struct.new(
      nil,
      :tape_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pool_arn
    #   <p>The Amazon Resource Name (ARN) of the custom tape pool to delete.</p>
    #   @return [String]
    class DeleteTapePoolInput < Struct.new(
      nil,
      :pool_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pool_arn
    #   <p>The Amazon Resource Name (ARN) of the custom tape pool being deleted.</p>
    #   @return [String]
    class DeleteTapePoolOutput < Struct.new(
      nil,
      :pool_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A JSON object containing the <a>DeleteVolumeInput$VolumeARN</a> to
    #          delete.</p>
    # @!attribute volume_arn
    #   <p>The Amazon Resource Name (ARN) of the volume. Use the <a>ListVolumes</a>
    #            operation to return a list of gateway volumes.</p>
    #   @return [String]
    class DeleteVolumeInput < Struct.new(
      nil,
      :volume_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A JSON object containing the Amazon Resource Name (ARN) of the storage volume that was
    #          deleted.</p>
    # @!attribute volume_arn
    #   <p>The Amazon Resource Name (ARN) of the storage volume that was deleted. It is the same
    #            ARN you provided in the request.</p>
    #   @return [String]
    class DeleteVolumeOutput < Struct.new(
      nil,
      :volume_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    class DescribeAvailabilityMonitorTestInput < Struct.new(
      nil,
      :gateway_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the high availability monitoring test. If a test hasn't been
    #            performed, the value of this field is null.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The time the high availability monitoring test was started. If a test hasn't been
    #            performed, the value of this field is null.</p>
    #   @return [Time]
    class DescribeAvailabilityMonitorTestOutput < Struct.new(
      nil,
      :gateway_arn,
      :status,
      :start_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A JSON object containing the Amazon Resource Name (ARN) of the gateway.</p>
    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    class DescribeBandwidthRateLimitInput < Struct.new(
      nil,
      :gateway_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A JSON object containing the following fields:</p>
    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute average_upload_rate_limit_in_bits_per_sec
    #   <p>The average upload bandwidth rate limit in bits per second. This field does not appear
    #            in the response if the upload rate limit is not set.</p>
    #   @return [Integer]
    # @!attribute average_download_rate_limit_in_bits_per_sec
    #   <p>The average download bandwidth rate limit in bits per second. This field does not appear
    #            in the response if the download rate limit is not set.</p>
    #   @return [Integer]
    class DescribeBandwidthRateLimitOutput < Struct.new(
      nil,
      :gateway_arn,
      :average_upload_rate_limit_in_bits_per_sec,
      :average_download_rate_limit_in_bits_per_sec,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    class DescribeBandwidthRateLimitScheduleInput < Struct.new(
      nil,
      :gateway_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute bandwidth_rate_limit_intervals
    #   <p> An array that contains the bandwidth rate limit intervals for a tape or volume gateway. </p>
    #   @return [Array<Types::BandwidthRateLimitInterval>]
    class DescribeBandwidthRateLimitScheduleOutput < Struct.new(
      nil,
      :gateway_arn,
      :bandwidth_rate_limit_intervals,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    class DescribeCacheInput < Struct.new(
      nil,
      :gateway_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute disk_ids
    #   <p>An array of strings that identify disks that are to be configured as working storage.
    #            Each string has a minimum length of 1 and maximum length of 300. You can get the disk IDs
    #            from the <a>ListLocalDisks</a> API.</p>
    #   @return [Array<String>]
    # @!attribute cache_allocated_in_bytes
    #   <p>The amount of cache in bytes allocated to a gateway.</p>
    #   @return [Integer]
    # @!attribute cache_used_percentage
    #   <p>Percent use of the gateway's cache storage. This metric applies only to the
    #            gateway-cached volume setup. The sample is taken at the end of the reporting period.</p>
    #   @return [Float]
    # @!attribute cache_dirty_percentage
    #   <p>The file share's contribution to the overall percentage of the gateway's cache
    #            that has not been persisted to Amazon Web Services. The sample is taken at the end of the
    #            reporting period.</p>
    #   @return [Float]
    # @!attribute cache_hit_percentage
    #   <p>Percent of application read operations from the file shares that are served from cache.
    #            The sample is taken at the end of the reporting period.</p>
    #   @return [Float]
    # @!attribute cache_miss_percentage
    #   <p>Percent of application read operations from the file shares that are not served from
    #            cache. The sample is taken at the end of the reporting period.</p>
    #   @return [Float]
    class DescribeCacheOutput < Struct.new(
      nil,
      :gateway_arn,
      :disk_ids,
      :cache_allocated_in_bytes,
      :cache_used_percentage,
      :cache_dirty_percentage,
      :cache_hit_percentage,
      :cache_miss_percentage,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:cache_allocated_in_bytes] = 0 unless options.key?(:cache_allocated_in_bytes)
        options[:cache_used_percentage] = 0 unless options.key?(:cache_used_percentage)
        options[:cache_dirty_percentage] = 0 unless options.key?(:cache_dirty_percentage)
        options[:cache_hit_percentage] = 0 unless options.key?(:cache_hit_percentage)
        options[:cache_miss_percentage] = 0 unless options.key?(:cache_miss_percentage)
        super
      end
    end

    # @!attribute cache_report_arn
    #   <p>The Amazon Resource Name (ARN) of the cache report you want to describe.</p>
    #   @return [String]
    class DescribeCacheReportInput < Struct.new(
      nil,
      :cache_report_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cache_report_info
    #   <p>Contains all informational fields associated with a cache report. Includes name, ARN,
    #            tags, status, progress, filters, start time, and end time.</p>
    #   @return [Types::CacheReportInfo]
    class DescribeCacheReportOutput < Struct.new(
      nil,
      :cache_report_info,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute volume_ar_ns
    #   <p>An array of strings where each string represents the Amazon Resource Name (ARN) of a
    #            cached volume. All of the specified cached volumes must be from the same gateway. Use <a>ListVolumes</a> to get volume ARNs for a gateway.</p>
    #   @return [Array<String>]
    class DescribeCachediSCSIVolumesInput < Struct.new(
      nil,
      :volume_ar_ns,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A JSON object containing the following fields:</p>
    # @!attribute cachedi_scsi_volumes
    #   <p>An array of objects where each object contains metadata about one cached volume.</p>
    #   @return [Array<Types::CachediSCSIVolume>]
    class DescribeCachediSCSIVolumesOutput < Struct.new(
      nil,
      :cachedi_scsi_volumes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A JSON object containing the Amazon Resource Name (ARN) of the iSCSI volume
    #          target.</p>
    # @!attribute target_arn
    #   <p>The Amazon Resource Name (ARN) of the iSCSI volume target. Use the <a>DescribeStorediSCSIVolumes</a> operation to return to retrieve the TargetARN for
    #            specified VolumeARN.</p>
    #   @return [String]
    class DescribeChapCredentialsInput < Struct.new(
      nil,
      :target_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A JSON object containing the following fields:</p>
    # @!attribute chap_credentials
    #   <p>An array of <a>ChapInfo</a> objects that represent CHAP credentials. Each
    #            object in the array contains CHAP credential information for one target-initiator pair. If
    #            no CHAP credentials are set, an empty array is returned. CHAP credential information is
    #            provided in a JSON object with the following fields:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>InitiatorName</b>: The iSCSI initiator that connects to
    #                  the target.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>SecretToAuthenticateInitiator</b>: The secret key that
    #                  the initiator (for example, the Windows client) must provide to participate in mutual
    #                  CHAP with the target.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>SecretToAuthenticateTarget</b>: The secret key that the
    #                  target must provide to participate in mutual CHAP with the initiator (e.g. Windows
    #                  client).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>TargetARN</b>: The Amazon Resource Name (ARN) of the
    #                  storage volume.</p>
    #               </li>
    #            </ul>
    #   @return [Array<Types::ChapInfo>]
    class DescribeChapCredentialsOutput < Struct.new(
      nil,
      :chap_credentials,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute file_system_association_arn_list
    #   <p>An array containing the Amazon Resource Name (ARN) of each file system association to be
    #            described.</p>
    #   @return [Array<String>]
    class DescribeFileSystemAssociationsInput < Struct.new(
      nil,
      :file_system_association_arn_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute file_system_association_info_list
    #   <p>An array containing the <code>FileSystemAssociationInfo</code> data type of each file
    #            system association to be described.
    #            </p>
    #   @return [Array<Types::FileSystemAssociationInfo>]
    class DescribeFileSystemAssociationsOutput < Struct.new(
      nil,
      :file_system_association_info_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A JSON object containing the ID of the gateway.</p>
    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    class DescribeGatewayInformationInput < Struct.new(
      nil,
      :gateway_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A JSON object containing the following fields:</p>
    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute gateway_id
    #   <p>The unique identifier assigned to your gateway during activation. This ID becomes part
    #            of the gateway Amazon Resource Name (ARN), which you use as input for other
    #            operations.</p>
    #   @return [String]
    # @!attribute gateway_name
    #   <p>The name you configured for your gateway.</p>
    #   @return [String]
    # @!attribute gateway_timezone
    #   <p>A value that indicates the time zone configured for the gateway.</p>
    #   @return [String]
    # @!attribute gateway_state
    #   <p>A value that indicates the operating state of the gateway.</p>
    #   @return [String]
    # @!attribute gateway_network_interfaces
    #   <p>A <a>NetworkInterface</a> array that contains descriptions of the gateway
    #            network interfaces.</p>
    #   @return [Array<Types::NetworkInterface>]
    # @!attribute gateway_type
    #   <p>The type of the gateway.</p>
    #            <important>
    #               <p>Amazon FSx File Gateway is no longer available to new customers. Existing
    #               customers of FSx File Gateway can continue to use the service normally. For
    #               capabilities similar to FSx File Gateway, visit <a href="https://aws.amazon.com/blogs/storage/switch-your-file-share-access-from-amazon-fsx-file-gateway-to-amazon-fsx-for-windows-file-server/">this blog post</a>.</p>
    #            </important>
    #   @return [String]
    # @!attribute next_update_availability_date
    #   <p>The date on which an update to the gateway is available. This date is in the time zone
    #            of the gateway. If the gateway is not available for an update this field is not returned in
    #            the response.</p>
    #   @return [String]
    # @!attribute last_software_update
    #   <p>The date on which the last software update was applied to the gateway. If the gateway
    #            has never been updated, this field does not return a value in the response. This only only
    #            exist and returns once it have been chosen and set by the SGW service, based on the OS
    #            version of the gateway VM</p>
    #   @return [String]
    # @!attribute ec2_instance_id
    #   <p>The ID of the Amazon EC2 instance that was used to launch the gateway.</p>
    #   @return [String]
    # @!attribute ec2_instance_region
    #   <p>The Amazon Web Services Region where the Amazon EC2 instance is located.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of up to 50 tags assigned to the gateway, sorted alphabetically by key name. Each
    #            tag is a key-value pair. For a gateway with more than 10 tags assigned, you can view all
    #            tags using the <code>ListTagsForResource</code> API operation.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute vpc_endpoint
    #   <p>The configuration settings for the virtual private cloud (VPC) endpoint for your
    #            gateway.</p>
    #   @return [String]
    # @!attribute cloud_watch_log_group_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon CloudWatch log group that is used to
    #            monitor events in the gateway. This field only only exist and returns once it have been
    #            chosen and set by the SGW service, based on the OS version of the gateway VM</p>
    #   @return [String]
    # @!attribute host_environment
    #   <p>The type of hardware or software platform on which the gateway is running.</p>
    #            <note>
    #               <p>Tape Gateway is no longer available on Snow Family devices.</p>
    #            </note>
    #   @return [String]
    # @!attribute endpoint_type
    #   <p>The type of endpoint for your gateway.</p>
    #            <p>Valid Values: <code>STANDARD</code> | <code>FIPS</code>
    #            </p>
    #   @return [String]
    # @!attribute software_updates_end_date
    #   <p>Date after which this gateway will not receive software updates for new features.</p>
    #   @return [String]
    # @!attribute deprecation_date
    #   <p>Date after which this gateway will not receive software updates for new features and bug
    #            fixes.</p>
    #   @return [String]
    # @!attribute gateway_capacity
    #   <p>Specifies the size of the gateway's metadata cache.</p>
    #   @return [String]
    # @!attribute supported_gateway_capacities
    #   <p>A list of the metadata cache sizes that the gateway can support based on its current
    #            hardware specifications.</p>
    #   @return [Array<String>]
    # @!attribute host_environment_id
    #   <p>A unique identifier for the specific instance of the host platform running the gateway.
    #            This value is only available for certain host environments, and its format depends on the
    #            host environment type.</p>
    #   @return [String]
    # @!attribute software_version
    #   <p>The version number of the software running on the gateway appliance.</p>
    #   @return [String]
    class DescribeGatewayInformationOutput < Struct.new(
      nil,
      :gateway_arn,
      :gateway_id,
      :gateway_name,
      :gateway_timezone,
      :gateway_state,
      :gateway_network_interfaces,
      :gateway_type,
      :next_update_availability_date,
      :last_software_update,
      :ec2_instance_id,
      :ec2_instance_region,
      :tags,
      :vpc_endpoint,
      :cloud_watch_log_group_arn,
      :host_environment,
      :endpoint_type,
      :software_updates_end_date,
      :deprecation_date,
      :gateway_capacity,
      :supported_gateway_capacities,
      :host_environment_id,
      :software_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A JSON object containing the Amazon Resource Name (ARN) of the gateway.</p>
    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    class DescribeMaintenanceStartTimeInput < Struct.new(
      nil,
      :gateway_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A JSON object containing the following fields:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>DescribeMaintenanceStartTimeOutput$SoftwareUpdatePreferences</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>DescribeMaintenanceStartTimeOutput$DayOfMonth</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>DescribeMaintenanceStartTimeOutput$DayOfWeek</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>DescribeMaintenanceStartTimeOutput$HourOfDay</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>DescribeMaintenanceStartTimeOutput$MinuteOfHour</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>DescribeMaintenanceStartTimeOutput$Timezone</a>
    #                </p>
    #             </li>
    #          </ul>
    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute hour_of_day
    #   <p>The hour component of the maintenance start time represented as <i>hh</i>,
    #            where <i>hh</i> is the hour (0 to 23). The hour of the day is in the time
    #            zone of the gateway.</p>
    #   @return [Integer]
    # @!attribute minute_of_hour
    #   <p>The minute component of the maintenance start time represented as
    #               <i>mm</i>, where <i>mm</i> is the minute (0 to 59). The
    #            minute of the hour is in the time zone of the gateway.</p>
    #   @return [Integer]
    # @!attribute day_of_week
    #   <p>An ordinal number between 0 and 6 that represents the day of the week, where 0
    #            represents Sunday and 6 represents Saturday. The day of week is in the time zone of the
    #            gateway.</p>
    #   @return [Integer]
    # @!attribute day_of_month
    #   <p>The day of the month component of the maintenance start time represented as an ordinal
    #            number from 1 to 28, where 1 represents the first day of the month. It is not possible to
    #            set the maintenance schedule to start on days 29 through 31.</p>
    #   @return [Integer]
    # @!attribute timezone
    #   <p>A value that indicates the time zone that is set for the gateway. The start time and day
    #            of week specified should be in the time zone of the gateway.</p>
    #   @return [String]
    # @!attribute software_update_preferences
    #   <p>A set of variables indicating the software update preferences for the gateway.</p>
    #            <p>Includes <code>AutomaticUpdatePolicy</code> parameter with the following inputs:</p>
    #            <p>
    #               <code>ALL_VERSIONS</code> - Enables regular gateway maintenance updates.</p>
    #            <p>
    #               <code>EMERGENCY_VERSIONS_ONLY</code> - Disables regular gateway maintenance updates. The
    #            gateway will still receive emergency version updates on rare occasions if necessary to
    #            remedy highly critical security or durability issues. You will be notified before an
    #            emergency version update is applied. These updates are applied during your gateway's
    #            scheduled maintenance window.</p>
    #   @return [Types::SoftwareUpdatePreferences]
    class DescribeMaintenanceStartTimeOutput < Struct.new(
      nil,
      :gateway_arn,
      :hour_of_day,
      :minute_of_hour,
      :day_of_week,
      :day_of_month,
      :timezone,
      :software_update_preferences,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>DescribeNFSFileSharesInput</p>
    # @!attribute file_share_arn_list
    #   <p>An array containing the Amazon Resource Name (ARN) of each file share to be
    #            described.</p>
    #   @return [Array<String>]
    class DescribeNFSFileSharesInput < Struct.new(
      nil,
      :file_share_arn_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>DescribeNFSFileSharesOutput</p>
    # @!attribute nfs_file_share_info_list
    #   <p>An array containing a description for each requested file share.</p>
    #   @return [Array<Types::NFSFileShareInfo>]
    class DescribeNFSFileSharesOutput < Struct.new(
      nil,
      :nfs_file_share_info_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>DescribeSMBFileSharesInput</p>
    # @!attribute file_share_arn_list
    #   <p>An array containing the Amazon Resource Name (ARN) of each file share to be
    #            described.</p>
    #   @return [Array<String>]
    class DescribeSMBFileSharesInput < Struct.new(
      nil,
      :file_share_arn_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>DescribeSMBFileSharesOutput</p>
    # @!attribute smb_file_share_info_list
    #   <p>An array containing a description for each requested file share.</p>
    #   @return [Array<Types::SMBFileShareInfo>]
    class DescribeSMBFileSharesOutput < Struct.new(
      nil,
      :smb_file_share_info_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    class DescribeSMBSettingsInput < Struct.new(
      nil,
      :gateway_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute domain_name
    #   <p>The name of the domain that the gateway is joined to.</p>
    #   @return [String]
    # @!attribute active_directory_status
    #   <p>Indicates the status of a gateway that is a member of the Active Directory
    #            domain.</p>
    #            <note>
    #               <p>This field is only used as part of a <code>JoinDomain</code> request. It is not
    #               affected by Active Directory connectivity changes that occur after the
    #                  <code>JoinDomain</code> request succeeds.</p>
    #            </note>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ACCESS_DENIED</code>: Indicates that the <code>JoinDomain</code> operation
    #                  failed due to an authentication error.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DETACHED</code>: Indicates that gateway is not joined to a domain.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>JOINED</code>: Indicates that the gateway has successfully joined a
    #                  domain.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>JOINING</code>: Indicates that a <code>JoinDomain</code> operation is in
    #                  progress.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NETWORK_ERROR</code>: Indicates that <code>JoinDomain</code> operation
    #                  failed due to a network or connectivity error.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TIMEOUT</code>: Indicates that the <code>JoinDomain</code> operation failed
    #                  because the operation didn't complete within the allotted time.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UNKNOWN_ERROR</code>: Indicates that the <code>JoinDomain</code> operation
    #                  failed due to another type of error.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute smb_guest_password_set
    #   <p>This value is <code>true</code> if a password for the guest user <code>smbguest</code>
    #            is set, otherwise <code>false</code>. Only supported for S3 File Gateways.</p>
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    #   @return [Boolean]
    # @!attribute smb_security_strategy
    #   <p>The type of security strategy that was specified for file gateway.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ClientSpecified</code>: If you choose this option, requests are established
    #                  based on what is negotiated by the client. This option is recommended when you want
    #                  to maximize compatibility across different clients in your environment. Supported
    #                  only for S3 File Gateway.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MandatorySigning</code>: If you choose this option, File Gateway only allows
    #                  connections from SMBv2 or SMBv3 clients that have signing turned on. This option
    #                  works with SMB clients on Microsoft Windows Vista, Windows Server 2008, or later.
    #               </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MandatoryEncryption</code>: If you choose this option, File Gateway only
    #                  allows connections from SMBv3 clients that have encryption turned on. Both 256-bit
    #                  and 128-bit algorithms are allowed. This option is recommended for environments that
    #                  handle sensitive data. It works with SMB clients on Microsoft Windows 8, Windows
    #                  Server 2012, or later.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MandatoryEncryptionNoAes128</code>: If you choose this option, File Gateway
    #                  only allows connections from SMBv3 clients that use 256-bit AES encryption
    #                  algorithms. 128-bit algorithms are not allowed. This option is recommended for
    #                  environments that handle sensitive data. It works with SMB clients on Microsoft
    #                  Windows 8, Windows Server 2012, or later.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute file_shares_visible
    #   <p>The shares on this gateway appear when listing shares. Only supported for S3 File
    #            Gateways. </p>
    #   @return [Boolean]
    # @!attribute smb_local_groups
    #   <p>A list of Active Directory users and groups that have special permissions for SMB file
    #            shares on the gateway.</p>
    #   @return [Types::SMBLocalGroups]
    class DescribeSMBSettingsOutput < Struct.new(
      nil,
      :gateway_arn,
      :domain_name,
      :active_directory_status,
      :smb_guest_password_set,
      :smb_security_strategy,
      :file_shares_visible,
      :smb_local_groups,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A JSON object containing the <a>DescribeSnapshotScheduleInput$VolumeARN</a>
    #          of the volume.</p>
    # @!attribute volume_arn
    #   <p>The Amazon Resource Name (ARN) of the volume. Use the <a>ListVolumes</a>
    #            operation to return a list of gateway volumes.</p>
    #   @return [String]
    class DescribeSnapshotScheduleInput < Struct.new(
      nil,
      :volume_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute volume_arn
    #   <p>The Amazon Resource Name (ARN) of the volume that was specified in the request.</p>
    #   @return [String]
    # @!attribute start_at
    #   <p>The hour of the day at which the snapshot schedule begins represented as
    #               <i>hh</i>, where <i>hh</i> is the hour (0 to 23). The hour
    #            of the day is in the time zone of the gateway.</p>
    #   @return [Integer]
    # @!attribute recurrence_in_hours
    #   <p>The number of hours between snapshots.</p>
    #   @return [Integer]
    # @!attribute description
    #   <p>The snapshot description.</p>
    #   @return [String]
    # @!attribute timezone
    #   <p>A value that indicates the time zone of the gateway.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of up to 50 tags assigned to the snapshot schedule, sorted alphabetically by key
    #            name. Each tag is a key-value pair. For a gateway with more than 10 tags assigned, you can
    #            view all tags using the <code>ListTagsForResource</code> API operation.</p>
    #   @return [Array<Types::Tag>]
    class DescribeSnapshotScheduleOutput < Struct.new(
      nil,
      :volume_arn,
      :start_at,
      :recurrence_in_hours,
      :description,
      :timezone,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A JSON object containing a list of <a>DescribeStorediSCSIVolumesInput$VolumeARNs</a>.</p>
    # @!attribute volume_ar_ns
    #   <p>An array of strings where each string represents the Amazon Resource Name (ARN) of a
    #            stored volume. All of the specified stored volumes must be from the same gateway. Use <a>ListVolumes</a> to get volume ARNs for a gateway.</p>
    #   @return [Array<String>]
    class DescribeStorediSCSIVolumesInput < Struct.new(
      nil,
      :volume_ar_ns,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute storedi_scsi_volumes
    #   <p>Describes a single unit of output from <a>DescribeStorediSCSIVolumes</a>. The
    #            following fields are returned:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ChapEnabled</code>: Indicates whether mutual CHAP is enabled for the iSCSI
    #                  target.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LunNumber</code>: The logical disk number.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NetworkInterfaceId</code>: The network interface ID of the stored volume that
    #                  initiator use to map the stored volume as an iSCSI target.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NetworkInterfacePort</code>: The port used to communicate with iSCSI
    #                  targets.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PreservedExistingData</code>: Indicates when the stored volume was created,
    #                  existing data on the underlying local disk was preserved.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SourceSnapshotId</code>: If the stored volume was created from a snapshot, this
    #                  field contains the snapshot ID used, e.g. <code>snap-1122aabb</code>. Otherwise, this
    #                  field is not included.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>StorediSCSIVolumes</code>: An array of StorediSCSIVolume objects where each
    #                  object contains metadata about one stored volume.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TargetARN</code>: The Amazon Resource Name (ARN) of the volume target.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>VolumeARN</code>: The Amazon Resource Name (ARN) of the stored volume.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>VolumeDiskId</code>: The disk ID of the local disk that was specified in the
    #                     <a>CreateStorediSCSIVolume</a> operation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>VolumeId</code>: The unique identifier of the storage volume, e.g.
    #                     <code>vol-1122AABB</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>VolumeiSCSIAttributes</code>: An <a>VolumeiSCSIAttributes</a> object
    #                  that represents a collection of iSCSI attributes for one stored volume.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>VolumeProgress</code>: Represents the percentage complete if the volume is
    #                  restoring or bootstrapping that represents the percent of data transferred. This
    #                  field does not appear in the response if the stored volume is not restoring or
    #                  bootstrapping.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>VolumeSizeInBytes</code>: The size of the volume in bytes.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>VolumeStatus</code>: One of the <code>VolumeStatus</code> values that indicates
    #                  the state of the volume.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>VolumeType</code>: One of the enumeration values describing the type of the
    #                  volume. Currently, only <code>STORED</code> volumes are supported.</p>
    #               </li>
    #            </ul>
    #   @return [Array<Types::StorediSCSIVolume>]
    class DescribeStorediSCSIVolumesOutput < Struct.new(
      nil,
      :storedi_scsi_volumes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>DescribeTapeArchivesInput</p>
    # @!attribute tape_ar_ns
    #   <p>Specifies one or more unique Amazon Resource Names (ARNs) that represent the virtual
    #            tapes you want to describe.</p>
    #   @return [Array<String>]
    # @!attribute marker
    #   <p>An opaque string that indicates the position at which to begin describing virtual
    #            tapes.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>Specifies that the number of virtual tapes described be limited to the specified
    #            number.</p>
    #   @return [Integer]
    class DescribeTapeArchivesInput < Struct.new(
      nil,
      :tape_ar_ns,
      :marker,
      :limit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>DescribeTapeArchivesOutput</p>
    # @!attribute tape_archives
    #   <p>An array of virtual tape objects in the virtual tape shelf (VTS). The description
    #            includes of the Amazon Resource Name (ARN) of the virtual tapes. The information returned
    #            includes the Amazon Resource Names (ARNs) of the tapes, size of the tapes, status of the
    #            tapes, progress of the description, and tape barcode.</p>
    #   @return [Array<Types::TapeArchive>]
    # @!attribute marker
    #   <p>An opaque string that indicates the position at which the virtual tapes that were
    #            fetched for description ended. Use this marker in your next request to fetch the next set
    #            of virtual tapes in the virtual tape shelf (VTS). If there are no more virtual tapes to
    #            describe, this field does not appear in the response.</p>
    #   @return [String]
    class DescribeTapeArchivesOutput < Struct.new(
      nil,
      :tape_archives,
      :marker,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>DescribeTapeRecoveryPointsInput</p>
    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute marker
    #   <p>An opaque string that indicates the position at which to begin describing the virtual
    #            tape recovery points.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>Specifies that the number of virtual tape recovery points that are described be limited
    #            to the specified number.</p>
    #   @return [Integer]
    class DescribeTapeRecoveryPointsInput < Struct.new(
      nil,
      :gateway_arn,
      :marker,
      :limit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>DescribeTapeRecoveryPointsOutput</p>
    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute tape_recovery_point_infos
    #   <p>An array of TapeRecoveryPointInfos that are available for the specified gateway.</p>
    #   @return [Array<Types::TapeRecoveryPointInfo>]
    # @!attribute marker
    #   <p>An opaque string that indicates the position at which the virtual tape recovery points
    #            that were listed for description ended.</p>
    #            <p>Use this marker in your next request to list the next set of virtual tape recovery
    #            points in the list. If there are no more recovery points to describe, this field does not
    #            appear in the response.</p>
    #   @return [String]
    class DescribeTapeRecoveryPointsOutput < Struct.new(
      nil,
      :gateway_arn,
      :tape_recovery_point_infos,
      :marker,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>DescribeTapesInput</p>
    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute tape_ar_ns
    #   <p>Specifies one or more unique Amazon Resource Names (ARNs) that represent the virtual
    #            tapes you want to describe. If this parameter is not specified, Tape gateway returns a
    #            description of all virtual tapes associated with the specified gateway.</p>
    #   @return [Array<String>]
    # @!attribute marker
    #   <p>A marker value, obtained in a previous call to <code>DescribeTapes</code>. This marker
    #            indicates which page of results to retrieve.</p>
    #            <p>If not specified, the first page of results is retrieved.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>Specifies that the number of virtual tapes described be limited to the specified
    #            number.</p>
    #            <note>
    #               <p>Amazon Web Services may impose its own limit, if this field is not set.</p>
    #            </note>
    #   @return [Integer]
    class DescribeTapesInput < Struct.new(
      nil,
      :gateway_arn,
      :tape_ar_ns,
      :marker,
      :limit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>DescribeTapesOutput</p>
    # @!attribute tapes
    #   <p>An array of virtual tape descriptions.</p>
    #   @return [Array<Types::Tape>]
    # @!attribute marker
    #   <p>An opaque string that can be used as part of a subsequent <code>DescribeTapes</code>
    #            call to retrieve the next page of results.</p>
    #            <p>If a response does not contain a marker, then there are no more results to be
    #            retrieved.</p>
    #   @return [String]
    class DescribeTapesOutput < Struct.new(
      nil,
      :tapes,
      :marker,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    class DescribeUploadBufferInput < Struct.new(
      nil,
      :gateway_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute disk_ids
    #   <p>An array of the gateway's local disk IDs that are configured as working storage.
    #            Each local disk ID is specified as a string (minimum length of 1 and maximum length of
    #            300). If no local disks are configured as working storage, then the DiskIds array is
    #            empty.</p>
    #   @return [Array<String>]
    # @!attribute upload_buffer_used_in_bytes
    #   <p>The total number of bytes being used in the gateway's upload buffer.</p>
    #   @return [Integer]
    # @!attribute upload_buffer_allocated_in_bytes
    #   <p>The total number of bytes allocated in the gateway's as upload buffer.</p>
    #   @return [Integer]
    class DescribeUploadBufferOutput < Struct.new(
      nil,
      :gateway_arn,
      :disk_ids,
      :upload_buffer_used_in_bytes,
      :upload_buffer_allocated_in_bytes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:upload_buffer_used_in_bytes] = 0 unless options.key?(:upload_buffer_used_in_bytes)
        options[:upload_buffer_allocated_in_bytes] = 0 unless options.key?(:upload_buffer_allocated_in_bytes)
        super
      end
    end

    # <p>DescribeVTLDevicesInput</p>
    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute vtl_device_ar_ns
    #   <p>An array of strings, where each string represents the Amazon Resource Name (ARN) of a
    #            VTL device.</p>
    #            <note>
    #               <p>All of the specified VTL devices must be from the same gateway. If no VTL devices are
    #               specified, the result will contain all devices on the specified gateway.</p>
    #            </note>
    #   @return [Array<String>]
    # @!attribute marker
    #   <p>An opaque string that indicates the position at which to begin describing the VTL
    #            devices.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>Specifies that the number of VTL devices described be limited to the specified
    #            number.</p>
    #   @return [Integer]
    class DescribeVTLDevicesInput < Struct.new(
      nil,
      :gateway_arn,
      :vtl_device_ar_ns,
      :marker,
      :limit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>DescribeVTLDevicesOutput</p>
    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute vtl_devices
    #   <p>An array of VTL device objects composed of the Amazon Resource Name (ARN) of the VTL
    #            devices.</p>
    #   @return [Array<Types::VTLDevice>]
    # @!attribute marker
    #   <p>An opaque string that indicates the position at which the VTL devices that were fetched
    #            for description ended. Use the marker in your next request to fetch the next set of VTL
    #            devices in the list. If there are no more VTL devices to describe, this field does not
    #            appear in the response.</p>
    #   @return [String]
    class DescribeVTLDevicesOutput < Struct.new(
      nil,
      :gateway_arn,
      :vtl_devices,
      :marker,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A JSON object containing the Amazon Resource Name (ARN) of the gateway.</p>
    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    class DescribeWorkingStorageInput < Struct.new(
      nil,
      :gateway_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A JSON object containing the following fields:</p>
    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute disk_ids
    #   <p>An array of the gateway's local disk IDs that are configured as working storage.
    #            Each local disk ID is specified as a string (minimum length of 1 and maximum length of
    #            300). If no local disks are configured as working storage, then the DiskIds array is
    #            empty.</p>
    #   @return [Array<String>]
    # @!attribute working_storage_used_in_bytes
    #   <p>The total working storage in bytes in use by the gateway. If no working storage is
    #            configured for the gateway, this field returns 0.</p>
    #   @return [Integer]
    # @!attribute working_storage_allocated_in_bytes
    #   <p>The total working storage in bytes allocated for the gateway. If no working storage is
    #            configured for the gateway, this field returns 0.</p>
    #   @return [Integer]
    class DescribeWorkingStorageOutput < Struct.new(
      nil,
      :gateway_arn,
      :disk_ids,
      :working_storage_used_in_bytes,
      :working_storage_allocated_in_bytes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:working_storage_used_in_bytes] = 0 unless options.key?(:working_storage_used_in_bytes)
        options[:working_storage_allocated_in_bytes] = 0 unless options.key?(:working_storage_allocated_in_bytes)
        super
      end
    end

    # <p>AttachVolumeInput</p>
    # @!attribute volume_arn
    #   <p>The Amazon Resource Name (ARN) of the volume to detach from the gateway.</p>
    #   @return [String]
    # @!attribute force_detach
    #   <p>Set to <code>true</code> to forcibly remove the iSCSI connection of the target volume
    #            and detach the volume. The default is <code>false</code>. If this value is set to
    #               <code>false</code>, you must manually disconnect the iSCSI connection from the target
    #            volume.</p>
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    #   @return [Boolean]
    class DetachVolumeInput < Struct.new(
      nil,
      :volume_arn,
      :force_detach,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>AttachVolumeOutput</p>
    # @!attribute volume_arn
    #   <p>The Amazon Resource Name (ARN) of the volume that was detached.</p>
    #   @return [String]
    class DetachVolumeOutput < Struct.new(
      nil,
      :volume_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Lists iSCSI information about a VTL device.</p>
    # @!attribute target_arn
    #   <p>Specifies the unique Amazon Resource Name (ARN) that encodes the iSCSI qualified
    #            name(iqn) of a tape drive or media changer target.</p>
    #   @return [String]
    # @!attribute network_interface_id
    #   <p>The network interface identifier of the VTL device.</p>
    #   @return [String]
    # @!attribute network_interface_port
    #   <p>The port used to communicate with iSCSI VTL device targets.</p>
    #   @return [Integer]
    # @!attribute chap_enabled
    #   <p>Indicates whether mutual CHAP is enabled for the iSCSI target.</p>
    #   @return [Boolean]
    class DeviceiSCSIAttributes < Struct.new(
      nil,
      :target_arn,
      :network_interface_id,
      :network_interface_port,
      :chap_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:network_interface_port] = 0 unless options.key?(:network_interface_port)
        options[:chap_enabled] = false unless options.key?(:chap_enabled)
        super
      end
    end

    # <p>DisableGatewayInput</p>
    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    class DisableGatewayInput < Struct.new(
      nil,
      :gateway_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>DisableGatewayOutput</p>
    # @!attribute gateway_arn
    #   <p>The unique Amazon Resource Name (ARN) of the disabled gateway.</p>
    #   @return [String]
    class DisableGatewayOutput < Struct.new(
      nil,
      :gateway_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute file_system_association_arn
    #   <p>The Amazon Resource Name (ARN) of the file system association to be deleted.</p>
    #   @return [String]
    # @!attribute force_delete
    #   <p>If this value is set to true, the operation disassociates an Amazon FSx file
    #            system immediately. It ends all data uploads to the file system, and the file system
    #            association enters the <code>FORCE_DELETING</code> status. If this value is set to false,
    #            the Amazon FSx file system does not disassociate until all data is uploaded.</p>
    #   @return [Boolean]
    class DisassociateFileSystemInput < Struct.new(
      nil,
      :file_system_association_arn,
      :force_delete,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute file_system_association_arn
    #   <p>The Amazon Resource Name (ARN) of the deleted file system association.</p>
    #   @return [String]
    class DisassociateFileSystemOutput < Struct.new(
      nil,
      :file_system_association_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a gateway's local disk.</p>
    # @!attribute disk_id
    #   <p>The unique device ID or other distinguishing data that identifies a local disk.</p>
    #   @return [String]
    # @!attribute disk_path
    #   <p>The path of a local disk in the gateway virtual machine (VM).</p>
    #   @return [String]
    # @!attribute disk_node
    #   <p>The device node of a local disk as assigned by the virtualization environment.</p>
    #   @return [String]
    # @!attribute disk_status
    #   <p>A value that represents the status of a local disk.</p>
    #   @return [String]
    # @!attribute disk_size_in_bytes
    #   <p>The local disk size in bytes.</p>
    #   @return [Integer]
    # @!attribute disk_allocation_type
    #   <p>One of the <code>DiskAllocationType</code> enumeration values that identifies how a
    #            local disk is used.</p>
    #            <p>Valid Values: <code>UPLOAD_BUFFER</code> | <code>CACHE_STORAGE</code>
    #            </p>
    #   @return [String]
    # @!attribute disk_allocation_resource
    #   <p>The iSCSI qualified name (IQN) that is defined for a disk. This field is not included in
    #            the response if the local disk is not defined as an iSCSI target. The format of this field
    #            is <i>targetIqn::LUNNumber::region-volumeId</i>.</p>
    #   @return [String]
    # @!attribute disk_attribute_list
    #   <p>A list of values that represents attributes of a local disk.</p>
    #   @return [Array<String>]
    class Disk < Struct.new(
      nil,
      :disk_id,
      :disk_path,
      :disk_node,
      :disk_status,
      :disk_size_in_bytes,
      :disk_allocation_type,
      :disk_allocation_resource,
      :disk_attribute_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:disk_size_in_bytes] = 0 unless options.key?(:disk_size_in_bytes)
        super
      end
    end

    # <p>Specifies network configuration information for the gateway associated with the Amazon FSx file system.</p>
    # @!attribute ip_addresses
    #   <p>A list of gateway IP addresses on which the associated Amazon FSx file system is
    #            available.</p>
    #            <note>
    #               <p>If multiple file systems are associated with this gateway, this field is
    #               required.</p>
    #            </note>
    #   @return [Array<String>]
    class EndpointNetworkConfiguration < Struct.new(
      nil,
      :ip_addresses,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute file_share_arn
    #   <p>The Amazon Resource Name (ARN) of the file share for which you want to start the cache
    #            clean operation.</p>
    #   @return [String]
    # @!attribute force_remove
    #   <p>Specifies whether cache entries with full or partial file data currently stored on the
    #            gateway will be forcibly removed by the cache clean operation.</p>
    #            <p>Valid arguments:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>False</code> - The cache clean operation skips cache entries failing upload
    #                  if they are associated with data currently stored on the gateway. This preserves the
    #                  cached data.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>True</code> - The cache clean operation removes cache entries failing upload
    #                  even if they are associated with data currently stored on the gateway. This deletes
    #                  the cached data.</p>
    #                  <important>
    #                     <p>If <code>ForceRemove</code> is set to <code>True</code>, the cache clean
    #                     operation will delete file data from the gateway which might otherwise be
    #                     recoverable.</p>
    #                  </important>
    #               </li>
    #            </ul>
    #   @return [Boolean]
    class EvictFilesFailingUploadInput < Struct.new(
      nil,
      :file_share_arn,
      :force_remove,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute notification_id
    #   <p>The randomly generated ID of the CloudWatch notification associated with the
    #            cache clean operation. This ID is in UUID format.</p>
    #   @return [String]
    class EvictFilesFailingUploadOutput < Struct.new(
      nil,
      :notification_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a file share. Only supported S3 File Gateway.</p>
    # @!attribute file_share_type
    #   <p>The type of the file share.</p>
    #   @return [String]
    # @!attribute file_share_arn
    #   <p>The Amazon Resource Name (ARN) of the file share.</p>
    #   @return [String]
    # @!attribute file_share_id
    #   <p>The ID of the file share.</p>
    #   @return [String]
    # @!attribute file_share_status
    #   <p>The status of the file share.</p>
    #            <p>Valid Values: <code>CREATING</code> | <code>UPDATING</code> | <code>AVAILABLE</code> |
    #               <code>DELETING</code>
    #            </p>
    #   @return [String]
    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    class FileShareInfo < Struct.new(
      nil,
      :file_share_type,
      :file_share_arn,
      :file_share_id,
      :file_share_status,
      :gateway_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the object returned by <code>DescribeFileSystemAssociations</code> that
    #          describes a created file system association.</p>
    # @!attribute file_system_association_arn
    #   <p>The Amazon Resource Name (ARN) of the file system association.</p>
    #   @return [String]
    # @!attribute location_arn
    #   <p>The ARN of the backend Amazon FSx file system used for storing file data. For
    #            information, see <a href="https://docs.aws.amazon.com/fsx/latest/APIReference/API_FileSystem.html">FileSystem</a> in the
    #                  <i>Amazon FSx API Reference</i>.</p>
    #   @return [String]
    # @!attribute file_system_association_status
    #   <p>The status of the file system association. Valid Values: <code>AVAILABLE</code> |
    #               <code>CREATING</code> | <code>DELETING</code> | <code>FORCE_DELETING</code> |
    #               <code>UPDATING</code> | <code>ERROR</code>
    #            </p>
    #   @return [String]
    # @!attribute audit_destination_arn
    #   <p>The Amazon Resource Name (ARN) of the storage used for the audit logs.</p>
    #   @return [String]
    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of up to 50 tags assigned to the SMB file share, sorted alphabetically by key
    #            name. Each tag is a key-value pair.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute cache_attributes
    #   <p>The refresh cache information for the file share or FSx file systems.</p>
    #   @return [Types::CacheAttributes]
    # @!attribute endpoint_network_configuration
    #   <p>Specifies network configuration information for the gateway associated with the Amazon FSx file system.</p>
    #            <note>
    #               <p>If multiple file systems are associated with this gateway, this parameter's
    #                  <code>IpAddresses</code> field is required.</p>
    #            </note>
    #   @return [Types::EndpointNetworkConfiguration]
    # @!attribute file_system_association_status_details
    #   <p>An array containing the FileSystemAssociationStatusDetail data type, which provides
    #            detailed information on file system association status.</p>
    #   @return [Array<Types::FileSystemAssociationStatusDetail>]
    class FileSystemAssociationInfo < Struct.new(
      nil,
      :file_system_association_arn,
      :location_arn,
      :file_system_association_status,
      :audit_destination_arn,
      :gateway_arn,
      :tags,
      :cache_attributes,
      :endpoint_network_configuration,
      :file_system_association_status_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Detailed information on file system association status.</p>
    # @!attribute error_code
    #   <p>The error code for a given file system association status.</p>
    #   @return [String]
    class FileSystemAssociationStatusDetail < Struct.new(
      nil,
      :error_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Gets the summary returned by <code>ListFileSystemAssociation</code>, which is a summary
    #          of a created file system association.</p>
    # @!attribute file_system_association_id
    #   <p>The ID of the file system association.</p>
    #   @return [String]
    # @!attribute file_system_association_arn
    #   <p>The Amazon Resource Name (ARN) of the file system association.</p>
    #   @return [String]
    # @!attribute file_system_association_status
    #   <p>The status of the file share. Valid Values: <code>AVAILABLE</code> |
    #               <code>CREATING</code> | <code>DELETING</code> | <code>FORCE_DELETING</code> |
    #               <code>UPDATING</code> | <code>ERROR</code>
    #            </p>
    #   @return [String]
    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    class FileSystemAssociationSummary < Struct.new(
      nil,
      :file_system_association_id,
      :file_system_association_arn,
      :file_system_association_status,
      :gateway_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a gateway object.</p>
    # @!attribute gateway_id
    #   <p>The unique identifier assigned to your gateway during activation. This ID becomes part
    #            of the gateway Amazon Resource Name (ARN), which you use as input for other
    #            operations.</p>
    #   @return [String]
    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute gateway_type
    #   <p>The type of the gateway.</p>
    #            <important>
    #               <p>Amazon FSx File Gateway is no longer available to new customers. Existing
    #               customers of FSx File Gateway can continue to use the service normally. For
    #               capabilities similar to FSx File Gateway, visit <a href="https://aws.amazon.com/blogs/storage/switch-your-file-share-access-from-amazon-fsx-file-gateway-to-amazon-fsx-for-windows-file-server/">this blog post</a>.</p>
    #            </important>
    #   @return [String]
    # @!attribute gateway_operational_state
    #   <p>The state of the gateway.</p>
    #            <p>Valid Values: <code>DISABLED</code> | <code>ACTIVE</code>
    #            </p>
    #   @return [String]
    # @!attribute gateway_name
    #   <p>The name of the gateway.</p>
    #   @return [String]
    # @!attribute ec2_instance_id
    #   <p>The ID of the Amazon EC2 instance that was used to launch the gateway.</p>
    #   @return [String]
    # @!attribute ec2_instance_region
    #   <p>The Amazon Web Services Region where the Amazon EC2 instance is located.</p>
    #   @return [String]
    # @!attribute host_environment
    #   <p>The type of hardware or software platform on which the gateway is running.</p>
    #            <note>
    #               <p>Tape Gateway is no longer available on Snow Family devices.</p>
    #            </note>
    #   @return [String]
    # @!attribute host_environment_id
    #   <p>A unique identifier for the specific instance of the host platform running the gateway.
    #            This value is only available for certain host environments, and its format depends on the
    #            host environment type.</p>
    #   @return [String]
    # @!attribute deprecation_date
    #   <p>Date after which this gateway will not receive software updates for new features and bug
    #            fixes.</p>
    #   @return [String]
    # @!attribute software_version
    #   <p>The version number of the software running on the gateway appliance.</p>
    #   @return [String]
    class GatewayInfo < Struct.new(
      nil,
      :gateway_id,
      :gateway_arn,
      :gateway_type,
      :gateway_operational_state,
      :gateway_name,
      :ec2_instance_id,
      :ec2_instance_region,
      :host_environment,
      :host_environment_id,
      :deprecation_date,
      :software_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An internal server error has occurred during the request. For more information, see the
    #          error and message fields.</p>
    # @!attribute message
    #   <p>A human-readable message describing the error that occurred.</p>
    #   @return [String]
    # @!attribute error
    #   <p>A <a>StorageGatewayError</a> that provides more information about the cause
    #            of the error.</p>
    #   @return [Types::StorageGatewayError]
    class InternalServerError < Struct.new(
      nil,
      :message,
      :error,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An exception occurred because an invalid gateway request was issued to the service. For
    #          more information, see the error and message fields.</p>
    # @!attribute message
    #   <p>A human-readable message describing the error that occurred.</p>
    #   @return [String]
    # @!attribute error
    #   <p>A <a>StorageGatewayError</a> that provides more detail about the cause of the
    #            error.</p>
    #   @return [Types::StorageGatewayError]
    class InvalidGatewayRequestException < Struct.new(
      nil,
      :message,
      :error,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>JoinDomainInput</p>
    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <code>ListGateways</code>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute domain_name
    #   <p>The name of the domain that you want the gateway to join.</p>
    #   @return [String]
    # @!attribute organizational_unit
    #   <p>The organizational unit (OU) is a container in an Active Directory that can hold users,
    #            groups, computers, and other OUs and this parameter specifies the OU that the gateway will
    #            join within the AD domain.</p>
    #   @return [String]
    # @!attribute domain_controllers
    #   <p>List of IP addresses, NetBIOS names, or host names of your domain server. If you need to
    #            specify the port number include it after the colon (“:”). For example,
    #               <code>mydc.mydomain.com:389</code>.</p>
    #            <note>
    #               <p>S3 File Gateway supports IPv6 addresses in addition to IPv4 and other existing
    #               formats.</p>
    #               <p>FSx File Gateway does not support IPv6.</p>
    #            </note>
    #   @return [Array<String>]
    # @!attribute timeout_in_seconds
    #   <p>Specifies the time in seconds, in which the <code>JoinDomain</code> operation must
    #            complete. The default is 20 seconds.</p>
    #   @return [Integer]
    # @!attribute user_name
    #   <p>Sets the user name of user who has permission to add the gateway to the Active Directory
    #            domain. The domain user account should be enabled to join computers to the domain. For
    #            example, you can use the domain administrator account or an account with delegated
    #            permissions to join computers to the domain.</p>
    #   @return [String]
    # @!attribute password
    #   <p>Sets the password of the user who has permission to add the gateway to the Active
    #            Directory domain.</p>
    #   @return [String]
    class JoinDomainInput < Struct.new(
      nil,
      :gateway_arn,
      :domain_name,
      :organizational_unit,
      :domain_controllers,
      :timeout_in_seconds,
      :user_name,
      :password,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>JoinDomainOutput</p>
    # @!attribute gateway_arn
    #   <p>The unique Amazon Resource Name (ARN) of the gateway that joined the domain.</p>
    #   @return [String]
    # @!attribute active_directory_status
    #   <p>Indicates the status of the gateway as a member of the Active Directory domain.</p>
    #            <note>
    #               <p>This field is only used as part of a <code>JoinDomain</code> request. It is not
    #               affected by Active Directory connectivity changes that occur after the
    #                  <code>JoinDomain</code> request succeeds.</p>
    #            </note>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ACCESS_DENIED</code>: Indicates that the <code>JoinDomain</code> operation
    #                  failed due to an authentication error.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DETACHED</code>: Indicates that gateway is not joined to a domain.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>JOINED</code>: Indicates that the gateway has successfully joined a
    #                  domain.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>JOINING</code>: Indicates that a <code>JoinDomain</code> operation is in
    #                  progress.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INSUFFICIENT_PERMISSIONS</code>: Indicates that the <code>JoinDomain</code>
    #                  operation failed because the specified user lacks the necessary permissions to join
    #                  the domain.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NETWORK_ERROR</code>: Indicates that <code>JoinDomain</code> operation
    #                  failed due to a network or connectivity error.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TIMEOUT</code>: Indicates that the <code>JoinDomain</code> operation failed
    #                  because the operation didn't complete within the allotted time.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UNKNOWN_ERROR</code>: Indicates that the <code>JoinDomain</code> operation
    #                  failed due to another type of error.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class JoinDomainOutput < Struct.new(
      nil,
      :gateway_arn,
      :active_directory_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    class ListAutomaticTapeCreationPoliciesInput < Struct.new(
      nil,
      :gateway_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute automatic_tape_creation_policy_infos
    #   <p>Gets a listing of information about the gateway's automatic tape creation policies,
    #            including the automatic tape creation rules and the gateway that is using the
    #            policies.</p>
    #   @return [Array<Types::AutomaticTapeCreationPolicyInfo>]
    class ListAutomaticTapeCreationPoliciesOutput < Struct.new(
      nil,
      :automatic_tape_creation_policy_infos,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute marker
    #   <p>Opaque pagination token returned from a previous <code>ListCacheReports</code>
    #            operation. If present, <code>Marker</code> specifies where to continue the list from after
    #            a previous call to <code>ListCacheReports</code>. Optional.</p>
    #   @return [String]
    class ListCacheReportsInput < Struct.new(
      nil,
      :marker,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cache_report_list
    #   <p>A list of existing cache reports for all file shares associated with your Amazon Web Services account. This list includes all information provided by the
    #               <code>DescribeCacheReport</code> action, such as report status, completion progress,
    #            start time, end time, filters, and tags.</p>
    #   @return [Array<Types::CacheReportInfo>]
    # @!attribute marker
    #   <p>If the request includes <code>Marker</code>, the response returns that value in this
    #            field.</p>
    #   @return [String]
    class ListCacheReportsOutput < Struct.new(
      nil,
      :cache_report_list,
      :marker,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>ListFileShareInput</p>
    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway whose file shares you want to list. If
    #            this field is not present, all file shares under your account are listed.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of file shares to return in the response. The value must be an
    #            integer with a value greater than zero. Optional.</p>
    #   @return [Integer]
    # @!attribute marker
    #   <p>Opaque pagination token returned from a previous ListFileShares operation. If present,
    #               <code>Marker</code> specifies where to continue the list from after a previous call to
    #            ListFileShares. Optional.</p>
    #   @return [String]
    class ListFileSharesInput < Struct.new(
      nil,
      :gateway_arn,
      :limit,
      :marker,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>ListFileShareOutput</p>
    # @!attribute marker
    #   <p>If the request includes <code>Marker</code>, the response returns that value in this
    #            field.</p>
    #   @return [String]
    # @!attribute next_marker
    #   <p>If a value is present, there are more file shares to return. In a subsequent request,
    #            use <code>NextMarker</code> as the value for <code>Marker</code> to retrieve the next set
    #            of file shares.</p>
    #   @return [String]
    # @!attribute file_share_info_list
    #   <p>An array of information about the S3 File Gateway's file shares.</p>
    #   @return [Array<Types::FileShareInfo>]
    class ListFileSharesOutput < Struct.new(
      nil,
      :marker,
      :next_marker,
      :file_share_info_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of file system associations to return in the response. If present,
    #               <code>Limit</code> must be an integer with a value greater than zero. Optional.</p>
    #   @return [Integer]
    # @!attribute marker
    #   <p>Opaque pagination token returned from a previous <code>ListFileSystemAssociations</code>
    #            operation. If present, <code>Marker</code> specifies where to continue the list from after
    #            a previous call to <code>ListFileSystemAssociations</code>. Optional.</p>
    #   @return [String]
    class ListFileSystemAssociationsInput < Struct.new(
      nil,
      :gateway_arn,
      :limit,
      :marker,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute marker
    #   <p>If the request includes <code>Marker</code>, the response returns that value in this
    #            field.</p>
    #   @return [String]
    # @!attribute next_marker
    #   <p>If a value is present, there are more file system associations to return. In a
    #            subsequent request, use <code>NextMarker</code> as the value for <code>Marker</code> to
    #            retrieve the next set of file system associations.</p>
    #   @return [String]
    # @!attribute file_system_association_summary_list
    #   <p>An array of information about the Amazon FSx gateway's file system
    #            associations.</p>
    #   @return [Array<Types::FileSystemAssociationSummary>]
    class ListFileSystemAssociationsOutput < Struct.new(
      nil,
      :marker,
      :next_marker,
      :file_system_association_summary_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A JSON object containing zero or more of the following fields:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>ListGatewaysInput$Limit</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>ListGatewaysInput$Marker</a>
    #                </p>
    #             </li>
    #          </ul>
    # @!attribute marker
    #   <p>An opaque string that indicates the position at which to begin the returned list of
    #            gateways.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>Specifies that the list of gateways returned be limited to the specified number of
    #            items.</p>
    #   @return [Integer]
    class ListGatewaysInput < Struct.new(
      nil,
      :marker,
      :limit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateways
    #   <p>An array of <a>GatewayInfo</a> objects.</p>
    #   @return [Array<Types::GatewayInfo>]
    # @!attribute marker
    #   <p>Use the marker in your next request to fetch the next set of gateways in the list. If
    #            there are no more gateways to list, this field does not appear in the response.</p>
    #   @return [String]
    class ListGatewaysOutput < Struct.new(
      nil,
      :gateways,
      :marker,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A JSON object containing the Amazon Resource Name (ARN) of the gateway.</p>
    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    class ListLocalDisksInput < Struct.new(
      nil,
      :gateway_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute disks
    #   <p>A JSON object containing the following fields:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <a>ListLocalDisksOutput$Disks</a>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [Array<Types::Disk>]
    class ListLocalDisksOutput < Struct.new(
      nil,
      :gateway_arn,
      :disks,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>ListTagsForResourceInput</p>
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource for which you want to list tags.</p>
    #   @return [String]
    # @!attribute marker
    #   <p>An opaque string that indicates the position at which to begin returning the list of
    #            tags.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>Specifies that the list of tags returned be limited to the specified number of
    #            items.</p>
    #   @return [Integer]
    class ListTagsForResourceInput < Struct.new(
      nil,
      :resource_arn,
      :marker,
      :limit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>ListTagsForResourceOutput</p>
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource for which you want to list tags.</p>
    #   @return [String]
    # @!attribute marker
    #   <p>An opaque string that indicates the position at which to stop returning the list of
    #            tags.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>An array that contains the tags for the specified resource.</p>
    #   @return [Array<Types::Tag>]
    class ListTagsForResourceOutput < Struct.new(
      nil,
      :resource_arn,
      :marker,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pool_ar_ns
    #   <p>The Amazon Resource Name (ARN) of each of the custom tape pools you want to list. If you
    #            don't specify a custom tape pool ARN, the response lists all custom tape pools. </p>
    #   @return [Array<String>]
    # @!attribute marker
    #   <p>A string that indicates the position at which to begin the returned list of tape
    #            pools.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>An optional number limit for the tape pools in the list returned by this call.</p>
    #   @return [Integer]
    class ListTapePoolsInput < Struct.new(
      nil,
      :pool_ar_ns,
      :marker,
      :limit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pool_infos
    #   <p>An array of <code>PoolInfo</code> objects, where each object describes a single custom
    #            tape pool. If there are no custom tape pools, the <code>PoolInfos</code> is an empty array.
    #         </p>
    #   @return [Array<Types::PoolInfo>]
    # @!attribute marker
    #   <p>A string that indicates the position at which to begin the returned list of tape pools.
    #            Use the marker in your next request to continue pagination of tape pools. If there are no
    #            more tape pools to list, this element does not appear in the response body. </p>
    #   @return [String]
    class ListTapePoolsOutput < Struct.new(
      nil,
      :pool_infos,
      :marker,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A JSON object that contains one or more of the following fields:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>ListTapesInput$Limit</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>ListTapesInput$Marker</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>ListTapesInput$TapeARNs</a>
    #                </p>
    #             </li>
    #          </ul>
    # @!attribute tape_ar_ns
    #   <p>The Amazon Resource Name (ARN) of each of the tapes you want to list. If you don't
    #            specify a tape ARN, the response lists all tapes in both your VTL and VTS.</p>
    #   @return [Array<String>]
    # @!attribute marker
    #   <p>A string that indicates the position at which to begin the returned list of
    #            tapes.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>An optional number limit for the tapes in the list returned by this call.</p>
    #   @return [Integer]
    class ListTapesInput < Struct.new(
      nil,
      :tape_ar_ns,
      :marker,
      :limit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A JSON object containing the following fields:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>ListTapesOutput$Marker</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>ListTapesOutput$VolumeInfos</a>
    #                </p>
    #             </li>
    #          </ul>
    # @!attribute tape_infos
    #   <p>An array of <a>TapeInfo</a> objects, where each object describes a single
    #            tape. If there are no tapes in the tape library or VTS, then the <code>TapeInfos</code> is
    #            an empty array.</p>
    #   @return [Array<Types::TapeInfo>]
    # @!attribute marker
    #   <p>A string that indicates the position at which to begin returning the next list of tapes.
    #            Use the marker in your next request to continue pagination of tapes. If there are no more
    #            tapes to list, this element does not appear in the response body.</p>
    #   @return [String]
    class ListTapesOutput < Struct.new(
      nil,
      :tape_infos,
      :marker,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>ListVolumeInitiatorsInput</p>
    # @!attribute volume_arn
    #   <p>The Amazon Resource Name (ARN) of the volume. Use the <a>ListVolumes</a>
    #            operation to return a list of gateway volumes for the gateway.</p>
    #   @return [String]
    class ListVolumeInitiatorsInput < Struct.new(
      nil,
      :volume_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>ListVolumeInitiatorsOutput</p>
    # @!attribute initiators
    #   <p>The host names and port numbers of all iSCSI initiators that are connected to the
    #            gateway.</p>
    #   @return [Array<String>]
    class ListVolumeInitiatorsOutput < Struct.new(
      nil,
      :initiators,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    class ListVolumeRecoveryPointsInput < Struct.new(
      nil,
      :gateway_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute volume_recovery_point_infos
    #   <p>An array of <a>VolumeRecoveryPointInfo</a> objects.</p>
    #   @return [Array<Types::VolumeRecoveryPointInfo>]
    class ListVolumeRecoveryPointsOutput < Struct.new(
      nil,
      :gateway_arn,
      :volume_recovery_point_infos,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A JSON object that contains one or more of the following fields:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>ListVolumesInput$Limit</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>ListVolumesInput$Marker</a>
    #                </p>
    #             </li>
    #          </ul>
    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute marker
    #   <p>A string that indicates the position at which to begin the returned list of volumes.
    #            Obtain the marker from the response of a previous List iSCSI Volumes request.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>Specifies that the list of volumes returned be limited to the specified number of
    #            items.</p>
    #   @return [Integer]
    class ListVolumesInput < Struct.new(
      nil,
      :gateway_arn,
      :marker,
      :limit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A JSON object containing the following fields:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>ListVolumesOutput$Marker</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>ListVolumesOutput$VolumeInfos</a>
    #                </p>
    #             </li>
    #          </ul>
    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute marker
    #   <p>Use the marker in your next request to continue pagination of iSCSI volumes. If there
    #            are no more volumes to list, this field does not appear in the response body.</p>
    #   @return [String]
    # @!attribute volume_infos
    #   <p>An array of <a>VolumeInfo</a> objects, where each object describes an iSCSI
    #            volume. If no volumes are defined for the gateway, then <code>VolumeInfos</code> is an
    #            empty array "[]".</p>
    #   @return [Array<Types::VolumeInfo>]
    class ListVolumesOutput < Struct.new(
      nil,
      :gateway_arn,
      :marker,
      :volume_infos,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes Network File System (NFS) file share default values. Files and folders stored
    #          as Amazon S3 objects in S3 buckets don't, by default, have Unix file
    #          permissions assigned to them. Upon discovery in an S3 bucket by Storage Gateway, the S3
    #          objects that represent files and folders are assigned these default Unix permissions. This
    #          operation is only supported for S3 File Gateways.</p>
    # @!attribute file_mode
    #   <p>The Unix file mode in the form "nnnn". For example, <code>0666</code> represents the
    #            default file mode inside the file share. The default value is <code>0666</code>.</p>
    #   @return [String]
    # @!attribute directory_mode
    #   <p>The Unix directory mode in the form "nnnn". For example, <code>0666</code> represents
    #            the default access mode for all directories inside the file share. The default value is
    #               <code>0777</code>.</p>
    #   @return [String]
    # @!attribute group_id
    #   <p>The default group ID for the file share (unless the files have another group ID
    #            specified). The default value is <code>nfsnobody</code>.</p>
    #   @return [Integer]
    # @!attribute owner_id
    #   <p>The default owner ID for files in the file share (unless the files have another owner ID
    #            specified). The default value is <code>nfsnobody</code>.</p>
    #   @return [Integer]
    class NFSFileShareDefaults < Struct.new(
      nil,
      :file_mode,
      :directory_mode,
      :group_id,
      :owner_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Unix file permissions and ownership information assigned, by default, to native S3
    #          objects when an S3 File Gateway discovers them in S3 buckets. This operation is only
    #          supported in S3 File Gateways.</p>
    # @!attribute nfs_file_share_defaults
    #   <p>Describes Network File System (NFS) file share default values. Files and folders stored
    #            as Amazon S3 objects in S3 buckets don't, by default, have Unix file
    #            permissions assigned to them. Upon discovery in an S3 bucket by Storage Gateway, the S3
    #            objects that represent files and folders are assigned these default Unix permissions. This
    #            operation is only supported for S3 File Gateways.</p>
    #   @return [Types::NFSFileShareDefaults]
    # @!attribute file_share_arn
    #   <p>The Amazon Resource Name (ARN) of the file share.</p>
    #   @return [String]
    # @!attribute file_share_id
    #   <p>The ID of the file share.</p>
    #   @return [String]
    # @!attribute file_share_status
    #   <p>The status of the file share.</p>
    #            <p>Valid Values: <code>CREATING</code> | <code>UPDATING</code> | <code>AVAILABLE</code> |
    #               <code>DELETING</code>
    #            </p>
    #   @return [String]
    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute encryption_type
    #   <p>A value that specifies the type of server-side encryption that the file share will use
    #            for the data that it stores in Amazon S3.</p>
    #            <note>
    #               <p>We recommend using <code>EncryptionType</code> instead of <code>KMSEncrypted</code>
    #               to set the file share encryption method. You do not need to provide values for both
    #               parameters.</p>
    #               <p>If values for both parameters exist in the same request, then the specified
    #               encryption methods must not conflict. For example, if <code>EncryptionType</code> is
    #                  <code>SseS3</code>, then <code>KMSEncrypted</code> must be <code>false</code>. If
    #                  <code>EncryptionType</code> is <code>SseKms</code> or <code>DsseKms</code>, then
    #                  <code>KMSEncrypted</code> must be <code>true</code>.</p>
    #            </note>
    #   @return [String]
    # @!attribute kms_encrypted
    #   <p>Optional. Set to <code>true</code> to use Amazon S3 server-side encryption with
    #            your own KMS key (SSE-KMS), or <code>false</code> to use a key managed by
    #               Amazon S3 (SSE-S3). To use dual-layer encryption (DSSE-KMS), set the
    #               <code>EncryptionType</code> parameter instead.</p>
    #            <note>
    #               <p>We recommend using <code>EncryptionType</code> instead of <code>KMSEncrypted</code>
    #               to set the file share encryption method. You do not need to provide values for both
    #               parameters.</p>
    #               <p>If values for both parameters exist in the same request, then the specified
    #               encryption methods must not conflict. For example, if <code>EncryptionType</code> is
    #                  <code>SseS3</code>, then <code>KMSEncrypted</code> must be <code>false</code>. If
    #                  <code>EncryptionType</code> is <code>SseKms</code> or <code>DsseKms</code>, then
    #                  <code>KMSEncrypted</code> must be <code>true</code>.</p>
    #            </note>
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    #   @deprecated
    #     KMSEncrypted is deprecated, use EncryptionType instead.
    #   @return [Boolean]
    # @!attribute kms_key
    #   <p>Optional. The Amazon Resource Name (ARN) of a symmetric customer master key (CMK) used
    #            for Amazon S3 server-side encryption. Storage Gateway does not support asymmetric
    #            CMKs. This value must be set if <code>KMSEncrypted</code> is <code>true</code>, or if
    #               <code>EncryptionType</code> is <code>SseKms</code> or <code>DsseKms</code>.</p>
    #   @return [String]
    # @!attribute path
    #   <p>The file share path used by the NFS client to identify the mount point.</p>
    #   @return [String]
    # @!attribute role
    #   <p>The ARN of the IAM role that an S3 File Gateway assumes when it accesses the underlying
    #            storage.</p>
    #   @return [String]
    # @!attribute location_arn
    #   <p>A custom ARN for the backend storage used for storing data for file shares. It includes
    #            a resource ARN with an optional prefix concatenation. The prefix must end with a forward
    #            slash (/).</p>
    #            <note>
    #               <p>You can specify LocationARN as a bucket ARN, access point ARN or access point alias,
    #               as shown in the following examples.</p>
    #               <p>Bucket ARN:</p>
    #               <p>
    #                  <code>arn:aws:s3:::amzn-s3-demo-bucket/prefix/</code>
    #               </p>
    #               <p>Access point ARN:</p>
    #               <p>
    #                  <code>arn:aws:s3:region:account-id:accesspoint/access-point-name/prefix/</code>
    #               </p>
    #               <p>If you specify an access point, the bucket policy must be configured to delegate
    #               access control to the access point. For information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points-policies.html#access-points-delegating-control">Delegating access control to access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #               <p>Access point alias:</p>
    #               <p>
    #                  <code>test-ap-ab123cdef4gehijklmn5opqrstuvuse1a-s3alias</code>
    #               </p>
    #            </note>
    #   @return [String]
    # @!attribute default_storage_class
    #   <p>The default storage class for objects put into an Amazon S3 bucket by the S3
    #            File Gateway. The default value is <code>S3_STANDARD</code>. Optional.</p>
    #            <p>Valid Values: <code>S3_STANDARD</code> | <code>S3_INTELLIGENT_TIERING</code> |
    #               <code>S3_STANDARD_IA</code> | <code>S3_ONEZONE_IA</code>
    #            </p>
    #   @return [String]
    # @!attribute object_acl
    #   <p>A value that sets the access control list (ACL) permission for objects in the S3 bucket
    #            that an S3 File Gateway puts objects into. The default value is
    #            <code>private</code>.</p>
    #   @return [String]
    # @!attribute client_list
    #   <p>The list of clients that are allowed to access the S3 File Gateway. The list must
    #            contain either valid IPv4/IPv6 addresses or valid CIDR blocks.</p>
    #   @return [Array<String>]
    # @!attribute squash
    #   <p>The user mapped to anonymous user. Valid options are the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>RootSquash</code>: Only root is mapped to anonymous user.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NoSquash</code>: No one is mapped to anonymous user.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AllSquash</code>: Everyone is mapped to anonymous user.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute read_only
    #   <p>A value that sets the write status of a file share. Set this value to <code>true</code>
    #            to set the write status to read-only, otherwise set to <code>false</code>.</p>
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    #   @return [Boolean]
    # @!attribute guess_mime_type_enabled
    #   <p>A value that enables guessing of the MIME type for uploaded objects based on file
    #            extensions. Set this value to <code>true</code> to enable MIME type guessing, otherwise set
    #            to <code>false</code>. The default value is <code>true</code>.</p>
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    #   @return [Boolean]
    # @!attribute requester_pays
    #   <p>A value that sets who pays the cost of the request and the cost associated with data
    #            download from the S3 bucket. If this value is set to <code>true</code>, the requester pays
    #            the costs; otherwise, the S3 bucket owner pays. However, the S3 bucket owner always pays
    #            the cost of storing data.</p>
    #            <note>
    #               <p>
    #                  <code>RequesterPays</code> is a configuration for the S3 bucket that backs the file
    #               share, so make sure that the configuration on the file share is the same as the S3
    #               bucket configuration.</p>
    #            </note>
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>A list of up to 50 tags assigned to the NFS file share, sorted alphabetically by key
    #            name. Each tag is a key-value pair. For a gateway with more than 10 tags assigned, you can
    #            view all tags using the <code>ListTagsForResource</code> API operation.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute file_share_name
    #   <p>The name of the file share. Optional.</p>
    #            <note>
    #               <p>
    #                  <code>FileShareName</code> must be set if an S3 prefix name is set in
    #                  <code>LocationARN</code>, or if an access point or access point alias is used.</p>
    #            </note>
    #   @return [String]
    # @!attribute cache_attributes
    #   <p>Refresh cache information for the file share.</p>
    #   @return [Types::CacheAttributes]
    # @!attribute notification_policy
    #   <p>The notification policy of the file share. <code>SettlingTimeInSeconds</code> controls
    #            the number of seconds to wait after the last point in time a client wrote to a file before
    #            generating an <code>ObjectUploaded</code> notification. Because clients can make many small
    #            writes to files, it's best to set this parameter for as long as possible to avoid
    #            generating multiple notifications for the same file in a small time period.</p>
    #            <note>
    #               <p>
    #                  <code>SettlingTimeInSeconds</code> has no effect on the timing of the object
    #               uploading to Amazon S3, only the timing of the notification.</p>
    #               <p>This setting is not meant to specify an exact time at which the notification will be
    #               sent. In some cases, the gateway might require more than the specified delay time to
    #               generate and send notifications.</p>
    #            </note>
    #            <p>The following example sets <code>NotificationPolicy</code> on with
    #               <code>SettlingTimeInSeconds</code> set to 60.</p>
    #            <p>
    #               <code>{\"Upload\": {\"SettlingTimeInSeconds\": 60}}</code>
    #            </p>
    #            <p>The following example sets <code>NotificationPolicy</code> off.</p>
    #            <p>
    #               <code>{}</code>
    #            </p>
    #   @return [String]
    # @!attribute vpc_endpoint_dns_name
    #   <p>Specifies the DNS name for the VPC endpoint that the NFS file share uses to connect to
    #               Amazon S3.</p>
    #            <note>
    #               <p>This parameter is required for NFS file shares that connect to Amazon S3
    #               through a VPC endpoint, a VPC access point, or an access point alias that points to a
    #               VPC access point.</p>
    #            </note>
    #   @return [String]
    # @!attribute bucket_region
    #   <p>Specifies the Region of the S3 bucket where the NFS file share stores files.</p>
    #            <note>
    #               <p>This parameter is required for NFS file shares that connect to Amazon S3
    #               through a VPC endpoint, a VPC access point, or an access point alias that points to a
    #               VPC access point.</p>
    #            </note>
    #   @return [String]
    # @!attribute audit_destination_arn
    #   <p>The Amazon Resource Name (ARN) of the storage used for audit logs.</p>
    #   @return [String]
    class NFSFileShareInfo < Struct.new(
      nil,
      :nfs_file_share_defaults,
      :file_share_arn,
      :file_share_id,
      :file_share_status,
      :gateway_arn,
      :encryption_type,
      :kms_encrypted,
      :kms_key,
      :path,
      :role,
      :location_arn,
      :default_storage_class,
      :object_acl,
      :client_list,
      :squash,
      :read_only,
      :guess_mime_type_enabled,
      :requester_pays,
      :tags,
      :file_share_name,
      :cache_attributes,
      :notification_policy,
      :vpc_endpoint_dns_name,
      :bucket_region,
      :audit_destination_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:kms_encrypted] = false unless options.key?(:kms_encrypted)
        super
      end
    end

    # <p>Describes a gateway's network interface.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute ipv4_address
    #   <p>The Internet Protocol version 4 (IPv4) address of the interface.</p>
    #   @return [String]
    # @!attribute mac_address
    #   <p>The Media Access Control (MAC) address of the interface.</p>
    #            <note>
    #               <p>This is currently unsupported and will not be returned in output.</p>
    #            </note>
    #   @return [String]
    # @!attribute ipv6_address
    #   <p>The Internet Protocol version 6 (IPv6) address of the interface.</p>
    #            <note>
    #               <p>This element returns IPv6 addresses for all gateway types except FSx File Gateway.</p>
    #            </note>
    #   @return [String]
    class NetworkInterface < Struct.new(
      nil,
      :ipv4_address,
      :mac_address,
      :ipv6_address,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute file_share_arn
    #   <p>The Amazon Resource Name (ARN) of the file share.</p>
    #   @return [String]
    class NotifyWhenUploadedInput < Struct.new(
      nil,
      :file_share_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute file_share_arn
    #   <p>The Amazon Resource Name (ARN) of the file share.</p>
    #   @return [String]
    # @!attribute notification_id
    #   <p>The randomly generated ID of the notification that was sent. This ID is in UUID
    #            format.</p>
    #   @return [String]
    class NotifyWhenUploadedOutput < Struct.new(
      nil,
      :file_share_arn,
      :notification_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a custom tape pool.</p>
    # @!attribute pool_arn
    #   <p>The Amazon Resource Name (ARN) of the custom tape pool. Use the <a>ListTapePools</a> operation to return a list of custom tape pools for your
    #            account and Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute pool_name
    #   <p>The name of the custom tape pool. <code>PoolName</code> can use all ASCII characters,
    #            except '/' and '\'.</p>
    #   @return [String]
    # @!attribute storage_class
    #   <p>The storage class that is associated with the custom pool. When you use your backup
    #            application to eject the tape, the tape is archived directly into the storage class (S3
    #            Glacier or S3 Glacier Deep Archive) that corresponds to the pool.</p>
    #   @return [String]
    # @!attribute retention_lock_type
    #   <p>Tape retention lock type, which can be configured in two modes. When configured in
    #            governance mode, Amazon Web Services accounts with specific IAM permissions are authorized
    #            to remove the tape retention lock from archived virtual tapes. When configured in
    #            compliance mode, the tape retention lock cannot be removed by any user, including the root
    #               Amazon Web Services account.</p>
    #   @return [String]
    # @!attribute retention_lock_time_in_days
    #   <p>Tape retention lock time is set in days. Tape retention lock can be enabled for up to
    #            100 years (36,500 days).</p>
    #   @return [Integer]
    # @!attribute pool_status
    #   <p>Status of the custom tape pool. Pool can be <code>ACTIVE</code> or
    #            <code>DELETED</code>.</p>
    #   @return [String]
    class PoolInfo < Struct.new(
      nil,
      :pool_arn,
      :pool_name,
      :storage_class,
      :retention_lock_type,
      :retention_lock_time_in_days,
      :pool_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>RefreshCacheInput</p>
    # @!attribute file_share_arn
    #   <p>The Amazon Resource Name (ARN) of the file share you want to refresh.</p>
    #   @return [String]
    # @!attribute folder_list
    #   <p>A comma-separated list of the paths of folders to refresh in the cache. The default is
    #               [<code>"/"</code>]. The default refreshes objects and folders at the root of the Amazon S3 bucket. If <code>Recursive</code> is set to <code>true</code>, the entire S3
    #            bucket that the file share has access to is refreshed.</p>
    #            <p>Do not include <code>/</code> when specifying folder names. For example, you would
    #            specify <code>samplefolder</code> rather than <code>samplefolder/</code>.</p>
    #   @return [Array<String>]
    # @!attribute recursive
    #   <p>A value that specifies whether to recursively refresh folders in the cache. The refresh
    #            includes folders that were in the cache the last time the gateway listed the folder's
    #            contents. If this value set to <code>true</code>, each folder that is listed in
    #               <code>FolderList</code> is recursively updated. Otherwise, subfolders listed in
    #               <code>FolderList</code> are not refreshed. Only objects that are in folders listed
    #            directly under <code>FolderList</code> are found and used for the update. The default is
    #               <code>true</code>.</p>
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    #   @return [Boolean]
    class RefreshCacheInput < Struct.new(
      nil,
      :file_share_arn,
      :folder_list,
      :recursive,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>RefreshCacheOutput</p>
    # @!attribute file_share_arn
    #   <p>The Amazon Resource Name (ARN) of the file share.</p>
    #   @return [String]
    # @!attribute notification_id
    #   <p>The randomly generated ID of the notification that was sent. This ID is in UUID
    #            format.</p>
    #   @return [String]
    class RefreshCacheOutput < Struct.new(
      nil,
      :file_share_arn,
      :notification_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>RemoveTagsFromResourceInput</p>
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource you want to remove the tags from.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The keys of the tags you want to remove from the specified resource. A tag is composed
    #            of a key-value pair.</p>
    #   @return [Array<String>]
    class RemoveTagsFromResourceInput < Struct.new(
      nil,
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>RemoveTagsFromResourceOutput</p>
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that the tags were removed from.</p>
    #   @return [String]
    class RemoveTagsFromResourceOutput < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    class ResetCacheInput < Struct.new(
      nil,
      :gateway_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    class ResetCacheOutput < Struct.new(
      nil,
      :gateway_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>RetrieveTapeArchiveInput</p>
    # @!attribute tape_arn
    #   <p>The Amazon Resource Name (ARN) of the virtual tape you want to retrieve from the virtual
    #            tape shelf (VTS).</p>
    #   @return [String]
    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway you want to retrieve the virtual tape to.
    #            Use the <a>ListGateways</a> operation to return a list of gateways for your
    #            account and Amazon Web Services Region.</p>
    #            <p>You retrieve archived virtual tapes to only one gateway and the gateway must be a tape
    #            gateway.</p>
    #   @return [String]
    class RetrieveTapeArchiveInput < Struct.new(
      nil,
      :tape_arn,
      :gateway_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>RetrieveTapeArchiveOutput</p>
    # @!attribute tape_arn
    #   <p>The Amazon Resource Name (ARN) of the retrieved virtual tape.</p>
    #   @return [String]
    class RetrieveTapeArchiveOutput < Struct.new(
      nil,
      :tape_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>RetrieveTapeRecoveryPointInput</p>
    # @!attribute tape_arn
    #   <p>The Amazon Resource Name (ARN) of the virtual tape for which you want to retrieve the
    #            recovery point.</p>
    #   @return [String]
    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    class RetrieveTapeRecoveryPointInput < Struct.new(
      nil,
      :tape_arn,
      :gateway_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>RetrieveTapeRecoveryPointOutput</p>
    # @!attribute tape_arn
    #   <p>The Amazon Resource Name (ARN) of the virtual tape for which the recovery point was
    #            retrieved.</p>
    #   @return [String]
    class RetrieveTapeRecoveryPointOutput < Struct.new(
      nil,
      :tape_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Windows file permissions and ownership information assigned, by default, to native
    #          S3 objects when S3 File Gateway discovers them in S3 buckets. This operation is only
    #          supported for S3 File Gateways.</p>
    # @!attribute file_share_arn
    #   <p>The Amazon Resource Name (ARN) of the file share.</p>
    #   @return [String]
    # @!attribute file_share_id
    #   <p>The ID of the file share.</p>
    #   @return [String]
    # @!attribute file_share_status
    #   <p>The status of the file share.</p>
    #            <p>Valid Values: <code>CREATING</code> | <code>UPDATING</code> | <code>AVAILABLE</code> |
    #               <code>DELETING</code>
    #            </p>
    #   @return [String]
    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute encryption_type
    #   <p>A value that specifies the type of server-side encryption that the file share will use
    #            for the data that it stores in Amazon S3.</p>
    #            <note>
    #               <p>We recommend using <code>EncryptionType</code> instead of <code>KMSEncrypted</code>
    #               to set the file share encryption method. You do not need to provide values for both
    #               parameters.</p>
    #               <p>If values for both parameters exist in the same request, then the specified
    #               encryption methods must not conflict. For example, if <code>EncryptionType</code> is
    #                  <code>SseS3</code>, then <code>KMSEncrypted</code> must be <code>false</code>. If
    #                  <code>EncryptionType</code> is <code>SseKms</code> or <code>DsseKms</code>, then
    #                  <code>KMSEncrypted</code> must be <code>true</code>.</p>
    #            </note>
    #   @return [String]
    # @!attribute kms_encrypted
    #   <p>Optional. Set to <code>true</code> to use Amazon S3 server-side encryption with
    #            your own KMS key (SSE-KMS), or <code>false</code> to use a key managed by
    #               Amazon S3 (SSE-S3). To use dual-layer encryption (DSSE-KMS), set the
    #               <code>EncryptionType</code> parameter instead.</p>
    #            <note>
    #               <p>We recommend using <code>EncryptionType</code> instead of <code>KMSEncrypted</code>
    #               to set the file share encryption method. You do not need to provide values for both
    #               parameters.</p>
    #               <p>If values for both parameters exist in the same request, then the specified
    #               encryption methods must not conflict. For example, if <code>EncryptionType</code> is
    #                  <code>SseS3</code>, then <code>KMSEncrypted</code> must be <code>false</code>. If
    #                  <code>EncryptionType</code> is <code>SseKms</code> or <code>DsseKms</code>, then
    #                  <code>KMSEncrypted</code> must be <code>true</code>.</p>
    #            </note>
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    #   @deprecated
    #     KMSEncrypted is deprecated, use EncryptionType instead.
    #   @return [Boolean]
    # @!attribute kms_key
    #   <p>Optional. The Amazon Resource Name (ARN) of a symmetric customer master key (CMK) used
    #            for Amazon S3 server-side encryption. Storage Gateway does not support asymmetric
    #            CMKs. This value must be set if <code>KMSEncrypted</code> is <code>true</code>, or if
    #               <code>EncryptionType</code> is <code>SseKms</code> or <code>DsseKms</code>.</p>
    #   @return [String]
    # @!attribute path
    #   <p>The file share path used by the SMB client to identify the mount point.</p>
    #   @return [String]
    # @!attribute role
    #   <p>The ARN of the IAM role that an S3 File Gateway assumes when it accesses the underlying
    #            storage.</p>
    #   @return [String]
    # @!attribute location_arn
    #   <p>A custom ARN for the backend storage used for storing data for file shares. It includes
    #            a resource ARN with an optional prefix concatenation. The prefix must end with a forward
    #            slash (/).</p>
    #            <note>
    #               <p>You can specify LocationARN as a bucket ARN, access point ARN or access point alias,
    #               as shown in the following examples.</p>
    #               <p>Bucket ARN:</p>
    #               <p>
    #                  <code>arn:aws:s3:::amzn-s3-demo-bucket/prefix/</code>
    #               </p>
    #               <p>Access point ARN:</p>
    #               <p>
    #                  <code>arn:aws:s3:region:account-id:accesspoint/access-point-name/prefix/</code>
    #               </p>
    #               <p>If you specify an access point, the bucket policy must be configured to delegate
    #               access control to the access point. For information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points-policies.html#access-points-delegating-control">Delegating access control to access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #               <p>Access point alias:</p>
    #               <p>
    #                  <code>test-ap-ab123cdef4gehijklmn5opqrstuvuse1a-s3alias</code>
    #               </p>
    #            </note>
    #   @return [String]
    # @!attribute default_storage_class
    #   <p>The default storage class for objects put into an Amazon S3 bucket by the S3
    #            File Gateway. The default value is <code>S3_STANDARD</code>. Optional.</p>
    #            <p>Valid Values: <code>S3_STANDARD</code> | <code>S3_INTELLIGENT_TIERING</code> |
    #               <code>S3_STANDARD_IA</code> | <code>S3_ONEZONE_IA</code>
    #            </p>
    #   @return [String]
    # @!attribute object_acl
    #   <p>A value that sets the access control list (ACL) permission for objects in the S3 bucket
    #            that an S3 File Gateway puts objects into. The default value is
    #            <code>private</code>.</p>
    #   @return [String]
    # @!attribute read_only
    #   <p>A value that sets the write status of a file share. Set this value to <code>true</code>
    #            to set the write status to read-only, otherwise set to <code>false</code>.</p>
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    #   @return [Boolean]
    # @!attribute guess_mime_type_enabled
    #   <p>A value that enables guessing of the MIME type for uploaded objects based on file
    #            extensions. Set this value to <code>true</code> to enable MIME type guessing, otherwise set
    #            to <code>false</code>. The default value is <code>true</code>.</p>
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    #   @return [Boolean]
    # @!attribute requester_pays
    #   <p>A value that sets who pays the cost of the request and the cost associated with data
    #            download from the S3 bucket. If this value is set to <code>true</code>, the requester pays
    #            the costs; otherwise, the S3 bucket owner pays. However, the S3 bucket owner always pays
    #            the cost of storing data.</p>
    #            <note>
    #               <p>
    #                  <code>RequesterPays</code> is a configuration for the S3 bucket that backs the file
    #               share, so make sure that the configuration on the file share is the same as the S3
    #               bucket configuration.</p>
    #            </note>
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    #   @return [Boolean]
    # @!attribute smbacl_enabled
    #   <p>If this value is set to <code>true</code>, it indicates that access control list (ACL)
    #            is enabled on the SMB file share. If it is set to <code>false</code>, it indicates that
    #            file and directory permissions are mapped to the POSIX permission.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/filegateway/latest/files3/smb-acl.html">Using Windows ACLs to limit SMB file share
    #               access</a> in the <i>Amazon S3 File Gateway User
    #            Guide</i>.</p>
    #   @return [Boolean]
    # @!attribute access_based_enumeration
    #   <p>Indicates whether <code>AccessBasedEnumeration</code> is enabled.</p>
    #   @return [Boolean]
    # @!attribute admin_user_list
    #   <p>A list of users or groups in the Active Directory that have administrator rights to the
    #            file share. A group must be prefixed with the @ character. Acceptable formats include:
    #               <code>DOMAIN\User1</code>, <code>user1</code>, <code>@group1</code>, and
    #               <code>@DOMAIN\group1</code>. Can only be set if Authentication is set to
    #               <code>ActiveDirectory</code>.</p>
    #   @return [Array<String>]
    # @!attribute valid_user_list
    #   <p>A list of users or groups in the Active Directory that are allowed to access the file
    #            share. A group must be prefixed with the @ character. Acceptable formats include:
    #               <code>DOMAIN\User1</code>, <code>user1</code>, <code>@group1</code>, and
    #               <code>@DOMAIN\group1</code>. Can only be set if Authentication is set to
    #               <code>ActiveDirectory</code>.</p>
    #   @return [Array<String>]
    # @!attribute invalid_user_list
    #   <p>A list of users or groups in the Active Directory that are not allowed to access the
    #            file share. A group must be prefixed with the @ character. Acceptable formats include:
    #               <code>DOMAIN\User1</code>, <code>user1</code>, <code>@group1</code>, and
    #               <code>@DOMAIN\group1</code>. Can only be set if Authentication is set to
    #               <code>ActiveDirectory</code>.</p>
    #   @return [Array<String>]
    # @!attribute audit_destination_arn
    #   <p>The Amazon Resource Name (ARN) of the storage used for audit logs.</p>
    #   @return [String]
    # @!attribute authentication
    #   <p>The authentication method of the file share. The default is
    #            <code>ActiveDirectory</code>.</p>
    #            <p>Valid Values: <code>ActiveDirectory</code> | <code>GuestAccess</code>
    #            </p>
    #   @return [String]
    # @!attribute case_sensitivity
    #   <p>The case of an object name in an Amazon S3 bucket. For
    #               <code>ClientSpecified</code>, the client determines the case sensitivity. For
    #               <code>CaseSensitive</code>, the gateway determines the case sensitivity. The default
    #            value is <code>ClientSpecified</code>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of up to 50 tags assigned to the SMB file share, sorted alphabetically by key
    #            name. Each tag is a key-value pair. For a gateway with more than 10 tags assigned, you can
    #            view all tags using the <code>ListTagsForResource</code> API operation.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute file_share_name
    #   <p>The name of the file share. Optional.</p>
    #            <note>
    #               <p>
    #                  <code>FileShareName</code> must be set if an S3 prefix name is set in
    #                  <code>LocationARN</code>, or if an access point or access point alias is used.</p>
    #            </note>
    #   @return [String]
    # @!attribute cache_attributes
    #   <p>Refresh cache information for the file share.</p>
    #   @return [Types::CacheAttributes]
    # @!attribute notification_policy
    #   <p>The notification policy of the file share. <code>SettlingTimeInSeconds</code> controls
    #            the number of seconds to wait after the last point in time a client wrote to a file before
    #            generating an <code>ObjectUploaded</code> notification. Because clients can make many small
    #            writes to files, it's best to set this parameter for as long as possible to avoid
    #            generating multiple notifications for the same file in a small time period.</p>
    #            <note>
    #               <p>
    #                  <code>SettlingTimeInSeconds</code> has no effect on the timing of the object
    #               uploading to Amazon S3, only the timing of the notification.</p>
    #               <p>This setting is not meant to specify an exact time at which the notification will be
    #               sent. In some cases, the gateway might require more than the specified delay time to
    #               generate and send notifications.</p>
    #            </note>
    #            <p>The following example sets <code>NotificationPolicy</code> on with
    #               <code>SettlingTimeInSeconds</code> set to 60.</p>
    #            <p>
    #               <code>{\"Upload\": {\"SettlingTimeInSeconds\": 60}}</code>
    #            </p>
    #            <p>The following example sets <code>NotificationPolicy</code> off.</p>
    #            <p>
    #               <code>{}</code>
    #            </p>
    #   @return [String]
    # @!attribute vpc_endpoint_dns_name
    #   <p>Specifies the DNS name for the VPC endpoint that the SMB file share uses to connect to
    #               Amazon S3.</p>
    #            <note>
    #               <p>This parameter is required for SMB file shares that connect to Amazon S3
    #               through a VPC endpoint, a VPC access point, or an access point alias that points to a
    #               VPC access point.</p>
    #            </note>
    #   @return [String]
    # @!attribute bucket_region
    #   <p>Specifies the Region of the S3 bucket where the SMB file share stores files.</p>
    #            <note>
    #               <p>This parameter is required for SMB file shares that connect to Amazon S3
    #               through a VPC endpoint, a VPC access point, or an access point alias that points to a
    #               VPC access point.</p>
    #            </note>
    #   @return [String]
    # @!attribute oplocks_enabled
    #   <p>Specifies whether opportunistic locking is enabled for the SMB file share.</p>
    #            <note>
    #               <p>Enabling opportunistic locking on case-sensitive shares is not recommended for
    #               workloads that involve access to files with the same name in different case.</p>
    #            </note>
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    #   @return [Boolean]
    class SMBFileShareInfo < Struct.new(
      nil,
      :file_share_arn,
      :file_share_id,
      :file_share_status,
      :gateway_arn,
      :encryption_type,
      :kms_encrypted,
      :kms_key,
      :path,
      :role,
      :location_arn,
      :default_storage_class,
      :object_acl,
      :read_only,
      :guess_mime_type_enabled,
      :requester_pays,
      :smbacl_enabled,
      :access_based_enumeration,
      :admin_user_list,
      :valid_user_list,
      :invalid_user_list,
      :audit_destination_arn,
      :authentication,
      :case_sensitivity,
      :tags,
      :file_share_name,
      :cache_attributes,
      :notification_policy,
      :vpc_endpoint_dns_name,
      :bucket_region,
      :oplocks_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:kms_encrypted] = false unless options.key?(:kms_encrypted)
        super
      end
    end

    # <p>A list of Active Directory users and groups that have special permissions for SMB file
    #          shares on the gateway.</p>
    # @!attribute gateway_admins
    #   <p>A list of Active Directory users and groups that have local Gateway Admin permissions.
    #            Acceptable formats include: <code>DOMAIN\User1</code>, <code>user1</code>,
    #               <code>DOMAIN\group1</code>, and <code>group1</code>.</p>
    #            <p>Gateway Admins can use the Shared Folders Microsoft Management Console snap-in to
    #            force-close files that are open and locked.</p>
    #   @return [Array<String>]
    class SMBLocalGroups < Struct.new(
      nil,
      :gateway_admins,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An internal server error has occurred because the service is unavailable. For more
    #          information, see the error and message fields.</p>
    # @!attribute message
    #   <p>A human-readable message describing the error that occurred.</p>
    #   @return [String]
    # @!attribute error
    #   <p>A <a>StorageGatewayError</a> that provides more information about the cause
    #            of the error.</p>
    #   @return [Types::StorageGatewayError]
    class ServiceUnavailableError < Struct.new(
      nil,
      :message,
      :error,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>SetLocalConsolePasswordInput</p>
    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute local_console_password
    #   <p>The password you want to set for your VM local console.</p>
    #   @return [String]
    class SetLocalConsolePasswordInput < Struct.new(
      nil,
      :gateway_arn,
      :local_console_password,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    class SetLocalConsolePasswordOutput < Struct.new(
      nil,
      :gateway_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>SetSMBGuestPasswordInput</p>
    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the S3 File Gateway the SMB file share is associated
    #            with.</p>
    #   @return [String]
    # @!attribute password
    #   <p>The password that you want to set for your SMB server.</p>
    #   @return [String]
    class SetSMBGuestPasswordInput < Struct.new(
      nil,
      :gateway_arn,
      :password,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    class SetSMBGuestPasswordOutput < Struct.new(
      nil,
      :gateway_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A JSON object containing the Amazon Resource Name (ARN) of the gateway to shut
    #          down.</p>
    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    class ShutdownGatewayInput < Struct.new(
      nil,
      :gateway_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A JSON object containing the Amazon Resource Name (ARN) of the gateway that was shut
    #          down.</p>
    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    class ShutdownGatewayOutput < Struct.new(
      nil,
      :gateway_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A set of variables indicating the software update preferences for the gateway.</p>
    # @!attribute automatic_update_policy
    #   <p>Indicates the automatic update policy for a gateway.</p>
    #            <p>
    #               <code>ALL_VERSIONS</code> - Enables regular gateway maintenance updates.</p>
    #            <p>
    #               <code>EMERGENCY_VERSIONS_ONLY</code> - Disables regular gateway maintenance updates. The
    #            gateway will still receive emergency version updates on rare occasions if necessary to
    #            remedy highly critical security or durability issues. You will be notified before an
    #            emergency version update is applied. These updates are applied during your gateway's
    #            scheduled maintenance window.</p>
    #   @return [String]
    class SoftwareUpdatePreferences < Struct.new(
      nil,
      :automatic_update_policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    class StartAvailabilityMonitorTestInput < Struct.new(
      nil,
      :gateway_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    class StartAvailabilityMonitorTestOutput < Struct.new(
      nil,
      :gateway_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute file_share_arn
    #   <p>The Amazon Resource Name (ARN) of the file share.</p>
    #   @return [String]
    # @!attribute role
    #   <p>The ARN of the IAM role used when saving the cache report to Amazon S3.</p>
    #   @return [String]
    # @!attribute location_arn
    #   <p>The ARN of the Amazon S3 bucket where you want to save the cache report.</p>
    #            <note>
    #               <p>We do not recommend saving the cache report to the same Amazon S3 bucket for
    #               which you are generating the report.</p>
    #               <p>This field does not accept access point ARNs.</p>
    #            </note>
    #   @return [String]
    # @!attribute bucket_region
    #   <p>The Amazon Web Services Region of the Amazon S3 bucket where you want to save the
    #            cache report.</p>
    #   @return [String]
    # @!attribute vpc_endpoint_dns_name
    #   <p>The DNS name of the VPC endpoint associated with the Amazon S3 where you want to
    #            save the cache report. Optional.</p>
    #   @return [String]
    # @!attribute inclusion_filters
    #   <p>The list of filters and parameters that determine which files are included in the
    #            report. You must specify at least one value for <code>InclusionFilters</code> or
    #               <code>ExclusionFilters</code> in a <code>StartCacheReport</code> request.</p>
    #   @return [Array<Types::CacheReportFilter>]
    # @!attribute exclusion_filters
    #   <p>The list of filters and parameters that determine which files are excluded from the
    #            report. You must specify at least one value for <code>InclusionFilters</code> or
    #               <code>ExclusionFilters</code> in a <code>StartCacheReport</code> request.</p>
    #   @return [Array<Types::CacheReportFilter>]
    # @!attribute client_token
    #   <p>A unique identifier that you use to ensure idempotent report generation if you need to
    #            retry an unsuccessful <code>StartCacheReport</code> request. If you retry a request, use
    #            the same <code>ClientToken</code> you specified in the initial request.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of up to 50 key/value tags that you can assign to the cache report. Using tags
    #            can help you categorize your reports and more easily locate them in search results.</p>
    #   @return [Array<Types::Tag>]
    class StartCacheReportInput < Struct.new(
      nil,
      :file_share_arn,
      :role,
      :location_arn,
      :bucket_region,
      :vpc_endpoint_dns_name,
      :inclusion_filters,
      :exclusion_filters,
      :client_token,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cache_report_arn
    #   <p>The Amazon Resource Name (ARN) of the cache report generated by the
    #               <code>StartCacheReport</code> request.</p>
    #   @return [String]
    class StartCacheReportOutput < Struct.new(
      nil,
      :cache_report_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A JSON object containing the Amazon Resource Name (ARN) of the gateway to start.</p>
    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    class StartGatewayInput < Struct.new(
      nil,
      :gateway_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A JSON object containing the Amazon Resource Name (ARN) of the gateway that was
    #          restarted.</p>
    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    class StartGatewayOutput < Struct.new(
      nil,
      :gateway_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides additional information about an error that was returned by the service. See the
    #             <code>errorCode</code> and <code>errorDetails</code> members for more information about
    #          the error.</p>
    # @!attribute error_code
    #   <p>Additional information about the error.</p>
    #   @return [String]
    # @!attribute error_details
    #   <p>Human-readable text that provides detail about the error that occurred.</p>
    #   @return [Hash<String, String>]
    class StorageGatewayError < Struct.new(
      nil,
      :error_code,
      :error_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an iSCSI stored volume.</p>
    # @!attribute volume_arn
    #   <p>The Amazon Resource Name (ARN) of the storage volume.</p>
    #   @return [String]
    # @!attribute volume_id
    #   <p>The unique identifier of the volume, e.g., vol-AE4B946D.</p>
    #   @return [String]
    # @!attribute volume_type
    #   <p>One of the VolumeType enumeration values describing the type of the volume.</p>
    #   @return [String]
    # @!attribute volume_status
    #   <p>One of the VolumeStatus values that indicates the state of the storage volume.</p>
    #   @return [String]
    # @!attribute volume_attachment_status
    #   <p>A value that indicates whether a storage volume is attached to, detached from, or is in
    #            the process of detaching from a gateway. For more information, see <a href="https://docs.aws.amazon.com/storagegateway/latest/userguide/managing-volumes.html#attach-detach-volume">Moving
    #               your volumes to a different gateway</a>.</p>
    #   @return [String]
    # @!attribute volume_size_in_bytes
    #   <p>The size of the volume in bytes.</p>
    #   @return [Integer]
    # @!attribute volume_progress
    #   <p>Represents the percentage complete if the volume is restoring or bootstrapping that
    #            represents the percent of data transferred. This field does not appear in the response if
    #            the stored volume is not restoring or bootstrapping.</p>
    #   @return [Float]
    # @!attribute volume_disk_id
    #   <p>The ID of the local disk that was specified in the <a>CreateStorediSCSIVolume</a> operation.</p>
    #   @return [String]
    # @!attribute source_snapshot_id
    #   <p>If the stored volume was created from a snapshot, this field contains the snapshot ID
    #            used, e.g. snap-78e22663. Otherwise, this field is not included.</p>
    #   @return [String]
    # @!attribute preserved_existing_data
    #   <p>Indicates if when the stored volume was created, existing data on the underlying local
    #            disk was preserved.</p>
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    #   @return [Boolean]
    # @!attribute volumei_scsi_attributes
    #   <p>An <a>VolumeiSCSIAttributes</a> object that represents a collection of iSCSI
    #            attributes for one stored volume.</p>
    #   @return [Types::VolumeiSCSIAttributes]
    # @!attribute created_date
    #   <p>The date the volume was created. Volumes created prior to March 28, 2017 don’t have this
    #            timestamp.</p>
    #   @return [Time]
    # @!attribute volume_used_in_bytes
    #   <p>The size of the data stored on the volume in bytes. This value is calculated based on
    #            the number of blocks that are touched, instead of the actual amount of data written. This
    #            value can be useful for sequential write patterns but less accurate for random write
    #            patterns. <code>VolumeUsedInBytes</code> is different from the compressed size of the
    #            volume, which is the value that is used to calculate your bill.</p>
    #            <note>
    #               <p>This value is not available for volumes created prior to May 13, 2015, until you
    #               store data on the volume.</p>
    #            </note>
    #   @return [Integer]
    # @!attribute kms_key
    #   <p>Optional. The Amazon Resource Name (ARN) of a symmetric customer master key (CMK) used
    #            for Amazon S3 server-side encryption. Storage Gateway does not support asymmetric
    #            CMKs. This value must be set if <code>KMSEncrypted</code> is <code>true</code>, or if
    #               <code>EncryptionType</code> is <code>SseKms</code> or <code>DsseKms</code>.</p>
    #   @return [String]
    # @!attribute target_name
    #   <p>The name of the iSCSI target used by an initiator to connect to a volume and used as a
    #            suffix for the target ARN. For example, specifying <code>TargetName</code> as
    #               <i>myvolume</i> results in the target ARN of
    #               <code>arn:aws:storagegateway:us-east-2:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume</code>.
    #            The target name must be unique across all volumes on a gateway.</p>
    #            <p>If you don't specify a value, Storage Gateway uses the value that was previously
    #            used for this volume as the new target name.</p>
    #   @return [String]
    class StorediSCSIVolume < Struct.new(
      nil,
      :volume_arn,
      :volume_id,
      :volume_type,
      :volume_status,
      :volume_attachment_status,
      :volume_size_in_bytes,
      :volume_progress,
      :volume_disk_id,
      :source_snapshot_id,
      :preserved_existing_data,
      :volumei_scsi_attributes,
      :created_date,
      :volume_used_in_bytes,
      :kms_key,
      :target_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:volume_size_in_bytes] = 0 unless options.key?(:volume_size_in_bytes)
        options[:preserved_existing_data] = false unless options.key?(:preserved_existing_data)
        super
      end
    end

    # <p>A key-value pair that helps you manage, filter, and search for your resource. Allowed
    #          characters: letters, white space, and numbers, representable in UTF-8, and the following
    #          characters: + - = . _ : /.</p>
    # @!attribute key
    #   <p>Tag key. The key can't start with aws:.</p>
    #   @return [String]
    # @!attribute value
    #   <p>Value of the tag key.</p>
    #   @return [String]
    class Tag < Struct.new(
      nil,
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a virtual tape object.</p>
    # @!attribute tape_arn
    #   <p>The Amazon Resource Name (ARN) of the virtual tape.</p>
    #   @return [String]
    # @!attribute tape_barcode
    #   <p>The barcode that identifies a specific virtual tape.</p>
    #   @return [String]
    # @!attribute tape_created_date
    #   <p>The date the virtual tape was created.</p>
    #   @return [Time]
    # @!attribute tape_size_in_bytes
    #   <p>The size, in bytes, of the virtual tape capacity.</p>
    #   @return [Integer]
    # @!attribute tape_status
    #   <p>The current state of the virtual tape.</p>
    #   @return [String]
    # @!attribute vtl_device
    #   <p>The virtual tape library (VTL) device that the virtual tape is associated with.</p>
    #   @return [String]
    # @!attribute progress
    #   <p>For archiving virtual tapes, indicates how much data remains to be uploaded before
    #            archiving is complete.</p>
    #            <p>Range: 0 (not started) to 100 (complete).</p>
    #   @return [Float]
    # @!attribute tape_used_in_bytes
    #   <p>The size, in bytes, of data stored on the virtual tape.</p>
    #            <note>
    #               <p>This value is not available for tapes created prior to May 13, 2015.</p>
    #            </note>
    #   @return [Integer]
    # @!attribute kms_key
    #   <p>Optional. The Amazon Resource Name (ARN) of a symmetric customer master key (CMK) used
    #            for Amazon S3 server-side encryption. Storage Gateway does not support asymmetric
    #            CMKs. This value must be set if <code>KMSEncrypted</code> is <code>true</code>, or if
    #               <code>EncryptionType</code> is <code>SseKms</code> or <code>DsseKms</code>.</p>
    #   @return [String]
    # @!attribute pool_id
    #   <p>The ID of the pool that contains tapes that will be archived. The tapes in this pool are
    #            archived in the S3 storage class that is associated with the pool. When you use your backup
    #            application to eject the tape, the tape is archived directly into the storage class (S3
    #            Glacier or S3 Glacier Deep Archive) that corresponds to the pool.</p>
    #   @return [String]
    # @!attribute worm
    #   <p>If the tape is archived as write-once-read-many (WORM), this value is
    #            <code>true</code>.</p>
    #   @return [Boolean]
    # @!attribute retention_start_date
    #   <p>The date that the tape is first archived with tape retention lock enabled.</p>
    #   @return [Time]
    # @!attribute pool_entry_date
    #   <p>The date that the tape enters a custom tape pool.</p>
    #   @return [Time]
    class Tape < Struct.new(
      nil,
      :tape_arn,
      :tape_barcode,
      :tape_created_date,
      :tape_size_in_bytes,
      :tape_status,
      :vtl_device,
      :progress,
      :tape_used_in_bytes,
      :kms_key,
      :pool_id,
      :worm,
      :retention_start_date,
      :pool_entry_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:worm] = false unless options.key?(:worm)
        super
      end
    end

    # <p>Represents a virtual tape that is archived in the virtual tape shelf (VTS).</p>
    # @!attribute tape_arn
    #   <p>The Amazon Resource Name (ARN) of an archived virtual tape.</p>
    #   @return [String]
    # @!attribute tape_barcode
    #   <p>The barcode that identifies the archived virtual tape.</p>
    #   @return [String]
    # @!attribute tape_created_date
    #   <p>The date the virtual tape was created.</p>
    #   @return [Time]
    # @!attribute tape_size_in_bytes
    #   <p>The size, in bytes, of the archived virtual tape.</p>
    #   @return [Integer]
    # @!attribute completion_time
    #   <p>The time that the archiving of the virtual tape was completed.</p>
    #            <p>The default timestamp format is in the ISO8601 extended YYYY-MM-DD'T'HH:MM:SS'Z'
    #            format.</p>
    #   @return [Time]
    # @!attribute retrieved_to
    #   <p>The Amazon Resource Name (ARN) of the tape gateway that the virtual tape is being
    #            retrieved to.</p>
    #            <p>The virtual tape is retrieved from the virtual tape shelf (VTS).</p>
    #   @return [String]
    # @!attribute tape_status
    #   <p>The current state of the archived virtual tape.</p>
    #   @return [String]
    # @!attribute tape_used_in_bytes
    #   <p>The size, in bytes, of data stored on the virtual tape.</p>
    #            <note>
    #               <p>This value is not available for tapes created prior to May 13, 2015.</p>
    #            </note>
    #   @return [Integer]
    # @!attribute kms_key
    #   <p>Optional. The Amazon Resource Name (ARN) of a symmetric customer master key (CMK) used
    #            for Amazon S3 server-side encryption. Storage Gateway does not support asymmetric
    #            CMKs. This value must be set if <code>KMSEncrypted</code> is <code>true</code>, or if
    #               <code>EncryptionType</code> is <code>SseKms</code> or <code>DsseKms</code>.</p>
    #   @return [String]
    # @!attribute pool_id
    #   <p>The ID of the pool that was used to archive the tape. The tapes in this pool are
    #            archived in the S3 storage class that is associated with the pool.</p>
    #   @return [String]
    # @!attribute worm
    #   <p>Set to <code>true</code> if the archived tape is stored as write-once-read-many
    #            (WORM).</p>
    #   @return [Boolean]
    # @!attribute retention_start_date
    #   <p>If the archived tape is subject to tape retention lock, the date that the archived tape
    #            started being retained.</p>
    #   @return [Time]
    # @!attribute pool_entry_date
    #   <p>The time that the tape entered the custom tape pool.</p>
    #            <p>The default timestamp format is in the ISO8601 extended YYYY-MM-DD'T'HH:MM:SS'Z'
    #            format.</p>
    #   @return [Time]
    class TapeArchive < Struct.new(
      nil,
      :tape_arn,
      :tape_barcode,
      :tape_created_date,
      :tape_size_in_bytes,
      :completion_time,
      :retrieved_to,
      :tape_status,
      :tape_used_in_bytes,
      :kms_key,
      :pool_id,
      :worm,
      :retention_start_date,
      :pool_entry_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:worm] = false unless options.key?(:worm)
        super
      end
    end

    # <p>Describes a virtual tape.</p>
    # @!attribute tape_arn
    #   <p>The Amazon Resource Name (ARN) of a virtual tape.</p>
    #   @return [String]
    # @!attribute tape_barcode
    #   <p>The barcode that identifies a specific virtual tape.</p>
    #   @return [String]
    # @!attribute tape_size_in_bytes
    #   <p>The size, in bytes, of a virtual tape.</p>
    #   @return [Integer]
    # @!attribute tape_status
    #   <p>The status of the tape.</p>
    #   @return [String]
    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute pool_id
    #   <p>The ID of the pool that you want to add your tape to for archiving. The tape in this
    #            pool is archived in the S3 storage class that is associated with the pool. When you use
    #            your backup application to eject the tape, the tape is archived directly into the storage
    #            class (S3 Glacier or S3 Glacier Deep Archive) that corresponds to the pool.</p>
    #   @return [String]
    # @!attribute retention_start_date
    #   <p>The date that the tape became subject to tape retention lock.</p>
    #   @return [Time]
    # @!attribute pool_entry_date
    #   <p>The date that the tape entered the custom tape pool with tape retention lock
    #            enabled.</p>
    #   @return [Time]
    class TapeInfo < Struct.new(
      nil,
      :tape_arn,
      :tape_barcode,
      :tape_size_in_bytes,
      :tape_status,
      :gateway_arn,
      :pool_id,
      :retention_start_date,
      :pool_entry_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a recovery point.</p>
    # @!attribute tape_arn
    #   <p>The Amazon Resource Name (ARN) of the virtual tape.</p>
    #   @return [String]
    # @!attribute tape_recovery_point_time
    #   <p>The time when the point-in-time view of the virtual tape was replicated for later
    #            recovery.</p>
    #            <p>The default timestamp format of the tape recovery point time is in the ISO8601 extended
    #            YYYY-MM-DD'T'HH:MM:SS'Z' format.</p>
    #   @return [Time]
    # @!attribute tape_size_in_bytes
    #   <p>The size, in bytes, of the virtual tapes to recover.</p>
    #   @return [Integer]
    # @!attribute tape_status
    #   <p>The status of the virtual tapes.</p>
    #   @return [String]
    class TapeRecoveryPointInfo < Struct.new(
      nil,
      :tape_arn,
      :tape_recovery_point_time,
      :tape_size_in_bytes,
      :tape_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute automatic_tape_creation_rules
    #   <p>An automatic tape creation policy consists of a list of automatic tape creation rules.
    #            The rules determine when and how to automatically create new tapes.</p>
    #   @return [Array<Types::AutomaticTapeCreationRule>]
    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    class UpdateAutomaticTapeCreationPolicyInput < Struct.new(
      nil,
      :automatic_tape_creation_rules,
      :gateway_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    class UpdateAutomaticTapeCreationPolicyOutput < Struct.new(
      nil,
      :gateway_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A JSON object containing one or more of the following fields:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>UpdateBandwidthRateLimitInput$AverageDownloadRateLimitInBitsPerSec</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>UpdateBandwidthRateLimitInput$AverageUploadRateLimitInBitsPerSec</a>
    #                </p>
    #             </li>
    #          </ul>
    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute average_upload_rate_limit_in_bits_per_sec
    #   <p>The average upload bandwidth rate limit in bits per second.</p>
    #   @return [Integer]
    # @!attribute average_download_rate_limit_in_bits_per_sec
    #   <p>The average download bandwidth rate limit in bits per second.</p>
    #   @return [Integer]
    class UpdateBandwidthRateLimitInput < Struct.new(
      nil,
      :gateway_arn,
      :average_upload_rate_limit_in_bits_per_sec,
      :average_download_rate_limit_in_bits_per_sec,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A JSON object containing the Amazon Resource Name (ARN) of the gateway whose throttle
    #          information was updated.</p>
    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    class UpdateBandwidthRateLimitOutput < Struct.new(
      nil,
      :gateway_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute bandwidth_rate_limit_intervals
    #   <p> An array containing bandwidth rate limit schedule intervals for a gateway. When no
    #            bandwidth rate limit intervals have been scheduled, the array is empty. </p>
    #   @return [Array<Types::BandwidthRateLimitInterval>]
    class UpdateBandwidthRateLimitScheduleInput < Struct.new(
      nil,
      :gateway_arn,
      :bandwidth_rate_limit_intervals,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    class UpdateBandwidthRateLimitScheduleOutput < Struct.new(
      nil,
      :gateway_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A JSON object containing one or more of the following fields:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>UpdateChapCredentialsInput$InitiatorName</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>UpdateChapCredentialsInput$SecretToAuthenticateInitiator</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>UpdateChapCredentialsInput$SecretToAuthenticateTarget</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>UpdateChapCredentialsInput$TargetARN</a>
    #                </p>
    #             </li>
    #          </ul>
    # @!attribute target_arn
    #   <p>The Amazon Resource Name (ARN) of the iSCSI volume target. Use the <a>DescribeStorediSCSIVolumes</a> operation to return the TargetARN for specified
    #            VolumeARN.</p>
    #   @return [String]
    # @!attribute secret_to_authenticate_initiator
    #   <p>The secret key that the initiator (for example, the Windows client) must provide to
    #            participate in mutual CHAP with the target.</p>
    #            <note>
    #               <p>The secret key must be between 12 and 16 bytes when encoded in UTF-8.</p>
    #            </note>
    #   @return [String]
    # @!attribute initiator_name
    #   <p>The iSCSI initiator that connects to the target.</p>
    #   @return [String]
    # @!attribute secret_to_authenticate_target
    #   <p>The secret key that the target must provide to participate in mutual CHAP with the
    #            initiator (e.g. Windows client).</p>
    #            <p>Byte constraints: Minimum bytes of 12. Maximum bytes of 16.</p>
    #            <note>
    #               <p>The secret key must be between 12 and 16 bytes when encoded in UTF-8.</p>
    #            </note>
    #   @return [String]
    class UpdateChapCredentialsInput < Struct.new(
      nil,
      :target_arn,
      :secret_to_authenticate_initiator,
      :initiator_name,
      :secret_to_authenticate_target,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A JSON object containing the following fields:</p>
    # @!attribute target_arn
    #   <p>The Amazon Resource Name (ARN) of the target. This is the same target specified in the
    #            request.</p>
    #   @return [String]
    # @!attribute initiator_name
    #   <p>The iSCSI initiator that connects to the target. This is the same initiator name
    #            specified in the request.</p>
    #   @return [String]
    class UpdateChapCredentialsOutput < Struct.new(
      nil,
      :target_arn,
      :initiator_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute file_system_association_arn
    #   <p>The Amazon Resource Name (ARN) of the file system association that you want to
    #            update.</p>
    #   @return [String]
    # @!attribute user_name
    #   <p>The user name of the user credential that has permission to access the root share D$ of
    #            the Amazon FSx file system. The user account must belong to the Amazon FSx
    #            delegated admin user group.</p>
    #   @return [String]
    # @!attribute password
    #   <p>The password of the user credential.</p>
    #   @return [String]
    # @!attribute audit_destination_arn
    #   <p>The Amazon Resource Name (ARN) of the storage used for the audit logs.</p>
    #   @return [String]
    # @!attribute cache_attributes
    #   <p>The refresh cache information for the file share or FSx file systems.</p>
    #   @return [Types::CacheAttributes]
    class UpdateFileSystemAssociationInput < Struct.new(
      nil,
      :file_system_association_arn,
      :user_name,
      :password,
      :audit_destination_arn,
      :cache_attributes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute file_system_association_arn
    #   <p>The ARN of the updated file system association.</p>
    #   @return [String]
    class UpdateFileSystemAssociationOutput < Struct.new(
      nil,
      :file_system_association_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute gateway_name
    #   <p>The name you configured for your gateway.</p>
    #   @return [String]
    # @!attribute gateway_timezone
    #   <p>A value that indicates the time zone of the gateway.</p>
    #   @return [String]
    # @!attribute cloud_watch_log_group_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon CloudWatch log group that you want to use
    #            to monitor and log events in the gateway.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/WhatIsCloudWatchLogs.html">What is Amazon CloudWatch
    #               Logs?</a>
    #            </p>
    #   @return [String]
    # @!attribute gateway_capacity
    #   <p>Specifies the size of the gateway's metadata cache. This setting impacts gateway
    #            performance and hardware recommendations. For more information, see <a href="https://docs.aws.amazon.com/filegateway/latest/files3/performance-multiple-file-shares.html">Performance guidance for gateways with multiple file shares</a>
    #            in the <i>Amazon S3 File Gateway User Guide</i>.</p>
    #   @return [String]
    class UpdateGatewayInformationInput < Struct.new(
      nil,
      :gateway_arn,
      :gateway_name,
      :gateway_timezone,
      :cloud_watch_log_group_arn,
      :gateway_capacity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A JSON object containing the Amazon Resource Name (ARN) of the gateway that was
    #          updated.</p>
    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute gateway_name
    #   <p>The name you configured for your gateway.</p>
    #   @return [String]
    class UpdateGatewayInformationOutput < Struct.new(
      nil,
      :gateway_arn,
      :gateway_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A JSON object containing the Amazon Resource Name (ARN) of the gateway to update.</p>
    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    class UpdateGatewaySoftwareNowInput < Struct.new(
      nil,
      :gateway_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A JSON object containing the Amazon Resource Name (ARN) of the gateway that was
    #          updated.</p>
    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    class UpdateGatewaySoftwareNowOutput < Struct.new(
      nil,
      :gateway_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A JSON object containing the following fields:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>UpdateMaintenanceStartTimeInput$SoftwareUpdatePreferences</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>UpdateMaintenanceStartTimeInput$DayOfMonth</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>UpdateMaintenanceStartTimeInput$DayOfWeek</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>UpdateMaintenanceStartTimeInput$HourOfDay</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>UpdateMaintenanceStartTimeInput$MinuteOfHour</a>
    #                </p>
    #             </li>
    #          </ul>
    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute hour_of_day
    #   <p>The hour component of the maintenance start time represented as <i>hh</i>,
    #            where <i>hh</i> is the hour (00 to 23). The hour of the day is in the time
    #            zone of the gateway.</p>
    #   @return [Integer]
    # @!attribute minute_of_hour
    #   <p>The minute component of the maintenance start time represented as
    #               <i>mm</i>, where <i>mm</i> is the minute (00 to 59). The
    #            minute of the hour is in the time zone of the gateway.</p>
    #   @return [Integer]
    # @!attribute day_of_week
    #   <p>The day of the week component of the maintenance start time week represented as an
    #            ordinal number from 0 to 6, where 0 represents Sunday and 6 represents Saturday.</p>
    #   @return [Integer]
    # @!attribute day_of_month
    #   <p>The day of the month component of the maintenance start time represented as an ordinal
    #            number from 1 to 28, where 1 represents the first day of the month. It is not possible to
    #            set the maintenance schedule to start on days 29 through 31.</p>
    #   @return [Integer]
    # @!attribute software_update_preferences
    #   <p>A set of variables indicating the software update preferences for the gateway.</p>
    #            <p>Includes <code>AutomaticUpdatePolicy</code> field with the following inputs:</p>
    #            <p>
    #               <code>ALL_VERSIONS</code> - Enables regular gateway maintenance updates.</p>
    #            <p>
    #               <code>EMERGENCY_VERSIONS_ONLY</code> - Disables regular gateway maintenance updates. The
    #            gateway will still receive emergency version updates on rare occasions if necessary to
    #            remedy highly critical security or durability issues. You will be notified before an
    #            emergency version update is applied. These updates are applied during your gateway's
    #            scheduled maintenance window.</p>
    #   @return [Types::SoftwareUpdatePreferences]
    class UpdateMaintenanceStartTimeInput < Struct.new(
      nil,
      :gateway_arn,
      :hour_of_day,
      :minute_of_hour,
      :day_of_week,
      :day_of_month,
      :software_update_preferences,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A JSON object containing the Amazon Resource Name (ARN) of the gateway whose maintenance
    #          start time is updated.</p>
    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    class UpdateMaintenanceStartTimeOutput < Struct.new(
      nil,
      :gateway_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>UpdateNFSFileShareInput</p>
    # @!attribute file_share_arn
    #   <p>The Amazon Resource Name (ARN) of the file share to be updated.</p>
    #   @return [String]
    # @!attribute encryption_type
    #   <p>A value that specifies the type of server-side encryption that the file share will use
    #            for the data that it stores in Amazon S3.</p>
    #            <note>
    #               <p>We recommend using <code>EncryptionType</code> instead of <code>KMSEncrypted</code>
    #               to set the file share encryption method. You do not need to provide values for both
    #               parameters.</p>
    #               <p>If values for both parameters exist in the same request, then the specified
    #               encryption methods must not conflict. For example, if <code>EncryptionType</code> is
    #                  <code>SseS3</code>, then <code>KMSEncrypted</code> must be <code>false</code>. If
    #                  <code>EncryptionType</code> is <code>SseKms</code> or <code>DsseKms</code>, then
    #                  <code>KMSEncrypted</code> must be <code>true</code>.</p>
    #            </note>
    #   @return [String]
    # @!attribute kms_encrypted
    #   <p>Optional. Set to <code>true</code> to use Amazon S3 server-side encryption with
    #            your own KMS key (SSE-KMS), or <code>false</code> to use a key managed by
    #               Amazon S3 (SSE-S3). To use dual-layer encryption (DSSE-KMS), set the
    #               <code>EncryptionType</code> parameter instead.</p>
    #            <note>
    #               <p>We recommend using <code>EncryptionType</code> instead of <code>KMSEncrypted</code>
    #               to set the file share encryption method. You do not need to provide values for both
    #               parameters.</p>
    #               <p>If values for both parameters exist in the same request, then the specified
    #               encryption methods must not conflict. For example, if <code>EncryptionType</code> is
    #                  <code>SseS3</code>, then <code>KMSEncrypted</code> must be <code>false</code>. If
    #                  <code>EncryptionType</code> is <code>SseKms</code> or <code>DsseKms</code>, then
    #                  <code>KMSEncrypted</code> must be <code>true</code>.</p>
    #            </note>
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    #   @deprecated
    #     KMSEncrypted is deprecated, use EncryptionType instead.
    #   @return [Boolean]
    # @!attribute kms_key
    #   <p>Optional. The Amazon Resource Name (ARN) of a symmetric customer master key (CMK) used
    #            for Amazon S3 server-side encryption. Storage Gateway does not support asymmetric
    #            CMKs. This value must be set if <code>KMSEncrypted</code> is <code>true</code>, or if
    #               <code>EncryptionType</code> is <code>SseKms</code> or <code>DsseKms</code>.</p>
    #   @return [String]
    # @!attribute nfs_file_share_defaults
    #   <p>The default values for the file share. Optional.</p>
    #   @return [Types::NFSFileShareDefaults]
    # @!attribute default_storage_class
    #   <p>The default storage class for objects put into an Amazon S3 bucket by the S3
    #            File Gateway. The default value is <code>S3_STANDARD</code>. Optional.</p>
    #            <p>Valid Values: <code>S3_STANDARD</code> | <code>S3_INTELLIGENT_TIERING</code> |
    #               <code>S3_STANDARD_IA</code> | <code>S3_ONEZONE_IA</code>
    #            </p>
    #   @return [String]
    # @!attribute object_acl
    #   <p>A value that sets the access control list (ACL) permission for objects in the S3 bucket
    #            that a S3 File Gateway puts objects into. The default value is <code>private</code>.</p>
    #   @return [String]
    # @!attribute client_list
    #   <p>The list of clients that are allowed to access the S3 File Gateway. The list must
    #            contain either valid IPv4/IPv6 addresses or valid CIDR blocks.</p>
    #   @return [Array<String>]
    # @!attribute squash
    #   <p>The user mapped to anonymous user.</p>
    #            <p>Valid values are the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>RootSquash</code>: Only root is mapped to anonymous user.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NoSquash</code>: No one is mapped to anonymous user.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AllSquash</code>: Everyone is mapped to anonymous user.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute read_only
    #   <p>A value that sets the write status of a file share. Set this value to <code>true</code>
    #            to set the write status to read-only, otherwise set to <code>false</code>.</p>
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    #   @return [Boolean]
    # @!attribute guess_mime_type_enabled
    #   <p>A value that enables guessing of the MIME type for uploaded objects based on file
    #            extensions. Set this value to <code>true</code> to enable MIME type guessing, otherwise set
    #            to <code>false</code>. The default value is <code>true</code>.</p>
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    #   @return [Boolean]
    # @!attribute requester_pays
    #   <p>A value that sets who pays the cost of the request and the cost associated with data
    #            download from the S3 bucket. If this value is set to <code>true</code>, the requester pays
    #            the costs; otherwise, the S3 bucket owner pays. However, the S3 bucket owner always pays
    #            the cost of storing data.</p>
    #            <note>
    #               <p>
    #                  <code>RequesterPays</code> is a configuration for the S3 bucket that backs the file
    #               share, so make sure that the configuration on the file share is the same as the S3
    #               bucket configuration.</p>
    #            </note>
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    #   @return [Boolean]
    # @!attribute file_share_name
    #   <p>The name of the file share. Optional.</p>
    #            <note>
    #               <p>
    #                  <code>FileShareName</code> must be set if an S3 prefix name is set in
    #                  <code>LocationARN</code>, or if an access point or access point alias is used.</p>
    #               <p>A valid NFS file share name can only contain the following characters:
    #                  <code>a</code>-<code>z</code>, <code>A</code>-<code>Z</code>,
    #                  <code>0</code>-<code>9</code>, <code>-</code>, <code>.</code>, and
    #               <code>_</code>.</p>
    #            </note>
    #   @return [String]
    # @!attribute cache_attributes
    #   <p>Specifies refresh cache information for the file share.</p>
    #   @return [Types::CacheAttributes]
    # @!attribute notification_policy
    #   <p>The notification policy of the file share. <code>SettlingTimeInSeconds</code> controls
    #            the number of seconds to wait after the last point in time a client wrote to a file before
    #            generating an <code>ObjectUploaded</code> notification. Because clients can make many small
    #            writes to files, it's best to set this parameter for as long as possible to avoid
    #            generating multiple notifications for the same file in a small time period.</p>
    #            <note>
    #               <p>
    #                  <code>SettlingTimeInSeconds</code> has no effect on the timing of the object
    #               uploading to Amazon S3, only the timing of the notification.</p>
    #               <p>This setting is not meant to specify an exact time at which the notification will be
    #               sent. In some cases, the gateway might require more than the specified delay time to
    #               generate and send notifications.</p>
    #            </note>
    #            <p>The following example sets <code>NotificationPolicy</code> on with
    #               <code>SettlingTimeInSeconds</code> set to 60.</p>
    #            <p>
    #               <code>{\"Upload\": {\"SettlingTimeInSeconds\": 60}}</code>
    #            </p>
    #            <p>The following example sets <code>NotificationPolicy</code> off.</p>
    #            <p>
    #               <code>{}</code>
    #            </p>
    #   @return [String]
    # @!attribute audit_destination_arn
    #   <p>The Amazon Resource Name (ARN) of the storage used for audit logs.</p>
    #   @return [String]
    class UpdateNFSFileShareInput < Struct.new(
      nil,
      :file_share_arn,
      :encryption_type,
      :kms_encrypted,
      :kms_key,
      :nfs_file_share_defaults,
      :default_storage_class,
      :object_acl,
      :client_list,
      :squash,
      :read_only,
      :guess_mime_type_enabled,
      :requester_pays,
      :file_share_name,
      :cache_attributes,
      :notification_policy,
      :audit_destination_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>UpdateNFSFileShareOutput</p>
    # @!attribute file_share_arn
    #   <p>The Amazon Resource Name (ARN) of the updated file share.</p>
    #   @return [String]
    class UpdateNFSFileShareOutput < Struct.new(
      nil,
      :file_share_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>UpdateSMBFileShareInput</p>
    # @!attribute file_share_arn
    #   <p>The Amazon Resource Name (ARN) of the SMB file share that you want to update.</p>
    #   @return [String]
    # @!attribute encryption_type
    #   <p>A value that specifies the type of server-side encryption that the file share will use
    #            for the data that it stores in Amazon S3.</p>
    #            <note>
    #               <p>We recommend using <code>EncryptionType</code> instead of <code>KMSEncrypted</code>
    #               to set the file share encryption method. You do not need to provide values for both
    #               parameters.</p>
    #               <p>If values for both parameters exist in the same request, then the specified
    #               encryption methods must not conflict. For example, if <code>EncryptionType</code> is
    #                  <code>SseS3</code>, then <code>KMSEncrypted</code> must be <code>false</code>. If
    #                  <code>EncryptionType</code> is <code>SseKms</code> or <code>DsseKms</code>, then
    #                  <code>KMSEncrypted</code> must be <code>true</code>.</p>
    #            </note>
    #   @return [String]
    # @!attribute kms_encrypted
    #   <p>Optional. Set to <code>true</code> to use Amazon S3 server-side encryption with
    #            your own KMS key (SSE-KMS), or <code>false</code> to use a key managed by
    #               Amazon S3 (SSE-S3). To use dual-layer encryption (DSSE-KMS), set the
    #               <code>EncryptionType</code> parameter instead.</p>
    #            <note>
    #               <p>We recommend using <code>EncryptionType</code> instead of <code>KMSEncrypted</code>
    #               to set the file share encryption method. You do not need to provide values for both
    #               parameters.</p>
    #               <p>If values for both parameters exist in the same request, then the specified
    #               encryption methods must not conflict. For example, if <code>EncryptionType</code> is
    #                  <code>SseS3</code>, then <code>KMSEncrypted</code> must be <code>false</code>. If
    #                  <code>EncryptionType</code> is <code>SseKms</code> or <code>DsseKms</code>, then
    #                  <code>KMSEncrypted</code> must be <code>true</code>.</p>
    #            </note>
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    #   @deprecated
    #     KMSEncrypted is deprecated, use EncryptionType instead.
    #   @return [Boolean]
    # @!attribute kms_key
    #   <p>Optional. The Amazon Resource Name (ARN) of a symmetric customer master key (CMK) used
    #            for Amazon S3 server-side encryption. Storage Gateway does not support asymmetric
    #            CMKs. This value must be set if <code>KMSEncrypted</code> is <code>true</code>, or if
    #               <code>EncryptionType</code> is <code>SseKms</code> or <code>DsseKms</code>.</p>
    #   @return [String]
    # @!attribute default_storage_class
    #   <p>The default storage class for objects put into an Amazon S3 bucket by the S3
    #            File Gateway. The default value is <code>S3_STANDARD</code>. Optional.</p>
    #            <p>Valid Values: <code>S3_STANDARD</code> | <code>S3_INTELLIGENT_TIERING</code> |
    #               <code>S3_STANDARD_IA</code> | <code>S3_ONEZONE_IA</code>
    #            </p>
    #   @return [String]
    # @!attribute object_acl
    #   <p>A value that sets the access control list (ACL) permission for objects in the S3 bucket
    #            that a S3 File Gateway puts objects into. The default value is <code>private</code>.</p>
    #   @return [String]
    # @!attribute read_only
    #   <p>A value that sets the write status of a file share. Set this value to <code>true</code>
    #            to set write status to read-only, otherwise set to <code>false</code>.</p>
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    #   @return [Boolean]
    # @!attribute guess_mime_type_enabled
    #   <p>A value that enables guessing of the MIME type for uploaded objects based on file
    #            extensions. Set this value to <code>true</code> to enable MIME type guessing, otherwise set
    #            to <code>false</code>. The default value is <code>true</code>.</p>
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    #   @return [Boolean]
    # @!attribute requester_pays
    #   <p>A value that sets who pays the cost of the request and the cost associated with data
    #            download from the S3 bucket. If this value is set to <code>true</code>, the requester pays
    #            the costs; otherwise, the S3 bucket owner pays. However, the S3 bucket owner always pays
    #            the cost of storing data.</p>
    #            <note>
    #               <p>
    #                  <code>RequesterPays</code> is a configuration for the S3 bucket that backs the file
    #               share, so make sure that the configuration on the file share is the same as the S3
    #               bucket configuration.</p>
    #            </note>
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    #   @return [Boolean]
    # @!attribute smbacl_enabled
    #   <p>Set this value to <code>true</code> to enable access control list (ACL) on the SMB file
    #            share. Set it to <code>false</code> to map file and directory permissions to the POSIX
    #            permissions.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/filegateway/latest/files3/smb-acl.html">Using Windows ACLs to limit SMB file share
    #               access</a> in the <i>Amazon S3 File Gateway User
    #            Guide</i>.</p>
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    #   @return [Boolean]
    # @!attribute access_based_enumeration
    #   <p>The files and folders on this share will only be visible to users with read
    #            access.</p>
    #   @return [Boolean]
    # @!attribute admin_user_list
    #   <p>A list of users or groups in the Active Directory that have administrator rights to the
    #            file share. A group must be prefixed with the @ character. Acceptable formats include:
    #               <code>DOMAIN\User1</code>, <code>user1</code>, <code>@group1</code>, and
    #               <code>@DOMAIN\group1</code>. Can only be set if Authentication is set to
    #               <code>ActiveDirectory</code>.</p>
    #   @return [Array<String>]
    # @!attribute valid_user_list
    #   <p>A list of users or groups in the Active Directory that are allowed to access the file
    #            share. A group must be prefixed with the @ character. Acceptable formats include:
    #               <code>DOMAIN\User1</code>, <code>user1</code>, <code>@group1</code>, and
    #               <code>@DOMAIN\group1</code>. Can only be set if Authentication is set to
    #               <code>ActiveDirectory</code>.</p>
    #   @return [Array<String>]
    # @!attribute invalid_user_list
    #   <p>A list of users or groups in the Active Directory that are not allowed to access the
    #            file share. A group must be prefixed with the @ character. Acceptable formats include:
    #               <code>DOMAIN\User1</code>, <code>user1</code>, <code>@group1</code>, and
    #               <code>@DOMAIN\group1</code>. Can only be set if Authentication is set to
    #               <code>ActiveDirectory</code>.</p>
    #   @return [Array<String>]
    # @!attribute audit_destination_arn
    #   <p>The Amazon Resource Name (ARN) of the storage used for audit logs.</p>
    #   @return [String]
    # @!attribute case_sensitivity
    #   <p>The case of an object name in an Amazon S3 bucket. For
    #               <code>ClientSpecified</code>, the client determines the case sensitivity. For
    #               <code>CaseSensitive</code>, the gateway determines the case sensitivity. The default
    #            value is <code>ClientSpecified</code>.</p>
    #   @return [String]
    # @!attribute file_share_name
    #   <p>The name of the file share. Optional.</p>
    #            <note>
    #               <p>
    #                  <code>FileShareName</code> must be set if an S3 prefix name is set in
    #                  <code>LocationARN</code>, or if an access point or access point alias is used.</p>
    #               <p>A valid SMB file share name cannot contain the following characters:
    #                  <code>[</code>,<code>]</code>,<code>#</code>,<code>;</code>,<code><</code>,<code>></code>,<code>:</code>,<code>"</code>,<code>\</code>,<code>/</code>,<code>|</code>,<code>?</code>,<code>*</code>,<code>+</code>,
    #               or ASCII control characters <code>1-31</code>.</p>
    #            </note>
    #   @return [String]
    # @!attribute cache_attributes
    #   <p>Specifies refresh cache information for the file share.</p>
    #   @return [Types::CacheAttributes]
    # @!attribute notification_policy
    #   <p>The notification policy of the file share. <code>SettlingTimeInSeconds</code> controls
    #            the number of seconds to wait after the last point in time a client wrote to a file before
    #            generating an <code>ObjectUploaded</code> notification. Because clients can make many small
    #            writes to files, it's best to set this parameter for as long as possible to avoid
    #            generating multiple notifications for the same file in a small time period.</p>
    #            <note>
    #               <p>
    #                  <code>SettlingTimeInSeconds</code> has no effect on the timing of the object
    #               uploading to Amazon S3, only the timing of the notification.</p>
    #               <p>This setting is not meant to specify an exact time at which the notification will be
    #               sent. In some cases, the gateway might require more than the specified delay time to
    #               generate and send notifications.</p>
    #            </note>
    #            <p>The following example sets <code>NotificationPolicy</code> on with
    #               <code>SettlingTimeInSeconds</code> set to 60.</p>
    #            <p>
    #               <code>{\"Upload\": {\"SettlingTimeInSeconds\": 60}}</code>
    #            </p>
    #            <p>The following example sets <code>NotificationPolicy</code> off.</p>
    #            <p>
    #               <code>{}</code>
    #            </p>
    #   @return [String]
    # @!attribute oplocks_enabled
    #   <p>Specifies whether opportunistic locking is enabled for the SMB file share.</p>
    #            <note>
    #               <p>Enabling opportunistic locking on case-sensitive shares is not recommended for
    #               workloads that involve access to files with the same name in different case.</p>
    #            </note>
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    #   @return [Boolean]
    class UpdateSMBFileShareInput < Struct.new(
      nil,
      :file_share_arn,
      :encryption_type,
      :kms_encrypted,
      :kms_key,
      :default_storage_class,
      :object_acl,
      :read_only,
      :guess_mime_type_enabled,
      :requester_pays,
      :smbacl_enabled,
      :access_based_enumeration,
      :admin_user_list,
      :valid_user_list,
      :invalid_user_list,
      :audit_destination_arn,
      :case_sensitivity,
      :file_share_name,
      :cache_attributes,
      :notification_policy,
      :oplocks_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>UpdateSMBFileShareOutput</p>
    # @!attribute file_share_arn
    #   <p>The Amazon Resource Name (ARN) of the updated SMB file share.</p>
    #   @return [String]
    class UpdateSMBFileShareOutput < Struct.new(
      nil,
      :file_share_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute file_shares_visible
    #   <p>The shares on this gateway appear when listing shares.</p>
    #   @return [Boolean]
    class UpdateSMBFileShareVisibilityInput < Struct.new(
      nil,
      :gateway_arn,
      :file_shares_visible,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    class UpdateSMBFileShareVisibilityOutput < Struct.new(
      nil,
      :gateway_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute smb_local_groups
    #   <p>A list of Active Directory users and groups that you want to grant special permissions
    #            for SMB file shares on the gateway.</p>
    #   @return [Types::SMBLocalGroups]
    class UpdateSMBLocalGroupsInput < Struct.new(
      nil,
      :gateway_arn,
      :smb_local_groups,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    class UpdateSMBLocalGroupsOutput < Struct.new(
      nil,
      :gateway_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute smb_security_strategy
    #   <p>Specifies the type of security strategy.</p>
    #            <p>
    #               <code>ClientSpecified</code>: If you choose this option, requests are established based
    #            on what is negotiated by the client. This option is recommended when you want to maximize
    #            compatibility across different clients in your environment. Supported only for S3 File
    #            Gateway.</p>
    #            <p>
    #               <code>MandatorySigning</code>: If you choose this option, File Gateway only allows
    #            connections from SMBv2 or SMBv3 clients that have signing enabled. This option works with
    #            SMB clients on Microsoft Windows Vista, Windows Server 2008 or newer.</p>
    #            <p>
    #               <code>MandatoryEncryption</code>: If you choose this option, File Gateway only allows
    #            connections from SMBv3 clients that have encryption enabled. This option is recommended for
    #            environments that handle sensitive data. This option works with SMB clients on Microsoft
    #            Windows 8, Windows Server 2012 or newer.</p>
    #            <p>
    #               <code>MandatoryEncryptionNoAes128</code>: If you choose this option, File Gateway only
    #            allows connections from SMBv3 clients that use 256-bit AES encryption algorithms. 128-bit
    #            algorithms are not allowed. This option is recommended for environments that handle
    #            sensitive data. It works with SMB clients on Microsoft Windows 8, Windows Server 2012, or
    #            later.</p>
    #   @return [String]
    class UpdateSMBSecurityStrategyInput < Struct.new(
      nil,
      :gateway_arn,
      :smb_security_strategy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    class UpdateSMBSecurityStrategyOutput < Struct.new(
      nil,
      :gateway_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A JSON object containing one or more of the following fields:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>UpdateSnapshotScheduleInput$Description</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>UpdateSnapshotScheduleInput$RecurrenceInHours</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>UpdateSnapshotScheduleInput$StartAt</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>UpdateSnapshotScheduleInput$VolumeARN</a>
    #                </p>
    #             </li>
    #          </ul>
    # @!attribute volume_arn
    #   <p>The Amazon Resource Name (ARN) of the volume. Use the <a>ListVolumes</a>
    #            operation to return a list of gateway volumes.</p>
    #   @return [String]
    # @!attribute start_at
    #   <p>The hour of the day at which the snapshot schedule begins represented as
    #               <i>hh</i>, where <i>hh</i> is the hour (0 to 23). The hour
    #            of the day is in the time zone of the gateway.</p>
    #   @return [Integer]
    # @!attribute recurrence_in_hours
    #   <p>Frequency of snapshots. Specify the number of hours between snapshots.</p>
    #   @return [Integer]
    # @!attribute description
    #   <p>Optional description of the snapshot that overwrites the existing description.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of up to 50 tags that can be assigned to a snapshot. Each tag is a key-value
    #            pair.</p>
    #            <note>
    #               <p>Valid characters for key and value are letters, spaces, and numbers representable in
    #               UTF-8 format, and the following special characters: + - = . _ : / @. The maximum length
    #               of a tag's key is 128 characters, and the maximum length for a tag's value is
    #               256.</p>
    #            </note>
    #   @return [Array<Types::Tag>]
    class UpdateSnapshotScheduleInput < Struct.new(
      nil,
      :volume_arn,
      :start_at,
      :recurrence_in_hours,
      :description,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A JSON object containing the Amazon Resource Name (ARN) of the updated storage
    #          volume.</p>
    # @!attribute volume_arn
    #   <p>The Amazon Resource Name (ARN) of the volume. Use the <a>ListVolumes</a>
    #            operation to return a list of gateway volumes.</p>
    #   @return [String]
    class UpdateSnapshotScheduleOutput < Struct.new(
      nil,
      :volume_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute vtl_device_arn
    #   <p>The Amazon Resource Name (ARN) of the medium changer you want to select.</p>
    #   @return [String]
    # @!attribute device_type
    #   <p>The type of medium changer you want to select.</p>
    #            <p>Valid Values: <code>STK-L700</code> | <code>AWS-Gateway-VTL</code> |
    #               <code>IBM-03584L32-0402</code>
    #            </p>
    #   @return [String]
    class UpdateVTLDeviceTypeInput < Struct.new(
      nil,
      :vtl_device_arn,
      :device_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>UpdateVTLDeviceTypeOutput</p>
    # @!attribute vtl_device_arn
    #   <p>The Amazon Resource Name (ARN) of the medium changer you have selected.</p>
    #   @return [String]
    class UpdateVTLDeviceTypeOutput < Struct.new(
      nil,
      :vtl_device_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a device object associated with a tape gateway.</p>
    # @!attribute vtl_device_arn
    #   <p>Specifies the unique Amazon Resource Name (ARN) of the device (tape drive or media
    #            changer).</p>
    #   @return [String]
    # @!attribute vtl_device_type
    #   <p>Specifies the type of device that the VTL device emulates.</p>
    #   @return [String]
    # @!attribute vtl_device_vendor
    #   <p>Specifies the vendor of the device that the VTL device object emulates.</p>
    #   @return [String]
    # @!attribute vtl_device_product_identifier
    #   <p>Specifies the model number of device that the VTL device emulates.</p>
    #   @return [String]
    # @!attribute devicei_scsi_attributes
    #   <p>A list of iSCSI information about a VTL device.</p>
    #   @return [Types::DeviceiSCSIAttributes]
    class VTLDevice < Struct.new(
      nil,
      :vtl_device_arn,
      :vtl_device_type,
      :vtl_device_vendor,
      :vtl_device_product_identifier,
      :devicei_scsi_attributes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a storage volume object.</p>
    # @!attribute volume_arn
    #   <p>The Amazon Resource Name (ARN) for the storage volume. For example, the following is a
    #            valid ARN:</p>
    #            <p>
    #               <code>arn:aws:storagegateway:us-east-2:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABB</code>
    #            </p>
    #            <p>Valid Values: 50 to 500 lowercase letters, numbers, periods (.), and hyphens (-).</p>
    #   @return [String]
    # @!attribute volume_id
    #   <p>The unique identifier assigned to the volume. This ID becomes part of the volume Amazon
    #            Resource Name (ARN), which you use as input for other operations.</p>
    #            <p>Valid Values: 50 to 500 lowercase letters, numbers, periods (.), and hyphens (-).</p>
    #   @return [String]
    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute gateway_id
    #   <p>The unique identifier assigned to your gateway during activation. This ID becomes part
    #            of the gateway Amazon Resource Name (ARN), which you use as input for other
    #            operations.</p>
    #            <p>Valid Values: 50 to 500 lowercase letters, numbers, periods (.), and hyphens (-).</p>
    #   @return [String]
    # @!attribute volume_type
    #   <p>One of the VolumeType enumeration values describing the type of the volume.</p>
    #   @return [String]
    # @!attribute volume_size_in_bytes
    #   <p>The size of the volume in bytes.</p>
    #            <p>Valid Values: 50 to 500 lowercase letters, numbers, periods (.), and hyphens (-).</p>
    #   @return [Integer]
    # @!attribute volume_attachment_status
    #   <p>One of the VolumeStatus values that indicates the state of the storage volume.</p>
    #   @return [String]
    class VolumeInfo < Struct.new(
      nil,
      :volume_arn,
      :volume_id,
      :gateway_arn,
      :gateway_id,
      :volume_type,
      :volume_size_in_bytes,
      :volume_attachment_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:volume_size_in_bytes] = 0 unless options.key?(:volume_size_in_bytes)
        super
      end
    end

    # <p>Describes a storage volume recovery point object.</p>
    # @!attribute volume_arn
    #   <p>The Amazon Resource Name (ARN) of the volume target.</p>
    #   @return [String]
    # @!attribute volume_size_in_bytes
    #   <p>The size of the volume in bytes.</p>
    #   @return [Integer]
    # @!attribute volume_usage_in_bytes
    #   <p>The size of the data stored on the volume in bytes.</p>
    #            <note>
    #               <p>This value is not available for volumes created prior to May 13, 2015, until you
    #               store data on the volume.</p>
    #            </note>
    #   @return [Integer]
    # @!attribute volume_recovery_point_time
    #   <p>The time the recovery point was taken.</p>
    #   @return [String]
    class VolumeRecoveryPointInfo < Struct.new(
      nil,
      :volume_arn,
      :volume_size_in_bytes,
      :volume_usage_in_bytes,
      :volume_recovery_point_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:volume_size_in_bytes] = 0 unless options.key?(:volume_size_in_bytes)
        options[:volume_usage_in_bytes] = 0 unless options.key?(:volume_usage_in_bytes)
        super
      end
    end

    # <p>Lists iSCSI information about a volume.</p>
    # @!attribute target_arn
    #   <p>The Amazon Resource Name (ARN) of the volume target.</p>
    #   @return [String]
    # @!attribute network_interface_id
    #   <p>The network interface identifier.</p>
    #   @return [String]
    # @!attribute network_interface_port
    #   <p>The port used to communicate with iSCSI targets.</p>
    #   @return [Integer]
    # @!attribute lun_number
    #   <p>The logical disk number.</p>
    #   @return [Integer]
    # @!attribute chap_enabled
    #   <p>Indicates whether mutual CHAP is enabled for the iSCSI target.</p>
    #   @return [Boolean]
    class VolumeiSCSIAttributes < Struct.new(
      nil,
      :target_arn,
      :network_interface_id,
      :network_interface_port,
      :lun_number,
      :chap_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:network_interface_port] = 0 unless options.key?(:network_interface_port)
        options[:chap_enabled] = false unless options.key?(:chap_enabled)
        super
      end
    end

  end
end
