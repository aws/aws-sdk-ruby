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

      # @api private
      CACHEABLE_REQUESTS = Set[]

      # client methods #

      # @!method activate_gateway(options = {})
      # Calls the ActivateGateway API operation.
      # @param [Hash] options
      #   * `:activation_key` - *required* - (String)
      #   * `:gateway_name` - *required* - (String)
      #   * `:gateway_timezone` - *required* - (String) Valid values include:
      #     * `GMT-12:00`
      #     * `GMT-11:00`
      #     * `GMT-10:00`
      #     * `GMT-9:00`
      #     * `GMT-8:00`
      #     * `GMT-7:00`
      #     * `GMT-6:00`
      #     * `GMT-5:00`
      #     * `GMT-4:00`
      #     * `GMT-3:30`
      #     * `GMT-3:00`
      #     * `GMT-2:00`
      #     * `GMT-1:00`
      #     * `GMT`
      #     * `GMT+1:00`
      #     * `GMT+2:00`
      #     * `GMT+3:00`
      #     * `GMT+3:30`
      #     * `GMT+4:00`
      #     * `GMT+4:30`
      #     * `GMT+5:00`
      #     * `GMT+5:30`
      #     * `GMT+5:45`
      #     * `GMT+6:00`
      #     * `GMT+7:00`
      #     * `GMT+8:00`
      #     * `GMT+9:00`
      #     * `GMT+9:30`
      #     * `GMT+10:00`
      #     * `GMT+11:00`
      #     * `GMT+12:00`
      #   * `:gateway_region` - *required* - (String)
      #   * `:gateway_type` - (String) Valid values include:
      #     * `STORED`
      #     * `CACHED`
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:gateway_arn` - (String)

      # @!method add_cache(options = {})
      # Calls the AddCache API operation.
      # @param [Hash] options
      #   * `:gateway_arn` - *required* - (String)
      #   * `:disk_ids` - *required* - (Array<String>)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:gateway_arn` - (String)

      # @!method add_upload_buffer(options = {})
      # Calls the AddUploadBuffer API operation.
      # @param [Hash] options
      #   * `:gateway_arn` - *required* - (String)
      #   * `:disk_ids` - *required* - (Array<String>)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:gateway_arn` - (String)

      # @!method add_working_storage(options = {})
      # Calls the AddWorkingStorage API operation.
      # @param [Hash] options
      #   * `:gateway_arn` - *required* - (String)
      #   * `:disk_ids` - *required* - (Array<String>)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:gateway_arn` - (String)

      # @!method create_cachedi_scsi_volume(options = {})
      # Calls the CreateCachediSCSIVolume API operation.
      # @param [Hash] options
      #   * `:gateway_arn` - *required* - (String)
      #   * `:volume_size_in_bytes` - *required* - (Integer)
      #   * `:snapshot_id` - (String)
      #   * `:target_name` - *required* - (String)
      #   * `:network_interface_id` - *required* - (String)
      #   * `:client_token` - *required* - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:volume_arn` - (String)
      #   * `:target_arn` - (String)

      # @!method create_snapshot(options = {})
      # Calls the CreateSnapshot API operation.
      # @param [Hash] options
      #   * `:volume_arn` - *required* - (String)
      #   * `:snapshot_description` - *required* - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:volume_arn` - (String)
      #   * `:snapshot_id` - (String)

      # @!method create_snapshot_from_volume_recovery_point(options = {})
      # Calls the CreateSnapshotFromVolumeRecoveryPoint API operation.
      # @param [Hash] options
      #   * `:volume_arn` - *required* - (String)
      #   * `:snapshot_description` - *required* - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:snapshot_id` - (String)
      #   * `:volume_arn` - (String)
      #   * `:volume_recovery_point_time` - (String)

      # @!method create_storedi_scsi_volume(options = {})
      # Calls the CreateStorediSCSIVolume API operation.
      # @param [Hash] options
      #   * `:gateway_arn` - *required* - (String)
      #   * `:disk_id` - *required* - (String)
      #   * `:snapshot_id` - (String)
      #   * `:preserve_existing_data` - *required* - (Boolean)
      #   * `:target_name` - *required* - (String)
      #   * `:network_interface_id` - *required* - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:volume_arn` - (String)
      #   * `:volume_size_in_bytes` - (Integer)
      #   * `:target_arn` - (String)

      # @!method delete_bandwidth_rate_limit(options = {})
      # Calls the DeleteBandwidthRateLimit API operation.
      # @param [Hash] options
      #   * `:gateway_arn` - *required* - (String)
      #   * `:bandwidth_type` - *required* - (String) Valid values include:
      #     * `UPLOAD`
      #     * `DOWNLOAD`
      #     * `ALL`
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:gateway_arn` - (String)

      # @!method delete_chap_credentials(options = {})
      # Calls the DeleteChapCredentials API operation.
      # @param [Hash] options
      #   * `:target_arn` - *required* - (String)
      #   * `:initiator_name` - *required* - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:target_arn` - (String)
      #   * `:initiator_name` - (String)

      # @!method delete_gateway(options = {})
      # Calls the DeleteGateway API operation.
      # @param [Hash] options
      #   * `:gateway_arn` - *required* - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:gateway_arn` - (String)

      # @!method delete_snapshot_schedule(options = {})
      # Calls the DeleteSnapshotSchedule API operation.
      # @param [Hash] options
      #   * `:volume_arn` - *required* - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:volume_arn` - (String)

      # @!method delete_volume(options = {})
      # Calls the DeleteVolume API operation.
      # @param [Hash] options
      #   * `:volume_arn` - *required* - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:volume_arn` - (String)

      # @!method describe_bandwidth_rate_limit(options = {})
      # Calls the DescribeBandwidthRateLimit API operation.
      # @param [Hash] options
      #   * `:gateway_arn` - *required* - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:gateway_arn` - (String)
      #   * `:average_upload_rate_limit_in_bits_per_sec` - (Integer)
      #   * `:average_download_rate_limit_in_bits_per_sec` - (Integer)

      # @!method describe_cache(options = {})
      # Calls the DescribeCache API operation.
      # @param [Hash] options
      #   * `:gateway_arn` - *required* - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:gateway_arn` - (String)
      #   * `:disk_ids` - (Array<String>)
      #   * `:cache_allocated_in_bytes` - (Integer)
      #   * `:cache_used_percentage` - (Numeric)
      #   * `:cache_dirty_percentage` - (Numeric)
      #   * `:cache_hit_percentage` - (Numeric)
      #   * `:cache_miss_percentage` - (Numeric)

      # @!method describe_cachedi_scsi_volumes(options = {})
      # Calls the DescribeCachediSCSIVolumes API operation.
      # @param [Hash] options
      #   * `:volume_ar_ns` - *required* - (Array<String>)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:cachedi_scsi_volumes` - (Array<Hash>)
      #     * `:volume_arn` - (String)
      #     * `:volume_id` - (String)
      #     * `:volume_type` - (String)
      #     * `:volume_status` - (String)
      #     * `:volume_size_in_bytes` - (Integer)
      #     * `:volume_progress` - (Numeric)
      #     * `:source_snapshot_id` - (String)
      #     * `:volumei_scsi_attributes` - (Hash)
      #       * `:target_arn` - (String)
      #       * `:network_interface_id` - (String)
      #       * `:network_interface_port` - (Integer)
      #       * `:lun_number` - (Integer)
      #       * `:chap_enabled` - (Boolean)

      # @!method describe_chap_credentials(options = {})
      # Calls the DescribeChapCredentials API operation.
      # @param [Hash] options
      #   * `:target_arn` - *required* - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:chap_credentials` - (Array<Hash>)
      #     * `:target_arn` - (String)
      #     * `:secret_to_authenticate_initiator` - (String)
      #     * `:initiator_name` - (String)
      #     * `:secret_to_authenticate_target` - (String)

      # @!method describe_gateway_information(options = {})
      # Calls the DescribeGatewayInformation API operation.
      # @param [Hash] options
      #   * `:gateway_arn` - *required* - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:gateway_arn` - (String)
      #   * `:gateway_id` - (String)
      #   * `:gateway_timezone` - (String)
      #   * `:gateway_state` - (String)
      #   * `:gateway_network_interfaces` - (Array<Hash>)
      #     * `:ipv_4_address` - (String)
      #     * `:mac_address` - (String)
      #     * `:ipv_6_address` - (String)
      #   * `:gateway_type` - (String)
      #   * `:next_update_availability_date` - (String)

      # @!method describe_maintenance_start_time(options = {})
      # Calls the DescribeMaintenanceStartTime API operation.
      # @param [Hash] options
      #   * `:gateway_arn` - *required* - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:gateway_arn` - (String)
      #   * `:hour_of_day` - (Integer)
      #   * `:minute_of_hour` - (Integer)
      #   * `:day_of_week` - (Integer)
      #   * `:timezone` - (String)

      # @!method describe_snapshot_schedule(options = {})
      # Calls the DescribeSnapshotSchedule API operation.
      # @param [Hash] options
      #   * `:volume_arn` - *required* - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:volume_arn` - (String)
      #   * `:start_at` - (Integer)
      #   * `:recurrence_in_hours` - (Integer)
      #   * `:description` - (String)
      #   * `:timezone` - (String)

      # @!method describe_storedi_scsi_volumes(options = {})
      # Calls the DescribeStorediSCSIVolumes API operation.
      # @param [Hash] options
      #   * `:volume_ar_ns` - *required* - (Array<String>)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:storedi_scsi_volumes` - (Array<Hash>)
      #     * `:volume_arn` - (String)
      #     * `:volume_id` - (String)
      #     * `:volume_type` - (String)
      #     * `:volume_status` - (String)
      #     * `:volume_size_in_bytes` - (Integer)
      #     * `:volume_progress` - (Numeric)
      #     * `:volume_disk_id` - (String)
      #     * `:source_snapshot_id` - (String)
      #     * `:preserved_existing_data` - (Boolean)
      #     * `:volumei_scsi_attributes` - (Hash)
      #       * `:target_arn` - (String)
      #       * `:network_interface_id` - (String)
      #       * `:network_interface_port` - (Integer)
      #       * `:lun_number` - (Integer)
      #       * `:chap_enabled` - (Boolean)

      # @!method describe_upload_buffer(options = {})
      # Calls the DescribeUploadBuffer API operation.
      # @param [Hash] options
      #   * `:gateway_arn` - *required* - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:gateway_arn` - (String)
      #   * `:disk_ids` - (Array<String>)
      #   * `:upload_buffer_used_in_bytes` - (Integer)
      #   * `:upload_buffer_allocated_in_bytes` - (Integer)

      # @!method describe_working_storage(options = {})
      # Calls the DescribeWorkingStorage API operation.
      # @param [Hash] options
      #   * `:gateway_arn` - *required* - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:gateway_arn` - (String)
      #   * `:disk_ids` - (Array<String>)
      #   * `:working_storage_used_in_bytes` - (Integer)
      #   * `:working_storage_allocated_in_bytes` - (Integer)

      # @!method list_gateways(options = {})
      # Calls the ListGateways API operation.
      # @param [Hash] options
      #   * `:marker` - (String)
      #   * `:limit` - (Integer)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:gateways` - (Array<Hash>)
      #     * `:gateway_arn` - (String)
      #   * `:marker` - (String)

      # @!method list_local_disks(options = {})
      # Calls the ListLocalDisks API operation.
      # @param [Hash] options
      #   * `:gateway_arn` - *required* - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:gateway_arn` - (String)
      #   * `:disks` - (Array<Hash>)
      #     * `:disk_id` - (String)
      #     * `:disk_path` - (String)
      #     * `:disk_node` - (String)
      #     * `:disk_size_in_bytes` - (Integer)
      #     * `:disk_allocation_type` - (String)
      #     * `:disk_allocation_resource` - (String)

      # @!method list_volume_recovery_points(options = {})
      # Calls the ListVolumeRecoveryPoints API operation.
      # @param [Hash] options
      #   * `:gateway_arn` - *required* - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:gateway_arn` - (String)
      #   * `:volume_recovery_point_infos` - (Array<Hash>)
      #     * `:volume_arn` - (String)
      #     * `:volume_size_in_bytes` - (Integer)
      #     * `:volume_usage_in_bytes` - (Integer)
      #     * `:volume_recovery_point_time` - (String)

      # @!method list_volumes(options = {})
      # Calls the ListVolumes API operation.
      # @param [Hash] options
      #   * `:gateway_arn` - *required* - (String)
      #   * `:marker` - (String)
      #   * `:limit` - (Integer)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:gateway_arn` - (String)
      #   * `:marker` - (String)
      #   * `:volume_infos` - (Array<Hash>)
      #     * `:volume_arn` - (String)
      #     * `:volume_type` - (String)

      # @!method shutdown_gateway(options = {})
      # Calls the ShutdownGateway API operation.
      # @param [Hash] options
      #   * `:gateway_arn` - *required* - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:gateway_arn` - (String)

      # @!method start_gateway(options = {})
      # Calls the StartGateway API operation.
      # @param [Hash] options
      #   * `:gateway_arn` - *required* - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:gateway_arn` - (String)

      # @!method update_bandwidth_rate_limit(options = {})
      # Calls the UpdateBandwidthRateLimit API operation.
      # @param [Hash] options
      #   * `:gateway_arn` - *required* - (String)
      #   * `:average_upload_rate_limit_in_bits_per_sec` - (Integer)
      #   * `:average_download_rate_limit_in_bits_per_sec` - (Integer)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:gateway_arn` - (String)

      # @!method update_chap_credentials(options = {})
      # Calls the UpdateChapCredentials API operation.
      # @param [Hash] options
      #   * `:target_arn` - *required* - (String)
      #   * `:secret_to_authenticate_initiator` - *required* - (String)
      #   * `:initiator_name` - *required* - (String)
      #   * `:secret_to_authenticate_target` - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:target_arn` - (String)
      #   * `:initiator_name` - (String)

      # @!method update_gateway_information(options = {})
      # Calls the UpdateGatewayInformation API operation.
      # @param [Hash] options
      #   * `:gateway_arn` - *required* - (String)
      #   * `:gateway_name` - (String)
      #   * `:gateway_timezone` - (String) Valid values include:
      #     * `GMT-12:00`
      #     * `GMT-11:00`
      #     * `GMT-10:00`
      #     * `GMT-9:00`
      #     * `GMT-8:00`
      #     * `GMT-7:00`
      #     * `GMT-6:00`
      #     * `GMT-5:00`
      #     * `GMT-4:00`
      #     * `GMT-3:30`
      #     * `GMT-3:00`
      #     * `GMT-2:00`
      #     * `GMT-1:00`
      #     * `GMT`
      #     * `GMT+1:00`
      #     * `GMT+2:00`
      #     * `GMT+3:00`
      #     * `GMT+3:30`
      #     * `GMT+4:00`
      #     * `GMT+4:30`
      #     * `GMT+5:00`
      #     * `GMT+5:30`
      #     * `GMT+5:45`
      #     * `GMT+6:00`
      #     * `GMT+7:00`
      #     * `GMT+8:00`
      #     * `GMT+9:00`
      #     * `GMT+9:30`
      #     * `GMT+10:00`
      #     * `GMT+11:00`
      #     * `GMT+12:00`
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:gateway_arn` - (String)

      # @!method update_gateway_software_now(options = {})
      # Calls the UpdateGatewaySoftwareNow API operation.
      # @param [Hash] options
      #   * `:gateway_arn` - *required* - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:gateway_arn` - (String)

      # @!method update_maintenance_start_time(options = {})
      # Calls the UpdateMaintenanceStartTime API operation.
      # @param [Hash] options
      #   * `:gateway_arn` - *required* - (String)
      #   * `:hour_of_day` - *required* - (Integer)
      #   * `:minute_of_hour` - *required* - (Integer)
      #   * `:day_of_week` - *required* - (Integer)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:gateway_arn` - (String)

      # @!method update_snapshot_schedule(options = {})
      # Calls the UpdateSnapshotSchedule API operation.
      # @param [Hash] options
      #   * `:volume_arn` - *required* - (String)
      #   * `:start_at` - *required* - (Integer)
      #   * `:recurrence_in_hours` - *required* - (Integer)
      #   * `:description` - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:volume_arn` - (String)

      # end client methods #

      define_client_methods('2012-06-30')

    end
  end
end
