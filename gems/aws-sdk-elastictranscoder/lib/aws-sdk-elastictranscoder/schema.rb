# frozen_string_literal: true

# This is generated code!

module Aws::ElasticTranscoder
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessControl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elastictranscoder#AccessControl", name: "AccessControl", traits: {"smithy.api#pattern" => "^(^FullControl$)|(^Read$)|(^ReadAcp$)|(^WriteAcp$)$"})
    AccessControls = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elastictranscoder#AccessControls", name: "AccessControls", traits: {"smithy.api#length" => {"min" => 0, "max" => 30}})
    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elastictranscoder#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    Artwork = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elastictranscoder#Artwork", name: "Artwork")
    Artworks = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elastictranscoder#Artworks", name: "Artworks")
    Ascending = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elastictranscoder#Ascending", name: "Ascending", traits: {"smithy.api#pattern" => "^(^true$)|(^false$)$"})
    AspectRatio = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elastictranscoder#AspectRatio", name: "AspectRatio", traits: {"smithy.api#pattern" => "^(^auto$)|(^1:1$)|(^4:3$)|(^3:2$)|(^16:9$)$"})
    AudioBitDepth = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elastictranscoder#AudioBitDepth", name: "AudioBitDepth", traits: {"smithy.api#pattern" => "^(^8$)|(^16$)|(^24$)|(^32$)$"})
    AudioBitOrder = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elastictranscoder#AudioBitOrder", name: "AudioBitOrder", traits: {"smithy.api#pattern" => "^(^LittleEndian$)$"})
    AudioBitRate = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elastictranscoder#AudioBitRate", name: "AudioBitRate", traits: {"smithy.api#pattern" => "^\\d{1,3}$"})
    AudioChannels = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elastictranscoder#AudioChannels", name: "AudioChannels", traits: {"smithy.api#pattern" => "^(^auto$)|(^0$)|(^1$)|(^2$)$"})
    AudioCodec = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elastictranscoder#AudioCodec", name: "AudioCodec", traits: {"smithy.api#pattern" => "^(^AAC$)|(^vorbis$)|(^mp3$)|(^mp2$)|(^pcm$)|(^flac$)$"})
    AudioCodecOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elastictranscoder#AudioCodecOptions", name: "AudioCodecOptions")
    AudioCodecProfile = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elastictranscoder#AudioCodecProfile", name: "AudioCodecProfile", traits: {"smithy.api#pattern" => "^(^auto$)|(^AAC-LC$)|(^HE-AAC$)|(^HE-AACv2$)$"})
    AudioPackingMode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elastictranscoder#AudioPackingMode", name: "AudioPackingMode", traits: {"smithy.api#pattern" => "^(^SingleTrack$)|(^OneChannelPerTrack$)|(^OneChannelPerTrackWithMosTo8Tracks$)$"})
    AudioParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elastictranscoder#AudioParameters", name: "AudioParameters")
    AudioSampleRate = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elastictranscoder#AudioSampleRate", name: "AudioSampleRate", traits: {"smithy.api#pattern" => "^(^auto$)|(^22050$)|(^32000$)|(^44100$)|(^48000$)|(^96000$)|(^192000$)$"})
    AudioSigned = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elastictranscoder#AudioSigned", name: "AudioSigned", traits: {"smithy.api#pattern" => "^(^Unsigned$)|(^Signed$)$"})
    Base64EncodedString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elastictranscoder#Base64EncodedString", name: "Base64EncodedString", traits: {"smithy.api#pattern" => "^$|(^(?:[A-Za-z0-9\\+/]{4})*(?:[A-Za-z0-9\\+/]{2}==|[A-Za-z0-9\\+/]{3}=)?$)$"})
    BucketName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elastictranscoder#BucketName", name: "BucketName", traits: {"smithy.api#pattern" => "^(\\w|\\.|-){1,255}$"})
    CancelJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elastictranscoder#CancelJobRequest", name: "CancelJobRequest")
    CancelJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elastictranscoder#CancelJobResponse", name: "CancelJobResponse")
    CaptionFormat = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elastictranscoder#CaptionFormat", name: "CaptionFormat")
    CaptionFormatFormat = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elastictranscoder#CaptionFormatFormat", name: "CaptionFormatFormat", traits: {"smithy.api#pattern" => "^(^mov-text$)|(^srt$)|(^scc$)|(^webvtt$)|(^dfxp$)|(^cea-708$)$"})
    CaptionFormatPattern = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elastictranscoder#CaptionFormatPattern", name: "CaptionFormatPattern", traits: {"smithy.api#pattern" => "^(^$)|(^.*\\{language\\}.*$)$"})
    CaptionFormats = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elastictranscoder#CaptionFormats", name: "CaptionFormats", traits: {"smithy.api#length" => {"min" => 0, "max" => 4}})
    CaptionMergePolicy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elastictranscoder#CaptionMergePolicy", name: "CaptionMergePolicy", traits: {"smithy.api#pattern" => "^(^MergeOverride$)|(^MergeRetain$)|(^Override$)$"})
    CaptionSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elastictranscoder#CaptionSource", name: "CaptionSource")
    CaptionSources = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elastictranscoder#CaptionSources", name: "CaptionSources", traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    Captions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elastictranscoder#Captions", name: "Captions")
    Clip = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elastictranscoder#Clip", name: "Clip", traits: {"smithy.api#deprecated" => {}})
    CodecOption = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elastictranscoder#CodecOption", name: "CodecOption", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    CodecOptions = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.elastictranscoder#CodecOptions", name: "CodecOptions", traits: {"smithy.api#length" => {"min" => 0, "max" => 30}})
    Composition = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elastictranscoder#Composition", name: "Composition", traits: {"smithy.api#deprecated" => {}})
    CreateJobOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elastictranscoder#CreateJobOutput", name: "CreateJobOutput")
    CreateJobOutputs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elastictranscoder#CreateJobOutputs", name: "CreateJobOutputs", traits: {"smithy.api#length" => {"min" => 0, "max" => 30}})
    CreateJobPlaylist = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elastictranscoder#CreateJobPlaylist", name: "CreateJobPlaylist")
    CreateJobPlaylists = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elastictranscoder#CreateJobPlaylists", name: "CreateJobPlaylists", traits: {"smithy.api#length" => {"min" => 0, "max" => 30}})
    CreateJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elastictranscoder#CreateJobRequest", name: "CreateJobRequest")
    CreateJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elastictranscoder#CreateJobResponse", name: "CreateJobResponse")
    CreatePipelineRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elastictranscoder#CreatePipelineRequest", name: "CreatePipelineRequest")
    CreatePipelineResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elastictranscoder#CreatePipelineResponse", name: "CreatePipelineResponse")
    CreatePresetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elastictranscoder#CreatePresetRequest", name: "CreatePresetRequest")
    CreatePresetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elastictranscoder#CreatePresetResponse", name: "CreatePresetResponse")
    DeletePipelineRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elastictranscoder#DeletePipelineRequest", name: "DeletePipelineRequest")
    DeletePipelineResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elastictranscoder#DeletePipelineResponse", name: "DeletePipelineResponse")
    DeletePresetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elastictranscoder#DeletePresetRequest", name: "DeletePresetRequest")
    DeletePresetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elastictranscoder#DeletePresetResponse", name: "DeletePresetResponse")
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elastictranscoder#Description", name: "Description", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}})
    DetectedProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elastictranscoder#DetectedProperties", name: "DetectedProperties")
    Digits = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elastictranscoder#Digits", name: "Digits", traits: {"smithy.api#pattern" => "^\\d{1,5}$"})
    DigitsOrAuto = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elastictranscoder#DigitsOrAuto", name: "DigitsOrAuto", traits: {"smithy.api#pattern" => "^(^auto$)|(^\\d{2,4}$)$"})
    Encryption = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elastictranscoder#Encryption", name: "Encryption")
    EncryptionMode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elastictranscoder#EncryptionMode", name: "EncryptionMode", traits: {"smithy.api#pattern" => "^(^s3$)|(^s3-aws-kms$)|(^aes-cbc-pkcs7$)|(^aes-ctr$)|(^aes-gcm$)$"})
    ExceptionMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elastictranscoder#ExceptionMessage", name: "ExceptionMessage")
    ExceptionMessages = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elastictranscoder#ExceptionMessages", name: "ExceptionMessages")
    Filename = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elastictranscoder#Filename", name: "Filename", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    FixedGOP = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elastictranscoder#FixedGOP", name: "FixedGOP", traits: {"smithy.api#pattern" => "^(^true$)|(^false$)$"})
    FloatString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elastictranscoder#FloatString", name: "FloatString", traits: {"smithy.api#pattern" => "^\\d{1,5}(\\.\\d{0,5})?$"})
    FrameRate = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elastictranscoder#FrameRate", name: "FrameRate", traits: {"smithy.api#pattern" => "^(^auto$)|(^10$)|(^15$)|(^23.97$)|(^24$)|(^25$)|(^29.97$)|(^30$)|(^50$)|(^60$)$"})
    Grantee = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elastictranscoder#Grantee", name: "Grantee", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    GranteeType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elastictranscoder#GranteeType", name: "GranteeType", traits: {"smithy.api#pattern" => "^(^Canonical$)|(^Email$)|(^Group$)$"})
    HlsContentProtection = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elastictranscoder#HlsContentProtection", name: "HlsContentProtection")
    HlsContentProtectionMethod = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elastictranscoder#HlsContentProtectionMethod", name: "HlsContentProtectionMethod", traits: {"smithy.api#pattern" => "^(^aes-128$)$"})
    HorizontalAlign = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elastictranscoder#HorizontalAlign", name: "HorizontalAlign", traits: {"smithy.api#pattern" => "^(^Left$)|(^Right$)|(^Center$)$"})
    Id = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elastictranscoder#Id", name: "Id", traits: {"smithy.api#pattern" => "^\\d{13}-\\w{6}$"})
    IncompatibleVersionException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elastictranscoder#IncompatibleVersionException", name: "IncompatibleVersionException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InputCaptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elastictranscoder#InputCaptions", name: "InputCaptions")
    Interlaced = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elastictranscoder#Interlaced", name: "Interlaced", traits: {"smithy.api#pattern" => "^(^auto$)|(^true$)|(^false$)$"})
    InternalServiceException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elastictranscoder#InternalServiceException", name: "InternalServiceException", traits: {"smithy.api#error" => "server"})
    Job = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elastictranscoder#Job", name: "Job")
    JobAlbumArt = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elastictranscoder#JobAlbumArt", name: "JobAlbumArt")
    JobContainer = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elastictranscoder#JobContainer", name: "JobContainer", traits: {"smithy.api#pattern" => "^(^auto$)|(^3gp$)|(^asf$)|(^avi$)|(^divx$)|(^flv$)|(^mkv$)|(^mov$)|(^mp4$)|(^mpeg$)|(^mpeg-ps$)|(^mpeg-ts$)|(^mxf$)|(^ogg$)|(^ts$)|(^vob$)|(^wav$)|(^webm$)|(^mp3$)|(^m4a$)|(^aac$)$"})
    JobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elastictranscoder#JobInput", name: "JobInput")
    JobInputs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elastictranscoder#JobInputs", name: "JobInputs", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    JobOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elastictranscoder#JobOutput", name: "JobOutput")
    JobOutputs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elastictranscoder#JobOutputs", name: "JobOutputs")
    JobStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elastictranscoder#JobStatus", name: "JobStatus", traits: {"smithy.api#pattern" => "^(^Submitted$)|(^Progressing$)|(^Complete$)|(^Canceled$)|(^Error$)$"})
    JobWatermark = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elastictranscoder#JobWatermark", name: "JobWatermark")
    JobWatermarks = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elastictranscoder#JobWatermarks", name: "JobWatermarks")
    Jobs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elastictranscoder#Jobs", name: "Jobs")
    JpgOrPng = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elastictranscoder#JpgOrPng", name: "JpgOrPng", traits: {"smithy.api#pattern" => "^(^jpg$)|(^png$)$"})
    Key = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elastictranscoder#Key", name: "Key", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    KeyArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elastictranscoder#KeyArn", name: "KeyArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}})
    KeyIdGuid = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elastictranscoder#KeyIdGuid", name: "KeyIdGuid", traits: {"smithy.api#pattern" => "^(^[0-9A-Fa-f]{8}-[0-9A-Fa-f]{4}-[0-9A-Fa-f]{4}-[0-9A-Fa-f]{4}-[0-9A-Fa-f]{12}$)|(^[0-9A-Fa-f]{32}$)$"})
    KeyStoragePolicy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elastictranscoder#KeyStoragePolicy", name: "KeyStoragePolicy", traits: {"smithy.api#pattern" => "^(^NoStore$)|(^WithVariantPlaylists$)$"})
    KeyframesMaxDist = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elastictranscoder#KeyframesMaxDist", name: "KeyframesMaxDist", traits: {"smithy.api#pattern" => "^\\d{1,6}$"})
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elastictranscoder#LimitExceededException", name: "LimitExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    ListJobsByPipelineRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elastictranscoder#ListJobsByPipelineRequest", name: "ListJobsByPipelineRequest")
    ListJobsByPipelineResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elastictranscoder#ListJobsByPipelineResponse", name: "ListJobsByPipelineResponse")
    ListJobsByStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elastictranscoder#ListJobsByStatusRequest", name: "ListJobsByStatusRequest")
    ListJobsByStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elastictranscoder#ListJobsByStatusResponse", name: "ListJobsByStatusResponse")
    ListPipelinesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elastictranscoder#ListPipelinesRequest", name: "ListPipelinesRequest")
    ListPipelinesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elastictranscoder#ListPipelinesResponse", name: "ListPipelinesResponse")
    ListPresetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elastictranscoder#ListPresetsRequest", name: "ListPresetsRequest")
    ListPresetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elastictranscoder#ListPresetsResponse", name: "ListPresetsResponse")
    LongKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elastictranscoder#LongKey", name: "LongKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    MaxFrameRate = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elastictranscoder#MaxFrameRate", name: "MaxFrameRate", traits: {"smithy.api#pattern" => "^(^10$)|(^15$)|(^23.97$)|(^24$)|(^25$)|(^29.97$)|(^30$)|(^50$)|(^60$)$"})
    MergePolicy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elastictranscoder#MergePolicy", name: "MergePolicy", traits: {"smithy.api#pattern" => "^(^Replace$)|(^Prepend$)|(^Append$)|(^Fallback$)$"})
    Name = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elastictranscoder#Name", name: "Name", traits: {"smithy.api#length" => {"min" => 1, "max" => 40}})
    NonEmptyBase64EncodedString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elastictranscoder#NonEmptyBase64EncodedString", name: "NonEmptyBase64EncodedString", traits: {"smithy.api#pattern" => "^(^(?:[A-Za-z0-9\\+/]{4})*(?:[A-Za-z0-9\\+/]{2}==|[A-Za-z0-9\\+/]{3}=)?$)$"})
    Notifications = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elastictranscoder#Notifications", name: "Notifications")
    NullableInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.elastictranscoder#NullableInteger", name: "NullableInteger")
    NullableLong = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.elastictranscoder#NullableLong", name: "NullableLong")
    OneTo512String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elastictranscoder#OneTo512String", name: "OneTo512String", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    Opacity = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elastictranscoder#Opacity", name: "Opacity", traits: {"smithy.api#pattern" => "^\\d{1,3}(\\.\\d{0,20})?$"})
    OutputKeys = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elastictranscoder#OutputKeys", name: "OutputKeys", traits: {"smithy.api#length" => {"min" => 0, "max" => 30}})
    PaddingPolicy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elastictranscoder#PaddingPolicy", name: "PaddingPolicy", traits: {"smithy.api#pattern" => "^(^Pad$)|(^NoPad$)$"})
    Permission = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elastictranscoder#Permission", name: "Permission")
    Permissions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elastictranscoder#Permissions", name: "Permissions", traits: {"smithy.api#length" => {"min" => 0, "max" => 30}})
    Pipeline = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elastictranscoder#Pipeline", name: "Pipeline")
    PipelineOutputConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elastictranscoder#PipelineOutputConfig", name: "PipelineOutputConfig")
    PipelineStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elastictranscoder#PipelineStatus", name: "PipelineStatus", traits: {"smithy.api#pattern" => "^(^Active$)|(^Paused$)$"})
    Pipelines = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elastictranscoder#Pipelines", name: "Pipelines")
    PixelsOrPercent = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elastictranscoder#PixelsOrPercent", name: "PixelsOrPercent", traits: {"smithy.api#pattern" => "^(^\\d{1,3}(\\.\\d{0,5})?%$)|(^\\d{1,4}?px$)$"})
    PlayReadyDrm = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elastictranscoder#PlayReadyDrm", name: "PlayReadyDrm")
    PlayReadyDrmFormatString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elastictranscoder#PlayReadyDrmFormatString", name: "PlayReadyDrmFormatString", traits: {"smithy.api#pattern" => "^(^microsoft$)|(^discretix-3.0$)$"})
    Playlist = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elastictranscoder#Playlist", name: "Playlist")
    PlaylistFormat = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elastictranscoder#PlaylistFormat", name: "PlaylistFormat", traits: {"smithy.api#pattern" => "^(^HLSv3$)|(^HLSv4$)|(^Smooth$)|(^MPEG-DASH$)$"})
    Playlists = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elastictranscoder#Playlists", name: "Playlists")
    Preset = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elastictranscoder#Preset", name: "Preset")
    PresetContainer = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elastictranscoder#PresetContainer", name: "PresetContainer", traits: {"smithy.api#pattern" => "^(^mp4$)|(^ts$)|(^webm$)|(^mp3$)|(^flac$)|(^oga$)|(^ogg$)|(^fmp4$)|(^mpg$)|(^flv$)|(^gif$)|(^mxf$)|(^wav$)|(^mp2$)$"})
    PresetType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elastictranscoder#PresetType", name: "PresetType", traits: {"smithy.api#pattern" => "^(^System$)|(^Custom$)$"})
    PresetWatermark = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elastictranscoder#PresetWatermark", name: "PresetWatermark")
    PresetWatermarkId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elastictranscoder#PresetWatermarkId", name: "PresetWatermarkId", traits: {"smithy.api#length" => {"min" => 1, "max" => 40}})
    PresetWatermarks = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elastictranscoder#PresetWatermarks", name: "PresetWatermarks")
    Presets = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elastictranscoder#Presets", name: "Presets")
    ReadJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elastictranscoder#ReadJobRequest", name: "ReadJobRequest")
    ReadJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elastictranscoder#ReadJobResponse", name: "ReadJobResponse")
    ReadPipelineRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elastictranscoder#ReadPipelineRequest", name: "ReadPipelineRequest")
    ReadPipelineResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elastictranscoder#ReadPipelineResponse", name: "ReadPipelineResponse")
    ReadPresetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elastictranscoder#ReadPresetRequest", name: "ReadPresetRequest")
    ReadPresetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elastictranscoder#ReadPresetResponse", name: "ReadPresetResponse")
    Resolution = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elastictranscoder#Resolution", name: "Resolution", traits: {"smithy.api#pattern" => "^(^auto$)|(^\\d{1,5}x\\d{1,5}$)$"})
    ResourceInUseException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elastictranscoder#ResourceInUseException", name: "ResourceInUseException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elastictranscoder#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    Role = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elastictranscoder#Role", name: "Role", traits: {"smithy.api#pattern" => "^arn:aws:iam::\\w{12}:role/.+$"})
    Rotate = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elastictranscoder#Rotate", name: "Rotate", traits: {"smithy.api#pattern" => "^(^auto$)|(^0$)|(^90$)|(^180$)|(^270$)$"})
    SizingPolicy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elastictranscoder#SizingPolicy", name: "SizingPolicy", traits: {"smithy.api#pattern" => "^(^Fit$)|(^Fill$)|(^Stretch$)|(^Keep$)|(^ShrinkToFit$)|(^ShrinkToFill$)$"})
    SnsTopic = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elastictranscoder#SnsTopic", name: "SnsTopic", traits: {"smithy.api#pattern" => "^(^$)|(^arn:aws:sns:.*:\\w{12}:.+$)$"})
    SnsTopics = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elastictranscoder#SnsTopics", name: "SnsTopics", traits: {"smithy.api#length" => {"min" => 0, "max" => 30}})
    StorageClass = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elastictranscoder#StorageClass", name: "StorageClass", traits: {"smithy.api#pattern" => "^(^ReducedRedundancy$)|(^Standard$)$"})
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elastictranscoder#String", name: "String")
    Success = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elastictranscoder#Success", name: "Success", traits: {"smithy.api#pattern" => "^(^true$)|(^false$)$"})
    Target = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elastictranscoder#Target", name: "Target", traits: {"smithy.api#pattern" => "^(^Content$)|(^Frame$)$"})
    TestRoleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elastictranscoder#TestRoleRequest", name: "TestRoleRequest", traits: {"smithy.api#deprecated" => {}})
    TestRoleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elastictranscoder#TestRoleResponse", name: "TestRoleResponse", traits: {"smithy.api#deprecated" => {}})
    ThumbnailPattern = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elastictranscoder#ThumbnailPattern", name: "ThumbnailPattern", traits: {"smithy.api#pattern" => "^(^$)|(^.*\\{count\\}.*$)$"})
    ThumbnailResolution = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elastictranscoder#ThumbnailResolution", name: "ThumbnailResolution", traits: {"smithy.api#pattern" => "^\\d{1,5}x\\d{1,5}$"})
    Thumbnails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elastictranscoder#Thumbnails", name: "Thumbnails")
    Time = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elastictranscoder#Time", name: "Time", traits: {"smithy.api#pattern" => "^(^\\d{1,5}(\\.\\d{0,3})?$)|(^([0-1]?[0-9]:|2[0-3]:)?([0-5]?[0-9]:)?[0-5]?[0-9](\\.\\d{0,3})?$)$"})
    TimeOffset = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elastictranscoder#TimeOffset", name: "TimeOffset", traits: {"smithy.api#pattern" => "^(^[+-]?\\d{1,5}(\\.\\d{0,3})?$)|(^[+-]?([0-1]?[0-9]:|2[0-3]:)?([0-5]?[0-9]:)?[0-5]?[0-9](\\.\\d{0,3})?$)$"})
    TimeSpan = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elastictranscoder#TimeSpan", name: "TimeSpan")
    Timing = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elastictranscoder#Timing", name: "Timing")
    UpdatePipelineNotificationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elastictranscoder#UpdatePipelineNotificationsRequest", name: "UpdatePipelineNotificationsRequest")
    UpdatePipelineNotificationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elastictranscoder#UpdatePipelineNotificationsResponse", name: "UpdatePipelineNotificationsResponse")
    UpdatePipelineRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elastictranscoder#UpdatePipelineRequest", name: "UpdatePipelineRequest")
    UpdatePipelineResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elastictranscoder#UpdatePipelineResponse", name: "UpdatePipelineResponse")
    UpdatePipelineStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elastictranscoder#UpdatePipelineStatusRequest", name: "UpdatePipelineStatusRequest")
    UpdatePipelineStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elastictranscoder#UpdatePipelineStatusResponse", name: "UpdatePipelineStatusResponse")
    UserMetadata = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.elastictranscoder#UserMetadata", name: "UserMetadata")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elastictranscoder#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    VerticalAlign = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elastictranscoder#VerticalAlign", name: "VerticalAlign", traits: {"smithy.api#pattern" => "^(^Top$)|(^Bottom$)|(^Center$)$"})
    VideoBitRate = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elastictranscoder#VideoBitRate", name: "VideoBitRate", traits: {"smithy.api#pattern" => "^(^\\d{2,5}$)|(^auto$)$"})
    VideoCodec = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elastictranscoder#VideoCodec", name: "VideoCodec", traits: {"smithy.api#pattern" => "^(^H\\.264$)|(^vp8$)|(^vp9$)|(^mpeg2$)|(^gif$)$"})
    VideoParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elastictranscoder#VideoParameters", name: "VideoParameters")
    Warning = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elastictranscoder#Warning", name: "Warning")
    Warnings = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elastictranscoder#Warnings", name: "Warnings")
    WatermarkKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elastictranscoder#WatermarkKey", name: "WatermarkKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^(^.{1,1020}.jpg$)|(^.{1,1019}.jpeg$)|(^.{1,1020}.png$)$"})
    WatermarkSizingPolicy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elastictranscoder#WatermarkSizingPolicy", name: "WatermarkSizingPolicy", traits: {"smithy.api#pattern" => "^(^Fit$)|(^Stretch$)|(^ShrinkToFit$)$"})
    ZeroTo255String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elastictranscoder#ZeroTo255String", name: "ZeroTo255String", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}})
    ZeroTo512String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elastictranscoder#ZeroTo512String", name: "ZeroTo512String", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}})

    AccessControls.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessControl)
    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    Artwork.add_member(:input_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WatermarkKey, location_name: "InputKey"))
    Artwork.add_member(:max_width, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DigitsOrAuto, location_name: "MaxWidth"))
    Artwork.add_member(:max_height, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DigitsOrAuto, location_name: "MaxHeight"))
    Artwork.add_member(:sizing_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SizingPolicy, location_name: "SizingPolicy"))
    Artwork.add_member(:padding_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaddingPolicy, location_name: "PaddingPolicy"))
    Artwork.add_member(:album_art_format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JpgOrPng, location_name: "AlbumArtFormat"))
    Artwork.add_member(:encryption, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Encryption, location_name: "Encryption"))
    Artwork.type = Types::Artwork
    Artworks.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Artwork)
    AudioCodecOptions.add_member(:profile, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AudioCodecProfile, location_name: "Profile"))
    AudioCodecOptions.add_member(:bit_depth, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AudioBitDepth, location_name: "BitDepth"))
    AudioCodecOptions.add_member(:bit_order, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AudioBitOrder, location_name: "BitOrder"))
    AudioCodecOptions.add_member(:signed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AudioSigned, location_name: "Signed"))
    AudioCodecOptions.type = Types::AudioCodecOptions
    AudioParameters.add_member(:codec, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AudioCodec, location_name: "Codec"))
    AudioParameters.add_member(:sample_rate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AudioSampleRate, location_name: "SampleRate"))
    AudioParameters.add_member(:bit_rate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AudioBitRate, location_name: "BitRate"))
    AudioParameters.add_member(:channels, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AudioChannels, location_name: "Channels"))
    AudioParameters.add_member(:audio_packing_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AudioPackingMode, location_name: "AudioPackingMode"))
    AudioParameters.add_member(:codec_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AudioCodecOptions, location_name: "CodecOptions"))
    AudioParameters.type = Types::AudioParameters
    CancelJobRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CancelJobRequest.type = Types::CancelJobRequest
    CancelJobResponse.type = Types::CancelJobResponse
    CaptionFormat.add_member(:format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaptionFormatFormat, location_name: "Format"))
    CaptionFormat.add_member(:pattern, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaptionFormatPattern, location_name: "Pattern"))
    CaptionFormat.add_member(:encryption, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Encryption, location_name: "Encryption"))
    CaptionFormat.type = Types::CaptionFormat
    CaptionFormats.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaptionFormat)
    CaptionSource.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongKey, location_name: "Key"))
    CaptionSource.add_member(:language, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Key, location_name: "Language"))
    CaptionSource.add_member(:time_offset, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeOffset, location_name: "TimeOffset"))
    CaptionSource.add_member(:label, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: "Label"))
    CaptionSource.add_member(:encryption, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Encryption, location_name: "Encryption"))
    CaptionSource.type = Types::CaptionSource
    CaptionSources.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaptionSource)
    Captions.add_member(:merge_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaptionMergePolicy, location_name: "MergePolicy", traits: {"smithy.api#deprecated" => {}}))
    Captions.add_member(:caption_sources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaptionSources, location_name: "CaptionSources", traits: {"smithy.api#deprecated" => {}}))
    Captions.add_member(:caption_formats, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaptionFormats, location_name: "CaptionFormats"))
    Captions.type = Types::Captions
    Clip.add_member(:time_span, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeSpan, location_name: "TimeSpan"))
    Clip.type = Types::Clip
    CodecOptions.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodecOption)
    CodecOptions.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodecOption)
    Composition.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Clip)
    CreateJobOutput.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Key, location_name: "Key"))
    CreateJobOutput.add_member(:thumbnail_pattern, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThumbnailPattern, location_name: "ThumbnailPattern"))
    CreateJobOutput.add_member(:thumbnail_encryption, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Encryption, location_name: "ThumbnailEncryption"))
    CreateJobOutput.add_member(:rotate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Rotate, location_name: "Rotate"))
    CreateJobOutput.add_member(:preset_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "PresetId"))
    CreateJobOutput.add_member(:segment_duration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FloatString, location_name: "SegmentDuration"))
    CreateJobOutput.add_member(:watermarks, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobWatermarks, location_name: "Watermarks"))
    CreateJobOutput.add_member(:album_art, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobAlbumArt, location_name: "AlbumArt"))
    CreateJobOutput.add_member(:composition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Composition, location_name: "Composition", traits: {"smithy.api#deprecated" => {}}))
    CreateJobOutput.add_member(:captions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Captions, location_name: "Captions"))
    CreateJobOutput.add_member(:encryption, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Encryption, location_name: "Encryption"))
    CreateJobOutput.type = Types::CreateJobOutput
    CreateJobOutputs.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateJobOutput)
    CreateJobPlaylist.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Filename, location_name: "Name"))
    CreateJobPlaylist.add_member(:format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlaylistFormat, location_name: "Format"))
    CreateJobPlaylist.add_member(:output_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutputKeys, location_name: "OutputKeys"))
    CreateJobPlaylist.add_member(:hls_content_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HlsContentProtection, location_name: "HlsContentProtection"))
    CreateJobPlaylist.add_member(:play_ready_drm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlayReadyDrm, location_name: "PlayReadyDrm"))
    CreateJobPlaylist.type = Types::CreateJobPlaylist
    CreateJobPlaylists.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateJobPlaylist)
    CreateJobRequest.add_member(:pipeline_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "PipelineId", traits: {"smithy.api#required" => {}}))
    CreateJobRequest.add_member(:input, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobInput, location_name: "Input"))
    CreateJobRequest.add_member(:inputs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobInputs, location_name: "Inputs"))
    CreateJobRequest.add_member(:output, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateJobOutput, location_name: "Output"))
    CreateJobRequest.add_member(:outputs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateJobOutputs, location_name: "Outputs"))
    CreateJobRequest.add_member(:output_key_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Key, location_name: "OutputKeyPrefix"))
    CreateJobRequest.add_member(:playlists, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateJobPlaylists, location_name: "Playlists"))
    CreateJobRequest.add_member(:user_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserMetadata, location_name: "UserMetadata"))
    CreateJobRequest.type = Types::CreateJobRequest
    CreateJobResponse.add_member(:job, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Job, location_name: "Job"))
    CreateJobResponse.type = Types::CreateJobResponse
    CreatePipelineRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: "Name", traits: {"smithy.api#required" => {}}))
    CreatePipelineRequest.add_member(:input_bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketName, location_name: "InputBucket", traits: {"smithy.api#required" => {}}))
    CreatePipelineRequest.add_member(:output_bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketName, location_name: "OutputBucket"))
    CreatePipelineRequest.add_member(:role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Role, location_name: "Role", traits: {"smithy.api#required" => {}}))
    CreatePipelineRequest.add_member(:aws_kms_key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyArn, location_name: "AwsKmsKeyArn"))
    CreatePipelineRequest.add_member(:notifications, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Notifications, location_name: "Notifications"))
    CreatePipelineRequest.add_member(:content_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineOutputConfig, location_name: "ContentConfig"))
    CreatePipelineRequest.add_member(:thumbnail_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineOutputConfig, location_name: "ThumbnailConfig"))
    CreatePipelineRequest.type = Types::CreatePipelineRequest
    CreatePipelineResponse.add_member(:pipeline, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Pipeline, location_name: "Pipeline"))
    CreatePipelineResponse.add_member(:warnings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Warnings, location_name: "Warnings"))
    CreatePipelineResponse.type = Types::CreatePipelineResponse
    CreatePresetRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: "Name", traits: {"smithy.api#required" => {}}))
    CreatePresetRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreatePresetRequest.add_member(:container, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PresetContainer, location_name: "Container", traits: {"smithy.api#required" => {}}))
    CreatePresetRequest.add_member(:video, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VideoParameters, location_name: "Video"))
    CreatePresetRequest.add_member(:audio, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AudioParameters, location_name: "Audio"))
    CreatePresetRequest.add_member(:thumbnails, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Thumbnails, location_name: "Thumbnails"))
    CreatePresetRequest.type = Types::CreatePresetRequest
    CreatePresetResponse.add_member(:preset, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Preset, location_name: "Preset"))
    CreatePresetResponse.add_member(:warning, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Warning"))
    CreatePresetResponse.type = Types::CreatePresetResponse
    DeletePipelineRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeletePipelineRequest.type = Types::DeletePipelineRequest
    DeletePipelineResponse.type = Types::DeletePipelineResponse
    DeletePresetRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeletePresetRequest.type = Types::DeletePresetRequest
    DeletePresetResponse.type = Types::DeletePresetResponse
    DetectedProperties.add_member(:width, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: "Width"))
    DetectedProperties.add_member(:height, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: "Height"))
    DetectedProperties.add_member(:frame_rate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FloatString, location_name: "FrameRate"))
    DetectedProperties.add_member(:file_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableLong, location_name: "FileSize"))
    DetectedProperties.add_member(:duration_millis, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableLong, location_name: "DurationMillis"))
    DetectedProperties.type = Types::DetectedProperties
    Encryption.add_member(:mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionMode, location_name: "Mode"))
    Encryption.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Base64EncodedString, location_name: "Key"))
    Encryption.add_member(:key_md5, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Base64EncodedString, location_name: "KeyMd5"))
    Encryption.add_member(:initialization_vector, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ZeroTo255String, location_name: "InitializationVector"))
    Encryption.type = Types::Encryption
    ExceptionMessages.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    HlsContentProtection.add_member(:method, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HlsContentProtectionMethod, location_name: "Method"))
    HlsContentProtection.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Base64EncodedString, location_name: "Key"))
    HlsContentProtection.add_member(:key_md5, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Base64EncodedString, location_name: "KeyMd5"))
    HlsContentProtection.add_member(:initialization_vector, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ZeroTo255String, location_name: "InitializationVector"))
    HlsContentProtection.add_member(:license_acquisition_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ZeroTo512String, location_name: "LicenseAcquisitionUrl"))
    HlsContentProtection.add_member(:key_storage_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyStoragePolicy, location_name: "KeyStoragePolicy"))
    HlsContentProtection.type = Types::HlsContentProtection
    IncompatibleVersionException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message", traits: {"smithy.api#required" => {}}))
    IncompatibleVersionException.type = Types::IncompatibleVersionException
    InputCaptions.add_member(:merge_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaptionMergePolicy, location_name: "MergePolicy"))
    InputCaptions.add_member(:caption_sources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaptionSources, location_name: "CaptionSources"))
    InputCaptions.type = Types::InputCaptions
    InternalServiceException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message", traits: {"smithy.api#required" => {}}))
    InternalServiceException.type = Types::InternalServiceException
    Job.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "Id"))
    Job.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Arn"))
    Job.add_member(:pipeline_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "PipelineId"))
    Job.add_member(:input, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobInput, location_name: "Input"))
    Job.add_member(:inputs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobInputs, location_name: "Inputs"))
    Job.add_member(:output, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobOutput, location_name: "Output"))
    Job.add_member(:outputs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobOutputs, location_name: "Outputs"))
    Job.add_member(:output_key_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Key, location_name: "OutputKeyPrefix"))
    Job.add_member(:playlists, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Playlists, location_name: "Playlists"))
    Job.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: "Status"))
    Job.add_member(:user_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserMetadata, location_name: "UserMetadata"))
    Job.add_member(:timing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timing, location_name: "Timing"))
    Job.type = Types::Job
    JobAlbumArt.add_member(:merge_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MergePolicy, location_name: "MergePolicy"))
    JobAlbumArt.add_member(:artwork, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Artworks, location_name: "Artwork"))
    JobAlbumArt.type = Types::JobAlbumArt
    JobInput.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongKey, location_name: "Key"))
    JobInput.add_member(:frame_rate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FrameRate, location_name: "FrameRate"))
    JobInput.add_member(:resolution, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Resolution, location_name: "Resolution"))
    JobInput.add_member(:aspect_ratio, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AspectRatio, location_name: "AspectRatio"))
    JobInput.add_member(:interlaced, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Interlaced, location_name: "Interlaced"))
    JobInput.add_member(:container, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobContainer, location_name: "Container"))
    JobInput.add_member(:encryption, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Encryption, location_name: "Encryption"))
    JobInput.add_member(:time_span, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeSpan, location_name: "TimeSpan"))
    JobInput.add_member(:input_captions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputCaptions, location_name: "InputCaptions"))
    JobInput.add_member(:detected_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetectedProperties, location_name: "DetectedProperties"))
    JobInput.type = Types::JobInput
    JobInputs.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobInput)
    JobOutput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Id"))
    JobOutput.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Key, location_name: "Key"))
    JobOutput.add_member(:thumbnail_pattern, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThumbnailPattern, location_name: "ThumbnailPattern"))
    JobOutput.add_member(:thumbnail_encryption, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Encryption, location_name: "ThumbnailEncryption"))
    JobOutput.add_member(:rotate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Rotate, location_name: "Rotate"))
    JobOutput.add_member(:preset_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "PresetId"))
    JobOutput.add_member(:segment_duration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FloatString, location_name: "SegmentDuration"))
    JobOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: "Status"))
    JobOutput.add_member(:status_detail, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: "StatusDetail"))
    JobOutput.add_member(:duration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableLong, location_name: "Duration"))
    JobOutput.add_member(:width, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: "Width"))
    JobOutput.add_member(:height, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: "Height"))
    JobOutput.add_member(:frame_rate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FloatString, location_name: "FrameRate"))
    JobOutput.add_member(:file_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableLong, location_name: "FileSize"))
    JobOutput.add_member(:duration_millis, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableLong, location_name: "DurationMillis"))
    JobOutput.add_member(:watermarks, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobWatermarks, location_name: "Watermarks"))
    JobOutput.add_member(:album_art, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobAlbumArt, location_name: "AlbumArt"))
    JobOutput.add_member(:composition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Composition, location_name: "Composition", traits: {"smithy.api#deprecated" => {}}))
    JobOutput.add_member(:captions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Captions, location_name: "Captions"))
    JobOutput.add_member(:encryption, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Encryption, location_name: "Encryption"))
    JobOutput.add_member(:applied_color_space_conversion, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "AppliedColorSpaceConversion"))
    JobOutput.type = Types::JobOutput
    JobOutputs.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobOutput)
    JobWatermark.add_member(:preset_watermark_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PresetWatermarkId, location_name: "PresetWatermarkId"))
    JobWatermark.add_member(:input_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WatermarkKey, location_name: "InputKey"))
    JobWatermark.add_member(:encryption, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Encryption, location_name: "Encryption"))
    JobWatermark.type = Types::JobWatermark
    JobWatermarks.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobWatermark)
    Jobs.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Job)
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message", traits: {"smithy.api#required" => {}}))
    LimitExceededException.type = Types::LimitExceededException
    ListJobsByPipelineRequest.add_member(:pipeline_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "PipelineId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListJobsByPipelineRequest.add_member(:ascending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Ascending, location_name: "Ascending", traits: {"smithy.api#httpQuery" => "Ascending"}))
    ListJobsByPipelineRequest.add_member(:page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "PageToken", traits: {"smithy.api#httpQuery" => "PageToken"}))
    ListJobsByPipelineRequest.type = Types::ListJobsByPipelineRequest
    ListJobsByPipelineResponse.add_member(:jobs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Jobs, location_name: "Jobs"))
    ListJobsByPipelineResponse.add_member(:next_page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "NextPageToken"))
    ListJobsByPipelineResponse.type = Types::ListJobsByPipelineResponse
    ListJobsByStatusRequest.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: "Status", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListJobsByStatusRequest.add_member(:ascending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Ascending, location_name: "Ascending", traits: {"smithy.api#httpQuery" => "Ascending"}))
    ListJobsByStatusRequest.add_member(:page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "PageToken", traits: {"smithy.api#httpQuery" => "PageToken"}))
    ListJobsByStatusRequest.type = Types::ListJobsByStatusRequest
    ListJobsByStatusResponse.add_member(:jobs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Jobs, location_name: "Jobs"))
    ListJobsByStatusResponse.add_member(:next_page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "NextPageToken"))
    ListJobsByStatusResponse.type = Types::ListJobsByStatusResponse
    ListPipelinesRequest.add_member(:ascending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Ascending, location_name: "Ascending", traits: {"smithy.api#httpQuery" => "Ascending"}))
    ListPipelinesRequest.add_member(:page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "PageToken", traits: {"smithy.api#httpQuery" => "PageToken"}))
    ListPipelinesRequest.type = Types::ListPipelinesRequest
    ListPipelinesResponse.add_member(:pipelines, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Pipelines, location_name: "Pipelines"))
    ListPipelinesResponse.add_member(:next_page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "NextPageToken"))
    ListPipelinesResponse.type = Types::ListPipelinesResponse
    ListPresetsRequest.add_member(:ascending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Ascending, location_name: "Ascending", traits: {"smithy.api#httpQuery" => "Ascending"}))
    ListPresetsRequest.add_member(:page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "PageToken", traits: {"smithy.api#httpQuery" => "PageToken"}))
    ListPresetsRequest.type = Types::ListPresetsRequest
    ListPresetsResponse.add_member(:presets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Presets, location_name: "Presets"))
    ListPresetsResponse.add_member(:next_page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "NextPageToken"))
    ListPresetsResponse.type = Types::ListPresetsResponse
    Notifications.add_member(:progressing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnsTopic, location_name: "Progressing"))
    Notifications.add_member(:completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnsTopic, location_name: "Completed"))
    Notifications.add_member(:warning, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnsTopic, location_name: "Warning"))
    Notifications.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnsTopic, location_name: "Error"))
    Notifications.type = Types::Notifications
    OutputKeys.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Key)
    Permission.add_member(:grantee_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GranteeType, location_name: "GranteeType"))
    Permission.add_member(:grantee, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Grantee, location_name: "Grantee"))
    Permission.add_member(:access, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessControls, location_name: "Access"))
    Permission.type = Types::Permission
    Permissions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Permission)
    Pipeline.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "Id"))
    Pipeline.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Arn"))
    Pipeline.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    Pipeline.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineStatus, location_name: "Status"))
    Pipeline.add_member(:input_bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketName, location_name: "InputBucket"))
    Pipeline.add_member(:output_bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketName, location_name: "OutputBucket"))
    Pipeline.add_member(:role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Role, location_name: "Role"))
    Pipeline.add_member(:aws_kms_key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyArn, location_name: "AwsKmsKeyArn"))
    Pipeline.add_member(:notifications, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Notifications, location_name: "Notifications"))
    Pipeline.add_member(:content_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineOutputConfig, location_name: "ContentConfig"))
    Pipeline.add_member(:thumbnail_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineOutputConfig, location_name: "ThumbnailConfig"))
    Pipeline.type = Types::Pipeline
    PipelineOutputConfig.add_member(:bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketName, location_name: "Bucket"))
    PipelineOutputConfig.add_member(:storage_class, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageClass, location_name: "StorageClass"))
    PipelineOutputConfig.add_member(:permissions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Permissions, location_name: "Permissions"))
    PipelineOutputConfig.type = Types::PipelineOutputConfig
    Pipelines.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Pipeline)
    PlayReadyDrm.add_member(:format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlayReadyDrmFormatString, location_name: "Format"))
    PlayReadyDrm.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyBase64EncodedString, location_name: "Key"))
    PlayReadyDrm.add_member(:key_md5, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyBase64EncodedString, location_name: "KeyMd5"))
    PlayReadyDrm.add_member(:key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyIdGuid, location_name: "KeyId"))
    PlayReadyDrm.add_member(:initialization_vector, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ZeroTo255String, location_name: "InitializationVector"))
    PlayReadyDrm.add_member(:license_acquisition_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OneTo512String, location_name: "LicenseAcquisitionUrl"))
    PlayReadyDrm.type = Types::PlayReadyDrm
    Playlist.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Filename, location_name: "Name"))
    Playlist.add_member(:format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlaylistFormat, location_name: "Format"))
    Playlist.add_member(:output_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutputKeys, location_name: "OutputKeys"))
    Playlist.add_member(:hls_content_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HlsContentProtection, location_name: "HlsContentProtection"))
    Playlist.add_member(:play_ready_drm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlayReadyDrm, location_name: "PlayReadyDrm"))
    Playlist.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: "Status"))
    Playlist.add_member(:status_detail, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: "StatusDetail"))
    Playlist.type = Types::Playlist
    Playlists.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Playlist)
    Preset.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "Id"))
    Preset.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Arn"))
    Preset.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    Preset.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    Preset.add_member(:container, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PresetContainer, location_name: "Container"))
    Preset.add_member(:audio, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AudioParameters, location_name: "Audio"))
    Preset.add_member(:video, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VideoParameters, location_name: "Video"))
    Preset.add_member(:thumbnails, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Thumbnails, location_name: "Thumbnails"))
    Preset.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PresetType, location_name: "Type"))
    Preset.type = Types::Preset
    PresetWatermark.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PresetWatermarkId, location_name: "Id"))
    PresetWatermark.add_member(:max_width, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PixelsOrPercent, location_name: "MaxWidth"))
    PresetWatermark.add_member(:max_height, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PixelsOrPercent, location_name: "MaxHeight"))
    PresetWatermark.add_member(:sizing_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WatermarkSizingPolicy, location_name: "SizingPolicy"))
    PresetWatermark.add_member(:horizontal_align, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HorizontalAlign, location_name: "HorizontalAlign"))
    PresetWatermark.add_member(:horizontal_offset, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PixelsOrPercent, location_name: "HorizontalOffset"))
    PresetWatermark.add_member(:vertical_align, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VerticalAlign, location_name: "VerticalAlign"))
    PresetWatermark.add_member(:vertical_offset, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PixelsOrPercent, location_name: "VerticalOffset"))
    PresetWatermark.add_member(:opacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Opacity, location_name: "Opacity"))
    PresetWatermark.add_member(:target, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Target, location_name: "Target"))
    PresetWatermark.type = Types::PresetWatermark
    PresetWatermarks.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PresetWatermark)
    Presets.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Preset)
    ReadJobRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ReadJobRequest.type = Types::ReadJobRequest
    ReadJobResponse.add_member(:job, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Job, location_name: "Job"))
    ReadJobResponse.type = Types::ReadJobResponse
    ReadPipelineRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ReadPipelineRequest.type = Types::ReadPipelineRequest
    ReadPipelineResponse.add_member(:pipeline, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Pipeline, location_name: "Pipeline"))
    ReadPipelineResponse.add_member(:warnings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Warnings, location_name: "Warnings"))
    ReadPipelineResponse.type = Types::ReadPipelineResponse
    ReadPresetRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ReadPresetRequest.type = Types::ReadPresetRequest
    ReadPresetResponse.add_member(:preset, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Preset, location_name: "Preset"))
    ReadPresetResponse.type = Types::ReadPresetResponse
    ResourceInUseException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message", traits: {"smithy.api#required" => {}}))
    ResourceInUseException.type = Types::ResourceInUseException
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    SnsTopics.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnsTopic)
    TestRoleRequest.add_member(:role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Role, location_name: "Role", traits: {"smithy.api#required" => {}}))
    TestRoleRequest.add_member(:input_bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketName, location_name: "InputBucket", traits: {"smithy.api#required" => {}}))
    TestRoleRequest.add_member(:output_bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketName, location_name: "OutputBucket", traits: {"smithy.api#required" => {}}))
    TestRoleRequest.add_member(:topics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnsTopics, location_name: "Topics", traits: {"smithy.api#required" => {}}))
    TestRoleRequest.type = Types::TestRoleRequest
    TestRoleResponse.add_member(:success, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Success, location_name: "Success"))
    TestRoleResponse.add_member(:messages, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessages, location_name: "Messages"))
    TestRoleResponse.type = Types::TestRoleResponse
    Thumbnails.add_member(:format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JpgOrPng, location_name: "Format"))
    Thumbnails.add_member(:interval, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Digits, location_name: "Interval"))
    Thumbnails.add_member(:resolution, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThumbnailResolution, location_name: "Resolution"))
    Thumbnails.add_member(:aspect_ratio, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AspectRatio, location_name: "AspectRatio"))
    Thumbnails.add_member(:max_width, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DigitsOrAuto, location_name: "MaxWidth"))
    Thumbnails.add_member(:max_height, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DigitsOrAuto, location_name: "MaxHeight"))
    Thumbnails.add_member(:sizing_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SizingPolicy, location_name: "SizingPolicy"))
    Thumbnails.add_member(:padding_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaddingPolicy, location_name: "PaddingPolicy"))
    Thumbnails.type = Types::Thumbnails
    TimeSpan.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: "StartTime"))
    TimeSpan.add_member(:duration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: "Duration"))
    TimeSpan.type = Types::TimeSpan
    Timing.add_member(:submit_time_millis, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableLong, location_name: "SubmitTimeMillis"))
    Timing.add_member(:start_time_millis, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableLong, location_name: "StartTimeMillis"))
    Timing.add_member(:finish_time_millis, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableLong, location_name: "FinishTimeMillis"))
    Timing.type = Types::Timing
    UpdatePipelineNotificationsRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdatePipelineNotificationsRequest.add_member(:notifications, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Notifications, location_name: "Notifications", traits: {"smithy.api#required" => {}}))
    UpdatePipelineNotificationsRequest.type = Types::UpdatePipelineNotificationsRequest
    UpdatePipelineNotificationsResponse.add_member(:pipeline, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Pipeline, location_name: "Pipeline"))
    UpdatePipelineNotificationsResponse.type = Types::UpdatePipelineNotificationsResponse
    UpdatePipelineRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdatePipelineRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    UpdatePipelineRequest.add_member(:input_bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketName, location_name: "InputBucket"))
    UpdatePipelineRequest.add_member(:role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Role, location_name: "Role"))
    UpdatePipelineRequest.add_member(:aws_kms_key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyArn, location_name: "AwsKmsKeyArn"))
    UpdatePipelineRequest.add_member(:notifications, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Notifications, location_name: "Notifications"))
    UpdatePipelineRequest.add_member(:content_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineOutputConfig, location_name: "ContentConfig"))
    UpdatePipelineRequest.add_member(:thumbnail_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineOutputConfig, location_name: "ThumbnailConfig"))
    UpdatePipelineRequest.type = Types::UpdatePipelineRequest
    UpdatePipelineResponse.add_member(:pipeline, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Pipeline, location_name: "Pipeline"))
    UpdatePipelineResponse.add_member(:warnings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Warnings, location_name: "Warnings"))
    UpdatePipelineResponse.type = Types::UpdatePipelineResponse
    UpdatePipelineStatusRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdatePipelineStatusRequest.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineStatus, location_name: "Status", traits: {"smithy.api#required" => {}}))
    UpdatePipelineStatusRequest.type = Types::UpdatePipelineStatusRequest
    UpdatePipelineStatusResponse.add_member(:pipeline, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Pipeline, location_name: "Pipeline"))
    UpdatePipelineStatusResponse.type = Types::UpdatePipelineStatusResponse
    UserMetadata.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    UserMetadata.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message", traits: {"smithy.api#required" => {}}))
    ValidationException.type = Types::ValidationException
    VideoParameters.add_member(:codec, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VideoCodec, location_name: "Codec"))
    VideoParameters.add_member(:codec_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodecOptions, location_name: "CodecOptions"))
    VideoParameters.add_member(:keyframes_max_dist, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyframesMaxDist, location_name: "KeyframesMaxDist"))
    VideoParameters.add_member(:fixed_gop, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FixedGOP, location_name: "FixedGOP"))
    VideoParameters.add_member(:bit_rate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VideoBitRate, location_name: "BitRate"))
    VideoParameters.add_member(:frame_rate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FrameRate, location_name: "FrameRate"))
    VideoParameters.add_member(:max_frame_rate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxFrameRate, location_name: "MaxFrameRate"))
    VideoParameters.add_member(:resolution, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Resolution, location_name: "Resolution"))
    VideoParameters.add_member(:aspect_ratio, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AspectRatio, location_name: "AspectRatio"))
    VideoParameters.add_member(:max_width, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DigitsOrAuto, location_name: "MaxWidth"))
    VideoParameters.add_member(:max_height, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DigitsOrAuto, location_name: "MaxHeight"))
    VideoParameters.add_member(:display_aspect_ratio, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AspectRatio, location_name: "DisplayAspectRatio"))
    VideoParameters.add_member(:sizing_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SizingPolicy, location_name: "SizingPolicy"))
    VideoParameters.add_member(:padding_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaddingPolicy, location_name: "PaddingPolicy"))
    VideoParameters.add_member(:watermarks, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PresetWatermarks, location_name: "Watermarks"))
    VideoParameters.type = Types::VideoParameters
    Warning.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Code"))
    Warning.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    Warning.type = Types::Warning
    Warnings.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Warning)

    EtsCustomerService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.elastictranscoder#EtsCustomerService"
      service.name = "EtsCustomerService"
      service.version = "2012-09-25"
      service.traits = {"aws.api#service" => {"sdkId" => "Elastic Transcoder", "arnNamespace" => "elastictranscoder", "cloudFormationName" => "ElasticTranscoder", "cloudTrailEventSource" => "elastictranscoder.amazonaws.com", "docId" => "elastictranscoder-2012-09-25", "endpointPrefix" => "elastictranscoder"}, "aws.auth#sigv4" => {"name" => "elastictranscoder"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon Elastic Transcoder", "smithy.api#xmlNamespace" => {"uri" => "http://elastictranscoder.amazonaws.com/doc/2012-09-25/"}}
      service.add_operation(:cancel_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elastictranscoder#CancelJob"
        operation.name = "CancelJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelJobResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IncompatibleVersionException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2012-09-25/jobs/{Id}", "code" => 202}}
      end)
      service.add_operation(:create_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elastictranscoder#CreateJob"
        operation.name = "CreateJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateJobResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IncompatibleVersionException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2012-09-25/jobs", "code" => 201}}
      end)
      service.add_operation(:create_pipeline, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elastictranscoder#CreatePipeline"
        operation.name = "CreatePipeline"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePipelineRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePipelineResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IncompatibleVersionException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2012-09-25/pipelines", "code" => 201}}
      end)
      service.add_operation(:create_preset, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elastictranscoder#CreatePreset"
        operation.name = "CreatePreset"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePresetRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePresetResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IncompatibleVersionException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2012-09-25/presets", "code" => 201}}
      end)
      service.add_operation(:delete_pipeline, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elastictranscoder#DeletePipeline"
        operation.name = "DeletePipeline"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePipelineRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePipelineResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IncompatibleVersionException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2012-09-25/pipelines/{Id}", "code" => 202}}
      end)
      service.add_operation(:delete_preset, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elastictranscoder#DeletePreset"
        operation.name = "DeletePreset"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePresetRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePresetResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IncompatibleVersionException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2012-09-25/presets/{Id}", "code" => 202}}
      end)
      service.add_operation(:list_jobs_by_pipeline, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elastictranscoder#ListJobsByPipeline"
        operation.name = "ListJobsByPipeline"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListJobsByPipelineRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListJobsByPipelineResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IncompatibleVersionException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2012-09-25/jobsByPipeline/{PipelineId}", "code" => 200}}
        operation[:paginator] = Paginators::ListJobsByPipeline.new
      end)
      service.add_operation(:list_jobs_by_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elastictranscoder#ListJobsByStatus"
        operation.name = "ListJobsByStatus"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListJobsByStatusRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListJobsByStatusResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IncompatibleVersionException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2012-09-25/jobsByStatus/{Status}", "code" => 200}}
        operation[:paginator] = Paginators::ListJobsByStatus.new
      end)
      service.add_operation(:list_pipelines, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elastictranscoder#ListPipelines"
        operation.name = "ListPipelines"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListPipelinesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListPipelinesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IncompatibleVersionException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2012-09-25/pipelines", "code" => 200}}
        operation[:paginator] = Paginators::ListPipelines.new
      end)
      service.add_operation(:list_presets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elastictranscoder#ListPresets"
        operation.name = "ListPresets"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListPresetsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListPresetsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IncompatibleVersionException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2012-09-25/presets", "code" => 200}, "smithy.test#smokeTests" => [{"id" => "ListPresetsSuccess", "params" => {}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
        operation[:paginator] = Paginators::ListPresets.new
      end)
      service.add_operation(:read_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elastictranscoder#ReadJob"
        operation.name = "ReadJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReadJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReadJobResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IncompatibleVersionException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2012-09-25/jobs/{Id}", "code" => 200}}
      end)
      service.add_operation(:read_pipeline, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elastictranscoder#ReadPipeline"
        operation.name = "ReadPipeline"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReadPipelineRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReadPipelineResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IncompatibleVersionException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2012-09-25/pipelines/{Id}", "code" => 200}}
      end)
      service.add_operation(:read_preset, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elastictranscoder#ReadPreset"
        operation.name = "ReadPreset"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReadPresetRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReadPresetResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IncompatibleVersionException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2012-09-25/presets/{Id}", "code" => 200}}
      end)
      service.add_operation(:test_role, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elastictranscoder#TestRole"
        operation.name = "TestRole"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestRoleRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestRoleResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IncompatibleVersionException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#deprecated" => {}, "smithy.api#http" => {"method" => "POST", "uri" => "/2012-09-25/roleTests", "code" => 200}}
      end)
      service.add_operation(:update_pipeline, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elastictranscoder#UpdatePipeline"
        operation.name = "UpdatePipeline"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePipelineRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePipelineResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IncompatibleVersionException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2012-09-25/pipelines/{Id}", "code" => 200}}
      end)
      service.add_operation(:update_pipeline_notifications, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elastictranscoder#UpdatePipelineNotifications"
        operation.name = "UpdatePipelineNotifications"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePipelineNotificationsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePipelineNotificationsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IncompatibleVersionException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2012-09-25/pipelines/{Id}/notifications", "code" => 200}}
      end)
      service.add_operation(:update_pipeline_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elastictranscoder#UpdatePipelineStatus"
        operation.name = "UpdatePipelineStatus"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePipelineStatusRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePipelineStatusResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IncompatibleVersionException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2012-09-25/pipelines/{Id}/status", "code" => 200}}
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
