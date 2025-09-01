# frozen_string_literal: true

# This is generated code!

module Aws::BackupGateway
  # This module contains the types returned by client operations.
  module Types

    # <p>The operation cannot proceed because you have insufficient permissions.</p>
    # @!attribute error_code
    #   <p>A description of why you have insufficient permissions.</p>
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :error_code,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <code>ListGateways</code> operation
    #         to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute server_arn
    #   <p>The Amazon Resource Name (ARN) of the server that hosts your virtual machines.</p>
    #   @return [String]
    class AssociateGatewayToServerOperationInput < Struct.new(
      :gateway_arn,
      :server_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of a gateway.</p>
    #   @return [String]
    class AssociateGatewayToServerOperationOutput < Struct.new(
      :gateway_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes a bandwidth rate limit interval for a gateway. A bandwidth 
    #       rate limit schedule consists of one or more bandwidth rate limit intervals. 
    #       A bandwidth rate limit interval defines a period of time on one or more days 
    #       of the week, during which bandwidth rate limits are specified for uploading, 
    #       downloading, or both.</p>
    # @!attribute average_upload_rate_limit_in_bits_per_sec
    #   <p>The average upload rate limit component of the bandwidth rate limit 
    #         interval, in bits per second. This field does not appear in the response if 
    #         the upload rate limit is not set.</p>
    #            <note>
    #               <p>For Backup Gateway, the minimum value is <code>(Value)</code>.</p>
    #            </note>
    #   @return [Integer]
    # @!attribute start_hour_of_day
    #   <p>The hour of the day to start the bandwidth rate limit interval.</p>
    #   @return [Integer]
    # @!attribute end_hour_of_day
    #   <p>The hour of the day to end the bandwidth rate limit interval.</p>
    #   @return [Integer]
    # @!attribute start_minute_of_hour
    #   <p>The minute of the hour to start the bandwidth rate limit interval. The 
    #         interval begins at the start of that minute. To begin an interval exactly at 
    #         the start of the hour, use the value <code>0</code>.</p>
    #   @return [Integer]
    # @!attribute end_minute_of_hour
    #   <p>The minute of the hour to end the bandwidth rate limit interval.</p>
    #            <important>
    #               <p>The bandwidth rate limit interval ends at the end of the minute. 
    #         To end an interval at the end of an hour, use the value <code>59</code>.</p>
    #            </important>
    #   @return [Integer]
    # @!attribute days_of_week
    #   <p>The days of the week component of the bandwidth rate limit interval, 
    #         represented as ordinal numbers from 0 to 6, where 0 represents Sunday and 6 represents 
    #         Saturday.</p>
    #   @return [Array<Integer>]
    class BandwidthRateLimitInterval < Struct.new(
      :average_upload_rate_limit_in_bits_per_sec,
      :start_hour_of_day,
      :end_hour_of_day,
      :start_minute_of_hour,
      :end_minute_of_hour,
      :days_of_week,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The operation cannot proceed because it is not supported.</p>
    # @!attribute error_code
    #   <p>A description of why the operation is not supported.</p>
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      :error_code,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute activation_key
    #   <p>The activation key of the created gateway.</p>
    #   @return [String]
    # @!attribute gateway_display_name
    #   <p>The display name of the created gateway.</p>
    #   @return [String]
    # @!attribute gateway_type
    #   <p>The type of created gateway.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of up to 50 tags to assign to the gateway. Each tag is a key-value pair.</p>
    #   @return [Array<Types::Tag>]
    class CreateGatewayOperationInput < Struct.new(
      :activation_key,
      :gateway_display_name,
      :gateway_type,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway you create.</p>
    #   @return [String]
    class CreateGatewayOperationOutput < Struct.new(
      :gateway_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway to delete.</p>
    #   @return [String]
    class DeleteGatewayOperationInput < Struct.new(
      :gateway_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway you deleted.</p>
    #   @return [String]
    class DeleteGatewayOperationOutput < Struct.new(
      :gateway_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute hypervisor_arn
    #   <p>The Amazon Resource Name (ARN) of the hypervisor to delete.</p>
    #   @return [String]
    class DeleteHypervisorOperationInput < Struct.new(
      :hypervisor_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute hypervisor_arn
    #   <p>The Amazon Resource Name (ARN) of the hypervisor you deleted.</p>
    #   @return [String]
    class DeleteHypervisorOperationOutput < Struct.new(
      :hypervisor_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway to disassociate.</p>
    #   @return [String]
    class DisassociateGatewayFromServerOperationInput < Struct.new(
      :gateway_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway you disassociated.</p>
    #   @return [String]
    class DisassociateGatewayFromServerOperationOutput < Struct.new(
      :gateway_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A gateway is an Backup Gateway appliance that runs on the customer's network
    #       to provide seamless connectivity to backup storage in the Amazon Web Services Cloud.</p>
    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <code>ListGateways</code> operation
    #         to return a list of gateways for your account and Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute gateway_display_name
    #   <p>The display name of the gateway.</p>
    #   @return [String]
    # @!attribute gateway_type
    #   <p>The type of the gateway.</p>
    #   @return [String]
    # @!attribute hypervisor_id
    #   <p>The hypervisor ID of the gateway.</p>
    #   @return [String]
    # @!attribute last_seen_time
    #   <p>The last time Backup gateway communicated with the gateway, in Unix format and
    #         UTC time.</p>
    #   @return [Time]
    class Gateway < Struct.new(
      :gateway_arn,
      :gateway_display_name,
      :gateway_type,
      :hypervisor_id,
      :last_seen_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The details of gateway.</p>
    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the 
    #         gateway. Use the <code>ListGateways</code> operation
    #         to return a list of gateways for your account and 
    #         Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute gateway_display_name
    #   <p>The display name of the gateway.</p>
    #   @return [String]
    # @!attribute gateway_type
    #   <p>The type of the gateway type.</p>
    #   @return [String]
    # @!attribute hypervisor_id
    #   <p>The hypervisor ID of the gateway.</p>
    #   @return [String]
    # @!attribute last_seen_time
    #   <p>Details showing the last time Backup gateway communicated
    #         with the cloud, in Unix format and UTC time.</p>
    #   @return [Time]
    # @!attribute maintenance_start_time
    #   <p>Returns your gateway's weekly maintenance start time including the day and time of the week. 
    #         Note that values are in terms of the gateway's time zone. Can be weekly or monthly.</p>
    #   @return [Types::MaintenanceStartTime]
    # @!attribute next_update_availability_time
    #   <p>Details showing the next update availability time of the 
    #         gateway.</p>
    #   @return [Time]
    # @!attribute vpc_endpoint
    #   <p>The DNS name for the virtual private cloud (VPC) endpoint the gateway 
    #         uses to connect to the cloud for backup gateway.</p>
    #   @return [String]
    class GatewayDetails < Struct.new(
      :gateway_arn,
      :gateway_display_name,
      :gateway_type,
      :hypervisor_id,
      :last_seen_time,
      :maintenance_start_time,
      :next_update_availability_time,
      :vpc_endpoint,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the 
    #         <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/API_BGW_ListGateways.html">
    #                  <code>ListGateways</code>
    #               </a> operation to return a list of gateways 
    #         for your account and Amazon Web Services Region.</p>
    #   @return [String]
    class GetBandwidthRateLimitScheduleOperationInput < Struct.new(
      :gateway_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the 
    #         <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/API_BGW_ListGateways.html">
    #                  <code>ListGateways</code>
    #               </a> operation to return a list of gateways 
    #         for your account and Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute bandwidth_rate_limit_intervals
    #   <p>An array containing bandwidth rate limit schedule intervals for a gateway. 
    #         When no bandwidth rate limit intervals have been scheduled, the array is empty.</p>
    #   @return [Array<Types::BandwidthRateLimitInterval>]
    class GetBandwidthRateLimitScheduleOperationOutput < Struct.new(
      :gateway_arn,
      :bandwidth_rate_limit_intervals,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway.</p>
    #   @return [String]
    class GetGatewayOperationInput < Struct.new(
      :gateway_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute gateway
    #   <p>By providing the ARN (Amazon Resource Name), this
    #         API returns the gateway.</p>
    #   @return [Types::GatewayDetails]
    class GetGatewayOperationOutput < Struct.new(
      :gateway,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute hypervisor_arn
    #   <p>The Amazon Resource Name (ARN) of the hypervisor.</p>
    #   @return [String]
    class GetHypervisorOperationInput < Struct.new(
      :hypervisor_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute hypervisor
    #   <p>Details about the requested hypervisor.</p>
    #   @return [Types::HypervisorDetails]
    class GetHypervisorOperationOutput < Struct.new(
      :hypervisor,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute hypervisor_arn
    #   <p>The Amazon Resource Name (ARN) of the hypervisor.</p>
    #   @return [String]
    class GetHypervisorPropertyMappingsOperationInput < Struct.new(
      :hypervisor_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute hypervisor_arn
    #   <p>The Amazon Resource Name (ARN) of the hypervisor.</p>
    #   @return [String]
    # @!attribute vmware_to_aws_tag_mappings
    #   <p>This is a display of the mappings of on-premises VMware tags to the 
    #         Amazon Web Services tags.</p>
    #   @return [Array<Types::VmwareToAwsTagMapping>]
    # @!attribute iam_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role.</p>
    #   @return [String]
    class GetHypervisorPropertyMappingsOperationOutput < Struct.new(
      :hypervisor_arn,
      :vmware_to_aws_tag_mappings,
      :iam_role_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the virtual machine.</p>
    #   @return [String]
    class GetVirtualMachineOperationInput < Struct.new(
      :resource_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute virtual_machine
    #   <p>This object contains the basic attributes of <code>VirtualMachine</code> contained by the output of 
    #         <code>GetVirtualMachine</code>
    #            </p>
    #   @return [Types::VirtualMachineDetails]
    class GetVirtualMachineOperationOutput < Struct.new(
      :virtual_machine,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents the hypervisor's permissions to which the gateway will connect.</p>
    #          <p>A hypervisor is hardware, software, or firmware that creates and manages virtual machines,
    #       and allocates resources to them.</p>
    # @!attribute host
    #   <p>The server host of the hypervisor. This can be either an IP address or a fully-qualified
    #         domain name (FQDN).</p>
    #   @return [String]
    # @!attribute hypervisor_arn
    #   <p>The Amazon Resource Name (ARN) of the hypervisor.</p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the Key Management Service used to encrypt the
    #         hypervisor.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the hypervisor.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the hypervisor.</p>
    #   @return [String]
    class Hypervisor < Struct.new(
      :host,
      :hypervisor_arn,
      :kms_key_arn,
      :name,
      :state,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>These are the details of the specified hypervisor. A hypervisor is hardware, 
    #       software, or firmware that creates and manages virtual machines, and allocates 
    #       resources to them.</p>
    # @!attribute host
    #   <p>The server host of the hypervisor. This can be either an IP address or 
    #         a fully-qualified domain name (FQDN).</p>
    #   @return [String]
    # @!attribute hypervisor_arn
    #   <p>The Amazon Resource Name (ARN) of the hypervisor.</p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS  
    #         used to encrypt the hypervisor.</p>
    #   @return [String]
    # @!attribute name
    #   <p>This is the name of the specified hypervisor.</p>
    #   @return [String]
    # @!attribute log_group_arn
    #   <p>The Amazon Resource Name (ARN) of the group of gateways within 
    #         the requested log.</p>
    #   @return [String]
    # @!attribute state
    #   <p>This is the current state of the specified hypervisor.</p>
    #            <p>The possible states are <code>PENDING</code>, <code>ONLINE</code>, 
    #         <code>OFFLINE</code>, or <code>ERROR</code>.</p>
    #   @return [String]
    # @!attribute last_successful_metadata_sync_time
    #   <p>This is the time when the most recent successful sync 
    #         of metadata occurred.</p>
    #   @return [Time]
    # @!attribute latest_metadata_sync_status_message
    #   <p>This is the most recent status for the indicated metadata sync.</p>
    #   @return [String]
    # @!attribute latest_metadata_sync_status
    #   <p>This is the most recent status for the indicated metadata sync.</p>
    #   @return [String]
    class HypervisorDetails < Struct.new(
      :host,
      :hypervisor_arn,
      :kms_key_arn,
      :name,
      :log_group_arn,
      :state,
      :last_successful_metadata_sync_time,
      :latest_metadata_sync_status_message,
      :latest_metadata_sync_status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the hypervisor.</p>
    #   @return [String]
    # @!attribute host
    #   <p>The server host of the hypervisor. This can be either an IP address or a fully-qualified
    #         domain name (FQDN).</p>
    #   @return [String]
    # @!attribute username
    #   <p>The username for the hypervisor.</p>
    #   @return [String]
    # @!attribute password
    #   <p>The password for the hypervisor.</p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>The Key Management Service for the hypervisor.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags of the hypervisor configuration to import.</p>
    #   @return [Array<Types::Tag>]
    class ImportHypervisorConfigurationOperationInput < Struct.new(
      :name,
      :host,
      :username,
      :password,
      :kms_key_arn,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute hypervisor_arn
    #   <p>The Amazon Resource Name (ARN) of the hypervisor you disassociated.</p>
    #   @return [String]
    class ImportHypervisorConfigurationOperationOutput < Struct.new(
      :hypervisor_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The operation did not succeed because an internal error occurred. Try again later.</p>
    # @!attribute error_code
    #   <p>A description of which internal error occured.</p>
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      :error_code,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of gateways to list.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The next item following a partial list of returned resources. For example, if a request is
    #         made to return <code>MaxResults</code> number of resources, <code>NextToken</code> allows you
    #         to return more items in your list starting at the location pointed to by the next
    #         token.</p>
    #   @return [String]
    class ListGatewaysOperationInput < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute gateways
    #   <p>A list of your gateways.</p>
    #   @return [Array<Types::Gateway>]
    # @!attribute next_token
    #   <p>The next item following a partial list of returned resources. For example, if a request is
    #         made to return <code>maxResults</code> number of resources, <code>NextToken</code> allows you
    #         to return more items in your list starting at the location pointed to by the next
    #         token.</p>
    #   @return [String]
    class ListGatewaysOperationOutput < Struct.new(
      :gateways,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of hypervisors to list.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The next item following a partial list of returned resources. For example, if a request is
    #         made to return <code>maxResults</code> number of resources, <code>NextToken</code> allows you
    #         to return more items in your list starting at the location pointed to by the next
    #         token.</p>
    #   @return [String]
    class ListHypervisorsOperationInput < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute hypervisors
    #   <p>A list of your <code>Hypervisor</code> objects, ordered by their Amazon Resource Names
    #         (ARNs).</p>
    #   @return [Array<Types::Hypervisor>]
    # @!attribute next_token
    #   <p>The next item following a partial list of returned resources. For example, if a request is
    #         made to return <code>maxResults</code> number of resources, <code>NextToken</code> allows you
    #         to return more items in your list starting at the location pointed to by the next
    #         token.</p>
    #   @return [String]
    class ListHypervisorsOperationOutput < Struct.new(
      :hypervisors,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource's tags to list.</p>
    #   @return [String]
    class ListTagsForResourceOperationInput < Struct.new(
      :resource_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource's tags that you listed.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of the resource's tags.</p>
    #   @return [Array<Types::Tag>]
    class ListTagsForResourceOperationOutput < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute hypervisor_arn
    #   <p>The Amazon Resource Name (ARN) of the hypervisor connected to your virtual machine.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of virtual machines to list.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The next item following a partial list of returned resources. For example, if a request is
    #         made to return <code>maxResults</code> number of resources, <code>NextToken</code> allows you
    #         to return more items in your list starting at the location pointed to by the next
    #         token.</p>
    #   @return [String]
    class ListVirtualMachinesOperationInput < Struct.new(
      :hypervisor_arn,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute virtual_machines
    #   <p>A list of your <code>VirtualMachine</code> objects, ordered by their Amazon Resource Names
    #         (ARNs).</p>
    #   @return [Array<Types::VirtualMachine>]
    # @!attribute next_token
    #   <p>The next item following a partial list of returned resources. For example, if a request is
    #         made to return <code>maxResults</code> number of resources, <code>NextToken</code> allows you
    #         to return more items in your list starting at the location pointed to by the next
    #         token.</p>
    #   @return [String]
    class ListVirtualMachinesOperationOutput < Struct.new(
      :virtual_machines,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>This is your gateway's weekly maintenance start time including the day and time of the week. 
    #       Note that values are in terms of the gateway's time zone. Can be weekly or monthly.</p>
    # @!attribute day_of_month
    #   <p>The day of the month component of the maintenance start time represented as an ordinal number from 
    #         1 to 28, where 1 represents the first day of the month and 28 represents the last day of the month.</p>
    #   @return [Integer]
    # @!attribute day_of_week
    #   <p>An ordinal number between 0 and 6 that represents the day of the week, where 0 represents Sunday 
    #         and 6 represents Saturday. The day of week is in the time zone of the gateway.</p>
    #   @return [Integer]
    # @!attribute hour_of_day
    #   <p>The hour component of the maintenance start time represented as <i>hh</i>, 
    #         where <i>hh</i> is the hour (0 to 23). The hour of the day is in the time zone of the gateway.</p>
    #   @return [Integer]
    # @!attribute minute_of_hour
    #   <p>The minute component of the maintenance start time represented as <i>mm</i>, where 
    #         <i>mm</i> is the minute (0 to 59). The minute of the hour is in the time zone of the gateway.</p>
    #   @return [Integer]
    class MaintenanceStartTime < Struct.new(
      :day_of_month,
      :day_of_week,
      :hour_of_day,
      :minute_of_hour,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the 
    #         <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/API_BGW_ListGateways.html">
    #                  <code>ListGateways</code>
    #               </a> operation to return a list of gateways 
    #         for your account and Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute bandwidth_rate_limit_intervals
    #   <p>An array containing bandwidth rate limit schedule intervals for a gateway. 
    #         When no bandwidth rate limit intervals have been scheduled, the array is empty.</p>
    #   @return [Array<Types::BandwidthRateLimitInterval>]
    class PutBandwidthRateLimitScheduleOperationInput < Struct.new(
      :gateway_arn,
      :bandwidth_rate_limit_intervals,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the 
    #         <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/API_BGW_ListGateways.html">
    #                  <code>ListGateways</code>
    #               </a> operation to return a list of gateways 
    #         for your account and Amazon Web Services Region.</p>
    #   @return [String]
    class PutBandwidthRateLimitScheduleOperationOutput < Struct.new(
      :gateway_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute hypervisor_arn
    #   <p>The Amazon Resource Name (ARN) of the hypervisor.</p>
    #   @return [String]
    # @!attribute vmware_to_aws_tag_mappings
    #   <p>This action requests the mappings of on-premises VMware tags to the 
    #         Amazon Web Services tags.</p>
    #   @return [Array<Types::VmwareToAwsTagMapping>]
    # @!attribute iam_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role.</p>
    #   @return [String]
    class PutHypervisorPropertyMappingsOperationInput < Struct.new(
      :hypervisor_arn,
      :vmware_to_aws_tag_mappings,
      :iam_role_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute hypervisor_arn
    #   <p>The Amazon Resource Name (ARN) of the hypervisor.</p>
    #   @return [String]
    class PutHypervisorPropertyMappingsOperationOutput < Struct.new(
      :hypervisor_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) for the gateway, used to specify its maintenance start
    #         time.</p>
    #   @return [String]
    # @!attribute hour_of_day
    #   <p>The hour of the day to start maintenance on a gateway.</p>
    #   @return [Integer]
    # @!attribute minute_of_hour
    #   <p>The minute of the hour to start maintenance on a gateway.</p>
    #   @return [Integer]
    # @!attribute day_of_week
    #   <p>The day of the week to start maintenance on a gateway.</p>
    #   @return [Integer]
    # @!attribute day_of_month
    #   <p>The day of the month start maintenance on a gateway.</p>
    #            <p>Valid values range from <code>Sunday</code> to <code>Saturday</code>.</p>
    #   @return [Integer]
    class PutMaintenanceStartTimeOperationInput < Struct.new(
      :gateway_arn,
      :hour_of_day,
      :minute_of_hour,
      :day_of_week,
      :day_of_month,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of a gateway for which you set the maintenance start
    #         time.</p>
    #   @return [String]
    class PutMaintenanceStartTimeOperationOutput < Struct.new(
      :gateway_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A resource that is required for the action wasn't found.</p>
    # @!attribute error_code
    #   <p>A description of which resource wasn't found.</p>
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :error_code,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute hypervisor_arn
    #   <p>The Amazon Resource Name (ARN) of the hypervisor.</p>
    #   @return [String]
    class StartVirtualMachinesMetadataSyncOperationInput < Struct.new(
      :hypervisor_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute hypervisor_arn
    #   <p>The Amazon Resource Name (ARN) of the hypervisor.</p>
    #   @return [String]
    class StartVirtualMachinesMetadataSyncOperationOutput < Struct.new(
      :hypervisor_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A key-value pair you can use to manage, filter, and search for your resources. Allowed
    #       characters include UTF-8 letters, numbers, spaces, and the following characters: + - = . _ :
    #       /.</p>
    # @!attribute key
    #   <p>The key part of a tag's key-value pair. The key can't start with <code>aws:</code>.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value part of a tag's key-value pair.</p>
    #   @return [String]
    class Tag < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to tag.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of tags to assign to the resource.</p>
    #   @return [Array<Types::Tag>]
    class TagResourceOperationInput < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource you tagged.</p>
    #   @return [String]
    class TagResourceOperationOutput < Struct.new(
      :resource_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway to the hypervisor to test.</p>
    #   @return [String]
    # @!attribute host
    #   <p>The server host of the hypervisor. This can be either an IP address or a fully-qualified
    #         domain name (FQDN).</p>
    #   @return [String]
    # @!attribute username
    #   <p>The username for the hypervisor.</p>
    #   @return [String]
    # @!attribute password
    #   <p>The password for the hypervisor.</p>
    #   @return [String]
    class TestHypervisorConfigurationOperationInput < Struct.new(
      :gateway_arn,
      :host,
      :username,
      :password,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class TestHypervisorConfigurationOperationOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>TPS has been limited to protect against intentional or unintentional 
    #     high request volumes.</p>
    # @!attribute error_code
    #   <p>Error: TPS has been limited to protect against intentional or unintentional 
    #         high request volumes.</p>
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      :error_code,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource from which to remove tags.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The list of tag keys specifying which tags to remove.</p>
    #   @return [Array<String>]
    class UntagResourceOperationInput < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource from which you removed tags.</p>
    #   @return [String]
    class UntagResourceOperationOutput < Struct.new(
      :resource_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway to update.</p>
    #   @return [String]
    # @!attribute gateway_display_name
    #   <p>The updated display name of the gateway.</p>
    #   @return [String]
    class UpdateGatewayInformationOperationInput < Struct.new(
      :gateway_arn,
      :gateway_display_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway you updated.</p>
    #   @return [String]
    class UpdateGatewayInformationOperationOutput < Struct.new(
      :gateway_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway
    #         to be updated.</p>
    #   @return [String]
    class UpdateGatewaySoftwareNowOperationInput < Struct.new(
      :gateway_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway
    #         you updated.</p>
    #   @return [String]
    class UpdateGatewaySoftwareNowOperationOutput < Struct.new(
      :gateway_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute hypervisor_arn
    #   <p>The Amazon Resource Name (ARN) of the hypervisor to update.</p>
    #   @return [String]
    # @!attribute host
    #   <p>The updated host of the hypervisor. This can be either an IP address or a fully-qualified
    #         domain name (FQDN).</p>
    #   @return [String]
    # @!attribute username
    #   <p>The updated username for the hypervisor.</p>
    #   @return [String]
    # @!attribute password
    #   <p>The updated password for the hypervisor.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The updated name for the hypervisor</p>
    #   @return [String]
    # @!attribute log_group_arn
    #   <p>The Amazon Resource Name (ARN) of the group of gateways within the requested log.</p>
    #   @return [String]
    class UpdateHypervisorOperationInput < Struct.new(
      :hypervisor_arn,
      :host,
      :username,
      :password,
      :name,
      :log_group_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute hypervisor_arn
    #   <p>The Amazon Resource Name (ARN) of the hypervisor you updated.</p>
    #   @return [String]
    class UpdateHypervisorOperationOutput < Struct.new(
      :hypervisor_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The operation did not succeed because a validation error occurred.</p>
    # @!attribute error_code
    #   <p>A description of what caused the validation error.</p>
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      :error_code,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A virtual machine that is on a hypervisor.</p>
    # @!attribute host_name
    #   <p>The host name of the virtual machine.</p>
    #   @return [String]
    # @!attribute hypervisor_id
    #   <p>The ID of the virtual machine's hypervisor.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the virtual machine.</p>
    #   @return [String]
    # @!attribute path
    #   <p>The path of the virtual machine.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the virtual machine. For example,
    #           <code>arn:aws:backup-gateway:us-west-1:0000000000000:vm/vm-0000ABCDEFGIJKL</code>.</p>
    #   @return [String]
    # @!attribute last_backup_date
    #   <p>The most recent date a virtual machine was backed up, in Unix format and UTC time.</p>
    #   @return [Time]
    class VirtualMachine < Struct.new(
      :host_name,
      :hypervisor_id,
      :name,
      :path,
      :resource_arn,
      :last_backup_date,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Your <code>VirtualMachine</code> objects, ordered by their Amazon Resource Names (ARNs).</p>
    # @!attribute host_name
    #   <p>The host name of the virtual machine.</p>
    #   @return [String]
    # @!attribute hypervisor_id
    #   <p>The ID of the virtual machine's hypervisor.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the virtual machine.</p>
    #   @return [String]
    # @!attribute path
    #   <p>The path of the virtual machine.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the virtual machine. For example, 
    #         <code>arn:aws:backup-gateway:us-west-1:0000000000000:vm/vm-0000ABCDEFGIJKL</code>.</p>
    #   @return [String]
    # @!attribute last_backup_date
    #   <p>The most recent date a virtual machine was backed up, in Unix format and UTC time.</p>
    #   @return [Time]
    # @!attribute vmware_tags
    #   <p>These are the details of the VMware tags associated with the specified 
    #         virtual machine.</p>
    #   @return [Array<Types::VmwareTag>]
    class VirtualMachineDetails < Struct.new(
      :host_name,
      :hypervisor_id,
      :name,
      :path,
      :resource_arn,
      :last_backup_date,
      :vmware_tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A VMware tag is a tag attached to a specific virtual machine.
    #       A <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/API_BGW_Tag.html">tag</a> 
    #       is a key-value pair you can use to manage, filter, and search for your resources.</p>
    #          <p>The content of VMware tags can be matched to Amazon Web Services tags.</p>
    # @!attribute vmware_category
    #   <p>The is the category of VMware.</p>
    #   @return [String]
    # @!attribute vmware_tag_name
    #   <p>This is the user-defined name of a VMware tag.</p>
    #   @return [String]
    # @!attribute vmware_tag_description
    #   <p>This is a user-defined description of a VMware tag.</p>
    #   @return [String]
    class VmwareTag < Struct.new(
      :vmware_category,
      :vmware_tag_name,
      :vmware_tag_description,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>This displays the mapping of on-premises VMware tags to the 
    #       corresponding Amazon Web Services tags.</p>
    # @!attribute vmware_category
    #   <p>The is the category of VMware.</p>
    #   @return [String]
    # @!attribute vmware_tag_name
    #   <p>This is the user-defined name of a VMware tag.</p>
    #   @return [String]
    # @!attribute aws_tag_key
    #   <p>The key part of the Amazon Web Services tag's key-value pair.</p>
    #   @return [String]
    # @!attribute aws_tag_value
    #   <p>The value part of the Amazon Web Services tag's key-value pair.</p>
    #   @return [String]
    class VmwareToAwsTagMapping < Struct.new(
      :vmware_category,
      :vmware_tag_name,
      :aws_tag_key,
      :aws_tag_value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

  end
end
