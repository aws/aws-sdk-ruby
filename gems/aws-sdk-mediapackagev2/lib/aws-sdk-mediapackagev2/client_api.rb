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
    AdMarkerDash = Shapes::StringShape.new(name: 'AdMarkerDash')
    AdMarkerHls = Shapes::StringShape.new(name: 'AdMarkerHls')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    CancelHarvestJobRequest = Shapes::StructureShape.new(name: 'CancelHarvestJobRequest')
    CancelHarvestJobResponse = Shapes::StructureShape.new(name: 'CancelHarvestJobResponse')
    CdnAuthConfiguration = Shapes::StructureShape.new(name: 'CdnAuthConfiguration')
    CdnAuthConfigurationCdnIdentifierSecretArnsList = Shapes::ListShape.new(name: 'CdnAuthConfigurationCdnIdentifierSecretArnsList')
    CdnAuthConfigurationSecretsRoleArnString = Shapes::StringShape.new(name: 'CdnAuthConfigurationSecretsRoleArnString')
    CdnIdentifierSecretArn = Shapes::StringShape.new(name: 'CdnIdentifierSecretArn')
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
    CreateDashManifestConfiguration = Shapes::StructureShape.new(name: 'CreateDashManifestConfiguration')
    CreateDashManifestConfigurationManifestWindowSecondsInteger = Shapes::IntegerShape.new(name: 'CreateDashManifestConfigurationManifestWindowSecondsInteger')
    CreateDashManifestConfigurationMinBufferTimeSecondsInteger = Shapes::IntegerShape.new(name: 'CreateDashManifestConfigurationMinBufferTimeSecondsInteger')
    CreateDashManifestConfigurationMinUpdatePeriodSecondsInteger = Shapes::IntegerShape.new(name: 'CreateDashManifestConfigurationMinUpdatePeriodSecondsInteger')
    CreateDashManifestConfigurationSuggestedPresentationDelaySecondsInteger = Shapes::IntegerShape.new(name: 'CreateDashManifestConfigurationSuggestedPresentationDelaySecondsInteger')
    CreateDashManifests = Shapes::ListShape.new(name: 'CreateDashManifests')
    CreateHarvestJobRequest = Shapes::StructureShape.new(name: 'CreateHarvestJobRequest')
    CreateHarvestJobResponse = Shapes::StructureShape.new(name: 'CreateHarvestJobResponse')
    CreateHlsManifestConfiguration = Shapes::StructureShape.new(name: 'CreateHlsManifestConfiguration')
    CreateHlsManifestConfigurationManifestWindowSecondsInteger = Shapes::IntegerShape.new(name: 'CreateHlsManifestConfigurationManifestWindowSecondsInteger')
    CreateHlsManifestConfigurationProgramDateTimeIntervalSecondsInteger = Shapes::IntegerShape.new(name: 'CreateHlsManifestConfigurationProgramDateTimeIntervalSecondsInteger')
    CreateHlsManifests = Shapes::ListShape.new(name: 'CreateHlsManifests')
    CreateLowLatencyHlsManifestConfiguration = Shapes::StructureShape.new(name: 'CreateLowLatencyHlsManifestConfiguration')
    CreateLowLatencyHlsManifestConfigurationManifestWindowSecondsInteger = Shapes::IntegerShape.new(name: 'CreateLowLatencyHlsManifestConfigurationManifestWindowSecondsInteger')
    CreateLowLatencyHlsManifestConfigurationProgramDateTimeIntervalSecondsInteger = Shapes::IntegerShape.new(name: 'CreateLowLatencyHlsManifestConfigurationProgramDateTimeIntervalSecondsInteger')
    CreateLowLatencyHlsManifests = Shapes::ListShape.new(name: 'CreateLowLatencyHlsManifests')
    CreateMssManifestConfiguration = Shapes::StructureShape.new(name: 'CreateMssManifestConfiguration')
    CreateMssManifestConfigurationManifestWindowSecondsInteger = Shapes::IntegerShape.new(name: 'CreateMssManifestConfigurationManifestWindowSecondsInteger')
    CreateMssManifests = Shapes::ListShape.new(name: 'CreateMssManifests')
    CreateOriginEndpointRequest = Shapes::StructureShape.new(name: 'CreateOriginEndpointRequest')
    CreateOriginEndpointRequestStartoverWindowSecondsInteger = Shapes::IntegerShape.new(name: 'CreateOriginEndpointRequestStartoverWindowSecondsInteger')
    CreateOriginEndpointResponse = Shapes::StructureShape.new(name: 'CreateOriginEndpointResponse')
    DashBaseUrl = Shapes::StructureShape.new(name: 'DashBaseUrl')
    DashBaseUrlDvbPriorityInteger = Shapes::IntegerShape.new(name: 'DashBaseUrlDvbPriorityInteger')
    DashBaseUrlDvbWeightInteger = Shapes::IntegerShape.new(name: 'DashBaseUrlDvbWeightInteger')
    DashBaseUrlServiceLocationString = Shapes::StringShape.new(name: 'DashBaseUrlServiceLocationString')
    DashBaseUrlUrlString = Shapes::StringShape.new(name: 'DashBaseUrlUrlString')
    DashBaseUrls = Shapes::ListShape.new(name: 'DashBaseUrls')
    DashCompactness = Shapes::StringShape.new(name: 'DashCompactness')
    DashDrmSignaling = Shapes::StringShape.new(name: 'DashDrmSignaling')
    DashDvbErrorMetrics = Shapes::ListShape.new(name: 'DashDvbErrorMetrics')
    DashDvbFontDownload = Shapes::StructureShape.new(name: 'DashDvbFontDownload')
    DashDvbFontDownloadFontFamilyString = Shapes::StringShape.new(name: 'DashDvbFontDownloadFontFamilyString')
    DashDvbFontDownloadMimeTypeString = Shapes::StringShape.new(name: 'DashDvbFontDownloadMimeTypeString')
    DashDvbFontDownloadUrlString = Shapes::StringShape.new(name: 'DashDvbFontDownloadUrlString')
    DashDvbMetricsReporting = Shapes::StructureShape.new(name: 'DashDvbMetricsReporting')
    DashDvbMetricsReportingProbabilityInteger = Shapes::IntegerShape.new(name: 'DashDvbMetricsReportingProbabilityInteger')
    DashDvbMetricsReportingReportingUrlString = Shapes::StringShape.new(name: 'DashDvbMetricsReportingReportingUrlString')
    DashDvbSettings = Shapes::StructureShape.new(name: 'DashDvbSettings')
    DashPeriodTrigger = Shapes::StringShape.new(name: 'DashPeriodTrigger')
    DashPeriodTriggers = Shapes::ListShape.new(name: 'DashPeriodTriggers')
    DashProfile = Shapes::StringShape.new(name: 'DashProfile')
    DashProfiles = Shapes::ListShape.new(name: 'DashProfiles')
    DashProgramInformation = Shapes::StructureShape.new(name: 'DashProgramInformation')
    DashProgramInformationCopyrightString = Shapes::StringShape.new(name: 'DashProgramInformationCopyrightString')
    DashProgramInformationLanguageCodeString = Shapes::StringShape.new(name: 'DashProgramInformationLanguageCodeString')
    DashProgramInformationMoreInformationUrlString = Shapes::StringShape.new(name: 'DashProgramInformationMoreInformationUrlString')
    DashProgramInformationSourceString = Shapes::StringShape.new(name: 'DashProgramInformationSourceString')
    DashProgramInformationTitleString = Shapes::StringShape.new(name: 'DashProgramInformationTitleString')
    DashSegmentTemplateFormat = Shapes::StringShape.new(name: 'DashSegmentTemplateFormat')
    DashSubtitleConfiguration = Shapes::StructureShape.new(name: 'DashSubtitleConfiguration')
    DashTtmlConfiguration = Shapes::StructureShape.new(name: 'DashTtmlConfiguration')
    DashTtmlProfile = Shapes::StringShape.new(name: 'DashTtmlProfile')
    DashUtcTiming = Shapes::StructureShape.new(name: 'DashUtcTiming')
    DashUtcTimingMode = Shapes::StringShape.new(name: 'DashUtcTimingMode')
    DashUtcTimingTimingSourceString = Shapes::StringShape.new(name: 'DashUtcTimingTimingSourceString')
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
    Destination = Shapes::StructureShape.new(name: 'Destination')
    DrmSystem = Shapes::StringShape.new(name: 'DrmSystem')
    Encryption = Shapes::StructureShape.new(name: 'Encryption')
    EncryptionConstantInitializationVectorString = Shapes::StringShape.new(name: 'EncryptionConstantInitializationVectorString')
    EncryptionContractConfiguration = Shapes::StructureShape.new(name: 'EncryptionContractConfiguration')
    EncryptionKeyRotationIntervalSecondsInteger = Shapes::IntegerShape.new(name: 'EncryptionKeyRotationIntervalSecondsInteger')
    EncryptionMethod = Shapes::StructureShape.new(name: 'EncryptionMethod')
    EndpointErrorCondition = Shapes::StringShape.new(name: 'EndpointErrorCondition')
    EndpointErrorConditions = Shapes::ListShape.new(name: 'EndpointErrorConditions')
    EntityTag = Shapes::StringShape.new(name: 'EntityTag')
    FilterConfiguration = Shapes::StructureShape.new(name: 'FilterConfiguration')
    FilterConfigurationManifestFilterString = Shapes::StringShape.new(name: 'FilterConfigurationManifestFilterString')
    FilterConfigurationTimeDelaySecondsInteger = Shapes::IntegerShape.new(name: 'FilterConfigurationTimeDelaySecondsInteger')
    Float = Shapes::FloatShape.new(name: 'Float')
    ForceEndpointErrorConfiguration = Shapes::StructureShape.new(name: 'ForceEndpointErrorConfiguration')
    GetChannelGroupRequest = Shapes::StructureShape.new(name: 'GetChannelGroupRequest')
    GetChannelGroupResponse = Shapes::StructureShape.new(name: 'GetChannelGroupResponse')
    GetChannelPolicyRequest = Shapes::StructureShape.new(name: 'GetChannelPolicyRequest')
    GetChannelPolicyResponse = Shapes::StructureShape.new(name: 'GetChannelPolicyResponse')
    GetChannelRequest = Shapes::StructureShape.new(name: 'GetChannelRequest')
    GetChannelResponse = Shapes::StructureShape.new(name: 'GetChannelResponse')
    GetDashManifestConfiguration = Shapes::StructureShape.new(name: 'GetDashManifestConfiguration')
    GetDashManifests = Shapes::ListShape.new(name: 'GetDashManifests')
    GetHarvestJobRequest = Shapes::StructureShape.new(name: 'GetHarvestJobRequest')
    GetHarvestJobResponse = Shapes::StructureShape.new(name: 'GetHarvestJobResponse')
    GetHlsManifestConfiguration = Shapes::StructureShape.new(name: 'GetHlsManifestConfiguration')
    GetHlsManifests = Shapes::ListShape.new(name: 'GetHlsManifests')
    GetLowLatencyHlsManifestConfiguration = Shapes::StructureShape.new(name: 'GetLowLatencyHlsManifestConfiguration')
    GetLowLatencyHlsManifests = Shapes::ListShape.new(name: 'GetLowLatencyHlsManifests')
    GetMssManifestConfiguration = Shapes::StructureShape.new(name: 'GetMssManifestConfiguration')
    GetMssManifests = Shapes::ListShape.new(name: 'GetMssManifests')
    GetOriginEndpointPolicyRequest = Shapes::StructureShape.new(name: 'GetOriginEndpointPolicyRequest')
    GetOriginEndpointPolicyResponse = Shapes::StructureShape.new(name: 'GetOriginEndpointPolicyResponse')
    GetOriginEndpointRequest = Shapes::StructureShape.new(name: 'GetOriginEndpointRequest')
    GetOriginEndpointResponse = Shapes::StructureShape.new(name: 'GetOriginEndpointResponse')
    HarvestJob = Shapes::StructureShape.new(name: 'HarvestJob')
    HarvestJobStatus = Shapes::StringShape.new(name: 'HarvestJobStatus')
    HarvestJobsList = Shapes::ListShape.new(name: 'HarvestJobsList')
    HarvestedDashManifest = Shapes::StructureShape.new(name: 'HarvestedDashManifest')
    HarvestedDashManifestsList = Shapes::ListShape.new(name: 'HarvestedDashManifestsList')
    HarvestedHlsManifest = Shapes::StructureShape.new(name: 'HarvestedHlsManifest')
    HarvestedHlsManifestsList = Shapes::ListShape.new(name: 'HarvestedHlsManifestsList')
    HarvestedLowLatencyHlsManifest = Shapes::StructureShape.new(name: 'HarvestedLowLatencyHlsManifest')
    HarvestedLowLatencyHlsManifestsList = Shapes::ListShape.new(name: 'HarvestedLowLatencyHlsManifestsList')
    HarvestedManifests = Shapes::StructureShape.new(name: 'HarvestedManifests')
    HarvesterScheduleConfiguration = Shapes::StructureShape.new(name: 'HarvesterScheduleConfiguration')
    IdempotencyToken = Shapes::StringShape.new(name: 'IdempotencyToken')
    IngestEndpoint = Shapes::StructureShape.new(name: 'IngestEndpoint')
    IngestEndpointList = Shapes::ListShape.new(name: 'IngestEndpointList')
    InputSwitchConfiguration = Shapes::StructureShape.new(name: 'InputSwitchConfiguration')
    InputSwitchConfigurationPreferredInputInteger = Shapes::IntegerShape.new(name: 'InputSwitchConfigurationPreferredInputInteger')
    InputType = Shapes::StringShape.new(name: 'InputType')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    IsmEncryptionMethod = Shapes::StringShape.new(name: 'IsmEncryptionMethod')
    ListChannelGroupsRequest = Shapes::StructureShape.new(name: 'ListChannelGroupsRequest')
    ListChannelGroupsResponse = Shapes::StructureShape.new(name: 'ListChannelGroupsResponse')
    ListChannelsRequest = Shapes::StructureShape.new(name: 'ListChannelsRequest')
    ListChannelsResponse = Shapes::StructureShape.new(name: 'ListChannelsResponse')
    ListDashManifestConfiguration = Shapes::StructureShape.new(name: 'ListDashManifestConfiguration')
    ListDashManifests = Shapes::ListShape.new(name: 'ListDashManifests')
    ListHarvestJobsRequest = Shapes::StructureShape.new(name: 'ListHarvestJobsRequest')
    ListHarvestJobsRequestChannelNameString = Shapes::StringShape.new(name: 'ListHarvestJobsRequestChannelNameString')
    ListHarvestJobsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListHarvestJobsRequestMaxResultsInteger')
    ListHarvestJobsRequestOriginEndpointNameString = Shapes::StringShape.new(name: 'ListHarvestJobsRequestOriginEndpointNameString')
    ListHarvestJobsResponse = Shapes::StructureShape.new(name: 'ListHarvestJobsResponse')
    ListHlsManifestConfiguration = Shapes::StructureShape.new(name: 'ListHlsManifestConfiguration')
    ListHlsManifests = Shapes::ListShape.new(name: 'ListHlsManifests')
    ListLowLatencyHlsManifestConfiguration = Shapes::StructureShape.new(name: 'ListLowLatencyHlsManifestConfiguration')
    ListLowLatencyHlsManifests = Shapes::ListShape.new(name: 'ListLowLatencyHlsManifests')
    ListMssManifestConfiguration = Shapes::StructureShape.new(name: 'ListMssManifestConfiguration')
    ListMssManifests = Shapes::ListShape.new(name: 'ListMssManifests')
    ListOriginEndpointsRequest = Shapes::StructureShape.new(name: 'ListOriginEndpointsRequest')
    ListOriginEndpointsResponse = Shapes::StructureShape.new(name: 'ListOriginEndpointsResponse')
    ListResourceMaxResults = Shapes::IntegerShape.new(name: 'ListResourceMaxResults')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ManifestName = Shapes::StringShape.new(name: 'ManifestName')
    MssManifestLayout = Shapes::StringShape.new(name: 'MssManifestLayout')
    OriginEndpointListConfiguration = Shapes::StructureShape.new(name: 'OriginEndpointListConfiguration')
    OriginEndpointsList = Shapes::ListShape.new(name: 'OriginEndpointsList')
    OutputHeaderConfiguration = Shapes::StructureShape.new(name: 'OutputHeaderConfiguration')
    PolicyText = Shapes::StringShape.new(name: 'PolicyText')
    PresetSpeke20Audio = Shapes::StringShape.new(name: 'PresetSpeke20Audio')
    PresetSpeke20Video = Shapes::StringShape.new(name: 'PresetSpeke20Video')
    PutChannelPolicyRequest = Shapes::StructureShape.new(name: 'PutChannelPolicyRequest')
    PutChannelPolicyResponse = Shapes::StructureShape.new(name: 'PutChannelPolicyResponse')
    PutOriginEndpointPolicyRequest = Shapes::StructureShape.new(name: 'PutOriginEndpointPolicyRequest')
    PutOriginEndpointPolicyResponse = Shapes::StructureShape.new(name: 'PutOriginEndpointPolicyResponse')
    ResetChannelStateRequest = Shapes::StructureShape.new(name: 'ResetChannelStateRequest')
    ResetChannelStateResponse = Shapes::StructureShape.new(name: 'ResetChannelStateResponse')
    ResetOriginEndpointStateRequest = Shapes::StructureShape.new(name: 'ResetOriginEndpointStateRequest')
    ResetOriginEndpointStateResponse = Shapes::StructureShape.new(name: 'ResetOriginEndpointStateResponse')
    ResourceDescription = Shapes::StringShape.new(name: 'ResourceDescription')
    ResourceName = Shapes::StringShape.new(name: 'ResourceName')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceTypeNotFound = Shapes::StringShape.new(name: 'ResourceTypeNotFound')
    S3BucketName = Shapes::StringShape.new(name: 'S3BucketName')
    S3DestinationConfig = Shapes::StructureShape.new(name: 'S3DestinationConfig')
    S3DestinationPath = Shapes::StringShape.new(name: 'S3DestinationPath')
    Scte = Shapes::StructureShape.new(name: 'Scte')
    ScteDash = Shapes::StructureShape.new(name: 'ScteDash')
    ScteFilter = Shapes::StringShape.new(name: 'ScteFilter')
    ScteFilterList = Shapes::ListShape.new(name: 'ScteFilterList')
    ScteHls = Shapes::StructureShape.new(name: 'ScteHls')
    ScteInSegments = Shapes::StringShape.new(name: 'ScteInSegments')
    Segment = Shapes::StructureShape.new(name: 'Segment')
    SegmentSegmentDurationSecondsInteger = Shapes::IntegerShape.new(name: 'SegmentSegmentDurationSecondsInteger')
    SegmentSegmentNameString = Shapes::StringShape.new(name: 'SegmentSegmentNameString')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SpekeKeyProvider = Shapes::StructureShape.new(name: 'SpekeKeyProvider')
    SpekeKeyProviderDrmSystemsList = Shapes::ListShape.new(name: 'SpekeKeyProviderDrmSystemsList')
    SpekeKeyProviderResourceIdString = Shapes::StringShape.new(name: 'SpekeKeyProviderResourceIdString')
    SpekeKeyProviderRoleArnString = Shapes::StringShape.new(name: 'SpekeKeyProviderRoleArnString')
    SpekeKeyProviderUrlString = Shapes::StringShape.new(name: 'SpekeKeyProviderUrlString')
    StartTag = Shapes::StructureShape.new(name: 'StartTag')
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

    CancelHarvestJobRequest.add_member(:channel_group_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "ChannelGroupName"))
    CancelHarvestJobRequest.add_member(:channel_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "ChannelName"))
    CancelHarvestJobRequest.add_member(:origin_endpoint_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "OriginEndpointName"))
    CancelHarvestJobRequest.add_member(:harvest_job_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "HarvestJobName"))
    CancelHarvestJobRequest.add_member(:etag, Shapes::ShapeRef.new(shape: EntityTag, location: "header", location_name: "x-amzn-update-if-match"))
    CancelHarvestJobRequest.struct_class = Types::CancelHarvestJobRequest

    CancelHarvestJobResponse.struct_class = Types::CancelHarvestJobResponse

    CdnAuthConfiguration.add_member(:cdn_identifier_secret_arns, Shapes::ShapeRef.new(shape: CdnAuthConfigurationCdnIdentifierSecretArnsList, required: true, location_name: "CdnIdentifierSecretArns"))
    CdnAuthConfiguration.add_member(:secrets_role_arn, Shapes::ShapeRef.new(shape: CdnAuthConfigurationSecretsRoleArnString, required: true, location_name: "SecretsRoleArn"))
    CdnAuthConfiguration.struct_class = Types::CdnAuthConfiguration

    CdnAuthConfigurationCdnIdentifierSecretArnsList.member = Shapes::ShapeRef.new(shape: CdnIdentifierSecretArn)

    ChannelGroupListConfiguration.add_member(:channel_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ChannelGroupName"))
    ChannelGroupListConfiguration.add_member(:arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Arn"))
    ChannelGroupListConfiguration.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreatedAt"))
    ChannelGroupListConfiguration.add_member(:modified_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "ModifiedAt"))
    ChannelGroupListConfiguration.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "Description"))
    ChannelGroupListConfiguration.struct_class = Types::ChannelGroupListConfiguration

    ChannelGroupsList.member = Shapes::ShapeRef.new(shape: ChannelGroupListConfiguration)

    ChannelList.member = Shapes::ShapeRef.new(shape: ChannelListConfiguration)

    ChannelListConfiguration.add_member(:arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Arn"))
    ChannelListConfiguration.add_member(:channel_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ChannelName"))
    ChannelListConfiguration.add_member(:channel_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ChannelGroupName"))
    ChannelListConfiguration.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreatedAt"))
    ChannelListConfiguration.add_member(:modified_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "ModifiedAt"))
    ChannelListConfiguration.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "Description"))
    ChannelListConfiguration.add_member(:input_type, Shapes::ShapeRef.new(shape: InputType, location_name: "InputType"))
    ChannelListConfiguration.struct_class = Types::ChannelListConfiguration

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ConflictException.add_member(:conflict_exception_type, Shapes::ShapeRef.new(shape: ConflictExceptionType, location_name: "ConflictExceptionType"))
    ConflictException.struct_class = Types::ConflictException

    CreateChannelGroupRequest.add_member(:channel_group_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "ChannelGroupName"))
    CreateChannelGroupRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location: "header", location_name: "x-amzn-client-token", metadata: {"idempotencyToken" => true}))
    CreateChannelGroupRequest.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "Description"))
    CreateChannelGroupRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateChannelGroupRequest.struct_class = Types::CreateChannelGroupRequest

    CreateChannelGroupResponse.add_member(:channel_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ChannelGroupName"))
    CreateChannelGroupResponse.add_member(:arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Arn"))
    CreateChannelGroupResponse.add_member(:egress_domain, Shapes::ShapeRef.new(shape: String, required: true, location_name: "EgressDomain"))
    CreateChannelGroupResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreatedAt"))
    CreateChannelGroupResponse.add_member(:modified_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "ModifiedAt"))
    CreateChannelGroupResponse.add_member(:etag, Shapes::ShapeRef.new(shape: EntityTag, location_name: "ETag"))
    CreateChannelGroupResponse.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "Description"))
    CreateChannelGroupResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateChannelGroupResponse.struct_class = Types::CreateChannelGroupResponse

    CreateChannelRequest.add_member(:channel_group_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "ChannelGroupName"))
    CreateChannelRequest.add_member(:channel_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "ChannelName"))
    CreateChannelRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location: "header", location_name: "x-amzn-client-token", metadata: {"idempotencyToken" => true}))
    CreateChannelRequest.add_member(:input_type, Shapes::ShapeRef.new(shape: InputType, location_name: "InputType"))
    CreateChannelRequest.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "Description"))
    CreateChannelRequest.add_member(:input_switch_configuration, Shapes::ShapeRef.new(shape: InputSwitchConfiguration, location_name: "InputSwitchConfiguration"))
    CreateChannelRequest.add_member(:output_header_configuration, Shapes::ShapeRef.new(shape: OutputHeaderConfiguration, location_name: "OutputHeaderConfiguration"))
    CreateChannelRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateChannelRequest.struct_class = Types::CreateChannelRequest

    CreateChannelResponse.add_member(:arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Arn"))
    CreateChannelResponse.add_member(:channel_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ChannelName"))
    CreateChannelResponse.add_member(:channel_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ChannelGroupName"))
    CreateChannelResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreatedAt"))
    CreateChannelResponse.add_member(:modified_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "ModifiedAt"))
    CreateChannelResponse.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "Description"))
    CreateChannelResponse.add_member(:ingest_endpoints, Shapes::ShapeRef.new(shape: IngestEndpointList, location_name: "IngestEndpoints"))
    CreateChannelResponse.add_member(:input_type, Shapes::ShapeRef.new(shape: InputType, location_name: "InputType"))
    CreateChannelResponse.add_member(:etag, Shapes::ShapeRef.new(shape: EntityTag, location_name: "ETag"))
    CreateChannelResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateChannelResponse.add_member(:input_switch_configuration, Shapes::ShapeRef.new(shape: InputSwitchConfiguration, location_name: "InputSwitchConfiguration"))
    CreateChannelResponse.add_member(:output_header_configuration, Shapes::ShapeRef.new(shape: OutputHeaderConfiguration, location_name: "OutputHeaderConfiguration"))
    CreateChannelResponse.struct_class = Types::CreateChannelResponse

    CreateDashManifestConfiguration.add_member(:manifest_name, Shapes::ShapeRef.new(shape: ManifestName, required: true, location_name: "ManifestName"))
    CreateDashManifestConfiguration.add_member(:manifest_window_seconds, Shapes::ShapeRef.new(shape: CreateDashManifestConfigurationManifestWindowSecondsInteger, location_name: "ManifestWindowSeconds"))
    CreateDashManifestConfiguration.add_member(:filter_configuration, Shapes::ShapeRef.new(shape: FilterConfiguration, location_name: "FilterConfiguration"))
    CreateDashManifestConfiguration.add_member(:min_update_period_seconds, Shapes::ShapeRef.new(shape: CreateDashManifestConfigurationMinUpdatePeriodSecondsInteger, location_name: "MinUpdatePeriodSeconds"))
    CreateDashManifestConfiguration.add_member(:min_buffer_time_seconds, Shapes::ShapeRef.new(shape: CreateDashManifestConfigurationMinBufferTimeSecondsInteger, location_name: "MinBufferTimeSeconds"))
    CreateDashManifestConfiguration.add_member(:suggested_presentation_delay_seconds, Shapes::ShapeRef.new(shape: CreateDashManifestConfigurationSuggestedPresentationDelaySecondsInteger, location_name: "SuggestedPresentationDelaySeconds"))
    CreateDashManifestConfiguration.add_member(:segment_template_format, Shapes::ShapeRef.new(shape: DashSegmentTemplateFormat, location_name: "SegmentTemplateFormat"))
    CreateDashManifestConfiguration.add_member(:period_triggers, Shapes::ShapeRef.new(shape: DashPeriodTriggers, location_name: "PeriodTriggers"))
    CreateDashManifestConfiguration.add_member(:scte_dash, Shapes::ShapeRef.new(shape: ScteDash, location_name: "ScteDash"))
    CreateDashManifestConfiguration.add_member(:drm_signaling, Shapes::ShapeRef.new(shape: DashDrmSignaling, location_name: "DrmSignaling"))
    CreateDashManifestConfiguration.add_member(:utc_timing, Shapes::ShapeRef.new(shape: DashUtcTiming, location_name: "UtcTiming"))
    CreateDashManifestConfiguration.add_member(:profiles, Shapes::ShapeRef.new(shape: DashProfiles, location_name: "Profiles"))
    CreateDashManifestConfiguration.add_member(:base_urls, Shapes::ShapeRef.new(shape: DashBaseUrls, location_name: "BaseUrls"))
    CreateDashManifestConfiguration.add_member(:program_information, Shapes::ShapeRef.new(shape: DashProgramInformation, location_name: "ProgramInformation"))
    CreateDashManifestConfiguration.add_member(:dvb_settings, Shapes::ShapeRef.new(shape: DashDvbSettings, location_name: "DvbSettings"))
    CreateDashManifestConfiguration.add_member(:compactness, Shapes::ShapeRef.new(shape: DashCompactness, location_name: "Compactness"))
    CreateDashManifestConfiguration.add_member(:subtitle_configuration, Shapes::ShapeRef.new(shape: DashSubtitleConfiguration, location_name: "SubtitleConfiguration"))
    CreateDashManifestConfiguration.struct_class = Types::CreateDashManifestConfiguration

    CreateDashManifests.member = Shapes::ShapeRef.new(shape: CreateDashManifestConfiguration)

    CreateHarvestJobRequest.add_member(:channel_group_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "ChannelGroupName"))
    CreateHarvestJobRequest.add_member(:channel_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "ChannelName"))
    CreateHarvestJobRequest.add_member(:origin_endpoint_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "OriginEndpointName"))
    CreateHarvestJobRequest.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "Description"))
    CreateHarvestJobRequest.add_member(:harvested_manifests, Shapes::ShapeRef.new(shape: HarvestedManifests, required: true, location_name: "HarvestedManifests"))
    CreateHarvestJobRequest.add_member(:schedule_configuration, Shapes::ShapeRef.new(shape: HarvesterScheduleConfiguration, required: true, location_name: "ScheduleConfiguration"))
    CreateHarvestJobRequest.add_member(:destination, Shapes::ShapeRef.new(shape: Destination, required: true, location_name: "Destination"))
    CreateHarvestJobRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location: "header", location_name: "x-amzn-client-token", metadata: {"idempotencyToken" => true}))
    CreateHarvestJobRequest.add_member(:harvest_job_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "HarvestJobName"))
    CreateHarvestJobRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateHarvestJobRequest.struct_class = Types::CreateHarvestJobRequest

    CreateHarvestJobResponse.add_member(:channel_group_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "ChannelGroupName"))
    CreateHarvestJobResponse.add_member(:channel_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "ChannelName"))
    CreateHarvestJobResponse.add_member(:origin_endpoint_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "OriginEndpointName"))
    CreateHarvestJobResponse.add_member(:destination, Shapes::ShapeRef.new(shape: Destination, required: true, location_name: "Destination"))
    CreateHarvestJobResponse.add_member(:harvest_job_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "HarvestJobName"))
    CreateHarvestJobResponse.add_member(:harvested_manifests, Shapes::ShapeRef.new(shape: HarvestedManifests, required: true, location_name: "HarvestedManifests"))
    CreateHarvestJobResponse.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "Description"))
    CreateHarvestJobResponse.add_member(:schedule_configuration, Shapes::ShapeRef.new(shape: HarvesterScheduleConfiguration, required: true, location_name: "ScheduleConfiguration"))
    CreateHarvestJobResponse.add_member(:arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Arn"))
    CreateHarvestJobResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreatedAt"))
    CreateHarvestJobResponse.add_member(:modified_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "ModifiedAt"))
    CreateHarvestJobResponse.add_member(:status, Shapes::ShapeRef.new(shape: HarvestJobStatus, required: true, location_name: "Status"))
    CreateHarvestJobResponse.add_member(:error_message, Shapes::ShapeRef.new(shape: String, location_name: "ErrorMessage"))
    CreateHarvestJobResponse.add_member(:etag, Shapes::ShapeRef.new(shape: EntityTag, location_name: "ETag"))
    CreateHarvestJobResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateHarvestJobResponse.struct_class = Types::CreateHarvestJobResponse

    CreateHlsManifestConfiguration.add_member(:manifest_name, Shapes::ShapeRef.new(shape: ManifestName, required: true, location_name: "ManifestName"))
    CreateHlsManifestConfiguration.add_member(:child_manifest_name, Shapes::ShapeRef.new(shape: ManifestName, location_name: "ChildManifestName"))
    CreateHlsManifestConfiguration.add_member(:scte_hls, Shapes::ShapeRef.new(shape: ScteHls, location_name: "ScteHls"))
    CreateHlsManifestConfiguration.add_member(:start_tag, Shapes::ShapeRef.new(shape: StartTag, location_name: "StartTag"))
    CreateHlsManifestConfiguration.add_member(:manifest_window_seconds, Shapes::ShapeRef.new(shape: CreateHlsManifestConfigurationManifestWindowSecondsInteger, location_name: "ManifestWindowSeconds"))
    CreateHlsManifestConfiguration.add_member(:program_date_time_interval_seconds, Shapes::ShapeRef.new(shape: CreateHlsManifestConfigurationProgramDateTimeIntervalSecondsInteger, location_name: "ProgramDateTimeIntervalSeconds"))
    CreateHlsManifestConfiguration.add_member(:filter_configuration, Shapes::ShapeRef.new(shape: FilterConfiguration, location_name: "FilterConfiguration"))
    CreateHlsManifestConfiguration.add_member(:url_encode_child_manifest, Shapes::ShapeRef.new(shape: Boolean, location_name: "UrlEncodeChildManifest"))
    CreateHlsManifestConfiguration.struct_class = Types::CreateHlsManifestConfiguration

    CreateHlsManifests.member = Shapes::ShapeRef.new(shape: CreateHlsManifestConfiguration)

    CreateLowLatencyHlsManifestConfiguration.add_member(:manifest_name, Shapes::ShapeRef.new(shape: ManifestName, required: true, location_name: "ManifestName"))
    CreateLowLatencyHlsManifestConfiguration.add_member(:child_manifest_name, Shapes::ShapeRef.new(shape: ManifestName, location_name: "ChildManifestName"))
    CreateLowLatencyHlsManifestConfiguration.add_member(:scte_hls, Shapes::ShapeRef.new(shape: ScteHls, location_name: "ScteHls"))
    CreateLowLatencyHlsManifestConfiguration.add_member(:start_tag, Shapes::ShapeRef.new(shape: StartTag, location_name: "StartTag"))
    CreateLowLatencyHlsManifestConfiguration.add_member(:manifest_window_seconds, Shapes::ShapeRef.new(shape: CreateLowLatencyHlsManifestConfigurationManifestWindowSecondsInteger, location_name: "ManifestWindowSeconds"))
    CreateLowLatencyHlsManifestConfiguration.add_member(:program_date_time_interval_seconds, Shapes::ShapeRef.new(shape: CreateLowLatencyHlsManifestConfigurationProgramDateTimeIntervalSecondsInteger, location_name: "ProgramDateTimeIntervalSeconds"))
    CreateLowLatencyHlsManifestConfiguration.add_member(:filter_configuration, Shapes::ShapeRef.new(shape: FilterConfiguration, location_name: "FilterConfiguration"))
    CreateLowLatencyHlsManifestConfiguration.add_member(:url_encode_child_manifest, Shapes::ShapeRef.new(shape: Boolean, location_name: "UrlEncodeChildManifest"))
    CreateLowLatencyHlsManifestConfiguration.struct_class = Types::CreateLowLatencyHlsManifestConfiguration

    CreateLowLatencyHlsManifests.member = Shapes::ShapeRef.new(shape: CreateLowLatencyHlsManifestConfiguration)

    CreateMssManifestConfiguration.add_member(:manifest_name, Shapes::ShapeRef.new(shape: ManifestName, required: true, location_name: "ManifestName"))
    CreateMssManifestConfiguration.add_member(:manifest_window_seconds, Shapes::ShapeRef.new(shape: CreateMssManifestConfigurationManifestWindowSecondsInteger, location_name: "ManifestWindowSeconds"))
    CreateMssManifestConfiguration.add_member(:filter_configuration, Shapes::ShapeRef.new(shape: FilterConfiguration, location_name: "FilterConfiguration"))
    CreateMssManifestConfiguration.add_member(:manifest_layout, Shapes::ShapeRef.new(shape: MssManifestLayout, location_name: "ManifestLayout"))
    CreateMssManifestConfiguration.struct_class = Types::CreateMssManifestConfiguration

    CreateMssManifests.member = Shapes::ShapeRef.new(shape: CreateMssManifestConfiguration)

    CreateOriginEndpointRequest.add_member(:channel_group_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "ChannelGroupName"))
    CreateOriginEndpointRequest.add_member(:channel_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "ChannelName"))
    CreateOriginEndpointRequest.add_member(:origin_endpoint_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "OriginEndpointName"))
    CreateOriginEndpointRequest.add_member(:container_type, Shapes::ShapeRef.new(shape: ContainerType, required: true, location_name: "ContainerType"))
    CreateOriginEndpointRequest.add_member(:segment, Shapes::ShapeRef.new(shape: Segment, location_name: "Segment"))
    CreateOriginEndpointRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location: "header", location_name: "x-amzn-client-token", metadata: {"idempotencyToken" => true}))
    CreateOriginEndpointRequest.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "Description"))
    CreateOriginEndpointRequest.add_member(:startover_window_seconds, Shapes::ShapeRef.new(shape: CreateOriginEndpointRequestStartoverWindowSecondsInteger, location_name: "StartoverWindowSeconds"))
    CreateOriginEndpointRequest.add_member(:hls_manifests, Shapes::ShapeRef.new(shape: CreateHlsManifests, location_name: "HlsManifests"))
    CreateOriginEndpointRequest.add_member(:low_latency_hls_manifests, Shapes::ShapeRef.new(shape: CreateLowLatencyHlsManifests, location_name: "LowLatencyHlsManifests"))
    CreateOriginEndpointRequest.add_member(:dash_manifests, Shapes::ShapeRef.new(shape: CreateDashManifests, location_name: "DashManifests"))
    CreateOriginEndpointRequest.add_member(:mss_manifests, Shapes::ShapeRef.new(shape: CreateMssManifests, location_name: "MssManifests"))
    CreateOriginEndpointRequest.add_member(:force_endpoint_error_configuration, Shapes::ShapeRef.new(shape: ForceEndpointErrorConfiguration, location_name: "ForceEndpointErrorConfiguration"))
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
    CreateOriginEndpointResponse.add_member(:dash_manifests, Shapes::ShapeRef.new(shape: GetDashManifests, location_name: "DashManifests"))
    CreateOriginEndpointResponse.add_member(:mss_manifests, Shapes::ShapeRef.new(shape: GetMssManifests, location_name: "MssManifests"))
    CreateOriginEndpointResponse.add_member(:force_endpoint_error_configuration, Shapes::ShapeRef.new(shape: ForceEndpointErrorConfiguration, location_name: "ForceEndpointErrorConfiguration"))
    CreateOriginEndpointResponse.add_member(:etag, Shapes::ShapeRef.new(shape: EntityTag, location_name: "ETag"))
    CreateOriginEndpointResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateOriginEndpointResponse.struct_class = Types::CreateOriginEndpointResponse

    DashBaseUrl.add_member(:url, Shapes::ShapeRef.new(shape: DashBaseUrlUrlString, required: true, location_name: "Url"))
    DashBaseUrl.add_member(:service_location, Shapes::ShapeRef.new(shape: DashBaseUrlServiceLocationString, location_name: "ServiceLocation"))
    DashBaseUrl.add_member(:dvb_priority, Shapes::ShapeRef.new(shape: DashBaseUrlDvbPriorityInteger, location_name: "DvbPriority"))
    DashBaseUrl.add_member(:dvb_weight, Shapes::ShapeRef.new(shape: DashBaseUrlDvbWeightInteger, location_name: "DvbWeight"))
    DashBaseUrl.struct_class = Types::DashBaseUrl

    DashBaseUrls.member = Shapes::ShapeRef.new(shape: DashBaseUrl)

    DashDvbErrorMetrics.member = Shapes::ShapeRef.new(shape: DashDvbMetricsReporting)

    DashDvbFontDownload.add_member(:url, Shapes::ShapeRef.new(shape: DashDvbFontDownloadUrlString, location_name: "Url"))
    DashDvbFontDownload.add_member(:mime_type, Shapes::ShapeRef.new(shape: DashDvbFontDownloadMimeTypeString, location_name: "MimeType"))
    DashDvbFontDownload.add_member(:font_family, Shapes::ShapeRef.new(shape: DashDvbFontDownloadFontFamilyString, location_name: "FontFamily"))
    DashDvbFontDownload.struct_class = Types::DashDvbFontDownload

    DashDvbMetricsReporting.add_member(:reporting_url, Shapes::ShapeRef.new(shape: DashDvbMetricsReportingReportingUrlString, required: true, location_name: "ReportingUrl"))
    DashDvbMetricsReporting.add_member(:probability, Shapes::ShapeRef.new(shape: DashDvbMetricsReportingProbabilityInteger, location_name: "Probability"))
    DashDvbMetricsReporting.struct_class = Types::DashDvbMetricsReporting

    DashDvbSettings.add_member(:font_download, Shapes::ShapeRef.new(shape: DashDvbFontDownload, location_name: "FontDownload"))
    DashDvbSettings.add_member(:error_metrics, Shapes::ShapeRef.new(shape: DashDvbErrorMetrics, location_name: "ErrorMetrics"))
    DashDvbSettings.struct_class = Types::DashDvbSettings

    DashPeriodTriggers.member = Shapes::ShapeRef.new(shape: DashPeriodTrigger)

    DashProfiles.member = Shapes::ShapeRef.new(shape: DashProfile)

    DashProgramInformation.add_member(:title, Shapes::ShapeRef.new(shape: DashProgramInformationTitleString, location_name: "Title"))
    DashProgramInformation.add_member(:source, Shapes::ShapeRef.new(shape: DashProgramInformationSourceString, location_name: "Source"))
    DashProgramInformation.add_member(:copyright, Shapes::ShapeRef.new(shape: DashProgramInformationCopyrightString, location_name: "Copyright"))
    DashProgramInformation.add_member(:language_code, Shapes::ShapeRef.new(shape: DashProgramInformationLanguageCodeString, location_name: "LanguageCode"))
    DashProgramInformation.add_member(:more_information_url, Shapes::ShapeRef.new(shape: DashProgramInformationMoreInformationUrlString, location_name: "MoreInformationUrl"))
    DashProgramInformation.struct_class = Types::DashProgramInformation

    DashSubtitleConfiguration.add_member(:ttml_configuration, Shapes::ShapeRef.new(shape: DashTtmlConfiguration, location_name: "TtmlConfiguration"))
    DashSubtitleConfiguration.struct_class = Types::DashSubtitleConfiguration

    DashTtmlConfiguration.add_member(:ttml_profile, Shapes::ShapeRef.new(shape: DashTtmlProfile, required: true, location_name: "TtmlProfile"))
    DashTtmlConfiguration.struct_class = Types::DashTtmlConfiguration

    DashUtcTiming.add_member(:timing_mode, Shapes::ShapeRef.new(shape: DashUtcTimingMode, location_name: "TimingMode"))
    DashUtcTiming.add_member(:timing_source, Shapes::ShapeRef.new(shape: DashUtcTimingTimingSourceString, location_name: "TimingSource"))
    DashUtcTiming.struct_class = Types::DashUtcTiming

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

    Destination.add_member(:s3_destination, Shapes::ShapeRef.new(shape: S3DestinationConfig, required: true, location_name: "S3Destination"))
    Destination.struct_class = Types::Destination

    Encryption.add_member(:constant_initialization_vector, Shapes::ShapeRef.new(shape: EncryptionConstantInitializationVectorString, location_name: "ConstantInitializationVector"))
    Encryption.add_member(:encryption_method, Shapes::ShapeRef.new(shape: EncryptionMethod, required: true, location_name: "EncryptionMethod"))
    Encryption.add_member(:key_rotation_interval_seconds, Shapes::ShapeRef.new(shape: EncryptionKeyRotationIntervalSecondsInteger, location_name: "KeyRotationIntervalSeconds"))
    Encryption.add_member(:cmaf_exclude_segment_drm_metadata, Shapes::ShapeRef.new(shape: Boolean, location_name: "CmafExcludeSegmentDrmMetadata"))
    Encryption.add_member(:speke_key_provider, Shapes::ShapeRef.new(shape: SpekeKeyProvider, required: true, location_name: "SpekeKeyProvider"))
    Encryption.struct_class = Types::Encryption

    EncryptionContractConfiguration.add_member(:preset_speke_20_audio, Shapes::ShapeRef.new(shape: PresetSpeke20Audio, required: true, location_name: "PresetSpeke20Audio"))
    EncryptionContractConfiguration.add_member(:preset_speke_20_video, Shapes::ShapeRef.new(shape: PresetSpeke20Video, required: true, location_name: "PresetSpeke20Video"))
    EncryptionContractConfiguration.struct_class = Types::EncryptionContractConfiguration

    EncryptionMethod.add_member(:ts_encryption_method, Shapes::ShapeRef.new(shape: TsEncryptionMethod, location_name: "TsEncryptionMethod"))
    EncryptionMethod.add_member(:cmaf_encryption_method, Shapes::ShapeRef.new(shape: CmafEncryptionMethod, location_name: "CmafEncryptionMethod"))
    EncryptionMethod.add_member(:ism_encryption_method, Shapes::ShapeRef.new(shape: IsmEncryptionMethod, location_name: "IsmEncryptionMethod"))
    EncryptionMethod.struct_class = Types::EncryptionMethod

    EndpointErrorConditions.member = Shapes::ShapeRef.new(shape: EndpointErrorCondition)

    FilterConfiguration.add_member(:manifest_filter, Shapes::ShapeRef.new(shape: FilterConfigurationManifestFilterString, location_name: "ManifestFilter"))
    FilterConfiguration.add_member(:start, Shapes::ShapeRef.new(shape: Timestamp, location_name: "Start"))
    FilterConfiguration.add_member(:end, Shapes::ShapeRef.new(shape: Timestamp, location_name: "End"))
    FilterConfiguration.add_member(:time_delay_seconds, Shapes::ShapeRef.new(shape: FilterConfigurationTimeDelaySecondsInteger, location_name: "TimeDelaySeconds"))
    FilterConfiguration.add_member(:clip_start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ClipStartTime"))
    FilterConfiguration.struct_class = Types::FilterConfiguration

    ForceEndpointErrorConfiguration.add_member(:endpoint_error_conditions, Shapes::ShapeRef.new(shape: EndpointErrorConditions, location_name: "EndpointErrorConditions"))
    ForceEndpointErrorConfiguration.struct_class = Types::ForceEndpointErrorConfiguration

    GetChannelGroupRequest.add_member(:channel_group_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "ChannelGroupName"))
    GetChannelGroupRequest.struct_class = Types::GetChannelGroupRequest

    GetChannelGroupResponse.add_member(:channel_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ChannelGroupName"))
    GetChannelGroupResponse.add_member(:arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Arn"))
    GetChannelGroupResponse.add_member(:egress_domain, Shapes::ShapeRef.new(shape: String, required: true, location_name: "EgressDomain"))
    GetChannelGroupResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreatedAt"))
    GetChannelGroupResponse.add_member(:modified_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "ModifiedAt"))
    GetChannelGroupResponse.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "Description"))
    GetChannelGroupResponse.add_member(:etag, Shapes::ShapeRef.new(shape: EntityTag, location_name: "ETag"))
    GetChannelGroupResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetChannelGroupResponse.struct_class = Types::GetChannelGroupResponse

    GetChannelPolicyRequest.add_member(:channel_group_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "ChannelGroupName"))
    GetChannelPolicyRequest.add_member(:channel_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "ChannelName"))
    GetChannelPolicyRequest.struct_class = Types::GetChannelPolicyRequest

    GetChannelPolicyResponse.add_member(:channel_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ChannelGroupName"))
    GetChannelPolicyResponse.add_member(:channel_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ChannelName"))
    GetChannelPolicyResponse.add_member(:policy, Shapes::ShapeRef.new(shape: PolicyText, required: true, location_name: "Policy"))
    GetChannelPolicyResponse.struct_class = Types::GetChannelPolicyResponse

    GetChannelRequest.add_member(:channel_group_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "ChannelGroupName"))
    GetChannelRequest.add_member(:channel_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "ChannelName"))
    GetChannelRequest.struct_class = Types::GetChannelRequest

    GetChannelResponse.add_member(:arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Arn"))
    GetChannelResponse.add_member(:channel_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ChannelName"))
    GetChannelResponse.add_member(:channel_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ChannelGroupName"))
    GetChannelResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreatedAt"))
    GetChannelResponse.add_member(:modified_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "ModifiedAt"))
    GetChannelResponse.add_member(:reset_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ResetAt"))
    GetChannelResponse.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "Description"))
    GetChannelResponse.add_member(:ingest_endpoints, Shapes::ShapeRef.new(shape: IngestEndpointList, location_name: "IngestEndpoints"))
    GetChannelResponse.add_member(:input_type, Shapes::ShapeRef.new(shape: InputType, location_name: "InputType"))
    GetChannelResponse.add_member(:etag, Shapes::ShapeRef.new(shape: EntityTag, location_name: "ETag"))
    GetChannelResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    GetChannelResponse.add_member(:input_switch_configuration, Shapes::ShapeRef.new(shape: InputSwitchConfiguration, location_name: "InputSwitchConfiguration"))
    GetChannelResponse.add_member(:output_header_configuration, Shapes::ShapeRef.new(shape: OutputHeaderConfiguration, location_name: "OutputHeaderConfiguration"))
    GetChannelResponse.struct_class = Types::GetChannelResponse

    GetDashManifestConfiguration.add_member(:manifest_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "ManifestName"))
    GetDashManifestConfiguration.add_member(:url, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Url"))
    GetDashManifestConfiguration.add_member(:manifest_window_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "ManifestWindowSeconds"))
    GetDashManifestConfiguration.add_member(:filter_configuration, Shapes::ShapeRef.new(shape: FilterConfiguration, location_name: "FilterConfiguration"))
    GetDashManifestConfiguration.add_member(:min_update_period_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "MinUpdatePeriodSeconds"))
    GetDashManifestConfiguration.add_member(:min_buffer_time_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "MinBufferTimeSeconds"))
    GetDashManifestConfiguration.add_member(:suggested_presentation_delay_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "SuggestedPresentationDelaySeconds"))
    GetDashManifestConfiguration.add_member(:segment_template_format, Shapes::ShapeRef.new(shape: DashSegmentTemplateFormat, location_name: "SegmentTemplateFormat"))
    GetDashManifestConfiguration.add_member(:period_triggers, Shapes::ShapeRef.new(shape: DashPeriodTriggers, location_name: "PeriodTriggers"))
    GetDashManifestConfiguration.add_member(:scte_dash, Shapes::ShapeRef.new(shape: ScteDash, location_name: "ScteDash"))
    GetDashManifestConfiguration.add_member(:drm_signaling, Shapes::ShapeRef.new(shape: DashDrmSignaling, location_name: "DrmSignaling"))
    GetDashManifestConfiguration.add_member(:utc_timing, Shapes::ShapeRef.new(shape: DashUtcTiming, location_name: "UtcTiming"))
    GetDashManifestConfiguration.add_member(:profiles, Shapes::ShapeRef.new(shape: DashProfiles, location_name: "Profiles"))
    GetDashManifestConfiguration.add_member(:base_urls, Shapes::ShapeRef.new(shape: DashBaseUrls, location_name: "BaseUrls"))
    GetDashManifestConfiguration.add_member(:program_information, Shapes::ShapeRef.new(shape: DashProgramInformation, location_name: "ProgramInformation"))
    GetDashManifestConfiguration.add_member(:dvb_settings, Shapes::ShapeRef.new(shape: DashDvbSettings, location_name: "DvbSettings"))
    GetDashManifestConfiguration.add_member(:compactness, Shapes::ShapeRef.new(shape: DashCompactness, location_name: "Compactness"))
    GetDashManifestConfiguration.add_member(:subtitle_configuration, Shapes::ShapeRef.new(shape: DashSubtitleConfiguration, location_name: "SubtitleConfiguration"))
    GetDashManifestConfiguration.struct_class = Types::GetDashManifestConfiguration

    GetDashManifests.member = Shapes::ShapeRef.new(shape: GetDashManifestConfiguration)

    GetHarvestJobRequest.add_member(:channel_group_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "ChannelGroupName"))
    GetHarvestJobRequest.add_member(:channel_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "ChannelName"))
    GetHarvestJobRequest.add_member(:origin_endpoint_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "OriginEndpointName"))
    GetHarvestJobRequest.add_member(:harvest_job_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "HarvestJobName"))
    GetHarvestJobRequest.struct_class = Types::GetHarvestJobRequest

    GetHarvestJobResponse.add_member(:channel_group_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "ChannelGroupName"))
    GetHarvestJobResponse.add_member(:channel_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "ChannelName"))
    GetHarvestJobResponse.add_member(:origin_endpoint_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "OriginEndpointName"))
    GetHarvestJobResponse.add_member(:destination, Shapes::ShapeRef.new(shape: Destination, required: true, location_name: "Destination"))
    GetHarvestJobResponse.add_member(:harvest_job_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "HarvestJobName"))
    GetHarvestJobResponse.add_member(:harvested_manifests, Shapes::ShapeRef.new(shape: HarvestedManifests, required: true, location_name: "HarvestedManifests"))
    GetHarvestJobResponse.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "Description"))
    GetHarvestJobResponse.add_member(:schedule_configuration, Shapes::ShapeRef.new(shape: HarvesterScheduleConfiguration, required: true, location_name: "ScheduleConfiguration"))
    GetHarvestJobResponse.add_member(:arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Arn"))
    GetHarvestJobResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreatedAt"))
    GetHarvestJobResponse.add_member(:modified_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "ModifiedAt"))
    GetHarvestJobResponse.add_member(:status, Shapes::ShapeRef.new(shape: HarvestJobStatus, required: true, location_name: "Status"))
    GetHarvestJobResponse.add_member(:error_message, Shapes::ShapeRef.new(shape: String, location_name: "ErrorMessage"))
    GetHarvestJobResponse.add_member(:etag, Shapes::ShapeRef.new(shape: EntityTag, location_name: "ETag"))
    GetHarvestJobResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    GetHarvestJobResponse.struct_class = Types::GetHarvestJobResponse

    GetHlsManifestConfiguration.add_member(:manifest_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "ManifestName"))
    GetHlsManifestConfiguration.add_member(:url, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Url"))
    GetHlsManifestConfiguration.add_member(:child_manifest_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "ChildManifestName"))
    GetHlsManifestConfiguration.add_member(:manifest_window_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "ManifestWindowSeconds"))
    GetHlsManifestConfiguration.add_member(:program_date_time_interval_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "ProgramDateTimeIntervalSeconds"))
    GetHlsManifestConfiguration.add_member(:scte_hls, Shapes::ShapeRef.new(shape: ScteHls, location_name: "ScteHls"))
    GetHlsManifestConfiguration.add_member(:filter_configuration, Shapes::ShapeRef.new(shape: FilterConfiguration, location_name: "FilterConfiguration"))
    GetHlsManifestConfiguration.add_member(:start_tag, Shapes::ShapeRef.new(shape: StartTag, location_name: "StartTag"))
    GetHlsManifestConfiguration.add_member(:url_encode_child_manifest, Shapes::ShapeRef.new(shape: Boolean, location_name: "UrlEncodeChildManifest"))
    GetHlsManifestConfiguration.struct_class = Types::GetHlsManifestConfiguration

    GetHlsManifests.member = Shapes::ShapeRef.new(shape: GetHlsManifestConfiguration)

    GetLowLatencyHlsManifestConfiguration.add_member(:manifest_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "ManifestName"))
    GetLowLatencyHlsManifestConfiguration.add_member(:url, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Url"))
    GetLowLatencyHlsManifestConfiguration.add_member(:child_manifest_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "ChildManifestName"))
    GetLowLatencyHlsManifestConfiguration.add_member(:manifest_window_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "ManifestWindowSeconds"))
    GetLowLatencyHlsManifestConfiguration.add_member(:program_date_time_interval_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "ProgramDateTimeIntervalSeconds"))
    GetLowLatencyHlsManifestConfiguration.add_member(:scte_hls, Shapes::ShapeRef.new(shape: ScteHls, location_name: "ScteHls"))
    GetLowLatencyHlsManifestConfiguration.add_member(:filter_configuration, Shapes::ShapeRef.new(shape: FilterConfiguration, location_name: "FilterConfiguration"))
    GetLowLatencyHlsManifestConfiguration.add_member(:start_tag, Shapes::ShapeRef.new(shape: StartTag, location_name: "StartTag"))
    GetLowLatencyHlsManifestConfiguration.add_member(:url_encode_child_manifest, Shapes::ShapeRef.new(shape: Boolean, location_name: "UrlEncodeChildManifest"))
    GetLowLatencyHlsManifestConfiguration.struct_class = Types::GetLowLatencyHlsManifestConfiguration

    GetLowLatencyHlsManifests.member = Shapes::ShapeRef.new(shape: GetLowLatencyHlsManifestConfiguration)

    GetMssManifestConfiguration.add_member(:manifest_name, Shapes::ShapeRef.new(shape: ManifestName, required: true, location_name: "ManifestName"))
    GetMssManifestConfiguration.add_member(:url, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Url"))
    GetMssManifestConfiguration.add_member(:filter_configuration, Shapes::ShapeRef.new(shape: FilterConfiguration, location_name: "FilterConfiguration"))
    GetMssManifestConfiguration.add_member(:manifest_window_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "ManifestWindowSeconds"))
    GetMssManifestConfiguration.add_member(:manifest_layout, Shapes::ShapeRef.new(shape: MssManifestLayout, location_name: "ManifestLayout"))
    GetMssManifestConfiguration.struct_class = Types::GetMssManifestConfiguration

    GetMssManifests.member = Shapes::ShapeRef.new(shape: GetMssManifestConfiguration)

    GetOriginEndpointPolicyRequest.add_member(:channel_group_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "ChannelGroupName"))
    GetOriginEndpointPolicyRequest.add_member(:channel_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "ChannelName"))
    GetOriginEndpointPolicyRequest.add_member(:origin_endpoint_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "OriginEndpointName"))
    GetOriginEndpointPolicyRequest.struct_class = Types::GetOriginEndpointPolicyRequest

    GetOriginEndpointPolicyResponse.add_member(:channel_group_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "ChannelGroupName"))
    GetOriginEndpointPolicyResponse.add_member(:channel_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "ChannelName"))
    GetOriginEndpointPolicyResponse.add_member(:origin_endpoint_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "OriginEndpointName"))
    GetOriginEndpointPolicyResponse.add_member(:policy, Shapes::ShapeRef.new(shape: PolicyText, required: true, location_name: "Policy"))
    GetOriginEndpointPolicyResponse.add_member(:cdn_auth_configuration, Shapes::ShapeRef.new(shape: CdnAuthConfiguration, location_name: "CdnAuthConfiguration"))
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
    GetOriginEndpointResponse.add_member(:reset_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ResetAt"))
    GetOriginEndpointResponse.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "Description"))
    GetOriginEndpointResponse.add_member(:startover_window_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "StartoverWindowSeconds"))
    GetOriginEndpointResponse.add_member(:hls_manifests, Shapes::ShapeRef.new(shape: GetHlsManifests, location_name: "HlsManifests"))
    GetOriginEndpointResponse.add_member(:low_latency_hls_manifests, Shapes::ShapeRef.new(shape: GetLowLatencyHlsManifests, location_name: "LowLatencyHlsManifests"))
    GetOriginEndpointResponse.add_member(:dash_manifests, Shapes::ShapeRef.new(shape: GetDashManifests, location_name: "DashManifests"))
    GetOriginEndpointResponse.add_member(:mss_manifests, Shapes::ShapeRef.new(shape: GetMssManifests, location_name: "MssManifests"))
    GetOriginEndpointResponse.add_member(:force_endpoint_error_configuration, Shapes::ShapeRef.new(shape: ForceEndpointErrorConfiguration, location_name: "ForceEndpointErrorConfiguration"))
    GetOriginEndpointResponse.add_member(:etag, Shapes::ShapeRef.new(shape: EntityTag, location_name: "ETag"))
    GetOriginEndpointResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    GetOriginEndpointResponse.struct_class = Types::GetOriginEndpointResponse

    HarvestJob.add_member(:channel_group_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "ChannelGroupName"))
    HarvestJob.add_member(:channel_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "ChannelName"))
    HarvestJob.add_member(:origin_endpoint_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "OriginEndpointName"))
    HarvestJob.add_member(:destination, Shapes::ShapeRef.new(shape: Destination, required: true, location_name: "Destination"))
    HarvestJob.add_member(:harvest_job_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "HarvestJobName"))
    HarvestJob.add_member(:harvested_manifests, Shapes::ShapeRef.new(shape: HarvestedManifests, required: true, location_name: "HarvestedManifests"))
    HarvestJob.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "Description"))
    HarvestJob.add_member(:schedule_configuration, Shapes::ShapeRef.new(shape: HarvesterScheduleConfiguration, required: true, location_name: "ScheduleConfiguration"))
    HarvestJob.add_member(:arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Arn"))
    HarvestJob.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreatedAt"))
    HarvestJob.add_member(:modified_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "ModifiedAt"))
    HarvestJob.add_member(:status, Shapes::ShapeRef.new(shape: HarvestJobStatus, required: true, location_name: "Status"))
    HarvestJob.add_member(:error_message, Shapes::ShapeRef.new(shape: String, location_name: "ErrorMessage"))
    HarvestJob.add_member(:etag, Shapes::ShapeRef.new(shape: EntityTag, location_name: "ETag"))
    HarvestJob.struct_class = Types::HarvestJob

    HarvestJobsList.member = Shapes::ShapeRef.new(shape: HarvestJob)

    HarvestedDashManifest.add_member(:manifest_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "ManifestName"))
    HarvestedDashManifest.struct_class = Types::HarvestedDashManifest

    HarvestedDashManifestsList.member = Shapes::ShapeRef.new(shape: HarvestedDashManifest)

    HarvestedHlsManifest.add_member(:manifest_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "ManifestName"))
    HarvestedHlsManifest.struct_class = Types::HarvestedHlsManifest

    HarvestedHlsManifestsList.member = Shapes::ShapeRef.new(shape: HarvestedHlsManifest)

    HarvestedLowLatencyHlsManifest.add_member(:manifest_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "ManifestName"))
    HarvestedLowLatencyHlsManifest.struct_class = Types::HarvestedLowLatencyHlsManifest

    HarvestedLowLatencyHlsManifestsList.member = Shapes::ShapeRef.new(shape: HarvestedLowLatencyHlsManifest)

    HarvestedManifests.add_member(:hls_manifests, Shapes::ShapeRef.new(shape: HarvestedHlsManifestsList, location_name: "HlsManifests"))
    HarvestedManifests.add_member(:dash_manifests, Shapes::ShapeRef.new(shape: HarvestedDashManifestsList, location_name: "DashManifests"))
    HarvestedManifests.add_member(:low_latency_hls_manifests, Shapes::ShapeRef.new(shape: HarvestedLowLatencyHlsManifestsList, location_name: "LowLatencyHlsManifests"))
    HarvestedManifests.struct_class = Types::HarvestedManifests

    HarvesterScheduleConfiguration.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "StartTime"))
    HarvesterScheduleConfiguration.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "EndTime"))
    HarvesterScheduleConfiguration.struct_class = Types::HarvesterScheduleConfiguration

    IngestEndpoint.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "Id"))
    IngestEndpoint.add_member(:url, Shapes::ShapeRef.new(shape: String, location_name: "Url"))
    IngestEndpoint.struct_class = Types::IngestEndpoint

    IngestEndpointList.member = Shapes::ShapeRef.new(shape: IngestEndpoint)

    InputSwitchConfiguration.add_member(:mqcs_input_switching, Shapes::ShapeRef.new(shape: Boolean, location_name: "MQCSInputSwitching"))
    InputSwitchConfiguration.add_member(:preferred_input, Shapes::ShapeRef.new(shape: InputSwitchConfigurationPreferredInputInteger, location_name: "PreferredInput"))
    InputSwitchConfiguration.struct_class = Types::InputSwitchConfiguration

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

    ListDashManifestConfiguration.add_member(:manifest_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "ManifestName"))
    ListDashManifestConfiguration.add_member(:url, Shapes::ShapeRef.new(shape: String, location_name: "Url"))
    ListDashManifestConfiguration.struct_class = Types::ListDashManifestConfiguration

    ListDashManifests.member = Shapes::ShapeRef.new(shape: ListDashManifestConfiguration)

    ListHarvestJobsRequest.add_member(:channel_group_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "ChannelGroupName"))
    ListHarvestJobsRequest.add_member(:channel_name, Shapes::ShapeRef.new(shape: ListHarvestJobsRequestChannelNameString, location: "querystring", location_name: "channelName"))
    ListHarvestJobsRequest.add_member(:origin_endpoint_name, Shapes::ShapeRef.new(shape: ListHarvestJobsRequestOriginEndpointNameString, location: "querystring", location_name: "originEndpointName"))
    ListHarvestJobsRequest.add_member(:status, Shapes::ShapeRef.new(shape: HarvestJobStatus, location: "querystring", location_name: "includeStatus"))
    ListHarvestJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListHarvestJobsRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListHarvestJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListHarvestJobsRequest.struct_class = Types::ListHarvestJobsRequest

    ListHarvestJobsResponse.add_member(:items, Shapes::ShapeRef.new(shape: HarvestJobsList, location_name: "Items"))
    ListHarvestJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListHarvestJobsResponse.struct_class = Types::ListHarvestJobsResponse

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

    ListMssManifestConfiguration.add_member(:manifest_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "ManifestName"))
    ListMssManifestConfiguration.add_member(:url, Shapes::ShapeRef.new(shape: String, location_name: "Url"))
    ListMssManifestConfiguration.struct_class = Types::ListMssManifestConfiguration

    ListMssManifests.member = Shapes::ShapeRef.new(shape: ListMssManifestConfiguration)

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
    OriginEndpointListConfiguration.add_member(:dash_manifests, Shapes::ShapeRef.new(shape: ListDashManifests, location_name: "DashManifests"))
    OriginEndpointListConfiguration.add_member(:mss_manifests, Shapes::ShapeRef.new(shape: ListMssManifests, location_name: "MssManifests"))
    OriginEndpointListConfiguration.add_member(:force_endpoint_error_configuration, Shapes::ShapeRef.new(shape: ForceEndpointErrorConfiguration, location_name: "ForceEndpointErrorConfiguration"))
    OriginEndpointListConfiguration.struct_class = Types::OriginEndpointListConfiguration

    OriginEndpointsList.member = Shapes::ShapeRef.new(shape: OriginEndpointListConfiguration)

    OutputHeaderConfiguration.add_member(:publish_mqcs, Shapes::ShapeRef.new(shape: Boolean, location_name: "PublishMQCS"))
    OutputHeaderConfiguration.struct_class = Types::OutputHeaderConfiguration

    PutChannelPolicyRequest.add_member(:channel_group_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "ChannelGroupName"))
    PutChannelPolicyRequest.add_member(:channel_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "ChannelName"))
    PutChannelPolicyRequest.add_member(:policy, Shapes::ShapeRef.new(shape: PolicyText, required: true, location_name: "Policy"))
    PutChannelPolicyRequest.struct_class = Types::PutChannelPolicyRequest

    PutChannelPolicyResponse.struct_class = Types::PutChannelPolicyResponse

    PutOriginEndpointPolicyRequest.add_member(:channel_group_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "ChannelGroupName"))
    PutOriginEndpointPolicyRequest.add_member(:channel_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "ChannelName"))
    PutOriginEndpointPolicyRequest.add_member(:origin_endpoint_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "OriginEndpointName"))
    PutOriginEndpointPolicyRequest.add_member(:policy, Shapes::ShapeRef.new(shape: PolicyText, required: true, location_name: "Policy"))
    PutOriginEndpointPolicyRequest.add_member(:cdn_auth_configuration, Shapes::ShapeRef.new(shape: CdnAuthConfiguration, location_name: "CdnAuthConfiguration"))
    PutOriginEndpointPolicyRequest.struct_class = Types::PutOriginEndpointPolicyRequest

    PutOriginEndpointPolicyResponse.struct_class = Types::PutOriginEndpointPolicyResponse

    ResetChannelStateRequest.add_member(:channel_group_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "ChannelGroupName"))
    ResetChannelStateRequest.add_member(:channel_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "ChannelName"))
    ResetChannelStateRequest.struct_class = Types::ResetChannelStateRequest

    ResetChannelStateResponse.add_member(:channel_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ChannelGroupName"))
    ResetChannelStateResponse.add_member(:channel_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ChannelName"))
    ResetChannelStateResponse.add_member(:arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Arn"))
    ResetChannelStateResponse.add_member(:reset_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "ResetAt"))
    ResetChannelStateResponse.struct_class = Types::ResetChannelStateResponse

    ResetOriginEndpointStateRequest.add_member(:channel_group_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "ChannelGroupName"))
    ResetOriginEndpointStateRequest.add_member(:channel_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "ChannelName"))
    ResetOriginEndpointStateRequest.add_member(:origin_endpoint_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "OriginEndpointName"))
    ResetOriginEndpointStateRequest.struct_class = Types::ResetOriginEndpointStateRequest

    ResetOriginEndpointStateResponse.add_member(:channel_group_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "ChannelGroupName"))
    ResetOriginEndpointStateResponse.add_member(:channel_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "ChannelName"))
    ResetOriginEndpointStateResponse.add_member(:origin_endpoint_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "OriginEndpointName"))
    ResetOriginEndpointStateResponse.add_member(:arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Arn"))
    ResetOriginEndpointStateResponse.add_member(:reset_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "ResetAt"))
    ResetOriginEndpointStateResponse.struct_class = Types::ResetOriginEndpointStateResponse

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ResourceNotFoundException.add_member(:resource_type_not_found, Shapes::ShapeRef.new(shape: ResourceTypeNotFound, location_name: "ResourceTypeNotFound"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    S3DestinationConfig.add_member(:bucket_name, Shapes::ShapeRef.new(shape: S3BucketName, required: true, location_name: "BucketName"))
    S3DestinationConfig.add_member(:destination_path, Shapes::ShapeRef.new(shape: S3DestinationPath, required: true, location_name: "DestinationPath"))
    S3DestinationConfig.struct_class = Types::S3DestinationConfig

    Scte.add_member(:scte_filter, Shapes::ShapeRef.new(shape: ScteFilterList, location_name: "ScteFilter"))
    Scte.add_member(:scte_in_segments, Shapes::ShapeRef.new(shape: ScteInSegments, location_name: "ScteInSegments"))
    Scte.struct_class = Types::Scte

    ScteDash.add_member(:ad_marker_dash, Shapes::ShapeRef.new(shape: AdMarkerDash, location_name: "AdMarkerDash"))
    ScteDash.struct_class = Types::ScteDash

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

    StartTag.add_member(:time_offset, Shapes::ShapeRef.new(shape: Float, required: true, location_name: "TimeOffset"))
    StartTag.add_member(:precise, Shapes::ShapeRef.new(shape: Boolean, location_name: "Precise"))
    StartTag.struct_class = Types::StartTag

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
    UpdateChannelGroupRequest.add_member(:etag, Shapes::ShapeRef.new(shape: EntityTag, location: "header", location_name: "x-amzn-update-if-match"))
    UpdateChannelGroupRequest.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "Description"))
    UpdateChannelGroupRequest.struct_class = Types::UpdateChannelGroupRequest

    UpdateChannelGroupResponse.add_member(:channel_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ChannelGroupName"))
    UpdateChannelGroupResponse.add_member(:arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Arn"))
    UpdateChannelGroupResponse.add_member(:egress_domain, Shapes::ShapeRef.new(shape: String, required: true, location_name: "EgressDomain"))
    UpdateChannelGroupResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreatedAt"))
    UpdateChannelGroupResponse.add_member(:modified_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "ModifiedAt"))
    UpdateChannelGroupResponse.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "Description"))
    UpdateChannelGroupResponse.add_member(:etag, Shapes::ShapeRef.new(shape: EntityTag, location_name: "ETag"))
    UpdateChannelGroupResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    UpdateChannelGroupResponse.struct_class = Types::UpdateChannelGroupResponse

    UpdateChannelRequest.add_member(:channel_group_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "ChannelGroupName"))
    UpdateChannelRequest.add_member(:channel_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "ChannelName"))
    UpdateChannelRequest.add_member(:etag, Shapes::ShapeRef.new(shape: EntityTag, location: "header", location_name: "x-amzn-update-if-match"))
    UpdateChannelRequest.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "Description"))
    UpdateChannelRequest.add_member(:input_switch_configuration, Shapes::ShapeRef.new(shape: InputSwitchConfiguration, location_name: "InputSwitchConfiguration"))
    UpdateChannelRequest.add_member(:output_header_configuration, Shapes::ShapeRef.new(shape: OutputHeaderConfiguration, location_name: "OutputHeaderConfiguration"))
    UpdateChannelRequest.struct_class = Types::UpdateChannelRequest

    UpdateChannelResponse.add_member(:arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Arn"))
    UpdateChannelResponse.add_member(:channel_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ChannelName"))
    UpdateChannelResponse.add_member(:channel_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ChannelGroupName"))
    UpdateChannelResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreatedAt"))
    UpdateChannelResponse.add_member(:modified_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "ModifiedAt"))
    UpdateChannelResponse.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "Description"))
    UpdateChannelResponse.add_member(:ingest_endpoints, Shapes::ShapeRef.new(shape: IngestEndpointList, location_name: "IngestEndpoints"))
    UpdateChannelResponse.add_member(:input_type, Shapes::ShapeRef.new(shape: InputType, location_name: "InputType"))
    UpdateChannelResponse.add_member(:etag, Shapes::ShapeRef.new(shape: EntityTag, location_name: "ETag"))
    UpdateChannelResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    UpdateChannelResponse.add_member(:input_switch_configuration, Shapes::ShapeRef.new(shape: InputSwitchConfiguration, location_name: "InputSwitchConfiguration"))
    UpdateChannelResponse.add_member(:output_header_configuration, Shapes::ShapeRef.new(shape: OutputHeaderConfiguration, location_name: "OutputHeaderConfiguration"))
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
    UpdateOriginEndpointRequest.add_member(:dash_manifests, Shapes::ShapeRef.new(shape: CreateDashManifests, location_name: "DashManifests"))
    UpdateOriginEndpointRequest.add_member(:mss_manifests, Shapes::ShapeRef.new(shape: CreateMssManifests, location_name: "MssManifests"))
    UpdateOriginEndpointRequest.add_member(:force_endpoint_error_configuration, Shapes::ShapeRef.new(shape: ForceEndpointErrorConfiguration, location_name: "ForceEndpointErrorConfiguration"))
    UpdateOriginEndpointRequest.add_member(:etag, Shapes::ShapeRef.new(shape: EntityTag, location: "header", location_name: "x-amzn-update-if-match"))
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
    UpdateOriginEndpointResponse.add_member(:mss_manifests, Shapes::ShapeRef.new(shape: GetMssManifests, location_name: "MssManifests"))
    UpdateOriginEndpointResponse.add_member(:force_endpoint_error_configuration, Shapes::ShapeRef.new(shape: ForceEndpointErrorConfiguration, location_name: "ForceEndpointErrorConfiguration"))
    UpdateOriginEndpointResponse.add_member(:etag, Shapes::ShapeRef.new(shape: EntityTag, location_name: "ETag"))
    UpdateOriginEndpointResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    UpdateOriginEndpointResponse.add_member(:dash_manifests, Shapes::ShapeRef.new(shape: GetDashManifests, location_name: "DashManifests"))
    UpdateOriginEndpointResponse.struct_class = Types::UpdateOriginEndpointResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ValidationException.add_member(:validation_exception_type, Shapes::ShapeRef.new(shape: ValidationExceptionType, location_name: "ValidationExceptionType"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2022-12-25"

      api.metadata = {
        "apiVersion" => "2022-12-25",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "mediapackagev2",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceAbbreviation" => "mediapackagev2",
        "serviceFullName" => "AWS Elemental MediaPackage v2",
        "serviceId" => "MediaPackageV2",
        "signatureVersion" => "v4",
        "signingName" => "mediapackagev2",
        "uid" => "mediapackagev2-2022-12-25",
      }

      api.add_operation(:cancel_harvest_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelHarvestJob"
        o.http_method = "PUT"
        o.http_request_uri = "/channelGroup/{ChannelGroupName}/channel/{ChannelName}/originEndpoint/{OriginEndpointName}/harvestJob/{HarvestJobName}"
        o.input = Shapes::ShapeRef.new(shape: CancelHarvestJobRequest)
        o.output = Shapes::ShapeRef.new(shape: CancelHarvestJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:create_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateChannel"
        o.http_method = "POST"
        o.http_request_uri = "/channelGroup/{ChannelGroupName}/channel"
        o.input = Shapes::ShapeRef.new(shape: CreateChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateChannelResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
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
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_harvest_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateHarvestJob"
        o.http_method = "POST"
        o.http_request_uri = "/channelGroup/{ChannelGroupName}/channel/{ChannelName}/originEndpoint/{OriginEndpointName}/harvestJob"
        o.input = Shapes::ShapeRef.new(shape: CreateHarvestJobRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateHarvestJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
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
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
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
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_channel_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteChannelGroup"
        o.http_method = "DELETE"
        o.http_request_uri = "/channelGroup/{ChannelGroupName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteChannelGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteChannelGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_channel_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteChannelPolicy"
        o.http_method = "DELETE"
        o.http_request_uri = "/channelGroup/{ChannelGroupName}/channel/{ChannelName}/policy"
        o.input = Shapes::ShapeRef.new(shape: DeleteChannelPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteChannelPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_origin_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteOriginEndpoint"
        o.http_method = "DELETE"
        o.http_request_uri = "/channelGroup/{ChannelGroupName}/channel/{ChannelName}/originEndpoint/{OriginEndpointName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteOriginEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteOriginEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_origin_endpoint_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteOriginEndpointPolicy"
        o.http_method = "DELETE"
        o.http_request_uri = "/channelGroup/{ChannelGroupName}/channel/{ChannelName}/originEndpoint/{OriginEndpointName}/policy"
        o.input = Shapes::ShapeRef.new(shape: DeleteOriginEndpointPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteOriginEndpointPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetChannel"
        o.http_method = "GET"
        o.http_request_uri = "/channelGroup/{ChannelGroupName}/channel/{ChannelName}/"
        o.input = Shapes::ShapeRef.new(shape: GetChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: GetChannelResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
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
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
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
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_harvest_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetHarvestJob"
        o.http_method = "GET"
        o.http_request_uri = "/channelGroup/{ChannelGroupName}/channel/{ChannelName}/originEndpoint/{OriginEndpointName}/harvestJob/{HarvestJobName}"
        o.input = Shapes::ShapeRef.new(shape: GetHarvestJobRequest)
        o.output = Shapes::ShapeRef.new(shape: GetHarvestJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
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
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
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
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
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
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
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
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_harvest_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListHarvestJobs"
        o.http_method = "GET"
        o.http_request_uri = "/channelGroup/{ChannelGroupName}/harvestJob"
        o.input = Shapes::ShapeRef.new(shape: ListHarvestJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListHarvestJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
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
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:put_origin_endpoint_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutOriginEndpointPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/channelGroup/{ChannelGroupName}/channel/{ChannelName}/originEndpoint/{OriginEndpointName}/policy"
        o.input = Shapes::ShapeRef.new(shape: PutOriginEndpointPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: PutOriginEndpointPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:reset_channel_state, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ResetChannelState"
        o.http_method = "POST"
        o.http_request_uri = "/channelGroup/{ChannelGroupName}/channel/{ChannelName}/reset"
        o.input = Shapes::ShapeRef.new(shape: ResetChannelStateRequest)
        o.output = Shapes::ShapeRef.new(shape: ResetChannelStateResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:reset_origin_endpoint_state, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ResetOriginEndpointState"
        o.http_method = "POST"
        o.http_request_uri = "/channelGroup/{ChannelGroupName}/channel/{ChannelName}/originEndpoint/{OriginEndpointName}/reset"
        o.input = Shapes::ShapeRef.new(shape: ResetOriginEndpointStateRequest)
        o.output = Shapes::ShapeRef.new(shape: ResetOriginEndpointStateResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
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
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_channel_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateChannelGroup"
        o.http_method = "PUT"
        o.http_request_uri = "/channelGroup/{ChannelGroupName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateChannelGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateChannelGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_origin_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateOriginEndpoint"
        o.http_method = "PUT"
        o.http_request_uri = "/channelGroup/{ChannelGroupName}/channel/{ChannelName}/originEndpoint/{OriginEndpointName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateOriginEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateOriginEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)
    end

  end
end
