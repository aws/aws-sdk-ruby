# frozen_string_literal: true

# This is generated code!

module Aws::NetworkMonitor
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmonitor#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AddressFamily = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.networkmonitor#AddressFamily', name: 'AddressFamily')
    AggregationPeriod = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.networkmonitor#AggregationPeriod', name: 'AggregationPeriod', traits: {"smithy.api#range" => {"min" => 30}})
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.networkmonitor#Arn', name: 'Arn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:.*$"})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmonitor#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateMonitorInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmonitor#CreateMonitorInput', name: 'CreateMonitorInput')
    CreateMonitorOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmonitor#CreateMonitorOutput', name: 'CreateMonitorOutput')
    CreateMonitorProbeInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmonitor#CreateMonitorProbeInput', name: 'CreateMonitorProbeInput')
    CreateMonitorProbeInputList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.networkmonitor#CreateMonitorProbeInputList', name: 'CreateMonitorProbeInputList')
    CreateProbeInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmonitor#CreateProbeInput', name: 'CreateProbeInput')
    CreateProbeOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmonitor#CreateProbeOutput', name: 'CreateProbeOutput')
    DeleteMonitorInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmonitor#DeleteMonitorInput', name: 'DeleteMonitorInput')
    DeleteMonitorOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmonitor#DeleteMonitorOutput', name: 'DeleteMonitorOutput')
    DeleteProbeInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmonitor#DeleteProbeInput', name: 'DeleteProbeInput')
    DeleteProbeOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmonitor#DeleteProbeOutput', name: 'DeleteProbeOutput')
    Destination = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.networkmonitor#Destination', name: 'Destination', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    GetMonitorInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmonitor#GetMonitorInput', name: 'GetMonitorInput')
    GetMonitorOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmonitor#GetMonitorOutput', name: 'GetMonitorOutput')
    GetProbeInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmonitor#GetProbeInput', name: 'GetProbeInput')
    GetProbeOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmonitor#GetProbeOutput', name: 'GetProbeOutput')
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmonitor#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    Iso8601Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.networkmonitor#Iso8601Timestamp', name: 'Iso8601Timestamp')
    ListMonitorsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmonitor#ListMonitorsInput', name: 'ListMonitorsInput')
    ListMonitorsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmonitor#ListMonitorsOutput', name: 'ListMonitorsOutput')
    ListTagsForResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmonitor#ListTagsForResourceInput', name: 'ListTagsForResourceInput', traits: {"aws.api#data" => "tagging", "smithy.api#references" => [{"resource" => "com.amazonaws.networkmonitor#MonitorResource", "ids" => {"monitorName" => "resourceArn"}}, {"resource" => "com.amazonaws.networkmonitor#ProbeResource", "ids" => {"monitorName" => "resourceArn", "probeId" => "resourceArn"}}]})
    ListTagsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmonitor#ListTagsForResourceOutput', name: 'ListTagsForResourceOutput')
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.networkmonitor#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 25}})
    MonitorArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.networkmonitor#MonitorArn', name: 'MonitorArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 512}, "smithy.api#pattern" => "^arn:.*$"})
    MonitorList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.networkmonitor#MonitorList', name: 'MonitorList')
    MonitorState = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.networkmonitor#MonitorState', name: 'MonitorState')
    MonitorSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmonitor#MonitorSummary', name: 'MonitorSummary')
    PacketSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.networkmonitor#PacketSize', name: 'PacketSize', traits: {"smithy.api#range" => {"min" => 56, "max" => 8500}})
    PaginationToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.networkmonitor#PaginationToken', name: 'PaginationToken', traits: {"smithy.api#length" => {"min" => 0, "max" => 4096}})
    Port = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.networkmonitor#Port', name: 'Port', traits: {"smithy.api#range" => {"min" => 0, "max" => 65536}})
    Probe = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmonitor#Probe', name: 'Probe')
    ProbeId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.networkmonitor#ProbeId', name: 'ProbeId', traits: {"smithy.api#pattern" => "^probe-[a-z0-9A-Z-]{21,64}$"})
    ProbeInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmonitor#ProbeInput', name: 'ProbeInput')
    ProbeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.networkmonitor#ProbeList', name: 'ProbeList')
    ProbeState = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.networkmonitor#ProbeState', name: 'ProbeState')
    Protocol = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.networkmonitor#Protocol', name: 'Protocol')
    ResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.networkmonitor#ResourceName', name: 'ResourceName', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^[a-zA-Z0-9_-]+$"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmonitor#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmonitor#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.networkmonitor#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.networkmonitor#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.networkmonitor#TagMap', name: 'TagMap', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmonitor#TagResourceInput', name: 'TagResourceInput', traits: {"aws.api#data" => "tagging", "smithy.api#references" => [{"resource" => "com.amazonaws.networkmonitor#MonitorResource", "ids" => {"monitorName" => "resourceArn"}}, {"resource" => "com.amazonaws.networkmonitor#ProbeResource", "ids" => {"monitorName" => "resourceArn", "probeId" => "resourceArn"}}]})
    TagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmonitor#TagResourceOutput', name: 'TagResourceOutput')
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.networkmonitor#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmonitor#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {"throttling" => true}})
    UntagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmonitor#UntagResourceInput', name: 'UntagResourceInput', traits: {"aws.api#data" => "tagging", "smithy.api#references" => [{"resource" => "com.amazonaws.networkmonitor#MonitorResource", "ids" => {"monitorName" => "resourceArn"}}, {"resource" => "com.amazonaws.networkmonitor#ProbeResource", "ids" => {"monitorName" => "resourceArn", "probeId" => "resourceArn"}}]})
    UntagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmonitor#UntagResourceOutput', name: 'UntagResourceOutput')
    UpdateMonitorInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmonitor#UpdateMonitorInput', name: 'UpdateMonitorInput')
    UpdateMonitorOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmonitor#UpdateMonitorOutput', name: 'UpdateMonitorOutput')
    UpdateProbeInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmonitor#UpdateProbeInput', name: 'UpdateProbeInput')
    UpdateProbeOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmonitor#UpdateProbeOutput', name: 'UpdateProbeOutput')
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.networkmonitor#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    VpcId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.networkmonitor#VpcId', name: 'VpcId', traits: {"smithy.api#pattern" => "^vpc-[a-zA-Z0-9]{8,32}$"})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    AccessDeniedException.type = Types::AccessDeniedException
    AddressFamily.add_member(:ipv4, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IPV4', traits: {"smithy.api#enumValue" => "IPV4"}))
    AddressFamily.add_member(:ipv6, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IPV6', traits: {"smithy.api#enumValue" => "IPV6"}))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    ConflictException.type = Types::ConflictException
    CreateMonitorInput.add_member(:monitor_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'monitorName', traits: {"smithy.api#required" => {}}))
    CreateMonitorInput.add_member(:probes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMonitorProbeInputList, location_name: 'probes'))
    CreateMonitorInput.add_member(:aggregation_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AggregationPeriod, location_name: 'aggregationPeriod'))
    CreateMonitorInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    CreateMonitorInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    CreateMonitorInput.type = Types::CreateMonitorInput
    CreateMonitorOutput.add_member(:monitor_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MonitorArn, location_name: 'monitorArn', traits: {"smithy.api#required" => {}}))
    CreateMonitorOutput.add_member(:monitor_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'monitorName', traits: {"smithy.api#required" => {}}))
    CreateMonitorOutput.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MonitorState, location_name: 'state', traits: {"smithy.api#required" => {}}))
    CreateMonitorOutput.add_member(:aggregation_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AggregationPeriod, location_name: 'aggregationPeriod'))
    CreateMonitorOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    CreateMonitorOutput.type = Types::CreateMonitorOutput
    CreateMonitorProbeInput.add_member(:source_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'sourceArn', traits: {"smithy.api#required" => {}}))
    CreateMonitorProbeInput.add_member(:destination, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Destination, location_name: 'destination', traits: {"smithy.api#required" => {}}))
    CreateMonitorProbeInput.add_member(:destination_port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Port, location_name: 'destinationPort'))
    CreateMonitorProbeInput.add_member(:protocol, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Protocol, location_name: 'protocol', traits: {"smithy.api#required" => {}}))
    CreateMonitorProbeInput.add_member(:packet_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PacketSize, location_name: 'packetSize'))
    CreateMonitorProbeInput.add_member(:probe_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'probeTags'))
    CreateMonitorProbeInput.type = Types::CreateMonitorProbeInput
    CreateMonitorProbeInputList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMonitorProbeInput)
    CreateProbeInput.add_member(:monitor_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'monitorName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateProbeInput.add_member(:probe, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProbeInput, location_name: 'probe', traits: {"smithy.api#required" => {}}))
    CreateProbeInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    CreateProbeInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    CreateProbeInput.type = Types::CreateProbeInput
    CreateProbeOutput.add_member(:probe_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProbeId, location_name: 'probeId'))
    CreateProbeOutput.add_member(:probe_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'probeArn'))
    CreateProbeOutput.add_member(:source_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'sourceArn', traits: {"smithy.api#required" => {}}))
    CreateProbeOutput.add_member(:destination, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Destination, location_name: 'destination', traits: {"smithy.api#required" => {}}))
    CreateProbeOutput.add_member(:destination_port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Port, location_name: 'destinationPort'))
    CreateProbeOutput.add_member(:protocol, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Protocol, location_name: 'protocol', traits: {"smithy.api#required" => {}}))
    CreateProbeOutput.add_member(:packet_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PacketSize, location_name: 'packetSize'))
    CreateProbeOutput.add_member(:address_family, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddressFamily, location_name: 'addressFamily'))
    CreateProbeOutput.add_member(:vpc_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcId, location_name: 'vpcId'))
    CreateProbeOutput.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProbeState, location_name: 'state'))
    CreateProbeOutput.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: 'createdAt'))
    CreateProbeOutput.add_member(:modified_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: 'modifiedAt'))
    CreateProbeOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    CreateProbeOutput.type = Types::CreateProbeOutput
    DeleteMonitorInput.add_member(:monitor_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'monitorName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteMonitorInput.type = Types::DeleteMonitorInput
    DeleteMonitorOutput.type = Types::DeleteMonitorOutput
    DeleteProbeInput.add_member(:monitor_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'monitorName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteProbeInput.add_member(:probe_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProbeId, location_name: 'probeId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteProbeInput.type = Types::DeleteProbeInput
    DeleteProbeOutput.type = Types::DeleteProbeOutput
    GetMonitorInput.add_member(:monitor_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'monitorName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMonitorInput.type = Types::GetMonitorInput
    GetMonitorOutput.add_member(:monitor_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MonitorArn, location_name: 'monitorArn', traits: {"smithy.api#required" => {}}))
    GetMonitorOutput.add_member(:monitor_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'monitorName', traits: {"smithy.api#required" => {}}))
    GetMonitorOutput.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MonitorState, location_name: 'state', traits: {"smithy.api#required" => {}}))
    GetMonitorOutput.add_member(:aggregation_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AggregationPeriod, location_name: 'aggregationPeriod', traits: {"smithy.api#required" => {}}))
    GetMonitorOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    GetMonitorOutput.add_member(:probes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProbeList, location_name: 'probes'))
    GetMonitorOutput.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    GetMonitorOutput.add_member(:modified_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: 'modifiedAt', traits: {"smithy.api#required" => {}}))
    GetMonitorOutput.type = Types::GetMonitorOutput
    GetProbeInput.add_member(:monitor_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'monitorName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetProbeInput.add_member(:probe_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProbeId, location_name: 'probeId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetProbeInput.type = Types::GetProbeInput
    GetProbeOutput.add_member(:probe_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProbeId, location_name: 'probeId'))
    GetProbeOutput.add_member(:probe_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'probeArn'))
    GetProbeOutput.add_member(:source_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'sourceArn', traits: {"smithy.api#required" => {}}))
    GetProbeOutput.add_member(:destination, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Destination, location_name: 'destination', traits: {"smithy.api#required" => {}}))
    GetProbeOutput.add_member(:destination_port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Port, location_name: 'destinationPort'))
    GetProbeOutput.add_member(:protocol, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Protocol, location_name: 'protocol', traits: {"smithy.api#required" => {}}))
    GetProbeOutput.add_member(:packet_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PacketSize, location_name: 'packetSize'))
    GetProbeOutput.add_member(:address_family, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddressFamily, location_name: 'addressFamily'))
    GetProbeOutput.add_member(:vpc_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcId, location_name: 'vpcId'))
    GetProbeOutput.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProbeState, location_name: 'state'))
    GetProbeOutput.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: 'createdAt'))
    GetProbeOutput.add_member(:modified_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: 'modifiedAt'))
    GetProbeOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    GetProbeOutput.type = Types::GetProbeOutput
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    InternalServerException.type = Types::InternalServerException
    ListMonitorsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListMonitorsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListMonitorsInput.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'state', traits: {"smithy.api#httpQuery" => "state"}))
    ListMonitorsInput.type = Types::ListMonitorsInput
    ListMonitorsOutput.add_member(:monitors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MonitorList, location_name: 'monitors', traits: {"smithy.api#required" => {}}))
    ListMonitorsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken'))
    ListMonitorsOutput.type = Types::ListMonitorsOutput
    ListTagsForResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    MonitorList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MonitorSummary)
    MonitorState.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    MonitorState.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    MonitorState.add_member(:inactive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INACTIVE', traits: {"smithy.api#enumValue" => "INACTIVE"}))
    MonitorState.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR', traits: {"smithy.api#enumValue" => "ERROR"}))
    MonitorState.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    MonitorSummary.add_member(:monitor_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MonitorArn, location_name: 'monitorArn', traits: {"smithy.api#required" => {}}))
    MonitorSummary.add_member(:monitor_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'monitorName', traits: {"smithy.api#required" => {}}))
    MonitorSummary.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MonitorState, location_name: 'state', traits: {"smithy.api#required" => {}}))
    MonitorSummary.add_member(:aggregation_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AggregationPeriod, location_name: 'aggregationPeriod'))
    MonitorSummary.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    MonitorSummary.type = Types::MonitorSummary
    Probe.add_member(:probe_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProbeId, location_name: 'probeId'))
    Probe.add_member(:probe_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'probeArn'))
    Probe.add_member(:source_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'sourceArn', traits: {"smithy.api#required" => {}}))
    Probe.add_member(:destination, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Destination, location_name: 'destination', traits: {"smithy.api#required" => {}}))
    Probe.add_member(:destination_port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Port, location_name: 'destinationPort'))
    Probe.add_member(:protocol, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Protocol, location_name: 'protocol', traits: {"smithy.api#required" => {}}))
    Probe.add_member(:packet_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PacketSize, location_name: 'packetSize'))
    Probe.add_member(:address_family, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddressFamily, location_name: 'addressFamily'))
    Probe.add_member(:vpc_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcId, location_name: 'vpcId'))
    Probe.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProbeState, location_name: 'state'))
    Probe.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: 'createdAt'))
    Probe.add_member(:modified_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: 'modifiedAt'))
    Probe.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    Probe.type = Types::Probe
    ProbeInput.add_member(:source_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'sourceArn', traits: {"smithy.api#required" => {}}))
    ProbeInput.add_member(:destination, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Destination, location_name: 'destination', traits: {"smithy.api#required" => {}}))
    ProbeInput.add_member(:destination_port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Port, location_name: 'destinationPort'))
    ProbeInput.add_member(:protocol, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Protocol, location_name: 'protocol', traits: {"smithy.api#required" => {}}))
    ProbeInput.add_member(:packet_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PacketSize, location_name: 'packetSize'))
    ProbeInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    ProbeInput.type = Types::ProbeInput
    ProbeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Probe)
    ProbeState.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    ProbeState.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ProbeState.add_member(:inactive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INACTIVE', traits: {"smithy.api#enumValue" => "INACTIVE"}))
    ProbeState.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR', traits: {"smithy.api#enumValue" => "ERROR"}))
    ProbeState.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    ProbeState.add_member(:deleted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETED', traits: {"smithy.api#enumValue" => "DELETED"}))
    Protocol.add_member(:tcp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TCP', traits: {"smithy.api#enumValue" => "TCP"}))
    Protocol.add_member(:icmp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ICMP', traits: {"smithy.api#enumValue" => "ICMP"}))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    TagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'tagKeys', traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateMonitorInput.add_member(:monitor_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'monitorName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateMonitorInput.add_member(:aggregation_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AggregationPeriod, location_name: 'aggregationPeriod', traits: {"smithy.api#required" => {}}))
    UpdateMonitorInput.type = Types::UpdateMonitorInput
    UpdateMonitorOutput.add_member(:monitor_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MonitorArn, location_name: 'monitorArn', traits: {"smithy.api#required" => {}}))
    UpdateMonitorOutput.add_member(:monitor_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'monitorName', traits: {"smithy.api#required" => {}}))
    UpdateMonitorOutput.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MonitorState, location_name: 'state', traits: {"smithy.api#required" => {}}))
    UpdateMonitorOutput.add_member(:aggregation_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AggregationPeriod, location_name: 'aggregationPeriod'))
    UpdateMonitorOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    UpdateMonitorOutput.type = Types::UpdateMonitorOutput
    UpdateProbeInput.add_member(:monitor_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'monitorName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateProbeInput.add_member(:probe_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProbeId, location_name: 'probeId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateProbeInput.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProbeState, location_name: 'state'))
    UpdateProbeInput.add_member(:destination, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Destination, location_name: 'destination'))
    UpdateProbeInput.add_member(:destination_port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Port, location_name: 'destinationPort'))
    UpdateProbeInput.add_member(:protocol, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Protocol, location_name: 'protocol'))
    UpdateProbeInput.add_member(:packet_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PacketSize, location_name: 'packetSize'))
    UpdateProbeInput.type = Types::UpdateProbeInput
    UpdateProbeOutput.add_member(:probe_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProbeId, location_name: 'probeId'))
    UpdateProbeOutput.add_member(:probe_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'probeArn'))
    UpdateProbeOutput.add_member(:source_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'sourceArn', traits: {"smithy.api#required" => {}}))
    UpdateProbeOutput.add_member(:destination, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Destination, location_name: 'destination', traits: {"smithy.api#required" => {}}))
    UpdateProbeOutput.add_member(:destination_port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Port, location_name: 'destinationPort'))
    UpdateProbeOutput.add_member(:protocol, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Protocol, location_name: 'protocol', traits: {"smithy.api#required" => {}}))
    UpdateProbeOutput.add_member(:packet_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PacketSize, location_name: 'packetSize'))
    UpdateProbeOutput.add_member(:address_family, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddressFamily, location_name: 'addressFamily'))
    UpdateProbeOutput.add_member(:vpc_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcId, location_name: 'vpcId'))
    UpdateProbeOutput.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProbeState, location_name: 'state'))
    UpdateProbeOutput.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: 'createdAt'))
    UpdateProbeOutput.add_member(:modified_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: 'modifiedAt'))
    UpdateProbeOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    UpdateProbeOutput.type = Types::UpdateProbeOutput
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    ValidationException.type = Types::ValidationException

    NetworkMonitor = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.networkmonitor#NetworkMonitor"
      service.name = "NetworkMonitor"
      service.version = "2023-08-01"
      service.traits = {"aws.api#service" => {"sdkId" => "NetworkMonitor", "arnNamespace" => "networkmonitor", "cloudFormationName" => "NetworkMonitor", "cloudTrailEventSource" => "networkmonitor.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "networkmonitor"}, "aws.iam#defineConditionKeys" => {"aws:ResourceTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by the tag key-value pairs attached to the resource", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-resourcetag"}, "aws:RequestTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by the tag key-value pairs in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-requesttag"}, "aws:TagKeys" => {"type" => "ArrayOfString", "documentation" => "Filters access by the tag keys in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-tagkeys"}}, "aws.iam#supportedPrincipalTypes" => ["Root", "IAMUser", "IAMRole", "FederatedUser"], "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["Content-Type", "X-Amz-Requested-Operation"]}, "smithy.api#title" => "Amazon CloudWatch Network Monitor"}
      service.add_operation(:create_monitor, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmonitor#CreateMonitor"
        operation.name = "CreateMonitor"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMonitorInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMonitorOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to create a monitor"}, "smithy.api#http" => {"uri" => "/monitors", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_probe, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmonitor#CreateProbe"
        operation.name = "CreateProbe"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateProbeInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateProbeOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to create a probe"}, "smithy.api#http" => {"uri" => "/monitors/{monitorName}/probes", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_monitor, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmonitor#DeleteMonitor"
        operation.name = "DeleteMonitor"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMonitorInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMonitorOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete a monitor"}, "smithy.api#http" => {"uri" => "/monitors/{monitorName}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_probe, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmonitor#DeleteProbe"
        operation.name = "DeleteProbe"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteProbeInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteProbeOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete a probe"}, "smithy.api#http" => {"uri" => "/monitors/{monitorName}/probes/{probeId}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_monitor, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmonitor#GetMonitor"
        operation.name = "GetMonitor"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMonitorInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMonitorOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to get information about a monitor"}, "smithy.api#http" => {"uri" => "/monitors/{monitorName}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_probe, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmonitor#GetProbe"
        operation.name = "GetProbe"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetProbeInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetProbeOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to get information about a probe"}, "smithy.api#http" => {"uri" => "/monitors/{monitorName}/probes/{probeId}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_monitors, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmonitor#ListMonitors"
        operation.name = "ListMonitors"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListMonitorsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListMonitorsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list all monitors in an account and their statuses"}, "smithy.api#http" => {"uri" => "/monitors", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListMonitors.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmonitor#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list the tags for a resource"}, "smithy.api#http" => {"uri" => "/tags/{resourceArn}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmonitor#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to add tags to a resource"}, "smithy.api#http" => {"uri" => "/tags/{resourceArn}", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmonitor#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:TagKeys"], "aws.iam#iamAction" => {"documentation" => "Grants permission to remove tags from a resource"}, "smithy.api#http" => {"uri" => "/tags/{resourceArn}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_monitor, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmonitor#UpdateMonitor"
        operation.name = "UpdateMonitor"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateMonitorInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateMonitorOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update a monitor"}, "smithy.api#http" => {"uri" => "/monitors/{monitorName}", "method" => "PATCH"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_probe, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkmonitor#UpdateProbe"
        operation.name = "UpdateProbe"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateProbeInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateProbeOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update a probe"}, "smithy.api#http" => {"uri" => "/monitors/{monitorName}/probes/{probeId}", "method" => "PATCH"}, "smithy.api#idempotent" => {}}
      end)
    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(::Smithy::Schema::Shapes::StructureShape) }
        @type_registry = ::Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end
