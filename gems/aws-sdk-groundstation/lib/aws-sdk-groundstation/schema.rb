# frozen_string_literal: true

# This is generated code!

module Aws::GroundStation
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AWSRegion = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.groundstation#AWSRegion', name: 'AWSRegion', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\w-]+$"})
    AgentCpuCoresList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.groundstation#AgentCpuCoresList', name: 'AgentCpuCoresList', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    AgentDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#AgentDetails', name: 'AgentDetails')
    AgentStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.groundstation#AgentStatus', name: 'AgentStatus')
    AggregateStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#AggregateStatus', name: 'AggregateStatus')
    AngleUnits = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.groundstation#AngleUnits', name: 'AngleUnits')
    AntennaDemodDecodeDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#AntennaDemodDecodeDetails', name: 'AntennaDemodDecodeDetails')
    AntennaDownlinkConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#AntennaDownlinkConfig', name: 'AntennaDownlinkConfig')
    AntennaDownlinkDemodDecodeConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#AntennaDownlinkDemodDecodeConfig', name: 'AntennaDownlinkDemodDecodeConfig')
    AntennaUplinkConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#AntennaUplinkConfig', name: 'AntennaUplinkConfig')
    AnyArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.groundstation#AnyArn', name: 'AnyArn', traits: {"smithy.api#length" => {"min" => 5, "max" => 1024}, "smithy.api#pattern" => "^(arn:aws:)[\\s\\S]{0,1024}$"})
    AuditResults = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.groundstation#AuditResults', name: 'AuditResults')
    AwsGroundStationAgentEndpoint = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#AwsGroundStationAgentEndpoint', name: 'AwsGroundStationAgentEndpoint')
    BandwidthUnits = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.groundstation#BandwidthUnits', name: 'BandwidthUnits')
    BucketArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.groundstation#BucketArn', name: 'BucketArn', traits: {"aws.api#arnReference" => {"type" => "AWS::S3::Bucket"}})
    CancelContactInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#CancelContactInput', name: 'CancelContactInput')
    CancelContactOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#CancelContactOutput', name: 'CancelContactOutput')
    CapabilityArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.groundstation#CapabilityArn', name: 'CapabilityArn', traits: {"aws.api#arnReference" => {"type" => "AWS::GroundStationProvider::Capability", "service" => "com.amazon.awsgsaascontrolplanelambda.provider.r20190311#GroundStationProvider", "resource" => "com.amazon.awsgsaascontrolplanelambda.provider.r20190311#Capability"}})
    CapabilityArnList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.groundstation#CapabilityArnList', name: 'CapabilityArnList', traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    CapabilityHealth = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.groundstation#CapabilityHealth', name: 'CapabilityHealth')
    CapabilityHealthReason = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.groundstation#CapabilityHealthReason', name: 'CapabilityHealthReason')
    CapabilityHealthReasonList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.groundstation#CapabilityHealthReasonList', name: 'CapabilityHealthReasonList', traits: {"smithy.api#length" => {"min" => 0, "max" => 500}})
    ComponentStatusData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#ComponentStatusData', name: 'ComponentStatusData')
    ComponentStatusList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.groundstation#ComponentStatusList', name: 'ComponentStatusList', traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    ComponentTypeString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.groundstation#ComponentTypeString', name: 'ComponentTypeString', traits: {"smithy.api#pattern" => "^[a-zA-Z0-9_]{1,64}$"})
    ComponentVersion = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#ComponentVersion', name: 'ComponentVersion')
    ComponentVersionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.groundstation#ComponentVersionList', name: 'ComponentVersionList', traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    ConfigArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.groundstation#ConfigArn', name: 'ConfigArn', traits: {"aws.api#arnReference" => {"type" => "AWS::GroundStation::Config", "service" => "GroundStation", "resource" => "Config"}, "smithy.api#length" => {"min" => 82, "max" => 424}, "smithy.api#pattern" => "^arn:aws:groundstation:[-a-z0-9]{1,50}:[0-9]{12}:config/[a-z0-9]+(-[a-z0-9]+){0,4}/[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}(/.{1,256})?$"})
    ConfigCapabilityType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.groundstation#ConfigCapabilityType', name: 'ConfigCapabilityType')
    ConfigDetails = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.groundstation#ConfigDetails', name: 'ConfigDetails')
    ConfigList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.groundstation#ConfigList', name: 'ConfigList')
    ConfigListItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#ConfigListItem', name: 'ConfigListItem')
    ConfigTypeData = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.groundstation#ConfigTypeData', name: 'ConfigTypeData')
    ConnectionDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#ConnectionDetails', name: 'ConnectionDetails')
    ContactData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#ContactData', name: 'ContactData', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.groundstation#Contact"}]})
    ContactList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.groundstation#ContactList', name: 'ContactList')
    ContactStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.groundstation#ContactStatus', name: 'ContactStatus')
    CreateConfigInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#CreateConfigInput', name: 'CreateConfigInput')
    CreateConfigOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#CreateConfigOutput', name: 'CreateConfigOutput')
    CreateDataflowEndpointGroupInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#CreateDataflowEndpointGroupInput', name: 'CreateDataflowEndpointGroupInput')
    CreateDataflowEndpointGroupOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#CreateDataflowEndpointGroupOutput', name: 'CreateDataflowEndpointGroupOutput')
    CreateEphemerisInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#CreateEphemerisInput', name: 'CreateEphemerisInput')
    CreateEphemerisOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#CreateEphemerisOutput', name: 'CreateEphemerisOutput')
    CreateMissionProfileInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#CreateMissionProfileInput', name: 'CreateMissionProfileInput')
    CreateMissionProfileOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#CreateMissionProfileOutput', name: 'CreateMissionProfileOutput')
    Criticality = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.groundstation#Criticality', name: 'Criticality')
    CustomerEphemerisPriority = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.groundstation#CustomerEphemerisPriority', name: 'CustomerEphemerisPriority', traits: {"smithy.api#range" => {"min" => 1, "max" => 99999}})
    DataflowDetail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#DataflowDetail', name: 'DataflowDetail')
    DataflowEdge = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.groundstation#DataflowEdge', name: 'DataflowEdge', traits: {"smithy.api#length" => {"min" => 2, "max" => 2}})
    DataflowEdgeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.groundstation#DataflowEdgeList', name: 'DataflowEdgeList', traits: {"smithy.api#length" => {"min" => 0, "max" => 500}})
    DataflowEndpoint = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#DataflowEndpoint', name: 'DataflowEndpoint')
    DataflowEndpointConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#DataflowEndpointConfig', name: 'DataflowEndpointConfig')
    DataflowEndpointGroupArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.groundstation#DataflowEndpointGroupArn', name: 'DataflowEndpointGroupArn', traits: {"aws.api#arnReference" => {"type" => "AWS::GroundStation::DataflowEndpointGroup", "service" => "GroundStation", "resource" => "DataflowEndpointGroup"}, "smithy.api#length" => {"min" => 97, "max" => 146}, "smithy.api#pattern" => "^arn:aws:groundstation:[-a-z0-9]{1,50}:[0-9]{12}:dataflow-endpoint-group/[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$"})
    DataflowEndpointGroupDurationInSeconds = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.groundstation#DataflowEndpointGroupDurationInSeconds', name: 'DataflowEndpointGroupDurationInSeconds', traits: {"smithy.api#range" => {"min" => 120, "max" => 480}})
    DataflowEndpointGroupList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.groundstation#DataflowEndpointGroupList', name: 'DataflowEndpointGroupList')
    DataflowEndpointListItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#DataflowEndpointListItem', name: 'DataflowEndpointListItem')
    DataflowList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.groundstation#DataflowList', name: 'DataflowList')
    DecodeConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#DecodeConfig', name: 'DecodeConfig')
    DeleteConfigInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#DeleteConfigInput', name: 'DeleteConfigInput')
    DeleteConfigOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#DeleteConfigOutput', name: 'DeleteConfigOutput')
    DeleteDataflowEndpointGroupInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#DeleteDataflowEndpointGroupInput', name: 'DeleteDataflowEndpointGroupInput')
    DeleteDataflowEndpointGroupOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#DeleteDataflowEndpointGroupOutput', name: 'DeleteDataflowEndpointGroupOutput')
    DeleteEphemerisInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#DeleteEphemerisInput', name: 'DeleteEphemerisInput')
    DeleteEphemerisOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#DeleteEphemerisOutput', name: 'DeleteEphemerisOutput')
    DeleteMissionProfileInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#DeleteMissionProfileInput', name: 'DeleteMissionProfileInput')
    DeleteMissionProfileOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#DeleteMissionProfileOutput', name: 'DeleteMissionProfileOutput')
    DemodulationConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#DemodulationConfig', name: 'DemodulationConfig')
    DependencyException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#DependencyException', name: 'DependencyException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 531})
    DescribeContactInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#DescribeContactInput', name: 'DescribeContactInput')
    DescribeContactOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#DescribeContactOutput', name: 'DescribeContactOutput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.groundstation#Contact"}]})
    DescribeEphemerisInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#DescribeEphemerisInput', name: 'DescribeEphemerisInput')
    DescribeEphemerisOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#DescribeEphemerisOutput', name: 'DescribeEphemerisOutput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.groundstation#Ephemeris"}]})
    Destination = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#Destination', name: 'Destination')
    DiscoveryData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#DiscoveryData', name: 'DiscoveryData')
    DurationInSeconds = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.groundstation#DurationInSeconds', name: 'DurationInSeconds', traits: {"smithy.api#range" => {"min" => 0, "max" => 21600}})
    Eirp = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#Eirp', name: 'Eirp')
    EirpUnits = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.groundstation#EirpUnits', name: 'EirpUnits')
    Elevation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#Elevation', name: 'Elevation')
    EndpointDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#EndpointDetails', name: 'EndpointDetails')
    EndpointDetailsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.groundstation#EndpointDetailsList', name: 'EndpointDetailsList', traits: {"smithy.api#length" => {"min" => 0, "max" => 500}})
    EndpointStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.groundstation#EndpointStatus', name: 'EndpointStatus')
    EphemeridesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.groundstation#EphemeridesList', name: 'EphemeridesList', traits: {"smithy.api#length" => {"min" => 1, "max" => 500}})
    EphemerisData = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.groundstation#EphemerisData', name: 'EphemerisData')
    EphemerisDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#EphemerisDescription', name: 'EphemerisDescription')
    EphemerisInvalidReason = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.groundstation#EphemerisInvalidReason', name: 'EphemerisInvalidReason')
    EphemerisItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#EphemerisItem', name: 'EphemerisItem')
    EphemerisMetaData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#EphemerisMetaData', name: 'EphemerisMetaData')
    EphemerisPriority = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.groundstation#EphemerisPriority', name: 'EphemerisPriority', traits: {"smithy.api#range" => {"min" => 0, "max" => 99999}})
    EphemerisSource = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.groundstation#EphemerisSource', name: 'EphemerisSource')
    EphemerisStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.groundstation#EphemerisStatus', name: 'EphemerisStatus')
    EphemerisStatusList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.groundstation#EphemerisStatusList', name: 'EphemerisStatusList', traits: {"smithy.api#length" => {"min" => 0, "max" => 500}})
    EphemerisTypeDescription = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.groundstation#EphemerisTypeDescription', name: 'EphemerisTypeDescription')
    Frequency = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#Frequency', name: 'Frequency')
    FrequencyBandwidth = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#FrequencyBandwidth', name: 'FrequencyBandwidth')
    FrequencyUnits = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.groundstation#FrequencyUnits', name: 'FrequencyUnits')
    GetAgentConfigurationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#GetAgentConfigurationInput', name: 'GetAgentConfigurationInput')
    GetAgentConfigurationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#GetAgentConfigurationOutput', name: 'GetAgentConfigurationOutput')
    GetConfigInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#GetConfigInput', name: 'GetConfigInput')
    GetConfigOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#GetConfigOutput', name: 'GetConfigOutput')
    GetDataflowEndpointGroupInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#GetDataflowEndpointGroupInput', name: 'GetDataflowEndpointGroupInput')
    GetDataflowEndpointGroupOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#GetDataflowEndpointGroupOutput', name: 'GetDataflowEndpointGroupOutput')
    GetMinuteUsageInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#GetMinuteUsageInput', name: 'GetMinuteUsageInput')
    GetMinuteUsageOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#GetMinuteUsageOutput', name: 'GetMinuteUsageOutput')
    GetMissionProfileInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#GetMissionProfileInput', name: 'GetMissionProfileInput')
    GetMissionProfileOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#GetMissionProfileOutput', name: 'GetMissionProfileOutput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.groundstation#MissionProfile"}]})
    GetSatelliteInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#GetSatelliteInput', name: 'GetSatelliteInput')
    GetSatelliteOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#GetSatelliteOutput', name: 'GetSatelliteOutput', traits: {"smithy.api#references" => [{"resource" => "com.amazon.awsgsaascontrolplanelambda.r20190311#Satellite"}]})
    GroundStationData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#GroundStationData', name: 'GroundStationData')
    GroundStationIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.groundstation#GroundStationIdList', name: 'GroundStationIdList', traits: {"smithy.api#length" => {"min" => 0, "max" => 500}})
    GroundStationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.groundstation#GroundStationList', name: 'GroundStationList')
    GroundStationName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.groundstation#GroundStationName', name: 'GroundStationName', traits: {"smithy.api#length" => {"min" => 4, "max" => 500}, "smithy.api#pattern" => "^[ a-zA-Z0-9-._:=]{4,256}$"})
    InstanceId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.groundstation#InstanceId', name: 'InstanceId', traits: {"smithy.api#length" => {"min" => 10, "max" => 64}, "smithy.api#pattern" => "^[a-z0-9-]{10,64}$"})
    InstanceType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.groundstation#InstanceType', name: 'InstanceType', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-z0-9.-]{1,64}$"})
    IntegerRange = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#IntegerRange', name: 'IntegerRange')
    InvalidParameterException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#InvalidParameterException', name: 'InvalidParameterException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 431})
    IpAddressList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.groundstation#IpAddressList', name: 'IpAddressList', traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    IpV4Address = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.groundstation#IpV4Address', name: 'IpV4Address', traits: {"smithy.api#length" => {"min" => 7, "max" => 16}, "smithy.api#pattern" => "^\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}$"})
    JsonString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.groundstation#JsonString', name: 'JsonString', traits: {"smithy.api#length" => {"min" => 2, "max" => 8192}, "smithy.api#pattern" => "^[{}\\[\\]:.,\"0-9A-Za-z\\-_\\s]{2,8192}$"})
    KeyAliasArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.groundstation#KeyAliasArn', name: 'KeyAliasArn', traits: {"aws.api#arnReference" => {"type" => "AWS::KMS::Alias"}, "smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^arn:aws[a-zA-Z-]{0,16}:kms:[-a-z0-9]{1,50}:[0-9]{12}:((alias/[a-zA-Z0-9:/_-]{1,256}))$"})
    KeyAliasName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.groundstation#KeyAliasName', name: 'KeyAliasName', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^alias/[a-zA-Z0-9:/_-]+$"})
    KeyArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.groundstation#KeyArn', name: 'KeyArn', traits: {"aws.api#arnReference" => {"type" => "AWS::KMS::Key"}})
    KmsKey = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.groundstation#KmsKey', name: 'KmsKey')
    ListConfigsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#ListConfigsInput', name: 'ListConfigsInput')
    ListConfigsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#ListConfigsOutput', name: 'ListConfigsOutput')
    ListContactsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#ListContactsInput', name: 'ListContactsInput')
    ListContactsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#ListContactsOutput', name: 'ListContactsOutput')
    ListDataflowEndpointGroupsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#ListDataflowEndpointGroupsInput', name: 'ListDataflowEndpointGroupsInput')
    ListDataflowEndpointGroupsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#ListDataflowEndpointGroupsOutput', name: 'ListDataflowEndpointGroupsOutput')
    ListEphemeridesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#ListEphemeridesInput', name: 'ListEphemeridesInput')
    ListEphemeridesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#ListEphemeridesOutput', name: 'ListEphemeridesOutput')
    ListGroundStationsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#ListGroundStationsInput', name: 'ListGroundStationsInput')
    ListGroundStationsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#ListGroundStationsOutput', name: 'ListGroundStationsOutput')
    ListMissionProfilesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#ListMissionProfilesInput', name: 'ListMissionProfilesInput')
    ListMissionProfilesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#ListMissionProfilesOutput', name: 'ListMissionProfilesOutput')
    ListSatellitesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#ListSatellitesInput', name: 'ListSatellitesInput')
    ListSatellitesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#ListSatellitesOutput', name: 'ListSatellitesOutput')
    ListTagsForResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#ListTagsForResourceInput', name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#ListTagsForResourceOutput', name: 'ListTagsForResourceOutput')
    MissionProfileArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.groundstation#MissionProfileArn', name: 'MissionProfileArn', traits: {"aws.api#arnReference" => {"type" => "AWS::GroundStation::MissionProfile", "service" => "GroundStation", "resource" => "MissionProfile"}, "smithy.api#length" => {"min" => 89, "max" => 138}, "smithy.api#pattern" => "^arn:aws:groundstation:[-a-z0-9]{1,50}:[0-9]{12}:mission-profile/[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$"})
    MissionProfileList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.groundstation#MissionProfileList', name: 'MissionProfileList')
    MissionProfileListItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#MissionProfileListItem', name: 'MissionProfileListItem')
    Month = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.groundstation#Month', name: 'Month', traits: {"smithy.api#range" => {"min" => 1, "max" => 12}})
    OEMEphemeris = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#OEMEphemeris', name: 'OEMEphemeris')
    PaginationMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.groundstation#PaginationMaxResults', name: 'PaginationMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    PaginationToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.groundstation#PaginationToken', name: 'PaginationToken', traits: {"smithy.api#length" => {"min" => 3, "max" => 1000}, "smithy.api#pattern" => "^[A-Za-z0-9-/+_.=]+$"})
    Polarization = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.groundstation#Polarization', name: 'Polarization')
    PositiveDurationInSeconds = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.groundstation#PositiveDurationInSeconds', name: 'PositiveDurationInSeconds', traits: {"smithy.api#range" => {"min" => 1, "max" => 21600}})
    RangedConnectionDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#RangedConnectionDetails', name: 'RangedConnectionDetails')
    RangedSocketAddress = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#RangedSocketAddress', name: 'RangedSocketAddress')
    RegisterAgentInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#RegisterAgentInput', name: 'RegisterAgentInput')
    RegisterAgentOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#RegisterAgentOutput', name: 'RegisterAgentOutput')
    ReserveContactInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#ReserveContactInput', name: 'ReserveContactInput')
    ReserveContactOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#ReserveContactOutput', name: 'ReserveContactOutput')
    ResourceLimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#ResourceLimitExceededException', name: 'ResourceLimitExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 434})
    RoleArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.groundstation#RoleArn', name: 'RoleArn')
    S3BucketName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.groundstation#S3BucketName', name: 'S3BucketName', traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^[a-z0-9.-]{3,63}$"})
    S3KeyPrefix = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.groundstation#S3KeyPrefix', name: 'S3KeyPrefix', traits: {"smithy.api#length" => {"min" => 1, "max" => 900}, "smithy.api#pattern" => "^([a-zA-Z0-9_\\-=/]|\\{satellite_id\\}|\\{config\\-name}|\\{s3\\-config-id}|\\{year\\}|\\{month\\}|\\{day\\}){1,900}$"})
    S3Object = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#S3Object', name: 'S3Object')
    S3ObjectKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.groundstation#S3ObjectKey', name: 'S3ObjectKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[a-zA-Z0-9!*'\\)\\(./_-]{1,1024}$"})
    S3RecordingConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#S3RecordingConfig', name: 'S3RecordingConfig')
    S3RecordingDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#S3RecordingDetails', name: 'S3RecordingDetails')
    S3VersionId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.groundstation#S3VersionId', name: 'S3VersionId', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[\\s\\S]{1,1024}$"})
    SafeName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.groundstation#SafeName', name: 'SafeName', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[ a-zA-Z0-9_:-]{1,256}$"})
    SatelliteList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.groundstation#SatelliteList', name: 'SatelliteList')
    SatelliteListItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#SatelliteListItem', name: 'SatelliteListItem')
    SecurityDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#SecurityDetails', name: 'SecurityDetails')
    SecurityGroupIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.groundstation#SecurityGroupIdList', name: 'SecurityGroupIdList')
    SignatureMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.groundstation#SignatureMap', name: 'SignatureMap')
    SocketAddress = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#SocketAddress', name: 'SocketAddress')
    Source = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#Source', name: 'Source')
    SpectrumConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#SpectrumConfig', name: 'SpectrumConfig')
    StatusList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.groundstation#StatusList', name: 'StatusList', traits: {"smithy.api#length" => {"min" => 0, "max" => 500}})
    SubnetList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.groundstation#SubnetList', name: 'SubnetList')
    TLEData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#TLEData', name: 'TLEData')
    TLEDataList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.groundstation#TLEDataList', name: 'TLEDataList', traits: {"smithy.api#length" => {"min" => 1, "max" => 500}})
    TLEEphemeris = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#TLEEphemeris', name: 'TLEEphemeris')
    TagKeys = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.groundstation#TagKeys', name: 'TagKeys', traits: {"smithy.api#length" => {"min" => 0, "max" => 500}})
    TagResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#TagResourceInput', name: 'TagResourceInput')
    TagResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#TagResourceOutput', name: 'TagResourceOutput')
    TagsMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.groundstation#TagsMap', name: 'TagsMap')
    TimeRange = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#TimeRange', name: 'TimeRange')
    TleLineOne = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.groundstation#TleLineOne', name: 'TleLineOne', traits: {"smithy.api#length" => {"min" => 69, "max" => 69}, "smithy.api#pattern" => "^1 [ 0-9]{5}[A-Z] [ 0-9]{5}[ A-Z]{3} [ 0-9]{5}[.][ 0-9]{8} (?:(?:[ 0+-][.][ 0-9]{8})|(?: [ +-][.][ 0-9]{7})) [ +-][ 0-9]{5}[+-][ 0-9] [ +-][ 0-9]{5}[+-][ 0-9] [ 0-9] [ 0-9]{4}[ 0-9]$"})
    TleLineTwo = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.groundstation#TleLineTwo', name: 'TleLineTwo', traits: {"smithy.api#length" => {"min" => 69, "max" => 69}, "smithy.api#pattern" => "^2 [ 0-9]{5} [ 0-9]{3}[.][ 0-9]{4} [ 0-9]{3}[.][ 0-9]{4} [ 0-9]{7} [ 0-9]{3}[.][ 0-9]{4} [ 0-9]{3}[.][ 0-9]{4} [ 0-9]{2}[.][ 0-9]{13}[ 0-9]$"})
    TrackingConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#TrackingConfig', name: 'TrackingConfig')
    UnboundedString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.groundstation#UnboundedString', name: 'UnboundedString', traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#pattern" => "^[\\s\\S]+$"})
    UntagResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#UntagResourceInput', name: 'UntagResourceInput')
    UntagResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#UntagResourceOutput', name: 'UntagResourceOutput')
    UpdateAgentStatusInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#UpdateAgentStatusInput', name: 'UpdateAgentStatusInput')
    UpdateAgentStatusOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#UpdateAgentStatusOutput', name: 'UpdateAgentStatusOutput')
    UpdateConfigInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#UpdateConfigInput', name: 'UpdateConfigInput')
    UpdateConfigOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#UpdateConfigOutput', name: 'UpdateConfigOutput')
    UpdateEphemerisInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#UpdateEphemerisInput', name: 'UpdateEphemerisInput')
    UpdateEphemerisOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#UpdateEphemerisOutput', name: 'UpdateEphemerisOutput')
    UpdateMissionProfileInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#UpdateMissionProfileInput', name: 'UpdateMissionProfileInput')
    UpdateMissionProfileOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#UpdateMissionProfileOutput', name: 'UpdateMissionProfileOutput')
    UplinkEchoConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#UplinkEchoConfig', name: 'UplinkEchoConfig')
    UplinkSpectrumConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.groundstation#UplinkSpectrumConfig', name: 'UplinkSpectrumConfig')
    Uuid = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.groundstation#Uuid', name: 'Uuid', traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$"})
    VersionString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.groundstation#VersionString', name: 'VersionString', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^(0|[1-9]\\d*)(\\.(0|[1-9]\\d*))*$"})
    VersionStringList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.groundstation#VersionStringList', name: 'VersionStringList', traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    Year = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.groundstation#Year', name: 'Year', traits: {"smithy.api#range" => {"min" => 2018, "max" => 3000}})
    NoradSatelliteID = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.groundstation#noradSatelliteID', name: 'NoradSatelliteID', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 99999}})
    SatelliteArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.groundstation#satelliteArn', name: 'SatelliteArn', traits: {"aws.api#arnReference" => {"type" => "AWS::GroundStation::Satellite", "service" => "com.amazon.awsgsaascontrolplanelambda.r20190311#GroundStation", "resource" => "com.amazon.awsgsaascontrolplanelambda.r20190311#Satellite"}, "smithy.api#length" => {"min" => 82, "max" => 132}, "smithy.api#pattern" => "^arn:aws:groundstation:([-a-z0-9]{1,50})?:[0-9]{12}:satellite/[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$"})

    AgentCpuCoresList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer)
    AgentDetails.add_member(:agent_version, Smithy::Schema::Shapes::ShapeRef.new(shape: VersionString, location_name: 'agentVersion', traits: {"smithy.api#documentation" => "<p>Current agent version.</p>", "smithy.api#required" => {}}))
    AgentDetails.add_member(:instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceId, location_name: 'instanceId', traits: {"smithy.api#documentation" => "<p>ID of EC2 instance agent is running on.</p>", "smithy.api#required" => {}}))
    AgentDetails.add_member(:instance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceType, location_name: 'instanceType', traits: {"smithy.api#documentation" => "<p>Type of EC2 instance agent is running on.</p>", "smithy.api#required" => {}}))
    AgentDetails.add_member(:reserved_cpu_cores, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentCpuCoresList, location_name: 'reservedCpuCores', traits: {"smithy.api#documentation" => "<note>\n            <p>This field should not be used. Use agentCpuCores instead.</p>\n         </note>\n         <p>List of CPU cores reserved for processes other than the agent running on the EC2 instance.</p>"}))
    AgentDetails.add_member(:agent_cpu_cores, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentCpuCoresList, location_name: 'agentCpuCores', traits: {"smithy.api#documentation" => "<p>List of CPU cores reserved for the agent.</p>"}))
    AgentDetails.add_member(:component_versions, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentVersionList, location_name: 'componentVersions', traits: {"smithy.api#documentation" => "<p>List of versions being used by agent components.</p>", "smithy.api#required" => {}}))
    AgentDetails.type = Types::AgentDetails
    AgentStatus.add_member(:success, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCESS', traits: {"smithy.api#enumValue" => "SUCCESS"}))
    AgentStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    AgentStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    AgentStatus.add_member(:inactive, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INACTIVE', traits: {"smithy.api#enumValue" => "INACTIVE"}))
    AggregateStatus.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>Aggregate status.</p>", "smithy.api#required" => {}}))
    AggregateStatus.add_member(:signature_map, Smithy::Schema::Shapes::ShapeRef.new(shape: SignatureMap, location_name: 'signatureMap', traits: {"smithy.api#documentation" => "<p>Sparse map of failure signatures.</p>"}))
    AggregateStatus.type = Types::AggregateStatus
    AngleUnits.add_member(:degree_angle, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEGREE_ANGLE', traits: {"smithy.api#enumValue" => "DEGREE_ANGLE"}))
    AngleUnits.add_member(:radian, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RADIAN', traits: {"smithy.api#enumValue" => "RADIAN"}))
    AntennaDemodDecodeDetails.add_member(:output_node, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'outputNode', traits: {"smithy.api#documentation" => "<p>Name of an antenna demod decode output node used in a contact.</p>"}))
    AntennaDemodDecodeDetails.type = Types::AntennaDemodDecodeDetails
    AntennaDownlinkConfig.add_member(:spectrum_config, Smithy::Schema::Shapes::ShapeRef.new(shape: SpectrumConfig, location_name: 'spectrumConfig', traits: {"smithy.api#documentation" => "<p>Object that describes a spectral <code>Config</code>.</p>", "smithy.api#required" => {}}))
    AntennaDownlinkConfig.type = Types::AntennaDownlinkConfig
    AntennaDownlinkDemodDecodeConfig.add_member(:spectrum_config, Smithy::Schema::Shapes::ShapeRef.new(shape: SpectrumConfig, location_name: 'spectrumConfig', traits: {"smithy.api#documentation" => "<p>Information about the spectral <code>Config</code>.</p>", "smithy.api#required" => {}}))
    AntennaDownlinkDemodDecodeConfig.add_member(:demodulation_config, Smithy::Schema::Shapes::ShapeRef.new(shape: DemodulationConfig, location_name: 'demodulationConfig', traits: {"smithy.api#documentation" => "<p>Information about the demodulation <code>Config</code>.</p>", "smithy.api#required" => {}}))
    AntennaDownlinkDemodDecodeConfig.add_member(:decode_config, Smithy::Schema::Shapes::ShapeRef.new(shape: DecodeConfig, location_name: 'decodeConfig', traits: {"smithy.api#documentation" => "<p>Information about the decode <code>Config</code>.</p>", "smithy.api#required" => {}}))
    AntennaDownlinkDemodDecodeConfig.type = Types::AntennaDownlinkDemodDecodeConfig
    AntennaUplinkConfig.add_member(:transmit_disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'transmitDisabled', traits: {"smithy.api#documentation" => "<p>Whether or not uplink transmit is disabled.</p>"}))
    AntennaUplinkConfig.add_member(:spectrum_config, Smithy::Schema::Shapes::ShapeRef.new(shape: UplinkSpectrumConfig, location_name: 'spectrumConfig', traits: {"smithy.api#documentation" => "<p>Information about the uplink spectral <code>Config</code>.</p>", "smithy.api#required" => {}}))
    AntennaUplinkConfig.add_member(:target_eirp, Smithy::Schema::Shapes::ShapeRef.new(shape: Eirp, location_name: 'targetEirp', traits: {"smithy.api#documentation" => "<p>EIRP of the target.</p>", "smithy.api#required" => {}}))
    AntennaUplinkConfig.type = Types::AntennaUplinkConfig
    AuditResults.add_member(:healthy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HEALTHY', traits: {"smithy.api#enumValue" => "HEALTHY"}))
    AuditResults.add_member(:unhealthy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNHEALTHY', traits: {"smithy.api#enumValue" => "UNHEALTHY"}))
    AwsGroundStationAgentEndpoint.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SafeName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Name string associated with AgentEndpoint. Used as a human-readable identifier for AgentEndpoint.</p>", "smithy.api#required" => {}}))
    AwsGroundStationAgentEndpoint.add_member(:egress_address, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionDetails, location_name: 'egressAddress', traits: {"smithy.api#documentation" => "<p>The egress address of AgentEndpoint.</p>", "smithy.api#required" => {}}))
    AwsGroundStationAgentEndpoint.add_member(:ingress_address, Smithy::Schema::Shapes::ShapeRef.new(shape: RangedConnectionDetails, location_name: 'ingressAddress', traits: {"smithy.api#documentation" => "<p>The ingress address of AgentEndpoint.</p>", "smithy.api#required" => {}}))
    AwsGroundStationAgentEndpoint.add_member(:agent_status, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentStatus, location_name: 'agentStatus', traits: {"smithy.api#documentation" => "<p>The status of AgentEndpoint.</p>"}))
    AwsGroundStationAgentEndpoint.add_member(:audit_results, Smithy::Schema::Shapes::ShapeRef.new(shape: AuditResults, location_name: 'auditResults', traits: {"smithy.api#documentation" => "<p>The results of the audit.</p>"}))
    AwsGroundStationAgentEndpoint.type = Types::AwsGroundStationAgentEndpoint
    BandwidthUnits.add_member(:ghz, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GHZ', traits: {"smithy.api#enumValue" => "GHz"}))
    BandwidthUnits.add_member(:mhz, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MHZ', traits: {"smithy.api#enumValue" => "MHz"}))
    BandwidthUnits.add_member(:khz, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KHZ', traits: {"smithy.api#enumValue" => "kHz"}))
    CancelContactInput.add_member(:contact_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'contactId', traits: {"smithy.api#documentation" => "<p>UUID of a contact.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CancelContactInput.type = Types::CancelContactInput
    CancelContactOutput.add_member(:contact_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'contactId', traits: {"smithy.api#documentation" => "<p>UUID of a contact.</p>"}))
    CancelContactOutput.type = Types::CancelContactOutput
    CapabilityArnList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CapabilityArn)
    CapabilityHealth.add_member(:healthy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HEALTHY', traits: {"smithy.api#enumValue" => "HEALTHY"}))
    CapabilityHealth.add_member(:unhealthy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNHEALTHY', traits: {"smithy.api#enumValue" => "UNHEALTHY"}))
    CapabilityHealthReason.add_member(:no_registered_agent, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NO_REGISTERED_AGENT', traits: {"smithy.api#enumValue" => "NO_REGISTERED_AGENT"}))
    CapabilityHealthReason.add_member(:invalid_ip_ownership, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_IP_OWNERSHIP', traits: {"smithy.api#enumValue" => "INVALID_IP_OWNERSHIP"}))
    CapabilityHealthReason.add_member(:not_authorized_to_create_slr, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_AUTHORIZED_TO_CREATE_SLR', traits: {"smithy.api#enumValue" => "NOT_AUTHORIZED_TO_CREATE_SLR"}))
    CapabilityHealthReason.add_member(:unverified_ip_ownership, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNVERIFIED_IP_OWNERSHIP', traits: {"smithy.api#enumValue" => "UNVERIFIED_IP_OWNERSHIP"}))
    CapabilityHealthReason.add_member(:initializing_dataplane, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INITIALIZING_DATAPLANE', traits: {"smithy.api#enumValue" => "INITIALIZING_DATAPLANE"}))
    CapabilityHealthReason.add_member(:dataplane_failure, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DATAPLANE_FAILURE', traits: {"smithy.api#enumValue" => "DATAPLANE_FAILURE"}))
    CapabilityHealthReason.add_member(:healthy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HEALTHY', traits: {"smithy.api#enumValue" => "HEALTHY"}))
    CapabilityHealthReasonList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CapabilityHealthReason)
    ComponentStatusData.add_member(:component_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentTypeString, location_name: 'componentType', traits: {"smithy.api#documentation" => "<p>The Component type.</p>", "smithy.api#required" => {}}))
    ComponentStatusData.add_member(:capability_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CapabilityArn, location_name: 'capabilityArn', traits: {"smithy.api#documentation" => "<p>Capability ARN of the component.</p>", "smithy.api#required" => {}}))
    ComponentStatusData.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>Component status.</p>", "smithy.api#required" => {}}))
    ComponentStatusData.add_member(:bytes_sent, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'bytesSent', traits: {"smithy.api#documentation" => "<p>Bytes sent by the component.</p>"}))
    ComponentStatusData.add_member(:bytes_received, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'bytesReceived', traits: {"smithy.api#documentation" => "<p>Bytes received by the component.</p>"}))
    ComponentStatusData.add_member(:packets_dropped, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'packetsDropped', traits: {"smithy.api#documentation" => "<p>Packets dropped by component.</p>"}))
    ComponentStatusData.add_member(:dataflow_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'dataflowId', traits: {"smithy.api#documentation" => "<p>Dataflow UUID associated with the component.</p>", "smithy.api#required" => {}}))
    ComponentStatusData.type = Types::ComponentStatusData
    ComponentStatusList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentStatusData)
    ComponentVersion.add_member(:component_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentTypeString, location_name: 'componentType', traits: {"smithy.api#documentation" => "<p>Component type.</p>", "smithy.api#required" => {}}))
    ComponentVersion.add_member(:versions, Smithy::Schema::Shapes::ShapeRef.new(shape: VersionStringList, location_name: 'versions', traits: {"smithy.api#documentation" => "<p>List of versions.</p>", "smithy.api#required" => {}}))
    ComponentVersion.type = Types::ComponentVersion
    ComponentVersionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentVersion)
    ConfigCapabilityType.add_member(:antenna_downlink, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ANTENNA_DOWNLINK', traits: {"smithy.api#enumValue" => "antenna-downlink"}))
    ConfigCapabilityType.add_member(:antenna_downlink_demod_decode, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ANTENNA_DOWNLINK_DEMOD_DECODE', traits: {"smithy.api#enumValue" => "antenna-downlink-demod-decode"}))
    ConfigCapabilityType.add_member(:tracking, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TRACKING', traits: {"smithy.api#enumValue" => "tracking"}))
    ConfigCapabilityType.add_member(:dataflow_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DATAFLOW_ENDPOINT', traits: {"smithy.api#enumValue" => "dataflow-endpoint"}))
    ConfigCapabilityType.add_member(:antenna_uplink, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ANTENNA_UPLINK', traits: {"smithy.api#enumValue" => "antenna-uplink"}))
    ConfigCapabilityType.add_member(:uplink_echo, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPLINK_ECHO', traits: {"smithy.api#enumValue" => "uplink-echo"}))
    ConfigCapabilityType.add_member(:s3_recording, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'S3_RECORDING', traits: {"smithy.api#enumValue" => "s3-recording"}))
    ConfigDetails.add_member(:endpoint_details, Types::ConfigDetails::EndpointDetails, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointDetails, location_name: 'endpointDetails'))
    ConfigDetails.add_member(:antenna_demod_decode_details, Types::ConfigDetails::AntennaDemodDecodeDetails, Smithy::Schema::Shapes::ShapeRef.new(shape: AntennaDemodDecodeDetails, location_name: 'antennaDemodDecodeDetails', traits: {"smithy.api#documentation" => "<p>Details for antenna demod decode <code>Config</code> in a contact.</p>"}))
    ConfigDetails.add_member(:s3_recording_details, Types::ConfigDetails::S3RecordingDetails, Smithy::Schema::Shapes::ShapeRef.new(shape: S3RecordingDetails, location_name: 's3RecordingDetails', traits: {"smithy.api#documentation" => "<p>Details for an S3 recording <code>Config</code> in a contact.</p>"}))
    ConfigDetails.add_member(:unknown, Types::ConfigDetails::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    ConfigDetails.type = Types::ConfigDetails
    ConfigList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigListItem)
    ConfigListItem.add_member(:config_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'configId', traits: {"smithy.api#documentation" => "<p>UUID of a <code>Config</code>.</p>"}))
    ConfigListItem.add_member(:config_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigCapabilityType, location_name: 'configType', traits: {"smithy.api#documentation" => "<p>Type of a <code>Config</code>.</p>"}))
    ConfigListItem.add_member(:config_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigArn, location_name: 'configArn', traits: {"smithy.api#documentation" => "<p>ARN of a <code>Config</code>.</p>"}))
    ConfigListItem.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Name of a <code>Config</code>.</p>"}))
    ConfigListItem.type = Types::ConfigListItem
    ConfigTypeData.add_member(:antenna_downlink_config, Types::ConfigTypeData::AntennaDownlinkConfig, Smithy::Schema::Shapes::ShapeRef.new(shape: AntennaDownlinkConfig, location_name: 'antennaDownlinkConfig', traits: {"smithy.api#documentation" => "<p>Information about how AWS Ground Station should configure an antenna for downlink during a contact.</p>"}))
    ConfigTypeData.add_member(:tracking_config, Types::ConfigTypeData::TrackingConfig, Smithy::Schema::Shapes::ShapeRef.new(shape: TrackingConfig, location_name: 'trackingConfig', traits: {"smithy.api#documentation" => "<p>Object that determines whether tracking should be used during a contact executed with this <code>Config</code> in the mission profile. </p>"}))
    ConfigTypeData.add_member(:dataflow_endpoint_config, Types::ConfigTypeData::DataflowEndpointConfig, Smithy::Schema::Shapes::ShapeRef.new(shape: DataflowEndpointConfig, location_name: 'dataflowEndpointConfig', traits: {"smithy.api#documentation" => "<p>Information about the dataflow endpoint <code>Config</code>.</p>"}))
    ConfigTypeData.add_member(:antenna_downlink_demod_decode_config, Types::ConfigTypeData::AntennaDownlinkDemodDecodeConfig, Smithy::Schema::Shapes::ShapeRef.new(shape: AntennaDownlinkDemodDecodeConfig, location_name: 'antennaDownlinkDemodDecodeConfig', traits: {"smithy.api#documentation" => "<p>Information about how AWS Ground Station should conﬁgure an antenna for downlink demod decode during a contact.</p>"}))
    ConfigTypeData.add_member(:antenna_uplink_config, Types::ConfigTypeData::AntennaUplinkConfig, Smithy::Schema::Shapes::ShapeRef.new(shape: AntennaUplinkConfig, location_name: 'antennaUplinkConfig', traits: {"smithy.api#documentation" => "<p>Information about how AWS Ground Station should conﬁgure an antenna for uplink during a contact.</p>"}))
    ConfigTypeData.add_member(:uplink_echo_config, Types::ConfigTypeData::UplinkEchoConfig, Smithy::Schema::Shapes::ShapeRef.new(shape: UplinkEchoConfig, location_name: 'uplinkEchoConfig', traits: {"smithy.api#documentation" => "<p>Information about an uplink echo <code>Config</code>.</p>\n         <p>Parameters from the <code>AntennaUplinkConfig</code>, corresponding to the specified <code>AntennaUplinkConfigArn</code>, are used when this <code>UplinkEchoConfig</code> is used in a contact.</p>"}))
    ConfigTypeData.add_member(:s3_recording_config, Types::ConfigTypeData::S3RecordingConfig, Smithy::Schema::Shapes::ShapeRef.new(shape: S3RecordingConfig, location_name: 's3RecordingConfig', traits: {"smithy.api#documentation" => "<p>Information about an S3 recording <code>Config</code>.</p>"}))
    ConfigTypeData.add_member(:unknown, Types::ConfigTypeData::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    ConfigTypeData.type = Types::ConfigTypeData
    ConnectionDetails.add_member(:socket_address, Smithy::Schema::Shapes::ShapeRef.new(shape: SocketAddress, location_name: 'socketAddress', traits: {"smithy.api#documentation" => "<p>A socket address.</p>", "smithy.api#required" => {}}))
    ConnectionDetails.add_member(:mtu, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'mtu', traits: {"smithy.api#documentation" => "<p>Maximum transmission unit (MTU) size in bytes of a dataflow endpoint.</p>"}))
    ConnectionDetails.type = Types::ConnectionDetails
    ContactData.add_member(:contact_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'contactId', traits: {"smithy.api#documentation" => "<p>UUID of a contact.</p>"}))
    ContactData.add_member(:mission_profile_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: MissionProfileArn, location_name: 'missionProfileArn', traits: {"smithy.api#documentation" => "<p>ARN of a mission profile.</p>"}))
    ContactData.add_member(:satellite_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SatelliteArn, location_name: 'satelliteArn', traits: {"smithy.api#documentation" => "<p>ARN of a satellite.</p>"}))
    ContactData.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'startTime', traits: {"smithy.api#documentation" => "<p>Start time of a contact in UTC.</p>"}))
    ContactData.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'endTime', traits: {"smithy.api#documentation" => "<p>End time of a contact in UTC.</p>"}))
    ContactData.add_member(:pre_pass_start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'prePassStartTime', traits: {"smithy.api#documentation" => "<p>Amount of time prior to contact start you’d like to receive a CloudWatch event indicating an upcoming pass.</p>"}))
    ContactData.add_member(:post_pass_end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'postPassEndTime', traits: {"smithy.api#documentation" => "<p>Amount of time after a contact ends that you’d like to receive a CloudWatch event indicating the pass has finished.</p>"}))
    ContactData.add_member(:ground_station, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'groundStation', traits: {"smithy.api#documentation" => "<p>Name of a ground station.</p>"}))
    ContactData.add_member(:contact_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ContactStatus, location_name: 'contactStatus', traits: {"smithy.api#documentation" => "<p>Status of a contact.</p>"}))
    ContactData.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'errorMessage', traits: {"smithy.api#documentation" => "<p>Error message of a contact.</p>"}))
    ContactData.add_member(:maximum_elevation, Smithy::Schema::Shapes::ShapeRef.new(shape: Elevation, location_name: 'maximumElevation', traits: {"smithy.api#documentation" => "<p>Maximum elevation angle of a contact.</p>"}))
    ContactData.add_member(:region, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'region', traits: {"smithy.api#documentation" => "<p>Region of a contact.</p>"}))
    ContactData.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Tags assigned to a contact.</p>"}))
    ContactData.add_member(:visibility_start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'visibilityStartTime', traits: {"smithy.api#documentation" => "<p>\n         Projected time in UTC your satellite will rise above the\n         <a href=\"https://docs.aws.amazon.com/ground-station/latest/ug/site-masks.html\">receive mask</a>.\n         This time is based on the satellite's current active ephemeris for future contacts and the ephemeris that was\n         active during contact execution for completed contacts.\n         <i>This field is not present for contacts with a <code>SCHEDULING</code> or <code>SCHEDULED</code> status.</i>\n         </p>"}))
    ContactData.add_member(:visibility_end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'visibilityEndTime', traits: {"smithy.api#documentation" => "<p>\n         Projected time in UTC your satellite will set below the\n         <a href=\"https://docs.aws.amazon.com/ground-station/latest/ug/site-masks.html\">receive mask</a>.\n         This time is based on the satellite's current active ephemeris for future contacts and the ephemeris that was\n         active during contact execution for completed contacts.\n         <i>This field is not present for contacts with a <code>SCHEDULING</code> or <code>SCHEDULED</code> status.</i>\n         </p>"}))
    ContactData.type = Types::ContactData
    ContactList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ContactData)
    ContactStatus.add_member(:scheduling, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SCHEDULING', traits: {"smithy.api#enumValue" => "SCHEDULING"}))
    ContactStatus.add_member(:failed_to_schedule, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED_TO_SCHEDULE', traits: {"smithy.api#enumValue" => "FAILED_TO_SCHEDULE"}))
    ContactStatus.add_member(:scheduled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SCHEDULED', traits: {"smithy.api#enumValue" => "SCHEDULED"}))
    ContactStatus.add_member(:cancelled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELLED', traits: {"smithy.api#enumValue" => "CANCELLED"}))
    ContactStatus.add_member(:aws_cancelled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_CANCELLED', traits: {"smithy.api#enumValue" => "AWS_CANCELLED"}))
    ContactStatus.add_member(:prepass, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PREPASS', traits: {"smithy.api#enumValue" => "PREPASS"}))
    ContactStatus.add_member(:pass, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PASS', traits: {"smithy.api#enumValue" => "PASS"}))
    ContactStatus.add_member(:postpass, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'POSTPASS', traits: {"smithy.api#enumValue" => "POSTPASS"}))
    ContactStatus.add_member(:completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    ContactStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    ContactStatus.add_member(:available, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AVAILABLE', traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    ContactStatus.add_member(:cancelling, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELLING', traits: {"smithy.api#enumValue" => "CANCELLING"}))
    ContactStatus.add_member(:aws_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_FAILED', traits: {"smithy.api#enumValue" => "AWS_FAILED"}))
    CreateConfigInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SafeName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Name of a <code>Config</code>.</p>", "smithy.api#required" => {}}))
    CreateConfigInput.add_member(:config_data, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigTypeData, location_name: 'configData', traits: {"smithy.api#documentation" => "<p>Parameters of a <code>Config</code>.</p>", "smithy.api#required" => {}}))
    CreateConfigInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Tags assigned to a <code>Config</code>.</p>"}))
    CreateConfigInput.type = Types::CreateConfigInput
    CreateConfigOutput.add_member(:config_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'configId', traits: {"smithy.api#documentation" => "<p>UUID of a <code>Config</code>.</p>"}))
    CreateConfigOutput.add_member(:config_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigCapabilityType, location_name: 'configType', traits: {"smithy.api#documentation" => "<p>Type of a <code>Config</code>.</p>"}))
    CreateConfigOutput.add_member(:config_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigArn, location_name: 'configArn', traits: {"smithy.api#documentation" => "<p>ARN of a <code>Config</code>.</p>"}))
    CreateConfigOutput.type = Types::CreateConfigOutput
    CreateDataflowEndpointGroupInput.add_member(:endpoint_details, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointDetailsList, location_name: 'endpointDetails', traits: {"smithy.api#documentation" => "<p>Endpoint details of each endpoint in the dataflow endpoint group.\n\n         All dataflow endpoints within a single dataflow endpoint group must be of the same type.\n         You cannot mix <a href=\"https://docs.aws.amazon.com/ground-station/latest/APIReference/API_AwsGroundStationAgentEndpoint.html\">\n            AWS Ground Station Agent endpoints</a> with\n         <a href=\"https://docs.aws.amazon.com/ground-station/latest/APIReference/API_DataflowEndpoint.html\">Dataflow endpoints</a> in the same group.\n         If your use case requires both types of endpoints, you must create separate dataflow endpoint\n         groups for each type.\n      </p>", "smithy.api#required" => {}}))
    CreateDataflowEndpointGroupInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Tags of a dataflow endpoint group.</p>"}))
    CreateDataflowEndpointGroupInput.add_member(:contact_pre_pass_duration_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: DataflowEndpointGroupDurationInSeconds, location_name: 'contactPrePassDurationSeconds', traits: {"smithy.api#documentation" => "<p>Amount of time, in seconds, before a contact starts that the Ground Station Dataflow Endpoint Group will be in a <code>PREPASS</code> state. A Ground Station Dataflow Endpoint Group State Change event will be emitted when the Dataflow Endpoint Group enters and exits the <code>PREPASS</code> state.</p>"}))
    CreateDataflowEndpointGroupInput.add_member(:contact_post_pass_duration_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: DataflowEndpointGroupDurationInSeconds, location_name: 'contactPostPassDurationSeconds', traits: {"smithy.api#documentation" => "<p>Amount of time, in seconds, after a contact ends that the Ground Station Dataflow Endpoint Group will be in a <code>POSTPASS</code> state. A Ground Station Dataflow Endpoint Group State Change event will be emitted when the Dataflow Endpoint Group enters and exits the <code>POSTPASS</code> state.</p>"}))
    CreateDataflowEndpointGroupInput.type = Types::CreateDataflowEndpointGroupInput
    CreateDataflowEndpointGroupOutput.add_member(:dataflow_endpoint_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'dataflowEndpointGroupId', traits: {"smithy.api#documentation" => "<p>UUID of a dataflow endpoint group.</p>"}))
    CreateDataflowEndpointGroupOutput.type = Types::CreateDataflowEndpointGroupOutput
    CreateEphemerisInput.add_member(:satellite_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'satelliteId', traits: {"smithy.api#documentation" => "<p>AWS Ground Station satellite ID for this ephemeris.</p>", "smithy.api#required" => {}}))
    CreateEphemerisInput.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'enabled', traits: {"smithy.api#documentation" => "<p>Whether to set the ephemeris status to <code>ENABLED</code> after validation.</p>\n         <p>Setting this to false will set the ephemeris status to <code>DISABLED</code> after validation.</p>"}))
    CreateEphemerisInput.add_member(:priority, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerEphemerisPriority, location_name: 'priority', traits: {"smithy.api#documentation" => "<p>Customer-provided priority score to establish the order in which overlapping ephemerides should be used.</p>\n         <p>The default for customer-provided ephemeris priority is 1, and higher numbers take precedence.</p>\n         <p>Priority must be 1 or greater</p>"}))
    CreateEphemerisInput.add_member(:expiration_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'expirationTime', traits: {"smithy.api#documentation" => "<p>An overall expiration time for the ephemeris in UTC, after which it will become <code>EXPIRED</code>.</p>"}))
    CreateEphemerisInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SafeName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>A name string associated with the ephemeris. Used as a human-readable identifier for the ephemeris.</p>", "smithy.api#required" => {}}))
    CreateEphemerisInput.add_member(:kms_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyArn, location_name: 'kmsKeyArn', traits: {"smithy.api#documentation" => "<p>The ARN of a KMS key used to encrypt the ephemeris in Ground Station.</p>"}))
    CreateEphemerisInput.add_member(:ephemeris, Smithy::Schema::Shapes::ShapeRef.new(shape: EphemerisData, location_name: 'ephemeris', traits: {"smithy.api#documentation" => "<p>Ephemeris data.</p>"}))
    CreateEphemerisInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Tags assigned to an ephemeris.</p>"}))
    CreateEphemerisInput.type = Types::CreateEphemerisInput
    CreateEphemerisOutput.add_member(:ephemeris_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'ephemerisId', traits: {"smithy.api#documentation" => "<p>The AWS Ground Station ephemeris ID.</p>"}))
    CreateEphemerisOutput.type = Types::CreateEphemerisOutput
    CreateMissionProfileInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SafeName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Name of a mission profile.</p>", "smithy.api#required" => {}}))
    CreateMissionProfileInput.add_member(:contact_pre_pass_duration_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: DurationInSeconds, location_name: 'contactPrePassDurationSeconds', traits: {"smithy.api#documentation" => "<p>Amount of time prior to contact start you’d like to receive a Ground Station Contact State Change event indicating an upcoming pass.</p>"}))
    CreateMissionProfileInput.add_member(:contact_post_pass_duration_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: DurationInSeconds, location_name: 'contactPostPassDurationSeconds', traits: {"smithy.api#documentation" => "<p>Amount of time after a contact ends that you’d like to receive a Ground Station Contact State Change event indicating the pass has finished.</p>"}))
    CreateMissionProfileInput.add_member(:minimum_viable_contact_duration_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveDurationInSeconds, location_name: 'minimumViableContactDurationSeconds', traits: {"smithy.api#documentation" => "<p>Smallest amount of time in seconds that you’d like to see for an available contact. AWS Ground Station will not present you with contacts shorter than this duration.</p>", "smithy.api#required" => {}}))
    CreateMissionProfileInput.add_member(:dataflow_edges, Smithy::Schema::Shapes::ShapeRef.new(shape: DataflowEdgeList, location_name: 'dataflowEdges', traits: {"smithy.api#documentation" => "<p>A list of lists of ARNs. Each list of ARNs is an edge, with a <i>from</i>\n            <code>Config</code> and a <i>to</i>\n            <code>Config</code>.</p>", "smithy.api#required" => {}}))
    CreateMissionProfileInput.add_member(:tracking_config_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigArn, location_name: 'trackingConfigArn', traits: {"smithy.api#documentation" => "<p>ARN of a tracking <code>Config</code>.</p>", "smithy.api#required" => {}}))
    CreateMissionProfileInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Tags assigned to a mission profile.</p>"}))
    CreateMissionProfileInput.add_member(:streams_kms_key, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKey, location_name: 'streamsKmsKey', traits: {"smithy.api#documentation" => "<p>KMS key to use for encrypting streams.</p>"}))
    CreateMissionProfileInput.add_member(:streams_kms_role, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'streamsKmsRole', traits: {"smithy.api#documentation" => "<p>Role to use for encrypting streams with KMS key.</p>"}))
    CreateMissionProfileInput.type = Types::CreateMissionProfileInput
    CreateMissionProfileOutput.add_member(:mission_profile_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'missionProfileId', traits: {"smithy.api#documentation" => "<p>UUID of a mission profile.</p>"}))
    CreateMissionProfileOutput.type = Types::CreateMissionProfileOutput
    Criticality.add_member(:required, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REQUIRED', traits: {"smithy.api#enumValue" => "REQUIRED"}))
    Criticality.add_member(:preferred, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PREFERRED', traits: {"smithy.api#enumValue" => "PREFERRED"}))
    Criticality.add_member(:removed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REMOVED', traits: {"smithy.api#enumValue" => "REMOVED"}))
    DataflowDetail.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: Source, location_name: 'source'))
    DataflowDetail.add_member(:destination, Smithy::Schema::Shapes::ShapeRef.new(shape: Destination, location_name: 'destination'))
    DataflowDetail.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'errorMessage', traits: {"smithy.api#documentation" => "<p>Error message for a dataflow.</p>"}))
    DataflowDetail.type = Types::DataflowDetail
    DataflowEdge.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigArn)
    DataflowEdgeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DataflowEdge)
    DataflowEndpoint.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SafeName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Name of a dataflow endpoint.</p>"}))
    DataflowEndpoint.add_member(:address, Smithy::Schema::Shapes::ShapeRef.new(shape: SocketAddress, location_name: 'address', traits: {"smithy.api#documentation" => "<p>Socket address of a dataflow endpoint.</p>"}))
    DataflowEndpoint.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>Status of a dataflow endpoint.</p>"}))
    DataflowEndpoint.add_member(:mtu, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'mtu', traits: {"smithy.api#documentation" => "<p>Maximum transmission unit (MTU) size in bytes of a dataflow endpoint.</p>", "smithy.api#range" => {"min" => 1400, "max" => 1500}}))
    DataflowEndpoint.type = Types::DataflowEndpoint
    DataflowEndpointConfig.add_member(:dataflow_endpoint_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'dataflowEndpointName', traits: {"smithy.api#documentation" => "<p>Name of a dataflow endpoint.</p>", "smithy.api#required" => {}}))
    DataflowEndpointConfig.add_member(:dataflow_endpoint_region, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'dataflowEndpointRegion', traits: {"smithy.api#documentation" => "<p>Region of a dataflow endpoint.</p>"}))
    DataflowEndpointConfig.type = Types::DataflowEndpointConfig
    DataflowEndpointGroupList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DataflowEndpointListItem)
    DataflowEndpointListItem.add_member(:dataflow_endpoint_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'dataflowEndpointGroupId', traits: {"smithy.api#documentation" => "<p>UUID of a dataflow endpoint group.</p>"}))
    DataflowEndpointListItem.add_member(:dataflow_endpoint_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DataflowEndpointGroupArn, location_name: 'dataflowEndpointGroupArn', traits: {"smithy.api#documentation" => "<p>ARN of a dataflow endpoint group.</p>"}))
    DataflowEndpointListItem.type = Types::DataflowEndpointListItem
    DataflowList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DataflowDetail)
    DecodeConfig.add_member(:unvalidated_json, Smithy::Schema::Shapes::ShapeRef.new(shape: JsonString, location_name: 'unvalidatedJSON', traits: {"smithy.api#documentation" => "<p>Unvalidated JSON of a decode <code>Config</code>.</p>", "smithy.api#required" => {}}))
    DecodeConfig.type = Types::DecodeConfig
    DeleteConfigInput.add_member(:config_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'configId', traits: {"smithy.api#documentation" => "<p>UUID of a <code>Config</code>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteConfigInput.add_member(:config_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigCapabilityType, location_name: 'configType', traits: {"smithy.api#documentation" => "<p>Type of a <code>Config</code>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteConfigInput.type = Types::DeleteConfigInput
    DeleteConfigOutput.add_member(:config_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'configId', traits: {"smithy.api#documentation" => "<p>UUID of a <code>Config</code>.</p>"}))
    DeleteConfigOutput.add_member(:config_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigCapabilityType, location_name: 'configType', traits: {"smithy.api#documentation" => "<p>Type of a <code>Config</code>.</p>"}))
    DeleteConfigOutput.add_member(:config_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigArn, location_name: 'configArn', traits: {"smithy.api#documentation" => "<p>ARN of a <code>Config</code>.</p>"}))
    DeleteConfigOutput.type = Types::DeleteConfigOutput
    DeleteDataflowEndpointGroupInput.add_member(:dataflow_endpoint_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'dataflowEndpointGroupId', traits: {"smithy.api#documentation" => "<p>UUID of a dataflow endpoint group.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDataflowEndpointGroupInput.type = Types::DeleteDataflowEndpointGroupInput
    DeleteDataflowEndpointGroupOutput.add_member(:dataflow_endpoint_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'dataflowEndpointGroupId', traits: {"smithy.api#documentation" => "<p>UUID of a dataflow endpoint group.</p>"}))
    DeleteDataflowEndpointGroupOutput.type = Types::DeleteDataflowEndpointGroupOutput
    DeleteEphemerisInput.add_member(:ephemeris_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'ephemerisId', traits: {"smithy.api#documentation" => "<p>The AWS Ground Station ephemeris ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteEphemerisInput.type = Types::DeleteEphemerisInput
    DeleteEphemerisOutput.add_member(:ephemeris_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'ephemerisId', traits: {"smithy.api#documentation" => "<p>The AWS Ground Station ephemeris ID.</p>"}))
    DeleteEphemerisOutput.type = Types::DeleteEphemerisOutput
    DeleteMissionProfileInput.add_member(:mission_profile_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'missionProfileId', traits: {"smithy.api#documentation" => "<p>UUID of a mission profile.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteMissionProfileInput.type = Types::DeleteMissionProfileInput
    DeleteMissionProfileOutput.add_member(:mission_profile_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'missionProfileId', traits: {"smithy.api#documentation" => "<p>UUID of a mission profile.</p>"}))
    DeleteMissionProfileOutput.type = Types::DeleteMissionProfileOutput
    DemodulationConfig.add_member(:unvalidated_json, Smithy::Schema::Shapes::ShapeRef.new(shape: JsonString, location_name: 'unvalidatedJSON', traits: {"smithy.api#documentation" => "<p>Unvalidated JSON of a demodulation <code>Config</code>.</p>", "smithy.api#required" => {}}))
    DemodulationConfig.type = Types::DemodulationConfig
    DependencyException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    DependencyException.add_member(:parameter_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'parameterName', traits: {"smithy.api#documentation" => "<p/>"}))
    DependencyException.type = Types::DependencyException
    DescribeContactInput.add_member(:contact_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'contactId', traits: {"smithy.api#documentation" => "<p>UUID of a contact.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeContactInput.type = Types::DescribeContactInput
    DescribeContactOutput.add_member(:contact_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'contactId', traits: {"smithy.api#documentation" => "<p>UUID of a contact.</p>"}))
    DescribeContactOutput.add_member(:mission_profile_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: MissionProfileArn, location_name: 'missionProfileArn', traits: {"smithy.api#documentation" => "<p>ARN of a mission profile.</p>"}))
    DescribeContactOutput.add_member(:satellite_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SatelliteArn, location_name: 'satelliteArn', traits: {"smithy.api#documentation" => "<p>ARN of a satellite.</p>"}))
    DescribeContactOutput.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'startTime', traits: {"smithy.api#documentation" => "<p>Start time of a contact in UTC.</p>"}))
    DescribeContactOutput.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'endTime', traits: {"smithy.api#documentation" => "<p>End time of a contact in UTC.</p>"}))
    DescribeContactOutput.add_member(:pre_pass_start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'prePassStartTime', traits: {"smithy.api#documentation" => "<p>Amount of time prior to contact start you’d like to receive a CloudWatch event indicating an upcoming pass.</p>"}))
    DescribeContactOutput.add_member(:post_pass_end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'postPassEndTime', traits: {"smithy.api#documentation" => "<p>Amount of time after a contact ends that you’d like to receive a CloudWatch event indicating the pass has finished.</p>"}))
    DescribeContactOutput.add_member(:ground_station, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'groundStation', traits: {"smithy.api#documentation" => "<p>Ground station for a contact.</p>"}))
    DescribeContactOutput.add_member(:contact_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ContactStatus, location_name: 'contactStatus', traits: {"smithy.api#documentation" => "<p>Status of a contact.</p>"}))
    DescribeContactOutput.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'errorMessage', traits: {"smithy.api#documentation" => "<p>Error message for a contact.</p>"}))
    DescribeContactOutput.add_member(:maximum_elevation, Smithy::Schema::Shapes::ShapeRef.new(shape: Elevation, location_name: 'maximumElevation', traits: {"smithy.api#documentation" => "<p>Maximum elevation angle of a contact.</p>"}))
    DescribeContactOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Tags assigned to a contact.</p>"}))
    DescribeContactOutput.add_member(:region, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'region', traits: {"smithy.api#documentation" => "<p>Region of a contact.</p>"}))
    DescribeContactOutput.add_member(:dataflow_list, Smithy::Schema::Shapes::ShapeRef.new(shape: DataflowList, location_name: 'dataflowList', traits: {"smithy.api#documentation" => "<p>List describing source and destination details for each dataflow edge.</p>"}))
    DescribeContactOutput.add_member(:visibility_start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'visibilityStartTime', traits: {"smithy.api#documentation" => "<p>\n         Projected time in UTC your satellite will rise above the\n         <a href=\"https://docs.aws.amazon.com/ground-station/latest/ug/site-masks.html\">receive mask</a>.\n         This time is based on the satellite's current active ephemeris for future contacts and the ephemeris that was\n         active during contact execution for completed contacts.\n      </p>"}))
    DescribeContactOutput.add_member(:visibility_end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'visibilityEndTime', traits: {"smithy.api#documentation" => "<p>\n         Projected time in UTC your satellite will set below the\n         <a href=\"https://docs.aws.amazon.com/ground-station/latest/ug/site-masks.html\">receive mask</a>.\n         This time is based on the satellite's current active ephemeris for future contacts and the ephemeris that was\n         active during contact execution for completed contacts.\n      </p>"}))
    DescribeContactOutput.type = Types::DescribeContactOutput
    DescribeEphemerisInput.add_member(:ephemeris_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'ephemerisId', traits: {"smithy.api#documentation" => "<p>The AWS Ground Station ephemeris ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeEphemerisInput.type = Types::DescribeEphemerisInput
    DescribeEphemerisOutput.add_member(:ephemeris_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'ephemerisId', traits: {"smithy.api#documentation" => "<p>The AWS Ground Station ephemeris ID.</p>"}))
    DescribeEphemerisOutput.add_member(:satellite_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'satelliteId', traits: {"smithy.api#documentation" => "<p>The AWS Ground Station satellite ID associated with ephemeris.</p>"}))
    DescribeEphemerisOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: EphemerisStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the ephemeris.</p>"}))
    DescribeEphemerisOutput.add_member(:priority, Smithy::Schema::Shapes::ShapeRef.new(shape: EphemerisPriority, location_name: 'priority', traits: {"smithy.api#documentation" => "<p>Customer-provided priority score to establish the order in which overlapping ephemerides should be used.</p>\n         <p>The default for customer-provided ephemeris priority is 1, and higher numbers take precedence.</p>\n         <p>Priority must be 1 or greater</p>"}))
    DescribeEphemerisOutput.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>The time the ephemeris was uploaded in UTC.</p>"}))
    DescribeEphemerisOutput.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'enabled', traits: {"smithy.api#documentation" => "<p>Whether or not the ephemeris is enabled.</p>"}))
    DescribeEphemerisOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SafeName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>A name string associated with the ephemeris. Used as a human-readable identifier for the ephemeris.</p>"}))
    DescribeEphemerisOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Tags assigned to an ephemeris.</p>"}))
    DescribeEphemerisOutput.add_member(:supplied_data, Smithy::Schema::Shapes::ShapeRef.new(shape: EphemerisTypeDescription, location_name: 'suppliedData', traits: {"smithy.api#documentation" => "<p>Supplied ephemeris data.</p>"}))
    DescribeEphemerisOutput.add_member(:invalid_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: EphemerisInvalidReason, location_name: 'invalidReason', traits: {"smithy.api#documentation" => "<p>Reason that an ephemeris failed validation. Only provided for ephemerides with <code>INVALID</code> status.</p>"}))
    DescribeEphemerisOutput.type = Types::DescribeEphemerisOutput
    Destination.add_member(:config_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigCapabilityType, location_name: 'configType', traits: {"smithy.api#documentation" => "<p>Type of a <code>Config</code>.</p>"}))
    Destination.add_member(:config_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'configId', traits: {"smithy.api#documentation" => "<p>UUID of a <code>Config</code>.</p>"}))
    Destination.add_member(:config_details, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigDetails, location_name: 'configDetails', traits: {"smithy.api#documentation" => "<p>Additional details for a <code>Config</code>, if type is dataflow endpoint or antenna demod decode.</p>"}))
    Destination.add_member(:dataflow_destination_region, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'dataflowDestinationRegion', traits: {"smithy.api#documentation" => "<p>Region of a dataflow destination.</p>"}))
    Destination.type = Types::Destination
    DiscoveryData.add_member(:public_ip_addresses, Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddressList, location_name: 'publicIpAddresses', traits: {"smithy.api#documentation" => "<p>List of public IP addresses to associate with agent.</p>", "smithy.api#required" => {}}))
    DiscoveryData.add_member(:private_ip_addresses, Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddressList, location_name: 'privateIpAddresses', traits: {"smithy.api#documentation" => "<p>List of private IP addresses to associate with agent.</p>", "smithy.api#required" => {}}))
    DiscoveryData.add_member(:capability_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: CapabilityArnList, location_name: 'capabilityArns', traits: {"smithy.api#documentation" => "<p>List of capabilities to associate with agent.</p>", "smithy.api#required" => {}}))
    DiscoveryData.type = Types::DiscoveryData
    Eirp.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Double, location_name: 'value', traits: {"smithy.api#documentation" => "<p>Value of an EIRP. Valid values are between 20.0 to 50.0 dBW.</p>", "smithy.api#required" => {}}))
    Eirp.add_member(:units, Smithy::Schema::Shapes::ShapeRef.new(shape: EirpUnits, location_name: 'units', traits: {"smithy.api#documentation" => "<p>Units of an EIRP.</p>", "smithy.api#required" => {}}))
    Eirp.type = Types::Eirp
    EirpUnits.add_member(:dbw, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DBW', traits: {"smithy.api#enumValue" => "dBW"}))
    Elevation.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Double, location_name: 'value', traits: {"smithy.api#documentation" => "<p>Elevation angle value.</p>", "smithy.api#required" => {}}))
    Elevation.add_member(:unit, Smithy::Schema::Shapes::ShapeRef.new(shape: AngleUnits, location_name: 'unit', traits: {"smithy.api#documentation" => "<p>Elevation angle units.</p>", "smithy.api#required" => {}}))
    Elevation.type = Types::Elevation
    EndpointDetails.add_member(:security_details, Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityDetails, location_name: 'securityDetails', traits: {"smithy.api#documentation" => "<p>Endpoint security details including a list of subnets, a list of security groups and a role to connect streams to instances.</p>"}))
    EndpointDetails.add_member(:endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: DataflowEndpoint, location_name: 'endpoint', traits: {"smithy.api#documentation" => "<p>A dataflow endpoint.</p>"}))
    EndpointDetails.add_member(:aws_ground_station_agent_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsGroundStationAgentEndpoint, location_name: 'awsGroundStationAgentEndpoint', traits: {"smithy.api#documentation" => "<p>An agent endpoint.</p>"}))
    EndpointDetails.add_member(:health_status, Smithy::Schema::Shapes::ShapeRef.new(shape: CapabilityHealth, location_name: 'healthStatus', traits: {"smithy.api#documentation" => "<p>A dataflow endpoint health status. This field is ignored when calling <code>CreateDataflowEndpointGroup</code>.</p>"}))
    EndpointDetails.add_member(:health_reasons, Smithy::Schema::Shapes::ShapeRef.new(shape: CapabilityHealthReasonList, location_name: 'healthReasons', traits: {"smithy.api#documentation" => "<p>Health reasons for a dataflow endpoint. This field is ignored when calling <code>CreateDataflowEndpointGroup</code>.</p>"}))
    EndpointDetails.type = Types::EndpointDetails
    EndpointDetailsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointDetails)
    EndpointStatus.add_member(:created, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'created', traits: {"smithy.api#enumValue" => "created"}))
    EndpointStatus.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'creating', traits: {"smithy.api#enumValue" => "creating"}))
    EndpointStatus.add_member(:deleted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'deleted', traits: {"smithy.api#enumValue" => "deleted"}))
    EndpointStatus.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'deleting', traits: {"smithy.api#enumValue" => "deleting"}))
    EndpointStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'failed', traits: {"smithy.api#enumValue" => "failed"}))
    EphemeridesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EphemerisItem)
    EphemerisData.add_member(:tle, Types::EphemerisData::Tle, Smithy::Schema::Shapes::ShapeRef.new(shape: TLEEphemeris, location_name: 'tle'))
    EphemerisData.add_member(:oem, Types::EphemerisData::Oem, Smithy::Schema::Shapes::ShapeRef.new(shape: OEMEphemeris, location_name: 'oem'))
    EphemerisData.add_member(:unknown, Types::EphemerisData::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    EphemerisData.type = Types::EphemerisData
    EphemerisDescription.add_member(:source_s3_object, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Object, location_name: 'sourceS3Object', traits: {"smithy.api#documentation" => "<p>Source S3 object used for the ephemeris.</p>"}))
    EphemerisDescription.add_member(:ephemeris_data, Smithy::Schema::Shapes::ShapeRef.new(shape: UnboundedString, location_name: 'ephemerisData', traits: {"smithy.api#documentation" => "<p>Supplied ephemeris data.</p>"}))
    EphemerisDescription.type = Types::EphemerisDescription
    EphemerisInvalidReason.add_member(:metadata_invalid, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'METADATA_INVALID', traits: {"smithy.api#documentation" => "Provided spacecraft identifiers such as spacecraft NORAD Id are invalid", "smithy.api#enumValue" => "METADATA_INVALID"}))
    EphemerisInvalidReason.add_member(:time_range_invalid, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TIME_RANGE_INVALID', traits: {"smithy.api#documentation" => "Start, end, or expiration time(s) are invalid for the provided ephemeris", "smithy.api#enumValue" => "TIME_RANGE_INVALID"}))
    EphemerisInvalidReason.add_member(:trajectory_invalid, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TRAJECTORY_INVALID', traits: {"smithy.api#documentation" => "Provided ephemeris defines invalid spacecraft trajectory", "smithy.api#enumValue" => "TRAJECTORY_INVALID"}))
    EphemerisInvalidReason.add_member(:kms_key_invalid, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KMS_KEY_INVALID', traits: {"smithy.api#documentation" => "Provided KMS key is invalid", "smithy.api#enumValue" => "KMS_KEY_INVALID"}))
    EphemerisInvalidReason.add_member(:validation_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VALIDATION_ERROR', traits: {"smithy.api#documentation" => "Internal Service Error occurred while processing ephemeris", "smithy.api#enumValue" => "VALIDATION_ERROR"}))
    EphemerisItem.add_member(:ephemeris_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'ephemerisId', traits: {"smithy.api#documentation" => "<p>The AWS Ground Station ephemeris ID.</p>"}))
    EphemerisItem.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: EphemerisStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the ephemeris.</p>"}))
    EphemerisItem.add_member(:priority, Smithy::Schema::Shapes::ShapeRef.new(shape: EphemerisPriority, location_name: 'priority', traits: {"smithy.api#documentation" => "<p>Customer-provided priority score to establish the order in which overlapping ephemerides should be used.</p>\n         <p>The default for customer-provided ephemeris priority is 1, and higher numbers take precedence.</p>\n         <p>Priority must be 1 or greater</p>"}))
    EphemerisItem.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'enabled', traits: {"smithy.api#documentation" => "<p>Whether or not the ephemeris is enabled.</p>"}))
    EphemerisItem.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>The time the ephemeris was uploaded in UTC.</p>"}))
    EphemerisItem.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SafeName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>A name string associated with the ephemeris. Used as a human-readable identifier for the ephemeris.</p>"}))
    EphemerisItem.add_member(:source_s3_object, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Object, location_name: 'sourceS3Object', traits: {"smithy.api#documentation" => "<p>Source S3 object used for the ephemeris.</p>"}))
    EphemerisItem.type = Types::EphemerisItem
    EphemerisMetaData.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: EphemerisSource, location_name: 'source', traits: {"smithy.api#documentation" => "<p>The <code>EphemerisSource</code> that generated a given ephemeris.</p>", "smithy.api#required" => {}}))
    EphemerisMetaData.add_member(:ephemeris_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'ephemerisId', traits: {"smithy.api#documentation" => "<p>UUID of a customer-provided ephemeris.</p>\n         <p>This field is not populated for default ephemerides from Space Track.</p>"}))
    EphemerisMetaData.add_member(:epoch, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'epoch', traits: {"smithy.api#documentation" => "<p>The epoch of a default, ephemeris from Space Track in UTC.</p>\n         <p>This field is not populated for customer-provided ephemerides.</p>"}))
    EphemerisMetaData.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SafeName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>A name string associated with the ephemeris. Used as a human-readable identifier for the ephemeris.</p>\n         <p>A name is only returned for customer-provider ephemerides that have a name associated.</p>"}))
    EphemerisMetaData.type = Types::EphemerisMetaData
    EphemerisSource.add_member(:customer_provided, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CUSTOMER_PROVIDED', traits: {"smithy.api#enumValue" => "CUSTOMER_PROVIDED"}))
    EphemerisSource.add_member(:space_track, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SPACE_TRACK', traits: {"smithy.api#enumValue" => "SPACE_TRACK"}))
    EphemerisStatus.add_member(:validating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VALIDATING', traits: {"smithy.api#enumValue" => "VALIDATING"}))
    EphemerisStatus.add_member(:invalid, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID', traits: {"smithy.api#enumValue" => "INVALID"}))
    EphemerisStatus.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR', traits: {"smithy.api#enumValue" => "ERROR"}))
    EphemerisStatus.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    EphemerisStatus.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    EphemerisStatus.add_member(:expired, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXPIRED', traits: {"smithy.api#enumValue" => "EXPIRED"}))
    EphemerisStatusList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EphemerisStatus)
    EphemerisTypeDescription.add_member(:tle, Types::EphemerisTypeDescription::Tle, Smithy::Schema::Shapes::ShapeRef.new(shape: EphemerisDescription, location_name: 'tle'))
    EphemerisTypeDescription.add_member(:oem, Types::EphemerisTypeDescription::Oem, Smithy::Schema::Shapes::ShapeRef.new(shape: EphemerisDescription, location_name: 'oem'))
    EphemerisTypeDescription.add_member(:unknown, Types::EphemerisTypeDescription::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    EphemerisTypeDescription.type = Types::EphemerisTypeDescription
    Frequency.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Double, location_name: 'value', traits: {"smithy.api#documentation" => "<p>Frequency value. Valid values are between 2200 to 2300 MHz and 7750 to 8400 MHz for downlink and 2025 to 2120 MHz for uplink.</p>", "smithy.api#required" => {}}))
    Frequency.add_member(:units, Smithy::Schema::Shapes::ShapeRef.new(shape: FrequencyUnits, location_name: 'units', traits: {"smithy.api#documentation" => "<p>Frequency units.</p>", "smithy.api#required" => {}}))
    Frequency.type = Types::Frequency
    FrequencyBandwidth.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Double, location_name: 'value', traits: {"smithy.api#documentation" => "<p>Frequency bandwidth value. AWS Ground Station currently has the following bandwidth limitations:</p>\n         <ul>\n            <li>\n               <p>For <code>AntennaDownlinkDemodDecodeconfig</code>, valid values are between 125 kHz to 650 MHz.</p>\n            </li>\n            <li>\n               <p>For <code>AntennaDownlinkconfig</code>, valid values are between 10 kHz to 54 MHz.</p>\n            </li>\n            <li>\n               <p>For <code>AntennaUplinkConfig</code>, valid values are between 10 kHz to 54 MHz.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    FrequencyBandwidth.add_member(:units, Smithy::Schema::Shapes::ShapeRef.new(shape: BandwidthUnits, location_name: 'units', traits: {"smithy.api#documentation" => "<p>Frequency bandwidth units.</p>", "smithy.api#required" => {}}))
    FrequencyBandwidth.type = Types::FrequencyBandwidth
    FrequencyUnits.add_member(:ghz, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GHZ', traits: {"smithy.api#enumValue" => "GHz"}))
    FrequencyUnits.add_member(:mhz, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MHZ', traits: {"smithy.api#enumValue" => "MHz"}))
    FrequencyUnits.add_member(:khz, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KHZ', traits: {"smithy.api#enumValue" => "kHz"}))
    GetAgentConfigurationInput.add_member(:agent_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'agentId', traits: {"smithy.api#documentation" => "<p>UUID of agent to get configuration information for.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAgentConfigurationInput.type = Types::GetAgentConfigurationInput
    GetAgentConfigurationOutput.add_member(:agent_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'agentId', traits: {"smithy.api#documentation" => "<p>UUID of agent.</p>"}))
    GetAgentConfigurationOutput.add_member(:tasking_document, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'taskingDocument', traits: {"smithy.api#documentation" => "<p>Tasking document for agent.</p>"}))
    GetAgentConfigurationOutput.type = Types::GetAgentConfigurationOutput
    GetConfigInput.add_member(:config_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'configId', traits: {"smithy.api#documentation" => "<p>UUID of a <code>Config</code>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetConfigInput.add_member(:config_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigCapabilityType, location_name: 'configType', traits: {"smithy.api#documentation" => "<p>Type of a <code>Config</code>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetConfigInput.type = Types::GetConfigInput
    GetConfigOutput.add_member(:config_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'configId', traits: {"smithy.api#documentation" => "<p>UUID of a <code>Config</code>.</p>", "smithy.api#required" => {}}))
    GetConfigOutput.add_member(:config_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigArn, location_name: 'configArn', traits: {"smithy.api#documentation" => "<p>ARN of a <code>Config</code>\n         </p>", "smithy.api#required" => {}}))
    GetConfigOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Name of a <code>Config</code>.</p>", "smithy.api#required" => {}}))
    GetConfigOutput.add_member(:config_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigCapabilityType, location_name: 'configType', traits: {"smithy.api#documentation" => "<p>Type of a <code>Config</code>.</p>"}))
    GetConfigOutput.add_member(:config_data, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigTypeData, location_name: 'configData', traits: {"smithy.api#documentation" => "<p>Data elements in a <code>Config</code>.</p>", "smithy.api#required" => {}}))
    GetConfigOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Tags assigned to a <code>Config</code>.</p>"}))
    GetConfigOutput.type = Types::GetConfigOutput
    GetDataflowEndpointGroupInput.add_member(:dataflow_endpoint_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'dataflowEndpointGroupId', traits: {"smithy.api#documentation" => "<p>UUID of a dataflow endpoint group.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDataflowEndpointGroupInput.type = Types::GetDataflowEndpointGroupInput
    GetDataflowEndpointGroupOutput.add_member(:dataflow_endpoint_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'dataflowEndpointGroupId', traits: {"smithy.api#documentation" => "<p>UUID of a dataflow endpoint group.</p>"}))
    GetDataflowEndpointGroupOutput.add_member(:dataflow_endpoint_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DataflowEndpointGroupArn, location_name: 'dataflowEndpointGroupArn', traits: {"smithy.api#documentation" => "<p>ARN of a dataflow endpoint group.</p>"}))
    GetDataflowEndpointGroupOutput.add_member(:endpoints_details, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointDetailsList, location_name: 'endpointsDetails', traits: {"smithy.api#documentation" => "<p>Details of a dataflow endpoint.</p>"}))
    GetDataflowEndpointGroupOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Tags assigned to a dataflow endpoint group.</p>"}))
    GetDataflowEndpointGroupOutput.add_member(:contact_pre_pass_duration_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: DataflowEndpointGroupDurationInSeconds, location_name: 'contactPrePassDurationSeconds', traits: {"smithy.api#documentation" => "<p>Amount of time, in seconds, before a contact starts that the Ground Station Dataflow Endpoint Group will be in a <code>PREPASS</code> state. A Ground Station Dataflow Endpoint Group State Change event will be emitted when the Dataflow Endpoint Group enters and exits the <code>PREPASS</code> state.</p>"}))
    GetDataflowEndpointGroupOutput.add_member(:contact_post_pass_duration_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: DataflowEndpointGroupDurationInSeconds, location_name: 'contactPostPassDurationSeconds', traits: {"smithy.api#documentation" => "<p>Amount of time, in seconds, after a contact ends that the Ground Station Dataflow Endpoint Group will be in a <code>POSTPASS</code> state. A Ground Station Dataflow Endpoint Group State Change event will be emitted when the Dataflow Endpoint Group enters and exits the <code>POSTPASS</code> state.</p>"}))
    GetDataflowEndpointGroupOutput.type = Types::GetDataflowEndpointGroupOutput
    GetMinuteUsageInput.add_member(:month, Smithy::Schema::Shapes::ShapeRef.new(shape: Month, location_name: 'month', traits: {"smithy.api#documentation" => "<p>The month being requested, with a value of 1-12.</p>", "smithy.api#required" => {}}))
    GetMinuteUsageInput.add_member(:year, Smithy::Schema::Shapes::ShapeRef.new(shape: Year, location_name: 'year', traits: {"smithy.api#documentation" => "<p>The year being requested, in the format of YYYY.</p>", "smithy.api#required" => {}}))
    GetMinuteUsageInput.type = Types::GetMinuteUsageInput
    GetMinuteUsageOutput.add_member(:is_reserved_minutes_customer, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isReservedMinutesCustomer', traits: {"smithy.api#documentation" => "<p>Returns whether or not an account has signed up for the reserved minutes pricing plan, specific to the month being requested.</p>"}))
    GetMinuteUsageOutput.add_member(:total_reserved_minute_allocation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'totalReservedMinuteAllocation', traits: {"smithy.api#documentation" => "<p>Total number of reserved minutes allocated, specific to the month being requested.</p>"}))
    GetMinuteUsageOutput.add_member(:upcoming_minutes_scheduled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'upcomingMinutesScheduled', traits: {"smithy.api#documentation" => "<p>Upcoming minutes scheduled for an account, specific to the month being requested.</p>"}))
    GetMinuteUsageOutput.add_member(:total_scheduled_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'totalScheduledMinutes', traits: {"smithy.api#documentation" => "<p>Total scheduled minutes for an account, specific to the month being requested.</p>"}))
    GetMinuteUsageOutput.add_member(:estimated_minutes_remaining, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'estimatedMinutesRemaining', traits: {"smithy.api#documentation" => "<p>Estimated number of minutes remaining for an account, specific to the month being requested.</p>"}))
    GetMinuteUsageOutput.type = Types::GetMinuteUsageOutput
    GetMissionProfileInput.add_member(:mission_profile_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'missionProfileId', traits: {"smithy.api#documentation" => "<p>UUID of a mission profile.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMissionProfileInput.type = Types::GetMissionProfileInput
    GetMissionProfileOutput.add_member(:mission_profile_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'missionProfileId', traits: {"smithy.api#documentation" => "<p>UUID of a mission profile.</p>"}))
    GetMissionProfileOutput.add_member(:mission_profile_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: MissionProfileArn, location_name: 'missionProfileArn', traits: {"smithy.api#documentation" => "<p>ARN of a mission profile.</p>"}))
    GetMissionProfileOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SafeName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Name of a mission profile.</p>"}))
    GetMissionProfileOutput.add_member(:region, Smithy::Schema::Shapes::ShapeRef.new(shape: AWSRegion, location_name: 'region', traits: {"smithy.api#documentation" => "<p>Region of a mission profile.</p>"}))
    GetMissionProfileOutput.add_member(:contact_pre_pass_duration_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: DurationInSeconds, location_name: 'contactPrePassDurationSeconds', traits: {"smithy.api#documentation" => "<p>Amount of time prior to contact start you’d like to receive a CloudWatch event indicating an upcoming pass.</p>"}))
    GetMissionProfileOutput.add_member(:contact_post_pass_duration_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: DurationInSeconds, location_name: 'contactPostPassDurationSeconds', traits: {"smithy.api#documentation" => "<p>Amount of time after a contact ends that you’d like to receive a CloudWatch event indicating the pass has finished.</p>"}))
    GetMissionProfileOutput.add_member(:minimum_viable_contact_duration_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveDurationInSeconds, location_name: 'minimumViableContactDurationSeconds', traits: {"smithy.api#documentation" => "<p>Smallest amount of time in seconds that you’d like to see for an available contact. AWS Ground Station will not present you with contacts shorter than this duration.</p>"}))
    GetMissionProfileOutput.add_member(:dataflow_edges, Smithy::Schema::Shapes::ShapeRef.new(shape: DataflowEdgeList, location_name: 'dataflowEdges', traits: {"smithy.api#documentation" => "<p>A list of lists of ARNs. Each list of ARNs is an edge, with a <i>from</i>\n            <code>Config</code> and a <i>to</i>\n            <code>Config</code>.</p>"}))
    GetMissionProfileOutput.add_member(:tracking_config_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigArn, location_name: 'trackingConfigArn', traits: {"smithy.api#documentation" => "<p>ARN of a tracking <code>Config</code>.</p>"}))
    GetMissionProfileOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Tags assigned to a mission profile.</p>"}))
    GetMissionProfileOutput.add_member(:streams_kms_key, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKey, location_name: 'streamsKmsKey', traits: {"smithy.api#documentation" => "<p>KMS key to use for encrypting streams.</p>"}))
    GetMissionProfileOutput.add_member(:streams_kms_role, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'streamsKmsRole', traits: {"smithy.api#documentation" => "<p>Role to use for encrypting streams with KMS key.</p>"}))
    GetMissionProfileOutput.type = Types::GetMissionProfileOutput
    GetSatelliteInput.add_member(:satellite_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'satelliteId', traits: {"smithy.api#documentation" => "<p>UUID of a satellite.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSatelliteInput.type = Types::GetSatelliteInput
    GetSatelliteOutput.add_member(:satellite_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'satelliteId', traits: {"smithy.api#documentation" => "<p>UUID of a satellite.</p>"}))
    GetSatelliteOutput.add_member(:satellite_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SatelliteArn, location_name: 'satelliteArn', traits: {"smithy.api#documentation" => "<p>ARN of a satellite.</p>"}))
    GetSatelliteOutput.add_member(:norad_satellite_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NoradSatelliteID, location_name: 'noradSatelliteID', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>NORAD satellite ID number.</p>"}))
    GetSatelliteOutput.add_member(:ground_stations, Smithy::Schema::Shapes::ShapeRef.new(shape: GroundStationIdList, location_name: 'groundStations', traits: {"smithy.api#documentation" => "<p>A list of ground stations to which the satellite is on-boarded.</p>"}))
    GetSatelliteOutput.add_member(:current_ephemeris, Smithy::Schema::Shapes::ShapeRef.new(shape: EphemerisMetaData, location_name: 'currentEphemeris', traits: {"smithy.api#documentation" => "<p>The current ephemeris being used to compute the trajectory of the satellite.</p>"}))
    GetSatelliteOutput.type = Types::GetSatelliteOutput
    GroundStationData.add_member(:ground_station_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GroundStationName, location_name: 'groundStationId', traits: {"smithy.api#documentation" => "<p>UUID of a ground station.</p>"}))
    GroundStationData.add_member(:ground_station_name, Smithy::Schema::Shapes::ShapeRef.new(shape: GroundStationName, location_name: 'groundStationName', traits: {"smithy.api#documentation" => "<p>Name of a ground station.</p>"}))
    GroundStationData.add_member(:region, Smithy::Schema::Shapes::ShapeRef.new(shape: AWSRegion, location_name: 'region', traits: {"smithy.api#documentation" => "<p>Ground station Region.</p>"}))
    GroundStationData.type = Types::GroundStationData
    GroundStationIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: GroundStationName)
    GroundStationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: GroundStationData)
    IntegerRange.add_member(:minimum, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'minimum', traits: {"smithy.api#documentation" => "<p>A minimum value.</p>", "smithy.api#required" => {}}))
    IntegerRange.add_member(:maximum, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maximum', traits: {"smithy.api#documentation" => "<p>A maximum value.</p>", "smithy.api#required" => {}}))
    IntegerRange.type = Types::IntegerRange
    InvalidParameterException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    InvalidParameterException.add_member(:parameter_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'parameterName', traits: {"smithy.api#documentation" => "<p/>"}))
    InvalidParameterException.type = Types::InvalidParameterException
    IpAddressList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: IpV4Address)
    KmsKey.add_member(:kms_key_arn, Types::KmsKey::KmsKeyArn, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyArn, location_name: 'kmsKeyArn', traits: {"smithy.api#documentation" => "<p>KMS Key Arn.</p>"}))
    KmsKey.add_member(:kms_alias_arn, Types::KmsKey::KmsAliasArn, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyAliasArn, location_name: 'kmsAliasArn', traits: {"smithy.api#documentation" => "<p>KMS Alias Arn.</p>"}))
    KmsKey.add_member(:kms_alias_name, Types::KmsKey::KmsAliasName, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyAliasName, location_name: 'kmsAliasName', traits: {"smithy.api#documentation" => "<p>KMS Alias Name.</p>"}))
    KmsKey.add_member(:unknown, Types::KmsKey::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    KmsKey.type = Types::KmsKey
    ListConfigsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationMaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>Maximum number of <code>Configs</code> returned.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListConfigsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Next token returned in the request of a previous <code>ListConfigs</code> call. Used to get the next page of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListConfigsInput.type = Types::ListConfigsInput
    ListConfigsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Next token returned in the response of a previous <code>ListConfigs</code> call. Used to get the next page of results.</p>"}))
    ListConfigsOutput.add_member(:config_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigList, location_name: 'configList', traits: {"smithy.api#documentation" => "<p>List of <code>Config</code> items.</p>"}))
    ListConfigsOutput.type = Types::ListConfigsOutput
    ListContactsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationMaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>Maximum number of contacts returned.</p>"}))
    ListContactsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Next token returned in the request of a previous <code>ListContacts</code> call. Used to get the next page of results.</p>"}))
    ListContactsInput.add_member(:status_list, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusList, location_name: 'statusList', traits: {"smithy.api#documentation" => "<p>Status of a contact reservation.</p>", "smithy.api#required" => {}}))
    ListContactsInput.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'startTime', traits: {"smithy.api#documentation" => "<p>Start time of a contact in UTC.</p>", "smithy.api#required" => {}}))
    ListContactsInput.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'endTime', traits: {"smithy.api#documentation" => "<p>End time of a contact in UTC.</p>", "smithy.api#required" => {}}))
    ListContactsInput.add_member(:ground_station, Smithy::Schema::Shapes::ShapeRef.new(shape: GroundStationName, location_name: 'groundStation', traits: {"smithy.api#documentation" => "<p>Name of a ground station.</p>"}))
    ListContactsInput.add_member(:satellite_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SatelliteArn, location_name: 'satelliteArn', traits: {"smithy.api#documentation" => "<p>ARN of a satellite.</p>"}))
    ListContactsInput.add_member(:mission_profile_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: MissionProfileArn, location_name: 'missionProfileArn', traits: {"smithy.api#documentation" => "<p>ARN of a mission profile.</p>"}))
    ListContactsInput.type = Types::ListContactsInput
    ListContactsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Next token returned in the response of a previous <code>ListContacts</code> call. Used to get the next page of results.</p>"}))
    ListContactsOutput.add_member(:contact_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ContactList, location_name: 'contactList', traits: {"smithy.api#documentation" => "<p>List of contacts.</p>"}))
    ListContactsOutput.type = Types::ListContactsOutput
    ListDataflowEndpointGroupsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationMaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>Maximum number of dataflow endpoint groups returned.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListDataflowEndpointGroupsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Next token returned in the request of a previous <code>ListDataflowEndpointGroups</code> call. Used to get the next page of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListDataflowEndpointGroupsInput.type = Types::ListDataflowEndpointGroupsInput
    ListDataflowEndpointGroupsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Next token returned in the response of a previous <code>ListDataflowEndpointGroups</code> call. Used to get the next page of results.</p>"}))
    ListDataflowEndpointGroupsOutput.add_member(:dataflow_endpoint_group_list, Smithy::Schema::Shapes::ShapeRef.new(shape: DataflowEndpointGroupList, location_name: 'dataflowEndpointGroupList', traits: {"smithy.api#documentation" => "<p>A list of dataflow endpoint groups.</p>"}))
    ListDataflowEndpointGroupsOutput.type = Types::ListDataflowEndpointGroupsOutput
    ListEphemeridesInput.add_member(:satellite_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'satelliteId', traits: {"smithy.api#documentation" => "<p>The AWS Ground Station satellite ID to list ephemeris for.</p>", "smithy.api#required" => {}}))
    ListEphemeridesInput.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'startTime', traits: {"smithy.api#documentation" => "<p>The start time to list in UTC. The operation will return an ephemeris if its expiration time is within the time range defined by the <code>startTime</code> and <code>endTime</code>.</p>", "smithy.api#required" => {}}))
    ListEphemeridesInput.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'endTime', traits: {"smithy.api#documentation" => "<p>The end time to list in UTC. The operation will return an ephemeris if its expiration time is within the time range defined by the <code>startTime</code> and <code>endTime</code>.</p>", "smithy.api#required" => {}}))
    ListEphemeridesInput.add_member(:status_list, Smithy::Schema::Shapes::ShapeRef.new(shape: EphemerisStatusList, location_name: 'statusList', traits: {"smithy.api#documentation" => "<p>The list of ephemeris status to return.</p>"}))
    ListEphemeridesInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationMaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>Maximum number of ephemerides to return.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListEphemeridesInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Pagination token.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListEphemeridesInput.type = Types::ListEphemeridesInput
    ListEphemeridesOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Pagination token.</p>"}))
    ListEphemeridesOutput.add_member(:ephemerides, Smithy::Schema::Shapes::ShapeRef.new(shape: EphemeridesList, location_name: 'ephemerides', traits: {"smithy.api#documentation" => "<p>List of ephemerides.</p>"}))
    ListEphemeridesOutput.type = Types::ListEphemeridesOutput
    ListGroundStationsInput.add_member(:satellite_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'satelliteId', traits: {"smithy.api#documentation" => "<p>Satellite ID to retrieve on-boarded ground stations.</p>", "smithy.api#httpQuery" => "satelliteId"}))
    ListGroundStationsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationMaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>Maximum number of ground stations returned.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListGroundStationsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Next token that can be supplied in the next call to get the next page of ground stations.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListGroundStationsInput.type = Types::ListGroundStationsInput
    ListGroundStationsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Next token that can be supplied in the next call to get the next page of ground stations.</p>"}))
    ListGroundStationsOutput.add_member(:ground_station_list, Smithy::Schema::Shapes::ShapeRef.new(shape: GroundStationList, location_name: 'groundStationList', traits: {"smithy.api#documentation" => "<p>List of ground stations.</p>"}))
    ListGroundStationsOutput.type = Types::ListGroundStationsOutput
    ListMissionProfilesInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationMaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>Maximum number of mission profiles returned.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListMissionProfilesInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Next token returned in the request of a previous <code>ListMissionProfiles</code> call. Used to get the next page of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListMissionProfilesInput.type = Types::ListMissionProfilesInput
    ListMissionProfilesOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Next token returned in the response of a previous <code>ListMissionProfiles</code> call. Used to get the next page of results.</p>"}))
    ListMissionProfilesOutput.add_member(:mission_profile_list, Smithy::Schema::Shapes::ShapeRef.new(shape: MissionProfileList, location_name: 'missionProfileList', traits: {"smithy.api#documentation" => "<p>List of mission profiles.</p>"}))
    ListMissionProfilesOutput.type = Types::ListMissionProfilesOutput
    ListSatellitesInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationMaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>Maximum number of satellites returned.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListSatellitesInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Next token that can be supplied in the next call to get the next page of satellites.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListSatellitesInput.type = Types::ListSatellitesInput
    ListSatellitesOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Next token that can be supplied in the next call to get the next page of satellites.</p>"}))
    ListSatellitesOutput.add_member(:satellites, Smithy::Schema::Shapes::ShapeRef.new(shape: SatelliteList, location_name: 'satellites', traits: {"smithy.api#documentation" => "<p>List of satellites.</p>"}))
    ListSatellitesOutput.type = Types::ListSatellitesOutput
    ListTagsForResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AnyArn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>ARN of a resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Tags assigned to a resource.</p>"}))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    MissionProfileList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MissionProfileListItem)
    MissionProfileListItem.add_member(:mission_profile_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'missionProfileId', traits: {"smithy.api#documentation" => "<p>UUID of a mission profile.</p>"}))
    MissionProfileListItem.add_member(:mission_profile_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: MissionProfileArn, location_name: 'missionProfileArn', traits: {"smithy.api#documentation" => "<p>ARN of a mission profile.</p>"}))
    MissionProfileListItem.add_member(:region, Smithy::Schema::Shapes::ShapeRef.new(shape: AWSRegion, location_name: 'region', traits: {"smithy.api#documentation" => "<p>Region of a mission profile.</p>"}))
    MissionProfileListItem.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SafeName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Name of a mission profile.</p>"}))
    MissionProfileListItem.type = Types::MissionProfileListItem
    OEMEphemeris.add_member(:s3_object, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Object, location_name: 's3Object', traits: {"smithy.api#documentation" => "<p>Identifies the S3 object to be used as the ephemeris.</p>"}))
    OEMEphemeris.add_member(:oem_data, Smithy::Schema::Shapes::ShapeRef.new(shape: UnboundedString, location_name: 'oemData', traits: {"smithy.api#documentation" => "<p>The data for an OEM ephemeris, supplied directly in the request rather than through an S3 object.</p>"}))
    OEMEphemeris.type = Types::OEMEphemeris
    Polarization.add_member(:right_hand, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RIGHT_HAND', traits: {"smithy.api#enumValue" => "RIGHT_HAND"}))
    Polarization.add_member(:left_hand, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LEFT_HAND', traits: {"smithy.api#enumValue" => "LEFT_HAND"}))
    Polarization.add_member(:none, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    RangedConnectionDetails.add_member(:socket_address, Smithy::Schema::Shapes::ShapeRef.new(shape: RangedSocketAddress, location_name: 'socketAddress', traits: {"smithy.api#documentation" => "<p>A ranged socket address.</p>", "smithy.api#required" => {}}))
    RangedConnectionDetails.add_member(:mtu, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'mtu', traits: {"smithy.api#documentation" => "<p>Maximum transmission unit (MTU) size in bytes of a dataflow endpoint.</p>", "smithy.api#range" => {"min" => 1400, "max" => 1500}}))
    RangedConnectionDetails.type = Types::RangedConnectionDetails
    RangedSocketAddress.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: IpV4Address, location_name: 'name', traits: {"smithy.api#documentation" => "<p>IPv4 socket address.</p>", "smithy.api#required" => {}}))
    RangedSocketAddress.add_member(:port_range, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerRange, location_name: 'portRange', traits: {"smithy.api#documentation" => "<p>Port range of a socket address.</p>", "smithy.api#required" => {}}))
    RangedSocketAddress.type = Types::RangedSocketAddress
    RegisterAgentInput.add_member(:discovery_data, Smithy::Schema::Shapes::ShapeRef.new(shape: DiscoveryData, location_name: 'discoveryData', traits: {"smithy.api#documentation" => "<p>Data for associating an agent with the capabilities it is managing.</p>", "smithy.api#required" => {}}))
    RegisterAgentInput.add_member(:agent_details, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentDetails, location_name: 'agentDetails', traits: {"smithy.api#documentation" => "<p>Detailed information about the agent being registered.</p>", "smithy.api#required" => {}}))
    RegisterAgentInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Tags assigned to an <code>Agent</code>.</p>"}))
    RegisterAgentInput.type = Types::RegisterAgentInput
    RegisterAgentOutput.add_member(:agent_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'agentId', traits: {"smithy.api#documentation" => "<p>UUID of registered agent.</p>"}))
    RegisterAgentOutput.type = Types::RegisterAgentOutput
    ReserveContactInput.add_member(:mission_profile_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: MissionProfileArn, location_name: 'missionProfileArn', traits: {"smithy.api#documentation" => "<p>ARN of a mission profile.</p>", "smithy.api#required" => {}}))
    ReserveContactInput.add_member(:satellite_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SatelliteArn, location_name: 'satelliteArn', traits: {"smithy.api#documentation" => "<p>ARN of a satellite</p>", "smithy.api#required" => {}}))
    ReserveContactInput.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'startTime', traits: {"smithy.api#documentation" => "<p>Start time of a contact in UTC.</p>", "smithy.api#required" => {}}))
    ReserveContactInput.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'endTime', traits: {"smithy.api#documentation" => "<p>End time of a contact in UTC.</p>", "smithy.api#required" => {}}))
    ReserveContactInput.add_member(:ground_station, Smithy::Schema::Shapes::ShapeRef.new(shape: GroundStationName, location_name: 'groundStation', traits: {"smithy.api#documentation" => "<p>Name of a ground station.</p>", "smithy.api#required" => {}}))
    ReserveContactInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Tags assigned to a contact.</p>"}))
    ReserveContactInput.type = Types::ReserveContactInput
    ReserveContactOutput.add_member(:contact_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'contactId', traits: {"smithy.api#documentation" => "<p>UUID of a contact.</p>"}))
    ReserveContactOutput.type = Types::ReserveContactOutput
    ResourceLimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    ResourceLimitExceededException.add_member(:parameter_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'parameterName', traits: {"smithy.api#documentation" => "<p/>"}))
    ResourceLimitExceededException.type = Types::ResourceLimitExceededException
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    S3Object.add_member(:bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketName, location_name: 'bucket', traits: {"smithy.api#documentation" => "<p>An Amazon S3 Bucket name.</p>"}))
    S3Object.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: S3ObjectKey, location_name: 'key', traits: {"smithy.api#documentation" => "<p>An Amazon S3 key for the ephemeris.</p>"}))
    S3Object.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: S3VersionId, location_name: 'version', traits: {"smithy.api#documentation" => "<p>For versioned S3 objects, the version to use for the ephemeris.</p>"}))
    S3Object.type = Types::S3Object
    S3RecordingConfig.add_member(:bucket_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: BucketArn, location_name: 'bucketArn', traits: {"smithy.api#documentation" => "<p>ARN of the bucket to record to.</p>", "smithy.api#required" => {}}))
    S3RecordingConfig.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>ARN of the role Ground Station assumes to write data to the bucket.</p>", "smithy.api#required" => {}}))
    S3RecordingConfig.add_member(:prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: S3KeyPrefix, location_name: 'prefix', traits: {"smithy.api#documentation" => "<p>S3 Key prefix to prefice data files.</p>"}))
    S3RecordingConfig.type = Types::S3RecordingConfig
    S3RecordingDetails.add_member(:bucket_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: BucketArn, location_name: 'bucketArn', traits: {"smithy.api#documentation" => "<p>ARN of the bucket used.</p>"}))
    S3RecordingDetails.add_member(:key_template, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'keyTemplate', traits: {"smithy.api#documentation" => "<p>Key template used for the S3 Recording Configuration</p>"}))
    S3RecordingDetails.type = Types::S3RecordingDetails
    SatelliteList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SatelliteListItem)
    SatelliteListItem.add_member(:satellite_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'satelliteId', traits: {"smithy.api#documentation" => "<p>UUID of a satellite.</p>"}))
    SatelliteListItem.add_member(:satellite_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SatelliteArn, location_name: 'satelliteArn', traits: {"smithy.api#documentation" => "<p>ARN of a satellite.</p>"}))
    SatelliteListItem.add_member(:norad_satellite_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NoradSatelliteID, location_name: 'noradSatelliteID', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>NORAD satellite ID number.</p>"}))
    SatelliteListItem.add_member(:ground_stations, Smithy::Schema::Shapes::ShapeRef.new(shape: GroundStationIdList, location_name: 'groundStations', traits: {"smithy.api#documentation" => "<p>A list of ground stations to which the satellite is on-boarded.</p>"}))
    SatelliteListItem.add_member(:current_ephemeris, Smithy::Schema::Shapes::ShapeRef.new(shape: EphemerisMetaData, location_name: 'currentEphemeris', traits: {"smithy.api#documentation" => "<p>The current ephemeris being used to compute the trajectory of the satellite.</p>"}))
    SatelliteListItem.type = Types::SatelliteListItem
    SecurityDetails.add_member(:subnet_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetList, location_name: 'subnetIds', traits: {"smithy.api#documentation" => "<p>A list of subnets where AWS Ground Station places elastic network interfaces to send streams to your instances.</p>", "smithy.api#required" => {}}))
    SecurityDetails.add_member(:security_group_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupIdList, location_name: 'securityGroupIds', traits: {"smithy.api#documentation" => "<p>The security groups to attach to the elastic network interfaces.</p>", "smithy.api#required" => {}}))
    SecurityDetails.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>ARN to a role needed for connecting streams to your instances. </p>", "smithy.api#required" => {}}))
    SecurityDetails.type = Types::SecurityDetails
    SecurityGroupIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    SignatureMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    SignatureMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean)
    SocketAddress.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Name of a socket address.</p>", "smithy.api#required" => {}}))
    SocketAddress.add_member(:port, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'port', traits: {"smithy.api#documentation" => "<p>Port of a socket address.</p>", "smithy.api#required" => {}}))
    SocketAddress.type = Types::SocketAddress
    Source.add_member(:config_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigCapabilityType, location_name: 'configType', traits: {"smithy.api#documentation" => "<p>Type of a <code>Config</code>.</p>"}))
    Source.add_member(:config_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'configId', traits: {"smithy.api#documentation" => "<p>UUID of a <code>Config</code>.</p>"}))
    Source.add_member(:config_details, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigDetails, location_name: 'configDetails', traits: {"smithy.api#documentation" => "<p>Additional details for a <code>Config</code>, if type is <code>dataflow-endpoint</code> or <code>antenna-downlink-demod-decode</code>\n         </p>"}))
    Source.add_member(:dataflow_source_region, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'dataflowSourceRegion', traits: {"smithy.api#documentation" => "<p>Region of a dataflow source.</p>"}))
    Source.type = Types::Source
    SpectrumConfig.add_member(:center_frequency, Smithy::Schema::Shapes::ShapeRef.new(shape: Frequency, location_name: 'centerFrequency', traits: {"smithy.api#documentation" => "<p>Center frequency of a spectral <code>Config</code>. Valid values are between 2200 to 2300 MHz and 7750 to 8400 MHz for downlink and 2025 to 2120 MHz for uplink.</p>", "smithy.api#required" => {}}))
    SpectrumConfig.add_member(:bandwidth, Smithy::Schema::Shapes::ShapeRef.new(shape: FrequencyBandwidth, location_name: 'bandwidth', traits: {"smithy.api#documentation" => "<p>Bandwidth of a spectral <code>Config</code>. AWS Ground Station currently has the following bandwidth limitations:</p>\n         <ul>\n            <li>\n               <p>For <code>AntennaDownlinkDemodDecodeconfig</code>, valid values are between 125 kHz to 650 MHz.</p>\n            </li>\n            <li>\n               <p>For <code>AntennaDownlinkconfig</code> valid values are between 10 kHz to 54 MHz.</p>\n            </li>\n            <li>\n               <p>For <code>AntennaUplinkConfig</code>, valid values are between 10 kHz to 54 MHz.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    SpectrumConfig.add_member(:polarization, Smithy::Schema::Shapes::ShapeRef.new(shape: Polarization, location_name: 'polarization', traits: {"smithy.api#addedDefault" => {}, "smithy.api#clientOptional" => {}, "smithy.api#default" => "NONE", "smithy.api#documentation" => "<p>Polarization of a spectral <code>Config</code>. Capturing both <code>\"RIGHT_HAND\"</code> and <code>\"LEFT_HAND\"</code> polarization requires two separate configs.</p>"}))
    SpectrumConfig.type = Types::SpectrumConfig
    StatusList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ContactStatus)
    SubnetList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    TLEData.add_member(:tle_line1, Smithy::Schema::Shapes::ShapeRef.new(shape: TleLineOne, location_name: 'tleLine1', traits: {"smithy.api#documentation" => "<p>First line of two-line element set (TLE) data.</p>", "smithy.api#required" => {}}))
    TLEData.add_member(:tle_line2, Smithy::Schema::Shapes::ShapeRef.new(shape: TleLineTwo, location_name: 'tleLine2', traits: {"smithy.api#documentation" => "<p>Second line of two-line element set (TLE) data.</p>", "smithy.api#required" => {}}))
    TLEData.add_member(:valid_time_range, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeRange, location_name: 'validTimeRange', traits: {"smithy.api#documentation" => "<p>The valid time range for the TLE. Gaps or overlap are not permitted.</p>", "smithy.api#required" => {}}))
    TLEData.type = Types::TLEData
    TLEDataList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TLEData)
    TLEEphemeris.add_member(:s3_object, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Object, location_name: 's3Object', traits: {"smithy.api#documentation" => "<p>Identifies the S3 object to be used as the ephemeris.</p>"}))
    TLEEphemeris.add_member(:tle_data, Smithy::Schema::Shapes::ShapeRef.new(shape: TLEDataList, location_name: 'tleData', traits: {"smithy.api#documentation" => "<p>The data for a TLE ephemeris, supplied directly in the request rather than through an S3 object.</p>"}))
    TLEEphemeris.type = Types::TLEEphemeris
    TagKeys.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UnboundedString)
    TagResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AnyArn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>ARN of a resource tag.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Tags assigned to a resource.</p>", "smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    TagsMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    TagsMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    TimeRange.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'startTime', traits: {"smithy.api#documentation" => "<p>Time in UTC at which the time range starts.</p>", "smithy.api#required" => {}}))
    TimeRange.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'endTime', traits: {"smithy.api#documentation" => "<p>Time in UTC at which the time range ends.</p>", "smithy.api#required" => {}}))
    TimeRange.type = Types::TimeRange
    TrackingConfig.add_member(:autotrack, Smithy::Schema::Shapes::ShapeRef.new(shape: Criticality, location_name: 'autotrack', traits: {"smithy.api#documentation" => "<p>Current setting for autotrack.</p>", "smithy.api#required" => {}}))
    TrackingConfig.type = Types::TrackingConfig
    UntagResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AnyArn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>ARN of a resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeys, location_name: 'tagKeys', traits: {"smithy.api#documentation" => "<p>Keys of a resource tag.</p>", "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateAgentStatusInput.add_member(:agent_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'agentId', traits: {"smithy.api#documentation" => "<p>UUID of agent to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAgentStatusInput.add_member(:task_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'taskId', traits: {"smithy.api#documentation" => "<p>GUID of agent task.</p>", "smithy.api#required" => {}}))
    UpdateAgentStatusInput.add_member(:aggregate_status, Smithy::Schema::Shapes::ShapeRef.new(shape: AggregateStatus, location_name: 'aggregateStatus', traits: {"smithy.api#documentation" => "<p>Aggregate status for agent.</p>", "smithy.api#required" => {}}))
    UpdateAgentStatusInput.add_member(:component_statuses, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentStatusList, location_name: 'componentStatuses', traits: {"smithy.api#documentation" => "<p>List of component statuses for agent.</p>", "smithy.api#required" => {}}))
    UpdateAgentStatusInput.type = Types::UpdateAgentStatusInput
    UpdateAgentStatusOutput.add_member(:agent_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'agentId', traits: {"smithy.api#documentation" => "<p>UUID of updated agent.</p>", "smithy.api#required" => {}}))
    UpdateAgentStatusOutput.type = Types::UpdateAgentStatusOutput
    UpdateConfigInput.add_member(:config_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'configId', traits: {"smithy.api#documentation" => "<p>UUID of a <code>Config</code>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateConfigInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SafeName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Name of a <code>Config</code>.</p>", "smithy.api#required" => {}}))
    UpdateConfigInput.add_member(:config_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigCapabilityType, location_name: 'configType', traits: {"smithy.api#documentation" => "<p>Type of a <code>Config</code>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateConfigInput.add_member(:config_data, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigTypeData, location_name: 'configData', traits: {"smithy.api#documentation" => "<p>Parameters of a <code>Config</code>.</p>", "smithy.api#required" => {}}))
    UpdateConfigInput.type = Types::UpdateConfigInput
    UpdateConfigOutput.add_member(:config_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'configId', traits: {"smithy.api#documentation" => "<p>UUID of a <code>Config</code>.</p>"}))
    UpdateConfigOutput.add_member(:config_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigCapabilityType, location_name: 'configType', traits: {"smithy.api#documentation" => "<p>Type of a <code>Config</code>.</p>"}))
    UpdateConfigOutput.add_member(:config_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigArn, location_name: 'configArn', traits: {"smithy.api#documentation" => "<p>ARN of a <code>Config</code>.</p>"}))
    UpdateConfigOutput.type = Types::UpdateConfigOutput
    UpdateEphemerisInput.add_member(:ephemeris_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'ephemerisId', traits: {"smithy.api#documentation" => "<p>The AWS Ground Station ephemeris ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateEphemerisInput.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'enabled', traits: {"smithy.api#documentation" => "<p>Whether the ephemeris is enabled or not. Changing this value will not require the ephemeris to be re-validated.</p>", "smithy.api#required" => {}}))
    UpdateEphemerisInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SafeName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>A name string associated with the ephemeris. Used as a human-readable identifier for the ephemeris.</p>"}))
    UpdateEphemerisInput.add_member(:priority, Smithy::Schema::Shapes::ShapeRef.new(shape: EphemerisPriority, location_name: 'priority', traits: {"smithy.api#documentation" => "<p>Customer-provided priority score to establish the order in which overlapping ephemerides should be used.</p>\n         <p>The default for customer-provided ephemeris priority is 1, and higher numbers take precedence.</p>\n         <p>Priority must be 1 or greater</p>"}))
    UpdateEphemerisInput.type = Types::UpdateEphemerisInput
    UpdateEphemerisOutput.add_member(:ephemeris_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'ephemerisId', traits: {"smithy.api#documentation" => "<p>The AWS Ground Station ephemeris ID.</p>"}))
    UpdateEphemerisOutput.type = Types::UpdateEphemerisOutput
    UpdateMissionProfileInput.add_member(:mission_profile_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'missionProfileId', traits: {"smithy.api#documentation" => "<p>UUID of a mission profile.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateMissionProfileInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SafeName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Name of a mission profile.</p>"}))
    UpdateMissionProfileInput.add_member(:contact_pre_pass_duration_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: DurationInSeconds, location_name: 'contactPrePassDurationSeconds', traits: {"smithy.api#documentation" => "<p>Amount of time after a contact ends that you’d like to receive a Ground Station Contact State Change event indicating the pass has finished.</p>"}))
    UpdateMissionProfileInput.add_member(:contact_post_pass_duration_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: DurationInSeconds, location_name: 'contactPostPassDurationSeconds', traits: {"smithy.api#documentation" => "<p>Amount of time after a contact ends that you’d like to receive a Ground Station Contact State Change event indicating the pass has finished.</p>"}))
    UpdateMissionProfileInput.add_member(:minimum_viable_contact_duration_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveDurationInSeconds, location_name: 'minimumViableContactDurationSeconds', traits: {"smithy.api#documentation" => "<p>Smallest amount of time in seconds that you’d like to see for an available contact. AWS Ground Station will not present you with contacts shorter than this duration.</p>"}))
    UpdateMissionProfileInput.add_member(:dataflow_edges, Smithy::Schema::Shapes::ShapeRef.new(shape: DataflowEdgeList, location_name: 'dataflowEdges', traits: {"smithy.api#documentation" => "<p>A list of lists of ARNs. Each list of ARNs is an edge, with a <i>from</i>\n            <code>Config</code> and a <i>to</i>\n            <code>Config</code>.</p>"}))
    UpdateMissionProfileInput.add_member(:tracking_config_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigArn, location_name: 'trackingConfigArn', traits: {"smithy.api#documentation" => "<p>ARN of a tracking <code>Config</code>.</p>"}))
    UpdateMissionProfileInput.add_member(:streams_kms_key, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKey, location_name: 'streamsKmsKey', traits: {"smithy.api#documentation" => "<p>KMS key to use for encrypting streams.</p>"}))
    UpdateMissionProfileInput.add_member(:streams_kms_role, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'streamsKmsRole', traits: {"smithy.api#documentation" => "<p>Role to use for encrypting streams with KMS key.</p>"}))
    UpdateMissionProfileInput.type = Types::UpdateMissionProfileInput
    UpdateMissionProfileOutput.add_member(:mission_profile_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'missionProfileId', traits: {"smithy.api#documentation" => "<p>UUID of a mission profile.</p>"}))
    UpdateMissionProfileOutput.type = Types::UpdateMissionProfileOutput
    UplinkEchoConfig.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'enabled', traits: {"smithy.api#documentation" => "<p>Whether or not an uplink <code>Config</code> is enabled.</p>", "smithy.api#required" => {}}))
    UplinkEchoConfig.add_member(:antenna_uplink_config_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigArn, location_name: 'antennaUplinkConfigArn', traits: {"smithy.api#documentation" => "<p>ARN of an uplink <code>Config</code>.</p>", "smithy.api#required" => {}}))
    UplinkEchoConfig.type = Types::UplinkEchoConfig
    UplinkSpectrumConfig.add_member(:center_frequency, Smithy::Schema::Shapes::ShapeRef.new(shape: Frequency, location_name: 'centerFrequency', traits: {"smithy.api#documentation" => "<p>Center frequency of an uplink spectral <code>Config</code>. Valid values are between 2025 to 2120 MHz.</p>", "smithy.api#required" => {}}))
    UplinkSpectrumConfig.add_member(:polarization, Smithy::Schema::Shapes::ShapeRef.new(shape: Polarization, location_name: 'polarization', traits: {"smithy.api#documentation" => "<p>Polarization of an uplink spectral <code>Config</code>. Capturing both <code>\"RIGHT_HAND\"</code> and <code>\"LEFT_HAND\"</code> polarization requires two separate configs.</p>"}))
    UplinkSpectrumConfig.type = Types::UplinkSpectrumConfig
    VersionStringList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: VersionString)

    GroundStation = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.groundstation#GroundStation"
      service.name = "GroundStation"
      service.version = "2019-05-23"
      service.traits = {"aws.api#service" => {"sdkId" => "GroundStation", "cloudFormationName" => "AWSGroundStation", "arnNamespace" => "groundstation", "cloudTrailEventSource" => "groundstation.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "groundstation"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "AWS Ground Station"}
      service.add_operation(:cancel_contact, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.groundstation#CancelContact"
        operation.name = "CancelContact"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelContactInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelContactOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/contact/{contactId}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_config, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.groundstation#CreateConfig"
        operation.name = "CreateConfig"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConfigInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConfigOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/config"}}
      end)
      service.add_operation(:create_dataflow_endpoint_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.groundstation#CreateDataflowEndpointGroup"
        operation.name = "CreateDataflowEndpointGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDataflowEndpointGroupInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDataflowEndpointGroupOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/dataflowEndpointGroup"}}
      end)
      service.add_operation(:create_ephemeris, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.groundstation#CreateEphemeris"
        operation.name = "CreateEphemeris"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEphemerisInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEphemerisOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ephemeris"}}
      end)
      service.add_operation(:create_mission_profile, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.groundstation#CreateMissionProfile"
        operation.name = "CreateMissionProfile"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMissionProfileInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMissionProfileOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/missionprofile"}}
      end)
      service.add_operation(:delete_config, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.groundstation#DeleteConfig"
        operation.name = "DeleteConfig"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteConfigInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteConfigOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/config/{configType}/{configId}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_dataflow_endpoint_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.groundstation#DeleteDataflowEndpointGroup"
        operation.name = "DeleteDataflowEndpointGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDataflowEndpointGroupInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDataflowEndpointGroupOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/dataflowEndpointGroup/{dataflowEndpointGroupId}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_ephemeris, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.groundstation#DeleteEphemeris"
        operation.name = "DeleteEphemeris"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEphemerisInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEphemerisOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/ephemeris/{ephemerisId}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_mission_profile, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.groundstation#DeleteMissionProfile"
        operation.name = "DeleteMissionProfile"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMissionProfileInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMissionProfileOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/missionprofile/{missionProfileId}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_contact, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.groundstation#DescribeContact"
        operation.name = "DescribeContact"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeContactInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeContactOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/contact/{contactId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_ephemeris, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.groundstation#DescribeEphemeris"
        operation.name = "DescribeEphemeris"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEphemerisInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEphemerisOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/ephemeris/{ephemerisId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_agent_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.groundstation#GetAgentConfiguration"
        operation.name = "GetAgentConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAgentConfigurationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAgentConfigurationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/agent/{agentId}/configuration"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_config, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.groundstation#GetConfig"
        operation.name = "GetConfig"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetConfigInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetConfigOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/config/{configType}/{configId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_dataflow_endpoint_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.groundstation#GetDataflowEndpointGroup"
        operation.name = "GetDataflowEndpointGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDataflowEndpointGroupInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDataflowEndpointGroupOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/dataflowEndpointGroup/{dataflowEndpointGroupId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_minute_usage, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.groundstation#GetMinuteUsage"
        operation.name = "GetMinuteUsage"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetMinuteUsageInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetMinuteUsageOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/minute-usage"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_mission_profile, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.groundstation#GetMissionProfile"
        operation.name = "GetMissionProfile"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetMissionProfileInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetMissionProfileOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/missionprofile/{missionProfileId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_satellite, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.groundstation#GetSatellite"
        operation.name = "GetSatellite"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSatelliteInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSatelliteOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/satellite/{satelliteId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_configs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.groundstation#ListConfigs"
        operation.name = "ListConfigs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListConfigsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListConfigsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/config"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListConfigs.new
      end)
      service.add_operation(:list_contacts, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.groundstation#ListContacts"
        operation.name = "ListContacts"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListContactsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListContactsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/contacts"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListContacts.new
      end)
      service.add_operation(:list_dataflow_endpoint_groups, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.groundstation#ListDataflowEndpointGroups"
        operation.name = "ListDataflowEndpointGroups"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDataflowEndpointGroupsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDataflowEndpointGroupsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/dataflowEndpointGroup"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListDataflowEndpointGroups.new
      end)
      service.add_operation(:list_ephemerides, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.groundstation#ListEphemerides"
        operation.name = "ListEphemerides"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEphemeridesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEphemeridesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ephemerides"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListEphemerides.new
      end)
      service.add_operation(:list_ground_stations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.groundstation#ListGroundStations"
        operation.name = "ListGroundStations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListGroundStationsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListGroundStationsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/groundstation"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListGroundStations.new
      end)
      service.add_operation(:list_mission_profiles, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.groundstation#ListMissionProfiles"
        operation.name = "ListMissionProfiles"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListMissionProfilesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListMissionProfilesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/missionprofile"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListMissionProfiles.new
      end)
      service.add_operation(:list_satellites, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.groundstation#ListSatellites"
        operation.name = "ListSatellites"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSatellitesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSatellitesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/satellite"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSatellites.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.groundstation#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:register_agent, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.groundstation#RegisterAgent"
        operation.name = "RegisterAgent"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterAgentInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterAgentOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/agent"}}
      end)
      service.add_operation(:reserve_contact, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.groundstation#ReserveContact"
        operation.name = "ReserveContact"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ReserveContactInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ReserveContactOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/contact"}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.groundstation#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{resourceArn}"}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.groundstation#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_agent_status, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.groundstation#UpdateAgentStatus"
        operation.name = "UpdateAgentStatus"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAgentStatusInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAgentStatusOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/agent/{agentId}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_config, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.groundstation#UpdateConfig"
        operation.name = "UpdateConfig"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateConfigInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateConfigOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/config/{configType}/{configId}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_ephemeris, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.groundstation#UpdateEphemeris"
        operation.name = "UpdateEphemeris"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEphemerisInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEphemerisOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/ephemeris/{ephemerisId}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_mission_profile, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.groundstation#UpdateMissionProfile"
        operation.name = "UpdateMissionProfile"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateMissionProfileInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateMissionProfileOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/missionprofile/{missionProfileId}"}, "smithy.api#idempotent" => {}}
      end)

    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(Smithy::Schema::Shapes::StructureShape) }
        @type_registry = Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end
