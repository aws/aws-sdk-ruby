# frozen_string_literal: true

# This is generated code!

module Aws::NetworkMonitor
  # This module contains the types returned by client operations.
  module Types

    # <p>You do not have sufficient access to perform this action.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module AddressFamily
      IPV4 = 'IPV4'
      IPV6 = 'IPV6'
    end

    # <p>This operation attempted to create a resource that already exists.</p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute monitor_name
    #   <p>The name identifying the monitor. It can contain only letters, underscores (_), or dashes (-), and can be up to 200 characters.</p>
    #   @return [String]
    # @!attribute probes
    #   <p>Displays a list of all of the probes created for a monitor.</p>
    #   @return [Array<Types::CreateMonitorProbeInput>]
    # @!attribute aggregation_period
    #   <p>The time, in seconds, that metrics are aggregated and sent to Amazon CloudWatch. Valid
    #               values are either <code>30</code> or <code>60</code>.  <code>60</code> is the default if
    #               no period is chosen.</p>
    #   @return [Integer]
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier to ensure the idempotency of the request. Only returned if a client token was provided in the request.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The list of key-value pairs created and assigned to the monitor.</p>
    #   @return [Hash<String, String>]
    class CreateMonitorInput < Struct.new(
      :monitor_name,
      :probes,
      :aggregation_period,
      :client_token,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute monitor_arn
    #   <p>The ARN of the monitor.</p>
    #   @return [String]
    # @!attribute monitor_name
    #   <p>The name of the monitor.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the monitor.</p>
    #   @return [String]
    # @!attribute aggregation_period
    #   <p>The number of seconds that metrics are aggregated by and sent to Amazon CloudWatch.
    #               This will be either <code>30</code> or <code>60</code>. </p>
    #   @return [Integer]
    # @!attribute tags
    #   <p>The list of key-value pairs assigned to the monitor.</p>
    #   @return [Hash<String, String>]
    class CreateMonitorOutput < Struct.new(
      :monitor_arn,
      :monitor_name,
      :state,
      :aggregation_period,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Creates a monitor probe.</p>
    # @!attribute source_arn
    #   <p>The ARN of the subnet.</p>
    #   @return [String]
    # @!attribute destination
    #   <p>The destination IP address. This must be either <code>IPV4</code> or <code>IPV6</code>.</p>
    #   @return [String]
    # @!attribute destination_port
    #   <p>The port associated with the <code>destination</code>. This is required only if the <code>protocol</code> is <code>TCP</code> and must be a number between <code>1</code> and <code>65536</code>.</p>
    #   @return [Integer]
    # @!attribute protocol
    #   <p>The protocol used for the network traffic between the <code>source</code> and <code>destination</code>. This must be either <code>TCP</code> or <code>ICMP</code>.</p>
    #   @return [String]
    # @!attribute packet_size
    #   <p>The size of the packets sent between the source and destination. This must be a number between <code>56</code> and <code>8500</code>.</p>
    #   @return [Integer]
    # @!attribute probe_tags
    #   <p>The list of key-value pairs created and assigned to the monitor.</p>
    #   @return [Hash<String, String>]
    class CreateMonitorProbeInput < Struct.new(
      :source_arn,
      :destination,
      :destination_port,
      :protocol,
      :packet_size,
      :probe_tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute monitor_name
    #   <p>The name of the monitor to associated with the probe. </p>
    #   @return [String]
    # @!attribute probe
    #   <p>Describes the details of an individual probe for a monitor.</p>
    #   @return [Types::ProbeInput]
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier to ensure the idempotency of the request. Only returned if a client token was provided in the request.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The list of key-value pairs created and assigned to the probe.</p>
    #   @return [Hash<String, String>]
    class CreateProbeInput < Struct.new(
      :monitor_name,
      :probe,
      :client_token,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute probe_id
    #   <p>The ID of the probe for which details are returned.</p>
    #   @return [String]
    # @!attribute probe_arn
    #   <p>The ARN of the probe.</p>
    #   @return [String]
    # @!attribute source_arn
    #   <p>The ARN of the probe.</p>
    #   @return [String]
    # @!attribute destination
    #   <p>The destination IP address for the monitor. This must be either an IPv4 or IPv6 address.</p>
    #   @return [String]
    # @!attribute destination_port
    #   <p>The port associated with the <code>destination</code>. This is required only if the <code>protocol</code> is <code>TCP</code> and must be a number between <code>1</code> and <code>65536</code>.</p>
    #   @return [Integer]
    # @!attribute protocol
    #   <p>The protocol used for the network traffic between the <code>source</code> and <code>destination</code>. This must be either <code>TCP</code> or <code>ICMP</code>.</p>
    #   @return [String]
    # @!attribute packet_size
    #   <p>The size of the packets sent between the source and destination. This must be a number between <code>56</code> and <code>8500</code>.</p>
    #   @return [Integer]
    # @!attribute address_family
    #   <p>Indicates whether the IP address is <code>IPV4</code> or <code>IPV6</code>.</p>
    #   @return [String]
    # @!attribute vpc_id
    #   <p>The ID of the source VPC or subnet.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the probe.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time and date that the probe was created.</p>
    #   @return [Time]
    # @!attribute modified_at
    #   <p>The time and date when the probe was last modified. </p>
    #   @return [Time]
    # @!attribute tags
    #   <p>The list of key-value pairs assigned to the probe.</p>
    #   @return [Hash<String, String>]
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
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute monitor_name
    #   <p>The name of the monitor to delete.  </p>
    #   @return [String]
    class DeleteMonitorInput < Struct.new(
      :monitor_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteMonitorOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute monitor_name
    #   <p>The name of the monitor to delete. </p>
    #   @return [String]
    # @!attribute probe_id
    #   <p>The ID of the probe to delete. </p>
    #   @return [String]
    class DeleteProbeInput < Struct.new(
      :monitor_name,
      :probe_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteProbeOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute monitor_name
    #   <p>The name of the monitor that details are returned for.</p>
    #   @return [String]
    class GetMonitorInput < Struct.new(
      :monitor_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute monitor_arn
    #   <p>The ARN of the selected monitor.</p>
    #   @return [String]
    # @!attribute monitor_name
    #   <p>The name of the monitor. </p>
    #   @return [String]
    # @!attribute state
    #   <p>Lists the status of the <code>state</code> of each monitor. </p>
    #   @return [String]
    # @!attribute aggregation_period
    #   <p>The aggregation period for the specified monitor.</p>
    #   @return [Integer]
    # @!attribute tags
    #   <p>The list of key-value pairs assigned to the monitor.</p>
    #   @return [Hash<String, String>]
    # @!attribute probes
    #   <p>The details about each probe associated with that monitor. </p>
    #   @return [Array<Types::Probe>]
    # @!attribute created_at
    #   <p>The time and date when the monitor was created.</p>
    #   @return [Time]
    # @!attribute modified_at
    #   <p>The time and date when the monitor was last modified.</p>
    #   @return [Time]
    class GetMonitorOutput < Struct.new(
      :monitor_arn,
      :monitor_name,
      :state,
      :aggregation_period,
      :tags,
      :probes,
      :created_at,
      :modified_at,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute monitor_name
    #   <p>The name of the monitor associated with the probe. Run <code>ListMonitors</code> to get a list of monitor names.</p>
    #   @return [String]
    # @!attribute probe_id
    #   <p>The ID of the probe to get information about. Run <code>GetMonitor</code> action to get a list of probes and probe IDs for the  monitor.</p>
    #   @return [String]
    class GetProbeInput < Struct.new(
      :monitor_name,
      :probe_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute probe_id
    #   <p>The ID of the probe for which details are returned.</p>
    #   @return [String]
    # @!attribute probe_arn
    #   <p>The ARN of the probe.</p>
    #   @return [String]
    # @!attribute source_arn
    #   <p>The ARN of the probe.</p>
    #   @return [String]
    # @!attribute destination
    #   <p>The destination IP address for the monitor. This must be either an IPv4 or IPv6 address.</p>
    #   @return [String]
    # @!attribute destination_port
    #   <p>The port associated with the <code>destination</code>. This is required only if the <code>protocol</code> is <code>TCP</code> and must be a number between <code>1</code> and <code>65536</code>.</p>
    #   @return [Integer]
    # @!attribute protocol
    #   <p>The protocol used for the network traffic between the <code>source</code> and <code>destination</code>. This must be either <code>TCP</code> or <code>ICMP</code>.</p>
    #   @return [String]
    # @!attribute packet_size
    #   <p>The size of the packets sent between the source and destination. This must be a number between <code>56</code> and <code>8500</code>.</p>
    #   @return [Integer]
    # @!attribute address_family
    #   <p>Indicates whether the IP address is <code>IPV4</code> or <code>IPV6</code>.</p>
    #   @return [String]
    # @!attribute vpc_id
    #   <p>The ID of the source VPC or subnet.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the probe.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time and date that the probe was created.</p>
    #   @return [Time]
    # @!attribute modified_at
    #   <p>The time and date that the probe was last modified.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>The list of key-value pairs assigned to the probe.</p>
    #   @return [Hash<String, String>]
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
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request processing has failed because of an unknown error, exception or failure.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return with a single call.
    #   	To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    #            <p>If <code>MaxResults</code> is given a value larger than 100, only 100 results are
    #         returned.</p>
    #   @return [Integer]
    # @!attribute state
    #   <p>The list of all monitors and their states.</p>
    #   @return [String]
    class ListMonitorsInput < Struct.new(
      :next_token,
      :max_results,
      :state,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute monitors
    #   <p>Lists individual details about each of your monitors.</p>
    #   @return [Array<Types::MonitorSummary>]
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    class ListMonitorsOutput < Struct.new(
      :monitors,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The </p>
    #   @return [String]
    class ListTagsForResourceInput < Struct.new(
      :resource_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>Lists the tags assigned to the resource.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceOutput < Struct.new(
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module MonitorState
      PENDING = 'PENDING'
      ACTIVE = 'ACTIVE'
      INACTIVE = 'INACTIVE'
      ERROR = 'ERROR'
      DELETING = 'DELETING'
    end

    # <p>Displays summary information about a monitor.</p>
    # @!attribute monitor_arn
    #   <p>The ARN of the monitor.</p>
    #   @return [String]
    # @!attribute monitor_name
    #   <p>The name of the monitor.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the monitor.</p>
    #   @return [String]
    # @!attribute aggregation_period
    #   <p>The time, in seconds, that metrics are collected and sent to Amazon CloudWatch. Valid values are either <code>30</code> or <code>60</code>.</p>
    #   @return [Integer]
    # @!attribute tags
    #   <p>The list of key-value pairs assigned to the monitor.</p>
    #   @return [Hash<String, String>]
    class MonitorSummary < Struct.new(
      :monitor_arn,
      :monitor_name,
      :state,
      :aggregation_period,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes information about a network monitor probe.</p>
    # @!attribute probe_id
    #   <p>The ID of the probe.</p>
    #   @return [String]
    # @!attribute probe_arn
    #   <p>The ARN of the probe.</p>
    #   @return [String]
    # @!attribute source_arn
    #   <p>The ARN of the probe source subnet.</p>
    #   @return [String]
    # @!attribute destination
    #   <p>The destination for the probe. This should be either an <code>IPV4</code> or <code>IPV6</code>.</p>
    #   @return [String]
    # @!attribute destination_port
    #   <p>The destination port for the probe. This is required only if the <code>protocol</code> is <code>TCP</code> and must be a number between <code>1</code> and <code>65536</code>.</p>
    #   @return [Integer]
    # @!attribute protocol
    #   <p>The network protocol for the destination. This can be either <code>TCP</code> or <code>ICMP</code>. If the protocol is <code>TCP</code>, then <code>port</code> is also required.</p>
    #   @return [String]
    # @!attribute packet_size
    #   <p>The size of the packets traveling between the <code>source</code> and <code>destination</code>. This must be a number between <code>56</code> and </p>
    #   @return [Integer]
    # @!attribute address_family
    #   <p>The IPv4 or IPv6 address for the probe.</p>
    #   @return [String]
    # @!attribute vpc_id
    #   <p>The ID of the source VPC subnet.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the probe.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time and date the probe was created.</p>
    #   @return [Time]
    # @!attribute modified_at
    #   <p>The time and date that the probe was last modified.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>The list of key-value pairs created and assigned to the probe.</p>
    #   @return [Hash<String, String>]
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
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Defines a probe when creating a probe or monitor.</p>
    # @!attribute source_arn
    #   <p>The ARN of the subnet.</p>
    #   @return [String]
    # @!attribute destination
    #   <p>The destination IP address. This must be either <code>IPV4</code> or <code>IPV6</code>.</p>
    #   @return [String]
    # @!attribute destination_port
    #   <p>The port associated with the <code>destination</code>. This is required only if the <code>protocol</code> is <code>TCP</code> and must be a number between <code>1</code> and <code>65536</code>.</p>
    #   @return [Integer]
    # @!attribute protocol
    #   <p>The protocol used for the network traffic between the <code>source</code> and <code>destination</code>. This must be either <code>TCP</code> or <code>ICMP</code>.</p>
    #   @return [String]
    # @!attribute packet_size
    #   <p>The size of the packets sent between the source and destination. This must be a number between <code>56</code> and <code>8500</code>.</p>
    #   @return [Integer]
    # @!attribute tags
    #   <p>The list of key-value pairs created and assigned to the monitor.</p>
    #   @return [Hash<String, String>]
    class ProbeInput < Struct.new(
      :source_arn,
      :destination,
      :destination_port,
      :protocol,
      :packet_size,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ProbeState
      PENDING = 'PENDING'
      ACTIVE = 'ACTIVE'
      INACTIVE = 'INACTIVE'
      ERROR = 'ERROR'
      DELETING = 'DELETING'
      DELETED = 'DELETED'
    end

    module Protocol
      TCP = 'TCP'
      ICMP = 'ICMP'
    end

    # <p>The specified resource does not exist.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>This request exceeds a service quota.</p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the monitor or probe to tag.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The list of key-value pairs assigned to the monitor or probe.</p>
    #   @return [Hash<String, String>]
    class TagResourceInput < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class TagResourceOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request was denied due to request throttling</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the monitor or probe that the tag should be removed from. </p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The key-value pa</p>
    #   @return [Array<String>]
    class UntagResourceInput < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class UntagResourceOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute monitor_name
    #   <p>The name of the monitor to update. </p>
    #   @return [String]
    # @!attribute aggregation_period
    #   <p>The aggregation time, in seconds, to change to. This must be either <code>30</code> or <code>60</code>. </p>
    #   @return [Integer]
    class UpdateMonitorInput < Struct.new(
      :monitor_name,
      :aggregation_period,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute monitor_arn
    #   <p>The ARN of the monitor that was updated.</p>
    #   @return [String]
    # @!attribute monitor_name
    #   <p>The name of the monitor that was updated.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the updated monitor.</p>
    #   @return [String]
    # @!attribute aggregation_period
    #   <p>The changed aggregation period.</p>
    #   @return [Integer]
    # @!attribute tags
    #   <p>The list of key-value pairs associated with the monitor.</p>
    #   @return [Hash<String, String>]
    class UpdateMonitorOutput < Struct.new(
      :monitor_arn,
      :monitor_name,
      :state,
      :aggregation_period,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute monitor_name
    #   <p>The name of the monitor that the probe was updated for.</p>
    #   @return [String]
    # @!attribute probe_id
    #   <p>The ID of the probe to update.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the probe update.</p>
    #   @return [String]
    # @!attribute destination
    #   <p>The updated IP address for the probe destination. This must be either an IPv4 or IPv6 address.</p>
    #   @return [String]
    # @!attribute destination_port
    #   <p>The updated port for the probe destination. This is required only if the <code>protocol</code> is <code>TCP</code> and must be a number between <code>1</code> and <code>65536</code>.</p>
    #   @return [Integer]
    # @!attribute protocol
    #   <p>The updated network protocol for the destination. This can be either <code>TCP</code> or <code>ICMP</code>. If the protocol is <code>TCP</code>, then <code>port</code> is also required.</p>
    #   @return [String]
    # @!attribute packet_size
    #   <p>he updated packets size for network traffic between the source and destination. This must be a number between <code>56</code> and <code>8500</code>.</p>
    #   @return [Integer]
    class UpdateProbeInput < Struct.new(
      :monitor_name,
      :probe_id,
      :state,
      :destination,
      :destination_port,
      :protocol,
      :packet_size,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute probe_id
    #   <p>The updated ID of the probe.</p>
    #   @return [String]
    # @!attribute probe_arn
    #   <p>The updated ARN of the probe.</p>
    #   @return [String]
    # @!attribute source_arn
    #   <p>The updated ARN of the source subnet.</p>
    #   @return [String]
    # @!attribute destination
    #   <p>The updated destination IP address for the probe.</p>
    #   @return [String]
    # @!attribute destination_port
    #   <p>The updated destination port. This must be a number between <code>1</code> and <code>65536</code>.</p>
    #   @return [Integer]
    # @!attribute protocol
    #   <p>The updated protocol for the probe.</p>
    #   @return [String]
    # @!attribute packet_size
    #   <p>The updated packet size for the probe. </p>
    #   @return [Integer]
    # @!attribute address_family
    #   <p>The updated IP address family. This must be either <code>IPV4</code> or <code>IPV6</code>.</p>
    #   @return [String]
    # @!attribute vpc_id
    #   <p>The updated ID of the source VPC subnet ID.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the updated probe.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time and date that the probe was created.</p>
    #   @return [Time]
    # @!attribute modified_at
    #   <p>The time and date that the probe was last updated.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>Update tags for a probe.</p>
    #   @return [Hash<String, String>]
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
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>One of the parameters for the request is not valid.</p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

  end
end
