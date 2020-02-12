# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ElasticTranscoder
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessControl = Shapes::StringShape.new(name: 'AccessControl')
    AccessControls = Shapes::ListShape.new(name: 'AccessControls')
    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    Artwork = Shapes::StructureShape.new(name: 'Artwork')
    Artworks = Shapes::ListShape.new(name: 'Artworks')
    Ascending = Shapes::StringShape.new(name: 'Ascending')
    AspectRatio = Shapes::StringShape.new(name: 'AspectRatio')
    AudioBitDepth = Shapes::StringShape.new(name: 'AudioBitDepth')
    AudioBitOrder = Shapes::StringShape.new(name: 'AudioBitOrder')
    AudioBitRate = Shapes::StringShape.new(name: 'AudioBitRate')
    AudioChannels = Shapes::StringShape.new(name: 'AudioChannels')
    AudioCodec = Shapes::StringShape.new(name: 'AudioCodec')
    AudioCodecOptions = Shapes::StructureShape.new(name: 'AudioCodecOptions')
    AudioCodecProfile = Shapes::StringShape.new(name: 'AudioCodecProfile')
    AudioPackingMode = Shapes::StringShape.new(name: 'AudioPackingMode')
    AudioParameters = Shapes::StructureShape.new(name: 'AudioParameters')
    AudioSampleRate = Shapes::StringShape.new(name: 'AudioSampleRate')
    AudioSigned = Shapes::StringShape.new(name: 'AudioSigned')
    Base64EncodedString = Shapes::StringShape.new(name: 'Base64EncodedString')
    BucketName = Shapes::StringShape.new(name: 'BucketName')
    CancelJobRequest = Shapes::StructureShape.new(name: 'CancelJobRequest')
    CancelJobResponse = Shapes::StructureShape.new(name: 'CancelJobResponse')
    CaptionFormat = Shapes::StructureShape.new(name: 'CaptionFormat')
    CaptionFormatFormat = Shapes::StringShape.new(name: 'CaptionFormatFormat')
    CaptionFormatPattern = Shapes::StringShape.new(name: 'CaptionFormatPattern')
    CaptionFormats = Shapes::ListShape.new(name: 'CaptionFormats')
    CaptionMergePolicy = Shapes::StringShape.new(name: 'CaptionMergePolicy')
    CaptionSource = Shapes::StructureShape.new(name: 'CaptionSource')
    CaptionSources = Shapes::ListShape.new(name: 'CaptionSources')
    Captions = Shapes::StructureShape.new(name: 'Captions')
    Clip = Shapes::StructureShape.new(name: 'Clip')
    CodecOption = Shapes::StringShape.new(name: 'CodecOption')
    CodecOptions = Shapes::MapShape.new(name: 'CodecOptions')
    Composition = Shapes::ListShape.new(name: 'Composition')
    CreateJobOutput = Shapes::StructureShape.new(name: 'CreateJobOutput')
    CreateJobOutputs = Shapes::ListShape.new(name: 'CreateJobOutputs')
    CreateJobPlaylist = Shapes::StructureShape.new(name: 'CreateJobPlaylist')
    CreateJobPlaylists = Shapes::ListShape.new(name: 'CreateJobPlaylists')
    CreateJobRequest = Shapes::StructureShape.new(name: 'CreateJobRequest')
    CreateJobResponse = Shapes::StructureShape.new(name: 'CreateJobResponse')
    CreatePipelineRequest = Shapes::StructureShape.new(name: 'CreatePipelineRequest')
    CreatePipelineResponse = Shapes::StructureShape.new(name: 'CreatePipelineResponse')
    CreatePresetRequest = Shapes::StructureShape.new(name: 'CreatePresetRequest')
    CreatePresetResponse = Shapes::StructureShape.new(name: 'CreatePresetResponse')
    DeletePipelineRequest = Shapes::StructureShape.new(name: 'DeletePipelineRequest')
    DeletePipelineResponse = Shapes::StructureShape.new(name: 'DeletePipelineResponse')
    DeletePresetRequest = Shapes::StructureShape.new(name: 'DeletePresetRequest')
    DeletePresetResponse = Shapes::StructureShape.new(name: 'DeletePresetResponse')
    Description = Shapes::StringShape.new(name: 'Description')
    DetectedProperties = Shapes::StructureShape.new(name: 'DetectedProperties')
    Digits = Shapes::StringShape.new(name: 'Digits')
    DigitsOrAuto = Shapes::StringShape.new(name: 'DigitsOrAuto')
    Encryption = Shapes::StructureShape.new(name: 'Encryption')
    EncryptionMode = Shapes::StringShape.new(name: 'EncryptionMode')
    ExceptionMessages = Shapes::ListShape.new(name: 'ExceptionMessages')
    Filename = Shapes::StringShape.new(name: 'Filename')
    FixedGOP = Shapes::StringShape.new(name: 'FixedGOP')
    FloatString = Shapes::StringShape.new(name: 'FloatString')
    FrameRate = Shapes::StringShape.new(name: 'FrameRate')
    Grantee = Shapes::StringShape.new(name: 'Grantee')
    GranteeType = Shapes::StringShape.new(name: 'GranteeType')
    HlsContentProtection = Shapes::StructureShape.new(name: 'HlsContentProtection')
    HlsContentProtectionMethod = Shapes::StringShape.new(name: 'HlsContentProtectionMethod')
    HorizontalAlign = Shapes::StringShape.new(name: 'HorizontalAlign')
    Id = Shapes::StringShape.new(name: 'Id')
    IncompatibleVersionException = Shapes::StructureShape.new(name: 'IncompatibleVersionException')
    InputCaptions = Shapes::StructureShape.new(name: 'InputCaptions')
    Interlaced = Shapes::StringShape.new(name: 'Interlaced')
    InternalServiceException = Shapes::StructureShape.new(name: 'InternalServiceException')
    Job = Shapes::StructureShape.new(name: 'Job')
    JobAlbumArt = Shapes::StructureShape.new(name: 'JobAlbumArt')
    JobContainer = Shapes::StringShape.new(name: 'JobContainer')
    JobInput = Shapes::StructureShape.new(name: 'JobInput')
    JobInputs = Shapes::ListShape.new(name: 'JobInputs')
    JobOutput = Shapes::StructureShape.new(name: 'JobOutput')
    JobOutputs = Shapes::ListShape.new(name: 'JobOutputs')
    JobStatus = Shapes::StringShape.new(name: 'JobStatus')
    JobWatermark = Shapes::StructureShape.new(name: 'JobWatermark')
    JobWatermarks = Shapes::ListShape.new(name: 'JobWatermarks')
    Jobs = Shapes::ListShape.new(name: 'Jobs')
    JpgOrPng = Shapes::StringShape.new(name: 'JpgOrPng')
    Key = Shapes::StringShape.new(name: 'Key')
    KeyArn = Shapes::StringShape.new(name: 'KeyArn')
    KeyIdGuid = Shapes::StringShape.new(name: 'KeyIdGuid')
    KeyStoragePolicy = Shapes::StringShape.new(name: 'KeyStoragePolicy')
    KeyframesMaxDist = Shapes::StringShape.new(name: 'KeyframesMaxDist')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListJobsByPipelineRequest = Shapes::StructureShape.new(name: 'ListJobsByPipelineRequest')
    ListJobsByPipelineResponse = Shapes::StructureShape.new(name: 'ListJobsByPipelineResponse')
    ListJobsByStatusRequest = Shapes::StructureShape.new(name: 'ListJobsByStatusRequest')
    ListJobsByStatusResponse = Shapes::StructureShape.new(name: 'ListJobsByStatusResponse')
    ListPipelinesRequest = Shapes::StructureShape.new(name: 'ListPipelinesRequest')
    ListPipelinesResponse = Shapes::StructureShape.new(name: 'ListPipelinesResponse')
    ListPresetsRequest = Shapes::StructureShape.new(name: 'ListPresetsRequest')
    ListPresetsResponse = Shapes::StructureShape.new(name: 'ListPresetsResponse')
    LongKey = Shapes::StringShape.new(name: 'LongKey')
    MaxFrameRate = Shapes::StringShape.new(name: 'MaxFrameRate')
    MergePolicy = Shapes::StringShape.new(name: 'MergePolicy')
    Name = Shapes::StringShape.new(name: 'Name')
    NonEmptyBase64EncodedString = Shapes::StringShape.new(name: 'NonEmptyBase64EncodedString')
    Notifications = Shapes::StructureShape.new(name: 'Notifications')
    NullableInteger = Shapes::IntegerShape.new(name: 'NullableInteger')
    NullableLong = Shapes::IntegerShape.new(name: 'NullableLong')
    OneTo512String = Shapes::StringShape.new(name: 'OneTo512String')
    Opacity = Shapes::StringShape.new(name: 'Opacity')
    OutputKeys = Shapes::ListShape.new(name: 'OutputKeys')
    PaddingPolicy = Shapes::StringShape.new(name: 'PaddingPolicy')
    Permission = Shapes::StructureShape.new(name: 'Permission')
    Permissions = Shapes::ListShape.new(name: 'Permissions')
    Pipeline = Shapes::StructureShape.new(name: 'Pipeline')
    PipelineOutputConfig = Shapes::StructureShape.new(name: 'PipelineOutputConfig')
    PipelineStatus = Shapes::StringShape.new(name: 'PipelineStatus')
    Pipelines = Shapes::ListShape.new(name: 'Pipelines')
    PixelsOrPercent = Shapes::StringShape.new(name: 'PixelsOrPercent')
    PlayReadyDrm = Shapes::StructureShape.new(name: 'PlayReadyDrm')
    PlayReadyDrmFormatString = Shapes::StringShape.new(name: 'PlayReadyDrmFormatString')
    Playlist = Shapes::StructureShape.new(name: 'Playlist')
    PlaylistFormat = Shapes::StringShape.new(name: 'PlaylistFormat')
    Playlists = Shapes::ListShape.new(name: 'Playlists')
    Preset = Shapes::StructureShape.new(name: 'Preset')
    PresetContainer = Shapes::StringShape.new(name: 'PresetContainer')
    PresetType = Shapes::StringShape.new(name: 'PresetType')
    PresetWatermark = Shapes::StructureShape.new(name: 'PresetWatermark')
    PresetWatermarkId = Shapes::StringShape.new(name: 'PresetWatermarkId')
    PresetWatermarks = Shapes::ListShape.new(name: 'PresetWatermarks')
    Presets = Shapes::ListShape.new(name: 'Presets')
    ReadJobRequest = Shapes::StructureShape.new(name: 'ReadJobRequest')
    ReadJobResponse = Shapes::StructureShape.new(name: 'ReadJobResponse')
    ReadPipelineRequest = Shapes::StructureShape.new(name: 'ReadPipelineRequest')
    ReadPipelineResponse = Shapes::StructureShape.new(name: 'ReadPipelineResponse')
    ReadPresetRequest = Shapes::StructureShape.new(name: 'ReadPresetRequest')
    ReadPresetResponse = Shapes::StructureShape.new(name: 'ReadPresetResponse')
    Resolution = Shapes::StringShape.new(name: 'Resolution')
    ResourceInUseException = Shapes::StructureShape.new(name: 'ResourceInUseException')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    Role = Shapes::StringShape.new(name: 'Role')
    Rotate = Shapes::StringShape.new(name: 'Rotate')
    SizingPolicy = Shapes::StringShape.new(name: 'SizingPolicy')
    SnsTopic = Shapes::StringShape.new(name: 'SnsTopic')
    SnsTopics = Shapes::ListShape.new(name: 'SnsTopics')
    StorageClass = Shapes::StringShape.new(name: 'StorageClass')
    String = Shapes::StringShape.new(name: 'String')
    Success = Shapes::StringShape.new(name: 'Success')
    Target = Shapes::StringShape.new(name: 'Target')
    TestRoleRequest = Shapes::StructureShape.new(name: 'TestRoleRequest')
    TestRoleResponse = Shapes::StructureShape.new(name: 'TestRoleResponse')
    ThumbnailPattern = Shapes::StringShape.new(name: 'ThumbnailPattern')
    ThumbnailResolution = Shapes::StringShape.new(name: 'ThumbnailResolution')
    Thumbnails = Shapes::StructureShape.new(name: 'Thumbnails')
    Time = Shapes::StringShape.new(name: 'Time')
    TimeOffset = Shapes::StringShape.new(name: 'TimeOffset')
    TimeSpan = Shapes::StructureShape.new(name: 'TimeSpan')
    Timing = Shapes::StructureShape.new(name: 'Timing')
    UpdatePipelineNotificationsRequest = Shapes::StructureShape.new(name: 'UpdatePipelineNotificationsRequest')
    UpdatePipelineNotificationsResponse = Shapes::StructureShape.new(name: 'UpdatePipelineNotificationsResponse')
    UpdatePipelineRequest = Shapes::StructureShape.new(name: 'UpdatePipelineRequest')
    UpdatePipelineResponse = Shapes::StructureShape.new(name: 'UpdatePipelineResponse')
    UpdatePipelineStatusRequest = Shapes::StructureShape.new(name: 'UpdatePipelineStatusRequest')
    UpdatePipelineStatusResponse = Shapes::StructureShape.new(name: 'UpdatePipelineStatusResponse')
    UserMetadata = Shapes::MapShape.new(name: 'UserMetadata')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    VerticalAlign = Shapes::StringShape.new(name: 'VerticalAlign')
    VideoBitRate = Shapes::StringShape.new(name: 'VideoBitRate')
    VideoCodec = Shapes::StringShape.new(name: 'VideoCodec')
    VideoParameters = Shapes::StructureShape.new(name: 'VideoParameters')
    Warning = Shapes::StructureShape.new(name: 'Warning')
    Warnings = Shapes::ListShape.new(name: 'Warnings')
    WatermarkKey = Shapes::StringShape.new(name: 'WatermarkKey')
    WatermarkSizingPolicy = Shapes::StringShape.new(name: 'WatermarkSizingPolicy')
    ZeroTo255String = Shapes::StringShape.new(name: 'ZeroTo255String')
    ZeroTo512String = Shapes::StringShape.new(name: 'ZeroTo512String')

    AccessControls.member = Shapes::ShapeRef.new(shape: AccessControl)

    Artwork.add_member(:input_key, Shapes::ShapeRef.new(shape: WatermarkKey, location_name: "InputKey"))
    Artwork.add_member(:max_width, Shapes::ShapeRef.new(shape: DigitsOrAuto, location_name: "MaxWidth"))
    Artwork.add_member(:max_height, Shapes::ShapeRef.new(shape: DigitsOrAuto, location_name: "MaxHeight"))
    Artwork.add_member(:sizing_policy, Shapes::ShapeRef.new(shape: SizingPolicy, location_name: "SizingPolicy"))
    Artwork.add_member(:padding_policy, Shapes::ShapeRef.new(shape: PaddingPolicy, location_name: "PaddingPolicy"))
    Artwork.add_member(:album_art_format, Shapes::ShapeRef.new(shape: JpgOrPng, location_name: "AlbumArtFormat"))
    Artwork.add_member(:encryption, Shapes::ShapeRef.new(shape: Encryption, location_name: "Encryption"))
    Artwork.struct_class = Types::Artwork

    Artworks.member = Shapes::ShapeRef.new(shape: Artwork)

    AudioCodecOptions.add_member(:profile, Shapes::ShapeRef.new(shape: AudioCodecProfile, location_name: "Profile"))
    AudioCodecOptions.add_member(:bit_depth, Shapes::ShapeRef.new(shape: AudioBitDepth, location_name: "BitDepth"))
    AudioCodecOptions.add_member(:bit_order, Shapes::ShapeRef.new(shape: AudioBitOrder, location_name: "BitOrder"))
    AudioCodecOptions.add_member(:signed, Shapes::ShapeRef.new(shape: AudioSigned, location_name: "Signed"))
    AudioCodecOptions.struct_class = Types::AudioCodecOptions

    AudioParameters.add_member(:codec, Shapes::ShapeRef.new(shape: AudioCodec, location_name: "Codec"))
    AudioParameters.add_member(:sample_rate, Shapes::ShapeRef.new(shape: AudioSampleRate, location_name: "SampleRate"))
    AudioParameters.add_member(:bit_rate, Shapes::ShapeRef.new(shape: AudioBitRate, location_name: "BitRate"))
    AudioParameters.add_member(:channels, Shapes::ShapeRef.new(shape: AudioChannels, location_name: "Channels"))
    AudioParameters.add_member(:audio_packing_mode, Shapes::ShapeRef.new(shape: AudioPackingMode, location_name: "AudioPackingMode"))
    AudioParameters.add_member(:codec_options, Shapes::ShapeRef.new(shape: AudioCodecOptions, location_name: "CodecOptions"))
    AudioParameters.struct_class = Types::AudioParameters

    CancelJobRequest.add_member(:id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "Id"))
    CancelJobRequest.struct_class = Types::CancelJobRequest

    CancelJobResponse.struct_class = Types::CancelJobResponse

    CaptionFormat.add_member(:format, Shapes::ShapeRef.new(shape: CaptionFormatFormat, location_name: "Format"))
    CaptionFormat.add_member(:pattern, Shapes::ShapeRef.new(shape: CaptionFormatPattern, location_name: "Pattern"))
    CaptionFormat.add_member(:encryption, Shapes::ShapeRef.new(shape: Encryption, location_name: "Encryption"))
    CaptionFormat.struct_class = Types::CaptionFormat

    CaptionFormats.member = Shapes::ShapeRef.new(shape: CaptionFormat)

    CaptionSource.add_member(:key, Shapes::ShapeRef.new(shape: LongKey, location_name: "Key"))
    CaptionSource.add_member(:language, Shapes::ShapeRef.new(shape: Key, location_name: "Language"))
    CaptionSource.add_member(:time_offset, Shapes::ShapeRef.new(shape: TimeOffset, location_name: "TimeOffset"))
    CaptionSource.add_member(:label, Shapes::ShapeRef.new(shape: Name, location_name: "Label"))
    CaptionSource.add_member(:encryption, Shapes::ShapeRef.new(shape: Encryption, location_name: "Encryption"))
    CaptionSource.struct_class = Types::CaptionSource

    CaptionSources.member = Shapes::ShapeRef.new(shape: CaptionSource)

    Captions.add_member(:merge_policy, Shapes::ShapeRef.new(shape: CaptionMergePolicy, deprecated: true, location_name: "MergePolicy"))
    Captions.add_member(:caption_sources, Shapes::ShapeRef.new(shape: CaptionSources, deprecated: true, location_name: "CaptionSources"))
    Captions.add_member(:caption_formats, Shapes::ShapeRef.new(shape: CaptionFormats, location_name: "CaptionFormats"))
    Captions.struct_class = Types::Captions

    Clip.add_member(:time_span, Shapes::ShapeRef.new(shape: TimeSpan, location_name: "TimeSpan"))
    Clip.struct_class = Types::Clip

    CodecOptions.key = Shapes::ShapeRef.new(shape: CodecOption)
    CodecOptions.value = Shapes::ShapeRef.new(shape: CodecOption)

    Composition.member = Shapes::ShapeRef.new(shape: Clip, deprecated: true)

    CreateJobOutput.add_member(:key, Shapes::ShapeRef.new(shape: Key, location_name: "Key"))
    CreateJobOutput.add_member(:thumbnail_pattern, Shapes::ShapeRef.new(shape: ThumbnailPattern, location_name: "ThumbnailPattern"))
    CreateJobOutput.add_member(:thumbnail_encryption, Shapes::ShapeRef.new(shape: Encryption, location_name: "ThumbnailEncryption"))
    CreateJobOutput.add_member(:rotate, Shapes::ShapeRef.new(shape: Rotate, location_name: "Rotate"))
    CreateJobOutput.add_member(:preset_id, Shapes::ShapeRef.new(shape: Id, location_name: "PresetId"))
    CreateJobOutput.add_member(:segment_duration, Shapes::ShapeRef.new(shape: FloatString, location_name: "SegmentDuration"))
    CreateJobOutput.add_member(:watermarks, Shapes::ShapeRef.new(shape: JobWatermarks, location_name: "Watermarks"))
    CreateJobOutput.add_member(:album_art, Shapes::ShapeRef.new(shape: JobAlbumArt, location_name: "AlbumArt"))
    CreateJobOutput.add_member(:composition, Shapes::ShapeRef.new(shape: Composition, deprecated: true, location_name: "Composition"))
    CreateJobOutput.add_member(:captions, Shapes::ShapeRef.new(shape: Captions, location_name: "Captions"))
    CreateJobOutput.add_member(:encryption, Shapes::ShapeRef.new(shape: Encryption, location_name: "Encryption"))
    CreateJobOutput.struct_class = Types::CreateJobOutput

    CreateJobOutputs.member = Shapes::ShapeRef.new(shape: CreateJobOutput)

    CreateJobPlaylist.add_member(:name, Shapes::ShapeRef.new(shape: Filename, location_name: "Name"))
    CreateJobPlaylist.add_member(:format, Shapes::ShapeRef.new(shape: PlaylistFormat, location_name: "Format"))
    CreateJobPlaylist.add_member(:output_keys, Shapes::ShapeRef.new(shape: OutputKeys, location_name: "OutputKeys"))
    CreateJobPlaylist.add_member(:hls_content_protection, Shapes::ShapeRef.new(shape: HlsContentProtection, location_name: "HlsContentProtection"))
    CreateJobPlaylist.add_member(:play_ready_drm, Shapes::ShapeRef.new(shape: PlayReadyDrm, location_name: "PlayReadyDrm"))
    CreateJobPlaylist.struct_class = Types::CreateJobPlaylist

    CreateJobPlaylists.member = Shapes::ShapeRef.new(shape: CreateJobPlaylist)

    CreateJobRequest.add_member(:pipeline_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "PipelineId"))
    CreateJobRequest.add_member(:input, Shapes::ShapeRef.new(shape: JobInput, location_name: "Input"))
    CreateJobRequest.add_member(:inputs, Shapes::ShapeRef.new(shape: JobInputs, location_name: "Inputs"))
    CreateJobRequest.add_member(:output, Shapes::ShapeRef.new(shape: CreateJobOutput, location_name: "Output"))
    CreateJobRequest.add_member(:outputs, Shapes::ShapeRef.new(shape: CreateJobOutputs, location_name: "Outputs"))
    CreateJobRequest.add_member(:output_key_prefix, Shapes::ShapeRef.new(shape: Key, location_name: "OutputKeyPrefix"))
    CreateJobRequest.add_member(:playlists, Shapes::ShapeRef.new(shape: CreateJobPlaylists, location_name: "Playlists"))
    CreateJobRequest.add_member(:user_metadata, Shapes::ShapeRef.new(shape: UserMetadata, location_name: "UserMetadata"))
    CreateJobRequest.struct_class = Types::CreateJobRequest

    CreateJobResponse.add_member(:job, Shapes::ShapeRef.new(shape: Job, location_name: "Job"))
    CreateJobResponse.struct_class = Types::CreateJobResponse

    CreatePipelineRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "Name"))
    CreatePipelineRequest.add_member(:input_bucket, Shapes::ShapeRef.new(shape: BucketName, required: true, location_name: "InputBucket"))
    CreatePipelineRequest.add_member(:output_bucket, Shapes::ShapeRef.new(shape: BucketName, location_name: "OutputBucket"))
    CreatePipelineRequest.add_member(:role, Shapes::ShapeRef.new(shape: Role, required: true, location_name: "Role"))
    CreatePipelineRequest.add_member(:aws_kms_key_arn, Shapes::ShapeRef.new(shape: KeyArn, location_name: "AwsKmsKeyArn"))
    CreatePipelineRequest.add_member(:notifications, Shapes::ShapeRef.new(shape: Notifications, location_name: "Notifications"))
    CreatePipelineRequest.add_member(:content_config, Shapes::ShapeRef.new(shape: PipelineOutputConfig, location_name: "ContentConfig"))
    CreatePipelineRequest.add_member(:thumbnail_config, Shapes::ShapeRef.new(shape: PipelineOutputConfig, location_name: "ThumbnailConfig"))
    CreatePipelineRequest.struct_class = Types::CreatePipelineRequest

    CreatePipelineResponse.add_member(:pipeline, Shapes::ShapeRef.new(shape: Pipeline, location_name: "Pipeline"))
    CreatePipelineResponse.add_member(:warnings, Shapes::ShapeRef.new(shape: Warnings, location_name: "Warnings"))
    CreatePipelineResponse.struct_class = Types::CreatePipelineResponse

    CreatePresetRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "Name"))
    CreatePresetRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreatePresetRequest.add_member(:container, Shapes::ShapeRef.new(shape: PresetContainer, required: true, location_name: "Container"))
    CreatePresetRequest.add_member(:video, Shapes::ShapeRef.new(shape: VideoParameters, location_name: "Video"))
    CreatePresetRequest.add_member(:audio, Shapes::ShapeRef.new(shape: AudioParameters, location_name: "Audio"))
    CreatePresetRequest.add_member(:thumbnails, Shapes::ShapeRef.new(shape: Thumbnails, location_name: "Thumbnails"))
    CreatePresetRequest.struct_class = Types::CreatePresetRequest

    CreatePresetResponse.add_member(:preset, Shapes::ShapeRef.new(shape: Preset, location_name: "Preset"))
    CreatePresetResponse.add_member(:warning, Shapes::ShapeRef.new(shape: String, location_name: "Warning"))
    CreatePresetResponse.struct_class = Types::CreatePresetResponse

    DeletePipelineRequest.add_member(:id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "Id"))
    DeletePipelineRequest.struct_class = Types::DeletePipelineRequest

    DeletePipelineResponse.struct_class = Types::DeletePipelineResponse

    DeletePresetRequest.add_member(:id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "Id"))
    DeletePresetRequest.struct_class = Types::DeletePresetRequest

    DeletePresetResponse.struct_class = Types::DeletePresetResponse

    DetectedProperties.add_member(:width, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "Width"))
    DetectedProperties.add_member(:height, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "Height"))
    DetectedProperties.add_member(:frame_rate, Shapes::ShapeRef.new(shape: FloatString, location_name: "FrameRate"))
    DetectedProperties.add_member(:file_size, Shapes::ShapeRef.new(shape: NullableLong, location_name: "FileSize"))
    DetectedProperties.add_member(:duration_millis, Shapes::ShapeRef.new(shape: NullableLong, location_name: "DurationMillis"))
    DetectedProperties.struct_class = Types::DetectedProperties

    Encryption.add_member(:mode, Shapes::ShapeRef.new(shape: EncryptionMode, location_name: "Mode"))
    Encryption.add_member(:key, Shapes::ShapeRef.new(shape: Base64EncodedString, location_name: "Key"))
    Encryption.add_member(:key_md_5, Shapes::ShapeRef.new(shape: Base64EncodedString, location_name: "KeyMd5"))
    Encryption.add_member(:initialization_vector, Shapes::ShapeRef.new(shape: ZeroTo255String, location_name: "InitializationVector"))
    Encryption.struct_class = Types::Encryption

    ExceptionMessages.member = Shapes::ShapeRef.new(shape: String)

    HlsContentProtection.add_member(:method, Shapes::ShapeRef.new(shape: HlsContentProtectionMethod, location_name: "Method"))
    HlsContentProtection.add_member(:key, Shapes::ShapeRef.new(shape: Base64EncodedString, location_name: "Key"))
    HlsContentProtection.add_member(:key_md_5, Shapes::ShapeRef.new(shape: Base64EncodedString, location_name: "KeyMd5"))
    HlsContentProtection.add_member(:initialization_vector, Shapes::ShapeRef.new(shape: ZeroTo255String, location_name: "InitializationVector"))
    HlsContentProtection.add_member(:license_acquisition_url, Shapes::ShapeRef.new(shape: ZeroTo512String, location_name: "LicenseAcquisitionUrl"))
    HlsContentProtection.add_member(:key_storage_policy, Shapes::ShapeRef.new(shape: KeyStoragePolicy, location_name: "KeyStoragePolicy"))
    HlsContentProtection.struct_class = Types::HlsContentProtection

    InputCaptions.add_member(:merge_policy, Shapes::ShapeRef.new(shape: CaptionMergePolicy, location_name: "MergePolicy"))
    InputCaptions.add_member(:caption_sources, Shapes::ShapeRef.new(shape: CaptionSources, location_name: "CaptionSources"))
    InputCaptions.struct_class = Types::InputCaptions

    Job.add_member(:id, Shapes::ShapeRef.new(shape: Id, location_name: "Id"))
    Job.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "Arn"))
    Job.add_member(:pipeline_id, Shapes::ShapeRef.new(shape: Id, location_name: "PipelineId"))
    Job.add_member(:input, Shapes::ShapeRef.new(shape: JobInput, location_name: "Input"))
    Job.add_member(:inputs, Shapes::ShapeRef.new(shape: JobInputs, location_name: "Inputs"))
    Job.add_member(:output, Shapes::ShapeRef.new(shape: JobOutput, location_name: "Output"))
    Job.add_member(:outputs, Shapes::ShapeRef.new(shape: JobOutputs, location_name: "Outputs"))
    Job.add_member(:output_key_prefix, Shapes::ShapeRef.new(shape: Key, location_name: "OutputKeyPrefix"))
    Job.add_member(:playlists, Shapes::ShapeRef.new(shape: Playlists, location_name: "Playlists"))
    Job.add_member(:status, Shapes::ShapeRef.new(shape: JobStatus, location_name: "Status"))
    Job.add_member(:user_metadata, Shapes::ShapeRef.new(shape: UserMetadata, location_name: "UserMetadata"))
    Job.add_member(:timing, Shapes::ShapeRef.new(shape: Timing, location_name: "Timing"))
    Job.struct_class = Types::Job

    JobAlbumArt.add_member(:merge_policy, Shapes::ShapeRef.new(shape: MergePolicy, location_name: "MergePolicy"))
    JobAlbumArt.add_member(:artwork, Shapes::ShapeRef.new(shape: Artworks, location_name: "Artwork"))
    JobAlbumArt.struct_class = Types::JobAlbumArt

    JobInput.add_member(:key, Shapes::ShapeRef.new(shape: LongKey, location_name: "Key"))
    JobInput.add_member(:frame_rate, Shapes::ShapeRef.new(shape: FrameRate, location_name: "FrameRate"))
    JobInput.add_member(:resolution, Shapes::ShapeRef.new(shape: Resolution, location_name: "Resolution"))
    JobInput.add_member(:aspect_ratio, Shapes::ShapeRef.new(shape: AspectRatio, location_name: "AspectRatio"))
    JobInput.add_member(:interlaced, Shapes::ShapeRef.new(shape: Interlaced, location_name: "Interlaced"))
    JobInput.add_member(:container, Shapes::ShapeRef.new(shape: JobContainer, location_name: "Container"))
    JobInput.add_member(:encryption, Shapes::ShapeRef.new(shape: Encryption, location_name: "Encryption"))
    JobInput.add_member(:time_span, Shapes::ShapeRef.new(shape: TimeSpan, location_name: "TimeSpan"))
    JobInput.add_member(:input_captions, Shapes::ShapeRef.new(shape: InputCaptions, location_name: "InputCaptions"))
    JobInput.add_member(:detected_properties, Shapes::ShapeRef.new(shape: DetectedProperties, location_name: "DetectedProperties"))
    JobInput.struct_class = Types::JobInput

    JobInputs.member = Shapes::ShapeRef.new(shape: JobInput)

    JobOutput.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "Id"))
    JobOutput.add_member(:key, Shapes::ShapeRef.new(shape: Key, location_name: "Key"))
    JobOutput.add_member(:thumbnail_pattern, Shapes::ShapeRef.new(shape: ThumbnailPattern, location_name: "ThumbnailPattern"))
    JobOutput.add_member(:thumbnail_encryption, Shapes::ShapeRef.new(shape: Encryption, location_name: "ThumbnailEncryption"))
    JobOutput.add_member(:rotate, Shapes::ShapeRef.new(shape: Rotate, location_name: "Rotate"))
    JobOutput.add_member(:preset_id, Shapes::ShapeRef.new(shape: Id, location_name: "PresetId"))
    JobOutput.add_member(:segment_duration, Shapes::ShapeRef.new(shape: FloatString, location_name: "SegmentDuration"))
    JobOutput.add_member(:status, Shapes::ShapeRef.new(shape: JobStatus, location_name: "Status"))
    JobOutput.add_member(:status_detail, Shapes::ShapeRef.new(shape: Description, location_name: "StatusDetail"))
    JobOutput.add_member(:duration, Shapes::ShapeRef.new(shape: NullableLong, location_name: "Duration"))
    JobOutput.add_member(:width, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "Width"))
    JobOutput.add_member(:height, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "Height"))
    JobOutput.add_member(:frame_rate, Shapes::ShapeRef.new(shape: FloatString, location_name: "FrameRate"))
    JobOutput.add_member(:file_size, Shapes::ShapeRef.new(shape: NullableLong, location_name: "FileSize"))
    JobOutput.add_member(:duration_millis, Shapes::ShapeRef.new(shape: NullableLong, location_name: "DurationMillis"))
    JobOutput.add_member(:watermarks, Shapes::ShapeRef.new(shape: JobWatermarks, location_name: "Watermarks"))
    JobOutput.add_member(:album_art, Shapes::ShapeRef.new(shape: JobAlbumArt, location_name: "AlbumArt"))
    JobOutput.add_member(:composition, Shapes::ShapeRef.new(shape: Composition, deprecated: true, location_name: "Composition"))
    JobOutput.add_member(:captions, Shapes::ShapeRef.new(shape: Captions, location_name: "Captions"))
    JobOutput.add_member(:encryption, Shapes::ShapeRef.new(shape: Encryption, location_name: "Encryption"))
    JobOutput.add_member(:applied_color_space_conversion, Shapes::ShapeRef.new(shape: String, location_name: "AppliedColorSpaceConversion"))
    JobOutput.struct_class = Types::JobOutput

    JobOutputs.member = Shapes::ShapeRef.new(shape: JobOutput)

    JobWatermark.add_member(:preset_watermark_id, Shapes::ShapeRef.new(shape: PresetWatermarkId, location_name: "PresetWatermarkId"))
    JobWatermark.add_member(:input_key, Shapes::ShapeRef.new(shape: WatermarkKey, location_name: "InputKey"))
    JobWatermark.add_member(:encryption, Shapes::ShapeRef.new(shape: Encryption, location_name: "Encryption"))
    JobWatermark.struct_class = Types::JobWatermark

    JobWatermarks.member = Shapes::ShapeRef.new(shape: JobWatermark)

    Jobs.member = Shapes::ShapeRef.new(shape: Job)

    ListJobsByPipelineRequest.add_member(:pipeline_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "PipelineId"))
    ListJobsByPipelineRequest.add_member(:ascending, Shapes::ShapeRef.new(shape: Ascending, location: "querystring", location_name: "Ascending"))
    ListJobsByPipelineRequest.add_member(:page_token, Shapes::ShapeRef.new(shape: Id, location: "querystring", location_name: "PageToken"))
    ListJobsByPipelineRequest.struct_class = Types::ListJobsByPipelineRequest

    ListJobsByPipelineResponse.add_member(:jobs, Shapes::ShapeRef.new(shape: Jobs, location_name: "Jobs"))
    ListJobsByPipelineResponse.add_member(:next_page_token, Shapes::ShapeRef.new(shape: Id, location_name: "NextPageToken"))
    ListJobsByPipelineResponse.struct_class = Types::ListJobsByPipelineResponse

    ListJobsByStatusRequest.add_member(:status, Shapes::ShapeRef.new(shape: JobStatus, required: true, location: "uri", location_name: "Status"))
    ListJobsByStatusRequest.add_member(:ascending, Shapes::ShapeRef.new(shape: Ascending, location: "querystring", location_name: "Ascending"))
    ListJobsByStatusRequest.add_member(:page_token, Shapes::ShapeRef.new(shape: Id, location: "querystring", location_name: "PageToken"))
    ListJobsByStatusRequest.struct_class = Types::ListJobsByStatusRequest

    ListJobsByStatusResponse.add_member(:jobs, Shapes::ShapeRef.new(shape: Jobs, location_name: "Jobs"))
    ListJobsByStatusResponse.add_member(:next_page_token, Shapes::ShapeRef.new(shape: Id, location_name: "NextPageToken"))
    ListJobsByStatusResponse.struct_class = Types::ListJobsByStatusResponse

    ListPipelinesRequest.add_member(:ascending, Shapes::ShapeRef.new(shape: Ascending, location: "querystring", location_name: "Ascending"))
    ListPipelinesRequest.add_member(:page_token, Shapes::ShapeRef.new(shape: Id, location: "querystring", location_name: "PageToken"))
    ListPipelinesRequest.struct_class = Types::ListPipelinesRequest

    ListPipelinesResponse.add_member(:pipelines, Shapes::ShapeRef.new(shape: Pipelines, location_name: "Pipelines"))
    ListPipelinesResponse.add_member(:next_page_token, Shapes::ShapeRef.new(shape: Id, location_name: "NextPageToken"))
    ListPipelinesResponse.struct_class = Types::ListPipelinesResponse

    ListPresetsRequest.add_member(:ascending, Shapes::ShapeRef.new(shape: Ascending, location: "querystring", location_name: "Ascending"))
    ListPresetsRequest.add_member(:page_token, Shapes::ShapeRef.new(shape: Id, location: "querystring", location_name: "PageToken"))
    ListPresetsRequest.struct_class = Types::ListPresetsRequest

    ListPresetsResponse.add_member(:presets, Shapes::ShapeRef.new(shape: Presets, location_name: "Presets"))
    ListPresetsResponse.add_member(:next_page_token, Shapes::ShapeRef.new(shape: Id, location_name: "NextPageToken"))
    ListPresetsResponse.struct_class = Types::ListPresetsResponse

    Notifications.add_member(:progressing, Shapes::ShapeRef.new(shape: SnsTopic, location_name: "Progressing"))
    Notifications.add_member(:completed, Shapes::ShapeRef.new(shape: SnsTopic, location_name: "Completed"))
    Notifications.add_member(:warning, Shapes::ShapeRef.new(shape: SnsTopic, location_name: "Warning"))
    Notifications.add_member(:error, Shapes::ShapeRef.new(shape: SnsTopic, location_name: "Error"))
    Notifications.struct_class = Types::Notifications

    OutputKeys.member = Shapes::ShapeRef.new(shape: Key)

    Permission.add_member(:grantee_type, Shapes::ShapeRef.new(shape: GranteeType, location_name: "GranteeType"))
    Permission.add_member(:grantee, Shapes::ShapeRef.new(shape: Grantee, location_name: "Grantee"))
    Permission.add_member(:access, Shapes::ShapeRef.new(shape: AccessControls, location_name: "Access"))
    Permission.struct_class = Types::Permission

    Permissions.member = Shapes::ShapeRef.new(shape: Permission)

    Pipeline.add_member(:id, Shapes::ShapeRef.new(shape: Id, location_name: "Id"))
    Pipeline.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "Arn"))
    Pipeline.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    Pipeline.add_member(:status, Shapes::ShapeRef.new(shape: PipelineStatus, location_name: "Status"))
    Pipeline.add_member(:input_bucket, Shapes::ShapeRef.new(shape: BucketName, location_name: "InputBucket"))
    Pipeline.add_member(:output_bucket, Shapes::ShapeRef.new(shape: BucketName, location_name: "OutputBucket"))
    Pipeline.add_member(:role, Shapes::ShapeRef.new(shape: Role, location_name: "Role"))
    Pipeline.add_member(:aws_kms_key_arn, Shapes::ShapeRef.new(shape: KeyArn, location_name: "AwsKmsKeyArn"))
    Pipeline.add_member(:notifications, Shapes::ShapeRef.new(shape: Notifications, location_name: "Notifications"))
    Pipeline.add_member(:content_config, Shapes::ShapeRef.new(shape: PipelineOutputConfig, location_name: "ContentConfig"))
    Pipeline.add_member(:thumbnail_config, Shapes::ShapeRef.new(shape: PipelineOutputConfig, location_name: "ThumbnailConfig"))
    Pipeline.struct_class = Types::Pipeline

    PipelineOutputConfig.add_member(:bucket, Shapes::ShapeRef.new(shape: BucketName, location_name: "Bucket"))
    PipelineOutputConfig.add_member(:storage_class, Shapes::ShapeRef.new(shape: StorageClass, location_name: "StorageClass"))
    PipelineOutputConfig.add_member(:permissions, Shapes::ShapeRef.new(shape: Permissions, location_name: "Permissions"))
    PipelineOutputConfig.struct_class = Types::PipelineOutputConfig

    Pipelines.member = Shapes::ShapeRef.new(shape: Pipeline)

    PlayReadyDrm.add_member(:format, Shapes::ShapeRef.new(shape: PlayReadyDrmFormatString, location_name: "Format"))
    PlayReadyDrm.add_member(:key, Shapes::ShapeRef.new(shape: NonEmptyBase64EncodedString, location_name: "Key"))
    PlayReadyDrm.add_member(:key_md_5, Shapes::ShapeRef.new(shape: NonEmptyBase64EncodedString, location_name: "KeyMd5"))
    PlayReadyDrm.add_member(:key_id, Shapes::ShapeRef.new(shape: KeyIdGuid, location_name: "KeyId"))
    PlayReadyDrm.add_member(:initialization_vector, Shapes::ShapeRef.new(shape: ZeroTo255String, location_name: "InitializationVector"))
    PlayReadyDrm.add_member(:license_acquisition_url, Shapes::ShapeRef.new(shape: OneTo512String, location_name: "LicenseAcquisitionUrl"))
    PlayReadyDrm.struct_class = Types::PlayReadyDrm

    Playlist.add_member(:name, Shapes::ShapeRef.new(shape: Filename, location_name: "Name"))
    Playlist.add_member(:format, Shapes::ShapeRef.new(shape: PlaylistFormat, location_name: "Format"))
    Playlist.add_member(:output_keys, Shapes::ShapeRef.new(shape: OutputKeys, location_name: "OutputKeys"))
    Playlist.add_member(:hls_content_protection, Shapes::ShapeRef.new(shape: HlsContentProtection, location_name: "HlsContentProtection"))
    Playlist.add_member(:play_ready_drm, Shapes::ShapeRef.new(shape: PlayReadyDrm, location_name: "PlayReadyDrm"))
    Playlist.add_member(:status, Shapes::ShapeRef.new(shape: JobStatus, location_name: "Status"))
    Playlist.add_member(:status_detail, Shapes::ShapeRef.new(shape: Description, location_name: "StatusDetail"))
    Playlist.struct_class = Types::Playlist

    Playlists.member = Shapes::ShapeRef.new(shape: Playlist)

    Preset.add_member(:id, Shapes::ShapeRef.new(shape: Id, location_name: "Id"))
    Preset.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "Arn"))
    Preset.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    Preset.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    Preset.add_member(:container, Shapes::ShapeRef.new(shape: PresetContainer, location_name: "Container"))
    Preset.add_member(:audio, Shapes::ShapeRef.new(shape: AudioParameters, location_name: "Audio"))
    Preset.add_member(:video, Shapes::ShapeRef.new(shape: VideoParameters, location_name: "Video"))
    Preset.add_member(:thumbnails, Shapes::ShapeRef.new(shape: Thumbnails, location_name: "Thumbnails"))
    Preset.add_member(:type, Shapes::ShapeRef.new(shape: PresetType, location_name: "Type"))
    Preset.struct_class = Types::Preset

    PresetWatermark.add_member(:id, Shapes::ShapeRef.new(shape: PresetWatermarkId, location_name: "Id"))
    PresetWatermark.add_member(:max_width, Shapes::ShapeRef.new(shape: PixelsOrPercent, location_name: "MaxWidth"))
    PresetWatermark.add_member(:max_height, Shapes::ShapeRef.new(shape: PixelsOrPercent, location_name: "MaxHeight"))
    PresetWatermark.add_member(:sizing_policy, Shapes::ShapeRef.new(shape: WatermarkSizingPolicy, location_name: "SizingPolicy"))
    PresetWatermark.add_member(:horizontal_align, Shapes::ShapeRef.new(shape: HorizontalAlign, location_name: "HorizontalAlign"))
    PresetWatermark.add_member(:horizontal_offset, Shapes::ShapeRef.new(shape: PixelsOrPercent, location_name: "HorizontalOffset"))
    PresetWatermark.add_member(:vertical_align, Shapes::ShapeRef.new(shape: VerticalAlign, location_name: "VerticalAlign"))
    PresetWatermark.add_member(:vertical_offset, Shapes::ShapeRef.new(shape: PixelsOrPercent, location_name: "VerticalOffset"))
    PresetWatermark.add_member(:opacity, Shapes::ShapeRef.new(shape: Opacity, location_name: "Opacity"))
    PresetWatermark.add_member(:target, Shapes::ShapeRef.new(shape: Target, location_name: "Target"))
    PresetWatermark.struct_class = Types::PresetWatermark

    PresetWatermarks.member = Shapes::ShapeRef.new(shape: PresetWatermark)

    Presets.member = Shapes::ShapeRef.new(shape: Preset)

    ReadJobRequest.add_member(:id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "Id"))
    ReadJobRequest.struct_class = Types::ReadJobRequest

    ReadJobResponse.add_member(:job, Shapes::ShapeRef.new(shape: Job, location_name: "Job"))
    ReadJobResponse.struct_class = Types::ReadJobResponse

    ReadPipelineRequest.add_member(:id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "Id"))
    ReadPipelineRequest.struct_class = Types::ReadPipelineRequest

    ReadPipelineResponse.add_member(:pipeline, Shapes::ShapeRef.new(shape: Pipeline, location_name: "Pipeline"))
    ReadPipelineResponse.add_member(:warnings, Shapes::ShapeRef.new(shape: Warnings, location_name: "Warnings"))
    ReadPipelineResponse.struct_class = Types::ReadPipelineResponse

    ReadPresetRequest.add_member(:id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "Id"))
    ReadPresetRequest.struct_class = Types::ReadPresetRequest

    ReadPresetResponse.add_member(:preset, Shapes::ShapeRef.new(shape: Preset, location_name: "Preset"))
    ReadPresetResponse.struct_class = Types::ReadPresetResponse

    SnsTopics.member = Shapes::ShapeRef.new(shape: SnsTopic)

    TestRoleRequest.add_member(:role, Shapes::ShapeRef.new(shape: Role, required: true, location_name: "Role"))
    TestRoleRequest.add_member(:input_bucket, Shapes::ShapeRef.new(shape: BucketName, required: true, location_name: "InputBucket"))
    TestRoleRequest.add_member(:output_bucket, Shapes::ShapeRef.new(shape: BucketName, required: true, location_name: "OutputBucket"))
    TestRoleRequest.add_member(:topics, Shapes::ShapeRef.new(shape: SnsTopics, required: true, location_name: "Topics"))
    TestRoleRequest.struct_class = Types::TestRoleRequest

    TestRoleResponse.add_member(:success, Shapes::ShapeRef.new(shape: Success, location_name: "Success"))
    TestRoleResponse.add_member(:messages, Shapes::ShapeRef.new(shape: ExceptionMessages, location_name: "Messages"))
    TestRoleResponse.struct_class = Types::TestRoleResponse

    Thumbnails.add_member(:format, Shapes::ShapeRef.new(shape: JpgOrPng, location_name: "Format"))
    Thumbnails.add_member(:interval, Shapes::ShapeRef.new(shape: Digits, location_name: "Interval"))
    Thumbnails.add_member(:resolution, Shapes::ShapeRef.new(shape: ThumbnailResolution, location_name: "Resolution"))
    Thumbnails.add_member(:aspect_ratio, Shapes::ShapeRef.new(shape: AspectRatio, location_name: "AspectRatio"))
    Thumbnails.add_member(:max_width, Shapes::ShapeRef.new(shape: DigitsOrAuto, location_name: "MaxWidth"))
    Thumbnails.add_member(:max_height, Shapes::ShapeRef.new(shape: DigitsOrAuto, location_name: "MaxHeight"))
    Thumbnails.add_member(:sizing_policy, Shapes::ShapeRef.new(shape: SizingPolicy, location_name: "SizingPolicy"))
    Thumbnails.add_member(:padding_policy, Shapes::ShapeRef.new(shape: PaddingPolicy, location_name: "PaddingPolicy"))
    Thumbnails.struct_class = Types::Thumbnails

    TimeSpan.add_member(:start_time, Shapes::ShapeRef.new(shape: Time, location_name: "StartTime"))
    TimeSpan.add_member(:duration, Shapes::ShapeRef.new(shape: Time, location_name: "Duration"))
    TimeSpan.struct_class = Types::TimeSpan

    Timing.add_member(:submit_time_millis, Shapes::ShapeRef.new(shape: NullableLong, location_name: "SubmitTimeMillis"))
    Timing.add_member(:start_time_millis, Shapes::ShapeRef.new(shape: NullableLong, location_name: "StartTimeMillis"))
    Timing.add_member(:finish_time_millis, Shapes::ShapeRef.new(shape: NullableLong, location_name: "FinishTimeMillis"))
    Timing.struct_class = Types::Timing

    UpdatePipelineNotificationsRequest.add_member(:id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "Id"))
    UpdatePipelineNotificationsRequest.add_member(:notifications, Shapes::ShapeRef.new(shape: Notifications, required: true, location_name: "Notifications"))
    UpdatePipelineNotificationsRequest.struct_class = Types::UpdatePipelineNotificationsRequest

    UpdatePipelineNotificationsResponse.add_member(:pipeline, Shapes::ShapeRef.new(shape: Pipeline, location_name: "Pipeline"))
    UpdatePipelineNotificationsResponse.struct_class = Types::UpdatePipelineNotificationsResponse

    UpdatePipelineRequest.add_member(:id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "Id"))
    UpdatePipelineRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    UpdatePipelineRequest.add_member(:input_bucket, Shapes::ShapeRef.new(shape: BucketName, location_name: "InputBucket"))
    UpdatePipelineRequest.add_member(:role, Shapes::ShapeRef.new(shape: Role, location_name: "Role"))
    UpdatePipelineRequest.add_member(:aws_kms_key_arn, Shapes::ShapeRef.new(shape: KeyArn, location_name: "AwsKmsKeyArn"))
    UpdatePipelineRequest.add_member(:notifications, Shapes::ShapeRef.new(shape: Notifications, location_name: "Notifications"))
    UpdatePipelineRequest.add_member(:content_config, Shapes::ShapeRef.new(shape: PipelineOutputConfig, location_name: "ContentConfig"))
    UpdatePipelineRequest.add_member(:thumbnail_config, Shapes::ShapeRef.new(shape: PipelineOutputConfig, location_name: "ThumbnailConfig"))
    UpdatePipelineRequest.struct_class = Types::UpdatePipelineRequest

    UpdatePipelineResponse.add_member(:pipeline, Shapes::ShapeRef.new(shape: Pipeline, location_name: "Pipeline"))
    UpdatePipelineResponse.add_member(:warnings, Shapes::ShapeRef.new(shape: Warnings, location_name: "Warnings"))
    UpdatePipelineResponse.struct_class = Types::UpdatePipelineResponse

    UpdatePipelineStatusRequest.add_member(:id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "Id"))
    UpdatePipelineStatusRequest.add_member(:status, Shapes::ShapeRef.new(shape: PipelineStatus, required: true, location_name: "Status"))
    UpdatePipelineStatusRequest.struct_class = Types::UpdatePipelineStatusRequest

    UpdatePipelineStatusResponse.add_member(:pipeline, Shapes::ShapeRef.new(shape: Pipeline, location_name: "Pipeline"))
    UpdatePipelineStatusResponse.struct_class = Types::UpdatePipelineStatusResponse

    UserMetadata.key = Shapes::ShapeRef.new(shape: String)
    UserMetadata.value = Shapes::ShapeRef.new(shape: String)

    VideoParameters.add_member(:codec, Shapes::ShapeRef.new(shape: VideoCodec, location_name: "Codec"))
    VideoParameters.add_member(:codec_options, Shapes::ShapeRef.new(shape: CodecOptions, location_name: "CodecOptions"))
    VideoParameters.add_member(:keyframes_max_dist, Shapes::ShapeRef.new(shape: KeyframesMaxDist, location_name: "KeyframesMaxDist"))
    VideoParameters.add_member(:fixed_gop, Shapes::ShapeRef.new(shape: FixedGOP, location_name: "FixedGOP"))
    VideoParameters.add_member(:bit_rate, Shapes::ShapeRef.new(shape: VideoBitRate, location_name: "BitRate"))
    VideoParameters.add_member(:frame_rate, Shapes::ShapeRef.new(shape: FrameRate, location_name: "FrameRate"))
    VideoParameters.add_member(:max_frame_rate, Shapes::ShapeRef.new(shape: MaxFrameRate, location_name: "MaxFrameRate"))
    VideoParameters.add_member(:resolution, Shapes::ShapeRef.new(shape: Resolution, location_name: "Resolution"))
    VideoParameters.add_member(:aspect_ratio, Shapes::ShapeRef.new(shape: AspectRatio, location_name: "AspectRatio"))
    VideoParameters.add_member(:max_width, Shapes::ShapeRef.new(shape: DigitsOrAuto, location_name: "MaxWidth"))
    VideoParameters.add_member(:max_height, Shapes::ShapeRef.new(shape: DigitsOrAuto, location_name: "MaxHeight"))
    VideoParameters.add_member(:display_aspect_ratio, Shapes::ShapeRef.new(shape: AspectRatio, location_name: "DisplayAspectRatio"))
    VideoParameters.add_member(:sizing_policy, Shapes::ShapeRef.new(shape: SizingPolicy, location_name: "SizingPolicy"))
    VideoParameters.add_member(:padding_policy, Shapes::ShapeRef.new(shape: PaddingPolicy, location_name: "PaddingPolicy"))
    VideoParameters.add_member(:watermarks, Shapes::ShapeRef.new(shape: PresetWatermarks, location_name: "Watermarks"))
    VideoParameters.struct_class = Types::VideoParameters

    Warning.add_member(:code, Shapes::ShapeRef.new(shape: String, location_name: "Code"))
    Warning.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    Warning.struct_class = Types::Warning

    Warnings.member = Shapes::ShapeRef.new(shape: Warning)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2012-09-25"

      api.metadata = {
        "apiVersion" => "2012-09-25",
        "endpointPrefix" => "elastictranscoder",
        "protocol" => "rest-json",
        "serviceFullName" => "Amazon Elastic Transcoder",
        "serviceId" => "Elastic Transcoder",
        "signatureVersion" => "v4",
        "uid" => "elastictranscoder-2012-09-25",
      }

      api.add_operation(:cancel_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelJob"
        o.http_method = "DELETE"
        o.http_request_uri = "/2012-09-25/jobs/{Id}"
        o.input = Shapes::ShapeRef.new(shape: CancelJobRequest)
        o.output = Shapes::ShapeRef.new(shape: CancelJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: IncompatibleVersionException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:create_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateJob"
        o.http_method = "POST"
        o.http_request_uri = "/2012-09-25/jobs"
        o.input = Shapes::ShapeRef.new(shape: CreateJobRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: IncompatibleVersionException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:create_pipeline, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePipeline"
        o.http_method = "POST"
        o.http_request_uri = "/2012-09-25/pipelines"
        o.input = Shapes::ShapeRef.new(shape: CreatePipelineRequest)
        o.output = Shapes::ShapeRef.new(shape: CreatePipelineResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: IncompatibleVersionException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:create_preset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePreset"
        o.http_method = "POST"
        o.http_request_uri = "/2012-09-25/presets"
        o.input = Shapes::ShapeRef.new(shape: CreatePresetRequest)
        o.output = Shapes::ShapeRef.new(shape: CreatePresetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: IncompatibleVersionException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:delete_pipeline, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePipeline"
        o.http_method = "DELETE"
        o.http_request_uri = "/2012-09-25/pipelines/{Id}"
        o.input = Shapes::ShapeRef.new(shape: DeletePipelineRequest)
        o.output = Shapes::ShapeRef.new(shape: DeletePipelineResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: IncompatibleVersionException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:delete_preset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePreset"
        o.http_method = "DELETE"
        o.http_request_uri = "/2012-09-25/presets/{Id}"
        o.input = Shapes::ShapeRef.new(shape: DeletePresetRequest)
        o.output = Shapes::ShapeRef.new(shape: DeletePresetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: IncompatibleVersionException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:list_jobs_by_pipeline, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListJobsByPipeline"
        o.http_method = "GET"
        o.http_request_uri = "/2012-09-25/jobsByPipeline/{PipelineId}"
        o.input = Shapes::ShapeRef.new(shape: ListJobsByPipelineRequest)
        o.output = Shapes::ShapeRef.new(shape: ListJobsByPipelineResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: IncompatibleVersionException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_page_token" => "page_token"
          }
        )
      end)

      api.add_operation(:list_jobs_by_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListJobsByStatus"
        o.http_method = "GET"
        o.http_request_uri = "/2012-09-25/jobsByStatus/{Status}"
        o.input = Shapes::ShapeRef.new(shape: ListJobsByStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: ListJobsByStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: IncompatibleVersionException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_page_token" => "page_token"
          }
        )
      end)

      api.add_operation(:list_pipelines, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPipelines"
        o.http_method = "GET"
        o.http_request_uri = "/2012-09-25/pipelines"
        o.input = Shapes::ShapeRef.new(shape: ListPipelinesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPipelinesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: IncompatibleVersionException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_page_token" => "page_token"
          }
        )
      end)

      api.add_operation(:list_presets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPresets"
        o.http_method = "GET"
        o.http_request_uri = "/2012-09-25/presets"
        o.input = Shapes::ShapeRef.new(shape: ListPresetsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPresetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: IncompatibleVersionException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_page_token" => "page_token"
          }
        )
      end)

      api.add_operation(:read_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ReadJob"
        o.http_method = "GET"
        o.http_request_uri = "/2012-09-25/jobs/{Id}"
        o.input = Shapes::ShapeRef.new(shape: ReadJobRequest)
        o.output = Shapes::ShapeRef.new(shape: ReadJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: IncompatibleVersionException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:read_pipeline, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ReadPipeline"
        o.http_method = "GET"
        o.http_request_uri = "/2012-09-25/pipelines/{Id}"
        o.input = Shapes::ShapeRef.new(shape: ReadPipelineRequest)
        o.output = Shapes::ShapeRef.new(shape: ReadPipelineResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: IncompatibleVersionException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:read_preset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ReadPreset"
        o.http_method = "GET"
        o.http_request_uri = "/2012-09-25/presets/{Id}"
        o.input = Shapes::ShapeRef.new(shape: ReadPresetRequest)
        o.output = Shapes::ShapeRef.new(shape: ReadPresetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: IncompatibleVersionException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:test_role, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TestRole"
        o.http_method = "POST"
        o.http_request_uri = "/2012-09-25/roleTests"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: TestRoleRequest)
        o.output = Shapes::ShapeRef.new(shape: TestRoleResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: IncompatibleVersionException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:update_pipeline, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdatePipeline"
        o.http_method = "PUT"
        o.http_request_uri = "/2012-09-25/pipelines/{Id}"
        o.input = Shapes::ShapeRef.new(shape: UpdatePipelineRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdatePipelineResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: IncompatibleVersionException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:update_pipeline_notifications, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdatePipelineNotifications"
        o.http_method = "POST"
        o.http_request_uri = "/2012-09-25/pipelines/{Id}/notifications"
        o.input = Shapes::ShapeRef.new(shape: UpdatePipelineNotificationsRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdatePipelineNotificationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: IncompatibleVersionException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:update_pipeline_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdatePipelineStatus"
        o.http_method = "POST"
        o.http_request_uri = "/2012-09-25/pipelines/{Id}/status"
        o.input = Shapes::ShapeRef.new(shape: UpdatePipelineStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdatePipelineStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: IncompatibleVersionException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)
    end

  end
end
