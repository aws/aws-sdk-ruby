# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::MediaConvert
  # @api private
  module ClientApi

    include Seahorse::Model

    AacAudioDescriptionBroadcasterMix = Shapes::StringShape.new(name: 'AacAudioDescriptionBroadcasterMix')
    AacCodecProfile = Shapes::StringShape.new(name: 'AacCodecProfile')
    AacCodingMode = Shapes::StringShape.new(name: 'AacCodingMode')
    AacRateControlMode = Shapes::StringShape.new(name: 'AacRateControlMode')
    AacRawFormat = Shapes::StringShape.new(name: 'AacRawFormat')
    AacSettings = Shapes::StructureShape.new(name: 'AacSettings')
    AacSpecification = Shapes::StringShape.new(name: 'AacSpecification')
    AacVbrQuality = Shapes::StringShape.new(name: 'AacVbrQuality')
    Ac3BitstreamMode = Shapes::StringShape.new(name: 'Ac3BitstreamMode')
    Ac3CodingMode = Shapes::StringShape.new(name: 'Ac3CodingMode')
    Ac3DynamicRangeCompressionProfile = Shapes::StringShape.new(name: 'Ac3DynamicRangeCompressionProfile')
    Ac3LfeFilter = Shapes::StringShape.new(name: 'Ac3LfeFilter')
    Ac3MetadataControl = Shapes::StringShape.new(name: 'Ac3MetadataControl')
    Ac3Settings = Shapes::StructureShape.new(name: 'Ac3Settings')
    AfdSignaling = Shapes::StringShape.new(name: 'AfdSignaling')
    AiffSettings = Shapes::StructureShape.new(name: 'AiffSettings')
    AncillarySourceSettings = Shapes::StructureShape.new(name: 'AncillarySourceSettings')
    AntiAlias = Shapes::StringShape.new(name: 'AntiAlias')
    AudioCodec = Shapes::StringShape.new(name: 'AudioCodec')
    AudioCodecSettings = Shapes::StructureShape.new(name: 'AudioCodecSettings')
    AudioDefaultSelection = Shapes::StringShape.new(name: 'AudioDefaultSelection')
    AudioDescription = Shapes::StructureShape.new(name: 'AudioDescription')
    AudioLanguageCodeControl = Shapes::StringShape.new(name: 'AudioLanguageCodeControl')
    AudioNormalizationAlgorithm = Shapes::StringShape.new(name: 'AudioNormalizationAlgorithm')
    AudioNormalizationAlgorithmControl = Shapes::StringShape.new(name: 'AudioNormalizationAlgorithmControl')
    AudioNormalizationLoudnessLogging = Shapes::StringShape.new(name: 'AudioNormalizationLoudnessLogging')
    AudioNormalizationPeakCalculation = Shapes::StringShape.new(name: 'AudioNormalizationPeakCalculation')
    AudioNormalizationSettings = Shapes::StructureShape.new(name: 'AudioNormalizationSettings')
    AudioSelector = Shapes::StructureShape.new(name: 'AudioSelector')
    AudioSelectorGroup = Shapes::StructureShape.new(name: 'AudioSelectorGroup')
    AudioSelectorType = Shapes::StringShape.new(name: 'AudioSelectorType')
    AudioTypeControl = Shapes::StringShape.new(name: 'AudioTypeControl')
    AvailBlanking = Shapes::StructureShape.new(name: 'AvailBlanking')
    BadRequestException = Shapes::StructureShape.new(name: 'BadRequestException')
    BurninDestinationSettings = Shapes::StructureShape.new(name: 'BurninDestinationSettings')
    BurninSubtitleAlignment = Shapes::StringShape.new(name: 'BurninSubtitleAlignment')
    BurninSubtitleBackgroundColor = Shapes::StringShape.new(name: 'BurninSubtitleBackgroundColor')
    BurninSubtitleFontColor = Shapes::StringShape.new(name: 'BurninSubtitleFontColor')
    BurninSubtitleOutlineColor = Shapes::StringShape.new(name: 'BurninSubtitleOutlineColor')
    BurninSubtitleShadowColor = Shapes::StringShape.new(name: 'BurninSubtitleShadowColor')
    BurninSubtitleTeletextSpacing = Shapes::StringShape.new(name: 'BurninSubtitleTeletextSpacing')
    CancelJobRequest = Shapes::StructureShape.new(name: 'CancelJobRequest')
    CancelJobResponse = Shapes::StructureShape.new(name: 'CancelJobResponse')
    CaptionDescription = Shapes::StructureShape.new(name: 'CaptionDescription')
    CaptionDescriptionPreset = Shapes::StructureShape.new(name: 'CaptionDescriptionPreset')
    CaptionDestinationSettings = Shapes::StructureShape.new(name: 'CaptionDestinationSettings')
    CaptionDestinationType = Shapes::StringShape.new(name: 'CaptionDestinationType')
    CaptionSelector = Shapes::StructureShape.new(name: 'CaptionSelector')
    CaptionSourceSettings = Shapes::StructureShape.new(name: 'CaptionSourceSettings')
    CaptionSourceType = Shapes::StringShape.new(name: 'CaptionSourceType')
    ChannelMapping = Shapes::StructureShape.new(name: 'ChannelMapping')
    ColorCorrector = Shapes::StructureShape.new(name: 'ColorCorrector')
    ColorMetadata = Shapes::StringShape.new(name: 'ColorMetadata')
    ColorSpace = Shapes::StringShape.new(name: 'ColorSpace')
    ColorSpaceConversion = Shapes::StringShape.new(name: 'ColorSpaceConversion')
    ColorSpaceUsage = Shapes::StringShape.new(name: 'ColorSpaceUsage')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ContainerSettings = Shapes::StructureShape.new(name: 'ContainerSettings')
    ContainerType = Shapes::StringShape.new(name: 'ContainerType')
    CreateJobRequest = Shapes::StructureShape.new(name: 'CreateJobRequest')
    CreateJobResponse = Shapes::StructureShape.new(name: 'CreateJobResponse')
    CreateJobTemplateRequest = Shapes::StructureShape.new(name: 'CreateJobTemplateRequest')
    CreateJobTemplateResponse = Shapes::StructureShape.new(name: 'CreateJobTemplateResponse')
    CreatePresetRequest = Shapes::StructureShape.new(name: 'CreatePresetRequest')
    CreatePresetResponse = Shapes::StructureShape.new(name: 'CreatePresetResponse')
    CreateQueueRequest = Shapes::StructureShape.new(name: 'CreateQueueRequest')
    CreateQueueResponse = Shapes::StructureShape.new(name: 'CreateQueueResponse')
    DashIsoEncryptionSettings = Shapes::StructureShape.new(name: 'DashIsoEncryptionSettings')
    DashIsoGroupSettings = Shapes::StructureShape.new(name: 'DashIsoGroupSettings')
    DashIsoHbbtvCompliance = Shapes::StringShape.new(name: 'DashIsoHbbtvCompliance')
    DashIsoSegmentControl = Shapes::StringShape.new(name: 'DashIsoSegmentControl')
    DeinterlaceAlgorithm = Shapes::StringShape.new(name: 'DeinterlaceAlgorithm')
    Deinterlacer = Shapes::StructureShape.new(name: 'Deinterlacer')
    DeinterlacerControl = Shapes::StringShape.new(name: 'DeinterlacerControl')
    DeinterlacerMode = Shapes::StringShape.new(name: 'DeinterlacerMode')
    DeleteJobTemplateRequest = Shapes::StructureShape.new(name: 'DeleteJobTemplateRequest')
    DeleteJobTemplateResponse = Shapes::StructureShape.new(name: 'DeleteJobTemplateResponse')
    DeletePresetRequest = Shapes::StructureShape.new(name: 'DeletePresetRequest')
    DeletePresetResponse = Shapes::StructureShape.new(name: 'DeletePresetResponse')
    DeleteQueueRequest = Shapes::StructureShape.new(name: 'DeleteQueueRequest')
    DeleteQueueResponse = Shapes::StructureShape.new(name: 'DeleteQueueResponse')
    DescribeEndpointsRequest = Shapes::StructureShape.new(name: 'DescribeEndpointsRequest')
    DescribeEndpointsResponse = Shapes::StructureShape.new(name: 'DescribeEndpointsResponse')
    DropFrameTimecode = Shapes::StringShape.new(name: 'DropFrameTimecode')
    DvbNitSettings = Shapes::StructureShape.new(name: 'DvbNitSettings')
    DvbSdtSettings = Shapes::StructureShape.new(name: 'DvbSdtSettings')
    DvbSubDestinationSettings = Shapes::StructureShape.new(name: 'DvbSubDestinationSettings')
    DvbSubSourceSettings = Shapes::StructureShape.new(name: 'DvbSubSourceSettings')
    DvbSubtitleAlignment = Shapes::StringShape.new(name: 'DvbSubtitleAlignment')
    DvbSubtitleBackgroundColor = Shapes::StringShape.new(name: 'DvbSubtitleBackgroundColor')
    DvbSubtitleFontColor = Shapes::StringShape.new(name: 'DvbSubtitleFontColor')
    DvbSubtitleOutlineColor = Shapes::StringShape.new(name: 'DvbSubtitleOutlineColor')
    DvbSubtitleShadowColor = Shapes::StringShape.new(name: 'DvbSubtitleShadowColor')
    DvbSubtitleTeletextSpacing = Shapes::StringShape.new(name: 'DvbSubtitleTeletextSpacing')
    DvbTdtSettings = Shapes::StructureShape.new(name: 'DvbTdtSettings')
    Eac3AttenuationControl = Shapes::StringShape.new(name: 'Eac3AttenuationControl')
    Eac3BitstreamMode = Shapes::StringShape.new(name: 'Eac3BitstreamMode')
    Eac3CodingMode = Shapes::StringShape.new(name: 'Eac3CodingMode')
    Eac3DcFilter = Shapes::StringShape.new(name: 'Eac3DcFilter')
    Eac3DynamicRangeCompressionLine = Shapes::StringShape.new(name: 'Eac3DynamicRangeCompressionLine')
    Eac3DynamicRangeCompressionRf = Shapes::StringShape.new(name: 'Eac3DynamicRangeCompressionRf')
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
    EmbeddedSourceSettings = Shapes::StructureShape.new(name: 'EmbeddedSourceSettings')
    Endpoint = Shapes::StructureShape.new(name: 'Endpoint')
    ExceptionBody = Shapes::StructureShape.new(name: 'ExceptionBody')
    F4vMoovPlacement = Shapes::StringShape.new(name: 'F4vMoovPlacement')
    F4vSettings = Shapes::StructureShape.new(name: 'F4vSettings')
    FileGroupSettings = Shapes::StructureShape.new(name: 'FileGroupSettings')
    FileSourceConvert608To708 = Shapes::StringShape.new(name: 'FileSourceConvert608To708')
    FileSourceSettings = Shapes::StructureShape.new(name: 'FileSourceSettings')
    ForbiddenException = Shapes::StructureShape.new(name: 'ForbiddenException')
    FrameCaptureSettings = Shapes::StructureShape.new(name: 'FrameCaptureSettings')
    GetJobRequest = Shapes::StructureShape.new(name: 'GetJobRequest')
    GetJobResponse = Shapes::StructureShape.new(name: 'GetJobResponse')
    GetJobTemplateRequest = Shapes::StructureShape.new(name: 'GetJobTemplateRequest')
    GetJobTemplateResponse = Shapes::StructureShape.new(name: 'GetJobTemplateResponse')
    GetPresetRequest = Shapes::StructureShape.new(name: 'GetPresetRequest')
    GetPresetResponse = Shapes::StructureShape.new(name: 'GetPresetResponse')
    GetQueueRequest = Shapes::StructureShape.new(name: 'GetQueueRequest')
    GetQueueResponse = Shapes::StructureShape.new(name: 'GetQueueResponse')
    H264AdaptiveQuantization = Shapes::StringShape.new(name: 'H264AdaptiveQuantization')
    H264CodecLevel = Shapes::StringShape.new(name: 'H264CodecLevel')
    H264CodecProfile = Shapes::StringShape.new(name: 'H264CodecProfile')
    H264EntropyEncoding = Shapes::StringShape.new(name: 'H264EntropyEncoding')
    H264FieldEncoding = Shapes::StringShape.new(name: 'H264FieldEncoding')
    H264FlickerAdaptiveQuantization = Shapes::StringShape.new(name: 'H264FlickerAdaptiveQuantization')
    H264FramerateControl = Shapes::StringShape.new(name: 'H264FramerateControl')
    H264FramerateConversionAlgorithm = Shapes::StringShape.new(name: 'H264FramerateConversionAlgorithm')
    H264GopBReference = Shapes::StringShape.new(name: 'H264GopBReference')
    H264GopSizeUnits = Shapes::StringShape.new(name: 'H264GopSizeUnits')
    H264InterlaceMode = Shapes::StringShape.new(name: 'H264InterlaceMode')
    H264ParControl = Shapes::StringShape.new(name: 'H264ParControl')
    H264QualityTuningLevel = Shapes::StringShape.new(name: 'H264QualityTuningLevel')
    H264RateControlMode = Shapes::StringShape.new(name: 'H264RateControlMode')
    H264RepeatPps = Shapes::StringShape.new(name: 'H264RepeatPps')
    H264SceneChangeDetect = Shapes::StringShape.new(name: 'H264SceneChangeDetect')
    H264Settings = Shapes::StructureShape.new(name: 'H264Settings')
    H264SlowPal = Shapes::StringShape.new(name: 'H264SlowPal')
    H264SpatialAdaptiveQuantization = Shapes::StringShape.new(name: 'H264SpatialAdaptiveQuantization')
    H264Syntax = Shapes::StringShape.new(name: 'H264Syntax')
    H264Telecine = Shapes::StringShape.new(name: 'H264Telecine')
    H264TemporalAdaptiveQuantization = Shapes::StringShape.new(name: 'H264TemporalAdaptiveQuantization')
    H264UnregisteredSeiTimecode = Shapes::StringShape.new(name: 'H264UnregisteredSeiTimecode')
    H265AdaptiveQuantization = Shapes::StringShape.new(name: 'H265AdaptiveQuantization')
    H265AlternateTransferFunctionSei = Shapes::StringShape.new(name: 'H265AlternateTransferFunctionSei')
    H265CodecLevel = Shapes::StringShape.new(name: 'H265CodecLevel')
    H265CodecProfile = Shapes::StringShape.new(name: 'H265CodecProfile')
    H265FlickerAdaptiveQuantization = Shapes::StringShape.new(name: 'H265FlickerAdaptiveQuantization')
    H265FramerateControl = Shapes::StringShape.new(name: 'H265FramerateControl')
    H265FramerateConversionAlgorithm = Shapes::StringShape.new(name: 'H265FramerateConversionAlgorithm')
    H265GopBReference = Shapes::StringShape.new(name: 'H265GopBReference')
    H265GopSizeUnits = Shapes::StringShape.new(name: 'H265GopSizeUnits')
    H265InterlaceMode = Shapes::StringShape.new(name: 'H265InterlaceMode')
    H265ParControl = Shapes::StringShape.new(name: 'H265ParControl')
    H265QualityTuningLevel = Shapes::StringShape.new(name: 'H265QualityTuningLevel')
    H265RateControlMode = Shapes::StringShape.new(name: 'H265RateControlMode')
    H265SampleAdaptiveOffsetFilterMode = Shapes::StringShape.new(name: 'H265SampleAdaptiveOffsetFilterMode')
    H265SceneChangeDetect = Shapes::StringShape.new(name: 'H265SceneChangeDetect')
    H265Settings = Shapes::StructureShape.new(name: 'H265Settings')
    H265SlowPal = Shapes::StringShape.new(name: 'H265SlowPal')
    H265SpatialAdaptiveQuantization = Shapes::StringShape.new(name: 'H265SpatialAdaptiveQuantization')
    H265Telecine = Shapes::StringShape.new(name: 'H265Telecine')
    H265TemporalAdaptiveQuantization = Shapes::StringShape.new(name: 'H265TemporalAdaptiveQuantization')
    H265TemporalIds = Shapes::StringShape.new(name: 'H265TemporalIds')
    H265Tiles = Shapes::StringShape.new(name: 'H265Tiles')
    H265UnregisteredSeiTimecode = Shapes::StringShape.new(name: 'H265UnregisteredSeiTimecode')
    Hdr10Metadata = Shapes::StructureShape.new(name: 'Hdr10Metadata')
    HlsAdMarkers = Shapes::StringShape.new(name: 'HlsAdMarkers')
    HlsAudioTrackType = Shapes::StringShape.new(name: 'HlsAudioTrackType')
    HlsCaptionLanguageMapping = Shapes::StructureShape.new(name: 'HlsCaptionLanguageMapping')
    HlsCaptionLanguageSetting = Shapes::StringShape.new(name: 'HlsCaptionLanguageSetting')
    HlsClientCache = Shapes::StringShape.new(name: 'HlsClientCache')
    HlsCodecSpecification = Shapes::StringShape.new(name: 'HlsCodecSpecification')
    HlsDirectoryStructure = Shapes::StringShape.new(name: 'HlsDirectoryStructure')
    HlsEncryptionSettings = Shapes::StructureShape.new(name: 'HlsEncryptionSettings')
    HlsEncryptionType = Shapes::StringShape.new(name: 'HlsEncryptionType')
    HlsGroupSettings = Shapes::StructureShape.new(name: 'HlsGroupSettings')
    HlsIFrameOnlyManifest = Shapes::StringShape.new(name: 'HlsIFrameOnlyManifest')
    HlsInitializationVectorInManifest = Shapes::StringShape.new(name: 'HlsInitializationVectorInManifest')
    HlsKeyProviderType = Shapes::StringShape.new(name: 'HlsKeyProviderType')
    HlsManifestCompression = Shapes::StringShape.new(name: 'HlsManifestCompression')
    HlsManifestDurationFormat = Shapes::StringShape.new(name: 'HlsManifestDurationFormat')
    HlsOutputSelection = Shapes::StringShape.new(name: 'HlsOutputSelection')
    HlsProgramDateTime = Shapes::StringShape.new(name: 'HlsProgramDateTime')
    HlsSegmentControl = Shapes::StringShape.new(name: 'HlsSegmentControl')
    HlsSettings = Shapes::StructureShape.new(name: 'HlsSettings')
    HlsStreamInfResolution = Shapes::StringShape.new(name: 'HlsStreamInfResolution')
    HlsTimedMetadataId3Frame = Shapes::StringShape.new(name: 'HlsTimedMetadataId3Frame')
    Id3Insertion = Shapes::StructureShape.new(name: 'Id3Insertion')
    ImageInserter = Shapes::StructureShape.new(name: 'ImageInserter')
    Input = Shapes::StructureShape.new(name: 'Input')
    InputClipping = Shapes::StructureShape.new(name: 'InputClipping')
    InputDeblockFilter = Shapes::StringShape.new(name: 'InputDeblockFilter')
    InputDenoiseFilter = Shapes::StringShape.new(name: 'InputDenoiseFilter')
    InputFilterEnable = Shapes::StringShape.new(name: 'InputFilterEnable')
    InputPsiControl = Shapes::StringShape.new(name: 'InputPsiControl')
    InputTemplate = Shapes::StructureShape.new(name: 'InputTemplate')
    InputTimecodeSource = Shapes::StringShape.new(name: 'InputTimecodeSource')
    InsertableImage = Shapes::StructureShape.new(name: 'InsertableImage')
    InternalServerErrorException = Shapes::StructureShape.new(name: 'InternalServerErrorException')
    Job = Shapes::StructureShape.new(name: 'Job')
    JobSettings = Shapes::StructureShape.new(name: 'JobSettings')
    JobStatus = Shapes::StringShape.new(name: 'JobStatus')
    JobTemplate = Shapes::StructureShape.new(name: 'JobTemplate')
    JobTemplateListBy = Shapes::StringShape.new(name: 'JobTemplateListBy')
    JobTemplateSettings = Shapes::StructureShape.new(name: 'JobTemplateSettings')
    LanguageCode = Shapes::StringShape.new(name: 'LanguageCode')
    ListJobTemplatesRequest = Shapes::StructureShape.new(name: 'ListJobTemplatesRequest')
    ListJobTemplatesResponse = Shapes::StructureShape.new(name: 'ListJobTemplatesResponse')
    ListJobsRequest = Shapes::StructureShape.new(name: 'ListJobsRequest')
    ListJobsResponse = Shapes::StructureShape.new(name: 'ListJobsResponse')
    ListOfAudioDescription = Shapes::ListShape.new(name: 'ListOfAudioDescription')
    ListOfCaptionDescription = Shapes::ListShape.new(name: 'ListOfCaptionDescription')
    ListOfCaptionDescriptionPreset = Shapes::ListShape.new(name: 'ListOfCaptionDescriptionPreset')
    ListOfEndpoint = Shapes::ListShape.new(name: 'ListOfEndpoint')
    ListOfHlsAdMarkers = Shapes::ListShape.new(name: 'ListOfHlsAdMarkers')
    ListOfHlsCaptionLanguageMapping = Shapes::ListShape.new(name: 'ListOfHlsCaptionLanguageMapping')
    ListOfId3Insertion = Shapes::ListShape.new(name: 'ListOfId3Insertion')
    ListOfInput = Shapes::ListShape.new(name: 'ListOfInput')
    ListOfInputClipping = Shapes::ListShape.new(name: 'ListOfInputClipping')
    ListOfInputTemplate = Shapes::ListShape.new(name: 'ListOfInputTemplate')
    ListOfInsertableImage = Shapes::ListShape.new(name: 'ListOfInsertableImage')
    ListOfJob = Shapes::ListShape.new(name: 'ListOfJob')
    ListOfJobTemplate = Shapes::ListShape.new(name: 'ListOfJobTemplate')
    ListOfOutput = Shapes::ListShape.new(name: 'ListOfOutput')
    ListOfOutputChannelMapping = Shapes::ListShape.new(name: 'ListOfOutputChannelMapping')
    ListOfOutputDetail = Shapes::ListShape.new(name: 'ListOfOutputDetail')
    ListOfOutputGroup = Shapes::ListShape.new(name: 'ListOfOutputGroup')
    ListOfOutputGroupDetail = Shapes::ListShape.new(name: 'ListOfOutputGroupDetail')
    ListOfPreset = Shapes::ListShape.new(name: 'ListOfPreset')
    ListOfQueue = Shapes::ListShape.new(name: 'ListOfQueue')
    ListOf__integer = Shapes::ListShape.new(name: 'ListOf__integer')
    ListOf__string = Shapes::ListShape.new(name: 'ListOf__string')
    ListPresetsRequest = Shapes::StructureShape.new(name: 'ListPresetsRequest')
    ListPresetsResponse = Shapes::StructureShape.new(name: 'ListPresetsResponse')
    ListQueuesRequest = Shapes::StructureShape.new(name: 'ListQueuesRequest')
    ListQueuesResponse = Shapes::StructureShape.new(name: 'ListQueuesResponse')
    M2tsAudioBufferModel = Shapes::StringShape.new(name: 'M2tsAudioBufferModel')
    M2tsBufferModel = Shapes::StringShape.new(name: 'M2tsBufferModel')
    M2tsEbpAudioInterval = Shapes::StringShape.new(name: 'M2tsEbpAudioInterval')
    M2tsEbpPlacement = Shapes::StringShape.new(name: 'M2tsEbpPlacement')
    M2tsEsRateInPes = Shapes::StringShape.new(name: 'M2tsEsRateInPes')
    M2tsNielsenId3 = Shapes::StringShape.new(name: 'M2tsNielsenId3')
    M2tsPcrControl = Shapes::StringShape.new(name: 'M2tsPcrControl')
    M2tsRateMode = Shapes::StringShape.new(name: 'M2tsRateMode')
    M2tsScte35Source = Shapes::StringShape.new(name: 'M2tsScte35Source')
    M2tsSegmentationMarkers = Shapes::StringShape.new(name: 'M2tsSegmentationMarkers')
    M2tsSegmentationStyle = Shapes::StringShape.new(name: 'M2tsSegmentationStyle')
    M2tsSettings = Shapes::StructureShape.new(name: 'M2tsSettings')
    M3u8NielsenId3 = Shapes::StringShape.new(name: 'M3u8NielsenId3')
    M3u8PcrControl = Shapes::StringShape.new(name: 'M3u8PcrControl')
    M3u8Scte35Source = Shapes::StringShape.new(name: 'M3u8Scte35Source')
    M3u8Settings = Shapes::StructureShape.new(name: 'M3u8Settings')
    MapOfAudioSelector = Shapes::MapShape.new(name: 'MapOfAudioSelector')
    MapOfAudioSelectorGroup = Shapes::MapShape.new(name: 'MapOfAudioSelectorGroup')
    MapOfCaptionSelector = Shapes::MapShape.new(name: 'MapOfCaptionSelector')
    MapOf__string = Shapes::MapShape.new(name: 'MapOf__string')
    MovClapAtom = Shapes::StringShape.new(name: 'MovClapAtom')
    MovCslgAtom = Shapes::StringShape.new(name: 'MovCslgAtom')
    MovMpeg2FourCCControl = Shapes::StringShape.new(name: 'MovMpeg2FourCCControl')
    MovPaddingControl = Shapes::StringShape.new(name: 'MovPaddingControl')
    MovReference = Shapes::StringShape.new(name: 'MovReference')
    MovSettings = Shapes::StructureShape.new(name: 'MovSettings')
    Mp2Settings = Shapes::StructureShape.new(name: 'Mp2Settings')
    Mp4CslgAtom = Shapes::StringShape.new(name: 'Mp4CslgAtom')
    Mp4FreeSpaceBox = Shapes::StringShape.new(name: 'Mp4FreeSpaceBox')
    Mp4MoovPlacement = Shapes::StringShape.new(name: 'Mp4MoovPlacement')
    Mp4Settings = Shapes::StructureShape.new(name: 'Mp4Settings')
    Mpeg2AdaptiveQuantization = Shapes::StringShape.new(name: 'Mpeg2AdaptiveQuantization')
    Mpeg2CodecLevel = Shapes::StringShape.new(name: 'Mpeg2CodecLevel')
    Mpeg2CodecProfile = Shapes::StringShape.new(name: 'Mpeg2CodecProfile')
    Mpeg2FramerateControl = Shapes::StringShape.new(name: 'Mpeg2FramerateControl')
    Mpeg2FramerateConversionAlgorithm = Shapes::StringShape.new(name: 'Mpeg2FramerateConversionAlgorithm')
    Mpeg2GopSizeUnits = Shapes::StringShape.new(name: 'Mpeg2GopSizeUnits')
    Mpeg2InterlaceMode = Shapes::StringShape.new(name: 'Mpeg2InterlaceMode')
    Mpeg2IntraDcPrecision = Shapes::StringShape.new(name: 'Mpeg2IntraDcPrecision')
    Mpeg2ParControl = Shapes::StringShape.new(name: 'Mpeg2ParControl')
    Mpeg2QualityTuningLevel = Shapes::StringShape.new(name: 'Mpeg2QualityTuningLevel')
    Mpeg2RateControlMode = Shapes::StringShape.new(name: 'Mpeg2RateControlMode')
    Mpeg2SceneChangeDetect = Shapes::StringShape.new(name: 'Mpeg2SceneChangeDetect')
    Mpeg2Settings = Shapes::StructureShape.new(name: 'Mpeg2Settings')
    Mpeg2SlowPal = Shapes::StringShape.new(name: 'Mpeg2SlowPal')
    Mpeg2SpatialAdaptiveQuantization = Shapes::StringShape.new(name: 'Mpeg2SpatialAdaptiveQuantization')
    Mpeg2Syntax = Shapes::StringShape.new(name: 'Mpeg2Syntax')
    Mpeg2Telecine = Shapes::StringShape.new(name: 'Mpeg2Telecine')
    Mpeg2TemporalAdaptiveQuantization = Shapes::StringShape.new(name: 'Mpeg2TemporalAdaptiveQuantization')
    MsSmoothAudioDeduplication = Shapes::StringShape.new(name: 'MsSmoothAudioDeduplication')
    MsSmoothEncryptionSettings = Shapes::StructureShape.new(name: 'MsSmoothEncryptionSettings')
    MsSmoothGroupSettings = Shapes::StructureShape.new(name: 'MsSmoothGroupSettings')
    MsSmoothManifestEncoding = Shapes::StringShape.new(name: 'MsSmoothManifestEncoding')
    NielsenConfiguration = Shapes::StructureShape.new(name: 'NielsenConfiguration')
    NoiseReducer = Shapes::StructureShape.new(name: 'NoiseReducer')
    NoiseReducerFilter = Shapes::StringShape.new(name: 'NoiseReducerFilter')
    NoiseReducerFilterSettings = Shapes::StructureShape.new(name: 'NoiseReducerFilterSettings')
    NoiseReducerSpatialFilterSettings = Shapes::StructureShape.new(name: 'NoiseReducerSpatialFilterSettings')
    NotFoundException = Shapes::StructureShape.new(name: 'NotFoundException')
    Order = Shapes::StringShape.new(name: 'Order')
    Output = Shapes::StructureShape.new(name: 'Output')
    OutputChannelMapping = Shapes::StructureShape.new(name: 'OutputChannelMapping')
    OutputDetail = Shapes::StructureShape.new(name: 'OutputDetail')
    OutputGroup = Shapes::StructureShape.new(name: 'OutputGroup')
    OutputGroupDetail = Shapes::StructureShape.new(name: 'OutputGroupDetail')
    OutputGroupSettings = Shapes::StructureShape.new(name: 'OutputGroupSettings')
    OutputGroupType = Shapes::StringShape.new(name: 'OutputGroupType')
    OutputSdt = Shapes::StringShape.new(name: 'OutputSdt')
    OutputSettings = Shapes::StructureShape.new(name: 'OutputSettings')
    Preset = Shapes::StructureShape.new(name: 'Preset')
    PresetListBy = Shapes::StringShape.new(name: 'PresetListBy')
    PresetSettings = Shapes::StructureShape.new(name: 'PresetSettings')
    ProresCodecProfile = Shapes::StringShape.new(name: 'ProresCodecProfile')
    ProresFramerateControl = Shapes::StringShape.new(name: 'ProresFramerateControl')
    ProresFramerateConversionAlgorithm = Shapes::StringShape.new(name: 'ProresFramerateConversionAlgorithm')
    ProresInterlaceMode = Shapes::StringShape.new(name: 'ProresInterlaceMode')
    ProresParControl = Shapes::StringShape.new(name: 'ProresParControl')
    ProresSettings = Shapes::StructureShape.new(name: 'ProresSettings')
    ProresSlowPal = Shapes::StringShape.new(name: 'ProresSlowPal')
    ProresTelecine = Shapes::StringShape.new(name: 'ProresTelecine')
    Queue = Shapes::StructureShape.new(name: 'Queue')
    QueueListBy = Shapes::StringShape.new(name: 'QueueListBy')
    QueueStatus = Shapes::StringShape.new(name: 'QueueStatus')
    Rectangle = Shapes::StructureShape.new(name: 'Rectangle')
    RemixSettings = Shapes::StructureShape.new(name: 'RemixSettings')
    RespondToAfd = Shapes::StringShape.new(name: 'RespondToAfd')
    ScalingBehavior = Shapes::StringShape.new(name: 'ScalingBehavior')
    SccDestinationFramerate = Shapes::StringShape.new(name: 'SccDestinationFramerate')
    SccDestinationSettings = Shapes::StructureShape.new(name: 'SccDestinationSettings')
    SpekeKeyProvider = Shapes::StructureShape.new(name: 'SpekeKeyProvider')
    StaticKeyProvider = Shapes::StructureShape.new(name: 'StaticKeyProvider')
    TeletextDestinationSettings = Shapes::StructureShape.new(name: 'TeletextDestinationSettings')
    TeletextSourceSettings = Shapes::StructureShape.new(name: 'TeletextSourceSettings')
    TimecodeBurnin = Shapes::StructureShape.new(name: 'TimecodeBurnin')
    TimecodeBurninPosition = Shapes::StringShape.new(name: 'TimecodeBurninPosition')
    TimecodeConfig = Shapes::StructureShape.new(name: 'TimecodeConfig')
    TimecodeSource = Shapes::StringShape.new(name: 'TimecodeSource')
    TimedMetadata = Shapes::StringShape.new(name: 'TimedMetadata')
    TimedMetadataInsertion = Shapes::StructureShape.new(name: 'TimedMetadataInsertion')
    Timing = Shapes::StructureShape.new(name: 'Timing')
    TooManyRequestsException = Shapes::StructureShape.new(name: 'TooManyRequestsException')
    TtmlDestinationSettings = Shapes::StructureShape.new(name: 'TtmlDestinationSettings')
    TtmlStylePassthrough = Shapes::StringShape.new(name: 'TtmlStylePassthrough')
    Type = Shapes::StringShape.new(name: 'Type')
    UpdateJobTemplateRequest = Shapes::StructureShape.new(name: 'UpdateJobTemplateRequest')
    UpdateJobTemplateResponse = Shapes::StructureShape.new(name: 'UpdateJobTemplateResponse')
    UpdatePresetRequest = Shapes::StructureShape.new(name: 'UpdatePresetRequest')
    UpdatePresetResponse = Shapes::StructureShape.new(name: 'UpdatePresetResponse')
    UpdateQueueRequest = Shapes::StructureShape.new(name: 'UpdateQueueRequest')
    UpdateQueueResponse = Shapes::StructureShape.new(name: 'UpdateQueueResponse')
    VideoCodec = Shapes::StringShape.new(name: 'VideoCodec')
    VideoCodecSettings = Shapes::StructureShape.new(name: 'VideoCodecSettings')
    VideoDescription = Shapes::StructureShape.new(name: 'VideoDescription')
    VideoDetail = Shapes::StructureShape.new(name: 'VideoDetail')
    VideoPreprocessor = Shapes::StructureShape.new(name: 'VideoPreprocessor')
    VideoSelector = Shapes::StructureShape.new(name: 'VideoSelector')
    VideoTimecodeInsertion = Shapes::StringShape.new(name: 'VideoTimecodeInsertion')
    WavSettings = Shapes::StructureShape.new(name: 'WavSettings')
    __boolean = Shapes::BooleanShape.new(name: '__boolean')
    __double = Shapes::FloatShape.new(name: '__double')
    __integer = Shapes::IntegerShape.new(name: '__integer')
    __string = Shapes::StringShape.new(name: '__string')
    __timestamp = Shapes::TimestampShape.new(name: '__timestamp')

    AacSettings.add_member(:audio_description_broadcaster_mix, Shapes::ShapeRef.new(shape: AacAudioDescriptionBroadcasterMix, location_name: "audioDescriptionBroadcasterMix"))
    AacSettings.add_member(:bitrate, Shapes::ShapeRef.new(shape: __integer, location_name: "bitrate"))
    AacSettings.add_member(:codec_profile, Shapes::ShapeRef.new(shape: AacCodecProfile, location_name: "codecProfile"))
    AacSettings.add_member(:coding_mode, Shapes::ShapeRef.new(shape: AacCodingMode, location_name: "codingMode"))
    AacSettings.add_member(:rate_control_mode, Shapes::ShapeRef.new(shape: AacRateControlMode, location_name: "rateControlMode"))
    AacSettings.add_member(:raw_format, Shapes::ShapeRef.new(shape: AacRawFormat, location_name: "rawFormat"))
    AacSettings.add_member(:sample_rate, Shapes::ShapeRef.new(shape: __integer, location_name: "sampleRate"))
    AacSettings.add_member(:specification, Shapes::ShapeRef.new(shape: AacSpecification, location_name: "specification"))
    AacSettings.add_member(:vbr_quality, Shapes::ShapeRef.new(shape: AacVbrQuality, location_name: "vbrQuality"))
    AacSettings.struct_class = Types::AacSettings

    Ac3Settings.add_member(:bitrate, Shapes::ShapeRef.new(shape: __integer, location_name: "bitrate"))
    Ac3Settings.add_member(:bitstream_mode, Shapes::ShapeRef.new(shape: Ac3BitstreamMode, location_name: "bitstreamMode"))
    Ac3Settings.add_member(:coding_mode, Shapes::ShapeRef.new(shape: Ac3CodingMode, location_name: "codingMode"))
    Ac3Settings.add_member(:dialnorm, Shapes::ShapeRef.new(shape: __integer, location_name: "dialnorm"))
    Ac3Settings.add_member(:dynamic_range_compression_profile, Shapes::ShapeRef.new(shape: Ac3DynamicRangeCompressionProfile, location_name: "dynamicRangeCompressionProfile"))
    Ac3Settings.add_member(:lfe_filter, Shapes::ShapeRef.new(shape: Ac3LfeFilter, location_name: "lfeFilter"))
    Ac3Settings.add_member(:metadata_control, Shapes::ShapeRef.new(shape: Ac3MetadataControl, location_name: "metadataControl"))
    Ac3Settings.add_member(:sample_rate, Shapes::ShapeRef.new(shape: __integer, location_name: "sampleRate"))
    Ac3Settings.struct_class = Types::Ac3Settings

    AiffSettings.add_member(:bit_depth, Shapes::ShapeRef.new(shape: __integer, location_name: "bitDepth"))
    AiffSettings.add_member(:channels, Shapes::ShapeRef.new(shape: __integer, location_name: "channels"))
    AiffSettings.add_member(:sample_rate, Shapes::ShapeRef.new(shape: __integer, location_name: "sampleRate"))
    AiffSettings.struct_class = Types::AiffSettings

    AncillarySourceSettings.add_member(:source_ancillary_channel_number, Shapes::ShapeRef.new(shape: __integer, location_name: "sourceAncillaryChannelNumber"))
    AncillarySourceSettings.struct_class = Types::AncillarySourceSettings

    AudioCodecSettings.add_member(:aac_settings, Shapes::ShapeRef.new(shape: AacSettings, location_name: "aacSettings"))
    AudioCodecSettings.add_member(:ac_3_settings, Shapes::ShapeRef.new(shape: Ac3Settings, location_name: "ac3Settings"))
    AudioCodecSettings.add_member(:aiff_settings, Shapes::ShapeRef.new(shape: AiffSettings, location_name: "aiffSettings"))
    AudioCodecSettings.add_member(:codec, Shapes::ShapeRef.new(shape: AudioCodec, location_name: "codec"))
    AudioCodecSettings.add_member(:eac_3_settings, Shapes::ShapeRef.new(shape: Eac3Settings, location_name: "eac3Settings"))
    AudioCodecSettings.add_member(:mp_2_settings, Shapes::ShapeRef.new(shape: Mp2Settings, location_name: "mp2Settings"))
    AudioCodecSettings.add_member(:wav_settings, Shapes::ShapeRef.new(shape: WavSettings, location_name: "wavSettings"))
    AudioCodecSettings.struct_class = Types::AudioCodecSettings

    AudioDescription.add_member(:audio_normalization_settings, Shapes::ShapeRef.new(shape: AudioNormalizationSettings, location_name: "audioNormalizationSettings"))
    AudioDescription.add_member(:audio_source_name, Shapes::ShapeRef.new(shape: __string, location_name: "audioSourceName"))
    AudioDescription.add_member(:audio_type, Shapes::ShapeRef.new(shape: __integer, location_name: "audioType"))
    AudioDescription.add_member(:audio_type_control, Shapes::ShapeRef.new(shape: AudioTypeControl, location_name: "audioTypeControl"))
    AudioDescription.add_member(:codec_settings, Shapes::ShapeRef.new(shape: AudioCodecSettings, location_name: "codecSettings"))
    AudioDescription.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, location_name: "languageCode"))
    AudioDescription.add_member(:language_code_control, Shapes::ShapeRef.new(shape: AudioLanguageCodeControl, location_name: "languageCodeControl"))
    AudioDescription.add_member(:remix_settings, Shapes::ShapeRef.new(shape: RemixSettings, location_name: "remixSettings"))
    AudioDescription.add_member(:stream_name, Shapes::ShapeRef.new(shape: __string, location_name: "streamName"))
    AudioDescription.struct_class = Types::AudioDescription

    AudioNormalizationSettings.add_member(:algorithm, Shapes::ShapeRef.new(shape: AudioNormalizationAlgorithm, location_name: "algorithm"))
    AudioNormalizationSettings.add_member(:algorithm_control, Shapes::ShapeRef.new(shape: AudioNormalizationAlgorithmControl, location_name: "algorithmControl"))
    AudioNormalizationSettings.add_member(:correction_gate_level, Shapes::ShapeRef.new(shape: __integer, location_name: "correctionGateLevel"))
    AudioNormalizationSettings.add_member(:loudness_logging, Shapes::ShapeRef.new(shape: AudioNormalizationLoudnessLogging, location_name: "loudnessLogging"))
    AudioNormalizationSettings.add_member(:peak_calculation, Shapes::ShapeRef.new(shape: AudioNormalizationPeakCalculation, location_name: "peakCalculation"))
    AudioNormalizationSettings.add_member(:target_lkfs, Shapes::ShapeRef.new(shape: __double, location_name: "targetLkfs"))
    AudioNormalizationSettings.struct_class = Types::AudioNormalizationSettings

    AudioSelector.add_member(:default_selection, Shapes::ShapeRef.new(shape: AudioDefaultSelection, location_name: "defaultSelection"))
    AudioSelector.add_member(:external_audio_file_input, Shapes::ShapeRef.new(shape: __string, location_name: "externalAudioFileInput"))
    AudioSelector.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, location_name: "languageCode"))
    AudioSelector.add_member(:offset, Shapes::ShapeRef.new(shape: __integer, location_name: "offset"))
    AudioSelector.add_member(:pids, Shapes::ShapeRef.new(shape: ListOf__integer, location_name: "pids"))
    AudioSelector.add_member(:program_selection, Shapes::ShapeRef.new(shape: __integer, location_name: "programSelection"))
    AudioSelector.add_member(:remix_settings, Shapes::ShapeRef.new(shape: RemixSettings, location_name: "remixSettings"))
    AudioSelector.add_member(:selector_type, Shapes::ShapeRef.new(shape: AudioSelectorType, location_name: "selectorType"))
    AudioSelector.add_member(:tracks, Shapes::ShapeRef.new(shape: ListOf__integer, location_name: "tracks"))
    AudioSelector.struct_class = Types::AudioSelector

    AudioSelectorGroup.add_member(:audio_selector_names, Shapes::ShapeRef.new(shape: ListOf__string, location_name: "audioSelectorNames"))
    AudioSelectorGroup.struct_class = Types::AudioSelectorGroup

    AvailBlanking.add_member(:avail_blanking_image, Shapes::ShapeRef.new(shape: __string, location_name: "availBlankingImage"))
    AvailBlanking.struct_class = Types::AvailBlanking

    BurninDestinationSettings.add_member(:alignment, Shapes::ShapeRef.new(shape: BurninSubtitleAlignment, location_name: "alignment"))
    BurninDestinationSettings.add_member(:background_color, Shapes::ShapeRef.new(shape: BurninSubtitleBackgroundColor, location_name: "backgroundColor"))
    BurninDestinationSettings.add_member(:background_opacity, Shapes::ShapeRef.new(shape: __integer, location_name: "backgroundOpacity"))
    BurninDestinationSettings.add_member(:font_color, Shapes::ShapeRef.new(shape: BurninSubtitleFontColor, location_name: "fontColor"))
    BurninDestinationSettings.add_member(:font_opacity, Shapes::ShapeRef.new(shape: __integer, location_name: "fontOpacity"))
    BurninDestinationSettings.add_member(:font_resolution, Shapes::ShapeRef.new(shape: __integer, location_name: "fontResolution"))
    BurninDestinationSettings.add_member(:font_size, Shapes::ShapeRef.new(shape: __integer, location_name: "fontSize"))
    BurninDestinationSettings.add_member(:outline_color, Shapes::ShapeRef.new(shape: BurninSubtitleOutlineColor, location_name: "outlineColor"))
    BurninDestinationSettings.add_member(:outline_size, Shapes::ShapeRef.new(shape: __integer, location_name: "outlineSize"))
    BurninDestinationSettings.add_member(:shadow_color, Shapes::ShapeRef.new(shape: BurninSubtitleShadowColor, location_name: "shadowColor"))
    BurninDestinationSettings.add_member(:shadow_opacity, Shapes::ShapeRef.new(shape: __integer, location_name: "shadowOpacity"))
    BurninDestinationSettings.add_member(:shadow_x_offset, Shapes::ShapeRef.new(shape: __integer, location_name: "shadowXOffset"))
    BurninDestinationSettings.add_member(:shadow_y_offset, Shapes::ShapeRef.new(shape: __integer, location_name: "shadowYOffset"))
    BurninDestinationSettings.add_member(:teletext_spacing, Shapes::ShapeRef.new(shape: BurninSubtitleTeletextSpacing, location_name: "teletextSpacing"))
    BurninDestinationSettings.add_member(:x_position, Shapes::ShapeRef.new(shape: __integer, location_name: "xPosition"))
    BurninDestinationSettings.add_member(:y_position, Shapes::ShapeRef.new(shape: __integer, location_name: "yPosition"))
    BurninDestinationSettings.struct_class = Types::BurninDestinationSettings

    CancelJobRequest.add_member(:id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "id"))
    CancelJobRequest.struct_class = Types::CancelJobRequest

    CancelJobResponse.struct_class = Types::CancelJobResponse

    CaptionDescription.add_member(:caption_selector_name, Shapes::ShapeRef.new(shape: __string, location_name: "captionSelectorName"))
    CaptionDescription.add_member(:destination_settings, Shapes::ShapeRef.new(shape: CaptionDestinationSettings, location_name: "destinationSettings"))
    CaptionDescription.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, location_name: "languageCode"))
    CaptionDescription.add_member(:language_description, Shapes::ShapeRef.new(shape: __string, location_name: "languageDescription"))
    CaptionDescription.struct_class = Types::CaptionDescription

    CaptionDescriptionPreset.add_member(:destination_settings, Shapes::ShapeRef.new(shape: CaptionDestinationSettings, location_name: "destinationSettings"))
    CaptionDescriptionPreset.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, location_name: "languageCode"))
    CaptionDescriptionPreset.add_member(:language_description, Shapes::ShapeRef.new(shape: __string, location_name: "languageDescription"))
    CaptionDescriptionPreset.struct_class = Types::CaptionDescriptionPreset

    CaptionDestinationSettings.add_member(:burnin_destination_settings, Shapes::ShapeRef.new(shape: BurninDestinationSettings, location_name: "burninDestinationSettings"))
    CaptionDestinationSettings.add_member(:destination_type, Shapes::ShapeRef.new(shape: CaptionDestinationType, location_name: "destinationType"))
    CaptionDestinationSettings.add_member(:dvb_sub_destination_settings, Shapes::ShapeRef.new(shape: DvbSubDestinationSettings, location_name: "dvbSubDestinationSettings"))
    CaptionDestinationSettings.add_member(:scc_destination_settings, Shapes::ShapeRef.new(shape: SccDestinationSettings, location_name: "sccDestinationSettings"))
    CaptionDestinationSettings.add_member(:teletext_destination_settings, Shapes::ShapeRef.new(shape: TeletextDestinationSettings, location_name: "teletextDestinationSettings"))
    CaptionDestinationSettings.add_member(:ttml_destination_settings, Shapes::ShapeRef.new(shape: TtmlDestinationSettings, location_name: "ttmlDestinationSettings"))
    CaptionDestinationSettings.struct_class = Types::CaptionDestinationSettings

    CaptionSelector.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, location_name: "languageCode"))
    CaptionSelector.add_member(:source_settings, Shapes::ShapeRef.new(shape: CaptionSourceSettings, location_name: "sourceSettings"))
    CaptionSelector.struct_class = Types::CaptionSelector

    CaptionSourceSettings.add_member(:ancillary_source_settings, Shapes::ShapeRef.new(shape: AncillarySourceSettings, location_name: "ancillarySourceSettings"))
    CaptionSourceSettings.add_member(:dvb_sub_source_settings, Shapes::ShapeRef.new(shape: DvbSubSourceSettings, location_name: "dvbSubSourceSettings"))
    CaptionSourceSettings.add_member(:embedded_source_settings, Shapes::ShapeRef.new(shape: EmbeddedSourceSettings, location_name: "embeddedSourceSettings"))
    CaptionSourceSettings.add_member(:file_source_settings, Shapes::ShapeRef.new(shape: FileSourceSettings, location_name: "fileSourceSettings"))
    CaptionSourceSettings.add_member(:source_type, Shapes::ShapeRef.new(shape: CaptionSourceType, location_name: "sourceType"))
    CaptionSourceSettings.add_member(:teletext_source_settings, Shapes::ShapeRef.new(shape: TeletextSourceSettings, location_name: "teletextSourceSettings"))
    CaptionSourceSettings.struct_class = Types::CaptionSourceSettings

    ChannelMapping.add_member(:output_channels, Shapes::ShapeRef.new(shape: ListOfOutputChannelMapping, location_name: "outputChannels"))
    ChannelMapping.struct_class = Types::ChannelMapping

    ColorCorrector.add_member(:brightness, Shapes::ShapeRef.new(shape: __integer, location_name: "brightness"))
    ColorCorrector.add_member(:color_space_conversion, Shapes::ShapeRef.new(shape: ColorSpaceConversion, location_name: "colorSpaceConversion"))
    ColorCorrector.add_member(:contrast, Shapes::ShapeRef.new(shape: __integer, location_name: "contrast"))
    ColorCorrector.add_member(:hdr_10_metadata, Shapes::ShapeRef.new(shape: Hdr10Metadata, location_name: "hdr10Metadata"))
    ColorCorrector.add_member(:hue, Shapes::ShapeRef.new(shape: __integer, location_name: "hue"))
    ColorCorrector.add_member(:saturation, Shapes::ShapeRef.new(shape: __integer, location_name: "saturation"))
    ColorCorrector.struct_class = Types::ColorCorrector

    ContainerSettings.add_member(:container, Shapes::ShapeRef.new(shape: ContainerType, location_name: "container"))
    ContainerSettings.add_member(:f4v_settings, Shapes::ShapeRef.new(shape: F4vSettings, location_name: "f4vSettings"))
    ContainerSettings.add_member(:m2ts_settings, Shapes::ShapeRef.new(shape: M2tsSettings, location_name: "m2tsSettings"))
    ContainerSettings.add_member(:m3u_8_settings, Shapes::ShapeRef.new(shape: M3u8Settings, location_name: "m3u8Settings"))
    ContainerSettings.add_member(:mov_settings, Shapes::ShapeRef.new(shape: MovSettings, location_name: "movSettings"))
    ContainerSettings.add_member(:mp_4_settings, Shapes::ShapeRef.new(shape: Mp4Settings, location_name: "mp4Settings"))
    ContainerSettings.struct_class = Types::ContainerSettings

    CreateJobRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: __string, location_name: "clientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateJobRequest.add_member(:job_template, Shapes::ShapeRef.new(shape: __string, location_name: "jobTemplate"))
    CreateJobRequest.add_member(:queue, Shapes::ShapeRef.new(shape: __string, location_name: "queue"))
    CreateJobRequest.add_member(:role, Shapes::ShapeRef.new(shape: __string, location_name: "role"))
    CreateJobRequest.add_member(:settings, Shapes::ShapeRef.new(shape: JobSettings, location_name: "settings"))
    CreateJobRequest.add_member(:user_metadata, Shapes::ShapeRef.new(shape: MapOf__string, location_name: "userMetadata"))
    CreateJobRequest.struct_class = Types::CreateJobRequest

    CreateJobResponse.add_member(:job, Shapes::ShapeRef.new(shape: Job, location_name: "job"))
    CreateJobResponse.struct_class = Types::CreateJobResponse

    CreateJobTemplateRequest.add_member(:category, Shapes::ShapeRef.new(shape: __string, location_name: "category"))
    CreateJobTemplateRequest.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    CreateJobTemplateRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    CreateJobTemplateRequest.add_member(:queue, Shapes::ShapeRef.new(shape: __string, location_name: "queue"))
    CreateJobTemplateRequest.add_member(:settings, Shapes::ShapeRef.new(shape: JobTemplateSettings, location_name: "settings"))
    CreateJobTemplateRequest.struct_class = Types::CreateJobTemplateRequest

    CreateJobTemplateResponse.add_member(:job_template, Shapes::ShapeRef.new(shape: JobTemplate, location_name: "jobTemplate"))
    CreateJobTemplateResponse.struct_class = Types::CreateJobTemplateResponse

    CreatePresetRequest.add_member(:category, Shapes::ShapeRef.new(shape: __string, location_name: "category"))
    CreatePresetRequest.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    CreatePresetRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    CreatePresetRequest.add_member(:settings, Shapes::ShapeRef.new(shape: PresetSettings, location_name: "settings"))
    CreatePresetRequest.struct_class = Types::CreatePresetRequest

    CreatePresetResponse.add_member(:preset, Shapes::ShapeRef.new(shape: Preset, location_name: "preset"))
    CreatePresetResponse.struct_class = Types::CreatePresetResponse

    CreateQueueRequest.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    CreateQueueRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    CreateQueueRequest.struct_class = Types::CreateQueueRequest

    CreateQueueResponse.add_member(:queue, Shapes::ShapeRef.new(shape: Queue, location_name: "queue"))
    CreateQueueResponse.struct_class = Types::CreateQueueResponse

    DashIsoEncryptionSettings.add_member(:speke_key_provider, Shapes::ShapeRef.new(shape: SpekeKeyProvider, location_name: "spekeKeyProvider"))
    DashIsoEncryptionSettings.struct_class = Types::DashIsoEncryptionSettings

    DashIsoGroupSettings.add_member(:base_url, Shapes::ShapeRef.new(shape: __string, location_name: "baseUrl"))
    DashIsoGroupSettings.add_member(:destination, Shapes::ShapeRef.new(shape: __string, location_name: "destination"))
    DashIsoGroupSettings.add_member(:encryption, Shapes::ShapeRef.new(shape: DashIsoEncryptionSettings, location_name: "encryption"))
    DashIsoGroupSettings.add_member(:fragment_length, Shapes::ShapeRef.new(shape: __integer, location_name: "fragmentLength"))
    DashIsoGroupSettings.add_member(:hbbtv_compliance, Shapes::ShapeRef.new(shape: DashIsoHbbtvCompliance, location_name: "hbbtvCompliance"))
    DashIsoGroupSettings.add_member(:min_buffer_time, Shapes::ShapeRef.new(shape: __integer, location_name: "minBufferTime"))
    DashIsoGroupSettings.add_member(:segment_control, Shapes::ShapeRef.new(shape: DashIsoSegmentControl, location_name: "segmentControl"))
    DashIsoGroupSettings.add_member(:segment_length, Shapes::ShapeRef.new(shape: __integer, location_name: "segmentLength"))
    DashIsoGroupSettings.struct_class = Types::DashIsoGroupSettings

    Deinterlacer.add_member(:algorithm, Shapes::ShapeRef.new(shape: DeinterlaceAlgorithm, location_name: "algorithm"))
    Deinterlacer.add_member(:control, Shapes::ShapeRef.new(shape: DeinterlacerControl, location_name: "control"))
    Deinterlacer.add_member(:mode, Shapes::ShapeRef.new(shape: DeinterlacerMode, location_name: "mode"))
    Deinterlacer.struct_class = Types::Deinterlacer

    DeleteJobTemplateRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "name"))
    DeleteJobTemplateRequest.struct_class = Types::DeleteJobTemplateRequest

    DeleteJobTemplateResponse.struct_class = Types::DeleteJobTemplateResponse

    DeletePresetRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "name"))
    DeletePresetRequest.struct_class = Types::DeletePresetRequest

    DeletePresetResponse.struct_class = Types::DeletePresetResponse

    DeleteQueueRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "name"))
    DeleteQueueRequest.struct_class = Types::DeleteQueueRequest

    DeleteQueueResponse.struct_class = Types::DeleteQueueResponse

    DescribeEndpointsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: __integer, location_name: "maxResults"))
    DescribeEndpointsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    DescribeEndpointsRequest.struct_class = Types::DescribeEndpointsRequest

    DescribeEndpointsResponse.add_member(:endpoints, Shapes::ShapeRef.new(shape: ListOfEndpoint, location_name: "endpoints"))
    DescribeEndpointsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    DescribeEndpointsResponse.struct_class = Types::DescribeEndpointsResponse

    DvbNitSettings.add_member(:network_id, Shapes::ShapeRef.new(shape: __integer, location_name: "networkId"))
    DvbNitSettings.add_member(:network_name, Shapes::ShapeRef.new(shape: __string, location_name: "networkName"))
    DvbNitSettings.add_member(:nit_interval, Shapes::ShapeRef.new(shape: __integer, location_name: "nitInterval"))
    DvbNitSettings.struct_class = Types::DvbNitSettings

    DvbSdtSettings.add_member(:output_sdt, Shapes::ShapeRef.new(shape: OutputSdt, location_name: "outputSdt"))
    DvbSdtSettings.add_member(:sdt_interval, Shapes::ShapeRef.new(shape: __integer, location_name: "sdtInterval"))
    DvbSdtSettings.add_member(:service_name, Shapes::ShapeRef.new(shape: __string, location_name: "serviceName"))
    DvbSdtSettings.add_member(:service_provider_name, Shapes::ShapeRef.new(shape: __string, location_name: "serviceProviderName"))
    DvbSdtSettings.struct_class = Types::DvbSdtSettings

    DvbSubDestinationSettings.add_member(:alignment, Shapes::ShapeRef.new(shape: DvbSubtitleAlignment, location_name: "alignment"))
    DvbSubDestinationSettings.add_member(:background_color, Shapes::ShapeRef.new(shape: DvbSubtitleBackgroundColor, location_name: "backgroundColor"))
    DvbSubDestinationSettings.add_member(:background_opacity, Shapes::ShapeRef.new(shape: __integer, location_name: "backgroundOpacity"))
    DvbSubDestinationSettings.add_member(:font_color, Shapes::ShapeRef.new(shape: DvbSubtitleFontColor, location_name: "fontColor"))
    DvbSubDestinationSettings.add_member(:font_opacity, Shapes::ShapeRef.new(shape: __integer, location_name: "fontOpacity"))
    DvbSubDestinationSettings.add_member(:font_resolution, Shapes::ShapeRef.new(shape: __integer, location_name: "fontResolution"))
    DvbSubDestinationSettings.add_member(:font_size, Shapes::ShapeRef.new(shape: __integer, location_name: "fontSize"))
    DvbSubDestinationSettings.add_member(:outline_color, Shapes::ShapeRef.new(shape: DvbSubtitleOutlineColor, location_name: "outlineColor"))
    DvbSubDestinationSettings.add_member(:outline_size, Shapes::ShapeRef.new(shape: __integer, location_name: "outlineSize"))
    DvbSubDestinationSettings.add_member(:shadow_color, Shapes::ShapeRef.new(shape: DvbSubtitleShadowColor, location_name: "shadowColor"))
    DvbSubDestinationSettings.add_member(:shadow_opacity, Shapes::ShapeRef.new(shape: __integer, location_name: "shadowOpacity"))
    DvbSubDestinationSettings.add_member(:shadow_x_offset, Shapes::ShapeRef.new(shape: __integer, location_name: "shadowXOffset"))
    DvbSubDestinationSettings.add_member(:shadow_y_offset, Shapes::ShapeRef.new(shape: __integer, location_name: "shadowYOffset"))
    DvbSubDestinationSettings.add_member(:teletext_spacing, Shapes::ShapeRef.new(shape: DvbSubtitleTeletextSpacing, location_name: "teletextSpacing"))
    DvbSubDestinationSettings.add_member(:x_position, Shapes::ShapeRef.new(shape: __integer, location_name: "xPosition"))
    DvbSubDestinationSettings.add_member(:y_position, Shapes::ShapeRef.new(shape: __integer, location_name: "yPosition"))
    DvbSubDestinationSettings.struct_class = Types::DvbSubDestinationSettings

    DvbSubSourceSettings.add_member(:pid, Shapes::ShapeRef.new(shape: __integer, location_name: "pid"))
    DvbSubSourceSettings.struct_class = Types::DvbSubSourceSettings

    DvbTdtSettings.add_member(:tdt_interval, Shapes::ShapeRef.new(shape: __integer, location_name: "tdtInterval"))
    DvbTdtSettings.struct_class = Types::DvbTdtSettings

    Eac3Settings.add_member(:attenuation_control, Shapes::ShapeRef.new(shape: Eac3AttenuationControl, location_name: "attenuationControl"))
    Eac3Settings.add_member(:bitrate, Shapes::ShapeRef.new(shape: __integer, location_name: "bitrate"))
    Eac3Settings.add_member(:bitstream_mode, Shapes::ShapeRef.new(shape: Eac3BitstreamMode, location_name: "bitstreamMode"))
    Eac3Settings.add_member(:coding_mode, Shapes::ShapeRef.new(shape: Eac3CodingMode, location_name: "codingMode"))
    Eac3Settings.add_member(:dc_filter, Shapes::ShapeRef.new(shape: Eac3DcFilter, location_name: "dcFilter"))
    Eac3Settings.add_member(:dialnorm, Shapes::ShapeRef.new(shape: __integer, location_name: "dialnorm"))
    Eac3Settings.add_member(:dynamic_range_compression_line, Shapes::ShapeRef.new(shape: Eac3DynamicRangeCompressionLine, location_name: "dynamicRangeCompressionLine"))
    Eac3Settings.add_member(:dynamic_range_compression_rf, Shapes::ShapeRef.new(shape: Eac3DynamicRangeCompressionRf, location_name: "dynamicRangeCompressionRf"))
    Eac3Settings.add_member(:lfe_control, Shapes::ShapeRef.new(shape: Eac3LfeControl, location_name: "lfeControl"))
    Eac3Settings.add_member(:lfe_filter, Shapes::ShapeRef.new(shape: Eac3LfeFilter, location_name: "lfeFilter"))
    Eac3Settings.add_member(:lo_ro_center_mix_level, Shapes::ShapeRef.new(shape: __double, location_name: "loRoCenterMixLevel"))
    Eac3Settings.add_member(:lo_ro_surround_mix_level, Shapes::ShapeRef.new(shape: __double, location_name: "loRoSurroundMixLevel"))
    Eac3Settings.add_member(:lt_rt_center_mix_level, Shapes::ShapeRef.new(shape: __double, location_name: "ltRtCenterMixLevel"))
    Eac3Settings.add_member(:lt_rt_surround_mix_level, Shapes::ShapeRef.new(shape: __double, location_name: "ltRtSurroundMixLevel"))
    Eac3Settings.add_member(:metadata_control, Shapes::ShapeRef.new(shape: Eac3MetadataControl, location_name: "metadataControl"))
    Eac3Settings.add_member(:passthrough_control, Shapes::ShapeRef.new(shape: Eac3PassthroughControl, location_name: "passthroughControl"))
    Eac3Settings.add_member(:phase_control, Shapes::ShapeRef.new(shape: Eac3PhaseControl, location_name: "phaseControl"))
    Eac3Settings.add_member(:sample_rate, Shapes::ShapeRef.new(shape: __integer, location_name: "sampleRate"))
    Eac3Settings.add_member(:stereo_downmix, Shapes::ShapeRef.new(shape: Eac3StereoDownmix, location_name: "stereoDownmix"))
    Eac3Settings.add_member(:surround_ex_mode, Shapes::ShapeRef.new(shape: Eac3SurroundExMode, location_name: "surroundExMode"))
    Eac3Settings.add_member(:surround_mode, Shapes::ShapeRef.new(shape: Eac3SurroundMode, location_name: "surroundMode"))
    Eac3Settings.struct_class = Types::Eac3Settings

    EmbeddedSourceSettings.add_member(:convert_608_to_708, Shapes::ShapeRef.new(shape: EmbeddedConvert608To708, location_name: "convert608To708"))
    EmbeddedSourceSettings.add_member(:source_608_channel_number, Shapes::ShapeRef.new(shape: __integer, location_name: "source608ChannelNumber"))
    EmbeddedSourceSettings.add_member(:source_608_track_number, Shapes::ShapeRef.new(shape: __integer, location_name: "source608TrackNumber"))
    EmbeddedSourceSettings.struct_class = Types::EmbeddedSourceSettings

    Endpoint.add_member(:url, Shapes::ShapeRef.new(shape: __string, location_name: "url"))
    Endpoint.struct_class = Types::Endpoint

    ExceptionBody.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    ExceptionBody.struct_class = Types::ExceptionBody

    F4vSettings.add_member(:moov_placement, Shapes::ShapeRef.new(shape: F4vMoovPlacement, location_name: "moovPlacement"))
    F4vSettings.struct_class = Types::F4vSettings

    FileGroupSettings.add_member(:destination, Shapes::ShapeRef.new(shape: __string, location_name: "destination"))
    FileGroupSettings.struct_class = Types::FileGroupSettings

    FileSourceSettings.add_member(:convert_608_to_708, Shapes::ShapeRef.new(shape: FileSourceConvert608To708, location_name: "convert608To708"))
    FileSourceSettings.add_member(:source_file, Shapes::ShapeRef.new(shape: __string, location_name: "sourceFile"))
    FileSourceSettings.add_member(:time_delta, Shapes::ShapeRef.new(shape: __integer, location_name: "timeDelta"))
    FileSourceSettings.struct_class = Types::FileSourceSettings

    FrameCaptureSettings.add_member(:framerate_denominator, Shapes::ShapeRef.new(shape: __integer, location_name: "framerateDenominator"))
    FrameCaptureSettings.add_member(:framerate_numerator, Shapes::ShapeRef.new(shape: __integer, location_name: "framerateNumerator"))
    FrameCaptureSettings.add_member(:max_captures, Shapes::ShapeRef.new(shape: __integer, location_name: "maxCaptures"))
    FrameCaptureSettings.add_member(:quality, Shapes::ShapeRef.new(shape: __integer, location_name: "quality"))
    FrameCaptureSettings.struct_class = Types::FrameCaptureSettings

    GetJobRequest.add_member(:id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "id"))
    GetJobRequest.struct_class = Types::GetJobRequest

    GetJobResponse.add_member(:job, Shapes::ShapeRef.new(shape: Job, location_name: "job"))
    GetJobResponse.struct_class = Types::GetJobResponse

    GetJobTemplateRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "name"))
    GetJobTemplateRequest.struct_class = Types::GetJobTemplateRequest

    GetJobTemplateResponse.add_member(:job_template, Shapes::ShapeRef.new(shape: JobTemplate, location_name: "jobTemplate"))
    GetJobTemplateResponse.struct_class = Types::GetJobTemplateResponse

    GetPresetRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "name"))
    GetPresetRequest.struct_class = Types::GetPresetRequest

    GetPresetResponse.add_member(:preset, Shapes::ShapeRef.new(shape: Preset, location_name: "preset"))
    GetPresetResponse.struct_class = Types::GetPresetResponse

    GetQueueRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "name"))
    GetQueueRequest.struct_class = Types::GetQueueRequest

    GetQueueResponse.add_member(:queue, Shapes::ShapeRef.new(shape: Queue, location_name: "queue"))
    GetQueueResponse.struct_class = Types::GetQueueResponse

    H264Settings.add_member(:adaptive_quantization, Shapes::ShapeRef.new(shape: H264AdaptiveQuantization, location_name: "adaptiveQuantization"))
    H264Settings.add_member(:bitrate, Shapes::ShapeRef.new(shape: __integer, location_name: "bitrate"))
    H264Settings.add_member(:codec_level, Shapes::ShapeRef.new(shape: H264CodecLevel, location_name: "codecLevel"))
    H264Settings.add_member(:codec_profile, Shapes::ShapeRef.new(shape: H264CodecProfile, location_name: "codecProfile"))
    H264Settings.add_member(:entropy_encoding, Shapes::ShapeRef.new(shape: H264EntropyEncoding, location_name: "entropyEncoding"))
    H264Settings.add_member(:field_encoding, Shapes::ShapeRef.new(shape: H264FieldEncoding, location_name: "fieldEncoding"))
    H264Settings.add_member(:flicker_adaptive_quantization, Shapes::ShapeRef.new(shape: H264FlickerAdaptiveQuantization, location_name: "flickerAdaptiveQuantization"))
    H264Settings.add_member(:framerate_control, Shapes::ShapeRef.new(shape: H264FramerateControl, location_name: "framerateControl"))
    H264Settings.add_member(:framerate_conversion_algorithm, Shapes::ShapeRef.new(shape: H264FramerateConversionAlgorithm, location_name: "framerateConversionAlgorithm"))
    H264Settings.add_member(:framerate_denominator, Shapes::ShapeRef.new(shape: __integer, location_name: "framerateDenominator"))
    H264Settings.add_member(:framerate_numerator, Shapes::ShapeRef.new(shape: __integer, location_name: "framerateNumerator"))
    H264Settings.add_member(:gop_b_reference, Shapes::ShapeRef.new(shape: H264GopBReference, location_name: "gopBReference"))
    H264Settings.add_member(:gop_closed_cadence, Shapes::ShapeRef.new(shape: __integer, location_name: "gopClosedCadence"))
    H264Settings.add_member(:gop_size, Shapes::ShapeRef.new(shape: __double, location_name: "gopSize"))
    H264Settings.add_member(:gop_size_units, Shapes::ShapeRef.new(shape: H264GopSizeUnits, location_name: "gopSizeUnits"))
    H264Settings.add_member(:hrd_buffer_initial_fill_percentage, Shapes::ShapeRef.new(shape: __integer, location_name: "hrdBufferInitialFillPercentage"))
    H264Settings.add_member(:hrd_buffer_size, Shapes::ShapeRef.new(shape: __integer, location_name: "hrdBufferSize"))
    H264Settings.add_member(:interlace_mode, Shapes::ShapeRef.new(shape: H264InterlaceMode, location_name: "interlaceMode"))
    H264Settings.add_member(:max_bitrate, Shapes::ShapeRef.new(shape: __integer, location_name: "maxBitrate"))
    H264Settings.add_member(:min_i_interval, Shapes::ShapeRef.new(shape: __integer, location_name: "minIInterval"))
    H264Settings.add_member(:number_b_frames_between_reference_frames, Shapes::ShapeRef.new(shape: __integer, location_name: "numberBFramesBetweenReferenceFrames"))
    H264Settings.add_member(:number_reference_frames, Shapes::ShapeRef.new(shape: __integer, location_name: "numberReferenceFrames"))
    H264Settings.add_member(:par_control, Shapes::ShapeRef.new(shape: H264ParControl, location_name: "parControl"))
    H264Settings.add_member(:par_denominator, Shapes::ShapeRef.new(shape: __integer, location_name: "parDenominator"))
    H264Settings.add_member(:par_numerator, Shapes::ShapeRef.new(shape: __integer, location_name: "parNumerator"))
    H264Settings.add_member(:quality_tuning_level, Shapes::ShapeRef.new(shape: H264QualityTuningLevel, location_name: "qualityTuningLevel"))
    H264Settings.add_member(:rate_control_mode, Shapes::ShapeRef.new(shape: H264RateControlMode, location_name: "rateControlMode"))
    H264Settings.add_member(:repeat_pps, Shapes::ShapeRef.new(shape: H264RepeatPps, location_name: "repeatPps"))
    H264Settings.add_member(:scene_change_detect, Shapes::ShapeRef.new(shape: H264SceneChangeDetect, location_name: "sceneChangeDetect"))
    H264Settings.add_member(:slices, Shapes::ShapeRef.new(shape: __integer, location_name: "slices"))
    H264Settings.add_member(:slow_pal, Shapes::ShapeRef.new(shape: H264SlowPal, location_name: "slowPal"))
    H264Settings.add_member(:softness, Shapes::ShapeRef.new(shape: __integer, location_name: "softness"))
    H264Settings.add_member(:spatial_adaptive_quantization, Shapes::ShapeRef.new(shape: H264SpatialAdaptiveQuantization, location_name: "spatialAdaptiveQuantization"))
    H264Settings.add_member(:syntax, Shapes::ShapeRef.new(shape: H264Syntax, location_name: "syntax"))
    H264Settings.add_member(:telecine, Shapes::ShapeRef.new(shape: H264Telecine, location_name: "telecine"))
    H264Settings.add_member(:temporal_adaptive_quantization, Shapes::ShapeRef.new(shape: H264TemporalAdaptiveQuantization, location_name: "temporalAdaptiveQuantization"))
    H264Settings.add_member(:unregistered_sei_timecode, Shapes::ShapeRef.new(shape: H264UnregisteredSeiTimecode, location_name: "unregisteredSeiTimecode"))
    H264Settings.struct_class = Types::H264Settings

    H265Settings.add_member(:adaptive_quantization, Shapes::ShapeRef.new(shape: H265AdaptiveQuantization, location_name: "adaptiveQuantization"))
    H265Settings.add_member(:alternate_transfer_function_sei, Shapes::ShapeRef.new(shape: H265AlternateTransferFunctionSei, location_name: "alternateTransferFunctionSei"))
    H265Settings.add_member(:bitrate, Shapes::ShapeRef.new(shape: __integer, location_name: "bitrate"))
    H265Settings.add_member(:codec_level, Shapes::ShapeRef.new(shape: H265CodecLevel, location_name: "codecLevel"))
    H265Settings.add_member(:codec_profile, Shapes::ShapeRef.new(shape: H265CodecProfile, location_name: "codecProfile"))
    H265Settings.add_member(:flicker_adaptive_quantization, Shapes::ShapeRef.new(shape: H265FlickerAdaptiveQuantization, location_name: "flickerAdaptiveQuantization"))
    H265Settings.add_member(:framerate_control, Shapes::ShapeRef.new(shape: H265FramerateControl, location_name: "framerateControl"))
    H265Settings.add_member(:framerate_conversion_algorithm, Shapes::ShapeRef.new(shape: H265FramerateConversionAlgorithm, location_name: "framerateConversionAlgorithm"))
    H265Settings.add_member(:framerate_denominator, Shapes::ShapeRef.new(shape: __integer, location_name: "framerateDenominator"))
    H265Settings.add_member(:framerate_numerator, Shapes::ShapeRef.new(shape: __integer, location_name: "framerateNumerator"))
    H265Settings.add_member(:gop_b_reference, Shapes::ShapeRef.new(shape: H265GopBReference, location_name: "gopBReference"))
    H265Settings.add_member(:gop_closed_cadence, Shapes::ShapeRef.new(shape: __integer, location_name: "gopClosedCadence"))
    H265Settings.add_member(:gop_size, Shapes::ShapeRef.new(shape: __double, location_name: "gopSize"))
    H265Settings.add_member(:gop_size_units, Shapes::ShapeRef.new(shape: H265GopSizeUnits, location_name: "gopSizeUnits"))
    H265Settings.add_member(:hrd_buffer_initial_fill_percentage, Shapes::ShapeRef.new(shape: __integer, location_name: "hrdBufferInitialFillPercentage"))
    H265Settings.add_member(:hrd_buffer_size, Shapes::ShapeRef.new(shape: __integer, location_name: "hrdBufferSize"))
    H265Settings.add_member(:interlace_mode, Shapes::ShapeRef.new(shape: H265InterlaceMode, location_name: "interlaceMode"))
    H265Settings.add_member(:max_bitrate, Shapes::ShapeRef.new(shape: __integer, location_name: "maxBitrate"))
    H265Settings.add_member(:min_i_interval, Shapes::ShapeRef.new(shape: __integer, location_name: "minIInterval"))
    H265Settings.add_member(:number_b_frames_between_reference_frames, Shapes::ShapeRef.new(shape: __integer, location_name: "numberBFramesBetweenReferenceFrames"))
    H265Settings.add_member(:number_reference_frames, Shapes::ShapeRef.new(shape: __integer, location_name: "numberReferenceFrames"))
    H265Settings.add_member(:par_control, Shapes::ShapeRef.new(shape: H265ParControl, location_name: "parControl"))
    H265Settings.add_member(:par_denominator, Shapes::ShapeRef.new(shape: __integer, location_name: "parDenominator"))
    H265Settings.add_member(:par_numerator, Shapes::ShapeRef.new(shape: __integer, location_name: "parNumerator"))
    H265Settings.add_member(:quality_tuning_level, Shapes::ShapeRef.new(shape: H265QualityTuningLevel, location_name: "qualityTuningLevel"))
    H265Settings.add_member(:rate_control_mode, Shapes::ShapeRef.new(shape: H265RateControlMode, location_name: "rateControlMode"))
    H265Settings.add_member(:sample_adaptive_offset_filter_mode, Shapes::ShapeRef.new(shape: H265SampleAdaptiveOffsetFilterMode, location_name: "sampleAdaptiveOffsetFilterMode"))
    H265Settings.add_member(:scene_change_detect, Shapes::ShapeRef.new(shape: H265SceneChangeDetect, location_name: "sceneChangeDetect"))
    H265Settings.add_member(:slices, Shapes::ShapeRef.new(shape: __integer, location_name: "slices"))
    H265Settings.add_member(:slow_pal, Shapes::ShapeRef.new(shape: H265SlowPal, location_name: "slowPal"))
    H265Settings.add_member(:spatial_adaptive_quantization, Shapes::ShapeRef.new(shape: H265SpatialAdaptiveQuantization, location_name: "spatialAdaptiveQuantization"))
    H265Settings.add_member(:telecine, Shapes::ShapeRef.new(shape: H265Telecine, location_name: "telecine"))
    H265Settings.add_member(:temporal_adaptive_quantization, Shapes::ShapeRef.new(shape: H265TemporalAdaptiveQuantization, location_name: "temporalAdaptiveQuantization"))
    H265Settings.add_member(:temporal_ids, Shapes::ShapeRef.new(shape: H265TemporalIds, location_name: "temporalIds"))
    H265Settings.add_member(:tiles, Shapes::ShapeRef.new(shape: H265Tiles, location_name: "tiles"))
    H265Settings.add_member(:unregistered_sei_timecode, Shapes::ShapeRef.new(shape: H265UnregisteredSeiTimecode, location_name: "unregisteredSeiTimecode"))
    H265Settings.struct_class = Types::H265Settings

    Hdr10Metadata.add_member(:blue_primary_x, Shapes::ShapeRef.new(shape: __integer, location_name: "bluePrimaryX"))
    Hdr10Metadata.add_member(:blue_primary_y, Shapes::ShapeRef.new(shape: __integer, location_name: "bluePrimaryY"))
    Hdr10Metadata.add_member(:green_primary_x, Shapes::ShapeRef.new(shape: __integer, location_name: "greenPrimaryX"))
    Hdr10Metadata.add_member(:green_primary_y, Shapes::ShapeRef.new(shape: __integer, location_name: "greenPrimaryY"))
    Hdr10Metadata.add_member(:max_content_light_level, Shapes::ShapeRef.new(shape: __integer, location_name: "maxContentLightLevel"))
    Hdr10Metadata.add_member(:max_frame_average_light_level, Shapes::ShapeRef.new(shape: __integer, location_name: "maxFrameAverageLightLevel"))
    Hdr10Metadata.add_member(:max_luminance, Shapes::ShapeRef.new(shape: __integer, location_name: "maxLuminance"))
    Hdr10Metadata.add_member(:min_luminance, Shapes::ShapeRef.new(shape: __integer, location_name: "minLuminance"))
    Hdr10Metadata.add_member(:red_primary_x, Shapes::ShapeRef.new(shape: __integer, location_name: "redPrimaryX"))
    Hdr10Metadata.add_member(:red_primary_y, Shapes::ShapeRef.new(shape: __integer, location_name: "redPrimaryY"))
    Hdr10Metadata.add_member(:white_point_x, Shapes::ShapeRef.new(shape: __integer, location_name: "whitePointX"))
    Hdr10Metadata.add_member(:white_point_y, Shapes::ShapeRef.new(shape: __integer, location_name: "whitePointY"))
    Hdr10Metadata.struct_class = Types::Hdr10Metadata

    HlsCaptionLanguageMapping.add_member(:caption_channel, Shapes::ShapeRef.new(shape: __integer, location_name: "captionChannel"))
    HlsCaptionLanguageMapping.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, location_name: "languageCode"))
    HlsCaptionLanguageMapping.add_member(:language_description, Shapes::ShapeRef.new(shape: __string, location_name: "languageDescription"))
    HlsCaptionLanguageMapping.struct_class = Types::HlsCaptionLanguageMapping

    HlsEncryptionSettings.add_member(:constant_initialization_vector, Shapes::ShapeRef.new(shape: __string, location_name: "constantInitializationVector"))
    HlsEncryptionSettings.add_member(:encryption_method, Shapes::ShapeRef.new(shape: HlsEncryptionType, location_name: "encryptionMethod"))
    HlsEncryptionSettings.add_member(:initialization_vector_in_manifest, Shapes::ShapeRef.new(shape: HlsInitializationVectorInManifest, location_name: "initializationVectorInManifest"))
    HlsEncryptionSettings.add_member(:speke_key_provider, Shapes::ShapeRef.new(shape: SpekeKeyProvider, location_name: "spekeKeyProvider"))
    HlsEncryptionSettings.add_member(:static_key_provider, Shapes::ShapeRef.new(shape: StaticKeyProvider, location_name: "staticKeyProvider"))
    HlsEncryptionSettings.add_member(:type, Shapes::ShapeRef.new(shape: HlsKeyProviderType, location_name: "type"))
    HlsEncryptionSettings.struct_class = Types::HlsEncryptionSettings

    HlsGroupSettings.add_member(:ad_markers, Shapes::ShapeRef.new(shape: ListOfHlsAdMarkers, location_name: "adMarkers"))
    HlsGroupSettings.add_member(:base_url, Shapes::ShapeRef.new(shape: __string, location_name: "baseUrl"))
    HlsGroupSettings.add_member(:caption_language_mappings, Shapes::ShapeRef.new(shape: ListOfHlsCaptionLanguageMapping, location_name: "captionLanguageMappings"))
    HlsGroupSettings.add_member(:caption_language_setting, Shapes::ShapeRef.new(shape: HlsCaptionLanguageSetting, location_name: "captionLanguageSetting"))
    HlsGroupSettings.add_member(:client_cache, Shapes::ShapeRef.new(shape: HlsClientCache, location_name: "clientCache"))
    HlsGroupSettings.add_member(:codec_specification, Shapes::ShapeRef.new(shape: HlsCodecSpecification, location_name: "codecSpecification"))
    HlsGroupSettings.add_member(:destination, Shapes::ShapeRef.new(shape: __string, location_name: "destination"))
    HlsGroupSettings.add_member(:directory_structure, Shapes::ShapeRef.new(shape: HlsDirectoryStructure, location_name: "directoryStructure"))
    HlsGroupSettings.add_member(:encryption, Shapes::ShapeRef.new(shape: HlsEncryptionSettings, location_name: "encryption"))
    HlsGroupSettings.add_member(:manifest_compression, Shapes::ShapeRef.new(shape: HlsManifestCompression, location_name: "manifestCompression"))
    HlsGroupSettings.add_member(:manifest_duration_format, Shapes::ShapeRef.new(shape: HlsManifestDurationFormat, location_name: "manifestDurationFormat"))
    HlsGroupSettings.add_member(:min_segment_length, Shapes::ShapeRef.new(shape: __integer, location_name: "minSegmentLength"))
    HlsGroupSettings.add_member(:output_selection, Shapes::ShapeRef.new(shape: HlsOutputSelection, location_name: "outputSelection"))
    HlsGroupSettings.add_member(:program_date_time, Shapes::ShapeRef.new(shape: HlsProgramDateTime, location_name: "programDateTime"))
    HlsGroupSettings.add_member(:program_date_time_period, Shapes::ShapeRef.new(shape: __integer, location_name: "programDateTimePeriod"))
    HlsGroupSettings.add_member(:segment_control, Shapes::ShapeRef.new(shape: HlsSegmentControl, location_name: "segmentControl"))
    HlsGroupSettings.add_member(:segment_length, Shapes::ShapeRef.new(shape: __integer, location_name: "segmentLength"))
    HlsGroupSettings.add_member(:segments_per_subdirectory, Shapes::ShapeRef.new(shape: __integer, location_name: "segmentsPerSubdirectory"))
    HlsGroupSettings.add_member(:stream_inf_resolution, Shapes::ShapeRef.new(shape: HlsStreamInfResolution, location_name: "streamInfResolution"))
    HlsGroupSettings.add_member(:timed_metadata_id_3_frame, Shapes::ShapeRef.new(shape: HlsTimedMetadataId3Frame, location_name: "timedMetadataId3Frame"))
    HlsGroupSettings.add_member(:timed_metadata_id_3_period, Shapes::ShapeRef.new(shape: __integer, location_name: "timedMetadataId3Period"))
    HlsGroupSettings.add_member(:timestamp_delta_milliseconds, Shapes::ShapeRef.new(shape: __integer, location_name: "timestampDeltaMilliseconds"))
    HlsGroupSettings.struct_class = Types::HlsGroupSettings

    HlsSettings.add_member(:audio_group_id, Shapes::ShapeRef.new(shape: __string, location_name: "audioGroupId"))
    HlsSettings.add_member(:audio_rendition_sets, Shapes::ShapeRef.new(shape: __string, location_name: "audioRenditionSets"))
    HlsSettings.add_member(:audio_track_type, Shapes::ShapeRef.new(shape: HlsAudioTrackType, location_name: "audioTrackType"))
    HlsSettings.add_member(:i_frame_only_manifest, Shapes::ShapeRef.new(shape: HlsIFrameOnlyManifest, location_name: "iFrameOnlyManifest"))
    HlsSettings.add_member(:segment_modifier, Shapes::ShapeRef.new(shape: __string, location_name: "segmentModifier"))
    HlsSettings.struct_class = Types::HlsSettings

    Id3Insertion.add_member(:id_3, Shapes::ShapeRef.new(shape: __string, location_name: "id3"))
    Id3Insertion.add_member(:timecode, Shapes::ShapeRef.new(shape: __string, location_name: "timecode"))
    Id3Insertion.struct_class = Types::Id3Insertion

    ImageInserter.add_member(:insertable_images, Shapes::ShapeRef.new(shape: ListOfInsertableImage, location_name: "insertableImages"))
    ImageInserter.struct_class = Types::ImageInserter

    Input.add_member(:audio_selector_groups, Shapes::ShapeRef.new(shape: MapOfAudioSelectorGroup, location_name: "audioSelectorGroups"))
    Input.add_member(:audio_selectors, Shapes::ShapeRef.new(shape: MapOfAudioSelector, location_name: "audioSelectors"))
    Input.add_member(:caption_selectors, Shapes::ShapeRef.new(shape: MapOfCaptionSelector, location_name: "captionSelectors"))
    Input.add_member(:deblock_filter, Shapes::ShapeRef.new(shape: InputDeblockFilter, location_name: "deblockFilter"))
    Input.add_member(:denoise_filter, Shapes::ShapeRef.new(shape: InputDenoiseFilter, location_name: "denoiseFilter"))
    Input.add_member(:file_input, Shapes::ShapeRef.new(shape: __string, location_name: "fileInput"))
    Input.add_member(:filter_enable, Shapes::ShapeRef.new(shape: InputFilterEnable, location_name: "filterEnable"))
    Input.add_member(:filter_strength, Shapes::ShapeRef.new(shape: __integer, location_name: "filterStrength"))
    Input.add_member(:input_clippings, Shapes::ShapeRef.new(shape: ListOfInputClipping, location_name: "inputClippings"))
    Input.add_member(:program_number, Shapes::ShapeRef.new(shape: __integer, location_name: "programNumber"))
    Input.add_member(:psi_control, Shapes::ShapeRef.new(shape: InputPsiControl, location_name: "psiControl"))
    Input.add_member(:timecode_source, Shapes::ShapeRef.new(shape: InputTimecodeSource, location_name: "timecodeSource"))
    Input.add_member(:video_selector, Shapes::ShapeRef.new(shape: VideoSelector, location_name: "videoSelector"))
    Input.struct_class = Types::Input

    InputClipping.add_member(:end_timecode, Shapes::ShapeRef.new(shape: __string, location_name: "endTimecode"))
    InputClipping.add_member(:start_timecode, Shapes::ShapeRef.new(shape: __string, location_name: "startTimecode"))
    InputClipping.struct_class = Types::InputClipping

    InputTemplate.add_member(:audio_selector_groups, Shapes::ShapeRef.new(shape: MapOfAudioSelectorGroup, location_name: "audioSelectorGroups"))
    InputTemplate.add_member(:audio_selectors, Shapes::ShapeRef.new(shape: MapOfAudioSelector, location_name: "audioSelectors"))
    InputTemplate.add_member(:caption_selectors, Shapes::ShapeRef.new(shape: MapOfCaptionSelector, location_name: "captionSelectors"))
    InputTemplate.add_member(:deblock_filter, Shapes::ShapeRef.new(shape: InputDeblockFilter, location_name: "deblockFilter"))
    InputTemplate.add_member(:denoise_filter, Shapes::ShapeRef.new(shape: InputDenoiseFilter, location_name: "denoiseFilter"))
    InputTemplate.add_member(:filter_enable, Shapes::ShapeRef.new(shape: InputFilterEnable, location_name: "filterEnable"))
    InputTemplate.add_member(:filter_strength, Shapes::ShapeRef.new(shape: __integer, location_name: "filterStrength"))
    InputTemplate.add_member(:input_clippings, Shapes::ShapeRef.new(shape: ListOfInputClipping, location_name: "inputClippings"))
    InputTemplate.add_member(:program_number, Shapes::ShapeRef.new(shape: __integer, location_name: "programNumber"))
    InputTemplate.add_member(:psi_control, Shapes::ShapeRef.new(shape: InputPsiControl, location_name: "psiControl"))
    InputTemplate.add_member(:timecode_source, Shapes::ShapeRef.new(shape: InputTimecodeSource, location_name: "timecodeSource"))
    InputTemplate.add_member(:video_selector, Shapes::ShapeRef.new(shape: VideoSelector, location_name: "videoSelector"))
    InputTemplate.struct_class = Types::InputTemplate

    InsertableImage.add_member(:duration, Shapes::ShapeRef.new(shape: __integer, location_name: "duration"))
    InsertableImage.add_member(:fade_in, Shapes::ShapeRef.new(shape: __integer, location_name: "fadeIn"))
    InsertableImage.add_member(:fade_out, Shapes::ShapeRef.new(shape: __integer, location_name: "fadeOut"))
    InsertableImage.add_member(:height, Shapes::ShapeRef.new(shape: __integer, location_name: "height"))
    InsertableImage.add_member(:image_inserter_input, Shapes::ShapeRef.new(shape: __string, location_name: "imageInserterInput"))
    InsertableImage.add_member(:image_x, Shapes::ShapeRef.new(shape: __integer, location_name: "imageX"))
    InsertableImage.add_member(:image_y, Shapes::ShapeRef.new(shape: __integer, location_name: "imageY"))
    InsertableImage.add_member(:layer, Shapes::ShapeRef.new(shape: __integer, location_name: "layer"))
    InsertableImage.add_member(:opacity, Shapes::ShapeRef.new(shape: __integer, location_name: "opacity"))
    InsertableImage.add_member(:start_time, Shapes::ShapeRef.new(shape: __string, location_name: "startTime"))
    InsertableImage.add_member(:width, Shapes::ShapeRef.new(shape: __integer, location_name: "width"))
    InsertableImage.struct_class = Types::InsertableImage

    Job.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    Job.add_member(:created_at, Shapes::ShapeRef.new(shape: __timestamp, location_name: "createdAt"))
    Job.add_member(:error_code, Shapes::ShapeRef.new(shape: __integer, location_name: "errorCode"))
    Job.add_member(:error_message, Shapes::ShapeRef.new(shape: __string, location_name: "errorMessage"))
    Job.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    Job.add_member(:job_template, Shapes::ShapeRef.new(shape: __string, location_name: "jobTemplate"))
    Job.add_member(:output_group_details, Shapes::ShapeRef.new(shape: ListOfOutputGroupDetail, location_name: "outputGroupDetails"))
    Job.add_member(:queue, Shapes::ShapeRef.new(shape: __string, location_name: "queue"))
    Job.add_member(:role, Shapes::ShapeRef.new(shape: __string, location_name: "role"))
    Job.add_member(:settings, Shapes::ShapeRef.new(shape: JobSettings, location_name: "settings"))
    Job.add_member(:status, Shapes::ShapeRef.new(shape: JobStatus, location_name: "status"))
    Job.add_member(:timing, Shapes::ShapeRef.new(shape: Timing, location_name: "timing"))
    Job.add_member(:user_metadata, Shapes::ShapeRef.new(shape: MapOf__string, location_name: "userMetadata"))
    Job.struct_class = Types::Job

    JobSettings.add_member(:ad_avail_offset, Shapes::ShapeRef.new(shape: __integer, location_name: "adAvailOffset"))
    JobSettings.add_member(:avail_blanking, Shapes::ShapeRef.new(shape: AvailBlanking, location_name: "availBlanking"))
    JobSettings.add_member(:inputs, Shapes::ShapeRef.new(shape: ListOfInput, location_name: "inputs"))
    JobSettings.add_member(:nielsen_configuration, Shapes::ShapeRef.new(shape: NielsenConfiguration, location_name: "nielsenConfiguration"))
    JobSettings.add_member(:output_groups, Shapes::ShapeRef.new(shape: ListOfOutputGroup, location_name: "outputGroups"))
    JobSettings.add_member(:timecode_config, Shapes::ShapeRef.new(shape: TimecodeConfig, location_name: "timecodeConfig"))
    JobSettings.add_member(:timed_metadata_insertion, Shapes::ShapeRef.new(shape: TimedMetadataInsertion, location_name: "timedMetadataInsertion"))
    JobSettings.struct_class = Types::JobSettings

    JobTemplate.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    JobTemplate.add_member(:category, Shapes::ShapeRef.new(shape: __string, location_name: "category"))
    JobTemplate.add_member(:created_at, Shapes::ShapeRef.new(shape: __timestamp, location_name: "createdAt"))
    JobTemplate.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    JobTemplate.add_member(:last_updated, Shapes::ShapeRef.new(shape: __timestamp, location_name: "lastUpdated"))
    JobTemplate.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    JobTemplate.add_member(:queue, Shapes::ShapeRef.new(shape: __string, location_name: "queue"))
    JobTemplate.add_member(:settings, Shapes::ShapeRef.new(shape: JobTemplateSettings, location_name: "settings"))
    JobTemplate.add_member(:type, Shapes::ShapeRef.new(shape: Type, location_name: "type"))
    JobTemplate.struct_class = Types::JobTemplate

    JobTemplateSettings.add_member(:ad_avail_offset, Shapes::ShapeRef.new(shape: __integer, location_name: "adAvailOffset"))
    JobTemplateSettings.add_member(:avail_blanking, Shapes::ShapeRef.new(shape: AvailBlanking, location_name: "availBlanking"))
    JobTemplateSettings.add_member(:inputs, Shapes::ShapeRef.new(shape: ListOfInputTemplate, location_name: "inputs"))
    JobTemplateSettings.add_member(:nielsen_configuration, Shapes::ShapeRef.new(shape: NielsenConfiguration, location_name: "nielsenConfiguration"))
    JobTemplateSettings.add_member(:output_groups, Shapes::ShapeRef.new(shape: ListOfOutputGroup, location_name: "outputGroups"))
    JobTemplateSettings.add_member(:timecode_config, Shapes::ShapeRef.new(shape: TimecodeConfig, location_name: "timecodeConfig"))
    JobTemplateSettings.add_member(:timed_metadata_insertion, Shapes::ShapeRef.new(shape: TimedMetadataInsertion, location_name: "timedMetadataInsertion"))
    JobTemplateSettings.struct_class = Types::JobTemplateSettings

    ListJobTemplatesRequest.add_member(:category, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "category"))
    ListJobTemplatesRequest.add_member(:list_by, Shapes::ShapeRef.new(shape: JobTemplateListBy, location: "querystring", location_name: "listBy"))
    ListJobTemplatesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: __integer, location: "querystring", location_name: "maxResults"))
    ListJobTemplatesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListJobTemplatesRequest.add_member(:order, Shapes::ShapeRef.new(shape: Order, location: "querystring", location_name: "order"))
    ListJobTemplatesRequest.struct_class = Types::ListJobTemplatesRequest

    ListJobTemplatesResponse.add_member(:job_templates, Shapes::ShapeRef.new(shape: ListOfJobTemplate, location_name: "jobTemplates"))
    ListJobTemplatesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListJobTemplatesResponse.struct_class = Types::ListJobTemplatesResponse

    ListJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: __integer, location: "querystring", location_name: "maxResults"))
    ListJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListJobsRequest.add_member(:order, Shapes::ShapeRef.new(shape: Order, location: "querystring", location_name: "order"))
    ListJobsRequest.add_member(:queue, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "queue"))
    ListJobsRequest.add_member(:status, Shapes::ShapeRef.new(shape: JobStatus, location: "querystring", location_name: "status"))
    ListJobsRequest.struct_class = Types::ListJobsRequest

    ListJobsResponse.add_member(:jobs, Shapes::ShapeRef.new(shape: ListOfJob, location_name: "jobs"))
    ListJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListJobsResponse.struct_class = Types::ListJobsResponse

    ListOfAudioDescription.member = Shapes::ShapeRef.new(shape: AudioDescription)

    ListOfCaptionDescription.member = Shapes::ShapeRef.new(shape: CaptionDescription)

    ListOfCaptionDescriptionPreset.member = Shapes::ShapeRef.new(shape: CaptionDescriptionPreset)

    ListOfEndpoint.member = Shapes::ShapeRef.new(shape: Endpoint)

    ListOfHlsAdMarkers.member = Shapes::ShapeRef.new(shape: HlsAdMarkers)

    ListOfHlsCaptionLanguageMapping.member = Shapes::ShapeRef.new(shape: HlsCaptionLanguageMapping)

    ListOfId3Insertion.member = Shapes::ShapeRef.new(shape: Id3Insertion)

    ListOfInput.member = Shapes::ShapeRef.new(shape: Input)

    ListOfInputClipping.member = Shapes::ShapeRef.new(shape: InputClipping)

    ListOfInputTemplate.member = Shapes::ShapeRef.new(shape: InputTemplate)

    ListOfInsertableImage.member = Shapes::ShapeRef.new(shape: InsertableImage)

    ListOfJob.member = Shapes::ShapeRef.new(shape: Job)

    ListOfJobTemplate.member = Shapes::ShapeRef.new(shape: JobTemplate)

    ListOfOutput.member = Shapes::ShapeRef.new(shape: Output)

    ListOfOutputChannelMapping.member = Shapes::ShapeRef.new(shape: OutputChannelMapping)

    ListOfOutputDetail.member = Shapes::ShapeRef.new(shape: OutputDetail)

    ListOfOutputGroup.member = Shapes::ShapeRef.new(shape: OutputGroup)

    ListOfOutputGroupDetail.member = Shapes::ShapeRef.new(shape: OutputGroupDetail)

    ListOfPreset.member = Shapes::ShapeRef.new(shape: Preset)

    ListOfQueue.member = Shapes::ShapeRef.new(shape: Queue)

    ListOf__integer.member = Shapes::ShapeRef.new(shape: __integer)

    ListOf__string.member = Shapes::ShapeRef.new(shape: __string)

    ListPresetsRequest.add_member(:category, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "category"))
    ListPresetsRequest.add_member(:list_by, Shapes::ShapeRef.new(shape: PresetListBy, location: "querystring", location_name: "listBy"))
    ListPresetsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: __integer, location: "querystring", location_name: "maxResults"))
    ListPresetsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListPresetsRequest.add_member(:order, Shapes::ShapeRef.new(shape: Order, location: "querystring", location_name: "order"))
    ListPresetsRequest.struct_class = Types::ListPresetsRequest

    ListPresetsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListPresetsResponse.add_member(:presets, Shapes::ShapeRef.new(shape: ListOfPreset, location_name: "presets"))
    ListPresetsResponse.struct_class = Types::ListPresetsResponse

    ListQueuesRequest.add_member(:list_by, Shapes::ShapeRef.new(shape: QueueListBy, location: "querystring", location_name: "listBy"))
    ListQueuesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: __integer, location: "querystring", location_name: "maxResults"))
    ListQueuesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListQueuesRequest.add_member(:order, Shapes::ShapeRef.new(shape: Order, location: "querystring", location_name: "order"))
    ListQueuesRequest.struct_class = Types::ListQueuesRequest

    ListQueuesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListQueuesResponse.add_member(:queues, Shapes::ShapeRef.new(shape: ListOfQueue, location_name: "queues"))
    ListQueuesResponse.struct_class = Types::ListQueuesResponse

    M2tsSettings.add_member(:audio_buffer_model, Shapes::ShapeRef.new(shape: M2tsAudioBufferModel, location_name: "audioBufferModel"))
    M2tsSettings.add_member(:audio_frames_per_pes, Shapes::ShapeRef.new(shape: __integer, location_name: "audioFramesPerPes"))
    M2tsSettings.add_member(:audio_pids, Shapes::ShapeRef.new(shape: ListOf__integer, location_name: "audioPids"))
    M2tsSettings.add_member(:bitrate, Shapes::ShapeRef.new(shape: __integer, location_name: "bitrate"))
    M2tsSettings.add_member(:buffer_model, Shapes::ShapeRef.new(shape: M2tsBufferModel, location_name: "bufferModel"))
    M2tsSettings.add_member(:dvb_nit_settings, Shapes::ShapeRef.new(shape: DvbNitSettings, location_name: "dvbNitSettings"))
    M2tsSettings.add_member(:dvb_sdt_settings, Shapes::ShapeRef.new(shape: DvbSdtSettings, location_name: "dvbSdtSettings"))
    M2tsSettings.add_member(:dvb_sub_pids, Shapes::ShapeRef.new(shape: ListOf__integer, location_name: "dvbSubPids"))
    M2tsSettings.add_member(:dvb_tdt_settings, Shapes::ShapeRef.new(shape: DvbTdtSettings, location_name: "dvbTdtSettings"))
    M2tsSettings.add_member(:dvb_teletext_pid, Shapes::ShapeRef.new(shape: __integer, location_name: "dvbTeletextPid"))
    M2tsSettings.add_member(:ebp_audio_interval, Shapes::ShapeRef.new(shape: M2tsEbpAudioInterval, location_name: "ebpAudioInterval"))
    M2tsSettings.add_member(:ebp_placement, Shapes::ShapeRef.new(shape: M2tsEbpPlacement, location_name: "ebpPlacement"))
    M2tsSettings.add_member(:es_rate_in_pes, Shapes::ShapeRef.new(shape: M2tsEsRateInPes, location_name: "esRateInPes"))
    M2tsSettings.add_member(:fragment_time, Shapes::ShapeRef.new(shape: __double, location_name: "fragmentTime"))
    M2tsSettings.add_member(:max_pcr_interval, Shapes::ShapeRef.new(shape: __integer, location_name: "maxPcrInterval"))
    M2tsSettings.add_member(:min_ebp_interval, Shapes::ShapeRef.new(shape: __integer, location_name: "minEbpInterval"))
    M2tsSettings.add_member(:nielsen_id_3, Shapes::ShapeRef.new(shape: M2tsNielsenId3, location_name: "nielsenId3"))
    M2tsSettings.add_member(:null_packet_bitrate, Shapes::ShapeRef.new(shape: __double, location_name: "nullPacketBitrate"))
    M2tsSettings.add_member(:pat_interval, Shapes::ShapeRef.new(shape: __integer, location_name: "patInterval"))
    M2tsSettings.add_member(:pcr_control, Shapes::ShapeRef.new(shape: M2tsPcrControl, location_name: "pcrControl"))
    M2tsSettings.add_member(:pcr_pid, Shapes::ShapeRef.new(shape: __integer, location_name: "pcrPid"))
    M2tsSettings.add_member(:pmt_interval, Shapes::ShapeRef.new(shape: __integer, location_name: "pmtInterval"))
    M2tsSettings.add_member(:pmt_pid, Shapes::ShapeRef.new(shape: __integer, location_name: "pmtPid"))
    M2tsSettings.add_member(:private_metadata_pid, Shapes::ShapeRef.new(shape: __integer, location_name: "privateMetadataPid"))
    M2tsSettings.add_member(:program_number, Shapes::ShapeRef.new(shape: __integer, location_name: "programNumber"))
    M2tsSettings.add_member(:rate_mode, Shapes::ShapeRef.new(shape: M2tsRateMode, location_name: "rateMode"))
    M2tsSettings.add_member(:scte_35_pid, Shapes::ShapeRef.new(shape: __integer, location_name: "scte35Pid"))
    M2tsSettings.add_member(:scte_35_source, Shapes::ShapeRef.new(shape: M2tsScte35Source, location_name: "scte35Source"))
    M2tsSettings.add_member(:segmentation_markers, Shapes::ShapeRef.new(shape: M2tsSegmentationMarkers, location_name: "segmentationMarkers"))
    M2tsSettings.add_member(:segmentation_style, Shapes::ShapeRef.new(shape: M2tsSegmentationStyle, location_name: "segmentationStyle"))
    M2tsSettings.add_member(:segmentation_time, Shapes::ShapeRef.new(shape: __double, location_name: "segmentationTime"))
    M2tsSettings.add_member(:timed_metadata_pid, Shapes::ShapeRef.new(shape: __integer, location_name: "timedMetadataPid"))
    M2tsSettings.add_member(:transport_stream_id, Shapes::ShapeRef.new(shape: __integer, location_name: "transportStreamId"))
    M2tsSettings.add_member(:video_pid, Shapes::ShapeRef.new(shape: __integer, location_name: "videoPid"))
    M2tsSettings.struct_class = Types::M2tsSettings

    M3u8Settings.add_member(:audio_frames_per_pes, Shapes::ShapeRef.new(shape: __integer, location_name: "audioFramesPerPes"))
    M3u8Settings.add_member(:audio_pids, Shapes::ShapeRef.new(shape: ListOf__integer, location_name: "audioPids"))
    M3u8Settings.add_member(:nielsen_id_3, Shapes::ShapeRef.new(shape: M3u8NielsenId3, location_name: "nielsenId3"))
    M3u8Settings.add_member(:pat_interval, Shapes::ShapeRef.new(shape: __integer, location_name: "patInterval"))
    M3u8Settings.add_member(:pcr_control, Shapes::ShapeRef.new(shape: M3u8PcrControl, location_name: "pcrControl"))
    M3u8Settings.add_member(:pcr_pid, Shapes::ShapeRef.new(shape: __integer, location_name: "pcrPid"))
    M3u8Settings.add_member(:pmt_interval, Shapes::ShapeRef.new(shape: __integer, location_name: "pmtInterval"))
    M3u8Settings.add_member(:pmt_pid, Shapes::ShapeRef.new(shape: __integer, location_name: "pmtPid"))
    M3u8Settings.add_member(:private_metadata_pid, Shapes::ShapeRef.new(shape: __integer, location_name: "privateMetadataPid"))
    M3u8Settings.add_member(:program_number, Shapes::ShapeRef.new(shape: __integer, location_name: "programNumber"))
    M3u8Settings.add_member(:scte_35_pid, Shapes::ShapeRef.new(shape: __integer, location_name: "scte35Pid"))
    M3u8Settings.add_member(:scte_35_source, Shapes::ShapeRef.new(shape: M3u8Scte35Source, location_name: "scte35Source"))
    M3u8Settings.add_member(:timed_metadata, Shapes::ShapeRef.new(shape: TimedMetadata, location_name: "timedMetadata"))
    M3u8Settings.add_member(:timed_metadata_pid, Shapes::ShapeRef.new(shape: __integer, location_name: "timedMetadataPid"))
    M3u8Settings.add_member(:transport_stream_id, Shapes::ShapeRef.new(shape: __integer, location_name: "transportStreamId"))
    M3u8Settings.add_member(:video_pid, Shapes::ShapeRef.new(shape: __integer, location_name: "videoPid"))
    M3u8Settings.struct_class = Types::M3u8Settings

    MapOfAudioSelector.key = Shapes::ShapeRef.new(shape: __string)
    MapOfAudioSelector.value = Shapes::ShapeRef.new(shape: AudioSelector)

    MapOfAudioSelectorGroup.key = Shapes::ShapeRef.new(shape: __string)
    MapOfAudioSelectorGroup.value = Shapes::ShapeRef.new(shape: AudioSelectorGroup)

    MapOfCaptionSelector.key = Shapes::ShapeRef.new(shape: __string)
    MapOfCaptionSelector.value = Shapes::ShapeRef.new(shape: CaptionSelector)

    MapOf__string.key = Shapes::ShapeRef.new(shape: __string)
    MapOf__string.value = Shapes::ShapeRef.new(shape: __string)

    MovSettings.add_member(:clap_atom, Shapes::ShapeRef.new(shape: MovClapAtom, location_name: "clapAtom"))
    MovSettings.add_member(:cslg_atom, Shapes::ShapeRef.new(shape: MovCslgAtom, location_name: "cslgAtom"))
    MovSettings.add_member(:mpeg_2_four_cc_control, Shapes::ShapeRef.new(shape: MovMpeg2FourCCControl, location_name: "mpeg2FourCCControl"))
    MovSettings.add_member(:padding_control, Shapes::ShapeRef.new(shape: MovPaddingControl, location_name: "paddingControl"))
    MovSettings.add_member(:reference, Shapes::ShapeRef.new(shape: MovReference, location_name: "reference"))
    MovSettings.struct_class = Types::MovSettings

    Mp2Settings.add_member(:bitrate, Shapes::ShapeRef.new(shape: __integer, location_name: "bitrate"))
    Mp2Settings.add_member(:channels, Shapes::ShapeRef.new(shape: __integer, location_name: "channels"))
    Mp2Settings.add_member(:sample_rate, Shapes::ShapeRef.new(shape: __integer, location_name: "sampleRate"))
    Mp2Settings.struct_class = Types::Mp2Settings

    Mp4Settings.add_member(:cslg_atom, Shapes::ShapeRef.new(shape: Mp4CslgAtom, location_name: "cslgAtom"))
    Mp4Settings.add_member(:free_space_box, Shapes::ShapeRef.new(shape: Mp4FreeSpaceBox, location_name: "freeSpaceBox"))
    Mp4Settings.add_member(:moov_placement, Shapes::ShapeRef.new(shape: Mp4MoovPlacement, location_name: "moovPlacement"))
    Mp4Settings.add_member(:mp_4_major_brand, Shapes::ShapeRef.new(shape: __string, location_name: "mp4MajorBrand"))
    Mp4Settings.struct_class = Types::Mp4Settings

    Mpeg2Settings.add_member(:adaptive_quantization, Shapes::ShapeRef.new(shape: Mpeg2AdaptiveQuantization, location_name: "adaptiveQuantization"))
    Mpeg2Settings.add_member(:bitrate, Shapes::ShapeRef.new(shape: __integer, location_name: "bitrate"))
    Mpeg2Settings.add_member(:codec_level, Shapes::ShapeRef.new(shape: Mpeg2CodecLevel, location_name: "codecLevel"))
    Mpeg2Settings.add_member(:codec_profile, Shapes::ShapeRef.new(shape: Mpeg2CodecProfile, location_name: "codecProfile"))
    Mpeg2Settings.add_member(:framerate_control, Shapes::ShapeRef.new(shape: Mpeg2FramerateControl, location_name: "framerateControl"))
    Mpeg2Settings.add_member(:framerate_conversion_algorithm, Shapes::ShapeRef.new(shape: Mpeg2FramerateConversionAlgorithm, location_name: "framerateConversionAlgorithm"))
    Mpeg2Settings.add_member(:framerate_denominator, Shapes::ShapeRef.new(shape: __integer, location_name: "framerateDenominator"))
    Mpeg2Settings.add_member(:framerate_numerator, Shapes::ShapeRef.new(shape: __integer, location_name: "framerateNumerator"))
    Mpeg2Settings.add_member(:gop_closed_cadence, Shapes::ShapeRef.new(shape: __integer, location_name: "gopClosedCadence"))
    Mpeg2Settings.add_member(:gop_size, Shapes::ShapeRef.new(shape: __double, location_name: "gopSize"))
    Mpeg2Settings.add_member(:gop_size_units, Shapes::ShapeRef.new(shape: Mpeg2GopSizeUnits, location_name: "gopSizeUnits"))
    Mpeg2Settings.add_member(:hrd_buffer_initial_fill_percentage, Shapes::ShapeRef.new(shape: __integer, location_name: "hrdBufferInitialFillPercentage"))
    Mpeg2Settings.add_member(:hrd_buffer_size, Shapes::ShapeRef.new(shape: __integer, location_name: "hrdBufferSize"))
    Mpeg2Settings.add_member(:interlace_mode, Shapes::ShapeRef.new(shape: Mpeg2InterlaceMode, location_name: "interlaceMode"))
    Mpeg2Settings.add_member(:intra_dc_precision, Shapes::ShapeRef.new(shape: Mpeg2IntraDcPrecision, location_name: "intraDcPrecision"))
    Mpeg2Settings.add_member(:max_bitrate, Shapes::ShapeRef.new(shape: __integer, location_name: "maxBitrate"))
    Mpeg2Settings.add_member(:min_i_interval, Shapes::ShapeRef.new(shape: __integer, location_name: "minIInterval"))
    Mpeg2Settings.add_member(:number_b_frames_between_reference_frames, Shapes::ShapeRef.new(shape: __integer, location_name: "numberBFramesBetweenReferenceFrames"))
    Mpeg2Settings.add_member(:par_control, Shapes::ShapeRef.new(shape: Mpeg2ParControl, location_name: "parControl"))
    Mpeg2Settings.add_member(:par_denominator, Shapes::ShapeRef.new(shape: __integer, location_name: "parDenominator"))
    Mpeg2Settings.add_member(:par_numerator, Shapes::ShapeRef.new(shape: __integer, location_name: "parNumerator"))
    Mpeg2Settings.add_member(:quality_tuning_level, Shapes::ShapeRef.new(shape: Mpeg2QualityTuningLevel, location_name: "qualityTuningLevel"))
    Mpeg2Settings.add_member(:rate_control_mode, Shapes::ShapeRef.new(shape: Mpeg2RateControlMode, location_name: "rateControlMode"))
    Mpeg2Settings.add_member(:scene_change_detect, Shapes::ShapeRef.new(shape: Mpeg2SceneChangeDetect, location_name: "sceneChangeDetect"))
    Mpeg2Settings.add_member(:slow_pal, Shapes::ShapeRef.new(shape: Mpeg2SlowPal, location_name: "slowPal"))
    Mpeg2Settings.add_member(:softness, Shapes::ShapeRef.new(shape: __integer, location_name: "softness"))
    Mpeg2Settings.add_member(:spatial_adaptive_quantization, Shapes::ShapeRef.new(shape: Mpeg2SpatialAdaptiveQuantization, location_name: "spatialAdaptiveQuantization"))
    Mpeg2Settings.add_member(:syntax, Shapes::ShapeRef.new(shape: Mpeg2Syntax, location_name: "syntax"))
    Mpeg2Settings.add_member(:telecine, Shapes::ShapeRef.new(shape: Mpeg2Telecine, location_name: "telecine"))
    Mpeg2Settings.add_member(:temporal_adaptive_quantization, Shapes::ShapeRef.new(shape: Mpeg2TemporalAdaptiveQuantization, location_name: "temporalAdaptiveQuantization"))
    Mpeg2Settings.struct_class = Types::Mpeg2Settings

    MsSmoothEncryptionSettings.add_member(:speke_key_provider, Shapes::ShapeRef.new(shape: SpekeKeyProvider, location_name: "spekeKeyProvider"))
    MsSmoothEncryptionSettings.struct_class = Types::MsSmoothEncryptionSettings

    MsSmoothGroupSettings.add_member(:audio_deduplication, Shapes::ShapeRef.new(shape: MsSmoothAudioDeduplication, location_name: "audioDeduplication"))
    MsSmoothGroupSettings.add_member(:destination, Shapes::ShapeRef.new(shape: __string, location_name: "destination"))
    MsSmoothGroupSettings.add_member(:encryption, Shapes::ShapeRef.new(shape: MsSmoothEncryptionSettings, location_name: "encryption"))
    MsSmoothGroupSettings.add_member(:fragment_length, Shapes::ShapeRef.new(shape: __integer, location_name: "fragmentLength"))
    MsSmoothGroupSettings.add_member(:manifest_encoding, Shapes::ShapeRef.new(shape: MsSmoothManifestEncoding, location_name: "manifestEncoding"))
    MsSmoothGroupSettings.struct_class = Types::MsSmoothGroupSettings

    NielsenConfiguration.add_member(:breakout_code, Shapes::ShapeRef.new(shape: __integer, location_name: "breakoutCode"))
    NielsenConfiguration.add_member(:distributor_id, Shapes::ShapeRef.new(shape: __string, location_name: "distributorId"))
    NielsenConfiguration.struct_class = Types::NielsenConfiguration

    NoiseReducer.add_member(:filter, Shapes::ShapeRef.new(shape: NoiseReducerFilter, location_name: "filter"))
    NoiseReducer.add_member(:filter_settings, Shapes::ShapeRef.new(shape: NoiseReducerFilterSettings, location_name: "filterSettings"))
    NoiseReducer.add_member(:spatial_filter_settings, Shapes::ShapeRef.new(shape: NoiseReducerSpatialFilterSettings, location_name: "spatialFilterSettings"))
    NoiseReducer.struct_class = Types::NoiseReducer

    NoiseReducerFilterSettings.add_member(:strength, Shapes::ShapeRef.new(shape: __integer, location_name: "strength"))
    NoiseReducerFilterSettings.struct_class = Types::NoiseReducerFilterSettings

    NoiseReducerSpatialFilterSettings.add_member(:post_filter_sharpen_strength, Shapes::ShapeRef.new(shape: __integer, location_name: "postFilterSharpenStrength"))
    NoiseReducerSpatialFilterSettings.add_member(:speed, Shapes::ShapeRef.new(shape: __integer, location_name: "speed"))
    NoiseReducerSpatialFilterSettings.add_member(:strength, Shapes::ShapeRef.new(shape: __integer, location_name: "strength"))
    NoiseReducerSpatialFilterSettings.struct_class = Types::NoiseReducerSpatialFilterSettings

    Output.add_member(:audio_descriptions, Shapes::ShapeRef.new(shape: ListOfAudioDescription, location_name: "audioDescriptions"))
    Output.add_member(:caption_descriptions, Shapes::ShapeRef.new(shape: ListOfCaptionDescription, location_name: "captionDescriptions"))
    Output.add_member(:container_settings, Shapes::ShapeRef.new(shape: ContainerSettings, location_name: "containerSettings"))
    Output.add_member(:extension, Shapes::ShapeRef.new(shape: __string, location_name: "extension"))
    Output.add_member(:name_modifier, Shapes::ShapeRef.new(shape: __string, location_name: "nameModifier"))
    Output.add_member(:output_settings, Shapes::ShapeRef.new(shape: OutputSettings, location_name: "outputSettings"))
    Output.add_member(:preset, Shapes::ShapeRef.new(shape: __string, location_name: "preset"))
    Output.add_member(:video_description, Shapes::ShapeRef.new(shape: VideoDescription, location_name: "videoDescription"))
    Output.struct_class = Types::Output

    OutputChannelMapping.add_member(:input_channels, Shapes::ShapeRef.new(shape: ListOf__integer, location_name: "inputChannels"))
    OutputChannelMapping.struct_class = Types::OutputChannelMapping

    OutputDetail.add_member(:duration_in_ms, Shapes::ShapeRef.new(shape: __integer, location_name: "durationInMs"))
    OutputDetail.add_member(:video_details, Shapes::ShapeRef.new(shape: VideoDetail, location_name: "videoDetails"))
    OutputDetail.struct_class = Types::OutputDetail

    OutputGroup.add_member(:custom_name, Shapes::ShapeRef.new(shape: __string, location_name: "customName"))
    OutputGroup.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    OutputGroup.add_member(:output_group_settings, Shapes::ShapeRef.new(shape: OutputGroupSettings, location_name: "outputGroupSettings"))
    OutputGroup.add_member(:outputs, Shapes::ShapeRef.new(shape: ListOfOutput, location_name: "outputs"))
    OutputGroup.struct_class = Types::OutputGroup

    OutputGroupDetail.add_member(:output_details, Shapes::ShapeRef.new(shape: ListOfOutputDetail, location_name: "outputDetails"))
    OutputGroupDetail.struct_class = Types::OutputGroupDetail

    OutputGroupSettings.add_member(:dash_iso_group_settings, Shapes::ShapeRef.new(shape: DashIsoGroupSettings, location_name: "dashIsoGroupSettings"))
    OutputGroupSettings.add_member(:file_group_settings, Shapes::ShapeRef.new(shape: FileGroupSettings, location_name: "fileGroupSettings"))
    OutputGroupSettings.add_member(:hls_group_settings, Shapes::ShapeRef.new(shape: HlsGroupSettings, location_name: "hlsGroupSettings"))
    OutputGroupSettings.add_member(:ms_smooth_group_settings, Shapes::ShapeRef.new(shape: MsSmoothGroupSettings, location_name: "msSmoothGroupSettings"))
    OutputGroupSettings.add_member(:type, Shapes::ShapeRef.new(shape: OutputGroupType, location_name: "type"))
    OutputGroupSettings.struct_class = Types::OutputGroupSettings

    OutputSettings.add_member(:hls_settings, Shapes::ShapeRef.new(shape: HlsSettings, location_name: "hlsSettings"))
    OutputSettings.struct_class = Types::OutputSettings

    Preset.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    Preset.add_member(:category, Shapes::ShapeRef.new(shape: __string, location_name: "category"))
    Preset.add_member(:created_at, Shapes::ShapeRef.new(shape: __timestamp, location_name: "createdAt"))
    Preset.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    Preset.add_member(:last_updated, Shapes::ShapeRef.new(shape: __timestamp, location_name: "lastUpdated"))
    Preset.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    Preset.add_member(:settings, Shapes::ShapeRef.new(shape: PresetSettings, location_name: "settings"))
    Preset.add_member(:type, Shapes::ShapeRef.new(shape: Type, location_name: "type"))
    Preset.struct_class = Types::Preset

    PresetSettings.add_member(:audio_descriptions, Shapes::ShapeRef.new(shape: ListOfAudioDescription, location_name: "audioDescriptions"))
    PresetSettings.add_member(:caption_descriptions, Shapes::ShapeRef.new(shape: ListOfCaptionDescriptionPreset, location_name: "captionDescriptions"))
    PresetSettings.add_member(:container_settings, Shapes::ShapeRef.new(shape: ContainerSettings, location_name: "containerSettings"))
    PresetSettings.add_member(:video_description, Shapes::ShapeRef.new(shape: VideoDescription, location_name: "videoDescription"))
    PresetSettings.struct_class = Types::PresetSettings

    ProresSettings.add_member(:codec_profile, Shapes::ShapeRef.new(shape: ProresCodecProfile, location_name: "codecProfile"))
    ProresSettings.add_member(:framerate_control, Shapes::ShapeRef.new(shape: ProresFramerateControl, location_name: "framerateControl"))
    ProresSettings.add_member(:framerate_conversion_algorithm, Shapes::ShapeRef.new(shape: ProresFramerateConversionAlgorithm, location_name: "framerateConversionAlgorithm"))
    ProresSettings.add_member(:framerate_denominator, Shapes::ShapeRef.new(shape: __integer, location_name: "framerateDenominator"))
    ProresSettings.add_member(:framerate_numerator, Shapes::ShapeRef.new(shape: __integer, location_name: "framerateNumerator"))
    ProresSettings.add_member(:interlace_mode, Shapes::ShapeRef.new(shape: ProresInterlaceMode, location_name: "interlaceMode"))
    ProresSettings.add_member(:par_control, Shapes::ShapeRef.new(shape: ProresParControl, location_name: "parControl"))
    ProresSettings.add_member(:par_denominator, Shapes::ShapeRef.new(shape: __integer, location_name: "parDenominator"))
    ProresSettings.add_member(:par_numerator, Shapes::ShapeRef.new(shape: __integer, location_name: "parNumerator"))
    ProresSettings.add_member(:slow_pal, Shapes::ShapeRef.new(shape: ProresSlowPal, location_name: "slowPal"))
    ProresSettings.add_member(:telecine, Shapes::ShapeRef.new(shape: ProresTelecine, location_name: "telecine"))
    ProresSettings.struct_class = Types::ProresSettings

    Queue.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    Queue.add_member(:created_at, Shapes::ShapeRef.new(shape: __timestamp, location_name: "createdAt"))
    Queue.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    Queue.add_member(:last_updated, Shapes::ShapeRef.new(shape: __timestamp, location_name: "lastUpdated"))
    Queue.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    Queue.add_member(:status, Shapes::ShapeRef.new(shape: QueueStatus, location_name: "status"))
    Queue.add_member(:type, Shapes::ShapeRef.new(shape: Type, location_name: "type"))
    Queue.struct_class = Types::Queue

    Rectangle.add_member(:height, Shapes::ShapeRef.new(shape: __integer, location_name: "height"))
    Rectangle.add_member(:width, Shapes::ShapeRef.new(shape: __integer, location_name: "width"))
    Rectangle.add_member(:x, Shapes::ShapeRef.new(shape: __integer, location_name: "x"))
    Rectangle.add_member(:y, Shapes::ShapeRef.new(shape: __integer, location_name: "y"))
    Rectangle.struct_class = Types::Rectangle

    RemixSettings.add_member(:channel_mapping, Shapes::ShapeRef.new(shape: ChannelMapping, location_name: "channelMapping"))
    RemixSettings.add_member(:channels_in, Shapes::ShapeRef.new(shape: __integer, location_name: "channelsIn"))
    RemixSettings.add_member(:channels_out, Shapes::ShapeRef.new(shape: __integer, location_name: "channelsOut"))
    RemixSettings.struct_class = Types::RemixSettings

    SccDestinationSettings.add_member(:framerate, Shapes::ShapeRef.new(shape: SccDestinationFramerate, location_name: "framerate"))
    SccDestinationSettings.struct_class = Types::SccDestinationSettings

    SpekeKeyProvider.add_member(:resource_id, Shapes::ShapeRef.new(shape: __string, location_name: "resourceId"))
    SpekeKeyProvider.add_member(:system_ids, Shapes::ShapeRef.new(shape: ListOf__string, location_name: "systemIds"))
    SpekeKeyProvider.add_member(:url, Shapes::ShapeRef.new(shape: __string, location_name: "url"))
    SpekeKeyProvider.struct_class = Types::SpekeKeyProvider

    StaticKeyProvider.add_member(:key_format, Shapes::ShapeRef.new(shape: __string, location_name: "keyFormat"))
    StaticKeyProvider.add_member(:key_format_versions, Shapes::ShapeRef.new(shape: __string, location_name: "keyFormatVersions"))
    StaticKeyProvider.add_member(:static_key_value, Shapes::ShapeRef.new(shape: __string, location_name: "staticKeyValue"))
    StaticKeyProvider.add_member(:url, Shapes::ShapeRef.new(shape: __string, location_name: "url"))
    StaticKeyProvider.struct_class = Types::StaticKeyProvider

    TeletextDestinationSettings.add_member(:page_number, Shapes::ShapeRef.new(shape: __string, location_name: "pageNumber"))
    TeletextDestinationSettings.struct_class = Types::TeletextDestinationSettings

    TeletextSourceSettings.add_member(:page_number, Shapes::ShapeRef.new(shape: __string, location_name: "pageNumber"))
    TeletextSourceSettings.struct_class = Types::TeletextSourceSettings

    TimecodeBurnin.add_member(:font_size, Shapes::ShapeRef.new(shape: __integer, location_name: "fontSize"))
    TimecodeBurnin.add_member(:position, Shapes::ShapeRef.new(shape: TimecodeBurninPosition, location_name: "position"))
    TimecodeBurnin.add_member(:prefix, Shapes::ShapeRef.new(shape: __string, location_name: "prefix"))
    TimecodeBurnin.struct_class = Types::TimecodeBurnin

    TimecodeConfig.add_member(:anchor, Shapes::ShapeRef.new(shape: __string, location_name: "anchor"))
    TimecodeConfig.add_member(:source, Shapes::ShapeRef.new(shape: TimecodeSource, location_name: "source"))
    TimecodeConfig.add_member(:start, Shapes::ShapeRef.new(shape: __string, location_name: "start"))
    TimecodeConfig.add_member(:timestamp_offset, Shapes::ShapeRef.new(shape: __string, location_name: "timestampOffset"))
    TimecodeConfig.struct_class = Types::TimecodeConfig

    TimedMetadataInsertion.add_member(:id_3_insertions, Shapes::ShapeRef.new(shape: ListOfId3Insertion, location_name: "id3Insertions"))
    TimedMetadataInsertion.struct_class = Types::TimedMetadataInsertion

    Timing.add_member(:finish_time, Shapes::ShapeRef.new(shape: __timestamp, location_name: "finishTime"))
    Timing.add_member(:start_time, Shapes::ShapeRef.new(shape: __timestamp, location_name: "startTime"))
    Timing.add_member(:submit_time, Shapes::ShapeRef.new(shape: __timestamp, location_name: "submitTime"))
    Timing.struct_class = Types::Timing

    TtmlDestinationSettings.add_member(:style_passthrough, Shapes::ShapeRef.new(shape: TtmlStylePassthrough, location_name: "stylePassthrough"))
    TtmlDestinationSettings.struct_class = Types::TtmlDestinationSettings

    UpdateJobTemplateRequest.add_member(:category, Shapes::ShapeRef.new(shape: __string, location_name: "category"))
    UpdateJobTemplateRequest.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    UpdateJobTemplateRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "name"))
    UpdateJobTemplateRequest.add_member(:queue, Shapes::ShapeRef.new(shape: __string, location_name: "queue"))
    UpdateJobTemplateRequest.add_member(:settings, Shapes::ShapeRef.new(shape: JobTemplateSettings, location_name: "settings"))
    UpdateJobTemplateRequest.struct_class = Types::UpdateJobTemplateRequest

    UpdateJobTemplateResponse.add_member(:job_template, Shapes::ShapeRef.new(shape: JobTemplate, location_name: "jobTemplate"))
    UpdateJobTemplateResponse.struct_class = Types::UpdateJobTemplateResponse

    UpdatePresetRequest.add_member(:category, Shapes::ShapeRef.new(shape: __string, location_name: "category"))
    UpdatePresetRequest.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    UpdatePresetRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "name"))
    UpdatePresetRequest.add_member(:settings, Shapes::ShapeRef.new(shape: PresetSettings, location_name: "settings"))
    UpdatePresetRequest.struct_class = Types::UpdatePresetRequest

    UpdatePresetResponse.add_member(:preset, Shapes::ShapeRef.new(shape: Preset, location_name: "preset"))
    UpdatePresetResponse.struct_class = Types::UpdatePresetResponse

    UpdateQueueRequest.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    UpdateQueueRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "name"))
    UpdateQueueRequest.add_member(:status, Shapes::ShapeRef.new(shape: QueueStatus, location_name: "status"))
    UpdateQueueRequest.struct_class = Types::UpdateQueueRequest

    UpdateQueueResponse.add_member(:queue, Shapes::ShapeRef.new(shape: Queue, location_name: "queue"))
    UpdateQueueResponse.struct_class = Types::UpdateQueueResponse

    VideoCodecSettings.add_member(:codec, Shapes::ShapeRef.new(shape: VideoCodec, location_name: "codec"))
    VideoCodecSettings.add_member(:frame_capture_settings, Shapes::ShapeRef.new(shape: FrameCaptureSettings, location_name: "frameCaptureSettings"))
    VideoCodecSettings.add_member(:h264_settings, Shapes::ShapeRef.new(shape: H264Settings, location_name: "h264Settings"))
    VideoCodecSettings.add_member(:h265_settings, Shapes::ShapeRef.new(shape: H265Settings, location_name: "h265Settings"))
    VideoCodecSettings.add_member(:mpeg_2_settings, Shapes::ShapeRef.new(shape: Mpeg2Settings, location_name: "mpeg2Settings"))
    VideoCodecSettings.add_member(:prores_settings, Shapes::ShapeRef.new(shape: ProresSettings, location_name: "proresSettings"))
    VideoCodecSettings.struct_class = Types::VideoCodecSettings

    VideoDescription.add_member(:afd_signaling, Shapes::ShapeRef.new(shape: AfdSignaling, location_name: "afdSignaling"))
    VideoDescription.add_member(:anti_alias, Shapes::ShapeRef.new(shape: AntiAlias, location_name: "antiAlias"))
    VideoDescription.add_member(:codec_settings, Shapes::ShapeRef.new(shape: VideoCodecSettings, location_name: "codecSettings"))
    VideoDescription.add_member(:color_metadata, Shapes::ShapeRef.new(shape: ColorMetadata, location_name: "colorMetadata"))
    VideoDescription.add_member(:crop, Shapes::ShapeRef.new(shape: Rectangle, location_name: "crop"))
    VideoDescription.add_member(:drop_frame_timecode, Shapes::ShapeRef.new(shape: DropFrameTimecode, location_name: "dropFrameTimecode"))
    VideoDescription.add_member(:fixed_afd, Shapes::ShapeRef.new(shape: __integer, location_name: "fixedAfd"))
    VideoDescription.add_member(:height, Shapes::ShapeRef.new(shape: __integer, location_name: "height"))
    VideoDescription.add_member(:position, Shapes::ShapeRef.new(shape: Rectangle, location_name: "position"))
    VideoDescription.add_member(:respond_to_afd, Shapes::ShapeRef.new(shape: RespondToAfd, location_name: "respondToAfd"))
    VideoDescription.add_member(:scaling_behavior, Shapes::ShapeRef.new(shape: ScalingBehavior, location_name: "scalingBehavior"))
    VideoDescription.add_member(:sharpness, Shapes::ShapeRef.new(shape: __integer, location_name: "sharpness"))
    VideoDescription.add_member(:timecode_insertion, Shapes::ShapeRef.new(shape: VideoTimecodeInsertion, location_name: "timecodeInsertion"))
    VideoDescription.add_member(:video_preprocessors, Shapes::ShapeRef.new(shape: VideoPreprocessor, location_name: "videoPreprocessors"))
    VideoDescription.add_member(:width, Shapes::ShapeRef.new(shape: __integer, location_name: "width"))
    VideoDescription.struct_class = Types::VideoDescription

    VideoDetail.add_member(:height_in_px, Shapes::ShapeRef.new(shape: __integer, location_name: "heightInPx"))
    VideoDetail.add_member(:width_in_px, Shapes::ShapeRef.new(shape: __integer, location_name: "widthInPx"))
    VideoDetail.struct_class = Types::VideoDetail

    VideoPreprocessor.add_member(:color_corrector, Shapes::ShapeRef.new(shape: ColorCorrector, location_name: "colorCorrector"))
    VideoPreprocessor.add_member(:deinterlacer, Shapes::ShapeRef.new(shape: Deinterlacer, location_name: "deinterlacer"))
    VideoPreprocessor.add_member(:image_inserter, Shapes::ShapeRef.new(shape: ImageInserter, location_name: "imageInserter"))
    VideoPreprocessor.add_member(:noise_reducer, Shapes::ShapeRef.new(shape: NoiseReducer, location_name: "noiseReducer"))
    VideoPreprocessor.add_member(:timecode_burnin, Shapes::ShapeRef.new(shape: TimecodeBurnin, location_name: "timecodeBurnin"))
    VideoPreprocessor.struct_class = Types::VideoPreprocessor

    VideoSelector.add_member(:color_space, Shapes::ShapeRef.new(shape: ColorSpace, location_name: "colorSpace"))
    VideoSelector.add_member(:color_space_usage, Shapes::ShapeRef.new(shape: ColorSpaceUsage, location_name: "colorSpaceUsage"))
    VideoSelector.add_member(:hdr_10_metadata, Shapes::ShapeRef.new(shape: Hdr10Metadata, location_name: "hdr10Metadata"))
    VideoSelector.add_member(:pid, Shapes::ShapeRef.new(shape: __integer, location_name: "pid"))
    VideoSelector.add_member(:program_number, Shapes::ShapeRef.new(shape: __integer, location_name: "programNumber"))
    VideoSelector.struct_class = Types::VideoSelector

    WavSettings.add_member(:bit_depth, Shapes::ShapeRef.new(shape: __integer, location_name: "bitDepth"))
    WavSettings.add_member(:channels, Shapes::ShapeRef.new(shape: __integer, location_name: "channels"))
    WavSettings.add_member(:sample_rate, Shapes::ShapeRef.new(shape: __integer, location_name: "sampleRate"))
    WavSettings.struct_class = Types::WavSettings


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2017-08-29"

      api.metadata = {
        "endpointPrefix" => "mediaconvert",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "AWS Elemental MediaConvert",
        "signatureVersion" => "v4",
        "signingName" => "mediaconvert",
      }

      api.add_operation(:cancel_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelJob"
        o.http_method = "DELETE"
        o.http_request_uri = "/2017-08-29/jobs/{id}"
        o.input = Shapes::ShapeRef.new(shape: CancelJobRequest)
        o.output = Shapes::ShapeRef.new(shape: CancelJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateJob"
        o.http_method = "POST"
        o.http_request_uri = "/2017-08-29/jobs"
        o.input = Shapes::ShapeRef.new(shape: CreateJobRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_job_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateJobTemplate"
        o.http_method = "POST"
        o.http_request_uri = "/2017-08-29/jobTemplates"
        o.input = Shapes::ShapeRef.new(shape: CreateJobTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateJobTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_preset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePreset"
        o.http_method = "POST"
        o.http_request_uri = "/2017-08-29/presets"
        o.input = Shapes::ShapeRef.new(shape: CreatePresetRequest)
        o.output = Shapes::ShapeRef.new(shape: CreatePresetResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_queue, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateQueue"
        o.http_method = "POST"
        o.http_request_uri = "/2017-08-29/queues"
        o.input = Shapes::ShapeRef.new(shape: CreateQueueRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateQueueResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_job_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteJobTemplate"
        o.http_method = "DELETE"
        o.http_request_uri = "/2017-08-29/jobTemplates/{name}"
        o.input = Shapes::ShapeRef.new(shape: DeleteJobTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteJobTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_preset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePreset"
        o.http_method = "DELETE"
        o.http_request_uri = "/2017-08-29/presets/{name}"
        o.input = Shapes::ShapeRef.new(shape: DeletePresetRequest)
        o.output = Shapes::ShapeRef.new(shape: DeletePresetResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_queue, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteQueue"
        o.http_method = "DELETE"
        o.http_request_uri = "/2017-08-29/queues/{name}"
        o.input = Shapes::ShapeRef.new(shape: DeleteQueueRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteQueueResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:describe_endpoints, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEndpoints"
        o.http_method = "POST"
        o.http_request_uri = "/2017-08-29/endpoints"
        o.input = Shapes::ShapeRef.new(shape: DescribeEndpointsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeEndpointsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:get_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetJob"
        o.http_method = "GET"
        o.http_request_uri = "/2017-08-29/jobs/{id}"
        o.input = Shapes::ShapeRef.new(shape: GetJobRequest)
        o.output = Shapes::ShapeRef.new(shape: GetJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:get_job_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetJobTemplate"
        o.http_method = "GET"
        o.http_request_uri = "/2017-08-29/jobTemplates/{name}"
        o.input = Shapes::ShapeRef.new(shape: GetJobTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: GetJobTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:get_preset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPreset"
        o.http_method = "GET"
        o.http_request_uri = "/2017-08-29/presets/{name}"
        o.input = Shapes::ShapeRef.new(shape: GetPresetRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPresetResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:get_queue, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetQueue"
        o.http_method = "GET"
        o.http_request_uri = "/2017-08-29/queues/{name}"
        o.input = Shapes::ShapeRef.new(shape: GetQueueRequest)
        o.output = Shapes::ShapeRef.new(shape: GetQueueResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:list_job_templates, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListJobTemplates"
        o.http_method = "GET"
        o.http_request_uri = "/2017-08-29/jobTemplates"
        o.input = Shapes::ShapeRef.new(shape: ListJobTemplatesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListJobTemplatesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:list_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListJobs"
        o.http_method = "GET"
        o.http_request_uri = "/2017-08-29/jobs"
        o.input = Shapes::ShapeRef.new(shape: ListJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:list_presets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPresets"
        o.http_method = "GET"
        o.http_request_uri = "/2017-08-29/presets"
        o.input = Shapes::ShapeRef.new(shape: ListPresetsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPresetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:list_queues, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListQueues"
        o.http_method = "GET"
        o.http_request_uri = "/2017-08-29/queues"
        o.input = Shapes::ShapeRef.new(shape: ListQueuesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListQueuesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_job_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateJobTemplate"
        o.http_method = "PUT"
        o.http_request_uri = "/2017-08-29/jobTemplates/{name}"
        o.input = Shapes::ShapeRef.new(shape: UpdateJobTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateJobTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_preset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdatePreset"
        o.http_method = "PUT"
        o.http_request_uri = "/2017-08-29/presets/{name}"
        o.input = Shapes::ShapeRef.new(shape: UpdatePresetRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdatePresetResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_queue, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateQueue"
        o.http_method = "PUT"
        o.http_request_uri = "/2017-08-29/queues/{name}"
        o.input = Shapes::ShapeRef.new(shape: UpdateQueueRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateQueueResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)
    end

  end
end
