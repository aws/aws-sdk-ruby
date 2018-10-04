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
    AccessDenied = Shapes::StructureShape.new(name: 'AccessDenied')
    AfdSignaling = Shapes::StringShape.new(name: 'AfdSignaling')
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
    AudioOnlyHlsSettings = Shapes::StructureShape.new(name: 'AudioOnlyHlsSettings')
    AudioOnlyHlsTrackType = Shapes::StringShape.new(name: 'AudioOnlyHlsTrackType')
    AudioPidSelection = Shapes::StructureShape.new(name: 'AudioPidSelection')
    AudioSelector = Shapes::StructureShape.new(name: 'AudioSelector')
    AudioSelectorSettings = Shapes::StructureShape.new(name: 'AudioSelectorSettings')
    AudioType = Shapes::StringShape.new(name: 'AudioType')
    AuthenticationScheme = Shapes::StringShape.new(name: 'AuthenticationScheme')
    AvailBlanking = Shapes::StructureShape.new(name: 'AvailBlanking')
    AvailBlankingState = Shapes::StringShape.new(name: 'AvailBlankingState')
    AvailConfiguration = Shapes::StructureShape.new(name: 'AvailConfiguration')
    AvailSettings = Shapes::StructureShape.new(name: 'AvailSettings')
    BadGatewayException = Shapes::StructureShape.new(name: 'BadGatewayException')
    BadRequestException = Shapes::StructureShape.new(name: 'BadRequestException')
    BatchScheduleActionCreateRequest = Shapes::StructureShape.new(name: 'BatchScheduleActionCreateRequest')
    BatchScheduleActionCreateResult = Shapes::StructureShape.new(name: 'BatchScheduleActionCreateResult')
    BatchScheduleActionDeleteRequest = Shapes::StructureShape.new(name: 'BatchScheduleActionDeleteRequest')
    BatchScheduleActionDeleteResult = Shapes::StructureShape.new(name: 'BatchScheduleActionDeleteResult')
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
    CaptionDescription = Shapes::StructureShape.new(name: 'CaptionDescription')
    CaptionDestinationSettings = Shapes::StructureShape.new(name: 'CaptionDestinationSettings')
    CaptionLanguageMapping = Shapes::StructureShape.new(name: 'CaptionLanguageMapping')
    CaptionSelector = Shapes::StructureShape.new(name: 'CaptionSelector')
    CaptionSelectorSettings = Shapes::StructureShape.new(name: 'CaptionSelectorSettings')
    Channel = Shapes::StructureShape.new(name: 'Channel')
    ChannelConfigurationValidationError = Shapes::StructureShape.new(name: 'ChannelConfigurationValidationError')
    ChannelEgressEndpoint = Shapes::StructureShape.new(name: 'ChannelEgressEndpoint')
    ChannelState = Shapes::StringShape.new(name: 'ChannelState')
    ChannelSummary = Shapes::StructureShape.new(name: 'ChannelSummary')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
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
    DeleteChannelRequest = Shapes::StructureShape.new(name: 'DeleteChannelRequest')
    DeleteChannelResponse = Shapes::StructureShape.new(name: 'DeleteChannelResponse')
    DeleteInputRequest = Shapes::StructureShape.new(name: 'DeleteInputRequest')
    DeleteInputResponse = Shapes::StructureShape.new(name: 'DeleteInputResponse')
    DeleteInputSecurityGroupRequest = Shapes::StructureShape.new(name: 'DeleteInputSecurityGroupRequest')
    DeleteInputSecurityGroupResponse = Shapes::StructureShape.new(name: 'DeleteInputSecurityGroupResponse')
    DeleteReservationRequest = Shapes::StructureShape.new(name: 'DeleteReservationRequest')
    DeleteReservationResponse = Shapes::StructureShape.new(name: 'DeleteReservationResponse')
    DescribeChannelRequest = Shapes::StructureShape.new(name: 'DescribeChannelRequest')
    DescribeChannelResponse = Shapes::StructureShape.new(name: 'DescribeChannelResponse')
    DescribeInputRequest = Shapes::StructureShape.new(name: 'DescribeInputRequest')
    DescribeInputResponse = Shapes::StructureShape.new(name: 'DescribeInputResponse')
    DescribeInputSecurityGroupRequest = Shapes::StructureShape.new(name: 'DescribeInputSecurityGroupRequest')
    DescribeInputSecurityGroupResponse = Shapes::StructureShape.new(name: 'DescribeInputSecurityGroupResponse')
    DescribeOfferingRequest = Shapes::StructureShape.new(name: 'DescribeOfferingRequest')
    DescribeOfferingResponse = Shapes::StructureShape.new(name: 'DescribeOfferingResponse')
    DescribeReservationRequest = Shapes::StructureShape.new(name: 'DescribeReservationRequest')
    DescribeReservationResponse = Shapes::StructureShape.new(name: 'DescribeReservationResponse')
    DescribeScheduleRequest = Shapes::StructureShape.new(name: 'DescribeScheduleRequest')
    DescribeScheduleResponse = Shapes::StructureShape.new(name: 'DescribeScheduleResponse')
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
    EmbeddedConvert608To708 = Shapes::StringShape.new(name: 'EmbeddedConvert608To708')
    EmbeddedDestinationSettings = Shapes::StructureShape.new(name: 'EmbeddedDestinationSettings')
    EmbeddedPlusScte20DestinationSettings = Shapes::StructureShape.new(name: 'EmbeddedPlusScte20DestinationSettings')
    EmbeddedScte20Detection = Shapes::StringShape.new(name: 'EmbeddedScte20Detection')
    EmbeddedSourceSettings = Shapes::StructureShape.new(name: 'EmbeddedSourceSettings')
    Empty = Shapes::StructureShape.new(name: 'Empty')
    EncoderSettings = Shapes::StructureShape.new(name: 'EncoderSettings')
    FecOutputIncludeFec = Shapes::StringShape.new(name: 'FecOutputIncludeFec')
    FecOutputSettings = Shapes::StructureShape.new(name: 'FecOutputSettings')
    FixedAfd = Shapes::StringShape.new(name: 'FixedAfd')
    FixedModeScheduleActionStartSettings = Shapes::StructureShape.new(name: 'FixedModeScheduleActionStartSettings')
    ForbiddenException = Shapes::StructureShape.new(name: 'ForbiddenException')
    GatewayTimeoutException = Shapes::StructureShape.new(name: 'GatewayTimeoutException')
    GlobalConfiguration = Shapes::StructureShape.new(name: 'GlobalConfiguration')
    GlobalConfigurationInputEndAction = Shapes::StringShape.new(name: 'GlobalConfigurationInputEndAction')
    GlobalConfigurationLowFramerateInputs = Shapes::StringShape.new(name: 'GlobalConfigurationLowFramerateInputs')
    GlobalConfigurationOutputTimingSource = Shapes::StringShape.new(name: 'GlobalConfigurationOutputTimingSource')
    H264AdaptiveQuantization = Shapes::StringShape.new(name: 'H264AdaptiveQuantization')
    H264ColorMetadata = Shapes::StringShape.new(name: 'H264ColorMetadata')
    H264EntropyEncoding = Shapes::StringShape.new(name: 'H264EntropyEncoding')
    H264FlickerAq = Shapes::StringShape.new(name: 'H264FlickerAq')
    H264FramerateControl = Shapes::StringShape.new(name: 'H264FramerateControl')
    H264GopBReference = Shapes::StringShape.new(name: 'H264GopBReference')
    H264GopSizeUnits = Shapes::StringShape.new(name: 'H264GopSizeUnits')
    H264Level = Shapes::StringShape.new(name: 'H264Level')
    H264LookAheadRateControl = Shapes::StringShape.new(name: 'H264LookAheadRateControl')
    H264ParControl = Shapes::StringShape.new(name: 'H264ParControl')
    H264Profile = Shapes::StringShape.new(name: 'H264Profile')
    H264RateControlMode = Shapes::StringShape.new(name: 'H264RateControlMode')
    H264ScanType = Shapes::StringShape.new(name: 'H264ScanType')
    H264SceneChangeDetect = Shapes::StringShape.new(name: 'H264SceneChangeDetect')
    H264Settings = Shapes::StructureShape.new(name: 'H264Settings')
    H264SpatialAq = Shapes::StringShape.new(name: 'H264SpatialAq')
    H264Syntax = Shapes::StringShape.new(name: 'H264Syntax')
    H264TemporalAq = Shapes::StringShape.new(name: 'H264TemporalAq')
    H264TimecodeInsertionBehavior = Shapes::StringShape.new(name: 'H264TimecodeInsertionBehavior')
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
    HlsSegmentationMode = Shapes::StringShape.new(name: 'HlsSegmentationMode')
    HlsSettings = Shapes::StructureShape.new(name: 'HlsSettings')
    HlsStreamInfResolution = Shapes::StringShape.new(name: 'HlsStreamInfResolution')
    HlsTimedMetadataId3Frame = Shapes::StringShape.new(name: 'HlsTimedMetadataId3Frame')
    HlsTsFileMode = Shapes::StringShape.new(name: 'HlsTsFileMode')
    HlsWebdavHttpTransferMode = Shapes::StringShape.new(name: 'HlsWebdavHttpTransferMode')
    HlsWebdavSettings = Shapes::StructureShape.new(name: 'HlsWebdavSettings')
    Input = Shapes::StructureShape.new(name: 'Input')
    InputAttachment = Shapes::StructureShape.new(name: 'InputAttachment')
    InputChannelLevel = Shapes::StructureShape.new(name: 'InputChannelLevel')
    InputCodec = Shapes::StringShape.new(name: 'InputCodec')
    InputDeblockFilter = Shapes::StringShape.new(name: 'InputDeblockFilter')
    InputDenoiseFilter = Shapes::StringShape.new(name: 'InputDenoiseFilter')
    InputDestination = Shapes::StructureShape.new(name: 'InputDestination')
    InputDestinationRequest = Shapes::StructureShape.new(name: 'InputDestinationRequest')
    InputFilter = Shapes::StringShape.new(name: 'InputFilter')
    InputLocation = Shapes::StructureShape.new(name: 'InputLocation')
    InputLossActionForHlsOut = Shapes::StringShape.new(name: 'InputLossActionForHlsOut')
    InputLossActionForMsSmoothOut = Shapes::StringShape.new(name: 'InputLossActionForMsSmoothOut')
    InputLossActionForUdpOut = Shapes::StringShape.new(name: 'InputLossActionForUdpOut')
    InputLossBehavior = Shapes::StructureShape.new(name: 'InputLossBehavior')
    InputLossImageType = Shapes::StringShape.new(name: 'InputLossImageType')
    InputMaximumBitrate = Shapes::StringShape.new(name: 'InputMaximumBitrate')
    InputResolution = Shapes::StringShape.new(name: 'InputResolution')
    InputSecurityGroup = Shapes::StructureShape.new(name: 'InputSecurityGroup')
    InputSecurityGroupState = Shapes::StringShape.new(name: 'InputSecurityGroupState')
    InputSecurityGroupWhitelistRequest = Shapes::StructureShape.new(name: 'InputSecurityGroupWhitelistRequest')
    InputSettings = Shapes::StructureShape.new(name: 'InputSettings')
    InputSource = Shapes::StructureShape.new(name: 'InputSource')
    InputSourceEndBehavior = Shapes::StringShape.new(name: 'InputSourceEndBehavior')
    InputSourceRequest = Shapes::StructureShape.new(name: 'InputSourceRequest')
    InputSpecification = Shapes::StructureShape.new(name: 'InputSpecification')
    InputState = Shapes::StringShape.new(name: 'InputState')
    InputType = Shapes::StringShape.new(name: 'InputType')
    InputWhitelistRule = Shapes::StructureShape.new(name: 'InputWhitelistRule')
    InputWhitelistRuleCidr = Shapes::StructureShape.new(name: 'InputWhitelistRuleCidr')
    InternalServerErrorException = Shapes::StructureShape.new(name: 'InternalServerErrorException')
    InternalServiceError = Shapes::StructureShape.new(name: 'InternalServiceError')
    InvalidRequest = Shapes::StructureShape.new(name: 'InvalidRequest')
    KeyProviderSettings = Shapes::StructureShape.new(name: 'KeyProviderSettings')
    LimitExceeded = Shapes::StructureShape.new(name: 'LimitExceeded')
    ListChannelsRequest = Shapes::StructureShape.new(name: 'ListChannelsRequest')
    ListChannelsResponse = Shapes::StructureShape.new(name: 'ListChannelsResponse')
    ListChannelsResultModel = Shapes::StructureShape.new(name: 'ListChannelsResultModel')
    ListInputSecurityGroupsRequest = Shapes::StructureShape.new(name: 'ListInputSecurityGroupsRequest')
    ListInputSecurityGroupsResponse = Shapes::StructureShape.new(name: 'ListInputSecurityGroupsResponse')
    ListInputSecurityGroupsResultModel = Shapes::StructureShape.new(name: 'ListInputSecurityGroupsResultModel')
    ListInputsRequest = Shapes::StructureShape.new(name: 'ListInputsRequest')
    ListInputsResponse = Shapes::StructureShape.new(name: 'ListInputsResponse')
    ListInputsResultModel = Shapes::StructureShape.new(name: 'ListInputsResultModel')
    ListOfferingsRequest = Shapes::StructureShape.new(name: 'ListOfferingsRequest')
    ListOfferingsResponse = Shapes::StructureShape.new(name: 'ListOfferingsResponse')
    ListOfferingsResultModel = Shapes::StructureShape.new(name: 'ListOfferingsResultModel')
    ListReservationsRequest = Shapes::StructureShape.new(name: 'ListReservationsRequest')
    ListReservationsResponse = Shapes::StructureShape.new(name: 'ListReservationsResponse')
    ListReservationsResultModel = Shapes::StructureShape.new(name: 'ListReservationsResultModel')
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
    M2tsPcrControl = Shapes::StringShape.new(name: 'M2tsPcrControl')
    M2tsRateMode = Shapes::StringShape.new(name: 'M2tsRateMode')
    M2tsScte35Control = Shapes::StringShape.new(name: 'M2tsScte35Control')
    M2tsSegmentationMarkers = Shapes::StringShape.new(name: 'M2tsSegmentationMarkers')
    M2tsSegmentationStyle = Shapes::StringShape.new(name: 'M2tsSegmentationStyle')
    M2tsSettings = Shapes::StructureShape.new(name: 'M2tsSettings')
    M2tsTimedMetadataBehavior = Shapes::StringShape.new(name: 'M2tsTimedMetadataBehavior')
    M3u8PcrControl = Shapes::StringShape.new(name: 'M3u8PcrControl')
    M3u8Scte35Behavior = Shapes::StringShape.new(name: 'M3u8Scte35Behavior')
    M3u8Settings = Shapes::StructureShape.new(name: 'M3u8Settings')
    M3u8TimedMetadataBehavior = Shapes::StringShape.new(name: 'M3u8TimedMetadataBehavior')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    Mp2CodingMode = Shapes::StringShape.new(name: 'Mp2CodingMode')
    Mp2Settings = Shapes::StructureShape.new(name: 'Mp2Settings')
    MsSmoothGroupSettings = Shapes::StructureShape.new(name: 'MsSmoothGroupSettings')
    MsSmoothOutputSettings = Shapes::StructureShape.new(name: 'MsSmoothOutputSettings')
    NetworkInputServerValidation = Shapes::StringShape.new(name: 'NetworkInputServerValidation')
    NetworkInputSettings = Shapes::StructureShape.new(name: 'NetworkInputSettings')
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
    PurchaseOffering = Shapes::StructureShape.new(name: 'PurchaseOffering')
    PurchaseOfferingRequest = Shapes::StructureShape.new(name: 'PurchaseOfferingRequest')
    PurchaseOfferingResponse = Shapes::StructureShape.new(name: 'PurchaseOfferingResponse')
    PurchaseOfferingResultModel = Shapes::StructureShape.new(name: 'PurchaseOfferingResultModel')
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
    SmpteTtDestinationSettings = Shapes::StructureShape.new(name: 'SmpteTtDestinationSettings')
    StandardHlsSettings = Shapes::StructureShape.new(name: 'StandardHlsSettings')
    StartChannelRequest = Shapes::StructureShape.new(name: 'StartChannelRequest')
    StartChannelResponse = Shapes::StructureShape.new(name: 'StartChannelResponse')
    StaticImageActivateScheduleActionSettings = Shapes::StructureShape.new(name: 'StaticImageActivateScheduleActionSettings')
    StaticImageDeactivateScheduleActionSettings = Shapes::StructureShape.new(name: 'StaticImageDeactivateScheduleActionSettings')
    StaticKeySettings = Shapes::StructureShape.new(name: 'StaticKeySettings')
    StopChannelRequest = Shapes::StructureShape.new(name: 'StopChannelRequest')
    StopChannelResponse = Shapes::StructureShape.new(name: 'StopChannelResponse')
    TeletextDestinationSettings = Shapes::StructureShape.new(name: 'TeletextDestinationSettings')
    TeletextSourceSettings = Shapes::StructureShape.new(name: 'TeletextSourceSettings')
    TimecodeConfig = Shapes::StructureShape.new(name: 'TimecodeConfig')
    TimecodeConfigSource = Shapes::StringShape.new(name: 'TimecodeConfigSource')
    TooManyRequestsException = Shapes::StructureShape.new(name: 'TooManyRequestsException')
    TtmlDestinationSettings = Shapes::StructureShape.new(name: 'TtmlDestinationSettings')
    TtmlDestinationStyleControl = Shapes::StringShape.new(name: 'TtmlDestinationStyleControl')
    UdpContainerSettings = Shapes::StructureShape.new(name: 'UdpContainerSettings')
    UdpGroupSettings = Shapes::StructureShape.new(name: 'UdpGroupSettings')
    UdpOutputSettings = Shapes::StructureShape.new(name: 'UdpOutputSettings')
    UdpTimedMetadataId3Frame = Shapes::StringShape.new(name: 'UdpTimedMetadataId3Frame')
    UnprocessableEntityException = Shapes::StructureShape.new(name: 'UnprocessableEntityException')
    UpdateChannel = Shapes::StructureShape.new(name: 'UpdateChannel')
    UpdateChannelRequest = Shapes::StructureShape.new(name: 'UpdateChannelRequest')
    UpdateChannelResponse = Shapes::StructureShape.new(name: 'UpdateChannelResponse')
    UpdateChannelResultModel = Shapes::StructureShape.new(name: 'UpdateChannelResultModel')
    UpdateInput = Shapes::StructureShape.new(name: 'UpdateInput')
    UpdateInputRequest = Shapes::StructureShape.new(name: 'UpdateInputRequest')
    UpdateInputResponse = Shapes::StructureShape.new(name: 'UpdateInputResponse')
    UpdateInputResultModel = Shapes::StructureShape.new(name: 'UpdateInputResultModel')
    UpdateInputSecurityGroupRequest = Shapes::StructureShape.new(name: 'UpdateInputSecurityGroupRequest')
    UpdateInputSecurityGroupResponse = Shapes::StructureShape.new(name: 'UpdateInputSecurityGroupResponse')
    UpdateInputSecurityGroupResultModel = Shapes::StructureShape.new(name: 'UpdateInputSecurityGroupResultModel')
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
    __integerMin0Max1099511627775 = Shapes::IntegerShape.new(name: '__integerMin0Max1099511627775')
    __integerMin0Max128 = Shapes::IntegerShape.new(name: '__integerMin0Max128')
    __integerMin0Max15 = Shapes::IntegerShape.new(name: '__integerMin0Max15')
    __integerMin0Max255 = Shapes::IntegerShape.new(name: '__integerMin0Max255')
    __integerMin0Max30 = Shapes::IntegerShape.new(name: '__integerMin0Max30')
    __integerMin0Max3600 = Shapes::IntegerShape.new(name: '__integerMin0Max3600')
    __integerMin0Max4294967295 = Shapes::IntegerShape.new(name: '__integerMin0Max4294967295')
    __integerMin0Max500 = Shapes::IntegerShape.new(name: '__integerMin0Max500')
    __integerMin0Max600 = Shapes::IntegerShape.new(name: '__integerMin0Max600')
    __integerMin0Max65535 = Shapes::IntegerShape.new(name: '__integerMin0Max65535')
    __integerMin0Max65536 = Shapes::IntegerShape.new(name: '__integerMin0Max65536')
    __integerMin0Max7 = Shapes::IntegerShape.new(name: '__integerMin0Max7')
    __integerMin0Max8191 = Shapes::IntegerShape.new(name: '__integerMin0Max8191')
    __integerMin0Max8589934591 = Shapes::IntegerShape.new(name: '__integerMin0Max8589934591')
    __integerMin1 = Shapes::IntegerShape.new(name: '__integerMin1')
    __integerMin1000 = Shapes::IntegerShape.new(name: '__integerMin1000')
    __integerMin1000Max30000 = Shapes::IntegerShape.new(name: '__integerMin1000Max30000')
    __integerMin1Max1000000 = Shapes::IntegerShape.new(name: '__integerMin1Max1000000')
    __integerMin1Max16 = Shapes::IntegerShape.new(name: '__integerMin1Max16')
    __integerMin1Max20 = Shapes::IntegerShape.new(name: '__integerMin1Max20')
    __integerMin1Max31 = Shapes::IntegerShape.new(name: '__integerMin1Max31')
    __integerMin1Max32 = Shapes::IntegerShape.new(name: '__integerMin1Max32')
    __integerMin1Max4 = Shapes::IntegerShape.new(name: '__integerMin1Max4')
    __integerMin1Max5 = Shapes::IntegerShape.new(name: '__integerMin1Max5')
    __integerMin1Max6 = Shapes::IntegerShape.new(name: '__integerMin1Max6')
    __integerMin1Max8 = Shapes::IntegerShape.new(name: '__integerMin1Max8')
    __integerMin25Max10000 = Shapes::IntegerShape.new(name: '__integerMin25Max10000')
    __integerMin25Max2000 = Shapes::IntegerShape.new(name: '__integerMin25Max2000')
    __integerMin3 = Shapes::IntegerShape.new(name: '__integerMin3')
    __integerMin30 = Shapes::IntegerShape.new(name: '__integerMin30')
    __integerMin4Max20 = Shapes::IntegerShape.new(name: '__integerMin4Max20')
    __integerMin96Max600 = Shapes::IntegerShape.new(name: '__integerMin96Max600')
    __integerMinNegative1000Max1000 = Shapes::IntegerShape.new(name: '__integerMinNegative1000Max1000')
    __integerMinNegative60Max6 = Shapes::IntegerShape.new(name: '__integerMinNegative60Max6')
    __integerMinNegative60Max60 = Shapes::IntegerShape.new(name: '__integerMinNegative60Max60')
    __listOfAudioChannelMapping = Shapes::ListShape.new(name: '__listOfAudioChannelMapping')
    __listOfAudioDescription = Shapes::ListShape.new(name: '__listOfAudioDescription')
    __listOfAudioSelector = Shapes::ListShape.new(name: '__listOfAudioSelector')
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
    __listOfInputSecurityGroup = Shapes::ListShape.new(name: '__listOfInputSecurityGroup')
    __listOfInputSource = Shapes::ListShape.new(name: '__listOfInputSource')
    __listOfInputSourceRequest = Shapes::ListShape.new(name: '__listOfInputSourceRequest')
    __listOfInputWhitelistRule = Shapes::ListShape.new(name: '__listOfInputWhitelistRule')
    __listOfInputWhitelistRuleCidr = Shapes::ListShape.new(name: '__listOfInputWhitelistRuleCidr')
    __listOfOffering = Shapes::ListShape.new(name: '__listOfOffering')
    __listOfOutput = Shapes::ListShape.new(name: '__listOfOutput')
    __listOfOutputDestination = Shapes::ListShape.new(name: '__listOfOutputDestination')
    __listOfOutputDestinationSettings = Shapes::ListShape.new(name: '__listOfOutputDestinationSettings')
    __listOfOutputGroup = Shapes::ListShape.new(name: '__listOfOutputGroup')
    __listOfReservation = Shapes::ListShape.new(name: '__listOfReservation')
    __listOfScheduleAction = Shapes::ListShape.new(name: '__listOfScheduleAction')
    __listOfScte35Descriptor = Shapes::ListShape.new(name: '__listOfScte35Descriptor')
    __listOfValidationError = Shapes::ListShape.new(name: '__listOfValidationError')
    __listOfVideoDescription = Shapes::ListShape.new(name: '__listOfVideoDescription')
    __listOf__string = Shapes::ListShape.new(name: '__listOf__string')
    __long = Shapes::IntegerShape.new(name: '__long')
    __string = Shapes::StringShape.new(name: '__string')
    __stringMax32 = Shapes::StringShape.new(name: '__stringMax32')
    __stringMin1 = Shapes::StringShape.new(name: '__stringMin1')
    __stringMin1Max255 = Shapes::StringShape.new(name: '__stringMin1Max255')
    __stringMin1Max256 = Shapes::StringShape.new(name: '__stringMin1Max256')
    __stringMin32Max32 = Shapes::StringShape.new(name: '__stringMin32Max32')
    __stringMin34Max34 = Shapes::StringShape.new(name: '__stringMin34Max34')
    __stringMin3Max3 = Shapes::StringShape.new(name: '__stringMin3Max3')
    __stringMin6Max6 = Shapes::StringShape.new(name: '__stringMin6Max6')

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

    AccessDenied.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    AccessDenied.struct_class = Types::AccessDenied

    ArchiveContainerSettings.add_member(:m2ts_settings, Shapes::ShapeRef.new(shape: M2tsSettings, location_name: "m2tsSettings"))
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
    AudioCodecSettings.struct_class = Types::AudioCodecSettings

    AudioDescription.add_member(:audio_normalization_settings, Shapes::ShapeRef.new(shape: AudioNormalizationSettings, location_name: "audioNormalizationSettings"))
    AudioDescription.add_member(:audio_selector_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "audioSelectorName"))
    AudioDescription.add_member(:audio_type, Shapes::ShapeRef.new(shape: AudioType, location_name: "audioType"))
    AudioDescription.add_member(:audio_type_control, Shapes::ShapeRef.new(shape: AudioDescriptionAudioTypeControl, location_name: "audioTypeControl"))
    AudioDescription.add_member(:codec_settings, Shapes::ShapeRef.new(shape: AudioCodecSettings, location_name: "codecSettings"))
    AudioDescription.add_member(:language_code, Shapes::ShapeRef.new(shape: __stringMin3Max3, location_name: "languageCode"))
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
    AudioOnlyHlsSettings.struct_class = Types::AudioOnlyHlsSettings

    AudioPidSelection.add_member(:pid, Shapes::ShapeRef.new(shape: __integerMin0Max8191, required: true, location_name: "pid"))
    AudioPidSelection.struct_class = Types::AudioPidSelection

    AudioSelector.add_member(:name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "name"))
    AudioSelector.add_member(:selector_settings, Shapes::ShapeRef.new(shape: AudioSelectorSettings, location_name: "selectorSettings"))
    AudioSelector.struct_class = Types::AudioSelector

    AudioSelectorSettings.add_member(:audio_language_selection, Shapes::ShapeRef.new(shape: AudioLanguageSelection, location_name: "audioLanguageSelection"))
    AudioSelectorSettings.add_member(:audio_pid_selection, Shapes::ShapeRef.new(shape: AudioPidSelection, location_name: "audioPidSelection"))
    AudioSelectorSettings.struct_class = Types::AudioSelectorSettings

    AvailBlanking.add_member(:avail_blanking_image, Shapes::ShapeRef.new(shape: InputLocation, location_name: "availBlankingImage"))
    AvailBlanking.add_member(:state, Shapes::ShapeRef.new(shape: AvailBlankingState, location_name: "state"))
    AvailBlanking.struct_class = Types::AvailBlanking

    AvailConfiguration.add_member(:avail_settings, Shapes::ShapeRef.new(shape: AvailSettings, location_name: "availSettings"))
    AvailConfiguration.struct_class = Types::AvailConfiguration

    AvailSettings.add_member(:scte_35_splice_insert, Shapes::ShapeRef.new(shape: Scte35SpliceInsert, location_name: "scte35SpliceInsert"))
    AvailSettings.add_member(:scte_35_time_signal_apos, Shapes::ShapeRef.new(shape: Scte35TimeSignalApos, location_name: "scte35TimeSignalApos"))
    AvailSettings.struct_class = Types::AvailSettings

    BatchScheduleActionCreateRequest.add_member(:schedule_actions, Shapes::ShapeRef.new(shape: __listOfScheduleAction, required: true, location_name: "scheduleActions"))
    BatchScheduleActionCreateRequest.struct_class = Types::BatchScheduleActionCreateRequest

    BatchScheduleActionCreateResult.add_member(:schedule_actions, Shapes::ShapeRef.new(shape: __listOfScheduleAction, required: true, location_name: "scheduleActions"))
    BatchScheduleActionCreateResult.struct_class = Types::BatchScheduleActionCreateResult

    BatchScheduleActionDeleteRequest.add_member(:action_names, Shapes::ShapeRef.new(shape: __listOf__string, required: true, location_name: "actionNames"))
    BatchScheduleActionDeleteRequest.struct_class = Types::BatchScheduleActionDeleteRequest

    BatchScheduleActionDeleteResult.add_member(:schedule_actions, Shapes::ShapeRef.new(shape: __listOfScheduleAction, required: true, location_name: "scheduleActions"))
    BatchScheduleActionDeleteResult.struct_class = Types::BatchScheduleActionDeleteResult

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

    CaptionDescription.add_member(:caption_selector_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "captionSelectorName"))
    CaptionDescription.add_member(:destination_settings, Shapes::ShapeRef.new(shape: CaptionDestinationSettings, location_name: "destinationSettings"))
    CaptionDescription.add_member(:language_code, Shapes::ShapeRef.new(shape: __string, location_name: "languageCode"))
    CaptionDescription.add_member(:language_description, Shapes::ShapeRef.new(shape: __string, location_name: "languageDescription"))
    CaptionDescription.add_member(:name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "name"))
    CaptionDescription.struct_class = Types::CaptionDescription

    CaptionDestinationSettings.add_member(:arib_destination_settings, Shapes::ShapeRef.new(shape: AribDestinationSettings, location_name: "aribDestinationSettings"))
    CaptionDestinationSettings.add_member(:burn_in_destination_settings, Shapes::ShapeRef.new(shape: BurnInDestinationSettings, location_name: "burnInDestinationSettings"))
    CaptionDestinationSettings.add_member(:dvb_sub_destination_settings, Shapes::ShapeRef.new(shape: DvbSubDestinationSettings, location_name: "dvbSubDestinationSettings"))
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
    CaptionSelector.add_member(:name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "name"))
    CaptionSelector.add_member(:selector_settings, Shapes::ShapeRef.new(shape: CaptionSelectorSettings, location_name: "selectorSettings"))
    CaptionSelector.struct_class = Types::CaptionSelector

    CaptionSelectorSettings.add_member(:arib_source_settings, Shapes::ShapeRef.new(shape: AribSourceSettings, location_name: "aribSourceSettings"))
    CaptionSelectorSettings.add_member(:dvb_sub_source_settings, Shapes::ShapeRef.new(shape: DvbSubSourceSettings, location_name: "dvbSubSourceSettings"))
    CaptionSelectorSettings.add_member(:embedded_source_settings, Shapes::ShapeRef.new(shape: EmbeddedSourceSettings, location_name: "embeddedSourceSettings"))
    CaptionSelectorSettings.add_member(:scte_20_source_settings, Shapes::ShapeRef.new(shape: Scte20SourceSettings, location_name: "scte20SourceSettings"))
    CaptionSelectorSettings.add_member(:scte_27_source_settings, Shapes::ShapeRef.new(shape: Scte27SourceSettings, location_name: "scte27SourceSettings"))
    CaptionSelectorSettings.add_member(:teletext_source_settings, Shapes::ShapeRef.new(shape: TeletextSourceSettings, location_name: "teletextSourceSettings"))
    CaptionSelectorSettings.struct_class = Types::CaptionSelectorSettings

    Channel.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    Channel.add_member(:destinations, Shapes::ShapeRef.new(shape: __listOfOutputDestination, location_name: "destinations"))
    Channel.add_member(:egress_endpoints, Shapes::ShapeRef.new(shape: __listOfChannelEgressEndpoint, location_name: "egressEndpoints"))
    Channel.add_member(:encoder_settings, Shapes::ShapeRef.new(shape: EncoderSettings, location_name: "encoderSettings"))
    Channel.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    Channel.add_member(:input_attachments, Shapes::ShapeRef.new(shape: __listOfInputAttachment, location_name: "inputAttachments"))
    Channel.add_member(:input_specification, Shapes::ShapeRef.new(shape: InputSpecification, location_name: "inputSpecification"))
    Channel.add_member(:log_level, Shapes::ShapeRef.new(shape: LogLevel, location_name: "logLevel"))
    Channel.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    Channel.add_member(:pipelines_running_count, Shapes::ShapeRef.new(shape: __integer, location_name: "pipelinesRunningCount"))
    Channel.add_member(:role_arn, Shapes::ShapeRef.new(shape: __string, location_name: "roleArn"))
    Channel.add_member(:state, Shapes::ShapeRef.new(shape: ChannelState, location_name: "state"))
    Channel.struct_class = Types::Channel

    ChannelConfigurationValidationError.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    ChannelConfigurationValidationError.add_member(:validation_errors, Shapes::ShapeRef.new(shape: __listOfValidationError, location_name: "validationErrors"))
    ChannelConfigurationValidationError.struct_class = Types::ChannelConfigurationValidationError

    ChannelEgressEndpoint.add_member(:source_ip, Shapes::ShapeRef.new(shape: __string, location_name: "sourceIp"))
    ChannelEgressEndpoint.struct_class = Types::ChannelEgressEndpoint

    ChannelSummary.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
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
    ChannelSummary.struct_class = Types::ChannelSummary

    CreateChannel.add_member(:destinations, Shapes::ShapeRef.new(shape: __listOfOutputDestination, location_name: "destinations"))
    CreateChannel.add_member(:encoder_settings, Shapes::ShapeRef.new(shape: EncoderSettings, location_name: "encoderSettings"))
    CreateChannel.add_member(:input_attachments, Shapes::ShapeRef.new(shape: __listOfInputAttachment, location_name: "inputAttachments"))
    CreateChannel.add_member(:input_specification, Shapes::ShapeRef.new(shape: InputSpecification, location_name: "inputSpecification"))
    CreateChannel.add_member(:log_level, Shapes::ShapeRef.new(shape: LogLevel, location_name: "logLevel"))
    CreateChannel.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    CreateChannel.add_member(:request_id, Shapes::ShapeRef.new(shape: __string, location_name: "requestId", metadata: {"idempotencyToken"=>true}))
    CreateChannel.add_member(:reserved, Shapes::ShapeRef.new(shape: __string, deprecated: true, location_name: "reserved"))
    CreateChannel.add_member(:role_arn, Shapes::ShapeRef.new(shape: __string, location_name: "roleArn"))
    CreateChannel.struct_class = Types::CreateChannel

    CreateChannelRequest.add_member(:destinations, Shapes::ShapeRef.new(shape: __listOfOutputDestination, location_name: "destinations"))
    CreateChannelRequest.add_member(:encoder_settings, Shapes::ShapeRef.new(shape: EncoderSettings, location_name: "encoderSettings"))
    CreateChannelRequest.add_member(:input_attachments, Shapes::ShapeRef.new(shape: __listOfInputAttachment, location_name: "inputAttachments"))
    CreateChannelRequest.add_member(:input_specification, Shapes::ShapeRef.new(shape: InputSpecification, location_name: "inputSpecification"))
    CreateChannelRequest.add_member(:log_level, Shapes::ShapeRef.new(shape: LogLevel, location_name: "logLevel"))
    CreateChannelRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    CreateChannelRequest.add_member(:request_id, Shapes::ShapeRef.new(shape: __string, location_name: "requestId", metadata: {"idempotencyToken"=>true}))
    CreateChannelRequest.add_member(:reserved, Shapes::ShapeRef.new(shape: __string, deprecated: true, location_name: "reserved"))
    CreateChannelRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: __string, location_name: "roleArn"))
    CreateChannelRequest.struct_class = Types::CreateChannelRequest

    CreateChannelResponse.add_member(:channel, Shapes::ShapeRef.new(shape: Channel, location_name: "channel"))
    CreateChannelResponse.struct_class = Types::CreateChannelResponse

    CreateChannelResultModel.add_member(:channel, Shapes::ShapeRef.new(shape: Channel, location_name: "channel"))
    CreateChannelResultModel.struct_class = Types::CreateChannelResultModel

    CreateInput.add_member(:destinations, Shapes::ShapeRef.new(shape: __listOfInputDestinationRequest, location_name: "destinations"))
    CreateInput.add_member(:input_security_groups, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "inputSecurityGroups"))
    CreateInput.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    CreateInput.add_member(:request_id, Shapes::ShapeRef.new(shape: __string, location_name: "requestId", metadata: {"idempotencyToken"=>true}))
    CreateInput.add_member(:sources, Shapes::ShapeRef.new(shape: __listOfInputSourceRequest, location_name: "sources"))
    CreateInput.add_member(:type, Shapes::ShapeRef.new(shape: InputType, location_name: "type"))
    CreateInput.struct_class = Types::CreateInput

    CreateInputRequest.add_member(:destinations, Shapes::ShapeRef.new(shape: __listOfInputDestinationRequest, location_name: "destinations"))
    CreateInputRequest.add_member(:input_security_groups, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "inputSecurityGroups"))
    CreateInputRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    CreateInputRequest.add_member(:request_id, Shapes::ShapeRef.new(shape: __string, location_name: "requestId", metadata: {"idempotencyToken"=>true}))
    CreateInputRequest.add_member(:sources, Shapes::ShapeRef.new(shape: __listOfInputSourceRequest, location_name: "sources"))
    CreateInputRequest.add_member(:type, Shapes::ShapeRef.new(shape: InputType, location_name: "type"))
    CreateInputRequest.struct_class = Types::CreateInputRequest

    CreateInputResponse.add_member(:input, Shapes::ShapeRef.new(shape: Input, location_name: "input"))
    CreateInputResponse.struct_class = Types::CreateInputResponse

    CreateInputResultModel.add_member(:input, Shapes::ShapeRef.new(shape: Input, location_name: "input"))
    CreateInputResultModel.struct_class = Types::CreateInputResultModel

    CreateInputSecurityGroupRequest.add_member(:whitelist_rules, Shapes::ShapeRef.new(shape: __listOfInputWhitelistRuleCidr, location_name: "whitelistRules"))
    CreateInputSecurityGroupRequest.struct_class = Types::CreateInputSecurityGroupRequest

    CreateInputSecurityGroupResponse.add_member(:security_group, Shapes::ShapeRef.new(shape: InputSecurityGroup, location_name: "securityGroup"))
    CreateInputSecurityGroupResponse.struct_class = Types::CreateInputSecurityGroupResponse

    CreateInputSecurityGroupResultModel.add_member(:security_group, Shapes::ShapeRef.new(shape: InputSecurityGroup, location_name: "securityGroup"))
    CreateInputSecurityGroupResultModel.struct_class = Types::CreateInputSecurityGroupResultModel

    DeleteChannelRequest.add_member(:channel_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "channelId"))
    DeleteChannelRequest.struct_class = Types::DeleteChannelRequest

    DeleteChannelResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    DeleteChannelResponse.add_member(:destinations, Shapes::ShapeRef.new(shape: __listOfOutputDestination, location_name: "destinations"))
    DeleteChannelResponse.add_member(:egress_endpoints, Shapes::ShapeRef.new(shape: __listOfChannelEgressEndpoint, location_name: "egressEndpoints"))
    DeleteChannelResponse.add_member(:encoder_settings, Shapes::ShapeRef.new(shape: EncoderSettings, location_name: "encoderSettings"))
    DeleteChannelResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    DeleteChannelResponse.add_member(:input_attachments, Shapes::ShapeRef.new(shape: __listOfInputAttachment, location_name: "inputAttachments"))
    DeleteChannelResponse.add_member(:input_specification, Shapes::ShapeRef.new(shape: InputSpecification, location_name: "inputSpecification"))
    DeleteChannelResponse.add_member(:log_level, Shapes::ShapeRef.new(shape: LogLevel, location_name: "logLevel"))
    DeleteChannelResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    DeleteChannelResponse.add_member(:pipelines_running_count, Shapes::ShapeRef.new(shape: __integer, location_name: "pipelinesRunningCount"))
    DeleteChannelResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: __string, location_name: "roleArn"))
    DeleteChannelResponse.add_member(:state, Shapes::ShapeRef.new(shape: ChannelState, location_name: "state"))
    DeleteChannelResponse.struct_class = Types::DeleteChannelResponse

    DeleteInputRequest.add_member(:input_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "inputId"))
    DeleteInputRequest.struct_class = Types::DeleteInputRequest

    DeleteInputResponse.struct_class = Types::DeleteInputResponse

    DeleteInputSecurityGroupRequest.add_member(:input_security_group_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "inputSecurityGroupId"))
    DeleteInputSecurityGroupRequest.struct_class = Types::DeleteInputSecurityGroupRequest

    DeleteInputSecurityGroupResponse.struct_class = Types::DeleteInputSecurityGroupResponse

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
    DeleteReservationResponse.add_member(:usage_price, Shapes::ShapeRef.new(shape: __double, location_name: "usagePrice"))
    DeleteReservationResponse.struct_class = Types::DeleteReservationResponse

    DescribeChannelRequest.add_member(:channel_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "channelId"))
    DescribeChannelRequest.struct_class = Types::DescribeChannelRequest

    DescribeChannelResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    DescribeChannelResponse.add_member(:destinations, Shapes::ShapeRef.new(shape: __listOfOutputDestination, location_name: "destinations"))
    DescribeChannelResponse.add_member(:egress_endpoints, Shapes::ShapeRef.new(shape: __listOfChannelEgressEndpoint, location_name: "egressEndpoints"))
    DescribeChannelResponse.add_member(:encoder_settings, Shapes::ShapeRef.new(shape: EncoderSettings, location_name: "encoderSettings"))
    DescribeChannelResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    DescribeChannelResponse.add_member(:input_attachments, Shapes::ShapeRef.new(shape: __listOfInputAttachment, location_name: "inputAttachments"))
    DescribeChannelResponse.add_member(:input_specification, Shapes::ShapeRef.new(shape: InputSpecification, location_name: "inputSpecification"))
    DescribeChannelResponse.add_member(:log_level, Shapes::ShapeRef.new(shape: LogLevel, location_name: "logLevel"))
    DescribeChannelResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    DescribeChannelResponse.add_member(:pipelines_running_count, Shapes::ShapeRef.new(shape: __integer, location_name: "pipelinesRunningCount"))
    DescribeChannelResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: __string, location_name: "roleArn"))
    DescribeChannelResponse.add_member(:state, Shapes::ShapeRef.new(shape: ChannelState, location_name: "state"))
    DescribeChannelResponse.struct_class = Types::DescribeChannelResponse

    DescribeInputRequest.add_member(:input_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "inputId"))
    DescribeInputRequest.struct_class = Types::DescribeInputRequest

    DescribeInputResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    DescribeInputResponse.add_member(:attached_channels, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "attachedChannels"))
    DescribeInputResponse.add_member(:destinations, Shapes::ShapeRef.new(shape: __listOfInputDestination, location_name: "destinations"))
    DescribeInputResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    DescribeInputResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    DescribeInputResponse.add_member(:security_groups, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "securityGroups"))
    DescribeInputResponse.add_member(:sources, Shapes::ShapeRef.new(shape: __listOfInputSource, location_name: "sources"))
    DescribeInputResponse.add_member(:state, Shapes::ShapeRef.new(shape: InputState, location_name: "state"))
    DescribeInputResponse.add_member(:type, Shapes::ShapeRef.new(shape: InputType, location_name: "type"))
    DescribeInputResponse.struct_class = Types::DescribeInputResponse

    DescribeInputSecurityGroupRequest.add_member(:input_security_group_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "inputSecurityGroupId"))
    DescribeInputSecurityGroupRequest.struct_class = Types::DescribeInputSecurityGroupRequest

    DescribeInputSecurityGroupResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    DescribeInputSecurityGroupResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    DescribeInputSecurityGroupResponse.add_member(:inputs, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "inputs"))
    DescribeInputSecurityGroupResponse.add_member(:state, Shapes::ShapeRef.new(shape: InputSecurityGroupState, location_name: "state"))
    DescribeInputSecurityGroupResponse.add_member(:whitelist_rules, Shapes::ShapeRef.new(shape: __listOfInputWhitelistRule, location_name: "whitelistRules"))
    DescribeInputSecurityGroupResponse.struct_class = Types::DescribeInputSecurityGroupResponse

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
    EncoderSettings.add_member(:global_configuration, Shapes::ShapeRef.new(shape: GlobalConfiguration, location_name: "globalConfiguration"))
    EncoderSettings.add_member(:output_groups, Shapes::ShapeRef.new(shape: __listOfOutputGroup, required: true, location_name: "outputGroups"))
    EncoderSettings.add_member(:timecode_config, Shapes::ShapeRef.new(shape: TimecodeConfig, required: true, location_name: "timecodeConfig"))
    EncoderSettings.add_member(:video_descriptions, Shapes::ShapeRef.new(shape: __listOfVideoDescription, required: true, location_name: "videoDescriptions"))
    EncoderSettings.struct_class = Types::EncoderSettings

    FecOutputSettings.add_member(:column_depth, Shapes::ShapeRef.new(shape: __integerMin4Max20, location_name: "columnDepth"))
    FecOutputSettings.add_member(:include_fec, Shapes::ShapeRef.new(shape: FecOutputIncludeFec, location_name: "includeFec"))
    FecOutputSettings.add_member(:row_length, Shapes::ShapeRef.new(shape: __integerMin1Max20, location_name: "rowLength"))
    FecOutputSettings.struct_class = Types::FecOutputSettings

    FixedModeScheduleActionStartSettings.add_member(:time, Shapes::ShapeRef.new(shape: __string, location_name: "time"))
    FixedModeScheduleActionStartSettings.struct_class = Types::FixedModeScheduleActionStartSettings

    GlobalConfiguration.add_member(:initial_audio_gain, Shapes::ShapeRef.new(shape: __integerMinNegative60Max60, location_name: "initialAudioGain"))
    GlobalConfiguration.add_member(:input_end_action, Shapes::ShapeRef.new(shape: GlobalConfigurationInputEndAction, location_name: "inputEndAction"))
    GlobalConfiguration.add_member(:input_loss_behavior, Shapes::ShapeRef.new(shape: InputLossBehavior, location_name: "inputLossBehavior"))
    GlobalConfiguration.add_member(:output_timing_source, Shapes::ShapeRef.new(shape: GlobalConfigurationOutputTimingSource, location_name: "outputTimingSource"))
    GlobalConfiguration.add_member(:support_low_framerate_inputs, Shapes::ShapeRef.new(shape: GlobalConfigurationLowFramerateInputs, location_name: "supportLowFramerateInputs"))
    GlobalConfiguration.struct_class = Types::GlobalConfiguration

    H264Settings.add_member(:adaptive_quantization, Shapes::ShapeRef.new(shape: H264AdaptiveQuantization, location_name: "adaptiveQuantization"))
    H264Settings.add_member(:afd_signaling, Shapes::ShapeRef.new(shape: AfdSignaling, location_name: "afdSignaling"))
    H264Settings.add_member(:bitrate, Shapes::ShapeRef.new(shape: __integerMin1000, location_name: "bitrate"))
    H264Settings.add_member(:buf_fill_pct, Shapes::ShapeRef.new(shape: __integerMin0Max100, location_name: "bufFillPct"))
    H264Settings.add_member(:buf_size, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "bufSize"))
    H264Settings.add_member(:color_metadata, Shapes::ShapeRef.new(shape: H264ColorMetadata, location_name: "colorMetadata"))
    H264Settings.add_member(:entropy_encoding, Shapes::ShapeRef.new(shape: H264EntropyEncoding, location_name: "entropyEncoding"))
    H264Settings.add_member(:fixed_afd, Shapes::ShapeRef.new(shape: FixedAfd, location_name: "fixedAfd"))
    H264Settings.add_member(:flicker_aq, Shapes::ShapeRef.new(shape: H264FlickerAq, location_name: "flickerAq"))
    H264Settings.add_member(:framerate_control, Shapes::ShapeRef.new(shape: H264FramerateControl, location_name: "framerateControl"))
    H264Settings.add_member(:framerate_denominator, Shapes::ShapeRef.new(shape: __integer, location_name: "framerateDenominator"))
    H264Settings.add_member(:framerate_numerator, Shapes::ShapeRef.new(shape: __integer, location_name: "framerateNumerator"))
    H264Settings.add_member(:gop_b_reference, Shapes::ShapeRef.new(shape: H264GopBReference, location_name: "gopBReference"))
    H264Settings.add_member(:gop_closed_cadence, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "gopClosedCadence"))
    H264Settings.add_member(:gop_num_b_frames, Shapes::ShapeRef.new(shape: __integerMin0Max7, location_name: "gopNumBFrames"))
    H264Settings.add_member(:gop_size, Shapes::ShapeRef.new(shape: __doubleMin1, location_name: "gopSize"))
    H264Settings.add_member(:gop_size_units, Shapes::ShapeRef.new(shape: H264GopSizeUnits, location_name: "gopSizeUnits"))
    H264Settings.add_member(:level, Shapes::ShapeRef.new(shape: H264Level, location_name: "level"))
    H264Settings.add_member(:look_ahead_rate_control, Shapes::ShapeRef.new(shape: H264LookAheadRateControl, location_name: "lookAheadRateControl"))
    H264Settings.add_member(:max_bitrate, Shapes::ShapeRef.new(shape: __integerMin1000, location_name: "maxBitrate"))
    H264Settings.add_member(:min_i_interval, Shapes::ShapeRef.new(shape: __integerMin0Max30, location_name: "minIInterval"))
    H264Settings.add_member(:num_ref_frames, Shapes::ShapeRef.new(shape: __integerMin1Max6, location_name: "numRefFrames"))
    H264Settings.add_member(:par_control, Shapes::ShapeRef.new(shape: H264ParControl, location_name: "parControl"))
    H264Settings.add_member(:par_denominator, Shapes::ShapeRef.new(shape: __integerMin1, location_name: "parDenominator"))
    H264Settings.add_member(:par_numerator, Shapes::ShapeRef.new(shape: __integer, location_name: "parNumerator"))
    H264Settings.add_member(:profile, Shapes::ShapeRef.new(shape: H264Profile, location_name: "profile"))
    H264Settings.add_member(:rate_control_mode, Shapes::ShapeRef.new(shape: H264RateControlMode, location_name: "rateControlMode"))
    H264Settings.add_member(:scan_type, Shapes::ShapeRef.new(shape: H264ScanType, location_name: "scanType"))
    H264Settings.add_member(:scene_change_detect, Shapes::ShapeRef.new(shape: H264SceneChangeDetect, location_name: "sceneChangeDetect"))
    H264Settings.add_member(:slices, Shapes::ShapeRef.new(shape: __integerMin1Max32, location_name: "slices"))
    H264Settings.add_member(:softness, Shapes::ShapeRef.new(shape: __integerMin0Max128, location_name: "softness"))
    H264Settings.add_member(:spatial_aq, Shapes::ShapeRef.new(shape: H264SpatialAq, location_name: "spatialAq"))
    H264Settings.add_member(:syntax, Shapes::ShapeRef.new(shape: H264Syntax, location_name: "syntax"))
    H264Settings.add_member(:temporal_aq, Shapes::ShapeRef.new(shape: H264TemporalAq, location_name: "temporalAq"))
    H264Settings.add_member(:timecode_insertion, Shapes::ShapeRef.new(shape: H264TimecodeInsertionBehavior, location_name: "timecodeInsertion"))
    H264Settings.struct_class = Types::H264Settings

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
    HlsGroupSettings.add_member(:base_url_manifest, Shapes::ShapeRef.new(shape: __string, location_name: "baseUrlManifest"))
    HlsGroupSettings.add_member(:caption_language_mappings, Shapes::ShapeRef.new(shape: __listOfCaptionLanguageMapping, location_name: "captionLanguageMappings"))
    HlsGroupSettings.add_member(:caption_language_setting, Shapes::ShapeRef.new(shape: HlsCaptionLanguageSetting, location_name: "captionLanguageSetting"))
    HlsGroupSettings.add_member(:client_cache, Shapes::ShapeRef.new(shape: HlsClientCache, location_name: "clientCache"))
    HlsGroupSettings.add_member(:codec_specification, Shapes::ShapeRef.new(shape: HlsCodecSpecification, location_name: "codecSpecification"))
    HlsGroupSettings.add_member(:constant_iv, Shapes::ShapeRef.new(shape: __stringMin32Max32, location_name: "constantIv"))
    HlsGroupSettings.add_member(:destination, Shapes::ShapeRef.new(shape: OutputLocationRef, required: true, location_name: "destination"))
    HlsGroupSettings.add_member(:directory_structure, Shapes::ShapeRef.new(shape: HlsDirectoryStructure, location_name: "directoryStructure"))
    HlsGroupSettings.add_member(:encryption_type, Shapes::ShapeRef.new(shape: HlsEncryptionType, location_name: "encryptionType"))
    HlsGroupSettings.add_member(:hls_cdn_settings, Shapes::ShapeRef.new(shape: HlsCdnSettings, location_name: "hlsCdnSettings"))
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
    HlsGroupSettings.add_member(:segment_length, Shapes::ShapeRef.new(shape: __integerMin1, location_name: "segmentLength"))
    HlsGroupSettings.add_member(:segmentation_mode, Shapes::ShapeRef.new(shape: HlsSegmentationMode, location_name: "segmentationMode"))
    HlsGroupSettings.add_member(:segments_per_subdirectory, Shapes::ShapeRef.new(shape: __integerMin1, location_name: "segmentsPerSubdirectory"))
    HlsGroupSettings.add_member(:stream_inf_resolution, Shapes::ShapeRef.new(shape: HlsStreamInfResolution, location_name: "streamInfResolution"))
    HlsGroupSettings.add_member(:timed_metadata_id_3_frame, Shapes::ShapeRef.new(shape: HlsTimedMetadataId3Frame, location_name: "timedMetadataId3Frame"))
    HlsGroupSettings.add_member(:timed_metadata_id_3_period, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "timedMetadataId3Period"))
    HlsGroupSettings.add_member(:timestamp_delta_milliseconds, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "timestampDeltaMilliseconds"))
    HlsGroupSettings.add_member(:ts_file_mode, Shapes::ShapeRef.new(shape: HlsTsFileMode, location_name: "tsFileMode"))
    HlsGroupSettings.struct_class = Types::HlsGroupSettings

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

    HlsOutputSettings.add_member(:hls_settings, Shapes::ShapeRef.new(shape: HlsSettings, required: true, location_name: "hlsSettings"))
    HlsOutputSettings.add_member(:name_modifier, Shapes::ShapeRef.new(shape: __stringMin1, location_name: "nameModifier"))
    HlsOutputSettings.add_member(:segment_modifier, Shapes::ShapeRef.new(shape: __string, location_name: "segmentModifier"))
    HlsOutputSettings.struct_class = Types::HlsOutputSettings

    HlsSettings.add_member(:audio_only_hls_settings, Shapes::ShapeRef.new(shape: AudioOnlyHlsSettings, location_name: "audioOnlyHlsSettings"))
    HlsSettings.add_member(:standard_hls_settings, Shapes::ShapeRef.new(shape: StandardHlsSettings, location_name: "standardHlsSettings"))
    HlsSettings.struct_class = Types::HlsSettings

    HlsWebdavSettings.add_member(:connection_retry_interval, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "connectionRetryInterval"))
    HlsWebdavSettings.add_member(:filecache_duration, Shapes::ShapeRef.new(shape: __integerMin0Max600, location_name: "filecacheDuration"))
    HlsWebdavSettings.add_member(:http_transfer_mode, Shapes::ShapeRef.new(shape: HlsWebdavHttpTransferMode, location_name: "httpTransferMode"))
    HlsWebdavSettings.add_member(:num_retries, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "numRetries"))
    HlsWebdavSettings.add_member(:restart_delay, Shapes::ShapeRef.new(shape: __integerMin0Max15, location_name: "restartDelay"))
    HlsWebdavSettings.struct_class = Types::HlsWebdavSettings

    Input.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    Input.add_member(:attached_channels, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "attachedChannels"))
    Input.add_member(:destinations, Shapes::ShapeRef.new(shape: __listOfInputDestination, location_name: "destinations"))
    Input.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    Input.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    Input.add_member(:security_groups, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "securityGroups"))
    Input.add_member(:sources, Shapes::ShapeRef.new(shape: __listOfInputSource, location_name: "sources"))
    Input.add_member(:state, Shapes::ShapeRef.new(shape: InputState, location_name: "state"))
    Input.add_member(:type, Shapes::ShapeRef.new(shape: InputType, location_name: "type"))
    Input.struct_class = Types::Input

    InputAttachment.add_member(:input_id, Shapes::ShapeRef.new(shape: __string, location_name: "inputId"))
    InputAttachment.add_member(:input_settings, Shapes::ShapeRef.new(shape: InputSettings, location_name: "inputSettings"))
    InputAttachment.struct_class = Types::InputAttachment

    InputChannelLevel.add_member(:gain, Shapes::ShapeRef.new(shape: __integerMinNegative60Max6, required: true, location_name: "gain"))
    InputChannelLevel.add_member(:input_channel, Shapes::ShapeRef.new(shape: __integerMin0Max15, required: true, location_name: "inputChannel"))
    InputChannelLevel.struct_class = Types::InputChannelLevel

    InputDestination.add_member(:ip, Shapes::ShapeRef.new(shape: __string, location_name: "ip"))
    InputDestination.add_member(:port, Shapes::ShapeRef.new(shape: __string, location_name: "port"))
    InputDestination.add_member(:url, Shapes::ShapeRef.new(shape: __string, location_name: "url"))
    InputDestination.struct_class = Types::InputDestination

    InputDestinationRequest.add_member(:stream_name, Shapes::ShapeRef.new(shape: __string, location_name: "streamName"))
    InputDestinationRequest.struct_class = Types::InputDestinationRequest

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

    InputSecurityGroup.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    InputSecurityGroup.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    InputSecurityGroup.add_member(:inputs, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "inputs"))
    InputSecurityGroup.add_member(:state, Shapes::ShapeRef.new(shape: InputSecurityGroupState, location_name: "state"))
    InputSecurityGroup.add_member(:whitelist_rules, Shapes::ShapeRef.new(shape: __listOfInputWhitelistRule, location_name: "whitelistRules"))
    InputSecurityGroup.struct_class = Types::InputSecurityGroup

    InputSecurityGroupWhitelistRequest.add_member(:whitelist_rules, Shapes::ShapeRef.new(shape: __listOfInputWhitelistRuleCidr, location_name: "whitelistRules"))
    InputSecurityGroupWhitelistRequest.struct_class = Types::InputSecurityGroupWhitelistRequest

    InputSettings.add_member(:audio_selectors, Shapes::ShapeRef.new(shape: __listOfAudioSelector, location_name: "audioSelectors"))
    InputSettings.add_member(:caption_selectors, Shapes::ShapeRef.new(shape: __listOfCaptionSelector, location_name: "captionSelectors"))
    InputSettings.add_member(:deblock_filter, Shapes::ShapeRef.new(shape: InputDeblockFilter, location_name: "deblockFilter"))
    InputSettings.add_member(:denoise_filter, Shapes::ShapeRef.new(shape: InputDenoiseFilter, location_name: "denoiseFilter"))
    InputSettings.add_member(:filter_strength, Shapes::ShapeRef.new(shape: __integerMin1Max5, location_name: "filterStrength"))
    InputSettings.add_member(:input_filter, Shapes::ShapeRef.new(shape: InputFilter, location_name: "inputFilter"))
    InputSettings.add_member(:network_input_settings, Shapes::ShapeRef.new(shape: NetworkInputSettings, location_name: "networkInputSettings"))
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

    InputWhitelistRule.add_member(:cidr, Shapes::ShapeRef.new(shape: __string, location_name: "cidr"))
    InputWhitelistRule.struct_class = Types::InputWhitelistRule

    InputWhitelistRuleCidr.add_member(:cidr, Shapes::ShapeRef.new(shape: __string, location_name: "cidr"))
    InputWhitelistRuleCidr.struct_class = Types::InputWhitelistRuleCidr

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

    ListOfferingsRequest.add_member(:channel_configuration, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "channelConfiguration"))
    ListOfferingsRequest.add_member(:codec, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "codec"))
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

    Mp2Settings.add_member(:bitrate, Shapes::ShapeRef.new(shape: __double, location_name: "bitrate"))
    Mp2Settings.add_member(:coding_mode, Shapes::ShapeRef.new(shape: Mp2CodingMode, location_name: "codingMode"))
    Mp2Settings.add_member(:sample_rate, Shapes::ShapeRef.new(shape: __double, location_name: "sampleRate"))
    Mp2Settings.struct_class = Types::Mp2Settings

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

    MsSmoothOutputSettings.add_member(:name_modifier, Shapes::ShapeRef.new(shape: __string, location_name: "nameModifier"))
    MsSmoothOutputSettings.struct_class = Types::MsSmoothOutputSettings

    NetworkInputSettings.add_member(:hls_input_settings, Shapes::ShapeRef.new(shape: HlsInputSettings, location_name: "hlsInputSettings"))
    NetworkInputSettings.add_member(:server_validation, Shapes::ShapeRef.new(shape: NetworkInputServerValidation, location_name: "serverValidation"))
    NetworkInputSettings.struct_class = Types::NetworkInputSettings

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
    OutputGroupSettings.add_member(:hls_group_settings, Shapes::ShapeRef.new(shape: HlsGroupSettings, location_name: "hlsGroupSettings"))
    OutputGroupSettings.add_member(:ms_smooth_group_settings, Shapes::ShapeRef.new(shape: MsSmoothGroupSettings, location_name: "msSmoothGroupSettings"))
    OutputGroupSettings.add_member(:rtmp_group_settings, Shapes::ShapeRef.new(shape: RtmpGroupSettings, location_name: "rtmpGroupSettings"))
    OutputGroupSettings.add_member(:udp_group_settings, Shapes::ShapeRef.new(shape: UdpGroupSettings, location_name: "udpGroupSettings"))
    OutputGroupSettings.struct_class = Types::OutputGroupSettings

    OutputLocationRef.add_member(:destination_ref_id, Shapes::ShapeRef.new(shape: __string, location_name: "destinationRefId"))
    OutputLocationRef.struct_class = Types::OutputLocationRef

    OutputSettings.add_member(:archive_output_settings, Shapes::ShapeRef.new(shape: ArchiveOutputSettings, location_name: "archiveOutputSettings"))
    OutputSettings.add_member(:hls_output_settings, Shapes::ShapeRef.new(shape: HlsOutputSettings, location_name: "hlsOutputSettings"))
    OutputSettings.add_member(:ms_smooth_output_settings, Shapes::ShapeRef.new(shape: MsSmoothOutputSettings, location_name: "msSmoothOutputSettings"))
    OutputSettings.add_member(:rtmp_output_settings, Shapes::ShapeRef.new(shape: RtmpOutputSettings, location_name: "rtmpOutputSettings"))
    OutputSettings.add_member(:udp_output_settings, Shapes::ShapeRef.new(shape: UdpOutputSettings, location_name: "udpOutputSettings"))
    OutputSettings.struct_class = Types::OutputSettings

    PassThroughSettings.struct_class = Types::PassThroughSettings

    PurchaseOffering.add_member(:count, Shapes::ShapeRef.new(shape: __integerMin1, location_name: "count"))
    PurchaseOffering.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    PurchaseOffering.add_member(:request_id, Shapes::ShapeRef.new(shape: __string, location_name: "requestId", metadata: {"idempotencyToken"=>true}))
    PurchaseOffering.struct_class = Types::PurchaseOffering

    PurchaseOfferingRequest.add_member(:count, Shapes::ShapeRef.new(shape: __integerMin1, location_name: "count"))
    PurchaseOfferingRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    PurchaseOfferingRequest.add_member(:offering_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "offeringId"))
    PurchaseOfferingRequest.add_member(:request_id, Shapes::ShapeRef.new(shape: __string, location_name: "requestId", metadata: {"idempotencyToken"=>true}))
    PurchaseOfferingRequest.struct_class = Types::PurchaseOfferingRequest

    PurchaseOfferingResponse.add_member(:reservation, Shapes::ShapeRef.new(shape: Reservation, location_name: "reservation"))
    PurchaseOfferingResponse.struct_class = Types::PurchaseOfferingResponse

    PurchaseOfferingResultModel.add_member(:reservation, Shapes::ShapeRef.new(shape: Reservation, location_name: "reservation"))
    PurchaseOfferingResultModel.struct_class = Types::PurchaseOfferingResultModel

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
    Reservation.add_member(:usage_price, Shapes::ShapeRef.new(shape: __double, location_name: "usagePrice"))
    Reservation.struct_class = Types::Reservation

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

    ScheduleActionSettings.add_member(:scte_35_return_to_network_settings, Shapes::ShapeRef.new(shape: Scte35ReturnToNetworkScheduleActionSettings, location_name: "scte35ReturnToNetworkSettings"))
    ScheduleActionSettings.add_member(:scte_35_splice_insert_settings, Shapes::ShapeRef.new(shape: Scte35SpliceInsertScheduleActionSettings, location_name: "scte35SpliceInsertSettings"))
    ScheduleActionSettings.add_member(:scte_35_time_signal_settings, Shapes::ShapeRef.new(shape: Scte35TimeSignalScheduleActionSettings, location_name: "scte35TimeSignalSettings"))
    ScheduleActionSettings.add_member(:static_image_activate_settings, Shapes::ShapeRef.new(shape: StaticImageActivateScheduleActionSettings, location_name: "staticImageActivateSettings"))
    ScheduleActionSettings.add_member(:static_image_deactivate_settings, Shapes::ShapeRef.new(shape: StaticImageDeactivateScheduleActionSettings, location_name: "staticImageDeactivateSettings"))
    ScheduleActionSettings.struct_class = Types::ScheduleActionSettings

    ScheduleActionStartSettings.add_member(:fixed_mode_schedule_action_start_settings, Shapes::ShapeRef.new(shape: FixedModeScheduleActionStartSettings, location_name: "fixedModeScheduleActionStartSettings"))
    ScheduleActionStartSettings.struct_class = Types::ScheduleActionStartSettings

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

    Scte35ReturnToNetworkScheduleActionSettings.add_member(:splice_event_id, Shapes::ShapeRef.new(shape: __integerMin0Max4294967295, required: true, location_name: "spliceEventId"))
    Scte35ReturnToNetworkScheduleActionSettings.struct_class = Types::Scte35ReturnToNetworkScheduleActionSettings

    Scte35SegmentationDescriptor.add_member(:delivery_restrictions, Shapes::ShapeRef.new(shape: Scte35DeliveryRestrictions, location_name: "deliveryRestrictions"))
    Scte35SegmentationDescriptor.add_member(:segment_num, Shapes::ShapeRef.new(shape: __integerMin0Max255, location_name: "segmentNum"))
    Scte35SegmentationDescriptor.add_member(:segmentation_cancel_indicator, Shapes::ShapeRef.new(shape: Scte35SegmentationCancelIndicator, required: true, location_name: "segmentationCancelIndicator"))
    Scte35SegmentationDescriptor.add_member(:segmentation_duration, Shapes::ShapeRef.new(shape: __integerMin0Max1099511627775, location_name: "segmentationDuration"))
    Scte35SegmentationDescriptor.add_member(:segmentation_event_id, Shapes::ShapeRef.new(shape: __integerMin0Max4294967295, required: true, location_name: "segmentationEventId"))
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

    Scte35SpliceInsertScheduleActionSettings.add_member(:duration, Shapes::ShapeRef.new(shape: __integerMin0Max8589934591, location_name: "duration"))
    Scte35SpliceInsertScheduleActionSettings.add_member(:splice_event_id, Shapes::ShapeRef.new(shape: __integerMin0Max4294967295, required: true, location_name: "spliceEventId"))
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
    StartChannelResponse.add_member(:destinations, Shapes::ShapeRef.new(shape: __listOfOutputDestination, location_name: "destinations"))
    StartChannelResponse.add_member(:egress_endpoints, Shapes::ShapeRef.new(shape: __listOfChannelEgressEndpoint, location_name: "egressEndpoints"))
    StartChannelResponse.add_member(:encoder_settings, Shapes::ShapeRef.new(shape: EncoderSettings, location_name: "encoderSettings"))
    StartChannelResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    StartChannelResponse.add_member(:input_attachments, Shapes::ShapeRef.new(shape: __listOfInputAttachment, location_name: "inputAttachments"))
    StartChannelResponse.add_member(:input_specification, Shapes::ShapeRef.new(shape: InputSpecification, location_name: "inputSpecification"))
    StartChannelResponse.add_member(:log_level, Shapes::ShapeRef.new(shape: LogLevel, location_name: "logLevel"))
    StartChannelResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    StartChannelResponse.add_member(:pipelines_running_count, Shapes::ShapeRef.new(shape: __integer, location_name: "pipelinesRunningCount"))
    StartChannelResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: __string, location_name: "roleArn"))
    StartChannelResponse.add_member(:state, Shapes::ShapeRef.new(shape: ChannelState, location_name: "state"))
    StartChannelResponse.struct_class = Types::StartChannelResponse

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

    StaticKeySettings.add_member(:key_provider_server, Shapes::ShapeRef.new(shape: InputLocation, required: true, location_name: "keyProviderServer"))
    StaticKeySettings.add_member(:static_key_value, Shapes::ShapeRef.new(shape: __stringMin32Max32, required: true, location_name: "staticKeyValue"))
    StaticKeySettings.struct_class = Types::StaticKeySettings

    StopChannelRequest.add_member(:channel_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "channelId"))
    StopChannelRequest.struct_class = Types::StopChannelRequest

    StopChannelResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    StopChannelResponse.add_member(:destinations, Shapes::ShapeRef.new(shape: __listOfOutputDestination, location_name: "destinations"))
    StopChannelResponse.add_member(:egress_endpoints, Shapes::ShapeRef.new(shape: __listOfChannelEgressEndpoint, location_name: "egressEndpoints"))
    StopChannelResponse.add_member(:encoder_settings, Shapes::ShapeRef.new(shape: EncoderSettings, location_name: "encoderSettings"))
    StopChannelResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    StopChannelResponse.add_member(:input_attachments, Shapes::ShapeRef.new(shape: __listOfInputAttachment, location_name: "inputAttachments"))
    StopChannelResponse.add_member(:input_specification, Shapes::ShapeRef.new(shape: InputSpecification, location_name: "inputSpecification"))
    StopChannelResponse.add_member(:log_level, Shapes::ShapeRef.new(shape: LogLevel, location_name: "logLevel"))
    StopChannelResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    StopChannelResponse.add_member(:pipelines_running_count, Shapes::ShapeRef.new(shape: __integer, location_name: "pipelinesRunningCount"))
    StopChannelResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: __string, location_name: "roleArn"))
    StopChannelResponse.add_member(:state, Shapes::ShapeRef.new(shape: ChannelState, location_name: "state"))
    StopChannelResponse.struct_class = Types::StopChannelResponse

    TeletextDestinationSettings.struct_class = Types::TeletextDestinationSettings

    TeletextSourceSettings.add_member(:page_number, Shapes::ShapeRef.new(shape: __string, location_name: "pageNumber"))
    TeletextSourceSettings.struct_class = Types::TeletextSourceSettings

    TimecodeConfig.add_member(:source, Shapes::ShapeRef.new(shape: TimecodeConfigSource, required: true, location_name: "source"))
    TimecodeConfig.add_member(:sync_threshold, Shapes::ShapeRef.new(shape: __integerMin1Max1000000, location_name: "syncThreshold"))
    TimecodeConfig.struct_class = Types::TimecodeConfig

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

    UpdateChannel.add_member(:destinations, Shapes::ShapeRef.new(shape: __listOfOutputDestination, location_name: "destinations"))
    UpdateChannel.add_member(:encoder_settings, Shapes::ShapeRef.new(shape: EncoderSettings, location_name: "encoderSettings"))
    UpdateChannel.add_member(:input_attachments, Shapes::ShapeRef.new(shape: __listOfInputAttachment, location_name: "inputAttachments"))
    UpdateChannel.add_member(:input_specification, Shapes::ShapeRef.new(shape: InputSpecification, location_name: "inputSpecification"))
    UpdateChannel.add_member(:log_level, Shapes::ShapeRef.new(shape: LogLevel, location_name: "logLevel"))
    UpdateChannel.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    UpdateChannel.add_member(:role_arn, Shapes::ShapeRef.new(shape: __string, location_name: "roleArn"))
    UpdateChannel.struct_class = Types::UpdateChannel

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
    UpdateInput.add_member(:input_security_groups, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "inputSecurityGroups"))
    UpdateInput.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    UpdateInput.add_member(:sources, Shapes::ShapeRef.new(shape: __listOfInputSourceRequest, location_name: "sources"))
    UpdateInput.struct_class = Types::UpdateInput

    UpdateInputRequest.add_member(:destinations, Shapes::ShapeRef.new(shape: __listOfInputDestinationRequest, location_name: "destinations"))
    UpdateInputRequest.add_member(:input_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "inputId"))
    UpdateInputRequest.add_member(:input_security_groups, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "inputSecurityGroups"))
    UpdateInputRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    UpdateInputRequest.add_member(:sources, Shapes::ShapeRef.new(shape: __listOfInputSourceRequest, location_name: "sources"))
    UpdateInputRequest.struct_class = Types::UpdateInputRequest

    UpdateInputResponse.add_member(:input, Shapes::ShapeRef.new(shape: Input, location_name: "input"))
    UpdateInputResponse.struct_class = Types::UpdateInputResponse

    UpdateInputResultModel.add_member(:input, Shapes::ShapeRef.new(shape: Input, location_name: "input"))
    UpdateInputResultModel.struct_class = Types::UpdateInputResultModel

    UpdateInputSecurityGroupRequest.add_member(:input_security_group_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "inputSecurityGroupId"))
    UpdateInputSecurityGroupRequest.add_member(:whitelist_rules, Shapes::ShapeRef.new(shape: __listOfInputWhitelistRuleCidr, location_name: "whitelistRules"))
    UpdateInputSecurityGroupRequest.struct_class = Types::UpdateInputSecurityGroupRequest

    UpdateInputSecurityGroupResponse.add_member(:security_group, Shapes::ShapeRef.new(shape: InputSecurityGroup, location_name: "securityGroup"))
    UpdateInputSecurityGroupResponse.struct_class = Types::UpdateInputSecurityGroupResponse

    UpdateInputSecurityGroupResultModel.add_member(:security_group, Shapes::ShapeRef.new(shape: InputSecurityGroup, location_name: "securityGroup"))
    UpdateInputSecurityGroupResultModel.struct_class = Types::UpdateInputSecurityGroupResultModel

    ValidationError.add_member(:element_path, Shapes::ShapeRef.new(shape: __string, location_name: "elementPath"))
    ValidationError.add_member(:error_message, Shapes::ShapeRef.new(shape: __string, location_name: "errorMessage"))
    ValidationError.struct_class = Types::ValidationError

    VideoCodecSettings.add_member(:h264_settings, Shapes::ShapeRef.new(shape: H264Settings, location_name: "h264Settings"))
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

    WebvttDestinationSettings.struct_class = Types::WebvttDestinationSettings

    __listOfAudioChannelMapping.member = Shapes::ShapeRef.new(shape: AudioChannelMapping)

    __listOfAudioDescription.member = Shapes::ShapeRef.new(shape: AudioDescription)

    __listOfAudioSelector.member = Shapes::ShapeRef.new(shape: AudioSelector)

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

    __listOfInputSecurityGroup.member = Shapes::ShapeRef.new(shape: InputSecurityGroup)

    __listOfInputSource.member = Shapes::ShapeRef.new(shape: InputSource)

    __listOfInputSourceRequest.member = Shapes::ShapeRef.new(shape: InputSourceRequest)

    __listOfInputWhitelistRule.member = Shapes::ShapeRef.new(shape: InputWhitelistRule)

    __listOfInputWhitelistRuleCidr.member = Shapes::ShapeRef.new(shape: InputWhitelistRuleCidr)

    __listOfOffering.member = Shapes::ShapeRef.new(shape: Offering)

    __listOfOutput.member = Shapes::ShapeRef.new(shape: Output)

    __listOfOutputDestination.member = Shapes::ShapeRef.new(shape: OutputDestination)

    __listOfOutputDestinationSettings.member = Shapes::ShapeRef.new(shape: OutputDestinationSettings)

    __listOfOutputGroup.member = Shapes::ShapeRef.new(shape: OutputGroup)

    __listOfReservation.member = Shapes::ShapeRef.new(shape: Reservation)

    __listOfScheduleAction.member = Shapes::ShapeRef.new(shape: ScheduleAction)

    __listOfScte35Descriptor.member = Shapes::ShapeRef.new(shape: Scte35Descriptor)

    __listOfValidationError.member = Shapes::ShapeRef.new(shape: ValidationError)

    __listOfVideoDescription.member = Shapes::ShapeRef.new(shape: VideoDescription)

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
    end

  end
end
