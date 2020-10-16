# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::MediaLive
  # @api private
  module ClientApi

    include Seahorse::Model

    AacCodingMode = Shapes::StringShape.new(name: 'AacCodingMode')
    AacInputType = Shapes::StringShape.new(name: 'AacInputType')
    AacProfile = Shapes::StringShape.new(name: 'AacProfile')
    AacRateControlMode = Shapes::StringShape.new(name: 'AacRateControlMode')
    AacRawFormat = Shapes::StringShape.new(name: 'AacRawFormat')
    AacSettings = Shapes::StructureShape.new(name: 'AacSettings')
    AacSpec = Shapes::StringShape.new(name: 'AacSpec')
    AacVbrQuality = Shapes::StringShape.new(name: 'AacVbrQuality')
    Ac3BitstreamMode = Shapes::StringShape.new(name: 'Ac3BitstreamMode')
    Ac3CodingMode = Shapes::StringShape.new(name: 'Ac3CodingMode')
    Ac3DrcProfile = Shapes::StringShape.new(name: 'Ac3DrcProfile')
    Ac3LfeFilter = Shapes::StringShape.new(name: 'Ac3LfeFilter')
    Ac3MetadataControl = Shapes::StringShape.new(name: 'Ac3MetadataControl')
    Ac3Settings = Shapes::StructureShape.new(name: 'Ac3Settings')
    AcceptHeader = Shapes::StringShape.new(name: 'AcceptHeader')
    AcceptInputDeviceTransferRequest = Shapes::StructureShape.new(name: 'AcceptInputDeviceTransferRequest')
    AcceptInputDeviceTransferResponse = Shapes::StructureShape.new(name: 'AcceptInputDeviceTransferResponse')
    AccessDenied = Shapes::StructureShape.new(name: 'AccessDenied')
    AfdSignaling = Shapes::StringShape.new(name: 'AfdSignaling')
    AncillarySourceSettings = Shapes::StructureShape.new(name: 'AncillarySourceSettings')
    ArchiveContainerSettings = Shapes::StructureShape.new(name: 'ArchiveContainerSettings')
    ArchiveGroupSettings = Shapes::StructureShape.new(name: 'ArchiveGroupSettings')
    ArchiveOutputSettings = Shapes::StructureShape.new(name: 'ArchiveOutputSettings')
    AribDestinationSettings = Shapes::StructureShape.new(name: 'AribDestinationSettings')
    AribSourceSettings = Shapes::StructureShape.new(name: 'AribSourceSettings')
    AudioChannelMapping = Shapes::StructureShape.new(name: 'AudioChannelMapping')
    AudioCodecSettings = Shapes::StructureShape.new(name: 'AudioCodecSettings')
    AudioDescription = Shapes::StructureShape.new(name: 'AudioDescription')
    AudioDescriptionAudioTypeControl = Shapes::StringShape.new(name: 'AudioDescriptionAudioTypeControl')
    AudioDescriptionLanguageCodeControl = Shapes::StringShape.new(name: 'AudioDescriptionLanguageCodeControl')
    AudioLanguageSelection = Shapes::StructureShape.new(name: 'AudioLanguageSelection')
    AudioLanguageSelectionPolicy = Shapes::StringShape.new(name: 'AudioLanguageSelectionPolicy')
    AudioNormalizationAlgorithm = Shapes::StringShape.new(name: 'AudioNormalizationAlgorithm')
    AudioNormalizationAlgorithmControl = Shapes::StringShape.new(name: 'AudioNormalizationAlgorithmControl')
    AudioNormalizationSettings = Shapes::StructureShape.new(name: 'AudioNormalizationSettings')
    AudioOnlyHlsSegmentType = Shapes::StringShape.new(name: 'AudioOnlyHlsSegmentType')
    AudioOnlyHlsSettings = Shapes::StructureShape.new(name: 'AudioOnlyHlsSettings')
    AudioOnlyHlsTrackType = Shapes::StringShape.new(name: 'AudioOnlyHlsTrackType')
    AudioPidSelection = Shapes::StructureShape.new(name: 'AudioPidSelection')
    AudioSelector = Shapes::StructureShape.new(name: 'AudioSelector')
    AudioSelectorSettings = Shapes::StructureShape.new(name: 'AudioSelectorSettings')
    AudioTrack = Shapes::StructureShape.new(name: 'AudioTrack')
    AudioTrackSelection = Shapes::StructureShape.new(name: 'AudioTrackSelection')
    AudioType = Shapes::StringShape.new(name: 'AudioType')
    AuthenticationScheme = Shapes::StringShape.new(name: 'AuthenticationScheme')
    AutomaticInputFailoverSettings = Shapes::StructureShape.new(name: 'AutomaticInputFailoverSettings')
    AvailBlanking = Shapes::StructureShape.new(name: 'AvailBlanking')
    AvailBlankingState = Shapes::StringShape.new(name: 'AvailBlankingState')
    AvailConfiguration = Shapes::StructureShape.new(name: 'AvailConfiguration')
    AvailSettings = Shapes::StructureShape.new(name: 'AvailSettings')
    BadGatewayException = Shapes::StructureShape.new(name: 'BadGatewayException')
    BadRequestException = Shapes::StructureShape.new(name: 'BadRequestException')
    BatchDelete = Shapes::StructureShape.new(name: 'BatchDelete')
    BatchDeleteRequest = Shapes::StructureShape.new(name: 'BatchDeleteRequest')
    BatchDeleteResponse = Shapes::StructureShape.new(name: 'BatchDeleteResponse')
    BatchDeleteResultModel = Shapes::StructureShape.new(name: 'BatchDeleteResultModel')
    BatchFailedResultModel = Shapes::StructureShape.new(name: 'BatchFailedResultModel')
    BatchScheduleActionCreateRequest = Shapes::StructureShape.new(name: 'BatchScheduleActionCreateRequest')
    BatchScheduleActionCreateResult = Shapes::StructureShape.new(name: 'BatchScheduleActionCreateResult')
    BatchScheduleActionDeleteRequest = Shapes::StructureShape.new(name: 'BatchScheduleActionDeleteRequest')
    BatchScheduleActionDeleteResult = Shapes::StructureShape.new(name: 'BatchScheduleActionDeleteResult')
    BatchStart = Shapes::StructureShape.new(name: 'BatchStart')
    BatchStartRequest = Shapes::StructureShape.new(name: 'BatchStartRequest')
    BatchStartResponse = Shapes::StructureShape.new(name: 'BatchStartResponse')
    BatchStartResultModel = Shapes::StructureShape.new(name: 'BatchStartResultModel')
    BatchStop = Shapes::StructureShape.new(name: 'BatchStop')
    BatchStopRequest = Shapes::StructureShape.new(name: 'BatchStopRequest')
    BatchStopResponse = Shapes::StructureShape.new(name: 'BatchStopResponse')
    BatchStopResultModel = Shapes::StructureShape.new(name: 'BatchStopResultModel')
    BatchSuccessfulResultModel = Shapes::StructureShape.new(name: 'BatchSuccessfulResultModel')
    BatchUpdateScheduleRequest = Shapes::StructureShape.new(name: 'BatchUpdateScheduleRequest')
    BatchUpdateScheduleResponse = Shapes::StructureShape.new(name: 'BatchUpdateScheduleResponse')
    BatchUpdateScheduleResult = Shapes::StructureShape.new(name: 'BatchUpdateScheduleResult')
    BlackoutSlate = Shapes::StructureShape.new(name: 'BlackoutSlate')
    BlackoutSlateNetworkEndBlackout = Shapes::StringShape.new(name: 'BlackoutSlateNetworkEndBlackout')
    BlackoutSlateState = Shapes::StringShape.new(name: 'BlackoutSlateState')
    BurnInAlignment = Shapes::StringShape.new(name: 'BurnInAlignment')
    BurnInBackgroundColor = Shapes::StringShape.new(name: 'BurnInBackgroundColor')
    BurnInDestinationSettings = Shapes::StructureShape.new(name: 'BurnInDestinationSettings')
    BurnInFontColor = Shapes::StringShape.new(name: 'BurnInFontColor')
    BurnInOutlineColor = Shapes::StringShape.new(name: 'BurnInOutlineColor')
    BurnInShadowColor = Shapes::StringShape.new(name: 'BurnInShadowColor')
    BurnInTeletextGridControl = Shapes::StringShape.new(name: 'BurnInTeletextGridControl')
    CancelInputDeviceTransferRequest = Shapes::StructureShape.new(name: 'CancelInputDeviceTransferRequest')
    CancelInputDeviceTransferResponse = Shapes::StructureShape.new(name: 'CancelInputDeviceTransferResponse')
    CaptionDescription = Shapes::StructureShape.new(name: 'CaptionDescription')
    CaptionDestinationSettings = Shapes::StructureShape.new(name: 'CaptionDestinationSettings')
    CaptionLanguageMapping = Shapes::StructureShape.new(name: 'CaptionLanguageMapping')
    CaptionSelector = Shapes::StructureShape.new(name: 'CaptionSelector')
    CaptionSelectorSettings = Shapes::StructureShape.new(name: 'CaptionSelectorSettings')
    CdiInputResolution = Shapes::StringShape.new(name: 'CdiInputResolution')
    CdiInputSpecification = Shapes::StructureShape.new(name: 'CdiInputSpecification')
    Channel = Shapes::StructureShape.new(name: 'Channel')
    ChannelClass = Shapes::StringShape.new(name: 'ChannelClass')
    ChannelConfigurationValidationError = Shapes::StructureShape.new(name: 'ChannelConfigurationValidationError')
    ChannelEgressEndpoint = Shapes::StructureShape.new(name: 'ChannelEgressEndpoint')
    ChannelState = Shapes::StringShape.new(name: 'ChannelState')
    ChannelSummary = Shapes::StructureShape.new(name: 'ChannelSummary')
    ColorSpacePassthroughSettings = Shapes::StructureShape.new(name: 'ColorSpacePassthroughSettings')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ContentType = Shapes::StringShape.new(name: 'ContentType')
    CreateChannel = Shapes::StructureShape.new(name: 'CreateChannel')
    CreateChannelRequest = Shapes::StructureShape.new(name: 'CreateChannelRequest')
    CreateChannelResponse = Shapes::StructureShape.new(name: 'CreateChannelResponse')
    CreateChannelResultModel = Shapes::StructureShape.new(name: 'CreateChannelResultModel')
    CreateInput = Shapes::StructureShape.new(name: 'CreateInput')
    CreateInputRequest = Shapes::StructureShape.new(name: 'CreateInputRequest')
    CreateInputResponse = Shapes::StructureShape.new(name: 'CreateInputResponse')
    CreateInputResultModel = Shapes::StructureShape.new(name: 'CreateInputResultModel')
    CreateInputSecurityGroupRequest = Shapes::StructureShape.new(name: 'CreateInputSecurityGroupRequest')
    CreateInputSecurityGroupResponse = Shapes::StructureShape.new(name: 'CreateInputSecurityGroupResponse')
    CreateInputSecurityGroupResultModel = Shapes::StructureShape.new(name: 'CreateInputSecurityGroupResultModel')
    CreateMultiplex = Shapes::StructureShape.new(name: 'CreateMultiplex')
    CreateMultiplexProgram = Shapes::StructureShape.new(name: 'CreateMultiplexProgram')
    CreateMultiplexProgramRequest = Shapes::StructureShape.new(name: 'CreateMultiplexProgramRequest')
    CreateMultiplexProgramResponse = Shapes::StructureShape.new(name: 'CreateMultiplexProgramResponse')
    CreateMultiplexProgramResultModel = Shapes::StructureShape.new(name: 'CreateMultiplexProgramResultModel')
    CreateMultiplexRequest = Shapes::StructureShape.new(name: 'CreateMultiplexRequest')
    CreateMultiplexResponse = Shapes::StructureShape.new(name: 'CreateMultiplexResponse')
    CreateMultiplexResultModel = Shapes::StructureShape.new(name: 'CreateMultiplexResultModel')
    CreateTagsRequest = Shapes::StructureShape.new(name: 'CreateTagsRequest')
    DeleteChannelRequest = Shapes::StructureShape.new(name: 'DeleteChannelRequest')
    DeleteChannelResponse = Shapes::StructureShape.new(name: 'DeleteChannelResponse')
    DeleteInputRequest = Shapes::StructureShape.new(name: 'DeleteInputRequest')
    DeleteInputResponse = Shapes::StructureShape.new(name: 'DeleteInputResponse')
    DeleteInputSecurityGroupRequest = Shapes::StructureShape.new(name: 'DeleteInputSecurityGroupRequest')
    DeleteInputSecurityGroupResponse = Shapes::StructureShape.new(name: 'DeleteInputSecurityGroupResponse')
    DeleteMultiplexProgramRequest = Shapes::StructureShape.new(name: 'DeleteMultiplexProgramRequest')
    DeleteMultiplexProgramResponse = Shapes::StructureShape.new(name: 'DeleteMultiplexProgramResponse')
    DeleteMultiplexRequest = Shapes::StructureShape.new(name: 'DeleteMultiplexRequest')
    DeleteMultiplexResponse = Shapes::StructureShape.new(name: 'DeleteMultiplexResponse')
    DeleteReservationRequest = Shapes::StructureShape.new(name: 'DeleteReservationRequest')
    DeleteReservationResponse = Shapes::StructureShape.new(name: 'DeleteReservationResponse')
    DeleteScheduleRequest = Shapes::StructureShape.new(name: 'DeleteScheduleRequest')
    DeleteScheduleResponse = Shapes::StructureShape.new(name: 'DeleteScheduleResponse')
    DeleteTagsRequest = Shapes::StructureShape.new(name: 'DeleteTagsRequest')
    DescribeChannelRequest = Shapes::StructureShape.new(name: 'DescribeChannelRequest')
    DescribeChannelResponse = Shapes::StructureShape.new(name: 'DescribeChannelResponse')
    DescribeInputDeviceRequest = Shapes::StructureShape.new(name: 'DescribeInputDeviceRequest')
    DescribeInputDeviceResponse = Shapes::StructureShape.new(name: 'DescribeInputDeviceResponse')
    DescribeInputDeviceThumbnailRequest = Shapes::StructureShape.new(name: 'DescribeInputDeviceThumbnailRequest')
    DescribeInputDeviceThumbnailResponse = Shapes::StructureShape.new(name: 'DescribeInputDeviceThumbnailResponse')
    DescribeInputRequest = Shapes::StructureShape.new(name: 'DescribeInputRequest')
    DescribeInputResponse = Shapes::StructureShape.new(name: 'DescribeInputResponse')
    DescribeInputSecurityGroupRequest = Shapes::StructureShape.new(name: 'DescribeInputSecurityGroupRequest')
    DescribeInputSecurityGroupResponse = Shapes::StructureShape.new(name: 'DescribeInputSecurityGroupResponse')
    DescribeMultiplexProgramRequest = Shapes::StructureShape.new(name: 'DescribeMultiplexProgramRequest')
    DescribeMultiplexProgramResponse = Shapes::StructureShape.new(name: 'DescribeMultiplexProgramResponse')
    DescribeMultiplexRequest = Shapes::StructureShape.new(name: 'DescribeMultiplexRequest')
    DescribeMultiplexResponse = Shapes::StructureShape.new(name: 'DescribeMultiplexResponse')
    DescribeOfferingRequest = Shapes::StructureShape.new(name: 'DescribeOfferingRequest')
    DescribeOfferingResponse = Shapes::StructureShape.new(name: 'DescribeOfferingResponse')
    DescribeReservationRequest = Shapes::StructureShape.new(name: 'DescribeReservationRequest')
    DescribeReservationResponse = Shapes::StructureShape.new(name: 'DescribeReservationResponse')
    DescribeScheduleRequest = Shapes::StructureShape.new(name: 'DescribeScheduleRequest')
    DescribeScheduleResponse = Shapes::StructureShape.new(name: 'DescribeScheduleResponse')
    DeviceSettingsSyncState = Shapes::StringShape.new(name: 'DeviceSettingsSyncState')
    DvbNitSettings = Shapes::StructureShape.new(name: 'DvbNitSettings')
    DvbSdtOutputSdt = Shapes::StringShape.new(name: 'DvbSdtOutputSdt')
    DvbSdtSettings = Shapes::StructureShape.new(name: 'DvbSdtSettings')
    DvbSubDestinationAlignment = Shapes::StringShape.new(name: 'DvbSubDestinationAlignment')
    DvbSubDestinationBackgroundColor = Shapes::StringShape.new(name: 'DvbSubDestinationBackgroundColor')
    DvbSubDestinationFontColor = Shapes::StringShape.new(name: 'DvbSubDestinationFontColor')
    DvbSubDestinationOutlineColor = Shapes::StringShape.new(name: 'DvbSubDestinationOutlineColor')
    DvbSubDestinationSettings = Shapes::StructureShape.new(name: 'DvbSubDestinationSettings')
    DvbSubDestinationShadowColor = Shapes::StringShape.new(name: 'DvbSubDestinationShadowColor')
    DvbSubDestinationTeletextGridControl = Shapes::StringShape.new(name: 'DvbSubDestinationTeletextGridControl')
    DvbSubSourceSettings = Shapes::StructureShape.new(name: 'DvbSubSourceSettings')
    DvbTdtSettings = Shapes::StructureShape.new(name: 'DvbTdtSettings')
    Eac3AttenuationControl = Shapes::StringShape.new(name: 'Eac3AttenuationControl')
    Eac3BitstreamMode = Shapes::StringShape.new(name: 'Eac3BitstreamMode')
    Eac3CodingMode = Shapes::StringShape.new(name: 'Eac3CodingMode')
    Eac3DcFilter = Shapes::StringShape.new(name: 'Eac3DcFilter')
    Eac3DrcLine = Shapes::StringShape.new(name: 'Eac3DrcLine')
    Eac3DrcRf = Shapes::StringShape.new(name: 'Eac3DrcRf')
    Eac3LfeControl = Shapes::StringShape.new(name: 'Eac3LfeControl')
    Eac3LfeFilter = Shapes::StringShape.new(name: 'Eac3LfeFilter')
    Eac3MetadataControl = Shapes::StringShape.new(name: 'Eac3MetadataControl')
    Eac3PassthroughControl = Shapes::StringShape.new(name: 'Eac3PassthroughControl')
    Eac3PhaseControl = Shapes::StringShape.new(name: 'Eac3PhaseControl')
    Eac3Settings = Shapes::StructureShape.new(name: 'Eac3Settings')
    Eac3StereoDownmix = Shapes::StringShape.new(name: 'Eac3StereoDownmix')
    Eac3SurroundExMode = Shapes::StringShape.new(name: 'Eac3SurroundExMode')
    Eac3SurroundMode = Shapes::StringShape.new(name: 'Eac3SurroundMode')
    EbuTtDDestinationSettings = Shapes::StructureShape.new(name: 'EbuTtDDestinationSettings')
    EbuTtDDestinationStyleControl = Shapes::StringShape.new(name: 'EbuTtDDestinationStyleControl')
    EbuTtDFillLineGapControl = Shapes::StringShape.new(name: 'EbuTtDFillLineGapControl')
    EmbeddedConvert608To708 = Shapes::StringShape.new(name: 'EmbeddedConvert608To708')
    EmbeddedDestinationSettings = Shapes::StructureShape.new(name: 'EmbeddedDestinationSettings')
    EmbeddedPlusScte20DestinationSettings = Shapes::StructureShape.new(name: 'EmbeddedPlusScte20DestinationSettings')
    EmbeddedScte20Detection = Shapes::StringShape.new(name: 'EmbeddedScte20Detection')
    EmbeddedSourceSettings = Shapes::StructureShape.new(name: 'EmbeddedSourceSettings')
    Empty = Shapes::StructureShape.new(name: 'Empty')
    EncoderSettings = Shapes::StructureShape.new(name: 'EncoderSettings')
    FeatureActivations = Shapes::StructureShape.new(name: 'FeatureActivations')
    FeatureActivationsInputPrepareScheduleActions = Shapes::StringShape.new(name: 'FeatureActivationsInputPrepareScheduleActions')
    FecOutputIncludeFec = Shapes::StringShape.new(name: 'FecOutputIncludeFec')
    FecOutputSettings = Shapes::StructureShape.new(name: 'FecOutputSettings')
    FixedAfd = Shapes::StringShape.new(name: 'FixedAfd')
    FixedModeScheduleActionStartSettings = Shapes::StructureShape.new(name: 'FixedModeScheduleActionStartSettings')
    Fmp4HlsSettings = Shapes::StructureShape.new(name: 'Fmp4HlsSettings')
    Fmp4NielsenId3Behavior = Shapes::StringShape.new(name: 'Fmp4NielsenId3Behavior')
    Fmp4TimedMetadataBehavior = Shapes::StringShape.new(name: 'Fmp4TimedMetadataBehavior')
    FollowModeScheduleActionStartSettings = Shapes::StructureShape.new(name: 'FollowModeScheduleActionStartSettings')
    FollowPoint = Shapes::StringShape.new(name: 'FollowPoint')
    ForbiddenException = Shapes::StructureShape.new(name: 'ForbiddenException')
    FrameCaptureGroupSettings = Shapes::StructureShape.new(name: 'FrameCaptureGroupSettings')
    FrameCaptureIntervalUnit = Shapes::StringShape.new(name: 'FrameCaptureIntervalUnit')
    FrameCaptureOutputSettings = Shapes::StructureShape.new(name: 'FrameCaptureOutputSettings')
    FrameCaptureSettings = Shapes::StructureShape.new(name: 'FrameCaptureSettings')
    GatewayTimeoutException = Shapes::StructureShape.new(name: 'GatewayTimeoutException')
    GlobalConfiguration = Shapes::StructureShape.new(name: 'GlobalConfiguration')
    GlobalConfigurationInputEndAction = Shapes::StringShape.new(name: 'GlobalConfigurationInputEndAction')
    GlobalConfigurationLowFramerateInputs = Shapes::StringShape.new(name: 'GlobalConfigurationLowFramerateInputs')
    GlobalConfigurationOutputLockingMode = Shapes::StringShape.new(name: 'GlobalConfigurationOutputLockingMode')
    GlobalConfigurationOutputTimingSource = Shapes::StringShape.new(name: 'GlobalConfigurationOutputTimingSource')
    H264AdaptiveQuantization = Shapes::StringShape.new(name: 'H264AdaptiveQuantization')
    H264ColorMetadata = Shapes::StringShape.new(name: 'H264ColorMetadata')
    H264ColorSpaceSettings = Shapes::StructureShape.new(name: 'H264ColorSpaceSettings')
    H264EntropyEncoding = Shapes::StringShape.new(name: 'H264EntropyEncoding')
    H264FilterSettings = Shapes::StructureShape.new(name: 'H264FilterSettings')
    H264FlickerAq = Shapes::StringShape.new(name: 'H264FlickerAq')
    H264ForceFieldPictures = Shapes::StringShape.new(name: 'H264ForceFieldPictures')
    H264FramerateControl = Shapes::StringShape.new(name: 'H264FramerateControl')
    H264GopBReference = Shapes::StringShape.new(name: 'H264GopBReference')
    H264GopSizeUnits = Shapes::StringShape.new(name: 'H264GopSizeUnits')
    H264Level = Shapes::StringShape.new(name: 'H264Level')
    H264LookAheadRateControl = Shapes::StringShape.new(name: 'H264LookAheadRateControl')
    H264ParControl = Shapes::StringShape.new(name: 'H264ParControl')
    H264Profile = Shapes::StringShape.new(name: 'H264Profile')
    H264QualityLevel = Shapes::StringShape.new(name: 'H264QualityLevel')
    H264RateControlMode = Shapes::StringShape.new(name: 'H264RateControlMode')
    H264ScanType = Shapes::StringShape.new(name: 'H264ScanType')
    H264SceneChangeDetect = Shapes::StringShape.new(name: 'H264SceneChangeDetect')
    H264Settings = Shapes::StructureShape.new(name: 'H264Settings')
    H264SpatialAq = Shapes::StringShape.new(name: 'H264SpatialAq')
    H264SubGopLength = Shapes::StringShape.new(name: 'H264SubGopLength')
    H264Syntax = Shapes::StringShape.new(name: 'H264Syntax')
    H264TemporalAq = Shapes::StringShape.new(name: 'H264TemporalAq')
    H264TimecodeInsertionBehavior = Shapes::StringShape.new(name: 'H264TimecodeInsertionBehavior')
    H265AdaptiveQuantization = Shapes::StringShape.new(name: 'H265AdaptiveQuantization')
    H265AlternativeTransferFunction = Shapes::StringShape.new(name: 'H265AlternativeTransferFunction')
    H265ColorMetadata = Shapes::StringShape.new(name: 'H265ColorMetadata')
    H265ColorSpaceSettings = Shapes::StructureShape.new(name: 'H265ColorSpaceSettings')
    H265FilterSettings = Shapes::StructureShape.new(name: 'H265FilterSettings')
    H265FlickerAq = Shapes::StringShape.new(name: 'H265FlickerAq')
    H265GopSizeUnits = Shapes::StringShape.new(name: 'H265GopSizeUnits')
    H265Level = Shapes::StringShape.new(name: 'H265Level')
    H265LookAheadRateControl = Shapes::StringShape.new(name: 'H265LookAheadRateControl')
    H265Profile = Shapes::StringShape.new(name: 'H265Profile')
    H265RateControlMode = Shapes::StringShape.new(name: 'H265RateControlMode')
    H265ScanType = Shapes::StringShape.new(name: 'H265ScanType')
    H265SceneChangeDetect = Shapes::StringShape.new(name: 'H265SceneChangeDetect')
    H265Settings = Shapes::StructureShape.new(name: 'H265Settings')
    H265Tier = Shapes::StringShape.new(name: 'H265Tier')
    H265TimecodeInsertionBehavior = Shapes::StringShape.new(name: 'H265TimecodeInsertionBehavior')
    Hdr10Settings = Shapes::StructureShape.new(name: 'Hdr10Settings')
    HlsAdMarkers = Shapes::StringShape.new(name: 'HlsAdMarkers')
    HlsAkamaiHttpTransferMode = Shapes::StringShape.new(name: 'HlsAkamaiHttpTransferMode')
    HlsAkamaiSettings = Shapes::StructureShape.new(name: 'HlsAkamaiSettings')
    HlsBasicPutSettings = Shapes::StructureShape.new(name: 'HlsBasicPutSettings')
    HlsCaptionLanguageSetting = Shapes::StringShape.new(name: 'HlsCaptionLanguageSetting')
    HlsCdnSettings = Shapes::StructureShape.new(name: 'HlsCdnSettings')
    HlsClientCache = Shapes::StringShape.new(name: 'HlsClientCache')
    HlsCodecSpecification = Shapes::StringShape.new(name: 'HlsCodecSpecification')
    HlsDirectoryStructure = Shapes::StringShape.new(name: 'HlsDirectoryStructure')
    HlsEncryptionType = Shapes::StringShape.new(name: 'HlsEncryptionType')
    HlsGroupSettings = Shapes::StructureShape.new(name: 'HlsGroupSettings')
    HlsH265PackagingType = Shapes::StringShape.new(name: 'HlsH265PackagingType')
    HlsId3SegmentTaggingScheduleActionSettings = Shapes::StructureShape.new(name: 'HlsId3SegmentTaggingScheduleActionSettings')
    HlsId3SegmentTaggingState = Shapes::StringShape.new(name: 'HlsId3SegmentTaggingState')
    HlsInputSettings = Shapes::StructureShape.new(name: 'HlsInputSettings')
    HlsIvInManifest = Shapes::StringShape.new(name: 'HlsIvInManifest')
    HlsIvSource = Shapes::StringShape.new(name: 'HlsIvSource')
    HlsManifestCompression = Shapes::StringShape.new(name: 'HlsManifestCompression')
    HlsManifestDurationFormat = Shapes::StringShape.new(name: 'HlsManifestDurationFormat')
    HlsMediaStoreSettings = Shapes::StructureShape.new(name: 'HlsMediaStoreSettings')
    HlsMediaStoreStorageClass = Shapes::StringShape.new(name: 'HlsMediaStoreStorageClass')
    HlsMode = Shapes::StringShape.new(name: 'HlsMode')
    HlsOutputSelection = Shapes::StringShape.new(name: 'HlsOutputSelection')
    HlsOutputSettings = Shapes::StructureShape.new(name: 'HlsOutputSettings')
    HlsProgramDateTime = Shapes::StringShape.new(name: 'HlsProgramDateTime')
    HlsRedundantManifest = Shapes::StringShape.new(name: 'HlsRedundantManifest')
    HlsSegmentationMode = Shapes::StringShape.new(name: 'HlsSegmentationMode')
    HlsSettings = Shapes::StructureShape.new(name: 'HlsSettings')
    HlsStreamInfResolution = Shapes::StringShape.new(name: 'HlsStreamInfResolution')
    HlsTimedMetadataId3Frame = Shapes::StringShape.new(name: 'HlsTimedMetadataId3Frame')
    HlsTimedMetadataScheduleActionSettings = Shapes::StructureShape.new(name: 'HlsTimedMetadataScheduleActionSettings')
    HlsTsFileMode = Shapes::StringShape.new(name: 'HlsTsFileMode')
    HlsWebdavHttpTransferMode = Shapes::StringShape.new(name: 'HlsWebdavHttpTransferMode')
    HlsWebdavSettings = Shapes::StructureShape.new(name: 'HlsWebdavSettings')
    IFrameOnlyPlaylistType = Shapes::StringShape.new(name: 'IFrameOnlyPlaylistType')
    ImmediateModeScheduleActionStartSettings = Shapes::StructureShape.new(name: 'ImmediateModeScheduleActionStartSettings')
    Input = Shapes::StructureShape.new(name: 'Input')
    InputAttachment = Shapes::StructureShape.new(name: 'InputAttachment')
    InputChannelLevel = Shapes::StructureShape.new(name: 'InputChannelLevel')
    InputClass = Shapes::StringShape.new(name: 'InputClass')
    InputClippingSettings = Shapes::StructureShape.new(name: 'InputClippingSettings')
    InputCodec = Shapes::StringShape.new(name: 'InputCodec')
    InputDeblockFilter = Shapes::StringShape.new(name: 'InputDeblockFilter')
    InputDenoiseFilter = Shapes::StringShape.new(name: 'InputDenoiseFilter')
    InputDestination = Shapes::StructureShape.new(name: 'InputDestination')
    InputDestinationRequest = Shapes::StructureShape.new(name: 'InputDestinationRequest')
    InputDestinationVpc = Shapes::StructureShape.new(name: 'InputDestinationVpc')
    InputDevice = Shapes::StructureShape.new(name: 'InputDevice')
    InputDeviceActiveInput = Shapes::StringShape.new(name: 'InputDeviceActiveInput')
    InputDeviceConfigurableSettings = Shapes::StructureShape.new(name: 'InputDeviceConfigurableSettings')
    InputDeviceConfigurationValidationError = Shapes::StructureShape.new(name: 'InputDeviceConfigurationValidationError')
    InputDeviceConfiguredInput = Shapes::StringShape.new(name: 'InputDeviceConfiguredInput')
    InputDeviceConnectionState = Shapes::StringShape.new(name: 'InputDeviceConnectionState')
    InputDeviceHdSettings = Shapes::StructureShape.new(name: 'InputDeviceHdSettings')
    InputDeviceIpScheme = Shapes::StringShape.new(name: 'InputDeviceIpScheme')
    InputDeviceNetworkSettings = Shapes::StructureShape.new(name: 'InputDeviceNetworkSettings')
    InputDeviceRequest = Shapes::StructureShape.new(name: 'InputDeviceRequest')
    InputDeviceScanType = Shapes::StringShape.new(name: 'InputDeviceScanType')
    InputDeviceSettings = Shapes::StructureShape.new(name: 'InputDeviceSettings')
    InputDeviceState = Shapes::StringShape.new(name: 'InputDeviceState')
    InputDeviceSummary = Shapes::StructureShape.new(name: 'InputDeviceSummary')
    InputDeviceThumbnail = Shapes::BlobShape.new(name: 'InputDeviceThumbnail', streaming: true)
    InputDeviceTransferType = Shapes::StringShape.new(name: 'InputDeviceTransferType')
    InputDeviceType = Shapes::StringShape.new(name: 'InputDeviceType')
    InputFilter = Shapes::StringShape.new(name: 'InputFilter')
    InputLocation = Shapes::StructureShape.new(name: 'InputLocation')
    InputLossActionForHlsOut = Shapes::StringShape.new(name: 'InputLossActionForHlsOut')
    InputLossActionForMsSmoothOut = Shapes::StringShape.new(name: 'InputLossActionForMsSmoothOut')
    InputLossActionForRtmpOut = Shapes::StringShape.new(name: 'InputLossActionForRtmpOut')
    InputLossActionForUdpOut = Shapes::StringShape.new(name: 'InputLossActionForUdpOut')
    InputLossBehavior = Shapes::StructureShape.new(name: 'InputLossBehavior')
    InputLossImageType = Shapes::StringShape.new(name: 'InputLossImageType')
    InputMaximumBitrate = Shapes::StringShape.new(name: 'InputMaximumBitrate')
    InputPreference = Shapes::StringShape.new(name: 'InputPreference')
    InputPrepareScheduleActionSettings = Shapes::StructureShape.new(name: 'InputPrepareScheduleActionSettings')
    InputResolution = Shapes::StringShape.new(name: 'InputResolution')
    InputSecurityGroup = Shapes::StructureShape.new(name: 'InputSecurityGroup')
    InputSecurityGroupState = Shapes::StringShape.new(name: 'InputSecurityGroupState')
    InputSecurityGroupWhitelistRequest = Shapes::StructureShape.new(name: 'InputSecurityGroupWhitelistRequest')
    InputSettings = Shapes::StructureShape.new(name: 'InputSettings')
    InputSource = Shapes::StructureShape.new(name: 'InputSource')
    InputSourceEndBehavior = Shapes::StringShape.new(name: 'InputSourceEndBehavior')
    InputSourceRequest = Shapes::StructureShape.new(name: 'InputSourceRequest')
    InputSourceType = Shapes::StringShape.new(name: 'InputSourceType')
    InputSpecification = Shapes::StructureShape.new(name: 'InputSpecification')
    InputState = Shapes::StringShape.new(name: 'InputState')
    InputSwitchScheduleActionSettings = Shapes::StructureShape.new(name: 'InputSwitchScheduleActionSettings')
    InputTimecodeSource = Shapes::StringShape.new(name: 'InputTimecodeSource')
    InputType = Shapes::StringShape.new(name: 'InputType')
    InputVpcRequest = Shapes::StructureShape.new(name: 'InputVpcRequest')
    InputWhitelistRule = Shapes::StructureShape.new(name: 'InputWhitelistRule')
    InputWhitelistRuleCidr = Shapes::StructureShape.new(name: 'InputWhitelistRuleCidr')
    InternalServerErrorException = Shapes::StructureShape.new(name: 'InternalServerErrorException')
    InternalServiceError = Shapes::StructureShape.new(name: 'InternalServiceError')
    InvalidRequest = Shapes::StructureShape.new(name: 'InvalidRequest')
    KeyProviderSettings = Shapes::StructureShape.new(name: 'KeyProviderSettings')
    LastFrameClippingBehavior = Shapes::StringShape.new(name: 'LastFrameClippingBehavior')
    LimitExceeded = Shapes::StructureShape.new(name: 'LimitExceeded')
    ListChannelsRequest = Shapes::StructureShape.new(name: 'ListChannelsRequest')
    ListChannelsResponse = Shapes::StructureShape.new(name: 'ListChannelsResponse')
    ListChannelsResultModel = Shapes::StructureShape.new(name: 'ListChannelsResultModel')
    ListInputDeviceTransfersRequest = Shapes::StructureShape.new(name: 'ListInputDeviceTransfersRequest')
    ListInputDeviceTransfersResponse = Shapes::StructureShape.new(name: 'ListInputDeviceTransfersResponse')
    ListInputDeviceTransfersResultModel = Shapes::StructureShape.new(name: 'ListInputDeviceTransfersResultModel')
    ListInputDevicesRequest = Shapes::StructureShape.new(name: 'ListInputDevicesRequest')
    ListInputDevicesResponse = Shapes::StructureShape.new(name: 'ListInputDevicesResponse')
    ListInputDevicesResultModel = Shapes::StructureShape.new(name: 'ListInputDevicesResultModel')
    ListInputSecurityGroupsRequest = Shapes::StructureShape.new(name: 'ListInputSecurityGroupsRequest')
    ListInputSecurityGroupsResponse = Shapes::StructureShape.new(name: 'ListInputSecurityGroupsResponse')
    ListInputSecurityGroupsResultModel = Shapes::StructureShape.new(name: 'ListInputSecurityGroupsResultModel')
    ListInputsRequest = Shapes::StructureShape.new(name: 'ListInputsRequest')
    ListInputsResponse = Shapes::StructureShape.new(name: 'ListInputsResponse')
    ListInputsResultModel = Shapes::StructureShape.new(name: 'ListInputsResultModel')
    ListMultiplexProgramsRequest = Shapes::StructureShape.new(name: 'ListMultiplexProgramsRequest')
    ListMultiplexProgramsResponse = Shapes::StructureShape.new(name: 'ListMultiplexProgramsResponse')
    ListMultiplexProgramsResultModel = Shapes::StructureShape.new(name: 'ListMultiplexProgramsResultModel')
    ListMultiplexesRequest = Shapes::StructureShape.new(name: 'ListMultiplexesRequest')
    ListMultiplexesResponse = Shapes::StructureShape.new(name: 'ListMultiplexesResponse')
    ListMultiplexesResultModel = Shapes::StructureShape.new(name: 'ListMultiplexesResultModel')
    ListOfferingsRequest = Shapes::StructureShape.new(name: 'ListOfferingsRequest')
    ListOfferingsResponse = Shapes::StructureShape.new(name: 'ListOfferingsResponse')
    ListOfferingsResultModel = Shapes::StructureShape.new(name: 'ListOfferingsResultModel')
    ListReservationsRequest = Shapes::StructureShape.new(name: 'ListReservationsRequest')
    ListReservationsResponse = Shapes::StructureShape.new(name: 'ListReservationsResponse')
    ListReservationsResultModel = Shapes::StructureShape.new(name: 'ListReservationsResultModel')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    LogLevel = Shapes::StringShape.new(name: 'LogLevel')
    M2tsAbsentInputAudioBehavior = Shapes::StringShape.new(name: 'M2tsAbsentInputAudioBehavior')
    M2tsArib = Shapes::StringShape.new(name: 'M2tsArib')
    M2tsAribCaptionsPidControl = Shapes::StringShape.new(name: 'M2tsAribCaptionsPidControl')
    M2tsAudioBufferModel = Shapes::StringShape.new(name: 'M2tsAudioBufferModel')
    M2tsAudioInterval = Shapes::StringShape.new(name: 'M2tsAudioInterval')
    M2tsAudioStreamType = Shapes::StringShape.new(name: 'M2tsAudioStreamType')
    M2tsBufferModel = Shapes::StringShape.new(name: 'M2tsBufferModel')
    M2tsCcDescriptor = Shapes::StringShape.new(name: 'M2tsCcDescriptor')
    M2tsEbifControl = Shapes::StringShape.new(name: 'M2tsEbifControl')
    M2tsEbpPlacement = Shapes::StringShape.new(name: 'M2tsEbpPlacement')
    M2tsEsRateInPes = Shapes::StringShape.new(name: 'M2tsEsRateInPes')
    M2tsKlv = Shapes::StringShape.new(name: 'M2tsKlv')
    M2tsNielsenId3Behavior = Shapes::StringShape.new(name: 'M2tsNielsenId3Behavior')
    M2tsPcrControl = Shapes::StringShape.new(name: 'M2tsPcrControl')
    M2tsRateMode = Shapes::StringShape.new(name: 'M2tsRateMode')
    M2tsScte35Control = Shapes::StringShape.new(name: 'M2tsScte35Control')
    M2tsSegmentationMarkers = Shapes::StringShape.new(name: 'M2tsSegmentationMarkers')
    M2tsSegmentationStyle = Shapes::StringShape.new(name: 'M2tsSegmentationStyle')
    M2tsSettings = Shapes::StructureShape.new(name: 'M2tsSettings')
    M2tsTimedMetadataBehavior = Shapes::StringShape.new(name: 'M2tsTimedMetadataBehavior')
    M3u8NielsenId3Behavior = Shapes::StringShape.new(name: 'M3u8NielsenId3Behavior')
    M3u8PcrControl = Shapes::StringShape.new(name: 'M3u8PcrControl')
    M3u8Scte35Behavior = Shapes::StringShape.new(name: 'M3u8Scte35Behavior')
    M3u8Settings = Shapes::StructureShape.new(name: 'M3u8Settings')
    M3u8TimedMetadataBehavior = Shapes::StringShape.new(name: 'M3u8TimedMetadataBehavior')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MediaConnectFlow = Shapes::StructureShape.new(name: 'MediaConnectFlow')
    MediaConnectFlowRequest = Shapes::StructureShape.new(name: 'MediaConnectFlowRequest')
    MediaPackageGroupSettings = Shapes::StructureShape.new(name: 'MediaPackageGroupSettings')
    MediaPackageOutputDestinationSettings = Shapes::StructureShape.new(name: 'MediaPackageOutputDestinationSettings')
    MediaPackageOutputSettings = Shapes::StructureShape.new(name: 'MediaPackageOutputSettings')
    Mp2CodingMode = Shapes::StringShape.new(name: 'Mp2CodingMode')
    Mp2Settings = Shapes::StructureShape.new(name: 'Mp2Settings')
    Mpeg2AdaptiveQuantization = Shapes::StringShape.new(name: 'Mpeg2AdaptiveQuantization')
    Mpeg2ColorMetadata = Shapes::StringShape.new(name: 'Mpeg2ColorMetadata')
    Mpeg2ColorSpace = Shapes::StringShape.new(name: 'Mpeg2ColorSpace')
    Mpeg2DisplayRatio = Shapes::StringShape.new(name: 'Mpeg2DisplayRatio')
    Mpeg2FilterSettings = Shapes::StructureShape.new(name: 'Mpeg2FilterSettings')
    Mpeg2GopSizeUnits = Shapes::StringShape.new(name: 'Mpeg2GopSizeUnits')
    Mpeg2ScanType = Shapes::StringShape.new(name: 'Mpeg2ScanType')
    Mpeg2Settings = Shapes::StructureShape.new(name: 'Mpeg2Settings')
    Mpeg2SubGopLength = Shapes::StringShape.new(name: 'Mpeg2SubGopLength')
    Mpeg2TimecodeInsertionBehavior = Shapes::StringShape.new(name: 'Mpeg2TimecodeInsertionBehavior')
    MsSmoothGroupSettings = Shapes::StructureShape.new(name: 'MsSmoothGroupSettings')
    MsSmoothH265PackagingType = Shapes::StringShape.new(name: 'MsSmoothH265PackagingType')
    MsSmoothOutputSettings = Shapes::StructureShape.new(name: 'MsSmoothOutputSettings')
    Multiplex = Shapes::StructureShape.new(name: 'Multiplex')
    MultiplexConfigurationValidationError = Shapes::StructureShape.new(name: 'MultiplexConfigurationValidationError')
    MultiplexGroupSettings = Shapes::StructureShape.new(name: 'MultiplexGroupSettings')
    MultiplexMediaConnectOutputDestinationSettings = Shapes::StructureShape.new(name: 'MultiplexMediaConnectOutputDestinationSettings')
    MultiplexOutputDestination = Shapes::StructureShape.new(name: 'MultiplexOutputDestination')
    MultiplexOutputSettings = Shapes::StructureShape.new(name: 'MultiplexOutputSettings')
    MultiplexProgram = Shapes::StructureShape.new(name: 'MultiplexProgram')
    MultiplexProgramChannelDestinationSettings = Shapes::StructureShape.new(name: 'MultiplexProgramChannelDestinationSettings')
    MultiplexProgramPacketIdentifiersMap = Shapes::StructureShape.new(name: 'MultiplexProgramPacketIdentifiersMap')
    MultiplexProgramPipelineDetail = Shapes::StructureShape.new(name: 'MultiplexProgramPipelineDetail')
    MultiplexProgramServiceDescriptor = Shapes::StructureShape.new(name: 'MultiplexProgramServiceDescriptor')
    MultiplexProgramSettings = Shapes::StructureShape.new(name: 'MultiplexProgramSettings')
    MultiplexProgramSummary = Shapes::StructureShape.new(name: 'MultiplexProgramSummary')
    MultiplexSettings = Shapes::StructureShape.new(name: 'MultiplexSettings')
    MultiplexSettingsSummary = Shapes::StructureShape.new(name: 'MultiplexSettingsSummary')
    MultiplexState = Shapes::StringShape.new(name: 'MultiplexState')
    MultiplexStatmuxVideoSettings = Shapes::StructureShape.new(name: 'MultiplexStatmuxVideoSettings')
    MultiplexSummary = Shapes::StructureShape.new(name: 'MultiplexSummary')
    MultiplexVideoSettings = Shapes::StructureShape.new(name: 'MultiplexVideoSettings')
    NetworkInputServerValidation = Shapes::StringShape.new(name: 'NetworkInputServerValidation')
    NetworkInputSettings = Shapes::StructureShape.new(name: 'NetworkInputSettings')
    NielsenConfiguration = Shapes::StructureShape.new(name: 'NielsenConfiguration')
    NielsenPcmToId3TaggingState = Shapes::StringShape.new(name: 'NielsenPcmToId3TaggingState')
    NotFoundException = Shapes::StructureShape.new(name: 'NotFoundException')
    Offering = Shapes::StructureShape.new(name: 'Offering')
    OfferingDurationUnits = Shapes::StringShape.new(name: 'OfferingDurationUnits')
    OfferingType = Shapes::StringShape.new(name: 'OfferingType')
    Output = Shapes::StructureShape.new(name: 'Output')
    OutputDestination = Shapes::StructureShape.new(name: 'OutputDestination')
    OutputDestinationSettings = Shapes::StructureShape.new(name: 'OutputDestinationSettings')
    OutputGroup = Shapes::StructureShape.new(name: 'OutputGroup')
    OutputGroupSettings = Shapes::StructureShape.new(name: 'OutputGroupSettings')
    OutputLocationRef = Shapes::StructureShape.new(name: 'OutputLocationRef')
    OutputSettings = Shapes::StructureShape.new(name: 'OutputSettings')
    PassThroughSettings = Shapes::StructureShape.new(name: 'PassThroughSettings')
    PauseStateScheduleActionSettings = Shapes::StructureShape.new(name: 'PauseStateScheduleActionSettings')
    PipelineDetail = Shapes::StructureShape.new(name: 'PipelineDetail')
    PipelineId = Shapes::StringShape.new(name: 'PipelineId')
    PipelinePauseStateSettings = Shapes::StructureShape.new(name: 'PipelinePauseStateSettings')
    PreferredChannelPipeline = Shapes::StringShape.new(name: 'PreferredChannelPipeline')
    PurchaseOffering = Shapes::StructureShape.new(name: 'PurchaseOffering')
    PurchaseOfferingRequest = Shapes::StructureShape.new(name: 'PurchaseOfferingRequest')
    PurchaseOfferingResponse = Shapes::StructureShape.new(name: 'PurchaseOfferingResponse')
    PurchaseOfferingResultModel = Shapes::StructureShape.new(name: 'PurchaseOfferingResultModel')
    RawSettings = Shapes::StructureShape.new(name: 'RawSettings')
    Rec601Settings = Shapes::StructureShape.new(name: 'Rec601Settings')
    Rec709Settings = Shapes::StructureShape.new(name: 'Rec709Settings')
    RejectInputDeviceTransferRequest = Shapes::StructureShape.new(name: 'RejectInputDeviceTransferRequest')
    RejectInputDeviceTransferResponse = Shapes::StructureShape.new(name: 'RejectInputDeviceTransferResponse')
    RemixSettings = Shapes::StructureShape.new(name: 'RemixSettings')
    Reservation = Shapes::StructureShape.new(name: 'Reservation')
    ReservationCodec = Shapes::StringShape.new(name: 'ReservationCodec')
    ReservationMaximumBitrate = Shapes::StringShape.new(name: 'ReservationMaximumBitrate')
    ReservationMaximumFramerate = Shapes::StringShape.new(name: 'ReservationMaximumFramerate')
    ReservationResolution = Shapes::StringShape.new(name: 'ReservationResolution')
    ReservationResourceSpecification = Shapes::StructureShape.new(name: 'ReservationResourceSpecification')
    ReservationResourceType = Shapes::StringShape.new(name: 'ReservationResourceType')
    ReservationSpecialFeature = Shapes::StringShape.new(name: 'ReservationSpecialFeature')
    ReservationState = Shapes::StringShape.new(name: 'ReservationState')
    ReservationVideoQuality = Shapes::StringShape.new(name: 'ReservationVideoQuality')
    ResourceConflict = Shapes::StructureShape.new(name: 'ResourceConflict')
    ResourceNotFound = Shapes::StructureShape.new(name: 'ResourceNotFound')
    RtmpCacheFullBehavior = Shapes::StringShape.new(name: 'RtmpCacheFullBehavior')
    RtmpCaptionData = Shapes::StringShape.new(name: 'RtmpCaptionData')
    RtmpCaptionInfoDestinationSettings = Shapes::StructureShape.new(name: 'RtmpCaptionInfoDestinationSettings')
    RtmpGroupSettings = Shapes::StructureShape.new(name: 'RtmpGroupSettings')
    RtmpOutputCertificateMode = Shapes::StringShape.new(name: 'RtmpOutputCertificateMode')
    RtmpOutputSettings = Shapes::StructureShape.new(name: 'RtmpOutputSettings')
    ScheduleAction = Shapes::StructureShape.new(name: 'ScheduleAction')
    ScheduleActionSettings = Shapes::StructureShape.new(name: 'ScheduleActionSettings')
    ScheduleActionStartSettings = Shapes::StructureShape.new(name: 'ScheduleActionStartSettings')
    ScheduleDeleteResultModel = Shapes::StructureShape.new(name: 'ScheduleDeleteResultModel')
    ScheduleDescribeResultModel = Shapes::StructureShape.new(name: 'ScheduleDescribeResultModel')
    Scte20Convert608To708 = Shapes::StringShape.new(name: 'Scte20Convert608To708')
    Scte20PlusEmbeddedDestinationSettings = Shapes::StructureShape.new(name: 'Scte20PlusEmbeddedDestinationSettings')
    Scte20SourceSettings = Shapes::StructureShape.new(name: 'Scte20SourceSettings')
    Scte27DestinationSettings = Shapes::StructureShape.new(name: 'Scte27DestinationSettings')
    Scte27SourceSettings = Shapes::StructureShape.new(name: 'Scte27SourceSettings')
    Scte35AposNoRegionalBlackoutBehavior = Shapes::StringShape.new(name: 'Scte35AposNoRegionalBlackoutBehavior')
    Scte35AposWebDeliveryAllowedBehavior = Shapes::StringShape.new(name: 'Scte35AposWebDeliveryAllowedBehavior')
    Scte35ArchiveAllowedFlag = Shapes::StringShape.new(name: 'Scte35ArchiveAllowedFlag')
    Scte35DeliveryRestrictions = Shapes::StructureShape.new(name: 'Scte35DeliveryRestrictions')
    Scte35Descriptor = Shapes::StructureShape.new(name: 'Scte35Descriptor')
    Scte35DescriptorSettings = Shapes::StructureShape.new(name: 'Scte35DescriptorSettings')
    Scte35DeviceRestrictions = Shapes::StringShape.new(name: 'Scte35DeviceRestrictions')
    Scte35NoRegionalBlackoutFlag = Shapes::StringShape.new(name: 'Scte35NoRegionalBlackoutFlag')
    Scte35ReturnToNetworkScheduleActionSettings = Shapes::StructureShape.new(name: 'Scte35ReturnToNetworkScheduleActionSettings')
    Scte35SegmentationCancelIndicator = Shapes::StringShape.new(name: 'Scte35SegmentationCancelIndicator')
    Scte35SegmentationDescriptor = Shapes::StructureShape.new(name: 'Scte35SegmentationDescriptor')
    Scte35SpliceInsert = Shapes::StructureShape.new(name: 'Scte35SpliceInsert')
    Scte35SpliceInsertNoRegionalBlackoutBehavior = Shapes::StringShape.new(name: 'Scte35SpliceInsertNoRegionalBlackoutBehavior')
    Scte35SpliceInsertScheduleActionSettings = Shapes::StructureShape.new(name: 'Scte35SpliceInsertScheduleActionSettings')
    Scte35SpliceInsertWebDeliveryAllowedBehavior = Shapes::StringShape.new(name: 'Scte35SpliceInsertWebDeliveryAllowedBehavior')
    Scte35TimeSignalApos = Shapes::StructureShape.new(name: 'Scte35TimeSignalApos')
    Scte35TimeSignalScheduleActionSettings = Shapes::StructureShape.new(name: 'Scte35TimeSignalScheduleActionSettings')
    Scte35WebDeliveryAllowedFlag = Shapes::StringShape.new(name: 'Scte35WebDeliveryAllowedFlag')
    SmoothGroupAudioOnlyTimecodeControl = Shapes::StringShape.new(name: 'SmoothGroupAudioOnlyTimecodeControl')
    SmoothGroupCertificateMode = Shapes::StringShape.new(name: 'SmoothGroupCertificateMode')
    SmoothGroupEventIdMode = Shapes::StringShape.new(name: 'SmoothGroupEventIdMode')
    SmoothGroupEventStopBehavior = Shapes::StringShape.new(name: 'SmoothGroupEventStopBehavior')
    SmoothGroupSegmentationMode = Shapes::StringShape.new(name: 'SmoothGroupSegmentationMode')
    SmoothGroupSparseTrackType = Shapes::StringShape.new(name: 'SmoothGroupSparseTrackType')
    SmoothGroupStreamManifestBehavior = Shapes::StringShape.new(name: 'SmoothGroupStreamManifestBehavior')
    SmoothGroupTimestampOffsetMode = Shapes::StringShape.new(name: 'SmoothGroupTimestampOffsetMode')
    Smpte2038DataPreference = Shapes::StringShape.new(name: 'Smpte2038DataPreference')
    SmpteTtDestinationSettings = Shapes::StructureShape.new(name: 'SmpteTtDestinationSettings')
    StandardHlsSettings = Shapes::StructureShape.new(name: 'StandardHlsSettings')
    StartChannelRequest = Shapes::StructureShape.new(name: 'StartChannelRequest')
    StartChannelResponse = Shapes::StructureShape.new(name: 'StartChannelResponse')
    StartMultiplexRequest = Shapes::StructureShape.new(name: 'StartMultiplexRequest')
    StartMultiplexResponse = Shapes::StructureShape.new(name: 'StartMultiplexResponse')
    StartTimecode = Shapes::StructureShape.new(name: 'StartTimecode')
    StaticImageActivateScheduleActionSettings = Shapes::StructureShape.new(name: 'StaticImageActivateScheduleActionSettings')
    StaticImageDeactivateScheduleActionSettings = Shapes::StructureShape.new(name: 'StaticImageDeactivateScheduleActionSettings')
    StaticKeySettings = Shapes::StructureShape.new(name: 'StaticKeySettings')
    StopChannelRequest = Shapes::StructureShape.new(name: 'StopChannelRequest')
    StopChannelResponse = Shapes::StructureShape.new(name: 'StopChannelResponse')
    StopMultiplexRequest = Shapes::StructureShape.new(name: 'StopMultiplexRequest')
    StopMultiplexResponse = Shapes::StructureShape.new(name: 'StopMultiplexResponse')
    StopTimecode = Shapes::StructureShape.new(name: 'StopTimecode')
    Tags = Shapes::MapShape.new(name: 'Tags')
    TagsModel = Shapes::StructureShape.new(name: 'TagsModel')
    TeletextDestinationSettings = Shapes::StructureShape.new(name: 'TeletextDestinationSettings')
    TeletextSourceSettings = Shapes::StructureShape.new(name: 'TeletextSourceSettings')
    TemporalFilterPostFilterSharpening = Shapes::StringShape.new(name: 'TemporalFilterPostFilterSharpening')
    TemporalFilterSettings = Shapes::StructureShape.new(name: 'TemporalFilterSettings')
    TemporalFilterStrength = Shapes::StringShape.new(name: 'TemporalFilterStrength')
    ThumbnailData = Shapes::StructureShape.new(name: 'ThumbnailData')
    TimecodeConfig = Shapes::StructureShape.new(name: 'TimecodeConfig')
    TimecodeConfigSource = Shapes::StringShape.new(name: 'TimecodeConfigSource')
    TooManyRequestsException = Shapes::StructureShape.new(name: 'TooManyRequestsException')
    TransferInputDevice = Shapes::StructureShape.new(name: 'TransferInputDevice')
    TransferInputDeviceRequest = Shapes::StructureShape.new(name: 'TransferInputDeviceRequest')
    TransferInputDeviceResponse = Shapes::StructureShape.new(name: 'TransferInputDeviceResponse')
    TransferringInputDeviceSummary = Shapes::StructureShape.new(name: 'TransferringInputDeviceSummary')
    TtmlDestinationSettings = Shapes::StructureShape.new(name: 'TtmlDestinationSettings')
    TtmlDestinationStyleControl = Shapes::StringShape.new(name: 'TtmlDestinationStyleControl')
    UdpContainerSettings = Shapes::StructureShape.new(name: 'UdpContainerSettings')
    UdpGroupSettings = Shapes::StructureShape.new(name: 'UdpGroupSettings')
    UdpOutputSettings = Shapes::StructureShape.new(name: 'UdpOutputSettings')
    UdpTimedMetadataId3Frame = Shapes::StringShape.new(name: 'UdpTimedMetadataId3Frame')
    UnprocessableEntityException = Shapes::StructureShape.new(name: 'UnprocessableEntityException')
    UpdateChannel = Shapes::StructureShape.new(name: 'UpdateChannel')
    UpdateChannelClass = Shapes::StructureShape.new(name: 'UpdateChannelClass')
    UpdateChannelClassRequest = Shapes::StructureShape.new(name: 'UpdateChannelClassRequest')
    UpdateChannelClassResponse = Shapes::StructureShape.new(name: 'UpdateChannelClassResponse')
    UpdateChannelRequest = Shapes::StructureShape.new(name: 'UpdateChannelRequest')
    UpdateChannelResponse = Shapes::StructureShape.new(name: 'UpdateChannelResponse')
    UpdateChannelResultModel = Shapes::StructureShape.new(name: 'UpdateChannelResultModel')
    UpdateInput = Shapes::StructureShape.new(name: 'UpdateInput')
    UpdateInputDevice = Shapes::StructureShape.new(name: 'UpdateInputDevice')
    UpdateInputDeviceRequest = Shapes::StructureShape.new(name: 'UpdateInputDeviceRequest')
    UpdateInputDeviceResponse = Shapes::StructureShape.new(name: 'UpdateInputDeviceResponse')
    UpdateInputRequest = Shapes::StructureShape.new(name: 'UpdateInputRequest')
    UpdateInputResponse = Shapes::StructureShape.new(name: 'UpdateInputResponse')
    UpdateInputResultModel = Shapes::StructureShape.new(name: 'UpdateInputResultModel')
    UpdateInputSecurityGroupRequest = Shapes::StructureShape.new(name: 'UpdateInputSecurityGroupRequest')
    UpdateInputSecurityGroupResponse = Shapes::StructureShape.new(name: 'UpdateInputSecurityGroupResponse')
    UpdateInputSecurityGroupResultModel = Shapes::StructureShape.new(name: 'UpdateInputSecurityGroupResultModel')
    UpdateMultiplex = Shapes::StructureShape.new(name: 'UpdateMultiplex')
    UpdateMultiplexProgram = Shapes::StructureShape.new(name: 'UpdateMultiplexProgram')
    UpdateMultiplexProgramRequest = Shapes::StructureShape.new(name: 'UpdateMultiplexProgramRequest')
    UpdateMultiplexProgramResponse = Shapes::StructureShape.new(name: 'UpdateMultiplexProgramResponse')
    UpdateMultiplexProgramResultModel = Shapes::StructureShape.new(name: 'UpdateMultiplexProgramResultModel')
    UpdateMultiplexRequest = Shapes::StructureShape.new(name: 'UpdateMultiplexRequest')
    UpdateMultiplexResponse = Shapes::StructureShape.new(name: 'UpdateMultiplexResponse')
    UpdateMultiplexResultModel = Shapes::StructureShape.new(name: 'UpdateMultiplexResultModel')
    UpdateReservation = Shapes::StructureShape.new(name: 'UpdateReservation')
    UpdateReservationRequest = Shapes::StructureShape.new(name: 'UpdateReservationRequest')
    UpdateReservationResponse = Shapes::StructureShape.new(name: 'UpdateReservationResponse')
    UpdateReservationResultModel = Shapes::StructureShape.new(name: 'UpdateReservationResultModel')
    ValidationError = Shapes::StructureShape.new(name: 'ValidationError')
    VideoCodecSettings = Shapes::StructureShape.new(name: 'VideoCodecSettings')
    VideoDescription = Shapes::StructureShape.new(name: 'VideoDescription')
    VideoDescriptionRespondToAfd = Shapes::StringShape.new(name: 'VideoDescriptionRespondToAfd')
    VideoDescriptionScalingBehavior = Shapes::StringShape.new(name: 'VideoDescriptionScalingBehavior')
    VideoSelector = Shapes::StructureShape.new(name: 'VideoSelector')
    VideoSelectorColorSpace = Shapes::StringShape.new(name: 'VideoSelectorColorSpace')
    VideoSelectorColorSpaceUsage = Shapes::StringShape.new(name: 'VideoSelectorColorSpaceUsage')
    VideoSelectorPid = Shapes::StructureShape.new(name: 'VideoSelectorPid')
    VideoSelectorProgramId = Shapes::StructureShape.new(name: 'VideoSelectorProgramId')
    VideoSelectorSettings = Shapes::StructureShape.new(name: 'VideoSelectorSettings')
    WavCodingMode = Shapes::StringShape.new(name: 'WavCodingMode')
    WavSettings = Shapes::StructureShape.new(name: 'WavSettings')
    WebvttDestinationSettings = Shapes::StructureShape.new(name: 'WebvttDestinationSettings')
    __boolean = Shapes::BooleanShape.new(name: '__boolean')
    __double = Shapes::FloatShape.new(name: '__double')
    __doubleMin0 = Shapes::FloatShape.new(name: '__doubleMin0')
    __doubleMin1 = Shapes::FloatShape.new(name: '__doubleMin1')
    __doubleMinNegative59Max0 = Shapes::FloatShape.new(name: '__doubleMinNegative59Max0')
    __integer = Shapes::IntegerShape.new(name: '__integer')
    __integerMin0 = Shapes::IntegerShape.new(name: '__integerMin0')
    __integerMin0Max10 = Shapes::IntegerShape.new(name: '__integerMin0Max10')
    __integerMin0Max100 = Shapes::IntegerShape.new(name: '__integerMin0Max100')
    __integerMin0Max1000 = Shapes::IntegerShape.new(name: '__integerMin0Max1000')
    __integerMin0Max10000 = Shapes::IntegerShape.new(name: '__integerMin0Max10000')
    __integerMin0Max1000000 = Shapes::IntegerShape.new(name: '__integerMin0Max1000000')
    __integerMin0Max100000000 = Shapes::IntegerShape.new(name: '__integerMin0Max100000000')
    __integerMin0Max128 = Shapes::IntegerShape.new(name: '__integerMin0Max128')
    __integerMin0Max15 = Shapes::IntegerShape.new(name: '__integerMin0Max15')
    __integerMin0Max255 = Shapes::IntegerShape.new(name: '__integerMin0Max255')
    __integerMin0Max30 = Shapes::IntegerShape.new(name: '__integerMin0Max30')
    __integerMin0Max32768 = Shapes::IntegerShape.new(name: '__integerMin0Max32768')
    __integerMin0Max3600 = Shapes::IntegerShape.new(name: '__integerMin0Max3600')
    __integerMin0Max500 = Shapes::IntegerShape.new(name: '__integerMin0Max500')
    __integerMin0Max600 = Shapes::IntegerShape.new(name: '__integerMin0Max600')
    __integerMin0Max65535 = Shapes::IntegerShape.new(name: '__integerMin0Max65535')
    __integerMin0Max65536 = Shapes::IntegerShape.new(name: '__integerMin0Max65536')
    __integerMin0Max7 = Shapes::IntegerShape.new(name: '__integerMin0Max7')
    __integerMin0Max8191 = Shapes::IntegerShape.new(name: '__integerMin0Max8191')
    __integerMin1 = Shapes::IntegerShape.new(name: '__integerMin1')
    __integerMin1000 = Shapes::IntegerShape.new(name: '__integerMin1000')
    __integerMin1000000Max100000000 = Shapes::IntegerShape.new(name: '__integerMin1000000Max100000000')
    __integerMin100000Max100000000 = Shapes::IntegerShape.new(name: '__integerMin100000Max100000000')
    __integerMin100000Max40000000 = Shapes::IntegerShape.new(name: '__integerMin100000Max40000000')
    __integerMin100000Max80000000 = Shapes::IntegerShape.new(name: '__integerMin100000Max80000000')
    __integerMin1000Max30000 = Shapes::IntegerShape.new(name: '__integerMin1000Max30000')
    __integerMin1Max10 = Shapes::IntegerShape.new(name: '__integerMin1Max10')
    __integerMin1Max1000000 = Shapes::IntegerShape.new(name: '__integerMin1Max1000000')
    __integerMin1Max16 = Shapes::IntegerShape.new(name: '__integerMin1Max16')
    __integerMin1Max20 = Shapes::IntegerShape.new(name: '__integerMin1Max20')
    __integerMin1Max3003 = Shapes::IntegerShape.new(name: '__integerMin1Max3003')
    __integerMin1Max31 = Shapes::IntegerShape.new(name: '__integerMin1Max31')
    __integerMin1Max32 = Shapes::IntegerShape.new(name: '__integerMin1Max32')
    __integerMin1Max3600000 = Shapes::IntegerShape.new(name: '__integerMin1Max3600000')
    __integerMin1Max4 = Shapes::IntegerShape.new(name: '__integerMin1Max4')
    __integerMin1Max5 = Shapes::IntegerShape.new(name: '__integerMin1Max5')
    __integerMin1Max6 = Shapes::IntegerShape.new(name: '__integerMin1Max6')
    __integerMin1Max8 = Shapes::IntegerShape.new(name: '__integerMin1Max8')
    __integerMin25Max10000 = Shapes::IntegerShape.new(name: '__integerMin25Max10000')
    __integerMin25Max2000 = Shapes::IntegerShape.new(name: '__integerMin25Max2000')
    __integerMin3 = Shapes::IntegerShape.new(name: '__integerMin3')
    __integerMin30 = Shapes::IntegerShape.new(name: '__integerMin30')
    __integerMin4Max20 = Shapes::IntegerShape.new(name: '__integerMin4Max20')
    __integerMin800Max3000 = Shapes::IntegerShape.new(name: '__integerMin800Max3000')
    __integerMin96Max600 = Shapes::IntegerShape.new(name: '__integerMin96Max600')
    __integerMinNegative1000Max1000 = Shapes::IntegerShape.new(name: '__integerMinNegative1000Max1000')
    __integerMinNegative5Max5 = Shapes::IntegerShape.new(name: '__integerMinNegative5Max5')
    __integerMinNegative60Max6 = Shapes::IntegerShape.new(name: '__integerMinNegative60Max6')
    __integerMinNegative60Max60 = Shapes::IntegerShape.new(name: '__integerMinNegative60Max60')
    __listOfAudioChannelMapping = Shapes::ListShape.new(name: '__listOfAudioChannelMapping')
    __listOfAudioDescription = Shapes::ListShape.new(name: '__listOfAudioDescription')
    __listOfAudioSelector = Shapes::ListShape.new(name: '__listOfAudioSelector')
    __listOfAudioTrack = Shapes::ListShape.new(name: '__listOfAudioTrack')
    __listOfBatchFailedResultModel = Shapes::ListShape.new(name: '__listOfBatchFailedResultModel')
    __listOfBatchSuccessfulResultModel = Shapes::ListShape.new(name: '__listOfBatchSuccessfulResultModel')
    __listOfCaptionDescription = Shapes::ListShape.new(name: '__listOfCaptionDescription')
    __listOfCaptionLanguageMapping = Shapes::ListShape.new(name: '__listOfCaptionLanguageMapping')
    __listOfCaptionSelector = Shapes::ListShape.new(name: '__listOfCaptionSelector')
    __listOfChannelEgressEndpoint = Shapes::ListShape.new(name: '__listOfChannelEgressEndpoint')
    __listOfChannelSummary = Shapes::ListShape.new(name: '__listOfChannelSummary')
    __listOfHlsAdMarkers = Shapes::ListShape.new(name: '__listOfHlsAdMarkers')
    __listOfInput = Shapes::ListShape.new(name: '__listOfInput')
    __listOfInputAttachment = Shapes::ListShape.new(name: '__listOfInputAttachment')
    __listOfInputChannelLevel = Shapes::ListShape.new(name: '__listOfInputChannelLevel')
    __listOfInputDestination = Shapes::ListShape.new(name: '__listOfInputDestination')
    __listOfInputDestinationRequest = Shapes::ListShape.new(name: '__listOfInputDestinationRequest')
    __listOfInputDeviceRequest = Shapes::ListShape.new(name: '__listOfInputDeviceRequest')
    __listOfInputDeviceSettings = Shapes::ListShape.new(name: '__listOfInputDeviceSettings')
    __listOfInputDeviceSummary = Shapes::ListShape.new(name: '__listOfInputDeviceSummary')
    __listOfInputSecurityGroup = Shapes::ListShape.new(name: '__listOfInputSecurityGroup')
    __listOfInputSource = Shapes::ListShape.new(name: '__listOfInputSource')
    __listOfInputSourceRequest = Shapes::ListShape.new(name: '__listOfInputSourceRequest')
    __listOfInputWhitelistRule = Shapes::ListShape.new(name: '__listOfInputWhitelistRule')
    __listOfInputWhitelistRuleCidr = Shapes::ListShape.new(name: '__listOfInputWhitelistRuleCidr')
    __listOfMediaConnectFlow = Shapes::ListShape.new(name: '__listOfMediaConnectFlow')
    __listOfMediaConnectFlowRequest = Shapes::ListShape.new(name: '__listOfMediaConnectFlowRequest')
    __listOfMediaPackageOutputDestinationSettings = Shapes::ListShape.new(name: '__listOfMediaPackageOutputDestinationSettings')
    __listOfMultiplexOutputDestination = Shapes::ListShape.new(name: '__listOfMultiplexOutputDestination')
    __listOfMultiplexProgramPipelineDetail = Shapes::ListShape.new(name: '__listOfMultiplexProgramPipelineDetail')
    __listOfMultiplexProgramSummary = Shapes::ListShape.new(name: '__listOfMultiplexProgramSummary')
    __listOfMultiplexSummary = Shapes::ListShape.new(name: '__listOfMultiplexSummary')
    __listOfOffering = Shapes::ListShape.new(name: '__listOfOffering')
    __listOfOutput = Shapes::ListShape.new(name: '__listOfOutput')
    __listOfOutputDestination = Shapes::ListShape.new(name: '__listOfOutputDestination')
    __listOfOutputDestinationSettings = Shapes::ListShape.new(name: '__listOfOutputDestinationSettings')
    __listOfOutputGroup = Shapes::ListShape.new(name: '__listOfOutputGroup')
    __listOfPipelineDetail = Shapes::ListShape.new(name: '__listOfPipelineDetail')
    __listOfPipelinePauseStateSettings = Shapes::ListShape.new(name: '__listOfPipelinePauseStateSettings')
    __listOfReservation = Shapes::ListShape.new(name: '__listOfReservation')
    __listOfScheduleAction = Shapes::ListShape.new(name: '__listOfScheduleAction')
    __listOfScte35Descriptor = Shapes::ListShape.new(name: '__listOfScte35Descriptor')
    __listOfTransferringInputDeviceSummary = Shapes::ListShape.new(name: '__listOfTransferringInputDeviceSummary')
    __listOfValidationError = Shapes::ListShape.new(name: '__listOfValidationError')
    __listOfVideoDescription = Shapes::ListShape.new(name: '__listOfVideoDescription')
    __listOf__integer = Shapes::ListShape.new(name: '__listOf__integer')
    __listOf__string = Shapes::ListShape.new(name: '__listOf__string')
    __long = Shapes::IntegerShape.new(name: '__long')
    __longMin0Max1099511627775 = Shapes::IntegerShape.new(name: '__longMin0Max1099511627775')
    __longMin0Max4294967295 = Shapes::IntegerShape.new(name: '__longMin0Max4294967295')
    __longMin0Max8589934591 = Shapes::IntegerShape.new(name: '__longMin0Max8589934591')
    __string = Shapes::StringShape.new(name: '__string')
    __stringMax256 = Shapes::StringShape.new(name: '__stringMax256')
    __stringMax32 = Shapes::StringShape.new(name: '__stringMax32')
    __stringMin1 = Shapes::StringShape.new(name: '__stringMin1')
    __stringMin1Max255 = Shapes::StringShape.new(name: '__stringMin1Max255')
    __stringMin1Max256 = Shapes::StringShape.new(name: '__stringMin1Max256')
    __stringMin1Max35 = Shapes::StringShape.new(name: '__stringMin1Max35')
    __stringMin32Max32 = Shapes::StringShape.new(name: '__stringMin32Max32')
    __stringMin34Max34 = Shapes::StringShape.new(name: '__stringMin34Max34')
    __stringMin3Max3 = Shapes::StringShape.new(name: '__stringMin3Max3')
    __stringMin6Max6 = Shapes::StringShape.new(name: '__stringMin6Max6')
    __timestamp = Shapes::TimestampShape.new(name: '__timestamp')
    __timestampIso8601 = Shapes::TimestampShape.new(name: '__timestampIso8601', timestampFormat: "iso8601")
    __timestampUnix = Shapes::TimestampShape.new(name: '__timestampUnix', timestampFormat: "unixTimestamp")

    AacSettings.add_member(:bitrate, Shapes::ShapeRef.new(shape: __double, location_name: "bitrate"))
    AacSettings.add_member(:coding_mode, Shapes::ShapeRef.new(shape: AacCodingMode, location_name: "codingMode"))
    AacSettings.add_member(:input_type, Shapes::ShapeRef.new(shape: AacInputType, location_name: "inputType"))
    AacSettings.add_member(:profile, Shapes::ShapeRef.new(shape: AacProfile, location_name: "profile"))
    AacSettings.add_member(:rate_control_mode, Shapes::ShapeRef.new(shape: AacRateControlMode, location_name: "rateControlMode"))
    AacSettings.add_member(:raw_format, Shapes::ShapeRef.new(shape: AacRawFormat, location_name: "rawFormat"))
    AacSettings.add_member(:sample_rate, Shapes::ShapeRef.new(shape: __double, location_name: "sampleRate"))
    AacSettings.add_member(:spec, Shapes::ShapeRef.new(shape: AacSpec, location_name: "spec"))
    AacSettings.add_member(:vbr_quality, Shapes::ShapeRef.new(shape: AacVbrQuality, location_name: "vbrQuality"))
    AacSettings.struct_class = Types::AacSettings

    Ac3Settings.add_member(:bitrate, Shapes::ShapeRef.new(shape: __double, location_name: "bitrate"))
    Ac3Settings.add_member(:bitstream_mode, Shapes::ShapeRef.new(shape: Ac3BitstreamMode, location_name: "bitstreamMode"))
    Ac3Settings.add_member(:coding_mode, Shapes::ShapeRef.new(shape: Ac3CodingMode, location_name: "codingMode"))
    Ac3Settings.add_member(:dialnorm, Shapes::ShapeRef.new(shape: __integerMin1Max31, location_name: "dialnorm"))
    Ac3Settings.add_member(:drc_profile, Shapes::ShapeRef.new(shape: Ac3DrcProfile, location_name: "drcProfile"))
    Ac3Settings.add_member(:lfe_filter, Shapes::ShapeRef.new(shape: Ac3LfeFilter, location_name: "lfeFilter"))
    Ac3Settings.add_member(:metadata_control, Shapes::ShapeRef.new(shape: Ac3MetadataControl, location_name: "metadataControl"))
    Ac3Settings.struct_class = Types::Ac3Settings

    AcceptInputDeviceTransferRequest.add_member(:input_device_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "inputDeviceId"))
    AcceptInputDeviceTransferRequest.struct_class = Types::AcceptInputDeviceTransferRequest

    AcceptInputDeviceTransferResponse.struct_class = Types::AcceptInputDeviceTransferResponse

    AccessDenied.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    AccessDenied.struct_class = Types::AccessDenied

    AncillarySourceSettings.add_member(:source_ancillary_channel_number, Shapes::ShapeRef.new(shape: __integerMin1Max4, location_name: "sourceAncillaryChannelNumber"))
    AncillarySourceSettings.struct_class = Types::AncillarySourceSettings

    ArchiveContainerSettings.add_member(:m2ts_settings, Shapes::ShapeRef.new(shape: M2tsSettings, location_name: "m2tsSettings"))
    ArchiveContainerSettings.add_member(:raw_settings, Shapes::ShapeRef.new(shape: RawSettings, location_name: "rawSettings"))
    ArchiveContainerSettings.struct_class = Types::ArchiveContainerSettings

    ArchiveGroupSettings.add_member(:destination, Shapes::ShapeRef.new(shape: OutputLocationRef, required: true, location_name: "destination"))
    ArchiveGroupSettings.add_member(:rollover_interval, Shapes::ShapeRef.new(shape: __integerMin1, location_name: "rolloverInterval"))
    ArchiveGroupSettings.struct_class = Types::ArchiveGroupSettings

    ArchiveOutputSettings.add_member(:container_settings, Shapes::ShapeRef.new(shape: ArchiveContainerSettings, required: true, location_name: "containerSettings"))
    ArchiveOutputSettings.add_member(:extension, Shapes::ShapeRef.new(shape: __string, location_name: "extension"))
    ArchiveOutputSettings.add_member(:name_modifier, Shapes::ShapeRef.new(shape: __string, location_name: "nameModifier"))
    ArchiveOutputSettings.struct_class = Types::ArchiveOutputSettings

    AribDestinationSettings.struct_class = Types::AribDestinationSettings

    AribSourceSettings.struct_class = Types::AribSourceSettings

    AudioChannelMapping.add_member(:input_channel_levels, Shapes::ShapeRef.new(shape: __listOfInputChannelLevel, required: true, location_name: "inputChannelLevels"))
    AudioChannelMapping.add_member(:output_channel, Shapes::ShapeRef.new(shape: __integerMin0Max7, required: true, location_name: "outputChannel"))
    AudioChannelMapping.struct_class = Types::AudioChannelMapping

    AudioCodecSettings.add_member(:aac_settings, Shapes::ShapeRef.new(shape: AacSettings, location_name: "aacSettings"))
    AudioCodecSettings.add_member(:ac_3_settings, Shapes::ShapeRef.new(shape: Ac3Settings, location_name: "ac3Settings"))
    AudioCodecSettings.add_member(:eac_3_settings, Shapes::ShapeRef.new(shape: Eac3Settings, location_name: "eac3Settings"))
    AudioCodecSettings.add_member(:mp_2_settings, Shapes::ShapeRef.new(shape: Mp2Settings, location_name: "mp2Settings"))
    AudioCodecSettings.add_member(:pass_through_settings, Shapes::ShapeRef.new(shape: PassThroughSettings, location_name: "passThroughSettings"))
    AudioCodecSettings.add_member(:wav_settings, Shapes::ShapeRef.new(shape: WavSettings, location_name: "wavSettings"))
    AudioCodecSettings.struct_class = Types::AudioCodecSettings

    AudioDescription.add_member(:audio_normalization_settings, Shapes::ShapeRef.new(shape: AudioNormalizationSettings, location_name: "audioNormalizationSettings"))
    AudioDescription.add_member(:audio_selector_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "audioSelectorName"))
    AudioDescription.add_member(:audio_type, Shapes::ShapeRef.new(shape: AudioType, location_name: "audioType"))
    AudioDescription.add_member(:audio_type_control, Shapes::ShapeRef.new(shape: AudioDescriptionAudioTypeControl, location_name: "audioTypeControl"))
    AudioDescription.add_member(:codec_settings, Shapes::ShapeRef.new(shape: AudioCodecSettings, location_name: "codecSettings"))
    AudioDescription.add_member(:language_code, Shapes::ShapeRef.new(shape: __stringMin1Max35, location_name: "languageCode"))
    AudioDescription.add_member(:language_code_control, Shapes::ShapeRef.new(shape: AudioDescriptionLanguageCodeControl, location_name: "languageCodeControl"))
    AudioDescription.add_member(:name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "name"))
    AudioDescription.add_member(:remix_settings, Shapes::ShapeRef.new(shape: RemixSettings, location_name: "remixSettings"))
    AudioDescription.add_member(:stream_name, Shapes::ShapeRef.new(shape: __string, location_name: "streamName"))
    AudioDescription.struct_class = Types::AudioDescription

    AudioLanguageSelection.add_member(:language_code, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "languageCode"))
    AudioLanguageSelection.add_member(:language_selection_policy, Shapes::ShapeRef.new(shape: AudioLanguageSelectionPolicy, location_name: "languageSelectionPolicy"))
    AudioLanguageSelection.struct_class = Types::AudioLanguageSelection

    AudioNormalizationSettings.add_member(:algorithm, Shapes::ShapeRef.new(shape: AudioNormalizationAlgorithm, location_name: "algorithm"))
    AudioNormalizationSettings.add_member(:algorithm_control, Shapes::ShapeRef.new(shape: AudioNormalizationAlgorithmControl, location_name: "algorithmControl"))
    AudioNormalizationSettings.add_member(:target_lkfs, Shapes::ShapeRef.new(shape: __doubleMinNegative59Max0, location_name: "targetLkfs"))
    AudioNormalizationSettings.struct_class = Types::AudioNormalizationSettings

    AudioOnlyHlsSettings.add_member(:audio_group_id, Shapes::ShapeRef.new(shape: __string, location_name: "audioGroupId"))
    AudioOnlyHlsSettings.add_member(:audio_only_image, Shapes::ShapeRef.new(shape: InputLocation, location_name: "audioOnlyImage"))
    AudioOnlyHlsSettings.add_member(:audio_track_type, Shapes::ShapeRef.new(shape: AudioOnlyHlsTrackType, location_name: "audioTrackType"))
    AudioOnlyHlsSettings.add_member(:segment_type, Shapes::ShapeRef.new(shape: AudioOnlyHlsSegmentType, location_name: "segmentType"))
    AudioOnlyHlsSettings.struct_class = Types::AudioOnlyHlsSettings

    AudioPidSelection.add_member(:pid, Shapes::ShapeRef.new(shape: __integerMin0Max8191, required: true, location_name: "pid"))
    AudioPidSelection.struct_class = Types::AudioPidSelection

    AudioSelector.add_member(:name, Shapes::ShapeRef.new(shape: __stringMin1, required: true, location_name: "name"))
    AudioSelector.add_member(:selector_settings, Shapes::ShapeRef.new(shape: AudioSelectorSettings, location_name: "selectorSettings"))
    AudioSelector.struct_class = Types::AudioSelector

    AudioSelectorSettings.add_member(:audio_language_selection, Shapes::ShapeRef.new(shape: AudioLanguageSelection, location_name: "audioLanguageSelection"))
    AudioSelectorSettings.add_member(:audio_pid_selection, Shapes::ShapeRef.new(shape: AudioPidSelection, location_name: "audioPidSelection"))
    AudioSelectorSettings.add_member(:audio_track_selection, Shapes::ShapeRef.new(shape: AudioTrackSelection, location_name: "audioTrackSelection"))
    AudioSelectorSettings.struct_class = Types::AudioSelectorSettings

    AudioTrack.add_member(:track, Shapes::ShapeRef.new(shape: __integerMin1, required: true, location_name: "track"))
    AudioTrack.struct_class = Types::AudioTrack

    AudioTrackSelection.add_member(:tracks, Shapes::ShapeRef.new(shape: __listOfAudioTrack, required: true, location_name: "tracks"))
    AudioTrackSelection.struct_class = Types::AudioTrackSelection

    AutomaticInputFailoverSettings.add_member(:input_preference, Shapes::ShapeRef.new(shape: InputPreference, location_name: "inputPreference"))
    AutomaticInputFailoverSettings.add_member(:secondary_input_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "secondaryInputId"))
    AutomaticInputFailoverSettings.struct_class = Types::AutomaticInputFailoverSettings

    AvailBlanking.add_member(:avail_blanking_image, Shapes::ShapeRef.new(shape: InputLocation, location_name: "availBlankingImage"))
    AvailBlanking.add_member(:state, Shapes::ShapeRef.new(shape: AvailBlankingState, location_name: "state"))
    AvailBlanking.struct_class = Types::AvailBlanking

    AvailConfiguration.add_member(:avail_settings, Shapes::ShapeRef.new(shape: AvailSettings, location_name: "availSettings"))
    AvailConfiguration.struct_class = Types::AvailConfiguration

    AvailSettings.add_member(:scte_35_splice_insert, Shapes::ShapeRef.new(shape: Scte35SpliceInsert, location_name: "scte35SpliceInsert"))
    AvailSettings.add_member(:scte_35_time_signal_apos, Shapes::ShapeRef.new(shape: Scte35TimeSignalApos, location_name: "scte35TimeSignalApos"))
    AvailSettings.struct_class = Types::AvailSettings

    BadGatewayException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    BadGatewayException.struct_class = Types::BadGatewayException

    BadRequestException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    BadRequestException.struct_class = Types::BadRequestException

    BatchDelete.add_member(:channel_ids, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "channelIds"))
    BatchDelete.add_member(:input_ids, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "inputIds"))
    BatchDelete.add_member(:input_security_group_ids, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "inputSecurityGroupIds"))
    BatchDelete.add_member(:multiplex_ids, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "multiplexIds"))
    BatchDelete.struct_class = Types::BatchDelete

    BatchDeleteRequest.add_member(:channel_ids, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "channelIds"))
    BatchDeleteRequest.add_member(:input_ids, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "inputIds"))
    BatchDeleteRequest.add_member(:input_security_group_ids, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "inputSecurityGroupIds"))
    BatchDeleteRequest.add_member(:multiplex_ids, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "multiplexIds"))
    BatchDeleteRequest.struct_class = Types::BatchDeleteRequest

    BatchDeleteResponse.add_member(:failed, Shapes::ShapeRef.new(shape: __listOfBatchFailedResultModel, location_name: "failed"))
    BatchDeleteResponse.add_member(:successful, Shapes::ShapeRef.new(shape: __listOfBatchSuccessfulResultModel, location_name: "successful"))
    BatchDeleteResponse.struct_class = Types::BatchDeleteResponse

    BatchDeleteResultModel.add_member(:failed, Shapes::ShapeRef.new(shape: __listOfBatchFailedResultModel, location_name: "failed"))
    BatchDeleteResultModel.add_member(:successful, Shapes::ShapeRef.new(shape: __listOfBatchSuccessfulResultModel, location_name: "successful"))
    BatchDeleteResultModel.struct_class = Types::BatchDeleteResultModel

    BatchFailedResultModel.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    BatchFailedResultModel.add_member(:code, Shapes::ShapeRef.new(shape: __string, location_name: "code"))
    BatchFailedResultModel.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    BatchFailedResultModel.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    BatchFailedResultModel.struct_class = Types::BatchFailedResultModel

    BatchScheduleActionCreateRequest.add_member(:schedule_actions, Shapes::ShapeRef.new(shape: __listOfScheduleAction, required: true, location_name: "scheduleActions"))
    BatchScheduleActionCreateRequest.struct_class = Types::BatchScheduleActionCreateRequest

    BatchScheduleActionCreateResult.add_member(:schedule_actions, Shapes::ShapeRef.new(shape: __listOfScheduleAction, required: true, location_name: "scheduleActions"))
    BatchScheduleActionCreateResult.struct_class = Types::BatchScheduleActionCreateResult

    BatchScheduleActionDeleteRequest.add_member(:action_names, Shapes::ShapeRef.new(shape: __listOf__string, required: true, location_name: "actionNames"))
    BatchScheduleActionDeleteRequest.struct_class = Types::BatchScheduleActionDeleteRequest

    BatchScheduleActionDeleteResult.add_member(:schedule_actions, Shapes::ShapeRef.new(shape: __listOfScheduleAction, required: true, location_name: "scheduleActions"))
    BatchScheduleActionDeleteResult.struct_class = Types::BatchScheduleActionDeleteResult

    BatchStart.add_member(:channel_ids, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "channelIds"))
    BatchStart.add_member(:multiplex_ids, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "multiplexIds"))
    BatchStart.struct_class = Types::BatchStart

    BatchStartRequest.add_member(:channel_ids, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "channelIds"))
    BatchStartRequest.add_member(:multiplex_ids, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "multiplexIds"))
    BatchStartRequest.struct_class = Types::BatchStartRequest

    BatchStartResponse.add_member(:failed, Shapes::ShapeRef.new(shape: __listOfBatchFailedResultModel, location_name: "failed"))
    BatchStartResponse.add_member(:successful, Shapes::ShapeRef.new(shape: __listOfBatchSuccessfulResultModel, location_name: "successful"))
    BatchStartResponse.struct_class = Types::BatchStartResponse

    BatchStartResultModel.add_member(:failed, Shapes::ShapeRef.new(shape: __listOfBatchFailedResultModel, location_name: "failed"))
    BatchStartResultModel.add_member(:successful, Shapes::ShapeRef.new(shape: __listOfBatchSuccessfulResultModel, location_name: "successful"))
    BatchStartResultModel.struct_class = Types::BatchStartResultModel

    BatchStop.add_member(:channel_ids, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "channelIds"))
    BatchStop.add_member(:multiplex_ids, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "multiplexIds"))
    BatchStop.struct_class = Types::BatchStop

    BatchStopRequest.add_member(:channel_ids, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "channelIds"))
    BatchStopRequest.add_member(:multiplex_ids, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "multiplexIds"))
    BatchStopRequest.struct_class = Types::BatchStopRequest

    BatchStopResponse.add_member(:failed, Shapes::ShapeRef.new(shape: __listOfBatchFailedResultModel, location_name: "failed"))
    BatchStopResponse.add_member(:successful, Shapes::ShapeRef.new(shape: __listOfBatchSuccessfulResultModel, location_name: "successful"))
    BatchStopResponse.struct_class = Types::BatchStopResponse

    BatchStopResultModel.add_member(:failed, Shapes::ShapeRef.new(shape: __listOfBatchFailedResultModel, location_name: "failed"))
    BatchStopResultModel.add_member(:successful, Shapes::ShapeRef.new(shape: __listOfBatchSuccessfulResultModel, location_name: "successful"))
    BatchStopResultModel.struct_class = Types::BatchStopResultModel

    BatchSuccessfulResultModel.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    BatchSuccessfulResultModel.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    BatchSuccessfulResultModel.add_member(:state, Shapes::ShapeRef.new(shape: __string, location_name: "state"))
    BatchSuccessfulResultModel.struct_class = Types::BatchSuccessfulResultModel

    BatchUpdateScheduleRequest.add_member(:channel_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "channelId"))
    BatchUpdateScheduleRequest.add_member(:creates, Shapes::ShapeRef.new(shape: BatchScheduleActionCreateRequest, location_name: "creates"))
    BatchUpdateScheduleRequest.add_member(:deletes, Shapes::ShapeRef.new(shape: BatchScheduleActionDeleteRequest, location_name: "deletes"))
    BatchUpdateScheduleRequest.struct_class = Types::BatchUpdateScheduleRequest

    BatchUpdateScheduleResponse.add_member(:creates, Shapes::ShapeRef.new(shape: BatchScheduleActionCreateResult, location_name: "creates"))
    BatchUpdateScheduleResponse.add_member(:deletes, Shapes::ShapeRef.new(shape: BatchScheduleActionDeleteResult, location_name: "deletes"))
    BatchUpdateScheduleResponse.struct_class = Types::BatchUpdateScheduleResponse

    BatchUpdateScheduleResult.add_member(:creates, Shapes::ShapeRef.new(shape: BatchScheduleActionCreateResult, location_name: "creates"))
    BatchUpdateScheduleResult.add_member(:deletes, Shapes::ShapeRef.new(shape: BatchScheduleActionDeleteResult, location_name: "deletes"))
    BatchUpdateScheduleResult.struct_class = Types::BatchUpdateScheduleResult

    BlackoutSlate.add_member(:blackout_slate_image, Shapes::ShapeRef.new(shape: InputLocation, location_name: "blackoutSlateImage"))
    BlackoutSlate.add_member(:network_end_blackout, Shapes::ShapeRef.new(shape: BlackoutSlateNetworkEndBlackout, location_name: "networkEndBlackout"))
    BlackoutSlate.add_member(:network_end_blackout_image, Shapes::ShapeRef.new(shape: InputLocation, location_name: "networkEndBlackoutImage"))
    BlackoutSlate.add_member(:network_id, Shapes::ShapeRef.new(shape: __stringMin34Max34, location_name: "networkId"))
    BlackoutSlate.add_member(:state, Shapes::ShapeRef.new(shape: BlackoutSlateState, location_name: "state"))
    BlackoutSlate.struct_class = Types::BlackoutSlate

    BurnInDestinationSettings.add_member(:alignment, Shapes::ShapeRef.new(shape: BurnInAlignment, location_name: "alignment"))
    BurnInDestinationSettings.add_member(:background_color, Shapes::ShapeRef.new(shape: BurnInBackgroundColor, location_name: "backgroundColor"))
    BurnInDestinationSettings.add_member(:background_opacity, Shapes::ShapeRef.new(shape: __integerMin0Max255, location_name: "backgroundOpacity"))
    BurnInDestinationSettings.add_member(:font, Shapes::ShapeRef.new(shape: InputLocation, location_name: "font"))
    BurnInDestinationSettings.add_member(:font_color, Shapes::ShapeRef.new(shape: BurnInFontColor, location_name: "fontColor"))
    BurnInDestinationSettings.add_member(:font_opacity, Shapes::ShapeRef.new(shape: __integerMin0Max255, location_name: "fontOpacity"))
    BurnInDestinationSettings.add_member(:font_resolution, Shapes::ShapeRef.new(shape: __integerMin96Max600, location_name: "fontResolution"))
    BurnInDestinationSettings.add_member(:font_size, Shapes::ShapeRef.new(shape: __string, location_name: "fontSize"))
    BurnInDestinationSettings.add_member(:outline_color, Shapes::ShapeRef.new(shape: BurnInOutlineColor, location_name: "outlineColor"))
    BurnInDestinationSettings.add_member(:outline_size, Shapes::ShapeRef.new(shape: __integerMin0Max10, location_name: "outlineSize"))
    BurnInDestinationSettings.add_member(:shadow_color, Shapes::ShapeRef.new(shape: BurnInShadowColor, location_name: "shadowColor"))
    BurnInDestinationSettings.add_member(:shadow_opacity, Shapes::ShapeRef.new(shape: __integerMin0Max255, location_name: "shadowOpacity"))
    BurnInDestinationSettings.add_member(:shadow_x_offset, Shapes::ShapeRef.new(shape: __integer, location_name: "shadowXOffset"))
    BurnInDestinationSettings.add_member(:shadow_y_offset, Shapes::ShapeRef.new(shape: __integer, location_name: "shadowYOffset"))
    BurnInDestinationSettings.add_member(:teletext_grid_control, Shapes::ShapeRef.new(shape: BurnInTeletextGridControl, location_name: "teletextGridControl"))
    BurnInDestinationSettings.add_member(:x_position, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "xPosition"))
    BurnInDestinationSettings.add_member(:y_position, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "yPosition"))
    BurnInDestinationSettings.struct_class = Types::BurnInDestinationSettings

    CancelInputDeviceTransferRequest.add_member(:input_device_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "inputDeviceId"))
    CancelInputDeviceTransferRequest.struct_class = Types::CancelInputDeviceTransferRequest

    CancelInputDeviceTransferResponse.struct_class = Types::CancelInputDeviceTransferResponse

    CaptionDescription.add_member(:caption_selector_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "captionSelectorName"))
    CaptionDescription.add_member(:destination_settings, Shapes::ShapeRef.new(shape: CaptionDestinationSettings, location_name: "destinationSettings"))
    CaptionDescription.add_member(:language_code, Shapes::ShapeRef.new(shape: __string, location_name: "languageCode"))
    CaptionDescription.add_member(:language_description, Shapes::ShapeRef.new(shape: __string, location_name: "languageDescription"))
    CaptionDescription.add_member(:name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "name"))
    CaptionDescription.struct_class = Types::CaptionDescription

    CaptionDestinationSettings.add_member(:arib_destination_settings, Shapes::ShapeRef.new(shape: AribDestinationSettings, location_name: "aribDestinationSettings"))
    CaptionDestinationSettings.add_member(:burn_in_destination_settings, Shapes::ShapeRef.new(shape: BurnInDestinationSettings, location_name: "burnInDestinationSettings"))
    CaptionDestinationSettings.add_member(:dvb_sub_destination_settings, Shapes::ShapeRef.new(shape: DvbSubDestinationSettings, location_name: "dvbSubDestinationSettings"))
    CaptionDestinationSettings.add_member(:ebu_tt_d_destination_settings, Shapes::ShapeRef.new(shape: EbuTtDDestinationSettings, location_name: "ebuTtDDestinationSettings"))
    CaptionDestinationSettings.add_member(:embedded_destination_settings, Shapes::ShapeRef.new(shape: EmbeddedDestinationSettings, location_name: "embeddedDestinationSettings"))
    CaptionDestinationSettings.add_member(:embedded_plus_scte_20_destination_settings, Shapes::ShapeRef.new(shape: EmbeddedPlusScte20DestinationSettings, location_name: "embeddedPlusScte20DestinationSettings"))
    CaptionDestinationSettings.add_member(:rtmp_caption_info_destination_settings, Shapes::ShapeRef.new(shape: RtmpCaptionInfoDestinationSettings, location_name: "rtmpCaptionInfoDestinationSettings"))
    CaptionDestinationSettings.add_member(:scte_20_plus_embedded_destination_settings, Shapes::ShapeRef.new(shape: Scte20PlusEmbeddedDestinationSettings, location_name: "scte20PlusEmbeddedDestinationSettings"))
    CaptionDestinationSettings.add_member(:scte_27_destination_settings, Shapes::ShapeRef.new(shape: Scte27DestinationSettings, location_name: "scte27DestinationSettings"))
    CaptionDestinationSettings.add_member(:smpte_tt_destination_settings, Shapes::ShapeRef.new(shape: SmpteTtDestinationSettings, location_name: "smpteTtDestinationSettings"))
    CaptionDestinationSettings.add_member(:teletext_destination_settings, Shapes::ShapeRef.new(shape: TeletextDestinationSettings, location_name: "teletextDestinationSettings"))
    CaptionDestinationSettings.add_member(:ttml_destination_settings, Shapes::ShapeRef.new(shape: TtmlDestinationSettings, location_name: "ttmlDestinationSettings"))
    CaptionDestinationSettings.add_member(:webvtt_destination_settings, Shapes::ShapeRef.new(shape: WebvttDestinationSettings, location_name: "webvttDestinationSettings"))
    CaptionDestinationSettings.struct_class = Types::CaptionDestinationSettings

    CaptionLanguageMapping.add_member(:caption_channel, Shapes::ShapeRef.new(shape: __integerMin1Max4, required: true, location_name: "captionChannel"))
    CaptionLanguageMapping.add_member(:language_code, Shapes::ShapeRef.new(shape: __stringMin3Max3, required: true, location_name: "languageCode"))
    CaptionLanguageMapping.add_member(:language_description, Shapes::ShapeRef.new(shape: __stringMin1, required: true, location_name: "languageDescription"))
    CaptionLanguageMapping.struct_class = Types::CaptionLanguageMapping

    CaptionSelector.add_member(:language_code, Shapes::ShapeRef.new(shape: __string, location_name: "languageCode"))
    CaptionSelector.add_member(:name, Shapes::ShapeRef.new(shape: __stringMin1, required: true, location_name: "name"))
    CaptionSelector.add_member(:selector_settings, Shapes::ShapeRef.new(shape: CaptionSelectorSettings, location_name: "selectorSettings"))
    CaptionSelector.struct_class = Types::CaptionSelector

    CaptionSelectorSettings.add_member(:ancillary_source_settings, Shapes::ShapeRef.new(shape: AncillarySourceSettings, location_name: "ancillarySourceSettings"))
    CaptionSelectorSettings.add_member(:arib_source_settings, Shapes::ShapeRef.new(shape: AribSourceSettings, location_name: "aribSourceSettings"))
    CaptionSelectorSettings.add_member(:dvb_sub_source_settings, Shapes::ShapeRef.new(shape: DvbSubSourceSettings, location_name: "dvbSubSourceSettings"))
    CaptionSelectorSettings.add_member(:embedded_source_settings, Shapes::ShapeRef.new(shape: EmbeddedSourceSettings, location_name: "embeddedSourceSettings"))
    CaptionSelectorSettings.add_member(:scte_20_source_settings, Shapes::ShapeRef.new(shape: Scte20SourceSettings, location_name: "scte20SourceSettings"))
    CaptionSelectorSettings.add_member(:scte_27_source_settings, Shapes::ShapeRef.new(shape: Scte27SourceSettings, location_name: "scte27SourceSettings"))
    CaptionSelectorSettings.add_member(:teletext_source_settings, Shapes::ShapeRef.new(shape: TeletextSourceSettings, location_name: "teletextSourceSettings"))
    CaptionSelectorSettings.struct_class = Types::CaptionSelectorSettings

    CdiInputSpecification.add_member(:resolution, Shapes::ShapeRef.new(shape: CdiInputResolution, location_name: "resolution"))
    CdiInputSpecification.struct_class = Types::CdiInputSpecification

    Channel.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    Channel.add_member(:cdi_input_specification, Shapes::ShapeRef.new(shape: CdiInputSpecification, location_name: "cdiInputSpecification"))
    Channel.add_member(:channel_class, Shapes::ShapeRef.new(shape: ChannelClass, location_name: "channelClass"))
    Channel.add_member(:destinations, Shapes::ShapeRef.new(shape: __listOfOutputDestination, location_name: "destinations"))
    Channel.add_member(:egress_endpoints, Shapes::ShapeRef.new(shape: __listOfChannelEgressEndpoint, location_name: "egressEndpoints"))
    Channel.add_member(:encoder_settings, Shapes::ShapeRef.new(shape: EncoderSettings, location_name: "encoderSettings"))
    Channel.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    Channel.add_member(:input_attachments, Shapes::ShapeRef.new(shape: __listOfInputAttachment, location_name: "inputAttachments"))
    Channel.add_member(:input_specification, Shapes::ShapeRef.new(shape: InputSpecification, location_name: "inputSpecification"))
    Channel.add_member(:log_level, Shapes::ShapeRef.new(shape: LogLevel, location_name: "logLevel"))
    Channel.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    Channel.add_member(:pipeline_details, Shapes::ShapeRef.new(shape: __listOfPipelineDetail, location_name: "pipelineDetails"))
    Channel.add_member(:pipelines_running_count, Shapes::ShapeRef.new(shape: __integer, location_name: "pipelinesRunningCount"))
    Channel.add_member(:role_arn, Shapes::ShapeRef.new(shape: __string, location_name: "roleArn"))
    Channel.add_member(:state, Shapes::ShapeRef.new(shape: ChannelState, location_name: "state"))
    Channel.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    Channel.struct_class = Types::Channel

    ChannelConfigurationValidationError.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    ChannelConfigurationValidationError.add_member(:validation_errors, Shapes::ShapeRef.new(shape: __listOfValidationError, location_name: "validationErrors"))
    ChannelConfigurationValidationError.struct_class = Types::ChannelConfigurationValidationError

    ChannelEgressEndpoint.add_member(:source_ip, Shapes::ShapeRef.new(shape: __string, location_name: "sourceIp"))
    ChannelEgressEndpoint.struct_class = Types::ChannelEgressEndpoint

    ChannelSummary.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    ChannelSummary.add_member(:cdi_input_specification, Shapes::ShapeRef.new(shape: CdiInputSpecification, location_name: "cdiInputSpecification"))
    ChannelSummary.add_member(:channel_class, Shapes::ShapeRef.new(shape: ChannelClass, location_name: "channelClass"))
    ChannelSummary.add_member(:destinations, Shapes::ShapeRef.new(shape: __listOfOutputDestination, location_name: "destinations"))
    ChannelSummary.add_member(:egress_endpoints, Shapes::ShapeRef.new(shape: __listOfChannelEgressEndpoint, location_name: "egressEndpoints"))
    ChannelSummary.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    ChannelSummary.add_member(:input_attachments, Shapes::ShapeRef.new(shape: __listOfInputAttachment, location_name: "inputAttachments"))
    ChannelSummary.add_member(:input_specification, Shapes::ShapeRef.new(shape: InputSpecification, location_name: "inputSpecification"))
    ChannelSummary.add_member(:log_level, Shapes::ShapeRef.new(shape: LogLevel, location_name: "logLevel"))
    ChannelSummary.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    ChannelSummary.add_member(:pipelines_running_count, Shapes::ShapeRef.new(shape: __integer, location_name: "pipelinesRunningCount"))
    ChannelSummary.add_member(:role_arn, Shapes::ShapeRef.new(shape: __string, location_name: "roleArn"))
    ChannelSummary.add_member(:state, Shapes::ShapeRef.new(shape: ChannelState, location_name: "state"))
    ChannelSummary.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    ChannelSummary.struct_class = Types::ChannelSummary

    ColorSpacePassthroughSettings.struct_class = Types::ColorSpacePassthroughSettings

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    CreateChannel.add_member(:cdi_input_specification, Shapes::ShapeRef.new(shape: CdiInputSpecification, location_name: "cdiInputSpecification"))
    CreateChannel.add_member(:channel_class, Shapes::ShapeRef.new(shape: ChannelClass, location_name: "channelClass"))
    CreateChannel.add_member(:destinations, Shapes::ShapeRef.new(shape: __listOfOutputDestination, location_name: "destinations"))
    CreateChannel.add_member(:encoder_settings, Shapes::ShapeRef.new(shape: EncoderSettings, location_name: "encoderSettings"))
    CreateChannel.add_member(:input_attachments, Shapes::ShapeRef.new(shape: __listOfInputAttachment, location_name: "inputAttachments"))
    CreateChannel.add_member(:input_specification, Shapes::ShapeRef.new(shape: InputSpecification, location_name: "inputSpecification"))
    CreateChannel.add_member(:log_level, Shapes::ShapeRef.new(shape: LogLevel, location_name: "logLevel"))
    CreateChannel.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    CreateChannel.add_member(:request_id, Shapes::ShapeRef.new(shape: __string, location_name: "requestId", metadata: {"idempotencyToken"=>true}))
    CreateChannel.add_member(:reserved, Shapes::ShapeRef.new(shape: __string, deprecated: true, location_name: "reserved"))
    CreateChannel.add_member(:role_arn, Shapes::ShapeRef.new(shape: __string, location_name: "roleArn"))
    CreateChannel.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateChannel.struct_class = Types::CreateChannel

    CreateChannelRequest.add_member(:cdi_input_specification, Shapes::ShapeRef.new(shape: CdiInputSpecification, location_name: "cdiInputSpecification"))
    CreateChannelRequest.add_member(:channel_class, Shapes::ShapeRef.new(shape: ChannelClass, location_name: "channelClass"))
    CreateChannelRequest.add_member(:destinations, Shapes::ShapeRef.new(shape: __listOfOutputDestination, location_name: "destinations"))
    CreateChannelRequest.add_member(:encoder_settings, Shapes::ShapeRef.new(shape: EncoderSettings, location_name: "encoderSettings"))
    CreateChannelRequest.add_member(:input_attachments, Shapes::ShapeRef.new(shape: __listOfInputAttachment, location_name: "inputAttachments"))
    CreateChannelRequest.add_member(:input_specification, Shapes::ShapeRef.new(shape: InputSpecification, location_name: "inputSpecification"))
    CreateChannelRequest.add_member(:log_level, Shapes::ShapeRef.new(shape: LogLevel, location_name: "logLevel"))
    CreateChannelRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    CreateChannelRequest.add_member(:request_id, Shapes::ShapeRef.new(shape: __string, location_name: "requestId", metadata: {"idempotencyToken"=>true}))
    CreateChannelRequest.add_member(:reserved, Shapes::ShapeRef.new(shape: __string, deprecated: true, location_name: "reserved"))
    CreateChannelRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: __string, location_name: "roleArn"))
    CreateChannelRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateChannelRequest.struct_class = Types::CreateChannelRequest

    CreateChannelResponse.add_member(:channel, Shapes::ShapeRef.new(shape: Channel, location_name: "channel"))
    CreateChannelResponse.struct_class = Types::CreateChannelResponse

    CreateChannelResultModel.add_member(:channel, Shapes::ShapeRef.new(shape: Channel, location_name: "channel"))
    CreateChannelResultModel.struct_class = Types::CreateChannelResultModel

    CreateInput.add_member(:destinations, Shapes::ShapeRef.new(shape: __listOfInputDestinationRequest, location_name: "destinations"))
    CreateInput.add_member(:input_devices, Shapes::ShapeRef.new(shape: __listOfInputDeviceSettings, location_name: "inputDevices"))
    CreateInput.add_member(:input_security_groups, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "inputSecurityGroups"))
    CreateInput.add_member(:media_connect_flows, Shapes::ShapeRef.new(shape: __listOfMediaConnectFlowRequest, location_name: "mediaConnectFlows"))
    CreateInput.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    CreateInput.add_member(:request_id, Shapes::ShapeRef.new(shape: __string, location_name: "requestId", metadata: {"idempotencyToken"=>true}))
    CreateInput.add_member(:role_arn, Shapes::ShapeRef.new(shape: __string, location_name: "roleArn"))
    CreateInput.add_member(:sources, Shapes::ShapeRef.new(shape: __listOfInputSourceRequest, location_name: "sources"))
    CreateInput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateInput.add_member(:type, Shapes::ShapeRef.new(shape: InputType, location_name: "type"))
    CreateInput.add_member(:vpc, Shapes::ShapeRef.new(shape: InputVpcRequest, location_name: "vpc"))
    CreateInput.struct_class = Types::CreateInput

    CreateInputRequest.add_member(:destinations, Shapes::ShapeRef.new(shape: __listOfInputDestinationRequest, location_name: "destinations"))
    CreateInputRequest.add_member(:input_devices, Shapes::ShapeRef.new(shape: __listOfInputDeviceSettings, location_name: "inputDevices"))
    CreateInputRequest.add_member(:input_security_groups, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "inputSecurityGroups"))
    CreateInputRequest.add_member(:media_connect_flows, Shapes::ShapeRef.new(shape: __listOfMediaConnectFlowRequest, location_name: "mediaConnectFlows"))
    CreateInputRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    CreateInputRequest.add_member(:request_id, Shapes::ShapeRef.new(shape: __string, location_name: "requestId", metadata: {"idempotencyToken"=>true}))
    CreateInputRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: __string, location_name: "roleArn"))
    CreateInputRequest.add_member(:sources, Shapes::ShapeRef.new(shape: __listOfInputSourceRequest, location_name: "sources"))
    CreateInputRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateInputRequest.add_member(:type, Shapes::ShapeRef.new(shape: InputType, location_name: "type"))
    CreateInputRequest.add_member(:vpc, Shapes::ShapeRef.new(shape: InputVpcRequest, location_name: "vpc"))
    CreateInputRequest.struct_class = Types::CreateInputRequest

    CreateInputResponse.add_member(:input, Shapes::ShapeRef.new(shape: Input, location_name: "input"))
    CreateInputResponse.struct_class = Types::CreateInputResponse

    CreateInputResultModel.add_member(:input, Shapes::ShapeRef.new(shape: Input, location_name: "input"))
    CreateInputResultModel.struct_class = Types::CreateInputResultModel

    CreateInputSecurityGroupRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateInputSecurityGroupRequest.add_member(:whitelist_rules, Shapes::ShapeRef.new(shape: __listOfInputWhitelistRuleCidr, location_name: "whitelistRules"))
    CreateInputSecurityGroupRequest.struct_class = Types::CreateInputSecurityGroupRequest

    CreateInputSecurityGroupResponse.add_member(:security_group, Shapes::ShapeRef.new(shape: InputSecurityGroup, location_name: "securityGroup"))
    CreateInputSecurityGroupResponse.struct_class = Types::CreateInputSecurityGroupResponse

    CreateInputSecurityGroupResultModel.add_member(:security_group, Shapes::ShapeRef.new(shape: InputSecurityGroup, location_name: "securityGroup"))
    CreateInputSecurityGroupResultModel.struct_class = Types::CreateInputSecurityGroupResultModel

    CreateMultiplex.add_member(:availability_zones, Shapes::ShapeRef.new(shape: __listOf__string, required: true, location_name: "availabilityZones"))
    CreateMultiplex.add_member(:multiplex_settings, Shapes::ShapeRef.new(shape: MultiplexSettings, required: true, location_name: "multiplexSettings"))
    CreateMultiplex.add_member(:name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "name"))
    CreateMultiplex.add_member(:request_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "requestId", metadata: {"idempotencyToken"=>true}))
    CreateMultiplex.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateMultiplex.struct_class = Types::CreateMultiplex

    CreateMultiplexProgram.add_member(:multiplex_program_settings, Shapes::ShapeRef.new(shape: MultiplexProgramSettings, required: true, location_name: "multiplexProgramSettings"))
    CreateMultiplexProgram.add_member(:program_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "programName"))
    CreateMultiplexProgram.add_member(:request_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "requestId", metadata: {"idempotencyToken"=>true}))
    CreateMultiplexProgram.struct_class = Types::CreateMultiplexProgram

    CreateMultiplexProgramRequest.add_member(:multiplex_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "multiplexId"))
    CreateMultiplexProgramRequest.add_member(:multiplex_program_settings, Shapes::ShapeRef.new(shape: MultiplexProgramSettings, required: true, location_name: "multiplexProgramSettings"))
    CreateMultiplexProgramRequest.add_member(:program_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "programName"))
    CreateMultiplexProgramRequest.add_member(:request_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "requestId", metadata: {"idempotencyToken"=>true}))
    CreateMultiplexProgramRequest.struct_class = Types::CreateMultiplexProgramRequest

    CreateMultiplexProgramResponse.add_member(:multiplex_program, Shapes::ShapeRef.new(shape: MultiplexProgram, location_name: "multiplexProgram"))
    CreateMultiplexProgramResponse.struct_class = Types::CreateMultiplexProgramResponse

    CreateMultiplexProgramResultModel.add_member(:multiplex_program, Shapes::ShapeRef.new(shape: MultiplexProgram, location_name: "multiplexProgram"))
    CreateMultiplexProgramResultModel.struct_class = Types::CreateMultiplexProgramResultModel

    CreateMultiplexRequest.add_member(:availability_zones, Shapes::ShapeRef.new(shape: __listOf__string, required: true, location_name: "availabilityZones"))
    CreateMultiplexRequest.add_member(:multiplex_settings, Shapes::ShapeRef.new(shape: MultiplexSettings, required: true, location_name: "multiplexSettings"))
    CreateMultiplexRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "name"))
    CreateMultiplexRequest.add_member(:request_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "requestId", metadata: {"idempotencyToken"=>true}))
    CreateMultiplexRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateMultiplexRequest.struct_class = Types::CreateMultiplexRequest

    CreateMultiplexResponse.add_member(:multiplex, Shapes::ShapeRef.new(shape: Multiplex, location_name: "multiplex"))
    CreateMultiplexResponse.struct_class = Types::CreateMultiplexResponse

    CreateMultiplexResultModel.add_member(:multiplex, Shapes::ShapeRef.new(shape: Multiplex, location_name: "multiplex"))
    CreateMultiplexResultModel.struct_class = Types::CreateMultiplexResultModel

    CreateTagsRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "resource-arn"))
    CreateTagsRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateTagsRequest.struct_class = Types::CreateTagsRequest

    DeleteChannelRequest.add_member(:channel_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "channelId"))
    DeleteChannelRequest.struct_class = Types::DeleteChannelRequest

    DeleteChannelResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    DeleteChannelResponse.add_member(:cdi_input_specification, Shapes::ShapeRef.new(shape: CdiInputSpecification, location_name: "cdiInputSpecification"))
    DeleteChannelResponse.add_member(:channel_class, Shapes::ShapeRef.new(shape: ChannelClass, location_name: "channelClass"))
    DeleteChannelResponse.add_member(:destinations, Shapes::ShapeRef.new(shape: __listOfOutputDestination, location_name: "destinations"))
    DeleteChannelResponse.add_member(:egress_endpoints, Shapes::ShapeRef.new(shape: __listOfChannelEgressEndpoint, location_name: "egressEndpoints"))
    DeleteChannelResponse.add_member(:encoder_settings, Shapes::ShapeRef.new(shape: EncoderSettings, location_name: "encoderSettings"))
    DeleteChannelResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    DeleteChannelResponse.add_member(:input_attachments, Shapes::ShapeRef.new(shape: __listOfInputAttachment, location_name: "inputAttachments"))
    DeleteChannelResponse.add_member(:input_specification, Shapes::ShapeRef.new(shape: InputSpecification, location_name: "inputSpecification"))
    DeleteChannelResponse.add_member(:log_level, Shapes::ShapeRef.new(shape: LogLevel, location_name: "logLevel"))
    DeleteChannelResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    DeleteChannelResponse.add_member(:pipeline_details, Shapes::ShapeRef.new(shape: __listOfPipelineDetail, location_name: "pipelineDetails"))
    DeleteChannelResponse.add_member(:pipelines_running_count, Shapes::ShapeRef.new(shape: __integer, location_name: "pipelinesRunningCount"))
    DeleteChannelResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: __string, location_name: "roleArn"))
    DeleteChannelResponse.add_member(:state, Shapes::ShapeRef.new(shape: ChannelState, location_name: "state"))
    DeleteChannelResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    DeleteChannelResponse.struct_class = Types::DeleteChannelResponse

    DeleteInputRequest.add_member(:input_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "inputId"))
    DeleteInputRequest.struct_class = Types::DeleteInputRequest

    DeleteInputResponse.struct_class = Types::DeleteInputResponse

    DeleteInputSecurityGroupRequest.add_member(:input_security_group_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "inputSecurityGroupId"))
    DeleteInputSecurityGroupRequest.struct_class = Types::DeleteInputSecurityGroupRequest

    DeleteInputSecurityGroupResponse.struct_class = Types::DeleteInputSecurityGroupResponse

    DeleteMultiplexProgramRequest.add_member(:multiplex_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "multiplexId"))
    DeleteMultiplexProgramRequest.add_member(:program_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "programName"))
    DeleteMultiplexProgramRequest.struct_class = Types::DeleteMultiplexProgramRequest

    DeleteMultiplexProgramResponse.add_member(:channel_id, Shapes::ShapeRef.new(shape: __string, location_name: "channelId"))
    DeleteMultiplexProgramResponse.add_member(:multiplex_program_settings, Shapes::ShapeRef.new(shape: MultiplexProgramSettings, location_name: "multiplexProgramSettings"))
    DeleteMultiplexProgramResponse.add_member(:packet_identifiers_map, Shapes::ShapeRef.new(shape: MultiplexProgramPacketIdentifiersMap, location_name: "packetIdentifiersMap"))
    DeleteMultiplexProgramResponse.add_member(:pipeline_details, Shapes::ShapeRef.new(shape: __listOfMultiplexProgramPipelineDetail, location_name: "pipelineDetails"))
    DeleteMultiplexProgramResponse.add_member(:program_name, Shapes::ShapeRef.new(shape: __string, location_name: "programName"))
    DeleteMultiplexProgramResponse.struct_class = Types::DeleteMultiplexProgramResponse

    DeleteMultiplexRequest.add_member(:multiplex_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "multiplexId"))
    DeleteMultiplexRequest.struct_class = Types::DeleteMultiplexRequest

    DeleteMultiplexResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    DeleteMultiplexResponse.add_member(:availability_zones, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "availabilityZones"))
    DeleteMultiplexResponse.add_member(:destinations, Shapes::ShapeRef.new(shape: __listOfMultiplexOutputDestination, location_name: "destinations"))
    DeleteMultiplexResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    DeleteMultiplexResponse.add_member(:multiplex_settings, Shapes::ShapeRef.new(shape: MultiplexSettings, location_name: "multiplexSettings"))
    DeleteMultiplexResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    DeleteMultiplexResponse.add_member(:pipelines_running_count, Shapes::ShapeRef.new(shape: __integer, location_name: "pipelinesRunningCount"))
    DeleteMultiplexResponse.add_member(:program_count, Shapes::ShapeRef.new(shape: __integer, location_name: "programCount"))
    DeleteMultiplexResponse.add_member(:state, Shapes::ShapeRef.new(shape: MultiplexState, location_name: "state"))
    DeleteMultiplexResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    DeleteMultiplexResponse.struct_class = Types::DeleteMultiplexResponse

    DeleteReservationRequest.add_member(:reservation_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "reservationId"))
    DeleteReservationRequest.struct_class = Types::DeleteReservationRequest

    DeleteReservationResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    DeleteReservationResponse.add_member(:count, Shapes::ShapeRef.new(shape: __integer, location_name: "count"))
    DeleteReservationResponse.add_member(:currency_code, Shapes::ShapeRef.new(shape: __string, location_name: "currencyCode"))
    DeleteReservationResponse.add_member(:duration, Shapes::ShapeRef.new(shape: __integer, location_name: "duration"))
    DeleteReservationResponse.add_member(:duration_units, Shapes::ShapeRef.new(shape: OfferingDurationUnits, location_name: "durationUnits"))
    DeleteReservationResponse.add_member(:end, Shapes::ShapeRef.new(shape: __string, location_name: "end"))
    DeleteReservationResponse.add_member(:fixed_price, Shapes::ShapeRef.new(shape: __double, location_name: "fixedPrice"))
    DeleteReservationResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    DeleteReservationResponse.add_member(:offering_description, Shapes::ShapeRef.new(shape: __string, location_name: "offeringDescription"))
    DeleteReservationResponse.add_member(:offering_id, Shapes::ShapeRef.new(shape: __string, location_name: "offeringId"))
    DeleteReservationResponse.add_member(:offering_type, Shapes::ShapeRef.new(shape: OfferingType, location_name: "offeringType"))
    DeleteReservationResponse.add_member(:region, Shapes::ShapeRef.new(shape: __string, location_name: "region"))
    DeleteReservationResponse.add_member(:reservation_id, Shapes::ShapeRef.new(shape: __string, location_name: "reservationId"))
    DeleteReservationResponse.add_member(:resource_specification, Shapes::ShapeRef.new(shape: ReservationResourceSpecification, location_name: "resourceSpecification"))
    DeleteReservationResponse.add_member(:start, Shapes::ShapeRef.new(shape: __string, location_name: "start"))
    DeleteReservationResponse.add_member(:state, Shapes::ShapeRef.new(shape: ReservationState, location_name: "state"))
    DeleteReservationResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    DeleteReservationResponse.add_member(:usage_price, Shapes::ShapeRef.new(shape: __double, location_name: "usagePrice"))
    DeleteReservationResponse.struct_class = Types::DeleteReservationResponse

    DeleteScheduleRequest.add_member(:channel_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "channelId"))
    DeleteScheduleRequest.struct_class = Types::DeleteScheduleRequest

    DeleteScheduleResponse.struct_class = Types::DeleteScheduleResponse

    DeleteTagsRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "resource-arn"))
    DeleteTagsRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: __listOf__string, required: true, location: "querystring", location_name: "tagKeys"))
    DeleteTagsRequest.struct_class = Types::DeleteTagsRequest

    DescribeChannelRequest.add_member(:channel_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "channelId"))
    DescribeChannelRequest.struct_class = Types::DescribeChannelRequest

    DescribeChannelResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    DescribeChannelResponse.add_member(:cdi_input_specification, Shapes::ShapeRef.new(shape: CdiInputSpecification, location_name: "cdiInputSpecification"))
    DescribeChannelResponse.add_member(:channel_class, Shapes::ShapeRef.new(shape: ChannelClass, location_name: "channelClass"))
    DescribeChannelResponse.add_member(:destinations, Shapes::ShapeRef.new(shape: __listOfOutputDestination, location_name: "destinations"))
    DescribeChannelResponse.add_member(:egress_endpoints, Shapes::ShapeRef.new(shape: __listOfChannelEgressEndpoint, location_name: "egressEndpoints"))
    DescribeChannelResponse.add_member(:encoder_settings, Shapes::ShapeRef.new(shape: EncoderSettings, location_name: "encoderSettings"))
    DescribeChannelResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    DescribeChannelResponse.add_member(:input_attachments, Shapes::ShapeRef.new(shape: __listOfInputAttachment, location_name: "inputAttachments"))
    DescribeChannelResponse.add_member(:input_specification, Shapes::ShapeRef.new(shape: InputSpecification, location_name: "inputSpecification"))
    DescribeChannelResponse.add_member(:log_level, Shapes::ShapeRef.new(shape: LogLevel, location_name: "logLevel"))
    DescribeChannelResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    DescribeChannelResponse.add_member(:pipeline_details, Shapes::ShapeRef.new(shape: __listOfPipelineDetail, location_name: "pipelineDetails"))
    DescribeChannelResponse.add_member(:pipelines_running_count, Shapes::ShapeRef.new(shape: __integer, location_name: "pipelinesRunningCount"))
    DescribeChannelResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: __string, location_name: "roleArn"))
    DescribeChannelResponse.add_member(:state, Shapes::ShapeRef.new(shape: ChannelState, location_name: "state"))
    DescribeChannelResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    DescribeChannelResponse.struct_class = Types::DescribeChannelResponse

    DescribeInputDeviceRequest.add_member(:input_device_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "inputDeviceId"))
    DescribeInputDeviceRequest.struct_class = Types::DescribeInputDeviceRequest

    DescribeInputDeviceResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    DescribeInputDeviceResponse.add_member(:connection_state, Shapes::ShapeRef.new(shape: InputDeviceConnectionState, location_name: "connectionState"))
    DescribeInputDeviceResponse.add_member(:device_settings_sync_state, Shapes::ShapeRef.new(shape: DeviceSettingsSyncState, location_name: "deviceSettingsSyncState"))
    DescribeInputDeviceResponse.add_member(:hd_device_settings, Shapes::ShapeRef.new(shape: InputDeviceHdSettings, location_name: "hdDeviceSettings"))
    DescribeInputDeviceResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    DescribeInputDeviceResponse.add_member(:mac_address, Shapes::ShapeRef.new(shape: __string, location_name: "macAddress"))
    DescribeInputDeviceResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    DescribeInputDeviceResponse.add_member(:network_settings, Shapes::ShapeRef.new(shape: InputDeviceNetworkSettings, location_name: "networkSettings"))
    DescribeInputDeviceResponse.add_member(:serial_number, Shapes::ShapeRef.new(shape: __string, location_name: "serialNumber"))
    DescribeInputDeviceResponse.add_member(:type, Shapes::ShapeRef.new(shape: InputDeviceType, location_name: "type"))
    DescribeInputDeviceResponse.struct_class = Types::DescribeInputDeviceResponse

    DescribeInputDeviceThumbnailRequest.add_member(:input_device_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "inputDeviceId"))
    DescribeInputDeviceThumbnailRequest.add_member(:accept, Shapes::ShapeRef.new(shape: AcceptHeader, required: true, location: "header", location_name: "accept"))
    DescribeInputDeviceThumbnailRequest.struct_class = Types::DescribeInputDeviceThumbnailRequest

    DescribeInputDeviceThumbnailResponse.add_member(:body, Shapes::ShapeRef.new(shape: InputDeviceThumbnail, location_name: "body"))
    DescribeInputDeviceThumbnailResponse.add_member(:content_type, Shapes::ShapeRef.new(shape: ContentType, location: "header", location_name: "Content-Type"))
    DescribeInputDeviceThumbnailResponse.add_member(:content_length, Shapes::ShapeRef.new(shape: __long, location: "header", location_name: "Content-Length"))
    DescribeInputDeviceThumbnailResponse.add_member(:etag, Shapes::ShapeRef.new(shape: __string, location: "header", location_name: "ETag"))
    DescribeInputDeviceThumbnailResponse.add_member(:last_modified, Shapes::ShapeRef.new(shape: __timestamp, location: "header", location_name: "Last-Modified"))
    DescribeInputDeviceThumbnailResponse.struct_class = Types::DescribeInputDeviceThumbnailResponse
    DescribeInputDeviceThumbnailResponse[:payload] = :body
    DescribeInputDeviceThumbnailResponse[:payload_member] = DescribeInputDeviceThumbnailResponse.member(:body)

    DescribeInputRequest.add_member(:input_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "inputId"))
    DescribeInputRequest.struct_class = Types::DescribeInputRequest

    DescribeInputResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    DescribeInputResponse.add_member(:attached_channels, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "attachedChannels"))
    DescribeInputResponse.add_member(:destinations, Shapes::ShapeRef.new(shape: __listOfInputDestination, location_name: "destinations"))
    DescribeInputResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    DescribeInputResponse.add_member(:input_class, Shapes::ShapeRef.new(shape: InputClass, location_name: "inputClass"))
    DescribeInputResponse.add_member(:input_devices, Shapes::ShapeRef.new(shape: __listOfInputDeviceSettings, location_name: "inputDevices"))
    DescribeInputResponse.add_member(:input_source_type, Shapes::ShapeRef.new(shape: InputSourceType, location_name: "inputSourceType"))
    DescribeInputResponse.add_member(:media_connect_flows, Shapes::ShapeRef.new(shape: __listOfMediaConnectFlow, location_name: "mediaConnectFlows"))
    DescribeInputResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    DescribeInputResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: __string, location_name: "roleArn"))
    DescribeInputResponse.add_member(:security_groups, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "securityGroups"))
    DescribeInputResponse.add_member(:sources, Shapes::ShapeRef.new(shape: __listOfInputSource, location_name: "sources"))
    DescribeInputResponse.add_member(:state, Shapes::ShapeRef.new(shape: InputState, location_name: "state"))
    DescribeInputResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    DescribeInputResponse.add_member(:type, Shapes::ShapeRef.new(shape: InputType, location_name: "type"))
    DescribeInputResponse.struct_class = Types::DescribeInputResponse

    DescribeInputSecurityGroupRequest.add_member(:input_security_group_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "inputSecurityGroupId"))
    DescribeInputSecurityGroupRequest.struct_class = Types::DescribeInputSecurityGroupRequest

    DescribeInputSecurityGroupResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    DescribeInputSecurityGroupResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    DescribeInputSecurityGroupResponse.add_member(:inputs, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "inputs"))
    DescribeInputSecurityGroupResponse.add_member(:state, Shapes::ShapeRef.new(shape: InputSecurityGroupState, location_name: "state"))
    DescribeInputSecurityGroupResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    DescribeInputSecurityGroupResponse.add_member(:whitelist_rules, Shapes::ShapeRef.new(shape: __listOfInputWhitelistRule, location_name: "whitelistRules"))
    DescribeInputSecurityGroupResponse.struct_class = Types::DescribeInputSecurityGroupResponse

    DescribeMultiplexProgramRequest.add_member(:multiplex_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "multiplexId"))
    DescribeMultiplexProgramRequest.add_member(:program_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "programName"))
    DescribeMultiplexProgramRequest.struct_class = Types::DescribeMultiplexProgramRequest

    DescribeMultiplexProgramResponse.add_member(:channel_id, Shapes::ShapeRef.new(shape: __string, location_name: "channelId"))
    DescribeMultiplexProgramResponse.add_member(:multiplex_program_settings, Shapes::ShapeRef.new(shape: MultiplexProgramSettings, location_name: "multiplexProgramSettings"))
    DescribeMultiplexProgramResponse.add_member(:packet_identifiers_map, Shapes::ShapeRef.new(shape: MultiplexProgramPacketIdentifiersMap, location_name: "packetIdentifiersMap"))
    DescribeMultiplexProgramResponse.add_member(:pipeline_details, Shapes::ShapeRef.new(shape: __listOfMultiplexProgramPipelineDetail, location_name: "pipelineDetails"))
    DescribeMultiplexProgramResponse.add_member(:program_name, Shapes::ShapeRef.new(shape: __string, location_name: "programName"))
    DescribeMultiplexProgramResponse.struct_class = Types::DescribeMultiplexProgramResponse

    DescribeMultiplexRequest.add_member(:multiplex_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "multiplexId"))
    DescribeMultiplexRequest.struct_class = Types::DescribeMultiplexRequest

    DescribeMultiplexResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    DescribeMultiplexResponse.add_member(:availability_zones, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "availabilityZones"))
    DescribeMultiplexResponse.add_member(:destinations, Shapes::ShapeRef.new(shape: __listOfMultiplexOutputDestination, location_name: "destinations"))
    DescribeMultiplexResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    DescribeMultiplexResponse.add_member(:multiplex_settings, Shapes::ShapeRef.new(shape: MultiplexSettings, location_name: "multiplexSettings"))
    DescribeMultiplexResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    DescribeMultiplexResponse.add_member(:pipelines_running_count, Shapes::ShapeRef.new(shape: __integer, location_name: "pipelinesRunningCount"))
    DescribeMultiplexResponse.add_member(:program_count, Shapes::ShapeRef.new(shape: __integer, location_name: "programCount"))
    DescribeMultiplexResponse.add_member(:state, Shapes::ShapeRef.new(shape: MultiplexState, location_name: "state"))
    DescribeMultiplexResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    DescribeMultiplexResponse.struct_class = Types::DescribeMultiplexResponse

    DescribeOfferingRequest.add_member(:offering_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "offeringId"))
    DescribeOfferingRequest.struct_class = Types::DescribeOfferingRequest

    DescribeOfferingResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    DescribeOfferingResponse.add_member(:currency_code, Shapes::ShapeRef.new(shape: __string, location_name: "currencyCode"))
    DescribeOfferingResponse.add_member(:duration, Shapes::ShapeRef.new(shape: __integer, location_name: "duration"))
    DescribeOfferingResponse.add_member(:duration_units, Shapes::ShapeRef.new(shape: OfferingDurationUnits, location_name: "durationUnits"))
    DescribeOfferingResponse.add_member(:fixed_price, Shapes::ShapeRef.new(shape: __double, location_name: "fixedPrice"))
    DescribeOfferingResponse.add_member(:offering_description, Shapes::ShapeRef.new(shape: __string, location_name: "offeringDescription"))
    DescribeOfferingResponse.add_member(:offering_id, Shapes::ShapeRef.new(shape: __string, location_name: "offeringId"))
    DescribeOfferingResponse.add_member(:offering_type, Shapes::ShapeRef.new(shape: OfferingType, location_name: "offeringType"))
    DescribeOfferingResponse.add_member(:region, Shapes::ShapeRef.new(shape: __string, location_name: "region"))
    DescribeOfferingResponse.add_member(:resource_specification, Shapes::ShapeRef.new(shape: ReservationResourceSpecification, location_name: "resourceSpecification"))
    DescribeOfferingResponse.add_member(:usage_price, Shapes::ShapeRef.new(shape: __double, location_name: "usagePrice"))
    DescribeOfferingResponse.struct_class = Types::DescribeOfferingResponse

    DescribeReservationRequest.add_member(:reservation_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "reservationId"))
    DescribeReservationRequest.struct_class = Types::DescribeReservationRequest

    DescribeReservationResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    DescribeReservationResponse.add_member(:count, Shapes::ShapeRef.new(shape: __integer, location_name: "count"))
    DescribeReservationResponse.add_member(:currency_code, Shapes::ShapeRef.new(shape: __string, location_name: "currencyCode"))
    DescribeReservationResponse.add_member(:duration, Shapes::ShapeRef.new(shape: __integer, location_name: "duration"))
    DescribeReservationResponse.add_member(:duration_units, Shapes::ShapeRef.new(shape: OfferingDurationUnits, location_name: "durationUnits"))
    DescribeReservationResponse.add_member(:end, Shapes::ShapeRef.new(shape: __string, location_name: "end"))
    DescribeReservationResponse.add_member(:fixed_price, Shapes::ShapeRef.new(shape: __double, location_name: "fixedPrice"))
    DescribeReservationResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    DescribeReservationResponse.add_member(:offering_description, Shapes::ShapeRef.new(shape: __string, location_name: "offeringDescription"))
    DescribeReservationResponse.add_member(:offering_id, Shapes::ShapeRef.new(shape: __string, location_name: "offeringId"))
    DescribeReservationResponse.add_member(:offering_type, Shapes::ShapeRef.new(shape: OfferingType, location_name: "offeringType"))
    DescribeReservationResponse.add_member(:region, Shapes::ShapeRef.new(shape: __string, location_name: "region"))
    DescribeReservationResponse.add_member(:reservation_id, Shapes::ShapeRef.new(shape: __string, location_name: "reservationId"))
    DescribeReservationResponse.add_member(:resource_specification, Shapes::ShapeRef.new(shape: ReservationResourceSpecification, location_name: "resourceSpecification"))
    DescribeReservationResponse.add_member(:start, Shapes::ShapeRef.new(shape: __string, location_name: "start"))
    DescribeReservationResponse.add_member(:state, Shapes::ShapeRef.new(shape: ReservationState, location_name: "state"))
    DescribeReservationResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    DescribeReservationResponse.add_member(:usage_price, Shapes::ShapeRef.new(shape: __double, location_name: "usagePrice"))
    DescribeReservationResponse.struct_class = Types::DescribeReservationResponse

    DescribeScheduleRequest.add_member(:channel_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "channelId"))
    DescribeScheduleRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    DescribeScheduleRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    DescribeScheduleRequest.struct_class = Types::DescribeScheduleRequest

    DescribeScheduleResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    DescribeScheduleResponse.add_member(:schedule_actions, Shapes::ShapeRef.new(shape: __listOfScheduleAction, location_name: "scheduleActions"))
    DescribeScheduleResponse.struct_class = Types::DescribeScheduleResponse

    DvbNitSettings.add_member(:network_id, Shapes::ShapeRef.new(shape: __integerMin0Max65536, required: true, location_name: "networkId"))
    DvbNitSettings.add_member(:network_name, Shapes::ShapeRef.new(shape: __stringMin1Max256, required: true, location_name: "networkName"))
    DvbNitSettings.add_member(:rep_interval, Shapes::ShapeRef.new(shape: __integerMin25Max10000, location_name: "repInterval"))
    DvbNitSettings.struct_class = Types::DvbNitSettings

    DvbSdtSettings.add_member(:output_sdt, Shapes::ShapeRef.new(shape: DvbSdtOutputSdt, location_name: "outputSdt"))
    DvbSdtSettings.add_member(:rep_interval, Shapes::ShapeRef.new(shape: __integerMin25Max2000, location_name: "repInterval"))
    DvbSdtSettings.add_member(:service_name, Shapes::ShapeRef.new(shape: __stringMin1Max256, location_name: "serviceName"))
    DvbSdtSettings.add_member(:service_provider_name, Shapes::ShapeRef.new(shape: __stringMin1Max256, location_name: "serviceProviderName"))
    DvbSdtSettings.struct_class = Types::DvbSdtSettings

    DvbSubDestinationSettings.add_member(:alignment, Shapes::ShapeRef.new(shape: DvbSubDestinationAlignment, location_name: "alignment"))
    DvbSubDestinationSettings.add_member(:background_color, Shapes::ShapeRef.new(shape: DvbSubDestinationBackgroundColor, location_name: "backgroundColor"))
    DvbSubDestinationSettings.add_member(:background_opacity, Shapes::ShapeRef.new(shape: __integerMin0Max255, location_name: "backgroundOpacity"))
    DvbSubDestinationSettings.add_member(:font, Shapes::ShapeRef.new(shape: InputLocation, location_name: "font"))
    DvbSubDestinationSettings.add_member(:font_color, Shapes::ShapeRef.new(shape: DvbSubDestinationFontColor, location_name: "fontColor"))
    DvbSubDestinationSettings.add_member(:font_opacity, Shapes::ShapeRef.new(shape: __integerMin0Max255, location_name: "fontOpacity"))
    DvbSubDestinationSettings.add_member(:font_resolution, Shapes::ShapeRef.new(shape: __integerMin96Max600, location_name: "fontResolution"))
    DvbSubDestinationSettings.add_member(:font_size, Shapes::ShapeRef.new(shape: __string, location_name: "fontSize"))
    DvbSubDestinationSettings.add_member(:outline_color, Shapes::ShapeRef.new(shape: DvbSubDestinationOutlineColor, location_name: "outlineColor"))
    DvbSubDestinationSettings.add_member(:outline_size, Shapes::ShapeRef.new(shape: __integerMin0Max10, location_name: "outlineSize"))
    DvbSubDestinationSettings.add_member(:shadow_color, Shapes::ShapeRef.new(shape: DvbSubDestinationShadowColor, location_name: "shadowColor"))
    DvbSubDestinationSettings.add_member(:shadow_opacity, Shapes::ShapeRef.new(shape: __integerMin0Max255, location_name: "shadowOpacity"))
    DvbSubDestinationSettings.add_member(:shadow_x_offset, Shapes::ShapeRef.new(shape: __integer, location_name: "shadowXOffset"))
    DvbSubDestinationSettings.add_member(:shadow_y_offset, Shapes::ShapeRef.new(shape: __integer, location_name: "shadowYOffset"))
    DvbSubDestinationSettings.add_member(:teletext_grid_control, Shapes::ShapeRef.new(shape: DvbSubDestinationTeletextGridControl, location_name: "teletextGridControl"))
    DvbSubDestinationSettings.add_member(:x_position, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "xPosition"))
    DvbSubDestinationSettings.add_member(:y_position, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "yPosition"))
    DvbSubDestinationSettings.struct_class = Types::DvbSubDestinationSettings

    DvbSubSourceSettings.add_member(:pid, Shapes::ShapeRef.new(shape: __integerMin1, location_name: "pid"))
    DvbSubSourceSettings.struct_class = Types::DvbSubSourceSettings

    DvbTdtSettings.add_member(:rep_interval, Shapes::ShapeRef.new(shape: __integerMin1000Max30000, location_name: "repInterval"))
    DvbTdtSettings.struct_class = Types::DvbTdtSettings

    Eac3Settings.add_member(:attenuation_control, Shapes::ShapeRef.new(shape: Eac3AttenuationControl, location_name: "attenuationControl"))
    Eac3Settings.add_member(:bitrate, Shapes::ShapeRef.new(shape: __double, location_name: "bitrate"))
    Eac3Settings.add_member(:bitstream_mode, Shapes::ShapeRef.new(shape: Eac3BitstreamMode, location_name: "bitstreamMode"))
    Eac3Settings.add_member(:coding_mode, Shapes::ShapeRef.new(shape: Eac3CodingMode, location_name: "codingMode"))
    Eac3Settings.add_member(:dc_filter, Shapes::ShapeRef.new(shape: Eac3DcFilter, location_name: "dcFilter"))
    Eac3Settings.add_member(:dialnorm, Shapes::ShapeRef.new(shape: __integerMin1Max31, location_name: "dialnorm"))
    Eac3Settings.add_member(:drc_line, Shapes::ShapeRef.new(shape: Eac3DrcLine, location_name: "drcLine"))
    Eac3Settings.add_member(:drc_rf, Shapes::ShapeRef.new(shape: Eac3DrcRf, location_name: "drcRf"))
    Eac3Settings.add_member(:lfe_control, Shapes::ShapeRef.new(shape: Eac3LfeControl, location_name: "lfeControl"))
    Eac3Settings.add_member(:lfe_filter, Shapes::ShapeRef.new(shape: Eac3LfeFilter, location_name: "lfeFilter"))
    Eac3Settings.add_member(:lo_ro_center_mix_level, Shapes::ShapeRef.new(shape: __double, location_name: "loRoCenterMixLevel"))
    Eac3Settings.add_member(:lo_ro_surround_mix_level, Shapes::ShapeRef.new(shape: __double, location_name: "loRoSurroundMixLevel"))
    Eac3Settings.add_member(:lt_rt_center_mix_level, Shapes::ShapeRef.new(shape: __double, location_name: "ltRtCenterMixLevel"))
    Eac3Settings.add_member(:lt_rt_surround_mix_level, Shapes::ShapeRef.new(shape: __double, location_name: "ltRtSurroundMixLevel"))
    Eac3Settings.add_member(:metadata_control, Shapes::ShapeRef.new(shape: Eac3MetadataControl, location_name: "metadataControl"))
    Eac3Settings.add_member(:passthrough_control, Shapes::ShapeRef.new(shape: Eac3PassthroughControl, location_name: "passthroughControl"))
    Eac3Settings.add_member(:phase_control, Shapes::ShapeRef.new(shape: Eac3PhaseControl, location_name: "phaseControl"))
    Eac3Settings.add_member(:stereo_downmix, Shapes::ShapeRef.new(shape: Eac3StereoDownmix, location_name: "stereoDownmix"))
    Eac3Settings.add_member(:surround_ex_mode, Shapes::ShapeRef.new(shape: Eac3SurroundExMode, location_name: "surroundExMode"))
    Eac3Settings.add_member(:surround_mode, Shapes::ShapeRef.new(shape: Eac3SurroundMode, location_name: "surroundMode"))
    Eac3Settings.struct_class = Types::Eac3Settings

    EbuTtDDestinationSettings.add_member(:fill_line_gap, Shapes::ShapeRef.new(shape: EbuTtDFillLineGapControl, location_name: "fillLineGap"))
    EbuTtDDestinationSettings.add_member(:font_family, Shapes::ShapeRef.new(shape: __string, location_name: "fontFamily"))
    EbuTtDDestinationSettings.add_member(:style_control, Shapes::ShapeRef.new(shape: EbuTtDDestinationStyleControl, location_name: "styleControl"))
    EbuTtDDestinationSettings.struct_class = Types::EbuTtDDestinationSettings

    EmbeddedDestinationSettings.struct_class = Types::EmbeddedDestinationSettings

    EmbeddedPlusScte20DestinationSettings.struct_class = Types::EmbeddedPlusScte20DestinationSettings

    EmbeddedSourceSettings.add_member(:convert_608_to_708, Shapes::ShapeRef.new(shape: EmbeddedConvert608To708, location_name: "convert608To708"))
    EmbeddedSourceSettings.add_member(:scte_20_detection, Shapes::ShapeRef.new(shape: EmbeddedScte20Detection, location_name: "scte20Detection"))
    EmbeddedSourceSettings.add_member(:source_608_channel_number, Shapes::ShapeRef.new(shape: __integerMin1Max4, location_name: "source608ChannelNumber"))
    EmbeddedSourceSettings.add_member(:source_608_track_number, Shapes::ShapeRef.new(shape: __integerMin1Max5, location_name: "source608TrackNumber"))
    EmbeddedSourceSettings.struct_class = Types::EmbeddedSourceSettings

    Empty.struct_class = Types::Empty

    EncoderSettings.add_member(:audio_descriptions, Shapes::ShapeRef.new(shape: __listOfAudioDescription, required: true, location_name: "audioDescriptions"))
    EncoderSettings.add_member(:avail_blanking, Shapes::ShapeRef.new(shape: AvailBlanking, location_name: "availBlanking"))
    EncoderSettings.add_member(:avail_configuration, Shapes::ShapeRef.new(shape: AvailConfiguration, location_name: "availConfiguration"))
    EncoderSettings.add_member(:blackout_slate, Shapes::ShapeRef.new(shape: BlackoutSlate, location_name: "blackoutSlate"))
    EncoderSettings.add_member(:caption_descriptions, Shapes::ShapeRef.new(shape: __listOfCaptionDescription, location_name: "captionDescriptions"))
    EncoderSettings.add_member(:feature_activations, Shapes::ShapeRef.new(shape: FeatureActivations, location_name: "featureActivations"))
    EncoderSettings.add_member(:global_configuration, Shapes::ShapeRef.new(shape: GlobalConfiguration, location_name: "globalConfiguration"))
    EncoderSettings.add_member(:nielsen_configuration, Shapes::ShapeRef.new(shape: NielsenConfiguration, location_name: "nielsenConfiguration"))
    EncoderSettings.add_member(:output_groups, Shapes::ShapeRef.new(shape: __listOfOutputGroup, required: true, location_name: "outputGroups"))
    EncoderSettings.add_member(:timecode_config, Shapes::ShapeRef.new(shape: TimecodeConfig, required: true, location_name: "timecodeConfig"))
    EncoderSettings.add_member(:video_descriptions, Shapes::ShapeRef.new(shape: __listOfVideoDescription, required: true, location_name: "videoDescriptions"))
    EncoderSettings.struct_class = Types::EncoderSettings

    FeatureActivations.add_member(:input_prepare_schedule_actions, Shapes::ShapeRef.new(shape: FeatureActivationsInputPrepareScheduleActions, location_name: "inputPrepareScheduleActions"))
    FeatureActivations.struct_class = Types::FeatureActivations

    FecOutputSettings.add_member(:column_depth, Shapes::ShapeRef.new(shape: __integerMin4Max20, location_name: "columnDepth"))
    FecOutputSettings.add_member(:include_fec, Shapes::ShapeRef.new(shape: FecOutputIncludeFec, location_name: "includeFec"))
    FecOutputSettings.add_member(:row_length, Shapes::ShapeRef.new(shape: __integerMin1Max20, location_name: "rowLength"))
    FecOutputSettings.struct_class = Types::FecOutputSettings

    FixedModeScheduleActionStartSettings.add_member(:time, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "time"))
    FixedModeScheduleActionStartSettings.struct_class = Types::FixedModeScheduleActionStartSettings

    Fmp4HlsSettings.add_member(:audio_rendition_sets, Shapes::ShapeRef.new(shape: __string, location_name: "audioRenditionSets"))
    Fmp4HlsSettings.add_member(:nielsen_id_3_behavior, Shapes::ShapeRef.new(shape: Fmp4NielsenId3Behavior, location_name: "nielsenId3Behavior"))
    Fmp4HlsSettings.add_member(:timed_metadata_behavior, Shapes::ShapeRef.new(shape: Fmp4TimedMetadataBehavior, location_name: "timedMetadataBehavior"))
    Fmp4HlsSettings.struct_class = Types::Fmp4HlsSettings

    FollowModeScheduleActionStartSettings.add_member(:follow_point, Shapes::ShapeRef.new(shape: FollowPoint, required: true, location_name: "followPoint"))
    FollowModeScheduleActionStartSettings.add_member(:reference_action_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "referenceActionName"))
    FollowModeScheduleActionStartSettings.struct_class = Types::FollowModeScheduleActionStartSettings

    ForbiddenException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    ForbiddenException.struct_class = Types::ForbiddenException

    FrameCaptureGroupSettings.add_member(:destination, Shapes::ShapeRef.new(shape: OutputLocationRef, required: true, location_name: "destination"))
    FrameCaptureGroupSettings.struct_class = Types::FrameCaptureGroupSettings

    FrameCaptureOutputSettings.add_member(:name_modifier, Shapes::ShapeRef.new(shape: __string, location_name: "nameModifier"))
    FrameCaptureOutputSettings.struct_class = Types::FrameCaptureOutputSettings

    FrameCaptureSettings.add_member(:capture_interval, Shapes::ShapeRef.new(shape: __integerMin1Max3600000, required: true, location_name: "captureInterval"))
    FrameCaptureSettings.add_member(:capture_interval_units, Shapes::ShapeRef.new(shape: FrameCaptureIntervalUnit, location_name: "captureIntervalUnits"))
    FrameCaptureSettings.struct_class = Types::FrameCaptureSettings

    GatewayTimeoutException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    GatewayTimeoutException.struct_class = Types::GatewayTimeoutException

    GlobalConfiguration.add_member(:initial_audio_gain, Shapes::ShapeRef.new(shape: __integerMinNegative60Max60, location_name: "initialAudioGain"))
    GlobalConfiguration.add_member(:input_end_action, Shapes::ShapeRef.new(shape: GlobalConfigurationInputEndAction, location_name: "inputEndAction"))
    GlobalConfiguration.add_member(:input_loss_behavior, Shapes::ShapeRef.new(shape: InputLossBehavior, location_name: "inputLossBehavior"))
    GlobalConfiguration.add_member(:output_locking_mode, Shapes::ShapeRef.new(shape: GlobalConfigurationOutputLockingMode, location_name: "outputLockingMode"))
    GlobalConfiguration.add_member(:output_timing_source, Shapes::ShapeRef.new(shape: GlobalConfigurationOutputTimingSource, location_name: "outputTimingSource"))
    GlobalConfiguration.add_member(:support_low_framerate_inputs, Shapes::ShapeRef.new(shape: GlobalConfigurationLowFramerateInputs, location_name: "supportLowFramerateInputs"))
    GlobalConfiguration.struct_class = Types::GlobalConfiguration

    H264ColorSpaceSettings.add_member(:color_space_passthrough_settings, Shapes::ShapeRef.new(shape: ColorSpacePassthroughSettings, location_name: "colorSpacePassthroughSettings"))
    H264ColorSpaceSettings.add_member(:rec_601_settings, Shapes::ShapeRef.new(shape: Rec601Settings, location_name: "rec601Settings"))
    H264ColorSpaceSettings.add_member(:rec_709_settings, Shapes::ShapeRef.new(shape: Rec709Settings, location_name: "rec709Settings"))
    H264ColorSpaceSettings.struct_class = Types::H264ColorSpaceSettings

    H264FilterSettings.add_member(:temporal_filter_settings, Shapes::ShapeRef.new(shape: TemporalFilterSettings, location_name: "temporalFilterSettings"))
    H264FilterSettings.struct_class = Types::H264FilterSettings

    H264Settings.add_member(:adaptive_quantization, Shapes::ShapeRef.new(shape: H264AdaptiveQuantization, location_name: "adaptiveQuantization"))
    H264Settings.add_member(:afd_signaling, Shapes::ShapeRef.new(shape: AfdSignaling, location_name: "afdSignaling"))
    H264Settings.add_member(:bitrate, Shapes::ShapeRef.new(shape: __integerMin1000, location_name: "bitrate"))
    H264Settings.add_member(:buf_fill_pct, Shapes::ShapeRef.new(shape: __integerMin0Max100, location_name: "bufFillPct"))
    H264Settings.add_member(:buf_size, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "bufSize"))
    H264Settings.add_member(:color_metadata, Shapes::ShapeRef.new(shape: H264ColorMetadata, location_name: "colorMetadata"))
    H264Settings.add_member(:color_space_settings, Shapes::ShapeRef.new(shape: H264ColorSpaceSettings, location_name: "colorSpaceSettings"))
    H264Settings.add_member(:entropy_encoding, Shapes::ShapeRef.new(shape: H264EntropyEncoding, location_name: "entropyEncoding"))
    H264Settings.add_member(:filter_settings, Shapes::ShapeRef.new(shape: H264FilterSettings, location_name: "filterSettings"))
    H264Settings.add_member(:fixed_afd, Shapes::ShapeRef.new(shape: FixedAfd, location_name: "fixedAfd"))
    H264Settings.add_member(:flicker_aq, Shapes::ShapeRef.new(shape: H264FlickerAq, location_name: "flickerAq"))
    H264Settings.add_member(:force_field_pictures, Shapes::ShapeRef.new(shape: H264ForceFieldPictures, location_name: "forceFieldPictures"))
    H264Settings.add_member(:framerate_control, Shapes::ShapeRef.new(shape: H264FramerateControl, location_name: "framerateControl"))
    H264Settings.add_member(:framerate_denominator, Shapes::ShapeRef.new(shape: __integerMin1, location_name: "framerateDenominator"))
    H264Settings.add_member(:framerate_numerator, Shapes::ShapeRef.new(shape: __integerMin1, location_name: "framerateNumerator"))
    H264Settings.add_member(:gop_b_reference, Shapes::ShapeRef.new(shape: H264GopBReference, location_name: "gopBReference"))
    H264Settings.add_member(:gop_closed_cadence, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "gopClosedCadence"))
    H264Settings.add_member(:gop_num_b_frames, Shapes::ShapeRef.new(shape: __integerMin0Max7, location_name: "gopNumBFrames"))
    H264Settings.add_member(:gop_size, Shapes::ShapeRef.new(shape: __double, location_name: "gopSize"))
    H264Settings.add_member(:gop_size_units, Shapes::ShapeRef.new(shape: H264GopSizeUnits, location_name: "gopSizeUnits"))
    H264Settings.add_member(:level, Shapes::ShapeRef.new(shape: H264Level, location_name: "level"))
    H264Settings.add_member(:look_ahead_rate_control, Shapes::ShapeRef.new(shape: H264LookAheadRateControl, location_name: "lookAheadRateControl"))
    H264Settings.add_member(:max_bitrate, Shapes::ShapeRef.new(shape: __integerMin1000, location_name: "maxBitrate"))
    H264Settings.add_member(:min_i_interval, Shapes::ShapeRef.new(shape: __integerMin0Max30, location_name: "minIInterval"))
    H264Settings.add_member(:num_ref_frames, Shapes::ShapeRef.new(shape: __integerMin1Max6, location_name: "numRefFrames"))
    H264Settings.add_member(:par_control, Shapes::ShapeRef.new(shape: H264ParControl, location_name: "parControl"))
    H264Settings.add_member(:par_denominator, Shapes::ShapeRef.new(shape: __integerMin1, location_name: "parDenominator"))
    H264Settings.add_member(:par_numerator, Shapes::ShapeRef.new(shape: __integerMin1, location_name: "parNumerator"))
    H264Settings.add_member(:profile, Shapes::ShapeRef.new(shape: H264Profile, location_name: "profile"))
    H264Settings.add_member(:quality_level, Shapes::ShapeRef.new(shape: H264QualityLevel, location_name: "qualityLevel"))
    H264Settings.add_member(:qvbr_quality_level, Shapes::ShapeRef.new(shape: __integerMin1Max10, location_name: "qvbrQualityLevel"))
    H264Settings.add_member(:rate_control_mode, Shapes::ShapeRef.new(shape: H264RateControlMode, location_name: "rateControlMode"))
    H264Settings.add_member(:scan_type, Shapes::ShapeRef.new(shape: H264ScanType, location_name: "scanType"))
    H264Settings.add_member(:scene_change_detect, Shapes::ShapeRef.new(shape: H264SceneChangeDetect, location_name: "sceneChangeDetect"))
    H264Settings.add_member(:slices, Shapes::ShapeRef.new(shape: __integerMin1Max32, location_name: "slices"))
    H264Settings.add_member(:softness, Shapes::ShapeRef.new(shape: __integerMin0Max128, location_name: "softness"))
    H264Settings.add_member(:spatial_aq, Shapes::ShapeRef.new(shape: H264SpatialAq, location_name: "spatialAq"))
    H264Settings.add_member(:subgop_length, Shapes::ShapeRef.new(shape: H264SubGopLength, location_name: "subgopLength"))
    H264Settings.add_member(:syntax, Shapes::ShapeRef.new(shape: H264Syntax, location_name: "syntax"))
    H264Settings.add_member(:temporal_aq, Shapes::ShapeRef.new(shape: H264TemporalAq, location_name: "temporalAq"))
    H264Settings.add_member(:timecode_insertion, Shapes::ShapeRef.new(shape: H264TimecodeInsertionBehavior, location_name: "timecodeInsertion"))
    H264Settings.struct_class = Types::H264Settings

    H265ColorSpaceSettings.add_member(:color_space_passthrough_settings, Shapes::ShapeRef.new(shape: ColorSpacePassthroughSettings, location_name: "colorSpacePassthroughSettings"))
    H265ColorSpaceSettings.add_member(:hdr_10_settings, Shapes::ShapeRef.new(shape: Hdr10Settings, location_name: "hdr10Settings"))
    H265ColorSpaceSettings.add_member(:rec_601_settings, Shapes::ShapeRef.new(shape: Rec601Settings, location_name: "rec601Settings"))
    H265ColorSpaceSettings.add_member(:rec_709_settings, Shapes::ShapeRef.new(shape: Rec709Settings, location_name: "rec709Settings"))
    H265ColorSpaceSettings.struct_class = Types::H265ColorSpaceSettings

    H265FilterSettings.add_member(:temporal_filter_settings, Shapes::ShapeRef.new(shape: TemporalFilterSettings, location_name: "temporalFilterSettings"))
    H265FilterSettings.struct_class = Types::H265FilterSettings

    H265Settings.add_member(:adaptive_quantization, Shapes::ShapeRef.new(shape: H265AdaptiveQuantization, location_name: "adaptiveQuantization"))
    H265Settings.add_member(:afd_signaling, Shapes::ShapeRef.new(shape: AfdSignaling, location_name: "afdSignaling"))
    H265Settings.add_member(:alternative_transfer_function, Shapes::ShapeRef.new(shape: H265AlternativeTransferFunction, location_name: "alternativeTransferFunction"))
    H265Settings.add_member(:bitrate, Shapes::ShapeRef.new(shape: __integerMin100000Max40000000, location_name: "bitrate"))
    H265Settings.add_member(:buf_size, Shapes::ShapeRef.new(shape: __integerMin100000Max80000000, location_name: "bufSize"))
    H265Settings.add_member(:color_metadata, Shapes::ShapeRef.new(shape: H265ColorMetadata, location_name: "colorMetadata"))
    H265Settings.add_member(:color_space_settings, Shapes::ShapeRef.new(shape: H265ColorSpaceSettings, location_name: "colorSpaceSettings"))
    H265Settings.add_member(:filter_settings, Shapes::ShapeRef.new(shape: H265FilterSettings, location_name: "filterSettings"))
    H265Settings.add_member(:fixed_afd, Shapes::ShapeRef.new(shape: FixedAfd, location_name: "fixedAfd"))
    H265Settings.add_member(:flicker_aq, Shapes::ShapeRef.new(shape: H265FlickerAq, location_name: "flickerAq"))
    H265Settings.add_member(:framerate_denominator, Shapes::ShapeRef.new(shape: __integerMin1Max3003, required: true, location_name: "framerateDenominator"))
    H265Settings.add_member(:framerate_numerator, Shapes::ShapeRef.new(shape: __integerMin1, required: true, location_name: "framerateNumerator"))
    H265Settings.add_member(:gop_closed_cadence, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "gopClosedCadence"))
    H265Settings.add_member(:gop_size, Shapes::ShapeRef.new(shape: __double, location_name: "gopSize"))
    H265Settings.add_member(:gop_size_units, Shapes::ShapeRef.new(shape: H265GopSizeUnits, location_name: "gopSizeUnits"))
    H265Settings.add_member(:level, Shapes::ShapeRef.new(shape: H265Level, location_name: "level"))
    H265Settings.add_member(:look_ahead_rate_control, Shapes::ShapeRef.new(shape: H265LookAheadRateControl, location_name: "lookAheadRateControl"))
    H265Settings.add_member(:max_bitrate, Shapes::ShapeRef.new(shape: __integerMin100000Max40000000, location_name: "maxBitrate"))
    H265Settings.add_member(:min_i_interval, Shapes::ShapeRef.new(shape: __integerMin0Max30, location_name: "minIInterval"))
    H265Settings.add_member(:par_denominator, Shapes::ShapeRef.new(shape: __integerMin1, location_name: "parDenominator"))
    H265Settings.add_member(:par_numerator, Shapes::ShapeRef.new(shape: __integerMin1, location_name: "parNumerator"))
    H265Settings.add_member(:profile, Shapes::ShapeRef.new(shape: H265Profile, location_name: "profile"))
    H265Settings.add_member(:qvbr_quality_level, Shapes::ShapeRef.new(shape: __integerMin1Max10, location_name: "qvbrQualityLevel"))
    H265Settings.add_member(:rate_control_mode, Shapes::ShapeRef.new(shape: H265RateControlMode, location_name: "rateControlMode"))
    H265Settings.add_member(:scan_type, Shapes::ShapeRef.new(shape: H265ScanType, location_name: "scanType"))
    H265Settings.add_member(:scene_change_detect, Shapes::ShapeRef.new(shape: H265SceneChangeDetect, location_name: "sceneChangeDetect"))
    H265Settings.add_member(:slices, Shapes::ShapeRef.new(shape: __integerMin1Max16, location_name: "slices"))
    H265Settings.add_member(:tier, Shapes::ShapeRef.new(shape: H265Tier, location_name: "tier"))
    H265Settings.add_member(:timecode_insertion, Shapes::ShapeRef.new(shape: H265TimecodeInsertionBehavior, location_name: "timecodeInsertion"))
    H265Settings.struct_class = Types::H265Settings

    Hdr10Settings.add_member(:max_cll, Shapes::ShapeRef.new(shape: __integerMin0Max32768, location_name: "maxCll"))
    Hdr10Settings.add_member(:max_fall, Shapes::ShapeRef.new(shape: __integerMin0Max32768, location_name: "maxFall"))
    Hdr10Settings.struct_class = Types::Hdr10Settings

    HlsAkamaiSettings.add_member(:connection_retry_interval, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "connectionRetryInterval"))
    HlsAkamaiSettings.add_member(:filecache_duration, Shapes::ShapeRef.new(shape: __integerMin0Max600, location_name: "filecacheDuration"))
    HlsAkamaiSettings.add_member(:http_transfer_mode, Shapes::ShapeRef.new(shape: HlsAkamaiHttpTransferMode, location_name: "httpTransferMode"))
    HlsAkamaiSettings.add_member(:num_retries, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "numRetries"))
    HlsAkamaiSettings.add_member(:restart_delay, Shapes::ShapeRef.new(shape: __integerMin0Max15, location_name: "restartDelay"))
    HlsAkamaiSettings.add_member(:salt, Shapes::ShapeRef.new(shape: __string, location_name: "salt"))
    HlsAkamaiSettings.add_member(:token, Shapes::ShapeRef.new(shape: __string, location_name: "token"))
    HlsAkamaiSettings.struct_class = Types::HlsAkamaiSettings

    HlsBasicPutSettings.add_member(:connection_retry_interval, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "connectionRetryInterval"))
    HlsBasicPutSettings.add_member(:filecache_duration, Shapes::ShapeRef.new(shape: __integerMin0Max600, location_name: "filecacheDuration"))
    HlsBasicPutSettings.add_member(:num_retries, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "numRetries"))
    HlsBasicPutSettings.add_member(:restart_delay, Shapes::ShapeRef.new(shape: __integerMin0Max15, location_name: "restartDelay"))
    HlsBasicPutSettings.struct_class = Types::HlsBasicPutSettings

    HlsCdnSettings.add_member(:hls_akamai_settings, Shapes::ShapeRef.new(shape: HlsAkamaiSettings, location_name: "hlsAkamaiSettings"))
    HlsCdnSettings.add_member(:hls_basic_put_settings, Shapes::ShapeRef.new(shape: HlsBasicPutSettings, location_name: "hlsBasicPutSettings"))
    HlsCdnSettings.add_member(:hls_media_store_settings, Shapes::ShapeRef.new(shape: HlsMediaStoreSettings, location_name: "hlsMediaStoreSettings"))
    HlsCdnSettings.add_member(:hls_webdav_settings, Shapes::ShapeRef.new(shape: HlsWebdavSettings, location_name: "hlsWebdavSettings"))
    HlsCdnSettings.struct_class = Types::HlsCdnSettings

    HlsGroupSettings.add_member(:ad_markers, Shapes::ShapeRef.new(shape: __listOfHlsAdMarkers, location_name: "adMarkers"))
    HlsGroupSettings.add_member(:base_url_content, Shapes::ShapeRef.new(shape: __string, location_name: "baseUrlContent"))
    HlsGroupSettings.add_member(:base_url_content_1, Shapes::ShapeRef.new(shape: __string, location_name: "baseUrlContent1"))
    HlsGroupSettings.add_member(:base_url_manifest, Shapes::ShapeRef.new(shape: __string, location_name: "baseUrlManifest"))
    HlsGroupSettings.add_member(:base_url_manifest_1, Shapes::ShapeRef.new(shape: __string, location_name: "baseUrlManifest1"))
    HlsGroupSettings.add_member(:caption_language_mappings, Shapes::ShapeRef.new(shape: __listOfCaptionLanguageMapping, location_name: "captionLanguageMappings"))
    HlsGroupSettings.add_member(:caption_language_setting, Shapes::ShapeRef.new(shape: HlsCaptionLanguageSetting, location_name: "captionLanguageSetting"))
    HlsGroupSettings.add_member(:client_cache, Shapes::ShapeRef.new(shape: HlsClientCache, location_name: "clientCache"))
    HlsGroupSettings.add_member(:codec_specification, Shapes::ShapeRef.new(shape: HlsCodecSpecification, location_name: "codecSpecification"))
    HlsGroupSettings.add_member(:constant_iv, Shapes::ShapeRef.new(shape: __stringMin32Max32, location_name: "constantIv"))
    HlsGroupSettings.add_member(:destination, Shapes::ShapeRef.new(shape: OutputLocationRef, required: true, location_name: "destination"))
    HlsGroupSettings.add_member(:directory_structure, Shapes::ShapeRef.new(shape: HlsDirectoryStructure, location_name: "directoryStructure"))
    HlsGroupSettings.add_member(:encryption_type, Shapes::ShapeRef.new(shape: HlsEncryptionType, location_name: "encryptionType"))
    HlsGroupSettings.add_member(:hls_cdn_settings, Shapes::ShapeRef.new(shape: HlsCdnSettings, location_name: "hlsCdnSettings"))
    HlsGroupSettings.add_member(:hls_id_3_segment_tagging, Shapes::ShapeRef.new(shape: HlsId3SegmentTaggingState, location_name: "hlsId3SegmentTagging"))
    HlsGroupSettings.add_member(:i_frame_only_playlists, Shapes::ShapeRef.new(shape: IFrameOnlyPlaylistType, location_name: "iFrameOnlyPlaylists"))
    HlsGroupSettings.add_member(:index_n_segments, Shapes::ShapeRef.new(shape: __integerMin3, location_name: "indexNSegments"))
    HlsGroupSettings.add_member(:input_loss_action, Shapes::ShapeRef.new(shape: InputLossActionForHlsOut, location_name: "inputLossAction"))
    HlsGroupSettings.add_member(:iv_in_manifest, Shapes::ShapeRef.new(shape: HlsIvInManifest, location_name: "ivInManifest"))
    HlsGroupSettings.add_member(:iv_source, Shapes::ShapeRef.new(shape: HlsIvSource, location_name: "ivSource"))
    HlsGroupSettings.add_member(:keep_segments, Shapes::ShapeRef.new(shape: __integerMin1, location_name: "keepSegments"))
    HlsGroupSettings.add_member(:key_format, Shapes::ShapeRef.new(shape: __string, location_name: "keyFormat"))
    HlsGroupSettings.add_member(:key_format_versions, Shapes::ShapeRef.new(shape: __string, location_name: "keyFormatVersions"))
    HlsGroupSettings.add_member(:key_provider_settings, Shapes::ShapeRef.new(shape: KeyProviderSettings, location_name: "keyProviderSettings"))
    HlsGroupSettings.add_member(:manifest_compression, Shapes::ShapeRef.new(shape: HlsManifestCompression, location_name: "manifestCompression"))
    HlsGroupSettings.add_member(:manifest_duration_format, Shapes::ShapeRef.new(shape: HlsManifestDurationFormat, location_name: "manifestDurationFormat"))
    HlsGroupSettings.add_member(:min_segment_length, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "minSegmentLength"))
    HlsGroupSettings.add_member(:mode, Shapes::ShapeRef.new(shape: HlsMode, location_name: "mode"))
    HlsGroupSettings.add_member(:output_selection, Shapes::ShapeRef.new(shape: HlsOutputSelection, location_name: "outputSelection"))
    HlsGroupSettings.add_member(:program_date_time, Shapes::ShapeRef.new(shape: HlsProgramDateTime, location_name: "programDateTime"))
    HlsGroupSettings.add_member(:program_date_time_period, Shapes::ShapeRef.new(shape: __integerMin0Max3600, location_name: "programDateTimePeriod"))
    HlsGroupSettings.add_member(:redundant_manifest, Shapes::ShapeRef.new(shape: HlsRedundantManifest, location_name: "redundantManifest"))
    HlsGroupSettings.add_member(:segment_length, Shapes::ShapeRef.new(shape: __integerMin1, location_name: "segmentLength"))
    HlsGroupSettings.add_member(:segmentation_mode, Shapes::ShapeRef.new(shape: HlsSegmentationMode, location_name: "segmentationMode"))
    HlsGroupSettings.add_member(:segments_per_subdirectory, Shapes::ShapeRef.new(shape: __integerMin1, location_name: "segmentsPerSubdirectory"))
    HlsGroupSettings.add_member(:stream_inf_resolution, Shapes::ShapeRef.new(shape: HlsStreamInfResolution, location_name: "streamInfResolution"))
    HlsGroupSettings.add_member(:timed_metadata_id_3_frame, Shapes::ShapeRef.new(shape: HlsTimedMetadataId3Frame, location_name: "timedMetadataId3Frame"))
    HlsGroupSettings.add_member(:timed_metadata_id_3_period, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "timedMetadataId3Period"))
    HlsGroupSettings.add_member(:timestamp_delta_milliseconds, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "timestampDeltaMilliseconds"))
    HlsGroupSettings.add_member(:ts_file_mode, Shapes::ShapeRef.new(shape: HlsTsFileMode, location_name: "tsFileMode"))
    HlsGroupSettings.struct_class = Types::HlsGroupSettings

    HlsId3SegmentTaggingScheduleActionSettings.add_member(:tag, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "tag"))
    HlsId3SegmentTaggingScheduleActionSettings.struct_class = Types::HlsId3SegmentTaggingScheduleActionSettings

    HlsInputSettings.add_member(:bandwidth, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "bandwidth"))
    HlsInputSettings.add_member(:buffer_segments, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "bufferSegments"))
    HlsInputSettings.add_member(:retries, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "retries"))
    HlsInputSettings.add_member(:retry_interval, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "retryInterval"))
    HlsInputSettings.struct_class = Types::HlsInputSettings

    HlsMediaStoreSettings.add_member(:connection_retry_interval, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "connectionRetryInterval"))
    HlsMediaStoreSettings.add_member(:filecache_duration, Shapes::ShapeRef.new(shape: __integerMin0Max600, location_name: "filecacheDuration"))
    HlsMediaStoreSettings.add_member(:media_store_storage_class, Shapes::ShapeRef.new(shape: HlsMediaStoreStorageClass, location_name: "mediaStoreStorageClass"))
    HlsMediaStoreSettings.add_member(:num_retries, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "numRetries"))
    HlsMediaStoreSettings.add_member(:restart_delay, Shapes::ShapeRef.new(shape: __integerMin0Max15, location_name: "restartDelay"))
    HlsMediaStoreSettings.struct_class = Types::HlsMediaStoreSettings

    HlsOutputSettings.add_member(:h265_packaging_type, Shapes::ShapeRef.new(shape: HlsH265PackagingType, location_name: "h265PackagingType"))
    HlsOutputSettings.add_member(:hls_settings, Shapes::ShapeRef.new(shape: HlsSettings, required: true, location_name: "hlsSettings"))
    HlsOutputSettings.add_member(:name_modifier, Shapes::ShapeRef.new(shape: __stringMin1, location_name: "nameModifier"))
    HlsOutputSettings.add_member(:segment_modifier, Shapes::ShapeRef.new(shape: __string, location_name: "segmentModifier"))
    HlsOutputSettings.struct_class = Types::HlsOutputSettings

    HlsSettings.add_member(:audio_only_hls_settings, Shapes::ShapeRef.new(shape: AudioOnlyHlsSettings, location_name: "audioOnlyHlsSettings"))
    HlsSettings.add_member(:fmp_4_hls_settings, Shapes::ShapeRef.new(shape: Fmp4HlsSettings, location_name: "fmp4HlsSettings"))
    HlsSettings.add_member(:standard_hls_settings, Shapes::ShapeRef.new(shape: StandardHlsSettings, location_name: "standardHlsSettings"))
    HlsSettings.struct_class = Types::HlsSettings

    HlsTimedMetadataScheduleActionSettings.add_member(:id_3, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "id3"))
    HlsTimedMetadataScheduleActionSettings.struct_class = Types::HlsTimedMetadataScheduleActionSettings

    HlsWebdavSettings.add_member(:connection_retry_interval, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "connectionRetryInterval"))
    HlsWebdavSettings.add_member(:filecache_duration, Shapes::ShapeRef.new(shape: __integerMin0Max600, location_name: "filecacheDuration"))
    HlsWebdavSettings.add_member(:http_transfer_mode, Shapes::ShapeRef.new(shape: HlsWebdavHttpTransferMode, location_name: "httpTransferMode"))
    HlsWebdavSettings.add_member(:num_retries, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "numRetries"))
    HlsWebdavSettings.add_member(:restart_delay, Shapes::ShapeRef.new(shape: __integerMin0Max15, location_name: "restartDelay"))
    HlsWebdavSettings.struct_class = Types::HlsWebdavSettings

    ImmediateModeScheduleActionStartSettings.struct_class = Types::ImmediateModeScheduleActionStartSettings

    Input.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    Input.add_member(:attached_channels, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "attachedChannels"))
    Input.add_member(:destinations, Shapes::ShapeRef.new(shape: __listOfInputDestination, location_name: "destinations"))
    Input.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    Input.add_member(:input_class, Shapes::ShapeRef.new(shape: InputClass, location_name: "inputClass"))
    Input.add_member(:input_devices, Shapes::ShapeRef.new(shape: __listOfInputDeviceSettings, location_name: "inputDevices"))
    Input.add_member(:input_source_type, Shapes::ShapeRef.new(shape: InputSourceType, location_name: "inputSourceType"))
    Input.add_member(:media_connect_flows, Shapes::ShapeRef.new(shape: __listOfMediaConnectFlow, location_name: "mediaConnectFlows"))
    Input.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    Input.add_member(:role_arn, Shapes::ShapeRef.new(shape: __string, location_name: "roleArn"))
    Input.add_member(:security_groups, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "securityGroups"))
    Input.add_member(:sources, Shapes::ShapeRef.new(shape: __listOfInputSource, location_name: "sources"))
    Input.add_member(:state, Shapes::ShapeRef.new(shape: InputState, location_name: "state"))
    Input.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    Input.add_member(:type, Shapes::ShapeRef.new(shape: InputType, location_name: "type"))
    Input.struct_class = Types::Input

    InputAttachment.add_member(:automatic_input_failover_settings, Shapes::ShapeRef.new(shape: AutomaticInputFailoverSettings, location_name: "automaticInputFailoverSettings"))
    InputAttachment.add_member(:input_attachment_name, Shapes::ShapeRef.new(shape: __string, location_name: "inputAttachmentName"))
    InputAttachment.add_member(:input_id, Shapes::ShapeRef.new(shape: __string, location_name: "inputId"))
    InputAttachment.add_member(:input_settings, Shapes::ShapeRef.new(shape: InputSettings, location_name: "inputSettings"))
    InputAttachment.struct_class = Types::InputAttachment

    InputChannelLevel.add_member(:gain, Shapes::ShapeRef.new(shape: __integerMinNegative60Max6, required: true, location_name: "gain"))
    InputChannelLevel.add_member(:input_channel, Shapes::ShapeRef.new(shape: __integerMin0Max15, required: true, location_name: "inputChannel"))
    InputChannelLevel.struct_class = Types::InputChannelLevel

    InputClippingSettings.add_member(:input_timecode_source, Shapes::ShapeRef.new(shape: InputTimecodeSource, required: true, location_name: "inputTimecodeSource"))
    InputClippingSettings.add_member(:start_timecode, Shapes::ShapeRef.new(shape: StartTimecode, location_name: "startTimecode"))
    InputClippingSettings.add_member(:stop_timecode, Shapes::ShapeRef.new(shape: StopTimecode, location_name: "stopTimecode"))
    InputClippingSettings.struct_class = Types::InputClippingSettings

    InputDestination.add_member(:ip, Shapes::ShapeRef.new(shape: __string, location_name: "ip"))
    InputDestination.add_member(:port, Shapes::ShapeRef.new(shape: __string, location_name: "port"))
    InputDestination.add_member(:url, Shapes::ShapeRef.new(shape: __string, location_name: "url"))
    InputDestination.add_member(:vpc, Shapes::ShapeRef.new(shape: InputDestinationVpc, location_name: "vpc"))
    InputDestination.struct_class = Types::InputDestination

    InputDestinationRequest.add_member(:stream_name, Shapes::ShapeRef.new(shape: __string, location_name: "streamName"))
    InputDestinationRequest.struct_class = Types::InputDestinationRequest

    InputDestinationVpc.add_member(:availability_zone, Shapes::ShapeRef.new(shape: __string, location_name: "availabilityZone"))
    InputDestinationVpc.add_member(:network_interface_id, Shapes::ShapeRef.new(shape: __string, location_name: "networkInterfaceId"))
    InputDestinationVpc.struct_class = Types::InputDestinationVpc

    InputDevice.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    InputDevice.add_member(:connection_state, Shapes::ShapeRef.new(shape: InputDeviceConnectionState, location_name: "connectionState"))
    InputDevice.add_member(:device_settings_sync_state, Shapes::ShapeRef.new(shape: DeviceSettingsSyncState, location_name: "deviceSettingsSyncState"))
    InputDevice.add_member(:hd_device_settings, Shapes::ShapeRef.new(shape: InputDeviceHdSettings, location_name: "hdDeviceSettings"))
    InputDevice.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    InputDevice.add_member(:mac_address, Shapes::ShapeRef.new(shape: __string, location_name: "macAddress"))
    InputDevice.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    InputDevice.add_member(:network_settings, Shapes::ShapeRef.new(shape: InputDeviceNetworkSettings, location_name: "networkSettings"))
    InputDevice.add_member(:serial_number, Shapes::ShapeRef.new(shape: __string, location_name: "serialNumber"))
    InputDevice.add_member(:type, Shapes::ShapeRef.new(shape: InputDeviceType, location_name: "type"))
    InputDevice.struct_class = Types::InputDevice

    InputDeviceConfigurableSettings.add_member(:configured_input, Shapes::ShapeRef.new(shape: InputDeviceConfiguredInput, location_name: "configuredInput"))
    InputDeviceConfigurableSettings.add_member(:max_bitrate, Shapes::ShapeRef.new(shape: __integer, location_name: "maxBitrate"))
    InputDeviceConfigurableSettings.struct_class = Types::InputDeviceConfigurableSettings

    InputDeviceConfigurationValidationError.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    InputDeviceConfigurationValidationError.add_member(:validation_errors, Shapes::ShapeRef.new(shape: __listOfValidationError, location_name: "validationErrors"))
    InputDeviceConfigurationValidationError.struct_class = Types::InputDeviceConfigurationValidationError

    InputDeviceHdSettings.add_member(:active_input, Shapes::ShapeRef.new(shape: InputDeviceActiveInput, location_name: "activeInput"))
    InputDeviceHdSettings.add_member(:configured_input, Shapes::ShapeRef.new(shape: InputDeviceConfiguredInput, location_name: "configuredInput"))
    InputDeviceHdSettings.add_member(:device_state, Shapes::ShapeRef.new(shape: InputDeviceState, location_name: "deviceState"))
    InputDeviceHdSettings.add_member(:framerate, Shapes::ShapeRef.new(shape: __double, location_name: "framerate"))
    InputDeviceHdSettings.add_member(:height, Shapes::ShapeRef.new(shape: __integer, location_name: "height"))
    InputDeviceHdSettings.add_member(:max_bitrate, Shapes::ShapeRef.new(shape: __integer, location_name: "maxBitrate"))
    InputDeviceHdSettings.add_member(:scan_type, Shapes::ShapeRef.new(shape: InputDeviceScanType, location_name: "scanType"))
    InputDeviceHdSettings.add_member(:width, Shapes::ShapeRef.new(shape: __integer, location_name: "width"))
    InputDeviceHdSettings.struct_class = Types::InputDeviceHdSettings

    InputDeviceNetworkSettings.add_member(:dns_addresses, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "dnsAddresses"))
    InputDeviceNetworkSettings.add_member(:gateway, Shapes::ShapeRef.new(shape: __string, location_name: "gateway"))
    InputDeviceNetworkSettings.add_member(:ip_address, Shapes::ShapeRef.new(shape: __string, location_name: "ipAddress"))
    InputDeviceNetworkSettings.add_member(:ip_scheme, Shapes::ShapeRef.new(shape: InputDeviceIpScheme, location_name: "ipScheme"))
    InputDeviceNetworkSettings.add_member(:subnet_mask, Shapes::ShapeRef.new(shape: __string, location_name: "subnetMask"))
    InputDeviceNetworkSettings.struct_class = Types::InputDeviceNetworkSettings

    InputDeviceRequest.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    InputDeviceRequest.struct_class = Types::InputDeviceRequest

    InputDeviceSettings.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    InputDeviceSettings.struct_class = Types::InputDeviceSettings

    InputDeviceSummary.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    InputDeviceSummary.add_member(:connection_state, Shapes::ShapeRef.new(shape: InputDeviceConnectionState, location_name: "connectionState"))
    InputDeviceSummary.add_member(:device_settings_sync_state, Shapes::ShapeRef.new(shape: DeviceSettingsSyncState, location_name: "deviceSettingsSyncState"))
    InputDeviceSummary.add_member(:hd_device_settings, Shapes::ShapeRef.new(shape: InputDeviceHdSettings, location_name: "hdDeviceSettings"))
    InputDeviceSummary.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    InputDeviceSummary.add_member(:mac_address, Shapes::ShapeRef.new(shape: __string, location_name: "macAddress"))
    InputDeviceSummary.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    InputDeviceSummary.add_member(:network_settings, Shapes::ShapeRef.new(shape: InputDeviceNetworkSettings, location_name: "networkSettings"))
    InputDeviceSummary.add_member(:serial_number, Shapes::ShapeRef.new(shape: __string, location_name: "serialNumber"))
    InputDeviceSummary.add_member(:type, Shapes::ShapeRef.new(shape: InputDeviceType, location_name: "type"))
    InputDeviceSummary.struct_class = Types::InputDeviceSummary

    InputLocation.add_member(:password_param, Shapes::ShapeRef.new(shape: __string, location_name: "passwordParam"))
    InputLocation.add_member(:uri, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "uri"))
    InputLocation.add_member(:username, Shapes::ShapeRef.new(shape: __string, location_name: "username"))
    InputLocation.struct_class = Types::InputLocation

    InputLossBehavior.add_member(:black_frame_msec, Shapes::ShapeRef.new(shape: __integerMin0Max1000000, location_name: "blackFrameMsec"))
    InputLossBehavior.add_member(:input_loss_image_color, Shapes::ShapeRef.new(shape: __stringMin6Max6, location_name: "inputLossImageColor"))
    InputLossBehavior.add_member(:input_loss_image_slate, Shapes::ShapeRef.new(shape: InputLocation, location_name: "inputLossImageSlate"))
    InputLossBehavior.add_member(:input_loss_image_type, Shapes::ShapeRef.new(shape: InputLossImageType, location_name: "inputLossImageType"))
    InputLossBehavior.add_member(:repeat_frame_msec, Shapes::ShapeRef.new(shape: __integerMin0Max1000000, location_name: "repeatFrameMsec"))
    InputLossBehavior.struct_class = Types::InputLossBehavior

    InputPrepareScheduleActionSettings.add_member(:input_attachment_name_reference, Shapes::ShapeRef.new(shape: __string, location_name: "inputAttachmentNameReference"))
    InputPrepareScheduleActionSettings.add_member(:input_clipping_settings, Shapes::ShapeRef.new(shape: InputClippingSettings, location_name: "inputClippingSettings"))
    InputPrepareScheduleActionSettings.add_member(:url_path, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "urlPath"))
    InputPrepareScheduleActionSettings.struct_class = Types::InputPrepareScheduleActionSettings

    InputSecurityGroup.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    InputSecurityGroup.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    InputSecurityGroup.add_member(:inputs, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "inputs"))
    InputSecurityGroup.add_member(:state, Shapes::ShapeRef.new(shape: InputSecurityGroupState, location_name: "state"))
    InputSecurityGroup.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    InputSecurityGroup.add_member(:whitelist_rules, Shapes::ShapeRef.new(shape: __listOfInputWhitelistRule, location_name: "whitelistRules"))
    InputSecurityGroup.struct_class = Types::InputSecurityGroup

    InputSecurityGroupWhitelistRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    InputSecurityGroupWhitelistRequest.add_member(:whitelist_rules, Shapes::ShapeRef.new(shape: __listOfInputWhitelistRuleCidr, location_name: "whitelistRules"))
    InputSecurityGroupWhitelistRequest.struct_class = Types::InputSecurityGroupWhitelistRequest

    InputSettings.add_member(:audio_selectors, Shapes::ShapeRef.new(shape: __listOfAudioSelector, location_name: "audioSelectors"))
    InputSettings.add_member(:caption_selectors, Shapes::ShapeRef.new(shape: __listOfCaptionSelector, location_name: "captionSelectors"))
    InputSettings.add_member(:deblock_filter, Shapes::ShapeRef.new(shape: InputDeblockFilter, location_name: "deblockFilter"))
    InputSettings.add_member(:denoise_filter, Shapes::ShapeRef.new(shape: InputDenoiseFilter, location_name: "denoiseFilter"))
    InputSettings.add_member(:filter_strength, Shapes::ShapeRef.new(shape: __integerMin1Max5, location_name: "filterStrength"))
    InputSettings.add_member(:input_filter, Shapes::ShapeRef.new(shape: InputFilter, location_name: "inputFilter"))
    InputSettings.add_member(:network_input_settings, Shapes::ShapeRef.new(shape: NetworkInputSettings, location_name: "networkInputSettings"))
    InputSettings.add_member(:smpte_2038_data_preference, Shapes::ShapeRef.new(shape: Smpte2038DataPreference, location_name: "smpte2038DataPreference"))
    InputSettings.add_member(:source_end_behavior, Shapes::ShapeRef.new(shape: InputSourceEndBehavior, location_name: "sourceEndBehavior"))
    InputSettings.add_member(:video_selector, Shapes::ShapeRef.new(shape: VideoSelector, location_name: "videoSelector"))
    InputSettings.struct_class = Types::InputSettings

    InputSource.add_member(:password_param, Shapes::ShapeRef.new(shape: __string, location_name: "passwordParam"))
    InputSource.add_member(:url, Shapes::ShapeRef.new(shape: __string, location_name: "url"))
    InputSource.add_member(:username, Shapes::ShapeRef.new(shape: __string, location_name: "username"))
    InputSource.struct_class = Types::InputSource

    InputSourceRequest.add_member(:password_param, Shapes::ShapeRef.new(shape: __string, location_name: "passwordParam"))
    InputSourceRequest.add_member(:url, Shapes::ShapeRef.new(shape: __string, location_name: "url"))
    InputSourceRequest.add_member(:username, Shapes::ShapeRef.new(shape: __string, location_name: "username"))
    InputSourceRequest.struct_class = Types::InputSourceRequest

    InputSpecification.add_member(:codec, Shapes::ShapeRef.new(shape: InputCodec, location_name: "codec"))
    InputSpecification.add_member(:maximum_bitrate, Shapes::ShapeRef.new(shape: InputMaximumBitrate, location_name: "maximumBitrate"))
    InputSpecification.add_member(:resolution, Shapes::ShapeRef.new(shape: InputResolution, location_name: "resolution"))
    InputSpecification.struct_class = Types::InputSpecification

    InputSwitchScheduleActionSettings.add_member(:input_attachment_name_reference, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "inputAttachmentNameReference"))
    InputSwitchScheduleActionSettings.add_member(:input_clipping_settings, Shapes::ShapeRef.new(shape: InputClippingSettings, location_name: "inputClippingSettings"))
    InputSwitchScheduleActionSettings.add_member(:url_path, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "urlPath"))
    InputSwitchScheduleActionSettings.struct_class = Types::InputSwitchScheduleActionSettings

    InputVpcRequest.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "securityGroupIds"))
    InputVpcRequest.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: __listOf__string, required: true, location_name: "subnetIds"))
    InputVpcRequest.struct_class = Types::InputVpcRequest

    InputWhitelistRule.add_member(:cidr, Shapes::ShapeRef.new(shape: __string, location_name: "cidr"))
    InputWhitelistRule.struct_class = Types::InputWhitelistRule

    InputWhitelistRuleCidr.add_member(:cidr, Shapes::ShapeRef.new(shape: __string, location_name: "cidr"))
    InputWhitelistRuleCidr.struct_class = Types::InputWhitelistRuleCidr

    InternalServerErrorException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    InternalServerErrorException.struct_class = Types::InternalServerErrorException

    InternalServiceError.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    InternalServiceError.struct_class = Types::InternalServiceError

    InvalidRequest.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    InvalidRequest.struct_class = Types::InvalidRequest

    KeyProviderSettings.add_member(:static_key_settings, Shapes::ShapeRef.new(shape: StaticKeySettings, location_name: "staticKeySettings"))
    KeyProviderSettings.struct_class = Types::KeyProviderSettings

    LimitExceeded.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    LimitExceeded.struct_class = Types::LimitExceeded

    ListChannelsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListChannelsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListChannelsRequest.struct_class = Types::ListChannelsRequest

    ListChannelsResponse.add_member(:channels, Shapes::ShapeRef.new(shape: __listOfChannelSummary, location_name: "channels"))
    ListChannelsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListChannelsResponse.struct_class = Types::ListChannelsResponse

    ListChannelsResultModel.add_member(:channels, Shapes::ShapeRef.new(shape: __listOfChannelSummary, location_name: "channels"))
    ListChannelsResultModel.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListChannelsResultModel.struct_class = Types::ListChannelsResultModel

    ListInputDeviceTransfersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListInputDeviceTransfersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListInputDeviceTransfersRequest.add_member(:transfer_type, Shapes::ShapeRef.new(shape: __string, required: true, location: "querystring", location_name: "transferType"))
    ListInputDeviceTransfersRequest.struct_class = Types::ListInputDeviceTransfersRequest

    ListInputDeviceTransfersResponse.add_member(:input_device_transfers, Shapes::ShapeRef.new(shape: __listOfTransferringInputDeviceSummary, location_name: "inputDeviceTransfers"))
    ListInputDeviceTransfersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListInputDeviceTransfersResponse.struct_class = Types::ListInputDeviceTransfersResponse

    ListInputDeviceTransfersResultModel.add_member(:input_device_transfers, Shapes::ShapeRef.new(shape: __listOfTransferringInputDeviceSummary, location_name: "inputDeviceTransfers"))
    ListInputDeviceTransfersResultModel.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListInputDeviceTransfersResultModel.struct_class = Types::ListInputDeviceTransfersResultModel

    ListInputDevicesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListInputDevicesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListInputDevicesRequest.struct_class = Types::ListInputDevicesRequest

    ListInputDevicesResponse.add_member(:input_devices, Shapes::ShapeRef.new(shape: __listOfInputDeviceSummary, location_name: "inputDevices"))
    ListInputDevicesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListInputDevicesResponse.struct_class = Types::ListInputDevicesResponse

    ListInputDevicesResultModel.add_member(:input_devices, Shapes::ShapeRef.new(shape: __listOfInputDeviceSummary, location_name: "inputDevices"))
    ListInputDevicesResultModel.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListInputDevicesResultModel.struct_class = Types::ListInputDevicesResultModel

    ListInputSecurityGroupsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListInputSecurityGroupsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListInputSecurityGroupsRequest.struct_class = Types::ListInputSecurityGroupsRequest

    ListInputSecurityGroupsResponse.add_member(:input_security_groups, Shapes::ShapeRef.new(shape: __listOfInputSecurityGroup, location_name: "inputSecurityGroups"))
    ListInputSecurityGroupsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListInputSecurityGroupsResponse.struct_class = Types::ListInputSecurityGroupsResponse

    ListInputSecurityGroupsResultModel.add_member(:input_security_groups, Shapes::ShapeRef.new(shape: __listOfInputSecurityGroup, location_name: "inputSecurityGroups"))
    ListInputSecurityGroupsResultModel.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListInputSecurityGroupsResultModel.struct_class = Types::ListInputSecurityGroupsResultModel

    ListInputsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListInputsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListInputsRequest.struct_class = Types::ListInputsRequest

    ListInputsResponse.add_member(:inputs, Shapes::ShapeRef.new(shape: __listOfInput, location_name: "inputs"))
    ListInputsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListInputsResponse.struct_class = Types::ListInputsResponse

    ListInputsResultModel.add_member(:inputs, Shapes::ShapeRef.new(shape: __listOfInput, location_name: "inputs"))
    ListInputsResultModel.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListInputsResultModel.struct_class = Types::ListInputsResultModel

    ListMultiplexProgramsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListMultiplexProgramsRequest.add_member(:multiplex_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "multiplexId"))
    ListMultiplexProgramsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListMultiplexProgramsRequest.struct_class = Types::ListMultiplexProgramsRequest

    ListMultiplexProgramsResponse.add_member(:multiplex_programs, Shapes::ShapeRef.new(shape: __listOfMultiplexProgramSummary, location_name: "multiplexPrograms"))
    ListMultiplexProgramsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListMultiplexProgramsResponse.struct_class = Types::ListMultiplexProgramsResponse

    ListMultiplexProgramsResultModel.add_member(:multiplex_programs, Shapes::ShapeRef.new(shape: __listOfMultiplexProgramSummary, location_name: "multiplexPrograms"))
    ListMultiplexProgramsResultModel.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListMultiplexProgramsResultModel.struct_class = Types::ListMultiplexProgramsResultModel

    ListMultiplexesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListMultiplexesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListMultiplexesRequest.struct_class = Types::ListMultiplexesRequest

    ListMultiplexesResponse.add_member(:multiplexes, Shapes::ShapeRef.new(shape: __listOfMultiplexSummary, location_name: "multiplexes"))
    ListMultiplexesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListMultiplexesResponse.struct_class = Types::ListMultiplexesResponse

    ListMultiplexesResultModel.add_member(:multiplexes, Shapes::ShapeRef.new(shape: __listOfMultiplexSummary, location_name: "multiplexes"))
    ListMultiplexesResultModel.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListMultiplexesResultModel.struct_class = Types::ListMultiplexesResultModel

    ListOfferingsRequest.add_member(:channel_class, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "channelClass"))
    ListOfferingsRequest.add_member(:channel_configuration, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "channelConfiguration"))
    ListOfferingsRequest.add_member(:codec, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "codec"))
    ListOfferingsRequest.add_member(:duration, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "duration"))
    ListOfferingsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListOfferingsRequest.add_member(:maximum_bitrate, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "maximumBitrate"))
    ListOfferingsRequest.add_member(:maximum_framerate, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "maximumFramerate"))
    ListOfferingsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListOfferingsRequest.add_member(:resolution, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "resolution"))
    ListOfferingsRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "resourceType"))
    ListOfferingsRequest.add_member(:special_feature, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "specialFeature"))
    ListOfferingsRequest.add_member(:video_quality, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "videoQuality"))
    ListOfferingsRequest.struct_class = Types::ListOfferingsRequest

    ListOfferingsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListOfferingsResponse.add_member(:offerings, Shapes::ShapeRef.new(shape: __listOfOffering, location_name: "offerings"))
    ListOfferingsResponse.struct_class = Types::ListOfferingsResponse

    ListOfferingsResultModel.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListOfferingsResultModel.add_member(:offerings, Shapes::ShapeRef.new(shape: __listOfOffering, location_name: "offerings"))
    ListOfferingsResultModel.struct_class = Types::ListOfferingsResultModel

    ListReservationsRequest.add_member(:channel_class, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "channelClass"))
    ListReservationsRequest.add_member(:codec, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "codec"))
    ListReservationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListReservationsRequest.add_member(:maximum_bitrate, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "maximumBitrate"))
    ListReservationsRequest.add_member(:maximum_framerate, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "maximumFramerate"))
    ListReservationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListReservationsRequest.add_member(:resolution, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "resolution"))
    ListReservationsRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "resourceType"))
    ListReservationsRequest.add_member(:special_feature, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "specialFeature"))
    ListReservationsRequest.add_member(:video_quality, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "videoQuality"))
    ListReservationsRequest.struct_class = Types::ListReservationsRequest

    ListReservationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListReservationsResponse.add_member(:reservations, Shapes::ShapeRef.new(shape: __listOfReservation, location_name: "reservations"))
    ListReservationsResponse.struct_class = Types::ListReservationsResponse

    ListReservationsResultModel.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListReservationsResultModel.add_member(:reservations, Shapes::ShapeRef.new(shape: __listOfReservation, location_name: "reservations"))
    ListReservationsResultModel.struct_class = Types::ListReservationsResultModel

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "resource-arn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    M2tsSettings.add_member(:absent_input_audio_behavior, Shapes::ShapeRef.new(shape: M2tsAbsentInputAudioBehavior, location_name: "absentInputAudioBehavior"))
    M2tsSettings.add_member(:arib, Shapes::ShapeRef.new(shape: M2tsArib, location_name: "arib"))
    M2tsSettings.add_member(:arib_captions_pid, Shapes::ShapeRef.new(shape: __string, location_name: "aribCaptionsPid"))
    M2tsSettings.add_member(:arib_captions_pid_control, Shapes::ShapeRef.new(shape: M2tsAribCaptionsPidControl, location_name: "aribCaptionsPidControl"))
    M2tsSettings.add_member(:audio_buffer_model, Shapes::ShapeRef.new(shape: M2tsAudioBufferModel, location_name: "audioBufferModel"))
    M2tsSettings.add_member(:audio_frames_per_pes, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "audioFramesPerPes"))
    M2tsSettings.add_member(:audio_pids, Shapes::ShapeRef.new(shape: __string, location_name: "audioPids"))
    M2tsSettings.add_member(:audio_stream_type, Shapes::ShapeRef.new(shape: M2tsAudioStreamType, location_name: "audioStreamType"))
    M2tsSettings.add_member(:bitrate, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "bitrate"))
    M2tsSettings.add_member(:buffer_model, Shapes::ShapeRef.new(shape: M2tsBufferModel, location_name: "bufferModel"))
    M2tsSettings.add_member(:cc_descriptor, Shapes::ShapeRef.new(shape: M2tsCcDescriptor, location_name: "ccDescriptor"))
    M2tsSettings.add_member(:dvb_nit_settings, Shapes::ShapeRef.new(shape: DvbNitSettings, location_name: "dvbNitSettings"))
    M2tsSettings.add_member(:dvb_sdt_settings, Shapes::ShapeRef.new(shape: DvbSdtSettings, location_name: "dvbSdtSettings"))
    M2tsSettings.add_member(:dvb_sub_pids, Shapes::ShapeRef.new(shape: __string, location_name: "dvbSubPids"))
    M2tsSettings.add_member(:dvb_tdt_settings, Shapes::ShapeRef.new(shape: DvbTdtSettings, location_name: "dvbTdtSettings"))
    M2tsSettings.add_member(:dvb_teletext_pid, Shapes::ShapeRef.new(shape: __string, location_name: "dvbTeletextPid"))
    M2tsSettings.add_member(:ebif, Shapes::ShapeRef.new(shape: M2tsEbifControl, location_name: "ebif"))
    M2tsSettings.add_member(:ebp_audio_interval, Shapes::ShapeRef.new(shape: M2tsAudioInterval, location_name: "ebpAudioInterval"))
    M2tsSettings.add_member(:ebp_lookahead_ms, Shapes::ShapeRef.new(shape: __integerMin0Max10000, location_name: "ebpLookaheadMs"))
    M2tsSettings.add_member(:ebp_placement, Shapes::ShapeRef.new(shape: M2tsEbpPlacement, location_name: "ebpPlacement"))
    M2tsSettings.add_member(:ecm_pid, Shapes::ShapeRef.new(shape: __string, location_name: "ecmPid"))
    M2tsSettings.add_member(:es_rate_in_pes, Shapes::ShapeRef.new(shape: M2tsEsRateInPes, location_name: "esRateInPes"))
    M2tsSettings.add_member(:etv_platform_pid, Shapes::ShapeRef.new(shape: __string, location_name: "etvPlatformPid"))
    M2tsSettings.add_member(:etv_signal_pid, Shapes::ShapeRef.new(shape: __string, location_name: "etvSignalPid"))
    M2tsSettings.add_member(:fragment_time, Shapes::ShapeRef.new(shape: __doubleMin0, location_name: "fragmentTime"))
    M2tsSettings.add_member(:klv, Shapes::ShapeRef.new(shape: M2tsKlv, location_name: "klv"))
    M2tsSettings.add_member(:klv_data_pids, Shapes::ShapeRef.new(shape: __string, location_name: "klvDataPids"))
    M2tsSettings.add_member(:nielsen_id_3_behavior, Shapes::ShapeRef.new(shape: M2tsNielsenId3Behavior, location_name: "nielsenId3Behavior"))
    M2tsSettings.add_member(:null_packet_bitrate, Shapes::ShapeRef.new(shape: __doubleMin0, location_name: "nullPacketBitrate"))
    M2tsSettings.add_member(:pat_interval, Shapes::ShapeRef.new(shape: __integerMin0Max1000, location_name: "patInterval"))
    M2tsSettings.add_member(:pcr_control, Shapes::ShapeRef.new(shape: M2tsPcrControl, location_name: "pcrControl"))
    M2tsSettings.add_member(:pcr_period, Shapes::ShapeRef.new(shape: __integerMin0Max500, location_name: "pcrPeriod"))
    M2tsSettings.add_member(:pcr_pid, Shapes::ShapeRef.new(shape: __string, location_name: "pcrPid"))
    M2tsSettings.add_member(:pmt_interval, Shapes::ShapeRef.new(shape: __integerMin0Max1000, location_name: "pmtInterval"))
    M2tsSettings.add_member(:pmt_pid, Shapes::ShapeRef.new(shape: __string, location_name: "pmtPid"))
    M2tsSettings.add_member(:program_num, Shapes::ShapeRef.new(shape: __integerMin0Max65535, location_name: "programNum"))
    M2tsSettings.add_member(:rate_mode, Shapes::ShapeRef.new(shape: M2tsRateMode, location_name: "rateMode"))
    M2tsSettings.add_member(:scte_27_pids, Shapes::ShapeRef.new(shape: __string, location_name: "scte27Pids"))
    M2tsSettings.add_member(:scte_35_control, Shapes::ShapeRef.new(shape: M2tsScte35Control, location_name: "scte35Control"))
    M2tsSettings.add_member(:scte_35_pid, Shapes::ShapeRef.new(shape: __string, location_name: "scte35Pid"))
    M2tsSettings.add_member(:segmentation_markers, Shapes::ShapeRef.new(shape: M2tsSegmentationMarkers, location_name: "segmentationMarkers"))
    M2tsSettings.add_member(:segmentation_style, Shapes::ShapeRef.new(shape: M2tsSegmentationStyle, location_name: "segmentationStyle"))
    M2tsSettings.add_member(:segmentation_time, Shapes::ShapeRef.new(shape: __doubleMin1, location_name: "segmentationTime"))
    M2tsSettings.add_member(:timed_metadata_behavior, Shapes::ShapeRef.new(shape: M2tsTimedMetadataBehavior, location_name: "timedMetadataBehavior"))
    M2tsSettings.add_member(:timed_metadata_pid, Shapes::ShapeRef.new(shape: __string, location_name: "timedMetadataPid"))
    M2tsSettings.add_member(:transport_stream_id, Shapes::ShapeRef.new(shape: __integerMin0Max65535, location_name: "transportStreamId"))
    M2tsSettings.add_member(:video_pid, Shapes::ShapeRef.new(shape: __string, location_name: "videoPid"))
    M2tsSettings.struct_class = Types::M2tsSettings

    M3u8Settings.add_member(:audio_frames_per_pes, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "audioFramesPerPes"))
    M3u8Settings.add_member(:audio_pids, Shapes::ShapeRef.new(shape: __string, location_name: "audioPids"))
    M3u8Settings.add_member(:ecm_pid, Shapes::ShapeRef.new(shape: __string, location_name: "ecmPid"))
    M3u8Settings.add_member(:nielsen_id_3_behavior, Shapes::ShapeRef.new(shape: M3u8NielsenId3Behavior, location_name: "nielsenId3Behavior"))
    M3u8Settings.add_member(:pat_interval, Shapes::ShapeRef.new(shape: __integerMin0Max1000, location_name: "patInterval"))
    M3u8Settings.add_member(:pcr_control, Shapes::ShapeRef.new(shape: M3u8PcrControl, location_name: "pcrControl"))
    M3u8Settings.add_member(:pcr_period, Shapes::ShapeRef.new(shape: __integerMin0Max500, location_name: "pcrPeriod"))
    M3u8Settings.add_member(:pcr_pid, Shapes::ShapeRef.new(shape: __string, location_name: "pcrPid"))
    M3u8Settings.add_member(:pmt_interval, Shapes::ShapeRef.new(shape: __integerMin0Max1000, location_name: "pmtInterval"))
    M3u8Settings.add_member(:pmt_pid, Shapes::ShapeRef.new(shape: __string, location_name: "pmtPid"))
    M3u8Settings.add_member(:program_num, Shapes::ShapeRef.new(shape: __integerMin0Max65535, location_name: "programNum"))
    M3u8Settings.add_member(:scte_35_behavior, Shapes::ShapeRef.new(shape: M3u8Scte35Behavior, location_name: "scte35Behavior"))
    M3u8Settings.add_member(:scte_35_pid, Shapes::ShapeRef.new(shape: __string, location_name: "scte35Pid"))
    M3u8Settings.add_member(:timed_metadata_behavior, Shapes::ShapeRef.new(shape: M3u8TimedMetadataBehavior, location_name: "timedMetadataBehavior"))
    M3u8Settings.add_member(:timed_metadata_pid, Shapes::ShapeRef.new(shape: __string, location_name: "timedMetadataPid"))
    M3u8Settings.add_member(:transport_stream_id, Shapes::ShapeRef.new(shape: __integerMin0Max65535, location_name: "transportStreamId"))
    M3u8Settings.add_member(:video_pid, Shapes::ShapeRef.new(shape: __string, location_name: "videoPid"))
    M3u8Settings.struct_class = Types::M3u8Settings

    MediaConnectFlow.add_member(:flow_arn, Shapes::ShapeRef.new(shape: __string, location_name: "flowArn"))
    MediaConnectFlow.struct_class = Types::MediaConnectFlow

    MediaConnectFlowRequest.add_member(:flow_arn, Shapes::ShapeRef.new(shape: __string, location_name: "flowArn"))
    MediaConnectFlowRequest.struct_class = Types::MediaConnectFlowRequest

    MediaPackageGroupSettings.add_member(:destination, Shapes::ShapeRef.new(shape: OutputLocationRef, required: true, location_name: "destination"))
    MediaPackageGroupSettings.struct_class = Types::MediaPackageGroupSettings

    MediaPackageOutputDestinationSettings.add_member(:channel_id, Shapes::ShapeRef.new(shape: __stringMin1, location_name: "channelId"))
    MediaPackageOutputDestinationSettings.struct_class = Types::MediaPackageOutputDestinationSettings

    MediaPackageOutputSettings.struct_class = Types::MediaPackageOutputSettings

    Mp2Settings.add_member(:bitrate, Shapes::ShapeRef.new(shape: __double, location_name: "bitrate"))
    Mp2Settings.add_member(:coding_mode, Shapes::ShapeRef.new(shape: Mp2CodingMode, location_name: "codingMode"))
    Mp2Settings.add_member(:sample_rate, Shapes::ShapeRef.new(shape: __double, location_name: "sampleRate"))
    Mp2Settings.struct_class = Types::Mp2Settings

    Mpeg2FilterSettings.add_member(:temporal_filter_settings, Shapes::ShapeRef.new(shape: TemporalFilterSettings, location_name: "temporalFilterSettings"))
    Mpeg2FilterSettings.struct_class = Types::Mpeg2FilterSettings

    Mpeg2Settings.add_member(:adaptive_quantization, Shapes::ShapeRef.new(shape: Mpeg2AdaptiveQuantization, location_name: "adaptiveQuantization"))
    Mpeg2Settings.add_member(:afd_signaling, Shapes::ShapeRef.new(shape: AfdSignaling, location_name: "afdSignaling"))
    Mpeg2Settings.add_member(:color_metadata, Shapes::ShapeRef.new(shape: Mpeg2ColorMetadata, location_name: "colorMetadata"))
    Mpeg2Settings.add_member(:color_space, Shapes::ShapeRef.new(shape: Mpeg2ColorSpace, location_name: "colorSpace"))
    Mpeg2Settings.add_member(:display_aspect_ratio, Shapes::ShapeRef.new(shape: Mpeg2DisplayRatio, location_name: "displayAspectRatio"))
    Mpeg2Settings.add_member(:filter_settings, Shapes::ShapeRef.new(shape: Mpeg2FilterSettings, location_name: "filterSettings"))
    Mpeg2Settings.add_member(:fixed_afd, Shapes::ShapeRef.new(shape: FixedAfd, location_name: "fixedAfd"))
    Mpeg2Settings.add_member(:framerate_denominator, Shapes::ShapeRef.new(shape: __integerMin1, required: true, location_name: "framerateDenominator"))
    Mpeg2Settings.add_member(:framerate_numerator, Shapes::ShapeRef.new(shape: __integerMin1, required: true, location_name: "framerateNumerator"))
    Mpeg2Settings.add_member(:gop_closed_cadence, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "gopClosedCadence"))
    Mpeg2Settings.add_member(:gop_num_b_frames, Shapes::ShapeRef.new(shape: __integerMin0Max7, location_name: "gopNumBFrames"))
    Mpeg2Settings.add_member(:gop_size, Shapes::ShapeRef.new(shape: __double, location_name: "gopSize"))
    Mpeg2Settings.add_member(:gop_size_units, Shapes::ShapeRef.new(shape: Mpeg2GopSizeUnits, location_name: "gopSizeUnits"))
    Mpeg2Settings.add_member(:scan_type, Shapes::ShapeRef.new(shape: Mpeg2ScanType, location_name: "scanType"))
    Mpeg2Settings.add_member(:subgop_length, Shapes::ShapeRef.new(shape: Mpeg2SubGopLength, location_name: "subgopLength"))
    Mpeg2Settings.add_member(:timecode_insertion, Shapes::ShapeRef.new(shape: Mpeg2TimecodeInsertionBehavior, location_name: "timecodeInsertion"))
    Mpeg2Settings.struct_class = Types::Mpeg2Settings

    MsSmoothGroupSettings.add_member(:acquisition_point_id, Shapes::ShapeRef.new(shape: __string, location_name: "acquisitionPointId"))
    MsSmoothGroupSettings.add_member(:audio_only_timecode_control, Shapes::ShapeRef.new(shape: SmoothGroupAudioOnlyTimecodeControl, location_name: "audioOnlyTimecodeControl"))
    MsSmoothGroupSettings.add_member(:certificate_mode, Shapes::ShapeRef.new(shape: SmoothGroupCertificateMode, location_name: "certificateMode"))
    MsSmoothGroupSettings.add_member(:connection_retry_interval, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "connectionRetryInterval"))
    MsSmoothGroupSettings.add_member(:destination, Shapes::ShapeRef.new(shape: OutputLocationRef, required: true, location_name: "destination"))
    MsSmoothGroupSettings.add_member(:event_id, Shapes::ShapeRef.new(shape: __string, location_name: "eventId"))
    MsSmoothGroupSettings.add_member(:event_id_mode, Shapes::ShapeRef.new(shape: SmoothGroupEventIdMode, location_name: "eventIdMode"))
    MsSmoothGroupSettings.add_member(:event_stop_behavior, Shapes::ShapeRef.new(shape: SmoothGroupEventStopBehavior, location_name: "eventStopBehavior"))
    MsSmoothGroupSettings.add_member(:filecache_duration, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "filecacheDuration"))
    MsSmoothGroupSettings.add_member(:fragment_length, Shapes::ShapeRef.new(shape: __integerMin1, location_name: "fragmentLength"))
    MsSmoothGroupSettings.add_member(:input_loss_action, Shapes::ShapeRef.new(shape: InputLossActionForMsSmoothOut, location_name: "inputLossAction"))
    MsSmoothGroupSettings.add_member(:num_retries, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "numRetries"))
    MsSmoothGroupSettings.add_member(:restart_delay, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "restartDelay"))
    MsSmoothGroupSettings.add_member(:segmentation_mode, Shapes::ShapeRef.new(shape: SmoothGroupSegmentationMode, location_name: "segmentationMode"))
    MsSmoothGroupSettings.add_member(:send_delay_ms, Shapes::ShapeRef.new(shape: __integerMin0Max10000, location_name: "sendDelayMs"))
    MsSmoothGroupSettings.add_member(:sparse_track_type, Shapes::ShapeRef.new(shape: SmoothGroupSparseTrackType, location_name: "sparseTrackType"))
    MsSmoothGroupSettings.add_member(:stream_manifest_behavior, Shapes::ShapeRef.new(shape: SmoothGroupStreamManifestBehavior, location_name: "streamManifestBehavior"))
    MsSmoothGroupSettings.add_member(:timestamp_offset, Shapes::ShapeRef.new(shape: __string, location_name: "timestampOffset"))
    MsSmoothGroupSettings.add_member(:timestamp_offset_mode, Shapes::ShapeRef.new(shape: SmoothGroupTimestampOffsetMode, location_name: "timestampOffsetMode"))
    MsSmoothGroupSettings.struct_class = Types::MsSmoothGroupSettings

    MsSmoothOutputSettings.add_member(:h265_packaging_type, Shapes::ShapeRef.new(shape: MsSmoothH265PackagingType, location_name: "h265PackagingType"))
    MsSmoothOutputSettings.add_member(:name_modifier, Shapes::ShapeRef.new(shape: __string, location_name: "nameModifier"))
    MsSmoothOutputSettings.struct_class = Types::MsSmoothOutputSettings

    Multiplex.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    Multiplex.add_member(:availability_zones, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "availabilityZones"))
    Multiplex.add_member(:destinations, Shapes::ShapeRef.new(shape: __listOfMultiplexOutputDestination, location_name: "destinations"))
    Multiplex.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    Multiplex.add_member(:multiplex_settings, Shapes::ShapeRef.new(shape: MultiplexSettings, location_name: "multiplexSettings"))
    Multiplex.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    Multiplex.add_member(:pipelines_running_count, Shapes::ShapeRef.new(shape: __integer, location_name: "pipelinesRunningCount"))
    Multiplex.add_member(:program_count, Shapes::ShapeRef.new(shape: __integer, location_name: "programCount"))
    Multiplex.add_member(:state, Shapes::ShapeRef.new(shape: MultiplexState, location_name: "state"))
    Multiplex.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    Multiplex.struct_class = Types::Multiplex

    MultiplexConfigurationValidationError.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    MultiplexConfigurationValidationError.add_member(:validation_errors, Shapes::ShapeRef.new(shape: __listOfValidationError, location_name: "validationErrors"))
    MultiplexConfigurationValidationError.struct_class = Types::MultiplexConfigurationValidationError

    MultiplexGroupSettings.struct_class = Types::MultiplexGroupSettings

    MultiplexMediaConnectOutputDestinationSettings.add_member(:entitlement_arn, Shapes::ShapeRef.new(shape: __stringMin1, location_name: "entitlementArn"))
    MultiplexMediaConnectOutputDestinationSettings.struct_class = Types::MultiplexMediaConnectOutputDestinationSettings

    MultiplexOutputDestination.add_member(:media_connect_settings, Shapes::ShapeRef.new(shape: MultiplexMediaConnectOutputDestinationSettings, location_name: "mediaConnectSettings"))
    MultiplexOutputDestination.struct_class = Types::MultiplexOutputDestination

    MultiplexOutputSettings.add_member(:destination, Shapes::ShapeRef.new(shape: OutputLocationRef, required: true, location_name: "destination"))
    MultiplexOutputSettings.struct_class = Types::MultiplexOutputSettings

    MultiplexProgram.add_member(:channel_id, Shapes::ShapeRef.new(shape: __string, location_name: "channelId"))
    MultiplexProgram.add_member(:multiplex_program_settings, Shapes::ShapeRef.new(shape: MultiplexProgramSettings, location_name: "multiplexProgramSettings"))
    MultiplexProgram.add_member(:packet_identifiers_map, Shapes::ShapeRef.new(shape: MultiplexProgramPacketIdentifiersMap, location_name: "packetIdentifiersMap"))
    MultiplexProgram.add_member(:pipeline_details, Shapes::ShapeRef.new(shape: __listOfMultiplexProgramPipelineDetail, location_name: "pipelineDetails"))
    MultiplexProgram.add_member(:program_name, Shapes::ShapeRef.new(shape: __string, location_name: "programName"))
    MultiplexProgram.struct_class = Types::MultiplexProgram

    MultiplexProgramChannelDestinationSettings.add_member(:multiplex_id, Shapes::ShapeRef.new(shape: __stringMin1, location_name: "multiplexId"))
    MultiplexProgramChannelDestinationSettings.add_member(:program_name, Shapes::ShapeRef.new(shape: __stringMin1, location_name: "programName"))
    MultiplexProgramChannelDestinationSettings.struct_class = Types::MultiplexProgramChannelDestinationSettings

    MultiplexProgramPacketIdentifiersMap.add_member(:audio_pids, Shapes::ShapeRef.new(shape: __listOf__integer, location_name: "audioPids"))
    MultiplexProgramPacketIdentifiersMap.add_member(:dvb_sub_pids, Shapes::ShapeRef.new(shape: __listOf__integer, location_name: "dvbSubPids"))
    MultiplexProgramPacketIdentifiersMap.add_member(:dvb_teletext_pid, Shapes::ShapeRef.new(shape: __integer, location_name: "dvbTeletextPid"))
    MultiplexProgramPacketIdentifiersMap.add_member(:etv_platform_pid, Shapes::ShapeRef.new(shape: __integer, location_name: "etvPlatformPid"))
    MultiplexProgramPacketIdentifiersMap.add_member(:etv_signal_pid, Shapes::ShapeRef.new(shape: __integer, location_name: "etvSignalPid"))
    MultiplexProgramPacketIdentifiersMap.add_member(:klv_data_pids, Shapes::ShapeRef.new(shape: __listOf__integer, location_name: "klvDataPids"))
    MultiplexProgramPacketIdentifiersMap.add_member(:pcr_pid, Shapes::ShapeRef.new(shape: __integer, location_name: "pcrPid"))
    MultiplexProgramPacketIdentifiersMap.add_member(:pmt_pid, Shapes::ShapeRef.new(shape: __integer, location_name: "pmtPid"))
    MultiplexProgramPacketIdentifiersMap.add_member(:private_metadata_pid, Shapes::ShapeRef.new(shape: __integer, location_name: "privateMetadataPid"))
    MultiplexProgramPacketIdentifiersMap.add_member(:scte_27_pids, Shapes::ShapeRef.new(shape: __listOf__integer, location_name: "scte27Pids"))
    MultiplexProgramPacketIdentifiersMap.add_member(:scte_35_pid, Shapes::ShapeRef.new(shape: __integer, location_name: "scte35Pid"))
    MultiplexProgramPacketIdentifiersMap.add_member(:timed_metadata_pid, Shapes::ShapeRef.new(shape: __integer, location_name: "timedMetadataPid"))
    MultiplexProgramPacketIdentifiersMap.add_member(:video_pid, Shapes::ShapeRef.new(shape: __integer, location_name: "videoPid"))
    MultiplexProgramPacketIdentifiersMap.struct_class = Types::MultiplexProgramPacketIdentifiersMap

    MultiplexProgramPipelineDetail.add_member(:active_channel_pipeline, Shapes::ShapeRef.new(shape: __string, location_name: "activeChannelPipeline"))
    MultiplexProgramPipelineDetail.add_member(:pipeline_id, Shapes::ShapeRef.new(shape: __string, location_name: "pipelineId"))
    MultiplexProgramPipelineDetail.struct_class = Types::MultiplexProgramPipelineDetail

    MultiplexProgramServiceDescriptor.add_member(:provider_name, Shapes::ShapeRef.new(shape: __stringMax256, required: true, location_name: "providerName"))
    MultiplexProgramServiceDescriptor.add_member(:service_name, Shapes::ShapeRef.new(shape: __stringMax256, required: true, location_name: "serviceName"))
    MultiplexProgramServiceDescriptor.struct_class = Types::MultiplexProgramServiceDescriptor

    MultiplexProgramSettings.add_member(:preferred_channel_pipeline, Shapes::ShapeRef.new(shape: PreferredChannelPipeline, location_name: "preferredChannelPipeline"))
    MultiplexProgramSettings.add_member(:program_number, Shapes::ShapeRef.new(shape: __integerMin0Max65535, required: true, location_name: "programNumber"))
    MultiplexProgramSettings.add_member(:service_descriptor, Shapes::ShapeRef.new(shape: MultiplexProgramServiceDescriptor, location_name: "serviceDescriptor"))
    MultiplexProgramSettings.add_member(:video_settings, Shapes::ShapeRef.new(shape: MultiplexVideoSettings, location_name: "videoSettings"))
    MultiplexProgramSettings.struct_class = Types::MultiplexProgramSettings

    MultiplexProgramSummary.add_member(:channel_id, Shapes::ShapeRef.new(shape: __string, location_name: "channelId"))
    MultiplexProgramSummary.add_member(:program_name, Shapes::ShapeRef.new(shape: __string, location_name: "programName"))
    MultiplexProgramSummary.struct_class = Types::MultiplexProgramSummary

    MultiplexSettings.add_member(:maximum_video_buffer_delay_milliseconds, Shapes::ShapeRef.new(shape: __integerMin800Max3000, location_name: "maximumVideoBufferDelayMilliseconds"))
    MultiplexSettings.add_member(:transport_stream_bitrate, Shapes::ShapeRef.new(shape: __integerMin1000000Max100000000, required: true, location_name: "transportStreamBitrate"))
    MultiplexSettings.add_member(:transport_stream_id, Shapes::ShapeRef.new(shape: __integerMin0Max65535, required: true, location_name: "transportStreamId"))
    MultiplexSettings.add_member(:transport_stream_reserved_bitrate, Shapes::ShapeRef.new(shape: __integerMin0Max100000000, location_name: "transportStreamReservedBitrate"))
    MultiplexSettings.struct_class = Types::MultiplexSettings

    MultiplexSettingsSummary.add_member(:transport_stream_bitrate, Shapes::ShapeRef.new(shape: __integerMin1000000Max100000000, location_name: "transportStreamBitrate"))
    MultiplexSettingsSummary.struct_class = Types::MultiplexSettingsSummary

    MultiplexStatmuxVideoSettings.add_member(:maximum_bitrate, Shapes::ShapeRef.new(shape: __integerMin100000Max100000000, location_name: "maximumBitrate"))
    MultiplexStatmuxVideoSettings.add_member(:minimum_bitrate, Shapes::ShapeRef.new(shape: __integerMin100000Max100000000, location_name: "minimumBitrate"))
    MultiplexStatmuxVideoSettings.add_member(:priority, Shapes::ShapeRef.new(shape: __integerMinNegative5Max5, location_name: "priority"))
    MultiplexStatmuxVideoSettings.struct_class = Types::MultiplexStatmuxVideoSettings

    MultiplexSummary.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    MultiplexSummary.add_member(:availability_zones, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "availabilityZones"))
    MultiplexSummary.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    MultiplexSummary.add_member(:multiplex_settings, Shapes::ShapeRef.new(shape: MultiplexSettingsSummary, location_name: "multiplexSettings"))
    MultiplexSummary.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    MultiplexSummary.add_member(:pipelines_running_count, Shapes::ShapeRef.new(shape: __integer, location_name: "pipelinesRunningCount"))
    MultiplexSummary.add_member(:program_count, Shapes::ShapeRef.new(shape: __integer, location_name: "programCount"))
    MultiplexSummary.add_member(:state, Shapes::ShapeRef.new(shape: MultiplexState, location_name: "state"))
    MultiplexSummary.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    MultiplexSummary.struct_class = Types::MultiplexSummary

    MultiplexVideoSettings.add_member(:constant_bitrate, Shapes::ShapeRef.new(shape: __integerMin100000Max100000000, location_name: "constantBitrate"))
    MultiplexVideoSettings.add_member(:statmux_settings, Shapes::ShapeRef.new(shape: MultiplexStatmuxVideoSettings, location_name: "statmuxSettings"))
    MultiplexVideoSettings.struct_class = Types::MultiplexVideoSettings

    NetworkInputSettings.add_member(:hls_input_settings, Shapes::ShapeRef.new(shape: HlsInputSettings, location_name: "hlsInputSettings"))
    NetworkInputSettings.add_member(:server_validation, Shapes::ShapeRef.new(shape: NetworkInputServerValidation, location_name: "serverValidation"))
    NetworkInputSettings.struct_class = Types::NetworkInputSettings

    NielsenConfiguration.add_member(:distributor_id, Shapes::ShapeRef.new(shape: __string, location_name: "distributorId"))
    NielsenConfiguration.add_member(:nielsen_pcm_to_id_3_tagging, Shapes::ShapeRef.new(shape: NielsenPcmToId3TaggingState, location_name: "nielsenPcmToId3Tagging"))
    NielsenConfiguration.struct_class = Types::NielsenConfiguration

    NotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    NotFoundException.struct_class = Types::NotFoundException

    Offering.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    Offering.add_member(:currency_code, Shapes::ShapeRef.new(shape: __string, location_name: "currencyCode"))
    Offering.add_member(:duration, Shapes::ShapeRef.new(shape: __integer, location_name: "duration"))
    Offering.add_member(:duration_units, Shapes::ShapeRef.new(shape: OfferingDurationUnits, location_name: "durationUnits"))
    Offering.add_member(:fixed_price, Shapes::ShapeRef.new(shape: __double, location_name: "fixedPrice"))
    Offering.add_member(:offering_description, Shapes::ShapeRef.new(shape: __string, location_name: "offeringDescription"))
    Offering.add_member(:offering_id, Shapes::ShapeRef.new(shape: __string, location_name: "offeringId"))
    Offering.add_member(:offering_type, Shapes::ShapeRef.new(shape: OfferingType, location_name: "offeringType"))
    Offering.add_member(:region, Shapes::ShapeRef.new(shape: __string, location_name: "region"))
    Offering.add_member(:resource_specification, Shapes::ShapeRef.new(shape: ReservationResourceSpecification, location_name: "resourceSpecification"))
    Offering.add_member(:usage_price, Shapes::ShapeRef.new(shape: __double, location_name: "usagePrice"))
    Offering.struct_class = Types::Offering

    Output.add_member(:audio_description_names, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "audioDescriptionNames"))
    Output.add_member(:caption_description_names, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "captionDescriptionNames"))
    Output.add_member(:output_name, Shapes::ShapeRef.new(shape: __stringMin1Max255, location_name: "outputName"))
    Output.add_member(:output_settings, Shapes::ShapeRef.new(shape: OutputSettings, required: true, location_name: "outputSettings"))
    Output.add_member(:video_description_name, Shapes::ShapeRef.new(shape: __string, location_name: "videoDescriptionName"))
    Output.struct_class = Types::Output

    OutputDestination.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    OutputDestination.add_member(:media_package_settings, Shapes::ShapeRef.new(shape: __listOfMediaPackageOutputDestinationSettings, location_name: "mediaPackageSettings"))
    OutputDestination.add_member(:multiplex_settings, Shapes::ShapeRef.new(shape: MultiplexProgramChannelDestinationSettings, location_name: "multiplexSettings"))
    OutputDestination.add_member(:settings, Shapes::ShapeRef.new(shape: __listOfOutputDestinationSettings, location_name: "settings"))
    OutputDestination.struct_class = Types::OutputDestination

    OutputDestinationSettings.add_member(:password_param, Shapes::ShapeRef.new(shape: __string, location_name: "passwordParam"))
    OutputDestinationSettings.add_member(:stream_name, Shapes::ShapeRef.new(shape: __string, location_name: "streamName"))
    OutputDestinationSettings.add_member(:url, Shapes::ShapeRef.new(shape: __string, location_name: "url"))
    OutputDestinationSettings.add_member(:username, Shapes::ShapeRef.new(shape: __string, location_name: "username"))
    OutputDestinationSettings.struct_class = Types::OutputDestinationSettings

    OutputGroup.add_member(:name, Shapes::ShapeRef.new(shape: __stringMax32, location_name: "name"))
    OutputGroup.add_member(:output_group_settings, Shapes::ShapeRef.new(shape: OutputGroupSettings, required: true, location_name: "outputGroupSettings"))
    OutputGroup.add_member(:outputs, Shapes::ShapeRef.new(shape: __listOfOutput, required: true, location_name: "outputs"))
    OutputGroup.struct_class = Types::OutputGroup

    OutputGroupSettings.add_member(:archive_group_settings, Shapes::ShapeRef.new(shape: ArchiveGroupSettings, location_name: "archiveGroupSettings"))
    OutputGroupSettings.add_member(:frame_capture_group_settings, Shapes::ShapeRef.new(shape: FrameCaptureGroupSettings, location_name: "frameCaptureGroupSettings"))
    OutputGroupSettings.add_member(:hls_group_settings, Shapes::ShapeRef.new(shape: HlsGroupSettings, location_name: "hlsGroupSettings"))
    OutputGroupSettings.add_member(:media_package_group_settings, Shapes::ShapeRef.new(shape: MediaPackageGroupSettings, location_name: "mediaPackageGroupSettings"))
    OutputGroupSettings.add_member(:ms_smooth_group_settings, Shapes::ShapeRef.new(shape: MsSmoothGroupSettings, location_name: "msSmoothGroupSettings"))
    OutputGroupSettings.add_member(:multiplex_group_settings, Shapes::ShapeRef.new(shape: MultiplexGroupSettings, location_name: "multiplexGroupSettings"))
    OutputGroupSettings.add_member(:rtmp_group_settings, Shapes::ShapeRef.new(shape: RtmpGroupSettings, location_name: "rtmpGroupSettings"))
    OutputGroupSettings.add_member(:udp_group_settings, Shapes::ShapeRef.new(shape: UdpGroupSettings, location_name: "udpGroupSettings"))
    OutputGroupSettings.struct_class = Types::OutputGroupSettings

    OutputLocationRef.add_member(:destination_ref_id, Shapes::ShapeRef.new(shape: __string, location_name: "destinationRefId"))
    OutputLocationRef.struct_class = Types::OutputLocationRef

    OutputSettings.add_member(:archive_output_settings, Shapes::ShapeRef.new(shape: ArchiveOutputSettings, location_name: "archiveOutputSettings"))
    OutputSettings.add_member(:frame_capture_output_settings, Shapes::ShapeRef.new(shape: FrameCaptureOutputSettings, location_name: "frameCaptureOutputSettings"))
    OutputSettings.add_member(:hls_output_settings, Shapes::ShapeRef.new(shape: HlsOutputSettings, location_name: "hlsOutputSettings"))
    OutputSettings.add_member(:media_package_output_settings, Shapes::ShapeRef.new(shape: MediaPackageOutputSettings, location_name: "mediaPackageOutputSettings"))
    OutputSettings.add_member(:ms_smooth_output_settings, Shapes::ShapeRef.new(shape: MsSmoothOutputSettings, location_name: "msSmoothOutputSettings"))
    OutputSettings.add_member(:multiplex_output_settings, Shapes::ShapeRef.new(shape: MultiplexOutputSettings, location_name: "multiplexOutputSettings"))
    OutputSettings.add_member(:rtmp_output_settings, Shapes::ShapeRef.new(shape: RtmpOutputSettings, location_name: "rtmpOutputSettings"))
    OutputSettings.add_member(:udp_output_settings, Shapes::ShapeRef.new(shape: UdpOutputSettings, location_name: "udpOutputSettings"))
    OutputSettings.struct_class = Types::OutputSettings

    PassThroughSettings.struct_class = Types::PassThroughSettings

    PauseStateScheduleActionSettings.add_member(:pipelines, Shapes::ShapeRef.new(shape: __listOfPipelinePauseStateSettings, location_name: "pipelines"))
    PauseStateScheduleActionSettings.struct_class = Types::PauseStateScheduleActionSettings

    PipelineDetail.add_member(:active_input_attachment_name, Shapes::ShapeRef.new(shape: __string, location_name: "activeInputAttachmentName"))
    PipelineDetail.add_member(:active_input_switch_action_name, Shapes::ShapeRef.new(shape: __string, location_name: "activeInputSwitchActionName"))
    PipelineDetail.add_member(:pipeline_id, Shapes::ShapeRef.new(shape: __string, location_name: "pipelineId"))
    PipelineDetail.struct_class = Types::PipelineDetail

    PipelinePauseStateSettings.add_member(:pipeline_id, Shapes::ShapeRef.new(shape: PipelineId, required: true, location_name: "pipelineId"))
    PipelinePauseStateSettings.struct_class = Types::PipelinePauseStateSettings

    PurchaseOffering.add_member(:count, Shapes::ShapeRef.new(shape: __integerMin1, required: true, location_name: "count"))
    PurchaseOffering.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    PurchaseOffering.add_member(:request_id, Shapes::ShapeRef.new(shape: __string, location_name: "requestId", metadata: {"idempotencyToken"=>true}))
    PurchaseOffering.add_member(:start, Shapes::ShapeRef.new(shape: __string, location_name: "start"))
    PurchaseOffering.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    PurchaseOffering.struct_class = Types::PurchaseOffering

    PurchaseOfferingRequest.add_member(:count, Shapes::ShapeRef.new(shape: __integerMin1, required: true, location_name: "count"))
    PurchaseOfferingRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    PurchaseOfferingRequest.add_member(:offering_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "offeringId"))
    PurchaseOfferingRequest.add_member(:request_id, Shapes::ShapeRef.new(shape: __string, location_name: "requestId", metadata: {"idempotencyToken"=>true}))
    PurchaseOfferingRequest.add_member(:start, Shapes::ShapeRef.new(shape: __string, location_name: "start"))
    PurchaseOfferingRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    PurchaseOfferingRequest.struct_class = Types::PurchaseOfferingRequest

    PurchaseOfferingResponse.add_member(:reservation, Shapes::ShapeRef.new(shape: Reservation, location_name: "reservation"))
    PurchaseOfferingResponse.struct_class = Types::PurchaseOfferingResponse

    PurchaseOfferingResultModel.add_member(:reservation, Shapes::ShapeRef.new(shape: Reservation, location_name: "reservation"))
    PurchaseOfferingResultModel.struct_class = Types::PurchaseOfferingResultModel

    RawSettings.struct_class = Types::RawSettings

    Rec601Settings.struct_class = Types::Rec601Settings

    Rec709Settings.struct_class = Types::Rec709Settings

    RejectInputDeviceTransferRequest.add_member(:input_device_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "inputDeviceId"))
    RejectInputDeviceTransferRequest.struct_class = Types::RejectInputDeviceTransferRequest

    RejectInputDeviceTransferResponse.struct_class = Types::RejectInputDeviceTransferResponse

    RemixSettings.add_member(:channel_mappings, Shapes::ShapeRef.new(shape: __listOfAudioChannelMapping, required: true, location_name: "channelMappings"))
    RemixSettings.add_member(:channels_in, Shapes::ShapeRef.new(shape: __integerMin1Max16, location_name: "channelsIn"))
    RemixSettings.add_member(:channels_out, Shapes::ShapeRef.new(shape: __integerMin1Max8, location_name: "channelsOut"))
    RemixSettings.struct_class = Types::RemixSettings

    Reservation.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    Reservation.add_member(:count, Shapes::ShapeRef.new(shape: __integer, location_name: "count"))
    Reservation.add_member(:currency_code, Shapes::ShapeRef.new(shape: __string, location_name: "currencyCode"))
    Reservation.add_member(:duration, Shapes::ShapeRef.new(shape: __integer, location_name: "duration"))
    Reservation.add_member(:duration_units, Shapes::ShapeRef.new(shape: OfferingDurationUnits, location_name: "durationUnits"))
    Reservation.add_member(:end, Shapes::ShapeRef.new(shape: __string, location_name: "end"))
    Reservation.add_member(:fixed_price, Shapes::ShapeRef.new(shape: __double, location_name: "fixedPrice"))
    Reservation.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    Reservation.add_member(:offering_description, Shapes::ShapeRef.new(shape: __string, location_name: "offeringDescription"))
    Reservation.add_member(:offering_id, Shapes::ShapeRef.new(shape: __string, location_name: "offeringId"))
    Reservation.add_member(:offering_type, Shapes::ShapeRef.new(shape: OfferingType, location_name: "offeringType"))
    Reservation.add_member(:region, Shapes::ShapeRef.new(shape: __string, location_name: "region"))
    Reservation.add_member(:reservation_id, Shapes::ShapeRef.new(shape: __string, location_name: "reservationId"))
    Reservation.add_member(:resource_specification, Shapes::ShapeRef.new(shape: ReservationResourceSpecification, location_name: "resourceSpecification"))
    Reservation.add_member(:start, Shapes::ShapeRef.new(shape: __string, location_name: "start"))
    Reservation.add_member(:state, Shapes::ShapeRef.new(shape: ReservationState, location_name: "state"))
    Reservation.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    Reservation.add_member(:usage_price, Shapes::ShapeRef.new(shape: __double, location_name: "usagePrice"))
    Reservation.struct_class = Types::Reservation

    ReservationResourceSpecification.add_member(:channel_class, Shapes::ShapeRef.new(shape: ChannelClass, location_name: "channelClass"))
    ReservationResourceSpecification.add_member(:codec, Shapes::ShapeRef.new(shape: ReservationCodec, location_name: "codec"))
    ReservationResourceSpecification.add_member(:maximum_bitrate, Shapes::ShapeRef.new(shape: ReservationMaximumBitrate, location_name: "maximumBitrate"))
    ReservationResourceSpecification.add_member(:maximum_framerate, Shapes::ShapeRef.new(shape: ReservationMaximumFramerate, location_name: "maximumFramerate"))
    ReservationResourceSpecification.add_member(:resolution, Shapes::ShapeRef.new(shape: ReservationResolution, location_name: "resolution"))
    ReservationResourceSpecification.add_member(:resource_type, Shapes::ShapeRef.new(shape: ReservationResourceType, location_name: "resourceType"))
    ReservationResourceSpecification.add_member(:special_feature, Shapes::ShapeRef.new(shape: ReservationSpecialFeature, location_name: "specialFeature"))
    ReservationResourceSpecification.add_member(:video_quality, Shapes::ShapeRef.new(shape: ReservationVideoQuality, location_name: "videoQuality"))
    ReservationResourceSpecification.struct_class = Types::ReservationResourceSpecification

    ResourceConflict.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    ResourceConflict.struct_class = Types::ResourceConflict

    ResourceNotFound.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    ResourceNotFound.struct_class = Types::ResourceNotFound

    RtmpCaptionInfoDestinationSettings.struct_class = Types::RtmpCaptionInfoDestinationSettings

    RtmpGroupSettings.add_member(:authentication_scheme, Shapes::ShapeRef.new(shape: AuthenticationScheme, location_name: "authenticationScheme"))
    RtmpGroupSettings.add_member(:cache_full_behavior, Shapes::ShapeRef.new(shape: RtmpCacheFullBehavior, location_name: "cacheFullBehavior"))
    RtmpGroupSettings.add_member(:cache_length, Shapes::ShapeRef.new(shape: __integerMin30, location_name: "cacheLength"))
    RtmpGroupSettings.add_member(:caption_data, Shapes::ShapeRef.new(shape: RtmpCaptionData, location_name: "captionData"))
    RtmpGroupSettings.add_member(:input_loss_action, Shapes::ShapeRef.new(shape: InputLossActionForRtmpOut, location_name: "inputLossAction"))
    RtmpGroupSettings.add_member(:restart_delay, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "restartDelay"))
    RtmpGroupSettings.struct_class = Types::RtmpGroupSettings

    RtmpOutputSettings.add_member(:certificate_mode, Shapes::ShapeRef.new(shape: RtmpOutputCertificateMode, location_name: "certificateMode"))
    RtmpOutputSettings.add_member(:connection_retry_interval, Shapes::ShapeRef.new(shape: __integerMin1, location_name: "connectionRetryInterval"))
    RtmpOutputSettings.add_member(:destination, Shapes::ShapeRef.new(shape: OutputLocationRef, required: true, location_name: "destination"))
    RtmpOutputSettings.add_member(:num_retries, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "numRetries"))
    RtmpOutputSettings.struct_class = Types::RtmpOutputSettings

    ScheduleAction.add_member(:action_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "actionName"))
    ScheduleAction.add_member(:schedule_action_settings, Shapes::ShapeRef.new(shape: ScheduleActionSettings, required: true, location_name: "scheduleActionSettings"))
    ScheduleAction.add_member(:schedule_action_start_settings, Shapes::ShapeRef.new(shape: ScheduleActionStartSettings, required: true, location_name: "scheduleActionStartSettings"))
    ScheduleAction.struct_class = Types::ScheduleAction

    ScheduleActionSettings.add_member(:hls_id_3_segment_tagging_settings, Shapes::ShapeRef.new(shape: HlsId3SegmentTaggingScheduleActionSettings, location_name: "hlsId3SegmentTaggingSettings"))
    ScheduleActionSettings.add_member(:hls_timed_metadata_settings, Shapes::ShapeRef.new(shape: HlsTimedMetadataScheduleActionSettings, location_name: "hlsTimedMetadataSettings"))
    ScheduleActionSettings.add_member(:input_prepare_settings, Shapes::ShapeRef.new(shape: InputPrepareScheduleActionSettings, location_name: "inputPrepareSettings"))
    ScheduleActionSettings.add_member(:input_switch_settings, Shapes::ShapeRef.new(shape: InputSwitchScheduleActionSettings, location_name: "inputSwitchSettings"))
    ScheduleActionSettings.add_member(:pause_state_settings, Shapes::ShapeRef.new(shape: PauseStateScheduleActionSettings, location_name: "pauseStateSettings"))
    ScheduleActionSettings.add_member(:scte_35_return_to_network_settings, Shapes::ShapeRef.new(shape: Scte35ReturnToNetworkScheduleActionSettings, location_name: "scte35ReturnToNetworkSettings"))
    ScheduleActionSettings.add_member(:scte_35_splice_insert_settings, Shapes::ShapeRef.new(shape: Scte35SpliceInsertScheduleActionSettings, location_name: "scte35SpliceInsertSettings"))
    ScheduleActionSettings.add_member(:scte_35_time_signal_settings, Shapes::ShapeRef.new(shape: Scte35TimeSignalScheduleActionSettings, location_name: "scte35TimeSignalSettings"))
    ScheduleActionSettings.add_member(:static_image_activate_settings, Shapes::ShapeRef.new(shape: StaticImageActivateScheduleActionSettings, location_name: "staticImageActivateSettings"))
    ScheduleActionSettings.add_member(:static_image_deactivate_settings, Shapes::ShapeRef.new(shape: StaticImageDeactivateScheduleActionSettings, location_name: "staticImageDeactivateSettings"))
    ScheduleActionSettings.struct_class = Types::ScheduleActionSettings

    ScheduleActionStartSettings.add_member(:fixed_mode_schedule_action_start_settings, Shapes::ShapeRef.new(shape: FixedModeScheduleActionStartSettings, location_name: "fixedModeScheduleActionStartSettings"))
    ScheduleActionStartSettings.add_member(:follow_mode_schedule_action_start_settings, Shapes::ShapeRef.new(shape: FollowModeScheduleActionStartSettings, location_name: "followModeScheduleActionStartSettings"))
    ScheduleActionStartSettings.add_member(:immediate_mode_schedule_action_start_settings, Shapes::ShapeRef.new(shape: ImmediateModeScheduleActionStartSettings, location_name: "immediateModeScheduleActionStartSettings"))
    ScheduleActionStartSettings.struct_class = Types::ScheduleActionStartSettings

    ScheduleDeleteResultModel.struct_class = Types::ScheduleDeleteResultModel

    ScheduleDescribeResultModel.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ScheduleDescribeResultModel.add_member(:schedule_actions, Shapes::ShapeRef.new(shape: __listOfScheduleAction, required: true, location_name: "scheduleActions"))
    ScheduleDescribeResultModel.struct_class = Types::ScheduleDescribeResultModel

    Scte20PlusEmbeddedDestinationSettings.struct_class = Types::Scte20PlusEmbeddedDestinationSettings

    Scte20SourceSettings.add_member(:convert_608_to_708, Shapes::ShapeRef.new(shape: Scte20Convert608To708, location_name: "convert608To708"))
    Scte20SourceSettings.add_member(:source_608_channel_number, Shapes::ShapeRef.new(shape: __integerMin1Max4, location_name: "source608ChannelNumber"))
    Scte20SourceSettings.struct_class = Types::Scte20SourceSettings

    Scte27DestinationSettings.struct_class = Types::Scte27DestinationSettings

    Scte27SourceSettings.add_member(:pid, Shapes::ShapeRef.new(shape: __integerMin1, location_name: "pid"))
    Scte27SourceSettings.struct_class = Types::Scte27SourceSettings

    Scte35DeliveryRestrictions.add_member(:archive_allowed_flag, Shapes::ShapeRef.new(shape: Scte35ArchiveAllowedFlag, required: true, location_name: "archiveAllowedFlag"))
    Scte35DeliveryRestrictions.add_member(:device_restrictions, Shapes::ShapeRef.new(shape: Scte35DeviceRestrictions, required: true, location_name: "deviceRestrictions"))
    Scte35DeliveryRestrictions.add_member(:no_regional_blackout_flag, Shapes::ShapeRef.new(shape: Scte35NoRegionalBlackoutFlag, required: true, location_name: "noRegionalBlackoutFlag"))
    Scte35DeliveryRestrictions.add_member(:web_delivery_allowed_flag, Shapes::ShapeRef.new(shape: Scte35WebDeliveryAllowedFlag, required: true, location_name: "webDeliveryAllowedFlag"))
    Scte35DeliveryRestrictions.struct_class = Types::Scte35DeliveryRestrictions

    Scte35Descriptor.add_member(:scte_35_descriptor_settings, Shapes::ShapeRef.new(shape: Scte35DescriptorSettings, required: true, location_name: "scte35DescriptorSettings"))
    Scte35Descriptor.struct_class = Types::Scte35Descriptor

    Scte35DescriptorSettings.add_member(:segmentation_descriptor_scte_35_descriptor_settings, Shapes::ShapeRef.new(shape: Scte35SegmentationDescriptor, required: true, location_name: "segmentationDescriptorScte35DescriptorSettings"))
    Scte35DescriptorSettings.struct_class = Types::Scte35DescriptorSettings

    Scte35ReturnToNetworkScheduleActionSettings.add_member(:splice_event_id, Shapes::ShapeRef.new(shape: __longMin0Max4294967295, required: true, location_name: "spliceEventId"))
    Scte35ReturnToNetworkScheduleActionSettings.struct_class = Types::Scte35ReturnToNetworkScheduleActionSettings

    Scte35SegmentationDescriptor.add_member(:delivery_restrictions, Shapes::ShapeRef.new(shape: Scte35DeliveryRestrictions, location_name: "deliveryRestrictions"))
    Scte35SegmentationDescriptor.add_member(:segment_num, Shapes::ShapeRef.new(shape: __integerMin0Max255, location_name: "segmentNum"))
    Scte35SegmentationDescriptor.add_member(:segmentation_cancel_indicator, Shapes::ShapeRef.new(shape: Scte35SegmentationCancelIndicator, required: true, location_name: "segmentationCancelIndicator"))
    Scte35SegmentationDescriptor.add_member(:segmentation_duration, Shapes::ShapeRef.new(shape: __longMin0Max1099511627775, location_name: "segmentationDuration"))
    Scte35SegmentationDescriptor.add_member(:segmentation_event_id, Shapes::ShapeRef.new(shape: __longMin0Max4294967295, required: true, location_name: "segmentationEventId"))
    Scte35SegmentationDescriptor.add_member(:segmentation_type_id, Shapes::ShapeRef.new(shape: __integerMin0Max255, location_name: "segmentationTypeId"))
    Scte35SegmentationDescriptor.add_member(:segmentation_upid, Shapes::ShapeRef.new(shape: __string, location_name: "segmentationUpid"))
    Scte35SegmentationDescriptor.add_member(:segmentation_upid_type, Shapes::ShapeRef.new(shape: __integerMin0Max255, location_name: "segmentationUpidType"))
    Scte35SegmentationDescriptor.add_member(:segments_expected, Shapes::ShapeRef.new(shape: __integerMin0Max255, location_name: "segmentsExpected"))
    Scte35SegmentationDescriptor.add_member(:sub_segment_num, Shapes::ShapeRef.new(shape: __integerMin0Max255, location_name: "subSegmentNum"))
    Scte35SegmentationDescriptor.add_member(:sub_segments_expected, Shapes::ShapeRef.new(shape: __integerMin0Max255, location_name: "subSegmentsExpected"))
    Scte35SegmentationDescriptor.struct_class = Types::Scte35SegmentationDescriptor

    Scte35SpliceInsert.add_member(:ad_avail_offset, Shapes::ShapeRef.new(shape: __integerMinNegative1000Max1000, location_name: "adAvailOffset"))
    Scte35SpliceInsert.add_member(:no_regional_blackout_flag, Shapes::ShapeRef.new(shape: Scte35SpliceInsertNoRegionalBlackoutBehavior, location_name: "noRegionalBlackoutFlag"))
    Scte35SpliceInsert.add_member(:web_delivery_allowed_flag, Shapes::ShapeRef.new(shape: Scte35SpliceInsertWebDeliveryAllowedBehavior, location_name: "webDeliveryAllowedFlag"))
    Scte35SpliceInsert.struct_class = Types::Scte35SpliceInsert

    Scte35SpliceInsertScheduleActionSettings.add_member(:duration, Shapes::ShapeRef.new(shape: __longMin0Max8589934591, location_name: "duration"))
    Scte35SpliceInsertScheduleActionSettings.add_member(:splice_event_id, Shapes::ShapeRef.new(shape: __longMin0Max4294967295, required: true, location_name: "spliceEventId"))
    Scte35SpliceInsertScheduleActionSettings.struct_class = Types::Scte35SpliceInsertScheduleActionSettings

    Scte35TimeSignalApos.add_member(:ad_avail_offset, Shapes::ShapeRef.new(shape: __integerMinNegative1000Max1000, location_name: "adAvailOffset"))
    Scte35TimeSignalApos.add_member(:no_regional_blackout_flag, Shapes::ShapeRef.new(shape: Scte35AposNoRegionalBlackoutBehavior, location_name: "noRegionalBlackoutFlag"))
    Scte35TimeSignalApos.add_member(:web_delivery_allowed_flag, Shapes::ShapeRef.new(shape: Scte35AposWebDeliveryAllowedBehavior, location_name: "webDeliveryAllowedFlag"))
    Scte35TimeSignalApos.struct_class = Types::Scte35TimeSignalApos

    Scte35TimeSignalScheduleActionSettings.add_member(:scte_35_descriptors, Shapes::ShapeRef.new(shape: __listOfScte35Descriptor, required: true, location_name: "scte35Descriptors"))
    Scte35TimeSignalScheduleActionSettings.struct_class = Types::Scte35TimeSignalScheduleActionSettings

    SmpteTtDestinationSettings.struct_class = Types::SmpteTtDestinationSettings

    StandardHlsSettings.add_member(:audio_rendition_sets, Shapes::ShapeRef.new(shape: __string, location_name: "audioRenditionSets"))
    StandardHlsSettings.add_member(:m3u_8_settings, Shapes::ShapeRef.new(shape: M3u8Settings, required: true, location_name: "m3u8Settings"))
    StandardHlsSettings.struct_class = Types::StandardHlsSettings

    StartChannelRequest.add_member(:channel_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "channelId"))
    StartChannelRequest.struct_class = Types::StartChannelRequest

    StartChannelResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    StartChannelResponse.add_member(:cdi_input_specification, Shapes::ShapeRef.new(shape: CdiInputSpecification, location_name: "cdiInputSpecification"))
    StartChannelResponse.add_member(:channel_class, Shapes::ShapeRef.new(shape: ChannelClass, location_name: "channelClass"))
    StartChannelResponse.add_member(:destinations, Shapes::ShapeRef.new(shape: __listOfOutputDestination, location_name: "destinations"))
    StartChannelResponse.add_member(:egress_endpoints, Shapes::ShapeRef.new(shape: __listOfChannelEgressEndpoint, location_name: "egressEndpoints"))
    StartChannelResponse.add_member(:encoder_settings, Shapes::ShapeRef.new(shape: EncoderSettings, location_name: "encoderSettings"))
    StartChannelResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    StartChannelResponse.add_member(:input_attachments, Shapes::ShapeRef.new(shape: __listOfInputAttachment, location_name: "inputAttachments"))
    StartChannelResponse.add_member(:input_specification, Shapes::ShapeRef.new(shape: InputSpecification, location_name: "inputSpecification"))
    StartChannelResponse.add_member(:log_level, Shapes::ShapeRef.new(shape: LogLevel, location_name: "logLevel"))
    StartChannelResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    StartChannelResponse.add_member(:pipeline_details, Shapes::ShapeRef.new(shape: __listOfPipelineDetail, location_name: "pipelineDetails"))
    StartChannelResponse.add_member(:pipelines_running_count, Shapes::ShapeRef.new(shape: __integer, location_name: "pipelinesRunningCount"))
    StartChannelResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: __string, location_name: "roleArn"))
    StartChannelResponse.add_member(:state, Shapes::ShapeRef.new(shape: ChannelState, location_name: "state"))
    StartChannelResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    StartChannelResponse.struct_class = Types::StartChannelResponse

    StartMultiplexRequest.add_member(:multiplex_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "multiplexId"))
    StartMultiplexRequest.struct_class = Types::StartMultiplexRequest

    StartMultiplexResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    StartMultiplexResponse.add_member(:availability_zones, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "availabilityZones"))
    StartMultiplexResponse.add_member(:destinations, Shapes::ShapeRef.new(shape: __listOfMultiplexOutputDestination, location_name: "destinations"))
    StartMultiplexResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    StartMultiplexResponse.add_member(:multiplex_settings, Shapes::ShapeRef.new(shape: MultiplexSettings, location_name: "multiplexSettings"))
    StartMultiplexResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    StartMultiplexResponse.add_member(:pipelines_running_count, Shapes::ShapeRef.new(shape: __integer, location_name: "pipelinesRunningCount"))
    StartMultiplexResponse.add_member(:program_count, Shapes::ShapeRef.new(shape: __integer, location_name: "programCount"))
    StartMultiplexResponse.add_member(:state, Shapes::ShapeRef.new(shape: MultiplexState, location_name: "state"))
    StartMultiplexResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    StartMultiplexResponse.struct_class = Types::StartMultiplexResponse

    StartTimecode.add_member(:timecode, Shapes::ShapeRef.new(shape: __string, location_name: "timecode"))
    StartTimecode.struct_class = Types::StartTimecode

    StaticImageActivateScheduleActionSettings.add_member(:duration, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "duration"))
    StaticImageActivateScheduleActionSettings.add_member(:fade_in, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "fadeIn"))
    StaticImageActivateScheduleActionSettings.add_member(:fade_out, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "fadeOut"))
    StaticImageActivateScheduleActionSettings.add_member(:height, Shapes::ShapeRef.new(shape: __integerMin1, location_name: "height"))
    StaticImageActivateScheduleActionSettings.add_member(:image, Shapes::ShapeRef.new(shape: InputLocation, required: true, location_name: "image"))
    StaticImageActivateScheduleActionSettings.add_member(:image_x, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "imageX"))
    StaticImageActivateScheduleActionSettings.add_member(:image_y, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "imageY"))
    StaticImageActivateScheduleActionSettings.add_member(:layer, Shapes::ShapeRef.new(shape: __integerMin0Max7, location_name: "layer"))
    StaticImageActivateScheduleActionSettings.add_member(:opacity, Shapes::ShapeRef.new(shape: __integerMin0Max100, location_name: "opacity"))
    StaticImageActivateScheduleActionSettings.add_member(:width, Shapes::ShapeRef.new(shape: __integerMin1, location_name: "width"))
    StaticImageActivateScheduleActionSettings.struct_class = Types::StaticImageActivateScheduleActionSettings

    StaticImageDeactivateScheduleActionSettings.add_member(:fade_out, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "fadeOut"))
    StaticImageDeactivateScheduleActionSettings.add_member(:layer, Shapes::ShapeRef.new(shape: __integerMin0Max7, location_name: "layer"))
    StaticImageDeactivateScheduleActionSettings.struct_class = Types::StaticImageDeactivateScheduleActionSettings

    StaticKeySettings.add_member(:key_provider_server, Shapes::ShapeRef.new(shape: InputLocation, location_name: "keyProviderServer"))
    StaticKeySettings.add_member(:static_key_value, Shapes::ShapeRef.new(shape: __stringMin32Max32, required: true, location_name: "staticKeyValue"))
    StaticKeySettings.struct_class = Types::StaticKeySettings

    StopChannelRequest.add_member(:channel_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "channelId"))
    StopChannelRequest.struct_class = Types::StopChannelRequest

    StopChannelResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    StopChannelResponse.add_member(:cdi_input_specification, Shapes::ShapeRef.new(shape: CdiInputSpecification, location_name: "cdiInputSpecification"))
    StopChannelResponse.add_member(:channel_class, Shapes::ShapeRef.new(shape: ChannelClass, location_name: "channelClass"))
    StopChannelResponse.add_member(:destinations, Shapes::ShapeRef.new(shape: __listOfOutputDestination, location_name: "destinations"))
    StopChannelResponse.add_member(:egress_endpoints, Shapes::ShapeRef.new(shape: __listOfChannelEgressEndpoint, location_name: "egressEndpoints"))
    StopChannelResponse.add_member(:encoder_settings, Shapes::ShapeRef.new(shape: EncoderSettings, location_name: "encoderSettings"))
    StopChannelResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    StopChannelResponse.add_member(:input_attachments, Shapes::ShapeRef.new(shape: __listOfInputAttachment, location_name: "inputAttachments"))
    StopChannelResponse.add_member(:input_specification, Shapes::ShapeRef.new(shape: InputSpecification, location_name: "inputSpecification"))
    StopChannelResponse.add_member(:log_level, Shapes::ShapeRef.new(shape: LogLevel, location_name: "logLevel"))
    StopChannelResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    StopChannelResponse.add_member(:pipeline_details, Shapes::ShapeRef.new(shape: __listOfPipelineDetail, location_name: "pipelineDetails"))
    StopChannelResponse.add_member(:pipelines_running_count, Shapes::ShapeRef.new(shape: __integer, location_name: "pipelinesRunningCount"))
    StopChannelResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: __string, location_name: "roleArn"))
    StopChannelResponse.add_member(:state, Shapes::ShapeRef.new(shape: ChannelState, location_name: "state"))
    StopChannelResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    StopChannelResponse.struct_class = Types::StopChannelResponse

    StopMultiplexRequest.add_member(:multiplex_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "multiplexId"))
    StopMultiplexRequest.struct_class = Types::StopMultiplexRequest

    StopMultiplexResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    StopMultiplexResponse.add_member(:availability_zones, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "availabilityZones"))
    StopMultiplexResponse.add_member(:destinations, Shapes::ShapeRef.new(shape: __listOfMultiplexOutputDestination, location_name: "destinations"))
    StopMultiplexResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    StopMultiplexResponse.add_member(:multiplex_settings, Shapes::ShapeRef.new(shape: MultiplexSettings, location_name: "multiplexSettings"))
    StopMultiplexResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    StopMultiplexResponse.add_member(:pipelines_running_count, Shapes::ShapeRef.new(shape: __integer, location_name: "pipelinesRunningCount"))
    StopMultiplexResponse.add_member(:program_count, Shapes::ShapeRef.new(shape: __integer, location_name: "programCount"))
    StopMultiplexResponse.add_member(:state, Shapes::ShapeRef.new(shape: MultiplexState, location_name: "state"))
    StopMultiplexResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    StopMultiplexResponse.struct_class = Types::StopMultiplexResponse

    StopTimecode.add_member(:last_frame_clipping_behavior, Shapes::ShapeRef.new(shape: LastFrameClippingBehavior, location_name: "lastFrameClippingBehavior"))
    StopTimecode.add_member(:timecode, Shapes::ShapeRef.new(shape: __string, location_name: "timecode"))
    StopTimecode.struct_class = Types::StopTimecode

    Tags.key = Shapes::ShapeRef.new(shape: __string)
    Tags.value = Shapes::ShapeRef.new(shape: __string)

    TagsModel.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    TagsModel.struct_class = Types::TagsModel

    TeletextDestinationSettings.struct_class = Types::TeletextDestinationSettings

    TeletextSourceSettings.add_member(:page_number, Shapes::ShapeRef.new(shape: __string, location_name: "pageNumber"))
    TeletextSourceSettings.struct_class = Types::TeletextSourceSettings

    TemporalFilterSettings.add_member(:post_filter_sharpening, Shapes::ShapeRef.new(shape: TemporalFilterPostFilterSharpening, location_name: "postFilterSharpening"))
    TemporalFilterSettings.add_member(:strength, Shapes::ShapeRef.new(shape: TemporalFilterStrength, location_name: "strength"))
    TemporalFilterSettings.struct_class = Types::TemporalFilterSettings

    ThumbnailData.add_member(:body, Shapes::ShapeRef.new(shape: __string, location_name: "body"))
    ThumbnailData.struct_class = Types::ThumbnailData

    TimecodeConfig.add_member(:source, Shapes::ShapeRef.new(shape: TimecodeConfigSource, required: true, location_name: "source"))
    TimecodeConfig.add_member(:sync_threshold, Shapes::ShapeRef.new(shape: __integerMin1Max1000000, location_name: "syncThreshold"))
    TimecodeConfig.struct_class = Types::TimecodeConfig

    TooManyRequestsException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    TooManyRequestsException.struct_class = Types::TooManyRequestsException

    TransferInputDevice.add_member(:target_customer_id, Shapes::ShapeRef.new(shape: __string, location_name: "targetCustomerId"))
    TransferInputDevice.add_member(:transfer_message, Shapes::ShapeRef.new(shape: __string, location_name: "transferMessage"))
    TransferInputDevice.struct_class = Types::TransferInputDevice

    TransferInputDeviceRequest.add_member(:input_device_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "inputDeviceId"))
    TransferInputDeviceRequest.add_member(:target_customer_id, Shapes::ShapeRef.new(shape: __string, location_name: "targetCustomerId"))
    TransferInputDeviceRequest.add_member(:transfer_message, Shapes::ShapeRef.new(shape: __string, location_name: "transferMessage"))
    TransferInputDeviceRequest.struct_class = Types::TransferInputDeviceRequest

    TransferInputDeviceResponse.struct_class = Types::TransferInputDeviceResponse

    TransferringInputDeviceSummary.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    TransferringInputDeviceSummary.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    TransferringInputDeviceSummary.add_member(:target_customer_id, Shapes::ShapeRef.new(shape: __string, location_name: "targetCustomerId"))
    TransferringInputDeviceSummary.add_member(:transfer_type, Shapes::ShapeRef.new(shape: InputDeviceTransferType, location_name: "transferType"))
    TransferringInputDeviceSummary.struct_class = Types::TransferringInputDeviceSummary

    TtmlDestinationSettings.add_member(:style_control, Shapes::ShapeRef.new(shape: TtmlDestinationStyleControl, location_name: "styleControl"))
    TtmlDestinationSettings.struct_class = Types::TtmlDestinationSettings

    UdpContainerSettings.add_member(:m2ts_settings, Shapes::ShapeRef.new(shape: M2tsSettings, location_name: "m2tsSettings"))
    UdpContainerSettings.struct_class = Types::UdpContainerSettings

    UdpGroupSettings.add_member(:input_loss_action, Shapes::ShapeRef.new(shape: InputLossActionForUdpOut, location_name: "inputLossAction"))
    UdpGroupSettings.add_member(:timed_metadata_id_3_frame, Shapes::ShapeRef.new(shape: UdpTimedMetadataId3Frame, location_name: "timedMetadataId3Frame"))
    UdpGroupSettings.add_member(:timed_metadata_id_3_period, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "timedMetadataId3Period"))
    UdpGroupSettings.struct_class = Types::UdpGroupSettings

    UdpOutputSettings.add_member(:buffer_msec, Shapes::ShapeRef.new(shape: __integerMin0Max10000, location_name: "bufferMsec"))
    UdpOutputSettings.add_member(:container_settings, Shapes::ShapeRef.new(shape: UdpContainerSettings, required: true, location_name: "containerSettings"))
    UdpOutputSettings.add_member(:destination, Shapes::ShapeRef.new(shape: OutputLocationRef, required: true, location_name: "destination"))
    UdpOutputSettings.add_member(:fec_output_settings, Shapes::ShapeRef.new(shape: FecOutputSettings, location_name: "fecOutputSettings"))
    UdpOutputSettings.struct_class = Types::UdpOutputSettings

    UnprocessableEntityException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    UnprocessableEntityException.add_member(:validation_errors, Shapes::ShapeRef.new(shape: __listOfValidationError, location_name: "validationErrors"))
    UnprocessableEntityException.struct_class = Types::UnprocessableEntityException

    UpdateChannel.add_member(:cdi_input_specification, Shapes::ShapeRef.new(shape: CdiInputSpecification, location_name: "cdiInputSpecification"))
    UpdateChannel.add_member(:destinations, Shapes::ShapeRef.new(shape: __listOfOutputDestination, location_name: "destinations"))
    UpdateChannel.add_member(:encoder_settings, Shapes::ShapeRef.new(shape: EncoderSettings, location_name: "encoderSettings"))
    UpdateChannel.add_member(:input_attachments, Shapes::ShapeRef.new(shape: __listOfInputAttachment, location_name: "inputAttachments"))
    UpdateChannel.add_member(:input_specification, Shapes::ShapeRef.new(shape: InputSpecification, location_name: "inputSpecification"))
    UpdateChannel.add_member(:log_level, Shapes::ShapeRef.new(shape: LogLevel, location_name: "logLevel"))
    UpdateChannel.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    UpdateChannel.add_member(:role_arn, Shapes::ShapeRef.new(shape: __string, location_name: "roleArn"))
    UpdateChannel.struct_class = Types::UpdateChannel

    UpdateChannelClass.add_member(:channel_class, Shapes::ShapeRef.new(shape: ChannelClass, required: true, location_name: "channelClass"))
    UpdateChannelClass.add_member(:destinations, Shapes::ShapeRef.new(shape: __listOfOutputDestination, location_name: "destinations"))
    UpdateChannelClass.struct_class = Types::UpdateChannelClass

    UpdateChannelClassRequest.add_member(:channel_class, Shapes::ShapeRef.new(shape: ChannelClass, required: true, location_name: "channelClass"))
    UpdateChannelClassRequest.add_member(:channel_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "channelId"))
    UpdateChannelClassRequest.add_member(:destinations, Shapes::ShapeRef.new(shape: __listOfOutputDestination, location_name: "destinations"))
    UpdateChannelClassRequest.struct_class = Types::UpdateChannelClassRequest

    UpdateChannelClassResponse.add_member(:channel, Shapes::ShapeRef.new(shape: Channel, location_name: "channel"))
    UpdateChannelClassResponse.struct_class = Types::UpdateChannelClassResponse

    UpdateChannelRequest.add_member(:cdi_input_specification, Shapes::ShapeRef.new(shape: CdiInputSpecification, location_name: "cdiInputSpecification"))
    UpdateChannelRequest.add_member(:channel_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "channelId"))
    UpdateChannelRequest.add_member(:destinations, Shapes::ShapeRef.new(shape: __listOfOutputDestination, location_name: "destinations"))
    UpdateChannelRequest.add_member(:encoder_settings, Shapes::ShapeRef.new(shape: EncoderSettings, location_name: "encoderSettings"))
    UpdateChannelRequest.add_member(:input_attachments, Shapes::ShapeRef.new(shape: __listOfInputAttachment, location_name: "inputAttachments"))
    UpdateChannelRequest.add_member(:input_specification, Shapes::ShapeRef.new(shape: InputSpecification, location_name: "inputSpecification"))
    UpdateChannelRequest.add_member(:log_level, Shapes::ShapeRef.new(shape: LogLevel, location_name: "logLevel"))
    UpdateChannelRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    UpdateChannelRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: __string, location_name: "roleArn"))
    UpdateChannelRequest.struct_class = Types::UpdateChannelRequest

    UpdateChannelResponse.add_member(:channel, Shapes::ShapeRef.new(shape: Channel, location_name: "channel"))
    UpdateChannelResponse.struct_class = Types::UpdateChannelResponse

    UpdateChannelResultModel.add_member(:channel, Shapes::ShapeRef.new(shape: Channel, location_name: "channel"))
    UpdateChannelResultModel.struct_class = Types::UpdateChannelResultModel

    UpdateInput.add_member(:destinations, Shapes::ShapeRef.new(shape: __listOfInputDestinationRequest, location_name: "destinations"))
    UpdateInput.add_member(:input_devices, Shapes::ShapeRef.new(shape: __listOfInputDeviceRequest, location_name: "inputDevices"))
    UpdateInput.add_member(:input_security_groups, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "inputSecurityGroups"))
    UpdateInput.add_member(:media_connect_flows, Shapes::ShapeRef.new(shape: __listOfMediaConnectFlowRequest, location_name: "mediaConnectFlows"))
    UpdateInput.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    UpdateInput.add_member(:role_arn, Shapes::ShapeRef.new(shape: __string, location_name: "roleArn"))
    UpdateInput.add_member(:sources, Shapes::ShapeRef.new(shape: __listOfInputSourceRequest, location_name: "sources"))
    UpdateInput.struct_class = Types::UpdateInput

    UpdateInputDevice.add_member(:hd_device_settings, Shapes::ShapeRef.new(shape: InputDeviceConfigurableSettings, location_name: "hdDeviceSettings"))
    UpdateInputDevice.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    UpdateInputDevice.struct_class = Types::UpdateInputDevice

    UpdateInputDeviceRequest.add_member(:hd_device_settings, Shapes::ShapeRef.new(shape: InputDeviceConfigurableSettings, location_name: "hdDeviceSettings"))
    UpdateInputDeviceRequest.add_member(:input_device_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "inputDeviceId"))
    UpdateInputDeviceRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    UpdateInputDeviceRequest.struct_class = Types::UpdateInputDeviceRequest

    UpdateInputDeviceResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    UpdateInputDeviceResponse.add_member(:connection_state, Shapes::ShapeRef.new(shape: InputDeviceConnectionState, location_name: "connectionState"))
    UpdateInputDeviceResponse.add_member(:device_settings_sync_state, Shapes::ShapeRef.new(shape: DeviceSettingsSyncState, location_name: "deviceSettingsSyncState"))
    UpdateInputDeviceResponse.add_member(:hd_device_settings, Shapes::ShapeRef.new(shape: InputDeviceHdSettings, location_name: "hdDeviceSettings"))
    UpdateInputDeviceResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    UpdateInputDeviceResponse.add_member(:mac_address, Shapes::ShapeRef.new(shape: __string, location_name: "macAddress"))
    UpdateInputDeviceResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    UpdateInputDeviceResponse.add_member(:network_settings, Shapes::ShapeRef.new(shape: InputDeviceNetworkSettings, location_name: "networkSettings"))
    UpdateInputDeviceResponse.add_member(:serial_number, Shapes::ShapeRef.new(shape: __string, location_name: "serialNumber"))
    UpdateInputDeviceResponse.add_member(:type, Shapes::ShapeRef.new(shape: InputDeviceType, location_name: "type"))
    UpdateInputDeviceResponse.struct_class = Types::UpdateInputDeviceResponse

    UpdateInputRequest.add_member(:destinations, Shapes::ShapeRef.new(shape: __listOfInputDestinationRequest, location_name: "destinations"))
    UpdateInputRequest.add_member(:input_devices, Shapes::ShapeRef.new(shape: __listOfInputDeviceRequest, location_name: "inputDevices"))
    UpdateInputRequest.add_member(:input_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "inputId"))
    UpdateInputRequest.add_member(:input_security_groups, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "inputSecurityGroups"))
    UpdateInputRequest.add_member(:media_connect_flows, Shapes::ShapeRef.new(shape: __listOfMediaConnectFlowRequest, location_name: "mediaConnectFlows"))
    UpdateInputRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    UpdateInputRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: __string, location_name: "roleArn"))
    UpdateInputRequest.add_member(:sources, Shapes::ShapeRef.new(shape: __listOfInputSourceRequest, location_name: "sources"))
    UpdateInputRequest.struct_class = Types::UpdateInputRequest

    UpdateInputResponse.add_member(:input, Shapes::ShapeRef.new(shape: Input, location_name: "input"))
    UpdateInputResponse.struct_class = Types::UpdateInputResponse

    UpdateInputResultModel.add_member(:input, Shapes::ShapeRef.new(shape: Input, location_name: "input"))
    UpdateInputResultModel.struct_class = Types::UpdateInputResultModel

    UpdateInputSecurityGroupRequest.add_member(:input_security_group_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "inputSecurityGroupId"))
    UpdateInputSecurityGroupRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    UpdateInputSecurityGroupRequest.add_member(:whitelist_rules, Shapes::ShapeRef.new(shape: __listOfInputWhitelistRuleCidr, location_name: "whitelistRules"))
    UpdateInputSecurityGroupRequest.struct_class = Types::UpdateInputSecurityGroupRequest

    UpdateInputSecurityGroupResponse.add_member(:security_group, Shapes::ShapeRef.new(shape: InputSecurityGroup, location_name: "securityGroup"))
    UpdateInputSecurityGroupResponse.struct_class = Types::UpdateInputSecurityGroupResponse

    UpdateInputSecurityGroupResultModel.add_member(:security_group, Shapes::ShapeRef.new(shape: InputSecurityGroup, location_name: "securityGroup"))
    UpdateInputSecurityGroupResultModel.struct_class = Types::UpdateInputSecurityGroupResultModel

    UpdateMultiplex.add_member(:multiplex_settings, Shapes::ShapeRef.new(shape: MultiplexSettings, location_name: "multiplexSettings"))
    UpdateMultiplex.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    UpdateMultiplex.struct_class = Types::UpdateMultiplex

    UpdateMultiplexProgram.add_member(:multiplex_program_settings, Shapes::ShapeRef.new(shape: MultiplexProgramSettings, location_name: "multiplexProgramSettings"))
    UpdateMultiplexProgram.struct_class = Types::UpdateMultiplexProgram

    UpdateMultiplexProgramRequest.add_member(:multiplex_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "multiplexId"))
    UpdateMultiplexProgramRequest.add_member(:multiplex_program_settings, Shapes::ShapeRef.new(shape: MultiplexProgramSettings, location_name: "multiplexProgramSettings"))
    UpdateMultiplexProgramRequest.add_member(:program_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "programName"))
    UpdateMultiplexProgramRequest.struct_class = Types::UpdateMultiplexProgramRequest

    UpdateMultiplexProgramResponse.add_member(:multiplex_program, Shapes::ShapeRef.new(shape: MultiplexProgram, location_name: "multiplexProgram"))
    UpdateMultiplexProgramResponse.struct_class = Types::UpdateMultiplexProgramResponse

    UpdateMultiplexProgramResultModel.add_member(:multiplex_program, Shapes::ShapeRef.new(shape: MultiplexProgram, location_name: "multiplexProgram"))
    UpdateMultiplexProgramResultModel.struct_class = Types::UpdateMultiplexProgramResultModel

    UpdateMultiplexRequest.add_member(:multiplex_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "multiplexId"))
    UpdateMultiplexRequest.add_member(:multiplex_settings, Shapes::ShapeRef.new(shape: MultiplexSettings, location_name: "multiplexSettings"))
    UpdateMultiplexRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    UpdateMultiplexRequest.struct_class = Types::UpdateMultiplexRequest

    UpdateMultiplexResponse.add_member(:multiplex, Shapes::ShapeRef.new(shape: Multiplex, location_name: "multiplex"))
    UpdateMultiplexResponse.struct_class = Types::UpdateMultiplexResponse

    UpdateMultiplexResultModel.add_member(:multiplex, Shapes::ShapeRef.new(shape: Multiplex, location_name: "multiplex"))
    UpdateMultiplexResultModel.struct_class = Types::UpdateMultiplexResultModel

    UpdateReservation.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    UpdateReservation.struct_class = Types::UpdateReservation

    UpdateReservationRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    UpdateReservationRequest.add_member(:reservation_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "reservationId"))
    UpdateReservationRequest.struct_class = Types::UpdateReservationRequest

    UpdateReservationResponse.add_member(:reservation, Shapes::ShapeRef.new(shape: Reservation, location_name: "reservation"))
    UpdateReservationResponse.struct_class = Types::UpdateReservationResponse

    UpdateReservationResultModel.add_member(:reservation, Shapes::ShapeRef.new(shape: Reservation, location_name: "reservation"))
    UpdateReservationResultModel.struct_class = Types::UpdateReservationResultModel

    ValidationError.add_member(:element_path, Shapes::ShapeRef.new(shape: __string, location_name: "elementPath"))
    ValidationError.add_member(:error_message, Shapes::ShapeRef.new(shape: __string, location_name: "errorMessage"))
    ValidationError.struct_class = Types::ValidationError

    VideoCodecSettings.add_member(:frame_capture_settings, Shapes::ShapeRef.new(shape: FrameCaptureSettings, location_name: "frameCaptureSettings"))
    VideoCodecSettings.add_member(:h264_settings, Shapes::ShapeRef.new(shape: H264Settings, location_name: "h264Settings"))
    VideoCodecSettings.add_member(:h265_settings, Shapes::ShapeRef.new(shape: H265Settings, location_name: "h265Settings"))
    VideoCodecSettings.add_member(:mpeg_2_settings, Shapes::ShapeRef.new(shape: Mpeg2Settings, location_name: "mpeg2Settings"))
    VideoCodecSettings.struct_class = Types::VideoCodecSettings

    VideoDescription.add_member(:codec_settings, Shapes::ShapeRef.new(shape: VideoCodecSettings, location_name: "codecSettings"))
    VideoDescription.add_member(:height, Shapes::ShapeRef.new(shape: __integer, location_name: "height"))
    VideoDescription.add_member(:name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "name"))
    VideoDescription.add_member(:respond_to_afd, Shapes::ShapeRef.new(shape: VideoDescriptionRespondToAfd, location_name: "respondToAfd"))
    VideoDescription.add_member(:scaling_behavior, Shapes::ShapeRef.new(shape: VideoDescriptionScalingBehavior, location_name: "scalingBehavior"))
    VideoDescription.add_member(:sharpness, Shapes::ShapeRef.new(shape: __integerMin0Max100, location_name: "sharpness"))
    VideoDescription.add_member(:width, Shapes::ShapeRef.new(shape: __integer, location_name: "width"))
    VideoDescription.struct_class = Types::VideoDescription

    VideoSelector.add_member(:color_space, Shapes::ShapeRef.new(shape: VideoSelectorColorSpace, location_name: "colorSpace"))
    VideoSelector.add_member(:color_space_usage, Shapes::ShapeRef.new(shape: VideoSelectorColorSpaceUsage, location_name: "colorSpaceUsage"))
    VideoSelector.add_member(:selector_settings, Shapes::ShapeRef.new(shape: VideoSelectorSettings, location_name: "selectorSettings"))
    VideoSelector.struct_class = Types::VideoSelector

    VideoSelectorPid.add_member(:pid, Shapes::ShapeRef.new(shape: __integerMin0Max8191, location_name: "pid"))
    VideoSelectorPid.struct_class = Types::VideoSelectorPid

    VideoSelectorProgramId.add_member(:program_id, Shapes::ShapeRef.new(shape: __integerMin0Max65536, location_name: "programId"))
    VideoSelectorProgramId.struct_class = Types::VideoSelectorProgramId

    VideoSelectorSettings.add_member(:video_selector_pid, Shapes::ShapeRef.new(shape: VideoSelectorPid, location_name: "videoSelectorPid"))
    VideoSelectorSettings.add_member(:video_selector_program_id, Shapes::ShapeRef.new(shape: VideoSelectorProgramId, location_name: "videoSelectorProgramId"))
    VideoSelectorSettings.struct_class = Types::VideoSelectorSettings

    WavSettings.add_member(:bit_depth, Shapes::ShapeRef.new(shape: __double, location_name: "bitDepth"))
    WavSettings.add_member(:coding_mode, Shapes::ShapeRef.new(shape: WavCodingMode, location_name: "codingMode"))
    WavSettings.add_member(:sample_rate, Shapes::ShapeRef.new(shape: __double, location_name: "sampleRate"))
    WavSettings.struct_class = Types::WavSettings

    WebvttDestinationSettings.struct_class = Types::WebvttDestinationSettings

    __listOfAudioChannelMapping.member = Shapes::ShapeRef.new(shape: AudioChannelMapping)

    __listOfAudioDescription.member = Shapes::ShapeRef.new(shape: AudioDescription)

    __listOfAudioSelector.member = Shapes::ShapeRef.new(shape: AudioSelector)

    __listOfAudioTrack.member = Shapes::ShapeRef.new(shape: AudioTrack)

    __listOfBatchFailedResultModel.member = Shapes::ShapeRef.new(shape: BatchFailedResultModel)

    __listOfBatchSuccessfulResultModel.member = Shapes::ShapeRef.new(shape: BatchSuccessfulResultModel)

    __listOfCaptionDescription.member = Shapes::ShapeRef.new(shape: CaptionDescription)

    __listOfCaptionLanguageMapping.member = Shapes::ShapeRef.new(shape: CaptionLanguageMapping)

    __listOfCaptionSelector.member = Shapes::ShapeRef.new(shape: CaptionSelector)

    __listOfChannelEgressEndpoint.member = Shapes::ShapeRef.new(shape: ChannelEgressEndpoint)

    __listOfChannelSummary.member = Shapes::ShapeRef.new(shape: ChannelSummary)

    __listOfHlsAdMarkers.member = Shapes::ShapeRef.new(shape: HlsAdMarkers)

    __listOfInput.member = Shapes::ShapeRef.new(shape: Input)

    __listOfInputAttachment.member = Shapes::ShapeRef.new(shape: InputAttachment)

    __listOfInputChannelLevel.member = Shapes::ShapeRef.new(shape: InputChannelLevel)

    __listOfInputDestination.member = Shapes::ShapeRef.new(shape: InputDestination)

    __listOfInputDestinationRequest.member = Shapes::ShapeRef.new(shape: InputDestinationRequest)

    __listOfInputDeviceRequest.member = Shapes::ShapeRef.new(shape: InputDeviceRequest)

    __listOfInputDeviceSettings.member = Shapes::ShapeRef.new(shape: InputDeviceSettings)

    __listOfInputDeviceSummary.member = Shapes::ShapeRef.new(shape: InputDeviceSummary)

    __listOfInputSecurityGroup.member = Shapes::ShapeRef.new(shape: InputSecurityGroup)

    __listOfInputSource.member = Shapes::ShapeRef.new(shape: InputSource)

    __listOfInputSourceRequest.member = Shapes::ShapeRef.new(shape: InputSourceRequest)

    __listOfInputWhitelistRule.member = Shapes::ShapeRef.new(shape: InputWhitelistRule)

    __listOfInputWhitelistRuleCidr.member = Shapes::ShapeRef.new(shape: InputWhitelistRuleCidr)

    __listOfMediaConnectFlow.member = Shapes::ShapeRef.new(shape: MediaConnectFlow)

    __listOfMediaConnectFlowRequest.member = Shapes::ShapeRef.new(shape: MediaConnectFlowRequest)

    __listOfMediaPackageOutputDestinationSettings.member = Shapes::ShapeRef.new(shape: MediaPackageOutputDestinationSettings)

    __listOfMultiplexOutputDestination.member = Shapes::ShapeRef.new(shape: MultiplexOutputDestination)

    __listOfMultiplexProgramPipelineDetail.member = Shapes::ShapeRef.new(shape: MultiplexProgramPipelineDetail)

    __listOfMultiplexProgramSummary.member = Shapes::ShapeRef.new(shape: MultiplexProgramSummary)

    __listOfMultiplexSummary.member = Shapes::ShapeRef.new(shape: MultiplexSummary)

    __listOfOffering.member = Shapes::ShapeRef.new(shape: Offering)

    __listOfOutput.member = Shapes::ShapeRef.new(shape: Output)

    __listOfOutputDestination.member = Shapes::ShapeRef.new(shape: OutputDestination)

    __listOfOutputDestinationSettings.member = Shapes::ShapeRef.new(shape: OutputDestinationSettings)

    __listOfOutputGroup.member = Shapes::ShapeRef.new(shape: OutputGroup)

    __listOfPipelineDetail.member = Shapes::ShapeRef.new(shape: PipelineDetail)

    __listOfPipelinePauseStateSettings.member = Shapes::ShapeRef.new(shape: PipelinePauseStateSettings)

    __listOfReservation.member = Shapes::ShapeRef.new(shape: Reservation)

    __listOfScheduleAction.member = Shapes::ShapeRef.new(shape: ScheduleAction)

    __listOfScte35Descriptor.member = Shapes::ShapeRef.new(shape: Scte35Descriptor)

    __listOfTransferringInputDeviceSummary.member = Shapes::ShapeRef.new(shape: TransferringInputDeviceSummary)

    __listOfValidationError.member = Shapes::ShapeRef.new(shape: ValidationError)

    __listOfVideoDescription.member = Shapes::ShapeRef.new(shape: VideoDescription)

    __listOf__integer.member = Shapes::ShapeRef.new(shape: __integer)

    __listOf__string.member = Shapes::ShapeRef.new(shape: __string)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2017-10-14"

      api.metadata = {
        "apiVersion" => "2017-10-14",
        "endpointPrefix" => "medialive",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceAbbreviation" => "MediaLive",
        "serviceFullName" => "AWS Elemental MediaLive",
        "serviceId" => "MediaLive",
        "signatureVersion" => "v4",
        "signingName" => "medialive",
        "uid" => "medialive-2017-10-14",
      }

      api.add_operation(:accept_input_device_transfer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AcceptInputDeviceTransfer"
        o.http_method = "POST"
        o.http_request_uri = "/prod/inputDevices/{inputDeviceId}/accept"
        o.input = Shapes::ShapeRef.new(shape: AcceptInputDeviceTransferRequest)
        o.output = Shapes::ShapeRef.new(shape: AcceptInputDeviceTransferResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:batch_delete, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchDelete"
        o.http_method = "POST"
        o.http_request_uri = "/prod/batch/delete"
        o.input = Shapes::ShapeRef.new(shape: BatchDeleteRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchDeleteResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:batch_start, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchStart"
        o.http_method = "POST"
        o.http_request_uri = "/prod/batch/start"
        o.input = Shapes::ShapeRef.new(shape: BatchStartRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchStartResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:batch_stop, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchStop"
        o.http_method = "POST"
        o.http_request_uri = "/prod/batch/stop"
        o.input = Shapes::ShapeRef.new(shape: BatchStopRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchStopResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:batch_update_schedule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchUpdateSchedule"
        o.http_method = "PUT"
        o.http_request_uri = "/prod/channels/{channelId}/schedule"
        o.input = Shapes::ShapeRef.new(shape: BatchUpdateScheduleRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchUpdateScheduleResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:cancel_input_device_transfer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelInputDeviceTransfer"
        o.http_method = "POST"
        o.http_request_uri = "/prod/inputDevices/{inputDeviceId}/cancel"
        o.input = Shapes::ShapeRef.new(shape: CancelInputDeviceTransferRequest)
        o.output = Shapes::ShapeRef.new(shape: CancelInputDeviceTransferResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateChannel"
        o.http_method = "POST"
        o.http_request_uri = "/prod/channels"
        o.input = Shapes::ShapeRef.new(shape: CreateChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateChannelResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_input, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateInput"
        o.http_method = "POST"
        o.http_request_uri = "/prod/inputs"
        o.input = Shapes::ShapeRef.new(shape: CreateInputRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateInputResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:create_input_security_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateInputSecurityGroup"
        o.http_method = "POST"
        o.http_request_uri = "/prod/inputSecurityGroups"
        o.input = Shapes::ShapeRef.new(shape: CreateInputSecurityGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateInputSecurityGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:create_multiplex, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateMultiplex"
        o.http_method = "POST"
        o.http_request_uri = "/prod/multiplexes"
        o.input = Shapes::ShapeRef.new(shape: CreateMultiplexRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateMultiplexResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_multiplex_program, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateMultiplexProgram"
        o.http_method = "POST"
        o.http_request_uri = "/prod/multiplexes/{multiplexId}/programs"
        o.input = Shapes::ShapeRef.new(shape: CreateMultiplexProgramRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateMultiplexProgramResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateTags"
        o.http_method = "POST"
        o.http_request_uri = "/prod/tags/{resource-arn}"
        o.input = Shapes::ShapeRef.new(shape: CreateTagsRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
      end)

      api.add_operation(:delete_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteChannel"
        o.http_method = "DELETE"
        o.http_request_uri = "/prod/channels/{channelId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteChannelResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_input, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteInput"
        o.http_method = "DELETE"
        o.http_request_uri = "/prod/inputs/{inputId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteInputRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteInputResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_input_security_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteInputSecurityGroup"
        o.http_method = "DELETE"
        o.http_request_uri = "/prod/inputSecurityGroups/{inputSecurityGroupId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteInputSecurityGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteInputSecurityGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:delete_multiplex, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteMultiplex"
        o.http_method = "DELETE"
        o.http_request_uri = "/prod/multiplexes/{multiplexId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteMultiplexRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteMultiplexResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_multiplex_program, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteMultiplexProgram"
        o.http_method = "DELETE"
        o.http_request_uri = "/prod/multiplexes/{multiplexId}/programs/{programName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteMultiplexProgramRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteMultiplexProgramResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_reservation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteReservation"
        o.http_method = "DELETE"
        o.http_request_uri = "/prod/reservations/{reservationId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteReservationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteReservationResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_schedule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSchedule"
        o.http_method = "DELETE"
        o.http_request_uri = "/prod/channels/{channelId}/schedule"
        o.input = Shapes::ShapeRef.new(shape: DeleteScheduleRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteScheduleResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:delete_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTags"
        o.http_method = "DELETE"
        o.http_request_uri = "/prod/tags/{resource-arn}"
        o.input = Shapes::ShapeRef.new(shape: DeleteTagsRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
      end)

      api.add_operation(:describe_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeChannel"
        o.http_method = "GET"
        o.http_request_uri = "/prod/channels/{channelId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeChannelResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:describe_input, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeInput"
        o.http_method = "GET"
        o.http_request_uri = "/prod/inputs/{inputId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeInputRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeInputResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:describe_input_device, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeInputDevice"
        o.http_method = "GET"
        o.http_request_uri = "/prod/inputDevices/{inputDeviceId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeInputDeviceRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeInputDeviceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:describe_input_device_thumbnail, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeInputDeviceThumbnail"
        o.http_method = "GET"
        o.http_request_uri = "/prod/inputDevices/{inputDeviceId}/thumbnailData"
        o.input = Shapes::ShapeRef.new(shape: DescribeInputDeviceThumbnailRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeInputDeviceThumbnailResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:describe_input_security_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeInputSecurityGroup"
        o.http_method = "GET"
        o.http_request_uri = "/prod/inputSecurityGroups/{inputSecurityGroupId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeInputSecurityGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeInputSecurityGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:describe_multiplex, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeMultiplex"
        o.http_method = "GET"
        o.http_request_uri = "/prod/multiplexes/{multiplexId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeMultiplexRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeMultiplexResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:describe_multiplex_program, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeMultiplexProgram"
        o.http_method = "GET"
        o.http_request_uri = "/prod/multiplexes/{multiplexId}/programs/{programName}"
        o.input = Shapes::ShapeRef.new(shape: DescribeMultiplexProgramRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeMultiplexProgramResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:describe_offering, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeOffering"
        o.http_method = "GET"
        o.http_request_uri = "/prod/offerings/{offeringId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeOfferingRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeOfferingResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:describe_reservation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeReservation"
        o.http_method = "GET"
        o.http_request_uri = "/prod/reservations/{reservationId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeReservationRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeReservationResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:describe_schedule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeSchedule"
        o.http_method = "GET"
        o.http_request_uri = "/prod/channels/{channelId}/schedule"
        o.input = Shapes::ShapeRef.new(shape: DescribeScheduleRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeScheduleResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
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
        o.http_request_uri = "/prod/channels"
        o.input = Shapes::ShapeRef.new(shape: ListChannelsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListChannelsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_input_device_transfers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListInputDeviceTransfers"
        o.http_method = "GET"
        o.http_request_uri = "/prod/inputDeviceTransfers"
        o.input = Shapes::ShapeRef.new(shape: ListInputDeviceTransfersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListInputDeviceTransfersResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_input_devices, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListInputDevices"
        o.http_method = "GET"
        o.http_request_uri = "/prod/inputDevices"
        o.input = Shapes::ShapeRef.new(shape: ListInputDevicesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListInputDevicesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_input_security_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListInputSecurityGroups"
        o.http_method = "GET"
        o.http_request_uri = "/prod/inputSecurityGroups"
        o.input = Shapes::ShapeRef.new(shape: ListInputSecurityGroupsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListInputSecurityGroupsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_inputs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListInputs"
        o.http_method = "GET"
        o.http_request_uri = "/prod/inputs"
        o.input = Shapes::ShapeRef.new(shape: ListInputsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListInputsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_multiplex_programs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListMultiplexPrograms"
        o.http_method = "GET"
        o.http_request_uri = "/prod/multiplexes/{multiplexId}/programs"
        o.input = Shapes::ShapeRef.new(shape: ListMultiplexProgramsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListMultiplexProgramsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_multiplexes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListMultiplexes"
        o.http_method = "GET"
        o.http_request_uri = "/prod/multiplexes"
        o.input = Shapes::ShapeRef.new(shape: ListMultiplexesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListMultiplexesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_offerings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListOfferings"
        o.http_method = "GET"
        o.http_request_uri = "/prod/offerings"
        o.input = Shapes::ShapeRef.new(shape: ListOfferingsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListOfferingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_reservations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListReservations"
        o.http_method = "GET"
        o.http_request_uri = "/prod/reservations"
        o.input = Shapes::ShapeRef.new(shape: ListReservationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListReservationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
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
        o.http_request_uri = "/prod/tags/{resource-arn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
      end)

      api.add_operation(:purchase_offering, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PurchaseOffering"
        o.http_method = "POST"
        o.http_request_uri = "/prod/offerings/{offeringId}/purchase"
        o.input = Shapes::ShapeRef.new(shape: PurchaseOfferingRequest)
        o.output = Shapes::ShapeRef.new(shape: PurchaseOfferingResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:reject_input_device_transfer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RejectInputDeviceTransfer"
        o.http_method = "POST"
        o.http_request_uri = "/prod/inputDevices/{inputDeviceId}/reject"
        o.input = Shapes::ShapeRef.new(shape: RejectInputDeviceTransferRequest)
        o.output = Shapes::ShapeRef.new(shape: RejectInputDeviceTransferResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:start_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartChannel"
        o.http_method = "POST"
        o.http_request_uri = "/prod/channels/{channelId}/start"
        o.input = Shapes::ShapeRef.new(shape: StartChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: StartChannelResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:start_multiplex, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartMultiplex"
        o.http_method = "POST"
        o.http_request_uri = "/prod/multiplexes/{multiplexId}/start"
        o.input = Shapes::ShapeRef.new(shape: StartMultiplexRequest)
        o.output = Shapes::ShapeRef.new(shape: StartMultiplexResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:stop_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopChannel"
        o.http_method = "POST"
        o.http_request_uri = "/prod/channels/{channelId}/stop"
        o.input = Shapes::ShapeRef.new(shape: StopChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: StopChannelResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:stop_multiplex, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopMultiplex"
        o.http_method = "POST"
        o.http_request_uri = "/prod/multiplexes/{multiplexId}/stop"
        o.input = Shapes::ShapeRef.new(shape: StopMultiplexRequest)
        o.output = Shapes::ShapeRef.new(shape: StopMultiplexResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:transfer_input_device, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TransferInputDevice"
        o.http_method = "POST"
        o.http_request_uri = "/prod/inputDevices/{inputDeviceId}/transfer"
        o.input = Shapes::ShapeRef.new(shape: TransferInputDeviceRequest)
        o.output = Shapes::ShapeRef.new(shape: TransferInputDeviceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateChannel"
        o.http_method = "PUT"
        o.http_request_uri = "/prod/channels/{channelId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateChannelResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_channel_class, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateChannelClass"
        o.http_method = "PUT"
        o.http_request_uri = "/prod/channels/{channelId}/channelClass"
        o.input = Shapes::ShapeRef.new(shape: UpdateChannelClassRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateChannelClassResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_input, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateInput"
        o.http_method = "PUT"
        o.http_request_uri = "/prod/inputs/{inputId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateInputRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateInputResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_input_device, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateInputDevice"
        o.http_method = "PUT"
        o.http_request_uri = "/prod/inputDevices/{inputDeviceId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateInputDeviceRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateInputDeviceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:update_input_security_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateInputSecurityGroup"
        o.http_method = "PUT"
        o.http_request_uri = "/prod/inputSecurityGroups/{inputSecurityGroupId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateInputSecurityGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateInputSecurityGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_multiplex, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateMultiplex"
        o.http_method = "PUT"
        o.http_request_uri = "/prod/multiplexes/{multiplexId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateMultiplexRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateMultiplexResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_multiplex_program, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateMultiplexProgram"
        o.http_method = "PUT"
        o.http_request_uri = "/prod/multiplexes/{multiplexId}/programs/{programName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateMultiplexProgramRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateMultiplexProgramResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_reservation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateReservation"
        o.http_method = "PUT"
        o.http_request_uri = "/prod/reservations/{reservationId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateReservationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateReservationResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)
    end

  end
end
