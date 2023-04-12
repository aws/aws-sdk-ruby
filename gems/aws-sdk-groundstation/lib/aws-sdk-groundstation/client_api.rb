# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::GroundStation
  # @api private
  module ClientApi

    include Seahorse::Model

    AWSRegion = Shapes::StringShape.new(name: 'AWSRegion')
    AgentCpuCoresList = Shapes::ListShape.new(name: 'AgentCpuCoresList')
    AgentDetails = Shapes::StructureShape.new(name: 'AgentDetails')
    AgentStatus = Shapes::StringShape.new(name: 'AgentStatus')
    AggregateStatus = Shapes::StructureShape.new(name: 'AggregateStatus')
    AngleUnits = Shapes::StringShape.new(name: 'AngleUnits')
    AntennaDemodDecodeDetails = Shapes::StructureShape.new(name: 'AntennaDemodDecodeDetails')
    AntennaDownlinkConfig = Shapes::StructureShape.new(name: 'AntennaDownlinkConfig')
    AntennaDownlinkDemodDecodeConfig = Shapes::StructureShape.new(name: 'AntennaDownlinkDemodDecodeConfig')
    AntennaUplinkConfig = Shapes::StructureShape.new(name: 'AntennaUplinkConfig')
    AnyArn = Shapes::StringShape.new(name: 'AnyArn')
    AuditResults = Shapes::StringShape.new(name: 'AuditResults')
    AwsGroundStationAgentEndpoint = Shapes::StructureShape.new(name: 'AwsGroundStationAgentEndpoint')
    BandwidthUnits = Shapes::StringShape.new(name: 'BandwidthUnits')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BucketArn = Shapes::StringShape.new(name: 'BucketArn')
    CancelContactRequest = Shapes::StructureShape.new(name: 'CancelContactRequest')
    CapabilityArn = Shapes::StringShape.new(name: 'CapabilityArn')
    CapabilityArnList = Shapes::ListShape.new(name: 'CapabilityArnList')
    CapabilityHealth = Shapes::StringShape.new(name: 'CapabilityHealth')
    CapabilityHealthReason = Shapes::StringShape.new(name: 'CapabilityHealthReason')
    CapabilityHealthReasonList = Shapes::ListShape.new(name: 'CapabilityHealthReasonList')
    ComponentStatusData = Shapes::StructureShape.new(name: 'ComponentStatusData')
    ComponentStatusList = Shapes::ListShape.new(name: 'ComponentStatusList')
    ComponentTypeString = Shapes::StringShape.new(name: 'ComponentTypeString')
    ComponentVersion = Shapes::StructureShape.new(name: 'ComponentVersion')
    ComponentVersionList = Shapes::ListShape.new(name: 'ComponentVersionList')
    ConfigArn = Shapes::StringShape.new(name: 'ConfigArn')
    ConfigCapabilityType = Shapes::StringShape.new(name: 'ConfigCapabilityType')
    ConfigDetails = Shapes::UnionShape.new(name: 'ConfigDetails')
    ConfigIdResponse = Shapes::StructureShape.new(name: 'ConfigIdResponse')
    ConfigList = Shapes::ListShape.new(name: 'ConfigList')
    ConfigListItem = Shapes::StructureShape.new(name: 'ConfigListItem')
    ConfigTypeData = Shapes::UnionShape.new(name: 'ConfigTypeData')
    ConnectionDetails = Shapes::StructureShape.new(name: 'ConnectionDetails')
    ContactData = Shapes::StructureShape.new(name: 'ContactData')
    ContactIdResponse = Shapes::StructureShape.new(name: 'ContactIdResponse')
    ContactList = Shapes::ListShape.new(name: 'ContactList')
    ContactStatus = Shapes::StringShape.new(name: 'ContactStatus')
    CreateConfigRequest = Shapes::StructureShape.new(name: 'CreateConfigRequest')
    CreateDataflowEndpointGroupRequest = Shapes::StructureShape.new(name: 'CreateDataflowEndpointGroupRequest')
    CreateEphemerisRequest = Shapes::StructureShape.new(name: 'CreateEphemerisRequest')
    CreateMissionProfileRequest = Shapes::StructureShape.new(name: 'CreateMissionProfileRequest')
    Criticality = Shapes::StringShape.new(name: 'Criticality')
    CustomerEphemerisPriority = Shapes::IntegerShape.new(name: 'CustomerEphemerisPriority')
    DataflowDetail = Shapes::StructureShape.new(name: 'DataflowDetail')
    DataflowEdge = Shapes::ListShape.new(name: 'DataflowEdge')
    DataflowEdgeList = Shapes::ListShape.new(name: 'DataflowEdgeList')
    DataflowEndpoint = Shapes::StructureShape.new(name: 'DataflowEndpoint')
    DataflowEndpointConfig = Shapes::StructureShape.new(name: 'DataflowEndpointConfig')
    DataflowEndpointGroupArn = Shapes::StringShape.new(name: 'DataflowEndpointGroupArn')
    DataflowEndpointGroupDurationInSeconds = Shapes::IntegerShape.new(name: 'DataflowEndpointGroupDurationInSeconds')
    DataflowEndpointGroupIdResponse = Shapes::StructureShape.new(name: 'DataflowEndpointGroupIdResponse')
    DataflowEndpointGroupList = Shapes::ListShape.new(name: 'DataflowEndpointGroupList')
    DataflowEndpointListItem = Shapes::StructureShape.new(name: 'DataflowEndpointListItem')
    DataflowEndpointMtuInteger = Shapes::IntegerShape.new(name: 'DataflowEndpointMtuInteger')
    DataflowList = Shapes::ListShape.new(name: 'DataflowList')
    DecodeConfig = Shapes::StructureShape.new(name: 'DecodeConfig')
    DeleteConfigRequest = Shapes::StructureShape.new(name: 'DeleteConfigRequest')
    DeleteDataflowEndpointGroupRequest = Shapes::StructureShape.new(name: 'DeleteDataflowEndpointGroupRequest')
    DeleteEphemerisRequest = Shapes::StructureShape.new(name: 'DeleteEphemerisRequest')
    DeleteMissionProfileRequest = Shapes::StructureShape.new(name: 'DeleteMissionProfileRequest')
    DemodulationConfig = Shapes::StructureShape.new(name: 'DemodulationConfig')
    DependencyException = Shapes::StructureShape.new(name: 'DependencyException')
    DescribeContactRequest = Shapes::StructureShape.new(name: 'DescribeContactRequest')
    DescribeContactResponse = Shapes::StructureShape.new(name: 'DescribeContactResponse')
    DescribeEphemerisRequest = Shapes::StructureShape.new(name: 'DescribeEphemerisRequest')
    DescribeEphemerisResponse = Shapes::StructureShape.new(name: 'DescribeEphemerisResponse')
    Destination = Shapes::StructureShape.new(name: 'Destination')
    DiscoveryData = Shapes::StructureShape.new(name: 'DiscoveryData')
    Double = Shapes::FloatShape.new(name: 'Double')
    DurationInSeconds = Shapes::IntegerShape.new(name: 'DurationInSeconds')
    Eirp = Shapes::StructureShape.new(name: 'Eirp')
    EirpUnits = Shapes::StringShape.new(name: 'EirpUnits')
    Elevation = Shapes::StructureShape.new(name: 'Elevation')
    EndpointDetails = Shapes::StructureShape.new(name: 'EndpointDetails')
    EndpointDetailsList = Shapes::ListShape.new(name: 'EndpointDetailsList')
    EndpointStatus = Shapes::StringShape.new(name: 'EndpointStatus')
    EphemeridesList = Shapes::ListShape.new(name: 'EphemeridesList')
    EphemerisData = Shapes::UnionShape.new(name: 'EphemerisData')
    EphemerisDescription = Shapes::StructureShape.new(name: 'EphemerisDescription')
    EphemerisIdResponse = Shapes::StructureShape.new(name: 'EphemerisIdResponse')
    EphemerisInvalidReason = Shapes::StringShape.new(name: 'EphemerisInvalidReason')
    EphemerisItem = Shapes::StructureShape.new(name: 'EphemerisItem')
    EphemerisMetaData = Shapes::StructureShape.new(name: 'EphemerisMetaData')
    EphemerisPriority = Shapes::IntegerShape.new(name: 'EphemerisPriority')
    EphemerisSource = Shapes::StringShape.new(name: 'EphemerisSource')
    EphemerisStatus = Shapes::StringShape.new(name: 'EphemerisStatus')
    EphemerisStatusList = Shapes::ListShape.new(name: 'EphemerisStatusList')
    EphemerisTypeDescription = Shapes::UnionShape.new(name: 'EphemerisTypeDescription')
    Frequency = Shapes::StructureShape.new(name: 'Frequency')
    FrequencyBandwidth = Shapes::StructureShape.new(name: 'FrequencyBandwidth')
    FrequencyUnits = Shapes::StringShape.new(name: 'FrequencyUnits')
    GetAgentConfigurationRequest = Shapes::StructureShape.new(name: 'GetAgentConfigurationRequest')
    GetAgentConfigurationResponse = Shapes::StructureShape.new(name: 'GetAgentConfigurationResponse')
    GetConfigRequest = Shapes::StructureShape.new(name: 'GetConfigRequest')
    GetConfigResponse = Shapes::StructureShape.new(name: 'GetConfigResponse')
    GetDataflowEndpointGroupRequest = Shapes::StructureShape.new(name: 'GetDataflowEndpointGroupRequest')
    GetDataflowEndpointGroupResponse = Shapes::StructureShape.new(name: 'GetDataflowEndpointGroupResponse')
    GetMinuteUsageRequest = Shapes::StructureShape.new(name: 'GetMinuteUsageRequest')
    GetMinuteUsageResponse = Shapes::StructureShape.new(name: 'GetMinuteUsageResponse')
    GetMissionProfileRequest = Shapes::StructureShape.new(name: 'GetMissionProfileRequest')
    GetMissionProfileResponse = Shapes::StructureShape.new(name: 'GetMissionProfileResponse')
    GetSatelliteRequest = Shapes::StructureShape.new(name: 'GetSatelliteRequest')
    GetSatelliteResponse = Shapes::StructureShape.new(name: 'GetSatelliteResponse')
    GroundStationData = Shapes::StructureShape.new(name: 'GroundStationData')
    GroundStationIdList = Shapes::ListShape.new(name: 'GroundStationIdList')
    GroundStationList = Shapes::ListShape.new(name: 'GroundStationList')
    GroundStationName = Shapes::StringShape.new(name: 'GroundStationName')
    InstanceId = Shapes::StringShape.new(name: 'InstanceId')
    InstanceType = Shapes::StringShape.new(name: 'InstanceType')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    IntegerRange = Shapes::StructureShape.new(name: 'IntegerRange')
    InvalidParameterException = Shapes::StructureShape.new(name: 'InvalidParameterException')
    IpAddressList = Shapes::ListShape.new(name: 'IpAddressList')
    IpV4Address = Shapes::StringShape.new(name: 'IpV4Address')
    JsonString = Shapes::StringShape.new(name: 'JsonString')
    KeyAliasArn = Shapes::StringShape.new(name: 'KeyAliasArn')
    KeyArn = Shapes::StringShape.new(name: 'KeyArn')
    KmsKey = Shapes::UnionShape.new(name: 'KmsKey')
    ListConfigsRequest = Shapes::StructureShape.new(name: 'ListConfigsRequest')
    ListConfigsResponse = Shapes::StructureShape.new(name: 'ListConfigsResponse')
    ListContactsRequest = Shapes::StructureShape.new(name: 'ListContactsRequest')
    ListContactsResponse = Shapes::StructureShape.new(name: 'ListContactsResponse')
    ListDataflowEndpointGroupsRequest = Shapes::StructureShape.new(name: 'ListDataflowEndpointGroupsRequest')
    ListDataflowEndpointGroupsResponse = Shapes::StructureShape.new(name: 'ListDataflowEndpointGroupsResponse')
    ListEphemeridesRequest = Shapes::StructureShape.new(name: 'ListEphemeridesRequest')
    ListEphemeridesResponse = Shapes::StructureShape.new(name: 'ListEphemeridesResponse')
    ListGroundStationsRequest = Shapes::StructureShape.new(name: 'ListGroundStationsRequest')
    ListGroundStationsResponse = Shapes::StructureShape.new(name: 'ListGroundStationsResponse')
    ListMissionProfilesRequest = Shapes::StructureShape.new(name: 'ListMissionProfilesRequest')
    ListMissionProfilesResponse = Shapes::StructureShape.new(name: 'ListMissionProfilesResponse')
    ListSatellitesRequest = Shapes::StructureShape.new(name: 'ListSatellitesRequest')
    ListSatellitesResponse = Shapes::StructureShape.new(name: 'ListSatellitesResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    Long = Shapes::IntegerShape.new(name: 'Long')
    MissionProfileArn = Shapes::StringShape.new(name: 'MissionProfileArn')
    MissionProfileIdResponse = Shapes::StructureShape.new(name: 'MissionProfileIdResponse')
    MissionProfileList = Shapes::ListShape.new(name: 'MissionProfileList')
    MissionProfileListItem = Shapes::StructureShape.new(name: 'MissionProfileListItem')
    Month = Shapes::IntegerShape.new(name: 'Month')
    OEMEphemeris = Shapes::StructureShape.new(name: 'OEMEphemeris')
    PaginationMaxResults = Shapes::IntegerShape.new(name: 'PaginationMaxResults')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    Polarization = Shapes::StringShape.new(name: 'Polarization')
    PositiveDurationInSeconds = Shapes::IntegerShape.new(name: 'PositiveDurationInSeconds')
    RangedConnectionDetails = Shapes::StructureShape.new(name: 'RangedConnectionDetails')
    RangedConnectionDetailsMtuInteger = Shapes::IntegerShape.new(name: 'RangedConnectionDetailsMtuInteger')
    RangedSocketAddress = Shapes::StructureShape.new(name: 'RangedSocketAddress')
    RegisterAgentRequest = Shapes::StructureShape.new(name: 'RegisterAgentRequest')
    RegisterAgentResponse = Shapes::StructureShape.new(name: 'RegisterAgentResponse')
    ReserveContactRequest = Shapes::StructureShape.new(name: 'ReserveContactRequest')
    ResourceLimitExceededException = Shapes::StructureShape.new(name: 'ResourceLimitExceededException')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    S3BucketName = Shapes::StringShape.new(name: 'S3BucketName')
    S3KeyPrefix = Shapes::StringShape.new(name: 'S3KeyPrefix')
    S3Object = Shapes::StructureShape.new(name: 'S3Object')
    S3ObjectKey = Shapes::StringShape.new(name: 'S3ObjectKey')
    S3RecordingConfig = Shapes::StructureShape.new(name: 'S3RecordingConfig')
    S3RecordingDetails = Shapes::StructureShape.new(name: 'S3RecordingDetails')
    S3VersionId = Shapes::StringShape.new(name: 'S3VersionId')
    SafeName = Shapes::StringShape.new(name: 'SafeName')
    SatelliteList = Shapes::ListShape.new(name: 'SatelliteList')
    SatelliteListItem = Shapes::StructureShape.new(name: 'SatelliteListItem')
    SecurityDetails = Shapes::StructureShape.new(name: 'SecurityDetails')
    SecurityGroupIdList = Shapes::ListShape.new(name: 'SecurityGroupIdList')
    SignatureMap = Shapes::MapShape.new(name: 'SignatureMap')
    SocketAddress = Shapes::StructureShape.new(name: 'SocketAddress')
    Source = Shapes::StructureShape.new(name: 'Source')
    SpectrumConfig = Shapes::StructureShape.new(name: 'SpectrumConfig')
    StatusList = Shapes::ListShape.new(name: 'StatusList')
    String = Shapes::StringShape.new(name: 'String')
    SubnetList = Shapes::ListShape.new(name: 'SubnetList')
    TLEData = Shapes::StructureShape.new(name: 'TLEData')
    TLEDataList = Shapes::ListShape.new(name: 'TLEDataList')
    TLEEphemeris = Shapes::StructureShape.new(name: 'TLEEphemeris')
    TagKeys = Shapes::ListShape.new(name: 'TagKeys')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagsMap = Shapes::MapShape.new(name: 'TagsMap')
    TimeRange = Shapes::StructureShape.new(name: 'TimeRange')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TleLineOne = Shapes::StringShape.new(name: 'TleLineOne')
    TleLineTwo = Shapes::StringShape.new(name: 'TleLineTwo')
    TrackingConfig = Shapes::StructureShape.new(name: 'TrackingConfig')
    UnboundedString = Shapes::StringShape.new(name: 'UnboundedString')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateAgentStatusRequest = Shapes::StructureShape.new(name: 'UpdateAgentStatusRequest')
    UpdateAgentStatusResponse = Shapes::StructureShape.new(name: 'UpdateAgentStatusResponse')
    UpdateConfigRequest = Shapes::StructureShape.new(name: 'UpdateConfigRequest')
    UpdateEphemerisRequest = Shapes::StructureShape.new(name: 'UpdateEphemerisRequest')
    UpdateMissionProfileRequest = Shapes::StructureShape.new(name: 'UpdateMissionProfileRequest')
    UplinkEchoConfig = Shapes::StructureShape.new(name: 'UplinkEchoConfig')
    UplinkSpectrumConfig = Shapes::StructureShape.new(name: 'UplinkSpectrumConfig')
    Uuid = Shapes::StringShape.new(name: 'Uuid')
    VersionString = Shapes::StringShape.new(name: 'VersionString')
    VersionStringList = Shapes::ListShape.new(name: 'VersionStringList')
    Year = Shapes::IntegerShape.new(name: 'Year')
    noradSatelliteID = Shapes::IntegerShape.new(name: 'noradSatelliteID')
    satelliteArn = Shapes::StringShape.new(name: 'satelliteArn')

    AgentCpuCoresList.member = Shapes::ShapeRef.new(shape: Integer)

    AgentDetails.add_member(:agent_cpu_cores, Shapes::ShapeRef.new(shape: AgentCpuCoresList, location_name: "agentCpuCores"))
    AgentDetails.add_member(:agent_version, Shapes::ShapeRef.new(shape: VersionString, required: true, location_name: "agentVersion"))
    AgentDetails.add_member(:component_versions, Shapes::ShapeRef.new(shape: ComponentVersionList, required: true, location_name: "componentVersions"))
    AgentDetails.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "instanceId"))
    AgentDetails.add_member(:instance_type, Shapes::ShapeRef.new(shape: InstanceType, required: true, location_name: "instanceType"))
    AgentDetails.add_member(:reserved_cpu_cores, Shapes::ShapeRef.new(shape: AgentCpuCoresList, location_name: "reservedCpuCores"))
    AgentDetails.struct_class = Types::AgentDetails

    AggregateStatus.add_member(:signature_map, Shapes::ShapeRef.new(shape: SignatureMap, location_name: "signatureMap"))
    AggregateStatus.add_member(:status, Shapes::ShapeRef.new(shape: AgentStatus, required: true, location_name: "status"))
    AggregateStatus.struct_class = Types::AggregateStatus

    AntennaDemodDecodeDetails.add_member(:output_node, Shapes::ShapeRef.new(shape: String, location_name: "outputNode"))
    AntennaDemodDecodeDetails.struct_class = Types::AntennaDemodDecodeDetails

    AntennaDownlinkConfig.add_member(:spectrum_config, Shapes::ShapeRef.new(shape: SpectrumConfig, required: true, location_name: "spectrumConfig"))
    AntennaDownlinkConfig.struct_class = Types::AntennaDownlinkConfig

    AntennaDownlinkDemodDecodeConfig.add_member(:decode_config, Shapes::ShapeRef.new(shape: DecodeConfig, required: true, location_name: "decodeConfig"))
    AntennaDownlinkDemodDecodeConfig.add_member(:demodulation_config, Shapes::ShapeRef.new(shape: DemodulationConfig, required: true, location_name: "demodulationConfig"))
    AntennaDownlinkDemodDecodeConfig.add_member(:spectrum_config, Shapes::ShapeRef.new(shape: SpectrumConfig, required: true, location_name: "spectrumConfig"))
    AntennaDownlinkDemodDecodeConfig.struct_class = Types::AntennaDownlinkDemodDecodeConfig

    AntennaUplinkConfig.add_member(:spectrum_config, Shapes::ShapeRef.new(shape: UplinkSpectrumConfig, required: true, location_name: "spectrumConfig"))
    AntennaUplinkConfig.add_member(:target_eirp, Shapes::ShapeRef.new(shape: Eirp, required: true, location_name: "targetEirp"))
    AntennaUplinkConfig.add_member(:transmit_disabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "transmitDisabled"))
    AntennaUplinkConfig.struct_class = Types::AntennaUplinkConfig

    AwsGroundStationAgentEndpoint.add_member(:agent_status, Shapes::ShapeRef.new(shape: AgentStatus, location_name: "agentStatus"))
    AwsGroundStationAgentEndpoint.add_member(:audit_results, Shapes::ShapeRef.new(shape: AuditResults, location_name: "auditResults"))
    AwsGroundStationAgentEndpoint.add_member(:egress_address, Shapes::ShapeRef.new(shape: ConnectionDetails, required: true, location_name: "egressAddress"))
    AwsGroundStationAgentEndpoint.add_member(:ingress_address, Shapes::ShapeRef.new(shape: RangedConnectionDetails, required: true, location_name: "ingressAddress"))
    AwsGroundStationAgentEndpoint.add_member(:name, Shapes::ShapeRef.new(shape: SafeName, required: true, location_name: "name"))
    AwsGroundStationAgentEndpoint.struct_class = Types::AwsGroundStationAgentEndpoint

    CancelContactRequest.add_member(:contact_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location: "uri", location_name: "contactId"))
    CancelContactRequest.struct_class = Types::CancelContactRequest

    CapabilityArnList.member = Shapes::ShapeRef.new(shape: CapabilityArn)

    CapabilityHealthReasonList.member = Shapes::ShapeRef.new(shape: CapabilityHealthReason)

    ComponentStatusData.add_member(:bytes_received, Shapes::ShapeRef.new(shape: Long, location_name: "bytesReceived"))
    ComponentStatusData.add_member(:bytes_sent, Shapes::ShapeRef.new(shape: Long, location_name: "bytesSent"))
    ComponentStatusData.add_member(:capability_arn, Shapes::ShapeRef.new(shape: CapabilityArn, required: true, location_name: "capabilityArn"))
    ComponentStatusData.add_member(:component_type, Shapes::ShapeRef.new(shape: ComponentTypeString, required: true, location_name: "componentType"))
    ComponentStatusData.add_member(:dataflow_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "dataflowId"))
    ComponentStatusData.add_member(:packets_dropped, Shapes::ShapeRef.new(shape: Long, location_name: "packetsDropped"))
    ComponentStatusData.add_member(:status, Shapes::ShapeRef.new(shape: AgentStatus, required: true, location_name: "status"))
    ComponentStatusData.struct_class = Types::ComponentStatusData

    ComponentStatusList.member = Shapes::ShapeRef.new(shape: ComponentStatusData)

    ComponentVersion.add_member(:component_type, Shapes::ShapeRef.new(shape: ComponentTypeString, required: true, location_name: "componentType"))
    ComponentVersion.add_member(:versions, Shapes::ShapeRef.new(shape: VersionStringList, required: true, location_name: "versions"))
    ComponentVersion.struct_class = Types::ComponentVersion

    ComponentVersionList.member = Shapes::ShapeRef.new(shape: ComponentVersion)

    ConfigDetails.add_member(:antenna_demod_decode_details, Shapes::ShapeRef.new(shape: AntennaDemodDecodeDetails, location_name: "antennaDemodDecodeDetails"))
    ConfigDetails.add_member(:endpoint_details, Shapes::ShapeRef.new(shape: EndpointDetails, location_name: "endpointDetails"))
    ConfigDetails.add_member(:s3_recording_details, Shapes::ShapeRef.new(shape: S3RecordingDetails, location_name: "s3RecordingDetails"))
    ConfigDetails.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ConfigDetails.add_member_subclass(:antenna_demod_decode_details, Types::ConfigDetails::AntennaDemodDecodeDetails)
    ConfigDetails.add_member_subclass(:endpoint_details, Types::ConfigDetails::EndpointDetails)
    ConfigDetails.add_member_subclass(:s3_recording_details, Types::ConfigDetails::S3RecordingDetails)
    ConfigDetails.add_member_subclass(:unknown, Types::ConfigDetails::Unknown)
    ConfigDetails.struct_class = Types::ConfigDetails

    ConfigIdResponse.add_member(:config_arn, Shapes::ShapeRef.new(shape: ConfigArn, location_name: "configArn"))
    ConfigIdResponse.add_member(:config_id, Shapes::ShapeRef.new(shape: String, location_name: "configId"))
    ConfigIdResponse.add_member(:config_type, Shapes::ShapeRef.new(shape: ConfigCapabilityType, location_name: "configType"))
    ConfigIdResponse.struct_class = Types::ConfigIdResponse

    ConfigList.member = Shapes::ShapeRef.new(shape: ConfigListItem)

    ConfigListItem.add_member(:config_arn, Shapes::ShapeRef.new(shape: ConfigArn, location_name: "configArn"))
    ConfigListItem.add_member(:config_id, Shapes::ShapeRef.new(shape: String, location_name: "configId"))
    ConfigListItem.add_member(:config_type, Shapes::ShapeRef.new(shape: ConfigCapabilityType, location_name: "configType"))
    ConfigListItem.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    ConfigListItem.struct_class = Types::ConfigListItem

    ConfigTypeData.add_member(:antenna_downlink_config, Shapes::ShapeRef.new(shape: AntennaDownlinkConfig, location_name: "antennaDownlinkConfig"))
    ConfigTypeData.add_member(:antenna_downlink_demod_decode_config, Shapes::ShapeRef.new(shape: AntennaDownlinkDemodDecodeConfig, location_name: "antennaDownlinkDemodDecodeConfig"))
    ConfigTypeData.add_member(:antenna_uplink_config, Shapes::ShapeRef.new(shape: AntennaUplinkConfig, location_name: "antennaUplinkConfig"))
    ConfigTypeData.add_member(:dataflow_endpoint_config, Shapes::ShapeRef.new(shape: DataflowEndpointConfig, location_name: "dataflowEndpointConfig"))
    ConfigTypeData.add_member(:s3_recording_config, Shapes::ShapeRef.new(shape: S3RecordingConfig, location_name: "s3RecordingConfig"))
    ConfigTypeData.add_member(:tracking_config, Shapes::ShapeRef.new(shape: TrackingConfig, location_name: "trackingConfig"))
    ConfigTypeData.add_member(:uplink_echo_config, Shapes::ShapeRef.new(shape: UplinkEchoConfig, location_name: "uplinkEchoConfig"))
    ConfigTypeData.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ConfigTypeData.add_member_subclass(:antenna_downlink_config, Types::ConfigTypeData::AntennaDownlinkConfig)
    ConfigTypeData.add_member_subclass(:antenna_downlink_demod_decode_config, Types::ConfigTypeData::AntennaDownlinkDemodDecodeConfig)
    ConfigTypeData.add_member_subclass(:antenna_uplink_config, Types::ConfigTypeData::AntennaUplinkConfig)
    ConfigTypeData.add_member_subclass(:dataflow_endpoint_config, Types::ConfigTypeData::DataflowEndpointConfig)
    ConfigTypeData.add_member_subclass(:s3_recording_config, Types::ConfigTypeData::S3RecordingConfig)
    ConfigTypeData.add_member_subclass(:tracking_config, Types::ConfigTypeData::TrackingConfig)
    ConfigTypeData.add_member_subclass(:uplink_echo_config, Types::ConfigTypeData::UplinkEchoConfig)
    ConfigTypeData.add_member_subclass(:unknown, Types::ConfigTypeData::Unknown)
    ConfigTypeData.struct_class = Types::ConfigTypeData

    ConnectionDetails.add_member(:mtu, Shapes::ShapeRef.new(shape: Integer, location_name: "mtu"))
    ConnectionDetails.add_member(:socket_address, Shapes::ShapeRef.new(shape: SocketAddress, required: true, location_name: "socketAddress"))
    ConnectionDetails.struct_class = Types::ConnectionDetails

    ContactData.add_member(:contact_id, Shapes::ShapeRef.new(shape: Uuid, location_name: "contactId"))
    ContactData.add_member(:contact_status, Shapes::ShapeRef.new(shape: ContactStatus, location_name: "contactStatus"))
    ContactData.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endTime"))
    ContactData.add_member(:error_message, Shapes::ShapeRef.new(shape: String, location_name: "errorMessage"))
    ContactData.add_member(:ground_station, Shapes::ShapeRef.new(shape: String, location_name: "groundStation"))
    ContactData.add_member(:maximum_elevation, Shapes::ShapeRef.new(shape: Elevation, location_name: "maximumElevation"))
    ContactData.add_member(:mission_profile_arn, Shapes::ShapeRef.new(shape: MissionProfileArn, location_name: "missionProfileArn"))
    ContactData.add_member(:post_pass_end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "postPassEndTime"))
    ContactData.add_member(:pre_pass_start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "prePassStartTime"))
    ContactData.add_member(:region, Shapes::ShapeRef.new(shape: String, location_name: "region"))
    ContactData.add_member(:satellite_arn, Shapes::ShapeRef.new(shape: satelliteArn, location_name: "satelliteArn"))
    ContactData.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "startTime"))
    ContactData.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    ContactData.struct_class = Types::ContactData

    ContactIdResponse.add_member(:contact_id, Shapes::ShapeRef.new(shape: Uuid, location_name: "contactId"))
    ContactIdResponse.struct_class = Types::ContactIdResponse

    ContactList.member = Shapes::ShapeRef.new(shape: ContactData)

    CreateConfigRequest.add_member(:config_data, Shapes::ShapeRef.new(shape: ConfigTypeData, required: true, location_name: "configData"))
    CreateConfigRequest.add_member(:name, Shapes::ShapeRef.new(shape: SafeName, required: true, location_name: "name"))
    CreateConfigRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    CreateConfigRequest.struct_class = Types::CreateConfigRequest

    CreateDataflowEndpointGroupRequest.add_member(:contact_post_pass_duration_seconds, Shapes::ShapeRef.new(shape: DataflowEndpointGroupDurationInSeconds, location_name: "contactPostPassDurationSeconds"))
    CreateDataflowEndpointGroupRequest.add_member(:contact_pre_pass_duration_seconds, Shapes::ShapeRef.new(shape: DataflowEndpointGroupDurationInSeconds, location_name: "contactPrePassDurationSeconds"))
    CreateDataflowEndpointGroupRequest.add_member(:endpoint_details, Shapes::ShapeRef.new(shape: EndpointDetailsList, required: true, location_name: "endpointDetails"))
    CreateDataflowEndpointGroupRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    CreateDataflowEndpointGroupRequest.struct_class = Types::CreateDataflowEndpointGroupRequest

    CreateEphemerisRequest.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "enabled"))
    CreateEphemerisRequest.add_member(:ephemeris, Shapes::ShapeRef.new(shape: EphemerisData, location_name: "ephemeris"))
    CreateEphemerisRequest.add_member(:expiration_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "expirationTime"))
    CreateEphemerisRequest.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KeyArn, location_name: "kmsKeyArn"))
    CreateEphemerisRequest.add_member(:name, Shapes::ShapeRef.new(shape: SafeName, required: true, location_name: "name"))
    CreateEphemerisRequest.add_member(:priority, Shapes::ShapeRef.new(shape: CustomerEphemerisPriority, location_name: "priority"))
    CreateEphemerisRequest.add_member(:satellite_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "satelliteId"))
    CreateEphemerisRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    CreateEphemerisRequest.struct_class = Types::CreateEphemerisRequest

    CreateMissionProfileRequest.add_member(:contact_post_pass_duration_seconds, Shapes::ShapeRef.new(shape: DurationInSeconds, location_name: "contactPostPassDurationSeconds"))
    CreateMissionProfileRequest.add_member(:contact_pre_pass_duration_seconds, Shapes::ShapeRef.new(shape: DurationInSeconds, location_name: "contactPrePassDurationSeconds"))
    CreateMissionProfileRequest.add_member(:dataflow_edges, Shapes::ShapeRef.new(shape: DataflowEdgeList, required: true, location_name: "dataflowEdges"))
    CreateMissionProfileRequest.add_member(:minimum_viable_contact_duration_seconds, Shapes::ShapeRef.new(shape: PositiveDurationInSeconds, required: true, location_name: "minimumViableContactDurationSeconds"))
    CreateMissionProfileRequest.add_member(:name, Shapes::ShapeRef.new(shape: SafeName, required: true, location_name: "name"))
    CreateMissionProfileRequest.add_member(:streams_kms_key, Shapes::ShapeRef.new(shape: KmsKey, location_name: "streamsKmsKey"))
    CreateMissionProfileRequest.add_member(:streams_kms_role, Shapes::ShapeRef.new(shape: RoleArn, location_name: "streamsKmsRole"))
    CreateMissionProfileRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    CreateMissionProfileRequest.add_member(:tracking_config_arn, Shapes::ShapeRef.new(shape: ConfigArn, required: true, location_name: "trackingConfigArn"))
    CreateMissionProfileRequest.struct_class = Types::CreateMissionProfileRequest

    DataflowDetail.add_member(:destination, Shapes::ShapeRef.new(shape: Destination, location_name: "destination"))
    DataflowDetail.add_member(:error_message, Shapes::ShapeRef.new(shape: String, location_name: "errorMessage"))
    DataflowDetail.add_member(:source, Shapes::ShapeRef.new(shape: Source, location_name: "source"))
    DataflowDetail.struct_class = Types::DataflowDetail

    DataflowEdge.member = Shapes::ShapeRef.new(shape: ConfigArn)

    DataflowEdgeList.member = Shapes::ShapeRef.new(shape: DataflowEdge)

    DataflowEndpoint.add_member(:address, Shapes::ShapeRef.new(shape: SocketAddress, location_name: "address"))
    DataflowEndpoint.add_member(:mtu, Shapes::ShapeRef.new(shape: DataflowEndpointMtuInteger, location_name: "mtu"))
    DataflowEndpoint.add_member(:name, Shapes::ShapeRef.new(shape: SafeName, location_name: "name"))
    DataflowEndpoint.add_member(:status, Shapes::ShapeRef.new(shape: EndpointStatus, location_name: "status"))
    DataflowEndpoint.struct_class = Types::DataflowEndpoint

    DataflowEndpointConfig.add_member(:dataflow_endpoint_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "dataflowEndpointName"))
    DataflowEndpointConfig.add_member(:dataflow_endpoint_region, Shapes::ShapeRef.new(shape: String, location_name: "dataflowEndpointRegion"))
    DataflowEndpointConfig.struct_class = Types::DataflowEndpointConfig

    DataflowEndpointGroupIdResponse.add_member(:dataflow_endpoint_group_id, Shapes::ShapeRef.new(shape: Uuid, location_name: "dataflowEndpointGroupId"))
    DataflowEndpointGroupIdResponse.struct_class = Types::DataflowEndpointGroupIdResponse

    DataflowEndpointGroupList.member = Shapes::ShapeRef.new(shape: DataflowEndpointListItem)

    DataflowEndpointListItem.add_member(:dataflow_endpoint_group_arn, Shapes::ShapeRef.new(shape: DataflowEndpointGroupArn, location_name: "dataflowEndpointGroupArn"))
    DataflowEndpointListItem.add_member(:dataflow_endpoint_group_id, Shapes::ShapeRef.new(shape: Uuid, location_name: "dataflowEndpointGroupId"))
    DataflowEndpointListItem.struct_class = Types::DataflowEndpointListItem

    DataflowList.member = Shapes::ShapeRef.new(shape: DataflowDetail)

    DecodeConfig.add_member(:unvalidated_json, Shapes::ShapeRef.new(shape: JsonString, required: true, location_name: "unvalidatedJSON"))
    DecodeConfig.struct_class = Types::DecodeConfig

    DeleteConfigRequest.add_member(:config_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location: "uri", location_name: "configId"))
    DeleteConfigRequest.add_member(:config_type, Shapes::ShapeRef.new(shape: ConfigCapabilityType, required: true, location: "uri", location_name: "configType"))
    DeleteConfigRequest.struct_class = Types::DeleteConfigRequest

    DeleteDataflowEndpointGroupRequest.add_member(:dataflow_endpoint_group_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location: "uri", location_name: "dataflowEndpointGroupId"))
    DeleteDataflowEndpointGroupRequest.struct_class = Types::DeleteDataflowEndpointGroupRequest

    DeleteEphemerisRequest.add_member(:ephemeris_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location: "uri", location_name: "ephemerisId"))
    DeleteEphemerisRequest.struct_class = Types::DeleteEphemerisRequest

    DeleteMissionProfileRequest.add_member(:mission_profile_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location: "uri", location_name: "missionProfileId"))
    DeleteMissionProfileRequest.struct_class = Types::DeleteMissionProfileRequest

    DemodulationConfig.add_member(:unvalidated_json, Shapes::ShapeRef.new(shape: JsonString, required: true, location_name: "unvalidatedJSON"))
    DemodulationConfig.struct_class = Types::DemodulationConfig

    DependencyException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    DependencyException.add_member(:parameter_name, Shapes::ShapeRef.new(shape: String, location_name: "parameterName"))
    DependencyException.struct_class = Types::DependencyException

    DescribeContactRequest.add_member(:contact_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location: "uri", location_name: "contactId"))
    DescribeContactRequest.struct_class = Types::DescribeContactRequest

    DescribeContactResponse.add_member(:contact_id, Shapes::ShapeRef.new(shape: Uuid, location_name: "contactId"))
    DescribeContactResponse.add_member(:contact_status, Shapes::ShapeRef.new(shape: ContactStatus, location_name: "contactStatus"))
    DescribeContactResponse.add_member(:dataflow_list, Shapes::ShapeRef.new(shape: DataflowList, location_name: "dataflowList"))
    DescribeContactResponse.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endTime"))
    DescribeContactResponse.add_member(:error_message, Shapes::ShapeRef.new(shape: String, location_name: "errorMessage"))
    DescribeContactResponse.add_member(:ground_station, Shapes::ShapeRef.new(shape: String, location_name: "groundStation"))
    DescribeContactResponse.add_member(:maximum_elevation, Shapes::ShapeRef.new(shape: Elevation, location_name: "maximumElevation"))
    DescribeContactResponse.add_member(:mission_profile_arn, Shapes::ShapeRef.new(shape: MissionProfileArn, location_name: "missionProfileArn"))
    DescribeContactResponse.add_member(:post_pass_end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "postPassEndTime"))
    DescribeContactResponse.add_member(:pre_pass_start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "prePassStartTime"))
    DescribeContactResponse.add_member(:region, Shapes::ShapeRef.new(shape: String, location_name: "region"))
    DescribeContactResponse.add_member(:satellite_arn, Shapes::ShapeRef.new(shape: satelliteArn, location_name: "satelliteArn"))
    DescribeContactResponse.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "startTime"))
    DescribeContactResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    DescribeContactResponse.struct_class = Types::DescribeContactResponse

    DescribeEphemerisRequest.add_member(:ephemeris_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location: "uri", location_name: "ephemerisId"))
    DescribeEphemerisRequest.struct_class = Types::DescribeEphemerisRequest

    DescribeEphemerisResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime"))
    DescribeEphemerisResponse.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "enabled"))
    DescribeEphemerisResponse.add_member(:ephemeris_id, Shapes::ShapeRef.new(shape: Uuid, location_name: "ephemerisId"))
    DescribeEphemerisResponse.add_member(:invalid_reason, Shapes::ShapeRef.new(shape: EphemerisInvalidReason, location_name: "invalidReason"))
    DescribeEphemerisResponse.add_member(:name, Shapes::ShapeRef.new(shape: SafeName, location_name: "name"))
    DescribeEphemerisResponse.add_member(:priority, Shapes::ShapeRef.new(shape: EphemerisPriority, location_name: "priority"))
    DescribeEphemerisResponse.add_member(:satellite_id, Shapes::ShapeRef.new(shape: Uuid, location_name: "satelliteId"))
    DescribeEphemerisResponse.add_member(:status, Shapes::ShapeRef.new(shape: EphemerisStatus, location_name: "status"))
    DescribeEphemerisResponse.add_member(:supplied_data, Shapes::ShapeRef.new(shape: EphemerisTypeDescription, location_name: "suppliedData"))
    DescribeEphemerisResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    DescribeEphemerisResponse.struct_class = Types::DescribeEphemerisResponse

    Destination.add_member(:config_details, Shapes::ShapeRef.new(shape: ConfigDetails, location_name: "configDetails"))
    Destination.add_member(:config_id, Shapes::ShapeRef.new(shape: Uuid, location_name: "configId"))
    Destination.add_member(:config_type, Shapes::ShapeRef.new(shape: ConfigCapabilityType, location_name: "configType"))
    Destination.add_member(:dataflow_destination_region, Shapes::ShapeRef.new(shape: String, location_name: "dataflowDestinationRegion"))
    Destination.struct_class = Types::Destination

    DiscoveryData.add_member(:capability_arns, Shapes::ShapeRef.new(shape: CapabilityArnList, required: true, location_name: "capabilityArns"))
    DiscoveryData.add_member(:private_ip_addresses, Shapes::ShapeRef.new(shape: IpAddressList, required: true, location_name: "privateIpAddresses"))
    DiscoveryData.add_member(:public_ip_addresses, Shapes::ShapeRef.new(shape: IpAddressList, required: true, location_name: "publicIpAddresses"))
    DiscoveryData.struct_class = Types::DiscoveryData

    Eirp.add_member(:units, Shapes::ShapeRef.new(shape: EirpUnits, required: true, location_name: "units"))
    Eirp.add_member(:value, Shapes::ShapeRef.new(shape: Double, required: true, location_name: "value"))
    Eirp.struct_class = Types::Eirp

    Elevation.add_member(:unit, Shapes::ShapeRef.new(shape: AngleUnits, required: true, location_name: "unit"))
    Elevation.add_member(:value, Shapes::ShapeRef.new(shape: Double, required: true, location_name: "value"))
    Elevation.struct_class = Types::Elevation

    EndpointDetails.add_member(:aws_ground_station_agent_endpoint, Shapes::ShapeRef.new(shape: AwsGroundStationAgentEndpoint, location_name: "awsGroundStationAgentEndpoint"))
    EndpointDetails.add_member(:endpoint, Shapes::ShapeRef.new(shape: DataflowEndpoint, location_name: "endpoint"))
    EndpointDetails.add_member(:health_reasons, Shapes::ShapeRef.new(shape: CapabilityHealthReasonList, location_name: "healthReasons"))
    EndpointDetails.add_member(:health_status, Shapes::ShapeRef.new(shape: CapabilityHealth, location_name: "healthStatus"))
    EndpointDetails.add_member(:security_details, Shapes::ShapeRef.new(shape: SecurityDetails, location_name: "securityDetails"))
    EndpointDetails.struct_class = Types::EndpointDetails

    EndpointDetailsList.member = Shapes::ShapeRef.new(shape: EndpointDetails)

    EphemeridesList.member = Shapes::ShapeRef.new(shape: EphemerisItem)

    EphemerisData.add_member(:oem, Shapes::ShapeRef.new(shape: OEMEphemeris, location_name: "oem"))
    EphemerisData.add_member(:tle, Shapes::ShapeRef.new(shape: TLEEphemeris, location_name: "tle"))
    EphemerisData.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    EphemerisData.add_member_subclass(:oem, Types::EphemerisData::Oem)
    EphemerisData.add_member_subclass(:tle, Types::EphemerisData::Tle)
    EphemerisData.add_member_subclass(:unknown, Types::EphemerisData::Unknown)
    EphemerisData.struct_class = Types::EphemerisData

    EphemerisDescription.add_member(:ephemeris_data, Shapes::ShapeRef.new(shape: UnboundedString, location_name: "ephemerisData"))
    EphemerisDescription.add_member(:source_s3_object, Shapes::ShapeRef.new(shape: S3Object, location_name: "sourceS3Object"))
    EphemerisDescription.struct_class = Types::EphemerisDescription

    EphemerisIdResponse.add_member(:ephemeris_id, Shapes::ShapeRef.new(shape: Uuid, location_name: "ephemerisId"))
    EphemerisIdResponse.struct_class = Types::EphemerisIdResponse

    EphemerisItem.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime"))
    EphemerisItem.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "enabled"))
    EphemerisItem.add_member(:ephemeris_id, Shapes::ShapeRef.new(shape: Uuid, location_name: "ephemerisId"))
    EphemerisItem.add_member(:name, Shapes::ShapeRef.new(shape: SafeName, location_name: "name"))
    EphemerisItem.add_member(:priority, Shapes::ShapeRef.new(shape: EphemerisPriority, location_name: "priority"))
    EphemerisItem.add_member(:source_s3_object, Shapes::ShapeRef.new(shape: S3Object, location_name: "sourceS3Object"))
    EphemerisItem.add_member(:status, Shapes::ShapeRef.new(shape: EphemerisStatus, location_name: "status"))
    EphemerisItem.struct_class = Types::EphemerisItem

    EphemerisMetaData.add_member(:ephemeris_id, Shapes::ShapeRef.new(shape: Uuid, location_name: "ephemerisId"))
    EphemerisMetaData.add_member(:epoch, Shapes::ShapeRef.new(shape: Timestamp, location_name: "epoch"))
    EphemerisMetaData.add_member(:name, Shapes::ShapeRef.new(shape: SafeName, location_name: "name"))
    EphemerisMetaData.add_member(:source, Shapes::ShapeRef.new(shape: EphemerisSource, required: true, location_name: "source"))
    EphemerisMetaData.struct_class = Types::EphemerisMetaData

    EphemerisStatusList.member = Shapes::ShapeRef.new(shape: EphemerisStatus)

    EphemerisTypeDescription.add_member(:oem, Shapes::ShapeRef.new(shape: EphemerisDescription, location_name: "oem"))
    EphemerisTypeDescription.add_member(:tle, Shapes::ShapeRef.new(shape: EphemerisDescription, location_name: "tle"))
    EphemerisTypeDescription.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    EphemerisTypeDescription.add_member_subclass(:oem, Types::EphemerisTypeDescription::Oem)
    EphemerisTypeDescription.add_member_subclass(:tle, Types::EphemerisTypeDescription::Tle)
    EphemerisTypeDescription.add_member_subclass(:unknown, Types::EphemerisTypeDescription::Unknown)
    EphemerisTypeDescription.struct_class = Types::EphemerisTypeDescription

    Frequency.add_member(:units, Shapes::ShapeRef.new(shape: FrequencyUnits, required: true, location_name: "units"))
    Frequency.add_member(:value, Shapes::ShapeRef.new(shape: Double, required: true, location_name: "value"))
    Frequency.struct_class = Types::Frequency

    FrequencyBandwidth.add_member(:units, Shapes::ShapeRef.new(shape: BandwidthUnits, required: true, location_name: "units"))
    FrequencyBandwidth.add_member(:value, Shapes::ShapeRef.new(shape: Double, required: true, location_name: "value"))
    FrequencyBandwidth.struct_class = Types::FrequencyBandwidth

    GetAgentConfigurationRequest.add_member(:agent_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location: "uri", location_name: "agentId"))
    GetAgentConfigurationRequest.struct_class = Types::GetAgentConfigurationRequest

    GetAgentConfigurationResponse.add_member(:agent_id, Shapes::ShapeRef.new(shape: Uuid, location_name: "agentId"))
    GetAgentConfigurationResponse.add_member(:tasking_document, Shapes::ShapeRef.new(shape: String, location_name: "taskingDocument"))
    GetAgentConfigurationResponse.struct_class = Types::GetAgentConfigurationResponse

    GetConfigRequest.add_member(:config_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location: "uri", location_name: "configId"))
    GetConfigRequest.add_member(:config_type, Shapes::ShapeRef.new(shape: ConfigCapabilityType, required: true, location: "uri", location_name: "configType"))
    GetConfigRequest.struct_class = Types::GetConfigRequest

    GetConfigResponse.add_member(:config_arn, Shapes::ShapeRef.new(shape: ConfigArn, required: true, location_name: "configArn"))
    GetConfigResponse.add_member(:config_data, Shapes::ShapeRef.new(shape: ConfigTypeData, required: true, location_name: "configData"))
    GetConfigResponse.add_member(:config_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "configId"))
    GetConfigResponse.add_member(:config_type, Shapes::ShapeRef.new(shape: ConfigCapabilityType, location_name: "configType"))
    GetConfigResponse.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    GetConfigResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    GetConfigResponse.struct_class = Types::GetConfigResponse

    GetDataflowEndpointGroupRequest.add_member(:dataflow_endpoint_group_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location: "uri", location_name: "dataflowEndpointGroupId"))
    GetDataflowEndpointGroupRequest.struct_class = Types::GetDataflowEndpointGroupRequest

    GetDataflowEndpointGroupResponse.add_member(:contact_post_pass_duration_seconds, Shapes::ShapeRef.new(shape: DataflowEndpointGroupDurationInSeconds, location_name: "contactPostPassDurationSeconds"))
    GetDataflowEndpointGroupResponse.add_member(:contact_pre_pass_duration_seconds, Shapes::ShapeRef.new(shape: DataflowEndpointGroupDurationInSeconds, location_name: "contactPrePassDurationSeconds"))
    GetDataflowEndpointGroupResponse.add_member(:dataflow_endpoint_group_arn, Shapes::ShapeRef.new(shape: DataflowEndpointGroupArn, location_name: "dataflowEndpointGroupArn"))
    GetDataflowEndpointGroupResponse.add_member(:dataflow_endpoint_group_id, Shapes::ShapeRef.new(shape: Uuid, location_name: "dataflowEndpointGroupId"))
    GetDataflowEndpointGroupResponse.add_member(:endpoints_details, Shapes::ShapeRef.new(shape: EndpointDetailsList, location_name: "endpointsDetails"))
    GetDataflowEndpointGroupResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    GetDataflowEndpointGroupResponse.struct_class = Types::GetDataflowEndpointGroupResponse

    GetMinuteUsageRequest.add_member(:month, Shapes::ShapeRef.new(shape: Month, required: true, location_name: "month"))
    GetMinuteUsageRequest.add_member(:year, Shapes::ShapeRef.new(shape: Year, required: true, location_name: "year"))
    GetMinuteUsageRequest.struct_class = Types::GetMinuteUsageRequest

    GetMinuteUsageResponse.add_member(:estimated_minutes_remaining, Shapes::ShapeRef.new(shape: Integer, location_name: "estimatedMinutesRemaining"))
    GetMinuteUsageResponse.add_member(:is_reserved_minutes_customer, Shapes::ShapeRef.new(shape: Boolean, location_name: "isReservedMinutesCustomer"))
    GetMinuteUsageResponse.add_member(:total_reserved_minute_allocation, Shapes::ShapeRef.new(shape: Integer, location_name: "totalReservedMinuteAllocation"))
    GetMinuteUsageResponse.add_member(:total_scheduled_minutes, Shapes::ShapeRef.new(shape: Integer, location_name: "totalScheduledMinutes"))
    GetMinuteUsageResponse.add_member(:upcoming_minutes_scheduled, Shapes::ShapeRef.new(shape: Integer, location_name: "upcomingMinutesScheduled"))
    GetMinuteUsageResponse.struct_class = Types::GetMinuteUsageResponse

    GetMissionProfileRequest.add_member(:mission_profile_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location: "uri", location_name: "missionProfileId"))
    GetMissionProfileRequest.struct_class = Types::GetMissionProfileRequest

    GetMissionProfileResponse.add_member(:contact_post_pass_duration_seconds, Shapes::ShapeRef.new(shape: DurationInSeconds, location_name: "contactPostPassDurationSeconds"))
    GetMissionProfileResponse.add_member(:contact_pre_pass_duration_seconds, Shapes::ShapeRef.new(shape: DurationInSeconds, location_name: "contactPrePassDurationSeconds"))
    GetMissionProfileResponse.add_member(:dataflow_edges, Shapes::ShapeRef.new(shape: DataflowEdgeList, location_name: "dataflowEdges"))
    GetMissionProfileResponse.add_member(:minimum_viable_contact_duration_seconds, Shapes::ShapeRef.new(shape: PositiveDurationInSeconds, location_name: "minimumViableContactDurationSeconds"))
    GetMissionProfileResponse.add_member(:mission_profile_arn, Shapes::ShapeRef.new(shape: MissionProfileArn, location_name: "missionProfileArn"))
    GetMissionProfileResponse.add_member(:mission_profile_id, Shapes::ShapeRef.new(shape: Uuid, location_name: "missionProfileId"))
    GetMissionProfileResponse.add_member(:name, Shapes::ShapeRef.new(shape: SafeName, location_name: "name"))
    GetMissionProfileResponse.add_member(:region, Shapes::ShapeRef.new(shape: AWSRegion, location_name: "region"))
    GetMissionProfileResponse.add_member(:streams_kms_key, Shapes::ShapeRef.new(shape: KmsKey, location_name: "streamsKmsKey"))
    GetMissionProfileResponse.add_member(:streams_kms_role, Shapes::ShapeRef.new(shape: RoleArn, location_name: "streamsKmsRole"))
    GetMissionProfileResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    GetMissionProfileResponse.add_member(:tracking_config_arn, Shapes::ShapeRef.new(shape: ConfigArn, location_name: "trackingConfigArn"))
    GetMissionProfileResponse.struct_class = Types::GetMissionProfileResponse

    GetSatelliteRequest.add_member(:satellite_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location: "uri", location_name: "satelliteId"))
    GetSatelliteRequest.struct_class = Types::GetSatelliteRequest

    GetSatelliteResponse.add_member(:current_ephemeris, Shapes::ShapeRef.new(shape: EphemerisMetaData, location_name: "currentEphemeris"))
    GetSatelliteResponse.add_member(:ground_stations, Shapes::ShapeRef.new(shape: GroundStationIdList, location_name: "groundStations"))
    GetSatelliteResponse.add_member(:norad_satellite_id, Shapes::ShapeRef.new(shape: noradSatelliteID, location_name: "noradSatelliteID"))
    GetSatelliteResponse.add_member(:satellite_arn, Shapes::ShapeRef.new(shape: satelliteArn, location_name: "satelliteArn"))
    GetSatelliteResponse.add_member(:satellite_id, Shapes::ShapeRef.new(shape: Uuid, location_name: "satelliteId"))
    GetSatelliteResponse.struct_class = Types::GetSatelliteResponse

    GroundStationData.add_member(:ground_station_id, Shapes::ShapeRef.new(shape: GroundStationName, location_name: "groundStationId"))
    GroundStationData.add_member(:ground_station_name, Shapes::ShapeRef.new(shape: GroundStationName, location_name: "groundStationName"))
    GroundStationData.add_member(:region, Shapes::ShapeRef.new(shape: AWSRegion, location_name: "region"))
    GroundStationData.struct_class = Types::GroundStationData

    GroundStationIdList.member = Shapes::ShapeRef.new(shape: GroundStationName)

    GroundStationList.member = Shapes::ShapeRef.new(shape: GroundStationData)

    IntegerRange.add_member(:maximum, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "maximum"))
    IntegerRange.add_member(:minimum, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "minimum"))
    IntegerRange.struct_class = Types::IntegerRange

    InvalidParameterException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InvalidParameterException.add_member(:parameter_name, Shapes::ShapeRef.new(shape: String, location_name: "parameterName"))
    InvalidParameterException.struct_class = Types::InvalidParameterException

    IpAddressList.member = Shapes::ShapeRef.new(shape: IpV4Address)

    KmsKey.add_member(:kms_alias_arn, Shapes::ShapeRef.new(shape: KeyAliasArn, location_name: "kmsAliasArn"))
    KmsKey.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KeyArn, location_name: "kmsKeyArn"))
    KmsKey.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    KmsKey.add_member_subclass(:kms_alias_arn, Types::KmsKey::KmsAliasArn)
    KmsKey.add_member_subclass(:kms_key_arn, Types::KmsKey::KmsKeyArn)
    KmsKey.add_member_subclass(:unknown, Types::KmsKey::Unknown)
    KmsKey.struct_class = Types::KmsKey

    ListConfigsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PaginationMaxResults, location: "querystring", location_name: "maxResults"))
    ListConfigsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListConfigsRequest.struct_class = Types::ListConfigsRequest

    ListConfigsResponse.add_member(:config_list, Shapes::ShapeRef.new(shape: ConfigList, location_name: "configList"))
    ListConfigsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListConfigsResponse.struct_class = Types::ListConfigsResponse

    ListContactsRequest.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "endTime"))
    ListContactsRequest.add_member(:ground_station, Shapes::ShapeRef.new(shape: GroundStationName, location_name: "groundStation"))
    ListContactsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PaginationMaxResults, location_name: "maxResults"))
    ListContactsRequest.add_member(:mission_profile_arn, Shapes::ShapeRef.new(shape: MissionProfileArn, location_name: "missionProfileArn"))
    ListContactsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListContactsRequest.add_member(:satellite_arn, Shapes::ShapeRef.new(shape: satelliteArn, location_name: "satelliteArn"))
    ListContactsRequest.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "startTime"))
    ListContactsRequest.add_member(:status_list, Shapes::ShapeRef.new(shape: StatusList, required: true, location_name: "statusList"))
    ListContactsRequest.struct_class = Types::ListContactsRequest

    ListContactsResponse.add_member(:contact_list, Shapes::ShapeRef.new(shape: ContactList, location_name: "contactList"))
    ListContactsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListContactsResponse.struct_class = Types::ListContactsResponse

    ListDataflowEndpointGroupsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PaginationMaxResults, location: "querystring", location_name: "maxResults"))
    ListDataflowEndpointGroupsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListDataflowEndpointGroupsRequest.struct_class = Types::ListDataflowEndpointGroupsRequest

    ListDataflowEndpointGroupsResponse.add_member(:dataflow_endpoint_group_list, Shapes::ShapeRef.new(shape: DataflowEndpointGroupList, location_name: "dataflowEndpointGroupList"))
    ListDataflowEndpointGroupsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListDataflowEndpointGroupsResponse.struct_class = Types::ListDataflowEndpointGroupsResponse

    ListEphemeridesRequest.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "endTime"))
    ListEphemeridesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PaginationMaxResults, location: "querystring", location_name: "maxResults"))
    ListEphemeridesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListEphemeridesRequest.add_member(:satellite_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "satelliteId"))
    ListEphemeridesRequest.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "startTime"))
    ListEphemeridesRequest.add_member(:status_list, Shapes::ShapeRef.new(shape: EphemerisStatusList, location_name: "statusList"))
    ListEphemeridesRequest.struct_class = Types::ListEphemeridesRequest

    ListEphemeridesResponse.add_member(:ephemerides, Shapes::ShapeRef.new(shape: EphemeridesList, location_name: "ephemerides"))
    ListEphemeridesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListEphemeridesResponse.struct_class = Types::ListEphemeridesResponse

    ListGroundStationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PaginationMaxResults, location: "querystring", location_name: "maxResults"))
    ListGroundStationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListGroundStationsRequest.add_member(:satellite_id, Shapes::ShapeRef.new(shape: Uuid, location: "querystring", location_name: "satelliteId"))
    ListGroundStationsRequest.struct_class = Types::ListGroundStationsRequest

    ListGroundStationsResponse.add_member(:ground_station_list, Shapes::ShapeRef.new(shape: GroundStationList, location_name: "groundStationList"))
    ListGroundStationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListGroundStationsResponse.struct_class = Types::ListGroundStationsResponse

    ListMissionProfilesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PaginationMaxResults, location: "querystring", location_name: "maxResults"))
    ListMissionProfilesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListMissionProfilesRequest.struct_class = Types::ListMissionProfilesRequest

    ListMissionProfilesResponse.add_member(:mission_profile_list, Shapes::ShapeRef.new(shape: MissionProfileList, location_name: "missionProfileList"))
    ListMissionProfilesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListMissionProfilesResponse.struct_class = Types::ListMissionProfilesResponse

    ListSatellitesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PaginationMaxResults, location: "querystring", location_name: "maxResults"))
    ListSatellitesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListSatellitesRequest.struct_class = Types::ListSatellitesRequest

    ListSatellitesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListSatellitesResponse.add_member(:satellites, Shapes::ShapeRef.new(shape: SatelliteList, location_name: "satellites"))
    ListSatellitesResponse.struct_class = Types::ListSatellitesResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AnyArn, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    MissionProfileIdResponse.add_member(:mission_profile_id, Shapes::ShapeRef.new(shape: Uuid, location_name: "missionProfileId"))
    MissionProfileIdResponse.struct_class = Types::MissionProfileIdResponse

    MissionProfileList.member = Shapes::ShapeRef.new(shape: MissionProfileListItem)

    MissionProfileListItem.add_member(:mission_profile_arn, Shapes::ShapeRef.new(shape: MissionProfileArn, location_name: "missionProfileArn"))
    MissionProfileListItem.add_member(:mission_profile_id, Shapes::ShapeRef.new(shape: Uuid, location_name: "missionProfileId"))
    MissionProfileListItem.add_member(:name, Shapes::ShapeRef.new(shape: SafeName, location_name: "name"))
    MissionProfileListItem.add_member(:region, Shapes::ShapeRef.new(shape: AWSRegion, location_name: "region"))
    MissionProfileListItem.struct_class = Types::MissionProfileListItem

    OEMEphemeris.add_member(:oem_data, Shapes::ShapeRef.new(shape: UnboundedString, location_name: "oemData"))
    OEMEphemeris.add_member(:s3_object, Shapes::ShapeRef.new(shape: S3Object, location_name: "s3Object"))
    OEMEphemeris.struct_class = Types::OEMEphemeris

    RangedConnectionDetails.add_member(:mtu, Shapes::ShapeRef.new(shape: RangedConnectionDetailsMtuInteger, location_name: "mtu"))
    RangedConnectionDetails.add_member(:socket_address, Shapes::ShapeRef.new(shape: RangedSocketAddress, required: true, location_name: "socketAddress"))
    RangedConnectionDetails.struct_class = Types::RangedConnectionDetails

    RangedSocketAddress.add_member(:name, Shapes::ShapeRef.new(shape: IpV4Address, required: true, location_name: "name"))
    RangedSocketAddress.add_member(:port_range, Shapes::ShapeRef.new(shape: IntegerRange, required: true, location_name: "portRange"))
    RangedSocketAddress.struct_class = Types::RangedSocketAddress

    RegisterAgentRequest.add_member(:agent_details, Shapes::ShapeRef.new(shape: AgentDetails, required: true, location_name: "agentDetails"))
    RegisterAgentRequest.add_member(:discovery_data, Shapes::ShapeRef.new(shape: DiscoveryData, required: true, location_name: "discoveryData"))
    RegisterAgentRequest.struct_class = Types::RegisterAgentRequest

    RegisterAgentResponse.add_member(:agent_id, Shapes::ShapeRef.new(shape: Uuid, location_name: "agentId"))
    RegisterAgentResponse.struct_class = Types::RegisterAgentResponse

    ReserveContactRequest.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "endTime"))
    ReserveContactRequest.add_member(:ground_station, Shapes::ShapeRef.new(shape: GroundStationName, required: true, location_name: "groundStation"))
    ReserveContactRequest.add_member(:mission_profile_arn, Shapes::ShapeRef.new(shape: MissionProfileArn, required: true, location_name: "missionProfileArn"))
    ReserveContactRequest.add_member(:satellite_arn, Shapes::ShapeRef.new(shape: satelliteArn, required: true, location_name: "satelliteArn"))
    ReserveContactRequest.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "startTime"))
    ReserveContactRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    ReserveContactRequest.struct_class = Types::ReserveContactRequest

    ResourceLimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ResourceLimitExceededException.add_member(:parameter_name, Shapes::ShapeRef.new(shape: String, location_name: "parameterName"))
    ResourceLimitExceededException.struct_class = Types::ResourceLimitExceededException

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    S3Object.add_member(:bucket, Shapes::ShapeRef.new(shape: S3BucketName, location_name: "bucket"))
    S3Object.add_member(:key, Shapes::ShapeRef.new(shape: S3ObjectKey, location_name: "key"))
    S3Object.add_member(:version, Shapes::ShapeRef.new(shape: S3VersionId, location_name: "version"))
    S3Object.struct_class = Types::S3Object

    S3RecordingConfig.add_member(:bucket_arn, Shapes::ShapeRef.new(shape: BucketArn, required: true, location_name: "bucketArn"))
    S3RecordingConfig.add_member(:prefix, Shapes::ShapeRef.new(shape: S3KeyPrefix, location_name: "prefix"))
    S3RecordingConfig.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    S3RecordingConfig.struct_class = Types::S3RecordingConfig

    S3RecordingDetails.add_member(:bucket_arn, Shapes::ShapeRef.new(shape: BucketArn, location_name: "bucketArn"))
    S3RecordingDetails.add_member(:key_template, Shapes::ShapeRef.new(shape: String, location_name: "keyTemplate"))
    S3RecordingDetails.struct_class = Types::S3RecordingDetails

    SatelliteList.member = Shapes::ShapeRef.new(shape: SatelliteListItem)

    SatelliteListItem.add_member(:current_ephemeris, Shapes::ShapeRef.new(shape: EphemerisMetaData, location_name: "currentEphemeris"))
    SatelliteListItem.add_member(:ground_stations, Shapes::ShapeRef.new(shape: GroundStationIdList, location_name: "groundStations"))
    SatelliteListItem.add_member(:norad_satellite_id, Shapes::ShapeRef.new(shape: noradSatelliteID, location_name: "noradSatelliteID"))
    SatelliteListItem.add_member(:satellite_arn, Shapes::ShapeRef.new(shape: satelliteArn, location_name: "satelliteArn"))
    SatelliteListItem.add_member(:satellite_id, Shapes::ShapeRef.new(shape: Uuid, location_name: "satelliteId"))
    SatelliteListItem.struct_class = Types::SatelliteListItem

    SecurityDetails.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    SecurityDetails.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIdList, required: true, location_name: "securityGroupIds"))
    SecurityDetails.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetList, required: true, location_name: "subnetIds"))
    SecurityDetails.struct_class = Types::SecurityDetails

    SecurityGroupIdList.member = Shapes::ShapeRef.new(shape: String)

    SignatureMap.key = Shapes::ShapeRef.new(shape: String)
    SignatureMap.value = Shapes::ShapeRef.new(shape: Boolean)

    SocketAddress.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    SocketAddress.add_member(:port, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "port"))
    SocketAddress.struct_class = Types::SocketAddress

    Source.add_member(:config_details, Shapes::ShapeRef.new(shape: ConfigDetails, location_name: "configDetails"))
    Source.add_member(:config_id, Shapes::ShapeRef.new(shape: String, location_name: "configId"))
    Source.add_member(:config_type, Shapes::ShapeRef.new(shape: ConfigCapabilityType, location_name: "configType"))
    Source.add_member(:dataflow_source_region, Shapes::ShapeRef.new(shape: String, location_name: "dataflowSourceRegion"))
    Source.struct_class = Types::Source

    SpectrumConfig.add_member(:bandwidth, Shapes::ShapeRef.new(shape: FrequencyBandwidth, required: true, location_name: "bandwidth"))
    SpectrumConfig.add_member(:center_frequency, Shapes::ShapeRef.new(shape: Frequency, required: true, location_name: "centerFrequency"))
    SpectrumConfig.add_member(:polarization, Shapes::ShapeRef.new(shape: Polarization, location_name: "polarization"))
    SpectrumConfig.struct_class = Types::SpectrumConfig

    StatusList.member = Shapes::ShapeRef.new(shape: ContactStatus)

    SubnetList.member = Shapes::ShapeRef.new(shape: String)

    TLEData.add_member(:tle_line_1, Shapes::ShapeRef.new(shape: TleLineOne, required: true, location_name: "tleLine1"))
    TLEData.add_member(:tle_line_2, Shapes::ShapeRef.new(shape: TleLineTwo, required: true, location_name: "tleLine2"))
    TLEData.add_member(:valid_time_range, Shapes::ShapeRef.new(shape: TimeRange, required: true, location_name: "validTimeRange"))
    TLEData.struct_class = Types::TLEData

    TLEDataList.member = Shapes::ShapeRef.new(shape: TLEData)

    TLEEphemeris.add_member(:s3_object, Shapes::ShapeRef.new(shape: S3Object, location_name: "s3Object"))
    TLEEphemeris.add_member(:tle_data, Shapes::ShapeRef.new(shape: TLEDataList, location_name: "tleData"))
    TLEEphemeris.struct_class = Types::TLEEphemeris

    TagKeys.member = Shapes::ShapeRef.new(shape: UnboundedString)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AnyArn, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    TagsMap.key = Shapes::ShapeRef.new(shape: String)
    TagsMap.value = Shapes::ShapeRef.new(shape: String)

    TimeRange.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "endTime"))
    TimeRange.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "startTime"))
    TimeRange.struct_class = Types::TimeRange

    TrackingConfig.add_member(:autotrack, Shapes::ShapeRef.new(shape: Criticality, required: true, location_name: "autotrack"))
    TrackingConfig.struct_class = Types::TrackingConfig

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AnyArn, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeys, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateAgentStatusRequest.add_member(:agent_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location: "uri", location_name: "agentId"))
    UpdateAgentStatusRequest.add_member(:aggregate_status, Shapes::ShapeRef.new(shape: AggregateStatus, required: true, location_name: "aggregateStatus"))
    UpdateAgentStatusRequest.add_member(:component_statuses, Shapes::ShapeRef.new(shape: ComponentStatusList, required: true, location_name: "componentStatuses"))
    UpdateAgentStatusRequest.add_member(:task_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "taskId"))
    UpdateAgentStatusRequest.struct_class = Types::UpdateAgentStatusRequest

    UpdateAgentStatusResponse.add_member(:agent_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "agentId"))
    UpdateAgentStatusResponse.struct_class = Types::UpdateAgentStatusResponse

    UpdateConfigRequest.add_member(:config_data, Shapes::ShapeRef.new(shape: ConfigTypeData, required: true, location_name: "configData"))
    UpdateConfigRequest.add_member(:config_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location: "uri", location_name: "configId"))
    UpdateConfigRequest.add_member(:config_type, Shapes::ShapeRef.new(shape: ConfigCapabilityType, required: true, location: "uri", location_name: "configType"))
    UpdateConfigRequest.add_member(:name, Shapes::ShapeRef.new(shape: SafeName, required: true, location_name: "name"))
    UpdateConfigRequest.struct_class = Types::UpdateConfigRequest

    UpdateEphemerisRequest.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "enabled"))
    UpdateEphemerisRequest.add_member(:ephemeris_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location: "uri", location_name: "ephemerisId"))
    UpdateEphemerisRequest.add_member(:name, Shapes::ShapeRef.new(shape: SafeName, location_name: "name"))
    UpdateEphemerisRequest.add_member(:priority, Shapes::ShapeRef.new(shape: EphemerisPriority, location_name: "priority"))
    UpdateEphemerisRequest.struct_class = Types::UpdateEphemerisRequest

    UpdateMissionProfileRequest.add_member(:contact_post_pass_duration_seconds, Shapes::ShapeRef.new(shape: DurationInSeconds, location_name: "contactPostPassDurationSeconds"))
    UpdateMissionProfileRequest.add_member(:contact_pre_pass_duration_seconds, Shapes::ShapeRef.new(shape: DurationInSeconds, location_name: "contactPrePassDurationSeconds"))
    UpdateMissionProfileRequest.add_member(:dataflow_edges, Shapes::ShapeRef.new(shape: DataflowEdgeList, location_name: "dataflowEdges"))
    UpdateMissionProfileRequest.add_member(:minimum_viable_contact_duration_seconds, Shapes::ShapeRef.new(shape: PositiveDurationInSeconds, location_name: "minimumViableContactDurationSeconds"))
    UpdateMissionProfileRequest.add_member(:mission_profile_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location: "uri", location_name: "missionProfileId"))
    UpdateMissionProfileRequest.add_member(:name, Shapes::ShapeRef.new(shape: SafeName, location_name: "name"))
    UpdateMissionProfileRequest.add_member(:streams_kms_key, Shapes::ShapeRef.new(shape: KmsKey, location_name: "streamsKmsKey"))
    UpdateMissionProfileRequest.add_member(:streams_kms_role, Shapes::ShapeRef.new(shape: RoleArn, location_name: "streamsKmsRole"))
    UpdateMissionProfileRequest.add_member(:tracking_config_arn, Shapes::ShapeRef.new(shape: ConfigArn, location_name: "trackingConfigArn"))
    UpdateMissionProfileRequest.struct_class = Types::UpdateMissionProfileRequest

    UplinkEchoConfig.add_member(:antenna_uplink_config_arn, Shapes::ShapeRef.new(shape: ConfigArn, required: true, location_name: "antennaUplinkConfigArn"))
    UplinkEchoConfig.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "enabled"))
    UplinkEchoConfig.struct_class = Types::UplinkEchoConfig

    UplinkSpectrumConfig.add_member(:center_frequency, Shapes::ShapeRef.new(shape: Frequency, required: true, location_name: "centerFrequency"))
    UplinkSpectrumConfig.add_member(:polarization, Shapes::ShapeRef.new(shape: Polarization, location_name: "polarization"))
    UplinkSpectrumConfig.struct_class = Types::UplinkSpectrumConfig

    VersionStringList.member = Shapes::ShapeRef.new(shape: VersionString)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2019-05-23"

      api.metadata = {
        "apiVersion" => "2019-05-23",
        "endpointPrefix" => "groundstation",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "AWS Ground Station",
        "serviceId" => "GroundStation",
        "signatureVersion" => "v4",
        "signingName" => "groundstation",
        "uid" => "groundstation-2019-05-23",
      }

      api.add_operation(:cancel_contact, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelContact"
        o.http_method = "DELETE"
        o.http_request_uri = "/contact/{contactId}"
        o.input = Shapes::ShapeRef.new(shape: CancelContactRequest)
        o.output = Shapes::ShapeRef.new(shape: ContactIdResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: DependencyException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:create_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateConfig"
        o.http_method = "POST"
        o.http_request_uri = "/config"
        o.input = Shapes::ShapeRef.new(shape: CreateConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: ConfigIdResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: DependencyException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:create_dataflow_endpoint_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDataflowEndpointGroup"
        o.http_method = "POST"
        o.http_request_uri = "/dataflowEndpointGroup"
        o.input = Shapes::ShapeRef.new(shape: CreateDataflowEndpointGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: DataflowEndpointGroupIdResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: DependencyException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:create_ephemeris, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateEphemeris"
        o.http_method = "POST"
        o.http_request_uri = "/ephemeris"
        o.input = Shapes::ShapeRef.new(shape: CreateEphemerisRequest)
        o.output = Shapes::ShapeRef.new(shape: EphemerisIdResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: DependencyException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:create_mission_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateMissionProfile"
        o.http_method = "POST"
        o.http_request_uri = "/missionprofile"
        o.input = Shapes::ShapeRef.new(shape: CreateMissionProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: MissionProfileIdResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: DependencyException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteConfig"
        o.http_method = "DELETE"
        o.http_request_uri = "/config/{configType}/{configId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: ConfigIdResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: DependencyException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_dataflow_endpoint_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDataflowEndpointGroup"
        o.http_method = "DELETE"
        o.http_request_uri = "/dataflowEndpointGroup/{dataflowEndpointGroupId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteDataflowEndpointGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: DataflowEndpointGroupIdResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: DependencyException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_ephemeris, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEphemeris"
        o.http_method = "DELETE"
        o.http_request_uri = "/ephemeris/{ephemerisId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteEphemerisRequest)
        o.output = Shapes::ShapeRef.new(shape: EphemerisIdResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: DependencyException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_mission_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteMissionProfile"
        o.http_method = "DELETE"
        o.http_request_uri = "/missionprofile/{missionProfileId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteMissionProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: MissionProfileIdResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: DependencyException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_contact, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeContact"
        o.http_method = "GET"
        o.http_request_uri = "/contact/{contactId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeContactRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeContactResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: DependencyException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_ephemeris, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEphemeris"
        o.http_method = "GET"
        o.http_request_uri = "/ephemeris/{ephemerisId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeEphemerisRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeEphemerisResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: DependencyException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_agent_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAgentConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/agent/{agentId}/configuration"
        o.input = Shapes::ShapeRef.new(shape: GetAgentConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAgentConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: DependencyException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetConfig"
        o.http_method = "GET"
        o.http_request_uri = "/config/{configType}/{configId}"
        o.input = Shapes::ShapeRef.new(shape: GetConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: GetConfigResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: DependencyException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_dataflow_endpoint_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDataflowEndpointGroup"
        o.http_method = "GET"
        o.http_request_uri = "/dataflowEndpointGroup/{dataflowEndpointGroupId}"
        o.input = Shapes::ShapeRef.new(shape: GetDataflowEndpointGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDataflowEndpointGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: DependencyException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_minute_usage, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMinuteUsage"
        o.http_method = "POST"
        o.http_request_uri = "/minute-usage"
        o.input = Shapes::ShapeRef.new(shape: GetMinuteUsageRequest)
        o.output = Shapes::ShapeRef.new(shape: GetMinuteUsageResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: DependencyException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_mission_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMissionProfile"
        o.http_method = "GET"
        o.http_request_uri = "/missionprofile/{missionProfileId}"
        o.input = Shapes::ShapeRef.new(shape: GetMissionProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: GetMissionProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: DependencyException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_satellite, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSatellite"
        o.http_method = "GET"
        o.http_request_uri = "/satellite/{satelliteId}"
        o.input = Shapes::ShapeRef.new(shape: GetSatelliteRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSatelliteResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: DependencyException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:list_configs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListConfigs"
        o.http_method = "GET"
        o.http_request_uri = "/config"
        o.input = Shapes::ShapeRef.new(shape: ListConfigsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListConfigsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: DependencyException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_contacts, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListContacts"
        o.http_method = "POST"
        o.http_request_uri = "/contacts"
        o.input = Shapes::ShapeRef.new(shape: ListContactsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListContactsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: DependencyException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_dataflow_endpoint_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDataflowEndpointGroups"
        o.http_method = "GET"
        o.http_request_uri = "/dataflowEndpointGroup"
        o.input = Shapes::ShapeRef.new(shape: ListDataflowEndpointGroupsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDataflowEndpointGroupsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: DependencyException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_ephemerides, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEphemerides"
        o.http_method = "POST"
        o.http_request_uri = "/ephemerides"
        o.input = Shapes::ShapeRef.new(shape: ListEphemeridesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEphemeridesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: DependencyException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_ground_stations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListGroundStations"
        o.http_method = "GET"
        o.http_request_uri = "/groundstation"
        o.input = Shapes::ShapeRef.new(shape: ListGroundStationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListGroundStationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: DependencyException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_mission_profiles, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListMissionProfiles"
        o.http_method = "GET"
        o.http_request_uri = "/missionprofile"
        o.input = Shapes::ShapeRef.new(shape: ListMissionProfilesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListMissionProfilesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: DependencyException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_satellites, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSatellites"
        o.http_method = "GET"
        o.http_request_uri = "/satellite"
        o.input = Shapes::ShapeRef.new(shape: ListSatellitesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSatellitesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: DependencyException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: DependencyException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:register_agent, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RegisterAgent"
        o.http_method = "POST"
        o.http_request_uri = "/agent"
        o.input = Shapes::ShapeRef.new(shape: RegisterAgentRequest)
        o.output = Shapes::ShapeRef.new(shape: RegisterAgentResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: DependencyException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:reserve_contact, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ReserveContact"
        o.http_method = "POST"
        o.http_request_uri = "/contact"
        o.input = Shapes::ShapeRef.new(shape: ReserveContactRequest)
        o.output = Shapes::ShapeRef.new(shape: ContactIdResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: DependencyException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: DependencyException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: DependencyException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_agent_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAgentStatus"
        o.http_method = "PUT"
        o.http_request_uri = "/agent/{agentId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateAgentStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAgentStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: DependencyException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateConfig"
        o.http_method = "PUT"
        o.http_request_uri = "/config/{configType}/{configId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: ConfigIdResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: DependencyException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_ephemeris, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateEphemeris"
        o.http_method = "PUT"
        o.http_request_uri = "/ephemeris/{ephemerisId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateEphemerisRequest)
        o.output = Shapes::ShapeRef.new(shape: EphemerisIdResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: DependencyException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_mission_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateMissionProfile"
        o.http_method = "PUT"
        o.http_request_uri = "/missionprofile/{missionProfileId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateMissionProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: MissionProfileIdResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: DependencyException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)
    end

  end
end
