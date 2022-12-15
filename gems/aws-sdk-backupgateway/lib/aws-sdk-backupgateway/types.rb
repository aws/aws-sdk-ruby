# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::BackupGateway
  module Types

    # The operation cannot proceed because you have insufficient
    # permissions.
    #
    # @!attribute [rw] error_code
    #   A description of why you have insufficient permissions.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :error_code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the
    #   `ListGateways` operation to return a list of gateways for your
    #   account and Amazon Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] server_arn
    #   The Amazon Resource Name (ARN) of the server that hosts your virtual
    #   machines.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/AssociateGatewayToServerInput AWS API Documentation
    #
    class AssociateGatewayToServerInput < Struct.new(
      :gateway_arn,
      :server_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of a gateway.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/AssociateGatewayToServerOutput AWS API Documentation
    #
    class AssociateGatewayToServerOutput < Struct.new(
      :gateway_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a bandwidth rate limit interval for a gateway. A bandwidth
    # rate limit schedule consists of one or more bandwidth rate limit
    # intervals. A bandwidth rate limit interval defines a period of time on
    # one or more days of the week, during which bandwidth rate limits are
    # specified for uploading, downloading, or both.
    #
    # @!attribute [rw] average_upload_rate_limit_in_bits_per_sec
    #   The average upload rate limit component of the bandwidth rate limit
    #   interval, in bits per second. This field does not appear in the
    #   response if the upload rate limit is not set.
    #
    #   <note markdown="1"> For Backup Gateway, the minimum value is `(Value)`.
    #
    #    </note>
    #   @return [Integer]
    #
    # @!attribute [rw] days_of_week
    #   The days of the week component of the bandwidth rate limit interval,
    #   represented as ordinal numbers from 0 to 6, where 0 represents
    #   Sunday and 6 represents Saturday.
    #   @return [Array<Integer>]
    #
    # @!attribute [rw] end_hour_of_day
    #   The hour of the day to end the bandwidth rate limit interval.
    #   @return [Integer]
    #
    # @!attribute [rw] end_minute_of_hour
    #   The minute of the hour to end the bandwidth rate limit interval.
    #
    #   The bandwidth rate limit interval ends at the end of the minute. To
    #   end an interval at the end of an hour, use the value `59`.
    #   @return [Integer]
    #
    # @!attribute [rw] start_hour_of_day
    #   The hour of the day to start the bandwidth rate limit interval.
    #   @return [Integer]
    #
    # @!attribute [rw] start_minute_of_hour
    #   The minute of the hour to start the bandwidth rate limit interval.
    #   The interval begins at the start of that minute. To begin an
    #   interval exactly at the start of the hour, use the value `0`.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/BandwidthRateLimitInterval AWS API Documentation
    #
    class BandwidthRateLimitInterval < Struct.new(
      :average_upload_rate_limit_in_bits_per_sec,
      :days_of_week,
      :end_hour_of_day,
      :end_minute_of_hour,
      :start_hour_of_day,
      :start_minute_of_hour)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation cannot proceed because it is not supported.
    #
    # @!attribute [rw] error_code
    #   A description of why the operation is not supported.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :error_code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] activation_key
    #   The activation key of the created gateway.
    #   @return [String]
    #
    # @!attribute [rw] gateway_display_name
    #   The display name of the created gateway.
    #   @return [String]
    #
    # @!attribute [rw] gateway_type
    #   The type of created gateway.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of up to 50 tags to assign to the gateway. Each tag is a
    #   key-value pair.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/CreateGatewayInput AWS API Documentation
    #
    class CreateGatewayInput < Struct.new(
      :activation_key,
      :gateway_display_name,
      :gateway_type,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway you create.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/CreateGatewayOutput AWS API Documentation
    #
    class CreateGatewayOutput < Struct.new(
      :gateway_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/DeleteGatewayInput AWS API Documentation
    #
    class DeleteGatewayInput < Struct.new(
      :gateway_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway you deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/DeleteGatewayOutput AWS API Documentation
    #
    class DeleteGatewayOutput < Struct.new(
      :gateway_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] hypervisor_arn
    #   The Amazon Resource Name (ARN) of the hypervisor to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/DeleteHypervisorInput AWS API Documentation
    #
    class DeleteHypervisorInput < Struct.new(
      :hypervisor_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] hypervisor_arn
    #   The Amazon Resource Name (ARN) of the hypervisor you deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/DeleteHypervisorOutput AWS API Documentation
    #
    class DeleteHypervisorOutput < Struct.new(
      :hypervisor_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway to disassociate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/DisassociateGatewayFromServerInput AWS API Documentation
    #
    class DisassociateGatewayFromServerInput < Struct.new(
      :gateway_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway you disassociated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/DisassociateGatewayFromServerOutput AWS API Documentation
    #
    class DisassociateGatewayFromServerOutput < Struct.new(
      :gateway_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A gateway is an Backup Gateway appliance that runs on the customer's
    # network to provide seamless connectivity to backup storage in the
    # Amazon Web Services Cloud.
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the
    #   `ListGateways` operation to return a list of gateways for your
    #   account and Amazon Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] gateway_display_name
    #   The display name of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] gateway_type
    #   The type of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] hypervisor_id
    #   The hypervisor ID of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] last_seen_time
    #   The last time Backup gateway communicated with the gateway, in Unix
    #   format and UTC time.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/Gateway AWS API Documentation
    #
    class Gateway < Struct.new(
      :gateway_arn,
      :gateway_display_name,
      :gateway_type,
      :hypervisor_id,
      :last_seen_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of gateway.
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the
    #   `ListGateways` operation to return a list of gateways for your
    #   account and Amazon Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] gateway_display_name
    #   The display name of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] gateway_type
    #   The type of the gateway type.
    #   @return [String]
    #
    # @!attribute [rw] hypervisor_id
    #   The hypervisor ID of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] last_seen_time
    #   Details showing the last time Backup gateway communicated with the
    #   cloud, in Unix format and UTC time.
    #   @return [Time]
    #
    # @!attribute [rw] maintenance_start_time
    #   Returns your gateway's weekly maintenance start time including the
    #   day and time of the week. Note that values are in terms of the
    #   gateway's time zone. Can be weekly or monthly.
    #   @return [Types::MaintenanceStartTime]
    #
    # @!attribute [rw] next_update_availability_time
    #   Details showing the next update availability time of the gateway.
    #   @return [Time]
    #
    # @!attribute [rw] vpc_endpoint
    #   The DNS name for the virtual private cloud (VPC) endpoint the
    #   gateway uses to connect to the cloud for backup gateway.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/GatewayDetails AWS API Documentation
    #
    class GatewayDetails < Struct.new(
      :gateway_arn,
      :gateway_display_name,
      :gateway_type,
      :hypervisor_id,
      :last_seen_time,
      :maintenance_start_time,
      :next_update_availability_time,
      :vpc_endpoint)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the [
    #   `ListGateways` ][1] operation to return a list of gateways for your
    #   account and Amazon Web Services Region.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-backup/latest/devguide/API_BGW_ListGateways.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/GetBandwidthRateLimitScheduleInput AWS API Documentation
    #
    class GetBandwidthRateLimitScheduleInput < Struct.new(
      :gateway_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bandwidth_rate_limit_intervals
    #   An array containing bandwidth rate limit schedule intervals for a
    #   gateway. When no bandwidth rate limit intervals have been scheduled,
    #   the array is empty.
    #   @return [Array<Types::BandwidthRateLimitInterval>]
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the [
    #   `ListGateways` ][1] operation to return a list of gateways for your
    #   account and Amazon Web Services Region.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-backup/latest/devguide/API_BGW_ListGateways.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/GetBandwidthRateLimitScheduleOutput AWS API Documentation
    #
    class GetBandwidthRateLimitScheduleOutput < Struct.new(
      :bandwidth_rate_limit_intervals,
      :gateway_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/GetGatewayInput AWS API Documentation
    #
    class GetGatewayInput < Struct.new(
      :gateway_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway
    #   By providing the ARN (Amazon Resource Name), this API returns the
    #   gateway.
    #   @return [Types::GatewayDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/GetGatewayOutput AWS API Documentation
    #
    class GetGatewayOutput < Struct.new(
      :gateway)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] hypervisor_arn
    #   The Amazon Resource Name (ARN) of the hypervisor.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/GetHypervisorInput AWS API Documentation
    #
    class GetHypervisorInput < Struct.new(
      :hypervisor_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] hypervisor
    #   Details about the requested hypervisor.
    #   @return [Types::HypervisorDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/GetHypervisorOutput AWS API Documentation
    #
    class GetHypervisorOutput < Struct.new(
      :hypervisor)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] hypervisor_arn
    #   The Amazon Resource Name (ARN) of the hypervisor.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/GetHypervisorPropertyMappingsInput AWS API Documentation
    #
    class GetHypervisorPropertyMappingsInput < Struct.new(
      :hypervisor_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] hypervisor_arn
    #   The Amazon Resource Name (ARN) of the hypervisor.
    #   @return [String]
    #
    # @!attribute [rw] iam_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role.
    #   @return [String]
    #
    # @!attribute [rw] vmware_to_aws_tag_mappings
    #   This is a display of the mappings of on-premises VMware tags to the
    #   Amazon Web Services tags.
    #   @return [Array<Types::VmwareToAwsTagMapping>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/GetHypervisorPropertyMappingsOutput AWS API Documentation
    #
    class GetHypervisorPropertyMappingsOutput < Struct.new(
      :hypervisor_arn,
      :iam_role_arn,
      :vmware_to_aws_tag_mappings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the virtual machine.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/GetVirtualMachineInput AWS API Documentation
    #
    class GetVirtualMachineInput < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] virtual_machine
    #   This object contains the basic attributes of `VirtualMachine`
    #   contained by the output of `GetVirtualMachine`
    #   @return [Types::VirtualMachineDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/GetVirtualMachineOutput AWS API Documentation
    #
    class GetVirtualMachineOutput < Struct.new(
      :virtual_machine)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the hypervisor's permissions to which the gateway will
    # connect.
    #
    # A hypervisor is hardware, software, or firmware that creates and
    # manages virtual machines, and allocates resources to them.
    #
    # @!attribute [rw] host
    #   The server host of the hypervisor. This can be either an IP address
    #   or a fully-qualified domain name (FQDN).
    #   @return [String]
    #
    # @!attribute [rw] hypervisor_arn
    #   The Amazon Resource Name (ARN) of the hypervisor.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   The Amazon Resource Name (ARN) of the Key Management Service used to
    #   encrypt the hypervisor.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the hypervisor.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the hypervisor.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/Hypervisor AWS API Documentation
    #
    class Hypervisor < Struct.new(
      :host,
      :hypervisor_arn,
      :kms_key_arn,
      :name,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # These are the details of the specified hypervisor. A hypervisor is
    # hardware, software, or firmware that creates and manages virtual
    # machines, and allocates resources to them.
    #
    # @!attribute [rw] host
    #   The server host of the hypervisor. This can be either an IP address
    #   or a fully-qualified domain name (FQDN).
    #   @return [String]
    #
    # @!attribute [rw] hypervisor_arn
    #   The Amazon Resource Name (ARN) of the hypervisor.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   The Amazon Resource Name (ARN) of the KMS used to encrypt the
    #   hypervisor.
    #   @return [String]
    #
    # @!attribute [rw] last_successful_metadata_sync_time
    #   This is the time when the most recent successful sync of metadata
    #   occurred.
    #   @return [Time]
    #
    # @!attribute [rw] latest_metadata_sync_status
    #   This is the most recent status for the indicated metadata sync.
    #   @return [String]
    #
    # @!attribute [rw] latest_metadata_sync_status_message
    #   This is the most recent status for the indicated metadata sync.
    #   @return [String]
    #
    # @!attribute [rw] log_group_arn
    #   The Amazon Resource Name (ARN) of the group of gateways within the
    #   requested log.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   This is the name of the specified hypervisor.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   This is the current state of the specified hypervisor.
    #
    #   The possible states are `PENDING`, `ONLINE`, `OFFLINE`, or `ERROR`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/HypervisorDetails AWS API Documentation
    #
    class HypervisorDetails < Struct.new(
      :host,
      :hypervisor_arn,
      :kms_key_arn,
      :last_successful_metadata_sync_time,
      :latest_metadata_sync_status,
      :latest_metadata_sync_status_message,
      :log_group_arn,
      :name,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] host
    #   The server host of the hypervisor. This can be either an IP address
    #   or a fully-qualified domain name (FQDN).
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   The Key Management Service for the hypervisor.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the hypervisor.
    #   @return [String]
    #
    # @!attribute [rw] password
    #   The password for the hypervisor.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags of the hypervisor configuration to import.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] username
    #   The username for the hypervisor.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/ImportHypervisorConfigurationInput AWS API Documentation
    #
    class ImportHypervisorConfigurationInput < Struct.new(
      :host,
      :kms_key_arn,
      :name,
      :password,
      :tags,
      :username)
      SENSITIVE = [:password, :username]
      include Aws::Structure
    end

    # @!attribute [rw] hypervisor_arn
    #   The Amazon Resource Name (ARN) of the hypervisor you disassociated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/ImportHypervisorConfigurationOutput AWS API Documentation
    #
    class ImportHypervisorConfigurationOutput < Struct.new(
      :hypervisor_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation did not succeed because an internal error occurred. Try
    # again later.
    #
    # @!attribute [rw] error_code
    #   A description of which internal error occured.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :error_code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of gateways to list.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The next item following a partial list of returned resources. For
    #   example, if a request is made to return `MaxResults` number of
    #   resources, `NextToken` allows you to return more items in your list
    #   starting at the location pointed to by the next token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/ListGatewaysInput AWS API Documentation
    #
    class ListGatewaysInput < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateways
    #   A list of your gateways.
    #   @return [Array<Types::Gateway>]
    #
    # @!attribute [rw] next_token
    #   The next item following a partial list of returned resources. For
    #   example, if a request is made to return `maxResults` number of
    #   resources, `NextToken` allows you to return more items in your list
    #   starting at the location pointed to by the next token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/ListGatewaysOutput AWS API Documentation
    #
    class ListGatewaysOutput < Struct.new(
      :gateways,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of hypervisors to list.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The next item following a partial list of returned resources. For
    #   example, if a request is made to return `maxResults` number of
    #   resources, `NextToken` allows you to return more items in your list
    #   starting at the location pointed to by the next token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/ListHypervisorsInput AWS API Documentation
    #
    class ListHypervisorsInput < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] hypervisors
    #   A list of your `Hypervisor` objects, ordered by their Amazon
    #   Resource Names (ARNs).
    #   @return [Array<Types::Hypervisor>]
    #
    # @!attribute [rw] next_token
    #   The next item following a partial list of returned resources. For
    #   example, if a request is made to return `maxResults` number of
    #   resources, `NextToken` allows you to return more items in your list
    #   starting at the location pointed to by the next token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/ListHypervisorsOutput AWS API Documentation
    #
    class ListHypervisorsOutput < Struct.new(
      :hypervisors,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource's tags to list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/ListTagsForResourceInput AWS API Documentation
    #
    class ListTagsForResourceInput < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource's tags that you
    #   listed.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of the resource's tags.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/ListTagsForResourceOutput AWS API Documentation
    #
    class ListTagsForResourceOutput < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] hypervisor_arn
    #   The Amazon Resource Name (ARN) of the hypervisor connected to your
    #   virtual machine.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of virtual machines to list.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The next item following a partial list of returned resources. For
    #   example, if a request is made to return `maxResults` number of
    #   resources, `NextToken` allows you to return more items in your list
    #   starting at the location pointed to by the next token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/ListVirtualMachinesInput AWS API Documentation
    #
    class ListVirtualMachinesInput < Struct.new(
      :hypervisor_arn,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The next item following a partial list of returned resources. For
    #   example, if a request is made to return `maxResults` number of
    #   resources, `NextToken` allows you to return more items in your list
    #   starting at the location pointed to by the next token.
    #   @return [String]
    #
    # @!attribute [rw] virtual_machines
    #   A list of your `VirtualMachine` objects, ordered by their Amazon
    #   Resource Names (ARNs).
    #   @return [Array<Types::VirtualMachine>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/ListVirtualMachinesOutput AWS API Documentation
    #
    class ListVirtualMachinesOutput < Struct.new(
      :next_token,
      :virtual_machines)
      SENSITIVE = []
      include Aws::Structure
    end

    # This is your gateway's weekly maintenance start time including the
    # day and time of the week. Note that values are in terms of the
    # gateway's time zone. Can be weekly or monthly.
    #
    # @!attribute [rw] day_of_month
    #   The day of the month component of the maintenance start time
    #   represented as an ordinal number from 1 to 28, where 1 represents
    #   the first day of the month and 28 represents the last day of the
    #   month.
    #   @return [Integer]
    #
    # @!attribute [rw] day_of_week
    #   An ordinal number between 0 and 6 that represents the day of the
    #   week, where 0 represents Sunday and 6 represents Saturday. The day
    #   of week is in the time zone of the gateway.
    #   @return [Integer]
    #
    # @!attribute [rw] hour_of_day
    #   The hour component of the maintenance start time represented as
    #   *hh*, where *hh* is the hour (0 to 23). The hour of the day is in
    #   the time zone of the gateway.
    #   @return [Integer]
    #
    # @!attribute [rw] minute_of_hour
    #   The minute component of the maintenance start time represented as
    #   *mm*, where *mm* is the minute (0 to 59). The minute of the hour is
    #   in the time zone of the gateway.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/MaintenanceStartTime AWS API Documentation
    #
    class MaintenanceStartTime < Struct.new(
      :day_of_month,
      :day_of_week,
      :hour_of_day,
      :minute_of_hour)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bandwidth_rate_limit_intervals
    #   An array containing bandwidth rate limit schedule intervals for a
    #   gateway. When no bandwidth rate limit intervals have been scheduled,
    #   the array is empty.
    #   @return [Array<Types::BandwidthRateLimitInterval>]
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the [
    #   `ListGateways` ][1] operation to return a list of gateways for your
    #   account and Amazon Web Services Region.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-backup/latest/devguide/API_BGW_ListGateways.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/PutBandwidthRateLimitScheduleInput AWS API Documentation
    #
    class PutBandwidthRateLimitScheduleInput < Struct.new(
      :bandwidth_rate_limit_intervals,
      :gateway_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the [
    #   `ListGateways` ][1] operation to return a list of gateways for your
    #   account and Amazon Web Services Region.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-backup/latest/devguide/API_BGW_ListGateways.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/PutBandwidthRateLimitScheduleOutput AWS API Documentation
    #
    class PutBandwidthRateLimitScheduleOutput < Struct.new(
      :gateway_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] hypervisor_arn
    #   The Amazon Resource Name (ARN) of the hypervisor.
    #   @return [String]
    #
    # @!attribute [rw] iam_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role.
    #   @return [String]
    #
    # @!attribute [rw] vmware_to_aws_tag_mappings
    #   This action requests the mappings of on-premises VMware tags to the
    #   Amazon Web Services tags.
    #   @return [Array<Types::VmwareToAwsTagMapping>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/PutHypervisorPropertyMappingsInput AWS API Documentation
    #
    class PutHypervisorPropertyMappingsInput < Struct.new(
      :hypervisor_arn,
      :iam_role_arn,
      :vmware_to_aws_tag_mappings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] hypervisor_arn
    #   The Amazon Resource Name (ARN) of the hypervisor.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/PutHypervisorPropertyMappingsOutput AWS API Documentation
    #
    class PutHypervisorPropertyMappingsOutput < Struct.new(
      :hypervisor_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] day_of_month
    #   The day of the month start maintenance on a gateway.
    #
    #   Valid values range from `Sunday` to `Saturday`.
    #   @return [Integer]
    #
    # @!attribute [rw] day_of_week
    #   The day of the week to start maintenance on a gateway.
    #   @return [Integer]
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) for the gateway, used to specify its
    #   maintenance start time.
    #   @return [String]
    #
    # @!attribute [rw] hour_of_day
    #   The hour of the day to start maintenance on a gateway.
    #   @return [Integer]
    #
    # @!attribute [rw] minute_of_hour
    #   The minute of the hour to start maintenance on a gateway.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/PutMaintenanceStartTimeInput AWS API Documentation
    #
    class PutMaintenanceStartTimeInput < Struct.new(
      :day_of_month,
      :day_of_week,
      :gateway_arn,
      :hour_of_day,
      :minute_of_hour)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of a gateway for which you set the
    #   maintenance start time.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/PutMaintenanceStartTimeOutput AWS API Documentation
    #
    class PutMaintenanceStartTimeOutput < Struct.new(
      :gateway_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A resource that is required for the action wasn't found.
    #
    # @!attribute [rw] error_code
    #   A description of which resource wasn't found.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :error_code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] hypervisor_arn
    #   The Amazon Resource Name (ARN) of the hypervisor.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/StartVirtualMachinesMetadataSyncInput AWS API Documentation
    #
    class StartVirtualMachinesMetadataSyncInput < Struct.new(
      :hypervisor_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] hypervisor_arn
    #   The Amazon Resource Name (ARN) of the hypervisor.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/StartVirtualMachinesMetadataSyncOutput AWS API Documentation
    #
    class StartVirtualMachinesMetadataSyncOutput < Struct.new(
      :hypervisor_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A key-value pair you can use to manage, filter, and search for your
    # resources. Allowed characters include UTF-8 letters, numbers, spaces,
    # and the following characters: + - = . \_ : /.
    #
    # @!attribute [rw] key
    #   The key part of a tag's key-value pair. The key can't start with
    #   `aws:`.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value part of a tag's key-value pair.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource to tag.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags to assign to the resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/TagResourceInput AWS API Documentation
    #
    class TagResourceInput < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource you tagged.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/TagResourceOutput AWS API Documentation
    #
    class TagResourceOutput < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway to the hypervisor to
    #   test.
    #   @return [String]
    #
    # @!attribute [rw] host
    #   The server host of the hypervisor. This can be either an IP address
    #   or a fully-qualified domain name (FQDN).
    #   @return [String]
    #
    # @!attribute [rw] password
    #   The password for the hypervisor.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The username for the hypervisor.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/TestHypervisorConfigurationInput AWS API Documentation
    #
    class TestHypervisorConfigurationInput < Struct.new(
      :gateway_arn,
      :host,
      :password,
      :username)
      SENSITIVE = [:password, :username]
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/TestHypervisorConfigurationOutput AWS API Documentation
    #
    class TestHypervisorConfigurationOutput < Aws::EmptyStructure; end

    # TPS has been limited to protect against intentional or unintentional
    # high request volumes.
    #
    # @!attribute [rw] error_code
    #   Error: TPS has been limited to protect against intentional or
    #   unintentional high request volumes.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :error_code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource from which to remove
    #   tags.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The list of tag keys specifying which tags to remove.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/UntagResourceInput AWS API Documentation
    #
    class UntagResourceInput < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource from which you
    #   removed tags.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/UntagResourceOutput AWS API Documentation
    #
    class UntagResourceOutput < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway to update.
    #   @return [String]
    #
    # @!attribute [rw] gateway_display_name
    #   The updated display name of the gateway.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/UpdateGatewayInformationInput AWS API Documentation
    #
    class UpdateGatewayInformationInput < Struct.new(
      :gateway_arn,
      :gateway_display_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway you updated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/UpdateGatewayInformationOutput AWS API Documentation
    #
    class UpdateGatewayInformationOutput < Struct.new(
      :gateway_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway to be updated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/UpdateGatewaySoftwareNowInput AWS API Documentation
    #
    class UpdateGatewaySoftwareNowInput < Struct.new(
      :gateway_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway you updated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/UpdateGatewaySoftwareNowOutput AWS API Documentation
    #
    class UpdateGatewaySoftwareNowOutput < Struct.new(
      :gateway_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] host
    #   The updated host of the hypervisor. This can be either an IP address
    #   or a fully-qualified domain name (FQDN).
    #   @return [String]
    #
    # @!attribute [rw] hypervisor_arn
    #   The Amazon Resource Name (ARN) of the hypervisor to update.
    #   @return [String]
    #
    # @!attribute [rw] log_group_arn
    #   The Amazon Resource Name (ARN) of the group of gateways within the
    #   requested log.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The updated name for the hypervisor
    #   @return [String]
    #
    # @!attribute [rw] password
    #   The updated password for the hypervisor.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The updated username for the hypervisor.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/UpdateHypervisorInput AWS API Documentation
    #
    class UpdateHypervisorInput < Struct.new(
      :host,
      :hypervisor_arn,
      :log_group_arn,
      :name,
      :password,
      :username)
      SENSITIVE = [:password, :username]
      include Aws::Structure
    end

    # @!attribute [rw] hypervisor_arn
    #   The Amazon Resource Name (ARN) of the hypervisor you updated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/UpdateHypervisorOutput AWS API Documentation
    #
    class UpdateHypervisorOutput < Struct.new(
      :hypervisor_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation did not succeed because a validation error occurred.
    #
    # @!attribute [rw] error_code
    #   A description of what caused the validation error.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :error_code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A virtual machine that is on a hypervisor.
    #
    # @!attribute [rw] host_name
    #   The host name of the virtual machine.
    #   @return [String]
    #
    # @!attribute [rw] hypervisor_id
    #   The ID of the virtual machine's hypervisor.
    #   @return [String]
    #
    # @!attribute [rw] last_backup_date
    #   The most recent date a virtual machine was backed up, in Unix format
    #   and UTC time.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the virtual machine.
    #   @return [String]
    #
    # @!attribute [rw] path
    #   The path of the virtual machine.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the virtual machine. For example,
    #   `arn:aws:backup-gateway:us-west-1:0000000000000:vm/vm-0000ABCDEFGIJKL`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/VirtualMachine AWS API Documentation
    #
    class VirtualMachine < Struct.new(
      :host_name,
      :hypervisor_id,
      :last_backup_date,
      :name,
      :path,
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Your `VirtualMachine` objects, ordered by their Amazon Resource Names
    # (ARNs).
    #
    # @!attribute [rw] host_name
    #   The host name of the virtual machine.
    #   @return [String]
    #
    # @!attribute [rw] hypervisor_id
    #   The ID of the virtual machine's hypervisor.
    #   @return [String]
    #
    # @!attribute [rw] last_backup_date
    #   The most recent date a virtual machine was backed up, in Unix format
    #   and UTC time.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the virtual machine.
    #   @return [String]
    #
    # @!attribute [rw] path
    #   The path of the virtual machine.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the virtual machine. For example,
    #   `arn:aws:backup-gateway:us-west-1:0000000000000:vm/vm-0000ABCDEFGIJKL`.
    #   @return [String]
    #
    # @!attribute [rw] vmware_tags
    #   These are the details of the VMware tags associated with the
    #   specified virtual machine.
    #   @return [Array<Types::VmwareTag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/VirtualMachineDetails AWS API Documentation
    #
    class VirtualMachineDetails < Struct.new(
      :host_name,
      :hypervisor_id,
      :last_backup_date,
      :name,
      :path,
      :resource_arn,
      :vmware_tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # A VMware tag is a tag attached to a specific virtual machine. A
    # [tag][1] is a key-value pair you can use to manage, filter, and search
    # for your resources.
    #
    # The content of VMware tags can be matched to Amazon Web Services tags.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/aws-backup/latest/devguide/API_BGW_Tag.html
    #
    # @!attribute [rw] vmware_category
    #   The is the category of VMware.
    #   @return [String]
    #
    # @!attribute [rw] vmware_tag_description
    #   This is a user-defined description of a VMware tag.
    #   @return [String]
    #
    # @!attribute [rw] vmware_tag_name
    #   This is the user-defined name of a VMware tag.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/VmwareTag AWS API Documentation
    #
    class VmwareTag < Struct.new(
      :vmware_category,
      :vmware_tag_description,
      :vmware_tag_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # This displays the mapping of on-premises VMware tags to the
    # corresponding Amazon Web Services tags.
    #
    # @!attribute [rw] aws_tag_key
    #   The key part of the Amazon Web Services tag's key-value pair.
    #   @return [String]
    #
    # @!attribute [rw] aws_tag_value
    #   The value part of the Amazon Web Services tag's key-value pair.
    #   @return [String]
    #
    # @!attribute [rw] vmware_category
    #   The is the category of VMware.
    #   @return [String]
    #
    # @!attribute [rw] vmware_tag_name
    #   This is the user-defined name of a VMware tag.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/VmwareToAwsTagMapping AWS API Documentation
    #
    class VmwareToAwsTagMapping < Struct.new(
      :aws_tag_key,
      :aws_tag_value,
      :vmware_category,
      :vmware_tag_name)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
