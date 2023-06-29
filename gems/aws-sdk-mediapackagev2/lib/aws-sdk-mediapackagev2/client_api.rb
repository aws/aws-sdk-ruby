# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::MediaPackageV2
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AdMarkerHls = Shapes::StringShape.new(name: 'AdMarkerHls')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    ChannelGroupListConfiguration = Shapes::StructureShape.new(name: 'ChannelGroupListConfiguration')
    ChannelGroupsList = Shapes::ListShape.new(name: 'ChannelGroupsList')
    ChannelList = Shapes::ListShape.new(name: 'ChannelList')
    ChannelListConfiguration = Shapes::StructureShape.new(name: 'ChannelListConfiguration')
    CmafEncryptionMethod = Shapes::StringShape.new(name: 'CmafEncryptionMethod')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ConflictExceptionType = Shapes::StringShape.new(name: 'ConflictExceptionType')
    ContainerType = Shapes::StringShape.new(name: 'ContainerType')
    CreateChannelGroupRequest = Shapes::StructureShape.new(name: 'CreateChannelGroupRequest')
    CreateChannelGroupResponse = Shapes::StructureShape.new(name: 'CreateChannelGroupResponse')
    CreateChannelRequest = Shapes::StructureShape.new(name: 'CreateChannelRequest')
    CreateChannelResponse = Shapes::StructureShape.new(name: 'CreateChannelResponse')
    CreateHlsManifestConfiguration = Shapes::StructureShape.new(name: 'CreateHlsManifestConfiguration')
    CreateHlsManifestConfigurationManifestWindowSecondsInteger = Shapes::IntegerShape.new(name: 'CreateHlsManifestConfigurationManifestWindowSecondsInteger')
    CreateHlsManifestConfigurationProgramDateTimeIntervalSecondsInteger = Shapes::IntegerShape.new(name: 'CreateHlsManifestConfigurationProgramDateTimeIntervalSecondsInteger')
    CreateHlsManifests = Shapes::ListShape.new(name: 'CreateHlsManifests')
    CreateLowLatencyHlsManifestConfiguration = Shapes::StructureShape.new(name: 'CreateLowLatencyHlsManifestConfiguration')
    CreateLowLatencyHlsManifestConfigurationManifestWindowSecondsInteger = Shapes::IntegerShape.new(name: 'CreateLowLatencyHlsManifestConfigurationManifestWindowSecondsInteger')
    CreateLowLatencyHlsManifestConfigurationProgramDateTimeIntervalSecondsInteger = Shapes::IntegerShape.new(name: 'CreateLowLatencyHlsManifestConfigurationProgramDateTimeIntervalSecondsInteger')
    CreateLowLatencyHlsManifests = Shapes::ListShape.new(name: 'CreateLowLatencyHlsManifests')
    CreateOriginEndpointRequest = Shapes::StructureShape.new(name: 'CreateOriginEndpointRequest')
    CreateOriginEndpointRequestStartoverWindowSecondsInteger = Shapes::IntegerShape.new(name: 'CreateOriginEndpointRequestStartoverWindowSecondsInteger')
    CreateOriginEndpointResponse = Shapes::StructureShape.new(name: 'CreateOriginEndpointResponse')
    DeleteChannelGroupRequest = Shapes::StructureShape.new(name: 'DeleteChannelGroupRequest')
    DeleteChannelGroupResponse = Shapes::StructureShape.new(name: 'DeleteChannelGroupResponse')
    DeleteChannelPolicyRequest = Shapes::StructureShape.new(name: 'DeleteChannelPolicyRequest')
    DeleteChannelPolicyResponse = Shapes::StructureShape.new(name: 'DeleteChannelPolicyResponse')
    DeleteChannelRequest = Shapes::StructureShape.new(name: 'DeleteChannelRequest')
    DeleteChannelResponse = Shapes::StructureShape.new(name: 'DeleteChannelResponse')
    DeleteOriginEndpointPolicyRequest = Shapes::StructureShape.new(name: 'DeleteOriginEndpointPolicyRequest')
    DeleteOriginEndpointPolicyResponse = Shapes::StructureShape.new(name: 'DeleteOriginEndpointPolicyResponse')
    DeleteOriginEndpointRequest = Shapes::StructureShape.new(name: 'DeleteOriginEndpointRequest')
    DeleteOriginEndpointResponse = Shapes::StructureShape.new(name: 'DeleteOriginEndpointResponse')
    DrmSystem = Shapes::StringShape.new(name: 'DrmSystem')
    Encryption = Shapes::StructureShape.new(name: 'Encryption')
    EncryptionConstantInitializationVectorString = Shapes::StringShape.new(name: 'EncryptionConstantInitializationVectorString')
    EncryptionContractConfiguration = Shapes::StructureShape.new(name: 'EncryptionContractConfiguration')
    EncryptionKeyRotationIntervalSecondsInteger = Shapes::IntegerShape.new(name: 'EncryptionKeyRotationIntervalSecondsInteger')
    EncryptionMethod = Shapes::StructureShape.new(name: 'EncryptionMethod')
    GetChannelGroupRequest = Shapes::StructureShape.new(name: 'GetChannelGroupRequest')
    GetChannelGroupResponse = Shapes::StructureShape.new(name: 'GetChannelGroupResponse')
    GetChannelPolicyRequest = Shapes::StructureShape.new(name: 'GetChannelPolicyRequest')
    GetChannelPolicyResponse = Shapes::StructureShape.new(name: 'GetChannelPolicyResponse')
    GetChannelRequest = Shapes::StructureShape.new(name: 'GetChannelRequest')
    GetChannelResponse = Shapes::StructureShape.new(name: 'GetChannelResponse')
    GetHlsManifestConfiguration = Shapes::StructureShape.new(name: 'GetHlsManifestConfiguration')
    GetHlsManifests = Shapes::ListShape.new(name: 'GetHlsManifests')
    GetLowLatencyHlsManifestConfiguration = Shapes::StructureShape.new(name: 'GetLowLatencyHlsManifestConfiguration')
    GetLowLatencyHlsManifests = Shapes::ListShape.new(name: 'GetLowLatencyHlsManifests')
    GetOriginEndpointPolicyRequest = Shapes::StructureShape.new(name: 'GetOriginEndpointPolicyRequest')
    GetOriginEndpointPolicyResponse = Shapes::StructureShape.new(name: 'GetOriginEndpointPolicyResponse')
    GetOriginEndpointRequest = Shapes::StructureShape.new(name: 'GetOriginEndpointRequest')
    GetOriginEndpointResponse = Shapes::StructureShape.new(name: 'GetOriginEndpointResponse')
    IdempotencyToken = Shapes::StringShape.new(name: 'IdempotencyToken')
    IngestEndpoint = Shapes::StructureShape.new(name: 'IngestEndpoint')
    IngestEndpointList = Shapes::ListShape.new(name: 'IngestEndpointList')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    ListChannelGroupsRequest = Shapes::StructureShape.new(name: 'ListChannelGroupsRequest')
    ListChannelGroupsResponse = Shapes::StructureShape.new(name: 'ListChannelGroupsResponse')
    ListChannelsRequest = Shapes::StructureShape.new(name: 'ListChannelsRequest')
    ListChannelsResponse = Shapes::StructureShape.new(name: 'ListChannelsResponse')
    ListHlsManifestConfiguration = Shapes::StructureShape.new(name: 'ListHlsManifestConfiguration')
    ListHlsManifests = Shapes::ListShape.new(name: 'ListHlsManifests')
    ListLowLatencyHlsManifestConfiguration = Shapes::StructureShape.new(name: 'ListLowLatencyHlsManifestConfiguration')
    ListLowLatencyHlsManifests = Shapes::ListShape.new(name: 'ListLowLatencyHlsManifests')
    ListOriginEndpointsRequest = Shapes::StructureShape.new(name: 'ListOriginEndpointsRequest')
    ListOriginEndpointsResponse = Shapes::StructureShape.new(name: 'ListOriginEndpointsResponse')
    ListResourceMaxResults = Shapes::IntegerShape.new(name: 'ListResourceMaxResults')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ManifestName = Shapes::StringShape.new(name: 'ManifestName')
    OriginEndpointListConfiguration = Shapes::StructureShape.new(name: 'OriginEndpointListConfiguration')
    OriginEndpointsList = Shapes::ListShape.new(name: 'OriginEndpointsList')
    PolicyText = Shapes::StringShape.new(name: 'PolicyText')
    PresetSpeke20Audio = Shapes::StringShape.new(name: 'PresetSpeke20Audio')
    PresetSpeke20Video = Shapes::StringShape.new(name: 'PresetSpeke20Video')
    PutChannelPolicyRequest = Shapes::StructureShape.new(name: 'PutChannelPolicyRequest')
    PutChannelPolicyResponse = Shapes::StructureShape.new(name: 'PutChannelPolicyResponse')
    PutOriginEndpointPolicyRequest = Shapes::StructureShape.new(name: 'PutOriginEndpointPolicyRequest')
    PutOriginEndpointPolicyResponse = Shapes::StructureShape.new(name: 'PutOriginEndpointPolicyResponse')
    ResourceDescription = Shapes::StringShape.new(name: 'ResourceDescription')
    ResourceName = Shapes::StringShape.new(name: 'ResourceName')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceTypeNotFound = Shapes::StringShape.new(name: 'ResourceTypeNotFound')
    Scte = Shapes::StructureShape.new(name: 'Scte')
    ScteFilter = Shapes::StringShape.new(name: 'ScteFilter')
    ScteFilterList = Shapes::ListShape.new(name: 'ScteFilterList')
    ScteHls = Shapes::StructureShape.new(name: 'ScteHls')
    Segment = Shapes::StructureShape.new(name: 'Segment')
    SegmentSegmentDurationSecondsInteger = Shapes::IntegerShape.new(name: 'SegmentSegmentDurationSecondsInteger')
    SegmentSegmentNameString = Shapes::StringShape.new(name: 'SegmentSegmentNameString')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SpekeKeyProvider = Shapes::StructureShape.new(name: 'SpekeKeyProvider')
    SpekeKeyProviderDrmSystemsList = Shapes::ListShape.new(name: 'SpekeKeyProviderDrmSystemsList')
    SpekeKeyProviderResourceIdString = Shapes::StringShape.new(name: 'SpekeKeyProviderResourceIdString')
    SpekeKeyProviderRoleArnString = Shapes::StringShape.new(name: 'SpekeKeyProviderRoleArnString')
    SpekeKeyProviderUrlString = Shapes::StringShape.new(name: 'SpekeKeyProviderUrlString')
    String = Shapes::StringShape.new(name: 'String')
    TagArn = Shapes::StringShape.new(name: 'TagArn')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TsEncryptionMethod = Shapes::StringShape.new(name: 'TsEncryptionMethod')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UpdateChannelGroupRequest = Shapes::StructureShape.new(name: 'UpdateChannelGroupRequest')
    UpdateChannelGroupResponse = Shapes::StructureShape.new(name: 'UpdateChannelGroupResponse')
    UpdateChannelRequest = Shapes::StructureShape.new(name: 'UpdateChannelRequest')
    UpdateChannelResponse = Shapes::StructureShape.new(name: 'UpdateChannelResponse')
    UpdateOriginEndpointRequest = Shapes::StructureShape.new(name: 'UpdateOriginEndpointRequest')
    UpdateOriginEndpointRequestStartoverWindowSecondsInteger = Shapes::IntegerShape.new(name: 'UpdateOriginEndpointRequestStartoverWindowSecondsInteger')
    UpdateOriginEndpointResponse = Shapes::StructureShape.new(name: 'UpdateOriginEndpointResponse')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionType = Shapes::StringShape.new(name: 'ValidationExceptionType')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    ChannelGroupListConfiguration.add_member(:channel_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ChannelGroupName"))
    ChannelGroupListConfiguration.add_member(:arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Arn"))
    ChannelGroupListConfiguration.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreatedAt"))
    ChannelGroupListConfiguration.add_member(:modified_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "ModifiedAt"))
    ChannelGroupListConfiguration.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    ChannelGroupListConfiguration.struct_class = Types::ChannelGroupListConfiguration

    ChannelGroupsList.member = Shapes::ShapeRef.new(shape: ChannelGroupListConfiguration)

    ChannelList.member = Shapes::ShapeRef.new(shape: ChannelListConfiguration)

    ChannelListConfiguration.add_member(:arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Arn"))
    ChannelListConfiguration.add_member(:channel_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ChannelName"))
    ChannelListConfiguration.add_member(:channel_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ChannelGroupName"))
    ChannelListConfiguration.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreatedAt"))
    ChannelListConfiguration.add_member(:modified_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "ModifiedAt"))
    ChannelListConfiguration.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    ChannelListConfiguration.struct_class = Types::ChannelListConfiguration

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ConflictException.add_member(:conflict_exception_type, Shapes::ShapeRef.new(shape: ConflictExceptionType, location_name: "ConflictExceptionType"))
    ConflictException.struct_class = Types::ConflictException

    CreateChannelGroupRequest.add_member(:channel_group_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "ChannelGroupName"))
    CreateChannelGroupRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location: "header", location_name: "x-amzn-client-token", metadata: {"idempotencyToken"=>true}))
    CreateChannelGroupRequest.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "Description"))
    CreateChannelGroupRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateChannelGroupRequest.struct_class = Types::CreateChannelGroupRequest

    CreateChannelGroupResponse.add_member(:channel_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ChannelGroupName"))
    CreateChannelGroupResponse.add_member(:arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Arn"))
    CreateChannelGroupResponse.add_member(:egress_domain, Shapes::ShapeRef.new(shape: String, required: true, location_name: "EgressDomain"))
    CreateChannelGroupResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreatedAt"))
    CreateChannelGroupResponse.add_member(:modified_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "ModifiedAt"))
    CreateChannelGroupResponse.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    CreateChannelGroupResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateChannelGroupResponse.struct_class = Types::CreateChannelGroupResponse

    CreateChannelRequest.add_member(:channel_group_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "ChannelGroupName"))
    CreateChannelRequest.add_member(:channel_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "ChannelName"))
    CreateChannelRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location: "header", location_name: "x-amzn-client-token", metadata: {"idempotencyToken"=>true}))
    CreateChannelRequest.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "Description"))
    CreateChannelRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateChannelRequest.struct_class = Types::CreateChannelRequest

    CreateChannelResponse.add_member(:arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Arn"))
    CreateChannelResponse.add_member(:channel_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ChannelName"))
    CreateChannelResponse.add_member(:channel_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ChannelGroupName"))
    CreateChannelResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreatedAt"))
    CreateChannelResponse.add_member(:modified_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "ModifiedAt"))
    CreateChannelResponse.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    CreateChannelResponse.add_member(:ingest_endpoints, Shapes::ShapeRef.new(shape: IngestEndpointList, location_name: "IngestEndpoints"))
    CreateChannelResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateChannelResponse.struct_class = Types::CreateChannelResponse

    CreateHlsManifestConfiguration.add_member(:manifest_name, Shapes::ShapeRef.new(shape: ManifestName, required: true, location_name: "ManifestName"))
    CreateHlsManifestConfiguration.add_member(:child_manifest_name, Shapes::ShapeRef.new(shape: ManifestName, location_name: "ChildManifestName"))
    CreateHlsManifestConfiguration.add_member(:scte_hls, Shapes::ShapeRef.new(shape: ScteHls, location_name: "ScteHls"))
    CreateHlsManifestConfiguration.add_member(:manifest_window_seconds, Shapes::ShapeRef.new(shape: CreateHlsManifestConfigurationManifestWindowSecondsInteger, location_name: "ManifestWindowSeconds"))
    CreateHlsManifestConfiguration.add_member(:program_date_time_interval_seconds, Shapes::ShapeRef.new(shape: CreateHlsManifestConfigurationProgramDateTimeIntervalSecondsInteger, location_name: "ProgramDateTimeIntervalSeconds"))
    CreateHlsManifestConfiguration.struct_class = Types::CreateHlsManifestConfiguration

    CreateHlsManifests.member = Shapes::ShapeRef.new(shape: CreateHlsManifestConfiguration)

    CreateLowLatencyHlsManifestConfiguration.add_member(:manifest_name, Shapes::ShapeRef.new(shape: ManifestName, required: true, location_name: "ManifestName"))
    CreateLowLatencyHlsManifestConfiguration.add_member(:child_manifest_name, Shapes::ShapeRef.new(shape: ManifestName, location_name: "ChildManifestName"))
    CreateLowLatencyHlsManifestConfiguration.add_member(:scte_hls, Shapes::ShapeRef.new(shape: ScteHls, location_name: "ScteHls"))
    CreateLowLatencyHlsManifestConfiguration.add_member(:manifest_window_seconds, Shapes::ShapeRef.new(shape: CreateLowLatencyHlsManifestConfigurationManifestWindowSecondsInteger, location_name: "ManifestWindowSeconds"))
    CreateLowLatencyHlsManifestConfiguration.add_member(:program_date_time_interval_seconds, Shapes::ShapeRef.new(shape: CreateLowLatencyHlsManifestConfigurationProgramDateTimeIntervalSecondsInteger, location_name: "ProgramDateTimeIntervalSeconds"))
    CreateLowLatencyHlsManifestConfiguration.struct_class = Types::CreateLowLatencyHlsManifestConfiguration

    CreateLowLatencyHlsManifests.member = Shapes::ShapeRef.new(shape: CreateLowLatencyHlsManifestConfiguration)

    CreateOriginEndpointRequest.add_member(:channel_group_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "ChannelGroupName"))
    CreateOriginEndpointRequest.add_member(:channel_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "ChannelName"))
    CreateOriginEndpointRequest.add_member(:origin_endpoint_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "OriginEndpointName"))
    CreateOriginEndpointRequest.add_member(:container_type, Shapes::ShapeRef.new(shape: ContainerType, required: true, location_name: "ContainerType"))
    CreateOriginEndpointRequest.add_member(:segment, Shapes::ShapeRef.new(shape: Segment, location_name: "Segment"))
    CreateOriginEndpointRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location: "header", location_name: "x-amzn-client-token", metadata: {"idempotencyToken"=>true}))
    CreateOriginEndpointRequest.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "Description"))
    CreateOriginEndpointRequest.add_member(:startover_window_seconds, Shapes::ShapeRef.new(shape: CreateOriginEndpointRequestStartoverWindowSecondsInteger, location_name: "StartoverWindowSeconds"))
    CreateOriginEndpointRequest.add_member(:hls_manifests, Shapes::ShapeRef.new(shape: CreateHlsManifests, location_name: "HlsManifests"))
    CreateOriginEndpointRequest.add_member(:low_latency_hls_manifests, Shapes::ShapeRef.new(shape: CreateLowLatencyHlsManifests, location_name: "LowLatencyHlsManifests"))
    CreateOriginEndpointRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateOriginEndpointRequest.struct_class = Types::CreateOriginEndpointRequest

    CreateOriginEndpointResponse.add_member(:arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Arn"))
    CreateOriginEndpointResponse.add_member(:channel_group_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "ChannelGroupName"))
    CreateOriginEndpointResponse.add_member(:channel_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "ChannelName"))
    CreateOriginEndpointResponse.add_member(:origin_endpoint_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "OriginEndpointName"))
    CreateOriginEndpointResponse.add_member(:container_type, Shapes::ShapeRef.new(shape: ContainerType, required: true, location_name: "ContainerType"))
    CreateOriginEndpointResponse.add_member(:segment, Shapes::ShapeRef.new(shape: Segment, required: true, location_name: "Segment"))
    CreateOriginEndpointResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreatedAt"))
    CreateOriginEndpointResponse.add_member(:modified_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "ModifiedAt"))
    CreateOriginEndpointResponse.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "Description"))
    CreateOriginEndpointResponse.add_member(:startover_window_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "StartoverWindowSeconds"))
    CreateOriginEndpointResponse.add_member(:hls_manifests, Shapes::ShapeRef.new(shape: GetHlsManifests, location_name: "HlsManifests"))
    CreateOriginEndpointResponse.add_member(:low_latency_hls_manifests, Shapes::ShapeRef.new(shape: GetLowLatencyHlsManifests, location_name: "LowLatencyHlsManifests"))
    CreateOriginEndpointResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateOriginEndpointResponse.struct_class = Types::CreateOriginEndpointResponse

    DeleteChannelGroupRequest.add_member(:channel_group_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "ChannelGroupName"))
    DeleteChannelGroupRequest.struct_class = Types::DeleteChannelGroupRequest

    DeleteChannelGroupResponse.struct_class = Types::DeleteChannelGroupResponse

    DeleteChannelPolicyRequest.add_member(:channel_group_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "ChannelGroupName"))
    DeleteChannelPolicyRequest.add_member(:channel_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "ChannelName"))
    DeleteChannelPolicyRequest.struct_class = Types::DeleteChannelPolicyRequest

    DeleteChannelPolicyResponse.struct_class = Types::DeleteChannelPolicyResponse

    DeleteChannelRequest.add_member(:channel_group_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "ChannelGroupName"))
    DeleteChannelRequest.add_member(:channel_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "ChannelName"))
    DeleteChannelRequest.struct_class = Types::DeleteChannelRequest

    DeleteChannelResponse.struct_class = Types::DeleteChannelResponse

    DeleteOriginEndpointPolicyRequest.add_member(:channel_group_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "ChannelGroupName"))
    DeleteOriginEndpointPolicyRequest.add_member(:channel_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "ChannelName"))
    DeleteOriginEndpointPolicyRequest.add_member(:origin_endpoint_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "OriginEndpointName"))
    DeleteOriginEndpointPolicyRequest.struct_class = Types::DeleteOriginEndpointPolicyRequest

    DeleteOriginEndpointPolicyResponse.struct_class = Types::DeleteOriginEndpointPolicyResponse

    DeleteOriginEndpointRequest.add_member(:channel_group_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "ChannelGroupName"))
    DeleteOriginEndpointRequest.add_member(:channel_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "ChannelName"))
    DeleteOriginEndpointRequest.add_member(:origin_endpoint_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "OriginEndpointName"))
    DeleteOriginEndpointRequest.struct_class = Types::DeleteOriginEndpointRequest

    DeleteOriginEndpointResponse.struct_class = Types::DeleteOriginEndpointResponse

    Encryption.add_member(:constant_initialization_vector, Shapes::ShapeRef.new(shape: EncryptionConstantInitializationVectorString, location_name: "ConstantInitializationVector"))
    Encryption.add_member(:encryption_method, Shapes::ShapeRef.new(shape: EncryptionMethod, required: true, location_name: "EncryptionMethod"))
    Encryption.add_member(:key_rotation_interval_seconds, Shapes::ShapeRef.new(shape: EncryptionKeyRotationIntervalSecondsInteger, location_name: "KeyRotationIntervalSeconds"))
    Encryption.add_member(:speke_key_provider, Shapes::ShapeRef.new(shape: SpekeKeyProvider, required: true, location_name: "SpekeKeyProvider"))
    Encryption.struct_class = Types::Encryption

    EncryptionContractConfiguration.add_member(:preset_speke_20_audio, Shapes::ShapeRef.new(shape: PresetSpeke20Audio, required: true, location_name: "PresetSpeke20Audio"))
    EncryptionContractConfiguration.add_member(:preset_speke_20_video, Shapes::ShapeRef.new(shape: PresetSpeke20Video, required: true, location_name: "PresetSpeke20Video"))
    EncryptionContractConfiguration.struct_class = Types::EncryptionContractConfiguration

    EncryptionMethod.add_member(:ts_encryption_method, Shapes::ShapeRef.new(shape: TsEncryptionMethod, location_name: "TsEncryptionMethod"))
    EncryptionMethod.add_member(:cmaf_encryption_method, Shapes::ShapeRef.new(shape: CmafEncryptionMethod, location_name: "CmafEncryptionMethod"))
    EncryptionMethod.struct_class = Types::EncryptionMethod

    GetChannelGroupRequest.add_member(:channel_group_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "ChannelGroupName"))
    GetChannelGroupRequest.struct_class = Types::GetChannelGroupRequest

    GetChannelGroupResponse.add_member(:channel_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ChannelGroupName"))
    GetChannelGroupResponse.add_member(:arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Arn"))
    GetChannelGroupResponse.add_member(:egress_domain, Shapes::ShapeRef.new(shape: String, required: true, location_name: "EgressDomain"))
    GetChannelGroupResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreatedAt"))
    GetChannelGroupResponse.add_member(:modified_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "ModifiedAt"))
    GetChannelGroupResponse.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    GetChannelGroupResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetChannelGroupResponse.struct_class = Types::GetChannelGroupResponse

    GetChannelPolicyRequest.add_member(:channel_group_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "ChannelGroupName"))
    GetChannelPolicyRequest.add_member(:channel_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "ChannelName"))
    GetChannelPolicyRequest.struct_class = Types::GetChannelPolicyRequest

    GetChannelPolicyResponse.add_member(:channel_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ChannelGroupName"))
    GetChannelPolicyResponse.add_member(:channel_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ChannelName"))
    GetChannelPolicyResponse.add_member(:policy, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Policy"))
    GetChannelPolicyResponse.struct_class = Types::GetChannelPolicyResponse

    GetChannelRequest.add_member(:channel_group_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "ChannelGroupName"))
    GetChannelRequest.add_member(:channel_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "ChannelName"))
    GetChannelRequest.struct_class = Types::GetChannelRequest

    GetChannelResponse.add_member(:arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Arn"))
    GetChannelResponse.add_member(:channel_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ChannelName"))
    GetChannelResponse.add_member(:channel_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ChannelGroupName"))
    GetChannelResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreatedAt"))
    GetChannelResponse.add_member(:modified_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "ModifiedAt"))
    GetChannelResponse.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    GetChannelResponse.add_member(:ingest_endpoints, Shapes::ShapeRef.new(shape: IngestEndpointList, location_name: "IngestEndpoints"))
    GetChannelResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    GetChannelResponse.struct_class = Types::GetChannelResponse

    GetHlsManifestConfiguration.add_member(:manifest_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "ManifestName"))
    GetHlsManifestConfiguration.add_member(:url, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Url"))
    GetHlsManifestConfiguration.add_member(:child_manifest_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "ChildManifestName"))
    GetHlsManifestConfiguration.add_member(:manifest_window_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "ManifestWindowSeconds"))
    GetHlsManifestConfiguration.add_member(:program_date_time_interval_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "ProgramDateTimeIntervalSeconds"))
    GetHlsManifestConfiguration.add_member(:scte_hls, Shapes::ShapeRef.new(shape: ScteHls, location_name: "ScteHls"))
    GetHlsManifestConfiguration.struct_class = Types::GetHlsManifestConfiguration

    GetHlsManifests.member = Shapes::ShapeRef.new(shape: GetHlsManifestConfiguration)

    GetLowLatencyHlsManifestConfiguration.add_member(:manifest_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "ManifestName"))
    GetLowLatencyHlsManifestConfiguration.add_member(:url, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Url"))
    GetLowLatencyHlsManifestConfiguration.add_member(:child_manifest_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "ChildManifestName"))
    GetLowLatencyHlsManifestConfiguration.add_member(:manifest_window_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "ManifestWindowSeconds"))
    GetLowLatencyHlsManifestConfiguration.add_member(:program_date_time_interval_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "ProgramDateTimeIntervalSeconds"))
    GetLowLatencyHlsManifestConfiguration.add_member(:scte_hls, Shapes::ShapeRef.new(shape: ScteHls, location_name: "ScteHls"))
    GetLowLatencyHlsManifestConfiguration.struct_class = Types::GetLowLatencyHlsManifestConfiguration

    GetLowLatencyHlsManifests.member = Shapes::ShapeRef.new(shape: GetLowLatencyHlsManifestConfiguration)

    GetOriginEndpointPolicyRequest.add_member(:channel_group_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "ChannelGroupName"))
    GetOriginEndpointPolicyRequest.add_member(:channel_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "ChannelName"))
    GetOriginEndpointPolicyRequest.add_member(:origin_endpoint_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "OriginEndpointName"))
    GetOriginEndpointPolicyRequest.struct_class = Types::GetOriginEndpointPolicyRequest

    GetOriginEndpointPolicyResponse.add_member(:channel_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ChannelGroupName"))
    GetOriginEndpointPolicyResponse.add_member(:channel_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ChannelName"))
    GetOriginEndpointPolicyResponse.add_member(:origin_endpoint_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "OriginEndpointName"))
    GetOriginEndpointPolicyResponse.add_member(:policy, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Policy"))
    GetOriginEndpointPolicyResponse.struct_class = Types::GetOriginEndpointPolicyResponse

    GetOriginEndpointRequest.add_member(:channel_group_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "ChannelGroupName"))
    GetOriginEndpointRequest.add_member(:channel_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "ChannelName"))
    GetOriginEndpointRequest.add_member(:origin_endpoint_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "OriginEndpointName"))
    GetOriginEndpointRequest.struct_class = Types::GetOriginEndpointRequest

    GetOriginEndpointResponse.add_member(:arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Arn"))
    GetOriginEndpointResponse.add_member(:channel_group_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "ChannelGroupName"))
    GetOriginEndpointResponse.add_member(:channel_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "ChannelName"))
    GetOriginEndpointResponse.add_member(:origin_endpoint_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "OriginEndpointName"))
    GetOriginEndpointResponse.add_member(:container_type, Shapes::ShapeRef.new(shape: ContainerType, required: true, location_name: "ContainerType"))
    GetOriginEndpointResponse.add_member(:segment, Shapes::ShapeRef.new(shape: Segment, required: true, location_name: "Segment"))
    GetOriginEndpointResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreatedAt"))
    GetOriginEndpointResponse.add_member(:modified_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "ModifiedAt"))
    GetOriginEndpointResponse.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "Description"))
    GetOriginEndpointResponse.add_member(:startover_window_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "StartoverWindowSeconds"))
    GetOriginEndpointResponse.add_member(:hls_manifests, Shapes::ShapeRef.new(shape: GetHlsManifests, location_name: "HlsManifests"))
    GetOriginEndpointResponse.add_member(:low_latency_hls_manifests, Shapes::ShapeRef.new(shape: GetLowLatencyHlsManifests, location_name: "LowLatencyHlsManifests"))
    GetOriginEndpointResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    GetOriginEndpointResponse.struct_class = Types::GetOriginEndpointResponse

    IngestEndpoint.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "Id"))
    IngestEndpoint.add_member(:url, Shapes::ShapeRef.new(shape: String, location_name: "Url"))
    IngestEndpoint.struct_class = Types::IngestEndpoint

    IngestEndpointList.member = Shapes::ShapeRef.new(shape: IngestEndpoint)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListChannelGroupsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListResourceMaxResults, location: "querystring", location_name: "maxResults"))
    ListChannelGroupsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListChannelGroupsRequest.struct_class = Types::ListChannelGroupsRequest

    ListChannelGroupsResponse.add_member(:items, Shapes::ShapeRef.new(shape: ChannelGroupsList, location_name: "Items"))
    ListChannelGroupsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListChannelGroupsResponse.struct_class = Types::ListChannelGroupsResponse

    ListChannelsRequest.add_member(:channel_group_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "ChannelGroupName"))
    ListChannelsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListResourceMaxResults, location: "querystring", location_name: "maxResults"))
    ListChannelsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListChannelsRequest.struct_class = Types::ListChannelsRequest

    ListChannelsResponse.add_member(:items, Shapes::ShapeRef.new(shape: ChannelList, location_name: "Items"))
    ListChannelsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListChannelsResponse.struct_class = Types::ListChannelsResponse

    ListHlsManifestConfiguration.add_member(:manifest_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "ManifestName"))
    ListHlsManifestConfiguration.add_member(:child_manifest_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "ChildManifestName"))
    ListHlsManifestConfiguration.add_member(:url, Shapes::ShapeRef.new(shape: String, location_name: "Url"))
    ListHlsManifestConfiguration.struct_class = Types::ListHlsManifestConfiguration

    ListHlsManifests.member = Shapes::ShapeRef.new(shape: ListHlsManifestConfiguration)

    ListLowLatencyHlsManifestConfiguration.add_member(:manifest_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "ManifestName"))
    ListLowLatencyHlsManifestConfiguration.add_member(:child_manifest_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "ChildManifestName"))
    ListLowLatencyHlsManifestConfiguration.add_member(:url, Shapes::ShapeRef.new(shape: String, location_name: "Url"))
    ListLowLatencyHlsManifestConfiguration.struct_class = Types::ListLowLatencyHlsManifestConfiguration

    ListLowLatencyHlsManifests.member = Shapes::ShapeRef.new(shape: ListLowLatencyHlsManifestConfiguration)

    ListOriginEndpointsRequest.add_member(:channel_group_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "ChannelGroupName"))
    ListOriginEndpointsRequest.add_member(:channel_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "ChannelName"))
    ListOriginEndpointsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListResourceMaxResults, location: "querystring", location_name: "maxResults"))
    ListOriginEndpointsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListOriginEndpointsRequest.struct_class = Types::ListOriginEndpointsRequest

    ListOriginEndpointsResponse.add_member(:items, Shapes::ShapeRef.new(shape: OriginEndpointsList, location_name: "Items"))
    ListOriginEndpointsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListOriginEndpointsResponse.struct_class = Types::ListOriginEndpointsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TagArn, required: true, location: "uri", location_name: "ResourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    OriginEndpointListConfiguration.add_member(:arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Arn"))
    OriginEndpointListConfiguration.add_member(:channel_group_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "ChannelGroupName"))
    OriginEndpointListConfiguration.add_member(:channel_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "ChannelName"))
    OriginEndpointListConfiguration.add_member(:origin_endpoint_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "OriginEndpointName"))
    OriginEndpointListConfiguration.add_member(:container_type, Shapes::ShapeRef.new(shape: ContainerType, required: true, location_name: "ContainerType"))
    OriginEndpointListConfiguration.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "Description"))
    OriginEndpointListConfiguration.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    OriginEndpointListConfiguration.add_member(:modified_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ModifiedAt"))
    OriginEndpointListConfiguration.add_member(:hls_manifests, Shapes::ShapeRef.new(shape: ListHlsManifests, location_name: "HlsManifests"))
    OriginEndpointListConfiguration.add_member(:low_latency_hls_manifests, Shapes::ShapeRef.new(shape: ListLowLatencyHlsManifests, location_name: "LowLatencyHlsManifests"))
    OriginEndpointListConfiguration.struct_class = Types::OriginEndpointListConfiguration

    OriginEndpointsList.member = Shapes::ShapeRef.new(shape: OriginEndpointListConfiguration)

    PutChannelPolicyRequest.add_member(:channel_group_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "ChannelGroupName"))
    PutChannelPolicyRequest.add_member(:channel_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "ChannelName"))
    PutChannelPolicyRequest.add_member(:policy, Shapes::ShapeRef.new(shape: PolicyText, required: true, location_name: "Policy"))
    PutChannelPolicyRequest.struct_class = Types::PutChannelPolicyRequest

    PutChannelPolicyResponse.struct_class = Types::PutChannelPolicyResponse

    PutOriginEndpointPolicyRequest.add_member(:channel_group_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "ChannelGroupName"))
    PutOriginEndpointPolicyRequest.add_member(:channel_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "ChannelName"))
    PutOriginEndpointPolicyRequest.add_member(:origin_endpoint_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "OriginEndpointName"))
    PutOriginEndpointPolicyRequest.add_member(:policy, Shapes::ShapeRef.new(shape: PolicyText, required: true, location_name: "Policy"))
    PutOriginEndpointPolicyRequest.struct_class = Types::PutOriginEndpointPolicyRequest

    PutOriginEndpointPolicyResponse.struct_class = Types::PutOriginEndpointPolicyResponse

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ResourceNotFoundException.add_member(:resource_type_not_found, Shapes::ShapeRef.new(shape: ResourceTypeNotFound, location_name: "ResourceTypeNotFound"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    Scte.add_member(:scte_filter, Shapes::ShapeRef.new(shape: ScteFilterList, location_name: "ScteFilter"))
    Scte.struct_class = Types::Scte

    ScteFilterList.member = Shapes::ShapeRef.new(shape: ScteFilter)

    ScteHls.add_member(:ad_marker_hls, Shapes::ShapeRef.new(shape: AdMarkerHls, location_name: "AdMarkerHls"))
    ScteHls.struct_class = Types::ScteHls

    Segment.add_member(:segment_duration_seconds, Shapes::ShapeRef.new(shape: SegmentSegmentDurationSecondsInteger, location_name: "SegmentDurationSeconds"))
    Segment.add_member(:segment_name, Shapes::ShapeRef.new(shape: SegmentSegmentNameString, location_name: "SegmentName"))
    Segment.add_member(:ts_use_audio_rendition_group, Shapes::ShapeRef.new(shape: Boolean, location_name: "TsUseAudioRenditionGroup"))
    Segment.add_member(:include_iframe_only_streams, Shapes::ShapeRef.new(shape: Boolean, location_name: "IncludeIframeOnlyStreams"))
    Segment.add_member(:ts_include_dvb_subtitles, Shapes::ShapeRef.new(shape: Boolean, location_name: "TsIncludeDvbSubtitles"))
    Segment.add_member(:scte, Shapes::ShapeRef.new(shape: Scte, location_name: "Scte"))
    Segment.add_member(:encryption, Shapes::ShapeRef.new(shape: Encryption, location_name: "Encryption"))
    Segment.struct_class = Types::Segment

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    SpekeKeyProvider.add_member(:encryption_contract_configuration, Shapes::ShapeRef.new(shape: EncryptionContractConfiguration, required: true, location_name: "EncryptionContractConfiguration"))
    SpekeKeyProvider.add_member(:resource_id, Shapes::ShapeRef.new(shape: SpekeKeyProviderResourceIdString, required: true, location_name: "ResourceId"))
    SpekeKeyProvider.add_member(:drm_systems, Shapes::ShapeRef.new(shape: SpekeKeyProviderDrmSystemsList, required: true, location_name: "DrmSystems"))
    SpekeKeyProvider.add_member(:role_arn, Shapes::ShapeRef.new(shape: SpekeKeyProviderRoleArnString, required: true, location_name: "RoleArn"))
    SpekeKeyProvider.add_member(:url, Shapes::ShapeRef.new(shape: SpekeKeyProviderUrlString, required: true, location_name: "Url"))
    SpekeKeyProvider.struct_class = Types::SpekeKeyProvider

    SpekeKeyProviderDrmSystemsList.member = Shapes::ShapeRef.new(shape: DrmSystem)

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TagArn, required: true, location: "uri", location_name: "ResourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TagArn, required: true, location: "uri", location_name: "ResourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UpdateChannelGroupRequest.add_member(:channel_group_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "ChannelGroupName"))
    UpdateChannelGroupRequest.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "Description"))
    UpdateChannelGroupRequest.struct_class = Types::UpdateChannelGroupRequest

    UpdateChannelGroupResponse.add_member(:channel_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ChannelGroupName"))
    UpdateChannelGroupResponse.add_member(:arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Arn"))
    UpdateChannelGroupResponse.add_member(:egress_domain, Shapes::ShapeRef.new(shape: String, required: true, location_name: "EgressDomain"))
    UpdateChannelGroupResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreatedAt"))
    UpdateChannelGroupResponse.add_member(:modified_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "ModifiedAt"))
    UpdateChannelGroupResponse.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    UpdateChannelGroupResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    UpdateChannelGroupResponse.struct_class = Types::UpdateChannelGroupResponse

    UpdateChannelRequest.add_member(:channel_group_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "ChannelGroupName"))
    UpdateChannelRequest.add_member(:channel_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "ChannelName"))
    UpdateChannelRequest.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "Description"))
    UpdateChannelRequest.struct_class = Types::UpdateChannelRequest

    UpdateChannelResponse.add_member(:arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Arn"))
    UpdateChannelResponse.add_member(:channel_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ChannelName"))
    UpdateChannelResponse.add_member(:channel_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ChannelGroupName"))
    UpdateChannelResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreatedAt"))
    UpdateChannelResponse.add_member(:modified_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "ModifiedAt"))
    UpdateChannelResponse.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    UpdateChannelResponse.add_member(:ingest_endpoints, Shapes::ShapeRef.new(shape: IngestEndpointList, location_name: "IngestEndpoints"))
    UpdateChannelResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    UpdateChannelResponse.struct_class = Types::UpdateChannelResponse

    UpdateOriginEndpointRequest.add_member(:channel_group_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "ChannelGroupName"))
    UpdateOriginEndpointRequest.add_member(:channel_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "ChannelName"))
    UpdateOriginEndpointRequest.add_member(:origin_endpoint_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "OriginEndpointName"))
    UpdateOriginEndpointRequest.add_member(:container_type, Shapes::ShapeRef.new(shape: ContainerType, required: true, location_name: "ContainerType"))
    UpdateOriginEndpointRequest.add_member(:segment, Shapes::ShapeRef.new(shape: Segment, location_name: "Segment"))
    UpdateOriginEndpointRequest.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "Description"))
    UpdateOriginEndpointRequest.add_member(:startover_window_seconds, Shapes::ShapeRef.new(shape: UpdateOriginEndpointRequestStartoverWindowSecondsInteger, location_name: "StartoverWindowSeconds"))
    UpdateOriginEndpointRequest.add_member(:hls_manifests, Shapes::ShapeRef.new(shape: CreateHlsManifests, location_name: "HlsManifests"))
    UpdateOriginEndpointRequest.add_member(:low_latency_hls_manifests, Shapes::ShapeRef.new(shape: CreateLowLatencyHlsManifests, location_name: "LowLatencyHlsManifests"))
    UpdateOriginEndpointRequest.struct_class = Types::UpdateOriginEndpointRequest

    UpdateOriginEndpointResponse.add_member(:arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Arn"))
    UpdateOriginEndpointResponse.add_member(:channel_group_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "ChannelGroupName"))
    UpdateOriginEndpointResponse.add_member(:channel_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "ChannelName"))
    UpdateOriginEndpointResponse.add_member(:origin_endpoint_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "OriginEndpointName"))
    UpdateOriginEndpointResponse.add_member(:container_type, Shapes::ShapeRef.new(shape: ContainerType, required: true, location_name: "ContainerType"))
    UpdateOriginEndpointResponse.add_member(:segment, Shapes::ShapeRef.new(shape: Segment, required: true, location_name: "Segment"))
    UpdateOriginEndpointResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreatedAt"))
    UpdateOriginEndpointResponse.add_member(:modified_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "ModifiedAt"))
    UpdateOriginEndpointResponse.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "Description"))
    UpdateOriginEndpointResponse.add_member(:startover_window_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "StartoverWindowSeconds"))
    UpdateOriginEndpointResponse.add_member(:hls_manifests, Shapes::ShapeRef.new(shape: GetHlsManifests, location_name: "HlsManifests"))
    UpdateOriginEndpointResponse.add_member(:low_latency_hls_manifests, Shapes::ShapeRef.new(shape: GetLowLatencyHlsManifests, location_name: "LowLatencyHlsManifests"))
    UpdateOriginEndpointResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    UpdateOriginEndpointResponse.struct_class = Types::UpdateOriginEndpointResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ValidationException.add_member(:validation_exception_type, Shapes::ShapeRef.new(shape: ValidationExceptionType, location_name: "ValidationExceptionType"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2022-12-25"

      api.metadata = {
        "apiVersion" => "2022-12-25",
        "endpointPrefix" => "mediapackagev2",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceAbbreviation" => "mediapackagev2",
        "serviceFullName" => "AWS Elemental MediaPackage v2",
        "serviceId" => "MediaPackageV2",
        "signatureVersion" => "v4",
        "signingName" => "mediapackagev2",
        "uid" => "mediapackagev2-2022-12-25",
      }

      api.add_operation(:create_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateChannel"
        o.http_method = "POST"
        o.http_request_uri = "/channelGroup/{ChannelGroupName}/channel"
        o.input = Shapes::ShapeRef.new(shape: CreateChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateChannelResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_channel_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateChannelGroup"
        o.http_method = "POST"
        o.http_request_uri = "/channelGroup"
        o.input = Shapes::ShapeRef.new(shape: CreateChannelGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateChannelGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_origin_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateOriginEndpoint"
        o.http_method = "POST"
        o.http_request_uri = "/channelGroup/{ChannelGroupName}/channel/{ChannelName}/originEndpoint"
        o.input = Shapes::ShapeRef.new(shape: CreateOriginEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateOriginEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:delete_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteChannel"
        o.http_method = "DELETE"
        o.http_request_uri = "/channelGroup/{ChannelGroupName}/channel/{ChannelName}/"
        o.input = Shapes::ShapeRef.new(shape: DeleteChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteChannelResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_channel_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteChannelGroup"
        o.http_method = "DELETE"
        o.http_request_uri = "/channelGroup/{ChannelGroupName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteChannelGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteChannelGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_channel_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteChannelPolicy"
        o.http_method = "DELETE"
        o.http_request_uri = "/channelGroup/{ChannelGroupName}/channel/{ChannelName}/policy"
        o.input = Shapes::ShapeRef.new(shape: DeleteChannelPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteChannelPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_origin_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteOriginEndpoint"
        o.http_method = "DELETE"
        o.http_request_uri = "/channelGroup/{ChannelGroupName}/channel/{ChannelName}/originEndpoint/{OriginEndpointName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteOriginEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteOriginEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_origin_endpoint_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteOriginEndpointPolicy"
        o.http_method = "DELETE"
        o.http_request_uri = "/channelGroup/{ChannelGroupName}/channel/{ChannelName}/originEndpoint/{OriginEndpointName}/policy"
        o.input = Shapes::ShapeRef.new(shape: DeleteOriginEndpointPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteOriginEndpointPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetChannel"
        o.http_method = "GET"
        o.http_request_uri = "/channelGroup/{ChannelGroupName}/channel/{ChannelName}/"
        o.input = Shapes::ShapeRef.new(shape: GetChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: GetChannelResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_channel_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetChannelGroup"
        o.http_method = "GET"
        o.http_request_uri = "/channelGroup/{ChannelGroupName}"
        o.input = Shapes::ShapeRef.new(shape: GetChannelGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: GetChannelGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_channel_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetChannelPolicy"
        o.http_method = "GET"
        o.http_request_uri = "/channelGroup/{ChannelGroupName}/channel/{ChannelName}/policy"
        o.input = Shapes::ShapeRef.new(shape: GetChannelPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetChannelPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_origin_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetOriginEndpoint"
        o.http_method = "GET"
        o.http_request_uri = "/channelGroup/{ChannelGroupName}/channel/{ChannelName}/originEndpoint/{OriginEndpointName}"
        o.input = Shapes::ShapeRef.new(shape: GetOriginEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: GetOriginEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_origin_endpoint_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetOriginEndpointPolicy"
        o.http_method = "GET"
        o.http_request_uri = "/channelGroup/{ChannelGroupName}/channel/{ChannelName}/originEndpoint/{OriginEndpointName}/policy"
        o.input = Shapes::ShapeRef.new(shape: GetOriginEndpointPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetOriginEndpointPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:list_channel_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListChannelGroups"
        o.http_method = "GET"
        o.http_request_uri = "/channelGroup"
        o.input = Shapes::ShapeRef.new(shape: ListChannelGroupsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListChannelGroupsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_channels, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListChannels"
        o.http_method = "GET"
        o.http_request_uri = "/channelGroup/{ChannelGroupName}/channel"
        o.input = Shapes::ShapeRef.new(shape: ListChannelsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListChannelsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_origin_endpoints, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListOriginEndpoints"
        o.http_method = "GET"
        o.http_request_uri = "/channelGroup/{ChannelGroupName}/channel/{ChannelName}/originEndpoint"
        o.input = Shapes::ShapeRef.new(shape: ListOriginEndpointsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListOriginEndpointsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
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
        o.http_request_uri = "/tags/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:put_channel_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutChannelPolicy"
        o.http_method = "PUT"
        o.http_request_uri = "/channelGroup/{ChannelGroupName}/channel/{ChannelName}/policy"
        o.input = Shapes::ShapeRef.new(shape: PutChannelPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: PutChannelPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:put_origin_endpoint_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutOriginEndpointPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/channelGroup/{ChannelGroupName}/channel/{ChannelName}/originEndpoint/{OriginEndpointName}/policy"
        o.input = Shapes::ShapeRef.new(shape: PutOriginEndpointPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: PutOriginEndpointPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateChannel"
        o.http_method = "PUT"
        o.http_request_uri = "/channelGroup/{ChannelGroupName}/channel/{ChannelName}/"
        o.input = Shapes::ShapeRef.new(shape: UpdateChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateChannelResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_channel_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateChannelGroup"
        o.http_method = "PUT"
        o.http_request_uri = "/channelGroup/{ChannelGroupName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateChannelGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateChannelGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_origin_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateOriginEndpoint"
        o.http_method = "PUT"
        o.http_request_uri = "/channelGroup/{ChannelGroupName}/channel/{ChannelName}/originEndpoint/{OriginEndpointName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateOriginEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateOriginEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)
    end

  end
end
