# frozen_string_literal: true

# This is generated code!

module Aws::MediaPackageV2
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AdMarkerDash = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediapackagev2#AdMarkerDash", name: "AdMarkerDash")
    AdMarkerHls = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediapackagev2#AdMarkerHls", name: "AdMarkerHls")
    CancelHarvestJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#CancelHarvestJobRequest", name: "CancelHarvestJobRequest")
    CancelHarvestJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#CancelHarvestJobResponse", name: "CancelHarvestJobResponse")
    CdnAuthConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#CdnAuthConfiguration", name: "CdnAuthConfiguration")
    CdnIdentifierSecretArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mediapackagev2#CdnIdentifierSecretArn", name: "CdnIdentifierSecretArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}})
    CdnIdentifierSecretArns = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediapackagev2#CdnIdentifierSecretArns", name: "CdnIdentifierSecretArns", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ChannelGroupListConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#ChannelGroupListConfiguration", name: "ChannelGroupListConfiguration")
    ChannelGroupsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediapackagev2#ChannelGroupsList", name: "ChannelGroupsList")
    ChannelList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediapackagev2#ChannelList", name: "ChannelList")
    ChannelListConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#ChannelListConfiguration", name: "ChannelListConfiguration")
    CmafEncryptionMethod = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediapackagev2#CmafEncryptionMethod", name: "CmafEncryptionMethod")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConflictExceptionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediapackagev2#ConflictExceptionType", name: "ConflictExceptionType")
    ContainerType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediapackagev2#ContainerType", name: "ContainerType")
    CreateChannelGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#CreateChannelGroupRequest", name: "CreateChannelGroupRequest")
    CreateChannelGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#CreateChannelGroupResponse", name: "CreateChannelGroupResponse")
    CreateChannelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#CreateChannelRequest", name: "CreateChannelRequest")
    CreateChannelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#CreateChannelResponse", name: "CreateChannelResponse")
    CreateDashManifestConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#CreateDashManifestConfiguration", name: "CreateDashManifestConfiguration")
    CreateDashManifests = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediapackagev2#CreateDashManifests", name: "CreateDashManifests")
    CreateHarvestJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#CreateHarvestJobRequest", name: "CreateHarvestJobRequest")
    CreateHarvestJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#CreateHarvestJobResponse", name: "CreateHarvestJobResponse")
    CreateHlsManifestConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#CreateHlsManifestConfiguration", name: "CreateHlsManifestConfiguration")
    CreateHlsManifests = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediapackagev2#CreateHlsManifests", name: "CreateHlsManifests")
    CreateLowLatencyHlsManifestConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#CreateLowLatencyHlsManifestConfiguration", name: "CreateLowLatencyHlsManifestConfiguration")
    CreateLowLatencyHlsManifests = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediapackagev2#CreateLowLatencyHlsManifests", name: "CreateLowLatencyHlsManifests")
    CreateMssManifestConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#CreateMssManifestConfiguration", name: "CreateMssManifestConfiguration")
    CreateMssManifests = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediapackagev2#CreateMssManifests", name: "CreateMssManifests")
    CreateOriginEndpointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#CreateOriginEndpointRequest", name: "CreateOriginEndpointRequest")
    CreateOriginEndpointResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#CreateOriginEndpointResponse", name: "CreateOriginEndpointResponse")
    DashBaseUrl = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#DashBaseUrl", name: "DashBaseUrl")
    DashBaseUrls = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediapackagev2#DashBaseUrls", name: "DashBaseUrls", traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    DashCompactness = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediapackagev2#DashCompactness", name: "DashCompactness")
    DashDrmSignaling = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediapackagev2#DashDrmSignaling", name: "DashDrmSignaling")
    DashDvbErrorMetrics = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediapackagev2#DashDvbErrorMetrics", name: "DashDvbErrorMetrics", traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    DashDvbFontDownload = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#DashDvbFontDownload", name: "DashDvbFontDownload")
    DashDvbMetricsReporting = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#DashDvbMetricsReporting", name: "DashDvbMetricsReporting")
    DashDvbSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#DashDvbSettings", name: "DashDvbSettings")
    DashPeriodTrigger = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediapackagev2#DashPeriodTrigger", name: "DashPeriodTrigger")
    DashPeriodTriggers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediapackagev2#DashPeriodTriggers", name: "DashPeriodTriggers", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    DashProfile = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediapackagev2#DashProfile", name: "DashProfile")
    DashProfiles = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediapackagev2#DashProfiles", name: "DashProfiles", traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    DashProgramInformation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#DashProgramInformation", name: "DashProgramInformation")
    DashSegmentTemplateFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediapackagev2#DashSegmentTemplateFormat", name: "DashSegmentTemplateFormat")
    DashSubtitleConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#DashSubtitleConfiguration", name: "DashSubtitleConfiguration")
    DashTtmlConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#DashTtmlConfiguration", name: "DashTtmlConfiguration")
    DashTtmlProfile = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediapackagev2#DashTtmlProfile", name: "DashTtmlProfile")
    DashUtcTiming = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#DashUtcTiming", name: "DashUtcTiming")
    DashUtcTimingMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediapackagev2#DashUtcTimingMode", name: "DashUtcTimingMode")
    DeleteChannelGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#DeleteChannelGroupRequest", name: "DeleteChannelGroupRequest")
    DeleteChannelGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#DeleteChannelGroupResponse", name: "DeleteChannelGroupResponse")
    DeleteChannelPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#DeleteChannelPolicyRequest", name: "DeleteChannelPolicyRequest")
    DeleteChannelPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#DeleteChannelPolicyResponse", name: "DeleteChannelPolicyResponse")
    DeleteChannelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#DeleteChannelRequest", name: "DeleteChannelRequest")
    DeleteChannelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#DeleteChannelResponse", name: "DeleteChannelResponse")
    DeleteOriginEndpointPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#DeleteOriginEndpointPolicyRequest", name: "DeleteOriginEndpointPolicyRequest")
    DeleteOriginEndpointPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#DeleteOriginEndpointPolicyResponse", name: "DeleteOriginEndpointPolicyResponse")
    DeleteOriginEndpointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#DeleteOriginEndpointRequest", name: "DeleteOriginEndpointRequest")
    DeleteOriginEndpointResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#DeleteOriginEndpointResponse", name: "DeleteOriginEndpointResponse")
    Destination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#Destination", name: "Destination")
    DrmSystem = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediapackagev2#DrmSystem", name: "DrmSystem")
    DrmSystems = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediapackagev2#DrmSystems", name: "DrmSystems")
    Encryption = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#Encryption", name: "Encryption")
    EncryptionContractConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#EncryptionContractConfiguration", name: "EncryptionContractConfiguration")
    EncryptionMethod = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#EncryptionMethod", name: "EncryptionMethod")
    EndpointErrorCondition = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediapackagev2#EndpointErrorCondition", name: "EndpointErrorCondition")
    EndpointErrorConditions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediapackagev2#EndpointErrorConditions", name: "EndpointErrorConditions")
    EntityTag = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mediapackagev2#EntityTag", name: "EntityTag", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\S]+$"})
    FilterConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#FilterConfiguration", name: "FilterConfiguration")
    ForceEndpointErrorConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#ForceEndpointErrorConfiguration", name: "ForceEndpointErrorConfiguration")
    GetChannelGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#GetChannelGroupRequest", name: "GetChannelGroupRequest")
    GetChannelGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#GetChannelGroupResponse", name: "GetChannelGroupResponse")
    GetChannelPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#GetChannelPolicyRequest", name: "GetChannelPolicyRequest")
    GetChannelPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#GetChannelPolicyResponse", name: "GetChannelPolicyResponse")
    GetChannelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#GetChannelRequest", name: "GetChannelRequest")
    GetChannelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#GetChannelResponse", name: "GetChannelResponse")
    GetDashManifestConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#GetDashManifestConfiguration", name: "GetDashManifestConfiguration")
    GetDashManifests = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediapackagev2#GetDashManifests", name: "GetDashManifests")
    GetHarvestJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#GetHarvestJobRequest", name: "GetHarvestJobRequest")
    GetHarvestJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#GetHarvestJobResponse", name: "GetHarvestJobResponse")
    GetHlsManifestConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#GetHlsManifestConfiguration", name: "GetHlsManifestConfiguration")
    GetHlsManifests = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediapackagev2#GetHlsManifests", name: "GetHlsManifests")
    GetLowLatencyHlsManifestConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#GetLowLatencyHlsManifestConfiguration", name: "GetLowLatencyHlsManifestConfiguration")
    GetLowLatencyHlsManifests = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediapackagev2#GetLowLatencyHlsManifests", name: "GetLowLatencyHlsManifests")
    GetMssManifestConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#GetMssManifestConfiguration", name: "GetMssManifestConfiguration")
    GetMssManifests = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediapackagev2#GetMssManifests", name: "GetMssManifests")
    GetOriginEndpointPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#GetOriginEndpointPolicyRequest", name: "GetOriginEndpointPolicyRequest")
    GetOriginEndpointPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#GetOriginEndpointPolicyResponse", name: "GetOriginEndpointPolicyResponse")
    GetOriginEndpointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#GetOriginEndpointRequest", name: "GetOriginEndpointRequest")
    GetOriginEndpointResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#GetOriginEndpointResponse", name: "GetOriginEndpointResponse")
    HarvestJob = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#HarvestJob", name: "HarvestJob")
    HarvestJobStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediapackagev2#HarvestJobStatus", name: "HarvestJobStatus")
    HarvestJobsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediapackagev2#HarvestJobsList", name: "HarvestJobsList")
    HarvestedDashManifest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#HarvestedDashManifest", name: "HarvestedDashManifest")
    HarvestedDashManifestsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediapackagev2#HarvestedDashManifestsList", name: "HarvestedDashManifestsList")
    HarvestedHlsManifest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#HarvestedHlsManifest", name: "HarvestedHlsManifest")
    HarvestedHlsManifestsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediapackagev2#HarvestedHlsManifestsList", name: "HarvestedHlsManifestsList")
    HarvestedLowLatencyHlsManifest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#HarvestedLowLatencyHlsManifest", name: "HarvestedLowLatencyHlsManifest")
    HarvestedLowLatencyHlsManifestsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediapackagev2#HarvestedLowLatencyHlsManifestsList", name: "HarvestedLowLatencyHlsManifestsList")
    HarvestedManifests = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#HarvestedManifests", name: "HarvestedManifests")
    HarvesterScheduleConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#HarvesterScheduleConfiguration", name: "HarvesterScheduleConfiguration")
    IdempotencyToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mediapackagev2#IdempotencyToken", name: "IdempotencyToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\S]+$"})
    IngestEndpoint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#IngestEndpoint", name: "IngestEndpoint")
    IngestEndpointList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediapackagev2#IngestEndpointList", name: "IngestEndpointList")
    InputSwitchConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#InputSwitchConfiguration", name: "InputSwitchConfiguration")
    InputType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediapackagev2#InputType", name: "InputType")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    IsmEncryptionMethod = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediapackagev2#IsmEncryptionMethod", name: "IsmEncryptionMethod")
    ListChannelGroupsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#ListChannelGroupsRequest", name: "ListChannelGroupsRequest")
    ListChannelGroupsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#ListChannelGroupsResponse", name: "ListChannelGroupsResponse")
    ListChannelsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#ListChannelsRequest", name: "ListChannelsRequest")
    ListChannelsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#ListChannelsResponse", name: "ListChannelsResponse")
    ListDashManifestConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#ListDashManifestConfiguration", name: "ListDashManifestConfiguration")
    ListDashManifests = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediapackagev2#ListDashManifests", name: "ListDashManifests")
    ListHarvestJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#ListHarvestJobsRequest", name: "ListHarvestJobsRequest")
    ListHarvestJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#ListHarvestJobsResponse", name: "ListHarvestJobsResponse")
    ListHlsManifestConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#ListHlsManifestConfiguration", name: "ListHlsManifestConfiguration")
    ListHlsManifests = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediapackagev2#ListHlsManifests", name: "ListHlsManifests")
    ListLowLatencyHlsManifestConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#ListLowLatencyHlsManifestConfiguration", name: "ListLowLatencyHlsManifestConfiguration")
    ListLowLatencyHlsManifests = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediapackagev2#ListLowLatencyHlsManifests", name: "ListLowLatencyHlsManifests")
    ListMssManifestConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#ListMssManifestConfiguration", name: "ListMssManifestConfiguration")
    ListMssManifests = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediapackagev2#ListMssManifests", name: "ListMssManifests")
    ListOriginEndpointsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#ListOriginEndpointsRequest", name: "ListOriginEndpointsRequest")
    ListOriginEndpointsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#ListOriginEndpointsResponse", name: "ListOriginEndpointsResponse")
    ListResourceMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.mediapackagev2#ListResourceMaxResults", name: "ListResourceMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    ManifestName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mediapackagev2#ManifestName", name: "ManifestName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9-]+$"})
    MssManifestLayout = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediapackagev2#MssManifestLayout", name: "MssManifestLayout")
    OriginEndpointListConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#OriginEndpointListConfiguration", name: "OriginEndpointListConfiguration")
    OriginEndpointsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediapackagev2#OriginEndpointsList", name: "OriginEndpointsList")
    OutputHeaderConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#OutputHeaderConfiguration", name: "OutputHeaderConfiguration")
    PolicyText = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mediapackagev2#PolicyText", name: "PolicyText", traits: {"smithy.api#length" => {"max" => 6144}})
    PresetSpeke20Audio = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediapackagev2#PresetSpeke20Audio", name: "PresetSpeke20Audio")
    PresetSpeke20Video = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediapackagev2#PresetSpeke20Video", name: "PresetSpeke20Video")
    PutChannelPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#PutChannelPolicyRequest", name: "PutChannelPolicyRequest")
    PutChannelPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#PutChannelPolicyResponse", name: "PutChannelPolicyResponse")
    PutOriginEndpointPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#PutOriginEndpointPolicyRequest", name: "PutOriginEndpointPolicyRequest")
    PutOriginEndpointPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#PutOriginEndpointPolicyResponse", name: "PutOriginEndpointPolicyResponse")
    ResetChannelStateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#ResetChannelStateRequest", name: "ResetChannelStateRequest")
    ResetChannelStateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#ResetChannelStateResponse", name: "ResetChannelStateResponse")
    ResetOriginEndpointStateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#ResetOriginEndpointStateRequest", name: "ResetOriginEndpointStateRequest")
    ResetOriginEndpointStateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#ResetOriginEndpointStateResponse", name: "ResetOriginEndpointStateResponse")
    ResourceDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mediapackagev2#ResourceDescription", name: "ResourceDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    ResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mediapackagev2#ResourceName", name: "ResourceName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9_-]+$"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceTypeNotFound = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediapackagev2#ResourceTypeNotFound", name: "ResourceTypeNotFound")
    S3BucketName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mediapackagev2#S3BucketName", name: "S3BucketName", traits: {"smithy.api#length" => {"min" => 3, "max" => 63}})
    S3DestinationConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#S3DestinationConfig", name: "S3DestinationConfig")
    S3DestinationPath = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mediapackagev2#S3DestinationPath", name: "S3DestinationPath", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[\\S]+$"})
    Scte = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#Scte", name: "Scte")
    ScteDash = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#ScteDash", name: "ScteDash")
    ScteFilter = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediapackagev2#ScteFilter", name: "ScteFilter")
    ScteFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediapackagev2#ScteFilterList", name: "ScteFilterList", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    ScteHls = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#ScteHls", name: "ScteHls")
    Segment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#Segment", name: "Segment")
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SpekeKeyProvider = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#SpekeKeyProvider", name: "SpekeKeyProvider")
    StartTag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#StartTag", name: "StartTag")
    TagArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mediapackagev2#TagArn", name: "TagArn")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mediapackagev2#TagKey", name: "TagKey")
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediapackagev2#TagKeyList", name: "TagKeyList")
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.mediapackagev2#TagMap", name: "TagMap")
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#TagResourceRequest", name: "TagResourceRequest")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mediapackagev2#TagValue", name: "TagValue")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    TsEncryptionMethod = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediapackagev2#TsEncryptionMethod", name: "TsEncryptionMethod")
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#UntagResourceRequest", name: "UntagResourceRequest")
    UpdateChannelGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#UpdateChannelGroupRequest", name: "UpdateChannelGroupRequest")
    UpdateChannelGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#UpdateChannelGroupResponse", name: "UpdateChannelGroupResponse")
    UpdateChannelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#UpdateChannelRequest", name: "UpdateChannelRequest")
    UpdateChannelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#UpdateChannelResponse", name: "UpdateChannelResponse")
    UpdateOriginEndpointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#UpdateOriginEndpointRequest", name: "UpdateOriginEndpointRequest")
    UpdateOriginEndpointResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#UpdateOriginEndpointResponse", name: "UpdateOriginEndpointResponse")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediapackagev2#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client"})
    ValidationExceptionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediapackagev2#ValidationExceptionType", name: "ValidationExceptionType")

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    AccessDeniedException.type = Types::AccessDeniedException
    AdMarkerDash.add_member(:binary, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BINARY", traits: {"smithy.api#enumValue" => "BINARY"}))
    AdMarkerDash.add_member(:xml, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "XML", traits: {"smithy.api#enumValue" => "XML"}))
    AdMarkerHls.add_member(:daterange, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DATERANGE", traits: {"smithy.api#enumValue" => "DATERANGE"}))
    AdMarkerHls.add_member(:scte35_enhanced, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SCTE35_ENHANCED", traits: {"smithy.api#enumValue" => "SCTE35_ENHANCED"}))
    CancelHarvestJobRequest.add_member(:channel_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ChannelGroupName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CancelHarvestJobRequest.add_member(:channel_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ChannelName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CancelHarvestJobRequest.add_member(:origin_endpoint_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "OriginEndpointName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CancelHarvestJobRequest.add_member(:harvest_job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "HarvestJobName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CancelHarvestJobRequest.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityTag, name: "ETag", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#httpHeader" => "x-amzn-update-if-match"}))
    CancelHarvestJobRequest.type = Types::CancelHarvestJobRequest
    CancelHarvestJobResponse.type = Types::CancelHarvestJobResponse
    CdnAuthConfiguration.add_member(:cdn_identifier_secret_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: CdnIdentifierSecretArns, name: "CdnIdentifierSecretArns", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#required" => {}}))
    CdnAuthConfiguration.add_member(:secrets_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "SecretsRoleArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#required" => {}}))
    CdnAuthConfiguration.type = Types::CdnAuthConfiguration
    CdnIdentifierSecretArns.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CdnIdentifierSecretArn, name: "member")
    ChannelGroupListConfiguration.add_member(:channel_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ChannelGroupName", traits: {"smithy.api#required" => {}}))
    ChannelGroupListConfiguration.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Arn", traits: {"smithy.api#required" => {}}))
    ChannelGroupListConfiguration.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedAt", traits: {"smithy.api#required" => {}}))
    ChannelGroupListConfiguration.add_member(:modified_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "ModifiedAt", traits: {"smithy.api#required" => {}}))
    ChannelGroupListConfiguration.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "Description"))
    ChannelGroupListConfiguration.type = Types::ChannelGroupListConfiguration
    ChannelGroupsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelGroupListConfiguration, name: "member")
    ChannelList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelListConfiguration, name: "member")
    ChannelListConfiguration.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Arn", traits: {"smithy.api#required" => {}}))
    ChannelListConfiguration.add_member(:channel_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ChannelName", traits: {"smithy.api#required" => {}}))
    ChannelListConfiguration.add_member(:channel_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ChannelGroupName", traits: {"smithy.api#required" => {}}))
    ChannelListConfiguration.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedAt", traits: {"smithy.api#required" => {}}))
    ChannelListConfiguration.add_member(:modified_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "ModifiedAt", traits: {"smithy.api#required" => {}}))
    ChannelListConfiguration.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "Description"))
    ChannelListConfiguration.add_member(:input_type, ::Smithy::Schema::Shapes::MemberShape.new(target: InputType, name: "InputType"))
    ChannelListConfiguration.type = Types::ChannelListConfiguration
    CmafEncryptionMethod.add_member(:cenc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CENC", traits: {"smithy.api#enumValue" => "CENC"}))
    CmafEncryptionMethod.add_member(:cbcs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CBCS", traits: {"smithy.api#enumValue" => "CBCS"}))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    ConflictException.add_member(:conflict_exception_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConflictExceptionType, name: "ConflictExceptionType"))
    ConflictException.type = Types::ConflictException
    ConflictExceptionType.add_member(:resource_in_use, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOURCE_IN_USE", traits: {"smithy.api#enumValue" => "RESOURCE_IN_USE"}))
    ConflictExceptionType.add_member(:resource_already_exists, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOURCE_ALREADY_EXISTS", traits: {"smithy.api#enumValue" => "RESOURCE_ALREADY_EXISTS"}))
    ConflictExceptionType.add_member(:idempotent_parameter_mismatch, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IDEMPOTENT_PARAMETER_MISMATCH", traits: {"smithy.api#enumValue" => "IDEMPOTENT_PARAMETER_MISMATCH"}))
    ConflictExceptionType.add_member(:conflicting_operation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONFLICTING_OPERATION", traits: {"smithy.api#enumValue" => "CONFLICTING_OPERATION"}))
    ContainerType.add_member(:ts, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TS", traits: {"smithy.api#enumValue" => "TS"}))
    ContainerType.add_member(:cmaf, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CMAF", traits: {"smithy.api#enumValue" => "CMAF"}))
    ContainerType.add_member(:ism, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ISM", traits: {"smithy.api#enumValue" => "ISM"}))
    CreateChannelGroupRequest.add_member(:channel_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ChannelGroupName", traits: {"smithy.api#required" => {}}))
    CreateChannelGroupRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotencyToken, name: "ClientToken", traits: {"smithy.api#httpHeader" => "x-amzn-client-token", "smithy.api#idempotencyToken" => {}}))
    CreateChannelGroupRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "Description"))
    CreateChannelGroupRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#jsonName" => "tags"}))
    CreateChannelGroupRequest.type = Types::CreateChannelGroupRequest
    CreateChannelGroupResponse.add_member(:channel_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ChannelGroupName", traits: {"smithy.api#required" => {}}))
    CreateChannelGroupResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Arn", traits: {"smithy.api#required" => {}}))
    CreateChannelGroupResponse.add_member(:egress_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "EgressDomain", traits: {"smithy.api#required" => {}}))
    CreateChannelGroupResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedAt", traits: {"smithy.api#required" => {}}))
    CreateChannelGroupResponse.add_member(:modified_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "ModifiedAt", traits: {"smithy.api#required" => {}}))
    CreateChannelGroupResponse.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityTag, name: "ETag", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    CreateChannelGroupResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "Description"))
    CreateChannelGroupResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    CreateChannelGroupResponse.type = Types::CreateChannelGroupResponse
    CreateChannelRequest.add_member(:channel_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ChannelGroupName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateChannelRequest.add_member(:channel_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ChannelName", traits: {"smithy.api#required" => {}}))
    CreateChannelRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotencyToken, name: "ClientToken", traits: {"smithy.api#httpHeader" => "x-amzn-client-token", "smithy.api#idempotencyToken" => {}}))
    CreateChannelRequest.add_member(:input_type, ::Smithy::Schema::Shapes::MemberShape.new(target: InputType, name: "InputType"))
    CreateChannelRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "Description"))
    CreateChannelRequest.add_member(:input_switch_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: InputSwitchConfiguration, name: "InputSwitchConfiguration"))
    CreateChannelRequest.add_member(:output_header_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputHeaderConfiguration, name: "OutputHeaderConfiguration"))
    CreateChannelRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#jsonName" => "tags"}))
    CreateChannelRequest.type = Types::CreateChannelRequest
    CreateChannelResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Arn", traits: {"smithy.api#required" => {}}))
    CreateChannelResponse.add_member(:channel_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ChannelName", traits: {"smithy.api#required" => {}}))
    CreateChannelResponse.add_member(:channel_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ChannelGroupName", traits: {"smithy.api#required" => {}}))
    CreateChannelResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedAt", traits: {"smithy.api#required" => {}}))
    CreateChannelResponse.add_member(:modified_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "ModifiedAt", traits: {"smithy.api#required" => {}}))
    CreateChannelResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "Description"))
    CreateChannelResponse.add_member(:ingest_endpoints, ::Smithy::Schema::Shapes::MemberShape.new(target: IngestEndpointList, name: "IngestEndpoints"))
    CreateChannelResponse.add_member(:input_type, ::Smithy::Schema::Shapes::MemberShape.new(target: InputType, name: "InputType"))
    CreateChannelResponse.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityTag, name: "ETag", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    CreateChannelResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    CreateChannelResponse.add_member(:input_switch_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: InputSwitchConfiguration, name: "InputSwitchConfiguration"))
    CreateChannelResponse.add_member(:output_header_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputHeaderConfiguration, name: "OutputHeaderConfiguration"))
    CreateChannelResponse.type = Types::CreateChannelResponse
    CreateDashManifestConfiguration.add_member(:manifest_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ManifestName, name: "ManifestName", traits: {"smithy.api#required" => {}}))
    CreateDashManifestConfiguration.add_member(:manifest_window_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "ManifestWindowSeconds", traits: {"smithy.api#range" => {"min" => 30}}))
    CreateDashManifestConfiguration.add_member(:filter_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterConfiguration, name: "FilterConfiguration"))
    CreateDashManifestConfiguration.add_member(:min_update_period_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MinUpdatePeriodSeconds", traits: {"smithy.api#range" => {"min" => 1, "max" => 3600}}))
    CreateDashManifestConfiguration.add_member(:min_buffer_time_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MinBufferTimeSeconds", traits: {"smithy.api#range" => {"min" => 0, "max" => 3600}}))
    CreateDashManifestConfiguration.add_member(:suggested_presentation_delay_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "SuggestedPresentationDelaySeconds", traits: {"smithy.api#range" => {"min" => 0, "max" => 3600}}))
    CreateDashManifestConfiguration.add_member(:segment_template_format, ::Smithy::Schema::Shapes::MemberShape.new(target: DashSegmentTemplateFormat, name: "SegmentTemplateFormat"))
    CreateDashManifestConfiguration.add_member(:period_triggers, ::Smithy::Schema::Shapes::MemberShape.new(target: DashPeriodTriggers, name: "PeriodTriggers"))
    CreateDashManifestConfiguration.add_member(:scte_dash, ::Smithy::Schema::Shapes::MemberShape.new(target: ScteDash, name: "ScteDash"))
    CreateDashManifestConfiguration.add_member(:drm_signaling, ::Smithy::Schema::Shapes::MemberShape.new(target: DashDrmSignaling, name: "DrmSignaling"))
    CreateDashManifestConfiguration.add_member(:utc_timing, ::Smithy::Schema::Shapes::MemberShape.new(target: DashUtcTiming, name: "UtcTiming"))
    CreateDashManifestConfiguration.add_member(:profiles, ::Smithy::Schema::Shapes::MemberShape.new(target: DashProfiles, name: "Profiles"))
    CreateDashManifestConfiguration.add_member(:base_urls, ::Smithy::Schema::Shapes::MemberShape.new(target: DashBaseUrls, name: "BaseUrls"))
    CreateDashManifestConfiguration.add_member(:program_information, ::Smithy::Schema::Shapes::MemberShape.new(target: DashProgramInformation, name: "ProgramInformation"))
    CreateDashManifestConfiguration.add_member(:dvb_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: DashDvbSettings, name: "DvbSettings"))
    CreateDashManifestConfiguration.add_member(:compactness, ::Smithy::Schema::Shapes::MemberShape.new(target: DashCompactness, name: "Compactness"))
    CreateDashManifestConfiguration.add_member(:subtitle_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DashSubtitleConfiguration, name: "SubtitleConfiguration"))
    CreateDashManifestConfiguration.type = Types::CreateDashManifestConfiguration
    CreateDashManifests.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CreateDashManifestConfiguration, name: "member")
    CreateHarvestJobRequest.add_member(:channel_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ChannelGroupName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateHarvestJobRequest.add_member(:channel_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ChannelName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateHarvestJobRequest.add_member(:origin_endpoint_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "OriginEndpointName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateHarvestJobRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "Description"))
    CreateHarvestJobRequest.add_member(:harvested_manifests, ::Smithy::Schema::Shapes::MemberShape.new(target: HarvestedManifests, name: "HarvestedManifests", traits: {"smithy.api#required" => {}}))
    CreateHarvestJobRequest.add_member(:schedule_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: HarvesterScheduleConfiguration, name: "ScheduleConfiguration", traits: {"smithy.api#required" => {}}))
    CreateHarvestJobRequest.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: Destination, name: "Destination", traits: {"smithy.api#required" => {}}))
    CreateHarvestJobRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotencyToken, name: "ClientToken", traits: {"smithy.api#httpHeader" => "x-amzn-client-token", "smithy.api#idempotencyToken" => {}}))
    CreateHarvestJobRequest.add_member(:harvest_job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "HarvestJobName"))
    CreateHarvestJobRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    CreateHarvestJobRequest.type = Types::CreateHarvestJobRequest
    CreateHarvestJobResponse.add_member(:channel_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ChannelGroupName", traits: {"smithy.api#required" => {}}))
    CreateHarvestJobResponse.add_member(:channel_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ChannelName", traits: {"smithy.api#required" => {}}))
    CreateHarvestJobResponse.add_member(:origin_endpoint_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "OriginEndpointName", traits: {"smithy.api#required" => {}}))
    CreateHarvestJobResponse.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: Destination, name: "Destination", traits: {"smithy.api#required" => {}}))
    CreateHarvestJobResponse.add_member(:harvest_job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "HarvestJobName", traits: {"smithy.api#required" => {}}))
    CreateHarvestJobResponse.add_member(:harvested_manifests, ::Smithy::Schema::Shapes::MemberShape.new(target: HarvestedManifests, name: "HarvestedManifests", traits: {"smithy.api#required" => {}}))
    CreateHarvestJobResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "Description"))
    CreateHarvestJobResponse.add_member(:schedule_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: HarvesterScheduleConfiguration, name: "ScheduleConfiguration", traits: {"smithy.api#required" => {}}))
    CreateHarvestJobResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Arn", traits: {"smithy.api#required" => {}}))
    CreateHarvestJobResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedAt", traits: {"smithy.api#required" => {}}))
    CreateHarvestJobResponse.add_member(:modified_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "ModifiedAt", traits: {"smithy.api#required" => {}}))
    CreateHarvestJobResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: HarvestJobStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    CreateHarvestJobResponse.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ErrorMessage"))
    CreateHarvestJobResponse.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityTag, name: "ETag", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    CreateHarvestJobResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    CreateHarvestJobResponse.type = Types::CreateHarvestJobResponse
    CreateHlsManifestConfiguration.add_member(:manifest_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ManifestName, name: "ManifestName", traits: {"smithy.api#required" => {}}))
    CreateHlsManifestConfiguration.add_member(:child_manifest_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ManifestName, name: "ChildManifestName"))
    CreateHlsManifestConfiguration.add_member(:scte_hls, ::Smithy::Schema::Shapes::MemberShape.new(target: ScteHls, name: "ScteHls"))
    CreateHlsManifestConfiguration.add_member(:start_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: StartTag, name: "StartTag"))
    CreateHlsManifestConfiguration.add_member(:manifest_window_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "ManifestWindowSeconds", traits: {"smithy.api#range" => {"min" => 30}}))
    CreateHlsManifestConfiguration.add_member(:program_date_time_interval_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "ProgramDateTimeIntervalSeconds", traits: {"smithy.api#range" => {"min" => 1, "max" => 1209600}}))
    CreateHlsManifestConfiguration.add_member(:filter_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterConfiguration, name: "FilterConfiguration"))
    CreateHlsManifestConfiguration.add_member(:url_encode_child_manifest, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "UrlEncodeChildManifest"))
    CreateHlsManifestConfiguration.type = Types::CreateHlsManifestConfiguration
    CreateHlsManifests.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CreateHlsManifestConfiguration, name: "member")
    CreateLowLatencyHlsManifestConfiguration.add_member(:manifest_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ManifestName, name: "ManifestName", traits: {"smithy.api#required" => {}}))
    CreateLowLatencyHlsManifestConfiguration.add_member(:child_manifest_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ManifestName, name: "ChildManifestName"))
    CreateLowLatencyHlsManifestConfiguration.add_member(:scte_hls, ::Smithy::Schema::Shapes::MemberShape.new(target: ScteHls, name: "ScteHls"))
    CreateLowLatencyHlsManifestConfiguration.add_member(:start_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: StartTag, name: "StartTag"))
    CreateLowLatencyHlsManifestConfiguration.add_member(:manifest_window_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "ManifestWindowSeconds", traits: {"smithy.api#range" => {"min" => 30}}))
    CreateLowLatencyHlsManifestConfiguration.add_member(:program_date_time_interval_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "ProgramDateTimeIntervalSeconds", traits: {"smithy.api#range" => {"min" => 1, "max" => 1209600}}))
    CreateLowLatencyHlsManifestConfiguration.add_member(:filter_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterConfiguration, name: "FilterConfiguration"))
    CreateLowLatencyHlsManifestConfiguration.add_member(:url_encode_child_manifest, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "UrlEncodeChildManifest"))
    CreateLowLatencyHlsManifestConfiguration.type = Types::CreateLowLatencyHlsManifestConfiguration
    CreateLowLatencyHlsManifests.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CreateLowLatencyHlsManifestConfiguration, name: "member")
    CreateMssManifestConfiguration.add_member(:manifest_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ManifestName, name: "ManifestName", traits: {"smithy.api#required" => {}}))
    CreateMssManifestConfiguration.add_member(:manifest_window_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "ManifestWindowSeconds", traits: {"smithy.api#range" => {"min" => 30}}))
    CreateMssManifestConfiguration.add_member(:filter_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterConfiguration, name: "FilterConfiguration"))
    CreateMssManifestConfiguration.add_member(:manifest_layout, ::Smithy::Schema::Shapes::MemberShape.new(target: MssManifestLayout, name: "ManifestLayout"))
    CreateMssManifestConfiguration.type = Types::CreateMssManifestConfiguration
    CreateMssManifests.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CreateMssManifestConfiguration, name: "member")
    CreateOriginEndpointRequest.add_member(:channel_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ChannelGroupName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateOriginEndpointRequest.add_member(:channel_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ChannelName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateOriginEndpointRequest.add_member(:origin_endpoint_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "OriginEndpointName", traits: {"smithy.api#required" => {}}))
    CreateOriginEndpointRequest.add_member(:container_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerType, name: "ContainerType", traits: {"smithy.api#required" => {}}))
    CreateOriginEndpointRequest.add_member(:segment, ::Smithy::Schema::Shapes::MemberShape.new(target: Segment, name: "Segment"))
    CreateOriginEndpointRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotencyToken, name: "ClientToken", traits: {"smithy.api#httpHeader" => "x-amzn-client-token", "smithy.api#idempotencyToken" => {}}))
    CreateOriginEndpointRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "Description"))
    CreateOriginEndpointRequest.add_member(:startover_window_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "StartoverWindowSeconds", traits: {"smithy.api#range" => {"min" => 60, "max" => 1209600}}))
    CreateOriginEndpointRequest.add_member(:hls_manifests, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateHlsManifests, name: "HlsManifests", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    CreateOriginEndpointRequest.add_member(:low_latency_hls_manifests, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateLowLatencyHlsManifests, name: "LowLatencyHlsManifests", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    CreateOriginEndpointRequest.add_member(:dash_manifests, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateDashManifests, name: "DashManifests", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    CreateOriginEndpointRequest.add_member(:mss_manifests, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateMssManifests, name: "MssManifests", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    CreateOriginEndpointRequest.add_member(:force_endpoint_error_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ForceEndpointErrorConfiguration, name: "ForceEndpointErrorConfiguration"))
    CreateOriginEndpointRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    CreateOriginEndpointRequest.type = Types::CreateOriginEndpointRequest
    CreateOriginEndpointResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Arn", traits: {"smithy.api#required" => {}}))
    CreateOriginEndpointResponse.add_member(:channel_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ChannelGroupName", traits: {"smithy.api#required" => {}}))
    CreateOriginEndpointResponse.add_member(:channel_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ChannelName", traits: {"smithy.api#required" => {}}))
    CreateOriginEndpointResponse.add_member(:origin_endpoint_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "OriginEndpointName", traits: {"smithy.api#required" => {}}))
    CreateOriginEndpointResponse.add_member(:container_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerType, name: "ContainerType", traits: {"smithy.api#required" => {}}))
    CreateOriginEndpointResponse.add_member(:segment, ::Smithy::Schema::Shapes::MemberShape.new(target: Segment, name: "Segment", traits: {"smithy.api#required" => {}}))
    CreateOriginEndpointResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedAt", traits: {"smithy.api#required" => {}}))
    CreateOriginEndpointResponse.add_member(:modified_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "ModifiedAt", traits: {"smithy.api#required" => {}}))
    CreateOriginEndpointResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "Description"))
    CreateOriginEndpointResponse.add_member(:startover_window_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "StartoverWindowSeconds"))
    CreateOriginEndpointResponse.add_member(:hls_manifests, ::Smithy::Schema::Shapes::MemberShape.new(target: GetHlsManifests, name: "HlsManifests"))
    CreateOriginEndpointResponse.add_member(:low_latency_hls_manifests, ::Smithy::Schema::Shapes::MemberShape.new(target: GetLowLatencyHlsManifests, name: "LowLatencyHlsManifests"))
    CreateOriginEndpointResponse.add_member(:dash_manifests, ::Smithy::Schema::Shapes::MemberShape.new(target: GetDashManifests, name: "DashManifests"))
    CreateOriginEndpointResponse.add_member(:mss_manifests, ::Smithy::Schema::Shapes::MemberShape.new(target: GetMssManifests, name: "MssManifests"))
    CreateOriginEndpointResponse.add_member(:force_endpoint_error_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ForceEndpointErrorConfiguration, name: "ForceEndpointErrorConfiguration"))
    CreateOriginEndpointResponse.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityTag, name: "ETag", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    CreateOriginEndpointResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    CreateOriginEndpointResponse.type = Types::CreateOriginEndpointResponse
    DashBaseUrl.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Url", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#required" => {}}))
    DashBaseUrl.add_member(:service_location, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ServiceLocation", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}}))
    DashBaseUrl.add_member(:dvb_priority, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "DvbPriority", traits: {"smithy.api#range" => {"min" => 1, "max" => 15000}}))
    DashBaseUrl.add_member(:dvb_weight, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "DvbWeight", traits: {"smithy.api#range" => {"min" => 1, "max" => 15000}}))
    DashBaseUrl.type = Types::DashBaseUrl
    DashBaseUrls.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DashBaseUrl, name: "member")
    DashCompactness.add_member(:standard, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STANDARD", traits: {"smithy.api#enumValue" => "STANDARD"}))
    DashCompactness.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    DashDrmSignaling.add_member(:individual, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INDIVIDUAL", traits: {"smithy.api#enumValue" => "INDIVIDUAL"}))
    DashDrmSignaling.add_member(:referenced, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REFERENCED", traits: {"smithy.api#enumValue" => "REFERENCED"}))
    DashDvbErrorMetrics.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DashDvbMetricsReporting, name: "member")
    DashDvbFontDownload.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Url", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}}))
    DashDvbFontDownload.add_member(:mime_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "MimeType", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9_/-]*[a-zA-Z0-9]$"}))
    DashDvbFontDownload.add_member(:font_family, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "FontFamily", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}}))
    DashDvbFontDownload.type = Types::DashDvbFontDownload
    DashDvbMetricsReporting.add_member(:reporting_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ReportingUrl", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#required" => {}}))
    DashDvbMetricsReporting.add_member(:probability, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "Probability", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}}))
    DashDvbMetricsReporting.type = Types::DashDvbMetricsReporting
    DashDvbSettings.add_member(:font_download, ::Smithy::Schema::Shapes::MemberShape.new(target: DashDvbFontDownload, name: "FontDownload"))
    DashDvbSettings.add_member(:error_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: DashDvbErrorMetrics, name: "ErrorMetrics"))
    DashDvbSettings.type = Types::DashDvbSettings
    DashPeriodTrigger.add_member(:avails, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AVAILS", traits: {"smithy.api#enumValue" => "AVAILS"}))
    DashPeriodTrigger.add_member(:drm_key_rotation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DRM_KEY_ROTATION", traits: {"smithy.api#enumValue" => "DRM_KEY_ROTATION"}))
    DashPeriodTrigger.add_member(:source_changes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SOURCE_CHANGES", traits: {"smithy.api#enumValue" => "SOURCE_CHANGES"}))
    DashPeriodTrigger.add_member(:source_disruptions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SOURCE_DISRUPTIONS", traits: {"smithy.api#enumValue" => "SOURCE_DISRUPTIONS"}))
    DashPeriodTrigger.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    DashPeriodTriggers.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DashPeriodTrigger, name: "member")
    DashProfile.add_member(:dvb_dash, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DVB_DASH", traits: {"smithy.api#enumValue" => "DVB_DASH"}))
    DashProfiles.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DashProfile, name: "member")
    DashProgramInformation.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Title", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}}))
    DashProgramInformation.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Source", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}}))
    DashProgramInformation.add_member(:copyright, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Copyright", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}}))
    DashProgramInformation.add_member(:language_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "LanguageCode", traits: {"smithy.api#length" => {"min" => 2, "max" => 5}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9_-]*[a-zA-Z0-9]$"}))
    DashProgramInformation.add_member(:more_information_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "MoreInformationUrl", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}}))
    DashProgramInformation.type = Types::DashProgramInformation
    DashSegmentTemplateFormat.add_member(:number_with_timeline, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NUMBER_WITH_TIMELINE", traits: {"smithy.api#enumValue" => "NUMBER_WITH_TIMELINE"}))
    DashSubtitleConfiguration.add_member(:ttml_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DashTtmlConfiguration, name: "TtmlConfiguration"))
    DashSubtitleConfiguration.type = Types::DashSubtitleConfiguration
    DashTtmlConfiguration.add_member(:ttml_profile, ::Smithy::Schema::Shapes::MemberShape.new(target: DashTtmlProfile, name: "TtmlProfile", traits: {"smithy.api#required" => {}}))
    DashTtmlConfiguration.type = Types::DashTtmlConfiguration
    DashTtmlProfile.add_member(:imsc_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IMSC_1", traits: {"smithy.api#enumValue" => "IMSC_1"}))
    DashTtmlProfile.add_member(:ebu_tt_d_101, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EBU_TT_D_101", traits: {"smithy.api#enumValue" => "EBU_TT_D_101"}))
    DashUtcTiming.add_member(:timing_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: DashUtcTimingMode, name: "TimingMode"))
    DashUtcTiming.add_member(:timing_source, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "TimingSource", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}}))
    DashUtcTiming.type = Types::DashUtcTiming
    DashUtcTimingMode.add_member(:http_head, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HTTP_HEAD", traits: {"smithy.api#enumValue" => "HTTP_HEAD"}))
    DashUtcTimingMode.add_member(:http_iso, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HTTP_ISO", traits: {"smithy.api#enumValue" => "HTTP_ISO"}))
    DashUtcTimingMode.add_member(:http_xsdate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HTTP_XSDATE", traits: {"smithy.api#enumValue" => "HTTP_XSDATE"}))
    DashUtcTimingMode.add_member(:utc_direct, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UTC_DIRECT", traits: {"smithy.api#enumValue" => "UTC_DIRECT"}))
    DeleteChannelGroupRequest.add_member(:channel_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ChannelGroupName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteChannelGroupRequest.type = Types::DeleteChannelGroupRequest
    DeleteChannelGroupResponse.type = Types::DeleteChannelGroupResponse
    DeleteChannelPolicyRequest.add_member(:channel_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ChannelGroupName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteChannelPolicyRequest.add_member(:channel_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ChannelName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteChannelPolicyRequest.type = Types::DeleteChannelPolicyRequest
    DeleteChannelPolicyResponse.type = Types::DeleteChannelPolicyResponse
    DeleteChannelRequest.add_member(:channel_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ChannelGroupName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteChannelRequest.add_member(:channel_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ChannelName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteChannelRequest.type = Types::DeleteChannelRequest
    DeleteChannelResponse.type = Types::DeleteChannelResponse
    DeleteOriginEndpointPolicyRequest.add_member(:channel_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ChannelGroupName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteOriginEndpointPolicyRequest.add_member(:channel_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ChannelName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteOriginEndpointPolicyRequest.add_member(:origin_endpoint_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "OriginEndpointName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteOriginEndpointPolicyRequest.type = Types::DeleteOriginEndpointPolicyRequest
    DeleteOriginEndpointPolicyResponse.type = Types::DeleteOriginEndpointPolicyResponse
    DeleteOriginEndpointRequest.add_member(:channel_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ChannelGroupName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteOriginEndpointRequest.add_member(:channel_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ChannelName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteOriginEndpointRequest.add_member(:origin_endpoint_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "OriginEndpointName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteOriginEndpointRequest.type = Types::DeleteOriginEndpointRequest
    DeleteOriginEndpointResponse.type = Types::DeleteOriginEndpointResponse
    Destination.add_member(:s3_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: S3DestinationConfig, name: "S3Destination", traits: {"smithy.api#required" => {}}))
    Destination.type = Types::Destination
    DrmSystem.add_member(:clear_key_aes_128, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLEAR_KEY_AES_128", traits: {"smithy.api#enumValue" => "CLEAR_KEY_AES_128"}))
    DrmSystem.add_member(:fairplay, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAIRPLAY", traits: {"smithy.api#enumValue" => "FAIRPLAY"}))
    DrmSystem.add_member(:playready, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PLAYREADY", traits: {"smithy.api#enumValue" => "PLAYREADY"}))
    DrmSystem.add_member(:widevine, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WIDEVINE", traits: {"smithy.api#enumValue" => "WIDEVINE"}))
    DrmSystem.add_member(:irdeto, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IRDETO", traits: {"smithy.api#enumValue" => "IRDETO"}))
    DrmSystems.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DrmSystem, name: "member")
    Encryption.add_member(:constant_initialization_vector, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ConstantInitializationVector", traits: {"smithy.api#length" => {"min" => 32, "max" => 32}, "smithy.api#pattern" => "^[0-9a-fA-F]+$"}))
    Encryption.add_member(:encryption_method, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionMethod, name: "EncryptionMethod", traits: {"smithy.api#required" => {}}))
    Encryption.add_member(:key_rotation_interval_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "KeyRotationIntervalSeconds", traits: {"smithy.api#range" => {"min" => 300, "max" => 31536000}}))
    Encryption.add_member(:cmaf_exclude_segment_drm_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "CmafExcludeSegmentDrmMetadata"))
    Encryption.add_member(:speke_key_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: SpekeKeyProvider, name: "SpekeKeyProvider", traits: {"smithy.api#required" => {}}))
    Encryption.type = Types::Encryption
    EncryptionContractConfiguration.add_member(:preset_speke20_audio, ::Smithy::Schema::Shapes::MemberShape.new(target: PresetSpeke20Audio, name: "PresetSpeke20Audio", traits: {"smithy.api#required" => {}}))
    EncryptionContractConfiguration.add_member(:preset_speke20_video, ::Smithy::Schema::Shapes::MemberShape.new(target: PresetSpeke20Video, name: "PresetSpeke20Video", traits: {"smithy.api#required" => {}}))
    EncryptionContractConfiguration.type = Types::EncryptionContractConfiguration
    EncryptionMethod.add_member(:ts_encryption_method, ::Smithy::Schema::Shapes::MemberShape.new(target: TsEncryptionMethod, name: "TsEncryptionMethod"))
    EncryptionMethod.add_member(:cmaf_encryption_method, ::Smithy::Schema::Shapes::MemberShape.new(target: CmafEncryptionMethod, name: "CmafEncryptionMethod"))
    EncryptionMethod.add_member(:ism_encryption_method, ::Smithy::Schema::Shapes::MemberShape.new(target: IsmEncryptionMethod, name: "IsmEncryptionMethod"))
    EncryptionMethod.type = Types::EncryptionMethod
    EndpointErrorCondition.add_member(:stale_manifest, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STALE_MANIFEST", traits: {"smithy.api#enumValue" => "STALE_MANIFEST"}))
    EndpointErrorCondition.add_member(:incomplete_manifest, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INCOMPLETE_MANIFEST", traits: {"smithy.api#enumValue" => "INCOMPLETE_MANIFEST"}))
    EndpointErrorCondition.add_member(:missing_drm_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MISSING_DRM_KEY", traits: {"smithy.api#enumValue" => "MISSING_DRM_KEY"}))
    EndpointErrorCondition.add_member(:slate_input, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SLATE_INPUT", traits: {"smithy.api#enumValue" => "SLATE_INPUT"}))
    EndpointErrorConditions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointErrorCondition, name: "member")
    FilterConfiguration.add_member(:manifest_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ManifestFilter", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}}))
    FilterConfiguration.add_member(:start, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "Start"))
    FilterConfiguration.add_member(:end, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "End"))
    FilterConfiguration.add_member(:time_delay_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "TimeDelaySeconds", traits: {"smithy.api#range" => {"min" => 0, "max" => 1209600}}))
    FilterConfiguration.add_member(:clip_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "ClipStartTime"))
    FilterConfiguration.type = Types::FilterConfiguration
    ForceEndpointErrorConfiguration.add_member(:endpoint_error_conditions, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointErrorConditions, name: "EndpointErrorConditions"))
    ForceEndpointErrorConfiguration.type = Types::ForceEndpointErrorConfiguration
    GetChannelGroupRequest.add_member(:channel_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ChannelGroupName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetChannelGroupRequest.type = Types::GetChannelGroupRequest
    GetChannelGroupResponse.add_member(:channel_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ChannelGroupName", traits: {"smithy.api#required" => {}}))
    GetChannelGroupResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Arn", traits: {"smithy.api#required" => {}}))
    GetChannelGroupResponse.add_member(:egress_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "EgressDomain", traits: {"smithy.api#required" => {}}))
    GetChannelGroupResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedAt", traits: {"smithy.api#required" => {}}))
    GetChannelGroupResponse.add_member(:modified_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "ModifiedAt", traits: {"smithy.api#required" => {}}))
    GetChannelGroupResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "Description"))
    GetChannelGroupResponse.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityTag, name: "ETag", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    GetChannelGroupResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#jsonName" => "tags"}))
    GetChannelGroupResponse.type = Types::GetChannelGroupResponse
    GetChannelPolicyRequest.add_member(:channel_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ChannelGroupName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetChannelPolicyRequest.add_member(:channel_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ChannelName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetChannelPolicyRequest.type = Types::GetChannelPolicyRequest
    GetChannelPolicyResponse.add_member(:channel_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ChannelGroupName", traits: {"smithy.api#required" => {}}))
    GetChannelPolicyResponse.add_member(:channel_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ChannelName", traits: {"smithy.api#required" => {}}))
    GetChannelPolicyResponse.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyText, name: "Policy", traits: {"smithy.api#required" => {}}))
    GetChannelPolicyResponse.type = Types::GetChannelPolicyResponse
    GetChannelRequest.add_member(:channel_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ChannelGroupName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetChannelRequest.add_member(:channel_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ChannelName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetChannelRequest.type = Types::GetChannelRequest
    GetChannelResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Arn", traits: {"smithy.api#required" => {}}))
    GetChannelResponse.add_member(:channel_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ChannelName", traits: {"smithy.api#required" => {}}))
    GetChannelResponse.add_member(:channel_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ChannelGroupName", traits: {"smithy.api#required" => {}}))
    GetChannelResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedAt", traits: {"smithy.api#required" => {}}))
    GetChannelResponse.add_member(:modified_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "ModifiedAt", traits: {"smithy.api#required" => {}}))
    GetChannelResponse.add_member(:reset_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "ResetAt"))
    GetChannelResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "Description"))
    GetChannelResponse.add_member(:ingest_endpoints, ::Smithy::Schema::Shapes::MemberShape.new(target: IngestEndpointList, name: "IngestEndpoints"))
    GetChannelResponse.add_member(:input_type, ::Smithy::Schema::Shapes::MemberShape.new(target: InputType, name: "InputType"))
    GetChannelResponse.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityTag, name: "ETag", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    GetChannelResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    GetChannelResponse.add_member(:input_switch_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: InputSwitchConfiguration, name: "InputSwitchConfiguration"))
    GetChannelResponse.add_member(:output_header_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputHeaderConfiguration, name: "OutputHeaderConfiguration"))
    GetChannelResponse.type = Types::GetChannelResponse
    GetDashManifestConfiguration.add_member(:manifest_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ManifestName", traits: {"smithy.api#required" => {}}))
    GetDashManifestConfiguration.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Url", traits: {"smithy.api#required" => {}}))
    GetDashManifestConfiguration.add_member(:manifest_window_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "ManifestWindowSeconds"))
    GetDashManifestConfiguration.add_member(:filter_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterConfiguration, name: "FilterConfiguration"))
    GetDashManifestConfiguration.add_member(:min_update_period_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MinUpdatePeriodSeconds"))
    GetDashManifestConfiguration.add_member(:min_buffer_time_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MinBufferTimeSeconds"))
    GetDashManifestConfiguration.add_member(:suggested_presentation_delay_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "SuggestedPresentationDelaySeconds"))
    GetDashManifestConfiguration.add_member(:segment_template_format, ::Smithy::Schema::Shapes::MemberShape.new(target: DashSegmentTemplateFormat, name: "SegmentTemplateFormat"))
    GetDashManifestConfiguration.add_member(:period_triggers, ::Smithy::Schema::Shapes::MemberShape.new(target: DashPeriodTriggers, name: "PeriodTriggers"))
    GetDashManifestConfiguration.add_member(:scte_dash, ::Smithy::Schema::Shapes::MemberShape.new(target: ScteDash, name: "ScteDash"))
    GetDashManifestConfiguration.add_member(:drm_signaling, ::Smithy::Schema::Shapes::MemberShape.new(target: DashDrmSignaling, name: "DrmSignaling"))
    GetDashManifestConfiguration.add_member(:utc_timing, ::Smithy::Schema::Shapes::MemberShape.new(target: DashUtcTiming, name: "UtcTiming"))
    GetDashManifestConfiguration.add_member(:profiles, ::Smithy::Schema::Shapes::MemberShape.new(target: DashProfiles, name: "Profiles"))
    GetDashManifestConfiguration.add_member(:base_urls, ::Smithy::Schema::Shapes::MemberShape.new(target: DashBaseUrls, name: "BaseUrls"))
    GetDashManifestConfiguration.add_member(:program_information, ::Smithy::Schema::Shapes::MemberShape.new(target: DashProgramInformation, name: "ProgramInformation"))
    GetDashManifestConfiguration.add_member(:dvb_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: DashDvbSettings, name: "DvbSettings"))
    GetDashManifestConfiguration.add_member(:compactness, ::Smithy::Schema::Shapes::MemberShape.new(target: DashCompactness, name: "Compactness"))
    GetDashManifestConfiguration.add_member(:subtitle_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DashSubtitleConfiguration, name: "SubtitleConfiguration"))
    GetDashManifestConfiguration.type = Types::GetDashManifestConfiguration
    GetDashManifests.member = ::Smithy::Schema::Shapes::MemberShape.new(target: GetDashManifestConfiguration, name: "member")
    GetHarvestJobRequest.add_member(:channel_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ChannelGroupName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetHarvestJobRequest.add_member(:channel_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ChannelName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetHarvestJobRequest.add_member(:origin_endpoint_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "OriginEndpointName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetHarvestJobRequest.add_member(:harvest_job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "HarvestJobName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetHarvestJobRequest.type = Types::GetHarvestJobRequest
    GetHarvestJobResponse.add_member(:channel_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ChannelGroupName", traits: {"smithy.api#required" => {}}))
    GetHarvestJobResponse.add_member(:channel_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ChannelName", traits: {"smithy.api#required" => {}}))
    GetHarvestJobResponse.add_member(:origin_endpoint_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "OriginEndpointName", traits: {"smithy.api#required" => {}}))
    GetHarvestJobResponse.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: Destination, name: "Destination", traits: {"smithy.api#required" => {}}))
    GetHarvestJobResponse.add_member(:harvest_job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "HarvestJobName", traits: {"smithy.api#required" => {}}))
    GetHarvestJobResponse.add_member(:harvested_manifests, ::Smithy::Schema::Shapes::MemberShape.new(target: HarvestedManifests, name: "HarvestedManifests", traits: {"smithy.api#required" => {}}))
    GetHarvestJobResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "Description"))
    GetHarvestJobResponse.add_member(:schedule_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: HarvesterScheduleConfiguration, name: "ScheduleConfiguration", traits: {"smithy.api#required" => {}}))
    GetHarvestJobResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Arn", traits: {"smithy.api#required" => {}}))
    GetHarvestJobResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedAt", traits: {"smithy.api#required" => {}}))
    GetHarvestJobResponse.add_member(:modified_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "ModifiedAt", traits: {"smithy.api#required" => {}}))
    GetHarvestJobResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: HarvestJobStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    GetHarvestJobResponse.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ErrorMessage"))
    GetHarvestJobResponse.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityTag, name: "ETag", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    GetHarvestJobResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    GetHarvestJobResponse.type = Types::GetHarvestJobResponse
    GetHlsManifestConfiguration.add_member(:manifest_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ManifestName", traits: {"smithy.api#required" => {}}))
    GetHlsManifestConfiguration.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Url", traits: {"smithy.api#required" => {}}))
    GetHlsManifestConfiguration.add_member(:child_manifest_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ChildManifestName"))
    GetHlsManifestConfiguration.add_member(:manifest_window_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "ManifestWindowSeconds"))
    GetHlsManifestConfiguration.add_member(:program_date_time_interval_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "ProgramDateTimeIntervalSeconds"))
    GetHlsManifestConfiguration.add_member(:scte_hls, ::Smithy::Schema::Shapes::MemberShape.new(target: ScteHls, name: "ScteHls"))
    GetHlsManifestConfiguration.add_member(:filter_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterConfiguration, name: "FilterConfiguration"))
    GetHlsManifestConfiguration.add_member(:start_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: StartTag, name: "StartTag"))
    GetHlsManifestConfiguration.add_member(:url_encode_child_manifest, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "UrlEncodeChildManifest"))
    GetHlsManifestConfiguration.type = Types::GetHlsManifestConfiguration
    GetHlsManifests.member = ::Smithy::Schema::Shapes::MemberShape.new(target: GetHlsManifestConfiguration, name: "member")
    GetLowLatencyHlsManifestConfiguration.add_member(:manifest_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ManifestName", traits: {"smithy.api#required" => {}}))
    GetLowLatencyHlsManifestConfiguration.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Url", traits: {"smithy.api#required" => {}}))
    GetLowLatencyHlsManifestConfiguration.add_member(:child_manifest_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ChildManifestName"))
    GetLowLatencyHlsManifestConfiguration.add_member(:manifest_window_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "ManifestWindowSeconds"))
    GetLowLatencyHlsManifestConfiguration.add_member(:program_date_time_interval_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "ProgramDateTimeIntervalSeconds"))
    GetLowLatencyHlsManifestConfiguration.add_member(:scte_hls, ::Smithy::Schema::Shapes::MemberShape.new(target: ScteHls, name: "ScteHls"))
    GetLowLatencyHlsManifestConfiguration.add_member(:filter_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterConfiguration, name: "FilterConfiguration"))
    GetLowLatencyHlsManifestConfiguration.add_member(:start_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: StartTag, name: "StartTag"))
    GetLowLatencyHlsManifestConfiguration.add_member(:url_encode_child_manifest, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "UrlEncodeChildManifest"))
    GetLowLatencyHlsManifestConfiguration.type = Types::GetLowLatencyHlsManifestConfiguration
    GetLowLatencyHlsManifests.member = ::Smithy::Schema::Shapes::MemberShape.new(target: GetLowLatencyHlsManifestConfiguration, name: "member")
    GetMssManifestConfiguration.add_member(:manifest_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ManifestName, name: "ManifestName", traits: {"smithy.api#required" => {}}))
    GetMssManifestConfiguration.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Url", traits: {"smithy.api#required" => {}}))
    GetMssManifestConfiguration.add_member(:filter_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterConfiguration, name: "FilterConfiguration"))
    GetMssManifestConfiguration.add_member(:manifest_window_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "ManifestWindowSeconds"))
    GetMssManifestConfiguration.add_member(:manifest_layout, ::Smithy::Schema::Shapes::MemberShape.new(target: MssManifestLayout, name: "ManifestLayout"))
    GetMssManifestConfiguration.type = Types::GetMssManifestConfiguration
    GetMssManifests.member = ::Smithy::Schema::Shapes::MemberShape.new(target: GetMssManifestConfiguration, name: "member")
    GetOriginEndpointPolicyRequest.add_member(:channel_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ChannelGroupName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetOriginEndpointPolicyRequest.add_member(:channel_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ChannelName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetOriginEndpointPolicyRequest.add_member(:origin_endpoint_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "OriginEndpointName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetOriginEndpointPolicyRequest.type = Types::GetOriginEndpointPolicyRequest
    GetOriginEndpointPolicyResponse.add_member(:channel_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ChannelGroupName", traits: {"smithy.api#required" => {}}))
    GetOriginEndpointPolicyResponse.add_member(:channel_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ChannelName", traits: {"smithy.api#required" => {}}))
    GetOriginEndpointPolicyResponse.add_member(:origin_endpoint_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "OriginEndpointName", traits: {"smithy.api#required" => {}}))
    GetOriginEndpointPolicyResponse.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyText, name: "Policy", traits: {"smithy.api#required" => {}}))
    GetOriginEndpointPolicyResponse.add_member(:cdn_auth_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CdnAuthConfiguration, name: "CdnAuthConfiguration"))
    GetOriginEndpointPolicyResponse.type = Types::GetOriginEndpointPolicyResponse
    GetOriginEndpointRequest.add_member(:channel_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ChannelGroupName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetOriginEndpointRequest.add_member(:channel_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ChannelName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetOriginEndpointRequest.add_member(:origin_endpoint_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "OriginEndpointName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetOriginEndpointRequest.type = Types::GetOriginEndpointRequest
    GetOriginEndpointResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Arn", traits: {"smithy.api#required" => {}}))
    GetOriginEndpointResponse.add_member(:channel_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ChannelGroupName", traits: {"smithy.api#required" => {}}))
    GetOriginEndpointResponse.add_member(:channel_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ChannelName", traits: {"smithy.api#required" => {}}))
    GetOriginEndpointResponse.add_member(:origin_endpoint_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "OriginEndpointName", traits: {"smithy.api#required" => {}}))
    GetOriginEndpointResponse.add_member(:container_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerType, name: "ContainerType", traits: {"smithy.api#required" => {}}))
    GetOriginEndpointResponse.add_member(:segment, ::Smithy::Schema::Shapes::MemberShape.new(target: Segment, name: "Segment", traits: {"smithy.api#required" => {}}))
    GetOriginEndpointResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedAt", traits: {"smithy.api#required" => {}}))
    GetOriginEndpointResponse.add_member(:modified_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "ModifiedAt", traits: {"smithy.api#required" => {}}))
    GetOriginEndpointResponse.add_member(:reset_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "ResetAt"))
    GetOriginEndpointResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "Description"))
    GetOriginEndpointResponse.add_member(:startover_window_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "StartoverWindowSeconds"))
    GetOriginEndpointResponse.add_member(:hls_manifests, ::Smithy::Schema::Shapes::MemberShape.new(target: GetHlsManifests, name: "HlsManifests"))
    GetOriginEndpointResponse.add_member(:low_latency_hls_manifests, ::Smithy::Schema::Shapes::MemberShape.new(target: GetLowLatencyHlsManifests, name: "LowLatencyHlsManifests"))
    GetOriginEndpointResponse.add_member(:dash_manifests, ::Smithy::Schema::Shapes::MemberShape.new(target: GetDashManifests, name: "DashManifests"))
    GetOriginEndpointResponse.add_member(:mss_manifests, ::Smithy::Schema::Shapes::MemberShape.new(target: GetMssManifests, name: "MssManifests"))
    GetOriginEndpointResponse.add_member(:force_endpoint_error_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ForceEndpointErrorConfiguration, name: "ForceEndpointErrorConfiguration"))
    GetOriginEndpointResponse.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityTag, name: "ETag", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    GetOriginEndpointResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    GetOriginEndpointResponse.type = Types::GetOriginEndpointResponse
    HarvestJob.add_member(:channel_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ChannelGroupName", traits: {"smithy.api#required" => {}}))
    HarvestJob.add_member(:channel_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ChannelName", traits: {"smithy.api#required" => {}}))
    HarvestJob.add_member(:origin_endpoint_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "OriginEndpointName", traits: {"smithy.api#required" => {}}))
    HarvestJob.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: Destination, name: "Destination", traits: {"smithy.api#required" => {}}))
    HarvestJob.add_member(:harvest_job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "HarvestJobName", traits: {"smithy.api#required" => {}}))
    HarvestJob.add_member(:harvested_manifests, ::Smithy::Schema::Shapes::MemberShape.new(target: HarvestedManifests, name: "HarvestedManifests", traits: {"smithy.api#required" => {}}))
    HarvestJob.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "Description"))
    HarvestJob.add_member(:schedule_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: HarvesterScheduleConfiguration, name: "ScheduleConfiguration", traits: {"smithy.api#required" => {}}))
    HarvestJob.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Arn", traits: {"smithy.api#required" => {}}))
    HarvestJob.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedAt", traits: {"smithy.api#required" => {}}))
    HarvestJob.add_member(:modified_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "ModifiedAt", traits: {"smithy.api#required" => {}}))
    HarvestJob.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: HarvestJobStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    HarvestJob.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ErrorMessage"))
    HarvestJob.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityTag, name: "ETag", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    HarvestJob.type = Types::HarvestJob
    HarvestJobStatus.add_member(:queued, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "QUEUED", traits: {"smithy.api#enumValue" => "QUEUED"}))
    HarvestJobStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    HarvestJobStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELLED", traits: {"smithy.api#enumValue" => "CANCELLED"}))
    HarvestJobStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    HarvestJobStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    HarvestJobsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: HarvestJob, name: "member")
    HarvestedDashManifest.add_member(:manifest_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ManifestName", traits: {"smithy.api#required" => {}}))
    HarvestedDashManifest.type = Types::HarvestedDashManifest
    HarvestedDashManifestsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: HarvestedDashManifest, name: "member")
    HarvestedHlsManifest.add_member(:manifest_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ManifestName", traits: {"smithy.api#required" => {}}))
    HarvestedHlsManifest.type = Types::HarvestedHlsManifest
    HarvestedHlsManifestsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: HarvestedHlsManifest, name: "member")
    HarvestedLowLatencyHlsManifest.add_member(:manifest_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ManifestName", traits: {"smithy.api#required" => {}}))
    HarvestedLowLatencyHlsManifest.type = Types::HarvestedLowLatencyHlsManifest
    HarvestedLowLatencyHlsManifestsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: HarvestedLowLatencyHlsManifest, name: "member")
    HarvestedManifests.add_member(:hls_manifests, ::Smithy::Schema::Shapes::MemberShape.new(target: HarvestedHlsManifestsList, name: "HlsManifests"))
    HarvestedManifests.add_member(:dash_manifests, ::Smithy::Schema::Shapes::MemberShape.new(target: HarvestedDashManifestsList, name: "DashManifests"))
    HarvestedManifests.add_member(:low_latency_hls_manifests, ::Smithy::Schema::Shapes::MemberShape.new(target: HarvestedLowLatencyHlsManifestsList, name: "LowLatencyHlsManifests"))
    HarvestedManifests.type = Types::HarvestedManifests
    HarvesterScheduleConfiguration.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "StartTime", traits: {"smithy.api#required" => {}}))
    HarvesterScheduleConfiguration.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "EndTime", traits: {"smithy.api#required" => {}}))
    HarvesterScheduleConfiguration.type = Types::HarvesterScheduleConfiguration
    IngestEndpoint.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Id"))
    IngestEndpoint.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Url"))
    IngestEndpoint.type = Types::IngestEndpoint
    IngestEndpointList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: IngestEndpoint, name: "member")
    InputSwitchConfiguration.add_member(:mqcs_input_switching, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "MQCSInputSwitching"))
    InputSwitchConfiguration.add_member(:preferred_input, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "PreferredInput", traits: {"smithy.api#range" => {"min" => 1, "max" => 2}}))
    InputSwitchConfiguration.type = Types::InputSwitchConfiguration
    InputType.add_member(:hls, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HLS", traits: {"smithy.api#enumValue" => "HLS"}))
    InputType.add_member(:cmaf, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CMAF", traits: {"smithy.api#enumValue" => "CMAF"}))
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    InternalServerException.type = Types::InternalServerException
    IsmEncryptionMethod.add_member(:cenc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CENC", traits: {"smithy.api#enumValue" => "CENC"}))
    ListChannelGroupsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListResourceMaxResults, name: "MaxResults", traits: {"smithy.api#default" => 10, "smithy.api#httpQuery" => "maxResults"}))
    ListChannelGroupsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListChannelGroupsRequest.type = Types::ListChannelGroupsRequest
    ListChannelGroupsResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelGroupsList, name: "Items"))
    ListChannelGroupsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken"))
    ListChannelGroupsResponse.type = Types::ListChannelGroupsResponse
    ListChannelsRequest.add_member(:channel_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ChannelGroupName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListChannelsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListResourceMaxResults, name: "MaxResults", traits: {"smithy.api#default" => 10, "smithy.api#httpQuery" => "maxResults"}))
    ListChannelsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListChannelsRequest.type = Types::ListChannelsRequest
    ListChannelsResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelList, name: "Items"))
    ListChannelsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken"))
    ListChannelsResponse.type = Types::ListChannelsResponse
    ListDashManifestConfiguration.add_member(:manifest_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ManifestName", traits: {"smithy.api#required" => {}}))
    ListDashManifestConfiguration.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Url"))
    ListDashManifestConfiguration.type = Types::ListDashManifestConfiguration
    ListDashManifests.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ListDashManifestConfiguration, name: "member")
    ListHarvestJobsRequest.add_member(:channel_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ChannelGroupName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListHarvestJobsRequest.add_member(:channel_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ChannelName", traits: {"smithy.api#httpQuery" => "channelName", "smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9_-]+$"}))
    ListHarvestJobsRequest.add_member(:origin_endpoint_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "OriginEndpointName", traits: {"smithy.api#httpQuery" => "originEndpointName", "smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9_-]+$"}))
    ListHarvestJobsRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: HarvestJobStatus, name: "Status", traits: {"smithy.api#httpQuery" => "includeStatus"}))
    ListHarvestJobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListResourceMaxResults, name: "MaxResults", traits: {"smithy.api#default" => 10, "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListHarvestJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListHarvestJobsRequest.type = Types::ListHarvestJobsRequest
    ListHarvestJobsResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: HarvestJobsList, name: "Items"))
    ListHarvestJobsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken"))
    ListHarvestJobsResponse.type = Types::ListHarvestJobsResponse
    ListHlsManifestConfiguration.add_member(:manifest_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ManifestName", traits: {"smithy.api#required" => {}}))
    ListHlsManifestConfiguration.add_member(:child_manifest_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ChildManifestName"))
    ListHlsManifestConfiguration.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Url"))
    ListHlsManifestConfiguration.type = Types::ListHlsManifestConfiguration
    ListHlsManifests.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ListHlsManifestConfiguration, name: "member")
    ListLowLatencyHlsManifestConfiguration.add_member(:manifest_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ManifestName", traits: {"smithy.api#required" => {}}))
    ListLowLatencyHlsManifestConfiguration.add_member(:child_manifest_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ChildManifestName"))
    ListLowLatencyHlsManifestConfiguration.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Url"))
    ListLowLatencyHlsManifestConfiguration.type = Types::ListLowLatencyHlsManifestConfiguration
    ListLowLatencyHlsManifests.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ListLowLatencyHlsManifestConfiguration, name: "member")
    ListMssManifestConfiguration.add_member(:manifest_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ManifestName", traits: {"smithy.api#required" => {}}))
    ListMssManifestConfiguration.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Url"))
    ListMssManifestConfiguration.type = Types::ListMssManifestConfiguration
    ListMssManifests.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ListMssManifestConfiguration, name: "member")
    ListOriginEndpointsRequest.add_member(:channel_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ChannelGroupName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListOriginEndpointsRequest.add_member(:channel_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ChannelName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListOriginEndpointsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListResourceMaxResults, name: "MaxResults", traits: {"smithy.api#default" => 10, "smithy.api#httpQuery" => "maxResults"}))
    ListOriginEndpointsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListOriginEndpointsRequest.type = Types::ListOriginEndpointsRequest
    ListOriginEndpointsResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: OriginEndpointsList, name: "Items"))
    ListOriginEndpointsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken"))
    ListOriginEndpointsResponse.type = Types::ListOriginEndpointsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TagArn, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    MssManifestLayout.add_member(:full, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FULL", traits: {"smithy.api#enumValue" => "FULL"}))
    MssManifestLayout.add_member(:compact, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPACT", traits: {"smithy.api#enumValue" => "COMPACT"}))
    OriginEndpointListConfiguration.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Arn", traits: {"smithy.api#required" => {}}))
    OriginEndpointListConfiguration.add_member(:channel_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ChannelGroupName", traits: {"smithy.api#required" => {}}))
    OriginEndpointListConfiguration.add_member(:channel_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ChannelName", traits: {"smithy.api#required" => {}}))
    OriginEndpointListConfiguration.add_member(:origin_endpoint_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "OriginEndpointName", traits: {"smithy.api#required" => {}}))
    OriginEndpointListConfiguration.add_member(:container_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerType, name: "ContainerType", traits: {"smithy.api#required" => {}}))
    OriginEndpointListConfiguration.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "Description"))
    OriginEndpointListConfiguration.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedAt"))
    OriginEndpointListConfiguration.add_member(:modified_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "ModifiedAt"))
    OriginEndpointListConfiguration.add_member(:hls_manifests, ::Smithy::Schema::Shapes::MemberShape.new(target: ListHlsManifests, name: "HlsManifests"))
    OriginEndpointListConfiguration.add_member(:low_latency_hls_manifests, ::Smithy::Schema::Shapes::MemberShape.new(target: ListLowLatencyHlsManifests, name: "LowLatencyHlsManifests"))
    OriginEndpointListConfiguration.add_member(:dash_manifests, ::Smithy::Schema::Shapes::MemberShape.new(target: ListDashManifests, name: "DashManifests"))
    OriginEndpointListConfiguration.add_member(:mss_manifests, ::Smithy::Schema::Shapes::MemberShape.new(target: ListMssManifests, name: "MssManifests"))
    OriginEndpointListConfiguration.add_member(:force_endpoint_error_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ForceEndpointErrorConfiguration, name: "ForceEndpointErrorConfiguration"))
    OriginEndpointListConfiguration.type = Types::OriginEndpointListConfiguration
    OriginEndpointsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: OriginEndpointListConfiguration, name: "member")
    OutputHeaderConfiguration.add_member(:publish_mqcs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "PublishMQCS"))
    OutputHeaderConfiguration.type = Types::OutputHeaderConfiguration
    PresetSpeke20Audio.add_member(:preset_audio_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRESET_AUDIO_1", traits: {"smithy.api#enumValue" => "PRESET_AUDIO_1"}))
    PresetSpeke20Audio.add_member(:preset_audio_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRESET_AUDIO_2", traits: {"smithy.api#enumValue" => "PRESET_AUDIO_2"}))
    PresetSpeke20Audio.add_member(:preset_audio_3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRESET_AUDIO_3", traits: {"smithy.api#enumValue" => "PRESET_AUDIO_3"}))
    PresetSpeke20Audio.add_member(:shared, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SHARED", traits: {"smithy.api#enumValue" => "SHARED"}))
    PresetSpeke20Audio.add_member(:unencrypted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNENCRYPTED", traits: {"smithy.api#enumValue" => "UNENCRYPTED"}))
    PresetSpeke20Video.add_member(:preset_video_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRESET_VIDEO_1", traits: {"smithy.api#enumValue" => "PRESET_VIDEO_1"}))
    PresetSpeke20Video.add_member(:preset_video_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRESET_VIDEO_2", traits: {"smithy.api#enumValue" => "PRESET_VIDEO_2"}))
    PresetSpeke20Video.add_member(:preset_video_3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRESET_VIDEO_3", traits: {"smithy.api#enumValue" => "PRESET_VIDEO_3"}))
    PresetSpeke20Video.add_member(:preset_video_4, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRESET_VIDEO_4", traits: {"smithy.api#enumValue" => "PRESET_VIDEO_4"}))
    PresetSpeke20Video.add_member(:preset_video_5, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRESET_VIDEO_5", traits: {"smithy.api#enumValue" => "PRESET_VIDEO_5"}))
    PresetSpeke20Video.add_member(:preset_video_6, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRESET_VIDEO_6", traits: {"smithy.api#enumValue" => "PRESET_VIDEO_6"}))
    PresetSpeke20Video.add_member(:preset_video_7, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRESET_VIDEO_7", traits: {"smithy.api#enumValue" => "PRESET_VIDEO_7"}))
    PresetSpeke20Video.add_member(:preset_video_8, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRESET_VIDEO_8", traits: {"smithy.api#enumValue" => "PRESET_VIDEO_8"}))
    PresetSpeke20Video.add_member(:shared, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SHARED", traits: {"smithy.api#enumValue" => "SHARED"}))
    PresetSpeke20Video.add_member(:unencrypted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNENCRYPTED", traits: {"smithy.api#enumValue" => "UNENCRYPTED"}))
    PutChannelPolicyRequest.add_member(:channel_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ChannelGroupName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutChannelPolicyRequest.add_member(:channel_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ChannelName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutChannelPolicyRequest.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyText, name: "Policy", traits: {"smithy.api#required" => {}}))
    PutChannelPolicyRequest.type = Types::PutChannelPolicyRequest
    PutChannelPolicyResponse.type = Types::PutChannelPolicyResponse
    PutOriginEndpointPolicyRequest.add_member(:channel_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ChannelGroupName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutOriginEndpointPolicyRequest.add_member(:channel_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ChannelName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutOriginEndpointPolicyRequest.add_member(:origin_endpoint_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "OriginEndpointName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutOriginEndpointPolicyRequest.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyText, name: "Policy", traits: {"smithy.api#required" => {}}))
    PutOriginEndpointPolicyRequest.add_member(:cdn_auth_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CdnAuthConfiguration, name: "CdnAuthConfiguration"))
    PutOriginEndpointPolicyRequest.type = Types::PutOriginEndpointPolicyRequest
    PutOriginEndpointPolicyResponse.type = Types::PutOriginEndpointPolicyResponse
    ResetChannelStateRequest.add_member(:channel_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ChannelGroupName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ResetChannelStateRequest.add_member(:channel_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ChannelName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ResetChannelStateRequest.type = Types::ResetChannelStateRequest
    ResetChannelStateResponse.add_member(:channel_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ChannelGroupName", traits: {"smithy.api#required" => {}}))
    ResetChannelStateResponse.add_member(:channel_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ChannelName", traits: {"smithy.api#required" => {}}))
    ResetChannelStateResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Arn", traits: {"smithy.api#required" => {}}))
    ResetChannelStateResponse.add_member(:reset_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "ResetAt", traits: {"smithy.api#required" => {}}))
    ResetChannelStateResponse.type = Types::ResetChannelStateResponse
    ResetOriginEndpointStateRequest.add_member(:channel_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ChannelGroupName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ResetOriginEndpointStateRequest.add_member(:channel_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ChannelName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ResetOriginEndpointStateRequest.add_member(:origin_endpoint_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "OriginEndpointName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ResetOriginEndpointStateRequest.type = Types::ResetOriginEndpointStateRequest
    ResetOriginEndpointStateResponse.add_member(:channel_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ChannelGroupName", traits: {"smithy.api#required" => {}}))
    ResetOriginEndpointStateResponse.add_member(:channel_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ChannelName", traits: {"smithy.api#required" => {}}))
    ResetOriginEndpointStateResponse.add_member(:origin_endpoint_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "OriginEndpointName", traits: {"smithy.api#required" => {}}))
    ResetOriginEndpointStateResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Arn", traits: {"smithy.api#required" => {}}))
    ResetOriginEndpointStateResponse.add_member(:reset_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "ResetAt", traits: {"smithy.api#required" => {}}))
    ResetOriginEndpointStateResponse.type = Types::ResetOriginEndpointStateResponse
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    ResourceNotFoundException.add_member(:resource_type_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTypeNotFound, name: "ResourceTypeNotFound"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceTypeNotFound.add_member(:channel_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CHANNEL_GROUP", traits: {"smithy.api#enumValue" => "CHANNEL_GROUP"}))
    ResourceTypeNotFound.add_member(:channel, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CHANNEL", traits: {"smithy.api#enumValue" => "CHANNEL"}))
    ResourceTypeNotFound.add_member(:origin_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ORIGIN_ENDPOINT", traits: {"smithy.api#enumValue" => "ORIGIN_ENDPOINT"}))
    ResourceTypeNotFound.add_member(:harvest_job, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HARVEST_JOB", traits: {"smithy.api#enumValue" => "HARVEST_JOB"}))
    S3DestinationConfig.add_member(:bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketName, name: "BucketName", traits: {"smithy.api#required" => {}}))
    S3DestinationConfig.add_member(:destination_path, ::Smithy::Schema::Shapes::MemberShape.new(target: S3DestinationPath, name: "DestinationPath", traits: {"smithy.api#required" => {}}))
    S3DestinationConfig.type = Types::S3DestinationConfig
    Scte.add_member(:scte_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ScteFilterList, name: "ScteFilter"))
    Scte.type = Types::Scte
    ScteDash.add_member(:ad_marker_dash, ::Smithy::Schema::Shapes::MemberShape.new(target: AdMarkerDash, name: "AdMarkerDash"))
    ScteDash.type = Types::ScteDash
    ScteFilter.add_member(:splice_insert, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SPLICE_INSERT", traits: {"smithy.api#enumValue" => "SPLICE_INSERT"}))
    ScteFilter.add_member(:break, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BREAK", traits: {"smithy.api#enumValue" => "BREAK"}))
    ScteFilter.add_member(:provider_advertisement, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROVIDER_ADVERTISEMENT", traits: {"smithy.api#enumValue" => "PROVIDER_ADVERTISEMENT"}))
    ScteFilter.add_member(:distributor_advertisement, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISTRIBUTOR_ADVERTISEMENT", traits: {"smithy.api#enumValue" => "DISTRIBUTOR_ADVERTISEMENT"}))
    ScteFilter.add_member(:provider_placement_opportunity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROVIDER_PLACEMENT_OPPORTUNITY", traits: {"smithy.api#enumValue" => "PROVIDER_PLACEMENT_OPPORTUNITY"}))
    ScteFilter.add_member(:distributor_placement_opportunity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISTRIBUTOR_PLACEMENT_OPPORTUNITY", traits: {"smithy.api#enumValue" => "DISTRIBUTOR_PLACEMENT_OPPORTUNITY"}))
    ScteFilter.add_member(:provider_overlay_placement_opportunity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROVIDER_OVERLAY_PLACEMENT_OPPORTUNITY", traits: {"smithy.api#enumValue" => "PROVIDER_OVERLAY_PLACEMENT_OPPORTUNITY"}))
    ScteFilter.add_member(:distributor_overlay_placement_opportunity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISTRIBUTOR_OVERLAY_PLACEMENT_OPPORTUNITY", traits: {"smithy.api#enumValue" => "DISTRIBUTOR_OVERLAY_PLACEMENT_OPPORTUNITY"}))
    ScteFilter.add_member(:program, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROGRAM", traits: {"smithy.api#enumValue" => "PROGRAM"}))
    ScteFilterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ScteFilter, name: "member")
    ScteHls.add_member(:ad_marker_hls, ::Smithy::Schema::Shapes::MemberShape.new(target: AdMarkerHls, name: "AdMarkerHls"))
    ScteHls.type = Types::ScteHls
    Segment.add_member(:segment_duration_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "SegmentDurationSeconds", traits: {"smithy.api#range" => {"min" => 1, "max" => 30}}))
    Segment.add_member(:segment_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "SegmentName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9_-]+$"}))
    Segment.add_member(:ts_use_audio_rendition_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "TsUseAudioRenditionGroup"))
    Segment.add_member(:include_iframe_only_streams, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "IncludeIframeOnlyStreams"))
    Segment.add_member(:ts_include_dvb_subtitles, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "TsIncludeDvbSubtitles"))
    Segment.add_member(:scte, ::Smithy::Schema::Shapes::MemberShape.new(target: Scte, name: "Scte"))
    Segment.add_member(:encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: Encryption, name: "Encryption"))
    Segment.type = Types::Segment
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SpekeKeyProvider.add_member(:encryption_contract_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionContractConfiguration, name: "EncryptionContractConfiguration", traits: {"smithy.api#required" => {}}))
    SpekeKeyProvider.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ResourceId", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[0-9a-zA-Z_-]+$", "smithy.api#required" => {}}))
    SpekeKeyProvider.add_member(:drm_systems, ::Smithy::Schema::Shapes::MemberShape.new(target: DrmSystems, name: "DrmSystems", traits: {"smithy.api#length" => {"min" => 1, "max" => 4}, "smithy.api#required" => {}}))
    SpekeKeyProvider.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RoleArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#required" => {}}))
    SpekeKeyProvider.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Url", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#required" => {}}))
    SpekeKeyProvider.type = Types::SpekeKeyProvider
    StartTag.add_member(:time_offset, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Float, name: "TimeOffset", traits: {"smithy.api#required" => {}}))
    StartTag.add_member(:precise, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "Precise"))
    StartTag.type = Types::StartTag
    TagKeyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member")
    TagMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key")
    TagMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value")
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TagArn, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags", traits: {"smithy.api#jsonName" => "tags", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    ThrottlingException.type = Types::ThrottlingException
    TsEncryptionMethod.add_member(:aes_128, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AES_128", traits: {"smithy.api#enumValue" => "AES_128"}))
    TsEncryptionMethod.add_member(:sample_aes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SAMPLE_AES", traits: {"smithy.api#enumValue" => "SAMPLE_AES"}))
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TagArn, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "TagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UpdateChannelGroupRequest.add_member(:channel_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ChannelGroupName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateChannelGroupRequest.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityTag, name: "ETag", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#httpHeader" => "x-amzn-update-if-match"}))
    UpdateChannelGroupRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "Description"))
    UpdateChannelGroupRequest.type = Types::UpdateChannelGroupRequest
    UpdateChannelGroupResponse.add_member(:channel_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ChannelGroupName", traits: {"smithy.api#required" => {}}))
    UpdateChannelGroupResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Arn", traits: {"smithy.api#required" => {}}))
    UpdateChannelGroupResponse.add_member(:egress_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "EgressDomain", traits: {"smithy.api#required" => {}}))
    UpdateChannelGroupResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedAt", traits: {"smithy.api#required" => {}}))
    UpdateChannelGroupResponse.add_member(:modified_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "ModifiedAt", traits: {"smithy.api#required" => {}}))
    UpdateChannelGroupResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "Description"))
    UpdateChannelGroupResponse.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityTag, name: "ETag", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    UpdateChannelGroupResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#jsonName" => "tags"}))
    UpdateChannelGroupResponse.type = Types::UpdateChannelGroupResponse
    UpdateChannelRequest.add_member(:channel_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ChannelGroupName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateChannelRequest.add_member(:channel_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ChannelName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateChannelRequest.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityTag, name: "ETag", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#httpHeader" => "x-amzn-update-if-match"}))
    UpdateChannelRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "Description"))
    UpdateChannelRequest.add_member(:input_switch_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: InputSwitchConfiguration, name: "InputSwitchConfiguration"))
    UpdateChannelRequest.add_member(:output_header_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputHeaderConfiguration, name: "OutputHeaderConfiguration"))
    UpdateChannelRequest.type = Types::UpdateChannelRequest
    UpdateChannelResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Arn", traits: {"smithy.api#required" => {}}))
    UpdateChannelResponse.add_member(:channel_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ChannelName", traits: {"smithy.api#required" => {}}))
    UpdateChannelResponse.add_member(:channel_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ChannelGroupName", traits: {"smithy.api#required" => {}}))
    UpdateChannelResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedAt", traits: {"smithy.api#required" => {}}))
    UpdateChannelResponse.add_member(:modified_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "ModifiedAt", traits: {"smithy.api#required" => {}}))
    UpdateChannelResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "Description"))
    UpdateChannelResponse.add_member(:ingest_endpoints, ::Smithy::Schema::Shapes::MemberShape.new(target: IngestEndpointList, name: "IngestEndpoints"))
    UpdateChannelResponse.add_member(:input_type, ::Smithy::Schema::Shapes::MemberShape.new(target: InputType, name: "InputType"))
    UpdateChannelResponse.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityTag, name: "ETag", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    UpdateChannelResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#jsonName" => "tags"}))
    UpdateChannelResponse.add_member(:input_switch_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: InputSwitchConfiguration, name: "InputSwitchConfiguration"))
    UpdateChannelResponse.add_member(:output_header_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputHeaderConfiguration, name: "OutputHeaderConfiguration"))
    UpdateChannelResponse.type = Types::UpdateChannelResponse
    UpdateOriginEndpointRequest.add_member(:channel_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ChannelGroupName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateOriginEndpointRequest.add_member(:channel_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ChannelName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateOriginEndpointRequest.add_member(:origin_endpoint_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "OriginEndpointName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateOriginEndpointRequest.add_member(:container_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerType, name: "ContainerType", traits: {"smithy.api#required" => {}}))
    UpdateOriginEndpointRequest.add_member(:segment, ::Smithy::Schema::Shapes::MemberShape.new(target: Segment, name: "Segment"))
    UpdateOriginEndpointRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "Description"))
    UpdateOriginEndpointRequest.add_member(:startover_window_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "StartoverWindowSeconds", traits: {"smithy.api#range" => {"min" => 60, "max" => 1209600}}))
    UpdateOriginEndpointRequest.add_member(:hls_manifests, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateHlsManifests, name: "HlsManifests", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    UpdateOriginEndpointRequest.add_member(:low_latency_hls_manifests, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateLowLatencyHlsManifests, name: "LowLatencyHlsManifests", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    UpdateOriginEndpointRequest.add_member(:dash_manifests, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateDashManifests, name: "DashManifests", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    UpdateOriginEndpointRequest.add_member(:mss_manifests, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateMssManifests, name: "MssManifests", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    UpdateOriginEndpointRequest.add_member(:force_endpoint_error_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ForceEndpointErrorConfiguration, name: "ForceEndpointErrorConfiguration"))
    UpdateOriginEndpointRequest.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityTag, name: "ETag", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#httpHeader" => "x-amzn-update-if-match"}))
    UpdateOriginEndpointRequest.type = Types::UpdateOriginEndpointRequest
    UpdateOriginEndpointResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Arn", traits: {"smithy.api#required" => {}}))
    UpdateOriginEndpointResponse.add_member(:channel_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ChannelGroupName", traits: {"smithy.api#required" => {}}))
    UpdateOriginEndpointResponse.add_member(:channel_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ChannelName", traits: {"smithy.api#required" => {}}))
    UpdateOriginEndpointResponse.add_member(:origin_endpoint_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "OriginEndpointName", traits: {"smithy.api#required" => {}}))
    UpdateOriginEndpointResponse.add_member(:container_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerType, name: "ContainerType", traits: {"smithy.api#required" => {}}))
    UpdateOriginEndpointResponse.add_member(:segment, ::Smithy::Schema::Shapes::MemberShape.new(target: Segment, name: "Segment", traits: {"smithy.api#required" => {}}))
    UpdateOriginEndpointResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedAt", traits: {"smithy.api#required" => {}}))
    UpdateOriginEndpointResponse.add_member(:modified_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "ModifiedAt", traits: {"smithy.api#required" => {}}))
    UpdateOriginEndpointResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "Description"))
    UpdateOriginEndpointResponse.add_member(:startover_window_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "StartoverWindowSeconds"))
    UpdateOriginEndpointResponse.add_member(:hls_manifests, ::Smithy::Schema::Shapes::MemberShape.new(target: GetHlsManifests, name: "HlsManifests"))
    UpdateOriginEndpointResponse.add_member(:low_latency_hls_manifests, ::Smithy::Schema::Shapes::MemberShape.new(target: GetLowLatencyHlsManifests, name: "LowLatencyHlsManifests"))
    UpdateOriginEndpointResponse.add_member(:mss_manifests, ::Smithy::Schema::Shapes::MemberShape.new(target: GetMssManifests, name: "MssManifests"))
    UpdateOriginEndpointResponse.add_member(:force_endpoint_error_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ForceEndpointErrorConfiguration, name: "ForceEndpointErrorConfiguration"))
    UpdateOriginEndpointResponse.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityTag, name: "ETag", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    UpdateOriginEndpointResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#jsonName" => "tags"}))
    UpdateOriginEndpointResponse.add_member(:dash_manifests, ::Smithy::Schema::Shapes::MemberShape.new(target: GetDashManifests, name: "DashManifests"))
    UpdateOriginEndpointResponse.type = Types::UpdateOriginEndpointResponse
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    ValidationException.add_member(:validation_exception_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionType, name: "ValidationExceptionType"))
    ValidationException.type = Types::ValidationException
    ValidationExceptionType.add_member(:container_type_immutable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTAINER_TYPE_IMMUTABLE", traits: {"smithy.api#enumValue" => "CONTAINER_TYPE_IMMUTABLE"}))
    ValidationExceptionType.add_member(:invalid_pagination_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_PAGINATION_TOKEN", traits: {"smithy.api#enumValue" => "INVALID_PAGINATION_TOKEN"}))
    ValidationExceptionType.add_member(:invalid_pagination_max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_PAGINATION_MAX_RESULTS", traits: {"smithy.api#enumValue" => "INVALID_PAGINATION_MAX_RESULTS"}))
    ValidationExceptionType.add_member(:invalid_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_POLICY", traits: {"smithy.api#enumValue" => "INVALID_POLICY"}))
    ValidationExceptionType.add_member(:invalid_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_ROLE_ARN", traits: {"smithy.api#enumValue" => "INVALID_ROLE_ARN"}))
    ValidationExceptionType.add_member(:manifest_name_collision, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MANIFEST_NAME_COLLISION", traits: {"smithy.api#enumValue" => "MANIFEST_NAME_COLLISION"}))
    ValidationExceptionType.add_member(:encryption_method_container_type_mismatch, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENCRYPTION_METHOD_CONTAINER_TYPE_MISMATCH", traits: {"smithy.api#enumValue" => "ENCRYPTION_METHOD_CONTAINER_TYPE_MISMATCH"}))
    ValidationExceptionType.add_member(:cenc_iv_incompatible, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CENC_IV_INCOMPATIBLE", traits: {"smithy.api#enumValue" => "CENC_IV_INCOMPATIBLE"}))
    ValidationExceptionType.add_member(:encryption_contract_without_audio_rendition_incompatible, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENCRYPTION_CONTRACT_WITHOUT_AUDIO_RENDITION_INCOMPATIBLE", traits: {"smithy.api#enumValue" => "ENCRYPTION_CONTRACT_WITHOUT_AUDIO_RENDITION_INCOMPATIBLE"}))
    ValidationExceptionType.add_member(:encryption_contract_with_ism_container_incompatible, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENCRYPTION_CONTRACT_WITH_ISM_CONTAINER_INCOMPATIBLE", traits: {"smithy.api#enumValue" => "ENCRYPTION_CONTRACT_WITH_ISM_CONTAINER_INCOMPATIBLE"}))
    ValidationExceptionType.add_member(:encryption_contract_unencrypted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENCRYPTION_CONTRACT_UNENCRYPTED", traits: {"smithy.api#enumValue" => "ENCRYPTION_CONTRACT_UNENCRYPTED"}))
    ValidationExceptionType.add_member(:encryption_contract_shared, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENCRYPTION_CONTRACT_SHARED", traits: {"smithy.api#enumValue" => "ENCRYPTION_CONTRACT_SHARED"}))
    ValidationExceptionType.add_member(:num_manifests_low, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NUM_MANIFESTS_LOW", traits: {"smithy.api#enumValue" => "NUM_MANIFESTS_LOW"}))
    ValidationExceptionType.add_member(:num_manifests_high, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NUM_MANIFESTS_HIGH", traits: {"smithy.api#enumValue" => "NUM_MANIFESTS_HIGH"}))
    ValidationExceptionType.add_member(:manifest_drm_systems_incompatible, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MANIFEST_DRM_SYSTEMS_INCOMPATIBLE", traits: {"smithy.api#enumValue" => "MANIFEST_DRM_SYSTEMS_INCOMPATIBLE"}))
    ValidationExceptionType.add_member(:drm_systems_encryption_method_incompatible, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DRM_SYSTEMS_ENCRYPTION_METHOD_INCOMPATIBLE", traits: {"smithy.api#enumValue" => "DRM_SYSTEMS_ENCRYPTION_METHOD_INCOMPATIBLE"}))
    ValidationExceptionType.add_member(:role_arn_not_assumable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ROLE_ARN_NOT_ASSUMABLE", traits: {"smithy.api#enumValue" => "ROLE_ARN_NOT_ASSUMABLE"}))
    ValidationExceptionType.add_member(:role_arn_length_out_of_range, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ROLE_ARN_LENGTH_OUT_OF_RANGE", traits: {"smithy.api#enumValue" => "ROLE_ARN_LENGTH_OUT_OF_RANGE"}))
    ValidationExceptionType.add_member(:role_arn_invalid_format, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ROLE_ARN_INVALID_FORMAT", traits: {"smithy.api#enumValue" => "ROLE_ARN_INVALID_FORMAT"}))
    ValidationExceptionType.add_member(:url_invalid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "URL_INVALID", traits: {"smithy.api#enumValue" => "URL_INVALID"}))
    ValidationExceptionType.add_member(:url_scheme, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "URL_SCHEME", traits: {"smithy.api#enumValue" => "URL_SCHEME"}))
    ValidationExceptionType.add_member(:url_user_info, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "URL_USER_INFO", traits: {"smithy.api#enumValue" => "URL_USER_INFO"}))
    ValidationExceptionType.add_member(:url_port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "URL_PORT", traits: {"smithy.api#enumValue" => "URL_PORT"}))
    ValidationExceptionType.add_member(:url_unknown_host, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "URL_UNKNOWN_HOST", traits: {"smithy.api#enumValue" => "URL_UNKNOWN_HOST"}))
    ValidationExceptionType.add_member(:url_local_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "URL_LOCAL_ADDRESS", traits: {"smithy.api#enumValue" => "URL_LOCAL_ADDRESS"}))
    ValidationExceptionType.add_member(:url_loopback_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "URL_LOOPBACK_ADDRESS", traits: {"smithy.api#enumValue" => "URL_LOOPBACK_ADDRESS"}))
    ValidationExceptionType.add_member(:url_link_local_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "URL_LINK_LOCAL_ADDRESS", traits: {"smithy.api#enumValue" => "URL_LINK_LOCAL_ADDRESS"}))
    ValidationExceptionType.add_member(:url_multicast_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "URL_MULTICAST_ADDRESS", traits: {"smithy.api#enumValue" => "URL_MULTICAST_ADDRESS"}))
    ValidationExceptionType.add_member(:member_invalid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEMBER_INVALID", traits: {"smithy.api#enumValue" => "MEMBER_INVALID"}))
    ValidationExceptionType.add_member(:member_missing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEMBER_MISSING", traits: {"smithy.api#enumValue" => "MEMBER_MISSING"}))
    ValidationExceptionType.add_member(:member_min_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEMBER_MIN_VALUE", traits: {"smithy.api#enumValue" => "MEMBER_MIN_VALUE"}))
    ValidationExceptionType.add_member(:member_max_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEMBER_MAX_VALUE", traits: {"smithy.api#enumValue" => "MEMBER_MAX_VALUE"}))
    ValidationExceptionType.add_member(:member_min_length, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEMBER_MIN_LENGTH", traits: {"smithy.api#enumValue" => "MEMBER_MIN_LENGTH"}))
    ValidationExceptionType.add_member(:member_max_length, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEMBER_MAX_LENGTH", traits: {"smithy.api#enumValue" => "MEMBER_MAX_LENGTH"}))
    ValidationExceptionType.add_member(:member_invalid_enum_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEMBER_INVALID_ENUM_VALUE", traits: {"smithy.api#enumValue" => "MEMBER_INVALID_ENUM_VALUE"}))
    ValidationExceptionType.add_member(:member_does_not_match_pattern, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEMBER_DOES_NOT_MATCH_PATTERN", traits: {"smithy.api#enumValue" => "MEMBER_DOES_NOT_MATCH_PATTERN"}))
    ValidationExceptionType.add_member(:invalid_manifest_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_MANIFEST_FILTER", traits: {"smithy.api#enumValue" => "INVALID_MANIFEST_FILTER"}))
    ValidationExceptionType.add_member(:invalid_time_delay_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_TIME_DELAY_SECONDS", traits: {"smithy.api#enumValue" => "INVALID_TIME_DELAY_SECONDS"}))
    ValidationExceptionType.add_member(:end_time_earlier_than_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "END_TIME_EARLIER_THAN_START_TIME", traits: {"smithy.api#enumValue" => "END_TIME_EARLIER_THAN_START_TIME"}))
    ValidationExceptionType.add_member(:ts_container_type_with_dash_manifest, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TS_CONTAINER_TYPE_WITH_DASH_MANIFEST", traits: {"smithy.api#enumValue" => "TS_CONTAINER_TYPE_WITH_DASH_MANIFEST"}))
    ValidationExceptionType.add_member(:direct_mode_with_timing_source, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DIRECT_MODE_WITH_TIMING_SOURCE", traits: {"smithy.api#enumValue" => "DIRECT_MODE_WITH_TIMING_SOURCE"}))
    ValidationExceptionType.add_member(:none_mode_with_timing_source, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE_MODE_WITH_TIMING_SOURCE", traits: {"smithy.api#enumValue" => "NONE_MODE_WITH_TIMING_SOURCE"}))
    ValidationExceptionType.add_member(:timing_source_missing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TIMING_SOURCE_MISSING", traits: {"smithy.api#enumValue" => "TIMING_SOURCE_MISSING"}))
    ValidationExceptionType.add_member(:update_period_smaller_than_segment_duration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE_PERIOD_SMALLER_THAN_SEGMENT_DURATION", traits: {"smithy.api#enumValue" => "UPDATE_PERIOD_SMALLER_THAN_SEGMENT_DURATION"}))
    ValidationExceptionType.add_member(:period_triggers_none_specified_with_additional_values, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PERIOD_TRIGGERS_NONE_SPECIFIED_WITH_ADDITIONAL_VALUES", traits: {"smithy.api#enumValue" => "PERIOD_TRIGGERS_NONE_SPECIFIED_WITH_ADDITIONAL_VALUES"}))
    ValidationExceptionType.add_member(:drm_signaling_mismatch_segment_encryption_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DRM_SIGNALING_MISMATCH_SEGMENT_ENCRYPTION_STATUS", traits: {"smithy.api#enumValue" => "DRM_SIGNALING_MISMATCH_SEGMENT_ENCRYPTION_STATUS"}))
    ValidationExceptionType.add_member(:only_cmaf_input_type_allow_force_endpoint_error_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ONLY_CMAF_INPUT_TYPE_ALLOW_FORCE_ENDPOINT_ERROR_CONFIGURATION", traits: {"smithy.api#enumValue" => "ONLY_CMAF_INPUT_TYPE_ALLOW_FORCE_ENDPOINT_ERROR_CONFIGURATION"}))
    ValidationExceptionType.add_member(:source_disruptions_enabled_incorrectly, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SOURCE_DISRUPTIONS_ENABLED_INCORRECTLY", traits: {"smithy.api#enumValue" => "SOURCE_DISRUPTIONS_ENABLED_INCORRECTLY"}))
    ValidationExceptionType.add_member(:harvested_manifest_has_start_end_filter_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HARVESTED_MANIFEST_HAS_START_END_FILTER_CONFIGURATION", traits: {"smithy.api#enumValue" => "HARVESTED_MANIFEST_HAS_START_END_FILTER_CONFIGURATION"}))
    ValidationExceptionType.add_member(:harvested_manifest_not_found_on_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HARVESTED_MANIFEST_NOT_FOUND_ON_ENDPOINT", traits: {"smithy.api#enumValue" => "HARVESTED_MANIFEST_NOT_FOUND_ON_ENDPOINT"}))
    ValidationExceptionType.add_member(:too_many_in_progress_harvest_jobs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TOO_MANY_IN_PROGRESS_HARVEST_JOBS", traits: {"smithy.api#enumValue" => "TOO_MANY_IN_PROGRESS_HARVEST_JOBS"}))
    ValidationExceptionType.add_member(:harvest_job_ineligible_for_cancellation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HARVEST_JOB_INELIGIBLE_FOR_CANCELLATION", traits: {"smithy.api#enumValue" => "HARVEST_JOB_INELIGIBLE_FOR_CANCELLATION"}))
    ValidationExceptionType.add_member(:invalid_harvest_job_duration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_HARVEST_JOB_DURATION", traits: {"smithy.api#enumValue" => "INVALID_HARVEST_JOB_DURATION"}))
    ValidationExceptionType.add_member(:harvest_job_s3_destination_missing_or_incomplete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HARVEST_JOB_S3_DESTINATION_MISSING_OR_INCOMPLETE", traits: {"smithy.api#enumValue" => "HARVEST_JOB_S3_DESTINATION_MISSING_OR_INCOMPLETE"}))
    ValidationExceptionType.add_member(:harvest_job_unable_to_write_to_s3_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HARVEST_JOB_UNABLE_TO_WRITE_TO_S3_DESTINATION", traits: {"smithy.api#enumValue" => "HARVEST_JOB_UNABLE_TO_WRITE_TO_S3_DESTINATION"}))
    ValidationExceptionType.add_member(:harvest_job_customer_endpoint_read_access_denied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HARVEST_JOB_CUSTOMER_ENDPOINT_READ_ACCESS_DENIED", traits: {"smithy.api#enumValue" => "HARVEST_JOB_CUSTOMER_ENDPOINT_READ_ACCESS_DENIED"}))
    ValidationExceptionType.add_member(:clip_start_time_with_start_or_end, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLIP_START_TIME_WITH_START_OR_END", traits: {"smithy.api#enumValue" => "CLIP_START_TIME_WITH_START_OR_END"}))
    ValidationExceptionType.add_member(:start_tag_time_offset_invalid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "START_TAG_TIME_OFFSET_INVALID", traits: {"smithy.api#enumValue" => "START_TAG_TIME_OFFSET_INVALID"}))
    ValidationExceptionType.add_member(:incompatible_dash_profile_dvb_dash_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INCOMPATIBLE_DASH_PROFILE_DVB_DASH_CONFIGURATION", traits: {"smithy.api#enumValue" => "INCOMPATIBLE_DASH_PROFILE_DVB_DASH_CONFIGURATION"}))
    ValidationExceptionType.add_member(:dash_dvb_attributes_without_dvb_dash_profile, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DASH_DVB_ATTRIBUTES_WITHOUT_DVB_DASH_PROFILE", traits: {"smithy.api#enumValue" => "DASH_DVB_ATTRIBUTES_WITHOUT_DVB_DASH_PROFILE"}))
    ValidationExceptionType.add_member(:incompatible_dash_compactness_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INCOMPATIBLE_DASH_COMPACTNESS_CONFIGURATION", traits: {"smithy.api#enumValue" => "INCOMPATIBLE_DASH_COMPACTNESS_CONFIGURATION"}))
    ValidationExceptionType.add_member(:incompatible_xml_encoding, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INCOMPATIBLE_XML_ENCODING", traits: {"smithy.api#enumValue" => "INCOMPATIBLE_XML_ENCODING"}))
    ValidationExceptionType.add_member(:cmaf_exclude_segment_drm_metadata_incompatible_container_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CMAF_EXCLUDE_SEGMENT_DRM_METADATA_INCOMPATIBLE_CONTAINER_TYPE", traits: {"smithy.api#enumValue" => "CMAF_EXCLUDE_SEGMENT_DRM_METADATA_INCOMPATIBLE_CONTAINER_TYPE"}))
    ValidationExceptionType.add_member(:only_cmaf_input_type_allow_mqcs_input_switching, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ONLY_CMAF_INPUT_TYPE_ALLOW_MQCS_INPUT_SWITCHING", traits: {"smithy.api#enumValue" => "ONLY_CMAF_INPUT_TYPE_ALLOW_MQCS_INPUT_SWITCHING"}))
    ValidationExceptionType.add_member(:only_cmaf_input_type_allow_mqcs_output_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ONLY_CMAF_INPUT_TYPE_ALLOW_MQCS_OUTPUT_CONFIGURATION", traits: {"smithy.api#enumValue" => "ONLY_CMAF_INPUT_TYPE_ALLOW_MQCS_OUTPUT_CONFIGURATION"}))
    ValidationExceptionType.add_member(:only_cmaf_input_type_allow_preferred_input_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ONLY_CMAF_INPUT_TYPE_ALLOW_PREFERRED_INPUT_CONFIGURATION", traits: {"smithy.api#enumValue" => "ONLY_CMAF_INPUT_TYPE_ALLOW_PREFERRED_INPUT_CONFIGURATION"}))
    ValidationExceptionType.add_member(:ts_container_type_with_mss_manifest, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TS_CONTAINER_TYPE_WITH_MSS_MANIFEST", traits: {"smithy.api#enumValue" => "TS_CONTAINER_TYPE_WITH_MSS_MANIFEST"}))
    ValidationExceptionType.add_member(:cmaf_container_type_with_mss_manifest, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CMAF_CONTAINER_TYPE_WITH_MSS_MANIFEST", traits: {"smithy.api#enumValue" => "CMAF_CONTAINER_TYPE_WITH_MSS_MANIFEST"}))
    ValidationExceptionType.add_member(:ism_container_type_with_hls_manifest, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ISM_CONTAINER_TYPE_WITH_HLS_MANIFEST", traits: {"smithy.api#enumValue" => "ISM_CONTAINER_TYPE_WITH_HLS_MANIFEST"}))
    ValidationExceptionType.add_member(:ism_container_type_with_ll_hls_manifest, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ISM_CONTAINER_TYPE_WITH_LL_HLS_MANIFEST", traits: {"smithy.api#enumValue" => "ISM_CONTAINER_TYPE_WITH_LL_HLS_MANIFEST"}))
    ValidationExceptionType.add_member(:ism_container_type_with_dash_manifest, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ISM_CONTAINER_TYPE_WITH_DASH_MANIFEST", traits: {"smithy.api#enumValue" => "ISM_CONTAINER_TYPE_WITH_DASH_MANIFEST"}))
    ValidationExceptionType.add_member(:ism_container_type_with_scte, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ISM_CONTAINER_TYPE_WITH_SCTE", traits: {"smithy.api#enumValue" => "ISM_CONTAINER_TYPE_WITH_SCTE"}))
    ValidationExceptionType.add_member(:ism_container_with_key_rotation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ISM_CONTAINER_WITH_KEY_ROTATION", traits: {"smithy.api#enumValue" => "ISM_CONTAINER_WITH_KEY_ROTATION"}))
    ValidationExceptionType.add_member(:batch_get_secret_value_denied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BATCH_GET_SECRET_VALUE_DENIED", traits: {"smithy.api#enumValue" => "BATCH_GET_SECRET_VALUE_DENIED"}))
    ValidationExceptionType.add_member(:get_secret_value_denied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GET_SECRET_VALUE_DENIED", traits: {"smithy.api#enumValue" => "GET_SECRET_VALUE_DENIED"}))
    ValidationExceptionType.add_member(:describe_secret_denied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DESCRIBE_SECRET_DENIED", traits: {"smithy.api#enumValue" => "DESCRIBE_SECRET_DENIED"}))
    ValidationExceptionType.add_member(:invalid_secret_format, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_SECRET_FORMAT", traits: {"smithy.api#enumValue" => "INVALID_SECRET_FORMAT"}))
    ValidationExceptionType.add_member(:secret_is_not_one_key_value_pair, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SECRET_IS_NOT_ONE_KEY_VALUE_PAIR", traits: {"smithy.api#enumValue" => "SECRET_IS_NOT_ONE_KEY_VALUE_PAIR"}))
    ValidationExceptionType.add_member(:invalid_secret_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_SECRET_KEY", traits: {"smithy.api#enumValue" => "INVALID_SECRET_KEY"}))
    ValidationExceptionType.add_member(:invalid_secret_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_SECRET_VALUE", traits: {"smithy.api#enumValue" => "INVALID_SECRET_VALUE"}))
    ValidationExceptionType.add_member(:secret_arn_resource_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SECRET_ARN_RESOURCE_NOT_FOUND", traits: {"smithy.api#enumValue" => "SECRET_ARN_RESOURCE_NOT_FOUND"}))
    ValidationExceptionType.add_member(:decrypt_secret_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DECRYPT_SECRET_FAILED", traits: {"smithy.api#enumValue" => "DECRYPT_SECRET_FAILED"}))
    ValidationExceptionType.add_member(:too_many_secrets, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TOO_MANY_SECRETS", traits: {"smithy.api#enumValue" => "TOO_MANY_SECRETS"}))
    ValidationExceptionType.add_member(:duplicated_secret, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DUPLICATED_SECRET", traits: {"smithy.api#enumValue" => "DUPLICATED_SECRET"}))
    ValidationExceptionType.add_member(:malformed_secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MALFORMED_SECRET_ARN", traits: {"smithy.api#enumValue" => "MALFORMED_SECRET_ARN"}))
    ValidationExceptionType.add_member(:secret_from_different_account, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SECRET_FROM_DIFFERENT_ACCOUNT", traits: {"smithy.api#enumValue" => "SECRET_FROM_DIFFERENT_ACCOUNT"}))
    ValidationExceptionType.add_member(:secret_from_different_region, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SECRET_FROM_DIFFERENT_REGION", traits: {"smithy.api#enumValue" => "SECRET_FROM_DIFFERENT_REGION"}))
    ValidationExceptionType.add_member(:invalid_secret, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_SECRET", traits: {"smithy.api#enumValue" => "INVALID_SECRET"}))

    Mediapackagev2 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.mediapackagev2#mediapackagev2"
      service.name = "Mediapackagev2"
      service.version = "2022-12-25"
      service.traits = {"aws.api#service" => {"sdkId" => "MediaPackageV2", "arnNamespace" => "mediapackagev2", "cloudFormationName" => "MediaPackageV2", "cloudTrailEventSource" => "mediapackagev2.amazonaws.com", "endpointPrefix" => "mediapackagev2"}, "aws.auth#sigv4" => {"name" => "mediapackagev2"}, "aws.iam#defineConditionKeys" => {"aws:ResourceTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by tags associated with the resource", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-resourcetag"}, "aws:RequestTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by tags that are passed in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-requesttag"}, "aws:TagKeys" => {"type" => "ArrayOfString", "documentation" => "Filters access by tag keys that are passed in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-tagkeys"}}, "aws.iam#supportedPrincipalTypes" => ["Root", "IAMUser", "IAMRole", "FederatedUser"], "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["*", "Authorization", "Date", "X-Amz-Date", "X-Amz-Security-Token", "X-Amz-Target", "content-type", "x-amz-content-sha256", "x-amz-user-agent", "x-amzn-platform-id", "x-amzn-trace-id"], "additionalExposedHeaders" => ["x-amzn-errortype", "x-amzn-requestid", "x-amzn-errormessage", "x-amzn-trace-id", "x-amz-apigw-id", "date"], "maxAge" => 86400}, "smithy.api#title" => "AWS Elemental MediaPackage v2"}
      service.add_operation(:cancel_harvest_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediapackagev2#CancelHarvestJob"
        operation.name = "CancelHarvestJob"
        operation.input = CancelHarvestJobRequest
        operation.output = CancelHarvestJobResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to cancel a harvest job on an endpoint", "smithy.api#http" => {"method" => "PUT", "uri" => "/channelGroup/{ChannelGroupName}/channel/{ChannelName}/originEndpoint/{OriginEndpointName}/harvestJob/{HarvestJobName}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediapackagev2#CreateChannel"
        operation.name = "CreateChannel"
        operation.input = CreateChannelRequest
        operation.output = CreateChannelResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to create a channel in a channel group", "aws.iam#conditionKeys" => ["aws:TagKeys", "aws:RequestTag/${TagKey}"], "smithy.api#http" => {"method" => "POST", "uri" => "/channelGroup/{ChannelGroupName}/channel"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_channel_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediapackagev2#CreateChannelGroup"
        operation.name = "CreateChannelGroup"
        operation.input = CreateChannelGroupRequest
        operation.output = CreateChannelGroupResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to create a channel group", "aws.iam#conditionKeys" => ["aws:TagKeys", "aws:RequestTag/${TagKey}"], "smithy.api#http" => {"method" => "POST", "uri" => "/channelGroup"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_harvest_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediapackagev2#CreateHarvestJob"
        operation.name = "CreateHarvestJob"
        operation.input = CreateHarvestJobRequest
        operation.output = CreateHarvestJobResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to create a HarvestJob", "aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}"], "smithy.api#http" => {"method" => "POST", "uri" => "/channelGroup/{ChannelGroupName}/channel/{ChannelName}/originEndpoint/{OriginEndpointName}/harvestJob"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_origin_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediapackagev2#CreateOriginEndpoint"
        operation.name = "CreateOriginEndpoint"
        operation.input = CreateOriginEndpointRequest
        operation.output = CreateOriginEndpointResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to create an origin endpoint for a channel", "aws.iam#conditionKeys" => ["aws:TagKeys", "aws:RequestTag/${TagKey}"], "smithy.api#http" => {"method" => "POST", "uri" => "/channelGroup/{ChannelGroupName}/channel/{ChannelName}/originEndpoint"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediapackagev2#DeleteChannel"
        operation.name = "DeleteChannel"
        operation.input = DeleteChannelRequest
        operation.output = DeleteChannelResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to delete a channel in a channel group", "smithy.api#http" => {"method" => "DELETE", "uri" => "/channelGroup/{ChannelGroupName}/channel/{ChannelName}/", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_channel_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediapackagev2#DeleteChannelGroup"
        operation.name = "DeleteChannelGroup"
        operation.input = DeleteChannelGroupRequest
        operation.output = DeleteChannelGroupResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to delete a channel group", "smithy.api#http" => {"method" => "DELETE", "uri" => "/channelGroup/{ChannelGroupName}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_channel_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediapackagev2#DeleteChannelPolicy"
        operation.name = "DeleteChannelPolicy"
        operation.input = DeleteChannelPolicyRequest
        operation.output = DeleteChannelPolicyResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to delete a resource policy from a channel", "smithy.api#http" => {"method" => "DELETE", "uri" => "/channelGroup/{ChannelGroupName}/channel/{ChannelName}/policy", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_origin_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediapackagev2#DeleteOriginEndpoint"
        operation.name = "DeleteOriginEndpoint"
        operation.input = DeleteOriginEndpointRequest
        operation.output = DeleteOriginEndpointResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to delete an origin endpoint of a channel", "smithy.api#http" => {"method" => "DELETE", "uri" => "/channelGroup/{ChannelGroupName}/channel/{ChannelName}/originEndpoint/{OriginEndpointName}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_origin_endpoint_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediapackagev2#DeleteOriginEndpointPolicy"
        operation.name = "DeleteOriginEndpointPolicy"
        operation.input = DeleteOriginEndpointPolicyRequest
        operation.output = DeleteOriginEndpointPolicyResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to delete a resource policy from an origin endpoint", "smithy.api#http" => {"method" => "DELETE", "uri" => "/channelGroup/{ChannelGroupName}/channel/{ChannelName}/originEndpoint/{OriginEndpointName}/policy", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediapackagev2#GetChannel"
        operation.name = "GetChannel"
        operation.input = GetChannelRequest
        operation.output = GetChannelResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to retrieve details of a channel in a channel group", "smithy.api#http" => {"method" => "GET", "uri" => "/channelGroup/{ChannelGroupName}/channel/{ChannelName}/"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_channel_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediapackagev2#GetChannelGroup"
        operation.name = "GetChannelGroup"
        operation.input = GetChannelGroupRequest
        operation.output = GetChannelGroupResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to retrieve details of a channel group", "smithy.api#http" => {"method" => "GET", "uri" => "/channelGroup/{ChannelGroupName}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_channel_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediapackagev2#GetChannelPolicy"
        operation.name = "GetChannelPolicy"
        operation.input = GetChannelPolicyRequest
        operation.output = GetChannelPolicyResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to retrieve a resource policy for a channel", "smithy.api#http" => {"method" => "GET", "uri" => "/channelGroup/{ChannelGroupName}/channel/{ChannelName}/policy"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_harvest_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediapackagev2#GetHarvestJob"
        operation.name = "GetHarvestJob"
        operation.input = GetHarvestJobRequest
        operation.output = GetHarvestJobResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to retrieve a HarvestJob", "smithy.api#http" => {"method" => "GET", "uri" => "/channelGroup/{ChannelGroupName}/channel/{ChannelName}/originEndpoint/{OriginEndpointName}/harvestJob/{HarvestJobName}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_origin_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediapackagev2#GetOriginEndpoint"
        operation.name = "GetOriginEndpoint"
        operation.input = GetOriginEndpointRequest
        operation.output = GetOriginEndpointResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to retrieve details of an origin endpoint", "smithy.api#http" => {"method" => "GET", "uri" => "/channelGroup/{ChannelGroupName}/channel/{ChannelName}/originEndpoint/{OriginEndpointName}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_origin_endpoint_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediapackagev2#GetOriginEndpointPolicy"
        operation.name = "GetOriginEndpointPolicy"
        operation.input = GetOriginEndpointPolicyRequest
        operation.output = GetOriginEndpointPolicyResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to retrieve details of a resource policy for an origin endpoint", "smithy.api#http" => {"method" => "GET", "uri" => "/channelGroup/{ChannelGroupName}/channel/{ChannelName}/originEndpoint/{OriginEndpointName}/policy"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_channel_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediapackagev2#ListChannelGroups"
        operation.name = "ListChannelGroups"
        operation.input = ListChannelGroupsRequest
        operation.output = ListChannelGroupsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to list all channel groups for an aws account", "smithy.api#http" => {"method" => "GET", "uri" => "/channelGroup", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListChannelGroups.new
      end)
      service.add_operation(:list_channels, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediapackagev2#ListChannels"
        operation.name = "ListChannels"
        operation.input = ListChannelsRequest
        operation.output = ListChannelsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to list all channels in a channel group", "smithy.api#http" => {"method" => "GET", "uri" => "/channelGroup/{ChannelGroupName}/channel", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListChannels.new
      end)
      service.add_operation(:list_harvest_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediapackagev2#ListHarvestJobs"
        operation.name = "ListHarvestJobs"
        operation.input = ListHarvestJobsRequest
        operation.output = ListHarvestJobsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to list all harvest jobs of a ChannelGroup, Channel, or OriginEndpoint", "smithy.api#http" => {"method" => "GET", "uri" => "/channelGroup/{ChannelGroupName}/harvestJob", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListHarvestJobs.new
      end)
      service.add_operation(:list_origin_endpoints, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediapackagev2#ListOriginEndpoints"
        operation.name = "ListOriginEndpoints"
        operation.input = ListOriginEndpointsRequest
        operation.output = ListOriginEndpointsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to list all origin endpoints of a channel", "smithy.api#http" => {"method" => "GET", "uri" => "/channelGroup/{ChannelGroupName}/channel/{ChannelName}/originEndpoint", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListOriginEndpoints.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediapackagev2#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to list tags for the specified resource", "smithy.api#http" => {"method" => "GET", "uri" => "/tags/{ResourceArn}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:put_channel_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediapackagev2#PutChannelPolicy"
        operation.name = "PutChannelPolicy"
        operation.input = PutChannelPolicyRequest
        operation.output = PutChannelPolicyResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to attach a resource policy for a channel", "smithy.api#http" => {"method" => "PUT", "uri" => "/channelGroup/{ChannelGroupName}/channel/{ChannelName}/policy"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:put_origin_endpoint_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediapackagev2#PutOriginEndpointPolicy"
        operation.name = "PutOriginEndpointPolicy"
        operation.input = PutOriginEndpointPolicyRequest
        operation.output = PutOriginEndpointPolicyResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to attach a resource policy to an origin endpoint", "smithy.api#http" => {"method" => "POST", "uri" => "/channelGroup/{ChannelGroupName}/channel/{ChannelName}/originEndpoint/{OriginEndpointName}/policy"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:reset_channel_state, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediapackagev2#ResetChannelState"
        operation.name = "ResetChannelState"
        operation.input = ResetChannelStateRequest
        operation.output = ResetChannelStateResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Resets a channel", "smithy.api#http" => {"method" => "POST", "uri" => "/channelGroup/{ChannelGroupName}/channel/{ChannelName}/reset"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:reset_origin_endpoint_state, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediapackagev2#ResetOriginEndpointState"
        operation.name = "ResetOriginEndpointState"
        operation.input = ResetOriginEndpointStateRequest
        operation.output = ResetOriginEndpointStateResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to reset an origin endpoint", "smithy.api#http" => {"method" => "POST", "uri" => "/channelGroup/{ChannelGroupName}/channel/{ChannelName}/originEndpoint/{OriginEndpointName}/reset"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediapackagev2#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to add specified tags to the specified resource", "aws.iam#conditionKeys" => ["aws:TagKeys", "aws:RequestTag/${TagKey}"], "smithy.api#http" => {"method" => "POST", "uri" => "/tags/{ResourceArn}", "code" => 204}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediapackagev2#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to remove the specified tags from the specified resource", "aws.iam#conditionKeys" => ["aws:TagKeys"], "smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{ResourceArn}", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediapackagev2#UpdateChannel"
        operation.name = "UpdateChannel"
        operation.input = UpdateChannelRequest
        operation.output = UpdateChannelResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to update a channel in a channel group", "smithy.api#http" => {"method" => "PUT", "uri" => "/channelGroup/{ChannelGroupName}/channel/{ChannelName}/", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_channel_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediapackagev2#UpdateChannelGroup"
        operation.name = "UpdateChannelGroup"
        operation.input = UpdateChannelGroupRequest
        operation.output = UpdateChannelGroupResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to update a channel group", "smithy.api#http" => {"method" => "PUT", "uri" => "/channelGroup/{ChannelGroupName}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_origin_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediapackagev2#UpdateOriginEndpoint"
        operation.name = "UpdateOriginEndpoint"
        operation.input = UpdateOriginEndpointRequest
        operation.output = UpdateOriginEndpointResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to update an origin endpoint of a channel", "smithy.api#http" => {"method" => "PUT", "uri" => "/channelGroup/{ChannelGroupName}/channel/{ChannelName}/originEndpoint/{OriginEndpointName}", "code" => 200}, "smithy.api#idempotent" => {}}
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
