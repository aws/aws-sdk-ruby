# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::GroundStation
  # @api private
  module ClientApi

    include Seahorse::Model

    AngleUnits = Shapes::StringShape.new(name: 'AngleUnits')
    AntennaDemodDecodeDetails = Shapes::StructureShape.new(name: 'AntennaDemodDecodeDetails')
    AntennaDownlinkConfig = Shapes::StructureShape.new(name: 'AntennaDownlinkConfig')
    AntennaDownlinkDemodDecodeConfig = Shapes::StructureShape.new(name: 'AntennaDownlinkDemodDecodeConfig')
    AntennaUplinkConfig = Shapes::StructureShape.new(name: 'AntennaUplinkConfig')
    BandwidthUnits = Shapes::StringShape.new(name: 'BandwidthUnits')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    CancelContactRequest = Shapes::StructureShape.new(name: 'CancelContactRequest')
    ConfigArn = Shapes::StringShape.new(name: 'ConfigArn')
    ConfigCapabilityType = Shapes::StringShape.new(name: 'ConfigCapabilityType')
    ConfigDetails = Shapes::StructureShape.new(name: 'ConfigDetails')
    ConfigIdResponse = Shapes::StructureShape.new(name: 'ConfigIdResponse')
    ConfigList = Shapes::ListShape.new(name: 'ConfigList')
    ConfigListItem = Shapes::StructureShape.new(name: 'ConfigListItem')
    ConfigTypeData = Shapes::StructureShape.new(name: 'ConfigTypeData')
    ContactData = Shapes::StructureShape.new(name: 'ContactData')
    ContactIdResponse = Shapes::StructureShape.new(name: 'ContactIdResponse')
    ContactList = Shapes::ListShape.new(name: 'ContactList')
    ContactStatus = Shapes::StringShape.new(name: 'ContactStatus')
    CreateConfigRequest = Shapes::StructureShape.new(name: 'CreateConfigRequest')
    CreateDataflowEndpointGroupRequest = Shapes::StructureShape.new(name: 'CreateDataflowEndpointGroupRequest')
    CreateMissionProfileRequest = Shapes::StructureShape.new(name: 'CreateMissionProfileRequest')
    Criticality = Shapes::StringShape.new(name: 'Criticality')
    DataflowDetail = Shapes::StructureShape.new(name: 'DataflowDetail')
    DataflowEdge = Shapes::ListShape.new(name: 'DataflowEdge')
    DataflowEdgeList = Shapes::ListShape.new(name: 'DataflowEdgeList')
    DataflowEndpoint = Shapes::StructureShape.new(name: 'DataflowEndpoint')
    DataflowEndpointConfig = Shapes::StructureShape.new(name: 'DataflowEndpointConfig')
    DataflowEndpointGroupArn = Shapes::StringShape.new(name: 'DataflowEndpointGroupArn')
    DataflowEndpointGroupIdResponse = Shapes::StructureShape.new(name: 'DataflowEndpointGroupIdResponse')
    DataflowEndpointGroupList = Shapes::ListShape.new(name: 'DataflowEndpointGroupList')
    DataflowEndpointListItem = Shapes::StructureShape.new(name: 'DataflowEndpointListItem')
    DataflowEndpointmtuInteger = Shapes::IntegerShape.new(name: 'DataflowEndpointmtuInteger')
    DataflowList = Shapes::ListShape.new(name: 'DataflowList')
    DecodeConfig = Shapes::StructureShape.new(name: 'DecodeConfig')
    DeleteConfigRequest = Shapes::StructureShape.new(name: 'DeleteConfigRequest')
    DeleteDataflowEndpointGroupRequest = Shapes::StructureShape.new(name: 'DeleteDataflowEndpointGroupRequest')
    DeleteMissionProfileRequest = Shapes::StructureShape.new(name: 'DeleteMissionProfileRequest')
    DemodulationConfig = Shapes::StructureShape.new(name: 'DemodulationConfig')
    DependencyException = Shapes::StructureShape.new(name: 'DependencyException')
    DescribeContactRequest = Shapes::StructureShape.new(name: 'DescribeContactRequest')
    DescribeContactResponse = Shapes::StructureShape.new(name: 'DescribeContactResponse')
    Destination = Shapes::StructureShape.new(name: 'Destination')
    Double = Shapes::FloatShape.new(name: 'Double')
    DurationInSeconds = Shapes::IntegerShape.new(name: 'DurationInSeconds')
    Eirp = Shapes::StructureShape.new(name: 'Eirp')
    EirpUnits = Shapes::StringShape.new(name: 'EirpUnits')
    Elevation = Shapes::StructureShape.new(name: 'Elevation')
    EndpointDetails = Shapes::StructureShape.new(name: 'EndpointDetails')
    EndpointDetailsList = Shapes::ListShape.new(name: 'EndpointDetailsList')
    EndpointStatus = Shapes::StringShape.new(name: 'EndpointStatus')
    Frequency = Shapes::StructureShape.new(name: 'Frequency')
    FrequencyBandwidth = Shapes::StructureShape.new(name: 'FrequencyBandwidth')
    FrequencyUnits = Shapes::StringShape.new(name: 'FrequencyUnits')
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
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InvalidParameterException = Shapes::StructureShape.new(name: 'InvalidParameterException')
    JsonString = Shapes::StringShape.new(name: 'JsonString')
    ListConfigsRequest = Shapes::StructureShape.new(name: 'ListConfigsRequest')
    ListConfigsResponse = Shapes::StructureShape.new(name: 'ListConfigsResponse')
    ListContactsRequest = Shapes::StructureShape.new(name: 'ListContactsRequest')
    ListContactsResponse = Shapes::StructureShape.new(name: 'ListContactsResponse')
    ListDataflowEndpointGroupsRequest = Shapes::StructureShape.new(name: 'ListDataflowEndpointGroupsRequest')
    ListDataflowEndpointGroupsResponse = Shapes::StructureShape.new(name: 'ListDataflowEndpointGroupsResponse')
    ListGroundStationsRequest = Shapes::StructureShape.new(name: 'ListGroundStationsRequest')
    ListGroundStationsResponse = Shapes::StructureShape.new(name: 'ListGroundStationsResponse')
    ListMissionProfilesRequest = Shapes::StructureShape.new(name: 'ListMissionProfilesRequest')
    ListMissionProfilesResponse = Shapes::StructureShape.new(name: 'ListMissionProfilesResponse')
    ListSatellitesRequest = Shapes::StructureShape.new(name: 'ListSatellitesRequest')
    ListSatellitesResponse = Shapes::StructureShape.new(name: 'ListSatellitesResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    MissionProfileArn = Shapes::StringShape.new(name: 'MissionProfileArn')
    MissionProfileIdResponse = Shapes::StructureShape.new(name: 'MissionProfileIdResponse')
    MissionProfileList = Shapes::ListShape.new(name: 'MissionProfileList')
    MissionProfileListItem = Shapes::StructureShape.new(name: 'MissionProfileListItem')
    Polarization = Shapes::StringShape.new(name: 'Polarization')
    ReserveContactRequest = Shapes::StructureShape.new(name: 'ReserveContactRequest')
    ResourceLimitExceededException = Shapes::StructureShape.new(name: 'ResourceLimitExceededException')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    SafeName = Shapes::StringShape.new(name: 'SafeName')
    SatelliteList = Shapes::ListShape.new(name: 'SatelliteList')
    SatelliteListItem = Shapes::StructureShape.new(name: 'SatelliteListItem')
    SecurityDetails = Shapes::StructureShape.new(name: 'SecurityDetails')
    SecurityGroupIdList = Shapes::ListShape.new(name: 'SecurityGroupIdList')
    SocketAddress = Shapes::StructureShape.new(name: 'SocketAddress')
    Source = Shapes::StructureShape.new(name: 'Source')
    SpectrumConfig = Shapes::StructureShape.new(name: 'SpectrumConfig')
    StatusList = Shapes::ListShape.new(name: 'StatusList')
    String = Shapes::StringShape.new(name: 'String')
    SubnetList = Shapes::ListShape.new(name: 'SubnetList')
    TagKeys = Shapes::ListShape.new(name: 'TagKeys')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagsMap = Shapes::MapShape.new(name: 'TagsMap')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TrackingConfig = Shapes::StructureShape.new(name: 'TrackingConfig')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateConfigRequest = Shapes::StructureShape.new(name: 'UpdateConfigRequest')
    UpdateMissionProfileRequest = Shapes::StructureShape.new(name: 'UpdateMissionProfileRequest')
    UplinkEchoConfig = Shapes::StructureShape.new(name: 'UplinkEchoConfig')
    UplinkSpectrumConfig = Shapes::StructureShape.new(name: 'UplinkSpectrumConfig')
    Uuid = Shapes::StringShape.new(name: 'Uuid')
    noradSatelliteID = Shapes::IntegerShape.new(name: 'noradSatelliteID')
    satelliteArn = Shapes::StringShape.new(name: 'satelliteArn')

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

    CancelContactRequest.add_member(:contact_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "contactId"))
    CancelContactRequest.struct_class = Types::CancelContactRequest

    ConfigDetails.add_member(:antenna_demod_decode_details, Shapes::ShapeRef.new(shape: AntennaDemodDecodeDetails, location_name: "antennaDemodDecodeDetails"))
    ConfigDetails.add_member(:endpoint_details, Shapes::ShapeRef.new(shape: EndpointDetails, location_name: "endpointDetails"))
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
    ConfigTypeData.add_member(:tracking_config, Shapes::ShapeRef.new(shape: TrackingConfig, location_name: "trackingConfig"))
    ConfigTypeData.add_member(:uplink_echo_config, Shapes::ShapeRef.new(shape: UplinkEchoConfig, location_name: "uplinkEchoConfig"))
    ConfigTypeData.struct_class = Types::ConfigTypeData

    ContactData.add_member(:contact_id, Shapes::ShapeRef.new(shape: String, location_name: "contactId"))
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

    ContactIdResponse.add_member(:contact_id, Shapes::ShapeRef.new(shape: String, location_name: "contactId"))
    ContactIdResponse.struct_class = Types::ContactIdResponse

    ContactList.member = Shapes::ShapeRef.new(shape: ContactData)

    CreateConfigRequest.add_member(:config_data, Shapes::ShapeRef.new(shape: ConfigTypeData, required: true, location_name: "configData"))
    CreateConfigRequest.add_member(:name, Shapes::ShapeRef.new(shape: SafeName, required: true, location_name: "name"))
    CreateConfigRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    CreateConfigRequest.struct_class = Types::CreateConfigRequest

    CreateDataflowEndpointGroupRequest.add_member(:endpoint_details, Shapes::ShapeRef.new(shape: EndpointDetailsList, required: true, location_name: "endpointDetails"))
    CreateDataflowEndpointGroupRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    CreateDataflowEndpointGroupRequest.struct_class = Types::CreateDataflowEndpointGroupRequest

    CreateMissionProfileRequest.add_member(:contact_post_pass_duration_seconds, Shapes::ShapeRef.new(shape: DurationInSeconds, location_name: "contactPostPassDurationSeconds"))
    CreateMissionProfileRequest.add_member(:contact_pre_pass_duration_seconds, Shapes::ShapeRef.new(shape: DurationInSeconds, location_name: "contactPrePassDurationSeconds"))
    CreateMissionProfileRequest.add_member(:dataflow_edges, Shapes::ShapeRef.new(shape: DataflowEdgeList, required: true, location_name: "dataflowEdges"))
    CreateMissionProfileRequest.add_member(:minimum_viable_contact_duration_seconds, Shapes::ShapeRef.new(shape: DurationInSeconds, required: true, location_name: "minimumViableContactDurationSeconds"))
    CreateMissionProfileRequest.add_member(:name, Shapes::ShapeRef.new(shape: SafeName, required: true, location_name: "name"))
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
    DataflowEndpoint.add_member(:mtu, Shapes::ShapeRef.new(shape: DataflowEndpointmtuInteger, location_name: "mtu"))
    DataflowEndpoint.add_member(:name, Shapes::ShapeRef.new(shape: SafeName, location_name: "name"))
    DataflowEndpoint.add_member(:status, Shapes::ShapeRef.new(shape: EndpointStatus, location_name: "status"))
    DataflowEndpoint.struct_class = Types::DataflowEndpoint

    DataflowEndpointConfig.add_member(:dataflow_endpoint_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "dataflowEndpointName"))
    DataflowEndpointConfig.add_member(:dataflow_endpoint_region, Shapes::ShapeRef.new(shape: String, location_name: "dataflowEndpointRegion"))
    DataflowEndpointConfig.struct_class = Types::DataflowEndpointConfig

    DataflowEndpointGroupIdResponse.add_member(:dataflow_endpoint_group_id, Shapes::ShapeRef.new(shape: String, location_name: "dataflowEndpointGroupId"))
    DataflowEndpointGroupIdResponse.struct_class = Types::DataflowEndpointGroupIdResponse

    DataflowEndpointGroupList.member = Shapes::ShapeRef.new(shape: DataflowEndpointListItem)

    DataflowEndpointListItem.add_member(:dataflow_endpoint_group_arn, Shapes::ShapeRef.new(shape: DataflowEndpointGroupArn, location_name: "dataflowEndpointGroupArn"))
    DataflowEndpointListItem.add_member(:dataflow_endpoint_group_id, Shapes::ShapeRef.new(shape: String, location_name: "dataflowEndpointGroupId"))
    DataflowEndpointListItem.struct_class = Types::DataflowEndpointListItem

    DataflowList.member = Shapes::ShapeRef.new(shape: DataflowDetail)

    DecodeConfig.add_member(:unvalidated_json, Shapes::ShapeRef.new(shape: JsonString, required: true, location_name: "unvalidatedJSON"))
    DecodeConfig.struct_class = Types::DecodeConfig

    DeleteConfigRequest.add_member(:config_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "configId"))
    DeleteConfigRequest.add_member(:config_type, Shapes::ShapeRef.new(shape: ConfigCapabilityType, required: true, location: "uri", location_name: "configType"))
    DeleteConfigRequest.struct_class = Types::DeleteConfigRequest

    DeleteDataflowEndpointGroupRequest.add_member(:dataflow_endpoint_group_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "dataflowEndpointGroupId"))
    DeleteDataflowEndpointGroupRequest.struct_class = Types::DeleteDataflowEndpointGroupRequest

    DeleteMissionProfileRequest.add_member(:mission_profile_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "missionProfileId"))
    DeleteMissionProfileRequest.struct_class = Types::DeleteMissionProfileRequest

    DemodulationConfig.add_member(:unvalidated_json, Shapes::ShapeRef.new(shape: JsonString, required: true, location_name: "unvalidatedJSON"))
    DemodulationConfig.struct_class = Types::DemodulationConfig

    DependencyException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    DependencyException.add_member(:parameter_name, Shapes::ShapeRef.new(shape: String, location_name: "parameterName"))
    DependencyException.struct_class = Types::DependencyException

    DescribeContactRequest.add_member(:contact_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "contactId"))
    DescribeContactRequest.struct_class = Types::DescribeContactRequest

    DescribeContactResponse.add_member(:contact_id, Shapes::ShapeRef.new(shape: String, location_name: "contactId"))
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

    Destination.add_member(:config_details, Shapes::ShapeRef.new(shape: ConfigDetails, location_name: "configDetails"))
    Destination.add_member(:config_id, Shapes::ShapeRef.new(shape: String, location_name: "configId"))
    Destination.add_member(:config_type, Shapes::ShapeRef.new(shape: ConfigCapabilityType, location_name: "configType"))
    Destination.add_member(:dataflow_destination_region, Shapes::ShapeRef.new(shape: String, location_name: "dataflowDestinationRegion"))
    Destination.struct_class = Types::Destination

    Eirp.add_member(:units, Shapes::ShapeRef.new(shape: EirpUnits, required: true, location_name: "units"))
    Eirp.add_member(:value, Shapes::ShapeRef.new(shape: Double, required: true, location_name: "value"))
    Eirp.struct_class = Types::Eirp

    Elevation.add_member(:unit, Shapes::ShapeRef.new(shape: AngleUnits, required: true, location_name: "unit"))
    Elevation.add_member(:value, Shapes::ShapeRef.new(shape: Double, required: true, location_name: "value"))
    Elevation.struct_class = Types::Elevation

    EndpointDetails.add_member(:endpoint, Shapes::ShapeRef.new(shape: DataflowEndpoint, location_name: "endpoint"))
    EndpointDetails.add_member(:security_details, Shapes::ShapeRef.new(shape: SecurityDetails, location_name: "securityDetails"))
    EndpointDetails.struct_class = Types::EndpointDetails

    EndpointDetailsList.member = Shapes::ShapeRef.new(shape: EndpointDetails)

    Frequency.add_member(:units, Shapes::ShapeRef.new(shape: FrequencyUnits, required: true, location_name: "units"))
    Frequency.add_member(:value, Shapes::ShapeRef.new(shape: Double, required: true, location_name: "value"))
    Frequency.struct_class = Types::Frequency

    FrequencyBandwidth.add_member(:units, Shapes::ShapeRef.new(shape: BandwidthUnits, required: true, location_name: "units"))
    FrequencyBandwidth.add_member(:value, Shapes::ShapeRef.new(shape: Double, required: true, location_name: "value"))
    FrequencyBandwidth.struct_class = Types::FrequencyBandwidth

    GetConfigRequest.add_member(:config_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "configId"))
    GetConfigRequest.add_member(:config_type, Shapes::ShapeRef.new(shape: ConfigCapabilityType, required: true, location: "uri", location_name: "configType"))
    GetConfigRequest.struct_class = Types::GetConfigRequest

    GetConfigResponse.add_member(:config_arn, Shapes::ShapeRef.new(shape: ConfigArn, required: true, location_name: "configArn"))
    GetConfigResponse.add_member(:config_data, Shapes::ShapeRef.new(shape: ConfigTypeData, required: true, location_name: "configData"))
    GetConfigResponse.add_member(:config_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "configId"))
    GetConfigResponse.add_member(:config_type, Shapes::ShapeRef.new(shape: ConfigCapabilityType, location_name: "configType"))
    GetConfigResponse.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    GetConfigResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    GetConfigResponse.struct_class = Types::GetConfigResponse

    GetDataflowEndpointGroupRequest.add_member(:dataflow_endpoint_group_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "dataflowEndpointGroupId"))
    GetDataflowEndpointGroupRequest.struct_class = Types::GetDataflowEndpointGroupRequest

    GetDataflowEndpointGroupResponse.add_member(:dataflow_endpoint_group_arn, Shapes::ShapeRef.new(shape: DataflowEndpointGroupArn, location_name: "dataflowEndpointGroupArn"))
    GetDataflowEndpointGroupResponse.add_member(:dataflow_endpoint_group_id, Shapes::ShapeRef.new(shape: String, location_name: "dataflowEndpointGroupId"))
    GetDataflowEndpointGroupResponse.add_member(:endpoints_details, Shapes::ShapeRef.new(shape: EndpointDetailsList, location_name: "endpointsDetails"))
    GetDataflowEndpointGroupResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    GetDataflowEndpointGroupResponse.struct_class = Types::GetDataflowEndpointGroupResponse

    GetMinuteUsageRequest.add_member(:month, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "month"))
    GetMinuteUsageRequest.add_member(:year, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "year"))
    GetMinuteUsageRequest.struct_class = Types::GetMinuteUsageRequest

    GetMinuteUsageResponse.add_member(:estimated_minutes_remaining, Shapes::ShapeRef.new(shape: Integer, location_name: "estimatedMinutesRemaining"))
    GetMinuteUsageResponse.add_member(:is_reserved_minutes_customer, Shapes::ShapeRef.new(shape: Boolean, location_name: "isReservedMinutesCustomer"))
    GetMinuteUsageResponse.add_member(:total_reserved_minute_allocation, Shapes::ShapeRef.new(shape: Integer, location_name: "totalReservedMinuteAllocation"))
    GetMinuteUsageResponse.add_member(:total_scheduled_minutes, Shapes::ShapeRef.new(shape: Integer, location_name: "totalScheduledMinutes"))
    GetMinuteUsageResponse.add_member(:upcoming_minutes_scheduled, Shapes::ShapeRef.new(shape: Integer, location_name: "upcomingMinutesScheduled"))
    GetMinuteUsageResponse.struct_class = Types::GetMinuteUsageResponse

    GetMissionProfileRequest.add_member(:mission_profile_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "missionProfileId"))
    GetMissionProfileRequest.struct_class = Types::GetMissionProfileRequest

    GetMissionProfileResponse.add_member(:contact_post_pass_duration_seconds, Shapes::ShapeRef.new(shape: DurationInSeconds, location_name: "contactPostPassDurationSeconds"))
    GetMissionProfileResponse.add_member(:contact_pre_pass_duration_seconds, Shapes::ShapeRef.new(shape: DurationInSeconds, location_name: "contactPrePassDurationSeconds"))
    GetMissionProfileResponse.add_member(:dataflow_edges, Shapes::ShapeRef.new(shape: DataflowEdgeList, location_name: "dataflowEdges"))
    GetMissionProfileResponse.add_member(:minimum_viable_contact_duration_seconds, Shapes::ShapeRef.new(shape: DurationInSeconds, location_name: "minimumViableContactDurationSeconds"))
    GetMissionProfileResponse.add_member(:mission_profile_arn, Shapes::ShapeRef.new(shape: MissionProfileArn, location_name: "missionProfileArn"))
    GetMissionProfileResponse.add_member(:mission_profile_id, Shapes::ShapeRef.new(shape: String, location_name: "missionProfileId"))
    GetMissionProfileResponse.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    GetMissionProfileResponse.add_member(:region, Shapes::ShapeRef.new(shape: String, location_name: "region"))
    GetMissionProfileResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    GetMissionProfileResponse.add_member(:tracking_config_arn, Shapes::ShapeRef.new(shape: ConfigArn, location_name: "trackingConfigArn"))
    GetMissionProfileResponse.struct_class = Types::GetMissionProfileResponse

    GetSatelliteRequest.add_member(:satellite_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "satelliteId"))
    GetSatelliteRequest.struct_class = Types::GetSatelliteRequest

    GetSatelliteResponse.add_member(:ground_stations, Shapes::ShapeRef.new(shape: GroundStationIdList, location_name: "groundStations"))
    GetSatelliteResponse.add_member(:norad_satellite_id, Shapes::ShapeRef.new(shape: noradSatelliteID, location_name: "noradSatelliteID"))
    GetSatelliteResponse.add_member(:satellite_arn, Shapes::ShapeRef.new(shape: satelliteArn, location_name: "satelliteArn"))
    GetSatelliteResponse.add_member(:satellite_id, Shapes::ShapeRef.new(shape: Uuid, location_name: "satelliteId"))
    GetSatelliteResponse.struct_class = Types::GetSatelliteResponse

    GroundStationData.add_member(:ground_station_id, Shapes::ShapeRef.new(shape: String, location_name: "groundStationId"))
    GroundStationData.add_member(:ground_station_name, Shapes::ShapeRef.new(shape: String, location_name: "groundStationName"))
    GroundStationData.add_member(:region, Shapes::ShapeRef.new(shape: String, location_name: "region"))
    GroundStationData.struct_class = Types::GroundStationData

    GroundStationIdList.member = Shapes::ShapeRef.new(shape: String)

    GroundStationList.member = Shapes::ShapeRef.new(shape: GroundStationData)

    InvalidParameterException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InvalidParameterException.add_member(:parameter_name, Shapes::ShapeRef.new(shape: String, location_name: "parameterName"))
    InvalidParameterException.struct_class = Types::InvalidParameterException

    ListConfigsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: Integer, location: "querystring", location_name: "maxResults"))
    ListConfigsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListConfigsRequest.struct_class = Types::ListConfigsRequest

    ListConfigsResponse.add_member(:config_list, Shapes::ShapeRef.new(shape: ConfigList, location_name: "configList"))
    ListConfigsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListConfigsResponse.struct_class = Types::ListConfigsResponse

    ListContactsRequest.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "endTime"))
    ListContactsRequest.add_member(:ground_station, Shapes::ShapeRef.new(shape: String, location_name: "groundStation"))
    ListContactsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: Integer, location_name: "maxResults"))
    ListContactsRequest.add_member(:mission_profile_arn, Shapes::ShapeRef.new(shape: MissionProfileArn, location_name: "missionProfileArn"))
    ListContactsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListContactsRequest.add_member(:satellite_arn, Shapes::ShapeRef.new(shape: satelliteArn, location_name: "satelliteArn"))
    ListContactsRequest.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "startTime"))
    ListContactsRequest.add_member(:status_list, Shapes::ShapeRef.new(shape: StatusList, required: true, location_name: "statusList"))
    ListContactsRequest.struct_class = Types::ListContactsRequest

    ListContactsResponse.add_member(:contact_list, Shapes::ShapeRef.new(shape: ContactList, location_name: "contactList"))
    ListContactsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListContactsResponse.struct_class = Types::ListContactsResponse

    ListDataflowEndpointGroupsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: Integer, location: "querystring", location_name: "maxResults"))
    ListDataflowEndpointGroupsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListDataflowEndpointGroupsRequest.struct_class = Types::ListDataflowEndpointGroupsRequest

    ListDataflowEndpointGroupsResponse.add_member(:dataflow_endpoint_group_list, Shapes::ShapeRef.new(shape: DataflowEndpointGroupList, location_name: "dataflowEndpointGroupList"))
    ListDataflowEndpointGroupsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListDataflowEndpointGroupsResponse.struct_class = Types::ListDataflowEndpointGroupsResponse

    ListGroundStationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: Integer, location: "querystring", location_name: "maxResults"))
    ListGroundStationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListGroundStationsRequest.add_member(:satellite_id, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "satelliteId"))
    ListGroundStationsRequest.struct_class = Types::ListGroundStationsRequest

    ListGroundStationsResponse.add_member(:ground_station_list, Shapes::ShapeRef.new(shape: GroundStationList, location_name: "groundStationList"))
    ListGroundStationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListGroundStationsResponse.struct_class = Types::ListGroundStationsResponse

    ListMissionProfilesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: Integer, location: "querystring", location_name: "maxResults"))
    ListMissionProfilesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListMissionProfilesRequest.struct_class = Types::ListMissionProfilesRequest

    ListMissionProfilesResponse.add_member(:mission_profile_list, Shapes::ShapeRef.new(shape: MissionProfileList, location_name: "missionProfileList"))
    ListMissionProfilesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListMissionProfilesResponse.struct_class = Types::ListMissionProfilesResponse

    ListSatellitesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: Integer, location: "querystring", location_name: "maxResults"))
    ListSatellitesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListSatellitesRequest.struct_class = Types::ListSatellitesRequest

    ListSatellitesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListSatellitesResponse.add_member(:satellites, Shapes::ShapeRef.new(shape: SatelliteList, location_name: "satellites"))
    ListSatellitesResponse.struct_class = Types::ListSatellitesResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    MissionProfileIdResponse.add_member(:mission_profile_id, Shapes::ShapeRef.new(shape: String, location_name: "missionProfileId"))
    MissionProfileIdResponse.struct_class = Types::MissionProfileIdResponse

    MissionProfileList.member = Shapes::ShapeRef.new(shape: MissionProfileListItem)

    MissionProfileListItem.add_member(:mission_profile_arn, Shapes::ShapeRef.new(shape: MissionProfileArn, location_name: "missionProfileArn"))
    MissionProfileListItem.add_member(:mission_profile_id, Shapes::ShapeRef.new(shape: String, location_name: "missionProfileId"))
    MissionProfileListItem.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    MissionProfileListItem.add_member(:region, Shapes::ShapeRef.new(shape: String, location_name: "region"))
    MissionProfileListItem.struct_class = Types::MissionProfileListItem

    ReserveContactRequest.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "endTime"))
    ReserveContactRequest.add_member(:ground_station, Shapes::ShapeRef.new(shape: String, required: true, location_name: "groundStation"))
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

    SatelliteList.member = Shapes::ShapeRef.new(shape: SatelliteListItem)

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

    TagKeys.member = Shapes::ShapeRef.new(shape: String)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    TagsMap.key = Shapes::ShapeRef.new(shape: String)
    TagsMap.value = Shapes::ShapeRef.new(shape: String)

    TrackingConfig.add_member(:autotrack, Shapes::ShapeRef.new(shape: Criticality, required: true, location_name: "autotrack"))
    TrackingConfig.struct_class = Types::TrackingConfig

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeys, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateConfigRequest.add_member(:config_data, Shapes::ShapeRef.new(shape: ConfigTypeData, required: true, location_name: "configData"))
    UpdateConfigRequest.add_member(:config_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "configId"))
    UpdateConfigRequest.add_member(:config_type, Shapes::ShapeRef.new(shape: ConfigCapabilityType, required: true, location: "uri", location_name: "configType"))
    UpdateConfigRequest.add_member(:name, Shapes::ShapeRef.new(shape: SafeName, required: true, location_name: "name"))
    UpdateConfigRequest.struct_class = Types::UpdateConfigRequest

    UpdateMissionProfileRequest.add_member(:contact_post_pass_duration_seconds, Shapes::ShapeRef.new(shape: DurationInSeconds, location_name: "contactPostPassDurationSeconds"))
    UpdateMissionProfileRequest.add_member(:contact_pre_pass_duration_seconds, Shapes::ShapeRef.new(shape: DurationInSeconds, location_name: "contactPrePassDurationSeconds"))
    UpdateMissionProfileRequest.add_member(:dataflow_edges, Shapes::ShapeRef.new(shape: DataflowEdgeList, location_name: "dataflowEdges"))
    UpdateMissionProfileRequest.add_member(:minimum_viable_contact_duration_seconds, Shapes::ShapeRef.new(shape: DurationInSeconds, location_name: "minimumViableContactDurationSeconds"))
    UpdateMissionProfileRequest.add_member(:mission_profile_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "missionProfileId"))
    UpdateMissionProfileRequest.add_member(:name, Shapes::ShapeRef.new(shape: SafeName, location_name: "name"))
    UpdateMissionProfileRequest.add_member(:tracking_config_arn, Shapes::ShapeRef.new(shape: ConfigArn, location_name: "trackingConfigArn"))
    UpdateMissionProfileRequest.struct_class = Types::UpdateMissionProfileRequest

    UplinkEchoConfig.add_member(:antenna_uplink_config_arn, Shapes::ShapeRef.new(shape: ConfigArn, required: true, location_name: "antennaUplinkConfigArn"))
    UplinkEchoConfig.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "enabled"))
    UplinkEchoConfig.struct_class = Types::UplinkEchoConfig

    UplinkSpectrumConfig.add_member(:center_frequency, Shapes::ShapeRef.new(shape: Frequency, required: true, location_name: "centerFrequency"))
    UplinkSpectrumConfig.add_member(:polarization, Shapes::ShapeRef.new(shape: Polarization, location_name: "polarization"))
    UplinkSpectrumConfig.struct_class = Types::UplinkSpectrumConfig


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
