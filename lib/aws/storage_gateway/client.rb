# Copyright 2011-2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"). You
# may not use this file except in compliance with the License. A copy of
# the License is located at
#
#     http://aws.amazon.com/apache2.0/
#
# or in the "license" file accompanying this file. This file is
# distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
# ANY KIND, either express or implied. See the License for the specific
# language governing permissions and limitations under the License.

module AWS
  class StorageGateway

    # Client class for AWS Storage Gateway.
    class Client < Core::JSONClient

      # @private
      CACHEABLE_REQUESTS = Set[]

      # client methods #

      # @!method activate_gateway(options = {})
      # Calls the ActivateGateway API operation.
      # @param [Hash] options
      #   * +:activation_key+ - *required* - (String)
      #   * +:gateway_name+ - *required* - (String)
      #   * +:gateway_timezone+ - *required* - (String)
      #   * +:gateway_region+ - *required* - (String)
      #   * +:gateway_type+ - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +GatewayARN+ - (String)

      # @!method add_cache(options = {})
      # Calls the AddCache API operation.
      # @param [Hash] options
      #   * +:gateway_arn+ - *required* - (String)
      #   * +:disk_ids+ - *required* - (Array<String>)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +GatewayARN+ - (String)

      # @!method add_upload_buffer(options = {})
      # Calls the AddUploadBuffer API operation.
      # @param [Hash] options
      #   * +:gateway_arn+ - *required* - (String)
      #   * +:disk_ids+ - *required* - (Array<String>)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +GatewayARN+ - (String)

      # @!method add_working_storage(options = {})
      # Calls the AddWorkingStorage API operation.
      # @param [Hash] options
      #   * +:gateway_arn+ - *required* - (String)
      #   * +:disk_ids+ - *required* - (Array<String>)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +GatewayARN+ - (String)

      # @!method create_cachedi_scsi_volume(options = {})
      # Calls the CreateCachediSCSIVolume API operation.
      # @param [Hash] options
      #   * +:gateway_arn+ - *required* - (String)
      #   * +:volume_size_in_bytes+ - *required* - (Integer)
      #   * +:snapshot_id+ - (String)
      #   * +:target_name+ - *required* - (String)
      #   * +:network_interface_id+ - *required* - (String)
      #   * +:client_token+ - *required* - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +VolumeARN+ - (String)
      #   * +TargetARN+ - (String)

      # @!method create_snapshot(options = {})
      # Calls the CreateSnapshot API operation.
      # @param [Hash] options
      #   * +:volume_arn+ - *required* - (String)
      #   * +:snapshot_description+ - *required* - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +VolumeARN+ - (String)
      #   * +SnapshotId+ - (String)

      # @!method create_snapshot_from_volume_recovery_point(options = {})
      # Calls the CreateSnapshotFromVolumeRecoveryPoint API operation.
      # @param [Hash] options
      #   * +:volume_arn+ - *required* - (String)
      #   * +:snapshot_description+ - *required* - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +SnapshotId+ - (String)
      #   * +VolumeARN+ - (String)
      #   * +VolumeRecoveryPointTime+ - (String)

      # @!method create_storedi_scsi_volume(options = {})
      # Calls the CreateStorediSCSIVolume API operation.
      # @param [Hash] options
      #   * +:gateway_arn+ - *required* - (String)
      #   * +:disk_id+ - *required* - (String)
      #   * +:snapshot_id+ - (String)
      #   * +:preserve_existing_data+ - *required* - (Boolean)
      #   * +:target_name+ - *required* - (String)
      #   * +:network_interface_id+ - *required* - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +VolumeARN+ - (String)
      #   * +VolumeSizeInBytes+ - (Integer)
      #   * +TargetARN+ - (String)

      # @!method delete_bandwidth_rate_limit(options = {})
      # Calls the DeleteBandwidthRateLimit API operation.
      # @param [Hash] options
      #   * +:gateway_arn+ - *required* - (String)
      #   * +:bandwidth_type+ - *required* - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +GatewayARN+ - (String)

      # @!method delete_chap_credentials(options = {})
      # Calls the DeleteChapCredentials API operation.
      # @param [Hash] options
      #   * +:target_arn+ - *required* - (String)
      #   * +:initiator_name+ - *required* - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +TargetARN+ - (String)
      #   * +InitiatorName+ - (String)

      # @!method delete_gateway(options = {})
      # Calls the DeleteGateway API operation.
      # @param [Hash] options
      #   * +:gateway_arn+ - *required* - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +GatewayARN+ - (String)

      # @!method delete_snapshot_schedule(options = {})
      # Calls the DeleteSnapshotSchedule API operation.
      # @param [Hash] options
      #   * +:volume_arn+ - *required* - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +VolumeARN+ - (String)

      # @!method delete_volume(options = {})
      # Calls the DeleteVolume API operation.
      # @param [Hash] options
      #   * +:volume_arn+ - *required* - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +VolumeARN+ - (String)

      # @!method describe_bandwidth_rate_limit(options = {})
      # Calls the DescribeBandwidthRateLimit API operation.
      # @param [Hash] options
      #   * +:gateway_arn+ - *required* - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +GatewayARN+ - (String)
      #   * +AverageUploadRateLimitInBitsPerSec+ - (Integer)
      #   * +AverageDownloadRateLimitInBitsPerSec+ - (Integer)

      # @!method describe_cache(options = {})
      # Calls the DescribeCache API operation.
      # @param [Hash] options
      #   * +:gateway_arn+ - *required* - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +GatewayARN+ - (String)
      #   * +DiskIds+ - (Array<String>)
      #   * +CacheAllocatedInBytes+ - (Integer)
      #   * +CacheUsedPercentage+ - (Numeric)
      #   * +CacheDirtyPercentage+ - (Numeric)
      #   * +CacheHitPercentage+ - (Numeric)
      #   * +CacheMissPercentage+ - (Numeric)

      # @!method describe_cachedi_scsi_volumes(options = {})
      # Calls the DescribeCachediSCSIVolumes API operation.
      # @param [Hash] options
      #   * +:volume_ar_ns+ - *required* - (Array<String>)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +CachediSCSIVolumes+ - (Array<Hash>)
      #     * +VolumeARN+ - (String)
      #     * +VolumeId+ - (String)
      #     * +VolumeType+ - (String)
      #     * +VolumeStatus+ - (String)
      #     * +VolumeSizeInBytes+ - (Integer)
      #     * +VolumeProgress+ - (Numeric)
      #     * +SourceSnapshotId+ - (String)
      #     * +VolumeiSCSIAttributes+ - (Hash)
      #       * +TargetARN+ - (String)
      #       * +NetworkInterfaceId+ - (String)
      #       * +NetworkInterfacePort+ - (Integer)
      #       * +LunNumber+ - (Integer)
      #       * +ChapEnabled+ - (Boolean)

      # @!method describe_chap_credentials(options = {})
      # Calls the DescribeChapCredentials API operation.
      # @param [Hash] options
      #   * +:target_arn+ - *required* - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +ChapCredentials+ - (Array<Hash>)
      #     * +TargetARN+ - (String)
      #     * +SecretToAuthenticateInitiator+ - (String)
      #     * +InitiatorName+ - (String)
      #     * +SecretToAuthenticateTarget+ - (String)

      # @!method describe_gateway_information(options = {})
      # Calls the DescribeGatewayInformation API operation.
      # @param [Hash] options
      #   * +:gateway_arn+ - *required* - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +GatewayARN+ - (String)
      #   * +GatewayId+ - (String)
      #   * +GatewayTimezone+ - (String)
      #   * +GatewayState+ - (String)
      #   * +GatewayNetworkInterfaces+ - (Array<Hash>)
      #     * +Ipv4Address+ - (String)
      #     * +MacAddress+ - (String)
      #     * +Ipv6Address+ - (String)
      #   * +GatewayType+ - (String)
      #   * +NextUpdateAvailabilityDate+ - (String)

      # @!method describe_maintenance_start_time(options = {})
      # Calls the DescribeMaintenanceStartTime API operation.
      # @param [Hash] options
      #   * +:gateway_arn+ - *required* - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +GatewayARN+ - (String)
      #   * +HourOfDay+ - (Integer)
      #   * +MinuteOfHour+ - (Integer)
      #   * +DayOfWeek+ - (Integer)
      #   * +Timezone+ - (String)

      # @!method describe_snapshot_schedule(options = {})
      # Calls the DescribeSnapshotSchedule API operation.
      # @param [Hash] options
      #   * +:volume_arn+ - *required* - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +VolumeARN+ - (String)
      #   * +StartAt+ - (Integer)
      #   * +RecurrenceInHours+ - (Integer)
      #   * +Description+ - (String)
      #   * +Timezone+ - (String)

      # @!method describe_storedi_scsi_volumes(options = {})
      # Calls the DescribeStorediSCSIVolumes API operation.
      # @param [Hash] options
      #   * +:volume_ar_ns+ - *required* - (Array<String>)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +StorediSCSIVolumes+ - (Array<Hash>)
      #     * +VolumeARN+ - (String)
      #     * +VolumeId+ - (String)
      #     * +VolumeType+ - (String)
      #     * +VolumeStatus+ - (String)
      #     * +VolumeSizeInBytes+ - (Integer)
      #     * +VolumeProgress+ - (Numeric)
      #     * +VolumeDiskId+ - (String)
      #     * +SourceSnapshotId+ - (String)
      #     * +PreservedExistingData+ - (Boolean)
      #     * +VolumeiSCSIAttributes+ - (Hash)
      #       * +TargetARN+ - (String)
      #       * +NetworkInterfaceId+ - (String)
      #       * +NetworkInterfacePort+ - (Integer)
      #       * +LunNumber+ - (Integer)
      #       * +ChapEnabled+ - (Boolean)

      # @!method describe_upload_buffer(options = {})
      # Calls the DescribeUploadBuffer API operation.
      # @param [Hash] options
      #   * +:gateway_arn+ - *required* - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +GatewayARN+ - (String)
      #   * +DiskIds+ - (Array<String>)
      #   * +UploadBufferUsedInBytes+ - (Integer)
      #   * +UploadBufferAllocatedInBytes+ - (Integer)

      # @!method describe_working_storage(options = {})
      # Calls the DescribeWorkingStorage API operation.
      # @param [Hash] options
      #   * +:gateway_arn+ - *required* - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +GatewayARN+ - (String)
      #   * +DiskIds+ - (Array<String>)
      #   * +WorkingStorageUsedInBytes+ - (Integer)
      #   * +WorkingStorageAllocatedInBytes+ - (Integer)

      # @!method list_gateways(options = {})
      # Calls the ListGateways API operation.
      # @param [Hash] options
      #   * +:marker+ - (String)
      #   * +:limit+ - (Integer)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +Gateways+ - (Array<Hash>)
      #     * +GatewayARN+ - (String)
      #   * +Marker+ - (String)

      # @!method list_local_disks(options = {})
      # Calls the ListLocalDisks API operation.
      # @param [Hash] options
      #   * +:gateway_arn+ - *required* - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +GatewayARN+ - (String)
      #   * +Disks+ - (Array<Hash>)
      #     * +DiskId+ - (String)
      #     * +DiskPath+ - (String)
      #     * +DiskNode+ - (String)
      #     * +DiskSizeInBytes+ - (Integer)
      #     * +DiskAllocationType+ - (String)
      #     * +DiskAllocationResource+ - (String)

      # @!method list_volume_recovery_points(options = {})
      # Calls the ListVolumeRecoveryPoints API operation.
      # @param [Hash] options
      #   * +:gateway_arn+ - *required* - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +GatewayARN+ - (String)
      #   * +VolumeRecoveryPointInfos+ - (Array<Hash>)
      #     * +VolumeARN+ - (String)
      #     * +VolumeSizeInBytes+ - (Integer)
      #     * +VolumeUsageInBytes+ - (Integer)
      #     * +VolumeRecoveryPointTime+ - (String)

      # @!method list_volumes(options = {})
      # Calls the ListVolumes API operation.
      # @param [Hash] options
      #   * +:gateway_arn+ - *required* - (String)
      #   * +:marker+ - (String)
      #   * +:limit+ - (Integer)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +GatewayARN+ - (String)
      #   * +Marker+ - (String)
      #   * +VolumeInfos+ - (Array<Hash>)
      #     * +VolumeARN+ - (String)
      #     * +VolumeType+ - (String)

      # @!method shutdown_gateway(options = {})
      # Calls the ShutdownGateway API operation.
      # @param [Hash] options
      #   * +:gateway_arn+ - *required* - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +GatewayARN+ - (String)

      # @!method start_gateway(options = {})
      # Calls the StartGateway API operation.
      # @param [Hash] options
      #   * +:gateway_arn+ - *required* - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +GatewayARN+ - (String)

      # @!method update_bandwidth_rate_limit(options = {})
      # Calls the UpdateBandwidthRateLimit API operation.
      # @param [Hash] options
      #   * +:gateway_arn+ - *required* - (String)
      #   * +:average_upload_rate_limit_in_bits_per_sec+ - (Integer)
      #   * +:average_download_rate_limit_in_bits_per_sec+ - (Integer)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +GatewayARN+ - (String)

      # @!method update_chap_credentials(options = {})
      # Calls the UpdateChapCredentials API operation.
      # @param [Hash] options
      #   * +:target_arn+ - *required* - (String)
      #   * +:secret_to_authenticate_initiator+ - *required* - (String)
      #   * +:initiator_name+ - *required* - (String)
      #   * +:secret_to_authenticate_target+ - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +TargetARN+ - (String)
      #   * +InitiatorName+ - (String)

      # @!method update_gateway_information(options = {})
      # Calls the UpdateGatewayInformation API operation.
      # @param [Hash] options
      #   * +:gateway_arn+ - *required* - (String)
      #   * +:gateway_name+ - (String)
      #   * +:gateway_timezone+ - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +GatewayARN+ - (String)

      # @!method update_gateway_software_now(options = {})
      # Calls the UpdateGatewaySoftwareNow API operation.
      # @param [Hash] options
      #   * +:gateway_arn+ - *required* - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +GatewayARN+ - (String)

      # @!method update_maintenance_start_time(options = {})
      # Calls the UpdateMaintenanceStartTime API operation.
      # @param [Hash] options
      #   * +:gateway_arn+ - *required* - (String)
      #   * +:hour_of_day+ - *required* - (Integer)
      #   * +:minute_of_hour+ - *required* - (Integer)
      #   * +:day_of_week+ - *required* - (Integer)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +GatewayARN+ - (String)

      # @!method update_snapshot_schedule(options = {})
      # Calls the UpdateSnapshotSchedule API operation.
      # @param [Hash] options
      #   * +:volume_arn+ - *required* - (String)
      #   * +:start_at+ - *required* - (Integer)
      #   * +:recurrence_in_hours+ - *required* - (Integer)
      #   * +:description+ - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +VolumeARN+ - (String)

      # end client methods #

      define_client_methods('2012-06-30')

    end
  end
end
