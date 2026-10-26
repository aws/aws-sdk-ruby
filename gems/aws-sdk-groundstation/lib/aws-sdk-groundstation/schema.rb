# frozen_string_literal: true

# This is generated code!

module Aws::GroundStation
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AWSRegion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.groundstation#AWSRegion", name: "AWSRegion", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\w-]+$"})
    AgentCpuCoresList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.groundstation#AgentCpuCoresList", name: "AgentCpuCoresList", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    AgentDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#AgentDetails", name: "AgentDetails")
    AgentStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.groundstation#AgentStatus", name: "AgentStatus")
    AggregateStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#AggregateStatus", name: "AggregateStatus")
    AngleUnits = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.groundstation#AngleUnits", name: "AngleUnits")
    AntennaDemodDecodeDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#AntennaDemodDecodeDetails", name: "AntennaDemodDecodeDetails")
    AntennaDownlinkConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#AntennaDownlinkConfig", name: "AntennaDownlinkConfig")
    AntennaDownlinkDemodDecodeConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#AntennaDownlinkDemodDecodeConfig", name: "AntennaDownlinkDemodDecodeConfig")
    AntennaList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.groundstation#AntennaList", name: "AntennaList", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    AntennaListItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#AntennaListItem", name: "AntennaListItem")
    AntennaName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.groundstation#AntennaName", name: "AntennaName", traits: {"smithy.api#length" => {"min" => 4, "max" => 256}, "smithy.api#pattern" => "^[ a-zA-Z0-9-._:=]{4,256}$"})
    AntennaUplinkConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#AntennaUplinkConfig", name: "AntennaUplinkConfig")
    AnyArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.groundstation#AnyArn", name: "AnyArn", traits: {"smithy.api#length" => {"min" => 5, "max" => 1024}, "smithy.api#pattern" => "^(arn:aws:)[\\s\\S]{0,1024}$"})
    AuditResults = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.groundstation#AuditResults", name: "AuditResults")
    AwsGroundStationAgentEndpoint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#AwsGroundStationAgentEndpoint", name: "AwsGroundStationAgentEndpoint")
    AzElEphemeris = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#AzElEphemeris", name: "AzElEphemeris")
    AzElEphemerisFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#AzElEphemerisFilter", name: "AzElEphemerisFilter", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.groundstation#Ephemeris", "ids" => {"ephemerisId" => "id"}}]})
    AzElProgramTrackSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#AzElProgramTrackSettings", name: "AzElProgramTrackSettings", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.groundstation#Ephemeris"}]})
    AzElSegment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#AzElSegment", name: "AzElSegment")
    AzElSegmentList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.groundstation#AzElSegmentList", name: "AzElSegmentList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    AzElSegments = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#AzElSegments", name: "AzElSegments")
    AzElSegmentsData = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.groundstation#AzElSegmentsData", name: "AzElSegmentsData")
    BandwidthUnits = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.groundstation#BandwidthUnits", name: "BandwidthUnits")
    BucketArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.groundstation#BucketArn", name: "BucketArn", traits: {"aws.api#arnReference" => {"type" => "AWS::S3::Bucket"}})
    CancelContactOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#CancelContactOutput", name: "CancelContactOutput")
    CancelContactRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#CancelContactRequest", name: "CancelContactRequest")
    CapabilityArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.groundstation#CapabilityArn", name: "CapabilityArn", traits: {"aws.api#arnReference" => {"type" => "AWS::GroundStationProvider::Capability", "service" => "com.amazon.awsgsaascontrolplanelambda.provider.r20190311#GroundStationProvider", "resource" => "com.amazon.awsgsaascontrolplanelambda.provider.r20190311#Capability"}})
    CapabilityArnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.groundstation#CapabilityArnList", name: "CapabilityArnList", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    CapabilityHealth = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.groundstation#CapabilityHealth", name: "CapabilityHealth")
    CapabilityHealthReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.groundstation#CapabilityHealthReason", name: "CapabilityHealthReason")
    CapabilityHealthReasonList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.groundstation#CapabilityHealthReasonList", name: "CapabilityHealthReasonList", traits: {"smithy.api#length" => {"min" => 0, "max" => 500}})
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.groundstation#ClientToken", name: "ClientToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[!-~]{1,64}$"})
    ComponentStatusData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#ComponentStatusData", name: "ComponentStatusData")
    ComponentStatusList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.groundstation#ComponentStatusList", name: "ComponentStatusList", traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    ComponentTypeString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.groundstation#ComponentTypeString", name: "ComponentTypeString", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9_]{1,64}$"})
    ComponentVersion = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#ComponentVersion", name: "ComponentVersion")
    ComponentVersionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.groundstation#ComponentVersionList", name: "ComponentVersionList", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    ConfigArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.groundstation#ConfigArn", name: "ConfigArn", traits: {"aws.api#arnReference" => {"type" => "AWS::GroundStation::Config", "service" => "GroundStation", "resource" => "Config"}, "smithy.api#length" => {"min" => 82, "max" => 424}, "smithy.api#pattern" => "^arn:aws:groundstation:[-a-z0-9]{1,50}:[0-9]{12}:config/[a-z0-9]+(-[a-z0-9]+){0,4}/[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}(/.{1,256})?$"})
    ConfigCapabilityType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.groundstation#ConfigCapabilityType", name: "ConfigCapabilityType")
    ConfigDetails = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.groundstation#ConfigDetails", name: "ConfigDetails")
    ConfigList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.groundstation#ConfigList", name: "ConfigList")
    ConfigListItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#ConfigListItem", name: "ConfigListItem")
    ConfigTypeData = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.groundstation#ConfigTypeData", name: "ConfigTypeData")
    ConnectionDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#ConnectionDetails", name: "ConnectionDetails")
    ContactData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#ContactData", name: "ContactData", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.groundstation#Contact"}]})
    ContactList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.groundstation#ContactList", name: "ContactList")
    ContactReservationDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#ContactReservationDetails", name: "ContactReservationDetails", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.groundstation#Contact"}]})
    ContactStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.groundstation#ContactStatus", name: "ContactStatus")
    ContactVersion = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#ContactVersion", name: "ContactVersion")
    ContactVersionsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.groundstation#ContactVersionsList", name: "ContactVersionsList")
    CreateConfigOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#CreateConfigOutput", name: "CreateConfigOutput")
    CreateConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#CreateConfigRequest", name: "CreateConfigRequest")
    CreateDataflowEndpointGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#CreateDataflowEndpointGroupOutput", name: "CreateDataflowEndpointGroupOutput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.groundstation#DataflowEndpointGroup"}]})
    CreateDataflowEndpointGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#CreateDataflowEndpointGroupRequest", name: "CreateDataflowEndpointGroupRequest")
    CreateDataflowEndpointGroupV2Request = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#CreateDataflowEndpointGroupV2Request", name: "CreateDataflowEndpointGroupV2Request")
    CreateDataflowEndpointGroupV2Response = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#CreateDataflowEndpointGroupV2Response", name: "CreateDataflowEndpointGroupV2Response", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.groundstation#DataflowEndpointGroupV2"}]})
    CreateEndpointDetails = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.groundstation#CreateEndpointDetails", name: "CreateEndpointDetails")
    CreateEndpointDetailsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.groundstation#CreateEndpointDetailsList", name: "CreateEndpointDetailsList", traits: {"smithy.api#length" => {"min" => 1, "max" => 12}})
    CreateEphemerisOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#CreateEphemerisOutput", name: "CreateEphemerisOutput")
    CreateEphemerisRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#CreateEphemerisRequest", name: "CreateEphemerisRequest")
    CreateMissionProfileOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#CreateMissionProfileOutput", name: "CreateMissionProfileOutput")
    CreateMissionProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#CreateMissionProfileRequest", name: "CreateMissionProfileRequest")
    Criticality = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.groundstation#Criticality", name: "Criticality")
    CustomerEphemerisPriority = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.groundstation#CustomerEphemerisPriority", name: "CustomerEphemerisPriority", traits: {"smithy.api#range" => {"min" => 1, "max" => 99999}})
    DataflowDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#DataflowDetail", name: "DataflowDetail")
    DataflowEdge = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.groundstation#DataflowEdge", name: "DataflowEdge", traits: {"smithy.api#length" => {"min" => 2, "max" => 2}})
    DataflowEdgeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.groundstation#DataflowEdgeList", name: "DataflowEdgeList", traits: {"smithy.api#length" => {"min" => 0, "max" => 500}})
    DataflowEndpoint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#DataflowEndpoint", name: "DataflowEndpoint")
    DataflowEndpointConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#DataflowEndpointConfig", name: "DataflowEndpointConfig")
    DataflowEndpointGroupArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.groundstation#DataflowEndpointGroupArn", name: "DataflowEndpointGroupArn", traits: {"aws.api#arnReference" => {"type" => "AWS::GroundStation::DataflowEndpointGroup", "service" => "GroundStation", "resource" => "DataflowEndpointGroup"}, "smithy.api#length" => {"min" => 97, "max" => 146}, "smithy.api#pattern" => "^arn:aws:groundstation:[-a-z0-9]{1,50}:[0-9]{12}:dataflow-endpoint-group/[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$"})
    DataflowEndpointGroupDurationInSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.groundstation#DataflowEndpointGroupDurationInSeconds", name: "DataflowEndpointGroupDurationInSeconds", traits: {"smithy.api#range" => {"min" => 30, "max" => 480}})
    DataflowEndpointGroupList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.groundstation#DataflowEndpointGroupList", name: "DataflowEndpointGroupList")
    DataflowEndpointListItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#DataflowEndpointListItem", name: "DataflowEndpointListItem", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.groundstation#DataflowEndpointGroup"}]})
    DataflowList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.groundstation#DataflowList", name: "DataflowList")
    DecodeConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#DecodeConfig", name: "DecodeConfig")
    DeleteConfigOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#DeleteConfigOutput", name: "DeleteConfigOutput")
    DeleteConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#DeleteConfigRequest", name: "DeleteConfigRequest")
    DeleteDataflowEndpointGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#DeleteDataflowEndpointGroupOutput", name: "DeleteDataflowEndpointGroupOutput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.groundstation#DataflowEndpointGroup"}]})
    DeleteDataflowEndpointGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#DeleteDataflowEndpointGroupRequest", name: "DeleteDataflowEndpointGroupRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.groundstation#DataflowEndpointGroup"}]})
    DeleteEphemerisOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#DeleteEphemerisOutput", name: "DeleteEphemerisOutput")
    DeleteEphemerisRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#DeleteEphemerisRequest", name: "DeleteEphemerisRequest")
    DeleteMissionProfileOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#DeleteMissionProfileOutput", name: "DeleteMissionProfileOutput")
    DeleteMissionProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#DeleteMissionProfileRequest", name: "DeleteMissionProfileRequest")
    DemodulationConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#DemodulationConfig", name: "DemodulationConfig")
    DependencyException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#DependencyException", name: "DependencyException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 531})
    DescribeContactRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#DescribeContactRequest", name: "DescribeContactRequest")
    DescribeContactResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#DescribeContactResponse", name: "DescribeContactResponse", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.groundstation#Contact"}]})
    DescribeContactVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#DescribeContactVersionRequest", name: "DescribeContactVersionRequest")
    DescribeContactVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#DescribeContactVersionResponse", name: "DescribeContactVersionResponse", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.groundstation#Contact"}]})
    DescribeEphemerisRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#DescribeEphemerisRequest", name: "DescribeEphemerisRequest")
    DescribeEphemerisResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#DescribeEphemerisResponse", name: "DescribeEphemerisResponse", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.groundstation#Ephemeris"}]})
    Destination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#Destination", name: "Destination")
    DiscoveryData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#DiscoveryData", name: "DiscoveryData")
    DownlinkAwsGroundStationAgentEndpoint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#DownlinkAwsGroundStationAgentEndpoint", name: "DownlinkAwsGroundStationAgentEndpoint")
    DownlinkAwsGroundStationAgentEndpointDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#DownlinkAwsGroundStationAgentEndpointDetails", name: "DownlinkAwsGroundStationAgentEndpointDetails")
    DownlinkConnectionDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#DownlinkConnectionDetails", name: "DownlinkConnectionDetails")
    DownlinkDataflowDetails = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.groundstation#DownlinkDataflowDetails", name: "DownlinkDataflowDetails")
    DurationInSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.groundstation#DurationInSeconds", name: "DurationInSeconds", traits: {"smithy.api#range" => {"min" => 0, "max" => 21600}})
    Eirp = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#Eirp", name: "Eirp")
    EirpUnits = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.groundstation#EirpUnits", name: "EirpUnits")
    Elevation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#Elevation", name: "Elevation")
    EndpointDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#EndpointDetails", name: "EndpointDetails")
    EndpointDetailsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.groundstation#EndpointDetailsList", name: "EndpointDetailsList", traits: {"smithy.api#length" => {"min" => 0, "max" => 500}})
    EndpointStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.groundstation#EndpointStatus", name: "EndpointStatus")
    EphemeridesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.groundstation#EphemeridesList", name: "EphemeridesList", traits: {"smithy.api#length" => {"min" => 1, "max" => 500}})
    EphemerisData = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.groundstation#EphemerisData", name: "EphemerisData")
    EphemerisDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#EphemerisDescription", name: "EphemerisDescription")
    EphemerisErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.groundstation#EphemerisErrorCode", name: "EphemerisErrorCode")
    EphemerisErrorReason = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#EphemerisErrorReason", name: "EphemerisErrorReason")
    EphemerisErrorReasonList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.groundstation#EphemerisErrorReasonList", name: "EphemerisErrorReasonList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    EphemerisFilter = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.groundstation#EphemerisFilter", name: "EphemerisFilter")
    EphemerisInvalidReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.groundstation#EphemerisInvalidReason", name: "EphemerisInvalidReason")
    EphemerisItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#EphemerisItem", name: "EphemerisItem")
    EphemerisMetaData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#EphemerisMetaData", name: "EphemerisMetaData")
    EphemerisPriority = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.groundstation#EphemerisPriority", name: "EphemerisPriority", traits: {"smithy.api#range" => {"min" => 0, "max" => 99999}})
    EphemerisResponseData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#EphemerisResponseData", name: "EphemerisResponseData", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.groundstation#Ephemeris"}]})
    EphemerisSource = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.groundstation#EphemerisSource", name: "EphemerisSource")
    EphemerisStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.groundstation#EphemerisStatus", name: "EphemerisStatus")
    EphemerisStatusList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.groundstation#EphemerisStatusList", name: "EphemerisStatusList", traits: {"smithy.api#length" => {"min" => 0, "max" => 500}})
    EphemerisType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.groundstation#EphemerisType", name: "EphemerisType")
    EphemerisTypeDescription = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.groundstation#EphemerisTypeDescription", name: "EphemerisTypeDescription")
    ErrorString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.groundstation#ErrorString", name: "ErrorString", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    Frequency = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#Frequency", name: "Frequency")
    FrequencyBandwidth = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#FrequencyBandwidth", name: "FrequencyBandwidth")
    FrequencyUnits = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.groundstation#FrequencyUnits", name: "FrequencyUnits")
    GetAgentConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#GetAgentConfigurationRequest", name: "GetAgentConfigurationRequest")
    GetAgentConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#GetAgentConfigurationResponse", name: "GetAgentConfigurationResponse")
    GetAgentTaskResponseUrlRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#GetAgentTaskResponseUrlRequest", name: "GetAgentTaskResponseUrlRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.groundstation#Agent"}]})
    GetAgentTaskResponseUrlResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#GetAgentTaskResponseUrlResponse", name: "GetAgentTaskResponseUrlResponse", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.groundstation#Agent"}]})
    GetConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#GetConfigRequest", name: "GetConfigRequest")
    GetConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#GetConfigResponse", name: "GetConfigResponse")
    GetDataflowEndpointGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#GetDataflowEndpointGroupRequest", name: "GetDataflowEndpointGroupRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.groundstation#DataflowEndpointGroup"}]})
    GetDataflowEndpointGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#GetDataflowEndpointGroupResponse", name: "GetDataflowEndpointGroupResponse", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.groundstation#DataflowEndpointGroup"}]})
    GetMinuteUsageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#GetMinuteUsageRequest", name: "GetMinuteUsageRequest")
    GetMinuteUsageResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#GetMinuteUsageResponse", name: "GetMinuteUsageResponse")
    GetMissionProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#GetMissionProfileRequest", name: "GetMissionProfileRequest")
    GetMissionProfileResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#GetMissionProfileResponse", name: "GetMissionProfileResponse", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.groundstation#MissionProfile"}]})
    GetSatelliteOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#GetSatelliteOutput", name: "GetSatelliteOutput", traits: {"smithy.api#references" => [{"resource" => "com.amazon.awsgsaascontrolplanelambda.r20190311#Satellite"}]})
    GetSatelliteRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#GetSatelliteRequest", name: "GetSatelliteRequest")
    GroundStationData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#GroundStationData", name: "GroundStationData")
    GroundStationIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.groundstation#GroundStationIdList", name: "GroundStationIdList", traits: {"smithy.api#length" => {"min" => 0, "max" => 500}})
    GroundStationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.groundstation#GroundStationList", name: "GroundStationList")
    GroundStationName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.groundstation#GroundStationName", name: "GroundStationName", traits: {"smithy.api#length" => {"min" => 4, "max" => 97}, "smithy.api#pattern" => "^[ a-zA-Z0-9-._:=]{4,97}$"})
    GroundStationReservationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.groundstation#GroundStationReservationList", name: "GroundStationReservationList", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    GroundStationReservationListItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#GroundStationReservationListItem", name: "GroundStationReservationListItem")
    ISO8601TimeRange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#ISO8601TimeRange", name: "ISO8601TimeRange")
    InstanceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.groundstation#InstanceId", name: "InstanceId", traits: {"smithy.api#length" => {"min" => 10, "max" => 64}, "smithy.api#pattern" => "^[a-z0-9-]{10,64}$"})
    InstanceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.groundstation#InstanceType", name: "InstanceType", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-z0-9.-]{1,64}$"})
    IntegerRange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#IntegerRange", name: "IntegerRange")
    InvalidParameterException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#InvalidParameterException", name: "InvalidParameterException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 431})
    IpAddressList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.groundstation#IpAddressList", name: "IpAddressList", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    IpV4Address = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.groundstation#IpV4Address", name: "IpV4Address", traits: {"smithy.api#length" => {"min" => 7, "max" => 16}, "smithy.api#pattern" => "^\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}$"})
    JsonString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.groundstation#JsonString", name: "JsonString", traits: {"smithy.api#length" => {"min" => 2, "max" => 8192}, "smithy.api#pattern" => "^[{}\\[\\]:.,\"0-9A-Za-z\\-_\\s]{2,8192}$"})
    KeyAliasArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.groundstation#KeyAliasArn", name: "KeyAliasArn", traits: {"aws.api#arnReference" => {"type" => "AWS::KMS::Alias"}, "smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^arn:aws[a-zA-Z-]{0,16}:kms:[-a-z0-9]{1,50}:[0-9]{12}:((alias/[a-zA-Z0-9:/_-]{1,256}))$"})
    KeyAliasName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.groundstation#KeyAliasName", name: "KeyAliasName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^alias/[a-zA-Z0-9:/_-]+$"})
    KeyArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.groundstation#KeyArn", name: "KeyArn", traits: {"aws.api#arnReference" => {"type" => "AWS::KMS::Key"}})
    KinesisDataStreamArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.groundstation#KinesisDataStreamArn", name: "KinesisDataStreamArn", traits: {"aws.api#arnReference" => {"type" => "AWS::Kinesis::Stream"}, "smithy.api#length" => {"min" => 37, "max" => 275}, "smithy.api#pattern" => "^arn:[a-z0-9-.]{1,63}:kinesis:[-a-z0-9]{1,50}:[0-9]{12}:stream/[a-zA-Z0-9_.-]{1,128}$"})
    KinesisDataStreamData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#KinesisDataStreamData", name: "KinesisDataStreamData")
    KmsKey = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.groundstation#KmsKey", name: "KmsKey")
    ListAntennasRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#ListAntennasRequest", name: "ListAntennasRequest")
    ListAntennasResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#ListAntennasResponse", name: "ListAntennasResponse")
    ListConfigsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#ListConfigsRequest", name: "ListConfigsRequest")
    ListConfigsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#ListConfigsResponse", name: "ListConfigsResponse")
    ListContactVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#ListContactVersionsRequest", name: "ListContactVersionsRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.groundstation#Contact"}]})
    ListContactVersionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#ListContactVersionsResponse", name: "ListContactVersionsResponse")
    ListContactsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#ListContactsRequest", name: "ListContactsRequest")
    ListContactsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#ListContactsResponse", name: "ListContactsResponse")
    ListDataflowEndpointGroupsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#ListDataflowEndpointGroupsRequest", name: "ListDataflowEndpointGroupsRequest")
    ListDataflowEndpointGroupsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#ListDataflowEndpointGroupsResponse", name: "ListDataflowEndpointGroupsResponse")
    ListEphemeridesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#ListEphemeridesRequest", name: "ListEphemeridesRequest")
    ListEphemeridesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#ListEphemeridesResponse", name: "ListEphemeridesResponse")
    ListGroundStationReservationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#ListGroundStationReservationsRequest", name: "ListGroundStationReservationsRequest")
    ListGroundStationReservationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#ListGroundStationReservationsResponse", name: "ListGroundStationReservationsResponse")
    ListGroundStationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#ListGroundStationsInput", name: "ListGroundStationsInput")
    ListGroundStationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#ListGroundStationsResponse", name: "ListGroundStationsResponse")
    ListMissionProfilesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#ListMissionProfilesRequest", name: "ListMissionProfilesRequest")
    ListMissionProfilesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#ListMissionProfilesResponse", name: "ListMissionProfilesResponse")
    ListSatellitesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#ListSatellitesRequest", name: "ListSatellitesRequest")
    ListSatellitesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#ListSatellitesResponse", name: "ListSatellitesResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    MaintenanceReservationDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#MaintenanceReservationDetails", name: "MaintenanceReservationDetails")
    MaintenanceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.groundstation#MaintenanceType", name: "MaintenanceType")
    MissionProfileArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.groundstation#MissionProfileArn", name: "MissionProfileArn", traits: {"aws.api#arnReference" => {"type" => "AWS::GroundStation::MissionProfile", "service" => "GroundStation", "resource" => "MissionProfile"}, "smithy.api#length" => {"min" => 89, "max" => 138}, "smithy.api#pattern" => "^arn:aws:groundstation:[-a-z0-9]{1,50}:[0-9]{12}:mission-profile/[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$"})
    MissionProfileList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.groundstation#MissionProfileList", name: "MissionProfileList")
    MissionProfileListItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#MissionProfileListItem", name: "MissionProfileListItem")
    Month = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.groundstation#Month", name: "Month", traits: {"smithy.api#range" => {"min" => 1, "max" => 12}})
    OEMEphemeris = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#OEMEphemeris", name: "OEMEphemeris")
    OemProgramTrackSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#OemProgramTrackSettings", name: "OemProgramTrackSettings", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.groundstation#Ephemeris"}]})
    PaginationMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.groundstation#PaginationMaxResults", name: "PaginationMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    PaginationToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.groundstation#PaginationToken", name: "PaginationToken", traits: {"smithy.api#length" => {"min" => 3, "max" => 1000}, "smithy.api#pattern" => "^[A-Za-z0-9-/+_.=]+$"})
    Polarization = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.groundstation#Polarization", name: "Polarization")
    PositiveDurationInSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.groundstation#PositiveDurationInSeconds", name: "PositiveDurationInSeconds", traits: {"smithy.api#range" => {"min" => 1, "max" => 21600}})
    ProgramTrackSettings = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.groundstation#ProgramTrackSettings", name: "ProgramTrackSettings")
    RangedConnectionDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#RangedConnectionDetails", name: "RangedConnectionDetails")
    RangedSocketAddress = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#RangedSocketAddress", name: "RangedSocketAddress")
    RegisterAgentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#RegisterAgentRequest", name: "RegisterAgentRequest")
    RegisterAgentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#RegisterAgentResponse", name: "RegisterAgentResponse")
    ReservationDetails = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.groundstation#ReservationDetails", name: "ReservationDetails")
    ReservationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.groundstation#ReservationType", name: "ReservationType")
    ReservationTypeFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.groundstation#ReservationTypeFilterList", name: "ReservationTypeFilterList")
    ReserveContactOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#ReserveContactOutput", name: "ReserveContactOutput")
    ReserveContactRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#ReserveContactRequest", name: "ReserveContactRequest")
    ResourceInUseException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#ResourceInUseException", name: "ResourceInUseException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ResourceLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#ResourceLimitExceededException", name: "ResourceLimitExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 434})
    RoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.groundstation#RoleArn", name: "RoleArn", traits: {"aws.api#arnReference" => {"type" => "AWS::IAM::Role"}, "smithy.api#length" => {"min" => 30, "max" => 165}, "smithy.api#pattern" => "^arn:[a-z0-9-.]{1,63}:iam::[0-9]{12}:role/[\\w+=,.@-]{1,64}$"})
    S3BucketName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.groundstation#S3BucketName", name: "S3BucketName", traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^[a-z0-9.-]{3,63}$"})
    S3KeyPrefix = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.groundstation#S3KeyPrefix", name: "S3KeyPrefix", traits: {"smithy.api#length" => {"min" => 1, "max" => 900}, "smithy.api#pattern" => "^([a-zA-Z0-9_\\-=/]|\\{satellite_id\\}|\\{config\\-name}|\\{s3\\-config-id}|\\{year\\}|\\{month\\}|\\{day\\}){1,900}$"})
    S3Object = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#S3Object", name: "S3Object")
    S3ObjectKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.groundstation#S3ObjectKey", name: "S3ObjectKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[a-zA-Z0-9!*'\\)\\(./_-]{1,1024}$"})
    S3RecordingConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#S3RecordingConfig", name: "S3RecordingConfig")
    S3RecordingDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#S3RecordingDetails", name: "S3RecordingDetails")
    S3VersionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.groundstation#S3VersionId", name: "S3VersionId", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[\\s\\S]{1,1024}$"})
    SafeName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.groundstation#SafeName", name: "SafeName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[ a-zA-Z0-9_:-]{1,256}$"})
    SatelliteList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.groundstation#SatelliteList", name: "SatelliteList")
    SatelliteListItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#SatelliteListItem", name: "SatelliteListItem")
    SecurityDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#SecurityDetails", name: "SecurityDetails")
    SecurityGroupIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.groundstation#SecurityGroupIdList", name: "SecurityGroupIdList")
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SignatureMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.groundstation#SignatureMap", name: "SignatureMap")
    SocketAddress = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#SocketAddress", name: "SocketAddress")
    Source = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#Source", name: "Source")
    SpectrumConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#SpectrumConfig", name: "SpectrumConfig")
    StatusList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.groundstation#StatusList", name: "StatusList", traits: {"smithy.api#length" => {"min" => 0, "max" => 500}})
    SubnetList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.groundstation#SubnetList", name: "SubnetList")
    TLEData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#TLEData", name: "TLEData")
    TLEDataList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.groundstation#TLEDataList", name: "TLEDataList", traits: {"smithy.api#length" => {"min" => 1, "max" => 500}})
    TLEEphemeris = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#TLEEphemeris", name: "TLEEphemeris")
    TagKeys = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.groundstation#TagKeys", name: "TagKeys", traits: {"smithy.api#length" => {"min" => 0, "max" => 500}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#TagResourceResponse", name: "TagResourceResponse")
    TagsMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.groundstation#TagsMap", name: "TagsMap")
    TelemetrySinkConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#TelemetrySinkConfig", name: "TelemetrySinkConfig")
    TelemetrySinkData = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.groundstation#TelemetrySinkData", name: "TelemetrySinkData")
    TelemetrySinkType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.groundstation#TelemetrySinkType", name: "TelemetrySinkType")
    TimeAzEl = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#TimeAzEl", name: "TimeAzEl")
    TimeAzElList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.groundstation#TimeAzElList", name: "TimeAzElList", traits: {"smithy.api#length" => {"min" => 5}})
    TimeRange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#TimeRange", name: "TimeRange")
    TleLineOne = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.groundstation#TleLineOne", name: "TleLineOne", traits: {"smithy.api#length" => {"min" => 69, "max" => 69}, "smithy.api#pattern" => "^1 [ 0-9A-HJ-NP-Z][ 0-9]{4}[A-Z] [ 0-9]{5}[ A-Z]{3} [ 0-9]{5}[.][ 0-9]{8} (?:(?:[ 0+-][.][ 0-9]{8})|(?: [ +-][.][ 0-9]{7})) [ +-][ 0-9]{5}[+-][ 0-9] [ +-][ 0-9]{5}[+-][ 0-9] [ 0-9] [ 0-9]{4}[ 0-9]$"})
    TleLineTwo = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.groundstation#TleLineTwo", name: "TleLineTwo", traits: {"smithy.api#length" => {"min" => 69, "max" => 69}, "smithy.api#pattern" => "^2 [ 0-9A-HJ-NP-Z][ 0-9]{4} [ 0-9]{3}[.][ 0-9]{4} [ 0-9]{3}[.][ 0-9]{4} [ 0-9]{7} [ 0-9]{3}[.][ 0-9]{4} [ 0-9]{3}[.][ 0-9]{4} [ 0-9]{2}[.][ 0-9]{13}[ 0-9]$"})
    TleProgramTrackSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#TleProgramTrackSettings", name: "TleProgramTrackSettings", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.groundstation#Ephemeris"}]})
    TrackingConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#TrackingConfig", name: "TrackingConfig")
    TrackingOverrides = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#TrackingOverrides", name: "TrackingOverrides")
    UnboundedString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.groundstation#UnboundedString", name: "UnboundedString", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#pattern" => "^[\\s\\S]+$"})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateAgentStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#UpdateAgentStatusRequest", name: "UpdateAgentStatusRequest")
    UpdateAgentStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#UpdateAgentStatusResponse", name: "UpdateAgentStatusResponse")
    UpdateConfigOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#UpdateConfigOutput", name: "UpdateConfigOutput")
    UpdateConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#UpdateConfigRequest", name: "UpdateConfigRequest")
    UpdateContactRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#UpdateContactRequest", name: "UpdateContactRequest")
    UpdateContactResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#UpdateContactResponse", name: "UpdateContactResponse")
    UpdateEphemerisOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#UpdateEphemerisOutput", name: "UpdateEphemerisOutput")
    UpdateEphemerisRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#UpdateEphemerisRequest", name: "UpdateEphemerisRequest")
    UpdateMissionProfileOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#UpdateMissionProfileOutput", name: "UpdateMissionProfileOutput")
    UpdateMissionProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#UpdateMissionProfileRequest", name: "UpdateMissionProfileRequest")
    UplinkAwsGroundStationAgentEndpoint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#UplinkAwsGroundStationAgentEndpoint", name: "UplinkAwsGroundStationAgentEndpoint")
    UplinkAwsGroundStationAgentEndpointDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#UplinkAwsGroundStationAgentEndpointDetails", name: "UplinkAwsGroundStationAgentEndpointDetails")
    UplinkConnectionDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#UplinkConnectionDetails", name: "UplinkConnectionDetails")
    UplinkDataflowDetails = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.groundstation#UplinkDataflowDetails", name: "UplinkDataflowDetails")
    UplinkEchoConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#UplinkEchoConfig", name: "UplinkEchoConfig")
    UplinkSpectrumConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.groundstation#UplinkSpectrumConfig", name: "UplinkSpectrumConfig")
    Uuid = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.groundstation#Uuid", name: "Uuid", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$"})
    VersionFailureReasonCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.groundstation#VersionFailureReasonCode", name: "VersionFailureReasonCode")
    VersionFailureReasonCodes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.groundstation#VersionFailureReasonCodes", name: "VersionFailureReasonCodes")
    VersionId = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.groundstation#VersionId", name: "VersionId", traits: {"smithy.api#range" => {"min" => 1, "max" => 128}})
    VersionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.groundstation#VersionStatus", name: "VersionStatus")
    VersionString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.groundstation#VersionString", name: "VersionString", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^(0|[1-9]\\d*)(\\.(0|[1-9]\\d*))*$"})
    VersionStringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.groundstation#VersionStringList", name: "VersionStringList", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    Year = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.groundstation#Year", name: "Year", traits: {"smithy.api#range" => {"min" => 2018, "max" => 3000}})
    NoradSatelliteID = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.groundstation#noradSatelliteID", name: "NoradSatelliteID", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 339999}})
    SatelliteArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.groundstation#satelliteArn", name: "SatelliteArn", traits: {"aws.api#arnReference" => {"type" => "AWS::GroundStation::Satellite", "service" => "com.amazon.awsgsaascontrolplanelambda.r20190311#GroundStation", "resource" => "com.amazon.awsgsaascontrolplanelambda.r20190311#Satellite"}, "smithy.api#length" => {"min" => 82, "max" => 132}, "smithy.api#pattern" => "^arn:aws:groundstation:([-a-z0-9]{1,50})?:[0-9]{12}:satellite/[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$"})

    AgentCpuCoresList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "member"))
    AgentDetails.add_member(:agent_version, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionString, name: "agentVersion", traits: {"smithy.api#required" => {}}))
    AgentDetails.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceId, name: "instanceId", traits: {"smithy.api#required" => {}}))
    AgentDetails.add_member(:instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceType, name: "instanceType", traits: {"smithy.api#required" => {}}))
    AgentDetails.add_member(:reserved_cpu_cores, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentCpuCoresList, name: "reservedCpuCores"))
    AgentDetails.add_member(:agent_cpu_cores, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentCpuCoresList, name: "agentCpuCores"))
    AgentDetails.add_member(:component_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentVersionList, name: "componentVersions", traits: {"smithy.api#required" => {}}))
    AgentDetails.type = Types::AgentDetails
    AgentStatus.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCESS", traits: {"smithy.api#enumValue" => "SUCCESS"}))
    AgentStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    AgentStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    AgentStatus.add_member(:inactive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INACTIVE", traits: {"smithy.api#enumValue" => "INACTIVE"}))
    AggregateStatus.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentStatus, name: "status", traits: {"smithy.api#required" => {}}))
    AggregateStatus.add_member(:signature_map, ::Smithy::Schema::Shapes::MemberShape.new(target: SignatureMap, name: "signatureMap"))
    AggregateStatus.type = Types::AggregateStatus
    AngleUnits.add_member(:degree_angle, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEGREE_ANGLE", traits: {"smithy.api#enumValue" => "DEGREE_ANGLE"}))
    AngleUnits.add_member(:radian, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RADIAN", traits: {"smithy.api#enumValue" => "RADIAN"}))
    AntennaDemodDecodeDetails.add_member(:output_node, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "outputNode"))
    AntennaDemodDecodeDetails.type = Types::AntennaDemodDecodeDetails
    AntennaDownlinkConfig.add_member(:spectrum_config, ::Smithy::Schema::Shapes::MemberShape.new(target: SpectrumConfig, name: "spectrumConfig", traits: {"smithy.api#required" => {}}))
    AntennaDownlinkConfig.type = Types::AntennaDownlinkConfig
    AntennaDownlinkDemodDecodeConfig.add_member(:spectrum_config, ::Smithy::Schema::Shapes::MemberShape.new(target: SpectrumConfig, name: "spectrumConfig", traits: {"smithy.api#required" => {}}))
    AntennaDownlinkDemodDecodeConfig.add_member(:demodulation_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DemodulationConfig, name: "demodulationConfig", traits: {"smithy.api#required" => {}}))
    AntennaDownlinkDemodDecodeConfig.add_member(:decode_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DecodeConfig, name: "decodeConfig", traits: {"smithy.api#required" => {}}))
    AntennaDownlinkDemodDecodeConfig.type = Types::AntennaDownlinkDemodDecodeConfig
    AntennaList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AntennaListItem, name: "member"))
    AntennaListItem.add_member(:ground_station_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GroundStationName, name: "groundStationName", traits: {"smithy.api#required" => {}}))
    AntennaListItem.add_member(:antenna_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AntennaName, name: "antennaName", traits: {"smithy.api#required" => {}}))
    AntennaListItem.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSRegion, name: "region", traits: {"smithy.api#required" => {}}))
    AntennaListItem.type = Types::AntennaListItem
    AntennaUplinkConfig.add_member(:transmit_disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "transmitDisabled"))
    AntennaUplinkConfig.add_member(:spectrum_config, ::Smithy::Schema::Shapes::MemberShape.new(target: UplinkSpectrumConfig, name: "spectrumConfig", traits: {"smithy.api#required" => {}}))
    AntennaUplinkConfig.add_member(:target_eirp, ::Smithy::Schema::Shapes::MemberShape.new(target: Eirp, name: "targetEirp", traits: {"smithy.api#required" => {}}))
    AntennaUplinkConfig.type = Types::AntennaUplinkConfig
    AuditResults.add_member(:healthy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HEALTHY", traits: {"smithy.api#enumValue" => "HEALTHY"}))
    AuditResults.add_member(:unhealthy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNHEALTHY", traits: {"smithy.api#enumValue" => "UNHEALTHY"}))
    AwsGroundStationAgentEndpoint.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SafeName, name: "name", traits: {"smithy.api#required" => {}}))
    AwsGroundStationAgentEndpoint.add_member(:egress_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionDetails, name: "egressAddress", traits: {"smithy.api#required" => {}}))
    AwsGroundStationAgentEndpoint.add_member(:ingress_address, ::Smithy::Schema::Shapes::MemberShape.new(target: RangedConnectionDetails, name: "ingressAddress", traits: {"smithy.api#required" => {}}))
    AwsGroundStationAgentEndpoint.add_member(:agent_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentStatus, name: "agentStatus"))
    AwsGroundStationAgentEndpoint.add_member(:audit_results, ::Smithy::Schema::Shapes::MemberShape.new(target: AuditResults, name: "auditResults"))
    AwsGroundStationAgentEndpoint.type = Types::AwsGroundStationAgentEndpoint
    AzElEphemeris.add_member(:ground_station, ::Smithy::Schema::Shapes::MemberShape.new(target: GroundStationName, name: "groundStation", traits: {"smithy.api#required" => {}}))
    AzElEphemeris.add_member(:data, ::Smithy::Schema::Shapes::MemberShape.new(target: AzElSegmentsData, name: "data", traits: {"smithy.api#required" => {}}))
    AzElEphemeris.type = Types::AzElEphemeris
    AzElEphemerisFilter.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "id", traits: {"smithy.api#required" => {}}))
    AzElEphemerisFilter.type = Types::AzElEphemerisFilter
    AzElProgramTrackSettings.add_member(:ephemeris_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "ephemerisId", traits: {"smithy.api#required" => {}}))
    AzElProgramTrackSettings.type = Types::AzElProgramTrackSettings
    AzElSegment.add_member(:reference_epoch, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "referenceEpoch", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    AzElSegment.add_member(:valid_time_range, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601TimeRange, name: "validTimeRange", traits: {"smithy.api#required" => {}}))
    AzElSegment.add_member(:az_el_list, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeAzElList, name: "azElList", traits: {"smithy.api#required" => {}}))
    AzElSegment.type = Types::AzElSegment
    AzElSegmentList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AzElSegment, name: "member"))
    AzElSegments.add_member(:angle_unit, ::Smithy::Schema::Shapes::MemberShape.new(target: AngleUnits, name: "angleUnit", traits: {"smithy.api#required" => {}}))
    AzElSegments.add_member(:az_el_segment_list, ::Smithy::Schema::Shapes::MemberShape.new(target: AzElSegmentList, name: "azElSegmentList", traits: {"smithy.api#required" => {}}))
    AzElSegments.type = Types::AzElSegments
    AzElSegmentsData.add_member(:s3_object, Types::AzElSegmentsData::S3Object, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Object, name: "s3Object"))
    AzElSegmentsData.add_member(:az_el_data, Types::AzElSegmentsData::AzElData, ::Smithy::Schema::Shapes::MemberShape.new(target: AzElSegments, name: "azElData"))
    AzElSegmentsData.add_member(:unknown, Types::AzElSegmentsData::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    AzElSegmentsData.type = Types::AzElSegmentsData
    BandwidthUnits.add_member(:ghz, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GHZ", traits: {"smithy.api#enumValue" => "GHz"}))
    BandwidthUnits.add_member(:mhz, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MHZ", traits: {"smithy.api#enumValue" => "MHz"}))
    BandwidthUnits.add_member(:khz, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KHZ", traits: {"smithy.api#enumValue" => "kHz"}))
    CancelContactOutput.add_member(:contact_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "contactId"))
    CancelContactOutput.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionId, name: "versionId"))
    CancelContactOutput.type = Types::CancelContactOutput
    CancelContactRequest.add_member(:contact_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "contactId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CancelContactRequest.type = Types::CancelContactRequest
    CapabilityArnList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilityArn, name: "member"))
    CapabilityHealth.add_member(:healthy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HEALTHY", traits: {"smithy.api#enumValue" => "HEALTHY"}))
    CapabilityHealth.add_member(:unhealthy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNHEALTHY", traits: {"smithy.api#enumValue" => "UNHEALTHY"}))
    CapabilityHealthReason.add_member(:no_registered_agent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NO_REGISTERED_AGENT", traits: {"smithy.api#enumValue" => "NO_REGISTERED_AGENT"}))
    CapabilityHealthReason.add_member(:invalid_ip_ownership, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_IP_OWNERSHIP", traits: {"smithy.api#enumValue" => "INVALID_IP_OWNERSHIP"}))
    CapabilityHealthReason.add_member(:not_authorized_to_create_slr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_AUTHORIZED_TO_CREATE_SLR", traits: {"smithy.api#enumValue" => "NOT_AUTHORIZED_TO_CREATE_SLR"}))
    CapabilityHealthReason.add_member(:unverified_ip_ownership, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNVERIFIED_IP_OWNERSHIP", traits: {"smithy.api#enumValue" => "UNVERIFIED_IP_OWNERSHIP"}))
    CapabilityHealthReason.add_member(:initializing_dataplane, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INITIALIZING_DATAPLANE", traits: {"smithy.api#enumValue" => "INITIALIZING_DATAPLANE"}))
    CapabilityHealthReason.add_member(:dataplane_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DATAPLANE_FAILURE", traits: {"smithy.api#enumValue" => "DATAPLANE_FAILURE"}))
    CapabilityHealthReason.add_member(:healthy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HEALTHY", traits: {"smithy.api#enumValue" => "HEALTHY"}))
    CapabilityHealthReasonList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilityHealthReason, name: "member"))
    ComponentStatusData.add_member(:component_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentTypeString, name: "componentType", traits: {"smithy.api#required" => {}}))
    ComponentStatusData.add_member(:capability_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilityArn, name: "capabilityArn", traits: {"smithy.api#required" => {}}))
    ComponentStatusData.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentStatus, name: "status", traits: {"smithy.api#required" => {}}))
    ComponentStatusData.add_member(:bytes_sent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "bytesSent"))
    ComponentStatusData.add_member(:bytes_received, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "bytesReceived"))
    ComponentStatusData.add_member(:packets_dropped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "packetsDropped"))
    ComponentStatusData.add_member(:dataflow_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "dataflowId", traits: {"smithy.api#required" => {}}))
    ComponentStatusData.type = Types::ComponentStatusData
    ComponentStatusList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentStatusData, name: "member"))
    ComponentVersion.add_member(:component_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentTypeString, name: "componentType", traits: {"smithy.api#required" => {}}))
    ComponentVersion.add_member(:versions, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionStringList, name: "versions", traits: {"smithy.api#required" => {}}))
    ComponentVersion.type = Types::ComponentVersion
    ComponentVersionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentVersion, name: "member"))
    ConfigCapabilityType.add_member(:antenna_downlink, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ANTENNA_DOWNLINK", traits: {"smithy.api#enumValue" => "antenna-downlink"}))
    ConfigCapabilityType.add_member(:antenna_downlink_demod_decode, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ANTENNA_DOWNLINK_DEMOD_DECODE", traits: {"smithy.api#enumValue" => "antenna-downlink-demod-decode"}))
    ConfigCapabilityType.add_member(:tracking, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRACKING", traits: {"smithy.api#enumValue" => "tracking"}))
    ConfigCapabilityType.add_member(:dataflow_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DATAFLOW_ENDPOINT", traits: {"smithy.api#enumValue" => "dataflow-endpoint"}))
    ConfigCapabilityType.add_member(:antenna_uplink, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ANTENNA_UPLINK", traits: {"smithy.api#enumValue" => "antenna-uplink"}))
    ConfigCapabilityType.add_member(:uplink_echo, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPLINK_ECHO", traits: {"smithy.api#enumValue" => "uplink-echo"}))
    ConfigCapabilityType.add_member(:s3_recording, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "S3_RECORDING", traits: {"smithy.api#enumValue" => "s3-recording"}))
    ConfigCapabilityType.add_member(:telemetry_sink, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TELEMETRY_SINK", traits: {"smithy.api#enumValue" => "telemetry-sink"}))
    ConfigDetails.add_member(:endpoint_details, Types::ConfigDetails::EndpointDetails, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointDetails, name: "endpointDetails"))
    ConfigDetails.add_member(:antenna_demod_decode_details, Types::ConfigDetails::AntennaDemodDecodeDetails, ::Smithy::Schema::Shapes::MemberShape.new(target: AntennaDemodDecodeDetails, name: "antennaDemodDecodeDetails"))
    ConfigDetails.add_member(:s3_recording_details, Types::ConfigDetails::S3RecordingDetails, ::Smithy::Schema::Shapes::MemberShape.new(target: S3RecordingDetails, name: "s3RecordingDetails"))
    ConfigDetails.add_member(:unknown, Types::ConfigDetails::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ConfigDetails.type = Types::ConfigDetails
    ConfigList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigListItem, name: "member"))
    ConfigListItem.add_member(:config_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "configId"))
    ConfigListItem.add_member(:config_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigCapabilityType, name: "configType"))
    ConfigListItem.add_member(:config_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigArn, name: "configArn"))
    ConfigListItem.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name"))
    ConfigListItem.type = Types::ConfigListItem
    ConfigTypeData.add_member(:antenna_downlink_config, Types::ConfigTypeData::AntennaDownlinkConfig, ::Smithy::Schema::Shapes::MemberShape.new(target: AntennaDownlinkConfig, name: "antennaDownlinkConfig"))
    ConfigTypeData.add_member(:tracking_config, Types::ConfigTypeData::TrackingConfig, ::Smithy::Schema::Shapes::MemberShape.new(target: TrackingConfig, name: "trackingConfig"))
    ConfigTypeData.add_member(:dataflow_endpoint_config, Types::ConfigTypeData::DataflowEndpointConfig, ::Smithy::Schema::Shapes::MemberShape.new(target: DataflowEndpointConfig, name: "dataflowEndpointConfig"))
    ConfigTypeData.add_member(:antenna_downlink_demod_decode_config, Types::ConfigTypeData::AntennaDownlinkDemodDecodeConfig, ::Smithy::Schema::Shapes::MemberShape.new(target: AntennaDownlinkDemodDecodeConfig, name: "antennaDownlinkDemodDecodeConfig"))
    ConfigTypeData.add_member(:antenna_uplink_config, Types::ConfigTypeData::AntennaUplinkConfig, ::Smithy::Schema::Shapes::MemberShape.new(target: AntennaUplinkConfig, name: "antennaUplinkConfig"))
    ConfigTypeData.add_member(:uplink_echo_config, Types::ConfigTypeData::UplinkEchoConfig, ::Smithy::Schema::Shapes::MemberShape.new(target: UplinkEchoConfig, name: "uplinkEchoConfig"))
    ConfigTypeData.add_member(:s3_recording_config, Types::ConfigTypeData::S3RecordingConfig, ::Smithy::Schema::Shapes::MemberShape.new(target: S3RecordingConfig, name: "s3RecordingConfig"))
    ConfigTypeData.add_member(:telemetry_sink_config, Types::ConfigTypeData::TelemetrySinkConfig, ::Smithy::Schema::Shapes::MemberShape.new(target: TelemetrySinkConfig, name: "telemetrySinkConfig"))
    ConfigTypeData.add_member(:unknown, Types::ConfigTypeData::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ConfigTypeData.type = Types::ConfigTypeData
    ConnectionDetails.add_member(:socket_address, ::Smithy::Schema::Shapes::MemberShape.new(target: SocketAddress, name: "socketAddress", traits: {"smithy.api#required" => {}}))
    ConnectionDetails.add_member(:mtu, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "mtu"))
    ConnectionDetails.type = Types::ConnectionDetails
    ContactData.add_member(:contact_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "contactId"))
    ContactData.add_member(:mission_profile_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: MissionProfileArn, name: "missionProfileArn"))
    ContactData.add_member(:satellite_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SatelliteArn, name: "satelliteArn"))
    ContactData.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "startTime"))
    ContactData.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "endTime"))
    ContactData.add_member(:pre_pass_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "prePassStartTime"))
    ContactData.add_member(:post_pass_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "postPassEndTime"))
    ContactData.add_member(:ground_station, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "groundStation"))
    ContactData.add_member(:contact_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactStatus, name: "contactStatus"))
    ContactData.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "errorMessage"))
    ContactData.add_member(:maximum_elevation, ::Smithy::Schema::Shapes::MemberShape.new(target: Elevation, name: "maximumElevation"))
    ContactData.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "region"))
    ContactData.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    ContactData.add_member(:visibility_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "visibilityStartTime"))
    ContactData.add_member(:visibility_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "visibilityEndTime"))
    ContactData.add_member(:ephemeris, ::Smithy::Schema::Shapes::MemberShape.new(target: EphemerisResponseData, name: "ephemeris"))
    ContactData.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactVersion, name: "version"))
    ContactData.type = Types::ContactData
    ContactList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactData, name: "member"))
    ContactReservationDetails.add_member(:contact_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "contactId"))
    ContactReservationDetails.type = Types::ContactReservationDetails
    ContactStatus.add_member(:scheduling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SCHEDULING", traits: {"smithy.api#enumValue" => "SCHEDULING"}))
    ContactStatus.add_member(:failed_to_schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED_TO_SCHEDULE", traits: {"smithy.api#enumValue" => "FAILED_TO_SCHEDULE"}))
    ContactStatus.add_member(:scheduled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SCHEDULED", traits: {"smithy.api#enumValue" => "SCHEDULED"}))
    ContactStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELLED", traits: {"smithy.api#enumValue" => "CANCELLED"}))
    ContactStatus.add_member(:aws_cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_CANCELLED", traits: {"smithy.api#enumValue" => "AWS_CANCELLED"}))
    ContactStatus.add_member(:prepass, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PREPASS", traits: {"smithy.api#enumValue" => "PREPASS"}))
    ContactStatus.add_member(:pass, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PASS", traits: {"smithy.api#enumValue" => "PASS"}))
    ContactStatus.add_member(:postpass, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "POSTPASS", traits: {"smithy.api#enumValue" => "POSTPASS"}))
    ContactStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    ContactStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ContactStatus.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AVAILABLE", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    ContactStatus.add_member(:cancelling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELLING", traits: {"smithy.api#enumValue" => "CANCELLING"}))
    ContactStatus.add_member(:aws_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_FAILED", traits: {"smithy.api#enumValue" => "AWS_FAILED"}))
    ContactVersion.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionId, name: "versionId"))
    ContactVersion.add_member(:created, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "created"))
    ContactVersion.add_member(:activated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "activated"))
    ContactVersion.add_member(:superseded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "superseded"))
    ContactVersion.add_member(:last_updated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "lastUpdated"))
    ContactVersion.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionStatus, name: "status"))
    ContactVersion.add_member(:failure_codes, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionFailureReasonCodes, name: "failureCodes"))
    ContactVersion.add_member(:failure_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "failureMessage"))
    ContactVersion.type = Types::ContactVersion
    ContactVersionsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactVersion, name: "member"))
    CreateConfigOutput.add_member(:config_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "configId"))
    CreateConfigOutput.add_member(:config_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigCapabilityType, name: "configType"))
    CreateConfigOutput.add_member(:config_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigArn, name: "configArn"))
    CreateConfigOutput.type = Types::CreateConfigOutput
    CreateConfigRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SafeName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateConfigRequest.add_member(:config_data, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigTypeData, name: "configData", traits: {"smithy.api#required" => {}}))
    CreateConfigRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    CreateConfigRequest.type = Types::CreateConfigRequest
    CreateDataflowEndpointGroupOutput.add_member(:dataflow_endpoint_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "dataflowEndpointGroupId"))
    CreateDataflowEndpointGroupOutput.type = Types::CreateDataflowEndpointGroupOutput
    CreateDataflowEndpointGroupRequest.add_member(:endpoint_details, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointDetailsList, name: "endpointDetails", traits: {"smithy.api#required" => {}}))
    CreateDataflowEndpointGroupRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    CreateDataflowEndpointGroupRequest.add_member(:contact_pre_pass_duration_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: DataflowEndpointGroupDurationInSeconds, name: "contactPrePassDurationSeconds"))
    CreateDataflowEndpointGroupRequest.add_member(:contact_post_pass_duration_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: DataflowEndpointGroupDurationInSeconds, name: "contactPostPassDurationSeconds"))
    CreateDataflowEndpointGroupRequest.type = Types::CreateDataflowEndpointGroupRequest
    CreateDataflowEndpointGroupV2Request.add_member(:endpoints, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateEndpointDetailsList, name: "endpoints", traits: {"smithy.api#required" => {}}))
    CreateDataflowEndpointGroupV2Request.add_member(:contact_pre_pass_duration_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: DataflowEndpointGroupDurationInSeconds, name: "contactPrePassDurationSeconds"))
    CreateDataflowEndpointGroupV2Request.add_member(:contact_post_pass_duration_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: DataflowEndpointGroupDurationInSeconds, name: "contactPostPassDurationSeconds"))
    CreateDataflowEndpointGroupV2Request.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    CreateDataflowEndpointGroupV2Request.type = Types::CreateDataflowEndpointGroupV2Request
    CreateDataflowEndpointGroupV2Response.add_member(:dataflow_endpoint_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "dataflowEndpointGroupId"))
    CreateDataflowEndpointGroupV2Response.type = Types::CreateDataflowEndpointGroupV2Response
    CreateEndpointDetails.add_member(:uplink_aws_ground_station_agent_endpoint, Types::CreateEndpointDetails::UplinkAwsGroundStationAgentEndpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: UplinkAwsGroundStationAgentEndpoint, name: "uplinkAwsGroundStationAgentEndpoint"))
    CreateEndpointDetails.add_member(:downlink_aws_ground_station_agent_endpoint, Types::CreateEndpointDetails::DownlinkAwsGroundStationAgentEndpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: DownlinkAwsGroundStationAgentEndpoint, name: "downlinkAwsGroundStationAgentEndpoint"))
    CreateEndpointDetails.add_member(:unknown, Types::CreateEndpointDetails::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    CreateEndpointDetails.type = Types::CreateEndpointDetails
    CreateEndpointDetailsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateEndpointDetails, name: "member"))
    CreateEphemerisOutput.add_member(:ephemeris_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "ephemerisId"))
    CreateEphemerisOutput.type = Types::CreateEphemerisOutput
    CreateEphemerisRequest.add_member(:satellite_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "satelliteId"))
    CreateEphemerisRequest.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "enabled"))
    CreateEphemerisRequest.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerEphemerisPriority, name: "priority"))
    CreateEphemerisRequest.add_member(:expiration_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "expirationTime"))
    CreateEphemerisRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SafeName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateEphemerisRequest.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyArn, name: "kmsKeyArn"))
    CreateEphemerisRequest.add_member(:ephemeris, ::Smithy::Schema::Shapes::MemberShape.new(target: EphemerisData, name: "ephemeris"))
    CreateEphemerisRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    CreateEphemerisRequest.type = Types::CreateEphemerisRequest
    CreateMissionProfileOutput.add_member(:mission_profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "missionProfileId"))
    CreateMissionProfileOutput.type = Types::CreateMissionProfileOutput
    CreateMissionProfileRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SafeName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateMissionProfileRequest.add_member(:contact_pre_pass_duration_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: DurationInSeconds, name: "contactPrePassDurationSeconds"))
    CreateMissionProfileRequest.add_member(:contact_post_pass_duration_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: DurationInSeconds, name: "contactPostPassDurationSeconds"))
    CreateMissionProfileRequest.add_member(:minimum_viable_contact_duration_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveDurationInSeconds, name: "minimumViableContactDurationSeconds", traits: {"smithy.api#required" => {}}))
    CreateMissionProfileRequest.add_member(:dataflow_edges, ::Smithy::Schema::Shapes::MemberShape.new(target: DataflowEdgeList, name: "dataflowEdges", traits: {"smithy.api#required" => {}}))
    CreateMissionProfileRequest.add_member(:tracking_config_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigArn, name: "trackingConfigArn", traits: {"smithy.api#required" => {}}))
    CreateMissionProfileRequest.add_member(:telemetry_sink_config_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigArn, name: "telemetrySinkConfigArn"))
    CreateMissionProfileRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    CreateMissionProfileRequest.add_member(:streams_kms_key, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKey, name: "streamsKmsKey"))
    CreateMissionProfileRequest.add_member(:streams_kms_role, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "streamsKmsRole"))
    CreateMissionProfileRequest.type = Types::CreateMissionProfileRequest
    Criticality.add_member(:required, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REQUIRED", traits: {"smithy.api#enumValue" => "REQUIRED"}))
    Criticality.add_member(:preferred, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PREFERRED", traits: {"smithy.api#enumValue" => "PREFERRED"}))
    Criticality.add_member(:removed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REMOVED", traits: {"smithy.api#enumValue" => "REMOVED"}))
    DataflowDetail.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: Source, name: "source"))
    DataflowDetail.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: Destination, name: "destination"))
    DataflowDetail.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "errorMessage"))
    DataflowDetail.type = Types::DataflowDetail
    DataflowEdge.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigArn, name: "member"))
    DataflowEdgeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DataflowEdge, name: "member"))
    DataflowEndpoint.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SafeName, name: "name"))
    DataflowEndpoint.add_member(:address, ::Smithy::Schema::Shapes::MemberShape.new(target: SocketAddress, name: "address"))
    DataflowEndpoint.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointStatus, name: "status"))
    DataflowEndpoint.add_member(:mtu, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "mtu", traits: {"smithy.api#range" => {"min" => 1400, "max" => 1500}}))
    DataflowEndpoint.type = Types::DataflowEndpoint
    DataflowEndpointConfig.add_member(:dataflow_endpoint_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "dataflowEndpointName", traits: {"smithy.api#required" => {}}))
    DataflowEndpointConfig.add_member(:dataflow_endpoint_region, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "dataflowEndpointRegion"))
    DataflowEndpointConfig.type = Types::DataflowEndpointConfig
    DataflowEndpointGroupList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DataflowEndpointListItem, name: "member"))
    DataflowEndpointListItem.add_member(:dataflow_endpoint_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "dataflowEndpointGroupId"))
    DataflowEndpointListItem.add_member(:dataflow_endpoint_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DataflowEndpointGroupArn, name: "dataflowEndpointGroupArn"))
    DataflowEndpointListItem.type = Types::DataflowEndpointListItem
    DataflowList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DataflowDetail, name: "member"))
    DecodeConfig.add_member(:unvalidated_json, ::Smithy::Schema::Shapes::MemberShape.new(target: JsonString, name: "unvalidatedJSON", traits: {"smithy.api#required" => {}}))
    DecodeConfig.type = Types::DecodeConfig
    DeleteConfigOutput.add_member(:config_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "configId"))
    DeleteConfigOutput.add_member(:config_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigCapabilityType, name: "configType"))
    DeleteConfigOutput.add_member(:config_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigArn, name: "configArn"))
    DeleteConfigOutput.type = Types::DeleteConfigOutput
    DeleteConfigRequest.add_member(:config_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "configId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteConfigRequest.add_member(:config_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigCapabilityType, name: "configType", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteConfigRequest.type = Types::DeleteConfigRequest
    DeleteDataflowEndpointGroupOutput.add_member(:dataflow_endpoint_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "dataflowEndpointGroupId"))
    DeleteDataflowEndpointGroupOutput.type = Types::DeleteDataflowEndpointGroupOutput
    DeleteDataflowEndpointGroupRequest.add_member(:dataflow_endpoint_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "dataflowEndpointGroupId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDataflowEndpointGroupRequest.type = Types::DeleteDataflowEndpointGroupRequest
    DeleteEphemerisOutput.add_member(:ephemeris_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "ephemerisId"))
    DeleteEphemerisOutput.type = Types::DeleteEphemerisOutput
    DeleteEphemerisRequest.add_member(:ephemeris_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "ephemerisId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteEphemerisRequest.type = Types::DeleteEphemerisRequest
    DeleteMissionProfileOutput.add_member(:mission_profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "missionProfileId"))
    DeleteMissionProfileOutput.type = Types::DeleteMissionProfileOutput
    DeleteMissionProfileRequest.add_member(:mission_profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "missionProfileId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteMissionProfileRequest.type = Types::DeleteMissionProfileRequest
    DemodulationConfig.add_member(:unvalidated_json, ::Smithy::Schema::Shapes::MemberShape.new(target: JsonString, name: "unvalidatedJSON", traits: {"smithy.api#required" => {}}))
    DemodulationConfig.type = Types::DemodulationConfig
    DependencyException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    DependencyException.add_member(:parameter_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "parameterName"))
    DependencyException.type = Types::DependencyException
    DescribeContactRequest.add_member(:contact_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "contactId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeContactRequest.type = Types::DescribeContactRequest
    DescribeContactResponse.add_member(:contact_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "contactId"))
    DescribeContactResponse.add_member(:mission_profile_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: MissionProfileArn, name: "missionProfileArn"))
    DescribeContactResponse.add_member(:satellite_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SatelliteArn, name: "satelliteArn"))
    DescribeContactResponse.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "startTime"))
    DescribeContactResponse.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "endTime"))
    DescribeContactResponse.add_member(:pre_pass_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "prePassStartTime"))
    DescribeContactResponse.add_member(:post_pass_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "postPassEndTime"))
    DescribeContactResponse.add_member(:ground_station, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "groundStation"))
    DescribeContactResponse.add_member(:contact_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactStatus, name: "contactStatus"))
    DescribeContactResponse.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "errorMessage"))
    DescribeContactResponse.add_member(:maximum_elevation, ::Smithy::Schema::Shapes::MemberShape.new(target: Elevation, name: "maximumElevation"))
    DescribeContactResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    DescribeContactResponse.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "region"))
    DescribeContactResponse.add_member(:dataflow_list, ::Smithy::Schema::Shapes::MemberShape.new(target: DataflowList, name: "dataflowList"))
    DescribeContactResponse.add_member(:visibility_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "visibilityStartTime"))
    DescribeContactResponse.add_member(:visibility_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "visibilityEndTime"))
    DescribeContactResponse.add_member(:tracking_overrides, ::Smithy::Schema::Shapes::MemberShape.new(target: TrackingOverrides, name: "trackingOverrides"))
    DescribeContactResponse.add_member(:ephemeris, ::Smithy::Schema::Shapes::MemberShape.new(target: EphemerisResponseData, name: "ephemeris"))
    DescribeContactResponse.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactVersion, name: "version"))
    DescribeContactResponse.type = Types::DescribeContactResponse
    DescribeContactVersionRequest.add_member(:contact_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "contactId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeContactVersionRequest.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionId, name: "versionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeContactVersionRequest.type = Types::DescribeContactVersionRequest
    DescribeContactVersionResponse.add_member(:contact_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "contactId"))
    DescribeContactVersionResponse.add_member(:mission_profile_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: MissionProfileArn, name: "missionProfileArn"))
    DescribeContactVersionResponse.add_member(:satellite_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SatelliteArn, name: "satelliteArn"))
    DescribeContactVersionResponse.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "startTime"))
    DescribeContactVersionResponse.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "endTime"))
    DescribeContactVersionResponse.add_member(:pre_pass_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "prePassStartTime"))
    DescribeContactVersionResponse.add_member(:post_pass_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "postPassEndTime"))
    DescribeContactVersionResponse.add_member(:ground_station, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "groundStation"))
    DescribeContactVersionResponse.add_member(:contact_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactStatus, name: "contactStatus"))
    DescribeContactVersionResponse.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "errorMessage"))
    DescribeContactVersionResponse.add_member(:maximum_elevation, ::Smithy::Schema::Shapes::MemberShape.new(target: Elevation, name: "maximumElevation"))
    DescribeContactVersionResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    DescribeContactVersionResponse.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "region"))
    DescribeContactVersionResponse.add_member(:dataflow_list, ::Smithy::Schema::Shapes::MemberShape.new(target: DataflowList, name: "dataflowList"))
    DescribeContactVersionResponse.add_member(:visibility_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "visibilityStartTime"))
    DescribeContactVersionResponse.add_member(:visibility_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "visibilityEndTime"))
    DescribeContactVersionResponse.add_member(:tracking_overrides, ::Smithy::Schema::Shapes::MemberShape.new(target: TrackingOverrides, name: "trackingOverrides"))
    DescribeContactVersionResponse.add_member(:ephemeris, ::Smithy::Schema::Shapes::MemberShape.new(target: EphemerisResponseData, name: "ephemeris"))
    DescribeContactVersionResponse.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactVersion, name: "version"))
    DescribeContactVersionResponse.type = Types::DescribeContactVersionResponse
    DescribeEphemerisRequest.add_member(:ephemeris_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "ephemerisId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeEphemerisRequest.type = Types::DescribeEphemerisRequest
    DescribeEphemerisResponse.add_member(:ephemeris_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "ephemerisId"))
    DescribeEphemerisResponse.add_member(:satellite_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "satelliteId"))
    DescribeEphemerisResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: EphemerisStatus, name: "status"))
    DescribeEphemerisResponse.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: EphemerisPriority, name: "priority"))
    DescribeEphemerisResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "creationTime"))
    DescribeEphemerisResponse.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "enabled"))
    DescribeEphemerisResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SafeName, name: "name"))
    DescribeEphemerisResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    DescribeEphemerisResponse.add_member(:supplied_data, ::Smithy::Schema::Shapes::MemberShape.new(target: EphemerisTypeDescription, name: "suppliedData"))
    DescribeEphemerisResponse.add_member(:invalid_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: EphemerisInvalidReason, name: "invalidReason"))
    DescribeEphemerisResponse.add_member(:error_reasons, ::Smithy::Schema::Shapes::MemberShape.new(target: EphemerisErrorReasonList, name: "errorReasons"))
    DescribeEphemerisResponse.type = Types::DescribeEphemerisResponse
    Destination.add_member(:config_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigCapabilityType, name: "configType"))
    Destination.add_member(:config_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "configId"))
    Destination.add_member(:config_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigDetails, name: "configDetails"))
    Destination.add_member(:dataflow_destination_region, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "dataflowDestinationRegion"))
    Destination.type = Types::Destination
    DiscoveryData.add_member(:public_ip_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddressList, name: "publicIpAddresses", traits: {"smithy.api#required" => {}}))
    DiscoveryData.add_member(:private_ip_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddressList, name: "privateIpAddresses", traits: {"smithy.api#required" => {}}))
    DiscoveryData.add_member(:capability_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilityArnList, name: "capabilityArns", traits: {"smithy.api#required" => {}}))
    DiscoveryData.type = Types::DiscoveryData
    DownlinkAwsGroundStationAgentEndpoint.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SafeName, name: "name", traits: {"smithy.api#required" => {}}))
    DownlinkAwsGroundStationAgentEndpoint.add_member(:dataflow_details, ::Smithy::Schema::Shapes::MemberShape.new(target: DownlinkDataflowDetails, name: "dataflowDetails", traits: {"smithy.api#required" => {}}))
    DownlinkAwsGroundStationAgentEndpoint.type = Types::DownlinkAwsGroundStationAgentEndpoint
    DownlinkAwsGroundStationAgentEndpointDetails.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SafeName, name: "name", traits: {"smithy.api#required" => {}}))
    DownlinkAwsGroundStationAgentEndpointDetails.add_member(:dataflow_details, ::Smithy::Schema::Shapes::MemberShape.new(target: DownlinkDataflowDetails, name: "dataflowDetails", traits: {"smithy.api#required" => {}}))
    DownlinkAwsGroundStationAgentEndpointDetails.add_member(:agent_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentStatus, name: "agentStatus"))
    DownlinkAwsGroundStationAgentEndpointDetails.add_member(:audit_results, ::Smithy::Schema::Shapes::MemberShape.new(target: AuditResults, name: "auditResults"))
    DownlinkAwsGroundStationAgentEndpointDetails.type = Types::DownlinkAwsGroundStationAgentEndpointDetails
    DownlinkConnectionDetails.add_member(:agent_ip_and_port_address, ::Smithy::Schema::Shapes::MemberShape.new(target: RangedConnectionDetails, name: "agentIpAndPortAddress", traits: {"smithy.api#required" => {}}))
    DownlinkConnectionDetails.add_member(:egress_address_and_port, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionDetails, name: "egressAddressAndPort", traits: {"smithy.api#required" => {}}))
    DownlinkConnectionDetails.type = Types::DownlinkConnectionDetails
    DownlinkDataflowDetails.add_member(:agent_connection_details, Types::DownlinkDataflowDetails::AgentConnectionDetails, ::Smithy::Schema::Shapes::MemberShape.new(target: DownlinkConnectionDetails, name: "agentConnectionDetails"))
    DownlinkDataflowDetails.add_member(:unknown, Types::DownlinkDataflowDetails::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    DownlinkDataflowDetails.type = Types::DownlinkDataflowDetails
    Eirp.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "value", traits: {"smithy.api#required" => {}}))
    Eirp.add_member(:units, ::Smithy::Schema::Shapes::MemberShape.new(target: EirpUnits, name: "units", traits: {"smithy.api#required" => {}}))
    Eirp.type = Types::Eirp
    EirpUnits.add_member(:dbw, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DBW", traits: {"smithy.api#enumValue" => "dBW"}))
    Elevation.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "value", traits: {"smithy.api#required" => {}}))
    Elevation.add_member(:unit, ::Smithy::Schema::Shapes::MemberShape.new(target: AngleUnits, name: "unit", traits: {"smithy.api#required" => {}}))
    Elevation.type = Types::Elevation
    EndpointDetails.add_member(:security_details, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityDetails, name: "securityDetails"))
    EndpointDetails.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: DataflowEndpoint, name: "endpoint"))
    EndpointDetails.add_member(:aws_ground_station_agent_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsGroundStationAgentEndpoint, name: "awsGroundStationAgentEndpoint"))
    EndpointDetails.add_member(:uplink_aws_ground_station_agent_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: UplinkAwsGroundStationAgentEndpointDetails, name: "uplinkAwsGroundStationAgentEndpoint"))
    EndpointDetails.add_member(:downlink_aws_ground_station_agent_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: DownlinkAwsGroundStationAgentEndpointDetails, name: "downlinkAwsGroundStationAgentEndpoint"))
    EndpointDetails.add_member(:health_status, ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilityHealth, name: "healthStatus"))
    EndpointDetails.add_member(:health_reasons, ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilityHealthReasonList, name: "healthReasons"))
    EndpointDetails.type = Types::EndpointDetails
    EndpointDetailsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointDetails, name: "member"))
    EndpointStatus.add_member(:created, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "created", traits: {"smithy.api#enumValue" => "created"}))
    EndpointStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "creating", traits: {"smithy.api#enumValue" => "creating"}))
    EndpointStatus.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "deleted", traits: {"smithy.api#enumValue" => "deleted"}))
    EndpointStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "deleting", traits: {"smithy.api#enumValue" => "deleting"}))
    EndpointStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "failed", traits: {"smithy.api#enumValue" => "failed"}))
    EphemeridesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EphemerisItem, name: "member"))
    EphemerisData.add_member(:tle, Types::EphemerisData::Tle, ::Smithy::Schema::Shapes::MemberShape.new(target: TLEEphemeris, name: "tle"))
    EphemerisData.add_member(:oem, Types::EphemerisData::Oem, ::Smithy::Schema::Shapes::MemberShape.new(target: OEMEphemeris, name: "oem"))
    EphemerisData.add_member(:az_el, Types::EphemerisData::AzEl, ::Smithy::Schema::Shapes::MemberShape.new(target: AzElEphemeris, name: "azEl"))
    EphemerisData.add_member(:unknown, Types::EphemerisData::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    EphemerisData.type = Types::EphemerisData
    EphemerisDescription.add_member(:source_s3_object, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Object, name: "sourceS3Object"))
    EphemerisDescription.add_member(:ephemeris_data, ::Smithy::Schema::Shapes::MemberShape.new(target: UnboundedString, name: "ephemerisData"))
    EphemerisDescription.type = Types::EphemerisDescription
    EphemerisErrorCode.add_member(:internal_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERNAL_ERROR", traits: {"smithy.api#enumValue" => "INTERNAL_ERROR"}))
    EphemerisErrorCode.add_member(:mismatched_satcat_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MISMATCHED_SATCAT_ID", traits: {"smithy.api#enumValue" => "MISMATCHED_SATCAT_ID"}))
    EphemerisErrorCode.add_member(:oem_version_unsupported, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OEM_VERSION_UNSUPPORTED", traits: {"smithy.api#enumValue" => "OEM_VERSION_UNSUPPORTED"}))
    EphemerisErrorCode.add_member(:originator_missing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ORIGINATOR_MISSING", traits: {"smithy.api#enumValue" => "ORIGINATOR_MISSING"}))
    EphemerisErrorCode.add_member(:creation_date_missing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATION_DATE_MISSING", traits: {"smithy.api#enumValue" => "CREATION_DATE_MISSING"}))
    EphemerisErrorCode.add_member(:object_name_missing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OBJECT_NAME_MISSING", traits: {"smithy.api#enumValue" => "OBJECT_NAME_MISSING"}))
    EphemerisErrorCode.add_member(:object_id_missing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OBJECT_ID_MISSING", traits: {"smithy.api#enumValue" => "OBJECT_ID_MISSING"}))
    EphemerisErrorCode.add_member(:ref_frame_unsupported, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REF_FRAME_UNSUPPORTED", traits: {"smithy.api#enumValue" => "REF_FRAME_UNSUPPORTED"}))
    EphemerisErrorCode.add_member(:ref_frame_epoch_unsupported, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REF_FRAME_EPOCH_UNSUPPORTED", traits: {"smithy.api#enumValue" => "REF_FRAME_EPOCH_UNSUPPORTED"}))
    EphemerisErrorCode.add_member(:time_system_unsupported, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TIME_SYSTEM_UNSUPPORTED", traits: {"smithy.api#enumValue" => "TIME_SYSTEM_UNSUPPORTED"}))
    EphemerisErrorCode.add_member(:center_body_unsupported, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CENTER_BODY_UNSUPPORTED", traits: {"smithy.api#enumValue" => "CENTER_BODY_UNSUPPORTED"}))
    EphemerisErrorCode.add_member(:interpolation_missing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERPOLATION_MISSING", traits: {"smithy.api#enumValue" => "INTERPOLATION_MISSING"}))
    EphemerisErrorCode.add_member(:interpolation_degree_invalid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERPOLATION_DEGREE_INVALID", traits: {"smithy.api#enumValue" => "INTERPOLATION_DEGREE_INVALID"}))
    EphemerisErrorCode.add_member(:az_el_segment_list_missing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AZ_EL_SEGMENT_LIST_MISSING", traits: {"smithy.api#enumValue" => "AZ_EL_SEGMENT_LIST_MISSING"}))
    EphemerisErrorCode.add_member(:insufficient_time_az_el, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSUFFICIENT_TIME_AZ_EL", traits: {"smithy.api#enumValue" => "INSUFFICIENT_TIME_AZ_EL"}))
    EphemerisErrorCode.add_member(:start_time_in_future, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "START_TIME_IN_FUTURE", traits: {"smithy.api#enumValue" => "START_TIME_IN_FUTURE"}))
    EphemerisErrorCode.add_member(:end_time_in_past, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "END_TIME_IN_PAST", traits: {"smithy.api#enumValue" => "END_TIME_IN_PAST"}))
    EphemerisErrorCode.add_member(:expiration_time_too_early, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXPIRATION_TIME_TOO_EARLY", traits: {"smithy.api#enumValue" => "EXPIRATION_TIME_TOO_EARLY"}))
    EphemerisErrorCode.add_member(:start_time_metadata_too_early, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "START_TIME_METADATA_TOO_EARLY", traits: {"smithy.api#enumValue" => "START_TIME_METADATA_TOO_EARLY"}))
    EphemerisErrorCode.add_member(:stop_time_metadata_too_late, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOP_TIME_METADATA_TOO_LATE", traits: {"smithy.api#enumValue" => "STOP_TIME_METADATA_TOO_LATE"}))
    EphemerisErrorCode.add_member(:az_el_segment_end_time_before_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AZ_EL_SEGMENT_END_TIME_BEFORE_START_TIME", traits: {"smithy.api#enumValue" => "AZ_EL_SEGMENT_END_TIME_BEFORE_START_TIME"}))
    EphemerisErrorCode.add_member(:az_el_segment_times_overlap, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AZ_EL_SEGMENT_TIMES_OVERLAP", traits: {"smithy.api#enumValue" => "AZ_EL_SEGMENT_TIMES_OVERLAP"}))
    EphemerisErrorCode.add_member(:az_el_segments_out_of_order, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AZ_EL_SEGMENTS_OUT_OF_ORDER", traits: {"smithy.api#enumValue" => "AZ_EL_SEGMENTS_OUT_OF_ORDER"}))
    EphemerisErrorCode.add_member(:time_az_el_items_out_of_order, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TIME_AZ_EL_ITEMS_OUT_OF_ORDER", traits: {"smithy.api#enumValue" => "TIME_AZ_EL_ITEMS_OUT_OF_ORDER"}))
    EphemerisErrorCode.add_member(:mean_motion_invalid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEAN_MOTION_INVALID", traits: {"smithy.api#enumValue" => "MEAN_MOTION_INVALID"}))
    EphemerisErrorCode.add_member(:time_az_el_az_radian_range_invalid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TIME_AZ_EL_AZ_RADIAN_RANGE_INVALID", traits: {"smithy.api#enumValue" => "TIME_AZ_EL_AZ_RADIAN_RANGE_INVALID"}))
    EphemerisErrorCode.add_member(:time_az_el_el_radian_range_invalid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TIME_AZ_EL_EL_RADIAN_RANGE_INVALID", traits: {"smithy.api#enumValue" => "TIME_AZ_EL_EL_RADIAN_RANGE_INVALID"}))
    EphemerisErrorCode.add_member(:time_az_el_az_degree_range_invalid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TIME_AZ_EL_AZ_DEGREE_RANGE_INVALID", traits: {"smithy.api#enumValue" => "TIME_AZ_EL_AZ_DEGREE_RANGE_INVALID"}))
    EphemerisErrorCode.add_member(:time_az_el_el_degree_range_invalid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TIME_AZ_EL_EL_DEGREE_RANGE_INVALID", traits: {"smithy.api#enumValue" => "TIME_AZ_EL_EL_DEGREE_RANGE_INVALID"}))
    EphemerisErrorCode.add_member(:time_az_el_angle_units_invalid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TIME_AZ_EL_ANGLE_UNITS_INVALID", traits: {"smithy.api#enumValue" => "TIME_AZ_EL_ANGLE_UNITS_INVALID"}))
    EphemerisErrorCode.add_member(:insufficient_kms_permissions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSUFFICIENT_KMS_PERMISSIONS", traits: {"smithy.api#enumValue" => "INSUFFICIENT_KMS_PERMISSIONS"}))
    EphemerisErrorCode.add_member(:file_format_invalid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FILE_FORMAT_INVALID", traits: {"smithy.api#enumValue" => "FILE_FORMAT_INVALID"}))
    EphemerisErrorCode.add_member(:az_el_segment_reference_epoch_invalid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AZ_EL_SEGMENT_REFERENCE_EPOCH_INVALID", traits: {"smithy.api#enumValue" => "AZ_EL_SEGMENT_REFERENCE_EPOCH_INVALID"}))
    EphemerisErrorCode.add_member(:az_el_segment_start_time_invalid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AZ_EL_SEGMENT_START_TIME_INVALID", traits: {"smithy.api#enumValue" => "AZ_EL_SEGMENT_START_TIME_INVALID"}))
    EphemerisErrorCode.add_member(:az_el_segment_end_time_invalid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AZ_EL_SEGMENT_END_TIME_INVALID", traits: {"smithy.api#enumValue" => "AZ_EL_SEGMENT_END_TIME_INVALID"}))
    EphemerisErrorCode.add_member(:az_el_segment_valid_time_range_invalid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AZ_EL_SEGMENT_VALID_TIME_RANGE_INVALID", traits: {"smithy.api#enumValue" => "AZ_EL_SEGMENT_VALID_TIME_RANGE_INVALID"}))
    EphemerisErrorCode.add_member(:az_el_segment_end_time_too_late, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AZ_EL_SEGMENT_END_TIME_TOO_LATE", traits: {"smithy.api#enumValue" => "AZ_EL_SEGMENT_END_TIME_TOO_LATE"}))
    EphemerisErrorCode.add_member(:az_el_total_duration_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AZ_EL_TOTAL_DURATION_EXCEEDED", traits: {"smithy.api#enumValue" => "AZ_EL_TOTAL_DURATION_EXCEEDED"}))
    EphemerisErrorReason.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: EphemerisErrorCode, name: "errorCode", traits: {"smithy.api#required" => {}}))
    EphemerisErrorReason.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorString, name: "errorMessage", traits: {"smithy.api#required" => {}}))
    EphemerisErrorReason.type = Types::EphemerisErrorReason
    EphemerisErrorReasonList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EphemerisErrorReason, name: "member"))
    EphemerisFilter.add_member(:az_el, Types::EphemerisFilter::AzEl, ::Smithy::Schema::Shapes::MemberShape.new(target: AzElEphemerisFilter, name: "azEl"))
    EphemerisFilter.add_member(:unknown, Types::EphemerisFilter::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    EphemerisFilter.type = Types::EphemerisFilter
    EphemerisInvalidReason.add_member(:metadata_invalid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "METADATA_INVALID", traits: {"smithy.api#enumValue" => "METADATA_INVALID"}))
    EphemerisInvalidReason.add_member(:time_range_invalid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TIME_RANGE_INVALID", traits: {"smithy.api#enumValue" => "TIME_RANGE_INVALID"}))
    EphemerisInvalidReason.add_member(:trajectory_invalid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRAJECTORY_INVALID", traits: {"smithy.api#enumValue" => "TRAJECTORY_INVALID"}))
    EphemerisInvalidReason.add_member(:kms_key_invalid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KMS_KEY_INVALID", traits: {"smithy.api#enumValue" => "KMS_KEY_INVALID"}))
    EphemerisInvalidReason.add_member(:validation_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VALIDATION_ERROR", traits: {"smithy.api#enumValue" => "VALIDATION_ERROR"}))
    EphemerisItem.add_member(:ephemeris_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "ephemerisId"))
    EphemerisItem.add_member(:ephemeris_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EphemerisType, name: "ephemerisType"))
    EphemerisItem.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: EphemerisStatus, name: "status"))
    EphemerisItem.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: EphemerisPriority, name: "priority"))
    EphemerisItem.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "enabled"))
    EphemerisItem.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "creationTime"))
    EphemerisItem.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SafeName, name: "name"))
    EphemerisItem.add_member(:source_s3_object, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Object, name: "sourceS3Object"))
    EphemerisItem.type = Types::EphemerisItem
    EphemerisMetaData.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: EphemerisSource, name: "source", traits: {"smithy.api#required" => {}}))
    EphemerisMetaData.add_member(:ephemeris_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "ephemerisId"))
    EphemerisMetaData.add_member(:epoch, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "epoch"))
    EphemerisMetaData.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SafeName, name: "name"))
    EphemerisMetaData.type = Types::EphemerisMetaData
    EphemerisResponseData.add_member(:ephemeris_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "ephemerisId"))
    EphemerisResponseData.add_member(:ephemeris_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EphemerisType, name: "ephemerisType", traits: {"smithy.api#required" => {}}))
    EphemerisResponseData.type = Types::EphemerisResponseData
    EphemerisSource.add_member(:customer_provided, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOMER_PROVIDED", traits: {"smithy.api#enumValue" => "CUSTOMER_PROVIDED"}))
    EphemerisSource.add_member(:space_track, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SPACE_TRACK", traits: {"smithy.api#enumValue" => "SPACE_TRACK"}))
    EphemerisStatus.add_member(:validating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VALIDATING", traits: {"smithy.api#enumValue" => "VALIDATING"}))
    EphemerisStatus.add_member(:invalid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID", traits: {"smithy.api#enumValue" => "INVALID"}))
    EphemerisStatus.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    EphemerisStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    EphemerisStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    EphemerisStatus.add_member(:expired, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXPIRED", traits: {"smithy.api#enumValue" => "EXPIRED"}))
    EphemerisStatusList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EphemerisStatus, name: "member"))
    EphemerisType.add_member(:tle, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TLE", traits: {"smithy.api#enumValue" => "TLE"}))
    EphemerisType.add_member(:oem, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OEM", traits: {"smithy.api#enumValue" => "OEM"}))
    EphemerisType.add_member(:az_el, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AZ_EL", traits: {"smithy.api#enumValue" => "AZ_EL"}))
    EphemerisType.add_member(:service_managed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERVICE_MANAGED", traits: {"smithy.api#enumValue" => "SERVICE_MANAGED"}))
    EphemerisTypeDescription.add_member(:tle, Types::EphemerisTypeDescription::Tle, ::Smithy::Schema::Shapes::MemberShape.new(target: EphemerisDescription, name: "tle"))
    EphemerisTypeDescription.add_member(:oem, Types::EphemerisTypeDescription::Oem, ::Smithy::Schema::Shapes::MemberShape.new(target: EphemerisDescription, name: "oem"))
    EphemerisTypeDescription.add_member(:az_el, Types::EphemerisTypeDescription::AzEl, ::Smithy::Schema::Shapes::MemberShape.new(target: EphemerisDescription, name: "azEl"))
    EphemerisTypeDescription.add_member(:unknown, Types::EphemerisTypeDescription::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    EphemerisTypeDescription.type = Types::EphemerisTypeDescription
    Frequency.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "value", traits: {"smithy.api#required" => {}}))
    Frequency.add_member(:units, ::Smithy::Schema::Shapes::MemberShape.new(target: FrequencyUnits, name: "units", traits: {"smithy.api#required" => {}}))
    Frequency.type = Types::Frequency
    FrequencyBandwidth.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "value", traits: {"smithy.api#required" => {}}))
    FrequencyBandwidth.add_member(:units, ::Smithy::Schema::Shapes::MemberShape.new(target: BandwidthUnits, name: "units", traits: {"smithy.api#required" => {}}))
    FrequencyBandwidth.type = Types::FrequencyBandwidth
    FrequencyUnits.add_member(:ghz, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GHZ", traits: {"smithy.api#enumValue" => "GHz"}))
    FrequencyUnits.add_member(:mhz, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MHZ", traits: {"smithy.api#enumValue" => "MHz"}))
    FrequencyUnits.add_member(:khz, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KHZ", traits: {"smithy.api#enumValue" => "kHz"}))
    GetAgentConfigurationRequest.add_member(:agent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "agentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAgentConfigurationRequest.type = Types::GetAgentConfigurationRequest
    GetAgentConfigurationResponse.add_member(:agent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "agentId"))
    GetAgentConfigurationResponse.add_member(:tasking_document, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "taskingDocument"))
    GetAgentConfigurationResponse.type = Types::GetAgentConfigurationResponse
    GetAgentTaskResponseUrlRequest.add_member(:agent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "agentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAgentTaskResponseUrlRequest.add_member(:task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "taskId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAgentTaskResponseUrlRequest.type = Types::GetAgentTaskResponseUrlRequest
    GetAgentTaskResponseUrlResponse.add_member(:agent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "agentId", traits: {"smithy.api#required" => {}}))
    GetAgentTaskResponseUrlResponse.add_member(:task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "taskId", traits: {"smithy.api#required" => {}}))
    GetAgentTaskResponseUrlResponse.add_member(:presigned_log_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "presignedLogUrl", traits: {"smithy.api#required" => {}}))
    GetAgentTaskResponseUrlResponse.type = Types::GetAgentTaskResponseUrlResponse
    GetConfigRequest.add_member(:config_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "configId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetConfigRequest.add_member(:config_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigCapabilityType, name: "configType", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetConfigRequest.type = Types::GetConfigRequest
    GetConfigResponse.add_member(:config_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "configId", traits: {"smithy.api#required" => {}}))
    GetConfigResponse.add_member(:config_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigArn, name: "configArn", traits: {"smithy.api#required" => {}}))
    GetConfigResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#required" => {}}))
    GetConfigResponse.add_member(:config_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigCapabilityType, name: "configType"))
    GetConfigResponse.add_member(:config_data, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigTypeData, name: "configData", traits: {"smithy.api#required" => {}}))
    GetConfigResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    GetConfigResponse.type = Types::GetConfigResponse
    GetDataflowEndpointGroupRequest.add_member(:dataflow_endpoint_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "dataflowEndpointGroupId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDataflowEndpointGroupRequest.type = Types::GetDataflowEndpointGroupRequest
    GetDataflowEndpointGroupResponse.add_member(:dataflow_endpoint_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "dataflowEndpointGroupId"))
    GetDataflowEndpointGroupResponse.add_member(:dataflow_endpoint_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DataflowEndpointGroupArn, name: "dataflowEndpointGroupArn"))
    GetDataflowEndpointGroupResponse.add_member(:endpoints_details, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointDetailsList, name: "endpointsDetails"))
    GetDataflowEndpointGroupResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    GetDataflowEndpointGroupResponse.add_member(:contact_pre_pass_duration_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: DataflowEndpointGroupDurationInSeconds, name: "contactPrePassDurationSeconds"))
    GetDataflowEndpointGroupResponse.add_member(:contact_post_pass_duration_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: DataflowEndpointGroupDurationInSeconds, name: "contactPostPassDurationSeconds"))
    GetDataflowEndpointGroupResponse.type = Types::GetDataflowEndpointGroupResponse
    GetMinuteUsageRequest.add_member(:month, ::Smithy::Schema::Shapes::MemberShape.new(target: Month, name: "month", traits: {"smithy.api#required" => {}}))
    GetMinuteUsageRequest.add_member(:year, ::Smithy::Schema::Shapes::MemberShape.new(target: Year, name: "year", traits: {"smithy.api#required" => {}}))
    GetMinuteUsageRequest.type = Types::GetMinuteUsageRequest
    GetMinuteUsageResponse.add_member(:is_reserved_minutes_customer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isReservedMinutesCustomer"))
    GetMinuteUsageResponse.add_member(:total_reserved_minute_allocation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "totalReservedMinuteAllocation"))
    GetMinuteUsageResponse.add_member(:upcoming_minutes_scheduled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "upcomingMinutesScheduled"))
    GetMinuteUsageResponse.add_member(:total_scheduled_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "totalScheduledMinutes"))
    GetMinuteUsageResponse.add_member(:estimated_minutes_remaining, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "estimatedMinutesRemaining"))
    GetMinuteUsageResponse.type = Types::GetMinuteUsageResponse
    GetMissionProfileRequest.add_member(:mission_profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "missionProfileId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMissionProfileRequest.type = Types::GetMissionProfileRequest
    GetMissionProfileResponse.add_member(:mission_profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "missionProfileId"))
    GetMissionProfileResponse.add_member(:mission_profile_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: MissionProfileArn, name: "missionProfileArn"))
    GetMissionProfileResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SafeName, name: "name"))
    GetMissionProfileResponse.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSRegion, name: "region"))
    GetMissionProfileResponse.add_member(:contact_pre_pass_duration_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: DurationInSeconds, name: "contactPrePassDurationSeconds"))
    GetMissionProfileResponse.add_member(:contact_post_pass_duration_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: DurationInSeconds, name: "contactPostPassDurationSeconds"))
    GetMissionProfileResponse.add_member(:minimum_viable_contact_duration_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveDurationInSeconds, name: "minimumViableContactDurationSeconds"))
    GetMissionProfileResponse.add_member(:dataflow_edges, ::Smithy::Schema::Shapes::MemberShape.new(target: DataflowEdgeList, name: "dataflowEdges"))
    GetMissionProfileResponse.add_member(:tracking_config_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigArn, name: "trackingConfigArn"))
    GetMissionProfileResponse.add_member(:telemetry_sink_config_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigArn, name: "telemetrySinkConfigArn"))
    GetMissionProfileResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    GetMissionProfileResponse.add_member(:streams_kms_key, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKey, name: "streamsKmsKey"))
    GetMissionProfileResponse.add_member(:streams_kms_role, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "streamsKmsRole"))
    GetMissionProfileResponse.type = Types::GetMissionProfileResponse
    GetSatelliteOutput.add_member(:satellite_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "satelliteId"))
    GetSatelliteOutput.add_member(:satellite_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SatelliteArn, name: "satelliteArn"))
    GetSatelliteOutput.add_member(:norad_satellite_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NoradSatelliteID, name: "noradSatelliteID", traits: {"smithy.api#default" => 0}))
    GetSatelliteOutput.add_member(:ground_stations, ::Smithy::Schema::Shapes::MemberShape.new(target: GroundStationIdList, name: "groundStations"))
    GetSatelliteOutput.add_member(:current_ephemeris, ::Smithy::Schema::Shapes::MemberShape.new(target: EphemerisMetaData, name: "currentEphemeris"))
    GetSatelliteOutput.type = Types::GetSatelliteOutput
    GetSatelliteRequest.add_member(:satellite_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "satelliteId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSatelliteRequest.type = Types::GetSatelliteRequest
    GroundStationData.add_member(:ground_station_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GroundStationName, name: "groundStationId"))
    GroundStationData.add_member(:ground_station_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GroundStationName, name: "groundStationName"))
    GroundStationData.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSRegion, name: "region"))
    GroundStationData.type = Types::GroundStationData
    GroundStationIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GroundStationName, name: "member"))
    GroundStationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GroundStationData, name: "member"))
    GroundStationReservationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GroundStationReservationListItem, name: "member"))
    GroundStationReservationListItem.add_member(:reservation_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ReservationType, name: "reservationType", traits: {"smithy.api#required" => {}}))
    GroundStationReservationListItem.add_member(:ground_station_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GroundStationName, name: "groundStationId", traits: {"smithy.api#required" => {}}))
    GroundStationReservationListItem.add_member(:antenna_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AntennaName, name: "antennaName", traits: {"smithy.api#required" => {}}))
    GroundStationReservationListItem.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "startTime", traits: {"smithy.api#required" => {}}))
    GroundStationReservationListItem.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "endTime", traits: {"smithy.api#required" => {}}))
    GroundStationReservationListItem.add_member(:reservation_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ReservationDetails, name: "reservationDetails", traits: {"smithy.api#required" => {}}))
    GroundStationReservationListItem.type = Types::GroundStationReservationListItem
    ISO8601TimeRange.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "startTime", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    ISO8601TimeRange.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "endTime", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    ISO8601TimeRange.type = Types::ISO8601TimeRange
    IntegerRange.add_member(:minimum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "minimum", traits: {"smithy.api#required" => {}}))
    IntegerRange.add_member(:maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maximum", traits: {"smithy.api#required" => {}}))
    IntegerRange.type = Types::IntegerRange
    InvalidParameterException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    InvalidParameterException.add_member(:parameter_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "parameterName"))
    InvalidParameterException.type = Types::InvalidParameterException
    IpAddressList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: IpV4Address, name: "member"))
    KinesisDataStreamData.add_member(:kinesis_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "kinesisRoleArn", traits: {"smithy.api#required" => {}}))
    KinesisDataStreamData.add_member(:kinesis_data_stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KinesisDataStreamArn, name: "kinesisDataStreamArn", traits: {"smithy.api#required" => {}}))
    KinesisDataStreamData.type = Types::KinesisDataStreamData
    KmsKey.add_member(:kms_key_arn, Types::KmsKey::KmsKeyArn, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyArn, name: "kmsKeyArn"))
    KmsKey.add_member(:kms_alias_arn, Types::KmsKey::KmsAliasArn, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyAliasArn, name: "kmsAliasArn"))
    KmsKey.add_member(:kms_alias_name, Types::KmsKey::KmsAliasName, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyAliasName, name: "kmsAliasName"))
    KmsKey.add_member(:unknown, Types::KmsKey::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    KmsKey.type = Types::KmsKey
    ListAntennasRequest.add_member(:ground_station_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GroundStationName, name: "groundStationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAntennasRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationMaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListAntennasRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAntennasRequest.type = Types::ListAntennasRequest
    ListAntennasResponse.add_member(:antenna_list, ::Smithy::Schema::Shapes::MemberShape.new(target: AntennaList, name: "antennaList", traits: {"smithy.api#required" => {}}))
    ListAntennasResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListAntennasResponse.type = Types::ListAntennasResponse
    ListConfigsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationMaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListConfigsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListConfigsRequest.type = Types::ListConfigsRequest
    ListConfigsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListConfigsResponse.add_member(:config_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigList, name: "configList"))
    ListConfigsResponse.type = Types::ListConfigsResponse
    ListContactVersionsRequest.add_member(:contact_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "contactId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListContactVersionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationMaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListContactVersionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListContactVersionsRequest.type = Types::ListContactVersionsRequest
    ListContactVersionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListContactVersionsResponse.add_member(:contact_versions_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactVersionsList, name: "contactVersionsList"))
    ListContactVersionsResponse.type = Types::ListContactVersionsResponse
    ListContactsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationMaxResults, name: "maxResults"))
    ListContactsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListContactsRequest.add_member(:status_list, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusList, name: "statusList", traits: {"smithy.api#required" => {}}))
    ListContactsRequest.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "startTime", traits: {"smithy.api#required" => {}}))
    ListContactsRequest.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "endTime", traits: {"smithy.api#required" => {}}))
    ListContactsRequest.add_member(:ground_station, ::Smithy::Schema::Shapes::MemberShape.new(target: GroundStationName, name: "groundStation"))
    ListContactsRequest.add_member(:satellite_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SatelliteArn, name: "satelliteArn"))
    ListContactsRequest.add_member(:mission_profile_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: MissionProfileArn, name: "missionProfileArn"))
    ListContactsRequest.add_member(:ephemeris, ::Smithy::Schema::Shapes::MemberShape.new(target: EphemerisFilter, name: "ephemeris"))
    ListContactsRequest.type = Types::ListContactsRequest
    ListContactsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListContactsResponse.add_member(:contact_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactList, name: "contactList"))
    ListContactsResponse.type = Types::ListContactsResponse
    ListDataflowEndpointGroupsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationMaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListDataflowEndpointGroupsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListDataflowEndpointGroupsRequest.type = Types::ListDataflowEndpointGroupsRequest
    ListDataflowEndpointGroupsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListDataflowEndpointGroupsResponse.add_member(:dataflow_endpoint_group_list, ::Smithy::Schema::Shapes::MemberShape.new(target: DataflowEndpointGroupList, name: "dataflowEndpointGroupList"))
    ListDataflowEndpointGroupsResponse.type = Types::ListDataflowEndpointGroupsResponse
    ListEphemeridesRequest.add_member(:satellite_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "satelliteId"))
    ListEphemeridesRequest.add_member(:ephemeris_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EphemerisType, name: "ephemerisType"))
    ListEphemeridesRequest.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "startTime", traits: {"smithy.api#required" => {}}))
    ListEphemeridesRequest.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "endTime", traits: {"smithy.api#required" => {}}))
    ListEphemeridesRequest.add_member(:status_list, ::Smithy::Schema::Shapes::MemberShape.new(target: EphemerisStatusList, name: "statusList"))
    ListEphemeridesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationMaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListEphemeridesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListEphemeridesRequest.type = Types::ListEphemeridesRequest
    ListEphemeridesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListEphemeridesResponse.add_member(:ephemerides, ::Smithy::Schema::Shapes::MemberShape.new(target: EphemeridesList, name: "ephemerides"))
    ListEphemeridesResponse.type = Types::ListEphemeridesResponse
    ListGroundStationReservationsRequest.add_member(:ground_station_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GroundStationName, name: "groundStationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListGroundStationReservationsRequest.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "startTime", traits: {"smithy.api#httpQuery" => "startTime", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "epoch-seconds"}))
    ListGroundStationReservationsRequest.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "endTime", traits: {"smithy.api#httpQuery" => "endTime", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "epoch-seconds"}))
    ListGroundStationReservationsRequest.add_member(:reservation_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ReservationTypeFilterList, name: "reservationTypes", traits: {"smithy.api#httpQuery" => "reservationTypes"}))
    ListGroundStationReservationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationMaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListGroundStationReservationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListGroundStationReservationsRequest.type = Types::ListGroundStationReservationsRequest
    ListGroundStationReservationsResponse.add_member(:reservation_list, ::Smithy::Schema::Shapes::MemberShape.new(target: GroundStationReservationList, name: "reservationList", traits: {"smithy.api#required" => {}}))
    ListGroundStationReservationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListGroundStationReservationsResponse.type = Types::ListGroundStationReservationsResponse
    ListGroundStationsInput.add_member(:satellite_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "satelliteId", traits: {"smithy.api#httpQuery" => "satelliteId"}))
    ListGroundStationsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationMaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListGroundStationsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListGroundStationsInput.type = Types::ListGroundStationsInput
    ListGroundStationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListGroundStationsResponse.add_member(:ground_station_list, ::Smithy::Schema::Shapes::MemberShape.new(target: GroundStationList, name: "groundStationList"))
    ListGroundStationsResponse.type = Types::ListGroundStationsResponse
    ListMissionProfilesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationMaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListMissionProfilesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListMissionProfilesRequest.type = Types::ListMissionProfilesRequest
    ListMissionProfilesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListMissionProfilesResponse.add_member(:mission_profile_list, ::Smithy::Schema::Shapes::MemberShape.new(target: MissionProfileList, name: "missionProfileList"))
    ListMissionProfilesResponse.type = Types::ListMissionProfilesResponse
    ListSatellitesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationMaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListSatellitesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListSatellitesRequest.type = Types::ListSatellitesRequest
    ListSatellitesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListSatellitesResponse.add_member(:satellites, ::Smithy::Schema::Shapes::MemberShape.new(target: SatelliteList, name: "satellites"))
    ListSatellitesResponse.type = Types::ListSatellitesResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AnyArn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    MaintenanceReservationDetails.add_member(:maintenance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceType, name: "maintenanceType", traits: {"smithy.api#required" => {}}))
    MaintenanceReservationDetails.type = Types::MaintenanceReservationDetails
    MaintenanceType.add_member(:planned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PLANNED", traits: {"smithy.api#enumValue" => "PLANNED"}))
    MaintenanceType.add_member(:unplanned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNPLANNED", traits: {"smithy.api#enumValue" => "UNPLANNED"}))
    MissionProfileList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MissionProfileListItem, name: "member"))
    MissionProfileListItem.add_member(:mission_profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "missionProfileId"))
    MissionProfileListItem.add_member(:mission_profile_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: MissionProfileArn, name: "missionProfileArn"))
    MissionProfileListItem.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSRegion, name: "region"))
    MissionProfileListItem.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SafeName, name: "name"))
    MissionProfileListItem.type = Types::MissionProfileListItem
    OEMEphemeris.add_member(:s3_object, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Object, name: "s3Object"))
    OEMEphemeris.add_member(:oem_data, ::Smithy::Schema::Shapes::MemberShape.new(target: UnboundedString, name: "oemData"))
    OEMEphemeris.type = Types::OEMEphemeris
    OemProgramTrackSettings.add_member(:ephemeris_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "ephemerisId", traits: {"smithy.api#required" => {}}))
    OemProgramTrackSettings.type = Types::OemProgramTrackSettings
    Polarization.add_member(:right_hand, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RIGHT_HAND", traits: {"smithy.api#enumValue" => "RIGHT_HAND"}))
    Polarization.add_member(:left_hand, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LEFT_HAND", traits: {"smithy.api#enumValue" => "LEFT_HAND"}))
    Polarization.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    ProgramTrackSettings.add_member(:az_el, Types::ProgramTrackSettings::AzEl, ::Smithy::Schema::Shapes::MemberShape.new(target: AzElProgramTrackSettings, name: "azEl"))
    ProgramTrackSettings.add_member(:oem, Types::ProgramTrackSettings::Oem, ::Smithy::Schema::Shapes::MemberShape.new(target: OemProgramTrackSettings, name: "oem"))
    ProgramTrackSettings.add_member(:tle, Types::ProgramTrackSettings::Tle, ::Smithy::Schema::Shapes::MemberShape.new(target: TleProgramTrackSettings, name: "tle"))
    ProgramTrackSettings.add_member(:unknown, Types::ProgramTrackSettings::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ProgramTrackSettings.type = Types::ProgramTrackSettings
    RangedConnectionDetails.add_member(:socket_address, ::Smithy::Schema::Shapes::MemberShape.new(target: RangedSocketAddress, name: "socketAddress", traits: {"smithy.api#required" => {}}))
    RangedConnectionDetails.add_member(:mtu, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "mtu", traits: {"smithy.api#range" => {"min" => 1400, "max" => 1500}}))
    RangedConnectionDetails.type = Types::RangedConnectionDetails
    RangedSocketAddress.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: IpV4Address, name: "name", traits: {"smithy.api#required" => {}}))
    RangedSocketAddress.add_member(:port_range, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerRange, name: "portRange", traits: {"smithy.api#required" => {}}))
    RangedSocketAddress.type = Types::RangedSocketAddress
    RegisterAgentRequest.add_member(:discovery_data, ::Smithy::Schema::Shapes::MemberShape.new(target: DiscoveryData, name: "discoveryData", traits: {"smithy.api#required" => {}}))
    RegisterAgentRequest.add_member(:agent_details, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentDetails, name: "agentDetails", traits: {"smithy.api#required" => {}}))
    RegisterAgentRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    RegisterAgentRequest.type = Types::RegisterAgentRequest
    RegisterAgentResponse.add_member(:agent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "agentId"))
    RegisterAgentResponse.type = Types::RegisterAgentResponse
    ReservationDetails.add_member(:maintenance, Types::ReservationDetails::Maintenance, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceReservationDetails, name: "maintenance"))
    ReservationDetails.add_member(:contact, Types::ReservationDetails::Contact, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactReservationDetails, name: "contact"))
    ReservationDetails.add_member(:unknown, Types::ReservationDetails::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ReservationDetails.type = Types::ReservationDetails
    ReservationType.add_member(:maintenance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MAINTENANCE", traits: {"smithy.api#enumValue" => "MAINTENANCE"}))
    ReservationType.add_member(:contact, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTACT", traits: {"smithy.api#enumValue" => "CONTACT"}))
    ReservationTypeFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ReservationType, name: "member"))
    ReserveContactOutput.add_member(:contact_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "contactId"))
    ReserveContactOutput.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionId, name: "versionId"))
    ReserveContactOutput.type = Types::ReserveContactOutput
    ReserveContactRequest.add_member(:mission_profile_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: MissionProfileArn, name: "missionProfileArn", traits: {"smithy.api#required" => {}}))
    ReserveContactRequest.add_member(:satellite_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SatelliteArn, name: "satelliteArn"))
    ReserveContactRequest.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "startTime", traits: {"smithy.api#required" => {}}))
    ReserveContactRequest.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "endTime", traits: {"smithy.api#required" => {}}))
    ReserveContactRequest.add_member(:ground_station, ::Smithy::Schema::Shapes::MemberShape.new(target: GroundStationName, name: "groundStation", traits: {"smithy.api#required" => {}}))
    ReserveContactRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    ReserveContactRequest.add_member(:tracking_overrides, ::Smithy::Schema::Shapes::MemberShape.new(target: TrackingOverrides, name: "trackingOverrides"))
    ReserveContactRequest.type = Types::ReserveContactRequest
    ResourceInUseException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    ResourceInUseException.type = Types::ResourceInUseException
    ResourceLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    ResourceLimitExceededException.add_member(:parameter_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "parameterName"))
    ResourceLimitExceededException.type = Types::ResourceLimitExceededException
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    S3Object.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketName, name: "bucket"))
    S3Object.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ObjectKey, name: "key"))
    S3Object.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: S3VersionId, name: "version"))
    S3Object.type = Types::S3Object
    S3RecordingConfig.add_member(:bucket_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketArn, name: "bucketArn", traits: {"smithy.api#required" => {}}))
    S3RecordingConfig.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "roleArn", traits: {"smithy.api#required" => {}}))
    S3RecordingConfig.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: S3KeyPrefix, name: "prefix"))
    S3RecordingConfig.type = Types::S3RecordingConfig
    S3RecordingDetails.add_member(:bucket_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketArn, name: "bucketArn"))
    S3RecordingDetails.add_member(:key_template, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "keyTemplate"))
    S3RecordingDetails.type = Types::S3RecordingDetails
    SatelliteList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SatelliteListItem, name: "member"))
    SatelliteListItem.add_member(:satellite_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "satelliteId"))
    SatelliteListItem.add_member(:satellite_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SatelliteArn, name: "satelliteArn"))
    SatelliteListItem.add_member(:norad_satellite_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NoradSatelliteID, name: "noradSatelliteID", traits: {"smithy.api#default" => 0}))
    SatelliteListItem.add_member(:ground_stations, ::Smithy::Schema::Shapes::MemberShape.new(target: GroundStationIdList, name: "groundStations"))
    SatelliteListItem.add_member(:current_ephemeris, ::Smithy::Schema::Shapes::MemberShape.new(target: EphemerisMetaData, name: "currentEphemeris"))
    SatelliteListItem.type = Types::SatelliteListItem
    SecurityDetails.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetList, name: "subnetIds", traits: {"smithy.api#required" => {}}))
    SecurityDetails.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupIdList, name: "securityGroupIds", traits: {"smithy.api#required" => {}}))
    SecurityDetails.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "roleArn", traits: {"smithy.api#required" => {}}))
    SecurityDetails.type = Types::SecurityDetails
    SecurityGroupIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    ServiceQuotaExceededException.add_member(:parameter_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "parameterName"))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SignatureMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key"))
    SignatureMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "value"))
    SocketAddress.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#required" => {}}))
    SocketAddress.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "port", traits: {"smithy.api#required" => {}}))
    SocketAddress.type = Types::SocketAddress
    Source.add_member(:config_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigCapabilityType, name: "configType"))
    Source.add_member(:config_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "configId"))
    Source.add_member(:config_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigDetails, name: "configDetails"))
    Source.add_member(:dataflow_source_region, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "dataflowSourceRegion"))
    Source.type = Types::Source
    SpectrumConfig.add_member(:center_frequency, ::Smithy::Schema::Shapes::MemberShape.new(target: Frequency, name: "centerFrequency", traits: {"smithy.api#required" => {}}))
    SpectrumConfig.add_member(:bandwidth, ::Smithy::Schema::Shapes::MemberShape.new(target: FrequencyBandwidth, name: "bandwidth", traits: {"smithy.api#required" => {}}))
    SpectrumConfig.add_member(:polarization, ::Smithy::Schema::Shapes::MemberShape.new(target: Polarization, name: "polarization", traits: {"smithy.api#addedDefault" => {}, "smithy.api#clientOptional" => {}, "smithy.api#default" => "NONE"}))
    SpectrumConfig.type = Types::SpectrumConfig
    StatusList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactStatus, name: "member"))
    SubnetList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    TLEData.add_member(:tle_line1, ::Smithy::Schema::Shapes::MemberShape.new(target: TleLineOne, name: "tleLine1", traits: {"smithy.api#required" => {}}))
    TLEData.add_member(:tle_line2, ::Smithy::Schema::Shapes::MemberShape.new(target: TleLineTwo, name: "tleLine2", traits: {"smithy.api#required" => {}}))
    TLEData.add_member(:valid_time_range, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeRange, name: "validTimeRange", traits: {"smithy.api#required" => {}}))
    TLEData.type = Types::TLEData
    TLEDataList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TLEData, name: "member"))
    TLEEphemeris.add_member(:s3_object, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Object, name: "s3Object"))
    TLEEphemeris.add_member(:tle_data, ::Smithy::Schema::Shapes::MemberShape.new(target: TLEDataList, name: "tleData"))
    TLEEphemeris.type = Types::TLEEphemeris
    TagKeys.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: UnboundedString, name: "member"))
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AnyArn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TagsMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key"))
    TagsMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "value"))
    TelemetrySinkConfig.add_member(:telemetry_sink_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TelemetrySinkType, name: "telemetrySinkType", traits: {"smithy.api#required" => {}}))
    TelemetrySinkConfig.add_member(:telemetry_sink_data, ::Smithy::Schema::Shapes::MemberShape.new(target: TelemetrySinkData, name: "telemetrySinkData", traits: {"smithy.api#required" => {}}))
    TelemetrySinkConfig.type = Types::TelemetrySinkConfig
    TelemetrySinkData.add_member(:kinesis_data_stream_data, Types::TelemetrySinkData::KinesisDataStreamData, ::Smithy::Schema::Shapes::MemberShape.new(target: KinesisDataStreamData, name: "kinesisDataStreamData"))
    TelemetrySinkData.add_member(:unknown, Types::TelemetrySinkData::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    TelemetrySinkData.type = Types::TelemetrySinkData
    TelemetrySinkType.add_member(:kinesis_data_stream, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KINESIS_DATA_STREAM", traits: {"smithy.api#enumValue" => "KINESIS_DATA_STREAM"}))
    TimeAzEl.add_member(:dt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "dt", traits: {"smithy.api#required" => {}}))
    TimeAzEl.add_member(:az, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "az", traits: {"smithy.api#required" => {}}))
    TimeAzEl.add_member(:el, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "el", traits: {"smithy.api#required" => {}}))
    TimeAzEl.type = Types::TimeAzEl
    TimeAzElList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeAzEl, name: "member"))
    TimeRange.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "startTime", traits: {"smithy.api#required" => {}}))
    TimeRange.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "endTime", traits: {"smithy.api#required" => {}}))
    TimeRange.type = Types::TimeRange
    TleProgramTrackSettings.add_member(:ephemeris_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "ephemerisId", traits: {"smithy.api#required" => {}}))
    TleProgramTrackSettings.type = Types::TleProgramTrackSettings
    TrackingConfig.add_member(:autotrack, ::Smithy::Schema::Shapes::MemberShape.new(target: Criticality, name: "autotrack", traits: {"smithy.api#required" => {}}))
    TrackingConfig.type = Types::TrackingConfig
    TrackingOverrides.add_member(:program_track_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: ProgramTrackSettings, name: "programTrackSettings"))
    TrackingOverrides.type = Types::TrackingOverrides
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AnyArn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeys, name: "tagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateAgentStatusRequest.add_member(:agent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "agentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAgentStatusRequest.add_member(:task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "taskId", traits: {"smithy.api#required" => {}}))
    UpdateAgentStatusRequest.add_member(:aggregate_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AggregateStatus, name: "aggregateStatus", traits: {"smithy.api#required" => {}}))
    UpdateAgentStatusRequest.add_member(:component_statuses, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentStatusList, name: "componentStatuses", traits: {"smithy.api#required" => {}}))
    UpdateAgentStatusRequest.type = Types::UpdateAgentStatusRequest
    UpdateAgentStatusResponse.add_member(:agent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "agentId", traits: {"smithy.api#required" => {}}))
    UpdateAgentStatusResponse.type = Types::UpdateAgentStatusResponse
    UpdateConfigOutput.add_member(:config_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "configId"))
    UpdateConfigOutput.add_member(:config_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigCapabilityType, name: "configType"))
    UpdateConfigOutput.add_member(:config_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigArn, name: "configArn"))
    UpdateConfigOutput.type = Types::UpdateConfigOutput
    UpdateConfigRequest.add_member(:config_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "configId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateConfigRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SafeName, name: "name", traits: {"smithy.api#required" => {}}))
    UpdateConfigRequest.add_member(:config_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigCapabilityType, name: "configType", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateConfigRequest.add_member(:config_data, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigTypeData, name: "configData", traits: {"smithy.api#required" => {}}))
    UpdateConfigRequest.type = Types::UpdateConfigRequest
    UpdateContactRequest.add_member(:contact_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "contactId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateContactRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateContactRequest.add_member(:tracking_overrides, ::Smithy::Schema::Shapes::MemberShape.new(target: TrackingOverrides, name: "trackingOverrides"))
    UpdateContactRequest.add_member(:satellite_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SatelliteArn, name: "satelliteArn"))
    UpdateContactRequest.type = Types::UpdateContactRequest
    UpdateContactResponse.add_member(:contact_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "contactId"))
    UpdateContactResponse.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionId, name: "versionId"))
    UpdateContactResponse.type = Types::UpdateContactResponse
    UpdateEphemerisOutput.add_member(:ephemeris_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "ephemerisId"))
    UpdateEphemerisOutput.type = Types::UpdateEphemerisOutput
    UpdateEphemerisRequest.add_member(:ephemeris_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "ephemerisId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateEphemerisRequest.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "enabled", traits: {"smithy.api#required" => {}}))
    UpdateEphemerisRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SafeName, name: "name"))
    UpdateEphemerisRequest.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: EphemerisPriority, name: "priority"))
    UpdateEphemerisRequest.type = Types::UpdateEphemerisRequest
    UpdateMissionProfileOutput.add_member(:mission_profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "missionProfileId"))
    UpdateMissionProfileOutput.type = Types::UpdateMissionProfileOutput
    UpdateMissionProfileRequest.add_member(:mission_profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "missionProfileId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateMissionProfileRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SafeName, name: "name"))
    UpdateMissionProfileRequest.add_member(:contact_pre_pass_duration_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: DurationInSeconds, name: "contactPrePassDurationSeconds"))
    UpdateMissionProfileRequest.add_member(:contact_post_pass_duration_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: DurationInSeconds, name: "contactPostPassDurationSeconds"))
    UpdateMissionProfileRequest.add_member(:minimum_viable_contact_duration_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveDurationInSeconds, name: "minimumViableContactDurationSeconds"))
    UpdateMissionProfileRequest.add_member(:dataflow_edges, ::Smithy::Schema::Shapes::MemberShape.new(target: DataflowEdgeList, name: "dataflowEdges"))
    UpdateMissionProfileRequest.add_member(:tracking_config_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigArn, name: "trackingConfigArn"))
    UpdateMissionProfileRequest.add_member(:telemetry_sink_config_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigArn, name: "telemetrySinkConfigArn"))
    UpdateMissionProfileRequest.add_member(:streams_kms_key, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKey, name: "streamsKmsKey"))
    UpdateMissionProfileRequest.add_member(:streams_kms_role, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "streamsKmsRole"))
    UpdateMissionProfileRequest.type = Types::UpdateMissionProfileRequest
    UplinkAwsGroundStationAgentEndpoint.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SafeName, name: "name", traits: {"smithy.api#required" => {}}))
    UplinkAwsGroundStationAgentEndpoint.add_member(:dataflow_details, ::Smithy::Schema::Shapes::MemberShape.new(target: UplinkDataflowDetails, name: "dataflowDetails", traits: {"smithy.api#required" => {}}))
    UplinkAwsGroundStationAgentEndpoint.type = Types::UplinkAwsGroundStationAgentEndpoint
    UplinkAwsGroundStationAgentEndpointDetails.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SafeName, name: "name", traits: {"smithy.api#required" => {}}))
    UplinkAwsGroundStationAgentEndpointDetails.add_member(:dataflow_details, ::Smithy::Schema::Shapes::MemberShape.new(target: UplinkDataflowDetails, name: "dataflowDetails", traits: {"smithy.api#required" => {}}))
    UplinkAwsGroundStationAgentEndpointDetails.add_member(:agent_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentStatus, name: "agentStatus"))
    UplinkAwsGroundStationAgentEndpointDetails.add_member(:audit_results, ::Smithy::Schema::Shapes::MemberShape.new(target: AuditResults, name: "auditResults"))
    UplinkAwsGroundStationAgentEndpointDetails.type = Types::UplinkAwsGroundStationAgentEndpointDetails
    UplinkConnectionDetails.add_member(:ingress_address_and_port, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionDetails, name: "ingressAddressAndPort", traits: {"smithy.api#required" => {}}))
    UplinkConnectionDetails.add_member(:agent_ip_and_port_address, ::Smithy::Schema::Shapes::MemberShape.new(target: RangedConnectionDetails, name: "agentIpAndPortAddress", traits: {"smithy.api#required" => {}}))
    UplinkConnectionDetails.type = Types::UplinkConnectionDetails
    UplinkDataflowDetails.add_member(:agent_connection_details, Types::UplinkDataflowDetails::AgentConnectionDetails, ::Smithy::Schema::Shapes::MemberShape.new(target: UplinkConnectionDetails, name: "agentConnectionDetails"))
    UplinkDataflowDetails.add_member(:unknown, Types::UplinkDataflowDetails::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    UplinkDataflowDetails.type = Types::UplinkDataflowDetails
    UplinkEchoConfig.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "enabled", traits: {"smithy.api#required" => {}}))
    UplinkEchoConfig.add_member(:antenna_uplink_config_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigArn, name: "antennaUplinkConfigArn", traits: {"smithy.api#required" => {}}))
    UplinkEchoConfig.type = Types::UplinkEchoConfig
    UplinkSpectrumConfig.add_member(:center_frequency, ::Smithy::Schema::Shapes::MemberShape.new(target: Frequency, name: "centerFrequency", traits: {"smithy.api#required" => {}}))
    UplinkSpectrumConfig.add_member(:polarization, ::Smithy::Schema::Shapes::MemberShape.new(target: Polarization, name: "polarization"))
    UplinkSpectrumConfig.type = Types::UplinkSpectrumConfig
    VersionFailureReasonCode.add_member(:internal_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERNAL_ERROR", traits: {"smithy.api#enumValue" => "INTERNAL_ERROR"}))
    VersionFailureReasonCode.add_member(:invalid_satellite_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_SATELLITE_ARN", traits: {"smithy.api#enumValue" => "INVALID_SATELLITE_ARN"}))
    VersionFailureReasonCode.add_member(:invalid_update_contact_request, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_UPDATE_CONTACT_REQUEST", traits: {"smithy.api#enumValue" => "INVALID_UPDATE_CONTACT_REQUEST"}))
    VersionFailureReasonCode.add_member(:ephemeris_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EPHEMERIS_NOT_FOUND", traits: {"smithy.api#enumValue" => "EPHEMERIS_NOT_FOUND"}))
    VersionFailureReasonCode.add_member(:ephemeris_time_range_invalid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EPHEMERIS_TIME_RANGE_INVALID", traits: {"smithy.api#enumValue" => "EPHEMERIS_TIME_RANGE_INVALID"}))
    VersionFailureReasonCode.add_member(:ephemeris_not_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EPHEMERIS_NOT_ENABLED", traits: {"smithy.api#enumValue" => "EPHEMERIS_NOT_ENABLED"}))
    VersionFailureReasonCode.add_member(:satellite_does_not_match_ephemeris, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SATELLITE_DOES_NOT_MATCH_EPHEMERIS", traits: {"smithy.api#enumValue" => "SATELLITE_DOES_NOT_MATCH_EPHEMERIS"}))
    VersionFailureReasonCode.add_member(:not_onboarded_to_azel_ephemeris, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_ONBOARDED_TO_AZEL_EPHEMERIS", traits: {"smithy.api#enumValue" => "NOT_ONBOARDED_TO_AZEL_EPHEMERIS"}))
    VersionFailureReasonCode.add_member(:azel_ephemeris_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AZEL_EPHEMERIS_NOT_FOUND", traits: {"smithy.api#enumValue" => "AZEL_EPHEMERIS_NOT_FOUND"}))
    VersionFailureReasonCode.add_member(:azel_ephemeris_wrong_ground_station, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AZEL_EPHEMERIS_WRONG_GROUND_STATION", traits: {"smithy.api#enumValue" => "AZEL_EPHEMERIS_WRONG_GROUND_STATION"}))
    VersionFailureReasonCode.add_member(:azel_ephemeris_invalid_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AZEL_EPHEMERIS_INVALID_STATUS", traits: {"smithy.api#enumValue" => "AZEL_EPHEMERIS_INVALID_STATUS"}))
    VersionFailureReasonCode.add_member(:azel_ephemeris_time_range_invalid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AZEL_EPHEMERIS_TIME_RANGE_INVALID", traits: {"smithy.api#enumValue" => "AZEL_EPHEMERIS_TIME_RANGE_INVALID"}))
    VersionFailureReasonCodes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionFailureReasonCode, name: "member"))
    VersionStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    VersionStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    VersionStatus.add_member(:superseded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUPERSEDED", traits: {"smithy.api#enumValue" => "SUPERSEDED"}))
    VersionStatus.add_member(:failed_to_update, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED_TO_UPDATE", traits: {"smithy.api#enumValue" => "FAILED_TO_UPDATE"}))
    VersionStringList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionString, name: "member"))

    GroundStation = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.groundstation#GroundStation"
      service.name = "GroundStation"
      service.version = "2019-05-23"
      service.traits = {"aws.api#service" => {"sdkId" => "GroundStation", "cloudFormationName" => "AWSGroundStation", "arnNamespace" => "groundstation", "cloudTrailEventSource" => "groundstation.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "groundstation"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "AWS Ground Station", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://groundstation-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://groundstation-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://groundstation.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://groundstation.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 13, "nodes" => "/////wAAAAH/////AAAAAAAAAAwAAAADAAAAAQAAAAQF9eELAAAAAgAAAAUF9eELAAAAAwAAAAgAAAAGAAAABAAAAAcF9eEKAAAABQX14QgF9eEJAAAABAAAAAoAAAAJAAAABgX14QYF9eEHAAAABQAAAAsF9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAANAAAABAX14QIF9eED"}}
      service.add_operation(:cancel_contact, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.groundstation#CancelContact"
        operation.name = "CancelContact"
        operation.input = CancelContactRequest
        operation.output = CancelContactOutput
        operation.errors << DependencyException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/contact/{contactId}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.groundstation#CreateConfig"
        operation.name = "CreateConfig"
        operation.input = CreateConfigRequest
        operation.output = CreateConfigOutput
        operation.errors << DependencyException
        operation.errors << InvalidParameterException
        operation.errors << ResourceLimitExceededException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/config"}}
      end)
      service.add_operation(:create_dataflow_endpoint_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.groundstation#CreateDataflowEndpointGroup"
        operation.name = "CreateDataflowEndpointGroup"
        operation.input = CreateDataflowEndpointGroupRequest
        operation.output = CreateDataflowEndpointGroupOutput
        operation.errors << DependencyException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/dataflowEndpointGroup"}}
      end)
      service.add_operation(:create_dataflow_endpoint_group_v2, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.groundstation#CreateDataflowEndpointGroupV2"
        operation.name = "CreateDataflowEndpointGroupV2"
        operation.input = CreateDataflowEndpointGroupV2Request
        operation.output = CreateDataflowEndpointGroupV2Response
        operation.errors << DependencyException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/dataflowEndpointGroupV2"}}
      end)
      service.add_operation(:create_ephemeris, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.groundstation#CreateEphemeris"
        operation.name = "CreateEphemeris"
        operation.input = CreateEphemerisRequest
        operation.output = CreateEphemerisOutput
        operation.errors << DependencyException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ephemeris"}}
      end)
      service.add_operation(:create_mission_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.groundstation#CreateMissionProfile"
        operation.name = "CreateMissionProfile"
        operation.input = CreateMissionProfileRequest
        operation.output = CreateMissionProfileOutput
        operation.errors << DependencyException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/missionprofile"}}
      end)
      service.add_operation(:delete_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.groundstation#DeleteConfig"
        operation.name = "DeleteConfig"
        operation.input = DeleteConfigRequest
        operation.output = DeleteConfigOutput
        operation.errors << DependencyException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/config/{configType}/{configId}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_dataflow_endpoint_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.groundstation#DeleteDataflowEndpointGroup"
        operation.name = "DeleteDataflowEndpointGroup"
        operation.input = DeleteDataflowEndpointGroupRequest
        operation.output = DeleteDataflowEndpointGroupOutput
        operation.errors << DependencyException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/dataflowEndpointGroup/{dataflowEndpointGroupId}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_ephemeris, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.groundstation#DeleteEphemeris"
        operation.name = "DeleteEphemeris"
        operation.input = DeleteEphemerisRequest
        operation.output = DeleteEphemerisOutput
        operation.errors << DependencyException
        operation.errors << InvalidParameterException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/ephemeris/{ephemerisId}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_mission_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.groundstation#DeleteMissionProfile"
        operation.name = "DeleteMissionProfile"
        operation.input = DeleteMissionProfileRequest
        operation.output = DeleteMissionProfileOutput
        operation.errors << DependencyException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/missionprofile/{missionProfileId}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_contact, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.groundstation#DescribeContact"
        operation.name = "DescribeContact"
        operation.input = DescribeContactRequest
        operation.output = DescribeContactResponse
        operation.errors << DependencyException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/contact/{contactId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_contact_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.groundstation#DescribeContactVersion"
        operation.name = "DescribeContactVersion"
        operation.input = DescribeContactVersionRequest
        operation.output = DescribeContactVersionResponse
        operation.errors << DependencyException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/contact/{contactId}/versions/{versionId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_ephemeris, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.groundstation#DescribeEphemeris"
        operation.name = "DescribeEphemeris"
        operation.input = DescribeEphemerisRequest
        operation.output = DescribeEphemerisResponse
        operation.errors << DependencyException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/ephemeris/{ephemerisId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_agent_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.groundstation#GetAgentConfiguration"
        operation.name = "GetAgentConfiguration"
        operation.input = GetAgentConfigurationRequest
        operation.output = GetAgentConfigurationResponse
        operation.errors << DependencyException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/agent/{agentId}/configuration"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_agent_task_response_url, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.groundstation#GetAgentTaskResponseUrl"
        operation.name = "GetAgentTaskResponseUrl"
        operation.input = GetAgentTaskResponseUrlRequest
        operation.output = GetAgentTaskResponseUrlResponse
        operation.errors << DependencyException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/agentResponseUrl/{agentId}/{taskId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.groundstation#GetConfig"
        operation.name = "GetConfig"
        operation.input = GetConfigRequest
        operation.output = GetConfigResponse
        operation.errors << DependencyException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/config/{configType}/{configId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_dataflow_endpoint_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.groundstation#GetDataflowEndpointGroup"
        operation.name = "GetDataflowEndpointGroup"
        operation.input = GetDataflowEndpointGroupRequest
        operation.output = GetDataflowEndpointGroupResponse
        operation.errors << DependencyException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/dataflowEndpointGroup/{dataflowEndpointGroupId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_minute_usage, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.groundstation#GetMinuteUsage"
        operation.name = "GetMinuteUsage"
        operation.input = GetMinuteUsageRequest
        operation.output = GetMinuteUsageResponse
        operation.errors << DependencyException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/minute-usage"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_mission_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.groundstation#GetMissionProfile"
        operation.name = "GetMissionProfile"
        operation.input = GetMissionProfileRequest
        operation.output = GetMissionProfileResponse
        operation.errors << DependencyException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/missionprofile/{missionProfileId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_satellite, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.groundstation#GetSatellite"
        operation.name = "GetSatellite"
        operation.input = GetSatelliteRequest
        operation.output = GetSatelliteOutput
        operation.errors << DependencyException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/satellite/{satelliteId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_antennas, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.groundstation#ListAntennas"
        operation.name = "ListAntennas"
        operation.input = ListAntennasRequest
        operation.output = ListAntennasResponse
        operation.errors << DependencyException
        operation.errors << InvalidParameterException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/groundstation/{groundStationId}/antenna"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAntennas.new
      end)
      service.add_operation(:list_configs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.groundstation#ListConfigs"
        operation.name = "ListConfigs"
        operation.input = ListConfigsRequest
        operation.output = ListConfigsResponse
        operation.errors << DependencyException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/config"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListConfigs.new
      end)
      service.add_operation(:list_contact_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.groundstation#ListContactVersions"
        operation.name = "ListContactVersions"
        operation.input = ListContactVersionsRequest
        operation.output = ListContactVersionsResponse
        operation.errors << DependencyException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/contact/{contactId}/versions"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListContactVersions.new
      end)
      service.add_operation(:list_contacts, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.groundstation#ListContacts"
        operation.name = "ListContacts"
        operation.input = ListContactsRequest
        operation.output = ListContactsResponse
        operation.errors << DependencyException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/contacts"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListContacts.new
      end)
      service.add_operation(:list_dataflow_endpoint_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.groundstation#ListDataflowEndpointGroups"
        operation.name = "ListDataflowEndpointGroups"
        operation.input = ListDataflowEndpointGroupsRequest
        operation.output = ListDataflowEndpointGroupsResponse
        operation.errors << DependencyException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/dataflowEndpointGroup"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListDataflowEndpointGroups.new
      end)
      service.add_operation(:list_ephemerides, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.groundstation#ListEphemerides"
        operation.name = "ListEphemerides"
        operation.input = ListEphemeridesRequest
        operation.output = ListEphemeridesResponse
        operation.errors << DependencyException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ephemerides"}, "smithy.api#readonly" => {}, "smithy.api#suppress" => ["HttpMethodSemantics"]}
        operation[:paginator] = Paginators::ListEphemerides.new
      end)
      service.add_operation(:list_ground_station_reservations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.groundstation#ListGroundStationReservations"
        operation.name = "ListGroundStationReservations"
        operation.input = ListGroundStationReservationsRequest
        operation.output = ListGroundStationReservationsResponse
        operation.errors << DependencyException
        operation.errors << InvalidParameterException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/groundstation/{groundStationId}/reservation"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListGroundStationReservations.new
      end)
      service.add_operation(:list_ground_stations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.groundstation#ListGroundStations"
        operation.name = "ListGroundStations"
        operation.input = ListGroundStationsInput
        operation.output = ListGroundStationsResponse
        operation.errors << DependencyException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/groundstation"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListGroundStations.new
      end)
      service.add_operation(:list_mission_profiles, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.groundstation#ListMissionProfiles"
        operation.name = "ListMissionProfiles"
        operation.input = ListMissionProfilesRequest
        operation.output = ListMissionProfilesResponse
        operation.errors << DependencyException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/missionprofile"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListMissionProfiles.new
      end)
      service.add_operation(:list_satellites, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.groundstation#ListSatellites"
        operation.name = "ListSatellites"
        operation.input = ListSatellitesRequest
        operation.output = ListSatellitesResponse
        operation.errors << DependencyException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/satellite"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSatellites.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.groundstation#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << DependencyException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:register_agent, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.groundstation#RegisterAgent"
        operation.name = "RegisterAgent"
        operation.input = RegisterAgentRequest
        operation.output = RegisterAgentResponse
        operation.errors << DependencyException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/agent"}}
      end)
      service.add_operation(:reserve_contact, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.groundstation#ReserveContact"
        operation.name = "ReserveContact"
        operation.input = ReserveContactRequest
        operation.output = ReserveContactOutput
        operation.errors << DependencyException
        operation.errors << InvalidParameterException
        operation.errors << ResourceLimitExceededException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/contact"}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.groundstation#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << DependencyException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{resourceArn}"}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.groundstation#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << DependencyException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_agent_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.groundstation#UpdateAgentStatus"
        operation.name = "UpdateAgentStatus"
        operation.input = UpdateAgentStatusRequest
        operation.output = UpdateAgentStatusResponse
        operation.errors << DependencyException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/agent/{agentId}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.groundstation#UpdateConfig"
        operation.name = "UpdateConfig"
        operation.input = UpdateConfigRequest
        operation.output = UpdateConfigOutput
        operation.errors << DependencyException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/config/{configType}/{configId}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_contact, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.groundstation#UpdateContact"
        operation.name = "UpdateContact"
        operation.input = UpdateContactRequest
        operation.output = UpdateContactResponse
        operation.errors << DependencyException
        operation.errors << InvalidParameterException
        operation.errors << ResourceLimitExceededException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/contact/{contactId}/versions"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_ephemeris, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.groundstation#UpdateEphemeris"
        operation.name = "UpdateEphemeris"
        operation.input = UpdateEphemerisRequest
        operation.output = UpdateEphemerisOutput
        operation.errors << DependencyException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/ephemeris/{ephemerisId}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_mission_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.groundstation#UpdateMissionProfile"
        operation.name = "UpdateMissionProfile"
        operation.input = UpdateMissionProfileRequest
        operation.output = UpdateMissionProfileOutput
        operation.errors << DependencyException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/missionprofile/{missionProfileId}"}, "smithy.api#idempotent" => {}}
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
