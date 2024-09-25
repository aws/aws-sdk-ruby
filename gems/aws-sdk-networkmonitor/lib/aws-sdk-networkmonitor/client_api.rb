# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::NetworkMonitor
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AddressFamily = Shapes::StringShape.new(name: 'AddressFamily')
    AggregationPeriod = Shapes::IntegerShape.new(name: 'AggregationPeriod')
    Arn = Shapes::StringShape.new(name: 'Arn')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateMonitorInput = Shapes::StructureShape.new(name: 'CreateMonitorInput')
    CreateMonitorOutput = Shapes::StructureShape.new(name: 'CreateMonitorOutput')
    CreateMonitorProbeInput = Shapes::StructureShape.new(name: 'CreateMonitorProbeInput')
    CreateMonitorProbeInputList = Shapes::ListShape.new(name: 'CreateMonitorProbeInputList')
    CreateProbeInput = Shapes::StructureShape.new(name: 'CreateProbeInput')
    CreateProbeOutput = Shapes::StructureShape.new(name: 'CreateProbeOutput')
    DeleteMonitorInput = Shapes::StructureShape.new(name: 'DeleteMonitorInput')
    DeleteMonitorOutput = Shapes::StructureShape.new(name: 'DeleteMonitorOutput')
    DeleteProbeInput = Shapes::StructureShape.new(name: 'DeleteProbeInput')
    DeleteProbeOutput = Shapes::StructureShape.new(name: 'DeleteProbeOutput')
    Destination = Shapes::StringShape.new(name: 'Destination')
    GetMonitorInput = Shapes::StructureShape.new(name: 'GetMonitorInput')
    GetMonitorOutput = Shapes::StructureShape.new(name: 'GetMonitorOutput')
    GetProbeInput = Shapes::StructureShape.new(name: 'GetProbeInput')
    GetProbeOutput = Shapes::StructureShape.new(name: 'GetProbeOutput')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    Iso8601Timestamp = Shapes::TimestampShape.new(name: 'Iso8601Timestamp')
    ListMonitorsInput = Shapes::StructureShape.new(name: 'ListMonitorsInput')
    ListMonitorsOutput = Shapes::StructureShape.new(name: 'ListMonitorsOutput')
    ListTagsForResourceInput = Shapes::StructureShape.new(name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Shapes::StructureShape.new(name: 'ListTagsForResourceOutput')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MonitorArn = Shapes::StringShape.new(name: 'MonitorArn')
    MonitorList = Shapes::ListShape.new(name: 'MonitorList')
    MonitorState = Shapes::StringShape.new(name: 'MonitorState')
    MonitorSummary = Shapes::StructureShape.new(name: 'MonitorSummary')
    PacketSize = Shapes::IntegerShape.new(name: 'PacketSize')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    Port = Shapes::IntegerShape.new(name: 'Port')
    Probe = Shapes::StructureShape.new(name: 'Probe')
    ProbeId = Shapes::StringShape.new(name: 'ProbeId')
    ProbeInput = Shapes::StructureShape.new(name: 'ProbeInput')
    ProbeList = Shapes::ListShape.new(name: 'ProbeList')
    ProbeState = Shapes::StringShape.new(name: 'ProbeState')
    Protocol = Shapes::StringShape.new(name: 'Protocol')
    ResourceName = Shapes::StringShape.new(name: 'ResourceName')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    String = Shapes::StringShape.new(name: 'String')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceInput = Shapes::StructureShape.new(name: 'TagResourceInput')
    TagResourceOutput = Shapes::StructureShape.new(name: 'TagResourceOutput')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    UntagResourceInput = Shapes::StructureShape.new(name: 'UntagResourceInput')
    UntagResourceOutput = Shapes::StructureShape.new(name: 'UntagResourceOutput')
    UpdateMonitorInput = Shapes::StructureShape.new(name: 'UpdateMonitorInput')
    UpdateMonitorOutput = Shapes::StructureShape.new(name: 'UpdateMonitorOutput')
    UpdateProbeInput = Shapes::StructureShape.new(name: 'UpdateProbeInput')
    UpdateProbeOutput = Shapes::StructureShape.new(name: 'UpdateProbeOutput')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    VpcId = Shapes::StringShape.new(name: 'VpcId')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    CreateMonitorInput.add_member(:monitor_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "monitorName"))
    CreateMonitorInput.add_member(:probes, Shapes::ShapeRef.new(shape: CreateMonitorProbeInputList, location_name: "probes"))
    CreateMonitorInput.add_member(:aggregation_period, Shapes::ShapeRef.new(shape: AggregationPeriod, location_name: "aggregationPeriod"))
    CreateMonitorInput.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateMonitorInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateMonitorInput.struct_class = Types::CreateMonitorInput

    CreateMonitorOutput.add_member(:monitor_arn, Shapes::ShapeRef.new(shape: MonitorArn, required: true, location_name: "monitorArn"))
    CreateMonitorOutput.add_member(:monitor_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "monitorName"))
    CreateMonitorOutput.add_member(:state, Shapes::ShapeRef.new(shape: MonitorState, required: true, location_name: "state"))
    CreateMonitorOutput.add_member(:aggregation_period, Shapes::ShapeRef.new(shape: AggregationPeriod, location_name: "aggregationPeriod"))
    CreateMonitorOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateMonitorOutput.struct_class = Types::CreateMonitorOutput

    CreateMonitorProbeInput.add_member(:source_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "sourceArn"))
    CreateMonitorProbeInput.add_member(:destination, Shapes::ShapeRef.new(shape: Destination, required: true, location_name: "destination"))
    CreateMonitorProbeInput.add_member(:destination_port, Shapes::ShapeRef.new(shape: Port, location_name: "destinationPort"))
    CreateMonitorProbeInput.add_member(:protocol, Shapes::ShapeRef.new(shape: Protocol, required: true, location_name: "protocol"))
    CreateMonitorProbeInput.add_member(:packet_size, Shapes::ShapeRef.new(shape: PacketSize, location_name: "packetSize"))
    CreateMonitorProbeInput.add_member(:probe_tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "probeTags"))
    CreateMonitorProbeInput.struct_class = Types::CreateMonitorProbeInput

    CreateMonitorProbeInputList.member = Shapes::ShapeRef.new(shape: CreateMonitorProbeInput)

    CreateProbeInput.add_member(:monitor_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "monitorName"))
    CreateProbeInput.add_member(:probe, Shapes::ShapeRef.new(shape: ProbeInput, required: true, location_name: "probe"))
    CreateProbeInput.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateProbeInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateProbeInput.struct_class = Types::CreateProbeInput

    CreateProbeOutput.add_member(:probe_id, Shapes::ShapeRef.new(shape: ProbeId, location_name: "probeId"))
    CreateProbeOutput.add_member(:probe_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "probeArn"))
    CreateProbeOutput.add_member(:source_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "sourceArn"))
    CreateProbeOutput.add_member(:destination, Shapes::ShapeRef.new(shape: Destination, required: true, location_name: "destination"))
    CreateProbeOutput.add_member(:destination_port, Shapes::ShapeRef.new(shape: Port, location_name: "destinationPort"))
    CreateProbeOutput.add_member(:protocol, Shapes::ShapeRef.new(shape: Protocol, required: true, location_name: "protocol"))
    CreateProbeOutput.add_member(:packet_size, Shapes::ShapeRef.new(shape: PacketSize, location_name: "packetSize"))
    CreateProbeOutput.add_member(:address_family, Shapes::ShapeRef.new(shape: AddressFamily, location_name: "addressFamily"))
    CreateProbeOutput.add_member(:vpc_id, Shapes::ShapeRef.new(shape: VpcId, location_name: "vpcId"))
    CreateProbeOutput.add_member(:state, Shapes::ShapeRef.new(shape: ProbeState, location_name: "state"))
    CreateProbeOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "createdAt"))
    CreateProbeOutput.add_member(:modified_at, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "modifiedAt"))
    CreateProbeOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateProbeOutput.struct_class = Types::CreateProbeOutput

    DeleteMonitorInput.add_member(:monitor_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "monitorName"))
    DeleteMonitorInput.struct_class = Types::DeleteMonitorInput

    DeleteMonitorOutput.struct_class = Types::DeleteMonitorOutput

    DeleteProbeInput.add_member(:monitor_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "monitorName"))
    DeleteProbeInput.add_member(:probe_id, Shapes::ShapeRef.new(shape: ProbeId, required: true, location: "uri", location_name: "probeId"))
    DeleteProbeInput.struct_class = Types::DeleteProbeInput

    DeleteProbeOutput.struct_class = Types::DeleteProbeOutput

    GetMonitorInput.add_member(:monitor_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "monitorName"))
    GetMonitorInput.struct_class = Types::GetMonitorInput

    GetMonitorOutput.add_member(:monitor_arn, Shapes::ShapeRef.new(shape: MonitorArn, required: true, location_name: "monitorArn"))
    GetMonitorOutput.add_member(:monitor_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "monitorName"))
    GetMonitorOutput.add_member(:state, Shapes::ShapeRef.new(shape: MonitorState, required: true, location_name: "state"))
    GetMonitorOutput.add_member(:aggregation_period, Shapes::ShapeRef.new(shape: AggregationPeriod, required: true, location_name: "aggregationPeriod"))
    GetMonitorOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetMonitorOutput.add_member(:probes, Shapes::ShapeRef.new(shape: ProbeList, location_name: "probes"))
    GetMonitorOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: Iso8601Timestamp, required: true, location_name: "createdAt"))
    GetMonitorOutput.add_member(:modified_at, Shapes::ShapeRef.new(shape: Iso8601Timestamp, required: true, location_name: "modifiedAt"))
    GetMonitorOutput.struct_class = Types::GetMonitorOutput

    GetProbeInput.add_member(:monitor_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "monitorName"))
    GetProbeInput.add_member(:probe_id, Shapes::ShapeRef.new(shape: ProbeId, required: true, location: "uri", location_name: "probeId"))
    GetProbeInput.struct_class = Types::GetProbeInput

    GetProbeOutput.add_member(:probe_id, Shapes::ShapeRef.new(shape: ProbeId, location_name: "probeId"))
    GetProbeOutput.add_member(:probe_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "probeArn"))
    GetProbeOutput.add_member(:source_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "sourceArn"))
    GetProbeOutput.add_member(:destination, Shapes::ShapeRef.new(shape: Destination, required: true, location_name: "destination"))
    GetProbeOutput.add_member(:destination_port, Shapes::ShapeRef.new(shape: Port, location_name: "destinationPort"))
    GetProbeOutput.add_member(:protocol, Shapes::ShapeRef.new(shape: Protocol, required: true, location_name: "protocol"))
    GetProbeOutput.add_member(:packet_size, Shapes::ShapeRef.new(shape: PacketSize, location_name: "packetSize"))
    GetProbeOutput.add_member(:address_family, Shapes::ShapeRef.new(shape: AddressFamily, location_name: "addressFamily"))
    GetProbeOutput.add_member(:vpc_id, Shapes::ShapeRef.new(shape: VpcId, location_name: "vpcId"))
    GetProbeOutput.add_member(:state, Shapes::ShapeRef.new(shape: ProbeState, location_name: "state"))
    GetProbeOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "createdAt"))
    GetProbeOutput.add_member(:modified_at, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "modifiedAt"))
    GetProbeOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetProbeOutput.struct_class = Types::GetProbeOutput

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListMonitorsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListMonitorsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListMonitorsInput.add_member(:state, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "state"))
    ListMonitorsInput.struct_class = Types::ListMonitorsInput

    ListMonitorsOutput.add_member(:monitors, Shapes::ShapeRef.new(shape: MonitorList, required: true, location_name: "monitors"))
    ListMonitorsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListMonitorsOutput.struct_class = Types::ListMonitorsOutput

    ListTagsForResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceInput.struct_class = Types::ListTagsForResourceInput

    ListTagsForResourceOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ListTagsForResourceOutput.struct_class = Types::ListTagsForResourceOutput

    MonitorList.member = Shapes::ShapeRef.new(shape: MonitorSummary)

    MonitorSummary.add_member(:monitor_arn, Shapes::ShapeRef.new(shape: MonitorArn, required: true, location_name: "monitorArn"))
    MonitorSummary.add_member(:monitor_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "monitorName"))
    MonitorSummary.add_member(:state, Shapes::ShapeRef.new(shape: MonitorState, required: true, location_name: "state"))
    MonitorSummary.add_member(:aggregation_period, Shapes::ShapeRef.new(shape: AggregationPeriod, location_name: "aggregationPeriod"))
    MonitorSummary.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    MonitorSummary.struct_class = Types::MonitorSummary

    Probe.add_member(:probe_id, Shapes::ShapeRef.new(shape: ProbeId, location_name: "probeId"))
    Probe.add_member(:probe_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "probeArn"))
    Probe.add_member(:source_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "sourceArn"))
    Probe.add_member(:destination, Shapes::ShapeRef.new(shape: Destination, required: true, location_name: "destination"))
    Probe.add_member(:destination_port, Shapes::ShapeRef.new(shape: Port, location_name: "destinationPort"))
    Probe.add_member(:protocol, Shapes::ShapeRef.new(shape: Protocol, required: true, location_name: "protocol"))
    Probe.add_member(:packet_size, Shapes::ShapeRef.new(shape: PacketSize, location_name: "packetSize"))
    Probe.add_member(:address_family, Shapes::ShapeRef.new(shape: AddressFamily, location_name: "addressFamily"))
    Probe.add_member(:vpc_id, Shapes::ShapeRef.new(shape: VpcId, location_name: "vpcId"))
    Probe.add_member(:state, Shapes::ShapeRef.new(shape: ProbeState, location_name: "state"))
    Probe.add_member(:created_at, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "createdAt"))
    Probe.add_member(:modified_at, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "modifiedAt"))
    Probe.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    Probe.struct_class = Types::Probe

    ProbeInput.add_member(:source_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "sourceArn"))
    ProbeInput.add_member(:destination, Shapes::ShapeRef.new(shape: Destination, required: true, location_name: "destination"))
    ProbeInput.add_member(:destination_port, Shapes::ShapeRef.new(shape: Port, location_name: "destinationPort"))
    ProbeInput.add_member(:protocol, Shapes::ShapeRef.new(shape: Protocol, required: true, location_name: "protocol"))
    ProbeInput.add_member(:packet_size, Shapes::ShapeRef.new(shape: PacketSize, location_name: "packetSize"))
    ProbeInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ProbeInput.struct_class = Types::ProbeInput

    ProbeList.member = Shapes::ShapeRef.new(shape: Probe)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    TagResourceInput.struct_class = Types::TagResourceInput

    TagResourceOutput.struct_class = Types::TagResourceOutput

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceInput.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceInput.struct_class = Types::UntagResourceInput

    UntagResourceOutput.struct_class = Types::UntagResourceOutput

    UpdateMonitorInput.add_member(:monitor_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "monitorName"))
    UpdateMonitorInput.add_member(:aggregation_period, Shapes::ShapeRef.new(shape: AggregationPeriod, required: true, location_name: "aggregationPeriod"))
    UpdateMonitorInput.struct_class = Types::UpdateMonitorInput

    UpdateMonitorOutput.add_member(:monitor_arn, Shapes::ShapeRef.new(shape: MonitorArn, required: true, location_name: "monitorArn"))
    UpdateMonitorOutput.add_member(:monitor_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "monitorName"))
    UpdateMonitorOutput.add_member(:state, Shapes::ShapeRef.new(shape: MonitorState, required: true, location_name: "state"))
    UpdateMonitorOutput.add_member(:aggregation_period, Shapes::ShapeRef.new(shape: AggregationPeriod, location_name: "aggregationPeriod"))
    UpdateMonitorOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    UpdateMonitorOutput.struct_class = Types::UpdateMonitorOutput

    UpdateProbeInput.add_member(:monitor_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "monitorName"))
    UpdateProbeInput.add_member(:probe_id, Shapes::ShapeRef.new(shape: ProbeId, required: true, location: "uri", location_name: "probeId"))
    UpdateProbeInput.add_member(:state, Shapes::ShapeRef.new(shape: ProbeState, location_name: "state"))
    UpdateProbeInput.add_member(:destination, Shapes::ShapeRef.new(shape: Destination, location_name: "destination"))
    UpdateProbeInput.add_member(:destination_port, Shapes::ShapeRef.new(shape: Port, location_name: "destinationPort"))
    UpdateProbeInput.add_member(:protocol, Shapes::ShapeRef.new(shape: Protocol, location_name: "protocol"))
    UpdateProbeInput.add_member(:packet_size, Shapes::ShapeRef.new(shape: PacketSize, location_name: "packetSize"))
    UpdateProbeInput.struct_class = Types::UpdateProbeInput

    UpdateProbeOutput.add_member(:probe_id, Shapes::ShapeRef.new(shape: ProbeId, location_name: "probeId"))
    UpdateProbeOutput.add_member(:probe_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "probeArn"))
    UpdateProbeOutput.add_member(:source_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "sourceArn"))
    UpdateProbeOutput.add_member(:destination, Shapes::ShapeRef.new(shape: Destination, required: true, location_name: "destination"))
    UpdateProbeOutput.add_member(:destination_port, Shapes::ShapeRef.new(shape: Port, location_name: "destinationPort"))
    UpdateProbeOutput.add_member(:protocol, Shapes::ShapeRef.new(shape: Protocol, required: true, location_name: "protocol"))
    UpdateProbeOutput.add_member(:packet_size, Shapes::ShapeRef.new(shape: PacketSize, location_name: "packetSize"))
    UpdateProbeOutput.add_member(:address_family, Shapes::ShapeRef.new(shape: AddressFamily, location_name: "addressFamily"))
    UpdateProbeOutput.add_member(:vpc_id, Shapes::ShapeRef.new(shape: VpcId, location_name: "vpcId"))
    UpdateProbeOutput.add_member(:state, Shapes::ShapeRef.new(shape: ProbeState, location_name: "state"))
    UpdateProbeOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "createdAt"))
    UpdateProbeOutput.add_member(:modified_at, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "modifiedAt"))
    UpdateProbeOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    UpdateProbeOutput.struct_class = Types::UpdateProbeOutput

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2023-08-01"

      api.metadata = {
        "apiVersion" => "2023-08-01",
        "endpointPrefix" => "networkmonitor",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "Amazon CloudWatch Network Monitor",
        "serviceId" => "NetworkMonitor",
        "signatureVersion" => "v4",
        "signingName" => "networkmonitor",
        "uid" => "networkmonitor-2023-08-01",
      }

      api.add_operation(:create_monitor, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateMonitor"
        o.http_method = "POST"
        o.http_request_uri = "/monitors"
        o.input = Shapes::ShapeRef.new(shape: CreateMonitorInput)
        o.output = Shapes::ShapeRef.new(shape: CreateMonitorOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_probe, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateProbe"
        o.http_method = "POST"
        o.http_request_uri = "/monitors/{monitorName}/probes"
        o.input = Shapes::ShapeRef.new(shape: CreateProbeInput)
        o.output = Shapes::ShapeRef.new(shape: CreateProbeOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:delete_monitor, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteMonitor"
        o.http_method = "DELETE"
        o.http_request_uri = "/monitors/{monitorName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteMonitorInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteMonitorOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_probe, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteProbe"
        o.http_method = "DELETE"
        o.http_request_uri = "/monitors/{monitorName}/probes/{probeId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteProbeInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteProbeOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:get_monitor, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMonitor"
        o.http_method = "GET"
        o.http_request_uri = "/monitors/{monitorName}"
        o.input = Shapes::ShapeRef.new(shape: GetMonitorInput)
        o.output = Shapes::ShapeRef.new(shape: GetMonitorOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_probe, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetProbe"
        o.http_method = "GET"
        o.http_request_uri = "/monitors/{monitorName}/probes/{probeId}"
        o.input = Shapes::ShapeRef.new(shape: GetProbeInput)
        o.output = Shapes::ShapeRef.new(shape: GetProbeOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_monitors, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListMonitors"
        o.http_method = "GET"
        o.http_request_uri = "/monitors"
        o.input = Shapes::ShapeRef.new(shape: ListMonitorsInput)
        o.output = Shapes::ShapeRef.new(shape: ListMonitorsOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: TagResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_monitor, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateMonitor"
        o.http_method = "PATCH"
        o.http_request_uri = "/monitors/{monitorName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateMonitorInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateMonitorOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:update_probe, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateProbe"
        o.http_method = "PATCH"
        o.http_request_uri = "/monitors/{monitorName}/probes/{probeId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateProbeInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateProbeOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)
    end

  end
end
