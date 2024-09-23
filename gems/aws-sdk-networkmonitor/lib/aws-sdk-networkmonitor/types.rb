# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::NetworkMonitor
  module Types

    # You do not have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmonitor-2023-08-01/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # This operation attempted to create a resource that already exists.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmonitor-2023-08-01/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] monitor_name
    #   The name identifying the monitor. It can contain only letters,
    #   underscores (\_), or dashes (-), and can be up to 200 characters.
    #   @return [String]
    #
    # @!attribute [rw] probes
    #   Displays a list of all of the probes created for a monitor.
    #   @return [Array<Types::CreateMonitorProbeInput>]
    #
    # @!attribute [rw] aggregation_period
    #   The time, in seconds, that metrics are aggregated and sent to Amazon
    #   CloudWatch. Valid values are either `30` or `60`. `60` is the
    #   default if no period is chosen.
    #   @return [Integer]
    #
    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier to ensure the idempotency of the
    #   request. Only returned if a client token was provided in the
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The list of key-value pairs created and assigned to the monitor.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmonitor-2023-08-01/CreateMonitorInput AWS API Documentation
    #
    class CreateMonitorInput < Struct.new(
      :monitor_name,
      :probes,
      :aggregation_period,
      :client_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] monitor_arn
    #   The ARN of the monitor.
    #   @return [String]
    #
    # @!attribute [rw] monitor_name
    #   The name of the monitor.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the monitor.
    #   @return [String]
    #
    # @!attribute [rw] aggregation_period
    #   The number of seconds that metrics are aggregated by and sent to
    #   Amazon CloudWatch. This will be either `30` or `60`.
    #   @return [Integer]
    #
    # @!attribute [rw] tags
    #   The list of key-value pairs assigned to the monitor.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmonitor-2023-08-01/CreateMonitorOutput AWS API Documentation
    #
    class CreateMonitorOutput < Struct.new(
      :monitor_arn,
      :monitor_name,
      :state,
      :aggregation_period,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Creates a monitor probe.
    #
    # @!attribute [rw] source_arn
    #   The ARN of the subnet.
    #   @return [String]
    #
    # @!attribute [rw] destination
    #   The destination IP address. This must be either `IPV4` or `IPV6`.
    #   @return [String]
    #
    # @!attribute [rw] destination_port
    #   The port associated with the `destination`. This is required only if
    #   the `protocol` is `TCP` and must be a number between `1` and
    #   `65536`.
    #   @return [Integer]
    #
    # @!attribute [rw] protocol
    #   The protocol used for the network traffic between the `source` and
    #   `destination`. This must be either `TCP` or `ICMP`.
    #   @return [String]
    #
    # @!attribute [rw] packet_size
    #   The size of the packets sent between the source and destination.
    #   This must be a number between `56` and `8500`.
    #   @return [Integer]
    #
    # @!attribute [rw] probe_tags
    #   The list of key-value pairs created and assigned to the monitor.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmonitor-2023-08-01/CreateMonitorProbeInput AWS API Documentation
    #
    class CreateMonitorProbeInput < Struct.new(
      :source_arn,
      :destination,
      :destination_port,
      :protocol,
      :packet_size,
      :probe_tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] monitor_name
    #   The name of the monitor to associated with the probe.
    #   @return [String]
    #
    # @!attribute [rw] probe
    #   Describes the details of an individual probe for a monitor.
    #   @return [Types::ProbeInput]
    #
    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier to ensure the idempotency of the
    #   request. Only returned if a client token was provided in the
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The list of key-value pairs created and assigned to the probe.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmonitor-2023-08-01/CreateProbeInput AWS API Documentation
    #
    class CreateProbeInput < Struct.new(
      :monitor_name,
      :probe,
      :client_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] probe_id
    #   The ID of the probe for which details are returned.
    #   @return [String]
    #
    # @!attribute [rw] probe_arn
    #   The ARN of the probe.
    #   @return [String]
    #
    # @!attribute [rw] source_arn
    #   The ARN of the probe.
    #   @return [String]
    #
    # @!attribute [rw] destination
    #   The destination IP address for the monitor. This must be either an
    #   IPv4 or IPv6 address.
    #   @return [String]
    #
    # @!attribute [rw] destination_port
    #   The port associated with the `destination`. This is required only if
    #   the `protocol` is `TCP` and must be a number between `1` and
    #   `65536`.
    #   @return [Integer]
    #
    # @!attribute [rw] protocol
    #   The protocol used for the network traffic between the `source` and
    #   `destination`. This must be either `TCP` or `ICMP`.
    #   @return [String]
    #
    # @!attribute [rw] packet_size
    #   The size of the packets sent between the source and destination.
    #   This must be a number between `56` and `8500`.
    #   @return [Integer]
    #
    # @!attribute [rw] address_family
    #   Indicates whether the IP address is `IPV4` or `IPV6`.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the source VPC or subnet.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the probe.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time and date that the probe was created.
    #   @return [Time]
    #
    # @!attribute [rw] modified_at
    #   The time and date when the probe was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The list of key-value pairs assigned to the probe.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmonitor-2023-08-01/CreateProbeOutput AWS API Documentation
    #
    class CreateProbeOutput < Struct.new(
      :probe_id,
      :probe_arn,
      :source_arn,
      :destination,
      :destination_port,
      :protocol,
      :packet_size,
      :address_family,
      :vpc_id,
      :state,
      :created_at,
      :modified_at,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] monitor_name
    #   The name of the monitor to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmonitor-2023-08-01/DeleteMonitorInput AWS API Documentation
    #
    class DeleteMonitorInput < Struct.new(
      :monitor_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmonitor-2023-08-01/DeleteMonitorOutput AWS API Documentation
    #
    class DeleteMonitorOutput < Aws::EmptyStructure; end

    # @!attribute [rw] monitor_name
    #   The name of the monitor to delete.
    #   @return [String]
    #
    # @!attribute [rw] probe_id
    #   The ID of the probe to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmonitor-2023-08-01/DeleteProbeInput AWS API Documentation
    #
    class DeleteProbeInput < Struct.new(
      :monitor_name,
      :probe_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmonitor-2023-08-01/DeleteProbeOutput AWS API Documentation
    #
    class DeleteProbeOutput < Aws::EmptyStructure; end

    # @!attribute [rw] monitor_name
    #   The name of the monitor that details are returned for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmonitor-2023-08-01/GetMonitorInput AWS API Documentation
    #
    class GetMonitorInput < Struct.new(
      :monitor_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] monitor_arn
    #   The ARN of the selected monitor.
    #   @return [String]
    #
    # @!attribute [rw] monitor_name
    #   The name of the monitor.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   Lists the status of the `state` of each monitor.
    #   @return [String]
    #
    # @!attribute [rw] aggregation_period
    #   The aggregation period for the specified monitor.
    #   @return [Integer]
    #
    # @!attribute [rw] tags
    #   The list of key-value pairs assigned to the monitor.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] probes
    #   The details about each probe associated with that monitor.
    #   @return [Array<Types::Probe>]
    #
    # @!attribute [rw] created_at
    #   The time and date when the monitor was created.
    #   @return [Time]
    #
    # @!attribute [rw] modified_at
    #   The time and date when the monitor was last modified.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmonitor-2023-08-01/GetMonitorOutput AWS API Documentation
    #
    class GetMonitorOutput < Struct.new(
      :monitor_arn,
      :monitor_name,
      :state,
      :aggregation_period,
      :tags,
      :probes,
      :created_at,
      :modified_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] monitor_name
    #   The name of the monitor associated with the probe. Run
    #   `ListMonitors` to get a list of monitor names.
    #   @return [String]
    #
    # @!attribute [rw] probe_id
    #   The ID of the probe to get information about. Run `GetMonitor`
    #   action to get a list of probes and probe IDs for the monitor.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmonitor-2023-08-01/GetProbeInput AWS API Documentation
    #
    class GetProbeInput < Struct.new(
      :monitor_name,
      :probe_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] probe_id
    #   The ID of the probe for which details are returned.
    #   @return [String]
    #
    # @!attribute [rw] probe_arn
    #   The ARN of the probe.
    #   @return [String]
    #
    # @!attribute [rw] source_arn
    #   The ARN of the probe.
    #   @return [String]
    #
    # @!attribute [rw] destination
    #   The destination IP address for the monitor. This must be either an
    #   IPv4 or IPv6 address.
    #   @return [String]
    #
    # @!attribute [rw] destination_port
    #   The port associated with the `destination`. This is required only if
    #   the `protocol` is `TCP` and must be a number between `1` and
    #   `65536`.
    #   @return [Integer]
    #
    # @!attribute [rw] protocol
    #   The protocol used for the network traffic between the `source` and
    #   `destination`. This must be either `TCP` or `ICMP`.
    #   @return [String]
    #
    # @!attribute [rw] packet_size
    #   The size of the packets sent between the source and destination.
    #   This must be a number between `56` and `8500`.
    #   @return [Integer]
    #
    # @!attribute [rw] address_family
    #   Indicates whether the IP address is `IPV4` or `IPV6`.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the source VPC or subnet.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the probe.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time and date that the probe was created.
    #   @return [Time]
    #
    # @!attribute [rw] modified_at
    #   The time and date that the probe was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The list of key-value pairs assigned to the probe.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmonitor-2023-08-01/GetProbeOutput AWS API Documentation
    #
    class GetProbeOutput < Struct.new(
      :probe_id,
      :probe_arn,
      :source_arn,
      :destination,
      :destination_port,
      :protocol,
      :packet_size,
      :address_family,
      :vpc_id,
      :state,
      :created_at,
      :modified_at,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request processing has failed because of an unknown error,
    # exception or failure.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmonitor-2023-08-01/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `nextToken` value.
    #
    #   If `MaxResults` is given a value larger than 100, only 100 results
    #   are returned.
    #   @return [Integer]
    #
    # @!attribute [rw] state
    #   The list of all monitors and their states.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmonitor-2023-08-01/ListMonitorsInput AWS API Documentation
    #
    class ListMonitorsInput < Struct.new(
      :next_token,
      :max_results,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] monitors
    #   Lists individual details about each of your monitors.
    #   @return [Array<Types::MonitorSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmonitor-2023-08-01/ListMonitorsOutput AWS API Documentation
    #
    class ListMonitorsOutput < Struct.new(
      :monitors,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmonitor-2023-08-01/ListTagsForResourceInput AWS API Documentation
    #
    class ListTagsForResourceInput < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   Lists the tags assigned to the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmonitor-2023-08-01/ListTagsForResourceOutput AWS API Documentation
    #
    class ListTagsForResourceOutput < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Displays summary information about a monitor.
    #
    # @!attribute [rw] monitor_arn
    #   The ARN of the monitor.
    #   @return [String]
    #
    # @!attribute [rw] monitor_name
    #   The name of the monitor.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the monitor.
    #   @return [String]
    #
    # @!attribute [rw] aggregation_period
    #   The time, in seconds, that metrics are collected and sent to Amazon
    #   CloudWatch. Valid values are either `30` or `60`.
    #   @return [Integer]
    #
    # @!attribute [rw] tags
    #   The list of key-value pairs assigned to the monitor.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmonitor-2023-08-01/MonitorSummary AWS API Documentation
    #
    class MonitorSummary < Struct.new(
      :monitor_arn,
      :monitor_name,
      :state,
      :aggregation_period,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes information about a network monitor probe.
    #
    # @!attribute [rw] probe_id
    #   The ID of the probe.
    #   @return [String]
    #
    # @!attribute [rw] probe_arn
    #   The ARN of the probe.
    #   @return [String]
    #
    # @!attribute [rw] source_arn
    #   The ARN of the probe source subnet.
    #   @return [String]
    #
    # @!attribute [rw] destination
    #   The destination for the probe. This should be either an `IPV4` or
    #   `IPV6`.
    #   @return [String]
    #
    # @!attribute [rw] destination_port
    #   The destination port for the probe. This is required only if the
    #   `protocol` is `TCP` and must be a number between `1` and `65536`.
    #   @return [Integer]
    #
    # @!attribute [rw] protocol
    #   The network protocol for the destination. This can be either `TCP`
    #   or `ICMP`. If the protocol is `TCP`, then `port` is also required.
    #   @return [String]
    #
    # @!attribute [rw] packet_size
    #   The size of the packets traveling between the `source` and
    #   `destination`. This must be a number between `56` and
    #   @return [Integer]
    #
    # @!attribute [rw] address_family
    #   The IPv4 or IPv6 address for the probe.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the source VPC subnet.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the probe.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time and date the probe was created.
    #   @return [Time]
    #
    # @!attribute [rw] modified_at
    #   The time and date that the probe was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The list of key-value pairs created and assigned to the probe.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmonitor-2023-08-01/Probe AWS API Documentation
    #
    class Probe < Struct.new(
      :probe_id,
      :probe_arn,
      :source_arn,
      :destination,
      :destination_port,
      :protocol,
      :packet_size,
      :address_family,
      :vpc_id,
      :state,
      :created_at,
      :modified_at,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines a probe when creating a probe or monitor.
    #
    # @!attribute [rw] source_arn
    #   The ARN of the subnet.
    #   @return [String]
    #
    # @!attribute [rw] destination
    #   The destination IP address. This must be either `IPV4` or `IPV6`.
    #   @return [String]
    #
    # @!attribute [rw] destination_port
    #   The port associated with the `destination`. This is required only if
    #   the `protocol` is `TCP` and must be a number between `1` and
    #   `65536`.
    #   @return [Integer]
    #
    # @!attribute [rw] protocol
    #   The protocol used for the network traffic between the `source` and
    #   `destination`. This must be either `TCP` or `ICMP`.
    #   @return [String]
    #
    # @!attribute [rw] packet_size
    #   The size of the packets sent between the source and destination.
    #   This must be a number between `56` and `8500`.
    #   @return [Integer]
    #
    # @!attribute [rw] tags
    #   The list of key-value pairs created and assigned to the monitor.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmonitor-2023-08-01/ProbeInput AWS API Documentation
    #
    class ProbeInput < Struct.new(
      :source_arn,
      :destination,
      :destination_port,
      :protocol,
      :packet_size,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource does not exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmonitor-2023-08-01/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # This request exceeds a service quota.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmonitor-2023-08-01/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the monitor or probe to tag.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The list of key-value pairs assigned to the monitor or probe.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmonitor-2023-08-01/TagResourceInput AWS API Documentation
    #
    class TagResourceInput < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmonitor-2023-08-01/TagResourceOutput AWS API Documentation
    #
    class TagResourceOutput < Aws::EmptyStructure; end

    # The request was denied due to request throttling
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmonitor-2023-08-01/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the monitor or probe that the tag should be removed from.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The key-value pa
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmonitor-2023-08-01/UntagResourceInput AWS API Documentation
    #
    class UntagResourceInput < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmonitor-2023-08-01/UntagResourceOutput AWS API Documentation
    #
    class UntagResourceOutput < Aws::EmptyStructure; end

    # @!attribute [rw] monitor_name
    #   The name of the monitor to update.
    #   @return [String]
    #
    # @!attribute [rw] aggregation_period
    #   The aggregation time, in seconds, to change to. This must be either
    #   `30` or `60`.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmonitor-2023-08-01/UpdateMonitorInput AWS API Documentation
    #
    class UpdateMonitorInput < Struct.new(
      :monitor_name,
      :aggregation_period)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] monitor_arn
    #   The ARN of the monitor that was updated.
    #   @return [String]
    #
    # @!attribute [rw] monitor_name
    #   The name of the monitor that was updated.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the updated monitor.
    #   @return [String]
    #
    # @!attribute [rw] aggregation_period
    #   The changed aggregation period.
    #   @return [Integer]
    #
    # @!attribute [rw] tags
    #   The list of key-value pairs associated with the monitor.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmonitor-2023-08-01/UpdateMonitorOutput AWS API Documentation
    #
    class UpdateMonitorOutput < Struct.new(
      :monitor_arn,
      :monitor_name,
      :state,
      :aggregation_period,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] monitor_name
    #   The name of the monitor that the probe was updated for.
    #   @return [String]
    #
    # @!attribute [rw] probe_id
    #   The ID of the probe to update.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the probe update.
    #   @return [String]
    #
    # @!attribute [rw] destination
    #   The updated IP address for the probe destination. This must be
    #   either an IPv4 or IPv6 address.
    #   @return [String]
    #
    # @!attribute [rw] destination_port
    #   The updated port for the probe destination. This is required only if
    #   the `protocol` is `TCP` and must be a number between `1` and
    #   `65536`.
    #   @return [Integer]
    #
    # @!attribute [rw] protocol
    #   The updated network protocol for the destination. This can be either
    #   `TCP` or `ICMP`. If the protocol is `TCP`, then `port` is also
    #   required.
    #   @return [String]
    #
    # @!attribute [rw] packet_size
    #   he updated packets size for network traffic between the source and
    #   destination. This must be a number between `56` and `8500`.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmonitor-2023-08-01/UpdateProbeInput AWS API Documentation
    #
    class UpdateProbeInput < Struct.new(
      :monitor_name,
      :probe_id,
      :state,
      :destination,
      :destination_port,
      :protocol,
      :packet_size)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] probe_id
    #   The updated ID of the probe.
    #   @return [String]
    #
    # @!attribute [rw] probe_arn
    #   The updated ARN of the probe.
    #   @return [String]
    #
    # @!attribute [rw] source_arn
    #   The updated ARN of the source subnet.
    #   @return [String]
    #
    # @!attribute [rw] destination
    #   The updated destination IP address for the probe.
    #   @return [String]
    #
    # @!attribute [rw] destination_port
    #   The updated destination port. This must be a number between `1` and
    #   `65536`.
    #   @return [Integer]
    #
    # @!attribute [rw] protocol
    #   The updated protocol for the probe.
    #   @return [String]
    #
    # @!attribute [rw] packet_size
    #   The updated packet size for the probe.
    #   @return [Integer]
    #
    # @!attribute [rw] address_family
    #   The updated IP address family. This must be either `IPV4` or `IPV6`.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The updated ID of the source VPC subnet ID.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the updated probe.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time and date that the probe was created.
    #   @return [Time]
    #
    # @!attribute [rw] modified_at
    #   The time and date that the probe was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   Update tags for a probe.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmonitor-2023-08-01/UpdateProbeOutput AWS API Documentation
    #
    class UpdateProbeOutput < Struct.new(
      :probe_id,
      :probe_arn,
      :source_arn,
      :destination,
      :destination_port,
      :protocol,
      :packet_size,
      :address_family,
      :vpc_id,
      :state,
      :created_at,
      :modified_at,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # One of the parameters for the request is not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmonitor-2023-08-01/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

